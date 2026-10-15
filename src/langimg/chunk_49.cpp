#include "common.h"

/* A pool of entries and its owner (docs/matching/issue-50-langimg-chunk49.md) */

extern "C" {
// An entry, 0xCC bytes
struct Ent49 {
    int m_00;
    int m_04;         // its kind
    u8 m_08[0xC];     // its position
    short m_14[0x10]; // its matrix
    int m_34;
    int m_38; // where it is along the track
    u8 m_3C[4];
    int m_40;
    u8 m_44[0x3C];
    int m_80; // bit 0: in use
    u8 m_84[0x18];
    int m_9C; // its speed
    u8 m_A0[0x2C];
};
struct Who49;
struct Pool49 {
    u8 m_00[0xC];
    int m_0C; // how many racers
    u8 m_10[4];
    struct Who49 *m_14[7]; // the racers
    int m_30;              // how many
    Ent49 *m_34;
};
struct Rng49 {
    int m_00;
    int m_04; // the seed
};
struct Pos49 {
    u8 m_00[0x208];
    int m_208;
};
struct Who49 {
    u8 m_00[0x30];
    Pos49 *m_30;
};
struct Trk49 {
    u8 m_00[0x2C];
    int m_2C; // the track's length
};
struct Node49 {
    Node49 *m_00;
};
struct Base49 {
    int m_00;
    int m_04;
    int m_08;
    int m_0C;
    int m_10;
};
// A link: the next, the previous, two values by direction
struct Vec49 {
    int x;
    int y;
    int z;
};
struct Flags49 {
    unsigned m_lo : 8;
    unsigned m_a : 2;
    unsigned m_b : 2;
};
struct Ang49 {
    short x, y, z, pad;
};
struct Lnk49 {
    Lnk49 *m_00;
    Lnk49 *m_04;
    int m_08;
    int m_0C[2];
    struct Vec49 *m_14; // a key's position
    Ang49 *m_18;        // and angles
    union {
        int m_1C;
        Flags49 m_1Cf;
    };
};
struct Obj49 {
    int m_00;
    int m_04;
    int m_08;
    union {
        int m_0C;
        struct {
            int m_a : 4; // a direction
            int m_b : 4; // which time
            unsigned m_c : 4;
            unsigned m_e : 4;
            unsigned m_d : 16;
        } m_0Cf;
    };
    int m_10;
    int m_14;
    int m_18;
    union {
        int *m_1C;
        Flags49 m_1Cf;
    };
    Node49 *m_20;
    int m_24;
    struct Lnk49 *m_28;
    struct Lnk49 *m_2C;
    int m_30;
    void *m_34; // the vtable
};
// An object moved along keys (derived from Obj49)
struct Obj49k {
    Obj49 m_base;
    u8 m_38[0x18];
    struct Vec49 m_50;
    u8 m_5C[0x18];
    Ang49 m_74; // its angles, eased towards the key's
    Ang49 m_7C; // last frame's
    u8 m_84[0x10];
    s8 m_94;
};
extern int D_800CB870, D_800CB874, D_800CB878, D_800CB880, D_800CB884, D_800CB888;
extern int D_800D60FC, D_800D6100, D_800D60EC, D_800D6128;
struct Time49 {
    int m_t : 30;
    u32 m_f : 2;
};
extern Time49 D_800D6124;
extern int D_800C87B4, D_800C8744; // vtables
// The track's tables by kind and section (indexed by bytes, as chunk_48's)
extern int D_800C845C; // how many sections per kind
extern int D_800C849C; // the sections per kind, 4 each
extern int D_800C84EC; // each section's first point
extern int D_800C8504; // each point's next, 11 per section
extern int D_800C860C; // each point's distance, 11 per section
void func_80073AA0(void *g, int k, int *lo, int *hi);
Ent49 *func_8007345C(Pool49 *p, Rng49 *r);
int func_8007351C(Pool49 *p);
Ent49 *func_800741D8(Pool49 *p, int *best, Who49 *w, Trk49 *t);
Base49 *func_80074510(Base49 *b);
Obj49 *func_80074534(Obj49 *o);
void func_800745AC(Obj49 *o, int f);
void func_80074650(void);
void func_80074688(void);
int func_800746A8(void);
void func_80074D20(void);
void func_80074D28(void);
Obj49 *func_80074D30(Obj49 *o);
void func_80074D78(Obj49 *o, int f);
int func_80098D1C(int i);
Lnk49 *func_80074924(Obj49 *o);
void func_800747A8(Obj49 *o, int dir, int *t, int n);
int func_80074AC8(Obj49 *o);
void func_800746B0(Obj49 *o, int dflt, int dir, int e, int sub);
Vec49 *func_8009964C(Vec49 *v, int k); // v * k, returns v
void func_80099D48(Vec49 *v, int s);
void func_80063C60(Pos49 *o, u8 *p, Vec49 *v, int a, int k, int b, int d);
void func_8007356C(Pool49 *p, Pos49 *w, Trk49 *t);
int func_80073C2C(Pool49 *p, int lo, int hi, Trk49 *t, int m, int racers, Ent49 *skip, int skipv,
                  int kind);
void func_80076504(short *a, short b);
int func_80099E3C(Vec49 *a, Vec49 *b);
void func_800758F4(Obj49k *o);
void func_80075A1C(Obj49k *o);
void func_80074DA0(Obj49k *o, int dflt, int dir, int e, int sub);
}
void CobjetLinkDtor49(Node49 *l, int f) asm("_._10CobjetLink");

