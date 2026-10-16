#include "common.h"
#include "psyq.h"

/* Animation tables and their channels (docs/matching/issue-65-langimg-chunk64.md). */

extern "C" {
struct Vector3;

// Three shorts and a pad
struct Ent64 {
    short m_00, m_02, m_04, m_06;
};

// Three coordinates packed in 10 bits each
struct Pack64 {
    unsigned m_x : 10;
    unsigned m_y : 10;
    unsigned m_z : 10;
    unsigned m_w : 2;
};

// Two tables by id, each with a default entry
struct Tab64 {
    s8 m_00;
    s8 m_01; // how many 8-byte entries (-1: indexed directly)
    s8 m_02; // how many 4-byte entries (-1: indexed directly)
    u8 m_03;
    Pack64 *m_04;
    s8 *m_08; // the 4-byte entries' ids
    s8 *m_0C; // the 8-byte entries' ids
    Ent64 *m_10;
};

struct Src64 {
    u8 m_00[0x10];
    int m_10;
};

struct Vec64 {
    long m_00, m_04, m_08;
};
// What a channel follows: its position at 0x14
struct Own64 {
    u8 m_00[0x14];
    Vec64 m_14;
};
// A channel (0x80 bytes)
struct Chan64 {
    u8 m_00[4];
    Src64 *m_04;
    u8 m_08[4];
    int m_0C;
    Own64 *m_10;
    u8 m_14[8];
    Vec64 m_1C; // its position
    Vec64 m_28; // an offset
    u8 m_34[2];
    u16 m_36; // flags
    u8 m_38[4];
    Vec64 *m_3C;
    u8 m_40[0x40];
};

// A model: the order its channels are posed in at 0x24
struct Model64 {
    u8 m_00[0x24];
    s8 *m_24;
};
struct Anim64 {
    s8 m_00; // how many channels
    u8 m_01[3];
    Model64 *m_04;
    Chan64 *m_08;
    u8 m_0C[4];
    Vec64 m_10;   // its position
    SVECTOR m_1C; // its angles
};
// A channel's part: its position and its angles
struct Part64 {
    Vec64 m_00;
    short m_0C, m_0E, m_10;
};

// A pose (0x1C bytes)
struct Pose64 {
    u8 m_00[0x1C];
};

// A key (0x20 bytes): a pose and its time
struct Key64 {
    Pose64 m_00;
    unsigned int m_1C;
};

// A track: its keys
struct Track64 {
    int m_00;
    int m_04;          // how many keys
    unsigned int m_08; // how long
    u8 m_0C[4];
    Key64 *m_10;
};

// What plays a track
struct Play64 {
    int m_00; // on
    int m_04; // when it started
    Track64 *m_08;
    int m_0C;    // the current key
    Pose64 m_10; // the pose
    Pose64 m_2C; // the pose it started from
};

struct Kind64 {
    u8 m_00[0x1E];
    short m_1E; // its scale's shift
};
// An object of the list
struct Obj64 {
    u8 m_00[4];
    Kind64 *m_04;
    u8 m_08[8];
    Vec64 m_10;
    SVECTOR m_1C;
    u8 m_24[8];
    void (Obj64::*m_2C)(int a); // how it is drawn
    u8 m_34[4];
    Track64 m_38;
    Play64 m_4C;
    struct Obj64 *m_94;
    Vec64 m_98;
    SVECTOR m_A4;
    int m_AC;
    int m_B0;
};

struct List64 {
    Obj64 *m_00;
};
// What the objects are seen from (its matrix at 0x60)
struct Eye64 {
    u8 m_00[0x60];
    MATRIX m_60;
};

extern Ent64 D_800CBE60;           // the default 8-byte entry
extern Pack64 D_800CBE68;          // the default 4-byte entry
extern int D_800CBE58, D_800CBE5C; // how many times each was set up
void func_80097E4C(void *a, int x, int y, int z);
void func_80091544(void *d, void *s);
void func_80091FB4(Pose64 *d, unsigned int f, void *a, void *b);
int func_80092480(Play64 *p, unsigned int now);
void func_8008E0C4(Obj64 *o, void *a);

void func_80098768(MATRIX *m, Vec64 *v, Vec64 *out);
Vec64 *func_800997D0(Vec64 *v, Vec64 *a);
void func_800912AC(Anim64 *a);
void func_800913C0(Anim64 *a);
Ent64 *func_80091414(Tab64 *t, int id);
Pack64 *func_800914AC(Tab64 *t, int id);
void func_8008D0CC(Ent64 *d, Ent64 *s, int n);
void func_8008D0FC(Ent64 *d, int n);
void func_8008D120(Pack64 *d, Pack64 *s, int n);
void func_8008D148(Pack64 *d, int n);
int func_800923F0(Track64 *t, int i, unsigned int time);
void func_8009243C(Play64 *p, Track64 *t, int a, int b);
void func_800925A8(List64 *l, int a);
void func_80092824(void);
void func_800928CC(void *a, SVECTOR *v);
MATRIX *func_800985A8(MATRIX *a, MATRIX *b);
void func_800910EC(Anim64 *a, MATRIX *root);
void func_800928FC(Ent64 *d, Vec64 *s);
Vec64 *func_800995C4(Vec64 *v, int len);
MATRIX *func_80098674(MATRIX *a, MATRIX *b, MATRIX *out); // a product
void func_8009887C(long *in, long *out);
void func_80092684(List64 *l, Eye64 *e);
}

