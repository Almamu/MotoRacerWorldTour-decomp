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
#define ABS67(a) (((a) ^ ((a) >> 31)) - ((a) >> 31))
#define MIN67(a, b) ((a) < (b) ? (a) : (b))
#define MAX67(a, b) ((a) > (b) ? (a) : (b))
extern int D_800C8D98; // a table
extern SinCos67 D_800BF3A0[];
extern u16 D_800B8884[]; // an arc cosine table
int ratan2(long y, long x);
int func_80097944(u32 lo, u32 hi, int d);
Vec67 *func_80098768(Mat67 *m, Vec67 *v, Vec67 *out); // returns out
void func_8009793C(void);
int func_80097A68(int a, int s, int b);
// A script's value or operation (8 bytes): the value or its address, the
// operation, the value's kind (1 a function, 2 a variable's address, 3 and
// 4 a constant)
struct Ent67 {
    int m_00;
    u16 m_04;
    u16 m_06;
    Ent67() {
        m_00 = 0;
        m_04 = 0;
        m_06 = 0;
    }
    ~Ent67() {
    }
};
// A variable's slot (8 bytes): set once written
struct Slot67 {
    int m_00;
    int m_04;
};
// The script's variables: their values and slots
struct Vars67 {
    int *m_00;
    Slot67 *m_04;
    u8 m_08[0xC];
    int m_14; // how many
};
// A function called by a script
struct Fn67 {
    u8 m_00[0x20];
    int (*m_20)(int a, int *args, int n);
    int m_24;
    int m_28; // its arguments
};
// A script: its operations and variables
struct Script67 {
    Ent67 *m_00;
    int m_04; // the error
    int m_08; // how many operations
    Vars67 *m_0C;
};
int func_80097128(Script67 *s);
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
// A quaternion: x, y, z, w
struct Quat67 {
    short x;
    short y;
    short z;
    short w;
};
int func_8009923C(Vec67 *v);
int func_80097AC8(int x);
void func_80098E9C(Vec67 *v);
SVec67 *func_800984A0(Mat67 *m, SVec67 *r);
void func_80098BD8(Quat67 *q, Mat67 *m);
void func_800989DC(Quat67 *q, Vec67 *o, Vec67 *v);
void func_80099CB0(Vec67 *out, Vec67 *a, Vec67 *b);
void func_80099DCC(Vec67 *out, Vec67 *v, int s);
void func_800998D0(Vec67 *out, Vec67 *a, Vec67 *b);
void func_80098F94(Vec67 *v, int s);
Mat67 *func_80098224(Mat67 *m, Mat67 *s);
Mat67 *func_80097D08(Mat67 *m, Vec67 *a, Vec67 *b);
}

static inline void SetVec67(Vec67 *v, int x, int y, int z) {
    v->x = x;
    v->y = y;
    v->z = z;
}

static inline void VecCopyL67(Vec67 *d, Vec67 *s) {
    int x = s->x;
    int y = s->y;
    int z = s->z;

    d->x = x;
    d->y = y;
    d->z = z;
}

// The variable slot of an address, or 0
static inline Slot67 *Slot67Of(Vars67 *v, int *p) {
    Slot67 *r = 0;

    if (p >= v->m_00 && p < v->m_00 + v->m_14) {
        r = &v->m_04[p - v->m_00];
    }
    return r;
}

