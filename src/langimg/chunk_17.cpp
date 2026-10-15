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

struct Vec17 {
    long vx, vy, vz;
};

// What the view follows (chunk_41's object)
struct Bike17 {
    u8 m_00[0x64];
    Vec17 m_64;   // its position
    SVECTOR m_70; // its angles
    u8 m_78[0xB4];
    s8 m_12C;
    u8 m_12D[3];
    short m_130;
    u8 m_132[0x16];
    s8 m_148;
    s8 m_149;
    s8 m_14A;
    u8 m_14B[0xF];
    short m_15A;
    u8 m_15C[0x188];
    int m_2E4;
    int m_2E8;
};

// A camera: its matrix and its position (chunk_30's Cam30)
struct Cam17 {
    MATRIX m_00;
    u8 m_20[0xD8];
    Vec17 m_F8;
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
    int m_04, m_08;
    int m_0C;
    short m_10;
    u8 m_12[6];
    Vec17 m_18;
    Vec17 m_24;
    u8 m_30[0xC];
    short m_3C;
    u8 m_3E[2];
    int m_40; // an animation's (chunk_62's Anim62) first word
    Kind17 *m_44;
    u8 m_48[0x18];
    int m_60[3];
    Pair17 m_6C;
    int m_74;
    Target17 m_78[5]; // what it can look at
    Target17 m_104;   // between the two below
    Target17 *m_120;  // what it looked at
    Target17 *m_124;  // what it looks at
    int m_128;        // 0x1000 once there
    int m_12C;
    int m_130;
    MATRIX m_134[3];
    SVECTOR m_194;
    struct Num17 *m_19C; // three digits
    void *m_1A0;
    void *m_1A4;
    void *m_1A8;
};
// A digit's display (16 bytes)
struct Num17 {
    u8 m_00[0x10];
};
struct Hud17 {
    u8 m_00[0x90];
    char m_90[8];
};
struct Racer17 {
    u8 m_00[0x30];
    Bike17 *m_30;
    u8 m_34[0x534];
};
struct Run17 {
    u8 m_00[0x2E8];
    Racer17 m_2E8[5];
};
struct Game17 {
    u8 m_00[0x378];
    Run17 *m_378;
    u8 m_37C[0xF4];
    s8 m_470[2];
};
struct Quat17 {
    short x, y, z, w;
};
extern Hud17 *D_800C89F4;
extern Game17 *D_800C5E14;
extern int D_800C4D78;
extern int D_800D49A8;
extern int D_800D6100;
void func_8006139C(void *a, int f);
int func_8006CA84(int id, int a);
Quat17 *func_80098968(Quat17 *d, Vec17 *v, int a);
void func_80098BD8(Quat17 *q, MATRIX *m);
void func_80091FB4(Target17 *d, unsigned int f, void *a, void *b);
void func_8008E0C4(void *o, void *a);
void func_80033E4C(View17 *v, Rider17 *r);

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
void func_8003425C(View17 *v, Rider17 *r, Cam17 *c);
void func_80097F68(MATRIX *m, SVECTOR *r);
MATRIX *func_80098178(MATRIX *d, MATRIX *s);
MATRIX *func_80098674(MATRIX *a, MATRIX *b, MATRIX *out); // a product
void func_8009887C(long *in, long *out);
void func_80098768(MATRIX *m, Vec17 *v, Vec17 *out);
Vec17 *func_800997D0(Vec17 *v, Vec17 *a);
}

