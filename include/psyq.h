#ifndef PSYQ_H
#define PSYQ_H

/* Declarations of the PsyQ library functions and types the game code
 * uses, written from their use and Sony's documented interfaces (the SDK's
 * own headers aren't part of this repository). Add what you need. */

#include "common.h"

typedef unsigned char u_char;
typedef unsigned short u_short;
typedef unsigned int u_int;
typedef unsigned long u_long;

typedef struct {
    short x, y; /* top left */
    short w, h; /* size */
} RECT;

typedef struct {
    u_char minute, second, sector, track;
} CdlLOC;

typedef struct {
    u_char file, chan;
    u_short pad;
} CdlFILTER;

/* libgpu display and drawing environments */
typedef struct {
    RECT disp;
    RECT screen;
    u_char isinter, isrgb24, pad0, pad1;
} DISPENV; /* 0x14 bytes */

typedef struct {
    RECT clip;
    short ofs[2];
    RECT tw;
    u_short tpage;
    u_char dtd, dfe, isbg, r0, g0, b0;
    u_long dr_env[16];
} DRAWENV; /* 0x5C bytes */

#ifdef __cplusplus
extern "C" {
#endif

int printf(const char *fmt, ...);

/* libcd */
int CdControlB(u_char com, u_char *param, u_char *result);
int CdRead2(long mode);

/* libcd streaming */
void StSetRing(u_long *ring_addr, u_long ring_size);
void StSetStream(u_long mode, u_long start_frame, u_long end_frame,
                 void (*func1)(), void (*func2)());
void StFreeRing(u_long *base);

/* libgpu */
DISPENV *PutDispEnv(DISPENV *env);
DRAWENV *PutDrawEnv(DRAWENV *env);

/* libsnd */
short SsUtKeyOn(short vabId, short prog, short tone, short note, short fine,
                short voll, short volr);

/* libpress */
void DecDCToutCallback(void (*func)());

#ifdef __cplusplus
}
#endif

#endif
