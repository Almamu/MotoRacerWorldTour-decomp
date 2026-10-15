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

// A channel (0x80 bytes)
struct Chan64 {
    u8 m_00[4];
    Src64 *m_04;
    u8 m_08[4];
    int m_0C;
    u8 m_10[0x26];
    u16 m_36; // flags
    u8 m_38[0x48];
};

struct Anim64 {
    s8 m_00; // how many channels
    u8 m_01[7];
    Chan64 *m_08;
};

// A key (0x20 bytes): its time at 0x1C
struct Key64 {
    u8 m_00[0x1C];
    unsigned int m_1C;
};

// A track: its keys
struct Track64 {
    int m_00;
    int m_04; // how many keys
    u8 m_08[8];
    Key64 *m_10;
};

// What plays a track
struct Play64 {
    int m_00; // on
    int m_04;
    Track64 *m_08;
    int m_0C;
    u8 m_10[0x1C];
    u8 m_2C[4]; // chunk_64's at func_80091544
};

struct Vec64 {
    long m_00, m_04, m_08;
};

// An object of the list
struct Obj64 {
    u8 m_00[0x10];
    Vec64 m_10;
    SVECTOR m_1C;
    u8 m_24[0x14];
    Track64 m_38;
    Play64 m_4C;
    u8 m_7C[0x18];
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
void func_80091544(void *a, int b);
void func_80092480(Play64 *p, int a);
void func_8008E0C4(Obj64 *o, void *a);

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

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_64", func_800912AC);

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
    func_80091544(p->m_2C, b);
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_64", func_8009243C);
#endif

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_64", func_80092480);

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
            func_8008E0C4(o, o->m_4C.m_10);
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
