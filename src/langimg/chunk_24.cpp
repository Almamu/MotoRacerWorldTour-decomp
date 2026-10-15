#include "common.h"

/* The game's code built with GCC 2.91.66, -G8, split addresses: more of
 * chunk_23's named objects (docs/matching/issue-25-langimg-chunk24.md). */

extern "C" {
// A GCC 2 vtable entry
struct VtEntry24 {
    short m_delta;
    short m_index;
    void *m_func;
};
// What an entry plays
struct EntryData24 {
    int m_00;
    int m_04;
    short m_08;
    char *m_0C;
};
// An entry found by name in an object list
struct Entry24 {
    int m_00;
    union {
        int m_04; // flags
        struct {
            unsigned m_flags : 11;
        } m_04f;
    };
    u8 m_08[4];
    int m_0C; // its colour
    EntryData24 *m_10;
};
// What a definition's track plays
struct Play24 {
    int *m_00;
    short m_04;
    u16 m_06;
};
struct Track24 {
    u8 m_00[0x10];
    Play24 *m_10;
};
struct Group24 {
    u8 m_00[0x14];
    Track24 *m_14;
};
// A definition: its name, its object list
struct Def24 {
    char *m_00;
    u8 m_04[0x34];
    void *m_38;
    u8 m_3C[0x10];
    Group24 *m_4C;
};
// An object found by name in a definition
struct Obj24 {
    unsigned m_00 : 16;
    unsigned m_10 : 4;
};
// A scene (chunk_23's Scene)
struct Scene24 {
    u8 m_00[0xA80];
    Def24 *m_A80;
    Def24 *m_A84;
    u8 m_A88[8];
    int m_A90;
    int m_A94;
};
// A slot of 12 bytes: an id and a short name
struct Slot24 {
    int m_00;
    int m_04;
    char m_08[4];
};
// A bike (0x568 bytes)
struct Bike24 {
    union {
        u32 m_00;
        u8 m_00b[4]; // 1: its state
        struct {
            unsigned m_b0 : 1;
            int m_kind : 5;
        } m_00f;
    };
    int m_04;
    u8 m_08[4];
    short m_0C;
    u8 m_0E[0x3A];
    int m_48;
    u8 m_4C[0x51C];
};
struct Pair24 {
    s8 m_00[8];
};
// The run (chunk_38's Run38)
struct Run24 {
    u8 m_00[0x18];
    int m_18[5];
    int m_2C[5];
    u8 m_40[0x154];
    int m_194[5];
    u8 m_1A8[0x140];
    Bike24 m_2E8[5];
    u8 m_1DF0[0x4C];
    Slot24 *m_1E3C;
};
// The race (chunk_23's NamedOwner)
struct Owner24 {
    u8 m_00[4];
    int m_04;
    u8 m_08[0x2FC];
    int m_304;
};
// The object (chunk_23's Named)
struct Named24 {
    unsigned m_b0 : 1;
    int m_b1 : 1;
    unsigned m_b2 : 30;
    u8 m_04[0x64];
    VtEntry24 *m_vtable; // 0x68
    u8 m_6C[0x34];
    Scene24 *m_A0;
    u8 m_A4[0x94];
    Owner24 *m_138;
    int m_13C;
    u8 m_140;
    s8 m_141;
    u8 m_142[6];
    int m_148;
    u8 m_14C[4];
    int m_150;
    int m_154;
    int m_158;
};

extern int D_800D60FC;
extern Pair24 D_800D5E48[];
extern char D_800C5010[];
extern char D_800C5034[];
extern char D_800C5184[];
extern char D_800C5138[];
extern char D_800C5044[];
extern char D_800C5054[];
extern char D_800C5144[];
extern char D_800C514C[];
extern char D_800C5154[];
extern char D_800C515C[];
extern char D_800C5164[];
extern char D_800C516C[];
extern int D_800D5F40;
extern int D_800D5F60;
extern int D_800D11B0;
extern char D_800C5188[];
extern char D_800C5194[];
extern char D_800C51A0[];
extern char D_800C51B0[];
extern char D_800C51B8[];
extern char D_800C51C0[];
extern char D_800C4FE8[];
extern char D_800C501C[];
extern char D_800C508C[];
extern char D_800C509C[];
extern char D_800C50A8[];
extern char D_800C5174[];

int sprintf(char *buf, const char *fmt, ...);
Entry24 *func_80017E10(void *l, const char *name, int len);
int func_800A0078(char *d, char *s);
void func_8003CD30(Scene24 *s);
Def24 *func_8003CBA0(Scene24 *s, const char *name, int dec);
void func_8006F7D4(void);
int func_800A60AC(const char *a, const char *b);
int func_800401FC(Named24 *o, Def24 *d, Entry24 *e, ...);
int func_800A5CD0(u32 ms, int *m, int *sec, int *cs);
char *func_8005C424(Owner24 *w, int x);
Obj24 *func_8003A86C(Def24 *d, const char *name);
void func_800402D0(Named24 *o, Def24 *d, const char *name, int x);

int func_8004184C(void);
int func_80041854(void);
void func_80041E10(Named24 *o, Run24 *r);
void func_80041F24(Named24 *o, Run24 *r, Def24 *d);
void func_800424E0(Named24 *o, Run24 *r, Def24 *d);
void func_80042944(Named24 *o, Run24 *r, Def24 *d);
void func_80042A30(Named24 *o, Run24 *r, Def24 *d);
void func_80042CF4(Named24 *o, char *name, int idx);
void func_80042FC0(Named24 *o, char *name, int idx);
void func_80042FF0(Named24 *o, char *name, int x, int y, int e, int force, int g);
int func_80043150(const void *a, const void *b);
}

