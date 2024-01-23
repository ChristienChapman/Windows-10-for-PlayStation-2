#include <string.h>
#include <kernel.h>
#include <stdlib.h>
#include <unistd.h>
#include <stdio.h>
#include <debug.h>
#include "include/luaplayer.h"
#include "include/graphics.h"
#include "include/pad.h"

#include "include/sound.h"

static bool adpcm_started = false;
static bool audsrv_started = false;





static int fillbuffer(void *arg)
{
	iSignalSema((int)arg);
	return 0;
}

int sound_playwav(const char* path)
{
	int ret;
	int played;
	int err;
	int bytes;
	char chunk[2048];
	FILE *wav;
	ee_sema_t sema;
	int fillbuffer_sema;
	struct audsrv_fmt_t format;


	audsrv_init();
	if (ret != 0)
	{
		//printf("sample: failed to initialize audsrv\n");
		//printf("audsrv returned error string: %s\n", audsrv_get_error_string());
		return 1;
	}

	format.bits = 16;
	format.freq = 22050;
	format.channels = 2;
	err = audsrv_set_format(&format);
	//scr_printf("set format returned %d\n", err);
	//scr_printf("audsrv returned error string: %s\n", audsrv_get_error_string());

	audsrv_set_volume(MAX_VOLUME);

	sema.init_count = 0;
	sema.max_count = 1;
	sema.option = 0;
	fillbuffer_sema = CreateSema(&sema);

	err = audsrv_on_fillbuf(sizeof(chunk), fillbuffer, (void *)fillbuffer_sema);
	if (err != AUDSRV_ERR_NOERROR)
	{
		//printf("audsrv_on_fillbuf failed with err=%d\n", err);
		goto loser;
	}

	wav = fopen(path, "rb");
	if (wav == NULL)
	{
		//scr_printf("failed to open wav file\n");

		return 1;
	}

	fseek(wav, 0x30, SEEK_SET);

	//scr_printf("starting play loop\n");
	played = 0;
	bytes = 0;

	while (1)
	{
		ret = fread(chunk, 1, sizeof(chunk), wav);
		if (ret > 0)
		{
			WaitSema(fillbuffer_sema);
			audsrv_play_audio(chunk, ret);
			
			
		
			
			
		}

		if (ret < sizeof(chunk))
		{
			/* no more data */
		
			break;
		}

		played++;
		bytes = bytes + ret;
		//scr_printf("\r%d bytes sent..", bytes);

		if (played % 8 == 0)
		{

		
		}

		
	}

	fclose(wav);
return 0;

loser:
	scr_printf("sample: stopping audsrv\n");


	printf("sample: ended\n");
	return 0;
}






int sound_playwav_csf(const char* path, int frequency)
{
	int ret;
	int played;
	int err;
	int bytes;
	char chunk[2048];
	FILE *wav;
	ee_sema_t sema;
	int fillbuffer_sema;
	struct audsrv_fmt_t format;


	audsrv_init();
	if (ret != 0)
	{
		//printf("sample: failed to initialize audsrv\n");
		//printf("audsrv returned error string: %s\n", audsrv_get_error_string());
		return 1;
	}

	format.bits = 16;
	format.freq = frequency;
	format.channels = 2;
	err = audsrv_set_format(&format);
	//scr_printf("set format returned %d\n", err);
	//scr_printf("audsrv returned error string: %s\n", audsrv_get_error_string());

	audsrv_set_volume(MAX_VOLUME);

	sema.init_count = 0;
	sema.max_count = 1;
	sema.option = 0;
	fillbuffer_sema = CreateSema(&sema);

	err = audsrv_on_fillbuf(sizeof(chunk), fillbuffer, (void *)fillbuffer_sema);
	if (err != AUDSRV_ERR_NOERROR)
	{
		//printf("audsrv_on_fillbuf failed with err=%d\n", err);
		goto loser;
	}

	wav = fopen(path, "rb");
	if (wav == NULL)
	{
		//scr_printf("failed to open wav file\n");

		return 1;
	}

	fseek(wav, 0x30, SEEK_SET);

	//scr_printf("starting play loop\n");
	played = 0;
	bytes = 0;

	while (1)
	{
		ret = fread(chunk, 1, sizeof(chunk), wav);
		if (ret > 0)
		{
			WaitSema(fillbuffer_sema);
			audsrv_play_audio(chunk, ret);
			
			
		
			
			
		}

		if (ret < sizeof(chunk))
		{
			/* no more data */
		
			break;
		}

		played++;
		bytes = bytes + ret;
		//scr_printf("\r%d bytes sent..", bytes);

		if (played % 8 == 0)
		{

		
		}

		
	}

	fclose(wav);
return 0;

loser:
	scr_printf("sample: stopping audsrv\n");


	printf("sample: ended\n");
	return 0;
}







