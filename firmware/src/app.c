/*******************************************************************************
  MPLAB Harmony Application Source File

  Company:
    Microchip Technology Inc.

  File Name:
    app.c

  Summary:
    This file contains the source code for the MPLAB Harmony application.

  Description:
    This file contains the source code for the MPLAB Harmony application.  It
    implements the logic of the application's state machine and it may call
    API routines of other MPLAB Harmony modules in the system, such as drivers,
    system services, and middleware.  However, it does not call any of the
    system interfaces (such as the "Initialize" and "Tasks" functions) of any of
    the modules in the system or make any assumptions about when those functions
    are called.  That is the responsibility of the configuration-specific system
    files.
 *******************************************************************************/

// *****************************************************************************
// *****************************************************************************
// Section: Included Files
// *****************************************************************************
// *****************************************************************************

#include "app.h"
#include "usb/usb_device_audio_v1_0.h"
#include "app_audio.h"
#include "dac_ctrl.h"

// *****************************************************************************
// *****************************************************************************
// Section: Global Data Definitions
// *****************************************************************************
// *****************************************************************************

// *****************************************************************************
/* Application Data

  Summary:
    Holds application data

  Description:
    This structure holds the application's data.

  Remarks:
    This structure should be initialized by the APP_Initialize function.

    Application strings and buffers are be defined outside this structure.
*/

APP_DATA appData;

// *****************************************************************************
// *****************************************************************************
// Section: Application Callback Functions
// *****************************************************************************
// *****************************************************************************

/* TODO:  Add any necessary callback functions.
*/

// *****************************************************************************
// *****************************************************************************
// Section: Application Local Functions
// *****************************************************************************
// *****************************************************************************

void _audio_USBDeviceAudioEventHandler(USB_DEVICE_AUDIO_INDEX index, USB_DEVICE_AUDIO_EVENT event, void* pData, uintptr_t context);

void _app_USBDeviceEventCallBack(USB_DEVICE_EVENT event, void * eventData, uintptr_t context) {
    switch (event) {
        case USB_DEVICE_EVENT_RESUMED:
        case USB_DEVICE_EVENT_POWER_DETECTED:
            USB_DEVICE_Attach(appData.usbHandle);
            APP_Audio_Reset();
            break;
        case USB_DEVICE_EVENT_POWER_REMOVED:
            USB_DEVICE_Detach(appData.usbHandle);
            APP_Audio_Reset();
            break;
        case USB_DEVICE_EVENT_RESET:
        case USB_DEVICE_EVENT_DECONFIGURED:
            APP_Audio_Reset();
            break;
        case USB_DEVICE_EVENT_CONFIGURED:
            if (((USB_DEVICE_EVENT_DATA_CONFIGURED*)eventData)->configurationValue == 1) {
                USB_DEVICE_AUDIO_EventHandlerSet(0, _audio_USBDeviceAudioEventHandler, NULL);
            }
            break;
        case USB_DEVICE_EVENT_SUSPENDED:
        case USB_DEVICE_EVENT_ERROR:
            APP_Audio_Reset();
            break;
        default:
            break;
    }
}

// *****************************************************************************
// *****************************************************************************
// Section: Application Initialization and State Machine Functions
// *****************************************************************************
// *****************************************************************************

/*******************************************************************************
  Function:
    void APP_Initialize ( void )

  Remarks:
    See prototype in app.h.
 */

void APP_Initialize ( void )
{
    /* Place the App state machine in its initial state. */
    appData.state = APP_STATE_INIT_START;



    /* TODO: Initialize your application's state machine and other
     * parameters.
     */
}


/******************************************************************************
  Function:
    void APP_Tasks ( void )

  Remarks:
    See prototype in app.h.
 */

void APP_Tasks ( void )
{

    switch (appData.state) {
        case APP_STATE_INIT_START:
            APP_Audio_Init();
            DAC_Init();
            
            appData.state = APP_STATE_INIT_USB;
            break;
        case APP_STATE_INIT_USB:
            appData.usbHandle = USB_DEVICE_Open(USB_DEVICE_INDEX_0, DRV_IO_INTENT_READWRITE);
            
            if (appData.usbHandle != USB_DEVICE_HANDLE_INVALID) {
                USB_DEVICE_EventHandlerSet(appData.usbHandle, _app_USBDeviceEventCallBack, NULL);
                //USB_DEVICE_Attach(appData.usbHandle);
                appData.state = APP_STATE_SERVICE_TASKS;
            }
            
            break;
        case APP_STATE_SERVICE_TASKS:
            break;
        default:
            break;
    }
}


/*******************************************************************************
 End of File
 */
