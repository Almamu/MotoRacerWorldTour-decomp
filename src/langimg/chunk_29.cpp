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
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_29", func_8004B4B0);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_29", func_8004B844);

int func_8004B900(int a, int b) {
    int r;

    func_80045168(&D_800CABC0, 0, -1, 1, a);
    func_80045168(&D_800CABC0, 0, -1, 1, b);
    r = func_8004B480();
    D_800D5FCC = 1;
    return r;
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_29", func_8004B96C);

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

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_29", func_8004C38C);

void func_8004C3FC(Tab29 *t, int i, int a, int b, int c) {
    t->m_400[i] = a;
    t->m_408[i] = b;
    t->m_410[i] = c;
}

void func_8004C420(Tab29 *t, int i, int v) {
    t->m_3F8[i] = v;
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_29", func_8004C430);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_29", func_8004C4E4);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_29", func_8004C764);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_29", func_8004C7EC);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_29", func_8004C870);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_29", func_8004C9D0);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_29", func_8004CB5C);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_29", func_8004CD5C);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_29", func_8004CEFC);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_29", func_8004D068);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_29", func_8004D300);
