#include "common.h"

/* An object on chunk_40's class (docs/matching/issue-42-langimg-chunk41.md) */

extern "C" {
struct Kind41 {
    u8 m_00[4];
    s8 m_04;
};
struct Obj41 {
    u8 m_00[0x50];
    void *m_50; // the vtable
    u8 m_54[0x78];
    int m_CC;
    int m_D0; // an angle, in 2pi * 4096ths
    u8 m_D4[0x60];
    int m_134;
    u8 m_138[0xF4];
    Kind41 **m_22C;
    Kind41 **m_230;
};
extern int D_800C7684; // a vtable
void func_80062EEC(Obj41 *o, int f);
int func_80063428(Obj41 *o);
void func_80063434(Obj41 *o, int v);
int func_8006343C(Obj41 *o);
void func_80063448(Obj41 *o, int v);
int func_80063450(Obj41 *o);
int func_80063A04(Obj41 *o);
int func_80063A30(Obj41 *o);
int func_80063A5C(Obj41 *o);
void func_800643BC(Obj41 *o, int f);
}

int func_80063428(Obj41 *o) {
    return o->m_CC;
}

void func_80063434(Obj41 *o, int v) {
    o->m_CC = v;
}

int func_8006343C(Obj41 *o) {
    return o->m_D0;
}

void func_80063448(Obj41 *o, int v) {
    o->m_D0 = v;
}

/* The angle in 4096ths of a turn. */
int func_80063450(Obj41 *o) {
    return (o->m_D0 << 12) / 25736;
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_41", func_8006347C);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_41", func_8006348C);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_41", func_800634BC);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_41", func_80063848);

int func_80063A04(Obj41 *o) {
    int r = 0;

    if (o->m_22C && *o->m_22C) {
        r = (*o->m_22C)->m_04;
    }
    return r;
}

int func_80063A30(Obj41 *o) {
    int r = 0;

    if (o->m_230 && *o->m_230) {
        r = (*o->m_230)->m_04;
    }
    return r;
}

int func_80063A5C(Obj41 *o) {
    return o->m_134;
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_41", func_80063A68);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_41", func_80063C60);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_41", func_800642D0);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_41", func_80064310);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_41", func_80064340);

void func_800643BC(Obj41 *o, int f) {
    o->m_50 = &D_800C7684;
    func_80062EEC(o, f);
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_41", func_800643E4);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_41", func_80064608);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_41", func_80064AA0);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_41", func_80065044);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_41", func_800650F8);
