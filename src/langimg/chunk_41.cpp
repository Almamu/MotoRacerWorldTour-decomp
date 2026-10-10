#include "common.h"

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
    void *m_50; // the vtable
    u8 m_54[5];
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
    u8 m_D4[0x60];
    int m_134;
    u8 m_138[0x20];
    u8 m_158;
    u8 m_159[3];
    u32 m_15C; // up to 16
    int m_160; // two bits shifted in each time
    u8 m_164[0x90];
    int m_1F4;
    int m_1F8;
    u8 m_1FC[0x24];
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
    u8 m_308[0xE8];
    int m_3F0;
    u8 m_3F4[0x74];
    int m_468;
    u8 m_46C[0x28];
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
void func_80098674(Mat41 *a, Mat41 *b, Mat41 *out);
void func_8009887C(Vec41 *v, Vec41 *out);
void func_800997D0(Vec41 *v, Vec41 *a);
void func_80098768(Mat41 *m, Vec41 *v, Vec41 *out);
void func_800643E4(Obj41 *o);
struct Cell41 {
    u8 m_00[0xE];
    u8 m_0E;
    u8 m_0F[0x11];
};
struct Row41 {
    u8 m_00[8];
    Cell41 **m_08;
    u8 m_0C[8];
};
struct Tab41 {
    u8 m_00[0x28];
    Row41 *m_28;
};
extern int D_800CB44C;
void func_80097E4C(void *a, int x, int y, int z);
void func_80062E40(Obj41 *o);
void func_800643E4(Obj41 *o);
void func_8006348C(Obj41 *o, int *a, int *b);
void func_80064310(void *o, short *v);
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

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_41", func_80063A68);

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

#ifdef NON_MATCHING
// Registers: the vtable's address in $v1, the loop's count in $v0 first (4 off)
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
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_41", func_80064340);
#endif

void func_800643BC(Obj41 *o, int f) {
    o->m_50 = &D_800C7684;
    func_80062EEC(o, f);
}

static inline void SetSVec41(SVec41 *v, int x, int y, int z) {
    v->x = x;
    v->y = y;
    v->z = z;
}

#ifdef NON_MATCHING
// The local matrices' stack addresses: the original computes them for each call, ours keeps them in saved registers (the open problem of chunk_02b)
/* The matrix from the angles (y, then x, then z), the forward vector through it, the positions kept. */
void func_800643E4(Obj41 *o) {
    {
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
        SetSVec41(&a, 0, o->m_29C, 0);
        func_8006973C(&m3, &a);
        m3.t.z = 0;
        m3.t.y = 0;
        m3.t.x = 0;
        SetSVec41(&b, -o->m_298, 0, 0);
        func_8006973C(&m4, &b);
        m4.t.z = 0;
        m4.t.y = 0;
        m4.t.x = 0;
        func_80098674(&m3, &m4, &m2);
        func_8009887C(&m4.t, &m2.t);
        func_800997D0(&m2.t, &m3.t);
        SetSVec41(&c, 0, 0, -o->m_2A0);
        func_8006973C(&m5, &c);
        m5.t.z = 0;
        m5.t.y = 0;
        m5.t.x = 0;
        func_80098674(&m2, &m5, &m1);
        func_8009887C(&m5.t, &m1.t);
        func_800997D0(&m1.t, &m2.t);
        o->m_2A4 = m1;
    }
    {
        Vec41 out;
        Vec41 v;

        v.x = 0;
        v.y = 0;
        v.z = 0x1000;
        func_80098768(&o->m_2A4, &v, &out);
        func_800997D0(&out, &o->m_2A4.t);
        VecCopyL41(&o->m_2FC, &out);
        VecCopyL41(&o->m_2E4, &o->m_2FC);
        o->m_2A4.t.z = 0;
        o->m_2A4.t.y = 0;
        o->m_2A4.t.x = 0;
        VecCopyL41(&o->m_2A4.t, (Vec41 *)o->m_64);
        VecCopyL41(&o->m_26C, &o->m_78);
        VecCopyL41(&o->m_78, (Vec41 *)o->m_64);
    }
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_41", func_800643E4);
#endif

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_41", func_80064608);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_41", func_80064AA0);

#ifdef NON_MATCHING
// The cell's address: the original adds j * 32 to the row's pointer, ours the other way round (2 off)
int func_80065044(Obj41 *o, int i, int j, int k, int s, int max, Tab41 *t) {
    int v = t->m_28[i].m_08[k][j].m_0E << 11;
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
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_41", func_80065044);
#endif

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_41", func_800650F8);
