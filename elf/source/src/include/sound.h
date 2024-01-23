
#include <audsrv.h>

extern void sound_setvolume(int volume);
extern void sound_setformat(int bits, int freq, int channels);
extern void sound_setadpcmvolume(int slot, int volume);
extern audsrv_adpcm_t* sound_loadadpcm(const char* path);
extern void sound_playadpcm(int slot, audsrv_adpcm_t *sample);
extern int sound_playwav(const char* path);
extern int sound_playwav_csf(const char* path, int frequency);
extern int sound_playwav_csf_controls(const char* path, int frequency, int controls);
