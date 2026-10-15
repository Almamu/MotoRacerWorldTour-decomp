#include "common.h"
#include "langimg/cobjet.h"
#include "gte.h"
#include "langimg/ui.h"
#include "langimg/seq.h"

/* The game's code built with GCC 2.91.66, -G8, split addresses
 * (docs/matching/issue-4-langimg-chunk03.md). */

/* Cobjet's constructor and destructor, called by the subclasses below by
 * their symbols: the subclasses' names aren't known, so they're plain
 * functions that set the vtable pointer (Cobjet + 0x50) themselves. */
extern Cobjet *CobjetCtor(Cobjet *o) asm("__6Cobjet");
extern void CobjetDtor(Cobjet *o, int flags) asm("_._6Cobjet");
#define SET_VTABLE(o, vt) (*(void **)((char *)(o) + 0x50) = (vt))

extern "C" {
void *func_80096240(int id);
extern int D_800CBE80;
extern int D_800CBE84;
extern int D_800CA778;
void func_800185F0(CobjetList *l, int set, int clear, int from, int to);
void func_8001865C(CobjetList *l);
void func_80018814(void);

// A 2D object: Cobjet's flag 1 (its prim at 0x10, its screen position in
// its flags)
struct Obj2D {
    int m_00;
    u32 m_flags; // 0x04: bits 11-21 x, 22-31 y
    int m_08;
    int m_page; // 0x0C: or the prim's own
    int *m_prim;
};
void func_800194E4(Obj2D *o);

// The 2D drawing state (D_800C886C): a C++ object, its vtable pointer at
// 0x68
struct DrawState {
    u8 m_00[0x64];
    int m_64; // the current setting of the virtual call at 0x70
};
// A GCC 2 vtable entry
struct VtEntry {
    short m_delta;
    short m_index;
    void (*m_func)(void *self, int v);
};
// The virtual function at vtable + 0x70 (entry 14)
#define DRAW_SET(g, v) \
    do { \
        VtEntry *_vt = *(VtEntry **)((char *)(g) + 0x68); \
        _vt[14].m_func((char *)(g) + _vt[14].m_delta, v); \
    } while (0)
extern DrawState *D_800C886C;
extern u8 D_800C885C;
extern u8 D_800C885D;
extern int D_800C8860;
int func_80077BE4(void *tex, int align, int x, int y);

void func_80018954(MATRIX *view, Cobjet *o, long *sxy);
/* The subclasses' vtables: one entry each, their destructor */
extern int D_800C4948[];
extern int D_800C4958[];
extern int D_800C4968[];
}

/* A Cobjet with a tree and three more fields (vtable D_800C4948) */
class CobjetTreeObj : public Cobjet {
public:
    Cobjet *m_54;      // the object it was put after
    Cobjet *m_58;      // what follows it
    int m_5C;          // put first, as a parent's first child
    CobjetTree m_tree; // 0x60: the tree it starts with
};

static inline Cobjet *Next(Cobjet *o) {
    return o->m_40 ? o->m_40->m_next : 0;
}

static inline Cobjet *First(Cobjet *o) {
    return o->m_40 ? o->m_40->m_first : 0;
}

extern "C" {
CobjetTreeObj *func_8001816C(CobjetTreeObj *o);
void func_800181CC(CobjetTreeObj *o, int flags);
void func_80018224(CobjetList *l, CobjetTreeObj *g, Cobjet *c);
void func_800184A4(CobjetList *l, CobjetTreeObj *g);
}

/* Draws the list's objects from start on, n of them: their drawn flags
 * cleared first, then each top object's tree. */
void func_800177E8(CobjetList *l, int start, int n) {
    Cobjet **p;
    Cobjet *o;
    int i;

    D_800C8904 = 0;
    if (n > 0) {
        i = n;
        p = l->m_items + start;
        do {
            o = *p;
            if (o && !(o->m_04 & 1)) {
                o->m_46 = 0;
            }
            p++;
        } while (--i);
        i = n;
        p = l->m_items + start;
        do {
            o = *p;
            if (o && o->m_44 && !(o->m_04 & 1)) {
                if (func_80016E34((CobjetModel *)o, 0, 0)) {
                    l->m_drawn++;
                }
            }
            p++;
        } while (--i);
    }
}