int func_80097128(Script67 *s) {
    int vals[256];
    int n = 0;
    Ent67 ents[256];
    int i;
    int v;
    u16 t;
    int k;

    for (i = 0; i < s->m_08; i++) {
        if (s->m_00[i].m_04 != 0 && s->m_00[i].m_04 != 18) {
            if (ents[n - 1].m_06 == 2) {
                Slot67 *sl = Slot67Of(s->m_0C, (int *)ents[n - 1].m_00);

                if (sl && !sl->m_04) {
                    goto unset;
                }
            }
            if ((u32)(s->m_00[i].m_04 - 2) >= 2 && ents[n - 2].m_06 == 2) {
                Slot67 *sl = Slot67Of(s->m_0C, (int *)ents[n - 2].m_00);

                if (sl && !sl->m_04) {
                    goto unset;
                }
            }
        }
        switch (s->m_00[i].m_04) {
        case 0:
            switch (s->m_00[i].m_06) {
            case 2:
                v = *(int *)s->m_00[i].m_00;
                break;
            case 3:
            case 4:
                v = s->m_00[i].m_00;
                break;
            }
            vals[n] = v;
            ents[n] = s->m_00[i];
            n++;
            break;
        case 17:
            vals[n - 1] = *(int *)vals[n - 1];
            break;
        case 1:
            if (s->m_00[i].m_06 == 1) {
                Fn67 *f = (Fn67 *)s->m_00[i].m_00;
                int r = f->m_20(f->m_24, (int *)((n << 2) + (int)vals), f->m_28);
                int k;

                vals[n - ((Fn67 *)s->m_00[i].m_00)->m_28] = r;
                k = n + 1;
                n = k - ((Fn67 *)s->m_00[i].m_00)->m_28;
            }
            break;
        case 18:
            k = ents[0].m_06;
            if (k == 3) {
                ents[0].m_00 = vals[n - 2];
            }
            t = k;
            if (t == 2) {
                goto set;
            }
            if (t == 3) {
            set:
                int x = vals[n - 1];
                Slot67 *sl;

                ents[0].m_04 = 0;
                switch (ents[0].m_06) {
                case 2:
                case 3:
                    *(int *)ents[0].m_00 = x;
                    break;
                case 4:
                    ents[0].m_00 = x;
                    break;
                }
                sl = Slot67Of(s->m_0C, (int *)ents[0].m_00);
                if (sl) {
                    sl->m_04 = 1;
                }
                return *(int *)ents[0].m_00;
            }
            s->m_04 = 3;
            return 0;
        case 8:
            vals[n - 2] = vals[n - 2] + vals[n - 1];
            n--;
            break;
        case 7:
            vals[n - 2] = vals[n - 2] - vals[n - 1];
            n--;
            break;
        case 4:
            vals[n - 2] = vals[n - 2] * vals[n - 1];
            n--;
            break;
        case 5:
            if (!vals[n - 1]) {
                vals[n - 2] = 0;
            } else {
                vals[n - 2] = vals[n - 2] / vals[n - 1];
            }
            n--;
            break;
        case 6:
            vals[n - 2] = vals[n - 2] % vals[n - 1];
            n--;
            break;
        case 14:
            vals[n - 2] = vals[n - 2] == vals[n - 1];
            n--;
            break;
        case 13:
            vals[n - 2] = vals[n - 2] != vals[n - 1];
            n--;
            break;
        case 15:
            vals[n - 2] = vals[n - 2] && vals[n - 1];
            n--;
            break;
        case 16:
            vals[n - 2] = vals[n - 2] || vals[n - 1];
            n--;
            break;
        case 3:
            if (vals[n - 1]) {
                vals[n - 1] = 0;
            } else {
                vals[n - 1] = 1;
            }
            break;
        case 2:
            vals[n - 1] = -vals[n - 1];
            break;
        case 9:
            vals[n - 2] = vals[n - 2] < vals[n - 1];
            n--;
            break;
        case 10:
            vals[n - 2] = vals[n - 2] > vals[n - 1];
            n--;
            break;
        case 11:
            vals[n - 2] = vals[n - 2] <= vals[n - 1];
            n--;
            break;
        case 12:
            vals[n - 2] = vals[n - 2] >= vals[n - 1];
            n--;
            break;
        }
    }
    return vals[0];
unset:
    s->m_04 = 4;
    return 0;
}

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

