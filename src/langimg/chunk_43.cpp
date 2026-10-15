#include "common.h"
#include "psyq.h"

/* The game's code built with GCC 2.91.66: a bike's model and its motion
 * (docs/matching/issue-44-langimg-chunk43.md). */

extern "C" {
// A bike (chunk_09's Bike): its kind in bits 1-5
struct Owner43 {
    u32 m_00;
    u8 m_04[0x184];
    u8 m_188;
};
// A row of a table (32 bytes)
struct Row43 {
    u8 m_00[7];
    s8 m_07;
    u8 m_08[7];
    u8 m_0F;
    u8 m_10[0x10];
};
// A table's entry (20 bytes)
struct Ent43 {
    u8 m_00[8];
    Row43 **m_08;
    u8 m_0C[8];
};
struct Model43;
struct Bike43 {
    u8 m_00[0x30];
    struct Model43 *m_30;
};
// A link to another bike (0x40 bytes)
struct Link43 {
    Bike43 *m_00;
    u8 m_04[0x3C];
};
// The camera (chunk_35's Cam35)
struct Tab43 {
    u8 m_00[0x28];
    Ent43 *m_28;
    u8 m_2C[0x48];
    Bike43 *m_74;
};
struct Vec43 {
    int x, y, z;
};
// A bike's model (chunk_35's Body35)
// The block at a model's 0x1B4 as func_80067650 copies it: words, two
// vectors among them
struct Ctr43 {
    int m_00[5];
    Vec43 m_14;
    int m_20[3];
    Vec43 m_2C;
    int m_38[13];
};
struct Model43 {
    u8 m_00[0x34];
    MATRIX *m_34;
    u8 m_38[0x1C];
    Owner43 *m_54;
    u8 m_58[0xC];
    Vec43 m_64;
    SVECTOR m_70;
    u8 m_78[0x70];
    int m_E8;
    u8 m_EC[4];
    short m_F0, m_F2;
    int m_F4;
    u8 m_F8[0x14];
    int m_10C;
    int m_110;
    u8 m_114[4];
    int m_118; // the top speed
    Vec43 m_11C;
    u8 m_128[0x25];
    s8 m_14D;
    u8 m_14E[0x66];
    Link43 m_1B4;
    int m_1F4;
    int m_1F8;
    u8 m_1FC[8];
    int m_204, m_208;
    u8 m_20C[4];
    int m_210;
    u8 m_214[0x64];
    int m_278;   // its speed
    Vec43 m_27C; // its velocity
    Vec43 m_288;
    u8 m_294[0x10];
    MATRIX m_2A4;
    u8 m_2C4[0x20];
    Vec43 m_2E4; // its direction
    u8 m_2F0[0x1C];
    Vec43 m_30C;
    Vec43 m_318;
    u8 m_324[0x18];
    int m_33C;
    u8 m_340[0x44];
    int m_384;
    u8 m_388[0x68];
    int m_3F0;
    u8 m_3F4[0x1C];
    int m_410;
    u8 m_414[0x40];
    int m_454;
    int m_458;
    int m_45C;
    u8 m_460[0x28];
    int m_488;
    int m_48C;
    int m_490;
    int m_494;
    struct Model43 *m_498;
};

extern int D_800CB448;
extern int D_800D5FD4;
void func_800643E4(Model43 *m);
void func_80016268(Model43 *m, SVECTOR *r, Vec43 *v);
void func_80063848(Model43 *d, Model43 *s);
void func_80064608(Model43 *m, int a);
void func_80067650(Model43 *d, Model43 *s, int a);
void func_800630D8(Model43 *m);

void func_80098F94(Vec43 *v, int shift);
int func_80099C20(Vec43 *a, Vec43 *b, int shift); // a dot product
Vec43 *func_800997A4(Vec43 *a, Vec43 *b);
Vec43 *func_8009975C(Vec43 *d, Vec43 *s, int k);
Vec43 *func_800995C4(Vec43 *v, int len);
Vec43 *func_800998D0(Vec43 *out, Vec43 *a, Vec43 *b);
Vec43 *func_800997D0(Vec43 *v, Vec43 *a);
int func_8009923C(Vec43 *v);
void func_80067230(Model43 *m, Vec43 *v, int a);

extern int D_800CB434, D_800CB43C;
extern int D_800D6100;
int func_8001D018(Tab43 *c, Link43 *a, Link43 *b);
int abs(int x);
void func_80068900(Model43 *m, Tab43 *c);

void func_800673CC(Model43 *m);
void func_8006741C(Model43 *m, Vec43 n);
void func_800673DC(Model43 *m);
void func_80068038(Model43 *m, int len);
int func_800692A8(Model43 *m, Tab43 *t);
}