/* Makes room for n part numbers. */
int func_800178DC(Cobjet *o, int n) {
    int r = 0;

    if (n > 0) {
        if (o->m_38) {
            delete[] o->m_38;
            o->m_38 = 0;
        }
        r = (o->m_38 = new short[n]) != 0;
        o->m_3C = n;
        o->m_3D = 0;
    }
    return r;
}

/* The model of the object's current part, or 0. */
int *func_80017948(Cobjet *o) {
    int *r = 0;

    if (o->m_3C > 0) {
        r = D_800C8C68->m_items[o->m_38[o->m_3D]];
    }
    return r;
}

/* Sets m_3F, through func_8006E02C and func_8006E004; -1 clears it. */
void func_8001798C(Cobjet *o, int v) {
    if (v == -1) {
        if (o->m_3F != v) {
            func_8006E02C(o);
        }
    } else if (o->m_3F != v) {
        if (o->m_3F != -1) {
            func_8006E02C(o);
        }
        o->m_3F = v;
        func_8006E004(o);
    }
}

void func_80017A0C(Cobjet *o) {
    func_8001798C(o, o->m_3E);
}

/* Clears m_2C on the object's linked entries with that id (-1: all). */
void func_80017A30(Cobjet *o, int id) {
    CobjetLink *l;

    for (l = o->m_links; l; l = l->m_next) {
        CobjetLinked *e = D_800C873C->m_items[l->m_index];

        if (e && (id == -1 || e->m_id == id)) {
            e->m_2C = 0;
        }
    }
}

/* Restarts the object's linked entries with that id (-1: all). */
void func_80017A9C(Cobjet *o, int id) {
    CobjetLink *l;

    for (l = o->m_links; l; l = l->m_next) {
        CobjetLinked *e = D_800C873C->m_items[l->m_index];

        if (e && (id == -1 || e->m_id == id)) {
            func_800747A8(e, 0, 0, 0);
            e->v20();
            e->v30(0, 0, 1, -1);
        }
    }
}

/* Applies a linked entry to the object once (flags 0xF000 force it, 0xF00
 * holds it back): for types 3 to 5, on an object without a matrix, its
 * position and func_80016998. */
int func_80017B88(Cobjet *o, CobjetLinkedPos *e) {
    int r = 0;
    int ok;
    int unused[8]; /* the frame's 0x20 bytes of locals */

    if (!(e->m_flags & 0xF00)) {
        D_800C8740 = o;
        if (e->m_flags & 0xF000) {
            o->m_04 |= 0x200;
            ok = 1;
        } else {
            ok = e->v18();
        }
        if (ok) {
            switch (e->m_id) {
            case 3:
            case 4:
            case 5:
                if (!o->m_matp) {
                    Vector3 *p = &e->m_44;

                    if ((e->m_94 << 16) >> 28) { /* bits 12-15, signed */
                        o->m_04 |= 0x200;
                        o->m_matp->t[0] = p->vx;
                        o->m_matp->t[1] = p->vy;
                        o->m_matp->t[2] = p->vz;
                    }
                    if (e->m_98 << 8) { /* bits 0-23 */
                        func_80016998(o, &e->m_74);
                        o->m_04 |= 0x200;
                    }
                }
                break;
            default:
                o->m_04 |= 0x200;
                break;
            }
            e->m_flags &= ~0xF000;
            r = 1;
        }
    }
    return r;
}

/* Puts an object in the list's slot i, the one there removed first. */
int func_80017CF0(CobjetList *l, int i, Cobjet *o) {
    int r = 0;

    if (l->m_items && i >= 0 && i < l->m_count) {
        func_80017D74(l, i);
        r = 1;
        l->m_items[i] = o;
    }
    return r;
}

