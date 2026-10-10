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
    u8 m_01, m_02;
    s8 m_03; // its id
    int m_04, m_08;
    VtEntry *m_vt; // 0x0C
    int m_10, m_14;
    u8 m_18[0x10];
    int m_28, m_2C;
    u8 m_30[4];
    short m_34, m_36;
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
    short m_00, m_02;
    void *m_04;
    void *m_08;
    void *m_0C;
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
    int m_04;
    u8 m_08[4];
    u8 m_0C[0xC];
    int m_18;
};
// A list of sounds
struct Cnt44 {
    Snd44 **m_items;
    int m_n;
    int m_08; // the first free one
};

// Scales for a sound's position
struct Pos44 {
    u8 m_00[0x18];
    int m_18;
    u8 m_1C[4];
    int m_20;
    u8 m_24[0xC];
    int m_30, m_34;
};

struct Flags44 {
    int m_00;
    int m_04;
};

extern VtEntry D_800C7724[], D_800C76DC[], D_800C769C[];
extern int D_800CB480;
extern int D_800D11C0[];
void __builtin_delete(void *p);
void __builtin_vec_delete(void *p);
void func_80097E4C(int a, int x, int y, int z);
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
extern int D_800D11B0[], D_800D11B8[], D_800D11C8[];
extern Flags44 *D_800CAE80;
void func_800B031C(int a, int b);
void *__builtin_vec_new(unsigned int n);
void *memset(void *p, int c, unsigned int n);
#define VCALL1(o, i, a) \
    (((int (*)(void *, int))(o)->m_vt[i].m_func)((char *)(o) + (o)->m_vt[i].m_delta, a))

int func_8006AC5C(Cnt44 *c, int id);
void func_80069ACC(void);
void func_8006A4D8(Four44 *t);
int *func_80069A28(int *p);
int func_8006AD00(Cnt44 *c);
void func_80069FB8(Snd44 *o, Pos44 *x);
int func_8006A1B4(Snd44 *o);
void func_8006A914(Cnt44 *c, int n);
void func_8006B330(void *x, Ref44 *r, int a);
void func_8006ABD4(Cnt44 *c, int id);
void func_8006B098(Arr44 *p, int n);
extern int D_800D60EC; // the frame
extern u8 D_800C885C, D_800C885D;
extern int D_800C8860;
extern int D_800CC030[];
int func_80077BE4(int a, int b, int c, int d);

void func_8006A534(Four44 *t, int n, short m);
int func_8006A994(Cnt44 *c, int a, Snd44 *s, short b);
int func_8006A848(SndB44 *o);
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_44", func_800692EC);

