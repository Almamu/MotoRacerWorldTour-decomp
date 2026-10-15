#include "common.h"
#include "psyq.h"
#include "gte.h"

/* The game's code built with GCC 2.91.66, -G8, split addresses
 * (docs/matching/issue-63-langimg-chunk62.md). */

extern "C" {
struct Vec62 {
    long vx, vy, vz;
};
// A model's part
struct Part62 {
    u8 m_00[0x24];
    u32 m_24;
};
// A model: its parts
struct Model62 {
    short m_00; // how many parts
    u8 m_02[8];
    short m_0A;
    u8 m_0C[0x1C];
    Part62 **m_28;
};
// A channel (0x80 bytes, chunk_64's Chan64)
struct Chan62 {
    u8 m_00[0x10];
    int m_10;
    SVECTOR m_14;
    u8 m_1C[0xC];
    Vec62 m_28;
    u8 m_34[2];
    u16 m_36; // flags
    u8 m_38[4];
    Part62 *m_3C;
    short m_40[3];
    u8 m_46[2];
    Vec62 m_48;
    u8 m_54[0x2C];
};
// An animation's channels (chunk_64's Anim64)
struct Anim62 {
    u8 m_00; // how many channels
    u8 m_01[3];
    Model62 *m_04;
    Chan62 *m_08;
    int m_0C;
    u8 m_10[0x1C];
    int m_2C[2];
};
// Three coordinates packed in 10 bits each (chunk_64's Pack64, signed)
struct Pack62 {
    int m_x : 10;
    int m_y : 10;
    int m_z : 10;
    unsigned m_w : 2;
};
struct Ent62 {
    short m_00, m_02, m_04, m_06;
};
// Two tables by id (chunk_64's Tab64)
struct Tab62 {
    u8 m_00;
    s8 m_01;
    s8 m_02;
    s8 m_03; // indexed directly
    Pack62 *m_04;
    s8 *m_08; // the 4-byte entries' ids
    s8 *m_0C; // the 8-byte entries' ids
    Ent62 *m_10;
};
struct Owner62 {
    u8 m_00[0x10];
    MATRIX *m_10;
};
// A node of a tree: its child and its sibling
struct Node62 {
    struct Node62 *m_00;
    Owner62 *m_04;
    struct Node62 *m_08;
    u8 m_0C[4];
    MATRIX *m_10;
    u8 m_14[8];
    Vec62 m_1C;
    Vec62 m_28;
    u8 m_34[2];
    short m_36; // flags
    u8 m_38[4];
    Vec62 *m_3C;
    u8 m_40[8];
    Vec62 m_48;
};
struct Pair62 {
    int m_00, m_04;
};

extern Pair62 D_800C8D34[];

int func_8009923C(Vec62 *v);
void func_80098768(MATRIX *m, Vec62 *v, Vec62 *out);
Vec62 *func_800997D0(Vec62 *v, Vec62 *a);
void func_800913C0(Anim62 *a);
Ent62 *func_80091414(Tab62 *t, int id);
Pack62 *func_800914AC(Tab62 *t, int id);

void func_8008D168(Node62 *n);
int func_8008D2B0(int x, int y, int z);
int func_8008D27C(int x, int y, int z);
u32 func_8008DFA0(u32 x);
void func_8008E054(Node62 *o, int x, int y, int z);
void func_8008E0C4(Anim62 *o, Tab62 *t);
void func_8008E658(Anim62 *o, Model62 *m);
void func_8008E354(Anim62 *o, Tab62 *t, int on, int *ids);
}

// All three read first
static inline void VecCopyL62(Vec62 *d, Vec62 *s) {
    int x = s->vx;
    int y = s->vy;
    int z = s->vz;

    d->vx = x;
    d->vy = y;
    d->vz = z;
}

void func_8008D168(Node62 *n) {
    short f = n->m_36;

    if (!(f & 0x10)) {
        if (f & 0x20) {
            Vec62 *v = n->m_3C;
            Vec62 t;
            MATRIX *m;

            if (f & 0x40) {
                Vec62 *b = &n->m_28;
                int x = v->vx;
                int y = v->vy;
                int z = v->vz;

                x += b->vx;
                y += b->vy;
                z += b->vz;
                t.vx = x;
                t.vy = y;
                t.vz = z;
                v = &t;
            }
            m = n->m_04->m_10;
            func_80098768(m, v, &n->m_1C);
            func_800997D0(&n->m_1C, (Vec62 *)m->t);
        } else {
            VecCopyL62(&n->m_1C, (Vec62 *)n->m_10->t);
        }
    }
    if (n->m_00) {
        func_8008D168(n->m_00);
    }
    if (n->m_08) {
        func_8008D168(n->m_08);
    }
}

// x * x + y * y + z * z, through the GTE's sqr
int func_8008D27C(int x, int y, int z) {
    int a, b, c;

    GTE_MTC2(x, 9);
    GTE_MTC2(y, 10);
    GTE_MTC2(z, 11);
    GTE_SQR0();
    GTE_MFC2(a, 25);
    GTE_MFC2(b, 26);
    a += b;
    GTE_MFC2(c, 27);
    return a + c;
}

static inline void SetVec62(Vec62 *v, int x, int y, int z) {
    v->vx = x;
    v->vy = y;
    v->vz = z;
}

