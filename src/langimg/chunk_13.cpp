#include "common.h"
#include "langimg/race.h"
#include "langimg/motor.h"
#include "langimg/bike.h"
#include "mulshift.h"

/* The game's code built with GCC 2.91.66: more of the bike
 * (docs/matching/issue-14-langimg-chunk13.md). */

extern "C" {
// The ground's lookups (chunk_04)
struct Ground13 {
    void *m_00;
};
int func_8001B350(Ground13 *g, Vector3 *v);
int func_8001AFF4(void *g, Vector3 *v, Vector3 *n);
void func_8001B15C(void *g, Vector3 *v, Vector3 *out, Vector3 *n);
int func_80099C20(Vector3 *a, Vector3 *b, int shift); // a dot product
int func_8009931C(Vector3 *v);
int func_80097A68(int a, int shift, int b);
void func_80023140(Vector3 *v, int len, int shift);
int func_8006BBC4(AnimChan *c, int dt);
Vector3 *func_800995C4(Vector3 *v, int len);

int func_8002CED4(Bike *b, Vector3 *v, Vector3 n, int k, int f);
int func_8002B800(Bike *b, Ground13 *g, Vector3 *p, Vector3 *n, int y, int f);
int func_8002D1EC(Bike *b, Vector3 *v, Vector3 n);
void func_8002D3C0(Bike *b, int a, int c);
}

static inline void VecCopyL(Vector3 *d, Vector3 *s) {
    int x = s->vx;
    int y = s->vy;
    int z = s->vz;

    d->vx = x;
    d->vy = y;
    d->vz = z;
}

static inline void SetVec13(Vector3 *v, int x, int y, int z) {
    v->vx = x;
    v->vy = y;
    v->vz = z;
}

