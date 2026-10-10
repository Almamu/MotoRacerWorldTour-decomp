#include "common.h"
#include "psyq.h"
#include "langimg/cobjet.h"
#include "stdarg.h"

/* (docs/matching/issue-52-langimg-chunk51.md) */

extern "C" {
// A GCC 2 vtable entry
struct VtEntry {
    short m_delta;
    short m_index;
    int (*m_func)(void *self);
};

// An object with a part at 0x30
struct A51 {
    int m_00, m_04, m_08;
    int m_0C, m_10, m_14, m_18;
    int m_1C, m_20;
    int m_24;   // the buffer's size
    void *m_28; // the buffer
    int m_2C;   // its capacity
    u8 m_30[0x38];
    void *m_vt; // 0x68
};

// A subclass with more state
struct F51 {
    u8 m_00[8];
    int m_08;
    u8 m_0C[0x10];
    int m_1C;
    u8 m_20[0x48];
    VtEntry *m_vt; // 0x68
    u8 m_6C[0xE0];
    int m_14C, m_150, m_154, m_158, m_15C, m_160, m_164, m_168;
    u8 m_16C, m_16D, m_16E;
    u8 m_16F[5];
    int m_174;
    u8 m_178[4];
    int m_17C, m_180;
};

// Something with four halfwords at 0x0C
struct G51 {
    int m_00;
    struct F51 *m_04;
    int m_08;
    short m_0C, m_0E, m_10, m_12;
    int m_14, m_18, m_1C;
};

// An object with a vtable at 0x34
struct B51 {
    int m_00;
    u8 m_04[0x1C];
    int m_20;
    u8 m_24[0x10];
    void *m_vt; // 0x34
    int m_38, m_3C;
    void *m_40;
    u8 m_44[4];
    int m_48;
};

// An object with an animation channel at 0x160
struct C51 {
    u8 m_00[0x140];
    int m_140;
    u8 m_144[0xC];
    int m_150, m_154, m_158, m_15C;
    u8 m_160[0x1C];
    int m_17C, m_180, m_184, m_188, m_18C, m_190;
};

// Something with two matrices at 0xA0
struct M51 {
    u8 m_00[0xA0];
    MATRIX m_A0, m_C0;
};

// An updated object
struct U51 {
    u8 m_00[0x14];
    int m_14;
    u8 m_18[0x14];
    int m_2C, m_30;
    u8 m_34[4];
    int m_38;
};

struct D51 {
    u8 m_00[0x14];
    int m_14;
};

// A one-slot table
struct Slot51 {
    int m_a[1];
};

// Something with a pointer to a thing with a value at 4
struct Val51 {
    int m_00;
    int m_04;
};
struct Ref51 {
    Val51 *m_00;
};

extern int D_800CBC90;
extern Slot51 D_800CBC94;
extern char D_800C8824[];
void *__builtin_new(unsigned int n);
void __builtin_delete(void *p);
void func_80088FD4(void *p);
void func_80087EB0(void *p);
void func_80088A08(void *p, int a, int b);
void *func_80076588(void *p);
void *func_800774B8(void *p);
void func_80074510(void *p);
void *func_80074534(void *p);
void func_8006BB70(void *p);
void func_80078280(C51 *o);
void func_8006BB9C(void *c, int a);
int func_80074AC8(U51 *o);
int func_80076E20(U51 *o, int a, int *t);
int func_8007702C(U51 *o, int a, int *t);
void func_80098224(MATRIX *m, M51 *o);
void func_80098354(MATRIX *m, M51 *o);

int func_800773E8(U51 *o);
void func_800783A8(C51 *o, int *src, int *t1, int *t2, int i);
void func_800788D8(M51 *o);

void *func_80077490(void);
B51 *func_800774E4(B51 *o);
void func_80077520(B51 *o);
void *func_80077BA0(void);
void func_80077BC8(SVECTOR *d, Vector3 *s);
C51 *func_80078244(C51 *o);
int func_80078A90(A51 *o, int a, int b, int c, int d);
int func_80078AD0(A51 *o);
void func_80078B58(A51 *o);
int func_80078B78(void);
int func_80078B80(void);
int func_80078B88(void);
int func_80078B90(void);
int func_80078B98(void);
int func_80078C6C(A51 *o);
void func_80078CCC(A51 *o);
Slot51 *func_80078F10(Slot51 *t);
void func_80078F34(Slot51 *t, int flags);
int func_80078F5C(Slot51 *t, int x);
int func_80078F90(Slot51 *t, int x);
int func_80078FC4(Ref51 *r, int b);
extern int D_800C8870;
extern char D_800B77E0[], D_800C8884[];
void __builtin_vec_delete(void *p);
void *malloc(unsigned int n);
int func_800895A0(void *a, int b);
int func_80088F34(void *p);
void func_80079328(A51 *o);
void func_80087A58(void *p, int a, int b, int c, int e, int f, int g, int h, int i, va_list ap);
void func_800745AC(B51 *o, int flags);
int func_80078E00(G51 *g);
void func_80087A14(void *p, int a);
void func_800879D4(void *p);

void func_80079038(void);
int func_80078C28(A51 *o);
int func_80078B10(A51 *o);
void func_800790DC(A51 *o, int flags);
void func_80079124(F51 *o);
void func_80078C78(A51 *o, int a, int b, int c, int e, int f, int g, int h, int i, ...);
void func_80077544(B51 *o, int flags);
G51 *func_80078DA8(G51 *g, int a, int b, int c, int d, int e);
void func_80078A34(A51 *o, int flags);
A51 *func_800789C4(A51 *o);
int func_80078BA0(A51 *o, int n);
F51 *func_80079078(void *p);
Val51 *func_80078FE8(Ref51 *r, int b);
void func_80078FFC(void);
}

