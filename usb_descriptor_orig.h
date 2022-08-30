const uint8_t configurationDescriptor[]=
{
    /* Configuration Descriptor */

    0x09,                                               // Size of this descriptor in bytes
    USB_DESCRIPTOR_CONFIGURATION,                       // Descriptor Type
    USB_DEVICE_16bitTo8bitArrange(234),                  //(234 Bytes)Size of the Configuration descriptor
    3,                                                  // Number of interfaces in this configuration
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
									 
    0x64,0x00,                      /* Total number of bytes returned for the
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
    0x03,0x00,                      // (wChannelConfig)
    0x00,                           // Unused.(iChannelNames)
    0x00,                           // Unused. (iTerminal)
    
    /* USB Headset Microphone Input Terminal Descriptor */
    0x0C,                           // Size of the descriptor, in bytes (bLength)
    USB_AUDIO_CS_INTERFACE,         // CS_INTERFACE Descriptor Type (bDescriptorType)
    USB_AUDIO_INPUT_TERMINAL,                // INPUT_TERMINAL descriptor subtype (bDescriptorSubtype)
    USB_DEVICE_AUDIO_IDX0_DESCRIPTOR_INPUT_TERMINAL_MICROPHONE_ID,          // ID of this Terminal.(bTerminalID)
    0x01,0x02,                      // (wTerminalType)
    0x00,                           // No association (bAssocTerminal)
    0x01,                           // Two Channels (bNrChannels)
    0x04,0x00,                      // (wChannelConfig) 0x0004
    0x00,                           // Unused.(iChannelNames)
    0x00,                           // Unused. (iTerminal)

    /* USB Headset Feature Unit ID8 Descriptor */
    0x0D,                               // Size of the descriptor, in bytes (bLength)
    USB_AUDIO_CS_INTERFACE,             // CS_INTERFACE Descriptor Type (bDescriptorType)
    USB_AUDIO_FEATURE_UNIT,             // FEATURE_UNIT  descriptor subtype (bDescriptorSubtype)
    USB_DEVICE_AUDIO_IDX0_DESCRIPTOR_FEATURE_UNIT_ID,                // ID of this Unit ( bUnitID  ).
    USB_DEVICE_AUDIO_IDX0_DESCRIPTOR_MIXER_UNIT_ID,                  // Input terminal is connected to this unit(bSourceID)
    0x02,                               // (bControlSize) //was 0x03
    0x01,0x00,                          // (bmaControls(0)) Controls for Master Channel
    0x00,0x00,                          // (bmaControls(1)) Controls for Channel 1
    0x00,0x00,                          // (bmaControls(2)) Controls for Channel 2
    0x00,                               //  iFeature
    
    /* USB Headset Feature Unit ID5 Descriptor */
    0x0B,                               // Size of the descriptor, in bytes (bLength)
    USB_AUDIO_CS_INTERFACE,             // CS_INTERFACE Descriptor Type (bDescriptorType)
    USB_AUDIO_FEATURE_UNIT,             // FEATURE_UNIT  descriptor subtype (bDescriptorSubtype)
    USB_DEVICE_AUDIO_IDX0_DESCRIPTOR_FEATURE_UNIT_MICROPHONE_ID,     // ID of this Unit ( bUnitID  ).
    USB_DEVICE_AUDIO_IDX0_DESCRIPTOR_INPUT_TERMINAL_MICROPHONE_ID,   // Input terminal is connected to this unit(bSourceID)
    0x02,                               // (bControlSize) //was 0x03
    0x01,0x00,                          // (bmaControls(0)) Controls for Master Channel
    0x00,0x00,                          // (bmaControls(1)) Controls for Channel 1
    0x00,                               //  iFeature
    
    /* USB Headset Feature Unit ID7 Descriptor */
    0x0B,                               // Size of the descriptor, in bytes (bLength)
    USB_AUDIO_CS_INTERFACE,             // CS_INTERFACE Descriptor Type (bDescriptorType)
    USB_AUDIO_FEATURE_UNIT,             // FEATURE_UNIT  descriptor subtype (bDescriptorSubtype)
    USB_DEVICE_AUDIO_IDX0_DESCRIPTOR_FEATURE_UNIT_SIDE_TONING_ID,    // ID of this Unit ( bUnitID  ).
    USB_DEVICE_AUDIO_IDX0_DESCRIPTOR_INPUT_TERMINAL_MICROPHONE_ID,   // Input terminal is connected to this unit(bSourceID)
    0x02,                               // (bControlSize) //was 0x03
    0x01,0x00,                          // (bmaControls(0)) Controls for Master Channel
    0x00,0x00,                          // (bmaControls(1)) Controls for Channel 1
    0x00,                               //  iFeature
    
    /* USB Headset Mixer Unit ID8 Descriptor */
    0x0D,                               // Size of the descriptor, in bytes (bLength)
    USB_AUDIO_CS_INTERFACE,             // CS_INTERFACE Descriptor Type (bDescriptorType)
    USB_AUDIO_MIXER_UNIT,               // FEATURE_UNIT  descriptor subtype (bDescriptorSubtype)
    USB_DEVICE_AUDIO_IDX0_DESCRIPTOR_MIXER_UNIT_ID,                  // ID of this Unit ( bUnitID  ).
    2,                                  // Number of input pins
    USB_DEVICE_AUDIO_IDX0_DESCRIPTOR_INPUT_TERMINAL_ID,              // sourceID 1
    USB_DEVICE_AUDIO_IDX0_DESCRIPTOR_FEATURE_UNIT_SIDE_TONING_ID,    // sourceID 2
    0x02,                               // number of channels
    0x03,0x00,                          // channel config
    0x00,                               // iChannelNames
    0x00,                               // bmControls
    0x00,                               // iMixer
    
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
    0x11,                            // Size of the descriptor, in bytes (bLength)
    USB_AUDIO_CS_INTERFACE,     // CS_INTERFACE Descriptor Type (bDescriptorType)
    USB_AUDIO_FORMAT_TYPE ,          // FORMAT_TYPE subtype. (bDescriptorSubtype)
    0x01,                            // FORMAT_TYPE_1. (bFormatType)
    0x02,                            // two channel.(bNrChannels)
    0x02,                            // 2 byte per audio subframe.(bSubFrameSize)
    0x10,                            // 16 bits per sample.(bBitResolution)
    0x03,                            // two frequency supported. (bSamFreqType)
    
    0x80,0x3E,0x00,                  // 16000
    0x00,0x7D,0x00,                  // 32000
    0x80,0xBB,0x00,                  // Sampling Frequency = 48000 Hz(tSamFreq)

    /*  USB Headset Standard Endpoint Descriptor */
    0x09,                            // Size of the descriptor, in bytes (bLength)
    USB_DESCRIPTOR_ENDPOINT,         // ENDPOINT descriptor (bDescriptorType)
    2 | USB_EP_DIRECTION_OUT,                            // Endpoint2:OUT  (bEndpointAddress)
    0x09,                            /* ?(bmAttributes) Isochronous,
                                      * asynchronous, data endpoint */
    0xC0,0x00,                      // ?(wMaxPacketSize) //48 * 4
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
    0x11,                            // Size of the descriptor, in bytes (bLength)
    USB_AUDIO_CS_INTERFACE,                   // CS_INTERFACE Descriptor Type (bDescriptorType)
    USB_AUDIO_FORMAT_TYPE ,          // FORMAT_TYPE subtype. (bDescriptorSubtype)
    0x01,                            // FORMAT_TYPE_1. (bFormatType)
    0x01,                            // one channel.(bNrChannels)
    0x02,                            // 2 bytes per audio subframe.(bSubFrameSize)
    0x10,                            // 16 bits per sample.(bBitResolution)
    0x03,                            // One frequency supported. (bSamFreqType)
    0x80,0x3E,0x00,                  // Sampling Frequency = 16000 Hz(tSamFreq)
    0x00,0x7D,0x00,                  // 32000
    0x80,0xBB,0x00,                  // Sampling Frequency = 48000 Hz(tSamFreq)

    /*  USB Microphone Standard Endpoint Descriptor */
    0x09,                            // Size of the descriptor, in bytes (bLength)
    USB_DESCRIPTOR_ENDPOINT,         // ENDPOINT descriptor (bDescriptorType)
    1 | USB_EP_DIRECTION_IN,                            // Endpoint1:IN (bEndpointAddress)
    0x0D,                            /* ?(bmAttributes) Isochronous,
                                      * asynchronous, data endpoint */
    0x60, 0x00,                      // ?(wMaxPacketSize) //48 * 2

    0x01,                            // One packet per frame.(bInterval)
    0x00,                            // Unused. (bRefresh)
    0x00,                            // Unused. (bSynchAddress)

    /* USB Microphone Class-specific Isoc. Audio Data Endpoint Descriptor*/
    0x07,                            // Size of the descriptor, in bytes (bLength)
    USB_AUDIO_CS_ENDPOINT,           // CS_ENDPOINT Descriptor Type (bDescriptorType)
    USB_AUDIO_EP_GENERAL,            // GENERAL subtype. (bDescriptorSubtype)
    0x01,                            /* Turn on sampling frequency control, no pitch
                                        control, no packet padding.(bmAttributes)*/
    0x00,                            // Unused. (bLockDelayUnits)
    0x00,0x00,                        // Unused. (wLockDelay)
	


};