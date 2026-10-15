#include "common.h"
#include "mulshift.h"

/* An object on chunk_40's class (docs/matching/issue-42-langimg-chunk41.md) */

extern "C" {
struct Kind41 {
    u8 m_00[4];
    s8 m_04;
};
struct Vec41 {
    int x;
    int y;
    int z;
};
struct SVec41 {
    short x;
    short y;
    short z;
    short pad;
};
struct Mat41 {
    short m[3][3];
    short pad;
    Vec41 t;
};
// A state: its kind, a value, two vectors
struct St41 {
    Kind41 *m_00;
    int m_04;
    Vec41 m_08;
    Vec41 m_14;
};
struct Obj41 {
    u8 m_00[0x50];
    void *m_50;        // the vtable
    struct Bk41 *m_54; // its bike
    u8 m_58;
    u8 m_59;
    u8 m_5A;
    u8 m_5B[9];
    int m_64[3];
    short m_70[3]; // the angles
    u8 m_76[2];
    Vec41 m_78;
    u8 m_84[0x48];
    int m_CC;
    int m_D0; // an angle, in 2pi * 4096ths
    u8 m_D4[0x38];
    int m_10C;
    u8 m_110[8];
    int m_118; // the top speed
    u8 m_11C[0x18];
    int m_134;
    u8 m_138[0x15];
    s8 m_14D;
    u8 m_14E[0xA];
    u8 m_158;
    u8 m_159[3];
    u32 m_15C; // up to 16
    int m_160; // two bits shifted in each time
    u8 m_164[0x50];
    struct Bk41 *m_1B4; // the next bike on the track
    struct Bk41 *m_1B8; // the one before
    u8 m_1BC[0x38];
    int m_1F4; // the section
    int m_1F8; // and the point
    int m_1FC; // the next section
    int m_200; // and point
    u8 m_204[0xC];
    int m_210; // the lane
    u8 m_214[0xC];
    St41 *m_220;
    St41 *m_224;
    St41 *m_228;
    St41 *m_22C;
    St41 *m_230;
    u8 m_234[0x38];
    Vec41 m_26C;
    u8 m_278[0x20];
    int m_298; // the angles, as ints
    int m_29C;
    int m_2A0;
    struct Mat41 m_2A4;
    u8 m_2C4[0x20];
    Vec41 m_2E4;
    u8 m_2F0[0xC];
    Vec41 m_2FC;
    u8 m_308[0x2C];
    int m_334;
    u8 m_338[0xB8];
    int m_3F0;
    u8 m_3F4[0x5C];
    int m_450; // its index
    u8 m_454[8];
    int m_45C, m_460, m_464, m_468;
    int m_46C, m_470, m_474, m_478;
    int m_47C, m_480, m_484, m_488;
    int m_48C;
    u8 m_490[4];
    int m_494;
};
extern int D_800C7684; // a vtable
void func_80062EEC(Obj41 *o, int f);
int func_80063428(Obj41 *o);
void func_80063434(Obj41 *o, int v);
int func_8006343C(Obj41 *o);
void func_80063448(Obj41 *o, int v);
int func_80063450(Obj41 *o);
int func_80063A04(Obj41 *o);
int func_80063A30(Obj41 *o);
int func_80063A5C(Obj41 *o);
void func_800643BC(Obj41 *o, int f);
void func_80063848(Obj41 *d, Obj41 *s);
void func_8006973C(Mat41 *m, SVec41 *a);
Mat41 *func_80098674(Mat41 *a, Mat41 *b, Mat41 *out); // a product, returns out
void func_8009887C(Vec41 *v, Vec41 *out);
Vec41 *func_800997D0(Vec41 *v, Vec41 *a); // v += a, returns v
Vec41 *func_80098768(Mat41 *m, Vec41 *v, Vec41 *out);
void func_800643E4(Obj41 *o);
struct Mode41 {
    u8 m_00[0x3EC];
    int m_3EC; // the game mode
};
// A bike (chunk_31's Bike31): its mode in bits 1-5, its object
struct Bk41 {
    int m_00;
    u8 m_04[0x28];
    Mode41 *m_2C;
    Obj41 *m_30;
};
// The race's settings (also its camera's range)
struct Trk41 {
    u8 m_00[0x34];
    int m_34;
    int m_38; // the range
    u8 m_3C[0x50];
    int m_8C;
    u8 m_90[0xA8];
    int m_138, m_13C, m_140, m_144, m_148, m_14C, m_150, m_154;
    int m_158, m_15C, m_160, m_164, m_168, m_16C, m_170;
    int m_174[3]; // by D_800D5F30
};
// A motor's values (0x34 bytes)
struct Mot41 {
    int m_00, m_04, m_08, m_0C, m_10, m_14, m_18, m_1C, m_20, m_24, m_28, m_2C, m_30;
};
struct Rul41 {
    u8 m_00[0x52C];
    int m_52C;
};
struct Rc41 {
    u8 m_00[0x10];
    Rul41 *m_10;
};
struct Game41 {
    u8 m_00[0x378];
    Rc41 *m_378;
    u8 m_37C[0x14];
    Mot41 *m_390; // by bike
    u8 m_394[0x58];
    Trk41 *m_3EC;
};
int func_8001D018(Trk41 *t, void *a, void *b);
void func_80063C60(Obj41 *o, int *p, u8 *q, int a, int k, Obj41 *other, int d);
void func_80063A68(Obj41 *o, Game41 *g);
struct Cell41 {
    u8 m_00[7];
    s8 m_07; // the lane's side
    u8 m_08[6];
    u8 m_0E;
    u8 m_0F[0x11];
};
// A point of a section (20 bytes): where, and its heading
struct Pt41 {
    Vec41 m_00;
    short m_0C[2];
    short m_10;
    short m_12;
};
struct Row41 {
    u8 m_00[4];
    Pt41 *m_04;
    Cell41 **m_08;
    u8 m_0C[8];
};
struct Tab41 {
    u8 m_00[0x28];
    Row41 *m_28;
};
extern int D_800CB44C;
extern int D_800CB428, D_800CB430, D_800CB434, D_800CB438, D_800CB43C, D_800CB440, D_800CB444;
extern int D_800CB450, D_800CB454, D_800CB458, D_800CB45C, D_800CB460, D_800CB464, D_800CB468;
extern int D_800CB46C, D_800CB470, D_800CB474;
extern int D_800D5F30;
extern int D_800D5F4C;
void func_80064AA0(Obj41 *o, Game41 *g, Bk41 *b, int k);
void func_80097E4C(void *a, int x, int y, int z);
Obj41 *func_80062E40(Obj41 *o); // the base's constructor, returning this
void func_800643E4(Obj41 *o);
void func_8006348C(Obj41 *o, int *a, int *b);
void func_80064310(void *o, short *v);
extern short D_800BF3A0[][2]; // sines and cosines by angle (4.12)
extern int D_800CB448;
void func_8009964C(Vec41 *v, int k);
void func_80099D48(Vec41 *v, int shift);
void func_800998D0(Vec41 *out, Vec41 *a, Vec41 *b);
int func_8009923C(Vec41 *v);
void func_800650F8(Obj41 *o, int *out, Tab41 *t);
void func_800642D0(Obj41 *o);
Obj41 *func_80064340(Obj41 *o);
int func_80065044(Obj41 *o, int i, int j, int k, int s, int max, Tab41 *t);
}

