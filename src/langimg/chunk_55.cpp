#include "common.h"

// A map: keys, values, how many
struct Map55 {
    int *m_00;
    int *m_04;
    int m_08;
};

// An entry: two bytes and a value
struct Pair55 {
    s8 m_00;
    s8 m_01;
    short m_02;
};

struct Tab55 {
    u8 m_00[8];
    u16 m_08; // how many
    u8 m_0A[0xE];
    Pair55 m_18[1];
};

struct Spr55 {
    u8 m_00[7];
    u8 m_07;
    u8 m_08[2];
    u16 m_0A;
};

// A font: its glyphs' first and count, spacing, a space's width
struct Glyph55 {
    u8 m_00;
    u8 m_01;
    u8 m_02; // its width
    u8 m_03;
};
struct Font55 {
    u8 m_00;
    u8 m_01; // how many
    u8 m_02; // the first
    u8 m_03;
    s8 m_04; // the spacing
    u8 m_05;
    u8 m_06; // a space's width
    u8 m_07; // the kerning: a table after the glyphs, or chunk_56's pairs
    u16 m_08;
    u16 m_0A;
    u8 m_0C[0xC];
    Glyph55 m_18[1];
};
// An icon: its left and right
struct Icon55 {
    u8 m_00;
    u8 m_01[3];
    u8 m_04;
};

extern Icon55 *D_800CC030[];
extern int D_800C89E0; // the spacing, or -1 for the font's
extern void ***D_800C8D8C;
extern u8 D_800C89D4;
extern u8 D_800C89D5;
extern int D_800C89D8;
extern int D_800C89DC;
extern int D_800C89D0;
extern int D_800C89EC;
extern int D_800C89F0;
extern int D_800CBC98;
extern short D_800CBCD8;
extern short D_800CBCDA;
extern short D_800CBCDC;
extern short D_800CBCDE;

extern "C" {
int func_8007F948(void *font, void *t, int x, int y);
int func_80081270(Map55 *m, int k);
int func_800812C4(Map55 *m);
void func_8007F294(void);
void func_8007F2AC(Spr55 *p, u16 a, u16 b);
int func_8007F2C8(Tab55 *t, u8 a, u8 b);
int func_8007F33C(Font55 *f, u8 *s);
int func_80081330(void *t, int a, int b);
void func_80080678(void);
int func_80080F30(void *font, void *t, int x, int y);
int func_800803C4(Font55 *f, u8 *s);
int func_800804B8(s8 c);
int func_80080598(s8 c);
void func_80080F8C(void);
Map55 *func_8008106C(Map55 *m);
void func_8008107C(Map55 *m, int f);
void func_800810C0(Map55 *m);
void func_80081154(Map55 *m, int n);
int func_800811C4(Map55 *m, int k, int v);
void func_8008123C(Map55 *m, int i);
}

void func_8007F294(void) {
    D_800CBC98++;
}

void func_8007F2AC(Spr55 *p, u16 a, u16 b) {
    if (p) {
        p->m_07 = a;
        p->m_0A = b;
    }
}

/* The value of the pair (a, b), or 0. */
int func_8007F2C8(Tab55 *t, u8 a, u8 b) {
    int i;
    Pair55 *e = t->m_18;

    for (i = 0; i < t->m_08; i++) {
        if (e[i].m_00 == a && e[i].m_01 == b) {
            return e[i].m_02;
        }
    }
    return 0;
}