/* A matrix looking from a to b, y up. */
Mat67 *func_80097D08(Mat67 *m, Vec67 *a, Vec67 *b) {
    Vec67 z;
    Vec67 x;
    Vec67 y;
    Vec67 d;
    Vec67 up;

    func_800998D0(&d, b, a);
    VecCopyL67(&z, &d);
    func_80098E9C(&z);
    SetVec67(&up, 0, 0x1000, 0);
    func_80099CB0(&d, &up, &z);
    VecCopyL67(&x, &d);
    func_80098E9C(&x);
    func_80099CB0(&d, &z, &x);
    VecCopyL67(&y, &d);
    func_80098E9C(&y);
    m->t.z = 0;
    m->t.y = 0;
    m->t.x = 0;
    m->m[0][0] = x.x;
    m->m[1][0] = x.y;
    m->m[2][0] = x.z;
    m->m[0][1] = y.x;
    m->m[1][1] = y.y;
    m->m[2][1] = y.z;
    m->m[0][2] = z.x;
    m->m[1][2] = z.y;
    m->m[2][2] = z.z;
    return m;
}

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
        int x = v.x;
        int y = v.y;
        int z = v.z;

        x = -x;
        y = -y;
        z = -z;
        m->t.x = x;
        m->t.y = y;
        m->t.z = z;
    }
}

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

/* A matrix looking along s's third column, y up. */
Mat67 *func_80098224(Mat67 *m, Mat67 *s) {
    Vec67 up;
    Vec67 fwd;
    Vec67 side;
    Vec67 u;
    Vec67 t;
    Vec67 *pu;

    SetVec67(&up, 0, 0x1000, 0);
    fwd.x = s->m[2][0];
    fwd.y = s->m[2][1];
    fwd.z = s->m[2][2];
    func_80099CB0(&side, &up, &fwd);
    func_80098E9C(&side);
    pu = &u;
    func_80099CB0(&t, &fwd, &side);
    func_80099DCC(pu, &t, 12);
    VecCopyL67(&up, &u);
    m->t.z = 0;
    m->t.y = 0;
    m->t.x = 0;
    m->m[0][0] = side.x;
    m->m[1][0] = side.y;
    m->m[2][0] = side.z;
    m->m[0][1] = up.x;
    m->m[1][1] = up.y;
    m->m[2][1] = up.z;
    m->m[0][2] = fwd.x;
    m->m[1][2] = fwd.y;
    m->m[2][2] = fwd.z;
    return m;
}

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

/* The angles of a rotation matrix, the other way (through the cosine of y). */
SVec67 *func_800984A0(Mat67 *m, SVec67 *r) {
    int a = m->m[0][2];
    int c = func_80097AC8(0x1000000 - a * a);
    int y;
    int x;

    if (c > 0) {
        int w;

        r->y = ratan2(a, c);
        w = (m->m[2][2] << 12) / c;
        r->x = ratan2(-(m->m[1][2] << 12) / c, w);
        x = (m->m[0][0] << 12) / c;
        y = -(m->m[0][1] << 12) / c;
    } else {
        r->y = a >= 0 ? 0x400 : -0x400;
        r->x = 0;
        x = m->m[1][1];
        y = m->m[1][0];
    }
    r->z = ratan2(y, x);
    return r;
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_67", func_800985A8);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_67", func_80098674);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_67", func_80098768);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_67", func_8009887C);

/* v scaled by the sine of a, the cosine in the fourth short. */
SVec67 *func_80098968(SVec67 *d, Vec67 *v, int a) {
    int sn = D_800BF3A0[(a >> 1) & 0xFFF].s;

    d->x = v->x * sn >> 12;
    d->y = v->y * sn >> 12;
    d->z = v->z * sn >> 12;
    d->pad = D_800BF3A0[(a >> 1) & 0xFFF].c;
    return d;
}

/* Vector v turned by quaternion q into o (o's old value used for its dot
 * product with q's axis), in 4.12. */
