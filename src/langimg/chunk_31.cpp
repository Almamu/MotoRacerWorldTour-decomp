#include "common.h"

/* A bike's state, the race's bikes (docs/matching/issue-32-langimg-chunk31.md) */

extern "C" {
struct Vec31 {
    int x;
    int y;
    int z;
};
// Four shorts, 2-aligned
struct SVec31 {
    short x;
    short y;
    short z;
    short pad;
};
// A bike's definition
struct Def31 {
    u8 m_00[0x64];
    Vec31 m_64;
    SVec31 m_70;
};
// A bike, 0x568 bytes
struct Bike31 {
    int m_00; // flags; bits 1-5: a mode
    u8 m_04[8];
    short m_0C;
    u8 m_0E[0xA];
    int m_18[5];
    u8 m_2C[4];
    Def31 *m_30;
    int m_34;
    u8 m_38[0x10];
    int m_48;
    void *m_4C;
    int m_50;
    u8 m_54[0x137];
    u8 m_18B;
    u8 m_18C[0x18C];
    int m_318;
    int m_31C;
    s8 m_320;
    u8 m_321[3];
    u8 m_324;
    u8 m_325[2];
    s8 m_327;
    u8 m_328[0x9C];
    int m_3C4;
    u8 m_3C8[0x178];
    int m_540;
    int m_544;
    Vec31 m_548;
    SVec31 m_554;
    int m_55C;
    int m_560;
    int m_564;
};
struct Run31 {
    u8 m_00[0x2E8];
    Bike31 m_2E8[5];
};
struct Ctl31 {
    u8 m_00[0x3E8];
    int m_3E8;
};
// An entry of D_800C9EE0's table
struct Ent31 {
    int m_00;
    u8 m_04[4];
    u8 m_08[0xC];
};
extern int D_800C8868;
extern int *D_800C9EF0;
extern Ent31 *D_800C9EE0;
extern int D_800D5FAC; // a table of 5
void func_8004F83C(void *a, void *b);
void func_80097E4C(void *a, int x, int y, int z);
int func_80050EBC(int k);
void func_80033E4C(int a, Bike31 *b);
void func_8005108C(u8 *p, int v);
void func_8004F828(int a, int b);
int func_8004FFAC(int *a, int *b);
int func_8004FFC8(int *a, int *b);
int func_80050F1C(int *a, int *b);
void func_8004FE38(void *a, u8 *b);
void func_80051094(Bike31 *b);
void func_80050F38(Bike31 *b);
void func_80051060(Bike31 *b, Ctl31 *c);
void func_8004FE58(void *a, short *v);
void func_80050E88(int i);
int func_8005102C(Bike31 *b, int k);
void func_80051114(Bike31 *b);
void func_800510B4(Bike31 *b, int k);
void func_80050850(Run31 *r, int load);
void func_8005148C(Bike31 *b, int v);
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_31", func_8004F6C8);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_31", func_8004F76C);

void func_8004F828(int a, int b) {
    D_800C8868 = b + 0x40;
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_31", func_8004F83C);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_31", func_8004F908);

void func_8004FE38(void *a, u8 *b) {
    func_8004F83C(a, b + 0xF8);
}

void func_8004FE58(void *a, short *v) {
    func_80097E4C(a, v[0], v[1], v[2]);
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_31", func_8004FE88);

/* qsort's comparisons: the words without their low bits */
int func_8004FFAC(int *a, int *b) {
    int x = *a & ~7;
    int y = *b & ~7;

    return y - x;
}

int func_8004FFC8(int *a, int *b) {
    return (*a & ~7) - (*b & ~7);
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_31", func_8004FFE4);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_31", func_8005044C);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_31", func_800505BC);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_31", func_800507B0);

/* The bikes' values at 0x0C saved to, or loaded from, a table. */
void func_80050850(Run31 *r, int load) {
    Bike31 *b = r->m_2E8;
    int i = 0;

    if (load) {
        for (; i < 5; i++) {
            b->m_0C = (&D_800D5FAC)[i];
            b++;
        }
    } else {
        for (; i < 5; i++) {
            (&D_800D5FAC)[i] = b->m_0C;
            b++;
        }
    }
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_31", func_800508B4);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_31", func_80050A4C);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_31", func_80050CA4);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_31", func_80050D7C);

void func_80050E88(int i) {
    func_80050EBC(D_800C9EF0[i]);
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_31", func_80050EBC);

int func_80050F1C(int *a, int *b) {
    int x = *a & ~15;
    int y = *b & ~15;

    return y - x;
}

void func_80050F38(Bike31 *b) {
    int i;

    for (i = 4; i >= 0; i--) {
        b->m_18[i] = -1;
    }
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_31", func_80050F5C);

int func_8005102C(Bike31 *b, int k) {
    int i = 4;
    int *p = &b->m_18[4];

    for (; i >= 0; i--) {
        if (*p-- == k) {
            goto found;
        }
    }
    return -1;
found:
    return i;
}

void func_80051060(Bike31 *b, Ctl31 *c) {
    if (((b->m_00 << 26) >> 27) == 1) {
        b->m_31C = c->m_3E8;
    }
}

void func_8005108C(u8 *p, int v) {
    p[1] = v;
}

void func_80051094(Bike31 *b) {
    b->m_18B = 0;
    b->m_324 = 0;
    b->m_327 = -1;
    b->m_34 = 0;
    b->m_3C4 = 0;
    b->m_318 = 0;
}

void func_800510B4(Bike31 *b, int k) {
    b->m_50 = k;
    if (k == -1) {
        b->m_48 = 0;
        b->m_4C = 0;
    } else {
        b->m_48 = D_800C9EE0[k].m_00;
        b->m_4C = D_800C9EE0[k].m_08;
    }
}

void func_80051114(Bike31 *b) {
    if (b->m_320) {
        func_80033E4C(b->m_31C, b);
    }
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_31", func_8005114C);

#ifdef NON_MATCHING
// The struct copies: the original's block moves keep the addresses in registers ($v0, $v1) and copy through $t registers; ours fold the offsets
void func_8005148C(Bike31 *b, int v) {
    b->m_544 = 0;
    b->m_540 = 0;
    b->m_548 = b->m_30->m_64;
    b->m_554 = b->m_30->m_70;
    b->m_55C = v;
    b->m_560 = 0;
    b->m_564 = 1;
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_31", func_8005148C);
#endif
