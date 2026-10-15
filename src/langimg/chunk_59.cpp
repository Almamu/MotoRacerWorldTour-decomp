#include "common.h"

// A primitive's tag: the next one's address and its length (PsyQ's P_TAG)
struct Tag59 {
    unsigned m_addr : 24;
    unsigned m_len : 8;
};

// A vtable's entry at 0x20 (GCC 2's {delta, index, function})
struct Vt59 {
    u8 m_00[0x20];
    short m_20;
    short m_22;
    int (*m_24)(void *o);
    u8 m_28[8];
    short m_30;
    short m_32;
    u32 *(*m_34)(void *o); // the first and last primitives
    short m_38;
    short m_3A;
    Tag59 *(*m_3C)(void *o); // the first primitive
};

struct Obj59 {
    u8 m_00[0x14];
    Vt59 *m_14;
};

struct Sub59;
struct Tile59;

extern "C" {
void func_800893C8(Tile59 *t);
void func_800893E8(Sub59 *s);
void func_80095684(Tile59 *t);
}

// chunk_60's part at 0xA0
struct Sub59 {
    int m_00, m_04, m_08, m_0C, m_10;
    u8 m_14[8];
    int m_1C, m_20, m_24;
    u8 m_28[0xC];
    int m_34;
    u8 m_38[0xC];
    int m_44;
    u8 m_48[8];

    Sub59() {
        m_00 = 0xC8;
        m_04 = 0x96;
        m_1C = 0x800;
        m_20 = 0x37;
        m_08 = 0x200;
        m_24 = 0x4C;
        m_0C = 0x100;
        m_10 = m_34 = 0x2AA;
        m_44 = 0x1000;
        func_800893E8(this);
    }
};

// A tile: chunk_66's object (0x110 bytes)
struct Tile59 {
    u8 m_00[0x38];
    int m_38;
    int m_3C;
    int m_40;
    int m_44;
    int m_48;
    u8 m_4C[0x4C];
    Obj59 *m_98;
    int m_9C;
    Sub59 m_A0;
    u8 m_F0[0x20];

    Tile59() {
        func_80095684(this);
    }
    ~Tile59() {
        func_800893C8(this);
    }
};

// A grid of tiles
struct Grid59 {
    int m_00; // how many tiles
    int m_04;
    int m_08; // a row's width
    int m_0C;
    int m_10; // the tiles' width
    int m_14; // and height
    Tile59 **m_18;
    int m_1C;
    int m_20;
    Tile59 *m_24; // an array of them
    int m_28;
    int m_2C;
    int m_30;
    int m_34;
};

// A sound and its flags
struct Snd59 {
    struct {
        unsigned m_a : 12;
        unsigned m_b : 2;
        unsigned m_c : 2;
        unsigned m_d : 16;
    } m_00;
    void *m_04;
    int m_08;
    u8 m_0C[0x1C];
    void *m_28;
};

struct Kind59 {
    u8 m_00[6];
    u8 m_06;
};

struct Voice59 {
    u8 m_00[4];
    Kind59 *m_04;
    int m_08;
    short m_0C;
    short m_0E;
};

struct Set59 {
    Voice59 **m_00;
    int m_04;
};