/* The channels posed in the model's order under a root matrix: each one's
 * matrix from its part (or its own at 0x10), placed by its parent's. */
// A part's rotation: the four loads first, then the three sums (the scratch
// matrix's address computed at each use, as the inline's)
static inline void Rot64(MATRIX *t, Chan64 *c) {
    int ax = *(short *)&c->m_14[0];
    Part64 *p = (Part64 *)c->m_3C;
    int ay = *(short *)&c->m_14[2];
    int az = *(short *)&c->m_14[4];

    ax += p->m_0C;
    ay += p->m_0E;
    az += p->m_10;
    func_80097E4C(t, ax, ay, az);
}

void func_800910EC(Anim64 *a, MATRIX *root) {
    int n = a->m_00;
    Chan64 *ch = a->m_08;
    s8 *order = a->m_04->m_24;

    if (n > 0) {
        MATRIX m;

        MATRIX *mp = &m;
        Vec64 *src = &a->m_10;

        func_800928CC(mp, &a->m_1C);
        {
            long x = src->m_00;
            long y = src->m_04;
            long z = src->m_08;

            mp->t[0] = x;
            mp->t[1] = y;
            mp->t[2] = z;
        }
        func_80098768(root, (Vec64 *)mp->t, (Vec64 *)mp->t);
        func_800997D0((Vec64 *)mp->t, (Vec64 *)root->t);
        func_800985A8(mp, mp);
        do {
            Chan64 *c = &ch[*order++];
            short f = c->m_36;
            MATRIX t;

            if (!(f & 0x30)) {
                MATRIX *pm = (MATRIX *)c->m_0C;
                MATRIX *out;
                MATRIX *dst;
                Part64 *p;
                long z, y, x;

                if (!pm) {
                    pm = &m;
                }
                if (f & 0x400) {
                    out = (MATRIX *)c->m_10;
                } else {
                    Rot64(&t, c);
                    out = &t;
                }
                p = (Part64 *)c->m_3C;
                x = p->m_00.m_00;
                y = p->m_00.m_04;
                z = p->m_00.m_08;
                if (f & 0x40) {
                    x += c->m_28.m_00;
                    y += c->m_28.m_04;
                    z += c->m_28.m_08;
                }
                out->t[0] = x;
                out->t[1] = y;
                out->t[2] = z;
                dst = (MATRIX *)c->m_10;
                func_80098768(pm, (Vec64 *)out->t, (Vec64 *)dst->t);
                func_800997D0((Vec64 *)dst->t, (Vec64 *)pm->t);
                func_800985A8(out, dst);
            }
        } while (--n);
    }
}

static inline void VecCopyL64(Vec64 *d, Vec64 *s) {
    long x = s->m_00;
    long y = s->m_04;
    long z = s->m_08;

    d->m_00 = x;
    d->m_04 = y;
    d->m_08 = z;
}

/* Each channel's position: its source turned by its owner's matrix (with the
 * offset at 0x28 when flag 0x40 is set) for flag 0x20, else the followed
 * object's; none for flag 0x10. */
