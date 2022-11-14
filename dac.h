// E:\Users\Alex\Documents\eagle\projects\HeadphoneDAC\dac.h


char ReportDescriptor[51] = {
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