/* A string's width with its kerning, up to the end of its line. */
#ifdef NON_MATCHING
// Written in full, the structure the original's (with -fmove-all-movables: -1, -4, 0xFFFF and the glyphs' base hoisted); left: the space's glyph addressed through the hoisted base where the original indexes the font, the previous character in $a1 where the original has $a3, and the width added through a copy (92 off).
int func_8007F33C(Font55 *f, u8 *s) {
    int w = 0;
    u8 prev = 0;
    int c;

    while ((c = *s++) != 0) {
        switch (c) {
        case '\t':
            w += f->m_06 * 2;
            break;
        case ' ':
            if (f->m_02 <= ' ') {
                int g = f->m_18[c - f->m_02].m_02;

                w += g + (D_800C89E0 != -1 ? D_800C89E0 : f->m_04);
            } else {
                w += f->m_06;
            }
            break;
        case '\n':
            return w;
        default: {
            u8 i = c - f->m_02;

            if (i < f->m_01) {
                Glyph55 *g;

                if (f->m_08) {
                    if (f->m_07) {
                        int base = ((f->m_01 * f->m_01) & ~3) + 4;

                        if (prev) {
                            w += ((s8 *)f->m_18)[prev - f->m_02 + f->m_01 * i];
                        }
                        g = (Glyph55 *)((u8 *)&f->m_18[i] + base);
                    } else {
                        if (prev) {
                            w += func_8007F2C8((Tab55 *)f, prev, c);
                        }
                        g = &f->m_18[i] + f->m_08;
                    }
                } else {
                    if (f->m_0A != 0xFFFF && prev) {
                        int k = func_80081330((*D_800C8D8C)[f->m_07], prev, c);

                        if (k) {
                            w += (short)(k * f->m_00) / f->m_0A;
                        }
                    }
                    g = &f->m_18[i];
                }
                w += g->m_02 + (D_800C89E0 != -1 ? D_800C89E0 : f->m_04);
            }
            prev = c;
        }
        }
    }
    return w;
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_55", func_8007F33C);
#endif

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_55", func_8007F5E8);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_55", func_8007F948);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_55", func_80080040);

