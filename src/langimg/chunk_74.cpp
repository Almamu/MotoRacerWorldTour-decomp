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
int func_800A22D0(int a);
int func_800A22B0(int a);
int func_800151F0(void);
void func_80015200(int a);
extern int D_800D60E0[];
extern u8 D_800D60E8[];
extern void *D_800BCE3C[];
extern u8 D_800BCA3C[];

struct Game74 {
    u8 m_00[0x150];
    int m_150;
};
extern u8 D_800BC93C[]; // the case-folding table
extern Game74 *D_800C886C[];
extern int D_800BC938[];
extern int D_800D6148[];
extern int D_800D49A8[];
void func_800A2290(int *p, int a, int b);

void func_800A54F0(void);
int func_800A60AC(const char *a, const char *b);
int func_800A6100(const char *a, const char *b, int n);
int func_800A58B0(void);
void func_800A6788(int a, int b);
int func_800A6850(int x);
char *func_800A5F90(char *d, int v);
int func_800A5CD0(u32 ms, u32 *m, u32 *sec, u32 *cs);
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

int func_800A58B0(void) {
    int t = D_800C886C[0]->m_150;

    if (t) {
        D_800BC938[0] += t * 64 / 1000;
    }
    return D_800BC938[0];
}

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

#ifdef NON_MATCHING
// Registers: the original divides and moves through $t0 (a reload), ours through others (24 off)
/* Milliseconds as minutes, seconds and hundredths; 0 for -1. */
int func_800A5CD0(u32 ms, u32 *m, u32 *sec, u32 *cs) {
    u32 k;

    if (ms == (u32)-1) {
        return 0;
    }
    k = 60000;
    *m = ms / k;
    ms %= k;
    k = 1000;
    *sec = ms / k;
    ms %= k;
    *cs = ms / 10;
    return 1;
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_74", func_800A5CD0);
#endif

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

#ifdef NON_MATCHING
// Registers: the original divides by 10 through $t0 each time round (a reload), ours keeps it in a register (16 off)
/* The number's digits, then a 0; returns the 0's address. */
char *func_800A5F90(char *d, int v) {
    char buf[16];
    char *p = &buf[15];
    int i = 15;
    int base = 10;
    int q;

    do {
        q = v / base;
        *p-- = v % base + '0';
        v = q;
    } while (--i && q);
    i = 15 - i;
    do {
        *d++ = *++p;
    } while (--i);
    *d = 0;
    return d;
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_74", func_800A5F90);
#endif

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_74", func_800A6000);

/* stricmp */
/* stricmp */
int func_800A60AC(const char *a, const char *b) {
    const u8 *p = (const u8 *)a;
    const u8 *x;
    const u8 *y;
    u32 c;

    do {
        c = *p++;
        x = &D_800BC93C[c];
        y = &D_800BC93C[*(const u8 *)b++];
        if (*x != *y) {
            return *x - *y;
        }
    } while (c);
    return 0;
}

/* strnicmp */
/* strnicmp */
/* strnicmp */
/* strnicmp */
/* strnicmp */
int func_800A6100(const char *a, const char *b, int n) {
    const u8 *p = (const u8 *)a;
    const u8 *x;
    const u8 *y;
    short c;

    if (n)
        do {
            c = *p++;
            x = &D_800BC93C[c];
            y = &D_800BC93C[*(const u8 *)b++];
            if (*x != *y) {
                return *x - *y;
            }
            if (!c) {
                return 0;
            }
        } while (--n);
    return 0;
}

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

void func_800A6788(int a, int b) {
    func_800A22D0(2);
    func_800A22B0(0);
    D_800D6148[0] = a + 1;
    func_800A2290(D_800D6148, 1, b ? 0x101 : 0);
}

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

int func_800A6850(int x) {
    if (D_800D49A8[0]) {
        return x * 36 / 0xA000;
    }
    return x * 85 / 0x26000;
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_74", func_800A68BC);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_74", func_800A6A4C);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_74", func_800A6A98);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_74", func_800A6BD8);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_74", func_800A6D54);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_74", func_800A6FA0);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_74", func_800A7034);
