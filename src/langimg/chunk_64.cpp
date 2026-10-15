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

struct Anim64 {
    s8 m_00; // how many channels
    u8 m_01[7];
    Chan64 *m_08;
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

// An object of the list
struct Obj64 {
    u8 m_00[0x10];
    Vec64 m_10;
    SVECTOR m_1C;
    u8 m_24[0x14];
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

extern Ent64 D_800CBE60;           // the default 8-byte entry
extern Pack64 D_800CBE68;          // the default 4-byte entry
extern int D_800CBE58, D_800CBE5C; // how many times each was set up
void func_80097E4C(void *a, int x, int y, int z);
void func_80091544(Pose64 *d, void *s);
void func_80091FB4(Pose64 *d, unsigned int f, void *a, void *b);
int func_80092480(Play64 *p, unsigned int now);
void func_8008E0C4(Obj64 *o, void *a);

void func_80098768(MATRIX *m, Vec64 *v, Vec64 *out);
Vec64 *func_800997D0(Vec64 *v, Vec64 *a);
void func_800912AC(Anim64 *a);
void func_800913C0(Anim64 *a);
Ent64 *func_80091414(Tab64 *t, int id);
Pack64 *func_800914AC(Tab64 *t, int id);
int func_800923F0(Track64 *t, int i, unsigned int time);
void func_8009243C(Play64 *p, Track64 *t, int a, int b);
void func_800925A8(List64 *l, int a);
void func_80092824(void);
void func_800928CC(void *a, SVECTOR *v);
void func_800928FC(Ent64 *d, Vec64 *s);
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_64", func_800910EC);

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

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_64", func_80091544);

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

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_64", func_80092684);

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
