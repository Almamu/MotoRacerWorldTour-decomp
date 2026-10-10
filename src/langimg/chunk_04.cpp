#include "common.h"
#include "langimg/seq.h"
#include "langimg/race.h"
#include "langimg/ui.h"
#include "gte.h"

/* The game's code built with GCC 2.91.66, -G8, split addresses
 * (docs/matching/issue-5-langimg-chunk04.md). */

extern "C" {

// A range's definition (0x34 bytes)
struct RangeDef {
    int m_00;
    short m_04;
    short m_06; // the value at 0
    short m_08; // the value at 1 (4.12)
    u16 m_0A;
    u16 m_0C;
    u16 m_0E;
    short m_10; // the needle's width
    short m_12; // its tail
    int m_14;
    int m_18;
    int m_1C; // its colour
    int m_20[5];
};

// A range: its definition and its state
struct Range {
    RangeDef m_def;
    short m_34;
    short m_36;
    short m_38; // the position, 4.12
    short m_3A; // the value there
    short m_3C;
    short m_3E;
    short m_40;
    short m_42;
    short m_44;
    short m_46;
    u8 m_48;
    u8 m_49;
};

// What D_800C5E14 points at: 4 flags at 0xE4, one per object type
extern u8 *D_800C5E14;
void func_80019F0C(Range *r, RangeDef *def);
void func_80019FA4(Range *r, int a, int b);
void func_80019FB0(Range *r, int a, int b);
void func_80019FBC(Range *r, int pos);
void func_8001A4F0(Range *r, int id, int x, int y, int abr, int fill, int color);
extern u8 *D_800CC030[];      // the textures, by id
extern short D_800BF3A0[][2]; // sines and cosines by angle (4.12)
void func_8001A2A0(Range *r);

// A grid of 32-unit cells (0x38 bytes)
struct Grid {
    int m_x;
    int m_y; // 24.8
    int m_z;
    short m_nb[4]; // 0x0C: the neighbours, as distances (-0x7FFF: none)
    u8 m_14[0x14];
    int m_28;
    u8 m_2C[0xC];
};

struct GridPair {
    int m_00;
    int m_04;
};

GridPair *func_8001A62C(GridPair *p);
void func_8001A63C(GridPair *p, int flags);
int func_8001A664(Grid *g, Vector3 *v);
int func_8001A7F4(Grid *g, Vector3 *v, int n, int a);

// A set of grids, with a coarse index of them
struct GridSet {
    short m_count;
    Grid *m_grids;
    u8 m_08[0x10];
    int m_w; // 0x18: the index's size
    int m_d;
    int m_cell;          // 0x20: an index cell's size
    short (*m_index)[2]; // 0x24: each index cell's first and last grid
};
int func_8001A6AC(GridSet *gs, Vector3 *v, int a, int exact);
int func_8001A86C(Grid *base, Vector3 *v, int n, Grid *g);
int func_8001ABBC(Grid *g, SVECTOR *c, int a);
int func_8001AD78(void *self, int a, int b);
int func_8001AF3C(Grid *g, Vector3 *v, SVECTOR *c);
void func_8001AFB0(Grid *g, SVECTOR *c, Vector3 *v);
int func_8001B76C(Grid *g);
void func_8001AD9C(void *self, int t, SVECTOR *a, SVECTOR *b, SVECTOR *out);
int func_8001ACE4(void *self, int *plane, SVECTOR *a, SVECTOR *b, long *d);
int func_8001AE40(void *self, int *plane, SVECTOR *a, SVECTOR *b, SVECTOR *out);

void func_8001B6B4(RaceSort *t, RaceWorld *w);
}

#ifdef NON_MATCHING
/* Registers only (6 off): two constants in $a3, and an address add */
/* A sequence's frame: each entry's linked object applied
 * (func_80017B88), the state set while any is running, the object
 * types seen flagged in D_800C5E14; and when it has stopped, its objects
 * reset. Returns its state. */
