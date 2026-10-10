#include "common.h"
#include "langimg/race.h"
#include "langimg/motor.h"
#include "mulshift.h"

#define IABS(x) ((x) < 0 ? -(x) : (x))

static inline void VecZero(Vector3 *v) {
    v->vx = 0;
    v->vy = 0;
    v->vz = 0;
}

static inline void VecCopy(Vector3 *d, Vector3 *s) {
    d->vx = s->vx;
    d->vy = s->vy;
    d->vz = s->vz;
}

/* The game's code built with GCC 2.91.66
 * (docs/matching/issue-9-langimg-chunk08.md). */

extern "C" {
// An animation channel (0x1C bytes)
struct AnimChan {
    u8 m_00[0x1C];
};

// A rider's pose state
struct Pose {
    u8 m_00[0xC];
    int m_0C; // 0x0C: holding
    int m_10;
    u32 m_14; // 0x14: until
    Vector3 m_18;
    Vector3 m_24;
    int m_30;
    Vector3 m_34;
    Vector3 m_40;
    int m_4C, m_50, m_54, m_58, m_5C, m_60;
    int m_64;
    AnimChan m_68, m_84, m_A0, m_BC, m_D8;
    int m_F4, m_F8, m_FC, m_100, m_104, m_108;
    u8 m_10C, m_10D;
    short m_10E;
    int m_110;
    u8 m_114[4];
    u16 m_118;
    u8 m_11A[0x22];
    u16 m_13C, m_13E; // 0x13C: the limits to hold at
    u16 m_140;        // 0x140: how long
    u8 m_142;
};

// What the pose follows
struct PoseInput {
    u8 m_00[0x70];
    short m_70;
    u8 m_72[2];
    short m_74;
    u8 m_76[0x9A];
    int m_110;
};

// The animated object
struct PoseObj {
    u8 m_00[0x30];
    PoseInput *m_30;
    u8 m_34[0x374];
    AnimChan m_3A8;
    AnimChan *m_3C4;
};

// The animations (0x38 bytes apart)
struct PoseAnims {
    u8 m_00[0x1C];
    u8 m_1C[0x38];
    u8 m_54[0x38];
    u8 m_8C[0x38];
    u8 m_C4[0x38];
};

void func_80022A68(Pose *p, PoseObj *o, PoseAnims *a);
int func_80022BA8(Pose *p);
void func_8006BB9C(AnimChan *c, int a);
void func_80091544(AnimChan *c, void *anim);
void func_80091FB4(AnimChan *c, int t, void *a, void *b);
void func_80022CCC(void);
void func_80022CD4(MATRIX *a, SVECTOR *v);
void func_80022D04(SVECTOR *out, Vector3 *in);
Vector3 *func_80022D20(Vector3 *out, Vector3 *in);
void func_80022D44(Vector3 *v, int shift, int a, int b);
void func_80022DE4(Vector3 *v, int shift, int a, int as, int b, int bs);
int func_80022FA4(Vector3 *a, Vector3 *b, int s);
Vector3 *func_80099B60(Vector3 *out, Vector3 *a, Vector3 *b, int shift); // a cross product
void func_80023004(Vector3 *v, Vector3 n);
void func_8002309C(Vector3 *v, Vector3 n);
void func_80023140(Vector3 *v, int len, int shift);
int func_80097A68(int a, int shift, int b);           // (a << shift) / b
int func_8009931C(Vector3 *v);                        // its length
Vector3 *func_800994F0(Vector3 *v, int a, int shift); // v * a >> shift
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_08", func_80021154);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_08", func_80022454);

#ifdef NON_MATCHING
/* The layout matches; registers and the absolute values' scheduling don't (52 off) */
/* Holds a pose while the input stays small, for m_140; or blends
 * towards the side the input leans to. */
