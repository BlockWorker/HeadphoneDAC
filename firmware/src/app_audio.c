/* ************************************************************************** */

#include <sys/kmem.h>

#include "app_audio.h"
#include "app.h"
#include "peripheral/coretimer/plib_coretimer.h"
#include "audio/math/dsp/dsp.h"


static uint8_t _audio_hpInterfaceSetting = 0;
static uint8_t _audio_micInterfaceSetting = 0;

static uint32_t _audio_hpSamplesPerPacket = 48;

static USB_DEVICE_AUDIO_TRANSFER_HANDLE _audio_receive_handles[APP_AUDIO_REQUEST_COUNT] = { 0 };
static uint8_t _audio_receive_buffers[APP_AUDIO_REQUEST_COUNT][APP_AUDIO_REQUEST_BUFFER_SIZE] __attribute__((coherent, aligned(16))) = { { 0 } };

static uint32_t _audio_zero __attribute__((coherent)) = 0;
static uint32_t _audio_ring_buffer[AUDIO_RING_BUFFER_SIZE] __attribute__((coherent)) = { 0 };
static volatile uint16_t _audio_ring_write_pos = AUDIO_RING_BUFFER_TARGET;
#define _audio_ring_read_pos ((uint16_t)(DCH0SPTR >> 2))

uint8_t audio_hp_mute_usb = 0;
uint8_t audio_mic_mute_usb = 0;
int16_t audio_hp_volumes_usb[2] = { 0 };
int16_t audio_mic_volumes_usb[2] = { 0 };

static uint8_t _audio_hp_eq_enabled = 0;
static uint8_t _audio_mic_eq_enabled = 0;
static int32_t _audio_hp_biquad_coeffs[15][5] = { { 0 } };
static int32_t _audio_mic_biquad_coeffs[15][5] = { { 0 } };
static PARM_EQUAL_FILTER_32 _audio_hp_biquads[15] = { 0 };
static PARM_EQUAL_FILTER_32 _audio_mic_biquads[15] = { 0 };


void _audio_reset_ring_buffer() {
    memset(_audio_ring_buffer, 0, AUDIO_RING_BUFFER_SIZE << 2);
    _audio_ring_write_pos = AUDIO_RING_BUFFER_TARGET;
}

void _audio_dma_set_zero() {
    DCH0CONCLR = 0x80; //disable channel
    while (DCH0CONbits.CHBUSY) CORETIMER_DelayUs(1); //wait for not busy
    DCH0SSA = KVA_TO_PA(&_audio_zero); //set source address to zero buffer
    DCH0SSIZ = 4; //source size is 4 bytes
    DCH0CONSET = 0x80; //enable channel
}

void _audio_dma_set_buffer() {
    DCH0CONCLR = 0x80; //disable channel
    while (DCH0CONbits.CHBUSY) CORETIMER_DelayUs(1); //wait for not busy
    DCH0SSA = KVA_TO_PA(_audio_ring_buffer); //set source address to ring buffer
    DCH0SSIZ = (AUDIO_RING_BUFFER_SIZE << 2) & 0xffff; //source size is ring buffer size in bytes
    DCH0CONSET = 0x80; //enable channel
}

void _USB_DEVICE_AUDIO_IRPCancelAll(USB_DEVICE_AUDIO_INDEX iAudio);

void _audio_dequeue_transfers() {
    _USB_DEVICE_AUDIO_IRPCancelAll(0);
    
    uint8_t i;
    for (i = 0; i < APP_AUDIO_REQUEST_COUNT; i++) {
        _audio_receive_handles[i] = USB_DEVICE_AUDIO_TRANSFER_HANDLE_INVALID; //make handle invalid
    }
}

void _audio_queue_transfers() {
    uint8_t i;
    USB_DEVICE_AUDIO_RESULT result;
    for (i = 0; i < APP_AUDIO_REQUEST_COUNT; i++) {
        if (_audio_receive_handles[i] != USB_DEVICE_AUDIO_TRANSFER_HANDLE_INVALID) continue; //leave valid handles, request already present
        result = USB_DEVICE_AUDIO_Read(0, _audio_receive_handles + i, 1, _audio_receive_buffers[i], _audio_hpSamplesPerPacket * 8);
        if (result != USB_DEVICE_AUDIO_RESULT_OK) break; //stop requesting once an error is encountered
    }
}