void func_800912AC(Anim64 *a) {
    int n = a->m_00;
    Chan64 *c = a->m_08;

    for (; n; c++, n--) {
        short f = c->m_36;

        if (f & 0x10) {
            continue;
        }
        if (f & 0x20) {
            Vec64 t;
            Vec64 *v = c->m_3C;
            MATRIX *m;

            if (f & 0x40) {
                long x = v->m_00;
                long y = v->m_04;
                long z = v->m_08;

                v = &t;
                x += c->m_28.m_00;
                y += c->m_28.m_04;
                z += c->m_28.m_08;
                t.m_00 = x;
                t.m_04 = y;
                t.m_08 = z;
            }
            m = (MATRIX *)c->m_04->m_10;
            func_80098768(m, v, &c->m_1C);
            func_800997D0(&c->m_1C, (Vec64 *)m->t);
        } else {
            VecCopyL64(&c->m_1C, &c->m_10->m_14);
        }
    }
}

void func_800913C0(Anim64 *a) {
    int n = a->m_00;
    Chan64 *p = a->m_08;

    while (n) {
        Chan64 *c = p++;

        if (!(c->m_36 & 0x1000)) {
            c->m_0C = c->m_04 ? c->m_04->m_10 : 0;
        }
        n--;
    }
}

/* An 8-byte entry by id, or the default. */
Ent64 *func_80091414(Tab64 *t, int id) {
    int found = 0;
    int i;

    if (t->m_01 == -1) {
        return &t->m_10[id];
    }
    if (t->m_01 == 0) {
        return &D_800CBE60;
    }
    for (i = 0; i < t->m_01; i++) {
        if (t->m_0C[i] == id) {
            found = 1;
            break;
        }
    }
    return found ? &t->m_10[i] : &D_800CBE60;
}

/* A 4-byte entry by id, or the default. */
Pack64 *func_800914AC(Tab64 *t, int id) {
    int found = 0;
    int i;

    if (t->m_02 == -1) {
        return &t->m_04[id];
    }
    if (t->m_02 == 0) {
        return &D_800CBE68;
    }
    for (i = 0; i < t->m_02; i++) {
        if (t->m_08[i] == id) {
            found = 1;
            break;
        }
    }
    return found ? &t->m_04[i] : &D_800CBE68;
}

/* A table's entries copied into another's (by id or directly), the rest
 * of its entries set to the defaults. */
void func_80091544(void *dp, void *sp) {
    Tab64 *d = (Tab64 *)dp;
    Tab64 *s = (Tab64 *)sp;
    int i;

    if (s->m_01 == -1) {
        func_8008D0CC(d->m_10, s->m_10, s->m_00);
    } else {
        for (i = 0; i < s->m_00; i++) {
            Ent64 *e = func_80091414(s, i);
            Ent64 *o = d->m_10;
            int x = e->m_00;
            int y = e->m_02;
            int z = e->m_04;

            o[i].m_00 = x;
            o[i].m_02 = y;
            o[i].m_04 = z;
        }
    }
    if (s->m_02 == -1) {
        func_8008D120(d->m_04, s->m_04, s->m_00);
    } else {
        for (i = 0; i < s->m_00; i++) {
            d->m_04[i] = *func_800914AC(s, i);
        }
    }
    if (d->m_00 != s->m_00) {
        func_8008D0FC(d->m_10 + s->m_00, d->m_00 - s->m_00);
        func_8008D148(d->m_04 + s->m_00, d->m_00 - s->m_00);
    }
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_64", func_800916B0);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_64", func_80091FB4);

/* The last key at or before a time, from key i on. */
int func_800923F0(Track64 *t, int i, unsigned int time) {
    for (i++; i < t->m_04 && t->m_10[i].m_1C < time; i++) {
    }
    return i - 1;
}

