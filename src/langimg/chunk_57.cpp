#include "common.h"

// The HUD's two players: their messages, timers and names
struct Hud57 {
    u8 m_00[2];
    s8 m_02[2];
    short m_04[2];
    short m_08[2];
    short m_0C[2];
    short m_10[2];
    short m_14[2];
    short m_18[2];
    short m_1C[2];
    short m_20[2];
    int m_24[2];
    int m_2C[2];        // when it was set
    int m_34[2];        // how long it shows
    char m_3C[2][0x20]; // the names
    int m_7C[2];
    int m_84[2];
};

// Two texts, and a value each slid from one to another
struct Txt57 {
    u8 m_00[2];
    u8 m_02[2];
    short m_04[2]; // from
    short m_08[2]; // to
    short m_0C[2];
    short m_10[2]; // now
    short m_14[2];
    char m_18[2][0x20];
    short m_58[2]; // the countdown
    u8 *m_5C[2];   // the textures
};

// A word stored anywhere
struct UInt57 {
    int v;
} __attribute__((packed));

// A node: its parent, its values, which it has, how many
struct Node57 {
    struct Node57 *m_00;
    int *m_04;
    u8 m_08[4];
    short m_0C;
    short m_0E;
};

struct Lap57 {
    u8 m_00[4];
    u32 m_04; // when it started
    struct {
        u8 m_00[8];
        u32 m_08; // how long
    } *m_08;
};

struct Bike57 {
    u8 m_00[0x326];
    s8 m_326;
    u8 m_327[0x39];
    Lap57 m_360;
};

// A message: its text and a value
struct Msg57 {
    char *m_00;
    short m_04;
    u8 m_06[6];
};

struct Time57 {
    int m_t : 30;
    u32 m_f : 2;
};

struct Win57 {
    u8 m_00[0x28];
    int m_28;
    u8 m_2C[8];
    int m_34;
};

struct Disp57 {
    u8 m_00[0xC];
    int m_0C; // its width
    u8 m_10[0x20];
    u8 m_30[4];
};
// The bike the dashboard shows (chunk_09's Bike)
struct Phys57 {
    u8 m_00[0x12C];
    s8 m_12C; // its gear
    u8 m_12D[3];
    short m_130; // its engine speed
    u8 m_132[0x1B2];
    int m_2E4;
    int m_2E8;
};
// A racer (chunk_36's Bike36): its kind in bits 1-5
struct Racer57 {
    u32 m_00;
    u8 m_04[0x2C];
    Phys57 *m_30;
    u8 m_34[0x2EC];
    s8 m_320;
};
struct Gauge57 {
    u8 m_00[0xE0];
    int m_E0;
};
struct Hold57 {
    u8 m_00[0x52C];
    int m_52C;
};
struct Run57 {
    u32 m_00;
    u8 m_04[0xC];
    Hold57 *m_10;
};
struct Game57 {
    u8 m_00[0x378];
    Run57 *m_378;
};

extern Time57 D_800D6124; // the clock
extern u32 D_800D60FC;
extern int D_800D6100; // the frame's length
extern int D_800CBD30;
extern Game57 *D_800C5E14;
extern int D_800D49A4;
extern int
    D_800CBCE0; // the dashboard (0x50 bytes), declared small: its address is one `la` at each use
extern short D_800CBD24, D_800CBD26;
extern s8 D_800CBD28, D_800CBD29;
extern Msg57 D_800C73F8[];
extern int D_800C89D0;
extern int D_800C89D8;
extern int D_800CC078[];
extern char D_800D4798;
extern char D_800C8B50[];
extern Disp57 *D_800C886C;
extern Win57 *D_800C8D90;
extern u8 *D_800CC030[]; // the textures, by id
extern u8 *D_800CBD5C;
extern int D_800CBD58; // the font
extern char D_800C8B44[];

// A box on screen
struct Box57 {
    int m_00;
    int m_04;
    int m_08;
    int m_0C;
    u8 m_10[8];
    int m_18, m_1C, m_20, m_24, m_28, m_2C;
    u8 m_30[0x14];
    int m_44, m_48;
    int m_4C; // flags
};

