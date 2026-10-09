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

typedef struct {
    CdlLOC pos;
    u_long size;
    char name[16];
} CdlFILE;

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
/* Declared returning int in what the game was built against: with void the
 * registers after the call come out differently. */
int free(void *p);
char *strcpy(char *dst, const char *src);

/* libapi */
void EnterCriticalSection(void);
void ExitCriticalSection(void);

/* libetc */
int VSync(int mode);
int VSyncCallback(void (*f)());
void ResetGraph(int mode);
void SetGraphDebug(int level);
int SetVideoMode(long mode);

/* libcd */
int CdInit(void);
int CdControl(u_char com, u_char *param, u_char *result);
int CdControlB(u_char com, u_char *param, u_char *result);
int CdReady(int mode, u_char *result);
int CdGetSector(void *madr, int size);
int CdRead2(long mode);
CdlFILE *CdSearchFile(CdlFILE *fp, char *name);
int CdPosToInt(CdlLOC *p);
CdlLOC *CdIntToPos(int i, CdlLOC *p);
void StCdInterrupt(void);
int StGetNext(u_long **addr, u_long **header);

/* libcd streaming */
void StSetRing(u_long *ring_addr, u_long ring_size);
void StSetStream(u_long mode, u_long start_frame, u_long end_frame,
                 void (*func1)(), void (*func2)());
void StFreeRing(u_long *base);

/* libgpu */
DISPENV *PutDispEnv(DISPENV *env);
DRAWENV *PutDrawEnv(DRAWENV *env);
int DrawSync(int mode);
int DrawSyncCallback(void (*f)());
int ClearImage(RECT *rect, u_char r, u_char g, u_char b);
int MoveImage(RECT *rect, int x, int y);
int LoadImage(RECT *rect, u_long *p);
DRAWENV *SetDefDrawEnv(DRAWENV *env, int x, int y, int w, int h);
DISPENV *SetDefDispEnv(DISPENV *env, int x, int y, int w, int h);
void SetDispMask(int mask);

/* libgte */
void InitGeom(void);
void SetGeomScreen(long h);

/* libsnd */
void SsInit(void);
void SsSetTableSize(char *table, short s_max, short t_max);
void SsSetTickMode(long tick_mode);
void SsStart(void);
short SsVabOpenHead(u_char *addr, short vabid);
short SsUtKeyOn(short vabId, short prog, short tone, short note, short fine,
                short voll, short volr);
void SsSetMVol(short voll, short volr);
void SsVabClose(short vab_id);
void SsEnd(void);
void SsQuit(void);
void SsSetSerialVol(short s_num, short voll, short volr);
void SsUtReverbOn(void);
void SsUtReverbOff(void);
void SsUtSetReverbType(short type);
void SsUtSetReverbDepth(short ldepth, short rdepth);
short SsVabTransBody(u_char *addr, short vabid);
short SsVabTransCompleted(short immediateFlag);

/* libspu */
long SpuClearReverbWorkArea(long rev_mode);

/* libpress */
int DecDCToutCallback(void (*func)());
void DecDCTout(u_long *buf, int size);

#ifdef __cplusplus
}
#endif

#endif
