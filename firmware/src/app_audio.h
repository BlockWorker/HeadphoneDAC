/* ************************************************************************** */


#ifndef _APP_AUDIO_H    /* Guard against multiple inclusion */
#define _APP_AUDIO_H

#include "config/default/usb/usb_device_audio_v1_0.h"
#include <stdint.h>


#define APP_AUDIO_REQUEST_COUNT 64
#define APP_AUDIO_REQUEST_BUFFER_SIZE 768

#define AUDIO_RING_BUFFER_SIZE 16384
#define AUDIO_RING_BUFFER_TARGET (AUDIO_RING_BUFFER_SIZE >> 1)
#define AUDIO_RING_BUFFER_THRESHOLD 9


/* Provide C++ Compatibility */
#ifdef __cplusplus
extern "C" {
#endif


    void APP_Audio_Init();
    void APP_Audio_Reset();
    void APP_Audio_Tasks();


    /* Provide C++ Compatibility */
#ifdef __cplusplus
}
#endif

#endif /* multiple inclusion */

/* *****************************************************************************
 End of File
 */