int func_8002B800(Bike *b, Ground13 *g, Vector3 *p, Vector3 *n, int y, int f) {
    Vector3 m, t;
    int r = 1;

    t = *p;
    if (func_8001B350(g, p) != -1) {
        VecCopyL(p, &t);
        p->vy = y;
        if (y < 0) {
            p->vy = 0;
        }
        SetVec13(&m, 0, 0x4000000, 0);
        r = 0;
    } else if (f) {
        p->vy = func_8001AFF4(g->m_00, p, &m);
    } else {
        func_8001B15C(g->m_00, p, p, &m);
    }
    VecCopyL(n, &m);
    return r;
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_13", func_8002B91C);

#ifdef NON_MATCHING
// Registers only: the new length and the flag for the vector's limit in swapped registers ($a0/$v1), 6 off. The declaration order, an inline function and reusing a dead variable didn't change it.
int func_8002CED4(Bike *b, Vector3 *v, Vector3 n, int k, int f) {
    int r;
    int dot = func_80099C20(v, &n, 12);

    r = 0;
    if (dot < 0) {
        int len = func_8009931C(v);
        int h = 0;
        int y, d;
        int lim, kind, div;

        if (n.vy) {
            h = -func_80097A68(MULSHIFT(v->vx, n.vx, 12) + MULSHIFT(v->vz, n.vz, 12), 12, n.vy);
        }
        y = v->vy;
        d = h - y;
        if (D_800C5E14->m_378->m_10->m_state == 6) {
            if (d > 0x10000) {
                d -= 0x10000;
            } else {
                d = 0;
            }
            if (b->m_434 >= 200) {
                if (n.vy >= 0xFC1) {
                    k = 0x200;
                } else {
                    k = 0x1000;
                }
            } else {
                k = 0x200;
            }
        }
        kind = b->m_58;
        if (kind == 1) {
            k = 0x1000;
            lim = 8;
            div = 8;
            if (b->m_motor->m_16C) {
                int g = b->m_motor->m_185[b->m_motor->m_170].m_01[0];

                if (g == 0) {
                    lim = 6;
                } else if (g == 1) {
                    lim = 8;
                    div = 7;
                } else if (g == 2) {
                    lim = 10;
                    div = 6;
                }
            }
            if (d > lim << 17) {
                d -= lim << 17;
            } else {
                d /= div;
            }
        } else if (kind == 3) {
            k = 0x1000;
            if (d > 0x100000) {
                d -= 0x100000;
            } else {
                d /= 16;
            }
        }
        if (d) {
            if (k != 0x1000) {
                d = MULSHIFT(d, k, 12);
            }
            if (d) {
                int big, l;

                r = 1;
                v->vy = y + d;
                l = func_8009931C(v);
                big = l && (f || l > len + 0x2000);
                if (big) {
                    func_80023140(v, len, 24);
                    if (b->m_29C > 0x5000) {
                        int t = d >> 5;

                        t = 0x1000 - t / b->m_motor->m_168;

                        if (t < 0xC00) {
                            t = 0xC00;
                        }
                        {
                            int vy = v->vy;

                            func_800995C4(v, t);
                            v->vy = vy;
                        }
                    }
                }
            }
        }
    }
    return r;
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_13", func_8002CED4);
#endif

int func_8002D1EC(Bike *b, Vector3 *v, Vector3 n) {
    int r = 0;
    int len, d;

    if (func_80099C20(v, &n, 17)) {
        len = func_8009931C(v);
        d = 0;
        if (n.vy) {
            d = -func_80097A68(MULSHIFT(v->vx, n.vx, 12) + MULSHIFT(v->vz, n.vz, 12), 12, n.vy);
        }
        d -= v->vy;
        if (b->m_14F) {
            d /= 16;
        } else if (d > 0) {
            if (d > 0x100000) {
                d -= 0x100000;
            } else if (d > 0x10000) {
                d /= 5;
            } else {
                d >>= 6;
            }
        } else if (d < -0x60000) {
            d = -0x60000;
        } else if (d < -0x10000) {
            d /= 2;
        } else {
            d /= 64;
        }
        if (d) {
            v->vy += d;
            if (func_8009931C(v) > 0x20000) {
                func_80023140(v, len, 25);
            }
            r = 1;
        }
    }
    return r;
}

#ifdef NON_MATCHING
// The channel's value at 0x534: GCC loads it once, before the test of the state, for both the 0xFE0 test and the rate after it; the original loads it after the test and again for the rate, so its compares and the end come out in other places (76 off).
void func_8002D3C0(Bike *b, int a, int c) {
    if (b->m_58) {
        int old, on, s;
        u8 k;

        b->m_534.m_08 = 0x428;
        b->m_534.m_0C = 0x249;
        on = ((u32)b->m_5CC->m_00 >> 9) & 1;
        old = b->m_534.m_00;
        if (on && c && a < 63) {
            on = 0;
        }
        k = b->m_58;
        if ((u32)(k - 1) < 2 && b->m_14A) {
            if (b->m_254.vy < 0xF80 || b->m_260.vy < 0xF80) {
                b->m_415 = 1;
            }
            if ((s8)k == 1 && b->m_29C <= 0xEFFF) {
                b->m_415 = 0;
            }
        }
        if (b->m_415) {
            on = 1;
        }
        if (b->m_5CC->m_10) {
            if (on && (!b->m_550 || (b->m_550 == 2 && b->m_554 > 0 && b->m_554 - b->m_55C < 0))) {
                b->m_550 = 1;
            }
            if (b->m_550 == 1) {
                if (on) {
                    if (b->m_415 && b->m_29C <= 0x7FFF) {
                        b->m_550 = 3;
                        b->m_415 = 0;
                    } else {
                        b->m_534.m_0C = 0x400;
                        b->m_534.m_08 = 0x451;
                        b->m_534.m_04 = 0;
                        func_8006BBC4(&b->m_534, b->m_298);
                    }
                    if (b->m_415 && b->m_534.m_00 < 33) {
                        b->m_534.m_00 = 0;
                        b->m_550 = 2;
                        b->m_415 = 0;
                    }
                } else {
                    b->m_550 = 2;
                }
            }
            if (b->m_550 == 3) {
                b->m_534.m_0C = 0x100;
                b->m_534.m_08 = 0x333;
                b->m_534.m_04 = 0x1000;
                func_8006BBC4(&b->m_534, b->m_298);
            } else if (b->m_550 == 2) {
                b->m_534.m_0C = 0x400;
                b->m_534.m_08 = 0x451;
                b->m_534.m_04 = 0x1000;
                func_8006BBC4(&b->m_534, b->m_298);
            }
        } else {
            b->m_534.m_0C = 0x400;
            b->m_534.m_08 = 0x451;
            b->m_550 = 2;
            b->m_534.m_04 = 0x1000;
            func_8006BBC4(&b->m_534, b->m_298);
        }
        if ((u32)(b->m_550 - 2) < 2 && b->m_534.m_00 > 0xFE0) {
            b->m_534.m_00 = 0x1000;
            b->m_550 = 0;
        }
        s = ((b->m_534.m_00 - old) << 12) / b->m_290;
        b->m_55C = b->m_554;
        b->m_554 = s;
        if (b->m_5CC->m_10) {
            b->m_410 = 0;
            if (!b->m_5D0->m_10) {
                if (s) {
                    b->m_558 = s;
                } else if (b->m_58 == 2) {
                    b->m_410 = 1;
                }
                b->m_415 = 0;
            }
        }
    }
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_13", func_8002D3C0);
#endif
