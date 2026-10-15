#include "common.h"
#include "langimg/race.h"
#include "langimg/motor.h"
#include "langimg/bike.h"
#include "mulshift.h"

/* The game's code built with GCC 2.91.66: more of the bike
 * (docs/matching/issue-15-langimg-chunk14.md). */

extern "C" {
int func_8009923C(Vector3 *v);
void func_80023140(Vector3 *v, int len, int shift);
void func_800990E8(Vector3 *v, int sh);
Vector3 *func_80099D48(Vector3 *v, int shift);
int func_80099C20(Vector3 *a, Vector3 *b, int shift); // a dot product
void func_80023004(Vector3 *v, Vector3 n);
Vector3 *func_800997A4(Vector3 *a, Vector3 *b);
Vector3 *func_80099B60(Vector3 *out, Vector3 *a, Vector3 *b, int shift); // a cross product
Vector3 *func_80022D20(Vector3 *out, Vector3 *in);
void func_80098F94(Vector3 *v, int shift);
void func_80022D44(Vector3 *v, int shift, int a, int b);
int abs(int x);
int sprintf(char *s, const char *f, ...);
int func_800A6850(int x);
void func_8006ABD4(void *c, int id);
// A line of text shown for a while (chunk_44's)
struct Text14 {
    u8 m_00[4];
    int m_04;
    u8 m_08[0x34];
    int m_3C;
    u8 m_40[4];
    int m_44;
    u8 m_48[2];
    short m_4A;
};
Text14 *func_8006AA30(void *c, int a, char *s, int d, int e, int f, int g);
// Its settings
struct Opts14 {
    u8 m_00[0x110];
    int m_110;
};
extern Opts14 *D_800BC884;
extern void *D_800CB478;
extern int D_800D5F40;
extern char D_800D4798; // the sign, then the text
extern char D_800C4D4C[];
extern char D_800C4D54[];

void func_8002D700(Bike *b, int v);
void func_8002E548(Bike *b);
int func_8002E684(Bike *b, Motion *m);
void func_8002E7E4(Bike *b, int v);
void func_8002E7EC(Bike *b);
void func_8002E85C(Bike *b, Vector3 *a, Vector3 *c);
void func_8002E984(Bike *b, int *p, int k);
void func_8002F328(Bike *b);
}

static inline void VecCopyL(Vector3 *d, Vector3 *s) {
    int x = s->vx;
    int y = s->vy;
    int z = s->vz;

    d->vx = x;
    d->vy = y;
    d->vz = z;
}

static inline void VecZero(Vector3 *v) {
    v->vx = 0;
    v->vy = 0;
    v->vz = 0;
}

// Small values (within 1310) cut to 0
static inline int DeadZone14(int x) {
    return x < -1310 ? x : x < 1311 ? 0 : x;
}