#ifdef NON_MATCHING
// The search: the original walks two pointers (the entry and its flags) and resets both
/* A free entry picked at random (the C library's rand), the next free one from there. */
Ent49 *func_8007345C(Pool49 *p, Rng49 *r) {
    int n;
    int start;
    int i;
    Ent49 *b;
    Ent49 *e;

    r->m_04 = r->m_04 * 214013 + 2531011;
    n = p->m_30;
    start = ((r->m_04 >> 16) & 0x7FFF) % n;
    b = p->m_34;
    i = start;
    e = &b[i];
    do {
        if (e->m_80 & 1) {
            i++;
            e++;
            if (i == n) {
                e = b;
                i = 0;
            }
        } else {
            return e;
        }
    } while (start != i);
    return 0;
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_49", func_8007345C);
#endif

/* How many entries are free. */
int func_8007351C(Pool49 *p) {
    int i;
    int n = 0;

    for (i = 0; i < p->m_30; i++) {
        if (p->m_34[i].m_80 & 1) {
            continue;
        }
        n++;
    }
    return n;
}

/* Each entry in use ahead of w within the track: its heading passed to func_80063C60. */
void func_8007356C(Pool49 *p, Pos49 *w, Trk49 *t) {
    int i;

    for (i = 0; i < p->m_30; i++) {
        Ent49 *e = &p->m_34[i];

        if (e->m_80 & 1) {
            int d = e->m_38 + e->m_9C * 2 - w->m_208;

            if (d < 0) {
                d += t->m_2C;
            }
            if (d >= t->m_2C) {
                d -= t->m_2C;
            }
            if (d > 0) {
                int speed = 0x14000;
                Vec49 v;
                short *m = e->m_14;
                int k = e->m_34;

                v.x = m[2];
                v.y = m[5];
                v.z = m[8];
                func_8009964C(&v, k);
                func_80099D48(&v, 12);
                func_80063C60(w, e->m_08, &v, k, speed, 0, d);
            }
        }
    }
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_49", func_800736BC);

#define TAB49(t, i) (*(int *)((u8 *)&(t) + ((i) << 2)))

#ifdef NON_MATCHING
// Registers: the sections' list pointer, the section and the first point in other registers than the original's, and the count reread each time round the outer loop (49 off).
void func_80073AA0(void *g, int k, int *lo, int *hi) {
    int *ids = (int *)((u8 *)&D_800C849C + (k << 4));
    int s = ids[0];
    int base;
    int i;

    *lo = 0x7FFFFFFF;
    i = TAB49(D_800C84EC, s);
    base = TAB49(D_800C860C, s * 11 + i);
    *hi = 0x80000000;
    if (*hi < base) {
        *hi = base;
    }
    if (base < *lo) {
        *lo = base;
    }
    for (i = 1; i < TAB49(D_800C845C, k); i++) {
        int j, nx, w;

        s = ids[i];
        j = TAB49(D_800C84EC, s);
        nx = (*(int (*)[][11]) & D_800C8504)[s][j];
        do {
            w = base + (*(int (*)[][11]) & D_800C860C)[s][j];
            if (*hi < w) {
                *hi = w;
            }
            if (w < *lo) {
                *lo = w;
            }
            j = nx;
            nx = (*(int (*)[][11]) & D_800C8504)[s][j];
        } while (j != nx);
        w += 0x19000;
        if (*hi < w) {
            *hi = w;
        }
    }
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_49", func_80073AA0);
#endif

// A distance along the track brought within half its length
static inline int Wrap49(int d, int half, int len) {
    if (half < d) {
        d -= len;
    }
    if (d < -half) {
        d += len;
    }
    return d;
}

// Whether the stretch from lo - m to hi + m is free of the pool's entries
// (but skip, those with skipv at 0x40 and, unless kind is -1, of other kinds)
// and, with racers, of the racers within 0x32000
#ifdef NON_MATCHING
// GCC hoists lo - m out of the first loop into a saved register where the original recomputes it in each pass and keeps the entries' count there instead; the registers differ from there on (73 off).
int func_80073C2C(Pool49 *p, int lo, int hi, Trk49 *t, int m, int racers, Ent49 *skip, int skipv,
                  int kind) {
    int len = t->m_2C;
    int half = len >> 1;
    int i;

    for (i = 0; i < p->m_30; i++) {
        Ent49 *e = &p->m_34[i];

        if (e != skip && e->m_40 != skipv && (kind == -1 || e->m_04 == kind) && (e->m_80 & 1)) {
            int a = Wrap49(lo - m - e->m_38, half, len);
            int b = Wrap49(hi + m - e->m_38, half, len);

            if (a < 0 && b > 0) {
                return 0;
            }
        }
    }
    if (racers) {
        for (i = 0; i < p->m_0C; i++) {
            int pos = p->m_14[i]->m_30->m_208;
            int a = Wrap49(lo - pos - 0x32000, half, len);
            int b = Wrap49(hi - pos + 0x32000, half, len);

            if (b > 0 && a < 0) {
                return 0;
            }
        }
    }
    return 1;
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_49", func_80073C2C);
#endif

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_49", func_80073E54);

#ifdef NON_MATCHING
// Registers: the original keeps the pool in $a0 and reuses $a3 for the distance
/* The entry in use nearest ahead of w along the track, its distance in *best. */
Ent49 *func_800741D8(Pool49 *p, int *best, Who49 *w, Trk49 *t) {
    int i;
    Ent49 *r = 0;
    int len;

    *best = 0x7FFFFFFF;
    len = t->m_2C;
    for (i = 0; i < p->m_30; i++) {
        Ent49 *e = &p->m_34[i];

        if (e->m_80 & 1) {
            int d = e->m_38 - w->m_30->m_208;

            if (d < 0) {
                d += len;
            }
            if (d < *best) {
                r = e;
                *best = d;
            }
        }
    }
    return r;
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_49", func_800741D8);
#endif

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_49", func_80074270);

Base49 *func_80074510(Base49 *b) {
    b->m_00 = 0;
    b->m_04 = 0;
    b->m_08 = 1;
    b->m_0C = -1;
    b->m_10 = -1;
    return b;
}

Obj49 *func_80074534(Obj49 *o) {
    o->m_34 = &D_800C8744;
    o->m_04 = 1;
    o->m_08 = 1;
    o->m_20 = 0;
    o->m_0Cf.m_a = 1;
    o->m_14 = 0;
    o->m_24 = 0;
    o->m_28 = 0;
    o->m_2C = 0;
    o->m_18 = 0;
    o->m_10 = 0;
    o->m_30 = 0;
    o->m_1C = 0;
    o->m_0Cf.m_c = 0;
    o->m_0Cf.m_d = 0;
    o->m_0Cf.m_b = 0;
    return o;
}

void func_800745AC(Obj49 *o, int f) {
    Node49 *n;
    Node49 *first;

    o->m_34 = &D_800C8744;
    n = o->m_20;
    first = n;
    if (n) {
        do {
            Node49 *next = n->m_00;

            if (n) {
                delete n;
            }
            n = next;
        } while (n != first);
    }
    if (o->m_1C) {
        delete[] o->m_1C;
        o->m_1C = 0;
    }
    o->m_20 = 0;
    if (f & 1) {
        delete o;
    }
}

void func_80074650(void) {
    D_800CB880 = D_800D6124.m_t;
    D_800CB884 = D_800D60EC;
    D_800CB874 = D_800CB870 = D_800D6128;
}

void func_80074688(void) {
    D_800CB888 = D_800D60FC;
    D_800CB878 = D_800D6100;
}

int func_800746A8(void) {
    return 0;
}

void func_800746B0(Obj49 *o, int dflt, int dir, int e, int sub) {
    Lnk49 *l;
    int v;

    o->m_24 = (&D_800CB880)[o->m_0Cf.m_b];
    if (sub != -1) {
        o->m_24 -= sub;
    }
    if (dir) {
        o->m_0Cf.m_a = dir;
    }
    l = func_80074924(o);
    o->m_2C = l;
    v = -1;
    if (l) {
        v = l->m_0C[((u32)o->m_0C >> 3) & 1];
    }
    if (v >= 0) {
        o->m_14 = v;
    } else {
        o->m_14 = dflt;
    }
    o->m_0Cf.m_e = e;
}

/* The current link set n links in from the start (or, going backwards, from
 * the end of the first run of links), then stepped while the time *t covers
 * each link's time. */
#ifdef NON_MATCHING
// Registers and the loops' layout: the original walks the backward count and the result in one register, copies n for the forward walk, and lays the time loop's test at its top (62 off).
void func_800747A8(Obj49 *o, int dir, int *t, int n) {
    if (dir) {
        o->m_0Cf.m_a = dir;
    }
    if (o->m_0Cf.m_a >= 0) {
        Lnk49 *p = (Lnk49 *)o->m_20;

        if (p && n > 0) {
            int k = n;

            do {
                p = p->m_00;
            } while (--k);
        }
        o->m_28 = p;
    } else {
        Lnk49 *h = (Lnk49 *)o->m_20;
        Lnk49 *p = h;
        int c = 0;

        if (h && !h->m_08) {
            do {
                p = p->m_00;
                c++;
            } while (!p->m_08);
        }
        c++;
        if (c > 0) {
            int k = c - (n + 1);

            p = h;
            if (p && k > 0) {
                do {
                    p = p->m_00;
                } while (--k);
            }
            o->m_28 = p;
        }
    }
    if (t) {
        int go = 1;

        while (go) {
            Lnk49 *x;
            int d;

            if (*t <= 0) {
                break;
            }
            x = func_80074924(o);
            d = x->m_0C[((u32)o->m_0C >> 3) & 1];
            if (d >= 0 && d < *t) {
                *t -= d;
                o->m_28 = x;
            } else {
                go = 0;
            }
        }
    }
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_49", func_800747A8);
#endif

#ifdef NON_MATCHING
// The mode's tests (the original's tree: == 2, < 3, == 3) and the loads' order
/* The link |direction| steps along, the direction chosen first by the mode. */
Lnk49 *func_80074924(Obj49 *o) {
    int d = o->m_0Cf.m_a;
    int n = d < 0 ? -d : d;
    Lnk49 *r = 0;

    switch (o->m_08) {
    case 2: {
        Lnk49 *c = o->m_28;

        if ((c->m_08 && d > 0) || (c->m_04->m_08 && d < 0)) {
            o->m_0Cf.m_a = -o->m_0Cf.m_a;
        }
        break;
    }
    case 3:
        n = func_80098D1C(5) & 0xF;
        o->m_0Cf.m_a = (func_80098D1C(5) & 2) - 1;
        break;
    }
    if (n) {
        Lnk49 *l = o->m_28;

        r = l;
        if (o->m_0Cf.m_a > 0) {
            // Always one step from the start: the original's
            while (n--) {
                r = l->m_00;
            }
        } else if (o->m_0Cf.m_a < 0) {
            while (n--) {
                r = l->m_04;
            }
        }
    }
    return r;
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_49", func_80074924);
#endif

/* CobjetLink's destructor: its list walked (its elements' destructors are empty). */
void CobjetLinkDtor49(Node49 *l, int f) {
    Node49 *p = l;

    if (p) {
        do {
            p = p->m_00;
        } while (p);
    }
    if (f & 1) {
        operator delete(l);
    }
}

// A GCC 2 vtable entry: the this adjustment and the function
struct VtEntry49 {
    short m_delta;
    short m_index;
    void *m_func;
};

/* An object stepped along its links by the time: when the current step's
 * time is over, on to the next link (its first and last calls through the
 * vtable), the progress at 0x10 in 16.16; again while it's past the end. */
#ifdef NON_MATCHING
// With the chunk's -fmove-all-movables the constants 2 and 1 stay in saved registers as in the original, but the next link and the direction land in other registers and the compare with 1 for 0x08 uses the hoisted one where the original loads 1 again (105 off).
int func_80074AC8(Obj49 *o) {
    int now = (&D_800CB880)[o->m_0Cf.m_b];
    int called = 0;
    int again;
    int r;

    do {
        r = 0;
        again = 0;
        o->m_30 = 0;
        if (o->m_28 && o->m_2C) {
            Lnk49 *n = o->m_2C;
            int dir = o->m_0Cf.m_a;
            int f = 0;
            int el;

            if ((dir > 0 && n->m_08) || (dir < 0 && n->m_04->m_08)) {
                f = 1;
            }
            el = now - o->m_24;
            if (el >= o->m_14 || o->m_14 <= 0) {
                int rest = el - o->m_14;

                o->m_28 = o->m_2C;
                if (f && o->m_08 == 1) {
                    VtEntry49 *v;

                    func_800747A8(o, 0, &rest, 0);
                    v = &((VtEntry49 *)o->m_34)[4];
                    ((void (*)(void *))v->m_func)((u8 *)o + v->m_delta);
                }
                if (o->m_04 == 2 || (o->m_04 == 1 && !f)) {
                    VtEntry49 *v = &((VtEntry49 *)o->m_34)[6];

                    ((void (*)(void *, int, int, int, int))v->m_func)((u8 *)o + v->m_delta, o->m_14,
                                                                      0, called, rest);
                } else {
                    o->m_30 = (int)o->m_2C;
                    o->m_2C = 0;
                }
                if (o->m_14 <= 0) {
                    goto done;
                }
            }
            o->m_10 = ((now - o->m_24) << 16) / o->m_14;
        done:
            o->m_18 = now;
            r = o->m_2C || o->m_30;
            if (o->m_10 > 0x10000) {
                if (o->m_2C) {
                    again = 1;
                } else if (o->m_30) {
                    again = 0;
                    o->m_10 = 0x10000;
                }
            }
        }
        called = 1;
    } while (again);
    return r;
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_49", func_80074AC8);
#endif

void func_80074D20(void) {
}

void func_80074D28(void) {
}

Obj49 *func_80074D30(Obj49 *o) {
    func_80074510((Base49 *)o);
    o->m_1Cf.m_a = 1;
    o->m_1Cf.m_b = 1;
    return o;
}

void func_80074D78(Obj49 *o, int f) {
    o->m_34 = &D_800C87B4;
    func_800745AC(o, f);
}

static inline void VecCopyL49(Vec49 *d, Vec49 *s) {
    int x = s->x;
    int y = s->y;
    int z = s->z;

    d->x = x;
    d->y = y;
    d->z = z;
}

// Whether two angles differ
static inline int AngNe49(Ang49 *a, Ang49 *b) {
    int r = 0;

    if (a->x != b->x || a->y != b->y || a->z != b->z) {
        r = 1;
    }
    return r;
}

#ifdef NON_MATCHING
// Registers: the object and the second argument in swapped saved registers (the key then reusing the argument's), and the vtable call's function and offset in other registers (45 off).
void func_80074DA0(Obj49k *o, int dflt, int dir, int e, int sub) {
    Lnk49 *k;

    if (o->m_base.m_28) {
        void (*fn)(void *);
        int d;

        if (e) {
            d = ((VtEntry49 *)o->m_base.m_34)[4].m_delta;
            fn = (void (*)(void *))((VtEntry49 *)o->m_base.m_34)[4].m_func;
        } else {
            d = ((VtEntry49 *)o->m_base.m_34)[5].m_delta;
            fn = (void (*)(void *))((VtEntry49 *)o->m_base.m_34)[5].m_func;
        }
        fn((u8 *)o + d);
    }
    func_800746B0(&o->m_base, dflt, dir, e, sub);
    k = o->m_base.m_2C;
    if (k) {
        Lnk49 *p;
        Vec49 a, b;
        Ang49 u, t;
        int f, g;

        t = *k->m_18;
        p = o->m_base.m_28;
        func_80076504(&o->m_74.x, t.x);
        func_80076504(&o->m_74.y, t.y);
        func_80076504(&o->m_74.z, t.z);
        o->m_7C = o->m_74;
        VecCopyL49(&a, p->m_14);
        VecCopyL49(&b, k->m_14);
        f = 0;
        if (e || func_80099E3C(&o->m_50, &b)) {
            f = 1;
        }
        k->m_1Cf.m_a = f;
        if (!o->m_94) {
            u = *p->m_18;
            t = *k->m_18;
        }
        g = 0;
        if (e || o->m_94 || AngNe49(&o->m_7C, &t)) {
            g = 1;
        }
        k->m_1Cf.m_b = g;
        if (k->m_1Cf.m_lo == 1) {
            func_800758F4(o);
            if (!o->m_94) {
                func_80075A1C(o);
            }
        }
    }
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_49", func_80074DA0);
#endif

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_49", func_80075058);
