#ifndef LANGIMG_SOUND_H
#define LANGIMG_SOUND_H

#include "common.h"
#include "psyq.h"

/* The game's sound code (chunk_00): the SPU, the voices, the VAB banks.
 * The functions keep their placeholder names, so they're declared with C
 * linkage: as C++ they'd get mangled symbols. */

/* A voice a sound plays on */
typedef struct {
    s8 voice; /* -1: none */
    u8 unk1;
} SlotVoice;

/* One of the 24 voices' bookkeeping (D_800C9F70) */
typedef struct {
    int unk0;
    int unk4;
    u16 unk8;         /* priority: the level it was started at */
    u16 unkA;         /* bit 0: pitch LFO on */
    SlotVoice *owner; /* the sound's entry for it */
} Voice;

/* A tone of a VAB (Sony's VagAtr, 32 bytes): the tones follow the VAB's
 * header and its 128 programs, 16 to a program */
typedef struct {
    u8 prior;
    u8 mode; /* 4: reverb */
    u8 vol;
    u8 pan;
    u8 center;
    u8 shift; /* fine tune */
    u8 min;
    u8 max;
    u8 vibW;
    u8 vibT;
    u8 porW;
    u8 porT;
    u16 unkC; /* the sample rate, in Sony's pbmin and pbmax */
    u8 unkE[2];
    u16 adsr1;
    u16 adsr2;
    short prog;
    short vag;
    short reserved[4];
} VagAtr;

/* A playing sound (D_800CA0F8, 30 of them, 20 bytes each). A handle is
 * the slot number in its low 5 bits, the sound in the next 10 and a
 * serial number in the high 16. */
typedef struct {
    short unk0; /* the sound; -1: free */
    u16 unk2;   /* the serial number */
    short unk4; /* voices */
    u16 unk6;   /* bit 0: keep the slot when its voices stop */
    SlotVoice voices[6];
} SoundSlot;

/* libgte's vector */
typedef struct {
    long vx, vy, vz;
} SndVector;

/* Copies a vector a word at a time: all three loads, then the stores
 * (a struct assignment uses other registers; func_80013450). */
static inline void CopyVector(SndVector *dst, SndVector *src) {
    long x = src->vx, y = src->vy, z = src->vz;

    dst->vx = x;
    dst->vy = y;
    dst->vz = z;
}

/* Where sounds are heard from (func_80013450) */
typedef struct {
    u8 unk0[8];
    SndVector unk8;
    SndVector unk14;
    SndVector unk20; /* the facing direction */
    SndVector unk2C;
    int angle; /* of unk20, 0x1000 a turn, 0 along z */
} SndListener;

/* Something that makes sounds in the world (func_8001355C, func_8001363C) */
typedef struct {
    u8 unk0[0x10];
    int flags; /* 0x400: follows unk3C/unk40; 0x200: moves (unk44 its last place) */
    short unk14;
    short unk16;
    short unk18;
    short unk1A;
    short unk1C; /* scales unk14 when flags & 0x4000 (1.0 = 0x1000) */
    short unk1E;
    int unk20;
    int unk24;
    int unk28;
    int volume; /* by where the listener faces */
    SndListener *listener;
    int unk34;
    int unk38;
    SndVector *unk3C; /* where it is */
    SndVector *unk40; /* its direction */
    SndVector unk44;
    SndVector unk50;
    SndVector unk5C;
} SndEmitter;

/* The 3D sounds: emitters and listeners (func_80013CFC) */
typedef struct {
    u8 unk0;
    u8 unk1;
    u8 unk2;
    u8 unk3[0x205];
    int unk208;
    SndEmitter emitters[64];
    SndListener listeners[2];
    short unk1C84;
    short nFree;
    u8 free[64]; /* the free emitters, a stack */
    int unk1CC8;
    u8 unk1CCC[0x28];
    short unk1CF4;
    short unk1CF6;
    int unk1CF8;
} SndWorld;

/* Note numbers by index (func_80013DB8 clears them to -1) */
typedef struct {
    u8 unk0[6];
    short notes[256];
} NoteMap;

/* What func_80013BD4 sets on an emitter, each field when its bit is in
 * mask */
typedef struct {
    short mask;
    short unk2; /* 1 */
    u16 unk4;   /* 2 */
    u8 unk6[2];
    int unk8; /* 4 */
    int unkC; /* 8 */
    u8 unk10[4];
    int unk14; /* 0x80, with unk18 */
    int unk18;
    SndVector unk1C; /* 0x20 */
    SndVector unk28; /* 0x40 */
} SndParams;

