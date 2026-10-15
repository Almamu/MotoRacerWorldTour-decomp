#include "common.h"

// A view: how many pairs (bits 28-29), a callback
struct View22 {
    u8 m_00[0x2C];
    struct {
        unsigned m_lo : 28;
        int m_n : 2;
        unsigned m_hi : 2;
    } m_2C;
    u8 m_30[0x40];
    void (*m_70)(struct Game22 *g);
};

// A view's entry: its kind, and a word with a number and a mask
struct Obj22 {
    int m_00; // -1 for none
    u8 m_04[0x1C];
    struct {
        unsigned m_n : 10;
        unsigned m_b : 2;
        int m_mask : 16;
        unsigned m_c : 4;
    } m_20;
};

// A script call's context: its key and the game object
struct Arg22 {
    int m_00;
    struct Game22 *m_04;
};

// What a view's lookup returns: an array
struct Item22 {
    u8 m_00[0x28];
    int *m_28;
};

// A 32-byte entry
struct Ent22 {
    u8 m_00[0x20];
};

struct Item22b {
    u8 m_00[0x28];
    Ent22 *m_28;
};

// A 0x98-byte slot
struct Slot22 {
    int m_00;
    int m_04;
    // the handlers by kind, then a second copy from 0x44
    int m_08, m_0C, m_10, m_14, m_18, m_1C, m_20, m_24, m_28, m_2C, m_30, m_34, m_38, m_3C, m_40, m_44, m_48, m_4C, m_50, m_54, m_58, m_5C, m_60, m_64, m_68, m_6C, m_70, m_74, m_78, m_7C, m_80, m_84, m_88, m_8C, m_90, m_94;
};

// The game object (chunk_69's Game69)
struct Game22 {
    u8 m_00[0x10];
    int m_10; // timers
    int m_14;
    u8 m_18[0x24];
    Arg22 m_3C; // the scripts' contexts, by set
    Arg22 m_44;
    u8 m_4C[0x110];
    int *m_15C;
    u8 m_160[0x18];
    int m_178;
    u8 m_17C[0x904];
    View22 *m_A80;
    View22 *m_A84;
    u8 m_A88[8];
    int m_A90; // the mode
    int m_A94; // flags
    u8 m_A98[0x24];
    Slot22 *m_ABC;
};

extern char D_800C4E14[];
extern char D_800C4E20[];
extern int D_800C4D98[];

extern "C" {
int sprintf(char *buf, const char *fmt, ...);
void *func_8003AA90(View22 *v, char *name);
void func_8003CBA0(Game22 *g, Ent22 *e, int a);
void func_8003CC9C(Game22 *g, int a);
void func_8003FC28(Game22 *g, int a, int b);
int func_8003D60C(Game22 *g);
int func_8003D674(Game22 *g, int *sp);
int func_8003D714(Game22 *g, int *sp);
int func_8003D73C(Game22 *g, int *sp);
int func_8003D7F0(Game22 *g, int *sp);
int func_8003D8B4(Game22 *g, int *sp);
int func_8003D8FC(Game22 *g, int *sp);
int func_8003D924(Game22 *g, int *sp);
int func_8003D970(Game22 *g, int *sp);
void func_8003D9CC(Game22 *g, int *sp, int *p);
void func_8003EC6C(Game22 *g, int i, int v);
Obj22 *func_8003B038(View22 *v, int a, int b);
int func_8003899C(Obj22 *o, int a);
void func_800394D8(Obj22 *o, Game22 *g);
void func_8003907C(Obj22 *o, Game22 *g);
void func_8003DD8C(int *p, int x, Arg22 *c);
void func_8003DE84(int *p, int x, Arg22 *c);
void func_8003E5B0(Game22 *g);
void func_80038BBC(Obj22 *o, Game22 *g);
void func_8003CDEC(Game22 *g);
void func_8003D9EC(int *p, int x, Arg22 *c);
void func_80038CE4(Obj22 *o, Game22 *g);
void func_8003D334(Game22 *g, Obj22 *o);
void func_8003DB9C(int *p, int x, Arg22 *c);
void func_8003DF7C(int *p, int x, Arg22 *c);
void func_8003E194(int *p, int x, Arg22 *c);
void func_8003EC90(Game22 *g, int i, int set, void (*f)(int *p, int x, Arg22 *c));
void func_8003E3AC(Game22 *g);
int func_8003F0F8(Game22 *g, int kind, int set);
void func_80038E0C(Obj22 *o, Game22 *g);
void func_80038F44(Obj22 *o, Game22 *g);
extern int D_800D6128; // the frame's time
}