void func_8006973C(int a, short *v) {
    func_80097E4C(a, v[0], v[1], v[2]);
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_44", func_8006976C);

int *func_80069A28(int *p) {
    int i;

    D_800D11C8[0] = 0;
    for (i = 0; i < 2; i++) {
        D_800D11B8[i] = 1;
    }
    D_800D11B0[0] = 0;
    func_80069A88(p);
    return p;
}

void func_80069A88(int *p) {
    int i;

    for (i = 0; i < 2; i++) {
        D_800D11C0[i] = 0;
        p[i] = 0x4B;
        p[i + 2] = 6;
    }
}

void func_80069ACC(void) {
    int i;

    D_800D11B0[0] = 0;
    for (i = 0; i < 2; i++) {
        D_800D11B8[i] = 0;
        func_800B031C(i, 0);
    }
}

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

#ifdef NON_MATCHING
/* The scales read first as in the original; the registers differ (19 off) */
/* The sound's position on the screen, scaled when it's far. */
void func_80069FB8(Snd44 *o, Pos44 *x) {
    int a = o->m_10;
    int b = o->m_14;
    int sa = x->m_30;
    int sb = x->m_34;
    int ob = x->m_20;
    int oa = x->m_18;

    if ((u32)(a + 0x1FF) >= 0x3FF) {
        a = ((a >> 12) * sa) >> 12;
    }
    if ((u32)(b + 0x1FF) >= 0x3FF) {
        b = ((b >> 12) * sb) >> 12;
    }
    o->m_34 = a + oa;
    o->m_36 = b + ob;
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_44", func_80069FB8);
#endif

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_44", func_8006A028);

void func_8006A0D0(void) {
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_44", func_8006A0D8);

#ifdef NON_MATCHING
/* The sound in $a3, not $a2, in the original (8 off) */
int func_8006A1B4(Snd44 *o) {
    if (o->m_44 & D_800CAE80->m_04) {
        o->m_38 &= 0xFFFFFF;
        VCALLV(o, 7);
        return 1;
    }
    return 0;
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_44", func_8006A1B4);
#endif

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

void func_8006A4D8(Four44 *t) {
    t->m_00 = 0;
    t->m_02 = 0;
    if (t->m_04) {
        __builtin_vec_delete(t->m_04);
        t->m_04 = 0;
    }
    if (t->m_08) {
        __builtin_vec_delete(t->m_08);
        t->m_08 = 0;
    }
    t->m_0C = 0;
}

void func_8006A534(Four44 *t, int n, short m) {
    SndA44 *a;
    SndA44 *q;
    int i;
    short k = n;

    t->m_00 = n;
    t->m_02 = m;
    a = (SndA44 *)__builtin_vec_new(k * sizeof(SndA44));
    q = a;
    i = k - 1;
    if (i >= 0) {
        do {
            func_8006A258(q);
            q++;
        } while (--i != -1);
    }
    t->m_04 = a;
    t->m_0C = t->m_08 = __builtin_vec_new(t->m_02);
}

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

#ifdef NON_MATCHING
/* Two loads (m_38 and m_48) in each other's registers (4 off) */
int func_8006A848(SndB44 *o) {
    int r = 0;

    if (func_8006A1B4(&o->m_base)) {
        D_800C885C = o->m_base.m_40;
        D_800C885D = o->m_base.m_42;
        D_800C8860 = o->m_base.m_38;
        r = func_80077BE4(D_800CC030[o->m_48], o->m_base.m_3C, o->m_base.m_34, o->m_base.m_36);
        if (!r) {
            VCALLV(&o->m_base, 5);
        }
    }
    return r;
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_44", func_8006A848);
#endif

Three44 *func_8006A8FC(Three44 *p) {
    p->m_00 = 0;
    p->m_04 = 0;
    p->m_08 = -1;
    return p;
}

void func_8006A914(Cnt44 *c, int n) {
    if (n > 0) {
        if (n > 16) {
            n = 16;
        }
        c->m_items = (Snd44 **)__builtin_vec_new(n * 4);
        c->m_n = n;
        memset(c->m_items, 0, n * 4);
        func_8006ACB0(c);
        c->m_08 = func_8006AD00(c);
    }
}

/* s put in the first free place, with its kind and id; its index, or -1. */
int func_8006A994(Cnt44 *c, int a, Snd44 *s, short b) {
    int r = -1;

    if (c->m_08 != -1 && s) {
        r = c->m_08;
        c->m_items[r] = s;
        s->m_08 = D_800D60EC;
        s->m_02 = a;
        s->m_03 = b;
        VCALLV(s, 4);
        c->m_08 = func_8006AD00(c);
    }
    return r;
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_44", func_8006AA30);

/* The sound at i stopped and its place freed. */
void func_8006AB3C(Cnt44 *c, int i) {
    if (i >= 0 && i < c->m_n) {
        Snd44 *s = c->m_items[i];

        if (s) {
            VCALLV(s, 5);
        }
        c->m_items[i] = 0;
        c->m_08 = i;
    }
}

/* The sounds with this id. */
void func_8006ABD4(Cnt44 *c, int id) {
    int i = c->m_n - 1;
    Snd44 **p = &c->m_items[i];

    if (i > 0) {
        do {
            if (*p && (*p)->m_03 == id) {
                func_8006AB3C(c, i);
            }
            p--;
        } while (--i >= 0);
    }
}

/* A sound with this id in the list. */
int func_8006AC5C(Cnt44 *c, int id) {
    int i = c->m_n - 1;
    Snd44 **p = &c->m_items[i];

    if (i > 0) {
        do {
            if (*p && (*p)->m_03 == id) {
                return 1;
            }
            p--;
        } while (--i >= 0);
    }
    return 0;
}

/* Every item, from the last; none when there's only one (i > 0 is tested
 * before a loop that runs down to 0). */
void func_8006ACB0(Cnt44 *c) {
    int i = c->m_n - 1;

    if (i > 0) {
        do {
            func_8006AB3C(c, i);
        } while (--i >= 0);
    }
}

#ifdef NON_MATCHING
/* The original tests the first item before its loop (21 off) */
/* The first free place in the list, or -1. */
int func_8006AD00(Cnt44 *c) {
    int i;

    if (c->m_items) {
        for (i = 0; i < c->m_n; i++) {
            if (!c->m_items[i]) {
                return i;
            }
        }
    }
    return -1;
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_44", func_8006AD00);
#endif

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

void func_8006B098(Arr44 *p, int n) {
    Nine44 *a;
    Nine44 *q;
    int i;

    if (n > 16) {
        n = 16;
    }
    p->m_00 = n;
    a = (Nine44 *)__builtin_vec_new(n * sizeof(Nine44));
    q = a;
    i = n - 1;
    if (i >= 0) {
        do {
            func_8006AF80(q);
            q++;
        } while (--i != -1);
    }
    p->m_14 = a;
}

void func_8006B128(Two44 *p, int a) {
    p->m_04 = a;
    p->m_10 = 0;
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_44", func_8006B134);

void func_8006B330(void *x, Ref44 *r, int a) {
    VCALL1(r->m_00, 2, a);
    if (r->m_00->m_2C == r->m_00->m_28) {
        r->m_00->m_08 = a;
        r->m_00->m_04 = r->m_18;
        r->m_04 = 2;
    }
}
