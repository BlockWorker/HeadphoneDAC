/* ************************************************************************** */

#include "dac_ctrl.h"
#include "driver/driver_common.h"
#include "configuration.h"
#include "driver/spi/drv_spi.h"
#include "app_audio.h"


#define DAC_REG18_BASE 0b01010000


static DRV_HANDLE _dac_spi_handle;

static volatile enum {
    DAC_TRANSFER_NONE,
    //DAC_TRANSFER_INIT,
    DAC_TRANSFER_UPDATE
} _dac_transfer_type = DAC_TRANSFER_NONE;
static volatile uint8_t _dac_transfer_progress = 0;

static volatile uint8_t _dac_transfer_buffer[2] = { 0 };
static volatile DRV_SPI_TRANSFER_HANDLE _dac_transfer_handle;

static bool _dac_old_mute = false;
static bool _dac_new_mute = false;
static uint8_t _dac_new_volume[2] = { 255, 255 };


void _dac_next_transfer() {
    switch (_dac_transfer_type) {
        case DAC_TRANSFER_UPDATE:
            switch (_dac_transfer_progress++) {
                case 0: //register 18: disable attenuation loading, keep old mute status
                    _dac_transfer_buffer[0] = 18;
                    _dac_transfer_buffer[1] = DAC_REG18_BASE | _dac_old_mute;
                    break;
                case 1: //register 16: load left channel volume
                    _dac_transfer_buffer[0] = 16;
                    _dac_transfer_buffer[1] = _dac_new_volume[0];
                    break;
                case 2: //register 17: load right channel volume
                    _dac_transfer_buffer[0] = 17;
                    _dac_transfer_buffer[1] = _dac_new_volume[1];
                    break;
                case 3: //register 18: enable attenuation loading, put new mute status
                    _dac_transfer_buffer[0] = 18;
                    _dac_transfer_buffer[1] = DAC_REG18_BASE | 0x80 | _dac_new_mute;
                    break;
                default:
                    _dac_transfer_type = DAC_TRANSFER_NONE;
                    _dac_transfer_progress = 0;
                    return;
            }
            DRV_SPI_WriteTransferAdd(_dac_spi_handle, (void*)_dac_transfer_buffer, 2, (DRV_SPI_TRANSFER_HANDLE*)&_dac_transfer_handle);
            break;
        case DAC_TRANSFER_NONE:
        default:
            break;
    }
}

void _dac_spiEventHandler(DRV_SPI_TRANSFER_EVENT event, DRV_SPI_TRANSFER_HANDLE handle, uintptr_t context) {
    switch (event) {
        case DRV_SPI_TRANSFER_EVENT_PENDING:
            break;
        case DRV_SPI_TRANSFER_EVENT_COMPLETE:
            _dac_next_transfer();
            break;
        case DRV_SPI_TRANSFER_EVENT_ERROR:
        default:
            _dac_transfer_progress = 0;
            _dac_next_transfer();
            break;
    }
}


void DAC_Init() {
    _dac_spi_handle = DRV_SPI_Open(DRV_SPI_INDEX_0, DRV_IO_INTENT_READWRITE);
    DRV_SPI_TransferEventHandlerSet(DRV_SPI_INDEX_0, _dac_spiEventHandler, NULL);
    DAC_RST_N_Set();
}

void DAC_Update() {
    _dac_old_mute = _dac_new_mute;
    _dac_new_mute = audio_hp_mute_usb;
    
    uint8_t i;
    for (i = 0; i < 2; i++) {
        int16_t usb_vol = audio_hp_volumes_usb[i];
        if (usb_vol >= 0) _dac_new_volume[i] = 255; //0dB and higher: clip to 0dB
        else if (usb_vol < -30720) _dac_new_volume[i] = 0; //below -120dB: mute
        else _dac_new_volume[i] = (uint8_t)((usb_vol >> 7) + 255); //-0.5dB to -120.0dB: convert scale
    }
    
    _dac_transfer_type = DAC_TRANSFER_UPDATE;
    _dac_transfer_progress = 0;
    _dac_next_transfer();
}

/* *****************************************************************************
 End of File
 */