int func_80063428(Obj41 *o) {
    return o->m_CC;
}

void func_80063434(Obj41 *o, int v) {
    o->m_CC = v;
}

int func_8006343C(Obj41 *o) {
    return o->m_D0;
}

void func_80063448(Obj41 *o, int v) {
    o->m_D0 = v;
}

/* The angle in 4096ths of a turn. */
int func_80063450(Obj41 *o) {
    return (o->m_D0 << 12) / 25736;
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_41", func_8006347C);

void func_8006348C(Obj41 *o, int *a, int *b) {
    if (a) {
        *a = o->m_1F4;
    }
    if (b) {
        *b = o->m_1F8;
    }
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_41", func_800634BC);

// A vector copied with all three loads first (chunk_47's VecCopyL)
static inline void VecCopyL41(Vec41 *d, Vec41 *s) {
    int x = s->x;
    int y = s->y;
    int z = s->z;

    d->x = x;
    d->y = y;
    d->z = z;
}

static inline void StCopy41(St41 *d, St41 *s) {
    d->m_00 = s->m_00;
    d->m_04 = s->m_04;
    VecCopyL41(&d->m_08, &s->m_08);
    VecCopyL41(&d->m_14, &s->m_14);
}

/* The states copied from s. */
void func_80063848(Obj41 *d, Obj41 *s) {
    StCopy41(d->m_220, s->m_220);
    StCopy41(d->m_224, s->m_224);
    StCopy41(d->m_228, s->m_228);
    StCopy41(d->m_230, s->m_230);
    StCopy41(d->m_22C, s->m_22C);
}

int func_80063A04(Obj41 *o) {
    int r = 0;

    if (o->m_22C && o->m_22C->m_00) {
        r = o->m_22C->m_00->m_04;
    }
    return r;
}

int func_80063A30(Obj41 *o) {
    int r = 0;

    if (o->m_230 && o->m_230->m_00) {
        r = o->m_230->m_00->m_04;
    }
    return r;
}

int func_80063A5C(Obj41 *o) {
    return o->m_134;
}

#ifdef NON_MATCHING
// The outer loop's shape (the original enters it with a jump into the body, 2 kept in $s7) and the registers: 85 off with -fmove-all-movables
/* Each bike of mode 2 in turn: the others within range ahead and behind passed to func_80063C60. */
void func_80063A68(Obj41 *o, Game41 *g) {
    Bk41 *self = o->m_54;
    int k;

    switch (g->m_378->m_10->m_52C) {
    case 1:
    case 4:
        k = 0x3000;
        break;
    case 2:
    case 5:
    case 6:
        k = 0x4000;
        break;
    case 3:
    case 7:
    case 8:
        k = 0x2000;
        break;
    }
    do {
        if (!o->m_14D) {
            Trk41 *t = g->m_3EC;

            if (t->m_34 && o->m_1B4) {
                Bk41 *b = o->m_1B8;

                for (;;) {
                    Obj41 *p = b->m_30;
                    int d = func_8001D018(t, &o->m_1B4, &p->m_1B4);

                    if (t->m_38 < d || d < -0x1FFF) {
                        break;
                    }
                    func_80063C60(o, p->m_64, p->m_11C, p->m_10C, k, p, d);
                    b = p->m_1B8;
                    if (b == o->m_54) {
                        break;
                    }
                }
                b = o->m_1B4;
                for (;;) {
                    Obj41 *p = b->m_30;
                    int d = func_8001D018(t, &o->m_1B4, &p->m_1B4);

                    if (t->m_38 < d || d <= 0) {
                        break;
                    }
                    func_80063C60(o, p->m_64, p->m_11C, p->m_10C, k, p, d);
                    b = p->m_1B4;
                    if (b == o->m_54) {
                        break;
                    }
                }
            }
        }
        o = o->m_1B4->m_30;
    } while (((o->m_54->m_00 << 26) >> 27) == 2 && o->m_54 != self);
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_41", func_80063A68);
#endif

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_41", func_80063C60);

void func_800642D0(Obj41 *o) {
    if (++o->m_15C > 16) {
        o->m_15C = 16;
    }
    o->m_160 <<= 2;
    o->m_160 |= o->m_158 & 3;
}

void func_80064310(void *o, short *v) {
    func_80097E4C(o, v[0], v[1], v[2]);
}

/* The constructor: the base's, the vtable, eight elements with empty constructors, its fields. */
Obj41 *func_80064340(Obj41 *o) {
    int *v;
    short *w;
    u8 *q;
    int j;

    func_80062E40(o);
    o->m_50 = &D_800C7684;
    q = (u8 *)o;
    j = 7;
    do {
        q += 4;
    } while (--j != -1);
    v = o->m_64;
    w = o->m_70;
    o->m_59 = 0;
    o->m_5A = 0;
    v[0] = 0;
    v[1] = 0;
    v[2] = 0;
    w[0] = 0;
    w[1] = 0;
    w[2] = 0;
    func_800643E4(o);
    D_800CB44C = 0;
    return o;
}

void func_800643BC(Obj41 *o, int f) {
    o->m_50 = &D_800C7684;
    func_80062EEC(o, f);
}

static inline void SetSVec41(SVec41 *v, int x, int y, int z) {
    v->x = x;
    v->y = y;
    v->z = z;
}

static inline void SetVec41(Vec41 *v, int x, int y, int z) {
    v->x = x;
    v->y = y;
    v->z = z;
}

// A matrix's translation set, all three loads first
static inline void SetTrans41(Mat41 *m, Vec41 *v) {
    int x = v->x;
    int y = v->y;
    int z = v->z;

    m->t.x = x;
    m->t.y = y;
    m->t.z = z;
}

// A rotation matrix from three angles, its translation cleared
static inline void Rot41(Mat41 *m, SVec41 *a, int x, int y, int z) {
    SetSVec41(a, x, y, z);
    func_8006973C(m, a);
    m->t.z = 0;
    m->t.y = 0;
    m->t.x = 0;
}

// A matrix's translation
static inline Vec41 *MatTrans41(Mat41 *m) {
    return &m->t;
}

static inline void Angles41(Obj41 *o) {
    Mat41 m1;
    Mat41 m2;
    Mat41 m3;
    SVec41 a;
    Mat41 m4;
    SVec41 b;
    Mat41 m5;
    SVec41 c;
    short *p = o->m_70;

    o->m_298 = p[0];
    o->m_29C = p[1];
    o->m_2A0 = p[2];
    Rot41(&m3, &a, 0, o->m_29C, 0);
    Rot41(&m4, &b, -o->m_298, 0, 0);
    func_80098674(&m3, &m4, &m2);
    func_8009887C(&m4.t, &m2.t);
    func_800997D0(MatTrans41(&m2), &m3.t);
    Rot41(&m5, &c, 0, 0, -o->m_2A0);
    func_80098674(&m2, &m5, &m1);
    func_8009887C(&m5.t, &m1.t);
    func_800997D0(&m1.t, MatTrans41(&m2));
    o->m_2A4 = m1;
}

/* The matrix from the angles (y, then x, then z), the forward vector through it, the positions kept. */
void func_800643E4(Obj41 *o) {
    Angles41(o);
    {
        Vec41 out;
        Vec41 v;
        Mat41 *m = &o->m_2A4;
        Vec41 *po = &out;

        SetVec41(&v, 0, 0, 0x1000);
        func_80098768(m, &v, po);
        func_800997D0(po, MatTrans41(&o->m_2A4));
        VecCopyL41(&o->m_2FC, po);
        VecCopyL41(&o->m_2E4, &o->m_2FC);
        m->t.z = 0;
        m->t.y = 0;
        m->t.x = 0;
        SetTrans41(m, (Vec41 *)o->m_64);
        VecCopyL41(&o->m_26C, &o->m_78);
        VecCopyL41(&o->m_78, (Vec41 *)o->m_64);
    }
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_41", func_80064608);

void func_80064AA0(Obj41 *o, Game41 *g, Bk41 *b, int k) {
    int f, h, top;
    int v;

    if (b->m_2C->m_3EC == 5) {
        o->m_334 = 700;
    } else {
        o->m_334 = 350;
    }
    switch (D_800D5F30) {
    case 0:
        f = g->m_3EC->m_174[0] + D_800D5F4C;
        break;
    case 1:
        f = g->m_3EC->m_174[1] + D_800D5F4C;
        break;
    default:
        f = g->m_3EC->m_174[2] + D_800D5F4C;
        break;
    }
    if (f < 0x199) {
        f = 0x199;
    }
    h = 0x2000 - f;
    o->m_45C = MULSHIFT(g->m_390[k].m_0C, f, 12);
    o->m_460 = g->m_390[k].m_10;
    o->m_470 = MULSHIFT(g->m_390[k].m_14, f, 12);
    o->m_46C = MULSHIFT(g->m_390[k].m_08, f, 12);
    top = MULSHIFT(g->m_390[k].m_00, f, 12);
    o->m_464 = top;
    o->m_468 = g->m_390[k].m_04;
    o->m_474 = g->m_390[k].m_18;
    o->m_478 = MULSHIFT(g->m_390[k].m_1C, h, 12);
    o->m_47C = MULSHIFT(g->m_390[k].m_20, h, 12);
    o->m_480 = MULSHIFT(g->m_390[k].m_24, f, 12);
    o->m_484 = MULSHIFT(g->m_390[k].m_28, f, 12);
    o->m_488 = MULSHIFT(g->m_390[k].m_2C, f, 12);
    o->m_48C = g->m_390[k].m_30;
    o->m_118 = top;
    D_800CB450 = MULSHIFT(g->m_3EC->m_138, f, 12);
    D_800CB474 = MULSHIFT(g->m_3EC->m_13C, f, 12);
    D_800CB468 = g->m_3EC->m_8C;
    D_800CB430 = g->m_3EC->m_140;
    D_800CB438 = g->m_3EC->m_144;
    D_800CB45C = g->m_3EC->m_148;
    D_800CB460 = g->m_3EC->m_14C;
    D_800CB458 = MULSHIFT(g->m_3EC->m_150, h, 12);
    D_800CB448 = MULSHIFT(g->m_3EC->m_154, f, 12);
    D_800CB454 = g->m_3EC->m_158;
    D_800CB428 = g->m_3EC->m_15C;
    D_800CB43C = g->m_3EC->m_160;
    D_800CB434 = g->m_3EC->m_164;
    D_800CB444 = MULSHIFT(g->m_3EC->m_168, f, 12);
    D_800CB440 = MULSHIFT(g->m_3EC->m_16C, f, 12);
    D_800CB464 = MULSHIFT(g->m_3EC->m_170, f, 12);
    switch (o->m_54->m_2C->m_3EC) {
    case 1:
        D_800CB46C = 1500;
        D_800CB470 = 800;
        D_800CB44C = 1;
        break;
    case 2:
        D_800CB46C = 1500;
        D_800CB470 = 800;
        D_800CB44C = 1;
        break;
    case 3:
        D_800CB46C = 1500;
        D_800CB470 = 800;
        D_800CB44C = 1;
        break;
    case 4:
        D_800CB46C = 1500;
        D_800CB470 = 800;
        D_800CB44C = 1;
        break;
    case 5:
        D_800CB46C = 1500;
        D_800CB470 = 800;
        D_800CB44C = 0;
        break;
    case 6:
        D_800CB46C = 1500;
        D_800CB470 = 800;
        D_800CB44C = 0;
        break;
    }
    {
        int r = g->m_378->m_10->m_52C;

        o->m_450 = k;
        o->m_3F0 = r;
    }
}

int func_80065044(Obj41 *o, int i, int j, int k, int s, int max, Tab41 *t) {
    int v = ((Cell41 *)((j << 5) + (u8 *)t->m_28[i].m_08[k]))->m_0E << 11;
    int b = o->m_468;
    int r;

    if (b < v) {
        v = (s * ((v - b) >> 2) >> 10) + b;
    }
    r = v;
    if (o->m_3F0 == 7) {
        r <<= 1;
    }
    if (o->m_494 & 1) {
        r >>= 1;
    }
    if (max < r) {
        r = max;
    }
    return r;
}

// A point of a section moved sideways to its lane
static inline void LanePt41(Row41 *r, int i, int k, Vec41 *out, Vec41 *d) {
    VecCopyL41(out, &r->m_04[i].m_00);
    d->x = D_800BF3A0[(r->m_04[i].m_10 - 0x400) & 0xFFF][1];
    d->y = 0;
    d->z = D_800BF3A0[(r->m_04[i].m_10 - 0x400) & 0xFFF][0];
    func_8009964C(d, r->m_08[k][i].m_07 << 9);
    func_80099D48(d, 12);
    func_800997D0(out, d);
}

#ifdef NON_MATCHING
// Two sections' lane points and their height difference over the distance: only the second row's address, its index and table loaded into swapped registers (5 off).
void func_800650F8(Obj41 *o, int *out, Tab41 *t) {
    if (out) {
        int i = o->m_1F8;
        int h0 = t->m_28[o->m_1F4].m_08[o->m_210][i].m_0E << 11;
        int h1 = t->m_28[o->m_1FC].m_08[o->m_210][o->m_200].m_0E << 11;
        Vec41 p, q, d;
        int k;

        if (h0 == h1) {
            *out = 0;
            return;
        }
        LanePt41(&t->m_28[o->m_1F4], i, o->m_210, &p, &d);
        LanePt41(&t->m_28[o->m_1FC], o->m_200, o->m_210, &q, &d);
        k = (h1 - h0) * ((h0 + h1) >> 1);
        func_800998D0(&d, &q, &p);
        k /= func_8009923C(&d);
        *out = k;
        if (D_800CB448 < k) {
            *out = D_800CB448;
        }
    }
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_41", func_800650F8);
#endif
