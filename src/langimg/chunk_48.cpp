#include "common.h"
#include "psyq.h"

/* The game's code built with GCC 2.91.66, -G8, split addresses
 * (docs/matching/issue-49-langimg-chunk48.md). */

extern "C" {
// A track's section, 0x68 bytes: its points
struct Ent48 {
    s8 m_00;
    s8 m_01;
    s8 m_02; // -1: the end of the track
    u8 m_03;
    int m_04;
    int m_08; // how many points
    void *m_0C;
    u8 m_10[0x40];
    struct Ent48 *m_50; // the next section
    struct Ent48 *m_54; // the previous one
    u8 m_58[0x10];
};
// A list: its entries
struct List48 {
    Ent48 *m_00;
};
// An entry's flags
struct Flag48 {
    int m_00;
    int m_04;
    u8 m_08[0x3F];
    s8 m_47; // a colour, 0 to 2
};
// A track's object, 0xCC bytes
struct Vec48 {
    long vx, vy, vz;
};
struct Obj48 {
    int m_00;
    int m_04;
    Vec48 m_08;
    MATRIX m_14;
    int m_34;
    int m_38;
    int m_3C;
    int m_40;
    int m_44;
    int m_48;
    int m_4C[10]; // the time to each point
    int m_74;
    int m_78;
    int m_7C;
    int m_80;
    Flag48 *m_84;
    Flag48 *m_88;
    Flag48 *m_8C;
    Flag48 *m_90;
    u8 m_94[0x18];
    int m_AC;
    int m_B0;
    Vec48 m_B4;
    u8 m_C0[0xC];
};
// A track: its length at 0x2C
struct Trk48 {
    u8 m_00[0x2C];
    int m_2C;
};
// A bike, 0x568 bytes (chunk_38's Bike38)
struct Def48;
struct Bike48 {
    union {
        u32 m_00; // flags: bit 6, in the race
        u8 m_00b[4];
    };
    u8 m_04[0x2C];
    struct Def48 *m_30;
    u8 m_34[0x534];
};
// The run (chunk_38's Run38)
struct Run48 {
    u8 m_00[0x2E8];
    Bike48 m_2E8[5];
    u8 m_1DF0[0x18];
    int m_1E08; // the race's state
};
struct Game48 {
    u8 m_00[0x378];
    Run48 *m_378;
};
extern Game48 *D_800C5E14;
extern int D_800D6100; // the frame's time
// What an object is set up from
struct Src48 {
    u8 m_00[0x3C];
    int m_3C;
    u8 m_40[0x10];
    int m_50;
};
struct Def48 {
    u8 m_00[0x10C];
    int m_10C;
    u8 m_110[0xE4];
    int m_1F4;
    int m_1F8;
    u8 m_1FC[0xC];
    int m_208;
};
// A group of the run's bikes and its objects
struct Group48 {
    int m_00;
    int m_04; // a random seed
    int m_08;
    int m_0C; // how many bikes
    int m_10;
    Bike48 *m_14[5];
    int m_28;
    int m_2C;
    int m_30; // how many objects
    Obj48 *m_34;
    int m_38;
    int m_3C;
    int m_40;
    int m_44;
    int m_48;
    u8 m_4C[4];
    int m_50;
};

extern int D_800D60FC;
extern int D_800C872C; // tables, declared small (chunk_37's case)
extern int D_800C84EC;
extern int D_800C860C;
extern int D_800C845C;
extern int D_800C8470;
extern int D_800C849C;
extern int D_800C8714;
extern int D_800C8484;
extern int D_800C8504; // each point's next, 11 per kind
void func_8001C4A0(Trk48 *t, int a, int b, Vec48 *v, MATRIX *m, int *z, Obj48 *o, int id);
void *func_80070D98(Ent48 *e, int i);
int func_80070CCC(void *a, Vec48 *p);

void *memset(void *d, int c, unsigned int n);
int abs(int x);

Ent48 *func_8007142C(List48 *l, int i);
void func_80071E1C(Obj48 *o);
void func_800728E0(Obj48 *o, Src48 *q, int unused, int k, Def48 *t, int a, int n, Obj48 **prev,
                   int id, int b, int c);
void func_80072A3C(Obj48 *o, int k, int a, int n, Obj48 **prev, Src48 *q, int c);
int func_8007351C(Group48 *g, int k);
void func_80073AA0(Group48 *g, int k, int *x, int *y);
int func_80073C2C(Group48 *g, int x, int y, int c, int a, int b, int d, int e, int f);
Obj48 *func_8007345C(Group48 *g, Group48 *h);
int func_800731EC(Group48 *g, int k, Def48 *t, int c, int side);
int func_80071994(void *o, int deep, Ent48 **pe, int *pi, Vec48 *x, int *pr, int *pflag);
void func_80072D00(Obj48 *o);
void func_80071ED8(Obj48 *o, Group48 *g, int c);
int func_80074270(Group48 *g, Bike48 *b, int c);
void func_80072ED4(Group48 *g, int c);
void func_80072D80(Obj48 *o);
void func_80072DA0(Group48 *g, Run48 *r);
}

