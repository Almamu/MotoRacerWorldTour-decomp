#include "common.h"

/* A menu page's object and its callbacks (docs/matching/issue-71-langimg-chunk70.md) */

extern "C" {
struct Lbl70 {
    u8 m_00[8];
    short m_08;
};
struct Flag70 {
    u8 m_00[4];
    int m_04;
};
// A choice's two halfwords
struct Pair70 {
    u16 m_00;
    u16 m_02;
};
struct Obj70 {
    u8 m_00[0x18];
    Lbl70 *m_18;
    u8 m_1C[8];
    Flag70 *m_24;
    u8 m_28[8];
    int *m_30;
    u8 *m_34;
    u8 m_38[0xC];
    int m_44;
    u8 m_48[8];
    Pair70 *m_50;
    int m_54;
    u8 m_58[4];
    Lbl70 *m_5C;
    u8 m_60[0xF0];
    int m_150;
};
struct Hold70 {
    u8 m_00[0x60];
    Obj70 *m_60;
};
struct Sub70 {
    u8 m_00[8];
    int m_08;
};
struct Box70 {
    u8 m_00[8];
    Sub70 m_08;
};
struct Menu70 {
    u8 m_00[0xA80];
    Hold70 *m_A80;
    u8 m_A84[0x20];
    Box70 *m_AA4;
};

void __builtin_delete(void *p);
void __builtin_vec_delete(void *p);
void func_8003EC90(Menu70 *m, int key, int b, void (*f)());
void func_8009CF14();
void func_800A6788(int a, int b);
void func_8003E5B0(int a);
void func_800A4244(void);
void func_800A41BC(void);
void func_800A4608(int a);
void func_8009E0E8(Obj70 *o);
void func_8009E72C(Menu70 *m, Hold70 *h);
void func_8009D9CC(Obj70 *o);
void func_8009E360(Obj70 *o);
extern int D_800D5F0C;
extern void *D_800C935C;
extern void *D_800C9360;

void func_8009D25C(Menu70 *m);
void func_8009D288(void);
void func_8009D2C8(Obj70 *o);
void func_8009D2D4(Obj70 *o);
void func_8009D3B8(void);
void func_8009D3E4(void);
void func_8009D7A0(Obj70 *o, int i);
void func_8009D7BC(Obj70 *o);
void func_8009D804(Obj70 *o);
void func_8009DF20(Menu70 *m);
void func_8009DF58(Menu70 *m);
u8 *func_8009E0A0(Obj70 *o);
void func_8009E0AC(Obj70 *o);
void func_8009E164(Obj70 *o);
void func_8009E2E0(Obj70 *o);
void func_8009E2FC(Obj70 *o);
void func_8009E318(Obj70 *o, int i);
void func_8009E724(void);
void func_8009E930(Menu70 *m);
void func_8009EAD0(Menu70 *m, int a);
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_70", func_8009D0E4);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_70", func_8009D1F8);

void func_8009D25C(Menu70 *m) {
    func_8003EC90(m, 0x15, 0, func_8009CF14);
}

void func_8009D288(void) {
    int k;

    if (D_800D5F0C == 1 || D_800D5F0C == 4) {
        k = 0x13;
    } else {
        k = 0x12;
    }
    func_800A6788(k, 0);
}

void func_8009D2C8(Obj70 *o) {
    o->m_150 = 0x85;
}

void func_8009D2D4(Obj70 *o) {
    o->m_150 = 0x84;
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_70", func_8009D2E0);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_70", func_8009D350);

void func_8009D3B8(void) {
    if (D_800C935C) {
        __builtin_delete(D_800C935C);
        D_800C935C = 0;
    }
}

void func_8009D3E4(void) {
    if (D_800C9360) {
        __builtin_delete(D_800C9360);
        D_800C9360 = 0;
    }
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_70", func_8009D410);

void func_8009D7A0(Obj70 *o, int i) {
    o->m_5C->m_08 = o->m_50[i].m_00;
}

void func_8009D7BC(Obj70 *o) {
    func_800A41BC();
    func_800A4608(1);
    func_8009E0E8(o);
    func_8009D7A0(o, 0);
    o->m_54 = 1;
}

void func_8009D804(Obj70 *o) {
    func_800A4244();
    func_8009E0AC(o);
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_70", func_8009D830);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_70", func_8009D9CC);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_70", func_8009DDA8);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_70", func_8009DE0C);

void func_8009DF20(Menu70 *m) {
    if (m->m_A80->m_60) {
        func_8009D9CC(m->m_A80->m_60);
    }
}

void func_8009DF58(Menu70 *m) {
    if (m->m_A80->m_60) {
        func_8009E360(m->m_A80->m_60);
    }
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_70", func_8009DF90);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_70", func_8009E01C);

u8 *func_8009E0A0(Obj70 *o) {
    return o->m_34 + 0x400;
}

void func_8009E0AC(Obj70 *o) {
    if (o->m_34) {
        __builtin_vec_delete(o->m_34);
        o->m_34 = 0;
    }
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_70", func_8009E0E8);

void func_8009E164(Obj70 *o) {
    *o->m_30 &= 0xFFF0FFFF;
    func_8003E5B0(o->m_44);
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_70", func_8009E1A0);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_70", func_8009E24C);

void func_8009E2E0(Obj70 *o) {
    o->m_24->m_04 &= ~2;
}

void func_8009E2FC(Obj70 *o) {
    o->m_24->m_04 |= 2;
}

void func_8009E318(Obj70 *o, int i) {
    func_8009E2FC(o);
    o->m_18->m_08 = o->m_50[i].m_00;
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_70", func_8009E360);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_70", func_8009E3C0);

void func_8009E724(void) {
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_70", func_8009E72C);

void func_8009E930(Menu70 *m) {
    func_8009E72C(m, m->m_A80);
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_70", func_8009E954);

void func_8009EAD0(Menu70 *m, int a) {
    Sub70 *p = &m->m_AA4->m_08;

    if (!a) {
        p->m_08 = 1;
    }
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_70", func_8009EAEC);