void _audio_handle_read(uint8_t* byte_buf, uint16_t size) {
    uint32_t buffer[APP_AUDIO_REQUEST_BUFFER_SIZE >> 2] = { 0 };
    uint32_t i;
    
    if (size < APP_AUDIO_REQUEST_BUFFER_SIZE) { //oversample
        for (i = 0; i < (APP_AUDIO_REQUEST_BUFFER_SIZE >> 2); i += 4) {
            buffer[i + 2] = buffer[i] = *((uint32_t*)(byte_buf + 4 * i));
            buffer[i + 3] = buffer[i + 1] = *((uint32_t*)(byte_buf + 4 * i + 4));
        }
    } else { //original samples
        memcpy(buffer, byte_buf, APP_AUDIO_REQUEST_BUFFER_SIZE);
    }
    
    uint16_t ring_buf_length = (AUDIO_RING_BUFFER_SIZE + _audio_ring_write_pos - _audio_ring_read_pos) % AUDIO_RING_BUFFER_SIZE;
    bool below_target = ring_buf_length < AUDIO_RING_BUFFER_TARGET; //buffer below target?
    uint16_t target_diff = below_target ? AUDIO_RING_BUFFER_TARGET - ring_buf_length : ring_buf_length - AUDIO_RING_BUFFER_TARGET; //difference from target
    
    uint16_t adjust_modulus = 0; //every n-th sample doubled or skipped for adjusting to rate, or 0 for no adjustment
    target_diff >>= AUDIO_RING_BUFFER_THRESHOLD; //ignore buffer differences under threshold
    if (target_diff > 0) { //if difference above threshold:
        adjust_modulus = 16; //start with modulus 16
        while (target_diff > 1 && adjust_modulus > 1) { //for every doubling of the difference: halve modulus, down until every sample is affected
            target_diff >>= 1;
            adjust_modulus >>= 1;
        }
    }
    
    for (i = 0; i < (APP_AUDIO_REQUEST_BUFFER_SIZE >> 3); i++) {
        uint16_t wordindex = i << 1;
        if (adjust_modulus > 0 && i % adjust_modulus == 0) { //sample should be used for adjustment
            if (below_target) { //double sample
                _audio_ring_buffer[_audio_ring_write_pos++] = buffer[wordindex] >> 8;
                _audio_ring_buffer[_audio_ring_write_pos++] = buffer[wordindex + 1] >> 8;
                _audio_ring_buffer[_audio_ring_write_pos++] = buffer[wordindex] >> 8;
                _audio_ring_buffer[_audio_ring_write_pos++] = buffer[wordindex + 1] >> 8;
            } //else skip sample, i.e. do nothing for this iteration
        } else { //sample should be processed as normal
            _audio_ring_buffer[_audio_ring_write_pos++] = buffer[wordindex] >> 8;
            _audio_ring_buffer[_audio_ring_write_pos++] = buffer[wordindex + 1] >> 8;
        }
    }
}

void _audio_handle_feature_control(USB_AUDIO_FEATURE_UNIT_CONTROL_REQUEST* request) {
    
}

void _audio_handle_extension_control(USB_AUDIO_CONTROL_INTERFACE_REQUEST* request) {
    //uint8_t controlSelector = request->wValue >> 8;
}

void _audio_handle_control_data_receive() {
    
}

