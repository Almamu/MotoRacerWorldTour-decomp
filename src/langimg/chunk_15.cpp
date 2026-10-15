#include "common.h"
#include "langimg/race.h"
#include "langimg/motor.h"
#include "langimg/bike.h"
#include "mulshift.h"

/* The game's code built with GCC 2.91.66: more of the bike
 * (docs/matching/issue-16-langimg-chunk15.md). */

extern "C" {
int func_80099454(Vector3 *v, int sh);
int func_8009931C(Vector3 *v);
void func_80023140(Vector3 *v, int len, int shift);
void func_800990E8(Vector3 *v, int sh);
Vector3 *func_80099D74(Vector3 *v, int shift);
Vector3 *func_80099D48(Vector3 *v, int shift);
Vector3 *func_80099718(Vector3 *d, Vector3 *s, int k);
Vector3 *func_8009975C(Vector3 *d, Vector3 *s, int k);
void func_8002E548(Bike *b);
int func_8006BBC4(AnimChan *c, int dt);
int func_80063A04(Bike *b);
int func_80063A30(Bike *b);
extern int D_800D5F38;
int abs(int x);
void func_80026164(Bike *b, int a, int c);

void func_8002FF34(void);
void func_80030458(Bike *b);
void func_80031078(Bike *b, int x, int f);
int func_80030D70(Bike *b);
void func_80031138(Bike *b, int x, int f);
void func_8002FBA4(Bike *b);
void func_8002FF3C(Bike *b);
void func_8003031C(Bike *b);
void func_80030AB0(Bike *b, Vector3 *p, int f);
void func_80030C98(Bike *b, short v);
int func_80030CF0(Bike *b);
void func_80030CFC(Bike *b);
}

// The rider's model: its parts' angles and the body's offset
struct Model15 {
    u8 m_00[0x94];
    SVECTOR m_94;
    u8 m_9C[0x9F8];
    SVECTOR m_A94;
    u8 m_A9C[0x8C];
    Vector3 m_B28;
    u8 m_B34[0x60];
    SVECTOR m_B94;
    u8 m_B9C[0x78];
    SVECTOR m_C14;
};
struct Rider15 {
    u8 m_00[0x330];
    Model15 *m_330;
};

extern "C" {
void func_80030644(Bike *b, Rider15 *r, int draw);
int func_8002E684(Bike *b, Motion *m);
}

// Radians in 4.12 to the game's angle units
#define ANG15(x) (((x) << 12) / 0x6488)

static inline void SetVec15(Vector3 *v, int x, int y, int z) {
    v->vx = x;
    v->vy = y;
    v->vz = z;
}

static inline void SetSV15(SVECTOR *v, int x, int y, int z) {
    v->vx = x;
    v->vy = y;
    v->vz = z;
}

static inline void VecCopy15(Vector3 *d, Vector3 *s) {
    d->vx = s->vx;
    d->vy = s->vy;
    d->vz = s->vz;
}

// A matrix's translation set, all three loads first
static inline void SetTrans(MATRIX *m, Vector3 *v) {
    int x = v->vx;
    int y = v->vy;
    int z = v->vz;

    m->t[0] = x;
    m->t[1] = y;
    m->t[2] = z;
}

