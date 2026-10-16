#include "common.h"

// An entry of a list: its kind, its owner, the next, a name and values
struct Item19 {
    int m_00; // its kind: 3
    int m_04; // whose
    struct Item19 *m_08;
    union {
        char m_0C[0x20];
        int m_0Ci[2];
        struct {
            int m_value;
            short m_10h;
            short m_page; // 0x12: a colour page
        } m_col;
        struct {
            s8 m_lo;
            s8 m_hi;
            s8 m_0E;
            s8 m_0F;
            int m_row;
            int m_wrap; // 0x14: 0 wraps round, 1 and 2 stop at the ends
            void *m_18;
        } m_num;
    };
    s8 m_2C;
    s8 m_2D;
    s8 m_2E;
    s8 m_2F;
    u8 m_30;
    s8 m_31; // the second value is used
    s8 m_32;
    u8 m_33;
    void *m_34;
};

struct Char19 {
    int m_00;
    u8 m_04[8];
    char *m_0C; // the letters
    u8 m_10;    // which
    u8 m_11;
    u8 m_12; // a letter
    u8 m_13;
};

struct Slot19 {
    u8 m_00[4];
    int m_04;
    u8 m_08[4];
    int m_0C; // its colour, for kind 0x41
    Char19 *m_10;
    u8 m_14[0x40];
    int m_54; // its colour
    Char19 *m_58;
};

// A menu: its kind, its flags, its slot, its list, a choice
struct Menu19 {
    short m_00;
    u16 m_02;
    u8 m_04[0x24];
    Slot19 *m_28;
    Item19 *m_2C;
    u8 m_30[8];
    int m_38; // its own colour
    s8 m_3C;
    s8 m_3D;
    s8 m_3E;
    s8 m_3F;
    u8 m_40;
    s8 m_41;
    u8 m_42[0xA];
    int m_4C; // how many
    int m_50; // which
    u8 m_54[4];
    u8 m_58;
};

struct View19 {
    char *m_00; // its name
    u8 m_04[0x28];
    u8 m_2C[2]; // the word's bits 24-25: its mode
    s8 m_2E;
    u8 m_2F;
    u8 m_30[0x20];
    u8 m_50[4]; // its sequences
};

// A named entry's handler: called with the scene, a reason and the entry
struct Fn19 {
    char *m_00;
    void (*m_04)(void *g, int a, void *o);
};
struct Fns19 {
    u8 m_00[8];
    Fn19 *m_08;
    int m_0C; // how many
};
// A slider: a value through a pointer, its step and its bounds
struct Bar19 {
    u8 m_00[0x28];
    Slot19 *m_28;
    u8 m_2C[0x10];
    s8 m_3C;
    u8 m_3D[0xB];
    int *m_48;
    int m_4C;        // the lowest
    int m_50;        // the highest
    int m_54;        // the step
    s8 m_58[0x20];   // its sequence's suffix
    char m_78[0x20]; // its name
};
// A named sequence entry (chunk_20's Elem20)
struct Elem19 {
    u8 m_00[0x28];
    int m_28;
    u8 m_2C[4];
    struct Seq19 *m_30;
};
struct Seq19 {
    u8 m_00[0x14];
    int m_14; // its length
};

struct Game19 {
    u8 m_00[0x5C];
    struct Fns19 *m_5C;
    u8 m_60[0xA20];
    View19 *m_A80;
    View19 *m_A84;
    u8 m_A88[8];
    int m_A90;
};

struct Own19 {
    u8 m_00[0x28];
    Slot19 *m_28;
};

struct Tab19 {
    u8 m_00[8];
    short m_08;
    u8 m_0A[2];
    Menu19 **m_0C;
};

struct Res19 {
    u8 m_00[0x28];
    u8 *m_28;
};

