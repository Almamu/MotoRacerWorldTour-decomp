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
extern int D_8019DA5C; /* the buffer being shown */
extern int D_8019DA60;
extern int D_8019DA64;
extern int D_8019DA68;
extern void *D_8019DB64;
extern void *D_8019DB68;
extern DRAWENV D_8019DA80[2];
extern DISPENV D_8019DB38[2];

extern u32 Crc32Table[256];

u32 Crc32(u8 *p, s32 len, u32 crc);
void func_80135024(int *key, Options *opt);
void func_80135090(int *key, Options *opt);
void func_801350FC(int *key, Options *opt);
void func_80135168(int *key, Options *opt);
void func_801351D4(int *key, int *done);
void func_801354B0(void);
void func_801354D4(void);
void func_801354FC(void);
void func_80135504(void);
void func_8013550C(void);
void func_80136028(void);
void func_8013604C(void);
void func_80136090(void);
int func_801360CC(void);
void func_80136450(void);
int func_801364D4(void);
void func_80136540(void);
void func_801365C0(void);
void func_801365F0(void);

#ifdef __cplusplus
}
#endif

#endif