extern "C" {
int sprintf(char *buf, const char *fmt, ...);
void func_80080F8C(void);
int func_80089354(void *m, int *a);
void func_80080040(int font, char *s, int x, int y, int *h);
void func_8008386C(Txt57 *t, int i);
void func_80083A44(Hud57 *h, int i);
void func_80083AB8(Hud57 *h, int i, Bike57 *b);
void func_80083D18(Hud57 *h, int i, int t);
void func_80083B08(Hud57 *h, int i, Bike57 *b);
void func_80083D40(Hud57 *h, int i, int k);
void func_80083E14(Hud57 *h, int i, int a, int t, int v);
int func_800841BC(Node57 *n, int i, int force);
void func_8008422C(Node57 *n);
int func_800846AC(int a, int b, int c, int d, int e, int f);
void func_800846FC(void);
void func_80084D58(void);
void func_80084B1C(int x, int y);
void func_80019FA4(int *d, int a, int b);
void func_80019FB0(int *d, int x, int y);
void func_80019FBC(int *d, int v);
void func_80019FF8(int *d, int on);
int func_800334B0(Phys57 *b);
int func_800A5CD0(u32 ms, int *m, int *sec, int *cs);
char *func_800A6000(char *p, int v, int n, int pad);
void func_80083380(Txt57 *t, int i, int v, int c);
void func_8008350C(Txt57 *t, int i);
void func_8008388C(Hud57 *h, int i, int k, Box57 *w, int flags, int c);
void func_800831BC(Txt57 *t, int i, int k, Box57 *w, int flags);
short func_800803C4(int a, char *b);
}

// A name shown on its own line: its font, place, width and image
struct Label57 {
    s8 m_00[2]; // the font's index
    u8 m_02[0xA];
    short m_0C[2]; // y
    short m_10[2]; // x
    short m_14[2]; // the margin
    char m_18[2][0x20];
    short m_58[2]; // < 0: hidden
    int m_5C[2];   // the image, or 0
};

extern u8 D_800C885C;  // the image's mode
extern u8 D_800C885D;  // its alpha
extern int D_800C8860; // its colour
extern u8 D_800C89D4, D_800C89D5;
extern u8 *D_800C8C70;  // the next free GPU packet
extern u32 *D_800CBDC0; // the ordering table
extern "C" void func_80077BE4(int img, int a, int x, int y);
extern "C" void func_80083618(Label57 *l, int i);

// ui.h's ADD_PRIM: links packet p in at ordering table entry ot (lwl/swl on the links' 3 bytes)
#define ADD_PRIM57(ot, p) \
    do { \
        u32 _l, _p; \
        __asm__ volatile("lwl %0, 2(%2)\n\tsll %1, %3, 8\n\tswl %0, 2(%3)\n\tswl %1, 2(%2)" \
                         : "=&r"(_l), "=&r"(_p) \
                         : "r"(ot), "r"(p)); \
    } while (0)
#define XY57(x, y) (((x) & 0xFFFF) | ((y) << 16))

// A draw mode packet: its tag and the mode word
static inline void SetDM57(u32 *p, u32 mode) {
    p[0] = 0x01000000;
    p[1] = mode;
}

// A short set from an int (its loads stay words)
static inline void Put57(short *d, int v) {
    *d = v;
}

/* Text i placed in box w: after texture k (or none, -1), by the flags'
 * alignment. */
