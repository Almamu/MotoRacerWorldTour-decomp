#include "common.h"
#include "psyq.h"

/* A rider's view (three matrices, what it looks at) and a map read from
 * run-length rows, cached in the scratchpad
 * (docs/matching/issue-18-langimg-chunk17.md). */

extern "C" {
// Two words copied together
struct Pair17 {
    int m_00, m_04;
};

// Eight words copied together
struct Eight17 {
    int m_00[8];
};

// What the view follows (chunk_41's object)
struct Bike17 {
    u8 m_00[0x12C];
    s8 m_12C;
    u8 m_12D[0x1B];
    s8 m_148;
    s8 m_149;
    s8 m_14A;
};

struct Rider17 {
    u8 m_00[0x30];
    Bike17 *m_30;
};

struct Kind17 {
    u8 m_00[0xA];
    short m_0A;
};

// Something to look at (0x1C bytes)
struct Target17 {
    int m_00[7];
};

// The view
struct View17 {
    int m_00; // on
    u8 m_04[0x38];
    short m_3C;
    u8 m_3E[6];
    Kind17 *m_44;
    u8 m_48[0x18];
    int m_60[3];
    Pair17 m_6C;
    int m_74;
    Target17 m_78[3]; // what it can look at
    u8 m_CC[0x54];
    Target17 *m_120; // what it looked at
    Target17 *m_124; // what it looks at
    int m_128;       // 0x1000 once there
    int m_12C;
    int m_130;
    MATRIX m_134[3];
};

// A map's rows: each a run-length list, or (negative) empty
struct Rle17 {
    u16 m_00; // a row's length
    u8 m_02[2];
    short *m_04; // each row's offset
    u8 *m_08;    // the runs
};

// A map, one of a list: its range of positions
struct Map17 {
    Map17 *m_00; // the previous
    Map17 *m_04; // the next
    int m_08;    // 8: cells of 8 units, else of 16
    short m_0C;  // from
    short m_0E;  // to
    Rle17 m_10;
};

// Two lists of maps, one current
struct Maps17 {
    int m_00;
    Map17 *m_04[2]; // where each list is
    int m_0C[2];    // and at what position
    int m_14;
};

extern Pair17 D_800C8D34[];
void func_80097E4C(void *a, int x, int y, int z);
int func_80063450(Bike17 *b);
void func_80036964(void *o);
void func_80035518(void *o, int a);
void func_80035904(void *o);
void func_8003674C(void *o);

void func_80033D1C(void *a, SVECTOR *v);
void func_80033D4C(View17 *v, Rider17 *r);
void func_80034190(short *a, short *b, short *c);
void func_8003491C(View17 *v, Rider17 *r);
void func_800349C0(View17 *v, Target17 *t);
void func_80034A08(void *a, SVECTOR *v);
int func_80034A38(Map17 *m, short *pos);
void func_80034AC0(Maps17 *m, int i);
int func_80034C0C(Maps17 *m, short *pos);
void func_80034C4C(Rle17 *r, int row, u8 *out);
void func_80034D14(void *o, int a);
void func_800354D0(View17 *v, Eight17 *out);
void func_80034AC8(Maps17 *m, int v);
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_17", func_80033720);

void func_80033D1C(void *a, SVECTOR *v) {
    func_80097E4C(a, v->vx, v->vy, v->vz);
}

static inline void func_80033D4C_one(MATRIX *m) {
    m->m[0][0] = 0x1000;
    m->t[0] = 0;
    m->m[0][2] = 0;
    m->m[0][1] = 0;
    m->m[1][1] = 0x1000;
    m->t[1] = 0;
    m->m[1][2] = 0;
    m->m[1][0] = 0;
    m->m[2][2] = 0x1000;
    m->t[2] = 0;
    m->m[2][1] = 0;
    m->m[2][0] = 0;
}

void func_80033D4C(View17 *v, Rider17 *r) {
    if (v->m_00) {
        v->m_6C = D_800C8D34[v->m_44->m_0A];
        func_8003491C(v, r);
        func_80033D4C_one(&v->m_134[0]);
        func_80033D4C_one(&v->m_134[1]);
        func_80033D4C_one(&v->m_134[2]);
    }
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_17", func_80033E4C);

void func_80034190(short *a, short *b, short *c) {
    int t;

    a[0] >>= 1;
    a[2] >>= 1;
    if (a[2] > 400) {
        a[2] = 400;
    }
    if (a[2] < -400) {
        a[2] = -400;
    }
    b[0] = a[0];
    b[1] = a[1];
    b[2] = a[2] = -a[2];
    a[2] = a[2] * 7 / 8;
    t = *c;
    t = (t * 2 + a[0]) / 3;
    *c = a[0] = t;
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_17", func_8003425C);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_17", func_8003442C);

/* What the view looks at, from its bike's state. */
void func_8003491C(View17 *v, Rider17 *r) {
    if (v->m_00) {
        Bike17 *b = r->m_30;
        int one;

        v->m_3C = func_80063450(b);
        one = 0x1000;
        v->m_128 = one;
        v->m_12C = 0;
        v->m_130 = r->m_30->m_12C;
        if (b->m_14A) {
            v->m_124 = &v->m_78[2];
        } else {
            int z = !b->m_149;

            v->m_124 = z ? &v->m_78[0] : &v->m_78[1];
            v->m_128 = one;
        }
    }
}

void func_800349C0(View17 *v, Target17 *t) {
    if (v->m_128 == 0x1000) {
        if (v->m_124 != t) {
            v->m_120 = v->m_124;
            v->m_124 = t;
            v->m_128 = 0;
        }
        if (v->m_12C) {
            v->m_12C--;
        }
    }
}

void func_80034A08(void *a, SVECTOR *v) {
    func_80097E4C(a, v->vx, v->vy, v->vz);
}

/* A map's cell at a position; its row is unpacked into the scratchpad
 * (its number at 0x1F800000, the cells from 0x1F800004). */
int func_80034A38(Map17 *m, short *pos) {
    int sh = 4;
    u8 *cells;
    int x;
    int y;

    if (m->m_08 == 8) {
        sh = 3;
    }
    cells = (u8 *)0x1F800004;
    x = pos[0] >> sh;
    y = pos[1] >> sh;
    if (cells[-4] != y) {
        func_80034C4C(&m->m_10, y, (u8 *)0x1F800004);
        *(u8 *)0x1F800000 = y;
    }
    return cells[x];
}

void func_80034AC0(Maps17 *m, int i) {
    m->m_14 = i;
}

/* The current list moved to the map whose range holds a position. */
void func_80034AC8(Maps17 *m, int v) {
    m->m_0C[m->m_14] = v;
    if (m->m_00 && m->m_04[m->m_14]) {
        while (m->m_04[m->m_14]->m_0E < v) {
            Map17 *n = m->m_04[m->m_14]->m_04;

            if (!n) {
                m->m_04[m->m_14]->m_0E = v;
                break;
            }
            m->m_04[m->m_14] = n;
        }
        while (v < m->m_04[m->m_14]->m_0C) {
            Map17 *n = m->m_04[m->m_14]->m_00;

            if (!n) {
                m->m_04[m->m_14]->m_0C = v;
                return;
            }
            m->m_04[m->m_14] = n;
        }
    }
}

int func_80034C0C(Maps17 *m, short *pos) {
    Map17 *c = m->m_04[m->m_14];

    if (c) {
        return func_80034A38(c, pos);
    }
    return 1;
}

/* A row unpacked: runs of 0 or 0xFF, or all 0. */
void func_80034C4C(Rle17 *r, int row, u8 *out) {
    int k = r->m_04[row];

    if (k < 0) {
        unsigned int w = r->m_00 >> 4;
        unsigned int n = r->m_00 & 0xF;

        while (w) {
            w--;
            ((int *)out)[0] = 0;
            ((int *)out)[1] = 0;
            ((int *)out)[2] = 0;
            ((int *)out)[3] = 0;
            out += 16;
        }
        while (n) {
            *out++ = 0;
            n--;
        }
    } else {
        u8 *p = r->m_08 + k;

        k = *p++;

        do {
            int c = *p++;
            int len = c & 0x7F;
            int v = (c << 24) >> 31;

            do {
                *out++ = v;
            } while (--len);
        } while (--k);
    }
}

void func_80034D14(void *o, int a) {
    func_80036964(o);
    func_80035518(o, a);
    func_80035904(o);
    func_8003674C(o);
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_17", func_80034D60);

void func_800354D0(View17 *v, Eight17 *out) {
    *out = *(Eight17 *)v->m_60;
}