/* Deletes the object in the list's slot i. */
void func_80017D74(CobjetList *l, int i) {
    if (l->m_items && i >= 0 && i < l->m_count && l->m_items[i]) {
        delete l->m_items[i];
        l->m_items[i] = 0;
    }
}

/* The list's object of that name, or 0. */
Cobjet *func_80017E10(CobjetList *l, const char *name, int len) {
    Cobjet *r = 0;
    int i = func_80017E64(l, name, len);

    if (i != -1) {
        r = l->m_items[i];
    }
    return r;
}

/* The slot of the list's last object of that name (lower-cased, at most
 * len characters; -1: whole), or -1. */
int func_80017E64(CobjetList *l, const char *name, int len) {
    char buf[32];
    int r = -1;
    int count = l->m_count;
    int n;
    int i;
    char *p;
    u8 c;
    Cobjet **o;
    const char *q;

    if (name && count > 0) {
        p = buf;
        q = name;
        n = 31;
        if (len > 0 && n < len) {
            n = len;
        }
        c = *name;
        *p = c;
        goto lower;
    next:
        q++;
        c = *q;
        if (!*(s8 *)q) {
            goto end;
        }
        *p = c;
    lower:
        if (c >= 'A' && c <= 'Z') {
            *p = c + 0x20;
        }
        p++;
        if (--n > 0) {
            goto next;
        }
    end:
        i = count - 1;
        *p = 0;
        o = &l->m_items[i];
        if (o) {
            if (len != -1) {
                do {
                    if (*o && (*o)->Equals(buf, len, 1)) {
                        r = i;
                        break;
                    }
                    i--;
                    o--;
                } while (i >= 0);
            } else {
                do {
                    if (*o && (*o)->Equals(buf, 0x20, 1)) {
                        r = i;
                        break;
                    }
                    i--;
                    o--;
                } while (i >= 0);
            }
        }
    }
    return r;
}

/* The list's first free slot, or -1. */
int func_80017FB4(CobjetList *l) {
    int r = -1;
    int i;
    Cobjet **p;

    if (l->m_items) {
        int n;
        int none;

        /* an empty loop keeps i = 0 before the loads (found by the permuter) */
        do {
            i = 0;
        } while (0);
        n = l->m_count;
        p = l->m_items;
        none = -1;
    top:
        if (i < n) {
            if (!*p) {
                r = i;
            }
            p++;
            i++;
            if (r == none) {
                goto top;
            }
        }
    }
    return r;
}

/* The list's object whose tree has child first or next (func_80018048). */
Cobjet *func_80018008(CobjetList *l, Cobjet *child, int *first) {
    int i = func_80018048(l, child, first);
    Cobjet *r = 0;

    if (i >= 0) {
        r = l->m_items[i];
    }
    return r;
}

/* The slot of the list's object whose tree has child as its first child
 * (*first = 1) or next sibling (*first = 0), or -1. */
int func_80018048(CobjetList *l, Cobjet *child, int *first) {
    int r = -1;
    int i;

    *first = 1;
    if (child && l->m_items) {
        int one;
        int none;

        i = 0;
        one = 1;
        none = -1;
    top:
        if (i < l->m_count) {
            Cobjet *o = l->m_items[i];

            if (o && o->m_40) {
                if (o->m_40->m_first == child) {
                    r = i;
                    *first = one;
                } else if (o->m_40->m_next == child) {
                    r = i;
                    *first = 0;
                }
            }
            i++;
            if (r == none) {
                goto top;
            }
        }
    }
    return r;
}

/* The constructor of the Cobjet subclass with vtable D_800C4958. */
Cobjet *func_800180F4(Cobjet *o) {
    CobjetCtor(o);
    SET_VTABLE(o, D_800C4958);
    ((int *)o)[0x5C / 4] = -1;
    return o;
}

/* The constructor of the Cobjet subclass with vtable D_800C4968. */
Cobjet *func_80018130(Cobjet *o) {
    CobjetCtor(o);
    SET_VTABLE(o, D_800C4968);
    ((int *)o)[0x54 / 4] = -1;
    return o;
}

