#include "common.h"

/* Classes on Cobjet and CName, their globals (docs/matching/issue-30-langimg-chunk29.md) */

extern "C" {
struct Tab29 {
    u8 m_00[0x3F8];
    int m_3F8[2];
    int m_400[2];
    int m_408[2];
    int m_410[2];
};
// An object on Cobjet: its vtable at 0x50
struct Obj29 {
    u8 m_00[0x50];
    void *m_50;
};
// An object on CName: its flags at 4, its vtable at 8
struct Named29 {
    u8 m_00[4];
    int m_04;
    void *m_08;
};
// A global object's vtable, at 0x10
struct Glob29 {
    int m_00[4];
    void *m_10;
};
extern int D_800CB2D0; // how many times constructed
extern int D_800CB2D8, D_800CB2DC, D_800CB2E0, D_800CB2E4;
extern int D_800C6488, D_800C64B0; // vtables
extern u8 D_800C64D8[];
extern int D_800C6508; // a vtable
extern int D_800CABC0;
extern int D_800D5FCC;
void CobjetDtor29(void *o, int f) asm("_._6Cobjet");
void CNameDtor29(void *o, int f) asm("_._5CName");
int func_80045168(void *a, int b, int c, int d, ...);
int func_8004B480(void);
int func_8004B900(int a, int b);
void func_8004BEE0(void);
int func_8004C0E4(void);
int func_8004C0EC(void);
int func_8004C0F4(void);
int func_8004C0FC(void);
void func_8004C104(Obj29 *o, int f);
void func_8004C12C(Obj29 *o, int f);
void func_8004C14C(Named29 *o, int f);
void func_8004C184(Named29 *o, int f);
void func_8004C3FC(Tab29 *t, int i, int a, int b, int c);
void func_8004C420(Tab29 *t, int i, int v);
// A player's state
struct Ply29 {
    u8 m_00[0x154];
    int m_154; // a choice, 0 to 5
};
struct Bk29 {
    u8 m_00[0x188];
    u16 m_188;
    u8 m_18A[0x3DE];
};
struct Rc29 {
    u8 m_00[0x10];
    struct Bk29 *m_10;
    u8 m_14[0x2D4];
    struct Bk29 m_2E8[5];
};
// The game: the players' views
struct Game29 {
    u8 m_00[0x10];
    int m_10;
    u8 m_14[4];
    int m_18;
    u8 m_1C[0x2E8];
    int m_304;
    u8 m_308[4];
    int m_30C;
    u8 m_310[0x68];
    struct Rc29 *m_378;
    u8 m_37C[0xC0];
    Ply29 *m_43C[2];
    u8 m_444[0x2C];
    s8 m_470[2];
    u8 m_472[0x16];
    int m_488[2];
};
extern int *D_800CB2F8;
extern char D_800C6444[]; // "Data\\Final\\"
extern char D_800C6450[]; // ".bs"
extern char *D_800C9E94;  // a table of names
extern char D_800D4798;
extern int D_800CBC94;
extern int D_800CB2C0;
char *strcat(char *d, const char *s);
int func_80078FC4(void *a, int b);
void func_8004F0C4(Game29 *g, int i);
void func_80078280(Ply29 *p);
void func_8004C4E4(Game29 *g, int i, int c);
void func_8004C764(Game29 *g, int i);
void func_8004C38C(Game29 *g);
void func_8004C7EC(Game29 *g);
char *func_8004B96C(int k);
void func_8004C430(Game29 *g, int i);
int func_8004B844(int a, int b);
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_29", func_8004B4B0);

int func_8004B844(int a, int b) {
    func_80045168(&D_800CABC0, 0, -1, 1, a);
    func_80045168(&D_800CABC0, 0, -1, 1, b);
    func_80045168(&D_800CABC0, 1, -1, 8, 0);
    func_80045168(&D_800CABC0, 2, -1, 2, 0x11, 2, &D_800CB2C0, 7);
    D_800D5FCC = 0;
    return 1;
}

int func_8004B900(int a, int b) {
    int r;

    func_80045168(&D_800CABC0, 0, -1, 1, a);
    func_80045168(&D_800CABC0, 0, -1, 1, b);
    r = func_8004B480();
    D_800D5FCC = 1;
    return r;
}

/* "Data\\Final\\", a name from the table, ".bs". */
char *func_8004B96C(int k) {
    char *b = &D_800D4798;
    char *n = (&D_800C9E94)[k];

    memcpy(&D_800D4798, D_800C6444, 12);
    strcat(b, n);
    strcat(b, D_800C6450);
    return b;
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_29", func_8004BA04);

/* A global object constructed once: its base's vtable, its fields, its own vtable. */
void func_8004BEE0(void) {
    if (++D_800CB2D0 == 1) {
        Glob29 *g = (Glob29 *)&D_800CB2D8;

        g->m_10 = &D_800C64B0;
        D_800CB2D8 = 0;
        D_800CB2DC = 0;
        D_800CB2E0 = 0;
        D_800CB2E4 = 0;
        g->m_10 = &D_800C6488;
    }
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_29", func_8004BF30);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_29", func_8004C02C);

int func_8004C0E4(void) {
    return 1;
}

int func_8004C0EC(void) {
    return 1;
}

int func_8004C0F4(void) {
    return 1;
}

int func_8004C0FC(void) {
    return 1;
}

void func_8004C104(Obj29 *o, int f) {
    o->m_50 = D_800C64D8;
    CobjetDtor29(o, f);
}

void func_8004C12C(Obj29 *o, int f) {
    CobjetDtor29(o, f);
}

void func_8004C14C(Named29 *o, int f) {
    o->m_08 = &D_800C6508;
    o->m_04 &= ~0x7FF;
    CNameDtor29(o, f);
}

void func_8004C184(Named29 *o, int f) {
    o->m_08 = &D_800C6508;
    o->m_04 &= ~0x7FF;
    CNameDtor29(o, f);
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_29", func_8004C1BC);

void func_8004C38C(Game29 *g) {
    int i;

    for (i = 1; i >= 0; i--) {
        func_8004C764(g, i);
    }
    if (g->m_30C != -1 && !g->m_304) {
        func_8004C4E4(g, 0, g->m_30C);
        g->m_30C = -1;
    }
}

void func_8004C3FC(Tab29 *t, int i, int a, int b, int c) {
    t->m_400[i] = a;
    t->m_408[i] = b;
    t->m_410[i] = c;
}

void func_8004C420(Tab29 *t, int i, int v) {
    t->m_3F8[i] = v;
}

/* The player's choice stepped back (from 0 to 5), unless their bike is busy. */
void func_8004C430(Game29 *g, int i) {
    if (g->m_10 == 0x10 && !g->m_304) {
        int k = g->m_470[i];
        Rc29 *r = g->m_378;
        Bk29 *b = 0;

        if (k >= 0) {
            b = &r->m_2E8[k];
        }
        if (!b->m_188) {
            Ply29 *p = g->m_43C[i];

            if (--p->m_154 < 0) {
                p->m_154 = 5;
            }
            func_8004C4E4(g, i, p->m_154);
        }
    }
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_29", func_8004C4E4);

void func_8004C764(Game29 *g, int i) {
    Ply29 *p = g->m_43C[i];

    func_80078280(p);
    func_8004C420((Tab29 *)g, i, D_800CB2F8[p->m_154]);
    func_8004C3FC((Tab29 *)g, i, *(int *)((u8 *)g->m_378->m_10 + 0x55C), 0, 0);
}

void func_8004C7EC(Game29 *g) {
    int i;

    if (func_80078FC4(&D_800CBC94, g->m_18)) {
        for (i = 0; i < 2; i++) {
            g->m_488[i] &= ~1;
            func_8004F0C4(g, i);
        }
    }
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_29", func_8004C870);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_29", func_8004C9D0);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_29", func_8004CB5C);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_29", func_8004CD5C);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_29", func_8004CEFC);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_29", func_8004D068);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_29", func_8004D300);
