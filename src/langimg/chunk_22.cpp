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
    u8 m_08[0x90];
};

// The game object (chunk_69's Game69)
struct Game22 {
    u8 m_00[0x15C];
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

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_22", func_8003D9EC);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_22", func_8003DB9C);

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

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_22", func_8003DF7C);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_22", func_8003E194);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_22", func_8003E3AC);

#ifdef NON_MATCHING
// The original keeps the constants 1 and 2 it stores in saved registers too (six in all)
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
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_22", func_8003E5B0);
#endif

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_22", func_8003E6FC);

void func_8003EC6C(Game22 *g, int i, int v) {
    g->m_ABC[i].m_04 = v;
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_22", func_8003EC90);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_22", func_8003F0F8);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_22", func_8003F314);