/* CobjetTreeObj's constructor: a tree of its own. */
CobjetTreeObj *func_8001816C(CobjetTreeObj *o) {
    CobjetTree *t;

    CobjetCtor(o);
    SET_VTABLE(o, D_800C4948);
    o->m_tree.m_first = 0;
    o->m_tree.m_next = 0;
    t = (CobjetTree *)__builtin_new(sizeof(CobjetTree));
    t->m_first = 0;
    t->m_next = 0;
    o->m_40 = t;
    o->m_58 = 0;
    o->m_54 = 0;
    o->m_5C = 0;
    return o;
}

/* CobjetTreeObj's destructor. */
void func_800181CC(CobjetTreeObj *o, int flags) {
    SET_VTABLE(o, D_800C4948);
    if (o->m_40) {
        __builtin_delete(o->m_40);
        o->m_40 = 0;
    }
    CobjetDtor(o, flags);
}

/* Puts g in the list's tree in front of c: g takes c's place and c
 * becomes g's first child. */
void func_80018224(CobjetList *l, CobjetTreeObj *g, Cobjet *c) {
    int first;
    Cobjet *parent;
    Cobjet *last;
    Cobjet *prev;
    int n;

    if (g && c) {
        parent = func_80018008(l, c, &first);
        last = c;
        prev = parent;
        if (first) {
            prev = 0;
        }
        while (Next(last)) {
            prev = last;
            last = Next(last);
        }
        if (!last->m_40) {
            last->m_40 = &g->m_tree;
        }
        if (first) {
            n = func_80016A38(c);
            if (n >= 2) {
                if (parent) {
                    parent->m_40->m_first = last;
                }
                last->m_40->m_next = Next(c);
                prev->m_40->m_next = g;
                c->m_40->m_next = First(g);
                g->m_40->m_first = c;
                g->m_54 = prev;
                g->m_5C = 0;
            } else if (n == 1) {
                if (parent) {
                    parent->m_40->m_first = last;
                }
                last->m_40->m_next = g;
                c->m_40->m_next = First(g);
                g->m_40->m_first = c;
                g->m_54 = last;
                g->m_5C = 0;
            } else {
                if (parent) {
                    parent->m_40->m_first = g;
                }
                c->m_40->m_next = g->m_58;
                g->m_40->m_first = c;
                g->m_54 = parent;
                g->m_5C = 1;
            }
        } else {
            g->m_5C = 0;
            if (parent) {
                parent->m_40->m_next = last;
            }
            if (c == prev) {
                last->m_40->m_next = g;
                g->m_54 = last;
            } else {
                last->m_40->m_next = Next(c);
                prev->m_40->m_next = g;
                g->m_54 = prev;
            }
            g->m_40->m_first = c;
            c->m_40->m_next = g->m_58;
        }
    }
    func_80017730(l);
}

/* Next, computed into a local first */
static inline Cobjet *NextOf(Cobjet *o) {
    Cobjet *n = 0;

    if (o->m_40) {
        n = o->m_40->m_next;
    }
    return n;
}

/* Takes g out of the list's tree again (func_80018224's undo). */
void func_800184A4(CobjetList *l, CobjetTreeObj *g) {
    Cobjet *o;
    Cobjet *next;
    int found;

    if (g) {
        if (g->m_54) {
            if (g->m_5C) {
                Cobjet *c = g->m_40->m_first;

                c->m_40->m_next = 0;
                g->m_54->m_40->m_first = c;
            } else {
                g->m_54->m_40->m_next = g->m_40->m_first;
            }
        }
        o = g->m_40->m_first;
        if (o) {
            next = NextOf(o);
            found = 0;
            if (g->m_58 && next) {
            loop:
                if (!o) {
                    goto out;
                }
                if (next == g->m_58) {
                    found = 1;
                    o->m_40->m_next = 0;
                } else {
                    o = next;
                    if (next) {
                        next = NextOf(next);
                    }
                }
                if (found) {
                    goto out;
                }
                if (next) {
                    goto loop;
                }
            }
        }
    out:
        g->m_40->m_first = g->m_58;
        g->m_54 = 0;
    }
    func_80017730(l);
}

