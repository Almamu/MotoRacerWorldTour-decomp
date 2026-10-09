#ifndef CDAUDIO_H
#define CDAUDIO_H

#include "common.h"
#include "psyq.h"

/* The game's CD audio (chunk_01b): the music tracks played from the CD,
 * their volume and mixing. Built apart from the game: GCC 2.91.66, split
 * addresses, no $gp (docs/libraries.md). The functions keep their
 * placeholder names, so they're declared with C linkage. */

#ifdef __cplusplus
extern "C" {
#endif

extern volatile int D_800B8778;
extern int D_800B877C;
extern int D_800B8780; /* the CD volume */
extern int D_800CC4E0;
extern int D_800CC690;      /* the number of tracks (CdGetToc) */
extern CdlLOC D_800CC4F8[]; /* the tracks' positions */

int func_800151F0(void);
void func_80015200(int x);
void func_800153FC(int vol);
void func_80015438(int n);
void func_80015650(void);
void func_80015678(int x);
void func_80015730(void);
void func_80015764(void);

#ifdef __cplusplus
}
#endif

#endif
