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
    u8 m_54[5];
    u8 m_59;
    u8 m_5A;
    u8 m_5B[9];
    int m_64[3];
    short m_70[3];
    u8 m_76[0x56];
    int m_CC;
    int m_D0; // an angle, in 2pi * 4096ths
    u8 m_D4[0x60];
    int m_134;
    u8 m_138[0x20];
    u8 m_158;
    u8 m_159[3];
    u32 m_15C; // up to 16
    int m_160; // two bits shifted in each time
    u8 m_164[0x90];
    int m_1F4;
    int m_1F8;
    u8 m_1FC[0x30];
    Kind41 **m_22C;
    Kind41 **m_230;
    u8 m_234[0x1BC];
    int m_3F0;
    u8 m_3F4[0x74];
    int m_468;
    u8 m_46C[0x28];
    int m_494;
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
struct Cell41 {
    u8 m_00[0xE];
    u8 m_0E;
    u8 m_0F[0x11];
};
struct Row41 {
    u8 m_00[8];
    Cell41 **m_08;
    u8 m_0C[8];
};
struct Tab41 {
    u8 m_00[0x28];
    Row41 *m_28;
};
extern int D_800CB44C;
void func_80097E4C(void *a, int x, int y, int z);
void func_80062E40(Obj41 *o);
void func_800643E4(Obj41 *o);
void func_8006348C(Obj41 *o, int *a, int *b);
void func_80064310(void *o, short *v);
void func_800642D0(Obj41 *o);
Obj41 *func_80064340(Obj41 *o);
int func_80065044(Obj41 *o, int i, int j, int k, int s, int max, Tab41 *t);
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

void func_8006348C(Obj41 *o, int *a, int *b) {
    if (a) {
        *a = o->m_1F4;
    }
    if (b) {
        *b = o->m_1F8;
    }
}

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

void func_800642D0(Obj41 *o) {
    if (++o->m_15C > 16) {
        o->m_15C = 16;
    }
    o->m_160 <<= 2;
    o->m_160 |= o->m_158 & 3;
}

void func_80064310(void *o, short *v) {
    func_80097E4C(o, v[0], v[1], v[2]);
}

#ifdef NON_MATCHING
// Registers: the vtable's address in $v1, the loop's count in $v0 first (4 off)
/* The constructor: the base's, the vtable, eight elements with empty constructors, its fields. */
Obj41 *func_80064340(Obj41 *o) {
    int *v;
    short *w;
    u8 *q;
    int j;

    func_80062E40(o);
    o->m_50 = &D_800C7684;
    q = (u8 *)o;
    j = 7;
    do {
        q += 4;
    } while (--j != -1);
    v = o->m_64;
    w = o->m_70;
    o->m_59 = 0;
    o->m_5A = 0;
    v[0] = 0;
    v[1] = 0;
    v[2] = 0;
    w[0] = 0;
    w[1] = 0;
    w[2] = 0;
    func_800643E4(o);
    D_800CB44C = 0;
    return o;
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_41", func_80064340);
#endif

void func_800643BC(Obj41 *o, int f) {
    o->m_50 = &D_800C7684;
    func_80062EEC(o, f);
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_41", func_800643E4);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_41", func_80064608);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_41", func_80064AA0);

#ifdef NON_MATCHING
// The cell's address: the original adds j * 32 to the row's pointer, ours the other way round (2 off)
int func_80065044(Obj41 *o, int i, int j, int k, int s, int max, Tab41 *t) {
    int v = t->m_28[i].m_08[k][j].m_0E << 11;
    int b = o->m_468;
    int r;

    if (b < v) {
        v = (s * ((v - b) >> 2) >> 10) + b;
    }
    r = v;
    if (o->m_3F0 == 7) {
        r <<= 1;
    }
    if (o->m_494 & 1) {
        r >>= 1;
    }
    if (max < r) {
        r = max;
    }
    return r;
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_41", func_80065044);
#endif

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_41", func_800650F8);
