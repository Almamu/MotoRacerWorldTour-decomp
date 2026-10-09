#ifndef SCES_MOVIE_H
#define SCES_MOVIE_H

#include "psyq.h"

/* The movie player (CINE\*.DPS, docs/formats/dps.md). It's Sony's
 * cd/MOVIE sample adapted: the functions keep the sample's names, and its
 * decoding environment has one image buffer instead of two. */

/* Sector header of a movie frame (Sony's StHEADER) */
typedef struct {
    u_short id;
    u_short type; /* 0x8001: MDEC data */
    u_short secCount;
    u_short nSectors;
    u_long frameCount;
    u_long frameSize;
    u_short width;
    u_short height;
    u_long headm; /* the frame data's first two words */
    u_long headv;
    u_long dummy;
} StHEADER;

/* An entry of the movie table D_8014D350 (24 bytes) */
typedef struct {
    u8 unk0[0x10];
    int unk10; /* 1: no CD audio fade at the end */
    int unk14;
} MovieEntry;

typedef struct {
    u_long *vlcbuf[2]; /* VLC buffers (double buffered) */
    int vlcid;         /* the one being decoded */
    u_short *imgbuf;   /* decoded slice buffer */
    RECT rect[2];      /* where the frame goes in VRAM (double buffered) */
    int rectid;        /* the one being filled */
    RECT slice;        /* the strip one DecDCTout() fills */
    int isdone;        /* the whole frame is decoded */
} DECENV;

#ifdef __cplusplus
extern "C" {
#endif

extern u_long *D_8014D0C0; /* VLC buffer 0 */
extern u_long *D_8014D0C4; /* VLC buffer 1 */
extern u_long *D_8014D228; /* streaming ring buffer */
extern int D_8014D340;
extern u_short D_801C0A60[]; /* decoded slice buffer */
extern DISPENV D_8014D260[2];
extern DRAWENV D_8014D288[2];
extern DECENV D_8014D22C;  /* the decoding environment */
extern int D_801C646C;     /* libcd: StCdInterrupt is due (StCdIntrFlag in the sample) */
extern u_long D_8014D0E4;  /* the furthest frame */
extern u_long D_8014D0D4;  /* the current frame */
extern int D_8014D0C8;     /* the movie's width */
extern int D_8014D0CC;     /* and height */
extern int D_8014D34C;     /* the CD audio volume, 16.16 */
extern u_long D_8014D354;  /* the movie's last frame */
extern MovieEntry *D_8014D350;
extern int D_8014D358;     /* the movie being played */
extern int D_8014D0F0;
extern int D_8014D0F4;

void strKickCD(CdlLOC *loc, int mode);
void strSync(DECENV *dec);
int strNextVlc(DECENV *dec);
/* The decoder callback; one type for the declaration and the definition
 * (a function pointer type spelled inside extern "C" is a different type). */
typedef void (*StrCallback)();

void strInit(CdlLOC *loc, int unused, StrCallback callback, int mode);
void strSetDefDecEnv(DECENV *dec, int x0, int y0, int x1, int y1, int w, int h);
void func_801343A0(int id);
u_long *strNext(DECENV *dec);
void strCallback(void);
void func_80134404(int *key);
void func_80134424(int *key);
void func_80136644(u_long *in, u_long *out);
void func_8013AB7C(int mode);
void func_801365F8(void);

#ifdef __cplusplus
}
#endif

#endif
