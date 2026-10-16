#include "common.h"
#include "psyq.h"
#include "stdarg.h"

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
int func_80087A58(Grid59 *g, int a, int b, int c, int n, int w, int h, int k, int fl, va_list ap);
int func_800960D0(Tile59 *t, int a, int n, int x);
int func_800961EC(Tile59 *t, int a);
void *memset(void *p, int c, unsigned int n);
}

// A movie's decoder: the work buffer and its size in bytes
struct Dec59 {
    u_long *m_00;
    int m_04;
};
// A movie frame: its size, then the strips' bitstreams (or one, without the tag)
struct Mov59 {
    u8 m_00[4];
    u16 m_04; // width
    u16 m_06; // height
    u_long m_08[1];
};
// A frame's mask: a bit per pixel, rows from the bottom
struct Msk59 {
    u8 m_00[0x4E];
    u16 m_4E[1];
};

extern "C" {
extern u_long D_800C8C60[];
void func_800AA524(int mode);  // DecDCTReset
int func_800AA558(u_long *bs); // DecDCTBufSize
void func_800A6A4C(void);
void func_800A6A98(u_long *bs, u_long *buf); // DecDCTvlc
int func_800AA600(int mode);                 // DecDCToutSync
void func_800AC0B0(RECT *r, u_long *p);      // LoadImage
void func_80086F64(Dec59 *d, u_long *p, int w, int h);
u16 func_800A63E4(u16 x);
int func_80087468(Dec59 *d, Mov59 *h, int mode, int x, int y, Msk59 *mk);
}

