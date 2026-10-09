#ifndef SCES_BOOT_H
#define SCES_BOOT_H

#include "common.h"
#include "psyq.h"

/* The boot executable's own code (src/sces/chunk_*.cpp) is C++, built
 * with GCC 2.91.66. Its free functions are declared extern "C" here so
 * their names in config/sces/symbol_addrs.txt stay plain; that doesn't
 * change the code they compile to. */

/* Placeholder name: an object with two words, one global instance
 * (D_8014D3F8), set from func_80135228. */
class CPair {
public:
    int m_00;
    int m_04;

    CPair();
    ~CPair();
    void Set(int a, int b);
};

/* MR3.DAT, the archive (docs/formats/mr3dat.md) */
struct ArchiveEntry {
    u32 crc;  /* of the stored data */
    u32 size; /* stored size */
    u32 loc;  /* offset in the archive; a CdlLOC once opened */
    u32 hash; /* of the upper-cased name */
};

struct Archive {
    u32 count;
    u16 flags;     /* bit 3: entries sorted by hash */
    u16 entrySize; /* 0: 0x30 */
    u32 unk8;
    u32 unkC;
    ArchiveEntry entries[1];
};

/* The language choice (Startup) */
struct Choice {
    int done;
    int col;
    int row;

    Choice() {
        done = 0;
        col = 0;
        row = 0;
    }
};

/* What the option callbacks (func_80135024...) step. */
struct Options {
    int unk0;
    int unk4;
    int unk8;
};

#ifdef __cplusplus
extern "C" {
#endif

extern CPair D_8014D3F8;
extern short D_8019D990; /* the menu sound bank's VAB id */
extern u_char D_8019E8AC[]; /* its VAB body */
extern const char D_8014C3C0[]; /* "VAB trans body failed\n" */
extern int D_8019DA50;
extern int D_8019DA54;
extern volatile int D_8019DA5C; /* the buffer being shown */
extern int D_8019DA60;
extern int D_8019DA64;
extern int D_8019DA68;
extern void *D_8019DB64;
extern void *D_8019DB68;
extern DRAWENV D_8019DA80[2];
extern DISPENV D_8019DB38[2];
extern int D_8019DB70; /* a CD read is going on */
extern void (**D_8019D48C)(void *buf); /* a hook on what func_80135780 reads */
extern int D_8019DB60; /* 1: interlaced (h > 256) */
extern int D_8019DB6C; /* the ordering table's size */
extern void *D_8019DA70;
extern char D_8019D994[]; /* the libsnd sequence table */
extern u_char D_8019DC88[]; /* the menu sound bank's VAB header */

extern u32 Crc32Table[256];

extern Archive *D_8019D480; /* MR3.DAT */

u32 Crc32(u8 *p, s32 len, u32 crc);
char *StrUpper(char *s);
ArchiveEntry *FindEntry(Archive *arc, const char *name);
Archive *OpenArchive(char *path, void *dest);
u8 *LoadFile(const char *name, u8 *dest, u32 *sizeOut);
void *LoadEntry(Archive *arc, const char *name, void *dest, u32 *size);
void *func_80135780(int mode, CdlLOC *loc, u32 size, void *dest); /* reads from the CD */
void LzssDecompress(u8 *src, u8 *dest);
int func_80135D34(int arg);
void func_80135F10(void);
void func_80136E74(int mode); /* libcd, near CdInit */

/* The heap (libsn, next to free): from their use, malloc, realloc and the
 * size of the largest free block. Declared returning int as the boot
 * executable was built (it changes the registers after the calls). */
int func_8014A454(u32 size);
int func_8014A838(void *p, u32 size);
int func_8014AA98(void);
void func_80135024(int *key, Options *opt);
void func_80135090(int *key, Options *opt);
void func_801350FC(int *key, Options *opt);
void func_80135168(int *key, Options *opt);
void func_801351D4(int *key, int *done);
void func_801354B0(void);
void func_801354D4(void);
int func_801354FC(void);
int func_80135504(void);
void func_8013550C(int arg);
void func_80136028(void);
void func_8013604C(void);
void func_80136090(void);
int func_801360CC(void);
int func_80135F84(void);
void func_80134CA0(int x, int y, int color);
void Startup(void);
void func_8013C6F0(void *prim); /* libgpu: DrawPrim, by its use */
void func_8013FA3C(void *a, Choice *choice);
int func_80134948(CPair *p, void *image, int a, int x, int y); /* shows a picture */
extern u8 D_8014D480[];
extern u8 D_80175480[];
extern u8 D_801A0514[]; /* the first picture */
extern u8 D_801B1310[]; /* the last one */
extern u8 D_8014D400[]; /* the intro movie */
extern void (*D_800117F0)(void); /* the game's entry point (LANGIMG.DAT's first word) */
int func_80133334(int a, void *movie, int c, int d); /* plays a movie */
void func_8013F188(int a, int b); /* libpad */
void func_8013EB24(int a);        /* libpad */
void func_8013F908(int a);        /* libpad */
void func_8013F1D0(void);         /* libpad */
int func_8013B35C(void);          /* libetc */
extern u8 D_801A6C10[]; /* the language choice picture */
extern u8 D_8014D35C[];
extern u32 *D_8014D3F4;
int func_80136130(int x, int y, int w, int h, int mode, int otSize, int primCount, int clear);
void func_80136450(void);
int func_801364D4(void);
void func_80136540(void);
void func_801365C0(void);
void func_801365F0(void);

#ifdef __cplusplus
}
#endif

#endif
