/*******************************************************************************
  System Initialization File

  File Name:
    usb_device_init_data.c

  Summary:
    This file contains source code necessary to initialize the system.

  Description:
    This file contains source code necessary to initialize the system.  It
    implements the "SYS_Initialize" function, defines the configuration bits,
    and allocates any necessary global system resources,
 *******************************************************************************/

// DOM-IGNORE-BEGIN
/*******************************************************************************
* Copyright (C) 2018 Microchip Technology Inc. and its subsidiaries.
*
* Subject to your compliance with these terms, you may use Microchip software
* and any derivatives exclusively with Microchip products. It is your
* responsibility to comply with third party license terms applicable to your
* use of third party software (including open source software) that may
* accompany Microchip software.
*
* THIS SOFTWARE IS SUPPLIED BY MICROCHIP "AS IS". NO WARRANTIES, WHETHER
* EXPRESS, IMPLIED OR STATUTORY, APPLY TO THIS SOFTWARE, INCLUDING ANY IMPLIED
* WARRANTIES OF NON-INFRINGEMENT, MERCHANTABILITY, AND FITNESS FOR A
* PARTICULAR PURPOSE.
*
* IN NO EVENT WILL MICROCHIP BE LIABLE FOR ANY INDIRECT, SPECIAL, PUNITIVE,
* INCIDENTAL OR CONSEQUENTIAL LOSS, DAMAGE, COST OR EXPENSE OF ANY KIND
* WHATSOEVER RELATED TO THE SOFTWARE, HOWEVER CAUSED, EVEN IF MICROCHIP HAS
* BEEN ADVISED OF THE POSSIBILITY OR THE DAMAGES ARE FORESEEABLE. TO THE
* FULLEST EXTENT ALLOWED BY LAW, MICROCHIP'S TOTAL LIABILITY ON ALL CLAIMS IN
* ANY WAY RELATED TO THIS SOFTWARE WILL NOT EXCEED THE AMOUNT OF FEES, IF ANY,
* THAT YOU HAVE PAID DIRECTLY TO MICROCHIP FOR THIS SOFTWARE.
 *******************************************************************************/
// DOM-IGNORE-END

// *****************************************************************************
// *****************************************************************************
// Section: Included Files
// *****************************************************************************
// *****************************************************************************

#include "configuration.h"
#include "definitions.h"
/**************************************************
 * USB Device Function Driver Init Data
 **************************************************/
const USB_DEVICE_AUDIO_INIT audioInit0 =
{
	.queueSizeRead = 128,
	.queueSizeWrite = 128
};

/****************************************************
 * Class specific descriptor - HID Report descriptor
 ****************************************************/
const uint8_t hid_rpt0[] =
{
	0x06, 0x00, 0xff,              // USAGE_PAGE (Vendor Defined Page 1)
    0x09, 0x01,                    // USAGE (Vendor Usage 1)
    0xa1, 0x01,                    // COLLECTION (Application)
    0x09, 0x02,                    //   USAGE (Vendor Usage 2)
    0x15, 0x00,                    //   LOGICAL_MINIMUM (0)
    0x26, 0xff, 0x00,              //   LOGICAL_MAXIMUM (255)
    0x75, 0x08,                    //   REPORT_SIZE (8)
    0x95, 0x01,                    //   REPORT_COUNT (1)
    0xb1, 0x02,                    //   FEATURE (Data,Var,Abs)
    0x09, 0x03,                    //   USAGE (Vendor Usage 3)
    0x25, 0x01,                    //   LOGICAL_MAXIMUM (1)
    0x75, 0x01,                    //   REPORT_SIZE (1)
    0x95, 0x18,                    //   REPORT_COUNT (24)
    0xb1, 0x02,                    //   FEATURE (Data,Var,Abs)
    0x19, 0x04,                    //   USAGE_MINIMUM (Vendor Usage 4)
    0x29, 0x08,                    //   USAGE_MAXIMUM (Vendor Usage 8)
    0x17, 0x01, 0x00, 0x00, 0x80,  //   LOGICAL_MINIMUM (-2147483647)
    0x27, 0xff, 0xff, 0xff, 0x7f,  //   LOGICAL_MAXIMUM (2147483647)
    0x75, 0x20,                    //   REPORT_SIZE (32)
    0x95, 0x05,                    //   REPORT_COUNT (5)
    0xb1, 0x02,                    //   FEATURE (Data,Var,Abs)
    0xc0                           // END_COLLECTION
};