int func_8003D60C(Game22 *g) {
    if (g) {
        View22 *v;

        if (g->m_A90 == 1 || g->m_A90 == 4) {
            v = g->m_A84;
        } else {
            v = g->m_A80;
        }
        if (v && v->m_70) {
            v->m_70(g);
        }
    }
    return 1;
}

/* An entry of a named list, by number. */
int func_8003D674(Game22 *g, int *sp) {
    int r = 0;
    View22 *v;
    int i;
    char buf[24];
    Item22 *it;

    if (g->m_A90 == 1 || g->m_A90 == 4) {
        v = g->m_A84;
    } else {
        v = g->m_A80;
    }
    i = sp[-1];
    sprintf(buf, D_800C4E14, sp[-2]);
    it = (Item22 *)func_8003AA90(v, buf);
    if (it) {
        r = it->m_28[i];
    }
    return r;
}

int func_8003D714(Game22 *g, int *sp) {
    return sp[-3] ? sp[-2] : sp[-1];
}

int func_8003D73C(Game22 *g, int *sp) {
    View22 *v;
    int f;
    int a;
    int i;

    if (g->m_A90 == 1 || g->m_A90 == 4) {
        v = g->m_A84;
    } else {
        v = g->m_A80;
    }
    f = g->m_A94;
    a = sp[-2];
    i = sp[-1];
    if (!(f & 0x100) && a) {
        g->m_A94 = f | 0x100;
        if (i == -1) {
            g->m_A94 = f | 0x104;
        } else {
            Item22b *it = (Item22b *)func_8003AA90(v, D_800C4E20);

            if (it) {
                func_8003CBA0(g, &it->m_28[i], 0);
            }
        }
    }
    return 0;
}

int func_8003D7F0(Game22 *g, int *sp) {
    View22 *v;
    int f;
    int c;
    int i;

    if (g->m_A90 == 1 || g->m_A90 == 4) {
        v = g->m_A84;
    } else {
        v = g->m_A80;
    }
    f = g->m_A94;
    c = sp[-3];
    if (!(f & 0x100)) {
        g->m_A94 = f | 0x100;
        if (c) {
            i = sp[-2];
        } else {
            i = sp[-1];
        }
        if (i == -1) {
            g->m_A94 |= 4;
        } else {
            Item22b *it = (Item22b *)func_8003AA90(v, D_800C4E20);

            if (it) {
                func_8003CBA0(g, &it->m_28[i], 0);
            }
        }
    }
    return 0;
}

int func_8003D8B4(Game22 *g, int *sp) {
    int f = g->m_A94;
    int r = sp[-1];

    if (!(f & 0x100) && r) {
        g->m_A94 = f | 0x100;
        func_8003CC9C(g, 1);
    }
    return r;
}

int func_8003D8FC(Game22 *g, int *sp) {
    int r = sp[-1];
    int f = g->m_A94;

    if (!(f & 0x100) && r) {
        g->m_A94 = f | 0x104;
    }
    return r;
}

int func_8003D924(Game22 *g, int *sp) {
    int r = sp[-2];

    if (r) {
        func_8003FC28(g, -1, g->m_15C[sp[-1]]);
    }
    return r;
}

int func_8003D970(Game22 *g, int *sp) {
    int r = sp[-3];

    if (r) {
        func_8003FC28(g, -1, g->m_15C[sp[-2]]);
    } else {
        func_8003FC28(g, -1, g->m_15C[sp[-1]]);
    }
    return r;
}

void func_8003D9CC(Game22 *g, int *sp, int *p) {
    int i = *p;

    // A permuter workaround: the load before the table's address
    do {
    } while (0);
    D_800C4D98[i - 1] = 0;
}