Ent48 *func_8007142C(List48 *l, int i) {
    Ent48 *p = l->m_00;
    Ent48 *r = 0;

    if (p && i != -1) {
        r = &p[i];
    }
    return r;
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_48", func_80071464);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_48", func_800716A0);

int func_80071994(void *o, int deep, Ent48 **pe, int *pi, Vec48 *x, int *pr, int *pflag) {
    int found = 0;
    int last = 0;
    Ent48 *e = *pe;
    int t;

    do {
        int r = func_80070CCC(func_80070D98(e, *pi), x);

        *pr = r;
        if (r < 0) {
            goto back;
        }
        (*pi)++;
        last = r;
        t = *pr;
    } while (t >= 0 && *pi < e->m_08);
    if (t < 0) {
    back:
        if (--(*pi) < 0) {
            if (e->m_02 == -1) {
                found = 1;
                *pi = 0;
                *pr = 0;
            } else if (deep) {
                Ent48 *p = e->m_54;
                int n = p->m_08 - 1;

                if (func_80071994(o, 0, &p, &n, x, pr, pflag)) {
                    e = p;
                    found = 1;
                    *pi = n;
                }
            }
        } else {
            *pr = last;
            found = 1;
        }
    } else {
        (*pi)--;
        found = 1;
        if (e->m_02 == -1) {
            *pflag = 1;
            e = e->m_50;
            e = e->m_54;
            *pi = e->m_08 - 1;
            *pr = func_80070CCC(func_80070D98(e, *pi), x);
        } else if (deep) {
            Ent48 *p = e->m_50;
            int n = 0;
            int save = *pr;

            if (func_80071994(o, 0, &p, &n, x, pr, pflag)) {
                e = p;
                *pi = n;
            } else {
                *pr = save;
            }
        }
    }
    *pe = e;
    return found;
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_48", func_80071BCC);

static inline void ZeroVec48(Vec48 *v) {
    v->vx = v->vy = v->vz = 0;
}

// The identity, rows from the diagonal out
static inline void IdentMat48(MATRIX *m) {
    m->m[0][0] = 0x1000;
    m->m[1][1] = 0x1000;
    m->m[2][2] = 0x1000;
    m->m[0][1] = m->m[0][2] = m->t[0] = 0;
    m->m[1][0] = m->m[1][2] = m->t[1] = 0;
    m->m[2][0] = m->m[2][1] = m->t[2] = 0;
}

#ifdef NON_MATCHING
// Registers only: 0xCDCDCDCD, 0x1000 and memset's arguments in other registers (25 off).
void func_80071E1C(Obj48 *o) {
    ZeroVec48(&o->m_08);
    o->m_00 = 0xCDCDCDCD;
    o->m_04 = 0xCDCDCDCD;
    IdentMat48(&o->m_14);
    o->m_34 = 0xCDCDCDCD;
    o->m_38 = 0xCDCDCDCD;
    o->m_3C = 0xCDCDCDCD;
    o->m_48 = 0xCDCDCDCD;
    o->m_44 = 0xCDCDCDCD;
    memset(o->m_4C, 0xCD, 0x2C);
    o->m_78 = 0xCDCD;
    o->m_7C = 7;
    o->m_80 = 0;
    o->m_40 = 0;
    func_80072D00(o);
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_48", func_80071E1C);
#endif

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_48", func_80071ED8);

void func_800728E0(Obj48 *o, Src48 *q, int unused, int k, Def48 *t, int a, int n, Obj48 **prev,
                   int id, int b, int c) {
    int tab;
    int base;

    o->m_80 &= ~4;
    o->m_40 = b;
    base = t->m_1F8;
    o->m_04 = id;
    o->m_3C = 0;
    o->m_00 = base;
    if (k >= 0 && (k < 3 || k == 5)) {
        o->m_34 = *(int *)((u8 *)&D_800C872C + ((id - q->m_3C) << 2));
    } else {
        o->m_34 = a;
    }
    tab = *(int *)((u8 *)&D_800C84EC + (k << 2));
    if (!n) {
        o->m_38 = t->m_208 + *(int *)((u8 *)&D_800C860C + ((k * 11 + tab) << 2)) + q->m_50;
    } else {
        o->m_38 = prev[n - 1]->m_38 + *(int *)((u8 *)&D_800C860C + ((k * 11 + tab) << 2));
    }
    func_80072A3C(o, k, t->m_10C, n, prev, q, c);
}

static inline void VecCopyL48(Vec48 *d, Vec48 *s) {
    int x = s->vx;
    int y = s->vy;
    int z = s->vz;

    d->vx = x;
    d->vy = y;
    d->vz = z;
}

/* An object's run along its kind's points timed: the time to each point by
 * the distances and the span, its first one from now; placed on the track
 * with prev, given a random colour. */
#ifdef NON_MATCHING
// The original loads the frame's time first and walks the points' tables with the row's byte offset (k * 44) added to the point's; GCC loads the time late and folds the offsets otherwise, so the registers differ from the start (63 off; the tables as [k][11] arrays came out worse).
void func_80072A3C(Obj48 *o, int k, int a, int n, Obj48 **prev, Src48 *q, int c) {
    int now = D_800D60FC;
    int span;
    int i, j;
    int *t;

    o->m_7C = k;
    o->m_78 = *(int *)((u8 *)&D_800C84EC + (k << 2));
    o->m_80 |= 1;
    if (!n) {
        span = o->m_34;
    } else {
        span = o->m_34 - prev[n - 1]->m_34;
    }
    if (span <= 0) {
        span = 1;
    }
    i = o->m_78;
    j = *(int *)((u8 *)&D_800C8504 + ((k * 11 + i) << 2));
    t = o->m_4C;
    while (j != i) {
        int d = *(int *)((u8 *)&D_800C860C + ((k * 11 + j) << 2)) -
                *(int *)((u8 *)&D_800C860C + ((k * 11 + i) << 2));

        t[i] = d * 1000 / span;
        i = j;
        j = *(int *)((u8 *)&D_800C8504 + ((k * 11 + i) << 2));
    }
    t[j] = -1;
    o->m_44 = now;
    o->m_48 = now + t[o->m_78];
    if (prev) {
        Trk48 *tr = (Trk48 *)c;
        Group48 *g = (Group48 *)q;
        int pos = o->m_38;
        int z = 0;
        Vec48 v;
        MATRIX m;
        int col;

        if (pos < 0) {
            pos += tr->m_2C;
        }
        if (tr->m_2C < pos) {
            pos -= tr->m_2C;
        }
        func_8001C4A0(tr, pos, pos, &v, &m, &z, o, o->m_04);
        o->m_B0 = o->m_AC;
        o->m_AC = 0;
        VecCopyL48(&o->m_B4, &v);
        g->m_04 = g->m_04 * 214013 + 2531011;
        col = ((g->m_04 >> 16) & 0x7FFF) % 3;
        o->m_84->m_47 = col;
        if (o->m_88) {
            o->m_88->m_47 = col;
        }
        if (o->m_8C) {
            o->m_8C->m_47 = col;
        }
        if (o->m_90) {
            o->m_90->m_47 = col;
        }
    }
    o->m_84->m_04 |= 2;
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_48", func_80072A3C);
#endif

void func_80072D00(Obj48 *o) {
    o->m_84->m_04 &= ~6;
    if (o->m_88) {
        o->m_88->m_04 &= ~6;
    }
    if (o->m_8C) {
        o->m_8C->m_04 &= ~6;
    }
    if (o->m_90) {
        o->m_90->m_04 &= ~6;
    }
}

void func_80072D80(Obj48 *o) {
    o->m_78 = 10;
    o->m_74 = 1000;
    o->m_48 = D_800D60FC;
}

static inline Bike48 *func_80072DA0_bike(Run48 *r, int k) {
    Bike48 *b = 0;

    if (k >= 0) {
        b = &r->m_2E8[k];
    }
    return b;
}

void func_80072DA0(Group48 *g, Run48 *r) {
    if (g->m_2C) {
        int n, i, k;
        Bike48 *b, *first;

        g->m_04 = 0x12345678;
        n = 0;
        g->m_00 = 0;
        g->m_08 = 1;
        first = r->m_2E8;
        g->m_10 = 6;
        b = &r->m_2E8[4];
        do {
            if ((b->m_00 >> 6) & 1) {
                n++;
            }
        } while (b-- != first);
        i = 0;
        k = 0;
        g->m_0C = n;
        g->m_28 = 1;
        if (n) {
            Bike48 **p = g->m_14;

            do {
                b = func_80072DA0_bike(r, k++);
                if ((b->m_00 >> 6) & 1) {
                    *p++ = b;
                    i++;
                }
            } while (i != g->m_0C);
        }
        for (i = 0; i < g->m_30; i++) {
            func_80071E1C(&g->m_34[i]);
        }
    }
}

/* A group each frame: its objects marked, one of its bikes picked at random
 * and objects spawned for it, the objects moved, those done reset. */
void func_80072ED4(Group48 *g, int c) {
    if (g->m_2C && D_800C5E14->m_378->m_1E08 != 2) {
        int i, k, keep;
        Def48 *d;

        g->m_00 = (D_800D6100 << 12) / 1000;
        for (i = 0; i < g->m_30; i++) {
            g->m_34[i].m_80 |= 2;
        }
        g->m_04 = g->m_04 * 214013 + 2531011;
        k = ((g->m_04 >> 16) & 0x7FFF) % g->m_0C;
        d = g->m_14[k]->m_30;
        keep = 0;
        if (d->m_10C <= D_800C872C || (g->m_14[k]->m_00b[0] >> 7)) {
            keep = 1;
        }
        for (i = 0; i < g->m_0C; i++) {
            if (func_80074270(g, g->m_14[i], c) && k == i) {
                keep = 0;
            }
        }
        if (!d->m_1F4) {
            if (g->m_10 == 6) {
                g->m_04 = g->m_04 * 214013 + 2531011;
                g->m_10 = ((g->m_04 >> 16) & 0x7FFF) % 5;
            }
            if (func_800731EC(g, g->m_10, d, c, keep)) {
                g->m_10 = 6;
            }
        }
        for (i = 0; i < g->m_30; i++) {
            func_80071ED8(&g->m_34[i], g, c);
        }
        for (i = 0; i < g->m_30; i++) {
            if ((g->m_34[i].m_80 & 3) == 3) {
                g->m_34[i].m_80 &= ~3;
                func_80072D00(&g->m_34[i]);
            }
        }
    }
}

#ifdef NON_MATCHING
// The group and the result in swapped saved registers, and the span's computation (57 off).
int func_800731EC(Group48 *g, int k, Def48 *t, int c, int side) {
    int r = 0;

    if (g->m_2C) {
        int ok = func_8007351C(g, k);
        int n = *(int *)((u8 *)&D_800C845C + (k << 2));

        if (ok >= 2) {
            int seed = t->m_10C;
            int x, y, base;

            if (side) {
                g->m_50 = g->m_48 + 0x3C000;
            } else {
                g->m_50 = g->m_44 - 0x3C000;
            }
            func_80073AA0(g, k, &x, &y);
            base = t->m_208 + g->m_50;
            y += base;
            x += base;
            if (func_80073C2C(g, x, y, c, g->m_40, 1, 0, -1, -1)) {
                int v, i;
                Obj48 *buf[4];
                int *kinds;

                v = *(int *)((u8 *)&D_800C8470 + (k << 2)) - 1;
                v = g->m_38 - v;
                g->m_04 = (g->m_04 * 214013 + 2531011) ^ seed;
                v = abs(g->m_04) % v + g->m_3C;
                kinds = (int *)((u8 *)&D_800C849C + (k << 4));
                for (i = 0; i < n; i++) {
                    Obj48 *o = func_8007345C(g, g);
                    int kk = *kinds++;

                    buf[i] = o;
                    func_800728E0(o, (Src48 *)g, k, kk, t, *(int *)((u8 *)&D_800C8714 + (kk << 2)),
                                  i, buf, v + *(int *)((u8 *)&D_800C8484 + (kk << 2)), g->m_28, c);
                }
                g->m_28++;
                r = 1;
            }
        }
    }
    return r;
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_48", func_800731EC);
#endif