/**************************************************
 * USB Device HID Function Init Data
 **************************************************/
const USB_DEVICE_HID_INIT hidInit0 =
{
	 .hidReportDescriptorSize = sizeof(hid_rpt0),
	 .hidReportDescriptor = (void *)&hid_rpt0,
	 .queueSizeReportReceive = 1,
	 .queueSizeReportSend = 1
};



/**************************************************
 * USB Device Layer Function Driver Registration
 * Table
 **************************************************/
const USB_DEVICE_FUNCTION_REGISTRATION_TABLE funcRegistrationTable[2] =
{
    
	/* Audio Function 0 */
    { 
        .configurationValue = 1,    /* Configuration value */ 
        .interfaceNumber = 0,       /* First interfaceNumber of this function */ 
        .speed = USB_SPEED_HIGH|USB_SPEED_FULL,    /* Function Speed */ 
        .numberOfInterfaces = 3,    /* Number of interfaces */
        .funcDriverIndex = 0,  /* Index of Audio Function Driver */
        .driver = (void*)USB_DEVICE_AUDIO_FUNCTION_DRIVER,    /* USB Audio function data exposed to device layer */
        .funcDriverInit = (void*)&audioInit0    /* Function driver init data */
    },


	/* HID Function 0 */
    { 
        .configurationValue = 1,    /* Configuration value */ 
        .interfaceNumber = 3,       /* First interfaceNumber of this function */ 
        .speed = USB_SPEED_HIGH|USB_SPEED_FULL,    /* Function Speed */ 
        .numberOfInterfaces = 1,    /* Number of interfaces */
        .funcDriverIndex = 0,  /* Index of HID Function Driver */
        .driver = (void*)USB_DEVICE_HID_FUNCTION_DRIVER,    /* USB HID function data exposed to device layer */
        .funcDriverInit = (void*)&hidInit0    /* Function driver init data */
    },



};

/*******************************************
 * USB Device Layer Descriptors
 *******************************************/
/*******************************************
 *  USB Device Descriptor
 *******************************************/
const USB_DEVICE_DESCRIPTOR deviceDescriptor =
{
    0x12,                                                   // Size of this descriptor in bytes
    USB_DESCRIPTOR_DEVICE,                                  // DEVICE descriptor type
    0x0200,                                                 // USB Spec Release Number in BCD format
    0x00,                                                   // Class Code
    0x00,                                                   // Subclass code
    0x00,                                                   // Protocol code
    USB_DEVICE_EP0_BUFFER_SIZE,                             // Max packet size for EP0, see configuration.h
    0x1209,                                                 // Vendor ID
    0xA01F,                                                 // Product ID
    0x0100,                                                 // Device release number in BCD format
    0x01,                                                   // Manufacturer string index
    0x02,                                                   // Product string index
    0x00,                                                   // Device serial number string index
    0x01                                                    // Number of possible configurations
};

/*******************************************
 *  USB Device Qualifier Descriptor for this
 *  demo.
 *******************************************/
const USB_DEVICE_QUALIFIER deviceQualifierDescriptor1 =
{
    0x0A,                                                   // Size of this descriptor in bytes
    USB_DESCRIPTOR_DEVICE_QUALIFIER,                        // Device Qualifier Type
    0x0200,                                                 // USB Specification Release number
    0x00,                                                   // Class Code
    0x00,                                                   // Subclass code
    0x00,                                                   // Protocol code
    USB_DEVICE_EP0_BUFFER_SIZE,                             // Maximum packet size for endpoint 0
    0x01,                                                   // Number of possible configurations
    0x00                                                    // Reserved for future use.
};