static inline void VecCopyL43(Vec43 *d, Vec43 *s) {
    int x = s->x;
    int y = s->y;
    int z = s->z;

    d->x = x;
    d->y = y;
    d->z = z;
}

static inline void ZeroVec43(Vec43 *v) {
    v->x = 0;
    v->y = 0;
    v->z = 0;
}

static inline void VecCopy43(Vec43 *d, Vec43 *s) {
    d->x = s->x;
    d->y = s->y;
    d->z = s->z;
}

void func_800673CC(Model43 *m) {
    m->m_54->m_188 = 1;
}

void func_800673DC(Model43 *m) {
    m->m_E8 = 0;
    func_800643E4(m);
    m->m_F0 = 0;
    m->m_F2 = 0;
    m->m_110 = 0;
    m->m_F4 = 0;
    func_800630D8(m);
}

void func_8006741C(Model43 *m, Vec43 n) {
    Vec43 h, d, r, t, u;
    int c, e, l;

    func_80098F94(&n, 12);
    h = m->m_27C;
    d = m->m_27C;
    func_80098F94(&d, 12);
    c = func_80099C20(&d, &n, 12);
    e = func_80099C20(&h, &n, 12);
    if (c < -4075) {
        Vec43 *pu = &u;
        Vec43 *pt = &t;

        func_800997A4(pu, &h);
        func_8009975C(pt, pu, 3);
    } else if (e > 0) {
        VecCopyL43(&r, &h);
        goto add;
    } else {
        VecCopyL43(&r, &n);
        func_800995C4(&r, e);
        func_800998D0(&t, &h, &r);
    }
    VecCopyL43(&r, &t);
add:
    t = n;
    func_800997D0(&r, &t);
    l = func_8009923C(&r);
    if (m->m_118 < l) {
        l = m->m_118;
        func_80098F94(&r, 12);
        VecCopyL43(&r, func_800995C4(&r, l));
    }
    m->m_278 = l;
    VecCopy43(&m->m_27C, &r);
    m->m_F0 = 300;
    VecCopyL43(&m->m_2E4, &m->m_27C);
    func_80098F94(&m->m_2E4, 12);
    m->m_F2 = 0;
    func_80067230(m, &m->m_27C, 0);
}

// A matrix copied three words, two, then three at a time, each word its own
// variable (one reused for two words gets other registers)
static inline void MatCopy43(MATRIX *d, MATRIX *s) {
    int *q = (int *)s;
    int *p = (int *)d;
    int x0 = q[0];
    int x1 = q[1];
    int x2 = q[2];
    int x3, x4, x5, x6, x7;

    p[0] = x0;
    p[1] = x1;
    p[2] = x2;
    x3 = q[3];
    x4 = q[4];
    p[3] = x3;
    p[4] = x4;
    x5 = q[5];
    x6 = q[6];
    x7 = q[7];
    p[5] = x5;
    p[6] = x6;
    p[7] = x7;
}

