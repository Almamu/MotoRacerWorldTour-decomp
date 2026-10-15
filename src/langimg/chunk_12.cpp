#include "common.h"
#include "langimg/race.h"
#include "langimg/motor.h"
#include "langimg/bike.h"
#include "langimg/cobjet.h"
#include "mulshift.h"

/* The game's code built with GCC 2.91.66: more of the bike
 * (docs/matching/issue-13-langimg-chunk12.md). */

extern "C" {
void func_800297B4(Bike *b, Bike *o, int again);
void func_8002A260(void);
void func_8002A268(Bike *b, Vector3 *v);
void func_8002A3F0(Bike *b);
void func_8002A7A0(Bike *b, int steer, int f);
extern int D_800D5F30;
Vector3 *func_80099D74(Vector3 *v, int shift); // v << shift
Vector3 *func_80099D48(Vector3 *v, int shift); // v >> shift
Vector3 *func_800995C4(Vector3 *v, int len);
void func_800990E8(Vector3 *v, int sh);
void func_80026648(Bike *b, Motion *m);
void func_8002A394(Bike *b);
void func_8002AF3C(Bike *b);
void func_8002ABE8(Bike *b);
Vector3 *func_800994F0(Vector3 *v, int a, int shift); // v * a >> shift
void func_80031078(Bike *b);
void func_80031138(Bike *b);
void func_80031500(Bike *b);
void func_80098F94(Vector3 *v, int shift); // normalized
// func_800998D0 (a - b) as this file's original saw it: returning nothing.
// The definition (chunk_68) returns d; declared so, func_8002A3F0's last
// copy gets its registers swapped.
void func_800998D0_void(Vector3 *d, Vector3 *a, Vector3 *b) __asm__("func_800998D0");
int func_80099C20(Vector3 *a, Vector3 *b, int shift); // a dot product
int func_8009923C(Vector3 *v);
Vector3 *func_80022D20(Vector3 *out, Vector3 *in);
void func_80023140(Vector3 *v, int len, int shift);
}

#define IABS(x) ((x) < 0 ? -(x) : (x))

static inline void VecCopyF(Vector3 *d, Vector3 *s) {
    d->vx = s->vx;
    d->vy = s->vy;
    d->vz = s->vz;
}

static inline void VecCopyL(Vector3 *d, Vector3 *s) {
    int x = s->vx;
    int y = s->vy;
    int z = s->vz;

    d->vx = x;
    d->vy = y;
    d->vz = z;
}

#ifdef NON_MATCHING
/* The original negates the second dot product in $v0; here it's copied first (one instruction more) */
/* Slows the bike when it runs into the back of another: o ahead, within
 * its width; checked the other way round too, once. */
