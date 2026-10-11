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
    u8 m_0C[4];
    short m_10[2]; // now
    u8 m_14[4];
    char m_18[2][0x20];
    short m_58[2]; // the countdown
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
    u8 m_00[0x30];
    u8 m_30[4];
};

extern Time57 D_800D6124; // the clock
extern u32 D_800D60FC;
extern int D_800D6100; // the frame's length
extern int D_800CBD30;
extern int D_800CBD30_w[] asm("D_800CBD30"); // the same words, by index
extern Msg57 D_800C73F8[];
extern int D_800C89D0;
extern int D_800C89D8;
extern int D_800CC078[];
extern char D_800D4798;
extern char D_800C8B50[];
extern Disp57 *D_800C886C;
extern Win57 *D_800C8D90;

extern "C" {
int sprintf(char *buf, const char *fmt, ...);
void func_80080F8C(void);
int func_80089354(void *m, int *a);
void func_80080040(int font, char *s, int x, int y, int *h);
void func_8008386C(Txt57 *t, int i);
void func_80083A44(Hud57 *h, int i);
void func_80083AB8(Hud57 *h, int i, Bike57 *b);
void func_80083D18(Hud57 *h, int i, int t);
void func_80083D40(Hud57 *h, int i, int k);
void func_80083E14(Hud57 *h, int i, int a, int t, int v);
int func_800841BC(Node57 *n, int i, int force);
void func_8008422C(Node57 *n);
int func_800846AC(int a, int b, int c, int d, int e, int f);
void func_800846FC(void);
void func_80084D58(void);
int func_800A5CD0(u32 ms, int *m, int *sec, int *cs);
char *func_800A6000(char *p, int v, int n, int pad);
void func_80083380(Txt57 *t, int i, int v, int c);
void func_8008350C(Txt57 *t, int i);
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_57", func_800831BC);

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

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_57", func_80083618);

void func_8008386C(Txt57 *t, int i) {
    t->m_18[i][0] = 0;
    t->m_58[i] = -1;
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_57", func_8008388C);

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

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_57", func_80083B08);

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

    D_800CBD30 = a;
    D_800CBD30_w[1] = b;
    D_800CBD30_w[2] = c;
    D_800CBD30_w[3] = d;
    D_800CBD30_w[4] = e;
    D_800CBD30_w[5] = f;
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
    D_800CBD30 = 0;
    D_800CBD30_w[1] = 0;
    D_800CBD30_w[2] = -1;
    D_800CBD30_w[3] = 0;
    D_800CBD30_w[4] = -1;
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_57", func_80084720);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_57", func_80084B1C);

#ifdef NON_MATCHING
// The last call's arguments: the original loads the window's two fields the other way round
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
            func_80080040(font, &D_800D4798, D_800C8D90->m_28, D_800C8D90->m_34 / 2, 0);
        }
    }
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_57", func_80084D58);
#endif

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_57", func_80084E1C);
