#include "common.h"

/* (docs/matching/issue-45-langimg-chunk44.md) */

extern "C" {
// A GCC 2 vtable entry
struct VtEntry {
    short m_delta;
    short m_index;
    int (*m_func)(void *self);
};
#define VCALLV(o, i) (((void (*)(void *))(o)->m_vt[i].m_func)((char *)(o) + (o)->m_vt[i].m_delta))
#define VCALL2(o, i, a, b) \
    (((int (*)(void *, int, int))(o)->m_vt[i].m_func)((char *)(o) + (o)->m_vt[i].m_delta, a, b))

// A sound object (vtable D_800C7724)
struct Snd44 {
    u8 m_type;
    u8 m_01[0xB];
    VtEntry *m_vt; // 0x0C
    u8 m_10[0x18];
    int m_28, m_2C;
    u8 m_30[8];
    int m_38, m_3C;
    short m_40, m_42;
    int m_44;
};

// One subclass (vtable D_800C76DC)
struct SndA44 {
    Snd44 m_base;
    short m_48, m_4A;
    int m_4C;
};

// Another (vtable D_800C769C)
struct SndB44 {
    Snd44 m_base;
    int m_48;
};

// Containers
struct Three44 {
    int m_00, m_04, m_08;
};
struct Nine44 {
    int m_00, m_04, m_08, m_0C, m_10, m_14, m_18, m_1C, m_20;
};
struct Four44 {
    int m_00, m_04, m_08, m_0C;
};
struct Arr44 {
    int m_00, m_04, m_08, m_0C, m_10;
    void *m_14;
    int m_18, m_1C;
};
struct Two44 {
    u8 m_00[4];
    int m_04;
    u8 m_08[8];
    int m_10;
};
struct Ref44 {
    Snd44 *m_00;
    u8 m_04[8];
    u8 m_0C[4];
};
struct Cnt44 {
    u8 m_00[4];
    int m_n;
};

extern VtEntry D_800C7724[], D_800C76DC[], D_800C769C[];
extern int D_800CB480;
extern int D_800D11C0[];
void __builtin_delete(void *p);
void __builtin_vec_delete(void *p);
void func_80097E4C(int a, int x, int y, int z);
void func_8006A4D8(Four44 *t);
void func_8006A6B0(int *a, int b);
void func_8006AB3C(Cnt44 *c, int i);

void func_8006973C(int a, short *v);
void func_80069A88(int *p);
Snd44 *func_80069F50(Snd44 *o);
void func_80069F84(Snd44 *o);
void func_8006A0D0(void);
void func_8006A224(Snd44 *o);
SndA44 *func_8006A258(SndA44 *o);
void func_8006A294(SndA44 *o);
void func_8006A3E4(Snd44 *o, int a);
void func_8006A420(SndA44 *o);
Four44 *func_8006A460(Four44 *t);
void func_8006A494(Four44 *t, int flags);
SndB44 *func_8006A7D8(SndB44 *o);
void func_8006A814(SndB44 *o);
Three44 *func_8006A8FC(Three44 *p);
void func_8006ACB0(Cnt44 *c);
Nine44 *func_8006AF80(Nine44 *p);
void func_8006AFA4(Ref44 *r, int a);
Arr44 *func_8006AFEC(Arr44 *p);
void func_8006B018(Arr44 *p, int flags);
void func_8006B05C(Arr44 *p);
void func_8006B128(Two44 *p, int a);
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_44", func_800692EC);

void func_8006973C(int a, short *v) {
    func_80097E4C(a, v[0], v[1], v[2]);
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_44", func_8006976C);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_44", func_80069A28);

void func_80069A88(int *p) {
    int i;

    for (i = 0; i < 2; i++) {
        D_800D11C0[i] = 0;
        p[i] = 0x4B;
        p[i + 2] = 6;
    }
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_44", func_80069ACC);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_44", func_80069B24);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_44", func_80069C28);

Snd44 *func_80069F50(Snd44 *o) {
    o->m_vt = D_800C7724;
    func_80069F84(o);
    return o;
}

void func_80069F84(Snd44 *o) {
    o->m_type = 1;
    o->m_38 = 0xFFFF;
    o->m_3C = 0;
    o->m_40 = 8;
    o->m_42 = 0;
    o->m_44 = -1;
    o->m_28 = 0;
    o->m_2C = 0;
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_44", func_80069FB8);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_44", func_8006A028);

void func_8006A0D0(void) {
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_44", func_8006A0D8);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_44", func_8006A1B4);

void func_8006A224(Snd44 *o) {
    VCALLV(o, 1);
}

SndA44 *func_8006A258(SndA44 *o) {
    func_80069F50(&o->m_base);
    o->m_base.m_vt = D_800C76DC;
    func_8006A294(o);
    return o;
}

void func_8006A294(SndA44 *o) {
    func_80069F84(&o->m_base);
    o->m_base.m_type = 1;
    o->m_4A = 0x12;
    o->m_4C = 0;
    o->m_48 = -1;
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_44", func_8006A2D4);

void func_8006A3E4(Snd44 *o, int a) {
    VCALL2(o, 8, a, 0);
}

void func_8006A420(SndA44 *o) {
    func_8006A6B0(&D_800CB480, o->m_48);
    o->m_4C = 0;
    o->m_48 = -1;
}

Four44 *func_8006A460(Four44 *t) {
    t->m_04 = 0;
    t->m_08 = 0;
    t->m_0C = 0;
    func_8006A4D8(t);
    return t;
}

void func_8006A494(Four44 *t, int flags) {
    func_8006A4D8(t);
    if (flags & 1) {
        __builtin_delete(t);
    }
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_44", func_8006A4D8);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_44", func_8006A534);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_44", func_8006A5D0);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_44", func_8006A6B0);

SndB44 *func_8006A7D8(SndB44 *o) {
    func_80069F50(&o->m_base);
    o->m_base.m_vt = D_800C769C;
    func_8006A814(o);
    return o;
}

void func_8006A814(SndB44 *o) {
    func_80069F84(&o->m_base);
    o->m_base.m_type = 2;
    o->m_48 = -1;
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_44", func_8006A848);

Three44 *func_8006A8FC(Three44 *p) {
    p->m_00 = 0;
    p->m_04 = 0;
    p->m_08 = -1;
    return p;
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_44", func_8006A914);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_44", func_8006A994);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_44", func_8006AA30);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_44", func_8006AB3C);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_44", func_8006ABD4);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_44", func_8006AC5C);