// A group of menus (36 bytes)
struct Grp19 {
    u8 m_00[0xA];
    short m_0A; // which
    struct Menu19 **m_0C;
    u8 m_10[0x14];
};
struct Row19 {
    int m_00; // its value
    u8 m_04[4];
    Grp19 *m_08;
};
// The menus' context: the text's owner, the menus by group
struct Ctx19 {
    u8 m_00[0x2C];
    unsigned m_2C_lo : 24;
    int m_mode : 2;
    unsigned m_2C_hi : 6;
    u8 m_30[8];
    void *m_38;
    u8 m_3C[8];
    void *m_44; // its sounds
    u8 m_48[4];
    Row19 *m_4C;
};
// A letter's first word: its colour page in bits 25-28
struct Page19 {
    unsigned m_lo : 25;
    unsigned m_page : 4;
    unsigned m_hi : 3;
};
// A menu's first word, its bits 20-21
struct Flags19 {
    unsigned m_lo : 20;
    int m_mode : 2;
    unsigned m_hi : 10;
};
struct Ref19 {
    u8 m_00[0xA];
    short m_0A;
};

extern "C" {
int func_80017E10(void *o, char *s, int n);
void func_800184A4(void *o, int h);
void func_80018224(void *o, int h, Slot19 *s);
void func_80017A9C(int h, int a);
void func_80037318(Item19 *it, Ctx19 *x, int dir, Menu19 *m);
void func_8003762C(Menu19 *n, Ctx19 *x, Ref19 *r, int a);
void func_8003FC28(void *o, int i, int j);
Res19 *func_8003AA90(void *v, char *name);
int func_80097128(void *p);
Ref19 *func_8003AB24(Ctx19 *x, int g, int a, int b, int c, int d, int e);
void func_80039E74(Ctx19 *x, int a);
void func_800383D8(Menu19 *m, int i, Game19 *g, Item19 *it);
int func_800804B8(s8 c);
void func_80038BBC(Tab19 *t, Game19 *g);
void func_80038CE4(Tab19 *t, Game19 *g);
void func_80038E0C(Tab19 *t, void *g);
void func_80038504(Bar19 *e, Game19 *g);
int sprintf(char *s, const char *f, ...);
extern char D_800C4D7C[];
extern char D_800C4D80[];
Elem19 *func_8003B3C4(View19 *v, const char *name);
int func_80019D0C(void *set, Seq19 *s, int a, int back, int c);
int func_8001983C(Seq19 *s);
void func_80019B2C(Seq19 *s, int id);
int func_8003781C(Menu19 *n, Ctx19 *x, Ref19 *r, int a, int b);
int func_8003899C(Tab19 *t, int flag);
void func_800386B4(Bar19 *m, Game19 *g, int mode);
void func_80038828(Bar19 *m, Game19 *g, int mode);
int func_800A60AC(const char *a, const char *b); // strcmp
void func_80038F44(Tab19 *t, void *g);
int func_80037C80(Menu19 *m);
int func_80037CF8(Menu19 *m);
int func_80037D58(Menu19 *m, int v);
u8 *func_80037DC8(Menu19 *m, void *v);
void func_80038168(Menu19 *m, int k);
void func_80038218(Own19 *o);
void func_8003828C(Own19 *o);
void func_80038300(Menu19 *m, Game19 *a);
void func_80038370(Menu19 *m, Game19 *a);
void func_80038B24(Tab19 *t, void *a);
}

