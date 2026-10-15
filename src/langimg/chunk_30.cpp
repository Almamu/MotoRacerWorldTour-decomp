#include "common.h"
#include "psyq.h"

/* The game's code built with GCC 2.91.66: the race's cameras
 * (docs/matching/issue-31-langimg-chunk30.md). */

extern "C" {
struct Vec30 {
    long vx, vy, vz;
};
// A bike's model (chunk_35's Body35)
struct Body30 {
    u8 m_00[0x64];
    Vec30 m_64;   // its position
    SVECTOR m_70; // its angles
    u8 m_78[0xE2];
    short m_15A[4];
};
// A bike (chunk_36's Bike36)
struct Bike30 {
    u32 m_00;
    u8 m_04[0x2C];
    Body30 *m_30;
    u8 m_34[0x534];
};
struct Run30 {
    u8 m_00[0x2E8];
    Bike30 m_2E8[5];
    u8 m_1DF0[0x34];
    s8 m_1E24[2]; // the racers' bikes
};
// A camera: its matrix and its position
struct Cam30 {
    MATRIX m_00;
    u8 m_20[0xD8];
    Vec30 m_F8;
};
// The race (chunk_36's Own36)
struct Own30 {
    u8 m_00[0x378];
    Run30 *m_378;
    u8 m_37C[0xC0];
    Cam30 *m_43C[2];
    u8 m_444[0x18];
    struct Path30 *m_45C;
    u8 m_460[0x10];
    s8 m_470[2];
    u8 m_472[0x2A];
    u8 m_49C[4];
};
// A camera's path
struct Path30 {
    u8 m_00[0xC];
    Vec30 m_0C;
    u8 m_18[0x50];
    short m_68; // the angle
    short m_6A, m_6C;
    short m_6E;
    short m_70, m_72, m_74;
};

void func_80034190(SVECTOR *a, SVECTOR *b, short *c);
void func_80097F68(MATRIX *m, SVECTOR *r);
MATRIX *func_80098178(MATRIX *d, MATRIX *s);
void func_80098768(MATRIX *m, Vec30 *v, Vec30 *out);
Vec30 *func_800997D0(Vec30 *v, Vec30 *a);

extern short D_800BF3A0[][2]; // sines and cosines by angle (4.12)
extern char D_800CA7D8[];
extern int D_800CA934;
MATRIX *func_80098674(MATRIX *a, MATRIX *b, MATRIX *out); // a product
void func_8009887C(long *in, long *out);
void func_8001D23C(void *r, int a, int b, int c, int d);

void func_8004D560(Own30 *o, int i);
void func_8004EE10(Own30 *o, int i);
}

// The run's bike k, or 0
static inline Bike30 *Bike30At(Run30 *r, int k) {
    Bike30 *b = 0;

    if (k >= 0) {
        b = &r->m_2E8[k];
    }
    return b;
}

static inline void VecCopyL30(Vec30 *d, Vec30 *s) {
    int x = s->vx;
    int y = s->vy;
    int z = s->vz;

    d->vx = x;
    d->vy = y;
    d->vz = z;
}

static inline void SetVec30(Vec30 *v, int x, int y, int z) {
    v->vx = x;
    v->vy = y;
    v->vz = z;
}

#ifdef NON_MATCHING
// The original needs a saved register less: it keeps the angles' and the second matrix's addresses in one register ($s1) and the camera's position in $s0 from its copy on, and recomputes the last vector's address; GCC keeps each in its own (a frame of 0xA0 against 0x98, 119 off).
void func_8004D560(Own30 *o, int i) {
    int k = o->m_470[i];
    Body30 *m = 0;
    Bike30 *b = Bike30At(o->m_378, o->m_378->m_1E24[k]);
    Cam30 *c;

    if (b && (b->m_00 & 0x7E) == 0x42) {
        m = b->m_30;
    }
    c = o->m_43C[i];
    if (m) {
        SVECTOR a, d;
        MATRIX r, t;
        Vec30 w, v;

        a = m->m_70;
        func_80034190(&a, &d, m->m_15A);
        func_80097F68(&r, &a);
        func_80098178(&t, &r);
        c->m_00 = t;
        c->m_00.t[0] = c->m_00.t[1] = c->m_00.t[2] = 0;
        VecCopyL30(&c->m_F8, &m->m_64);
        func_80097F68(&t, &d);
        t.t[0] = t.t[1] = t.t[2] = 0;
        SetVec30(&v, 0, 0x1000, 0);
        func_80098768(&t, &v, &w);
        func_800997D0(&w, (Vec30 *)t.t);
        func_800997D0(&c->m_F8, &w);
    }
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_30", func_8004D560);
#endif

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_30", func_8004D734);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_30", func_8004E99C);

#ifdef NON_MATCHING
// The original computes the product's translation address (sp+0x5C) again for each of its two calls; GCC keeps it in a saved register, which takes $s3 and a frame of 0x80 against 0x78 (149 off; the stack slots and the two rotations' stores match).
void func_8004EE10(Own30 *o, int i) {
    int k = o->m_470[i];
    Body30 *m = 0;
    Bike30 *b = Bike30At(o->m_378, o->m_378->m_1E24[k]);

    if (b && (b->m_00 & 0x7E) == 0x42) {
        m = b->m_30;
    }
    if (m) {
        Path30 *p = o->m_45C;

        if (p) {
            union {
                Vec30 v;
                SVECTOR a;
            } u;
            MATRIX r, out;
            Cam30 *c = o->m_43C[i];
            int lo = p->m_6C;
            int span = p->m_6A - lo;
            int y, sn, cs, f;

            u.v = p->m_0C;
            VecCopyL30(&c->m_F8, &u.v);
            u.a.vx = 0;
            u.a.vz = 0;
            u.a.vy = p->m_68;
            cs = D_800BF3A0[u.a.vy & 0xFFF][1];
            sn = D_800BF3A0[u.a.vy & 0xFFF][0];
            c->m_00.m[1][1] = 0x1000;
            c->m_00.m[1][0] = 0;
            c->m_00.m[0][1] = 0;
            c->m_00.m[2][1] = 0;
            c->m_00.m[1][2] = 0;
            c->m_00.m[0][2] = sn;
            c->m_00.m[2][2] = cs;
            c->m_00.m[0][0] = cs;
            c->m_00.m[2][0] = -sn;
            if (!span) {
                y = p->m_74;
            } else {
                y = (p->m_74 - p->m_72) * (u.a.vy - lo) / span + p->m_72;
            }
            cs = D_800BF3A0[y & 0xFFF][1];
            sn = D_800BF3A0[y & 0xFFF][0];
            r.m[2][2] = 0x1000;
            r.m[2][0] = 0;
            r.m[0][2] = 0;
            r.m[2][1] = 0;
            r.m[1][2] = 0;
            r.m[1][1] = cs;
            r.m[0][0] = cs;
            r.m[0][1] = -sn;
            r.m[1][0] = sn;
            func_80098674(&r, &c->m_00, &out);
            func_8009887C(c->m_00.t, out.t);
            func_800997D0((Vec30 *)out.t, (Vec30 *)r.t);
            c->m_00 = out;
            f = p->m_6E;
            if (f < 100) {
                f = 100;
            }
            func_8001D23C(D_800CA7D8, D_800CA934, f, 0x800, 0);
            func_8001D23C(o->m_49C, D_800CA934, f, 0x800, 0);
        }
    }
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_30", func_8004EE10);
#endif

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_30", func_8004F0C4);