/* Every item but the first, from the last (the first only when there are
 * two or more: i > 0 is tested before the loop down to 0). */
void func_8006ACB0(Cnt44 *c) {
    int i = c->m_n - 1;

    if (i > 0) {
        do {
            func_8006AB3C(c, i);
        } while (--i >= 0);
    }
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_44", func_8006AD00);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_44", func_8006AD60);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_44", func_8006AE54);

Nine44 *func_8006AF80(Nine44 *p) {
    p->m_00 = 0;
    p->m_04 = 0;
    p->m_14 = -1;
    p->m_1C = 0;
    p->m_20 = 0;
    p->m_18 = 0;
    return p;
}

void func_8006AFA4(Ref44 *r, int a) {
    VCALL2(r->m_00, 8, a, (int)r->m_0C);
}

Arr44 *func_8006AFEC(Arr44 *p) {
    p->m_04 = -1;
    p->m_08 = 0;
    p->m_14 = 0;
    p->m_00 = 0;
    p->m_18 = 0;
    p->m_1C = 0;
    p->m_10 = 0;
    p->m_0C = 0;
    return p;
}

void func_8006B018(Arr44 *p, int flags) {
    func_8006B05C(p);
    if (flags & 1) {
        __builtin_delete(p);
    }
}

void func_8006B05C(Arr44 *p) {
    if (p->m_14) {
        __builtin_vec_delete(p->m_14);
        p->m_14 = 0;
    }
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_44", func_8006B098);

void func_8006B128(Two44 *p, int a) {
    p->m_04 = a;
    p->m_10 = 0;
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_44", func_8006B134);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_44", func_8006B330);
