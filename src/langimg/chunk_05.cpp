#include "common.h"
#include "langimg/race.h"

/* The game's code built with GCC 2.91.66, -G8, split addresses
 * (docs/matching/issue-6-langimg-chunk05.md). */

static inline void VecZero(Vector3 *v) {
    v->vx = v->vy = v->vz = 0;
}

static inline void VecCopy(Vector3 *d, Vector3 *s) {
    d->vx = s->vx;
    d->vy = s->vy;
    d->vz = s->vz;
}

static inline void VecCopyL(Vector3 *d, Vector3 *s) {
    int x = s->vx;
    int y = s->vy;
    int z = s->vz;

    d->vx = x;
    d->vy = y;
    d->vz = z;
}

extern "C" {
extern short D_800BF3A0[][2]; // sines and cosines by angle (4.12)
void func_8001C8C0(Track *t, Vector3 *out, int sec, int pt, int lane, int frac, Vector3 *dir);
Vector3 *func_80099834(Vector3 *v, Vector3 *w); // v -= w
Vector3 *func_8009964C(Vector3 *v, int k);      // v * k
Vector3 *func_80099D48(Vector3 *v, int shift);  // v >> shift
void func_80098E9C(Vector3 *v);
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
    if (e->m_30->m_pos.m_next) {
        do {
            RaceEntryX *x = e->m_30;

            VecZero(&x->m_174);
            VecZero(&x->m_18C);
            VecZero(&x->m_180);
            e = x->m_pos.m_next;
            x->m_198 = 0x1000;
        } while (e != t->m_74);
    }
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_05", func_8001B974);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_05", func_8001C4A0);

#ifdef NON_MATCHING
/* A first draft, right in shape: the two sections' offsets swap saved registers and the lane reads are scheduled otherwise (95 off) */
/* A position on the track: between point pt of section sec and the next
 * one (frac in 4.12), across in lane by its interpolated width along the
 * line's normal on the ground; that normal in dir if asked. */
void func_8001C8C0(Track *t, Vector3 *out, int sec, int pt, int lane, int frac, Vector3 *dir) {
    TrackSection *a;
    TrackSection *b;
    int ns = sec;
    int np = pt + 1;
    int w0, w1, w;
    Vector3 r1, r2, q;

    if (np >= t->m_sections[sec].m_count) {
        np = 0;
        if (sec) {
            np = t->m_sections[sec].m_next;
            ns = 0;
        }
    }
    a = &t->m_sections[sec];
    b = &t->m_sections[ns];
    w0 = a->m_lanes[lane][pt].m_width;
    w1 = b->m_lanes[lane][np].m_width;
    r1.vx = D_800BF3A0[a->m_pts[pt].m_angle & 0xFFF][1];
    r1.vy = 0;
    r1.vz = D_800BF3A0[a->m_pts[pt].m_angle & 0xFFF][0];
    r2.vx = D_800BF3A0[b->m_pts[np].m_angle & 0xFFF][1];
    r2.vy = 0;
    r2.vz = D_800BF3A0[b->m_pts[np].m_angle & 0xFFF][0];
    w = ((((w1 << 9) - (w0 << 9)) * frac) >> 12) + (w0 << 9);
    func_80099834(&r2, &r1);
    func_8009964C(&r2, frac);
    func_80099D48(&r2, 12);
    func_800997D0(&r2.vx, &r1.vx);
    func_80098E9C(&r2);
    r1.vx = r2.vz;
    r1.vz = -r2.vx;
    if (dir) {
        VecCopy(dir, &r1);
    }
    func_8009964C(&r1, w);
    func_80099D48(&r1, 12);
    q = t->m_sections[sec].m_pts[pt].m_pos;
    VecCopyL(out, &t->m_sections[ns].m_pts[np].m_pos);
    func_80099834(out, &q);
    func_8009964C(out, frac);
    func_80099D48(out, 12);
    func_800997D0(&out->vx, &q.vx);
    func_800997D0(&out->vx, &r1.vx);
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_05", func_8001C8C0);
#endif

/* The highest kind index along an entry's chain, of the entries of kind 2. */
void func_8001CBA0(RaceSort *t, RaceEntry *e) {
    RaceEntry *x;

    t->m_78 = 0;
    for (x = e->m_30->m_pos.m_chain; x; x = x->m_30->m_pos.m_chain) {
        int k = x->m_bits.m_kind5;

        if (k == 2 && t->m_78 < x->m_30->m_474) {
            t->m_78 = x->m_30->m_474;
        }
    }
}

#ifdef NON_MATCHING
/* Registers and scheduling (111 off) in the ring and the gap search */
/* Links the racing entries into a ring by distance; returns the one
 * behind the biggest gap. */
RaceEntry *func_8001CC14(RaceSort *t, RaceWorld *w) {
    RaceEntry *list[5];
    RaceEntry *e;
    RaceEntry *r;
    int n = 0;
    int k;
    int i;
    int j;
    int last;

    e = w->m_race->m_entries;
    for (k = 0; k < 5; k++, e++) {
        int on = e->m_bits.m_on;

        if (on) {
            list[n++] = e;
        }
    }
    last = n - 1;
    for (j = last; j > 0; j--) {
        RacePos *p = &list[0]->m_30->m_pos;

        for (i = 0; i < j; i++) {
            RacePos *q = p;

            p = &list[i + 1]->m_30->m_pos;
            if (p->m_dist < q->m_dist) {
                RaceEntry *tmp = list[i];

                list[i] = list[i + 1];
                list[i + 1] = tmp;
                p = q;
            }
        }
    }
    for (j = 1; j < last; j++) {
        RaceEntryX *x = list[j]->m_30;

        x->m_pos.m_next = list[j + 1];
        x->m_pos.m_prev = list[j - 1];
    }
    if (n >= 2) {
        int gap;
        int best;
        int prev;
        int now;

        RaceEntryX *xl = list[last]->m_30;
        RaceEntryX *x0 = list[0]->m_30;

        xl->m_pos.m_next = list[0];
        xl->m_pos.m_prev = list[n - 2];
        x0->m_pos.m_prev = list[last];
        x0->m_pos.m_next = list[1];
        gap = func_8001D018((Track *)t, &list[last]->m_30->m_pos, &list[0]->m_30->m_pos);
        if (gap < 0) {
            gap = -gap;
        }
        best = 0;
        prev = last;
        for (j = 0; j < n; j++) {
            int d = func_8001D018((Track *)t, &list[prev]->m_30->m_pos, &list[j]->m_30->m_pos);

            if (d < 0) {
                d = -d;
            }
            if (gap < d) {
                gap = d;
                best = j;
            }
            prev = j;
        }
        now = D_800D60FC;
        for (j = 0; j < n; j++) {
            RaceEntryX *x = list[j]->m_30;

            if (x->m_pos.m_last && x->m_pos.m_last == x->m_pos.m_next &&
                now - list[j]->m_530 > 10000) {
                list[j]->m_530 = now;
                list[j]->m_534 = 0;
            }
            x = list[j]->m_30;
            x->m_pos.m_last = x->m_pos.m_prev;
        }
        r = list[best];
    } else {
        r = 0;
        if (n) {
            list[0]->m_30->m_pos.m_next = 0;
            list[0]->m_30->m_pos.m_prev = 0;
            r = 0;
        }
    }
    return r;
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_05", func_8001CC14);
#endif

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
int func_8001D018(Track *t, RacePos *a, RacePos *b) {
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
