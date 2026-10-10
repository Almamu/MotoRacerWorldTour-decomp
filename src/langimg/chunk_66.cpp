#include "common.h"

/* (docs/matching/issue-67-langimg-chunk66.md) */

extern "C" {
// An object whose settings mark it to be redone (m_38 cleared)
struct Obj66 {
    u8 m_00[0x10];
    int m_10, m_14; // its size
    u8 m_18[0x20];
    int m_38; // up to date
    u8 m_3C[0x14];
    int m_50, m_54, m_58, m_5C, m_60, m_64, m_68, m_6C, m_70;
    int m_74, m_78, m_7C, m_80, m_84, m_88, m_8C, m_90;
};

// A bit stream
struct Bits66 {
    int m_00, m_04; // the start
    int m_08, m_0C; // the position
    int m_10, m_14; // what's left: words and halfwords?
    int m_18, m_1C; // the size
    u8 m_20[4];
    short m_24;
    u8 m_26;
    u8 m_27;
};

// Two words cleared
struct Pair66 {
    int m_00, m_04;
};

int func_80095794(Obj66 *o, int a, int b);
int func_800957C0(Obj66 *o, int a, int b);
int func_800957D4(Obj66 *o, int a, int b);
int func_800957E8(Obj66 *o, int a, int b);
int func_800957FC(Obj66 *o, int a, int b);
int func_80095810(Obj66 *o, int a);
int func_80095820(Obj66 *o, int a);
int func_80095830(Obj66 *o, int a);
int func_80095840(Obj66 *o, int a);
int func_80095850(Obj66 *o, int a);
int func_80095860(Obj66 *o, int a);
int func_80095870(Obj66 *o, int a);
int func_80095880(Obj66 *o, int a);
int func_80095890(Obj66 *o, int a);
int func_800958D8(void);
void func_80096724(Bits66 *b);
int func_800968B0(Bits66 *b);
int func_80096900(Bits66 *b);
void func_80096978(Bits66 *b);
Pair66 *func_80096E7C(Pair66 *p);
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_66", func_800950B0);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_66", func_800952E0);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_66", func_800953A4);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_66", func_800955C4);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_66", func_80095684);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_66", func_8009574C);

/* The size set, if both are at least 2. */
int func_80095794(Obj66 *o, int a, int b) {
    int r = 0;

    if (a >= 2 && b >= 2) {
        r = 1;
        o->m_10 = a;
        o->m_14 = b;
    }
    return r;
}

int func_800957C0(Obj66 *o, int a, int b) {
    o->m_54 = a;
    o->m_74 = b;
    o->m_38 = 0;
    return 1;
}

int func_800957D4(Obj66 *o, int a, int b) {
    o->m_58 = a;
    o->m_78 = b;
    o->m_38 = 0;
    return 1;
}

int func_800957E8(Obj66 *o, int a, int b) {
    o->m_5C = a;
    o->m_7C = b;
    o->m_38 = 0;
    return 1;
}

int func_800957FC(Obj66 *o, int a, int b) {
    o->m_60 = a;
    o->m_80 = b;
    o->m_38 = 0;
    return 1;
}

int func_80095810(Obj66 *o, int a) {
    o->m_50 = a;
    o->m_38 = 0;
    return 1;
}

int func_80095820(Obj66 *o, int a) {
    o->m_64 = a;
    o->m_38 = 0;
    return 1;
}

int func_80095830(Obj66 *o, int a) {
    o->m_68 = a;
    o->m_38 = 0;
    return 1;
}

int func_80095840(Obj66 *o, int a) {
    o->m_6C = a;
    o->m_38 = 0;
    return 1;
}

int func_80095850(Obj66 *o, int a) {
    o->m_70 = a;
    o->m_38 = 0;
    return 1;
}

int func_80095860(Obj66 *o, int a) {
    o->m_84 = a;
    o->m_38 = 0;
    return 1;
}

int func_80095870(Obj66 *o, int a) {
    o->m_88 = a;
    o->m_38 = 0;
    return 1;
}

int func_80095880(Obj66 *o, int a) {
    o->m_8C = a;
    o->m_38 = 0;
    return 1;
}

int func_80095890(Obj66 *o, int a) {
    o->m_90 = a;
    o->m_38 = 0;
    return 1;
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_66", func_800958A0);

int func_800958D8(void) {
    return 1;
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_66", func_800958E0);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_66", func_8009593C);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_66", func_80095F84);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_66", func_800960D0);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_66", func_800961A0);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_66", func_800961EC);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_66", func_80096240);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_66", func_80096290);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_66", func_800963BC);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_66", func_800963E8);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_66", func_80096508);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_66", func_80096538);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_66", func_8009662C);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_66", func_800966DC);

/* Back to the start. */
void func_80096724(Bits66 *b) {
    b->m_27 = 0;
    b->m_08 = b->m_00;
    b->m_0C = b->m_04;
    b->m_10 = b->m_18;
    b->m_14 = b->m_1C;
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_66", func_8009674C);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_66", func_8009682C);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_66", func_80096884);

/* At the end. */
int func_800968B0(Bits66 *b) {
    int r = 0;

    if (!b->m_10) {
        r = !b->m_14;
    }
    return r;
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_66", func_800968D4);

int func_80096900(Bits66 *b) {
    return b->m_10 * 4 + b->m_14 * 2;
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_66", func_80096918);

void func_80096978(Bits66 *b) {
    b->m_24 = 0;
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_66", func_80096980);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_66", func_800969EC);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_66", func_80096A64);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_66", func_80096ACC);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_66", func_80096B74);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_66", func_80096C14);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_66", func_80096CA8);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_66", func_80096D84);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_66", func_80096E28);

Pair66 *func_80096E7C(Pair66 *p) {
    p->m_00 = 0;
    p->m_04 = 0;
    return p;
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_66", func_80096E8C);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_66", func_80096EC8);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_66", func_80096F8C);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_66", func_8009707C);