/*******************************************
 *  USB High Speed Configuration Descriptor
 *******************************************/
const uint8_t configurationDescriptor[]=
{
    /* Configuration Descriptor */

    0x09,                                               // Size of this descriptor in bytes
    USB_DESCRIPTOR_CONFIGURATION,                       // Descriptor Type
    USB_DEVICE_16bitTo8bitArrange(235),                  //(234 Bytes)Size of the Configuration descriptor
    4,                                                  // Number of interfaces in this configuration
    0x01,                                               // Index value of this configuration
    0x00,                                               // Configuration string index
    USB_ATTRIBUTE_DEFAULT, // Attributes
    250,                                                 // Maximum power consumption (mA) /2


/* Descriptor for Function 1 - Audio     */ 
    
    /* USB Headset Standard Audio Control Interface Descriptor          */
    0x09,                            // Size of this descriptor in bytes (bLength)
    USB_DESCRIPTOR_INTERFACE,        // INTERFACE descriptor type (bDescriptorType)
    0,
    0x00,                            // Alternate Setting Number (bAlternateSetting)
    0x00,                            // Number of endpoints in this intf (bNumEndpoints)
    USB_AUDIO_CLASS_CODE,            // Class code  (bInterfaceClass)				 
    USB_AUDIO_AUDIOCONTROL,          // Subclass code (bInterfaceSubclass)
    USB_AUDIO_PR_PROTOCOL_UNDEFINED, // Protocol code  (bInterfaceProtocol)
    0x00,                            // Interface string index (iInterface)

    /* USB Headset Class-specific AC Interface Descriptor  */
    0x0A,                           // Size of this descriptor in bytes (bLength)
    USB_AUDIO_CS_INTERFACE,         // CS_INTERFACE Descriptor Type (bDescriptorType)
    USB_AUDIO_HEADER,               // HEADER descriptor subtype      (bDescriptorSubtype)
    0x00,0x01,                      /* Audio Device compliant to the USB Audio
                                     * specification version 1.00 (bcdADC) */
									 
    0x4E,0x00,                      /* Total number of bytes returned for the
                                     * class-specific AudioControl interface
                                     * descriptor. (wTotalLength). Includes the
                                     * combined length of this descriptor header
                                     * and all Unit and Terminal descriptors. */

    2,                              /* The number of AudioStreaming interfaces
                                     * in the Audio Interface Collection to which
                                     * this AudioControl interface belongs
                                     * (bInCollection) */

    1,                              /* AudioStreaming interface 1 belongs to this
                                     * AudioControl interface. (baInterfaceNr(1))*/
    2,                              /* AudioStreaming interface 2 belongs to this
                                     * AudioControl interface. (baInterfaceNr(2))*/

    /* USB Headset Input Terminal Descriptor */
    0x0C,                           // Size of the descriptor, in bytes (bLength)
    USB_AUDIO_CS_INTERFACE,         // CS_INTERFACE Descriptor Type (bDescriptorType)
    USB_AUDIO_INPUT_TERMINAL,                // INPUT_TERMINAL descriptor subtype (bDescriptorSubtype)
    USB_DEVICE_AUDIO_IDX0_DESCRIPTOR_INPUT_TERMINAL_ID,          // ID of this Terminal.(bTerminalID)
    0x01,0x01,                      // (wTerminalType)
    0x00,                           // No association (bAssocTerminal)
    0x02,                           // Two Channels (bNrChannels)
    0x03,0x00,                      // Left and right channels (wChannelConfig)
    0x00,                           // Unused.(iChannelNames)
    0x00,                           // Unused. (iTerminal)
    
    /* USB Headset Microphone Input Terminal Descriptor */
    0x0C,                           // Size of the descriptor, in bytes (bLength)
    USB_AUDIO_CS_INTERFACE,         // CS_INTERFACE Descriptor Type (bDescriptorType)
    USB_AUDIO_INPUT_TERMINAL,                // INPUT_TERMINAL descriptor subtype (bDescriptorSubtype)
    USB_DEVICE_AUDIO_IDX0_DESCRIPTOR_INPUT_TERMINAL_MICROPHONE_ID,          // ID of this Terminal.(bTerminalID)
    0x01,0x02,                      // (wTerminalType)
    0x00,                           // No association (bAssocTerminal)
    0x02,                           // Two Channels (bNrChannels)
    0x03,0x00,                      // Left and right channels (wChannelConfig)
    0x00,                           // Unused.(iChannelNames)
    0x00,                           // Unused. (iTerminal)

    /* USB Headset Feature Unit Descriptor */
    0x0D,                               // Size of the descriptor, in bytes (bLength)
    USB_AUDIO_CS_INTERFACE,             // CS_INTERFACE Descriptor Type (bDescriptorType)
    USB_AUDIO_FEATURE_UNIT,             // FEATURE_UNIT  descriptor subtype (bDescriptorSubtype)
    USB_DEVICE_AUDIO_IDX0_DESCRIPTOR_FEATURE_UNIT_ID,                // ID of this Unit ( bUnitID  ).
    USB_DEVICE_AUDIO_IDX0_DESCRIPTOR_INPUT_TERMINAL_ID,              // Input terminal is connected to this unit(bSourceID)
    0x02,                               // (bControlSize) //was 0x03
    0x01,0x00,                          // (bmaControls(0)) Controls for Master Channel
    0x02,0x00,                          // (bmaControls(1)) Controls for Channel 1
    0x02,0x00,                          // (bmaControls(2)) Controls for Channel 2
    0x00,                               //  iFeature
    
    /* USB Microphone Feature Unit Descriptor */
    0x0D,                               // Size of the descriptor, in bytes (bLength)
    USB_AUDIO_CS_INTERFACE,             // CS_INTERFACE Descriptor Type (bDescriptorType)
    USB_AUDIO_FEATURE_UNIT,             // FEATURE_UNIT  descriptor subtype (bDescriptorSubtype)
    USB_DEVICE_AUDIO_IDX0_DESCRIPTOR_FEATURE_UNIT_MICROPHONE_ID,     // ID of this Unit ( bUnitID  ).
    USB_DEVICE_AUDIO_IDX0_DESCRIPTOR_INPUT_TERMINAL_MICROPHONE_ID,   // Input terminal is connected to this unit(bSourceID)
    0x02,                               // (bControlSize) //was 0x03
    0x01,0x00,                          // (bmaControls(0)) Controls for Master Channel
    0x02,0x00,                          // (bmaControls(1)) Controls for Channel 1
    0x02,0x00,                          // (bmaControls(2)) Controls for Channel 2
    0x00,                               //  iFeature
    
    /* USB Headset Output Terminal Descriptor */
    0x09,                               // Size of the descriptor, in bytes (bLength)
    USB_AUDIO_CS_INTERFACE,             // CS_INTERFACE Descriptor Type (bDescriptorType)
    USB_AUDIO_OUTPUT_TERMINAL,          // OUTPUT_TERMINAL  descriptor subtype (bDescriptorSubtype)
    USB_DEVICE_AUDIO_IDX0_DESCRIPTOR_OUTPUT_TERMINAL_ID,             // ID of this Terminal.(bTerminalID)
    0x02,0x03,                          // (wTerminalType)See USB Audio Terminal Types.
    0x00,                               // No association (bAssocTerminal)
    USB_DEVICE_AUDIO_IDX0_DESCRIPTOR_FEATURE_UNIT_ID,                // (bSourceID)
    0x00,                               // Unused. (iTerminal)

    /* USB Headset Output Terminal Microphone Descriptor */
    0x09,                           // Size of the descriptor, in bytes (bLength)
    USB_AUDIO_CS_INTERFACE,    // CS_INTERFACE Descriptor Type (bDescriptorType)
    USB_AUDIO_OUTPUT_TERMINAL,      // OUTPUT_TERMINAL  descriptor subtype (bDescriptorSubtype)
    USB_DEVICE_AUDIO_IDX0_DESCRIPTOR_OUTPUT_TERMINAL_MICROPHONE_ID,          // ID of this Terminal.(bTerminalID)
    0x01,0x01,                       // (wTerminalType)See USB Audio Terminal Types.
    0x00,                            // No association (bAssocTerminal)
    USB_DEVICE_AUDIO_IDX0_DESCRIPTOR_FEATURE_UNIT_MICROPHONE_ID,             // (bSourceID)
    0x00,                            // Unused. (iTerminal)

    /* USB Headset Standard AS Interface Descriptor (Alt. Set. 0) */
    0x09,                            // Size of the descriptor, in bytes (bLength)
    USB_DESCRIPTOR_INTERFACE,        // INTERFACE descriptor type (bDescriptorType)
    1,        // Interface Number  (bInterfaceNumber)
    0x00,                            // Alternate Setting Number (bAlternateSetting)
    0x00,                            // Number of endpoints in this intf (bNumEndpoints)
    USB_AUDIO_CLASS_CODE,            // Class code  (bInterfaceClass)
    USB_AUDIO_AUDIOSTREAMING,        // Subclass code (bInterfaceSubclass)
    0x00,                            // Protocol code  (bInterfaceProtocol)
    0x00,                            // Interface string index (iInterface)

    /* USB Headset Standard AS Interface Descriptor (Alt. Set. 1) */
    0x09,                            // Size of the descriptor, in bytes (bLength)
    USB_DESCRIPTOR_INTERFACE,        // INTERFACE descriptor type (bDescriptorType)
    1,                              // Interface Number  (bInterfaceNumber)
    0x01,                            // Alternate Setting Number (bAlternateSetting)
    0x01,                            // Number of endpoints in this intf (bNumEndpoints)
    USB_AUDIO_CLASS_CODE,            // Class code  (bInterfaceClass)
    USB_AUDIO_AUDIOSTREAMING,        // Subclass code (bInterfaceSubclass)
    0x00,                            // Protocol code  (bInterfaceProtocol)
    0x00,                            // Interface string index (iInterface)

    /*  USB Headset Class-specific AS General Interface Descriptor */
    0x07,                            // Size of the descriptor, in bytes (bLength)
    USB_AUDIO_CS_INTERFACE,     // CS_INTERFACE Descriptor Type (bDescriptorType)
    USB_AUDIO_AS_GENERAL,    // GENERAL subtype (bDescriptorSubtype)
    USB_DEVICE_AUDIO_IDX0_DESCRIPTOR_INPUT_TERMINAL_ID,           // Unit ID of the Output Terminal.(bTerminalLink)
    0x01,                            // Interface delay. (bDelay)
    0x01,0x00,                       // PCM Format (wFormatTag)

    /*  USB Headset Type 1 Format Type Descriptor */
    0x0E,                            // Size of the descriptor, in bytes (bLength)
    USB_AUDIO_CS_INTERFACE,     // CS_INTERFACE Descriptor Type (bDescriptorType)
    USB_AUDIO_FORMAT_TYPE ,          // FORMAT_TYPE subtype. (bDescriptorSubtype)
    0x01,                            // FORMAT_TYPE_1. (bFormatType)
    0x02,                            // two channel.(bNrChannels)
    0x04,                            // 4 byte per audio subframe.(bSubFrameSize)
    0x18,                            // 24 bits per sample.(bBitResolution)
    0x02,                            // two frequencies supported. (bSamFreqType)
    
    0x80,0xBB,0x00,                  // Sampling Frequency = 48000 Hz(tSamFreq[1])
    0x00,0x77,0x01,                  // Sampling Frequency = 96000 Hz(tSamFreq[2])

    /*  USB Headset Standard Endpoint Descriptor */
    0x09,                            // Size of the descriptor, in bytes (bLength)
    USB_DESCRIPTOR_ENDPOINT,         // ENDPOINT descriptor (bDescriptorType)
    1 | USB_EP_DIRECTION_OUT,                            // Endpoint1:OUT  (bEndpointAddress)
    0x09,                            /* ?(bmAttributes) Isochronous,
                                      * adaptive, data endpoint */
    0x00,0x03,                       // ?(wMaxPacketSize) //96 * 4 * 2
    0x01,                            // One packet per frame.(bInterval)
    0x00,                            // Unused. (bRefresh)
    0x00,                            // Unused. (bSynchAddress)

    /* USB Speaker Class-specific Isoc. Audio Data Endpoint Descriptor*/
    0x07,                            // Size of the descriptor, in bytes (bLength)
    USB_AUDIO_CS_ENDPOINT,           // CS_ENDPOINT Descriptor Type (bDescriptorType)
    USB_AUDIO_EP_GENERAL,            // GENERAL subtype. (bDescriptorSubtype)
    0x01,                            /* Turn on sampling frequency control, no pitch
                                        control, no packet padding.(bmAttributes)*/
    0x00,                            // Unused. (bLockDelayUnits)
    0x00,0x00,                        // Unused. (wLockDelay)

    /* USB Microphone Standard AS Interface Descriptor (Alt. Set. 0) */
    0x09,                            // Size of the descriptor, in bytes (bLength)
    USB_DESCRIPTOR_INTERFACE,        // INTERFACE descriptor type (bDescriptorType)
    0x02,                              // Interface Number  (bInterfaceNumber)
    0x00,                            // Alternate Setting Number (bAlternateSetting)
    0x00,                            // Number of endpoints in this intf (bNumEndpoints)
    USB_AUDIO_CLASS_CODE,            // Class code  (bInterfaceClass)
    USB_AUDIO_AUDIOSTREAMING,        // Subclass code (bInterfaceSubclass)
    0x00,                            // Protocol code  (bInterfaceProtocol)
    0x00,                            // Interface string index (iInterface)

    /* USB Microphone Standard AS Interface Descriptor (Alt. Set. 1) */
    0x09,                           // Size of the descriptor, in bytes (bLength)
    USB_DESCRIPTOR_INTERFACE,       // INTERFACE descriptor type (bDescriptorType)
    0x02,                           // Interface Number  (bInterfaceNumber)
    0x01,                           // Alternate Setting Number (bAlternateSetting)
    0x01,                           // Number of endpoints in this intf (bNumEndpoints)
    USB_AUDIO_CLASS_CODE,           // Class code  (bInterfaceClass)
    USB_AUDIO_AUDIOSTREAMING,       // Subclass code (bInterfaceSubclass)
    0x00,                           // Protocol code  (bInterfaceProtocol)
    0x00,                               // Interface string index (iInterface)

    /*  USB Microphone Class-specific AS General Interface Descriptor */
    0x07,                               // Size of the descriptor, in bytes (bLength)
    USB_AUDIO_CS_INTERFACE,                  // CS_INTERFACE Descriptor Type (bDescriptorType)
    USB_AUDIO_AS_GENERAL,                     // GENERAL subtype (bDescriptorSubtype)
    USB_DEVICE_AUDIO_IDX0_DESCRIPTOR_OUTPUT_TERMINAL_MICROPHONE_ID,           // Unit ID of the Output Terminal.(bTerminalLink)
    0x00,                            // Interface delay. (bDelay)
    0x01,0x00,                       // PCM Format (wFormatTag)

    /*  USB Microphone Type 1 Format Type Descriptor */
    0x0B,                            // Size of the descriptor, in bytes (bLength)
    USB_AUDIO_CS_INTERFACE,                   // CS_INTERFACE Descriptor Type (bDescriptorType)
    USB_AUDIO_FORMAT_TYPE ,          // FORMAT_TYPE subtype. (bDescriptorSubtype)
    0x01,                            // FORMAT_TYPE_1. (bFormatType)
    0x02,                            // two channels (bNrChannels)
    0x02,                            // 2 bytes per audio subframe (bSubFrameSize)
    0x10,                            // 16 bits per sample (bBitResolution)
    0x01,                            // One frequency supported (bSamFreqType)
    0x80,0xBB,0x00,                  // Sampling Frequency = 48000 Hz(tSamFreq)

    /*  USB Microphone Standard Endpoint Descriptor */
    0x09,                            // Size of the descriptor, in bytes (bLength)
    USB_DESCRIPTOR_ENDPOINT,         // ENDPOINT descriptor (bDescriptorType)
    1 | USB_EP_DIRECTION_IN,                            // Endpoint1:IN (bEndpointAddress)
    0x05,                            /* ?(bmAttributes) Isochronous,
                                      * asynchronous, data endpoint */
    0xC0, 0x00,                      // ?(wMaxPacketSize) //48 * 2 * 2
    0x01,                            // One packet per frame.(bInterval)
    0x00,                            // Unused. (bRefresh)
    0x00,                            // Unused. (bSynchAddress)

    /* USB Microphone Class-specific Isoc. Audio Data Endpoint Descriptor*/
    0x07,                            // Size of the descriptor, in bytes (bLength)
    USB_AUDIO_CS_ENDPOINT,           // CS_ENDPOINT Descriptor Type (bDescriptorType)
    USB_AUDIO_EP_GENERAL,            // GENERAL subtype. (bDescriptorSubtype)
    0x00,                            /* No sampling frequency control, no pitch
                                        control, no packet padding.(bmAttributes)*/
    0x00,                            // Unused. (bLockDelayUnits)
    0x00,0x00,                        // Unused. (wLockDelay)
	


	/* Interface Descriptor */

    0x09,                               // Size of this descriptor in bytes
    USB_DESCRIPTOR_INTERFACE,           // Descriptor Type is Interface descriptor
    3,                                  // Interface Number
    0x00,                                  // Alternate Setting Number
    0x02,                                  // Number of endpoints in this interface
    USB_HID_CLASS_CODE,                 // Class code
    USB_HID_SUBCLASS_CODE_NO_SUBCLASS , // Subclass code
    USB_HID_PROTOCOL_CODE_NONE,         // No Protocol
    0x00,                                  // Interface string index

    /* HID Class-Specific Descriptor */

    0x09,                           // Size of this descriptor in bytes
    USB_HID_DESCRIPTOR_TYPES_HID,   // HID descriptor type
    0x11,0x01,                      // HID Spec Release Number in BCD format (1.11)
    0x00,                           // Country Code (0x00 for Not supported)
    1,                              // Number of class descriptors
    USB_HID_DESCRIPTOR_TYPES_REPORT,// Report descriptor type
    USB_DEVICE_16bitTo8bitArrange(sizeof(hid_rpt0)),   // Size of the report descriptor

    /* Endpoint Descriptor */

    0x07,                           // Size of this descriptor in bytes
    USB_DESCRIPTOR_ENDPOINT,        // Endpoint Descriptor
    3 | USB_EP_DIRECTION_IN,    // EndpointAddress ( EP3 IN )
    USB_TRANSFER_TYPE_INTERRUPT,    // Attributes
    0x40,0x00,                      // Size
    0x01,                           // Interval

    /* Endpoint Descriptor */

    0x07,                           // Size of this descriptor in bytes
    USB_DESCRIPTOR_ENDPOINT,        // Endpoint Descriptor
    3 | USB_EP_DIRECTION_OUT,   // EndpointAddress ( EP3 OUT )
    USB_TRANSFER_TYPE_INTERRUPT,    // Attributes
    0x40,0x00,                      // size
    0x01,                           // Interval
    
    



};

