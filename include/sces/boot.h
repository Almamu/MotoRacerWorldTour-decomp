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

extern u32 Crc32Table[256];

u32 Crc32(u8 *p, s32 len, u32 crc);
void func_80135024(int *key, Options *opt);
void func_80135090(int *key, Options *opt);
void func_801350FC(int *key, Options *opt);
void func_80135168(int *key, Options *opt);
void func_801351D4(int *key, int *done);
void func_801354B0(void);
void func_801354D4(void);

#ifdef __cplusplus
}
#endif

#endif