int func_8004184C(void) {
    return 1;
}

int func_80041854(void) {
    return 1;
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_24", func_8004185C);

void func_80041E10(Named24 *o, Run24 *r) {
    Scene24 *s = o->m_A0;
    Def24 *d;

    if (s->m_A90 == 1 || s->m_A90 == 4) {
        d = s->m_A84;
    } else {
        d = s->m_A80;
    }
    if (d) {
        if (!strcmp(d->m_00, D_800C4FE8)) {
            func_80041F24(o, r, d);
        } else if (!strcmp(d->m_00, D_800C508C)) {
            func_800424E0(o, r, d);
        } else if (!strcmp(d->m_00, D_800C509C)) {
            func_80042944(o, r, d);
        } else if (!strcmp(d->m_00, D_800C50A8)) {
            func_80042A30(o, r, d);
        }
    }
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_24", func_80041F24);

#ifdef NON_MATCHING
// The original hoists 0xFFFFFF and the run's address plus 0x194 out of the loop and spills them (a frame of 0x70); GCC computes them in place (0x68).
void func_800424E0(Named24 *o, Run24 *r, Def24 *d) {
    char buf[16];
    int i;

    for (i = 0; i < 5; i++) {
        int k = r->m_2C[i];
        Bike24 *b = 0;
        Bike24 *on;
        Entry24 *e;
        EntryData24 *ed;

        if (k >= 0) {
            b = &r->m_2E8[k];
        }
        sprintf(buf, D_800C5138, i + 1);
        e = func_80017E10(d->m_38, buf, -1);
        on = b;
        if (on) {
            e->m_04f.m_flags |= 2;
        } else {
            e->m_04f.m_flags &= ~2;
        }
        sprintf(buf, D_800C5010, i + 1);
        e = func_80017E10(d->m_38, buf, -1);
        ed = e->m_10;
        if (on) {
            ed->m_0C[1] = 0;
            ed->m_0C[0] = i + '1';
            e->m_04f.m_flags |= 2;
            e->m_0C = 0xFFFFFF;
        } else {
            e->m_04f.m_flags &= ~2;
        }
        sprintf(buf, D_800C501C, i + 1);
        e = func_80017E10(d->m_38, buf, -1);
        if (on) {
            func_800401FC(o, d, e, b->m_48);
            e->m_0C = 0xFFFFFF;
            e->m_04f.m_flags |= 2;
            if (b->m_00f.m_kind == 1) {
                e->m_0C = 0xFFFF;
            } else {
                e->m_0C = 0xFFFFFF;
            }
        } else {
            e->m_04f.m_flags &= ~2;
        }
        sprintf(buf, D_800C5034, i + 1);
        e = func_80017E10(d->m_38, buf, -1);
        if (on) {
            Owner24 *w = o->m_138;
            int t;

            if (w->m_304) {
                t = r->m_194[k];
                goto time;
            }
            switch (b->m_00b[1]) {
            case 3:
                t = b->m_04;
            time:
                if (t != -1) {
                    int mn, sec, cs;

                    func_800A5CD0(t, &mn, &sec, &cs);
                    func_800401FC(o, d, e, D_800C5044, mn, sec, cs);
                } else {
                    func_800401FC(o, d, e, D_800C5054);
                }
                break;
            case 2:
                switch (w->m_04 & 3) {
                case 0:
                    func_800401FC(o, d, e, D_800C5144);
                    break;
                case 1:
                    func_800401FC(o, d, e, D_800C514C);
                    break;
                case 2:
                    func_800401FC(o, d, e, D_800C5154);
                    break;
                default:
                    func_800401FC(o, d, e, D_800C515C);
                    break;
                }
                break;
            case 1:
                func_800401FC(o, d, e, D_800C5164);
                break;
            case 4: {
                char *str = func_8005C424(w, 0x29);

                if (str) {
                    func_800401FC(o, d, e, str);
                } else {
                    func_800401FC(o, d, e, D_800C516C);
                }
                break;
            }
            }
            if (b->m_00f.m_kind == 1) {
                e->m_0C = 0xFFFF;
            } else {
                e->m_0C = 0xFFFFFF;
            }
            e->m_04f.m_flags |= 2;
        } else {
            e->m_04f.m_flags &= ~2;
        }
    }
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_24", func_800424E0);
#endif

void func_80042944(Named24 *o, Run24 *r, Def24 *d) {
    char buf[16];
    Slot24 *base = r->m_1E3C;
    char *name = base->m_08;
    int *id = &base->m_04;
    int i;
    Entry24 *e;

    for (i = 0; i < 5; i++) {
        if (id && *id != -1) {
            sprintf(buf, D_800C501C, i + 1);
            e = func_80017E10(d->m_38, buf, -1);
            func_800A0078(name, e->m_10->m_0C);
        }
        name += 12;
        id += 3;
    }
    e = func_80017E10(d->m_38, D_800C5174, -1);
    func_800A0078((char *)base + 0x44, e->m_10->m_0C);
}

#ifdef NON_MATCHING
// The original keeps -1 and the table's address as loop constants rematerialised through $t1, and computes the bike's kind before the first call without passing it; GCC does neither.
void func_80042A30(Named24 *o, Run24 *r, Def24 *d) {
    char buf[16];
    int i;

    for (i = 0; i < 5; i++) {
        int k = r->m_18[i];
        Pair24 *t;
        Bike24 *b;
        int on;
        Entry24 *e;
        EntryData24 *ed;

        if (k != -1) {
            t = &D_800D5E48[k];
            b = 0;
            if (k >= 0) {
                b = &r->m_2E8[k];
            }
        } else {
            t = 0;
            b = 0;
        }
        on = 0;
        if (t) {
            on = t->m_00[2] != 0;
        }
        sprintf(buf, D_800C501C, i + 1);
        e = func_80017E10(d->m_38, buf, -1);
        ed = e->m_10;
        if (on) {
            e->m_04f.m_flags |= 2;
            func_800401FC(o, d, e, b->m_48, b->m_00f.m_kind);
        } else {
            e->m_04f.m_flags &= ~2;
        }
        on = on && ed->m_0C[0];
        sprintf(buf, D_800C5010, i + 1);
        e = func_80017E10(d->m_38, buf, -1);
        ed = e->m_10;
        ed->m_0C[1] = 0;
        if (on && k != -1) {
            e->m_04f.m_flags |= 2;
            ed->m_0C[0] = i + '1';
        } else {
            e->m_04f.m_flags &= ~2;
        }
        sprintf(buf, D_800C5034, i + 1);
        e = func_80017E10(d->m_38, buf, -1);
        if (on && b) {
            e->m_04f.m_flags |= 2;
            func_800401FC(o, d, e, D_800C5184, b->m_0C);
        } else {
            e->m_04f.m_flags &= ~2;
        }
    }
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_24", func_80042A30);
#endif

void func_80042CF4(Named24 *o, char *name, int idx) {
    Def24 *d;
    Entry24 *a, *b;
    Scene24 *s;
    VtEntry24 *v;
    int f;

    func_8003CD30(o->m_A0);
    d = func_8003CBA0(o->m_A0, name, 0);
    if (!d) {
        return;
    }
    a = func_80017E10(d->m_38, D_800C5188, -1);
    b = func_80017E10(d->m_38, D_800C5194, -1);
    if (b) {
        if (a) {
            if (D_800D5F40 == 8) {
                a->m_04 &= ~2;
                b->m_04 |= 2;
            } else {
                a->m_04 |= 2;
                b->m_04 &= ~2;
            }
        } else {
            b->m_04 |= 2;
        }
    } else if (a) {
        a->m_04 |= 2;
    }
    if (!func_800A60AC(d->m_00, D_800C51A0)) {
        Obj24 *p = func_8003A86C(d, D_800C51B0);
        Obj24 *q = func_8003A86C(d, D_800C51B8);

        if (p && q) {
            if (D_800D5F60 >= 3) {
                Play24 *r;

                p->m_10 = 0;
                *(short *)q = 3;
                r = d->m_4C->m_14->m_10;
                r->m_04 = 0;
                switch (r->m_06) {
                case 2:
                case 3:
                    *r->m_00 = 0;
                    break;
                case 4:
                    r->m_00 = 0;
                    break;
                }
            } else {
                p->m_10 = 1;
            }
        }
    }
    if (idx != -1) {
        func_800402D0(o, d, D_800C51C0, idx);
    }
    s = o->m_A0;
    s->m_A90 = 0;
    s->m_A84 = 0;
    f = s->m_A94;
    f &= ~1;
    f &= ~2;
    f &= ~4;
    f &= ~8;
    s->m_A94 = f;
    func_8006F7D4();
    D_800D11B0 = 0;
    v = &o->m_vtable[24];
    ((void (*)(void *, int))v->m_func)((char *)o + v->m_delta, 1);
    v = &o->m_vtable[22];
    ((void (*)(void *, int))v->m_func)((char *)o + v->m_delta, 1);
    v = &o->m_vtable[23];
    ((void (*)(void *, int))v->m_func)((char *)o + v->m_delta, 1);
}

void func_80042FC0(Named24 *o, char *name, int idx) {
    func_80042CF4(o, name, idx);
    o->m_13C = 1;
    func_8006F7D4();
}

#ifdef NON_MATCHING
// The original loads the fifth argument before storing x, and branches on y with a jump to its else; GCC loads it after and lays the else first (4 off).
void func_80042FF0(Named24 *o, char *name, int x, int y, int e, int force, int g) {
    Scene24 *s;
    VtEntry24 *v;
    int f, b;

    if (o->m_154 != -1 && D_800D60FC - o->m_154 <= 2000 && !force) {
        return;
    }
    b = o->m_b1;
    if (b) {
        return;
    }
    if (o->m_13C) {
        return;
    }
    func_8003CD30(o->m_A0);
    if (!func_8003CBA0(o->m_A0, name, 0)) {
        return;
    }
    s = o->m_A0;
    s->m_A90 = 0;
    s->m_A84 = 0;
    f = s->m_A94;
    f &= ~1;
    f &= ~2;
    f &= ~4;
    f &= ~8;
    s->m_A94 = f;
    v = &o->m_vtable[24];
    ((void (*)(void *, int))v->m_func)((char *)o + v->m_delta, 0);
    v = &o->m_vtable[22];
    ((void (*)(void *, int))v->m_func)((char *)o + v->m_delta, 1);
    o->m_150 = x;
    o->m_148 = e;
    o->m_141 = !y ? 1 : -1;
    o->m_13C = 2;
    o->m_158 = g;
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_24", func_80042FF0);
#endif

int func_80043150(const void *a, const void *b) {
    return (*(int *)a & ~7) - (*(int *)b & ~7);
}