/*******************************************
 * Array of High speed config descriptors
 *******************************************/
USB_DEVICE_CONFIGURATION_DESCRIPTORS_TABLE highSpeedConfigDescSet[1] =
{
    configurationDescriptor
};

/*******************************************
 *  USB Full Speed Configuration Descriptor
 *******************************************/
// const uint8_t fullSpeedConfigurationDescriptor[]=...

/*******************************************
 * Array of Full speed Configuration
 * descriptors
 *******************************************/
USB_DEVICE_CONFIGURATION_DESCRIPTORS_TABLE fullSpeedConfigDescSet[1] =
{
    configurationDescriptor
};

/**************************************
 *  String descriptors.
 *************************************/
/*******************************************
*  Language code string descriptor
*******************************************/
const struct
{
    uint8_t bLength;
    uint8_t bDscType;
    uint16_t string[1];
}

sd000 =
{
    sizeof(sd000),                                      // Size of this descriptor in bytes
    USB_DESCRIPTOR_STRING,                              // STRING descriptor type
    {0x0409}                                            // Language ID
};
/*******************************************
 *  Manufacturer string descriptor
 *******************************************/
const struct
{
    uint8_t bLength;                                    // Size of this descriptor in bytes
    uint8_t bDscType;                                   // STRING descriptor type
    uint16_t string[11];                                // String
}