/* Once per player (D_800C4D98): with the key 0xFF in mode 5, the view's
 * three entries' letters stepped up; in mode 0, the entries whose number
 * is the key started. */
#ifdef NON_MATCHING
// Registers: the context and the key in swapped saved registers ($s3/$s2), and the table's address formed in both of the view's branches (47 off; right in shape).
void func_8003D9EC(int *p, int x, Arg22 *c) {
    Game22 *g = c->m_04;
    View22 *v;
    int i;
    int f;
    int k;

    if (g->m_A90 == 1 || g->m_A90 == 4) {
        v = g->m_A84;
    } else {
        v = g->m_A80;
    }
    if (D_800C4D98[c->m_00 - 1]) {
        return;
    }
    i = 0;
    f = g->m_A94;
    k = *p;
    if (f & 0x80) {
        if (k) {
            return;
        }
        g->m_A94 = f & ~0x80;
    }
    if (g->m_A90 == 5 && k == 0xFF) {
        for (; i < 3; i++) {
            Obj22 *o = func_8003B038(v, i, c->m_00);

            if (o) {
                if (!(o->m_20.m_mask & c->m_00)) {
                    return;
                }
                func_80038BBC(o, g);
            }
        }
    } else {
        if (g->m_A90) {
            return;
        }
        for (i = 0; i < 3; i++) {
            Obj22 *o = func_8003B038(v, i, c->m_00);

            if (o) {
                if (!(o->m_20.m_mask & c->m_00)) {
                    return;
                }
                if (k == o->m_20.m_n) {
                    func_8003CDEC(g);
                }
            }
        }
    }
    func_8003E5B0(g);
    D_800C4D98[c->m_00 - 1] = 1;
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_22", func_8003D9EC);
#endif

/* As func_8003D9EC, unless the flag 0x200 is set: the letters stepped
 * down, or func_8003D334 for each entry and again for those whose number
 * (0xFE for 0xFF) is the key. */
#ifdef NON_MATCHING
// The global table's address: the original forms it with a separate lui/addiu into $s7 (an unsplit la, its delay slot left empty); split addresses here put the lui in the delay slot (97 off, right in shape).
void func_8003DB9C(int *p, int x, Arg22 *c) {
    Game22 *g = c->m_04;
    View22 *v;
    int i;
    int f;
    int k;

    if (g->m_A90 == 1 || g->m_A90 == 4) {
        v = g->m_A84;
    } else {
        v = g->m_A80;
    }
    i = 0;
    f = g->m_A94;
    k = *p;
    if (f & 0x200) {
        return;
    }
    if (D_800C4D98[c->m_00 - 1]) {
        return;
    }
    if (f & 0x80) {
        if (k) {
            return;
        }
        g->m_A94 = f & ~0x80;
    }
    if (g->m_A90 == 5 && k == 0xFF) {
        for (; i < 3; i++) {
            Obj22 *o = func_8003B038(v, i, c->m_00);

            if (o) {
                if (!(o->m_20.m_mask & c->m_00)) {
                    return;
                }
                func_80038CE4(o, g);
            }
        }
    } else {
        if (g->m_A90) {
            return;
        }
        for (i = 0; i < 3; i++) {
            Obj22 *o = func_8003B038(v, i, c->m_00);

            if (o) {
                int n;

                if (!(o->m_20.m_mask & c->m_00)) {
                    return;
                }
                func_8003D334(g, o);
                n = o->m_20.m_n;
                if (n == 0xFE) {
                    n = 0xFF;
                }
                if (k == n) {
                    func_8003D334(g, o);
                }
            }
        }
    }
    func_8003E5B0(g);
    D_800C4D98[c->m_00 - 1] = 1;
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_22", func_8003DB9C);
#endif

void func_8003DD8C(int *p, int x, Arg22 *c) {
    Game22 *g = c->m_04;
    View22 *v;
    int f;
    int k;
    Obj22 *o;

    if (g->m_A90 == 1 || g->m_A90 == 4) {
        v = g->m_A84;
    } else {
        v = g->m_A80;
    }
    f = g->m_A94;
    k = *p;
    if (f & 0x80) {
        if (k) {
            return;
        }
        g->m_A94 = f & ~0x80;
    }
    if (g->m_A90 == 8) {
        return;
    }
    if (g->m_A90 != 0) {
        return;
    }
    o = func_8003B038(v, 0, c->m_00);
    if (o) {
        int n;

        if (!(o->m_20.m_mask & c->m_00)) {
            return;
        }
        n = o->m_20.m_n;
        if (!n) {
            n = 0xFF;
        }
        if (k == n) {
            func_800394D8(o, g);
        }
    }
    func_8003E5B0(g);
}

void func_8003DE84(int *p, int x, Arg22 *c) {
    Game22 *g = c->m_04;
    View22 *v;
    int f;
    int k;
    Obj22 *o;

    if (g->m_A90 == 1 || g->m_A90 == 4) {
        v = g->m_A84;
    } else {
        v = g->m_A80;
    }
    f = g->m_A94;
    k = *p;
    if (f & 0x80) {
        if (k) {
            return;
        }
        g->m_A94 = f & ~0x80;
    }
    if (g->m_A90 == 8) {
        return;
    }
    if (g->m_A90 != 0) {
        return;
    }
    o = func_8003B038(v, 0, c->m_00);
    if (o) {
        int n;

        if (!(o->m_20.m_mask & c->m_00)) {
            return;
        }
        n = o->m_20.m_n;
        if (!n) {
            n = 0xFF;
        }
        if (k == n) {
            func_8003907C(o, g);
        }
    }
    func_8003E5B0(g);
}

#ifdef NON_MATCHING
// Registers only: the script context and the view in swapped saved registers ($s3/$s4, 12 off).
void func_8003DF7C(int *p, int x, Arg22 *c) {
    Game22 *g = c->m_04;
    View22 *v;
    int f;
    int k;
    int mode;
    Obj22 *o;

    if (g->m_A90 == 1 || g->m_A90 == 4) {
        v = g->m_A84;
    } else {
        v = g->m_A80;
    }
    f = g->m_A94;
    k = *p;
    if (f & 0x80) {
        if (k) {
            return;
        }
        g->m_A94 = f & ~0x80;
    }
    mode = g->m_A90;
    if (mode == 5) {
        o = func_8003B038(v, 1, c->m_00);
        if (o) {
            int go;

            if (!(o->m_20.m_mask & c->m_00)) {
                return;
            }
            go = 0;
            switch (k) {
            case 0xFF:
                go = 1;
                g->m_10 = D_800D6128;
                break;
            case 0xFE:
                if (!g->m_10 || g->m_10 > 800) {
                    int t = g->m_14;

                    if (t > 100) {
                        g->m_14 = 0;
                        go = 1;
                        t = 0;
                    }
                    {
                        int n = t + D_800D6128;

                        g->m_10 = 0;
                        g->m_14 = n;
                    }
                } else {
                    g->m_10 += D_800D6128;
                }
                break;
            case 0:
                g->m_10 = 0;
                break;
            }
            if (go) {
                func_80038E0C(o, g);
                func_8003E5B0(g);
            }
        }
    }
    if (mode == 8) {
        return;
    }
    if (mode != 0) {
        return;
    }
    o = func_8003B038(v, 1, c->m_00);
    if (o) {
        int n;

        if (!(o->m_20.m_mask & c->m_00)) {
            return;
        }
        n = o->m_20.m_n;
        if (!n) {
            n = 0xFF;
        }
        if (k == n) {
            func_800394D8(o, g);
        }
    }
    func_8003E5B0(g);
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_22", func_8003DF7C);
#endif

#ifdef NON_MATCHING
// Registers only, as func_8003DF7C (the same code with other callees): the script context and the view in swapped saved registers ($s3/$s4, 12 off).
void func_8003E194(int *p, int x, Arg22 *c) {
    Game22 *g = c->m_04;
    View22 *v;
    int f;
    int k;
    int mode;
    Obj22 *o;

    if (g->m_A90 == 1 || g->m_A90 == 4) {
        v = g->m_A84;
    } else {
        v = g->m_A80;
    }
    f = g->m_A94;
    k = *p;
    if (f & 0x80) {
        if (k) {
            return;
        }
        g->m_A94 = f & ~0x80;
    }
    mode = g->m_A90;
    if (mode == 5) {
        o = func_8003B038(v, 1, c->m_00);
        if (o) {
            int go;

            if (!(o->m_20.m_mask & c->m_00)) {
                return;
            }
            go = 0;
            switch (k) {
            case 0xFF:
                go = 1;
                g->m_10 = D_800D6128;
                break;
            case 0xFE:
                if (!g->m_10 || g->m_10 > 800) {
                    int t = g->m_14;

                    if (t > 100) {
                        g->m_14 = 0;
                        go = 1;
                        t = 0;
                    }
                    {
                        int n = t + D_800D6128;

                        g->m_10 = 0;
                        g->m_14 = n;
                    }
                } else {
                    g->m_10 += D_800D6128;
                }
                break;
            case 0:
                g->m_10 = 0;
                break;
            }
            if (go) {
                func_80038F44(o, g);
                func_8003E5B0(g);
            }
        }
    }
    if (mode == 8) {
        return;
    }
    if (mode != 0) {
        return;
    }
    o = func_8003B038(v, 1, c->m_00);
    if (o) {
        int n;

        if (!(o->m_20.m_mask & c->m_00)) {
            return;
        }
        n = o->m_20.m_n;
        if (!n) {
            n = 0xFF;
        }
        if (k == n) {
            func_8003907C(o, g);
        }
    }
    func_8003E5B0(g);
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_22", func_8003E194);
#endif

void func_8003E3AC(Game22 *g) {
    func_8003EC90(g, 0, 0, 0);
    g->m_3C.m_00 = 1;
    g->m_3C.m_04 = g;
    g->m_ABC[0].m_00 = (int)&g->m_3C;
    func_8003EC90(g, 1, 0, func_8003DF7C);
    func_8003EC90(g, 2, 0, func_8003E194);
    func_8003EC90(g, 4, 0, func_8003DD8C);
    func_8003EC90(g, 3, 0, func_8003DE84);
    func_8003EC90(g, 5, 0, func_8003D9EC);
    func_8003EC90(g, 6, 0, func_8003DB9C);
    func_8003EC90(g, 21, 0, (void (*)(int *, int, Arg22 *))func_8003D9CC);
    func_8003EC90(g, 0, 1, 0);
    g->m_44.m_00 = 2;
    g->m_44.m_04 = g;
    g->m_ABC[1].m_00 = (int)&g->m_44;
    func_8003EC90(g, 1, 1, func_8003DF7C);
    func_8003EC90(g, 2, 1, func_8003E194);
    func_8003EC90(g, 4, 1, func_8003DD8C);
    func_8003EC90(g, 3, 1, func_8003DE84);
    func_8003EC90(g, 5, 1, func_8003D9EC);
    func_8003EC90(g, 6, 1, func_8003DB9C);
    func_8003EC90(g, 21, 1, (void (*)(int *, int, Arg22 *))func_8003D9CC);
    func_8003E5B0(g);
}

/* The state from the view's pairs of entries. */
void func_8003E5B0(Game22 *g) {
    View22 *v = g->m_A80;
    int i;
    Obj22 *o;

    if (!v) {
        return;
    }
    g->m_178 = 0;
    for (i = 0; i < v->m_2C.m_n + 1; i++) {
        o = func_8003B038(v, 1, i + 1);
        if (o && o->m_00 != -1 && func_8003899C(o, 1)) {
            g->m_178 = 3;
        }
        o = func_8003B038(v, 0, i + 1);
        if (o && o->m_00 != -1 && func_8003899C(o, 0)) {
            if (g->m_178 == 3) {
                g->m_178 = 1;
            } else {
                g->m_178 = 2;
            }
        }
    }
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_22", func_8003E6FC);

void func_8003EC6C(Game22 *g, int i, int v) {
    g->m_ABC[i].m_04 = v;
}

void func_8003EC90(Game22 *g, int i, int set, void (*f)(int *p, int x, Arg22 *c)) {
    switch (i) {
    case 0:
        g->m_ABC[set].m_08 = (int)f;
        g->m_ABC[set].m_44 = (int)f;
        g->m_ABC[set].m_0C = (int)f;
        g->m_ABC[set].m_48 = (int)f;
        g->m_ABC[set].m_10 = (int)f;
        g->m_ABC[set].m_4C = (int)f;
        g->m_ABC[set].m_14 = (int)f;
        g->m_ABC[set].m_50 = (int)f;
        g->m_ABC[set].m_1C = (int)f;
        g->m_ABC[set].m_58 = (int)f;
        g->m_ABC[set].m_18 = (int)f;
        g->m_ABC[set].m_54 = (int)f;
        g->m_ABC[set].m_20 = (int)f;
        g->m_ABC[set].m_5C = (int)f;
        g->m_ABC[set].m_24 = (int)f;
        g->m_ABC[set].m_60 = (int)f;
        g->m_ABC[set].m_3C = (int)f;
        g->m_ABC[set].m_78 = (int)f;
        g->m_ABC[set].m_28 = (int)f;
        g->m_ABC[set].m_64 = (int)f;
        g->m_ABC[set].m_38 = (int)f;
        g->m_ABC[set].m_74 = (int)f;
        g->m_ABC[set].m_40 = (int)f;
        g->m_ABC[set].m_94 = (int)f;
        break;
    case 21:
        g->m_ABC[set].m_40 = (int)f;
        g->m_ABC[set].m_94 = (int)f;
        break;
    case 1:
        g->m_ABC[set].m_08 = (int)f;
        g->m_ABC[set].m_44 = (int)f;
        break;
    case 2:
        g->m_ABC[set].m_0C = (int)f;
        g->m_ABC[set].m_48 = (int)f;
        break;
    case 3:
        g->m_ABC[set].m_14 = (int)f;
        g->m_ABC[set].m_50 = (int)f;
        break;
    case 4:
        g->m_ABC[set].m_10 = (int)f;
        g->m_ABC[set].m_4C = (int)f;
        break;
    case 5:
        g->m_ABC[set].m_1C = (int)f;
        g->m_ABC[set].m_58 = (int)f;
        break;
    case 6:
        g->m_ABC[set].m_18 = (int)f;
        g->m_ABC[set].m_54 = (int)f;
        break;
    case 7:
        g->m_ABC[set].m_20 = (int)f;
        g->m_ABC[set].m_5C = (int)f;
        break;
    case 8:
        g->m_ABC[set].m_24 = (int)f;
        g->m_ABC[set].m_60 = (int)f;
        break;
    case 10:
        g->m_ABC[set].m_28 = (int)f;
        g->m_ABC[set].m_64 = (int)f;
        break;
    case 11:
        g->m_ABC[set].m_30 = (int)f;
        g->m_ABC[set].m_6C = (int)f;
        break;
    case 12:
        g->m_ABC[set].m_38 = (int)f;
        g->m_ABC[set].m_74 = (int)f;
        break;
    case 9:
    case 13:
        g->m_ABC[set].m_3C = (int)f;
        g->m_ABC[set].m_78 = (int)f;
        break;
    }
}

int func_8003F0F8(Game22 *g, int kind, int set) {
    int r = 0;

    switch (kind) {
    case 1:
        r = g->m_ABC[set].m_08;
        break;
    case 2:
        r = g->m_ABC[set].m_0C;
        break;
    case 3:
        r = g->m_ABC[set].m_14;
        break;
    case 4:
        r = g->m_ABC[set].m_10;
        break;
    case 5:
        r = g->m_ABC[set].m_1C;
        break;
    case 6:
        r = g->m_ABC[set].m_18;
        break;
    case 7:
        r = g->m_ABC[set].m_20;
        break;
    case 8:
        r = g->m_ABC[set].m_24;
        break;
    case 10:
        r = g->m_ABC[set].m_28;
        break;
    case 11:
        r = g->m_ABC[set].m_30;
        break;
    case 12:
        r = g->m_ABC[set].m_38;
        break;
    case 9:
    case 13:
        r = g->m_ABC[set].m_3C;
        break;
    }
    return r;
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_22", func_8003F314);
