#include "common.h"

/* Small helpers: strings, relocations, a global object (docs/matching/issue-75-langimg-chunk74.md) */

extern "C" {
struct Obj74 {
    u8 m_00[8];
    int m_08;
    int m_0C;
    int m_10;
    int m_14;
    u8 m_18[4];
    int m_1C;
    u8 m_20[8];
    int m_28[4];
    int m_38;
    u8 m_3C[0x10];
    int m_4C;
    u8 m_50[4];
    int m_54;
    u8 m_58[4];
    int m_5C;
};

void __builtin_delete(void *p);
void func_800A57E4(void *p);
void func_800A22D0(int a);
void func_800A22B0(int a);
int func_800151F0(void);
void func_80015200(int a);
extern int D_800D60E0[];
extern u8 D_800D60E8[];
extern void *D_800BCE3C[];
extern u8 D_800BCA3C[];

void func_800A54F0(void);
int func_800A54F8(u8 *base, int *offs, int n);
void func_800A5888(void *p, int flags);
void func_800A5908(Obj74 *o);
void func_800A5CBC(Obj74 *o);
void func_800A5D2C(void);
void func_800A5D68(void);
void func_800A5DA4(int a, ...);
s8 *func_800A6344(s8 *s);
s8 *func_800A638C(s8 *s);
void func_800A63D4(void);
void func_800A63DC(void);
u16 func_800A63E4(u16 x);
void func_800A6448(void);
void func_800A67E8(int a);
int func_800A6818(void);
}

void func_800A54F0(void) {
}

/* Relocates: each offset's word gets the base added. */
int func_800A54F8(u8 *base, int *offs, int n) {
    int i;

    for (i = 0; i < n; i++) {
        *(int *)(base + *offs++) += (int)base;
    }
    return 1;
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_74", func_800A5530);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_74", func_800A57E4);

void func_800A5888(void *p, int flags) {
    if (flags & 1) {
        __builtin_delete(p);
    }
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_74", func_800A58B0);

void func_800A5908(Obj74 *o) {
    int i;

    o->m_5C = 1;
    o->m_10 = 0;
    o->m_14 = 0;
    o->m_38 = 0;
    o->m_08 = 1;
    o->m_0C = 0;
    for (i = 0; i < 4; i++) {
        o->m_28[i] = 0x23;
    }
    o->m_1C = 0;
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_74", func_800A594C);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_74", func_800A59D4);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_74", func_800A5BB8);

void func_800A5CBC(Obj74 *o) {
    o->m_4C = !o->m_54;
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_74", func_800A5CD0);

void func_800A5D2C(void) {
    if (--D_800D60E0[0] == 0) {
        func_800A5888(D_800D60E8, 2);
    }
}

void func_800A5D68(void) {
    if (++D_800D60E0[0] == 1) {
        func_800A57E4(D_800D60E8);
    }
}

void func_800A5DA4(int a, ...) {
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_74", func_800A5DBC);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_74", func_800A5ED0);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_74", func_800A5F90);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_74", func_800A6000);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_74", func_800A60AC);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_74", func_800A6100);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_74", func_800A6168);

/* strupr */
s8 *func_800A6344(s8 *s) {
    s8 *p;

    for (p = s; *p; p++) {
        u8 c = *p;

        if (c >= 'a' && c <= 'z') {
            *p = c - 0x20;
        }
    }
    return s;
}

/* strlwr */
s8 *func_800A638C(s8 *s) {
    s8 *p;

    for (p = s; *p; p++) {
        u8 c = *p;

        if (c >= 'A' && c <= 'Z') {
            *p = c + 0x20;
        }
    }
    return s;
}

void func_800A63D4(void) {
}

void func_800A63DC(void) {
}

u16 func_800A63E4(u16 x) {
    return (x >> 8) | (x << 8);
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_74", func_800A63FC);

void func_800A6448(void) {
    D_800BCE3C[0] = D_800BCA3C;
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_74", func_800A645C);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_74", func_800A658C);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_74", func_800A6650);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_74", func_800A6788);

void func_800A67E8(int a) {
    func_800A22D0(2);
    func_800A22B0(a);
}

int func_800A6818(void) {
    int r = func_800151F0();

    if (r) {
        func_80015200(0);
    }
    return r;
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_74", func_800A6850);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_74", func_800A68BC);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_74", func_800A6A4C);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_74", func_800A6A98);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_74", func_800A6BD8);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_74", func_800A6D54);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_74", func_800A6FA0);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_74", func_800A7034);