#ifdef NON_MATCHING
// The loop isn't one to GCC in the original (no constant hoisted, the test at the bottom): a goto gives that shape, but the start and the registers differ
/* A string's width: glyphs, spaces, a skipped code, icons. */
int func_800803C4(Font55 *f, u8 *s) {
    int w;
    int c;
    int first;
    int last;
    int sp;
    int space;

    if (!s || !*s) {
        return 0;
    }
    w = 0;
    space = f->m_06;
    first = f->m_02;
    last = first + f->m_01 - 1;
    sp = f->m_04;
    if (D_800C89E0 != -1) {
        sp = D_800C89E0;
    }
    space += sp;
    /* a loop GCC doesn't see as one: a goto */
    goto next;
loop:
    if (c >= first && c <= last) {
        w += sp;
        w += f->m_18[c - first].m_02;
    } else if (c == ' ') {
        w += space;
    } else if (c == 1) {
        s += 3;
    } else if (c == 2) {
        Icon55 *i = D_800CC030[*s++];

        w++;
        w += i->m_04 - i->m_00;
    }
next:
    if ((c = *s++) != 0) {
        goto loop;
    }
    return w;
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_55", func_800803C4);
#endif

/* A character's place in the font's symbols. */
int func_800804B8(s8 c) {
    if (c == '-') {
        c = 0x5B;
    } else if (c == '+') {
        c = 0x5C;
    } else if (c == ' ') {
        c = 0x5D;
    } else if (c == '0') {
        c = 0x5E;
    } else if (c == '1') {
        c = 0x5F;
    } else if (c == '2') {
        c = 0x60;
    } else if (c == '3') {
        c = 0x61;
    } else if (c == '4') {
        c = 0x62;
    } else if (c == '5') {
        c = 0x63;
    } else if (c == '6') {
        c = 0x64;
    } else if (c == '7') {
        c = 0x65;
    } else if (c == '8') {
        c = 0x66;
    } else if (c == '9') {
        c = 0x67;
    }
    return c;
}

/* Back from the font's symbols. */
int func_80080598(s8 c) {
    if (c == 0x5B) {
        c = '-';
    } else if (c == 0x5C) {
        c = '+';
    } else if (c == 0x5D) {
        c = ' ';
    } else if (c == 0x5E) {
        c = '0';
    } else if (c == 0x5F) {
        c = '1';
    } else if (c == 0x60) {
        c = '2';
    } else if (c == 0x61) {
        c = '3';
    } else if (c == 0x62) {
        c = '4';
    } else if (c == 0x63) {
        c = '5';
    } else if (c == 0x64) {
        c = '6';
    } else if (c == 0x65) {
        c = '7';
    } else if (c == 0x66) {
        c = '8';
    } else if (c == 0x67) {
        c = '9';
    }
    return c;
}

/* Up by 32 to past 128, then down by 32 to below 0. */
void func_80080678(void) {
    if (!D_800C89F0) {
        D_800C89EC += 32;
        if (D_800C89EC > 128) {
            D_800C89F0 = 1;
        }
    } else {
        D_800C89EC -= 32;
        if (D_800C89EC < 0) {
            D_800C89F0 = 0;
        }
    }
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_55", func_800806D4);

// The compare tree (0x1000 first, then below 0x1001, then 0) comes with the switch on an unsigned value and a third empty case, which keeps GCC from dropping the empty case 0x1000; the four arguments are passed through to func_8007F948
int func_80080F30(void *font, void *t, int x, int y) {
    int r;

    D_800CBCDC = 0;
    D_800CBCDE = 0;
    D_800CBCD8 = 0;
    D_800CBCDA = 0;
    r = 0;
    switch ((u32)(D_800C89D0 & 0xF000)) {
    case 0:
        r = func_8007F948(font, t, x, y);
        break;
    case 0x1000:
        break;
    case 0x2000:
        break;
    }
    return r;
}

#ifdef NON_MATCHING
// The colour's three shifted copies: the original ors (f << 8) | 0x66000000 into f << 16, GCC (f << 16) | 0x66000000 first (5 off; the switch on f &= 3 kept in f's register as the original)
/* The colour from the mode's flags. */
void func_80080F8C(void) {
    u8 f = D_800C89D4;
    int c = D_800C89D8;

    if (f & 8) {
        c &= (f & 4) ? 0x2FFFFFF : 0xFFFFFF;
    } else if (f & 4) {
        f = D_800C89D5;
        c = (f << 16) | ((f << 8) | 0x66000000) | f;
    } else {
        f &= 3;
        switch (f) {
        case 0:
            c = (D_800C89D5 << 16) | (D_800C89D5 << 8) | D_800C89D5;
            break;
        case 1:
            c = D_800C89D5;
            break;
        case 2:
            c = D_800C89D5 << 8;
            break;
        case 3:
            c = D_800C89D5 << 16;
            break;
        }
    }
    D_800C89DC = c;
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_55", func_80080F8C);
#endif

Map55 *func_8008106C(Map55 *m) {
    m->m_00 = 0;
    m->m_08 = 0;
    return m;
}

void func_8008107C(Map55 *m, int f) {
    func_800810C0(m);
    if (f & 1) {
        operator delete(m);
    }
}

void func_800810C0(Map55 *m) {
    int i;

    for (i = 0; i < m->m_08; i++) {
        func_8008123C(m, i);
    }
    if (m->m_00) {
        delete[] m->m_00;
        m->m_00 = 0;
    }
    if (m->m_04) {
        delete[] m->m_04;
        m->m_04 = 0;
    }
    m->m_08 = 0;
}

void func_80081154(Map55 *m, int n) {
    if (n > 0) {
        m->m_00 = new int[n];
        m->m_04 = new int[n];
        if (m->m_00) {
            memset(m->m_00, 0, n * 4);
            m->m_08 = n;
        }
    }
}

int func_800811C4(Map55 *m, int k, int v) {
    int i;

    func_80081270(m, k);
    i = func_800812C4(m);
    if (i != -1) {
        m->m_00[i] = k;
        m->m_04[i] = v;
    }
    return i;
}

void func_8008123C(Map55 *m, int i) {
    if (i >= 0 && i < m->m_08) {
        m->m_00[i] = 0;
    }
}
