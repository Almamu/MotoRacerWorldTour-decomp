#ifndef SCES_MOVIE_H
#define SCES_MOVIE_H

#include "psyq.h"

/* The movie player (CINE\*.DPS, docs/formats/dps.md). It's Sony's
 * cd/MOVIE sample adapted: the functions keep the sample's names, and its
 * decoding environment has one image buffer instead of two. */

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

void strKickCD(CdlLOC *loc, int mode);
void strSync(DECENV *dec);
int strNextVlc(DECENV *dec);
/* The decoder callback; one type for the declaration and the definition
 * (a function pointer type spelled inside extern "C" is a different type). */
typedef void (*StrCallback)();

void strInit(CdlLOC *loc, int unused, StrCallback callback, int mode);
void strSetDefDecEnv(DECENV *dec, int x0, int y0, int x1, int y1, int w, int h);
void func_801343A0(int id);
u_long *func_80133DD0(DECENV *dec); /* strNext */
void func_80136644(u_long *in, u_long *out);
void func_8013AB7C(int mode);
void func_801365F8(void);

#ifdef __cplusplus
}
#endif

#endif