extern "C" {
void func_800816B4(void *p, int f);
void func_80095794(Tile59 *t, int w, int h);
int func_80088AA8(Grid59 *g);
Tile59 *func_80088BBC(Grid59 *g, int i);
int func_80088FD4(Grid59 *g);
int func_80089200(Grid59 *g, int a);
int func_80088D04(Grid59 *g, int a, int b, int c);
int func_8009593C(Tile59 *t);
int func_800958E0(Tile59 *t);
int func_800958D8(Tile59 *t);
Snd59 *func_8008784C(Snd59 *s);
void func_8008788C(Snd59 *s, int f);
void func_80087900(Set59 *s, int a, int b);
Grid59 *func_800879D4(Grid59 *g);
void func_80087A14(Grid59 *g, int f);
int func_80088A08(Grid59 *g, int w, int h);
int func_80088F34(Grid59 *g);
Tile59 *func_80089190(Grid59 *g, int y, int x);
Tile59 *func_800891C8(Grid59 *g, int i);
Tile59 *func_800891E8(Grid59 *g, int i);
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_59", func_80087468);

Snd59 *func_8008784C(Snd59 *s) {
    s->m_00.m_a = 1;
    s->m_28 = 0;
    s->m_04 = 0;
    s->m_08 = 0;
    s->m_00.m_b = 0;
    s->m_00.m_c = 0;
    return s;
}

void func_8008788C(Snd59 *s, int f) {
    if (s->m_28) {
        operator delete(s->m_28);
        s->m_28 = 0;
    }
    if (s->m_04) {
        func_800816B4(s->m_04, 3);
        s->m_04 = 0;
    }
    if (f & 1) {
        operator delete(s);
    }
}

/* The voices' two rates from their pitch and one of two scales. */
#ifdef NON_MATCHING
// Registers: the index and the constant 0x8000000 swap ($t0, $t2), and the rate isn't kept in $v1
void func_80087900(Set59 *s, int a, int b) {
    int i;

    if (s->m_00 && s->m_04 > 0) {
        i = 0;
        do {
            Voice59 *v = s->m_00[i];

            if (v && v->m_04) {
                int k = v->m_08 >> 8;

                if (v->m_04->m_06 & 2) {
                    k *= b;
                } else {
                    k *= a;
                }
                v->m_0C = 0x8000000 / (k * 3);
                s->m_00[i]->m_0E = 0x8000000 / (k * 4);
            }
        } while (++i < s->m_04);
    }
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_59", func_80087900);
#endif

Grid59 *func_800879D4(Grid59 *g) {
    g->m_10 = 0;
    g->m_14 = 0;
    g->m_1C = 0;
    g->m_20 = -1;
    g->m_34 = -1;
    g->m_04 = 0;
    g->m_0C = 0;
    g->m_08 = 0;
    g->m_00 = 0;
    g->m_18 = 0;
    g->m_24 = 0;
    g->m_28 = -1;
    g->m_30 = 0;
    return g;
}

void func_80087A14(Grid59 *g, int f) {
    func_80088AA8(g);
    if (f & 1) {
        operator delete(g);
    }
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_59", func_80087A58);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_59", func_80087EB0);

/* The tiles resized. */
int func_80088A08(Grid59 *g, int w, int h) {
    Tile59 **t;
    int i;
    int r = 0;

    if (w > 0 && h > 0) {
        t = g->m_18;
        g->m_10 = w;
        g->m_14 = h;
        for (i = 0; i < g->m_00; i++) {
            if (*t) {
                func_80095794(*t, g->m_10, g->m_14);
            }
            t++;
        }
        r = func_80088D04(g, 1, 0, 0);
    }
    g->m_30 = 0;
    return r;
}

/* The tiles deleted. */
int func_80088AA8(Grid59 *g) {
    int i;

    for (i = 0; i < g->m_00; i++) {
        if (g->m_18[i]) {
            delete g->m_18[i];
            g->m_18[i] = 0;
        }
    }
    if (g->m_18) {
        delete[] g->m_18;
        g->m_18 = 0;
    }
    if (g->m_24) {
        delete[] g->m_24;
        g->m_24 = 0;
    }
    g->m_04 = 0;
    g->m_00 = 0;
    g->m_0C = 0;
    g->m_30 = 0;
    return 1;
}

/* A tile made anew. */
Tile59 *func_80088BBC(Grid59 *g, int i) {
    Tile59 *r = 0;

    if (i >= 0 && i < g->m_00) {
        if (g->m_18[i]) {
            delete g->m_18[i];
            g->m_18[i] = 0;
        }
        g->m_18[i] = new Tile59;
        if (g->m_18[i]) {
            r = g->m_18[i];
            func_80095794(r, g->m_10, g->m_14);
        }
    }
    g->m_30 = 0;
    return r;
}

/* The tiles brought up to date, in two passes, unless skipped. */
#ifdef NON_MATCHING
// The original tests each search loop's count at the top; GCC moves the test to the bottom here
int func_80088D04(Grid59 *g, int all, int skip1, int skip2) {
    int r1 = 1;
    int r2 = 1;
    int need1;
    int need2 = 0;
    int i;
    Tile59 **p;

    if (!skip1) {
        need1 = 1;
        if (!all) {
            need1 = 0;
            p = g->m_18;
            for (i = 0; i < g->m_00;) {
                if ((*p)->m_48) {
                    need1 = *p && (*p)->m_38 == 0;
                }
                i++;
                p++;
                if (need1) {
                    break;
                }
            }
        }
        if (need1) {
            r1 = 1;
            p = g->m_18;
            g->m_30 = 0;
            for (i = 0; i < g->m_00; i++, p++) {
                if ((*p)->m_48) {
                    r1 &= func_8009593C(*p);
                }
            }
        }
    }
    if (!skip2) {
        need2 = 1;
        if (!all) {
            need2 = 0;
            p = g->m_18;
            for (i = 0; i < g->m_00;) {
                if ((*p)->m_48) {
                    need2 = *p && !((*p)->m_3C && (*p)->m_40);
                }
                i++;
                p++;
                if (need2) {
                    break;
                }
            }
        }
        if (need2) {
            r2 = 1;
            p = g->m_18;
            g->m_30 = 0;
            for (i = 0; i < g->m_00; i++, p++) {
                if ((*p)->m_48) {
                    r2 &= func_800958E0(*p) && func_800958D8(*p);
                }
            }
        }
    }
    return r2 && r1;
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_59", func_80088D04);
#endif

/* Each live tile's object told (its method at 0x20). */
int func_80088F34(Grid59 *g) {
    int i;
    Tile59 **t = g->m_18;

    for (i = 0; i < g->m_00; i++) {
        if (*t && (*t)->m_48) {
            Obj59 *o = (*t)->m_98;

            o->m_14->m_24((u8 *)o + o->m_14->m_20);
        }
        t++;
    }
    g->m_30 = 0;
    return 1;
}

/* Each drawn tile's primitives linked after the next one's. */
#ifdef NON_MATCHING
// The original keeps 0xFF000000 in $fp through the loop; GCC builds it at the store
int func_80088FD4(Grid59 *g) {
    if (g->m_00 > 0 && g->m_2C == 1) {
        int n = func_80089200(g, 1);

        if (n > 0) {
            int i = n - 1;
            Tile59 *last = g->m_18[n];
            Tile59 **p = &g->m_18[i];
            Tile59 *prev = last;

            for (; i >= 0; i--, p--) {
                Tile59 *t = *p;

                if (t && t->m_48 && t->m_44) {
                    Obj59 *o = t->m_98;
                    Obj59 *q = prev->m_98;
                    Tag59 *a = o->m_14->m_3C((u8 *)o + o->m_14->m_38);
                    u32 *b = q->m_14->m_34((u8 *)q + q->m_14->m_30);
                    Tag59 *r = (Tag59 *)(b[1] | 0x80000000);
                    u32 v = a->m_addr;

                    while (r->m_addr != (b[0] & 0xFFFFFF)) {
                        r = (Tag59 *)(r->m_addr | 0x80000000);
                    }
                    r->m_addr = v;
                }
                prev = t;
            }
            g->m_30 = (int)last->m_98;
        } else {
            g->m_30 = 0;
        }
    }
    return 1;
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_59", func_80088FD4);
#endif

Tile59 *func_80089190(Grid59 *g, int y, int x) {
    return func_800891E8(g, g->m_04 + y * g->m_08 + x);
}

Tile59 *func_800891C8(Grid59 *g, int i) {
    return func_800891E8(g, i);
}

Tile59 *func_800891E8(Grid59 *g, int i) {
    return g->m_18[i];
}