static inline void VecCopyL17(Vec17 *d, Vec17 *s) {
    int x = s->vx;
    int y = s->vy;
    int z = s->vz;

    d->vx = x;
    d->vy = y;
    d->vz = z;
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

// The run's racer k, or 0
static inline Racer17 *Racer17At(Run17 *r, int k) {
    Racer17 *b = 0;

    if (k >= 0) {
        b = &r->m_2E8[k];
    }
    return b;
}

#ifdef NON_MATCHING
// The digits' loop: the original computes strlen - 1 in two steps and adds the 1 back after the loop (a giv's final value), and tests the blink with sltiu where GCC uses xori; the rest is shifted by those (183 off, 205 of 209 instructions built).
void func_80033E4C(View17 *v, Rider17 *r) {
    int i = 0;

    if (v->m_00) {
        s8 *str = (s8 *)D_800C89F4->m_90;
        Bike17 *b = r->m_30;
        int k;
        Racer17 *me;
        Bike17 *m;
        int kind, c, beep;

        k = strlen((char *)str);
        k--;
        for (; i < 3; i++, k--) {
            func_8006139C(&v->m_19C[i], k >= 0 ? str[k] - '0' : 0);
        }
        func_8006139C(v->m_1A8, D_800D49A8 == 0);
        me = Racer17At(D_800C5E14->m_378, D_800C5E14->m_470[0]);
        m = me->m_30;
        func_8006139C(v->m_1A0, m->m_2E4 * 10 / 4097);
        c = (D_800C4D78 + 1) & 7;
        D_800C4D78 = c;
        k = 0;
        if (m->m_2E8) {
            k = (c < 3) == 0;
        }
        beep = 0;
        if (m->m_2E8) {
            beep = c == 0;
        }
        if (beep) {
            func_8006CA84(0x44, 0x7F);
        }
        func_8006139C(v->m_1A4, k);
        {
            Quat17 q, q2;

            v->m_3C = (v->m_3C + func_80063450(b)) >> 1;
            func_80098968(&q, &v->m_18, v->m_3C);
            func_80098BD8(&q, &v->m_134[0]);
            func_80098968(&q2, &v->m_24, (b->m_130 * v->m_10) << 4 >> 16);
            func_80098BD8(&q2, &v->m_134[1]);
        }
        kind = me->m_30->m_12C;
        if (b->m_14A) {
            func_800349C0(v, &v->m_78[2]);
            v->m_12C = 0;
        } else if (!v->m_12C) {
            if (kind != v->m_130) {
                v->m_130 = kind;
                if (kind) {
                    v->m_12C = 3;
                }
            } else {
                func_800349C0(v, b->m_149 ? &v->m_78[1] : &v->m_78[0]);
            }
        }
        v->m_128 += 40000 / D_800D6100;
        if (v->m_128 > 0x1000) {
            v->m_128 = 0x1000;
        }
        switch (v->m_12C) {
        case 1:
        case 3:
            func_800349C0(v, &v->m_78[3]);
            break;
        case 2:
            func_800349C0(v, &v->m_78[4]);
            break;
        }
        if (v->m_128 == 0x1000) {
            func_8008E0C4(&v->m_40, v->m_124);
        } else {
            func_80091FB4(&v->m_104, v->m_128, v->m_120, v->m_124);
            func_8008E0C4(&v->m_40, &v->m_104);
        }
    }
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_17", func_80033E4C);
#endif

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

// A matrix turned about x by ang, times the transpose of r1, into out
static inline void func_8003425C_turn(int ang, MATRIX *r1, MATRIX *m2, MATRIX *out) {
    SVECTOR s;
    MATRIX m3;

    s.vy = 0;
    s.vz = 0;
    s.vx = ang;
    func_80034A08(m2, &s);
    m2->t[0] = m2->t[1] = m2->t[2] = 0;
    func_80098178(&m3, r1);
    func_80098674(m2, &m3, out);
    func_8009887C(m3.t, out->t);
}

// The camera's offset turned by a matrix, moved by t and added to its position
static inline void func_8003425C_offset(View17 *v, MATRIX *out, Vec17 *t, Vec17 *pos) {
    Vec17 res, w;

    w.vx = 0;
    w.vy = v->m_04;
    w.vz = v->m_08;
    func_80098768(out, &w, &res);
    func_800997D0(&res, t);
    func_800997D0(pos, &res);
}

// A matrix's translation as a vector
static inline Vec17 *MatTrans17(MATRIX *m) {
    return (Vec17 *)m->t;
}

void func_8003425C(View17 *v, Rider17 *r, Cam17 *c) {
    if (v->m_00) {
        Bike17 *b = r->m_30;
        SVECTOR a;
        MATRIX r1, out;

        a = b->m_70;
        func_80034190(&a.vx, &v->m_194.vx, &b->m_15A);
        func_80097F68(&r1, &a);
        {
            MATRIX m2;

            func_8003425C_turn(v->m_0C, &r1, &m2, &out);
            func_800997D0(MatTrans17(&out), MatTrans17(&m2));
        }
        c->m_00 = out;
        c->m_00.t[0] = c->m_00.t[1] = c->m_00.t[2] = 0;
        VecCopyL17(&c->m_F8, &b->m_64);
        func_80097F68(&out, &v->m_194);
        out.t[0] = out.t[1] = out.t[2] = 0;
        func_8003425C_offset(v, &out, MatTrans17(&out), &c->m_F8);
    }
}

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