#ifdef NON_MATCHING
// The original keeps 1 in a saved register for the item kind's compare too (with 3, 5 and 0xFF0000; the chunk has -fmove-all-movables), so the reference r goes on the stack; GCC compares with 1 in $t0 and keeps r in $s5 (34 off).
void func_8003762C(Menu19 *n, Ctx19 *x, Ref19 *r, int a) {
    Item19 *it;

    for (it = n->m_2C; it; it = it->m_08) {
        if (it->m_04 != 2) {
            continue;
        }
        switch (it->m_00) {
        case 1:
            if (n->m_28->m_04 & 0x40) {
                n->m_28->m_54 = it->m_0Ci[0];
            }
            break;
        case 2: {
            int h = func_80017E10(x->m_38, it->m_0C, strlen(it->m_0C));

            func_800184A4(x->m_38, h);
            func_80018224(x->m_38, h, n->m_28);
            func_80017A9C(h, -1);
            break;
        }
        case 3:
            func_80037318(it, x, a, n);
            break;
        case 5: {
            Grp19 *g = x->m_4C[it->m_0Ci[1]].m_08;

            if (g) {
                func_8003762C(g[it->m_0Ci[0]].m_0C[r->m_0A], x, r, a);
            }
            break;
        }
        default:
            if (n->m_28->m_04 & 0x40) {
                n->m_28->m_54 = 0xFF0000;
            }
            break;
        }
    }
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_19", func_8003762C);
#endif

int func_8003781C(Menu19 *n, Ctx19 *x, Ref19 *r, int a, int b) {
    int found = 0;
    Item19 *it = n->m_2C;

    if (!b && a) {
        func_8003FC28(x->m_44, 0, n->m_3C);
    }
    for (; it; it = it->m_08) {
        if (it->m_04 != 0) {
            continue;
        }
        switch (it->m_00) {
        case 1: {
            int nm;
            int xm;
            int c;
            Slot19 *sl;

            if (b) {
                found = 1;
                break;
            }
            nm = ((Flags19 *)n)->m_mode;
            c = it->m_col.m_value;
            if (nm) {
                c = n->m_38;
            }
            xm = x->m_mode;
            sl = n->m_28;
            if (xm) {
                if (!(sl->m_04 & 0x41)) {
                    break;
                }
                sl->m_0C = c;
                ((Page19 *)sl->m_10)->m_page = it->m_col.m_page;
            } else {
                if (!(sl->m_04 & 0x40)) {
                    break;
                }
                sl->m_54 = c;
                ((Page19 *)n->m_28->m_58)->m_page = it->m_col.m_page;
            }
            break;
        }
        case 2: {
            int h;

            if (b) {
                found = 1;
                break;
            }
            h = func_80017E10(x->m_38, it->m_0C, strlen(it->m_0C));
            func_800184A4(x->m_38, h);
            func_80018224(x->m_38, h, n->m_28);
            func_80017A9C(h, -1);
            break;
        }
        case 3:
            if (b) {
                found = 1;
                break;
            }
            func_80037318(it, x, a, n);
            if (a) {
                func_8003FC28(x->m_44, 1, n->m_3D);
            }
            break;
        case 4:
            if (b) {
                found = 1;
                break;
            }
            if (!a) {
                if (it->m_num.m_18) {
                    func_8003AB24(x, it->m_num.m_row, 1, 0, 1, -1, 1);
                    x->m_4C[it->m_num.m_row].m_00 = func_80097128(it->m_num.m_18);
                    func_8003AB24(x, it->m_num.m_row, 0, 0, 1, -1, 1);
                }
            } else {
                int v = x->m_4C[it->m_num.m_row].m_00;
                Ref19 *e;

                if (it->m_num.m_lo == it->m_num.m_hi) {
                    v = it->m_num.m_lo;
                } else if (a > 0) {
                    v++;
                    if (it->m_num.m_hi < v) {
                        switch (it->m_num.m_wrap) {
                        case 0:
                            v = it->m_num.m_lo;
                            break;
                        case 1:
                        case 2:
                            v = it->m_num.m_hi;
                            break;
                        }
                    }
                } else {
                    v--;
                    if (v < it->m_num.m_lo) {
                        switch (it->m_num.m_wrap) {
                        case 0:
                            v = it->m_num.m_hi;
                            break;
                        case 1:
                        case 2:
                            v = it->m_num.m_lo;
                            break;
                        }
                    }
                }
                e = func_8003AB24(x, it->m_num.m_row, 1, it->m_num.m_0F, 0, -1, 1);
                x->m_4C[it->m_num.m_row].m_00 = v;
                func_80039E74(x, 8);
                func_8003AB24(x, it->m_num.m_row, 0, 0, !it->m_num.m_0E, e->m_0A, 1);
                func_8003FC28(x->m_44, 5, n->m_41);
            }
            break;
        case 5:
            if (b) {
                found = 1;
                break;
            } else {
                Grp19 *g = x->m_4C[it->m_num.m_row].m_08;

                if (g) {
                    Grp19 *e = &g[it->m_col.m_value];

                    e->m_0A = r->m_0A;
                    func_8003781C(e->m_0C[r->m_0A], x, (Ref19 *)e, a, 0);
                }
            }
            break;
        }
    }
    return found;
}

int func_80037C80(Menu19 *m) {
    int r = 0;
    Item19 *p;

    for (p = m->m_2C; p; p = p->m_08) {
        if (p->m_04 == 0 && p->m_00 == 3) {
            if (p->m_31) {
                r = p->m_2E;
            } else {
                r = p->m_2C;
            }
            break;
        }
    }
    return r;
}

int func_80037CF8(Menu19 *m) {
    int r = 0;
    Item19 *p;

    for (p = m->m_2C; p; p = p->m_08) {
        if (p->m_04 == 1 && p->m_00 == 3) {
            r = p->m_2C;
            break;
        }
    }
    return r;
}

int func_80037D58(Menu19 *m, int v) {
    Item19 *p = m->m_2C;
    int r = 0;

    for (; p; p = p->m_08) {
        if (p->m_04 == 0 && p->m_00 == 3) {
            if (p->m_31) {
                p->m_2E = v;
            } else {
                p->m_2C = v;
            }
            r = 1;
            break;
        }
    }
    return r;
}

u8 *func_80037DC8(Menu19 *m, void *v) {
    u8 *r = 0;
    Item19 *p;

    for (p = m->m_2C; p; p = p->m_08) {
        if (p->m_04 == 0 && p->m_00 == 3) {
            Res19 *x = func_8003AA90(v, p->m_0C);

            if (x) {
                r = x->m_28 + p->m_2C * 32;
                break;
            }
        }
    }
    return r;
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_19", func_80037E70);

void func_80038168(Menu19 *m, int k) {
    Item19 *p;

    for (p = m->m_2C; p; p = p->m_08) {
        if (p->m_04 == k && p->m_00 == 3) {
            if (!p->m_34) {
                return;
            }
            if (p->m_31) {
                int v = func_80097128(p->m_34);

                p->m_2E = v;
                p->m_2C = v;
                p->m_32 = 1;
            } else {
                p->m_2C = func_80097128(p->m_34);
            }
            return;
        }
    }
}

/* The letter stepped up, from 'A' to 'g'. */
void func_80038218(Own19 *o) {
    Slot19 *s = o->m_28;
    Char19 *c;

    if (s->m_04 & 1) {
        c = s->m_10;
    } else {
        c = s->m_58;
    }
    if ((c->m_00 & 0x40007) == 1) {
        if (++c->m_12 >= 0x68) {
            c->m_12 = 0x41;
        }
    }
}

/* The letter stepped down. */
void func_8003828C(Own19 *o) {
    Slot19 *s = o->m_28;
    Char19 *c;

    if (s->m_04 & 1) {
        c = s->m_10;
    } else {
        c = s->m_58;
    }
    if ((c->m_00 & 0x40007) == 1) {
        if (--c->m_12 < 0x41) {
            c->m_12 = 0x67;
        }
    }
}

void func_80038300(Menu19 *m, Game19 *a) {
    m->m_50++;
    func_8003FC28(a, 2, m->m_3E);
    {
        int i = m->m_50;

        if (i >= m->m_4C) {
            i = -1;
        }
        func_800383D8(m, i, a, 0);
    }
}

void func_80038370(Menu19 *m, Game19 *a) {
    if (--m->m_50 >= 0) {
        func_800383D8(m, m->m_50, a, 0);
        func_8003FC28(a, 3, m->m_3F);
    } else {
        m->m_50 = 0;
    }
}

/* Choice i of the menu shown (or none, for -1). */
void func_800383D8(Menu19 *m, int i, Game19 *g, Item19 *it) {
    Slot19 *s = m->m_28;
    Char19 *c;

    if (s->m_04 & 1) {
        c = s->m_10;
    } else {
        c = s->m_58;
    }
    if (i != -1) {
        if (!g) {
            return;
        }
        if (g->m_A90 != 0 && g->m_A90 != 2 && g->m_A90 != 5) {
            return;
        }
        m->m_50 = i;
        if (it) {
            it->m_2E = 5;
        } else {
            g->m_A80->m_2E = 5;
        }
        c->m_00 |= 0x800000;
        c->m_10 = i;
        c->m_13 = m->m_58;
        c->m_12 = func_800804B8(c->m_0C[i]);
    } else if (c->m_00 & 0x800000) {
        if (it) {
            it->m_2E = 0;
        } else if (g) {
            g->m_A80->m_2E = 0;
        }
        c->m_00 &= ~0x800000;
        c->m_10 = 0;
        c->m_11 = 0;
        m->m_50 = -1;
    }
}

// The scene's current view
static inline View19 *View19Of(Game19 *g) {
    View19 *v;

    if (g->m_A90 == 1 || g->m_A90 == 4) {
        v = g->m_A84;
    } else {
        v = g->m_A80;
    }
    return v;
}

/* The slider's value written into its character's letters, and its
 * view's sequence (its name and the slider's suffix) started at the
 * value's place along it. */
void func_80038504(Bar19 *e, Game19 *g) {
    View19 *v;

    if (g->m_A90 == 1 || g->m_A90 == 4) {
        v = g->m_A84;
    } else {
        v = g->m_A80;
    }
    if (g->m_A90) {
        return;
    }
    if (e->m_28->m_04 & 0x40) {
        Slot19 *s = e->m_28;
        Char19 *c;

        if ((int)(*(u32 *)v->m_2C << 6) >> 30) {
            if (s->m_04 & 0x41) {
                c = s->m_10;
            }
        } else {
            c = s->m_58;
        }
        if (!(c->m_00 & 0x40000) && c->m_0C) {
            sprintf(c->m_0C, D_800C4D7C, *e->m_48);
        }
    }
    if (e->m_58[0]) {
        char buf[0x100];
        Elem19 *r;

        v = View19Of(g);
        sprintf(buf, D_800C4D80, v->m_00, (char *)e->m_58);
        r = func_8003B3C4(v, buf);
        if (r) {
            Seq19 *q = r->m_30;

            func_80019D0C(v->m_50, r->m_30, 1, r->m_28,
                          q->m_14 * (*e->m_48 - e->m_4C) / (e->m_50 + 1 - e->m_4C));
            func_8001983C(q);
            func_80019B2C(q, -1);
        }
    }
}

// The handler named name, or none
static inline void Find19(Fns19 *t, const char *name, Fn19 **f) {
    int j;

    for (j = 0; j < t->m_0C; j++) {
        if (!func_800A60AC(t->m_08[j].m_00, name)) {
            *f = &t->m_08[j];
            break;
        }
    }
}

/* The slider stepped up: past its highest, back to its lowest (mode 0),
 * stopped there (1, nothing else done) or held (2); then the sound and the
 * entry's handler called with 3. */
void func_800386B4(Bar19 *m, Game19 *g, int mode) {
    int stop = 0;
    int *v = m->m_48;

    if (v) {
        int x = *v + m->m_54;
        int hi = m->m_50;

        if (hi < x) {
            switch (mode) {
            case 0:
                x = m->m_4C;
                break;
            case 1:
                stop = 1;
            case 2:
                x = hi;
                break;
            }
        }
        *v = x;
        if (!stop) {
            Fn19 *f;

            func_8003FC28(g, 0, m->m_3C);
            f = 0;
            Find19(g->m_5C, m->m_78, &f);
            if (f && f->m_04) {
                f->m_04(g, 3, m);
            }
        }
    }
}

/* The slider stepped down, as func_800386B4. */
void func_80038828(Bar19 *m, Game19 *g, int mode) {
    int stop = 0;
    int *v = m->m_48;

    if (v) {
        int x = *v - m->m_54;
        int lo = m->m_4C;

        if (x < lo) {
            switch (mode) {
            case 0:
                x = m->m_50;
                break;
            case 1:
                stop = 1;
            case 2:
                x = lo;
                break;
            }
        }
        *v = x;
        if (!stop) {
            Fn19 *f;

            func_8003FC28(g, 0, m->m_3C);
            f = 0;
            Find19(g->m_5C, m->m_78, &f);
            if (f && f->m_04) {
                f->m_04(g, 3, m);
            }
        }
    }
}

/* How many of the table's enabled entries are active: those
 * func_8003781C says are, of kind 4, or letter entries (kind 5, only with
 * flag) whose character has bit 22 and a value at 0x50. */
int func_8003899C(Tab19 *t, int flag) {
    int i;
    int n = 0;

    for (i = 0; i < t->m_08; i++) {
        Menu19 *e = t->m_0C[i];

        if (e->m_02 & 0xF && e->m_28->m_04 & 2) {
            int ok = 1;
            Char19 *c;

            if (e->m_00 == 5) {
                if (e->m_28->m_04 & 1) {
                    c = e->m_28->m_10;
                } else {
                    c = e->m_28->m_58;
                }
                if (!flag) {
                    ok = 0;
                }
            }
            if (func_8003781C(e, 0, 0, 0, 1) || e->m_00 == 4 ||
                (e->m_00 == 5 && c->m_00 & 0x400000 && e->m_50 != -1)) {
                if (ok) {
                    n++;
                }
            }
        }
    }
    return n;
}

void func_80038B24(Tab19 *t, void *a) {
    int i;

    for (i = 0; i < t->m_08; i++) {
        Menu19 *e = t->m_0C[i];

        if (e->m_00 == 4) {
            func_80038504((Bar19 *)e, (Game19 *)a);
        }
    }
}

void func_80038BBC(Tab19 *t, Game19 *g) {
    int i;

    for (i = 0; i < t->m_08; i++) {
        Menu19 *e = t->m_0C[i];

        if (e->m_02 & 0xF && e->m_00 == 5) {
            Slot19 *s = e->m_28;
            Char19 *c;

            if (s->m_04 & 1) {
                c = s->m_10;
            } else {
                c = s->m_58;
            }
            if (e->m_28->m_04 & 2 && c->m_00 & 0x400000 && e->m_50 != -1) {
                func_80038300(e, g);
            }
        }
    }
}

void func_80038CE4(Tab19 *t, Game19 *g) {
    int i;

    for (i = 0; i < t->m_08; i++) {
        Menu19 *e = t->m_0C[i];

        if (e->m_02 & 0xF && e->m_00 == 5) {
            Slot19 *s = e->m_28;
            Char19 *c;

            if (s->m_04 & 1) {
                c = s->m_10;
            } else {
                c = s->m_58;
            }
            if (e->m_28->m_04 & 2 && c->m_00 & 0x400000 && e->m_50 != -1) {
                func_80038370(e, g);
            }
        }
    }
}

/* The table's letter entries (kind 5, flagged): each one's letter stepped
 * up, then the sound func_8003FC28(g, -1, 8). */
void func_80038E0C(Tab19 *t, void *g) {
    int i;

    for (i = 0; i < t->m_08; i++) {
        Menu19 *e = t->m_0C[i];

        if (e->m_02 & 0xF && e->m_00 == 5) {
            Slot19 *s = e->m_28;
            Char19 *c;

            if (s->m_04 & 1) {
                c = s->m_10;
            } else {
                c = s->m_58;
            }
            if (e->m_28->m_04 & 2 && c->m_00 & 0x400000 && e->m_50 != -1) {
                func_80038218((Own19 *)e);
                func_8003FC28(g, -1, 8);
            }
        }
    }
}

/* The same, stepped down. */
void func_80038F44(Tab19 *t, void *g) {
    int i;

    for (i = 0; i < t->m_08; i++) {
        Menu19 *e = t->m_0C[i];

        if (e->m_02 & 0xF && e->m_00 == 5) {
            Slot19 *s = e->m_28;
            Char19 *c;

            if (s->m_04 & 1) {
                c = s->m_10;
            } else {
                c = s->m_58;
            }
            if (e->m_28->m_04 & 2 && c->m_00 & 0x400000 && e->m_50 != -1) {
                func_8003828C((Own19 *)e);
                func_8003FC28(g, -1, 8);
            }
        }
    }
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_19", func_8003907C);

// The word after its jump table, the end of this file's .rodata
extern "C" const int D_800B7304 __attribute__((section(".rodata"))) = 0;