void func_800297B4(Bike *b, Bike *o, int again) {
    Vector3 d, h, p;
    int s, t;

    if (b->m_52B || b->m_54->m_189 || b->m_58 || b->m_29C <= 0x1000) {
        return;
    }
    func_800998D0(&d, &o->m_pos, &b->m_pos);
    h = o->m_11C;
    h.vy = 0;
    func_80098F94(&h, 12);
    s = func_80099C20(&h, &d, 12);
    if (s < 0) {
        if (o->m_59 && again) {
            func_800297B4(o, b, 0);
        }
        return;
    }
    p.vx = h.vz;
    p.vy = 0;
    p.vz = -h.vx;
    t = func_80099C20(&p, &d, 12);
    if (t < 0) {
        t = -t;
    }
    if (t > 0x1000 && s < t) {
        return;
    }
    b->m_43E += b->m_298 * 3;
    if (b->m_43E > 0x1000) {
        b->m_43E = 0x1000;
    }
    b->m_52B = 1;
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_12", func_800297B4);
#endif

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_12", func_8002993C);

void func_8002A260(void) {
}

#ifdef NON_MATCHING
/* MULSHIFT's temporary in $v1, the original's in $v0, and one
 * instruction more */
void func_8002A268(Bike *b, Vector3 *v) {
    int ok = b->m_58 != 1;

    if (b->m_29C > 0x1000) {
        ok = 0;
    }
    if (ok && b->m_3AC) {
        int a = b->m_3AC / 2;

        a <<= 4;

        if (b->m_5CC->m_10 && a) {
            int l = func_8009923C(v);
            Vector3 t, w;

            func_80022D20(&t, v);
            a = MULSHIFT(a, l, 20);
            w = *v;
            if (a) {
                func_80023140(&t, a, 26);
                func_800997D0(&w.vx, &t.vx);
                func_80023140(&w, IABS(l), 23);
            }
            *v = w;
        }
    }
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_12", func_8002A268);
#endif

void func_8002A394(Bike *b) {
    b->m_3AC = 0;
    if (b->m_motor->m_20 & 2) {
        func_80031078(b);
    } else {
        func_80031138(b);
    }
    func_80031500(b);
}

void func_8002A3F0(Bike *b) {
    Vector3 v, w, u;

    v = b->m_2A0;
    if (b->m_470 != 0x1000) {
        func_800995C4(&v, b->m_470);
    }
    func_80099D74(&v, 3);
    v.vx = v.vx / 10 * b->m_298 / 100;
    v.vy = v.vy / 10 * b->m_298 / 100;
    v.vz = v.vz / 10 * b->m_298 / 100;
    if (!b->m_40D) {
        func_8002A268(b, &v);
    }
    if (b->m_29C > 0x2000) {
        VecCopyL(&b->m_360, &v);
        func_800990E8(&b->m_360, 20);
    } else {
        VecCopyL(&b->m_360, &v);
        func_80098F94(&b->m_360, 20);
    }
    func_80099D74(&b->m_360, 6);
    VecCopyL(&b->m_36C, &v);
    func_80099D48(&v, 3);
    func_80099898(&w, &b->m_5CC->m_04, &v);
    VecCopyL(&b->m_5D0->m_04, &w);
    VecCopyL(&b->m_3C4, &b->m_3DC);
    VecCopyL(&b->m_3D0, &b->m_3E8);
    if (b->m_58) {
        w = b->m_330;
        func_80099D48(&w, 9);
        func_800995C4(&w, b->m_motor->m_14E);
        func_80099898(&u, &b->m_5D0->m_04, &w);
        VecCopyL(&b->m_234, &u);
        VecCopyL(&w, &b->m_330);
        func_80099D48(&w, 9);
        func_800995C4(&w, b->m_motor->m_14C);
        func_800998D0_void(&u, &b->m_234, &w);
        VecCopyL(&b->m_240, &u);
    } else {
        func_80026648(b, b->m_5D0);
    }
    VecCopyL(&b->m_3DC, &b->m_234);
    VecCopyL(&b->m_3E8, &b->m_240);
}

#ifdef NON_MATCHING
// Registers only, in the steering branch for state 6: the input's magnitude and the angle at 0x3B0 in swapped registers ($v1/$a0 against $a0/$v1), 13 off. The rest (the dead-zone, the clamp into a temporary, the two bounded wrap loops) as the original.
void func_8002A7A0(Bike *b, int steer, int f) {
    Motion *m = b->m_5CC;
    int i;

    if (m->m_10) {
        if (m->m_00 & 0x200) {
            b->m_411 = 0;
        } else {
            b->m_411 = 1;
        }
        m = b->m_5CC;
        if (m->m_10) {
            return;
        }
    }
    if (!(m->m_00 & 0x200)) {
        b->m_411 = 1;
    }
    if (b->m_5C8->m_10) {
        b->m_3A4 = 0;
        b->m_400 = 0;
        b->m_43D = 0;
        if (!D_800D5F30) {
            b->m_43D = 1;
        } else if (D_800C5E14->m_378->m_10->m_state == 6) {
            b->m_43D = 1;
        }
    } else {
        if (b->m_411) {
            if (f) {
                if (D_800C5E14->m_378->m_10->m_state == 6) {
                    int a = abs(steer);
                    int g, c;

                    if (a < 15) {
                        b->m_43D = 1;
                        goto tail;
                    }
                    b->m_400 = 0;
                    g = 0;
                    if (steer > 0) {
                        g = -0x1000;
                    } else if (steer < 0) {
                        g = 0x1000;
                    }
                    c = b->m_3B0;
                    g = (g - c) / 32;
                    a = g * a;
                    b->m_43D = 0;
                    b->m_3B0 = c + a / 127;
                } else if (abs(steer) < 15) {
                    b->m_43D = 1;
                } else {
                    b->m_43D = 0;
                    b->m_400 = (b->m_400 + -(steer * 3 << 11) / 127) / 2;
                }
                goto tail;
            }
            if (b->m_5CC->m_00 & 0x200) {
                b->m_43D = 0;
                b->m_400 = (b->m_400 - 0x1000) / 2;
                goto tail;
            }
        }
        if (b->m_5CC->m_00 & 0x100) {
            b->m_43D = 0;
            b->m_400 = (b->m_400 + 0x1000) / 2;
            goto tail;
        }
        if (b->m_14A) {
            if (!b->m_43D) {
                b->m_43D = 1;
                goto tail;
            }
        } else if (!b->m_43D) {
            b->m_400 -= b->m_400 / 8;
        }
        if (D_800C5E14->m_378->m_10->m_state == 6 && !b->m_43D) {
            b->m_43D = 1;
        }
    }
tail:
    if (b->m_14A) {
        b->m_3A4 = 1;
    }
    if (b->m_43D) {
        int d, e;

        b->m_400 = 0;
        d = (b->m_330.vy >> 14) - (b->m_360.vy >> 14);
        b->m_30C.vx = 0;
        if (d >= -0x666) {
            if (d < 0x667) {
                e = d;
            } else {
                e = 0x666;
            }
        } else {
            e = -0x666;
        }
        d = e;
        b->m_3B0 += d * 368 / 4096;
    }
    i = 0;
    while (b->m_motor->m_15C < b->m_3B0 && i < 100) {
        b->m_3B0 -= b->m_motor->m_15C;
        i++;
    }
    while (b->m_3B0 < -b->m_motor->m_15C && i < 200) {
        i++;
        b->m_3B0 += b->m_motor->m_15C;
    }
    if (i >= 100) {
        b->m_3B0 = 0;
    }
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_12", func_8002A7A0);
#endif

static inline int Clamp1(int r) {
    if (r < 0) {
        r = 0;
    } else if (r > 0x1000) {
        r = 0x1000;
    }
    return r;
}

#ifdef NON_MATCHING
/* A first draft: the three normal copies' shared tail and the branches' layout differ (about 170 off) */
/* The slope's pull along the ground's normal (front, back or both
 * wheels'), times a grip k that depends on the speed, the motor's kind and
 * flags; on the ground in race state 6, or in a mode, the slope is first
 * pushed towards level. */
void func_8002ABE8(Bike *b) {
    Vector3 n, t;
    int on = 0;
    int k, s, f, flat;

    b->m_32C = 0;
    if (*(int *)b->m_52C) {
        if (b->m_5CC->m_14 || b->m_5CC->m_18) {
            on = 1;
            func_80099898(&t, &b->m_254, &b->m_260);
            VecCopyL(&n, &t);
            n.vy = 0;
            func_80098F94(&n, 12);
        }
    } else {
        Motion *m = b->m_5CC;

        if (m->m_14) {
            on = 1;
            if (m->m_18) {
                VecCopyF(&n, &b->m_FC);
            } else {
                VecCopyF(&n, &b->m_254);
            }
        } else if (m->m_18) {
            on = 1;
            VecCopyF(&n, &b->m_260);
        }
    }
    if (!on) {
        return;
    }
    k = 0x62;
    if (b->m_40F && !b->m_554) {
        if (b->m_29C > 0x5000) {
            f = 0x400;
        } else {
            f = 0x1000 - (b->m_29C / 5 * 3) / 4;
        }
        k = f * k / 4096;
    }
    if (b->m_58 && b->m_2DF) {
        k = 0x93;
    }
    if (b->m_58 == 3) {
        if (b->m_554 > 0) {
            k = 0x93;
        }
        if (b->m_2DF) {
            k = 0xC4;
        }
    }
    flat = 0;
    s = -n.vy;
    if (D_800C5E14->m_378->m_10->m_state == 6 && b->m_149) {
        s = Clamp1((s + 0x1000) << 2) - 0x1000;
        flat = 1;
    }
    if (b->m_415) {
        s = Clamp1((s + 0x1000) << 2) - 0x1000;
        flat = 1;
    }
    s = -s;
    b->m_32C = s * k * b->m_motor->m_148 / 10;
    f = k * (b->m_motor->m_148 << 12) / 10;
    if (flat) {
        f = b->m_32C;
    }
    t = n;
    func_800994F0(&t, f, 24);
    func_800997D0(&b->m_2F4.vx, &t.vx);
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_12", func_8002ABE8);
#endif

void func_8002AF3C(Bike *b) {
    b->m_5C8->m_1C = b->m_motor->m_A4;
    b->m_5CC->m_1C = b->m_motor->m_A4;
    b->m_5C8->m_20 = b->m_motor->m_A8;
    b->m_5CC->m_20 = b->m_motor->m_A8;
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_12", func_8002AF8C);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_12", func_8002B40C);