/* The sound bank's directory (D_800C472C) */
typedef struct {
    char name[0x20];
    int value;
} DirEntry;

typedef struct {
    int name; /* 4 letters, upper case */
    u8 unk4[0x1C];
} DirName;

typedef struct {
    u8 unk0;
    s8 unk1;
    u8 unk2[0xE];
} DirRecord;

/* The bank file starts with it; its pointers are offsets in the file
 * until func_80011E44 relocates them. */
typedef struct {
    u8 flags; /* 0x80: (D_800C46FC 4, else 2) */
    u8 unk1[3];
    u32 count; /* entries */
    int nNames;
    u8 *notes; /* 44 bytes each (D_800C4744) */
    DirEntry *entries;
    DirName *names;
    u8 *records; /* a VAB header, then a DirRecord per name */
    u8 *samples; /* the VAB's samples, freed once in SPU memory */
} Dir;

#ifdef __cplusplus
extern "C" {
#endif

/* libspu's */
typedef struct {
    short left;
    short right;
} SpuVolume;

typedef struct {
    unsigned long voice;
    unsigned long mask;
    SpuVolume volume;
    SpuVolume volmode;
    SpuVolume volumex;
    unsigned short pitch;
    unsigned short note;
    unsigned short sample_note;
    short envx;
    unsigned long addr;
    unsigned long loop_addr;
    long a_mode;
    long s_mode;
    long r_mode;
    unsigned short ar;
    unsigned short dr;
    unsigned short sr;
    unsigned short rr;
    unsigned short sl;
    unsigned short adsr1;
    unsigned short adsr2;
} SpuVoiceAttr;

#define SPU_VOICE_VOLL (1 << 0)
#define SPU_VOICE_VOLR (1 << 1)
#define SPU_VOICE_PITCH (1 << 4)
#define SPU_VOICE_WDSA (1 << 7)
#define SPU_VOICE_LSAX (1 << 16)
#define SPU_VOICE_ADSR_ADSR1 (1 << 17)
#define SPU_VOICE_ADSR_ADSR2 (1 << 18)

/* libspu, libetc, libc */
void SpuSetCommonCDVolume(short left, short right);
long SpuSetReverb(long on_off);
long SpuSetReverbModeType(long mode);
void SpuSetReverbModeDepth(short depth_left, short depth_right);
long SpuClearReverbWorkArea(long mode);
void SpuGetAllKeysStatus(char *status);
void SpuQuit(void);
void SpuNSetVoiceAttr(int vNum, SpuVoiceAttr *arg);
long SpuSetTransferMode(long mode);
unsigned long SpuSetTransferStartAddr(unsigned long addr);
unsigned long SpuRead(unsigned char *addr, unsigned long size);
long SpuIsTransferCompleted(long flag);
void SpuSetKey(long on_off, unsigned long voice_bit);
unsigned long SpuSetPitchLFOVoice(long on_off, unsigned long voice_bit);
unsigned long SpuSetReverbVoice(long on_off, unsigned long voice_bit);
void SpuInit(void);
void SpuSetCommonMasterVolume(short left, short right);
void SpuSetCommonCDMix(long cd_mix);
void *memset(void *p, int c, size_t n);
char *strncpy(char *dst, const char *src, size_t n);
int VSync(int mode);
long ratan2(long y, long x);
int func_80097AC8(int x);                           /* a square root */
Dir *func_800A06AC(const char *name, int a, int b); /* loads a file */
Dir *func_800B5730(void *p, size_t size);           /* shrinks a block */
/* The game's vector functions (fixed point, 1.0 = 0x1000) */
int func_8009923C(SndVector *v);                                      /* the length */
SndVector *func_800998D0(SndVector *dst, SndVector *a, SndVector *b); /* a - b */
void func_80098E9C(SndVector *v);                                     /* normalises */
int func_80099B88(SndVector *a, SndVector *b);                        /* the dot product */
SndVector *func_80099718(SndVector *dst, SndVector *v, int k);        /* v * k */
/* v >> n. It returns dst, but this code was built with it declared void:
 * func_8001363C allocates its registers otherwise. */
void func_80099DCC(SndVector *dst, SndVector *v, int n);

extern u8 *D_800C4734; /* the VAB header in memory */
extern int D_800C9F54; /* voices to key off (a bit each) */
extern int D_800C9F48;
extern int D_800C4748; /* 24 minus the voices reserved */
extern int D_800C4738; /* voices to key on (a bit each) */
extern s8 D_800C473C;
extern int D_800C46FC; /* the SPU is set up */
extern int D_800C46F8;
extern u8 *D_800C46F4; /* volume by pan (128) */
extern u8 D_800C4750[];
extern u8 D_800C47D0[];
extern int D_800C4724;  /* the voice for notes that take a fixed one (0x800) */
extern int D_800C474C;  /* counts the notes started */
extern Dir *D_800C46F0; /* the bank, freed at shutdown */
extern s8 D_800C473D;
extern s8 D_800C473E;
extern int D_800C4740;
extern int D_800C470C;  /* distance where the volume starts to fall */
extern int D_800C4710;  /* and where it reaches 0 */
extern u8 D_800C4850[]; /* volume by distance (128) */
extern int D_800C4708;  /* the master volume */
extern int D_800C4700;  /* 1: stereo */
extern int D_800C4704;
extern s8 D_800C9F58[24]; /* each voice's last key status */
extern int D_800CA0F0;    /* voices playing */
extern SoundSlot D_800CA0F8[30];
extern int D_800C9F50; /* voices reserved (func_800118C4) */
extern int D_800C9F4C; /* the next sound's serial number */
extern int D_800C4714;
extern int D_800C4718;
extern int D_800C471C;
extern int D_800C4720;
extern Dir *D_800C472C; /* the sound bank's directory */
extern u8 *D_800C4744;  /* the bank's note records, 44 bytes each */
extern u8 *D_800C4728;
extern Voice D_800C9F70[24];

/* A voice's bookkeeping. The loops over the voices only compile like the
 * original's through this form, (&D_800C9F70[i])->field; with
 * D_800C9F70[i].field GCC keeps one address and doesn't strength-reduce
 * them (func_80011A68). */
#define VOICE(i) (&D_800C9F70[i])

/* |x| without a branch, as the sound engine computes it */
#define ABS(x) (((x) ^ ((x) >> 31)) - ((x) >> 31))

void func_80011820(int unused, s8 left, s8 right);
void func_8001184C(void);
u16 func_80011898(u8 *note);
void func_800118C4(int reserved);
int func_80011924(int voice);
int func_80011BA4(void);
int func_80011E08(void);
int func_80011E44(const char *name);
int func_80011F84(void);
int func_80011960(void);
void func_80011A68(void);
void func_800131D0(int playing);
void func_80011DA8(int type, int depth);
int func_80011C5C(int nearDist, int farDist, int reserved);
void func_80011D10(void);
int func_80011FCC(const char *name, DirEntry *entry);
int func_80012080(const char *name);
void func_80012120(const char *name, int value);
int func_800121F4(u8 *note, int level);
u32 func_80012FEC(int first);
int func_80013108(int a);
int func_800133A0(int id);
void func_800A638C(char *s);
void func_8001280C(SndVector *a, SndVector *b, int angle, int *out);
void func_80013450(SndListener *l, SndVector *a, SndVector *b, SndVector *c, SndVector *d);
u8 func_800128E8(int dist);
/* Starts a voice for a note; its number goes in sv->voice */
s8 func_80012504(SlotVoice *sv, u8 *note, int pitch, int left, int right);
int func_8001295C(u8 *note, int vol, int pitch, SlotVoice *sv);
int func_80012AF0(u8 *note, int vol, int pitch, int *place, SlotVoice *sv);
int func_80012C18(u32 handle, int vol, int pitch, SndVector *from, SndVector *at, int angle,
                  int unkA, int flag);
int func_80012A88(u8 *note, int vol, int pan, int c, SlotVoice *d);
int func_80012D38(u32 handle, int vol, int pan, int pitch, int unkA);
int func_80012F7C(void);
void func_800121C0(int mode);
void func_80012E58(SoundSlot *slot);
int func_80012F40(u32 handle);
void func_80013098(u32 handle);
int func_800130CC(u32 handle);
SoundSlot *func_80013348(u32 handle);
void func_80013440(SndWorld *w);
void func_80013448(SndListener *l);
void func_80013554(void);

/* chunk_01: the 3D sounds' emitters and listeners */
void func_80013BA0(SndEmitter *e, int v);
void func_80013BD4(SndEmitter *e, SndParams *p);
void func_80013CFC(SndWorld *w);
u16 func_80014C24(NoteMap *map, int i);
void func_8001355C(SndEmitter *e, SndVector *pos, SndVector *dir);
void func_8001363C(SndEmitter *e, SndVector *pos, SndVector *dir, int dt);

#ifdef __cplusplus
}
#endif

#endif
