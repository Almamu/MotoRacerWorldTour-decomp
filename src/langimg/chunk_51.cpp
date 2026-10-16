#include "common.h"
#include "psyq.h"
#include "langimg/cobjet.h"
#include "langimg/ui.h"
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
    VtEntry *m_vt;     // 0x68
    DRAWENV m_draw[2]; // 0x6C
    DISPENV m_disp[2]; // 0x124
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
struct Vec51 {
    int x, y, z;
};
struct C51 {
    MATRIX m_00;
    u8 m_20[0xC0];
    Vec51 m_E0, m_EC, m_F8, m_104, m_110;
    u8 m_11C[0xC];
    Vec51 m_128;
    int m_134, m_138, m_13C;
    int m_140;
    int m_144;
    int m_148, m_14C;
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
// A model point (8 bytes)
struct Pt51 {
    short m_00[4];
};
struct Shape51 {
    u8 m_00[0x18];
    Pt51 *m_18;
};
struct Mdl51 {
    u8 m_00[4];
    Shape51 *m_04;
};
// A mesh: its model, its points' indices, the points placed and their offsets
struct Src51 {
    u8 m_00[0x14];
    SVECTOR *m_14; // its points
};
struct Mesh51 {
    u8 m_00[0x10];
    int m_10;
    int m_14;
    u8 m_18[0x14];
    Src51 *m_2C;
    Src51 *m_30;
    u8 m_34[4];
    int m_38;
    int m_3C;
    int *m_40;
    SVECTOR *m_44;
    Pt51 *m_48;
};
void func_80099EF4(SVECTOR *out, Pt51 *a, Pt51 *b);
void func_80077844(Mesh51 *o);
int func_8007792C(Mesh51 *o);
SVECTOR *func_80099E84(SVECTOR *v, SVECTOR *a);
SVECTOR *func_80099EBC(SVECTOR *d, SVECTOR *a, SVECTOR *b);
Vec51 *func_80099718(Vec51 *d, Vec51 *s, int k);
Vec51 *func_80099D48(Vec51 *v, int shift);
void func_80078280(C51 *o);
void func_80078458(C51 *o, Vector3 *at);
void func_80098E9C(Vector3 *v);
int func_80097AC8(int x);
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
int func_80079174(F51 *o, int a, int w, int h, int e);
void func_800792DC(F51 *o);
void func_800793C0(F51 *o); // a method: its object unused
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

/* A mesh's points placed: each, from the last, its model point (by its index) moved by its
 * offset through func_80099EF4 into the mesh's short vectors. */
#ifdef NON_MATCHING
// The output's field pointers: the original walks the entries' vy and vz with two pointers ($s0 at +0xA, $s2 at +0xC); GCC picks vx and vz (5 off).
void func_80077844(Mesh51 *o) {
    SVECTOR r;
    SVECTOR *pr = &r;
    int i = o->m_3C - 1;
    int *idx = &o->m_40[i];
    SVECTOR *out = &o->m_44[i] + 1;
    Pt51 *pts = ((Mdl51 *)D_800C8C68->m_items[o->m_38])->m_04->m_18;

    do {
        int k = *idx--;

        out--;
        func_80099EF4(&r, &pts[k], &o->m_48[k]);
        {
            short x = r.vx;
            short y = pr->vy;
            short z = pr->vz;

            out->vx = x;
            out->vy = y;
            out->vz = z;
        }
    } while (--i >= 0);
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_51", func_80077844);
#endif

#ifdef NON_MATCHING
// Temporaries only: the points' copies load their shorts into $v0/$v1 the other way round, and the second loop's last call sets $a0 before $a2 (18 off).
int func_8007792C(Mesh51 *o) {
    int r = 0;

    if (func_80074AC8((U51 *)o)) {
        Src51 *sa = o->m_2C;
        Src51 *sb = o->m_30;

        if (sa || sb) {
            Src51 *src = sa ? sa : sb;

            if (o->m_14 <= 0) {
                SVECTOR a;
                SVECTOR *pa = &a;
                int i = o->m_3C - 1;
                SVECTOR *from = &src->m_14[i];
                SVECTOR *pts = (SVECTOR *)((Mdl51 *)D_800C8C68->m_items[o->m_38])->m_04->m_18;
                int *idx = &o->m_40[i];

                do {
                    int k = *idx--;

                    func_80099EBC(&a, (SVECTOR *)&o->m_48[k], from--);
                    {
                        short x = a.vx;
                        short y = pa->vy;
                        short z = pa->vz;
                        SVECTOR *d = &pts[k];

                        d->vx = x;
                        d->vy = y;
                        d->vz = z;
                    }
                } while (--i >= 0);
                r = 1;
            } else {
                SVECTOR a;
                Vec51 w, v;
                SVECTOR *pa = &a;
                Vec51 *pw = &w;
                int i = o->m_3C - 1;
                SVECTOR *from = &src->m_14[i];
                SVECTOR *off = &o->m_44[i];
                SVECTOR *pts = (SVECTOR *)((Mdl51 *)D_800C8C68->m_items[o->m_38])->m_04->m_18;
                int *idx = &o->m_40[i];

                do {
                    int k = *idx--;
                    SVECTOR *d;

                    func_80099EF4(&a, (Pt51 *)from, (Pt51 *)off);
                    {
                        int y = pa->vy;
                        int x = a.vx;
                        int z;

                        v.x = x;
                        z = pa->vz;
                        v.y = y;
                        w.x = x;
                        w.y = y;
                        v.z = z;
                        w.z = z;
                    }
                    func_80099718(&v, pw, o->m_10);
                    from--;
                    {
                        int x = v.x;
                        int y = v.y;
                        int z = v.z;

                        w.x = x;
                        w.y = y;
                        w.z = z;
                    }
                    func_80099D48(pw, 16);
                    d = &pts[k];
                    func_80099EBC(pa, (SVECTOR *)&o->m_48[k], off--);
                    {
                        short x = a.vx;
                        short y = pa->vy;
                        short z = pa->vz;

                        d->vx = x;
                        d->vy = y;
                        d->vz = z;
                    }
                    func_80077BC8(pa, (Vector3 *)pw);
                    func_80099E84(d, pa);
                } while (--i >= 0);
                r = 1;
            }
        }
    }
    return r;
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_51", func_8007792C);
#endif

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

extern "C" {
extern u8 D_800C885C;                         // the text's mode
extern u8 D_800C885D;                         // its brightness
extern u8 D_800C8860, D_800C8861, D_800C8862; // its colour's bytes
int func_80077EE0(UiTexture *t, int align, int x, int y, int sx, int sy, int scaled);
}

// A sprite of texture t at (x, y), its size scaled by sx and sy (4.12; their
// inverse when scaled), placed by align (0x10/0x20 centred/right, 0x100/0x200
// middle/bottom), drawn in the text's mode and colour
#ifdef NON_MATCHING
// A sprite drawn in the text's mode: the branches, the colour words and the packet as the original's, but the two colour shifts are computed in the other order, the fourth UV pair is read later, and the ordering table's index is tested as len < 2 where the original tests 1 < len (58 off). The texture's fourth UV pair is at 0xA here, not UiTexture's 0xC.
int func_80077EE0(UiTexture *t, int align, int x, int y, int sx, int sy, int scaled) {
    int w, h, x1;
    u_long *p;

    if (scaled) {
        if (!sx) {
            sx = 1;
        }
        if (!sy) {
            sy = 1;
        }
        w = ((t->u1 - t->u0 + 1) << 12) / sx;
        h = ((t->v2 - t->v0 + 1) << 12) / sy;
    } else {
        w = (t->u1 - t->u0 + 1) * sx / 4096;
        h = (t->v2 - t->v0 + 1) * sy / 4096;
    }
    switch (align & 0xF0) {
    case 0x10:
        x -= w / 2;
        break;
    case 0x20:
        x -= w;
        break;
    }
    switch (align & 0xF00) {
    case 0x100:
        y -= h / 2;
        break;
    case 0x200:
        y -= h;
        break;
    }
    t->tpage &= ~0x60;
    t->tpage |= (D_800C885C & 3) << 5;
    p = (u_long *)D_800C8C70;
    p[0] = 0x09000000;
    if (D_800C885C & 8) {
        if (D_800C885C & 4) {
            p[1] = 0x66000000 | (D_800C8861 << 8) | (D_800C8862 << 16) | D_800C8860;
        } else {
            p[1] = 0x64000000 | (D_800C8861 << 8) | (D_800C8862 << 16) | D_800C8860;
        }
    } else if (D_800C885C & 4) {
        int b = D_800C885D;

        p[1] = 0x2E000000 | (b << 8) | (b << 16) | b;
    } else {
        switch (D_800C885C & 3) {
        case 0: {
            int b = D_800C885D;

            p[1] = 0x2C000000 | (b << 8) | (b << 16) | b;
            break;
        }
        case 1:
            p[1] = D_800C885D | 0x2C000000;
            break;
        case 2:
            p[1] = (D_800C885D << 8) | 0x2C000000;
            break;
        case 3:
            p[1] = (D_800C885D << 16) | 0x2C000000;
            break;
        }
    }
    x1 = x + w - 1;
    p[3] = *(u16 *)&t->u0 | (t->clut << 16);
    p[5] = *(u16 *)&t->u1 | (t->tpage << 16);
    p[7] = *(u16 *)&t->u2;
    p[2] = XY(x, y);
    p[4] = XY(x1, y);
    p[6] = XY(x, y + h - 1);
    p[8] = XY(x1, y + h - 1);
    p[9] = *(u16 *)((u8 *)t + 0xA);
    {
        int z = 1 < D_800CBDC4->len ? 1 : D_800CBDC4->len - 1;

        ADD_PRIM(D_800CBDC0 + z, D_800C8C70);
    }
    D_800C8C70 += 0x28;
    return 1;
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_51", func_80077EE0);
#endif

C51 *func_80078244(C51 *o) {
    func_8006BB70(o->m_160);
    func_80078280(o);
    o->m_154 = 3;
    return o;
}

// The identity, rows from the diagonal out (chunk_48's)
static inline void IdentMat51(MATRIX *m) {
    m->m[0][0] = 0x1000;
    m->m[1][1] = 0x1000;
    m->m[2][2] = 0x1000;
    m->m[0][1] = m->m[0][2] = m->t[0] = 0;
    m->m[1][0] = m->m[1][2] = m->t[1] = 0;
    m->m[2][0] = m->m[2][1] = m->t[2] = 0;
}

static inline void ZeroVec51(Vec51 *v) {
    v->x = v->y = v->z = 0;
}

static inline void SetVec51(Vec51 *v, int x, int y, int z) {
    v->x = x;
    v->y = y;
    v->z = z;
}

/* An object's defaults: its matrix the identity, its vectors cleared, its settings set and
 * its channel at 0x160 reset. */
#ifdef NON_MATCHING
// The stores of 0x32 and 3 at 0x184 and 0x188: the original stores 0x184's first and loads 2 into $v1; GCC's scheduler swaps them, whatever the statements' order (6 off; the matrix and vectors through chunk_48's inline functions match).
void func_80078280(C51 *o) {
    IdentMat51(&o->m_00);
    ZeroVec51(&o->m_F8);
    ZeroVec51(&o->m_E0);
    ZeroVec51(&o->m_EC);
    ZeroVec51(&o->m_104);
    ZeroVec51(&o->m_110);
    ZeroVec51(&o->m_128);
    SetVec51((Vec51 *)&o->m_148, 0, 0, 0x7000);
    o->m_134 = 0x1000;
    o->m_138 = 0x1000;
    o->m_17C = 0x2000;
    o->m_184 = 0x32;
    o->m_188 = 3;
    o->m_180 = 0x28000;
    o->m_140 = 0;
    o->m_144 = 0;
    o->m_18C = 2;
    o->m_190 = 0x1800;
    o->m_158 = 0;
    o->m_15C = 0;
    func_8006BB9C(o->m_160, 0);
    o->m_13C = 0;
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_51", func_80078280);
#endif

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

/* The object's matrix turned to face a point: the direction from its position at 0xF8,
 * normalised, gives the turn about y (from x and z) and the tilt (y); the translation cleared. */
void func_80078458(C51 *o, Vector3 *at) {
    Vector3 d;
    int l;

    func_800998D0(&d, at, (Vector3 *)&o->m_F8);
    func_80098E9C(&d);
    l = func_80097AC8(d.vx * d.vx + d.vz * d.vz);
    if (l) {
        int a = (-d.vx << 12) / l;
        int c = (d.vz << 12) / l;
        int y = d.vy;

        o->m_00.m[0][0] = c;
        o->m_00.m[1][0] = y * a / 4096;
        o->m_00.m[2][0] = -(l * a) / 4096;
        o->m_00.m[0][1] = 0;
        o->m_00.m[1][1] = l;
        o->m_00.m[2][1] = y;
        o->m_00.m[0][2] = a;
        o->m_00.m[1][2] = -(y * c) / 4096;
        o->m_00.m[2][2] = l * c / 4096;
        o->m_00.t[0] = o->m_00.t[1] = o->m_00.t[2] = 0;
    }
}

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

/* The settings' defaults. The constants go through one variable: the
 * original loads each just before its store, in the same register. */
void func_80079124(F51 *o) {
    int v;

    v = 6;
    o->m_08 = v;
    v = 14;
    o->m_164 = v;
    v = 1;
    o->m_17C = v;
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
    v = 2;
    o->m_14C = v;
    o->m_180 = 0;
}

/* The display set up for w by h: two drawing and two display buffers, one
 * above the other up to 256 lines high, in the same place above that
 * (interlaced, 0x15C set). */
int func_80079174(F51 *o, int a, int w, int h, int e) {
    int r = func_80078A90((A51 *)o, a, w, h, e);

    ResetGraph(3);
    SetGraphDebug(0);
    func_800793C0(o);
    if (h <= 256) {
        SetDefDrawEnv(&o->m_draw[0], 0, 0, w, h);
        SetDefDrawEnv(&o->m_draw[1], 0, 256, w, h);
        SetDefDispEnv(&o->m_disp[0], 0, 256, w, h);
        SetDefDispEnv(&o->m_disp[1], 0, 0, w, h);
        o->m_15C = 0;
    } else {
        SetDefDrawEnv(&o->m_draw[0], 0, 0, w, h);
        SetDefDrawEnv(&o->m_draw[1], 0, 0, w, h);
        SetDefDispEnv(&o->m_disp[0], 0, 0, w, h);
        SetDefDispEnv(&o->m_disp[1], 0, 0, w, h);
        o->m_15C = 1;
    }
    SetVideoMode(1);
    o->m_disp[1].screen.w = 256;
    o->m_disp[0].screen.w = 256;
    o->m_disp[1].screen.h = 256;
    o->m_disp[0].screen.h = 256;
    func_800792DC(o);
    o->m_1C = r;
    return r;
}

INCLUDE_RODATA("asm/langimg/nonmatchings/chunk_51", D_800B77E0);