int sound_playwav_csf_controls(const char* path, int frequency, int controls)
{
	int ret;
	int played;
	int err;
	int bytes;
	int stopw =0;
	char chunk[2048];
	FILE *wav;
	ee_sema_t sema;
	int fillbuffer_sema;
	struct audsrv_fmt_t format;

	
	
	
	
	



	audsrv_init();
	if (ret != 0)
	{
		//printf("sample: failed to initialize audsrv\n");
		//printf("audsrv returned error string: %s\n", audsrv_get_error_string());
		return 1;
	}

	format.bits = 16;
	format.freq = frequency;
	format.channels = 2;
	err = audsrv_set_format(&format);
	//scr_printf("set format returned %d\n", err);
	//scr_printf("audsrv returned error string: %s\n", audsrv_get_error_string());

	audsrv_set_volume(MAX_VOLUME);

	sema.init_count = 0;
	sema.max_count = 1;
	sema.option = 0;
	fillbuffer_sema = CreateSema(&sema);

	err = audsrv_on_fillbuf(sizeof(chunk), fillbuffer, (void *)fillbuffer_sema);
	if (err != AUDSRV_ERR_NOERROR)
	{
		//printf("audsrv_on_fillbuf failed with err=%d\n", err);
		goto loser;
	}

	wav = fopen(path, "rb");
	if (wav == NULL)
	{
		//scr_printf("failed to open wav file\n");

		return 1;
	}

	fseek(wav, 0x30, SEEK_SET);

	//scr_printf("starting play loop\n");
	played = 0;
	bytes = 0;
	

	while (1)
	{
	
	
	
		ret = fread(chunk, 1, sizeof(chunk), wav);
		if (ret > 0)
		{
			
			
			
	if(controls >= 1) {
	if(isButtonPressed(PAD_CIRCLE)) {
	
	stopw = 1;
	fclose(wav);
	return 0;
	
	}
	}
	if(controls >= 2) {
	if(isButtonPressed(PAD_LEFT)) {
	stopw = 1;
	
	
	return 1;
	
	}
	}
	if(controls >= 3) {
	if(isButtonPressed(PAD_RIGHT)) {
	
	
	return 2;
	
	}
	}
	if(controls >= 4) {
	if(isButtonPressed(PAD_CROSS)) {
	
	return 3;
	
	}
	}
	if(controls >= 5) {
	if(isButtonPressed(PAD_TRIANGLE)) {
	
	return 4;
	
	}
	}
	if(controls >= 6) {
	if(isButtonPressed(PAD_SQUARE)) {
	
	return 5;
	
	}
	}
	if(controls >= 7) {
	if(isButtonPressed(PAD_R1)) {
	
	return 6;
	
	}
	}
	if(controls >= 8) {
	if(isButtonPressed(PAD_L1)) {
	
	return 7;
	
	}
	}
	if(controls >= 9) {
	if(isButtonPressed(PAD_R2)) {
	
	return 8;
	
	}
	}
	if(controls >= 10) {
	if(isButtonPressed(PAD_L2)) {
	
	return 9;
	
	}
	}
	if(controls >= 11) {
	if(isButtonPressed(PAD_UP)) {
	
	return 10;
	
	}
	}
	if(controls >= 12) {
	if(isButtonPressed(PAD_DOWN)) {
	
	return 11;
	
	}
	}
	
	WaitSema(fillbuffer_sema);
	if(stopw == 0) {
			audsrv_play_audio(chunk, ret);
			}
			
			
		
			
			
		}

		if (ret < sizeof(chunk))
		{
			/* no more data */
		
			break;
		}

		played++;
		bytes = bytes + ret;
		//scr_printf("\r%d bytes sent..", bytes);

		if (played % 8 == 0)
		{

		
		}

		
	}

	fclose(wav);
return 0;

loser:
	scr_printf("sample: stopping audsrv\n");


	printf("sample: ended\n");
	return 0;
}









