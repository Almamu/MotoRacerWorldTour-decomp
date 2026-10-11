#include "common.h"

// A 0x74-byte object, built and torn down in pairs
struct Snd28 {
    u8 m_00[0x74];
};

// The game object
struct Game28 {
    u8 m_00[0x18];
    int m_18;
    u8 m_1C[0x80];
    u8 m_9C[0x274];
    void *m_310[2];
    u8 m_318[0x60];
    void *m_378;
};

struct Buf28 {
    void *m_00;
};

// A vtable's entry at 0x68
struct Vt28 {
    u8 m_00[0x68];
    short m_68;
    short m_6A;
    void (*m_6C)(void *o);
};

struct Disp28 {
    u8 m_00[0x68];
    Vt28 *m_68;
};

extern int D_800CB1BC; // how many times each was constructed
extern int D_800CAFAC;
extern int D_800CAFA8;
extern int D_800CAE90;
extern int D_800CAFB8; // two Snd28: declared small, so its address is an la
extern int D_800CB02C; // the second
extern int D_800CB0A0;
extern int D_800CBC94;
extern char *D_800C9E94; // names, by number
extern int D_800C5E2C;
extern int D_800C5E2C_w[] asm("D_800C5E2C"); // the same word, read the other way
extern char D_800C5E3C[];
extern char D_800C5F2C[];
extern char D_800C5F48[];
extern char D_800C5F4C[];
extern char D_800D4798;
extern char D_800CB1C0;
extern Disp28 *D_800C886C;

extern "C" {
int sprintf(char *buf, const char *fmt, ...);
void free(void *p);
int VSync(int mode);
void func_80044F34(Game28 *g);
void func_80050CA4(void *p);
int func_8004ADB0(void);
int func_8004AFBC(void);
void func_8004B4B0(void);
void func_8004BA04(int a);
void func_8006B018(void *p, int f);
void func_8006CA50(void);
void func_8006FC70(void *p);
void func_8006FCAC(void *p, int f);
void func_80069ACC(void *p);
void *func_80078FC4(void *a, int b);
void func_80079648(void *a, int b, int c);
void func_8008A06C(Snd28 *s);
void func_8008A0C0(Snd28 *s, int f);
void func_8008A1D0(Snd28 *s);
void func_800963BC(void);
void func_800A67E8(int a);
void func_8004970C(Game28 *g);
void func_800499B8(Game28 *g);
char *func_800499DC(int i);
void func_80049A24(void);
void func_80049AE8(void);
char *func_80049B9C(int i, int x, int f);
int func_8004AACC(Buf28 *b);
int func_8004AB0C(void);
void func_8004AEDC(void);
void func_8004B480(void);
}

void func_8004970C(Game28 *g) {
    int i;

    func_80079648(func_80078FC4(&D_800CBC94, g->m_18), 0, 0);
    VSync(0);
    func_80069ACC(g->m_9C);
    VSync(0);
    for (i = 1; i >= 0; i--) {
        if (g->m_310[i]) {
            func_8006B018(g->m_310[i], 3);
            g->m_310[i] = 0;
        }
    }
    func_80044F34(g);
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_28", func_800497AC);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_28", func_800498E4);

void func_800499B8(Game28 *g) {
    func_80050CA4(g->m_378);
}

char *func_800499DC(int i) {
    sprintf(&D_800D4798, D_800C5E3C, *(char **)((u8 *)&D_800C9E94 + (i << 2)), D_800C5E2C);
    return &D_800D4798;
}

/* The static objects destroyed, the last time. */
void func_80049A24(void) {
    if (--D_800CAFA8 == 0) {
        Snd28 *b = (Snd28 *)&D_800CAFB8;

        if (b) {
            Snd28 *p = (Snd28 *)&D_800CB0A0;

            while (p != b) {
                p--;
                func_8008A0C0(p, 2);
            }
        }
    }
    if (--D_800CAFAC == 0) {
        func_8006FCAC(&D_800CB0A0, 2);
    }
    if (--D_800CB1BC == 0) {
        func_8006FCAC(&D_800CAE90, 2);
    }
}

/* The static objects constructed, the first time. */
void func_80049AE8(void) {
    if (++D_800CB1BC == 1) {
        func_8006FC70(&D_800CAE90);
    }
    if (++D_800CAFAC == 1) {
        func_8006FC70(&D_800CB0A0);
    }
    if (++D_800CAFA8 == 1) {
        Snd28 *p = (Snd28 *)&D_800CAFB8;
        int i;

        for (i = 1; i != -1; i--) {
            func_8008A06C(p);
            p++;
        }
    }
}

#ifdef NON_MATCHING
// Registers and the load order of the arguments; D_800C5E2C read without $gp here
char *func_80049B9C(int i, int x, int f) {
    sprintf(&D_800CB1C0, D_800C5F2C, *(char **)((u8 *)&D_800C9E94 + (i << 2)), D_800C5E2C_w[0],
            f == 1 ? D_800C5F48 : D_800C5F4C, 0x73);
    return &D_800CB1C0;
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_28", func_80049B9C);
#endif

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_28", func_80049C14);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_28", func_8004A774);

int func_8004AACC(Buf28 *b) {
    func_800A67E8(0);
    free(b->m_00);
    func_8006CA50();
    return 1;
}

#ifdef NON_MATCHING
// The virtual call's registers: the original loads the function into $v0, its delta into $a0
int func_8004AB0C(void) {
    Disp28 *d;

    func_8008A1D0((Snd28 *)&D_800CAFB8);
    func_8008A1D0((Snd28 *)&D_800CB02C);
    func_8004BA04(0);
    func_800963BC();
    d = D_800C886C;
    d->m_68->m_6C((u8 *)d + d->m_68->m_68);
    return 1;
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_28", func_8004AB0C);
#endif

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_28", func_8004AB7C);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_28", func_8004AC78);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_28", func_8004ADB0);

void func_8004AEDC(void) {
    if (func_8004ADB0()) {
        func_8004B480();
    }
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_28", func_8004AF0C);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_28", func_8004AFBC);

void func_8004B480(void) {
    if (func_8004AFBC()) {
        func_8004B4B0();
    }
}
