#ifndef LANGIMG_SOUND_H
#define LANGIMG_SOUND_H

#include "common.h"

/* The game's sound code (chunk_00): the SPU, the voices, the VAB banks.
 * The functions keep their placeholder names, so they're declared with C
 * linkage: as C++ they'd get mangled symbols. */

/* One of the 24 voices' bookkeeping (D_800C9F70) */
typedef struct {
    int unk0;
    int unk4;
    short unk8;
    short unkA;
    int unkC;
} Voice;

/* A tone of a VAB (Sony's VagAtr, 32 bytes): the tones follow the VAB's
 * header and its 128 programs, 16 to a program */
typedef struct {
    u8 unk0[0xC];
    u16 unkC;
    u8 unkE[0x12];
} VagAtr;

/* What func_80013348 returns */
typedef struct {
    u8 unk0[4];
    short unk4;
    u8 unk6[4];
    s8 unkA;
} SoundUnk;

#ifdef __cplusplus
extern "C" {
#endif

/* libspu, libetc */
void SpuSetCommonCDVolume(short left, short right);
long SpuSetReverb(long on_off);
void SpuQuit(void);
int VSync(int mode);

extern u8 *D_800C4734; /* the VAB header in memory */
extern int D_800C9F54; /* voices to key off (a bit each) */
extern int D_800C9F48;
extern int D_800C4748; /* 24 minus the voices reserved */
extern int D_800C4738; /* voices to key on (a bit each) */
extern int D_800C46FC; /* the SPU is set up */
extern int D_800C46F8;
extern u8 *D_800C46F4;
extern u8 D_800C4750[];
extern u8 D_800C47D0[];
extern int D_800C4724;
extern Voice D_800C9F70[24];

void func_80011820(int unused, s8 left, s8 right);
void func_8001184C(void);
u16 func_80011898(u8 *note);
void func_800118C4(int reserved);
int func_80011924(int voice);
int func_80011BA4(void);
int func_80011E08(void);
void func_80011F84(void);
void func_800121C0(int mode);
void func_80012E58(SoundUnk *p);
int func_80012F40(void);
void func_80013098(void);
int func_800130CC(void);
SoundUnk *func_80013348(void);
void func_80013440(void);
void func_80013448(void);
void func_80013554(void);

#ifdef __cplusplus
}
#endif

#endif