/*static int fillbuffer(void *arg)
{
	iSignalSema((int)arg);
	return 0;
}*/

/*int main(int argc, char **argv)
{
	int ret;
	int played;
	int err;
	int bytes;
	char chunk[2048];
	FILE *wav;
	ee_sema_t sema;
	int fillbuffer_sema;

	sema.init_count = 0;
	sema.max_count = 1;
	sema.option = 0;
	fillbuffer_sema = CreateSema(&sema);

	audsrv_on_fillbuf(sizeof(chunk), fillbuffer, (void *)fillbuffer_sema);

	wav = fopen("host:song_22k.wav", "rb");

	fseek(wav, 0x30, SEEK_SET);

	printf("starting play loop\n");
	played = 0;
	bytes = 0;
	while (1)
	{
		ret = fread(chunk, 1, sizeof(chunk), wav);
		if (ret > 0)
		{
			WaitSema(fillbuffer_sema);
			audsrv_play_audio(chunk, ret);
		}

		if (ret < sizeof(chunk))
		{
			break;
		}

		played++;
		bytes = bytes + ret;

		if (played % 8 == 0)
		{
			printf("\r%d bytes sent..", bytes);
		}

		if (played == 512) break;
	}

	fclose(wav);

}*/


void sound_setvolume(int volume) {
    if(!audsrv_started) {
        audsrv_init();
        audsrv_started = true;
    }

	audsrv_set_volume(volume);
}

void sound_setformat(int bits, int freq, int channels){
    if(!audsrv_started) {
        audsrv_init();
        audsrv_started = true;
    }

	struct audsrv_fmt_t format;

    format.bits = bits;
	format.freq = freq;
	format.channels = channels;
	
	audsrv_set_format(&format);
}

void sound_setadpcmvolume(int slot, int volume) {
    if(!adpcm_started) {
        audsrv_adpcm_init();
        adpcm_started = true;
    }

	audsrv_adpcm_set_volume(slot, volume);
}

audsrv_adpcm_t* sound_loadadpcm(const char* path){
    if(!adpcm_started) {
        audsrv_adpcm_init();
        adpcm_started = true;
    }

	FILE* adpcm;
	audsrv_adpcm_t *sample = (audsrv_adpcm_t *)malloc(sizeof(audsrv_adpcm_t));
	int size;
	u8* buffer;

	adpcm = fopen(path, "rb");

	fseek(adpcm, 0, SEEK_END);
	size = ftell(adpcm);
	fseek(adpcm, 0, SEEK_SET);

	buffer = (u8*)malloc(size);

	fread(buffer, 1, size, adpcm);
	fclose(adpcm);

	audsrv_load_adpcm(sample, buffer, size);

	return sample;
}

void sound_playadpcm(int slot, audsrv_adpcm_t *sample) {
    if(!adpcm_started) {
        audsrv_adpcm_init();
        adpcm_started = true;
    }

	audsrv_ch_play_adpcm(slot, sample);
}
