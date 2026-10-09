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

/* A VAB's header in memory: the header, 128 programs, then 16 tones for
 * each program */
typedef struct {
    u8 hdr[0x820];
    VagAtr tones[128][16];
} Vab;

/* A playing sound (D_800CA0F8, 30 of them, 20 bytes each). A handle is
 * the slot number in its low 5 bits and a serial number in its high 16. */
typedef struct {
    short unk0; /* -1: free */
    u16 unk2;   /* the serial number */
    short unk4;
    u16 unk6; /* bit 0: ... */
    u8 unk8[2];
    s8 unkA;
    u8 unkB[9];
} SoundSlot;

#ifdef __cplusplus
extern "C" {
#endif

/* libspu, libetc, libc */
void SpuSetCommonCDVolume(short left, short right);
long SpuSetReverb(long on_off);
long SpuSetReverbModeType(long mode);
void SpuSetReverbModeDepth(short depth_left, short depth_right);
long SpuClearReverbWorkArea(long mode);
void SpuGetAllKeysStatus(char *status);
void SpuQuit(void);
int VSync(int mode);
void free(void *p);

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
extern void *D_800C46F0; /* a block to free at shutdown */
extern s8 D_800C473D;
extern s8 D_800C473E;
extern int D_800C4740;
extern int D_800C470C;     /* distance where the volume starts to fall */
extern int D_800C4710;     /* and where it reaches 0 */
extern u8 D_800C4850[128]; /* volume by distance */
extern int D_800C4708;     /* the master volume */
extern s8 D_800C9F58[24];  /* each voice's last key status */
extern int D_800CA0F0;     /* voices playing */
extern SoundSlot D_800CA0F8[30];
extern Voice D_800C9F70[24];

void func_80011820(int unused, s8 left, s8 right);
void func_8001184C(void);
u16 func_80011898(u8 *note);
void func_800118C4(int reserved);
int func_80011924(int voice);
int func_80011BA4(void);
int func_80011E08(void);
int func_80011F84(void);
void func_80011960(void);
void func_80011DA8(int type, int depth);
u8 func_800128E8(int dist);
void func_80012504(int a, int b, int c, int left, int right);
void func_80012A88(int a, int vol, int pan, int c, int d);
int func_80012F7C(void);
void func_800121C0(int mode);
void func_80012E58(SoundSlot *p);
int func_80012F40(u32 handle);
void func_80013098(u32 handle);
int func_800130CC(u32 handle);
SoundSlot *func_80013348(u32 handle);
void func_80013440(void);
void func_80013448(void);
void func_80013554(void);

#ifdef __cplusplus
}
#endif

#endif