/* Sets and clears flags on the list's objects from..to. */
void func_800185F0(CobjetList *l, int set, int clear, int from, int to) {
    Cobjet **p = l->m_items + from;
    int n;

    if (to >= l->m_count) {
        to = l->m_count - 1;
    }
    n = to - from + 1;
    if (n > 0) {
        do {
            if (*p) {
                (*p)->m_04 = ((*p)->m_04 | set) & ~clear;
            }
            p++;
        } while (--n);
    }
}

/* Resolves the texture blocks of the list's models and prims once ("BLKS"
 * blocks become addresses), and the 2D item lists' (func_80015CF4). */
void func_8001865C(CobjetList *l) {
    int i;

    for (i = 0; i < l->m_count; i++) {
        int done = 0x20000000;
        int magic = 0x534B4C42;
        int two = 2;
        Cobjet *o = l->m_items[i];
        int *prim;

        if (!o) {
            continue;
        }
        /* an empty loop around the rest: its registers' weights (found by the
         * permuter) */
        do {
            if (o->m_04 & 1) {
                if (!(o->m_04 & 0x40)) {
                    continue;
                }
                prim = *(int **)&o->m_pos.vz;
            } else if (o->m_04 & 0x2000) {
                int *b = (int *)func_80096240(((CobjetModel *)o)->m_54);

                if (b && b[1] == magic) {
                    ((CobjetModel *)o)->m_54 = D_800CBE84 + b[0];
                }
                continue;
            } else if (o->m_04 & 0x40) {
                prim = ((CobjetModel *)o)->m_prim;
            } else {
                continue;
            }
            if (!(prim[0] & 7)) {
                if (D_800CBE80 && !(prim[0] & done)) {
                    int *b = (int *)func_80096240(prim[2]);

                    if (b && b[1] == magic) {
                        prim[2] = D_800CBE84 + b[0];
                    }
                    prim[0] |= done;
                }
            } else if ((prim[0] & 7) == two) {
                func_80015CF4((UiList *)prim[2]);
            }
        } while (0);
    }
}

/* Waits a little: longer the first time. */
void func_80018814(void) {
    int i;

    if (++D_800CA778 == 1) {
        i = 10;
        while (i--) {
        }
    }
    i = 32;
    while (i--) {
    }
}

/* The destructor of the subclass with vtable D_800C4958. */
void func_8001885C(Cobjet *o, int flags) {
    CobjetDtor(o, flags);
}

/* The destructor of the subclass with vtable D_800C4968. */
void func_8001887C(Cobjet *o, int flags) {
    CobjetDtor(o, flags);
}

/* A rotation matrix from three angles (func_80097E4C). */
void func_8001889C(MATRIX *m, SVECTOR *r) {
    func_80097E4C(m, r->vx, r->vy, r->vz);
}

/* An item's alignment flags (func_80015798's), from its bits 11-14. */
int func_800188CC(int *item) {
    int r = 0;

    switch ((*(u32 *)item >> 11) & 0xF) {
    case 0:
        r = 0;
        break;
    case 1:
        r = 0x10;
        break;
    case 2:
        r = 0x20;
        break;
    case 3:
        r = 0x100;
        break;
    case 4:
        r = 0x110;
        break;
    case 5:
        r = 0x120;
        break;
    case 6:
        r = 0x200;
        break;
    case 7:
        r = 0x210;
        break;
    case 8:
        r = 0x220;
        break;
    }
    return r;
}

#ifdef NON_MATCHING
/* Equivalent; the original recomputes &rot for each use where GCC keeps it
 * in a saved register; the body as an inline function (docs/
 * matching_techniques.md, "Stack addresses kept or recomputed") took it from
 * 118 to 111 off */