void _audio_USBDeviceAudioEventHandler(USB_DEVICE_AUDIO_INDEX index, USB_DEVICE_AUDIO_EVENT event, void* pData, uintptr_t context) {
    USB_DEVICE_AUDIO_EVENT_DATA_INTERFACE_SETTING_CHANGED* interfaceInfo;
    USB_DEVICE_AUDIO_EVENT_DATA_READ_COMPLETE* readData;
    USB_AUDIO_CONTROL_INTERFACE_REQUEST* controlRequest;
    if (index == 0) {
        switch (event) {
            case USB_DEVICE_AUDIO_EVENT_INTERFACE_SETTING_CHANGED:
                interfaceInfo = (USB_DEVICE_AUDIO_EVENT_DATA_INTERFACE_SETTING_CHANGED*)pData;
                if (interfaceInfo->interfaceNumber == 1) {
                    _audio_hpInterfaceSetting = interfaceInfo->interfaceAlternateSetting;
                    if (_audio_hpInterfaceSetting == 0) { //(de)queue audio transfers depending on setting
                        _audio_dma_set_zero();
                        _audio_dequeue_transfers();
                        _audio_reset_ring_buffer();
                    } else {
                        _audio_queue_transfers();
                        _audio_dma_set_buffer();
                    }
                } else if (interfaceInfo->interfaceNumber == 2) {
                    _audio_micInterfaceSetting = interfaceInfo->interfaceAlternateSetting;
                }
                break;
            case USB_DEVICE_AUDIO_EVENT_READ_COMPLETE:
                readData = (USB_DEVICE_AUDIO_EVENT_DATA_READ_COMPLETE*)pData;
                
                uint8_t i;
                bool found = false;
                for (i = 0; i < APP_AUDIO_REQUEST_COUNT; i++) { //search for relevant handle in array
                    if (_audio_receive_handles[i] == readData->handle) {
                        found = true;
                        _audio_receive_handles[i] = USB_DEVICE_AUDIO_TRANSFER_HANDLE_INVALID; //slot is now empty
                        break;
                    }
                }
                if (!found) break;

                if (readData->status == USB_DEVICE_AUDIO_RESULT_OK) { //handle received data if successful
                    _audio_handle_read(_audio_receive_buffers[i], readData->length);
                }

                _audio_queue_transfers(); //queue more transfers
                break;
            case USB_DEVICE_AUDIO_EVENT_WRITE_COMPLETE:
                break;
            case USB_DEVICE_AUDIO_EVENT_CONTROL_SET_CUR:
            case USB_DEVICE_AUDIO_EVENT_CONTROL_GET_CUR:
                controlRequest = (USB_AUDIO_CONTROL_INTERFACE_REQUEST*)pData;
                switch (controlRequest->entityID) {
                    case USB_DEVICE_AUDIO_IDX0_DESCRIPTOR_FEATURE_UNIT_ID:
                    case USB_DEVICE_AUDIO_IDX0_DESCRIPTOR_FEATURE_UNIT_MICROPHONE_ID:
                        _audio_handle_feature_control((USB_AUDIO_FEATURE_UNIT_CONTROL_REQUEST*)controlRequest);
                        break;
                    case USB_DEVICE_AUDIO_IDX0_DESCRIPTOR_EXTENSION_UNIT_ID:
                    case USB_DEVICE_AUDIO_IDX0_DESCRIPTOR_EXTENSION_UNIT_MICROPHONE_ID:
                        _audio_handle_extension_control(controlRequest);
                        break;
                }
                
                /* This is an example of handling Audio control request. In this
                 * case the control request is targeted to the Mute Control in
                 * a feature unit entity. This event indicates that the current
                 * value needs to be set. */

                /*entityID = ((USB_AUDIO_CONTROL_INTERFACE_REQUEST*)pData)->entityID;
                if (entityID == APP_ID_FEATURE_UNIT)
                {
                    controlSelector = ((USB_AUDIO_FEATURE_UNIT_CONTROL_REQUEST*)pData)->controlSelector;
                    if (controlSelector == USB_AUDIO_MUTE_CONTROL)
                    {
                        USB_DEVICE_ControlReceive(appData.usbDevHandle, (void *) &(appData.dacMute), 1 );
                        appData.currentAudioControl = APP_USB_AUDIO_MUTE_CONTROL;
                    }
                }
                break; */

            

                /* This event occurs when the host is requesting a current
                 * status of control */

                /*entityID = ((USB_AUDIO_CONTROL_INTERFACE_REQUEST*)pData)->entityID;
                if (entityID == APP_ID_FEATURE_UNIT)
                {
                    controlSelector = ((USB_AUDIO_FEATURE_UNIT_CONTROL_REQUEST*)pData)->controlSelector;
                    if (controlSelector == USB_AUDIO_MUTE_CONTROL)
                    {
                        USB_DEVICE_ControlSend(appData.usbDevHandle, (void *)&(appData.dacMute), 1 );
                    }
                }
                break;*/

            case USB_DEVICE_AUDIO_EVENT_CONTROL_SET_MIN:
            case USB_DEVICE_AUDIO_EVENT_CONTROL_GET_MIN:
            case USB_DEVICE_AUDIO_EVENT_CONTROL_SET_MAX:
            case USB_DEVICE_AUDIO_EVENT_CONTROL_GET_MAX:
            case USB_DEVICE_AUDIO_EVENT_CONTROL_SET_RES:
            case USB_DEVICE_AUDIO_EVENT_CONTROL_GET_RES:
            case USB_DEVICE_AUDIO_EVENT_ENTITY_GET_MEM:
                USB_DEVICE_ControlStatus(appData.usbHandle, USB_DEVICE_CONTROL_STATUS_ERROR); //unsupported
                break;
            case USB_DEVICE_AUDIO_EVENT_CONTROL_TRANSFER_DATA_RECEIVED:
                _audio_handle_control_data_receive();
                /* This event occurs when data has been received in a control
                 * transfer */

                /*USB_DEVICE_ControlStatus(appData.usbDevHandle, USB_DEVICE_CONTROL_STATUS_OK );
                if (appData.currentAudioControl == APP_USB_AUDIO_MUTE_CONTROL)
                {
                    appData.state = APP_MUTE_AUDIO_PLAYBACK;
                    appData.currentAudioControl = APP_USB_CONTROL_NONE;
                }
                break;*/

            case USB_DEVICE_AUDIO_EVENT_CONTROL_TRANSFER_DATA_SENT:
                break;
            default:
                break;
        }
    }
}


void APP_Audio_Init() {
    IEC4bits.DMA0IE = 0; //clear DMA interrupt
    IFS4bits.DMA0IF = 0;
    
    DMACONSET = 0x8000; //enable DMA controller
    DCH0CON = 0x0103; //auto enable, max priority
    DCH0ECON = 0x9C10; //start interrupt: SPI3TX (156 = 0x9C), enable start interrupt
    DCH0DSA = KVA_TO_PA(&SPI3BUF); //destination is SPI3 buffer
    DCH0DSIZ = 4; //destination size is 4 bytes
    DCH0CSIZ = 4; //cell size is 4 bytes
    DCH0INT = 0; //reset channel interrupts
    
    APP_Audio_Reset(); //setup reset status at first
}

void APP_Audio_Reset() {
    _audio_dma_set_zero();
    _audio_dequeue_transfers();
    _audio_reset_ring_buffer();
}

void APP_Audio_Tasks() {
    
}


/* *****************************************************************************
 End of File
 */