void func_8002D700(Bike *b, int v) {
    Game *g = D_800C5E14;
    int k = b->m_43;

    if (!g->m_304 && D_800D5F40 != 2 && D_800D5F40 && g && k != -1) {
        char sign = '+';
        int col = 0xFF00;
        int n;

        if (v < 0) {
            v = -v;
            col = 0xFF;
            sign = '-';
        }
        D_800D4798 = sign;
        n = func_800A6850(v);
        if (D_800BC884->m_110) {
            if (n < 6) {
                return;
            }
            sprintf(&D_800D4798 + 1, D_800C4D4C, n);
        } else if (n >= 4) {
            sprintf(&D_800D4798 + 1, D_800C4D54, n);
        }
        if (n >= 6) {
            Text14 *t;

            func_8006ABD4(D_800CB478, k + 1);
            t = func_8006AA30(D_800CB478, D_800C5E14->m_C4[k], &D_800D4798, 0x800000, 0x38, col,
                              k + 1);
            if (t) {
                t->m_4A = 18;
                t->m_3C = 16;
                t->m_04 = 2000;
                t->m_44 = 2;
            }
        }
    }
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_14", func_8002D870);

void func_8002E548(Bike *b) {
    Vector3 *v;

    b->m_2A0.vx = DeadZone14(b->m_2A0.vx);
    b->m_2A0.vy = DeadZone14(b->m_2A0.vy);
    b->m_2A0.vz = DeadZone14(b->m_2A0.vz);
    v = &b->m_2A0;
    b->m_29C = func_8009923C(v) >> 5;
    if ((b->m_5C8->m_10 || b->m_5CC->m_10) && b->m_118 < b->m_29C) {
        b->m_29C = b->m_118;
        func_80023140(v, abs(b->m_118 << 5), 24);
    }
    if (b->m_29C) {
        b->m_324 = 0;
    } else {
        func_8002E7E4(b, 0);
        b->m_324 = 1;
        VecZero(&b->m_2A0);
    }
}

int func_8002E684(Bike *b, Motion *m) {
    Vector3 h, n;
    int d;

    if (!m) {
        if (b->m_324) {
            return b->m_328;
        }
        m = b->m_5CC;
    }
    if (!b->m_29C) {
        b->m_324 = 1;
        return 0;
    }
    h = b->m_33C;
    func_80099D48(&h, 14);
    if (m->m_10) {
        if (m->m_18) {
            VecCopyL(&n, &b->m_260);
        } else if (m->m_14) {
            VecCopyL(&n, &b->m_254);
        }
        func_80023004(&h, n);
        func_800990E8(&h, 12);
    }
    b->m_328 = d = func_80099C20(&b->m_2A0, &h, 12) >> 5;
    b->m_324 = 1;
    if (b->m_29C < abs(d)) {
        if (d < 0) {
            b->m_328 = -b->m_29C;
        } else {
            b->m_328 = b->m_29C;
        }
    }
    return b->m_328;
}

void func_8002E7E4(Bike *b, int v) {
    b->m_328 = v;
}

void func_8002E7EC(Bike *b) {
    VecCopyL(&b->m_354, &b->m_330);
    if ((u32)((u8)b->m_58 - 1) < 2 && b->m_CC) {
        func_80022D44(&b->m_354, 26, b->m_CC, 12);
    }
}

void func_8002E85C(Bike *b, Vector3 *a, Vector3 *c) {
    if ((u32)((u8)b->m_58 - 1) < 2) {
        Vector3 h, u, w;
        Vector3 *pw = &w;
        Vector3 *pu = &u;

        h = b->m_330;
        VecCopyL(a, &h);
        func_80022D20(pw, a);
        func_800997A4(pu, pw);
        func_800990E8(pu, 26);
        func_80099B60(pw, pu, a, 26);
        VecCopyL(c, &w);
        func_800990E8(c, 26);
    } else {
        VecCopyL(a, &b->m_33C);
        VecCopyL(c, &b->m_348);
    }
}

#ifdef NON_MATCHING
// Registers only: the original keeps the dot product in $v1 and the first branch's result in the same register; GCC puts the dot product in $a2 (20 off).
void func_8002E984(Bike *b, int *p, int k) {
    Vector3 a, d;
    int dot, v, t;

    a.vy = 0;
    a.vx = b->m_330.vz;
    a.vz = -b->m_330.vx;
    func_80099898(&d, &b->m_254, &b->m_260);
    func_80098F94(&d, 12);
    dot = func_80099C20(&a, &d, 26);
    v = *p;
    if (v > 0) {
        if (dot >= 0) {
            t = v - MULSHIFT(abs(k), 0x1000 - dot / 2, 12);
            *p = t;
            if (t < 0) {
                *p = 0;
            }
        } else {
            t = v - abs(k);
            *p = t;
            if (t < 0) {
                *p = 0;
            }
            if (*p) {
                *p -= MULSHIFT(*p, dot * dot / 4096, 12);
            }
        }
    } else if (v < 0) {
        if (dot <= 0) {
            t = v + MULSHIFT(abs(k), dot / 2 + 0x1000, 12);
            *p = t;
            if (t > 0) {
                *p = 0;
            }
        } else {
            t = v + abs(k);
            *p = t;
            if (t > 0) {
                *p = 0;
            }
            if (*p) {
                *p -= MULSHIFT(*p, dot * dot / 4096, 12);
            }
        }
    }
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_14", func_8002E984);
#endif

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_14", func_8002EBC0);

void func_8002F328(Bike *b) {
    if (b->m_5CC->m_10) {
        int f = b->m_F4;
        int o = f;
        int p;
        short h;

        if (!b->m_58 && !b->m_5CC->m_14 && f < 0) {
            f /= 2;
        }
        if (f > 0x64000) {
            f = 0x64000;
        }
        if (f < -0x64000) {
            f = -0x64000;
        }
        if (!b->m_14F && b->m_29C > 0x1000 && b->m_2DF && o < b->m_motor->m_48 &&
            D_800C5E14->m_378->m_10->m_state != 7) {
            f += b->m_motor->m_48;
        }
        h = b->m_motor->m_14A / 2;
        p = f * b->m_motor->m_148;
        if (!b->m_58) {
            if (b->m_14F) {
                h /= 2;
            }
        } else if (b->m_3F7) {
            p /= 3;
        }
        b->m_30C.vx -= MULSHIFT(p, h, 24);
    }
}