/* Where an object's position is on screen, seen through view. */
static inline void ScreenPos03(MATRIX *view, Cobjet *o, long *sxy) {
    Vector3 pos;
    MATRIX rot;
    MATRIX m;
    long d[3];
    long *a;
    long *b;
    CameraLens *l;
    int zsf3, zsf4;
    int tx, ty, tz;
    register int xy asm("$9");
    register int z asm("$10");
    register int r asm("$11");

    pos = o->m_pos;
    m.m[0][0] = m.m[1][1] = m.m[2][2] = 0x1000;
    m.m[0][1] = m.m[0][2] = 0;
    m.m[1][0] = m.m[1][2] = 0;
    m.m[2][0] = m.m[2][1] = 0;
    {
        Vector3 *p = &pos;
        long x = p->vx;
        long y = p->vy;
        long w = p->vz;

        m.t[0] = x;
        m.t[1] = y;
        m.t[2] = w;
    }
    func_80098674(view, &m, &rot);
    a = m.t;
    b = view->t;
    d[0] = a[0] - b[0];
    d[1] = a[1] - b[1];
    d[2] = a[2] - b[2];
    func_8009887C(d, rot.t);
    l = D_800C8864->m_lens;
    zsf3 = (l->m_1C << 16) / ((l->m_14 << 15) + (l->m_14 << 14));
    zsf4 = (l->m_1C << 16) / (l->m_14 << 16);
    GTE_SET_ZSF(zsf3, zsf4);
    tx = rot.t[0] >> 2;
    ty = rot.t[1] >> 2;
    tz = rot.t[2] >> 2;
    GTE_SET_ROT(&rot);
    GTE_SET_TRANS(tx, ty, tz);
    xy = 0;
    GTE_MTC2(xy, 0);
    z = 0;
    GTE_MTC2(z, 1);
    GTE_RTPS();
    GTE_MFC2(r, 14);
    *sxy = r;
}