void func_80022A68(Pose *p, PoseObj *o, PoseAnims *a) {
    PoseInput *in = o->m_30;
    int x = in->m_110;
    int y = in->m_70;

    if (p->m_0C || (IABS(x) < p->m_13C && IABS(y) < p->m_13E)) {
        if (!p->m_0C) {
            p->m_0C = 1;
            p->m_14 = D_800D60FC + p->m_140;
        } else if (p->m_14 < D_800D60FC) {
            p->m_0C = 0;
        }
        func_80091544(&o->m_3A8, a->m_C4);
    } else {
        int lean = in->m_74;
        int t = (IABS(lean) << 12) / p->m_118;

        if (t > 0x1000) {
            t = 0x1000;
        }
        if (lean < 0) {
            func_80091FB4(&o->m_3A8, t, a->m_1C, a->m_8C);
        } else {
            func_80091FB4(&o->m_3A8, t, a->m_1C, a->m_54);
        }
    }
    o->m_3C4 = &o->m_3A8;
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_08", func_80022A68);
#endif

int func_80022BA8(Pose *p) {
    Vector3 z;

    VecZero(&z);
    p->m_0C = 0;
    p->m_10 = 0;
    p->m_14 = 0;
    VecCopy(&p->m_18, &z);
    VecZero(&z);
    VecCopy(&p->m_24, &z);
    VecZero(&p->m_34);
    VecZero(&p->m_40);
    p->m_4C = 0;
    p->m_50 = 0;
    p->m_54 = 0;
    p->m_58 = 0;
    p->m_5C = 0;
    p->m_60 = 0;
    p->m_64 = 2;
    func_8006BB9C(&p->m_A0, 0);
    func_8006BB9C(&p->m_BC, 0);
    func_8006BB9C(&p->m_D8, 0);
    func_8006BB9C(&p->m_84, 0);
    func_8006BB9C(&p->m_68, 0);
    p->m_F4 = 0;
    p->m_F8 = 0;
    p->m_FC = 0;
    p->m_100 = 0;
    p->m_104 = 0;
    p->m_108 = 0;
    p->m_30 = 0xFB;
    p->m_10E = 0;
    p->m_142 = 0;
    p->m_10C = 0;
    p->m_10D = 0;
    p->m_110 = 0;
    return 1;
}

void func_80022CCC(void) {
}

void func_80022CD4(MATRIX *a, SVECTOR *v) {
    func_80097E4C(a, v->vx, v->vy, v->vz);
}

void func_80022D04(SVECTOR *out, Vector3 *in) {
    short *s = (short *)in;
    int x = s[0];
    int y = s[2];
    int z = s[4];

    out->vx = x;
    out->vy = y;
    out->vz = z;
}

/* The vector turned a quarter about y, in the plane. */
Vector3 *func_80022D20(Vector3 *out, Vector3 *in) {
    int z = in->vz;

    out->vy = 0;
    out->vx = z;
    out->vz = -in->vx;
    return out;
}

void func_80022D44(Vector3 *v, int shift, int a, int b) {
    Vector3 t;
    int one;

    func_80022D20(&t, v);
    one = 1 << shift;
    func_80023140(&t, one, shift);
    func_800994F0(&t, a << (shift - b), shift);
    func_800997D0(&v->vx, &t.vx);
    func_80023140(v, one, shift);
}

/* Turns v by up to 0.3 (as 4.12) about y and about its side, each angle
 * clamped and with its own fraction bits; v renormalized if it turned.
 * The first angle is also kept in b, which the test reads. */
void func_80022DE4(Vector3 *v, int shift, int a, int as, int b, int bs) {
    Vector3 t, u;
    int la = 0x4CC;
    int lb;
    int still;
    int cb, ca;

    if (bs > 12) {
        la <<= bs - 12;
    } else if (bs < 12) {
        la >>= 12 - bs;
    }
    lb = 0x4CC;
    if (as > 12) {
        lb <<= as - 12;
    } else if (as < 12) {
        lb >>= 12 - as;
    }
    if (b < -la) {
        cb = -la;
    } else if (b <= la) {
        cb = b;
    } else {
        cb = la;
    }
    b = cb;
    if (a < -lb) {
        ca = -lb;
    } else if (a <= lb) {
        ca = a;
    } else {
        ca = lb;
    }
    still = 1;
    if (b) {
        func_80022D20(&t, v);
        func_80023140(&t, 1 << shift, shift);
        func_800994F0(&t, cb << (shift - bs), shift);
        func_800997D0(&v->vx, &t.vx);
        still = 0;
    }
    if (ca) {
        func_80022D20(&t, v);
        func_80099B60(&u, &t, v, shift);
        func_80023140(&u, 1 << shift, shift);
        func_800994F0(&u, ca << (shift - as), shift);
        func_800997D0(&v->vx, &u.vx);
        still = 0;
    }
    if (!still) {
        func_80023140(v, 1 << shift, shift);
    }
}

/* The cross product's y, in fixed point with s fraction bits. */
int func_80022FA4(Vector3 *a, Vector3 *b, int s) {
    return MULSHIFT(a->vz, b->vx, s) - MULSHIFT(a->vx, b->vz, s);
}

/* v's y on the plane through 0 with normal n, 4.12. */
void func_80023004(Vector3 *v, Vector3 n) {
    int y = 0;

    if (n.vy) {
        int a = MULSHIFT(v->vx, n.vx, 12);

        y = a + MULSHIFT(v->vz, n.vz, 12);
        y = -((y << 12) / n.vy);
    }
    v->vy = y;
}

/* As func_80023004, with 26 fraction bits. */
void func_8002309C(Vector3 *v, Vector3 n) {
    int y = 0;

    if (n.vy) {
        int a = MULSHIFT(v->vx, n.vx, 26);

        y = a + MULSHIFT(v->vz, n.vz, 26);
        y = -func_80097A68(y, 26, n.vy);
    }
    v->vy = y;
}

/* v scaled to the length len. */
void func_80023140(Vector3 *v, int len, int shift) {
    int l = func_8009931C(v);

    if (l) {
        int f = func_80097A68(len, shift, l);

        v->vx = MULSHIFT(v->vx, f, shift);
        v->vy = MULSHIFT(v->vy, f, shift);
        v->vz = MULSHIFT(v->vz, f, shift);
    }
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_08", func_8002320C);

int func_8002357C(Motor *m, int x, int i) {
    return MULSHIFT(x, MULSHIFT(m->m_ratio[i], 0xE66000 / m->m_62, 12), 24);
}

#ifdef NON_MATCHING
/* Registers: the original holds the shift 12 in one register for the last
 * three multiplies (48 off) */
u32 func_800235F8(Motor *m, int x) {
    int a, b, k, y;

    if (x < m->m_26) {
        x = m->m_26;
    }
    a = MULSHIFT(x, m->m_34, 12);
    b = a;
    if (b < m->m_3C) {
        k = m->m_14;
        y = m->m_10;
    } else {
        k = m->m_1C;
        y = m->m_18;
    }
    y += MULSHIFT(b, k, 12);
    return (u32)MULSHIFT(y << 12, 0x80000000u / MULSHIFT(a << 12, 0x1AC, 12), 12) >> 7;
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_08", func_800235F8);
#endif