int func_800773E8(U51 *o) {
    int r = 0;

    if (func_80074AC8(o)) {
        int a = o->m_2C;
        int b = o->m_30;

        if (a || b) {
            int *t = D_800C8C68->m_items[o->m_38];

            if (!a) {
                a = b;
            }
            if (o->m_14 <= 0) {
                r = func_80076E20(o, a, t);
            } else {
                r = func_8007702C(o, a, t);
            }
        }
    }
    return r;
}

void *func_80077490(void) {
    return func_80076588(__builtin_new(0x18));
}

void *func_800774B8(void *p) {
    D51 *o = (D51 *)p;

    func_80074510(o);
    o->m_14 = 0;
    return o;
}

B51 *func_800774E4(B51 *o) {
    func_80074534(o);
    o->m_vt = D_800C8824;
    func_80077520(o);
    return o;
}

void func_80077520(B51 *o) {
    o->m_00 = 2;
    o->m_38 = -1;
    o->m_20 = 0;
    o->m_40 = 0;
    o->m_3C = 0;
    o->m_48 = 0;
}

void func_80077544(B51 *o, int flags) {
    o->m_vt = D_800C8824;
    if (o->m_40) {
        __builtin_vec_delete(o->m_40);
        o->m_40 = 0;
    }
    func_800745AC(o, flags);
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_51", func_8007759C);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_51", func_800776F0);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_51", func_80077844);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_51", func_8007792C);

void *func_80077BA0(void) {
    return func_800774B8(__builtin_new(0x18));
}

void func_80077BC8(SVECTOR *d, Vector3 *s) {
    short x = s->vx;
    short y = s->vy;
    short z = s->vz;

    d->vx = x;
    d->vy = y;
    d->vz = z;
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_51", func_80077BE4);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_51", func_80077EE0);