void func_80067650(Model43 *d, Model43 *s, int a) {
    Ctr43 *cs = (Ctr43 *)&s->m_1B4;
    Ctr43 *cd = (Ctr43 *)&d->m_1B4;
    int v;

    VecCopyL43(&d->m_64, &s->m_64);
    d->m_70 = s->m_70;
    cd->m_00[0] = cs->m_00[0];
    cd->m_00[1] = cs->m_00[1];
    cd->m_00[2] = cs->m_00[2];
    cd->m_00[3] = cs->m_00[3];
    cd->m_00[4] = cs->m_00[4];
    VecCopyL43(&cd->m_14, &cs->m_14);
    cd->m_20[0] = cs->m_20[0];
    cd->m_20[1] = cs->m_20[1];
    cd->m_20[2] = cs->m_20[2];
    VecCopyL43(&cd->m_2C, &cs->m_2C);
    cd->m_38[0] = cs->m_38[0];
    cd->m_38[1] = cs->m_38[1];
    cd->m_38[2] = cs->m_38[2];
    cd->m_38[3] = cs->m_38[3];
    cd->m_38[4] = cs->m_38[4];
    cd->m_38[5] = cs->m_38[5];
    cd->m_38[6] = cs->m_38[6];
    cd->m_38[7] = cs->m_38[7];
    cd->m_38[8] = cs->m_38[8];
    cd->m_38[9] = cs->m_38[9];
    cd->m_38[10] = cs->m_38[10];
    cd->m_38[11] = cs->m_38[11];
    cd->m_38[12] = cs->m_38[12];
    func_80016268(d, &d->m_70, &d->m_64);
    func_80063848(d, s);
    func_80064608(d, a);
    func_800643E4(d);
    MatCopy43(d->m_34, &d->m_2A4);
    v = s->m_10C;
    d->m_110 = d->m_10C = d->m_278 = v;
    VecCopyL43(&d->m_27C, &s->m_11C);
    VecCopyL43(&d->m_288, &d->m_27C);
    ZeroVec43(&d->m_30C);
    ZeroVec43(&d->m_318);
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_43", func_800678C8);

void func_80068038(Model43 *m, int len) {
    int top;

    if (m->m_384) {
        int d = m->m_208 - m->m_204;

        if (d >= 0 && d < m->m_48C) {
            m->m_490 = 6;
        } else {
            m->m_384 = 0;
        }
    }
    if (m->m_490 == 6) {
        top = m->m_488;
    } else if (m->m_494 & 0x202) {
        top = D_800CB448;
    } else {
        top = m->m_45C;
    }
    if (len / 2 > m->m_278) {
        int a = top * 4 / 3;

        m->m_33C = (-(a << 12) / len * m->m_278 >> 12) + a;
    } else {
        m->m_33C = ((-(top * 2) / 3 << 12) / len * m->m_278 >> 12) + top;
    }
    if (D_800D5FD4 & 1) {
        m->m_33C /= 3;
    }
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_43", func_800681A4);

#ifdef NON_MATCHING
// The original keeps 1000's reciprocal, 2 and 5 in saved registers for the whole loop; with -fmove-all-movables (the chunk's flag) it went from 141 to 91 off; the bits' tests still come out with xori here.
void func_80068900(Model43 *m, Tab43 *c) {
    Owner43 *own = m->m_54;

    do {
        int d;

        d = m->m_410 = func_8001D018(c, &m->m_1B4, &c->m_74->m_30->m_1B4);
        m->m_14D = (D_800CB43C < d) | (d < D_800CB434);
        m->m_454 = (D_800D6100 << 12) / 1000;
        m->m_458 = D_800D6100;
        if (!m->m_14D) {
            int k = m->m_210;
            Model43 *n = m->m_1B4.m_00->m_30;
            int done = 0;

            if ((u32)(m->m_3F0 - 1) < 2) {
                done = 1;
            } else if (m->m_490 == 2 || m->m_490 == 5) {
                if (m->m_498 == n) {
                    k = n->m_210;
                    done = 1;
                }
            } else if ((u32)m->m_490 < 2) {
                Row43 **rows = c->m_28[m->m_1F4].m_08;

                if (abs((rows[k][m->m_1F8].m_07 - rows[0][m->m_1F8].m_07) << 9) < 0x1000) {
                    done = 1;
                    k = 0;
                }
            }
            if (!done) {
                int bits = c->m_28[n->m_1F4].m_08[n->m_210][n->m_1F8].m_0F & 0x3F;

                if (!((bits >> k) & 1) && bits && !(bits & 1)) {
                    k = 0;
                    while (!((bits >> k) & 1)) {
                        k++;
                    }
                }
            }
        }
        m = m->m_1B4.m_00->m_30;
    } while ((int)(m->m_54->m_00 << 26) >> 27 == 2 && m->m_54 != own);
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_43", func_80068900);
#endif

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_43", func_80068B60);

int func_800692A8(Model43 *m, Tab43 *t) {
    return t->m_28[m->m_1F4].m_08[m->m_210][m->m_1F8].m_0F != 0;
}