static inline void VecCopyL(Vector3 *d, Vector3 *s) {
    int x = s->vx;
    int y = s->vy;
    int z = s->vz;

    d->vx = x;
    d->vy = y;
    d->vz = z;
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_15", func_8002F4E4);

#ifdef NON_MATCHING
// Registers: the bike in $a1 where the original has $a2 (and the state in $a2 for $a1), and the time at 0x490 reloaded for the division where the original keeps it (172 off).
void func_8002FBA4(Bike *b) {
    if (b->m_motor->m_20 && !b->m_58) {
        b->m_490 += b->m_298;
        b->m_48D = b->m_48C;
        if (b->m_14F) {
            if (b->m_48D) {
                b->m_49C.m_0C = 0x800;
                b->m_49C.m_08 = 0x800;
                b->m_49C.m_04 = 0;
            }
            b->m_48C = 3;
            b->m_490 = 0;
        } else if (b->m_48D == 0 || b->m_48D == 3) {
            int go = 0;

            if (b->m_48D == 3) {
                go = 1;
                b->m_48C = 1;
                b->m_498 = b->m_39C / 3;
            } else if (b->m_48D == 0 && b->m_490 > 400 && b->m_29C > 0x1E000) {
                u8 lean = b->m_2DF;

                if ((b->m_2DF && !b->m_2E1) || (b->m_14A && !b->m_2DD)) {
                    int r = b->m_39C;
                    int a = abs(r);

                    if (a >= 0x734 && (!lean || a < 0x99A) && (!b->m_14A || a < 0xCCD)) {
                        int q = b->m_490 / (b->m_118 / 4096);

                        go = 1;
                        b->m_498 = (r > 0 ? q : -q) / 4;
                        b->m_48C = 1;
                    }
                }
            }
            if (go) {
                b->m_49C.m_0C = 0x800;
                b->m_490 = 0;
                b->m_49C.m_08 = 0xE66;
                b->m_49C.m_04 = 0x1000;
            }
        } else if (b->m_48D == 1) {
            if ((!b->m_2DF && !b->m_14A) || abs(b->m_49C.m_00 - b->m_49C.m_04) < 16) {
                b->m_48C = 2;
                b->m_490 = 0;
                b->m_49C.m_0C = 0xAAA;
                b->m_49C.m_08 = 0xD99;
                b->m_49C.m_04 = 0;
            }
        } else if (b->m_48D == 2) {
            if (abs(b->m_49C.m_00 - b->m_49C.m_04) < 16) {
                int go = 0;

                if (b->m_2DF || b->m_14A) {
                    int h, q, c;

                    go = 1;
                    h = b->m_498 / 2;
                    b->m_498 = h;
                    q = b->m_29C / (b->m_118 / 4096) / 4;
                    if (h < -q) {
                        c = -q;
                    } else if (q < h) {
                        c = q;
                    } else {
                        c = h;
                    }
                    b->m_498 = c;
                    if (abs(c) < 0x80) {
                        go = 0;
                    }
                }
                if (go) {
                    b->m_48C = 1;
                    b->m_49C.m_0C = 0x800;
                    b->m_490 = 0;
                    b->m_49C.m_08 = 0xE66;
                    b->m_49C.m_04 = 0x1000;
                } else {
                    b->m_48C = 0;
                    b->m_490 = 0;
                    b->m_49C.m_04 = 0;
                }
            }
        }
        if ((s8)b->m_48C == b->m_48D) {
            b->m_48E++;
        } else {
            b->m_48E = 0;
        }
    }
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_15", func_8002FBA4);
#endif

void func_8002FF34(void) {
}

#ifdef NON_MATCHING
// The test for the sign change: the original branches on the new value's sign first and tests the old one's last; GCC lays the two clauses out in order (5 off).
void func_8002FF3C(Bike *b) {
    int i, pi;
    Motor *m;
    int k, o, n, v, d, old, lim, cross;

    func_8002FBA4(b);
    i = 0;
    pi = 0x3243F;
    b->m_3FC = (b->m_CC + b->m_3FC) / 2;
    while (b->m_394 > pi && i < 100) {
        b->m_394 -= pi * 2;
        i++;
    }
    while (b->m_394 < -pi && i < 200) {
        b->m_394 += pi * 2;
        i++;
    }
    m = b->m_motor;
    k = m->m_F4 >> 12;
    if (b->m_40F) {
        o = MULSHIFT(k, 0x666, 12);
    }
    o = b->m_400 + b->m_30C.vx * b->m_290 / k;
    b->m_400 = o;
    n = o + b->m_318.vx * b->m_290 / (m->m_F4 >> 12);
    b->m_400 = n;
    if ((o < 0 && n > 0) || (n < 0 && o > 0)) {
        b->m_400 = 0;
    }
    v = b->m_400;
    if (v) {
        n = v < -0x14000 ? -0x14000 : v > 0x14000 ? 0x14000 : v;
        b->m_400 = n;
        v = n;
    }
    d = v * b->m_298 / 1000;
    cross = 0;
    old = b->m_3B0;
    b->m_3B0 = old + d;
    lim = 0xA0D;
    if (b->m_58 == 3) {
        lim = 0x1921;
    } else if (b->m_58 == 2) {
        lim = 0x141B;
    } else if (b->m_58) {
        lim = 0xC90;
    }
    while (b->m_3B0 > lim) {
        b->m_3B0 = lim;
        if (b->m_58) {
            b->m_52C[0] = 1;
        }
        if (b->m_400 > 0) {
            b->m_400 = 0;
        }
    }
    while (b->m_3B0 < -lim) {
        b->m_3B0 = -lim;
        if (b->m_58 == 3) {
            b->m_52C[1] = 1;
        }
    }
    d = b->m_3B0 - old;
    if (d > 0) {
        if (old < b->m_154 && b->m_154 < b->m_3B0) {
            cross = 1;
        }
    } else if (d < 0 && !b->m_2DF) {
        if (b->m_3B0 < b->m_154 && b->m_154 < old) {
            cross = 1;
        }
    }
    if (b->m_5D0->m_14 && b->m_5D0->m_18 && cross) {
        b->m_400 = b->m_400 < -0x1000 ? -0x1000 : b->m_400 > 0x1000 ? 0x1000 : b->m_400;
    }
    if (b->m_58 == 3 && b->m_5D0->m_14 && !b->m_5D0->m_18 && d > 0 && b->m_240.vy > b->m_234.vy) {
        b->m_5D0->m_04.vy += d * 32;
    }
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_15", func_8002FF3C);
#endif

#ifdef NON_MATCHING
// Registers: the bound's sum in $v0 where the original has $v1 (3 off).
void func_8003031C(Bike *b) {
    if (D_800C5E14->m_378->m_10->m_state != 6 && b->m_58 && b->m_5D0->m_10 && b->m_29C > 0x1000) {
        Vector3 d, e, f;
        int a;

        func_800998D0(&d, &b->m_5D0->m_04, &b->m_5CC->m_04);
        a = func_80099454(&d, 0x11);
        if ((func_80099454(&b->m_36C, 0x14) >> 3) + 0x80 < a) {
            int l = func_8009931C(&b->m_36C);

            e = d;
            func_80023140(&e, l >> 3, 0x11);
            func_80099898(&f, &b->m_5CC->m_04, &e);
            VecCopyL(&b->m_5D0->m_04, &f);
        }
    }
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_15", func_8003031C);
#endif

void func_80030458(Bike *b) {
    int k = b->m_58;

    if (k == 0) {
        int r = func_80063A30(b);
        int g = 0x1000;

        switch (r) {
        case 1:
            b->m_14F = 1;
            g = 0x4CC;
            break;
        case 3:
            if (D_800D5F38 != 8) {
                b->m_14F = 3;
                g = 0x333;
                break;
            }
        case 0:
        case 4:
            b->m_14F = 0;
            g = 0x1000;
            break;
        case 2:
        case 5:
            b->m_14F = 2;
            g = 0x333;
            break;
        default:
            b->m_14F = 0;
            break;
        }
        b->m_2C4 = MULSHIFT(b->m_motor->m_150 * g / 4096, b->m_motor->m_148 * 10, 12);
    } else if (k == 3) {
        int r1 = func_80063A04(b);
        int r2 = func_80063A30(b);

        b->m_14F = 0;
        b->m_529 = 0;
        if ((r1 == 6 || r2 == 6) && b->m_pos.vy < 0x1000) {
            b->m_529 = 1;
            b->m_530 += b->m_298;
        }
        if (!b->m_529) {
            b->m_530 = 0;
            if (!b->m_52A) {
                b->m_52A = 1;
            }
        }
    } else {
        int r = func_80063A04(b);

        b->m_528 = 1;
        b->m_40F = 0;
        b->m_14F = 0;
        switch (r) {
        case 3:
            break;
        case 4:
            b->m_40F = 1;
            break;
        case 5:
            b->m_14F = 2;
            break;
        }
    }
}

#ifdef NON_MATCHING
// Far off (231 of 283, mostly shifted): the clamps keep the bounds and results in other registers, the original copies the motor pointer between two of them, and the vector copy into 0xB28 reloads its x from the stack. The rider's model (0x330) gets the body's offset at 0xB28 and four parts' angles (0x94, 0xA94, 0xB94, 0xC14).
void func_80030644(Bike *b, Rider15 *r, int draw) {
    Motion *m = b->m_5D0;
    Motor *mo;
    int f = m->m_1C;
    int a, e, g;

    if (b->m_58 == 2) {
        int lim = b->m_motor->m_AC - 0x7AE1;

        if (lim < f) {
            f = lim;
        }
        if (f < 0xA3D) {
            f = 0xA3D;
        }
    }
    mo = b->m_motor;
    f -= mo->m_B4;
    a = f < -mo->m_B4 ? -mo->m_B4 : mo->m_B4 < f ? mo->m_B4 : f;
    e = (a - mo->m_D8) >> 9;
    if (draw) {
        Vector3 v;

        SetVec15(&v, 0, 0, e);
        {
            Vector3 *d = &r->m_330->m_B28;

            d->vx = v.vx;
            d->vy = 0;
            d->vz = e;
        }
        m = b->m_5D0;
        mo = b->m_motor;
    }
    g = m->m_20 - mo->m_B8;
    g = g < -mo->m_B8 ? -mo->m_B8 : mo->m_B8 < g ? mo->m_B8 : g;
    if ((u8)b->m_58) {
        int h = mo->m_B8 / 2;

        if (h < g) {
            g = h;
        }
    }
    a = ANG15((mo->m_D4 - g) * mo->m_DC / 4096 >> 5);
    if (draw) {
        SVECTOR s;

        SetSV15(&s, a, 0, 0);
        r->m_330->m_A94 = s;
        mo = b->m_motor;
    }
    a = -b->m_3FC;
    a = a < -mo->m_100 ? -mo->m_100 : mo->m_100 < a ? mo->m_100 : a;
    a = ANG15(a);
    if (draw) {
        SVECTOR s;

        SetSV15(&s, 0, 0, a);
        r->m_330->m_94 = s;
    }
    if (b->m_5D0->m_18) {
        b->m_E0 = (b->m_E4 << 8) / (b->m_motor->m_68 >> 4);
    } else if (b->m_5CC->m_00 & 2) {
        b->m_E0 = 0;
    }
    b->m_DC += b->m_E0 * b->m_290 / 4096;
    if (draw) {
        SVECTOR s;

        SetSV15(&s, ANG15(b->m_DC), 0, 0);
        r->m_330->m_B94 = s;
    }
    if (b->m_5D0->m_14) {
        b->m_D8 = (func_8002E684(b, 0) << 8) / (b->m_motor->m_64 >> 4);
    } else if (b->m_D8 > 0) {
        b->m_D8 -= b->m_290;
        if (b->m_D8 < 0) {
            b->m_D8 = 0;
        }
    } else if (b->m_D8 < 0) {
        b->m_D8 += b->m_290;
        if (b->m_D8 > 0) {
            b->m_D8 = 0;
        }
    }
    b->m_D4 += b->m_D8 * b->m_290 / 4096;
    if (draw) {
        SVECTOR s;

        SetSV15(&s, ANG15(b->m_D4), 0, 0);
        r->m_330->m_C14 = s;
    }
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_15", func_80030644);
#endif

// The bike's speed (0x29C)
static inline int Speed15(Bike *b) {
    return b->m_29C;
}

void func_80030AB0(Bike *b, Vector3 *p, int f) {
    int old = Speed15(b);
    Vector3 u, v;
    int d;

    VecCopyL(&b->m_2A0, p);
    func_80099D74(&b->m_2A0, 5);
    func_8002E548(b);
    func_80099718(&v, p, b->m_290);
    func_8009975C(&u, &v, 0x1000);
    func_80099D74(&u, 5);
    func_80099898(&v, &b->m_5C8->m_04, &u);
    VecCopyL(&b->m_5CC->m_04, &v);
    VecCopyL(&b->m_pos, &b->m_5CC->m_04);
    func_80099D48(&b->m_pos, 5);
    SetTrans(b->m_34, &b->m_pos);
    func_80026164(b, 0, 1);
    old -= Speed15(b);
    b->m_5B = 1;
    d = abs(old) / 8 * 255 / 4096;
    if (d > 255) {
        d = 255;
    }
    b->m_5D = d;
    if (f) {
        int k = D_800C5E14->m_378->m_10->m_state;

        if (k == 3 || k == 7 || k == 8) {
            b->m_54->m_187 = -3;
        } else {
            b->m_54->m_187 = -2;
        }
    }
}

void func_80030C98(Bike *b, short v) {
    b->m_298 = v;
    b->m_290 = (b->m_298 << 12) / 1000;
    b->m_294 = (b->m_298 << 13) / 1000;
}

int func_80030CF0(Bike *b) {
    return b->m_14F != 0;
}

void func_80030CFC(Bike *b) {
    VecCopyL(&b->m_45C, &b->m_330);
    b->m_45C.vy = 0;
    func_800990E8(&b->m_45C, 0x1A);
    b->m_468 = 0;
    b->m_46C = 0;
    b->m_470 = 0x1000;
    b->m_474 = 0;
    b->m_478 = 0;
    b->m_47C = 0;
    b->m_480 = 0;
    b->m_484 = 0;
    b->m_488 = 0x1000;
}

int func_80030D70(Bike *b) {
    int r;

    func_8006BBC4(&b->m_4E0, b->m_298);
    b->m_4FC -= b->m_298;
    if (b->m_4FC <= 0) {
        if (b->m_4E0.m_04 > 0) {
            b->m_4E0.m_04 = -0x1000;
        } else {
            b->m_4E0.m_04 = 0x1000;
        }
        b->m_4E0.m_0C = 0x555;
        b->m_4E0.m_08 = 0xB33;
        b->m_4FC = (b->m_pos.vx + b->m_pos.vz) % 1000;
    }
    r = 0;
    if (b->m_58 == 0) {
        if ((b->m_14F & 2) || (b->m_14F & 1)) {
            int k = (b->m_29C * 2) / (b->m_118 / 4096);

            if (k > 0x1000) {
                k = 0x1000;
            }
            r = b->m_4E0.m_00 * k / 8192;
        } else if (b->m_14A) {
            r = b->m_4E0.m_00 * b->m_29C / b->m_118 / 16;
        }
    } else if (b->m_40F) {
        r = b->m_4E0.m_00 / 3;
    } else if (b->m_434 < 600) {
        if (b->m_510) {
            int t = b->m_510;

            if (b->m_29C < 0x5000) {
                t = t * b->m_29C / 0x5000;
            }
            r = b->m_4E0.m_00 * t / 8192;
        }
    } else if ((u32)b->m_EC < 1200) {
        r = b->m_4E0.m_00 / 8;
    } else if (b->m_58 == 1 && !b->m_14A && b->m_29C > 0x3000) {
        int k = ((b->m_29C - 0x3000) * 2) / (b->m_118 / 4096);

        if (k > 0x1000) {
            k = 0x1000;
        }
        r = b->m_4E0.m_00 * k / 32768;
    }
    if (r) {
        r = MULSHIFT(r, b->m_motor->m_120, 12);
    }
    return r;
}

void func_80031078(Bike *b, int x, int f) {
    int v = (x << 12) / 127;

    if (f) {
        b->m_378.m_04 = v;
        b->m_378.m_00 = v;
    } else {
        b->m_378.m_08 = 0x800;
        b->m_378.m_0C = 0xA3D;
        if (!v) {
            b->m_378.m_08 = 0xC00;
            b->m_378.m_0C = 0x614;
        }
        b->m_378.m_04 = v;
        func_8006BBC4(&b->m_378, b->m_298);
    }
    b->m_46C = MULSHIFT(b->m_378.m_00, b->m_motor->m_120, 12);
}

void func_80031138(Bike *b, int x, int f) {
    Motor *m = b->m_motor;
    int fl = b->m_5CC->m_00;
    int a = m->m_11C / 256;
    int c = m->m_114 / 256;
    int d = m->m_118 / 256;
    int v, k;

    if (f) {
        b->m_468 = 0;
        b->m_46C = MULSHIFT((x << 12) / 127, m->m_120, 12);
        return;
    }
    if (fl & 8) {
        if (b->m_58 != 1 || (m->m_20 & 0x10)) {
            if (b->m_46C < 0) {
                b->m_46C = -b->m_46C;
            }
        }
        k = d;
        v = b->m_468 + c * b->m_298 / 10;
        if (v < k) {
            k = v;
        }
        b->m_468 = k;
        v = b->m_46C + k * b->m_298 / 10;
        k = b->m_motor->m_120;
        if (v < k) {
            k = v;
        }
        b->m_46C = k;
    } else if (fl & 4) {
        if (b->m_58 != 1 || (m->m_20 & 0x10)) {
            if (b->m_46C > 0) {
                b->m_46C = -b->m_46C;
            }
        }
        k = d;
        v = b->m_468 + c * b->m_298 / 10;
        if (v < k) {
            k = v;
        }
        b->m_468 = k;
        v = b->m_46C - k * b->m_298 / 10;
        k = -b->m_motor->m_120;
        if (k < v) {
            k = v;
        }
        b->m_46C = k;
    } else {
        int g, q;

        if (b->m_58 == 1 && b->m_4D9) {
            b->m_46C = 0;
            return;
        }
        q = b->m_F4 / 6;
        g = MULSHIFT(q, a, 12);
        if (g < a) {
            g = a;
        }
        if (b->m_454) {
            int s = b->m_29C / (b->m_118 / 4096);

            if (s < 0x333) {
                g = g * (0x1000 - s) / 4096;
            } else {
                g = 0;
            }
        }
        b->m_468 = 0;
        if (b->m_46C > 0) {
            b->m_46C -= g * b->m_298 / 10;
            if (b->m_46C < 0) {
                b->m_46C = 0;
            }
        } else if (b->m_46C < 0) {
            b->m_46C += g * b->m_298 / 10;
            if (b->m_46C > 0) {
                b->m_46C = 0;
            }
        }
    }
}