#ifdef NON_MATCHING
// Registers: the width and the texture's width swapped ($a3/$t0); the rows' addresses as byte offsets (t + (i << 1) + field) gave the original's t + 2i (11 off).
void func_800831BC(Txt57 *t, int i, int k, Box57 *w, int flags) {
    if (w->m_44 && w->m_48) {
        u8 *tex = 0;
        int width, tw, th, fh, a;
        int m;

        if (k != -1) {
            tex = D_800CC030[k];
        }
        width = func_800803C4(D_800CBD58, D_800C8B44);
        tw = 0;
        th = 0;
        fh = *D_800CBD5C;
        if (tex) {
            tw = tex[4] - tex[0] + 1;
            th = tex[5] - tex[1] + 1;
            t->m_14[i] = (tw - width) >> 1;
        } else {
            t->m_14[i] = 0;
        }
        m = w->m_4C;
        if (width < tw) {
            width = tw;
        }
        if ((m & 0x30) != 0x20) {
            Put57((short *)((u8 *)t + (i << 1) + 0x04), w->m_00 - width - 1);
            Put57((short *)((u8 *)t + (i << 1) + 0x08), w->m_18);
        } else {
            Put57((short *)((u8 *)t + (i << 1) + 0x04), w->m_00 + w->m_08 + 1);
            Put57((short *)((u8 *)t + (i << 1) + 0x08), w->m_1C - width);
        }
        t->m_02[i] = 1;
        a = flags & 0x300;
        if (!a) {
            Put57((short *)((u8 *)t + (i << 1) + 0x0C), w->m_20);
        } else if (a == 0x200) {
            Put57((short *)((u8 *)t + (i << 1) + 0x0C), w->m_24 - fh - th);
        } else if (a == 0x100) {
            Put57((short *)((u8 *)t + (i << 1) + 0x0C), w->m_2C);
        }
        t->m_5C[i] = tex;
    }
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_57", func_800831BC);
#endif

/* A time written into text i: a colour code, minutes, seconds and
 * hundredths (and a symbol when under a minute). */
#ifdef NON_MATCHING
// Registers: the original keeps the time in $a0 and the minutes in $a1, and stores the colour code through $t0
void func_80083380(Txt57 *t, int i, int v, int c) {
    char *p = t->m_18[i];
    int col;
    int m;
    int sec;
    int cs;

    t->m_00[i] = 0;
    if (v < 0) {
        v = -v;
        col = 0xFF;
    } else {
        col = 0xFF00;
    }
    if (func_800A5CD0(v, &m, &sec, &cs)) {
        if (m >= 60) {
            m = 59;
        }
        if (m == 0) {
            ((UInt57 *)p)->v = -0xFF;
            p += 4;
            *p++ = c;
            *p++ = ' ';
            *p++ = ' ';
        }
        ((UInt57 *)p)->v = (col << 8) | 1;
        p += 4;
        if (m > 0) {
            p = func_800A6000(p, m, 1, '0');
            *p++ = ' ';
            *p++ = ':';
            *p++ = ' ';
        }
        p = func_800A6000(p, sec, 2, '0');
        *p++ = ' ';
        *p++ = ':';
        *p++ = ' ';
        p = func_800A6000(p, cs, 2, '0');
        t->m_58[i] = 0xC1C;
    }
    *p = 0;
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_57", func_80083380);
#endif

#ifdef NON_MATCHING
// The original has a 16-byte frame it doesn't use, and reads the countdown both signed and unsigned
/* Value i slid back, then forward, as its countdown runs. */
void func_8008350C(Txt57 *t, int i) {
    int n = t->m_58[i];
    int pad[4];

    if (n < 0) {
        return;
    }
    t->m_58[i] -= D_800D6100;
    if (n >= 2800) {
        t->m_10[i] = t->m_08[i] + ((t->m_04[i] - t->m_08[i]) * (((n - 2800) << 12) / 300) >> 12);
    } else if (t->m_58[i] < 301) {
        t->m_10[i] = t->m_04[i] + ((t->m_08[i] - t->m_04[i]) * ((n << 12) / 300) >> 12);
    } else {
        t->m_10[i] = t->m_08[i];
    }
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_57", func_8008350C);
#endif

#ifdef NON_MATCHING
// The packets match the original's shape (a POLY_F4, then a draw mode set just past it with the pointer stepped in place: see "GPU packets" in the techniques); left: the label's x and y in swapped saved registers and the measured width reloaded from the stack where the original keeps it in a register (91 off).
void func_80083618(Label57 *l, int i) {
    if (l->m_58[i] >= 0) {
        int x = l->m_10[i];
        int y = l->m_0C[i];
        int m = l->m_14[i];
        short r[4];
        short w;
        int left;
        u32 *p;
        u32 *ot;

        if (l->m_5C[i]) {
            D_800C885C = 4;
            D_800C885D = 0x80;
            D_800C8860 = 0xFFFFFF;
            func_80077BE4(l->m_5C[i], 0x200, x, y);
        }
        D_800C89D0 = 0;
        if (D_800C89D4 != 8 || D_800C89D5) {
            D_800C89D4 = 8;
            D_800C89D5 = 0;
            func_80080F8C();
        }
        func_80080040((&D_800CBD58)[l->m_00[i]], l->m_18[i], x + m, y + 3, (int *)r);
        w = r[2];
        if (w < w + m * 2) {
            r[2] = w = w + m * 2;
        }
        left = x;
        if (r[0] < left) {
            left = r[0];
        }
        p = (u32 *)D_800C8C70;
        p[0] = 0x05000000;
        p[1] = 0x2A808080;
        p[2] = XY57(left, y);
        p[3] = XY57(left + w, y);
        p[4] = XY57(left, y + r[3] + 6);
        p[5] = XY57(left + w, y + r[3] + 6);
        ADD_PRIM57(D_800CBDC0 + 1, D_800C8C70);
        p = (u32 *)D_800C8C70;
        SetDM57(p + 6, 0xE1000240);
        p += 6;
        ot = D_800CBDC0 + 1;
        D_800C8C70 = (u8 *)p;
        ADD_PRIM57(ot, D_800C8C70);
        p += 2;
        D_800C8C70 = (u8 *)p;
    }
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_57", func_80083618);
#endif

void func_8008386C(Txt57 *t, int i) {
    t->m_18[i][0] = 0;
    t->m_58[i] = -1;
}

/* Message i set to texture k and placed in box w by the flags' alignment,
 * or under it for the second kind. */
#ifdef NON_MATCHING
// The stores go through an inline taking an int (so the box's words load with lw, not a narrowed lhu); left: the row's address (h + 2i) copied into more registers in the original and the loads' order, 73 off.
void func_8008388C(Hud57 *h, int i, int k, Box57 *w, int flags, int c) {
    u8 *f = D_800CC030[29];
    u8 *d = D_800CBD5C;
    u8 *t;
    int fh, tw, th, y;

    tw = 0;
    th = 0;
    h->m_84[i] = (int)D_800CC030[k];
    h->m_00[i] = 1;
    h->m_02[i] = c;
    fh = f[4] - f[0] + 2;
    t = (u8 *)h->m_84[i];
    if (t) {
        tw = t[4] - t[0] + 1;
        th = t[9] - t[1] + 1;
    }
    y = th + (*d + 3);
    if (c) {
        Put57(&h->m_08[i], w->m_24 - y - 10);
        Put57(&h->m_04[i], w->m_0C + 1);
        Put57(&h->m_10[i], w->m_28 - (tw >> 1));
        Put57(&h->m_18[i], w->m_28 - (fh * 5 >> 1));
        Put57(&h->m_1C[i], w->m_20 + 32);
    } else {
        int a = flags & 0x300;

        if (!a) {
            Put57(&h->m_0C[i], w->m_20);
        } else if (a == 0x200) {
            Put57(&h->m_0C[i], w->m_24 - y);
        } else if (a == 0x100) {
            Put57(&h->m_0C[i], w->m_2C - (y >> 1));
        }
        Put57(&h->m_08[i], w->m_18);
        Put57(&h->m_04[i], w->m_00 - tw);
        Put57(&h->m_18[i], w->m_1C - fh * 5);
        Put57(&h->m_1C[i], w->m_20);
    }
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_57", func_8008388C);
#endif

/* Player i's HUD cleared. */
void func_80083A44(Hud57 *h, int i) {
    h->m_00[i] = 0;
    h->m_02[i] = 0;
    h->m_04[i] = 0;
    h->m_08[i] = 0;
    h->m_0C[i] = 0;
    h->m_10[i] = 0;
    h->m_18[i] = 0;
    h->m_1C[i] = 0;
    h->m_14[i] = 0;
    h->m_20[i] = 0;
    h->m_2C[i] = 0;
    h->m_34[i] = 0;
    h->m_3C[i][0] = 0;
    h->m_7C[i] = 0;
    h->m_84[i] = 0;
    h->m_24[i] = 0;
}

/* How far through the lap, in 4096ths. */
void func_80083AB8(Hud57 *h, int i, Bike57 *b) {
    if (b->m_326) {
        Lap57 *l = &b->m_360;

        h->m_24[i] = ((D_800D60FC - l->m_04) << 12) / l->m_08->m_08;
    }
}

/* Message i's slide stepped by its state at 0x7C: in from 0x04 to 0x08,
 * held, out again; its position written to 0x0C or 0x10. */
void func_80083B08(Hud57 *h, int i, Bike57 *b) {
    int on = 1;
    int to = h->m_08[i];
    int from = h->m_04[i];
    int f = 0;
    int v;

    if (h->m_34[i] > 0) {
        f = ((D_800D6124.m_t - h->m_2C[i]) << 12) / h->m_34[i];
    }
    switch (h->m_7C[i]) {
    case 1:
        func_80083AB8(h, i, b);
        if (f <= 0x1000) {
            v = from + ((to - from) * f >> 12);
        } else {
            v = to;
            h->m_7C[i] = 2;
        }
        break;
    case 2:
        on = 0;
        if (!b->m_326) {
            func_80083E14(h, i, 5, 2000, 0);
        } else {
            func_80083AB8(h, i, b);
        }
        break;
    case 3:
    case 4:
    case 5:
        on = 0;
        if (f > 0x1000) {
            func_80083D18(h, i, 300);
            h->m_7C[i] = 6;
        }
        break;
    case 6:
        if (f <= 0x1000) {
            v = to + ((from - to) * f >> 12);
        } else {
            v = from;
            h->m_7C[i] = 0;
        }
        break;
    case 0:
    default:
        on = 0;
        break;
    }
    if (on) {
        if (h->m_02[i]) {
            h->m_0C[i] = v;
        } else {
            h->m_10[i] = v;
        }
    }
}

// The word after its jump table, the end of this file's .rodata
extern "C" const int D_800B78B8 __attribute__((section(".rodata"))) = 0;

void func_80083D18(Hud57 *h, int i, int t) {
    h->m_34[i] = t;
    h->m_2C[i] = D_800D6124.m_t;
}

/* Message k shown to player i for 300 frames. */
void func_80083D40(Hud57 *h, int i, int k) {
    Msg57 *m;

    func_80083D18(h, i, 300);
    h->m_7C[i] = 1;
    m = &D_800C73F8[k];
    strncpy(h->m_3C[i], m->m_00, 0x20);
    h->m_3C[i][0x1F] = 0;
    h->m_14[i] = m->m_04;
    if (h->m_02[i]) {
        h->m_0C[i] = h->m_04[i];
    } else {
        h->m_10[i] = h->m_04[i];
    }
}

void func_80083E14(Hud57 *h, int i, int a, int t, int v) {
    func_80083D18(h, i, t);
    h->m_14[i] = v;
    h->m_7C[i] = a;
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_57", func_80083E78);

/* Value i, from the node or its parents. */
int func_800841BC(Node57 *n, int i, int force) {
    int r = 0;

    if (force || (n->m_0C >> i) & 1) {
        r = n->m_04[i];
        if (!r && n->m_00) {
            r = func_800841BC(n->m_00, i, 0);
        }
    }
    return r;
}

/* The node's missing values taken from its parents. */
void func_8008422C(Node57 *n) {
    int i;

    for (i = 0; i < n->m_0E; i++) {
        if ((n->m_0C >> i) & 1 && !n->m_04[i] && n->m_00) {
            n->m_04[i] = func_800841BC(n->m_00, i, 0);
        }
    }
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_57", func_800842E8);

#ifdef NON_MATCHING
// The gp global's store: the original stores it first
int func_800846AC(int a, int b, int c, int d, int e, int f) {
    int r;
    int *w = &D_800CBD30;

    D_800CBD30 = a;
    w[1] = b;
    w[2] = c;
    w[3] = d;
    w[4] = e;
    w[5] = f;
    r = 0;
    if (a && b && c != -1) {
        r = d != 0;
    }
    return r;
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_57", func_800846AC);
#endif

void func_800846FC(void) {
    int *w = &D_800CBD30;

    D_800CBD30 = 0;
    w[1] = 0;
    w[2] = -1;
    w[3] = 0;
    w[4] = -1;
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_57", func_80084720);

/* The dashboard at x, y for the racer shown (w[1]): its scale, the engine
 * speed, the gear and its warnings, then whether it's lit. */
#ifdef NON_MATCHING
// The dashboard declared small, so its address is built at each of the five calls and the frame is 0x28 as the original's; left: the arguments and the race in other saved registers, and the warning flags' compares (sltiu in the original, xori here), 99 off.
void func_80084B1C(int x, int y) {
    int *w = &D_800CBD30;
    Racer57 *s = (Racer57 *)w[1];

    if (s && (int)(s->m_00 << 26) >> 27 == 1 &&
        (!s->m_320 || D_800C5E14->m_378->m_10->m_52C == 1 || D_800C5E14->m_378->m_10->m_52C == 2)) {
        int k, a, f, on;
        Racer57 *r;
        Phys57 *b;
        int g;

        k = (D_800C886C->m_0C << 12) / 320;
        func_80019FA4((int *)&D_800CBCE0, k, k * ((Gauge57 *)w[3])->m_E0 >> 12);
        func_80019FB0((int *)&D_800CBCE0, x - 0x56, y - 0x2C);
        r = (Racer57 *)w[1];
        a = (int)(r->m_00 << 26) >> 27 == 1;
        b = r->m_30;
        func_80019FBC((int *)&D_800CBCE0, b->m_130);
        if (a) {
            int t = w[5];
            int warn = 0;
            int up;

            if (b->m_2E8) {
                warn = ((t & 7) < 3) == 0;
            }
            f = 0;
            if (b->m_2E8) {
                f = !(t & 7);
            }
            if (f) {
                func_8006CA84(0x44, 0x7F);
            }
            g = b->m_12C;
            up = 0;
            if (!(((t + 4) & 7) < 3)) {
                up = func_800334B0(b) != 0;
            }
            D_800CBD26 = g;
            D_800CBD29 = up;
            D_800CBD28 = warn;
            Put57(&D_800CBD24, b->m_2E4);
        } else {
            D_800CBD29 = 0;
            D_800CBD26 = b->m_12C;
        }
        if (D_800C5E14->m_378->m_10->m_52C != 5) {
            on = 0;
            if (D_800C5E14->m_378->m_10->m_52C != 6 &&
                (!(D_800C5E14->m_378->m_00 & 0xA8) || D_800D49A4 == 1)) {
                on = 1;
            }
            func_80019FF8((int *)&D_800CBCE0, on);
        }
    }
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_57", func_80084B1C);
#endif

void func_80084D58(void) {
    if (D_800D6124.m_t & 0x100) {
        int font;
        int h[2];

        D_800C89D0 = 0x110;
        font = D_800CC078[0];
        if (D_800C89D8 != 0xFFFF) {
            D_800C89D8 = 0xFFFF;
            func_80080F8C();
        }
        sprintf(&D_800D4798, D_800C8B50);
        if (func_80089354(D_800C886C->m_30, h)) {
            int x = D_800C8D90->m_28;
            int y = D_800C8D90->m_34;

            func_80080040(font, &D_800D4798, x, y / 2, 0);
        }
    }
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_57", func_80084E1C);