#ifdef NON_MATCHING
// Structure and calls are the original's; registers differ (198 off): the original spills the frame table's address, the strip count and mode + 2 (0x18-0x20) and keeps the pixel pointer in $s0 for both the mask and the colour-key loops, where GCC keeps the table's address in $s0 and spills the mask.
int func_80087468(Dec59 *d, Mov59 *h, int mode, int x, int y, Msk59 *mk) {
    int r = 0;
    u_long *tab = h->m_08;

    if (!bcmp(tab, D_800C8C60, 4)) {
        int n = h->m_04 >> 4;
        u_long *bs = (u_long *)((u8 *)h + n * 4 + 0xC);
        int i;

        func_800AA524(0);
        i = 0;
        func_800A6A4C();
        if (n) {
            int m2 = mode + 2;

            do {
                int sz = func_800AA558(bs) * 4;
                int words = m2 * (h->m_06 << 2);
                u_long *buf = d->m_00;
                u_long *out = (u_long *)((u8 *)buf + sz) + 1;

                if (sz + words * 4 < d->m_04) {
                    RECT rc;
                    u16 *q;

                    func_800A6A98(bs, d->m_00);
                    DecDCTin(d->m_00, mode);
                    rc.w = 16;
                    rc.y = y;
                    rc.x = x + i * 16;
                    rc.h = h->m_06;
                    DecDCTout(out, words);
                    func_800AA600(0);
                    if (mode) {
                        func_80086F64(d, out, 16, h->m_06);
                    } else if (q = (u16 *)out, mk) {
                        int w = h->m_04 >> 4;
                        u16 *src = (u16 *)((u8 *)mk + i * 2 + 0x34) + (h->m_06 - 2) * w + 13;
                        int j;

                        for (j = 0; j < words / 8; j++) {
                            int bits = func_800A63E4(*src);
                            int k;

                            for (k = 0; k < 16; k++, q++) {
                                if (bits & 0x8000) {
                                    *q = 0;
                                }
                                bits <<= 1;
                            }
                            src -= w;
                        }
                    } else {
                        int k;

                        for (k = 0; k < words * 2; k++, q++) {
                            int v = *(short *)q;
                            int r5 = v & 0x1F;
                            int g5 = v & 0x3E0;
                            int b5 = v & 0x7C00;

                            if (r5 < 3 || g5 < 0x41 || b5 < 0x801) {
                                *q = 0;
                            }
                        }
                    }
                    func_800AC0B0(&rc, out);
                    r = 1;
                }
                bs += tab[++i] >> 2;
            } while (i < n);
        }
        return r;
    } else {
        int sz = func_800AA558(tab);
        int words = h->m_06 * 8;
        u_long *out = d->m_00 + sz + 1;

        if (sz * 4 + h->m_06 * 32 < d->m_04) {
            RECT rc;

            func_800AA524(0);
            func_800A6A4C();
            func_800A6A98(tab, d->m_00);
            DecDCTin(d->m_00, 0);
            rc.y = y;
            rc.w = 16;
            rc.h = h->m_06;
            for (rc.x = x; rc.x < x + h->m_04; rc.x += 16) {
                DecDCTout(out, words);
                func_800AA600(0);
                func_800AC0B0(&rc, out);
                DrawSync(0);
            }
            r = 1;
        }
        return r;
    }
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_59", func_80087468);
#endif

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

/* The grid made: its tiles' arrays, the tiles made in order (or backwards), and
 * values given to the edges' and then the rows' tiles from the arguments. */
int func_80087A58(Grid59 *g, int a, int b, int c, int n, int w, int h, int k, int fl, va_list ap) {
    int ok = 0;

    if (a >= 0 && c > 0 && b > 0) {
        int ok2 = 0;

        if ((g->m_18 = new Tile59 *[a + c * b]) != 0) {
            Tile59 *t = new Tile59[n];

            g->m_24 = t;
            if (t) {
                ok2 = 1;
            }
        }
        if (ok2) {
            ok = 1;
        }
    }
    if (ok) {
        int i, j, y, st, v, x;

        g->m_0C = b;
        g->m_04 = a;
        g->m_08 = c;
        g->m_1C = n;
        g->m_00 = a + c * b;
        memset(g->m_18, 0, g->m_00 * 4);
        memset(g->m_24, 0, g->m_1C * sizeof(Tile59));
        g->m_10 = w;
        g->m_14 = h;
        g->m_30 = 0;
        g->m_2C = k;
        if (!(fl & 8)) {
            j = 0;
            st = 1;
            if (fl & 0x10) {
                st = -1;
                j = g->m_00 - 1;
            }
            for (i = 0; i < g->m_04; i++) {
                func_80088BBC(g, j);
                j += st;
            }
            for (y = 0; y < g->m_0C; y++) {
                for (i = 0; i < g->m_08; i++) {
                    func_80088BBC(g, j);
                    j += st;
                }
            }
        }
        for (i = 0; i < g->m_04; i++) {
            Tile59 *t = func_800891C8(g, i);

            if (fl & 4) {
                v = va_arg(ap, int);
                x = 0;
                if (fl & 0x40) {
                    x = va_arg(ap, int);
                }
                func_800960D0(t, g->m_2C, v, x);
            }
            if (fl & 2) {
                func_800961EC(t, va_arg(ap, int));
            }
        }
        if (ap) {
            for (i = 0; i < g->m_08; i++) {
                if (fl & 4) {
                    v = va_arg(ap, int);
                    x = 0;
                    if (fl & 0x40) {
                        x = va_arg(ap, int);
                    }
                    for (y = 0; y < g->m_0C; y++) {
                        func_800960D0(func_80089190(g, y, i), g->m_2C, v, x);
                    }
                }
                if (fl & 2) {
                    x = va_arg(ap, int);
                    for (y = 0; y < g->m_0C; y++) {
                        func_800961EC(func_80089190(g, y, i), x);
                    }
                }
            }
        }
    } else {
        func_80088AA8(g);
    }
    return ok;
}

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
// With -fmove-all-movables (the chunk's flag) the loop's constants are hoisted as the original's; left: the tag search's loads in other registers and order (16 off)
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

                    while ((b[0] & 0xFFFFFF) != r->m_addr) {
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
