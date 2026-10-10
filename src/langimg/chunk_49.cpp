#include "common.h"

/* A pool of entries and its owner (docs/matching/issue-50-langimg-chunk49.md) */

extern "C" {
// An entry, 0xCC bytes
struct Ent49 {
    u8 m_00[0x38];
    int m_38; // where it is along the track
    u8 m_3C[0x44];
    int m_80; // bit 0: in use
    u8 m_84[0x48];
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
struct Flags49 {
    unsigned m_lo : 8;
    unsigned m_a : 2;
    unsigned m_b : 2;
};
struct Obj49 {
    int m_00;
    int m_04;
    int m_08;
    struct {
        unsigned m_a : 4;
        unsigned m_b : 4;
        unsigned m_c : 4;
        unsigned m_pad : 4;
        unsigned m_d : 16;
    } m_0C;
    int m_10;
    int m_14;
    int m_18;
    union {
        int *m_1C;
        Flags49 m_1Cf;
    };
    Node49 *m_20;
    int m_24;
    int m_28;
    int m_2C;
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

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_49", func_8007356C);

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
    o->m_0C.m_a = 1;
    o->m_0C.m_c = 0;
    o->m_0C.m_d = 0;
    o->m_0C.m_b = 0;
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

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_49", func_800746B0);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_49", func_800747A8);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_49", func_80074924);

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