void func_80018954(MATRIX *view, Cobjet *o, long *sxy) {
    ScreenPos03(view, o, sxy);
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_03", func_80018954);
#endif

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_03", func_80018AEC);

#ifdef NON_MATCHING
/* Equivalent; scheduling: the original stores D_800C885C and D_800C885D
 * before halving the colour, and its branches are laid out otherwise */
/* Draws a prim's 2D item at (x, y) if on screen: a texture (with a white
 * frame for kind 6), or a list of items; page is its colour, halved. */
void func_80019114(int *prim, int page, int x, int y) {
    int saved;
    int align;
    u8 *c;

    saved = D_800C886C->m_64;
    if ((prim[0] & 0xF8) != 0xF8) {
        DRAW_SET(D_800C886C, (prim[0] << 24) >> 27);
    }
    if (x >= D_800C8D90->x && y >= D_800C8D90->y && x < D_800C8D90->x1 && y < D_800C8D90->y1) {
        D_800C885C = !(prim[0] & 0x380000) ? 8 : (((prim[0] << 10) >> 29) - 1) | 0xC;
        D_800C885D = 0x80;
        c = (u8 *)&page;
        c[0] >>= 1;
        c[1] >>= 1;
        c[2] >>= 1;
        c[3] >>= 1;
        D_800C8860 = page;
        align = func_800188CC(prim);
        if (!(prim[0] & 7)) {
            UiTexture *t = (UiTexture *)prim[2];

            if (t) {
                func_80077BE4(t, align, x, y);
                if ((prim[0] & 0x1E000000) == 0x6000000) {
                    int x0 = x;
                    int y0 = y;
                    int w = t->u1 - t->u0 + 1;
                    int h = t->v2 - t->v0 + 1;
                    u_long *p;
                    int code;

                    switch (align & 0xF0) {
                    case 0x10:
                        w /= 2;
                        x0 = x - 1 - w;
                        break;
                    case 0x20:
                        x0 = x - 1 - w;
                        w = 0;
                        break;
                    case 0:
                        x0 = x - 1;
                        break;
                    }
                    switch (align & 0xF00) {
                    case 0x100:
                        h /= 2;
                        y0 = y - 1 - h;
                        break;
                    case 0x200:
                        y0 = y - 1 - h;
                        h = 0;
                        break;
                    case 0:
                        y0 = y - 1;
                        break;
                    }
                    code = 0x40FFFFFF;
                    p = (u_long *)D_800C8C70;
                    p[0] = 0x03000000;
                    p[1] = code;
                    p[2] = XY(x0, y0);
                    p[3] = XY(x + w, y0);
                    ADD_PRIM(D_800CBDC0 + 1, D_800C8C70);
                    p = (u_long *)(D_800C8C70 += 0x10);
                    p[0] = 0x06000000;
                    p[1] = 0x4CFFFFFF;
                    p[2] = XY(x0, y0);
                    p[3] = XY(x0, y + h);
                    p[4] = XY(x + w, y + h);
                    p[5] = XY(x + w, y0);
                    p[6] = 0x55555555;
                    ADD_PRIM(D_800CBDC0 + 1, D_800C8C70);
                    D_800C8C70 += 0x1C;
                }
            }
        } else {
            func_80015798((UiList *)prim[2], x, y, align);
        }
    }
    DRAW_SET(D_800C886C, saved);
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_03", func_80019114);
#endif

/* Draws a 2D object's prim at its position. */
void func_800194E4(Obj2D *o) {
    int *prim = o->m_prim;
    u32 f;
    int page;

    if (prim && ((f = o->m_flags) & 2)) {
        /* the page tested twice and the prim read again: the original's
         * shape (found by the permuter) */
        page = prim[1];
        if (o->m_page) {
            page = o->m_page ? o->m_page : prim[1];
        }
        if ((o->m_prim[0] & 7) == 1) {
            func_80018AEC(o->m_prim, page, (f >> 11) & 0x7FF, f >> 22);
        } else {
            func_80019114(o->m_prim, page, (f >> 11) & 0x7FF, f >> 22);
        }
    }
}

/* Starts a sequence: its objects' flags and m_3F set, and their linked
 * entries restarted, forwards or (back) backwards. Returns whether it has
 * entries. */
int func_80019578(Seq *s, int a, int back, int c) {
    SeqEntry *e;

    s->m_state = 1;
    for (e = s->m_entries; e; e = e->m_next) {
        int seen = 0x10000002;
        int both = 0x180000;
        int keep = ~0x100000;
        int none = 0xFFF000;
        CobjetList *objs;
        Cobjet *o = 0;
        CobjetLinkedPos *k;
        CobjetLink *l;
        int dir;

        objs = s->m_objs;
        if (e->m_obj >= 0) {
            o = objs->m_items[e->m_obj];
        }
        if (!o || (o->m_04 & 1)) {
            continue;
        }
        if (s->m_mode >= 5 && s->m_mode <= 7) {
            o->m_04 |= seen;
        }
        if ((o->m_04 & both) == both) {
            o->m_04 &= keep;
        }
        func_8001798C(o, e->m_3F);
        if ((*(int *)e & none) == none) {
            continue;
        }
        k = (CobjetLinkedPos *)s->m_links->m_items[e->m_link];
        k->m_flags &= ~0xF00;
        l = o->m_links;
        if (l) {
            CobjetLinked *x = s->m_links->m_items[l->m_index];

            if (x && x != k && x->m_id == k->m_id) {
                x->m_2C = 0;
            }
        }
        // The original only walks the rest of the list: its first entry is
        // the only one tested (the loop's branch goes back to the m_next load)
        do {
            l = l->m_next;
        } while (l);
        if (!a && (u32)(k->m_id - 3) < 3) {
            func_800167B8(o, &k->m_44);
            func_800167F8(o, (SVECTOR *)&k->m_74);
        }
        dir = back ? -1 : 1;
        if (k->m_04 == 2 && k->m_2C && !a && dir == ((k->m_flags << 28) >> 28)) {
            continue;
        }
        func_800747A8(k, back ? -1 : 1, &c, 0);
        k->v30(1000, dir, a, c);
    }
    return s->m_entries != 0;
}
