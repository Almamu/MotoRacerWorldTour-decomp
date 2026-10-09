#include "common.h"
#include "langimg/seq.h"

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
    int m_10[9];
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

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_04", func_8001A2A0);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_04", func_8001A4F0);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_04", func_8001A62C);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_04", func_8001A63C);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_04", func_8001A664);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_04", func_8001A6AC);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_04", func_8001A7F4);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_04", func_8001A86C);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_04", func_8001ABBC);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_04", func_8001ACE4);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_04", func_8001AD78);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_04", func_8001AD9C);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_04", func_8001AE40);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_04", func_8001AF3C);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_04", func_8001AFB0);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_04", func_8001AFF4);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_04", func_8001B15C);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_04", func_8001B350);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_04", func_8001B6B4);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_04", func_8001B76C);