C51 *func_80078244(C51 *o) {
    func_8006BB70(o->m_160);
    func_80078280(o);
    o->m_154 = 3;
    return o;
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_51", func_80078280);

#ifdef NON_MATCHING
/* The original copies each field as it loads it; GCC moves the stack argument's load earlier (26 off) */
void func_800783A8(C51 *o, int *src, int *t1, int *t2, int i) {
    o->m_17C = src[0];
    o->m_180 = src[1];
    o->m_184 = src[2];
    o->m_188 = src[3];
    o->m_18C = src[4];
    o->m_190 = src[5];
    o->m_150 = src[6];
    o->m_154 = i;
    o->m_140 = src[9];
    o->m_190 = t1[i];
    o->m_150 = -t2[i];
    o->m_158 = 0;
    o->m_15C = 0;
    func_8006BB9C(o->m_160, 0);
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_51", func_800783A8);
#endif

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_51", func_80078458);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_51", func_8007857C);

/* Two matrices; the second transposed. */
void func_800788D8(M51 *o) {
    MATRIX m;
    MATRIX *p;
    short t;

    func_80098224(&m, o);
    o->m_A0 = m;
    func_80098354(&m, o);
    o->m_C0 = m;
    p = &o->m_C0;
    t = p->m[0][1];
    p->m[0][1] = p->m[1][0];
    p->m[1][0] = t;
    t = p->m[0][2];
    p->m[0][2] = p->m[2][0];
    p->m[2][0] = t;
    t = p->m[1][2];
    p->m[1][2] = p->m[2][1];
    p->m[2][1] = t;
}

A51 *func_800789C4(A51 *o) {
    o->m_vt = D_800C8884;
    o->m_2C = 0x800;
    func_800879D4(o->m_30);
    o->m_1C = 0;
    o->m_18 = 0;
    o->m_08 = 0;
    o->m_0C = 0;
    o->m_10 = 0;
    o->m_14 = 0;
    o->m_00 = 0;
    o->m_04 = 0;
    o->m_28 = 0;
    o->m_24 = 0;
    o->m_20 = 0;
    D_800C8870 = 0;
    return o;
}

void func_80078A34(A51 *o, int flags) {
    o->m_vt = D_800C8884;
    func_80078AD0(o);
    func_80087A14(o->m_30, 2);
    if (flags & 1) {
        __builtin_delete(o);
    }
}

int func_80078A90(A51 *o, int a, int b, int c, int d) {
    o->m_0C = b;
    o->m_10 = c;
    o->m_18 = a;
    o->m_14 = d;
    func_80088A08(o->m_30, b, c);
    return 1;
}

int func_80078AD0(A51 *o) {
    if (o->m_28) {
        free(o->m_28);
        o->m_28 = 0;
    }
    return 1;
}

int func_80078B10(A51 *o) {
    int ok = func_800895A0(o->m_28, o->m_24);
    int r = 0;

    if (ok) {
        r = func_80088F34(o->m_30) != 0;
    }
    return r;
}

void func_80078B58(A51 *o) {
    func_80088FD4(o->m_30);
}

int func_80078B78(void) {
    return 0;
}

int func_80078B80(void) {
    return 0;
}

int func_80078B88(void) {
    return 0;
}

int func_80078B90(void) {
    return 0;
}

int func_80078B98(void) {
    return 0;
}

/* A buffer of n bytes, if the capacity is smaller. */
int func_80078BA0(A51 *o, int n) {
    int r = 0;

    if (o->m_2C < n) {
        void *m = malloc(n);

        if (m) {
            r = 1;
            if (o->m_28) {
                free(o->m_28);
                o->m_28 = 0;
            }
            o->m_28 = m;
            o->m_24 = n;
        }
    }
    return r;
}

int func_80078C28(A51 *o) {
    if (o->m_28) {
        free(o->m_28);
        o->m_28 = 0;
    }
    o->m_24 = 0;
    return 1;
}

int func_80078C6C(A51 *o) {
    o->m_04 = 0;
    return 1;
}

void func_80078C78(A51 *o, int a, int b, int c, int e, int f, int g, int h, int i, ...) {
    va_list ap;

    va_start(ap, i);
    func_80087A58(o->m_30, a, b, c, e, f, g, h, i | 0x20, ap);
}

void func_80078CCC(A51 *o) {
    func_80087EB0(o->m_30);
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_51", func_80078CEC);

G51 *func_80078DA8(G51 *g, int a, int b, int c, int d, int e) {
    g->m_18 = 0;
    g->m_08 = 0;
    g->m_0C = a;
    g->m_0E = b;
    g->m_10 = c;
    g->m_04 = 0;
    g->m_1C = 0;
    g->m_12 = d;
    g->m_00 = e;
    g->m_08 = func_80078E00(g);
    return g;
}

/* The object made for mode 6 and started; deleted if it fails or isn't
 * ready. */
int func_80078E00(G51 *g) {
    int r = 0;
    F51 *o;

    g->m_18 = 1;
    if (g->m_00 == 6) {
        g->m_04 = func_80079078(__builtin_new(0x184));
    }
    o = g->m_04;
    if (o) {
        o->m_160 = g->m_0C;
        o->m_164 = g->m_0E;
        if (!((int (*)(void *, int, int, int, int))g->m_04->m_vt[2].m_func)(
                (char *)g->m_04 + g->m_04->m_vt[2].m_delta, 0, g->m_10, g->m_12, 16) ||
            !g->m_04->m_1C) {
            if (g->m_04) {
                ((void (*)(void *, int))g->m_04->m_vt[1].m_func)(
                    (char *)g->m_04 + g->m_04->m_vt[1].m_delta, 3);
                g->m_04 = 0;
            }
        } else {
            r = 1;
        }
    }
    g->m_18 = 0;
    return r;
}

Slot51 *func_80078F10(Slot51 *t) {
    int i;

    for (i = 0; i >= 0; i--) {
        t->m_a[i] = 0;
    }
    return t;
}

void func_80078F34(Slot51 *t, int flags) {
    if (flags & 1) {
        __builtin_delete(t);
    }
}

/* x put in the first free slot; its index, or -1. */
int func_80078F5C(Slot51 *t, int x) {
    int i;

    if (x) {
        for (i = 0; i < 1; i++) {
            if (!t->m_a[i]) {
                t->m_a[i] = x;
                return i;
            }
        }
    }
    return -1;
}

int func_80078F90(Slot51 *t, int x) {
    int i;

    if (x) {
        for (i = 0; i < 1; i++) {
            if (t->m_a[i] == x) {
                return i;
            }
        }
    }
    return -1;
}

int func_80078FC4(Ref51 *r, int b) {
    int v = 0;

    if (!b && r->m_00) {
        v = r->m_00->m_04;
    }
    return v;
}

Val51 *func_80078FE8(Ref51 *r, int b) {
    Val51 *v = 0;

    if (!b) {
        v = r->m_00;
    }
    return v;
}

void func_80078FFC(void) {
    if (--D_800CBC90 == 0) {
        func_80078F34(&D_800CBC94, 2);
    }
}

void func_80079038(void) {
    if (++D_800CBC90 == 1) {
        func_80078F10(&D_800CBC94);
    }
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_51", func_80079078);

void func_800790DC(A51 *o, int flags) {
    o->m_vt = D_800B77E0;
    func_80079328(o);
    func_80078A34(o, flags);
}

#ifdef NON_MATCHING
/* The constants' registers: the original loads each into $v0 just before its store (6 off) */
void func_80079124(F51 *o) {
    o->m_08 = 6;
    o->m_164 = 14;
    o->m_17C = 1;
    o->m_15C = 0;
    o->m_160 = 0;
    o->m_16C = 0;
    o->m_16D = 0;
    o->m_16E = 0;
    o->m_168 = 0;
    o->m_174 = 0;
    o->m_150 = 0;
    o->m_154 = 0;
    o->m_158 = 0;
    o->m_14C = 2;
    o->m_180 = 0;
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_51", func_80079124);
#endif

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_51", func_80079174);

INCLUDE_RODATA("asm/langimg/nonmatchings/chunk_51", D_800B77E0);