int func_8001983C(Seq *s) {
    SeqEntry *e;
    SeqEntry *f;
    int *seen;
    int prev;
    int st;

    s->m_state = 0;
    if ((e = s->m_entries)) {
        seen = 0;
        if (D_800C5E14) {
            seen = (int *)(D_800C5E14 + 0xE4);
        }
        for (; e; e = e->m_next) {
            int none = 0xFFF000;
            int types = 0xC0000000;
            int one = 1;
            Cobjet *o = 0;
            int i = e->m_obj;
            CobjetList *objs = s->m_objs;
            CobjetLinkedPos *k;
            int st;
            int run;

            if (i >= 0) {
                o = objs->m_items[i];
            }
            if (!o || (o->m_04 & 0x100000) || (*(int *)e & none) == none) {
                continue;
            }
            k = (CobjetLinkedPos *)s->m_links->m_items[e->m_link];
            st = s->m_state;
            run = 0;
            if ((k->m_flags & 0xF00) || func_80017B88(o, k)) {
                run = 1;
            }
            s->m_state = st | run;
            if (seen) {
                int t = ((u32)(o->m_04 & types) >> 30) - 1;

                if (t >= 0 && !seen[t]) {
                    seen[t] = one;
                }
            }
        }
    }
    if ((prev = s->m_prev) && !(st = s->m_state)) {
        if ((st = s->m_reset)) {
            func_80019A98(s, 0x180000, 0);
        }
        for (f = s->m_entries; f; f = f->m_next) {
            Cobjet *o = 0;
            int i = f->m_obj;
            CobjetList *objs = s->m_objs;

            if (i >= 0) {
                o = objs->m_items[i];
            }
            if (o && !(o->m_04 & 1)) {
                func_80017A0C(o);
            }
        }
    }
    return s->m_state;
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_04", func_8001983C);
#endif

/* Sets and clears flags on the sequence's objects. Returns whether it has
 * entries. */
int func_80019A98(Seq *s, int set, int clear) {
    SeqEntry *e;

    if (s->m_objs && (e = s->m_entries)) {
        do {
            if (e->m_obj != -1) {
                Cobjet *o = 0;
                int i = e->m_obj;
                CobjetList *objs = s->m_objs;

                if (i >= 0) {
                    o = objs->m_items[i];
                }
                if (o) {
                    o->m_04 = (o->m_04 | set) & ~clear;
                }
            }
        } while ((e = e->m_next));
    }
    return s->m_entries != 0;
}

/* Clears m_2C on the sequence's linked entries with that id (-1: all). */
void func_80019B2C(Seq *s, int id) {
    SeqEntry *e;

    if (s->m_links && (e = s->m_entries)) {
        do {
            if (e->m_link != -1) {
                CobjetLinked *x = s->m_links->m_items[e->m_link];

                if (x && (id == -1 || x->m_id == id)) {
                    x->m_2C = 0;
                }
            }
        } while ((e = e->m_next));
    }
}

/* Sets the direction of the sequence's linked entries with that id. */
void func_80019BC4(Seq *s, int dir, int id) {
    SeqEntry *e;

    if (s->m_links && (e = s->m_entries)) {
        do {
            if (e->m_link != -1) {
                CobjetLinked *x = s->m_links->m_items[e->m_link];

                if (x && (id == -1 || x->m_id == id)) {
                    int v = (dir & 0xF) << 8;

                    x->m_flags = (x->m_flags & ~0xF00) | v;
                }
            }
        } while ((e = e->m_next));
    }
}

/* The set's sequence of that name, or 0. */
Seq *func_80019C78(SeqSet *set, const char *name) {
    Seq *s = set->m_first;
    Seq *r = 0;

    if (name && *(s8 *)name && s) {
        do {
            if (!func_800A60AC(name, s->Get())) {
                r = s;
            } else {
                s = s->m_next;
            }
        } while (s && !r);
    }
    return r;
}

/* Starts a sequence (func_80019578) if it has entries; returns its count. */
int func_80019D0C(SeqSet *set, Seq *s, int a, int back, int c) {
    int r = 0;

    if (s) {
        r = s->m_count;
        if (r > 0) {
            func_80019578(s, a, back, c);
        }
    }
    return r;
}

/* Starts the set's sequence of that name. */
int func_80019D60(SeqSet *set, const char *name, int a, int back, int c) {
    return func_80019D0C(set, func_80019C78(set, name), a, back, c);
}

/* Resets the flags of the set's sequences of a mode (0: all). */
void func_80019DC0(SeqSet *set, int mode) {
    Seq *s;

    for (s = set->m_first; s; s = s->m_next) {
        if (!mode || s->m_mode == mode) {
            func_80019A98(s, 0x180000, 0);
        }
    }
}

/* A frame of the set's sequences: the stopped ones' flags cleared, the
 * running ones stepped (func_8001983C). Returns their results, or'ed. */
int func_80019E30(SeqSet *set) {
    Seq *s;

    for (s = set->m_first; s; s = s->m_next) {
        int st = s->m_state;

        if (st) {
            func_80019A98(s, 0, 0x200);
        }
    }
    set->m_0C = set->m_08;
    set->m_08 = 0;
    for (s = set->m_first; s; s = s->m_next) {
        int st;

        s->m_prev = s->m_state;
        if ((st = s->m_state)) {
            set->m_08 |= func_8001983C(s);
        }
    }
    return set->m_08;
}

/* Sets a range up from its definition. */
void func_80019F0C(Range *r, RangeDef *def) {
    r->m_def = *def;
    r->m_34 = r->m_def.m_0A - r->m_def.m_0C;
    r->m_36 = r->m_def.m_0A - r->m_def.m_0E;
    func_80019FBC(r, 0);
    r->m_44 = 0;
    r->m_48 = 0;
    r->m_46 = 0;
    r->m_49 = 0;
}

void func_80019FA4(Range *r, int a, int b) {
    r->m_40 = a;
    r->m_42 = b;
}

void func_80019FB0(Range *r, int a, int b) {
    r->m_3C = a;
    r->m_3E = b;
}

/* Moves the range to pos (4.12): its value goes from m_06 towards m_08. */
void func_80019FBC(Range *r, int pos) {
    r->m_38 = pos;
    r->m_3A = r->m_def.m_06 - (r->m_def.m_06 - r->m_def.m_08) * pos / 4096;
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_04", func_80019FF8);

#ifdef NON_MATCHING
/* Equivalent; the multiplications scheduled otherwise (141 off) */
/* Draws the range's needle: a quad turned by the value m_3A. */
void func_8001A2A0(Range *r) {
    int i = r->m_3A & 0xFFF;
    int bx = (D_800BF3A0[i][1] * r->m_40) >> 12;
    int ax = (D_800BF3A0[i][0] * r->m_40) >> 12;
    int by = -((D_800BF3A0[i][1] * r->m_42) >> 12);
    int ay = -((D_800BF3A0[i][0] * r->m_42) >> 12);
    int len = (r->m_36 + (short)r->m_def.m_0E / 2) << 4;
    int tail = ((r->m_36 * 819) >> 11) << 4;
    int x1 = bx * len;
    int y1 = ay * len;
    int x2 = ax * r->m_def.m_10;
    int y2 = by * r->m_def.m_10;
    int x3 = bx * tail;
    int y3 = ay * tail;
    int x4 = ax * r->m_def.m_12;
    int y4 = by * r->m_def.m_12;
    int cx = r->m_3C + 0x20;
    int cy = r->m_3E + 0x14;
    u_long *p = (u_long *)D_800C8C70;

    p[0] = 0x05000000;
    p[1] = r->m_def.m_1C | 0x28000000;
    p[2] = XY(cx + ((x1 - x2 + 0x8000) >> 16), cy + ((y1 + y2 + 0x8000) >> 16));
    p[3] = XY(cx + ((x1 + x2 + 0x8000) >> 16), cy + ((y1 - y2 + 0x8000) >> 16));
    p[4] = XY(cx - ((x3 + x4 + 0x8000) >> 16), cy - ((y3 - y4 + 0x8000) >> 16));
    p[5] = XY(cx - ((x3 - x4 + 0x8000) >> 16), cy - ((y3 + y4 + 0x8000) >> 16));
    ADD_PRIM(D_800CBDC0 + 1, p);
    D_800C8C70 = (u8 *)(p + 6);
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_04", func_8001A2A0);
#endif

#ifdef NON_MATCHING
/* Registers: x copied to $t7, the texture and the table pointers in other
 * registers */
/* Draws a range as a sprite, its width filled to fill (4.12), then the
 * draw mode for abr (-1: opaque) and back. */
void func_8001A4F0(Range *r, int id, int x, int y, int abr, int fill, int color) {
    u8 *t = D_800CC030[id];
    u_long *p;
    u_long *ot;
    int w;
    int h;

    if (!t) {
        return;
    }
    w = (t[0xA] - t[0] + 1) * fill >> 12;
    ot = D_800CBDC0 + 1;
    p = (u_long *)D_800C8C70;
    h = t[0xB] - t[1] + 1;
    p[0] = 0x04000000;
    p[1] = color | (abr < 0 ? 0x64000000 : 0x66000000);
    p[2] = XY(r->m_3C + x, r->m_3E + y);
    p[3] = *(u_long *)t;
    p[4] = (h << 16) + w;
    ADD_PRIM(ot, p);
    p += 5;
    p[0] = 0x01000000;
    p[1] = (((UiTexture *)t)->tpage & 0x1FF) | (((abr & 3) << 9) | 0xE1000000);
    ADD_PRIM(ot, p);
    p += 2;
    p[0] = 0x01000000;
    p[1] = 0xE1000200;
    ADD_PRIM(ot, p);
    p += 2;
    D_800C8C70 = (u8 *)p;
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_04", func_8001A4F0);
#endif

GridPair *func_8001A62C(GridPair *p) {
    p->m_00 = 0;
    p->m_04 = 0;
    return p;
}

void func_8001A63C(GridPair *p, int flags) {
    if (flags & 1) {
        __builtin_delete(p);
    }
}

/* Whether a position is in the grid and its cell is set (func_8001ABBC). */
int func_8001A664(Grid *g, Vector3 *v) {
    SVECTOR c;

    if (!func_8001AF3C(g, v, &c)) {
        return 0;
    }
    return func_8001ABBC(g, &c, 0);
}

/* The set's grid a position is in: func_8001A86C's, else (unless exact)
 * the first through the index, or -1. */
int func_8001A6AC(GridSet *gs, Vector3 *v, int a, int exact) {
    int r = func_8001A86C(gs->m_grids, v, gs->m_count, (Grid *)a);
    int x;
    int z;
    int i;

    if (r >= 0) {
        return r;
    }
    if (exact) {
        return -1;
    }
    x = (v->vx >> 12) / gs->m_cell;
    z = (v->vz >> 12) / gs->m_cell;
    i = z * gs->m_w + x;
    if (gs->m_index && i >= 0 && i < gs->m_w * gs->m_d) {
        short *c = gs->m_index[i];
        int n = c[1] - c[0] + 1;

        if (n <= 0) {
            return -1;
        }
        r = func_8001A7F4(gs->m_grids + c[0], v, n, a);
        if (r >= 0) {
            r += c[0];
        }
    } else {
        r = func_8001A7F4(gs->m_grids, v, gs->m_count, a);
    }
    return r;
}

#ifdef NON_MATCHING
/* Scheduling (7 off): the original sets i first and tests n again after
 * the loop */
/* The first of n grids a position is in, or -1. */
int func_8001A7F4(Grid *g, Vector3 *v, int n, int a) {
    int i = 0;
    int r;

    while (n && (r = func_8001A664(g, v), g++, !r)) {
        i++;
        n--;
    }
    if (!n) {
        i = -1;
    }
    return i;
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_04", func_8001A7F4);
#endif

#ifdef NON_MATCHING
/* A first draft, right in effect: the original runs out of saved registers and spills g and two constants around the calls (0x98 frame, here 0x88) */
/* The index of the grid holding v, from base: g, one of its neighbours,
 * or one of theirs not tried yet; -1 if none. */
int func_8001A86C(Grid *base, Vector3 *v, int n_unused, Grid *g) {
    Grid *seen[14];
    Vector3 p = *v;
    int r = -1;
    int n = 0;
    int i, j, k;

    if (!g) {
        return r;
    }
    if (func_8001A664(g, &p)) {
        return g - base;
    }
    for (i = 0; i < 4; i++) {
        Grid *h;

        if (r != -1) {
            return r;
        }
        h = g->m_nb[i] == -0x7FFF ? 0 : g + g->m_nb[i];
        if (h && func_8001A664(h, &p)) {
            r = h - base;
        }
    }
    if (r != -1) {
        return r;
    }
    seen[n++] = g;
    for (i = 0; i < 4; i++) {
        if (g->m_nb[i] != -0x7FFF) {
            seen[n++] = g + g->m_nb[i];
        }
    }
    for (i = 0; i < 4; i++) {
        Grid *h;

        if (r != -1) {
            return r;
        }
        h = g->m_nb[i] == -0x7FFF ? 0 : g + g->m_nb[i];
        if (!h) {
            continue;
        }
        for (j = 0; j < 4; j++) {
            Grid *q;
            int found;

            if (r != -1) {
                break;
            }
            q = h->m_nb[j] == -0x7FFF ? 0 : h + h->m_nb[j];
            if (!q) {
                continue;
            }
            found = 0;
            for (k = 0; k < n; k++) {
                if (seen[k] == q) {
                    found = 1;
                    break;
                }
            }
            if (found) {
                continue;
            }
            seen[n++] = q;
            if (func_8001A664(q, &p)) {
                r = q - base;
            }
        }
    }
    return r;
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_04", func_8001A86C);
#endif

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_04", func_8001ABBC);

#ifdef NON_MATCHING
/* Scheduling and registers (28 off): the operands loaded in another order
 * and d stored after the result */
/* The distances of a and b from a plane (its angle in the low 12 bits,
 * its distance in the high 16), through the GTE; whether they're on
 * either side. */
int func_8001ACE4(void *self, int *plane, SVECTOR *a, SVECTOR *b, long *d) {
    int p = *plane;
    int sc = *(int *)D_800BF3A0[p & 0xFFF];
    int dist = p >> 16;
    int zero = 0;
    int da;
    int db;
    int r;

    GTE_SET_V0((u32)sc >> 16, sc);
    GTE_SET_BK(dist, zero, dist);
    GTE_SET_LIGHT(*(int *)a, (u16)a->vz, zero, *(int *)b, (int)b->vz);
    GTE_MVMVA_LV0TR();
    GTE_GET_MAC13(da, db);
    r = (u32)(da ^ db) >> 31;
    d[0] = da;
    d[1] = db;
    return r;
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_04", func_8001ACE4);
#endif

/* a over a - b, 4.12; 0 if they're equal. */
int func_8001AD78(void *self, int a, int b) {
    if (a == b) {
        return 0;
    }
    return (a << 12) / (a - b);
}

/* From a towards b by t (4.12). */
void func_8001AD9C(void *self, int t, SVECTOR *a, SVECTOR *b, SVECTOR *out) {
    out->vx = a->vx + (b->vx - a->vx) * t / 4096;
    out->vy = a->vy + (b->vy - a->vy) * t / 4096;
    out->vz = a->vz + (b->vz - a->vz) * t / 4096;
}

/* Where a to b crosses the plane: a moved along it when a is behind, the
 * interpolation otherwise. The plane's angle is taken from the pointer
 * itself, as the original does. */
int func_8001AE40(void *self, int *plane, SVECTOR *a, SVECTOR *b, SVECTOR *out) {
    long d[2];

    func_8001ACE4(self, plane, a, b, d);
    if (d[0] < 0) {
        int sc = *(int *)D_800BF3A0[(int)plane & 0xFFF];

        out->vx = a->vx - ((d[0] * (sc >> 16)) >> 12);
        out->vy = a->vy;
        out->vz = a->vz - ((d[0] * (short)sc) >> 12);
    } else {
        func_8001AD9C(self, func_8001AD78(self, d[0], d[1]), a, b, out);
    }
    return 1;
}

/* A position's cell in the grid; 0 if out of range. */
int func_8001AF3C(Grid *g, Vector3 *v, SVECTOR *c) {
    int x = (v->vx - g->m_x) >> 5;
    int y = (v->vy - (g->m_y >> 8)) >> 5;
    int z = (v->vz - g->m_z) >> 5;

    if ((short)x != x) {
        return 0;
    }
    if ((short)z != z) {
        return 0;
    }
    c->vx = x;
    c->vy = y;
    c->vz = z;
    return 1;
}

/* A cell's position. */
void func_8001AFB0(Grid *g, SVECTOR *c, Vector3 *v) {
    int y;

    v->vx = (c->vx << 5) + g->m_x;
    y = g->m_y >> 8;
    v->vy = (c->vy << 5) + y;
    v->vz = (c->vz << 5) + g->m_z;
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_04", func_8001AFF4);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_04", func_8001B15C);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_04", func_8001B350);

/* Sorts the race's entries of kind 0x44 by their m_474. */
void func_8001B6B4(RaceSort *t, RaceWorld *w) {
    Race *r;
    int i;
    int j;

    t->m_00 = 0;
    for (i = 0; i < 7; i++) {
        t->m_count[i] = 0;
    }
    r = w->m_race;
    for (j = 0; j < 5; j++) {
        RaceEntry *e = RaceGetEntry(r, j);

        if ((e->m_flags & 0x7E) == 0x44) {
            RaceEntryX *x = e->m_30;
            int k = x->m_474;

            t->m_by[k][t->m_count[k]] = x;
            t->m_count[k]++;
        }
    }
}

int func_8001B76C(Grid *g) {
    return g->m_28 != 0;
}
