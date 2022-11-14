/* ************************************************************************** */


#ifndef _APP_AUDIO_H    /* Guard against multiple inclusion */
#define _APP_AUDIO_H

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

    uint8_t audio_hp_mute_usb;
    uint8_t audio_mic_mute_usb;
    int16_t audio_hp_volumes_usb[2];
    int16_t audio_mic_volumes_usb[2];
    

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