void func_800989DC(Quat67 *q, Vec67 *o, Vec67 *v) {
    int s = (q->w * q->w - q->x * q->x - q->y * q->y - q->z * q->z) << 4 >> 16;
    int d = (q->x * o->x + q->y * o->y + q->z * o->z) << 4 >> 16;

    o->x = (s * v->x + 2 * (q->x * d) +
            (((q->w * q->y) >> 11) * v->z - ((q->w * q->z) >> 11) * v->y)) >>
           12;
    o->y = (s * v->y + 2 * (q->y * d) +
            (((q->w * q->z) >> 11) * v->x - ((q->w * q->x) >> 11) * v->z)) >>
           12;
    o->z = (s * v->z + 2 * (q->z * d) +
            (((q->w * q->x) >> 11) * v->y - ((q->w * q->y) >> 11) * v->x)) >>
           12;
}

#ifdef NON_MATCHING
// Registers and the stores' order (the same products and sums)
/* A rotation matrix from a quaternion. */
void func_80098BD8(Quat67 *q, Mat67 *m) {
    int y = q->y;
    int z = q->z;
    int x = q->x;
    int w = q->w;
    int yy = y * y;
    int zz = z * z;
    int xy = x * y;
    int wz = w * z;
    int xz = x * z;
    int wy = w * y;
    int xx = x * x;
    int yz;
    int wx;

    m->t.x = 0;
    m->t.y = 0;
    m->t.z = 0;
    yz = y * z;
    wx = w * x;
    m->m[0][1] = (xy - wz) >> 11;
    m->m[1][0] = (xy + wz) >> 11;
    m->m[0][0] = 0x1000 - ((yy + zz) >> 11);
    m->m[0][2] = (xz + wy) >> 11;
    m->m[1][1] = 0x1000 - ((xx + zz) >> 11);
    m->m[2][0] = (xz - wy) >> 11;
    m->m[2][2] = 0x1000 - ((xx + yy) >> 11);
    m->m[1][2] = (yz - wx) >> 11;
    m->m[2][1] = (yz + wx) >> 11;
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_67", func_80098BD8);
#endif

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

#ifdef NON_MATCHING
// The constant 0x3FFFF: the original sets it before each component's load, ours after (in the load's delay)
/* v scaled to a length of 4096. */
void func_80098E9C(Vec67 *v) {
    int len = func_8009923C(v);

    if (len) {
        int l = (u32)len >> 12;
        int t;
        int r;

        t = v->x;
        if (0x3FFFF >= ABS67(t)) {
            r = (t << 12) / len;
        } else {
            r = t / l;
        }
        v->x = r;
        t = v->y;
        if (0x3FFFF >= ABS67(t)) {
            r = (t << 12) / len;
        } else {
            r = t / l;
        }
        v->y = r;
        t = v->z;
        if (0x3FFFF >= ABS67(t)) {
            r = (t << 12) / len;
        } else {
            r = t / l;
        }
        v->z = r;
    }
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_67", func_80098E9C);
#endif

#ifdef NON_MATCHING
// Registers and order after the halving: the original reads each component before the limit's shift
/* v scaled to a length of 1 << s. */
void func_80098F94(Vec67 *v, int s) {
    int len = func_8009923C(v);

    if (len < 0) {
        int x;
        int y;
        int z;

        len = (u32)len >> 1;
        x = v->x;
        y = v->y;
        z = v->z;
        v->x = x >> 1;
        v->y = y >> 1;
        v->z = z >> 1;
    }
    if (len) {
        int lim = 1 << (30 - s);
        int t;

        t = v->x;
        if (ABS67(t) < lim) {
            v->x = (t << s) / len;
        } else {
            v->x = func_80097A68(t, s, len);
        }
        t = v->y;
        if (ABS67(t) < lim) {
            v->y = (t << s) / len;
        } else {
            v->y = func_80097A68(t, s, len);
        }
        t = v->z;
        if (ABS67(t) < lim) {
            v->z = (t << s) / len;
        } else {
            v->z = func_80097A68(t, s, len);
        }
    }
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_67", func_80098F94);
#endif
