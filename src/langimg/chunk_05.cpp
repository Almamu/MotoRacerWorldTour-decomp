#include "common.h"
#include "langimg/race.h"

/* The game's code built with GCC 2.91.66, -G8, split addresses
 * (docs/matching/issue-6-langimg-chunk05.md). */

static inline void VecZero(Vector3 *v) {
    v->vx = v->vy = v->vz = 0;
}

/* Sorts the race's entries of kind 0x44 by their m_474, and resets the
 * rest. */
void func_8001B778(RaceSort *t, RaceWorld *w) {
    int count[7];
    Race *r;
    int i;
    int j;

    for (i = 0; i < 7; i++) {
        count[i] = 0;
    }
    r = w->m_race;
    for (j = 0; j < 5; j++) {
        RaceEntry *e = RaceGetEntry(r, j);

        if ((e->m_flags & 0x7E) == 0x44) {
            RaceEntryX *x = e->m_30;
            int k = x->m_474;

            t->m_by[k][count[k]] = x;
            count[k]++;
        }
    }
    t->m_74 = 0;
    t->m_78 = 0;
    t->m_7C = 7;
    t->m_80 = -1;
    t->m_88 = 0;
    t->m_84 = -1;
    t->m_180 = 0x12345678;
}

/* The race state's frame: the entries stepped, the places sorted, and the
 * ring's vectors reset. */
void func_8001B84C(RaceSort *t, RaceWorld *w) {
    RaceEntry *e;
    int i;

    if (!t->m_34) {
        return;
    }
    func_8001CC14(t, w);
    e = w->m_race->m_entries;
    t->m_80 = -1;
    for (i = 0; i < 5; i++, e++) {
        int on = e->m_bits.m_on;

        if (on) {
            func_8001B974(t, i, w, 0);
        }
    }
    func_8001CBA0(t, t->m_74);
    func_8001CF34(t);
    D_800CB42C = 0;
    e = t->m_74;
    if (e->m_30->m_ring) {
        do {
            RaceEntryX *x = e->m_30;

            VecZero(&x->m_174);
            VecZero(&x->m_18C);
            VecZero(&x->m_180);
            e = x->m_ring;
            x->m_198 = 0x1000;
        } while (e != t->m_74);
    }
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_05", func_8001B974);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_05", func_8001C4A0);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_05", func_8001C8C0);

/* The highest kind index along an entry's chain, of the entries of kind 2. */
void func_8001CBA0(RaceSort *t, RaceEntry *e) {
    RaceEntry *x;

    t->m_78 = 0;
    for (x = e->m_30->m_next; x; x = x->m_30->m_next) {
        int k = x->m_bits.m_kind5;

        if (k == 2 && t->m_78 < x->m_30->m_474) {
            t->m_78 = x->m_30->m_474;
        }
    }
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_05", func_8001CC14);

#ifdef NON_MATCHING
/* Equivalent; the original walks m_count and m_by with pointers of their
 * own (strength reduction) and uses $s0 */
/* Sorts each kind's entries, furthest first, and gives them their places. */
void func_8001CF34(RaceSort *t) {
    int k;

    for (k = 0; k < t->m_kinds; k++) {
        int n = t->m_count[k];
        int i;
        int j;

        for (j = n - 1; j > 0; j--) {
            for (i = 0; i < j; i++) {
                RaceEntryX *a = t->m_by[k][i];
                RaceEntryX *b = t->m_by[k][j];

                if (a->m_214 < b->m_214) {
                    t->m_by[k][i] = b;
                    t->m_by[k][j] = a;
                }
            }
        }
        for (i = 0; i < n; i++) {
            t->m_by[k][i]->m_218 = i;
        }
    }
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_05", func_8001CF34);
#endif

/* How far b is ahead of a, within half a lap either way. */
int func_8001D018(Track *t, TrackPos *a, TrackPos *b) {
    int d = b->m_dist - a->m_dist;
    int half = t->m_len >> 1;

    while (d > half) {
        d -= t->m_len;
    }
    while (d < -half) {
        d += t->m_len;
    }
    return d;
}

/* A vector not set yet */
static inline void VecUnset(Vector3 *v) {
    v->vx = 0xCDCDCDCD;
    v->vy = 0xCDCDCDCD;
    v->vz = 0xCDCDCDCD;
}

void func_8001D07C(RaceCam *c) {
    VecUnset(&c->m_14);
    c->m_20.vx = 0xCDCDCDCD;
    c->m_20.vy = 0xCDCDCDCD;
    c->m_20.vz = 0xCDCDCDCD;
    VecUnset(&c->m_2C);
    c->m_38.vx = 0xCDCDCDCD;
    c->m_38.vy = 0xCDCDCDCD;
    c->m_38.vz = 0xCDCDCDCD;
    c->m_44.vx = 0xCDCDCDCD;
    c->m_44.vy = 0xCDCDCDCD;
    c->m_44.vz = 0xCDCDCDCD;
    c->m_00 = 0;
    c->m_04 = 0;
    c->m_08 = 0;
    c->m_0C = 0;
    c->m_10 = 0;
    c->m_68 = 0;
    c->m_50 = 0;
    c->m_54 = 0;
    c->m_58 = 0;
    c->m_08 = 0;
    c->m_5C = 0;
    c->m_0C = 0;
    c->m_10 = 0;
    c->m_64 = 0;
    c->m_60 = 0;
}

Racer *func_8001D108(Racer *r) {
    int i;

    i = 5;
    while (i--) {
    }
    i = 3;
    while (i--) {
    }
    i = 3;
    while (i--) {
    }
    r->m_24 = r->m_20 = -1;
    r->m_00 = 0;
    r->m_04 = 0;
    r->m_08 = 0;
    r->m_0C = 0;
    r->m_B8 = 0;
    r->m_15C = 0x64000;
    r->m_1C = 0;
    r->m_180 = 0;
    return r;
}

void func_8001D180(Racer *r, int flags) {
    func_8001D99C(r);
    if (flags & 1) {
        __builtin_delete(r);
    }
}

/* Gives the racer a slot, with its speeds. */
void func_8001D1C4(Racer *r, RacerSlot *s) {
    r->m_180 = s;
    if (s) {
        s->m_34 = r->m_174 * 2;
        r->m_180->m_10 = r->m_150 * 2;
        r->m_180->m_00 = r->m_15C > 0x1000 ? r->m_15C >> 12 : r->m_15C;
        r->m_180->m_04 =
            r->m_154 + r->m_164 > 0x1000 ? (r->m_154 + r->m_164) >> 12 : r->m_154 + r->m_164;
    }
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_05", func_8001D23C);
