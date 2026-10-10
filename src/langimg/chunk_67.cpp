#include "common.h"

/* Matrices and vectors: transposes, inverses, angles, minima (docs/matching/issue-68-langimg-chunk67.md) */

extern "C" {
struct Vec67 {
    int x;
    int y;
    int z;
};
struct SVec67 {
    short x;
    short y;
    short z;
    short pad;
};
struct Mat67 {
    short m[3][3];
    short pad;
    Vec67 t;
};
// A sine and cosine pair
struct SinCos67 {
    short s;
    short c;
};
struct Time67 {
    int m_t : 30;
    u32 m_f : 2;
};
extern Time67 D_800D6124;
#define MIN67(a, b) ((a) < (b) ? (a) : (b))
#define MAX67(a, b) ((a) > (b) ? (a) : (b))
extern int D_800C8D98; // a table
extern SinCos67 D_800BF3A0[];
extern u16 D_800B8884[]; // an arc cosine table
int ratan2(long y, long x);
int func_80097944(u32 lo, u32 hi, int d);
void func_80098768(Mat67 *m, Vec67 *v, Vec67 *out);
void func_8009793C(void);
int func_80097A68(int a, int s, int b);
void func_80098090(Mat67 *d, Mat67 *s);
void func_800980F4(Mat67 *m);
Mat67 *func_80098178(Mat67 *d, Mat67 *s);
SVec67 *func_80098418(Mat67 *m, SVec67 *r);
SVec67 *func_80098968(SVec67 *d, Vec67 *v, int a);
int func_80098CE4(void);
void func_80098D04(int i, int v);
void func_80098DD4(Vec67 *a, Vec67 *b);
void func_80098E38(Vec67 *a, Vec67 *b);
int func_80098D1C(int i);
Mat67 *func_80098354(Mat67 *m, Mat67 *s);
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_67", func_80097128);

void func_8009793C(void) {
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_67", func_80097944);

#ifdef NON_MATCHING
// Registers: the original copies the shift, not the dividend, into $v0
/* (a << s) / b through a 64-bit division. */
int func_80097A68(int a, int s, int b) {
    int nb = b >> 31;
    int na;
    int r;

    if (nb) {
        b = -b;
    }
    na = a >> 31;
    if (na) {
        a = -a;
    }
    r = func_80097944(a << s, (u32)a >> (32 - s), b);
    if (na != nb) {
        r = -r;
    }
    return r;
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_67", func_80097A68);
#endif

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_67", func_80097AC8);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_67", func_80097B7C);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_67", func_80097D08);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_67", func_80097E4C);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_67", func_80097F68);

/* d = s's transpose, its translation copied. */
void func_80098090(Mat67 *d, Mat67 *s) {
    short a;
    short b;
    short c;
    int x;
    int y;
    int z;

    a = s->m[0][0];
    b = s->m[1][0];
    c = s->m[2][0];
    d->m[0][0] = a;
    d->m[0][1] = b;
    d->m[0][2] = c;
    a = s->m[0][1];
    b = s->m[1][1];
    c = s->m[2][1];
    d->m[1][0] = a;
    d->m[1][1] = b;
    d->m[1][2] = c;
    a = s->m[0][2];
    b = s->m[1][2];
    c = s->m[2][2];
    d->m[2][0] = a;
    d->m[2][1] = b;
    d->m[2][2] = c;
    x = s->t.x;
    y = s->t.y;
    z = s->t.z;
    d->t.x = x;
    d->t.y = y;
    d->t.z = z;
}

// d = -s, all three loads first
static inline void VecNegL67(Vec67 *d, Vec67 *s) {
    int x = s->x;
    int y = s->y;
    int z = s->z;

    d->x = -x;
    d->y = -y;
    d->z = -z;
}

#ifdef NON_MATCHING
// The negated translation: the original loads all three before the first store (9 off)
/* m inverted in place: transposed, its translation through it and negated. */
void func_800980F4(Mat67 *m) {
    Vec67 v;
    short t;

    t = m->m[0][1];
    m->m[0][1] = m->m[1][0];
    m->m[1][0] = t;
    t = m->m[0][2];
    m->m[0][2] = m->m[2][0];
    m->m[2][0] = t;
    t = m->m[1][2];
    m->m[1][2] = m->m[2][1];
    m->m[2][1] = t;
    func_80098768(m, &m->t, &v);
    {
        int x = -v.x;
        int y = -v.y;
        int z = -v.z;

        m->t.x = x;
        m->t.y = y;
        m->t.z = z;
    }
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_67", func_800980F4);
#endif

#ifdef NON_MATCHING
// The return value's move: the original sets it before the negations' loads (9 off)
/* d = s inverted. */
Mat67 *func_80098178(Mat67 *d, Mat67 *s) {
    Vec67 *t = &d->t;
    short a;
    short b;
    short c;

    a = s->m[0][0];
    b = s->m[1][0];
    c = s->m[2][0];
    d->m[0][0] = a;
    d->m[0][1] = b;
    d->m[0][2] = c;
    a = s->m[0][1];
    b = s->m[1][1];
    c = s->m[2][1];
    d->m[1][0] = a;
    d->m[1][1] = b;
    d->m[1][2] = c;
    a = s->m[0][2];
    b = s->m[1][2];
    c = s->m[2][2];
    d->m[2][0] = a;
    d->m[2][1] = b;
    d->m[2][2] = c;
    func_80098768(d, &s->t, t);
    VecNegL67(t, t);
    return d;
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_67", func_80098178);
#endif

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_67", func_80098224);

#ifdef NON_MATCHING
// Registers: the components and their absolute values each one register off (30 differ, the same instructions)
/* A rotation about y from s's direction (x and z of its third column), its length approximated. */
Mat67 *func_80098354(Mat67 *m, Mat67 *s) {
    int x = s->m[0][2];
    int z = s->m[2][2];
    int ax = x < 0 ? -x : x;
    int az = z < 0 ? -z : z;
    int mx = az;
    int k;

    if (az < ax) {
        mx = ax;
    }
    k = 0x1000000 / ((ax + az + mx * 2) / 3);
    m->m[1][0] = 0;
    m->m[0][1] = 0;
    m->m[2][1] = 0;
    m->m[1][2] = 0;
    m->t.z = 0;
    m->t.y = 0;
    m->t.x = 0;
    m->m[1][1] = 0x1000;
    x = x * k >> 12;
    m->m[2][0] = -x;
    m->m[0][2] = x;
    z = z * k >> 12;
    m->m[0][0] = z;
    m->m[2][2] = z;
    return m;
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_67", func_80098354);
#endif

/* The angles of a rotation matrix. */
SVec67 *func_80098418(Mat67 *m, SVec67 *r) {
    r->x = 0x400 - D_800B8884[(0x1000 - m->m[1][2]) >> 1];
    r->y = ratan2(m->m[0][2], m->m[2][2]);
    r->z = ratan2(m->m[1][0], m->m[1][1]);
    return r;
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_67", func_800984A0);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_67", func_800985A8);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_67", func_80098674);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_67", func_80098768);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_67", func_8009887C);

#ifdef NON_MATCHING
// Registers: the table's address and the sine swap $t0 and $t1, the table loaded first (10 off)
/* v scaled by the sine of a, the cosine in the fourth short. */
SVec67 *func_80098968(SVec67 *d, Vec67 *v, int a) {
    int i = (a >> 1) & 0xFFF;
    int sn = D_800BF3A0[i].s;

    d->x = v->x * sn >> 12;
    d->y = v->y * sn >> 12;
    d->z = v->z * sn >> 12;
    d->pad = D_800BF3A0[i].c;
    return d;
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_67", func_80098968);
#endif

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_67", func_800989DC);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_67", func_80098BD8);

int func_80098CE4(void) {
    return D_800D6124.m_t + 0x12345678;
}

void func_80098D04(int i, int v) {
    *(int *)((u8 *)&D_800C8D98 + (i << 2)) = v;
}

/* Slot i's next random number (Park and Miller's, by Schrage's method), 0 to 0x7FFF. */
int func_80098D1C(int i) {
    int *p = (int *)((u8 *)&D_800C8D98 + (i << 2));
    int s = *p;
    int hi;
    int lo;
    int r;

    if (!s) {
        s = *p = (i << 16) + i;
    }
    hi = (s >> 16) * 16807;
    lo = (s & 0xFFFF) * 16807;
    r = lo + ((hi & 0x7FFF) << 16) + (hi >> 15);
    *p = r;
    if (r < 0) {
        r += 0x80000001;
    }
    *p = r;
    if (r > 0x7FFF) {
        r &= 0x7FFF;
    }
    return r;
}

/* a = the smaller of a and b, by component. */
void func_80098DD4(Vec67 *a, Vec67 *b) {
    a->x = MIN67(a->x, b->x);
    a->y = MIN67(a->y, b->y);
    a->z = MIN67(a->z, b->z);
}

/* a = the larger of a and b, by component. */
void func_80098E38(Vec67 *a, Vec67 *b) {
    a->x = MAX67(a->x, b->x);
    a->y = MAX67(a->y, b->y);
    a->z = MAX67(a->z, b->z);
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_67", func_80098E9C);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_67", func_80098F94);