sd001 =
{
    sizeof(sd001),
    USB_DESCRIPTOR_STRING,
    {'B','l','o','c','k','W','o','r','k','e','r'}
};

/*******************************************
 *  Product string descriptor
 *******************************************/
const struct
{
    uint8_t bLength;                                    // Size of this descriptor in bytes
    uint8_t bDscType;                                   // STRING descriptor type
    uint16_t string[12];                                // String
}

sd002 =
{
    sizeof(sd002),
    USB_DESCRIPTOR_STRING,
    {'H','e','a','d','p','h','o','n','e','D','A','C'}
};

/***************************************
 * Array of string descriptors
 ***************************************/
USB_DEVICE_STRING_DESCRIPTORS_TABLE stringDescriptors[3]=
{
    (const uint8_t *const)&sd000,
    (const uint8_t *const)&sd001,
    (const uint8_t *const)&sd002,
};

/*******************************************
 * USB Device Layer Master Descriptor Table
 *******************************************/
const USB_DEVICE_MASTER_DESCRIPTOR usbMasterDescriptor =
{
    &deviceDescriptor,                                      // Full speed descriptor
    1,                                                      // Total number of full speed configurations available
    fullSpeedConfigDescSet,                                 // Pointer to array of full speed configurations descriptors
    &deviceDescriptor,                                      // High speed device descriptor
    1,                                                      // Total number of high speed configurations available
    highSpeedConfigDescSet,                                 // Pointer to array of high speed configurations descriptors
    3,                                                      // Total number of string descriptors available.
    stringDescriptors,                                      // Pointer to array of string descriptors.
    &deviceQualifierDescriptor1,                            // Pointer to full speed dev qualifier.
    &deviceQualifierDescriptor1                             // Pointer to high speed dev qualifier.
};


/****************************************************
 * USB Device Layer Initialization Data
 ****************************************************/
const USB_DEVICE_INIT usbDevInitData =
{
    /* Number of function drivers registered to this instance of the
       USB device layer */
    .registeredFuncCount = 2,

    /* Function driver table registered to this instance of the USB device layer*/
    .registeredFunctions = (USB_DEVICE_FUNCTION_REGISTRATION_TABLE*)funcRegistrationTable,

    /* Pointer to USB Descriptor structure */
    .usbMasterDescriptor = (USB_DEVICE_MASTER_DESCRIPTOR*)&usbMasterDescriptor,

    /* USB Device Speed */
    .deviceSpeed =  USB_SPEED_HIGH,

    /* Index of the USB Driver to be used by this Device Layer Instance */
    .driverIndex = DRV_USBHS_INDEX_0,

    /* Pointer to the USB Driver Functions. */
    .usbDriverInterface = DRV_USBHS_DEVICE_INTERFACE,

};
// </editor-fold>