#ifdef NON_MATCHING
// Registers: the original moves the track to $v1 and the fourth argument to $a1 first
void func_8009243C(Play64 *p, Track64 *t, int a, int b) {
    p->m_04 = a;
    p->m_08 = t;
    p->m_0C = 0;
    p->m_00 = 1;
    if (!b) {
        b = t->m_10;
    }
    func_80091544(&p->m_2C, (void *)b);
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_64", func_8009243C);
#endif

/* A track played to a time: the pose between its two keys, blended in
 * from where it started over the first 100; at its end, its last key. */
#ifdef NON_MATCHING
// The keys' addresses: the original computes k << 5 before (k + 1) << 5 and adds the base last
int func_80092480(Play64 *p, unsigned int now) {
    Pose64 *pose = &p->m_10;
    unsigned int t = now - p->m_04;
    int k = func_800923F0(p->m_08, p->m_0C, t);

    if (t < p->m_08->m_08) {
        int j = k + 1;
        Key64 *keys = p->m_08->m_10;
        Key64 *a = &keys[k];
        Key64 *b = &keys[j];
        unsigned int f = ((t - a->m_1C) << 12) / (b->m_1C - a->m_1C);

        if (t < 100) {
            func_80091FB4(pose, f, a, b);
            func_80091FB4(pose, (t << 12) / 100, &p->m_2C, pose);
        } else {
            func_80091FB4(pose, f, a, b);
        }
    } else {
        func_80091544(pose, &p->m_08->m_10[p->m_08->m_04 - 1]);
        p->m_00 = 0;
    }
    p->m_0C = k;
    return p->m_00;
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_64", func_80092480);
#endif

static inline void func_800925A8_cpy(Vec64 *d, Vec64 *s) {
    long x = s->m_00;
    long y = s->m_04;
    long z = s->m_08;

    d->m_00 = x;
    d->m_04 = y;
    d->m_08 = z;
}

void func_800925A8(List64 *l, int a) {
    Obj64 *o;

    for (o = l->m_00; o; o = o->m_94) {
        if (o->m_B0) {
            if (o->m_4C.m_00) {
                func_80092480(&o->m_4C, a);
            } else if (o->m_AC) {
                func_8009243C(&o->m_4C, &o->m_38, a, 0);
            }
            func_8008E0C4(o, &o->m_4C.m_10);
            func_800925A8_cpy(&o->m_10, &o->m_98);
            o->m_1C = o->m_A4;
        }
    }
}

// The identity, rows from the diagonal out
static inline void IdentMat64(MATRIX *m) {
    m->m[0][0] = 0x1000;
    m->m[0][1] = m->m[0][2] = m->t[0] = 0;
    m->m[1][1] = 0x1000;
    m->m[1][0] = m->m[1][2] = m->t[1] = 0;
    m->m[2][2] = 0x1000;
    m->m[2][0] = m->m[2][1] = m->t[2] = 0;
}

/* Each object on: posed under the eye's matrix, then drawn through its
 * pointer to member. */
// a - b, all six loads first
static inline void VecSub64(Vec64 *d, Vec64 *a, Vec64 *b) {
    long ax = a->m_00;
    long ay = a->m_04;
    long az = a->m_08;
    long bx = b->m_00;
    long by = b->m_04;
    long bz = b->m_08;

    ax -= bx;
    ay -= by;
    az -= bz;
    d->m_00 = ax;
    d->m_04 = ay;
    d->m_08 = az;
}

void func_80092684(List64 *l, Eye64 *e) {
    Obj64 *o;

    for (o = l->m_00; o; o = o->m_94) {
        if (o->m_B0) {
            MATRIX out, m;
            Vec64 d;
            MATRIX *po;
            Vec64 *mt;

            IdentMat64(&m);
            func_800995C4((Vec64 *)e->m_60.t, o->m_04->m_1E);
            po = &out;
            func_80098674(&e->m_60, &m, po);
            mt = (Vec64 *)m.t;
            VecSub64(&d, mt, (Vec64 *)e->m_60.t);
            func_8009887C(&d.m_00, out.t);
            func_800910EC((Anim64 *)o, po);
            (o->*o->m_2C)(0);
        }
    }
}

static inline void func_80092824_vzero(Vec64 *v) {
    v->m_00 = 0;
    v->m_04 = 0;
    v->m_08 = 0;
}

static inline void func_80092824_szero(SVECTOR *v) {
    v->vx = 0;
    v->vy = 0;
    v->vz = 0;
}

static inline void func_80092824_pack(Pack64 *p, SVECTOR *v) {
    p->m_x = v->vx >> 2;
    p->m_y = v->vy >> 2;
    p->m_z = v->vz >> 2;
}

/* The two defaults set up, the first time. */
void func_80092824(void) {
    if (++D_800CBE58 == 1) {
        Vec64 v;

        func_80092824_vzero(&v);
        func_800928FC(&D_800CBE60, &v);
    }
    if (++D_800CBE5C == 1) {
        SVECTOR v;

        func_80092824_szero(&v);
        func_80092824_pack(&D_800CBE68, &v);
    }
}

void func_800928CC(void *a, SVECTOR *v) {
    func_80097E4C(a, v->vx, v->vy, v->vz);
}

void func_800928FC(Ent64 *d, Vec64 *s) {
    short x = s->m_00;
    short y = s->m_04;
    short z = s->m_08;

    d->m_00 = x;
    d->m_02 = y;
    d->m_04 = z;
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_64", func_80092918);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_64", func_80092AD4);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_64", func_80092C70);
