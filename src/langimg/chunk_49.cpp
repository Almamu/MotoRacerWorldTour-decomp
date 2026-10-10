#include "common.h"

/* A pool of entries and its owner (docs/matching/issue-50-langimg-chunk49.md) */

extern "C" {
// An entry, 0xCC bytes
struct Ent49 {
    u8 m_00[8];
    u8 m_08[0xC];     // its position
    short m_14[0x10]; // its matrix
    int m_34;
    int m_38; // where it is along the track
    u8 m_3C[0x44];
    int m_80; // bit 0: in use
    u8 m_84[0x18];
    int m_9C; // its speed
    u8 m_A0[0x2C];
};
struct Pool49 {
    u8 m_00[0x30];
    int m_30; // how many
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
struct Lnk49 {
    Lnk49 *m_00;
    Lnk49 *m_04;
    int m_08;
    int m_0C[2];
};
struct Flags49 {
    unsigned m_lo : 8;
    unsigned m_a : 2;
    unsigned m_b : 2;
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
extern int D_800CB870, D_800CB874, D_800CB878, D_800CB880, D_800CB884, D_800CB888;
extern int D_800D60FC, D_800D6100, D_800D60EC, D_800D6128;
struct Time49 {
    int m_t : 30;
    u32 m_f : 2;
};
extern Time49 D_800D6124;
extern int D_800C87B4, D_800C8744; // vtables
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
void func_800746B0(Obj49 *o, int dflt, int dir, int e, int sub);
struct Vec49 {
    int x;
    int y;
    int z;
};
void func_8009964C(Vec49 *v, int k);
void func_80099D48(Vec49 *v, int s);
void func_80063C60(Pos49 *o, u8 *p, Vec49 *v, int a, int k, int b, int d);
void func_8007356C(Pool49 *p, Pos49 *w, Trk49 *t);
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

#ifdef NON_MATCHING
// The heading's loads and the call's first argument: the original sets &v first and reads through $a3
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
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_49", func_8007356C);
#endif

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_49", func_800736BC);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_49", func_80073AA0);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_49", func_80073C2C);

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

#ifdef NON_MATCHING
// The flags word: the original stores it after the first field and again after the second; ours once
Obj49 *func_80074534(Obj49 *o) {
    o->m_34 = &D_800C8744;
    o->m_04 = 1;
    o->m_08 = 1;
    o->m_20 = 0;
    o->m_14 = 0;
    o->m_24 = 0;
    o->m_28 = 0;
    o->m_2C = 0;
    o->m_18 = 0;
    o->m_10 = 0;
    o->m_30 = 0;
    o->m_1C = 0;
    o->m_0Cf.m_a = 1;
    o->m_0Cf.m_c = 0;
    o->m_0Cf.m_d = 0;
    o->m_0Cf.m_b = 0;
    return o;
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_49", func_80074534);
#endif

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

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_49", func_800747A8);

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

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_49", func_80074AC8);

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

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_49", func_80074DA0);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_49", func_80075058);
