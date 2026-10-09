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

extern volatile int D_800B8744; /* the player's state */
extern int D_800B8754;
extern int D_800B8758; /* the drive's status (8: error) */
extern int D_800B875C;
extern int D_800B8764;
extern volatile int D_800B8778;
extern int D_800B877C;          /* the fade's steps */
extern int D_800B8780;          /* the CD volume */
extern int D_800B8784;          /* playing */
extern int D_800CC4CC;          /* loop the tracks */
extern int *D_800CC4D4;         /* the tracks to play, indices into D_800CC4F8 */
extern int D_800CC4D8;          /* the volume, << 16 */
extern int D_800CC4DC;          /* the callback's argument */
extern void (*D_800CC4E0)(int); /* called while waiting (func_800154D4) */
extern void (*D_800CC4E8)(int); /* told of errors (8) */
extern int D_800CC4EC;          /* the fade's step */
extern int D_800CC4F0;          /* the number of tracks to play */
extern int D_800CC68C;          /* the track playing, from the first */
extern int D_800CC690;          /* the number of tracks (CdGetToc) */
extern CdlLOC D_800CC4F8[];     /* the tracks' positions */

int func_80096508(void);
int CD_sync(int mode, u8 *result); /* libcd's */
void func_80014CB8(void);
int func_800A5DA4(const char *fmt, ...); /* printf */

int func_800151F0(void);
void func_80015200(int x);
void func_800153FC(int vol);
void func_80015438(int n);
void func_80015650(void);
void func_800150E4(int status, u8 *result);
int func_80015210(int *tracks, int count, int mode);
int func_800152E4(int wait);
void func_80015458(void);
int func_800154D4(void);
void func_800155CC(void);
void func_80015678(void (*f)(int));
void func_80015684(void (*f)(int));
void func_800156DC(void);
void func_80015730(void);
void func_80015764(void);

#ifdef __cplusplus
}
#endif

#endif