int func_8008D2B0(int x, int y, int z) {
    Vec62 v;

    SetVec62(&v, x, y, z);
    return func_8009923C(&v);
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_62", func_8008D2DC);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_62", func_8008D880);

// The square root, rounded
#ifdef NON_MATCHING
// Registers: the original keeps the argument in $a0 (returned as is below 2) and the remainder in $a2; GCC moves the argument to $t0 first (one instruction more, 45 off).
u32 func_8008DFA0(u32 x) {
    u32 r, rem, v;
    int n;

    if (x < 2) {
        return x;
    }
    v = x;
    r = 0;
    rem = 0;
    n = 15;
    if ((int)x >= 0) {
        int lz;

        GTE_LZC(lz, x);
        lz /= 2;
        n -= lz;
        v = x << (lz * 2);
    }
    do {
        u32 t;

        rem = (rem << 2) | (v >> 30);
        r <<= 1;
        t = r * 2 + 1;
        if (rem >= t) {
            r++;
            rem -= t;
        }
        v <<= 2;
    } while (--n != -1);
    if (x - r * r >= r - 1) {
        r++;
    }
    return r;
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_62", func_8008DFA0);
#endif

void func_8008E054(Node62 *o, int x, int y, int z) {
    int vx = o->m_48.vx;
    int vy = o->m_48.vy;
    int vz = o->m_48.vz;
    int px = o->m_28.vx;
    int py = o->m_28.vy;
    int pz = o->m_28.vz;

    x -= px;
    y -= py;
    z -= pz;
    x -= vx;
    y -= vy;
    z -= vz;
    x >>= 1;
    y >>= 1;
    z >>= 1;
    vx += x;
    vy += y;
    vz += z;
    px += vx;
    py += vy;
    pz += vz;
    o->m_48.vx = vx;
    o->m_48.vy = vy;
    o->m_48.vz = vz;
    o->m_28.vx = px;
    o->m_28.vy = py;
    o->m_28.vz = pz;
}

static inline s8 func_8008E0C4_min(s8 a, s8 b) {
    return a < b ? a : b;
}

#ifdef NON_MATCHING
// The original loads the two counts with lbu and compares them shifted (a byte minimum); GCC loads with lb. It also extracts the three packed coordinates before storing them (54 off).
void func_8008E0C4(Anim62 *o, Tab62 *t) {
    int n = func_8008E0C4_min(o->m_00, t->m_00);
    int i;

    for (i = 0; i < n; i++) {
        Pack62 *p = func_800914AC(t, i);
        SVECTOR *d = &o->m_08[i].m_14;
        Pack62 q = *p;

        d->vx = q.m_x << 2;
        d->vy = q.m_y << 2;
        d->vz = q.m_z << 2;
        if (o->m_08[i].m_36 & 0x40) {
            Ent62 *e = func_80091414(t, i);
            Vec62 v;

            SetVec62(&v, e->m_00, e->m_02, e->m_04);
            o->m_08[i].m_28 = v;
        }
    }
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_62", func_8008E0C4);
#endif

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_62", func_8008E1F8);

#ifdef NON_MATCHING
// Registers: the entry's pointer in $a0 where the original has $v0, which also changes the order the three coordinates are extracted in (14 off).
void func_8008E354(Anim62 *o, Tab62 *t, int on, int *ids) {
    if (on) {
        Pack62 def;
        int i, next, n;
        Chan62 *c;
        Pack62 *src;
        s8 *idx;
        s8 direct;

        def.m_x = 0;
        def.m_y = 0;
        def.m_z = 0;
        i = 0;
        next = *ids++;
        c = o->m_08;
        src = t->m_04;
        idx = t->m_08;
        direct = t->m_03;
        n = (s8)o->m_00;
        do {
            Pack62 *p;

            if (direct) {
                p = src++;
            } else {
                p = &def;
                if (idx && *idx == i) {
                    p = src++;
                    idx++;
                }
            }
            if (i == next) {
                Pack62 q = *p;

                c->m_14.vx = q.m_x << 2;
                c->m_14.vy = q.m_y << 2;
                c->m_14.vz = q.m_z << 2;
                if (c->m_36 & 0x40) {
                    c->m_40[0] = 0;
                    c->m_40[1] = 0;
                    c->m_40[2] = 0;
                    c->m_48.vx = 0;
                    c->m_48.vy = 0;
                    c->m_48.vz = 0;
                }
                next = *ids++;
            }
            c++;
            i++;
        } while (--n);
    }
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_62", func_8008E354);
#endif

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_62", func_8008E46C);

void func_8008E658(Anim62 *o, Model62 *m) {
    int n = m->m_00;
    Part62 **pp = m->m_28;
    int a = o->m_0C;
    Chan62 *c = o->m_08;

    o->m_04 = m;
    if (n) {
        do {
            Part62 *p = *pp;
            u32 w = p->m_24;

            c->m_3C = p;
            if ((w >> 16) == 0x1F80) {
                c->m_10 = w;
            } else if (w) {
                c->m_10 = a;
                a += 0x20;
            }
            c++;
            pp++;
        } while (--n);
    }
    func_800913C0(o);
    *(Pair62 *)o->m_2C = D_800C8D34[o->m_04->m_0A];
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_62", func_8008E70C);
