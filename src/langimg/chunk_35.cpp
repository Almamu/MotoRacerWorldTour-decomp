#include "common.h"

/* The game's code built with GCC 2.91.66: more of the race
 * (docs/matching/issue-36-langimg-chunk35.md). */

extern "C" {
struct Vec35 {
    int x, y, z;
};
struct Body35 {
    u8 m_00[8];
    Vec35 m_08;
    u8 m_14[0x45];
    s8 m_59;
    u8 m_5A[0xA];
    Vec35 m_64; // its position
    u8 m_70[8];
    Vec35 m_78; // last frame's
    u8 m_84[0x88];
    int m_10C; // the lap's length
    u8 m_110[0xC];
    Vec35 m_11C; // its velocity
    u8 m_128[0x8C];
    struct Bike35 *m_1B4;
    u8 m_1B8[0x373];
    u8 m_52B;
};
// A bike, 0x568 bytes (chunk_36's Bike36)
struct Bike35 {
    union {
        u32 m_00;
        u8 m_00b[4]; // 1: its state
        struct {
            unsigned m_b0 : 1;
            int m_kind : 5;
            unsigned m_in : 1; // in the race
        } m_f;
    };
    u32 m_04; // its time
    u8 m_08[4];
    short m_0C;
    u8 m_0E[0xE];
    int m_1C;         // how far past the line
    short m_20, m_22; // its section and point
    short m_24, m_26; // last frame's
    u8 m_28[8];
    Body35 *m_30;
    u8 m_34[8];
    short m_3C, m_3E;
    s8 m_40; // its lap, or -1
    s8 m_41; // its place
    s8 m_42; // the next gate
    s8 m_43;
    u8 m_44[0x145];
    s8 m_189;
    u8 m_18A[0x19D];
    u8 m_327;
    u8 m_328[0x240];
};
// A bike's times (32 bytes)
struct Times35 {
    u32 m_t[8];
};
struct Hold35 {
    u8 m_00[0x4D8];
    int m_4D8;
    int m_4DC;
    u8 m_4E0[4];
    int m_4E4;
    u8 m_4E8[0x44];
    int m_52C;
};
// A gate: a point of a section (4 bytes)
struct Gate35 {
    short m_00; // the point
    short m_02; // the section
};
// The track (chunk_48's)
struct Track35 {
    u8 m_00[0xC4];
    s8 m_C4[8][4]; // per gate
    Gate35 m_E4[9];
    s8 m_108; // the last gate
    u8 m_109;
    s8 m_10A;
};
// The run (chunk_36's Run36)
struct Run35 {
    u32 m_00;
    union {
        int m_04; // the laps
        s8 m_04b;
    };
    u8 m_08[8];
    Hold35 *m_10;
    u8 m_14[0x18];
    int m_2C[5]; // the bikes by place
    int m_40[5]; // the places
    Times35 m_54[5];
    u8 m_F4[0xB4];
    struct {
        int m_00;
        int m_04;
    } m_1A8[5][8];
    Bike35 m_2E8[5];
    int m_1DF0;
    int m_1DF4;
    u8 m_1DF8[0xC];
    int m_1E04;
    int m_1E08;
    u8 m_1E0C[0x18];
    s8 m_1E24;
    s8 m_1E25;
    u8 m_1E26[5];
    s8 m_1E2B;
    u8 m_1E2C[0xE];
    short m_1E3A;
    void *m_1E3C;
    struct Track35 m_1E40;
};
// A sequence (chunk_04's Seq): its state's two bits at 0x18
struct Seq35 {
    u8 m_00[0x14];
    int m_14;
    int m_state : 2;
};
// The race's current step
struct Cur35 {
    unsigned m_lo : 21;
    unsigned m_15 : 2;
    unsigned m_17 : 2;
    unsigned m_19 : 2;
    int m_idx : 5; // -1: none
    Seq35 *m_04[11];
};
struct Obj35 {
    u8 m_00[0x11C];
    Vec35 m_11C;
};
// A line of text (chunk_57's)
struct Text35 {
    u8 m_00[0x1C];
    unsigned m_kind : 6;
    unsigned m_time : 16;
    unsigned m_1D : 5;
};
// The race (chunk_36's Own36)
struct Named35;
struct Own35 {
    u8 m_00[0x18];
    int m_18;
    u8 m_1C[0x50];
    void *m_6C;
    u8 m_70[0x48];
    Named35 *m_B8;
    u8 m_BC[0x248];
    int m_304;
    void *m_308;
    u8 m_30C[0x6C];
    Run35 *m_378;
    u8 m_37C[0x70];
    struct Cam35 *m_3EC;
    u8 m_3F0[4];
    struct Group35 *m_3F4;
    u8 m_3F8[0x40];
    u8 m_438;
    u8 m_439[3];
    Obj35 *m_43C[2];
    u8 m_444[0x1C];
    int *m_460;
    u8 m_464[4];
    int m_468;
    u8 m_46C[4];
    s8 m_470[2];
    u8 m_472[0x1E];
    int m_490;
    void *m_494;
    Cur35 *m_498;
    u8 m_49C[0x7D0];
    void *m_C6C;
};
// A camera: the bike it follows at 0x74
struct Cam35 {
    u8 m_00[0x34];
    int m_34;
    u8 m_38[0x3C];
    Bike35 *m_74;
};
struct Group35 {
    u8 m_00[0x2C];
    int m_2C;
};

// A bike's model (chunk_12's)
struct Model35 {
    u8 m_00[0x59];
    s8 m_59;
};

extern int D_800CAE90[];
extern int D_800CB0A0[];
void func_8005108C(Bike35 *b, int a);
void func_80019DC0(void *set, int mode);
int func_80019578(Seq35 *s, int a, int back, int c);
void func_8006FF44(void *a);
void func_8006FF0C(void *a);
void func_8006F7A0(void *a);
extern int D_800CB3C4;
extern int D_800D5F38;
extern char D_800C68FC[];
void func_8004FFE4(Run35 *r, int a);
void func_8006BFEC(void *c, int a, int b);
void func_80042FF0(Named35 *o, char *name, int x, int y, int e, int force, int g);
void func_800591D4(Own35 *o);
int func_80058FCC(Own35 *o);
void func_80058070(Own35 *o);
void func_800574EC(Own35 *o, int k, Bike35 *b);
extern int D_800D5FD4;
void func_8005BDE4(Own35 *o);
void func_8005BEC4(Own35 *o);
void func_800634BC(Body35 *m, void *a);
void func_80051AB0(void *s, int a, int b, int c, int d, int e);
void func_80051AE0(void *s, Own35 *o, int a);
void func_800A5DBC(char *buf, int t, int f);
void func_80054744(Own35 *o, void *s, int t, int i, int a, int c, int d);
void func_800627B8(Bike35 *b);
int func_8001B76C(Cam35 *c);
int func_80062CF4(Bike35 *a, Bike35 *b, Cam35 *c, int n);
void func_800627C0(Bike35 *b, int i);
void func_800736BC(Group35 *g, Bike35 *b);
int func_800627D8(Bike35 *b);
int func_800627E4(Bike35 *b);
void func_80062828(Bike35 *b, Vec35 *p, Vec35 *v);
void func_80068900(Body35 *m, Cam35 *c);
void func_80063A68(Body35 *m, Own35 *o);
void func_8007356C(Group35 *g, Body35 *m, Cam35 *c);
void func_800681A4(Body35 *m, Bike35 *b, Own35 *o, Hold35 *h, Cam35 *c);
void func_800653F4(Body35 *m, int a, Cam35 *c);
void func_80065954(Body35 *m, Own35 *o);
void func_80068B60(Body35 *m, void *a, Own35 *o);
void func_800663AC(Body35 *m, Own35 *o);
void func_800692EC(Body35 *m);
void func_800678C8(Body35 *m, Cam35 *c);
void func_800297B4(Model35 *a, Model35 *b, int f);

int func_80057B18(Own35 *o);
void func_80057CF4(void *a);
int func_80057FC4(Vec35 *a, Vec35 *b);
void func_80058364(void *x, Bike35 *a, Bike35 *b, int d);
}

// The run's bike k, or 0
static inline Bike35 *Bike35At(Run35 *r, int k) {
    Bike35 *b = 0;

    if (k >= 0) {
        b = &r->m_2E8[k];
    }
    return b;
}

static inline void VecCopyL35(Vec35 *d, Vec35 *s) {
    int x = s->x;
    int y = s->y;
    int z = s->z;

    d->x = x;
    d->y = y;
    d->z = z;
}

// A bike back at the start, with racer n's times cleared
static inline void Restart35(Own35 *o, Bike35 *b, Track35 *t, int n) {
    int j;

    func_8005108C(b, 2);
    b->m_42 = 1;
    if (t->m_108 <= 0) {
        b->m_42 = 0;
    }
    b->m_40 = 0;
    b->m_04 = 0;
    for (j = 0; j < 8; j++) {
        o->m_378->m_54[n].m_t[j] = -1;
    }
    for (j = 0; j < 8; j++) {
        o->m_378->m_1A8[n][j].m_00 = -1;
        o->m_378->m_1A8[n][j].m_04 = 0;
    }
}

#define IABS35(x) (((x) ^ ((x) >> 31)) - ((x) >> 31))

#ifdef NON_MATCHING
// The race's track pointer and the second argument in swapped saved registers, the second bike's 0 set later and the first bike's fields stored in another order (155 off, most of it shifted by one instruction).
void func_800574EC(Own35 *o, int k, Bike35 *b) {
    Track35 *t = &o->m_378->m_1E40;

    if (o->m_378->m_00 == 2) {
        Bike35 *c;

        func_8005BDE4(o);
        func_8005BEC4(o);
        func_8006FF44(D_800CAE90);
        func_8006FF0C(D_800CB0A0);
        c = Bike35At(o->m_378, o->m_378->m_1E2B);
        b->m_3C = 0;
        b->m_3E = 0;
        c->m_3C = 0;
        c->m_3E = 0;
        Restart35(o, c, t, 1);
        c->m_22 = o->m_378->m_1E40.m_E4[0].m_00;
        c->m_327 = -1;
        c->m_20 = o->m_378->m_1E40.m_E4[0].m_02;
        VecCopyL35(&c->m_30->m_64, &b->m_30->m_64);
        VecCopyL35(&c->m_30->m_78, &c->m_30->m_64);
        func_800634BC(c->m_30, o->m_C6C);
        func_80051AB0(o->m_494, 0, 0, 5000, 0, 0);
        func_80051AB0(o->m_494, 1, 1, -1, 0, 0);
        func_80051AE0(o->m_494, o, 0);
    }
    if (D_800D5FD4 & 0x10) {
        int lap = b->m_40;

        if (lap == 1) {
            int tm = o->m_378->m_54[k].m_t[0];

            if (tm > 0 && tm != -1) {
                char buf[16];

                func_800A5DBC(buf, tm, 0);
                func_80054744(o, buf, 12000, b->m_43, lap, 0xFFFF, -1);
            }
        }
    }
    Restart35(o, b, t, 0);
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_35", func_800574EC);
#endif

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_35", func_80057814);

#ifdef NON_MATCHING
// The original keeps -1 in a saved register for the bikes' laps and walks the bikes with two pointers (the bike and its lap); with -fmove-all-movables (the chunk's flag) it went from 116 to 38 off, the rest registers.
int func_80057B18(Own35 *o) {
    int i, j;
    Bike35 *b = o->m_378->m_2E8;

    for (i = 0; i < 5; i++, b++) {
        if ((b->m_00 >> 6) & 1) {
            func_8005108C(b, 2);
            b->m_04 = 0;
            b->m_40 = -1;
            if (o->m_378->m_10->m_4E4 || (o->m_378->m_00 & 0x3C)) {
                b->m_40 = 0;
            }
            for (j = 0; j < 8; j++) {
                o->m_378->m_54[i].m_t[j] = -1;
            }
            for (j = 0; j < 8; j++) {
                o->m_378->m_1A8[i][j].m_00 = -1;
                o->m_378->m_1A8[i][j].m_04 = 0;
            }
        }
    }
    func_80019DC0(o->m_6C, 5);
    func_80019DC0(o->m_6C, 6);
    func_80019DC0(o->m_6C, 7);
    if (o->m_498->m_04[9]) {
        func_80019578(o->m_498->m_04[9], 1, 0, -1);
    }
    o->m_378->m_1E3A = 1;
    o->m_498->m_17 = 1;
    if (o->m_378->m_00 & 0x102) {
        func_8006FF44(D_800CAE90);
        func_8006FF0C(D_800CB0A0);
    }
    return 1;
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_35", func_80057B18);
#endif

void func_80057CF4(void *a) {
    func_8006F7A0(a);
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_35", func_80057D14);

#ifdef NON_MATCHING
// Registers and scheduling: the original loads the vectors' values in another order and squares each clamped value as soon as it's ready; GCC keeps the values in other registers (39 off).
int func_80057FC4(Vec35 *a, Vec35 *b) {
    int dx = a->x - b->x;
    int dy = a->y - b->y;
    int dz = a->z - b->z;
    int r;

    dx = IABS35(dx) >> 6;
    if (dx > 0x6882) {
        dx = 0x6882;
    }
    r = dx * dx;
    dy = IABS35(dy) >> 6;
    if (dy > 0x6882) {
        dy = 0x6882;
    }
    r += dy * dy;
    dz = IABS35(dz) >> 6;
    if (dz > 0x6882) {
        dz = 0x6882;
    }
    return r + dz * dz;
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_35", func_80057FC4);
#endif

#ifdef NON_MATCHING
// The constant 3 for the kinds' tests: the original hoists it to $fp for the inner loop only; with -fmove-all-movables (the chunk's flag) it went from 119 to 33 off.
void func_80058070(Own35 *o) {
    int i, k;
    Bike35 *b, *a;

    b = o->m_378->m_2E8;
    for (i = 0; i < 5; i++, b++) {
        if ((b->m_00 >> 6) & 1) {
            func_800627B8(b);
            if (b->m_30->m_59) {
                b->m_30->m_52B = 0;
            }
        }
    }
    a = o->m_378->m_2E8;
    for (k = 0; k < 4; k++, a++) {
        if (((a->m_00 >> 6) & 1) && (int)(a->m_00 << 26) >> 27 != 3) {
            for (i = k + 1, b = &o->m_378->m_2E8[i]; i < 5; i++, b++) {
                if (((b->m_00 >> 6) & 1) && (int)(b->m_00 << 26) >> 27 != 3) {
                    Body35 *p = a->m_30;
                    Body35 *q = b->m_30;

                    if (!func_8001B76C(o->m_3EC) || func_80062CF4(a, b, o->m_3EC, 5)) {
                        int d = func_80057FC4(&p->m_64, &q->m_64);

                        if (d < 0x1000) {
                            func_800627C0(a, i);
                            func_800627C0(b, k);
                        }
                        if (p->m_59 || q->m_59) {
                            func_80058364(o, a, b, d);
                        }
                    }
                }
            }
        }
    }
    b = o->m_378->m_2E8;
    for (i = 0; i < 5; i++, b++) {
        if ((b->m_00 >> 6) & 1) {
            func_800736BC(o->m_3F4, b);
        }
    }
    b = o->m_378->m_2E8;
    for (i = 0; i < 5; i++, b++) {
        if (((b->m_00 >> 6) & 1) && func_800627D8(b)) {
            int k = func_800627E4(b);

            if (k != -1) {
                Bike35 *t = &o->m_378->m_2E8[k];
                Body35 *m = t->m_30;

                if (!b->m_189 && !t->m_189) {
                    func_80062828(b, &m->m_64, &m->m_11C);
                }
            }
        }
    }
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_35", func_80058070);
#endif

void func_80058364(void *x, Bike35 *a, Bike35 *b, int d) {
    if (d <= 0x31000) {
        Model35 *p = (Model35 *)a->m_30;

        if (!p->m_59) {
            Bike35 *t = a;

            a = b;
            b = t;
            p = (Model35 *)a->m_30;
        }
        func_800297B4(p, (Model35 *)b->m_30, 1);
    }
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_35", func_800583BC);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_35", func_800589B0);

int func_80058FCC(Own35 *o) {
    Cam35 *c = o->m_3EC;

    if (c->m_34) {
        Bike35 *b = c->m_74->m_30->m_1B4;

        if (b && (int)(b->m_00 << 26) >> 27 == 2) {
            Body35 *m = b->m_30;
            int st, v;

            func_80068900(m, c);
            func_80063A68(c->m_74->m_30, o);
            if (o->m_3F4->m_2C) {
                int i;
                Bike35 *p = o->m_378->m_2E8;

                for (i = 0; i < 5; i++, p++) {
                    if ((p->m_00 & 0x7E) == 0x44) {
                        func_8007356C(o->m_3F4, p->m_30, c);
                    }
                }
            }
            func_800681A4(m, b, o, o->m_378->m_10, c);
            st = o->m_378->m_1E08;
            if (st == 5 || st == 7 || st == 3 || st == 4) {
                v = 0xFF;
            } else {
                v = 0;
            }
            switch (b->m_00b[1]) {
            case 1:
                func_800653F4(m, 0, c);
                break;
            case 2:
                func_800653F4(m, v, c);
                break;
            case 3:
            case 4:
                func_800653F4(m, v, c);
                break;
            default:
                break;
            }
            func_80065954(m, o);
            func_80068B60(m, o->m_C6C, o);
            func_800663AC(m, o);
            func_800692EC(m);
            func_800678C8(m, c);
        }
    }
    return 1;
}

/* The places after a step, and the text when the player's changes. */
void func_800591D4(Own35 *race) {
    Own35 *o = race;
    int k = -1;
    int place = -1;
    int on = 0;

    if (!o->m_304) {
        if (o->m_378->m_00 & 0x54) {
            on = 1;
        }
    } else {
        o->m_468 = o->m_378->m_40[o->m_470[0]];
    }
    if (on) {
        k = o->m_378->m_1E24;
        place = o->m_378->m_40[k];
    }
    func_8004FFE4(o->m_378, o->m_304);
    if (place != -1 && on && o->m_378->m_40[k] != place) {
        func_8006BFEC(o->m_308, 1, o->m_378->m_40[k]);
    }
    if (o->m_304) {
        Run35 *r = o->m_378;

        if ((u32)r->m_1DF4 < (u32)(r->m_1E04 * 5) / 6) {
            int i = o->m_470[0];
            int was = o->m_468;
            int now = r->m_40[i];

            if (was >= 0 && now >= 0 && now != was) {
                if (was < now) {
                    on = r->m_2C[was];
                } else {
                    on = i;
                }
                if (D_800CB3C4 != on) {
                    int f = 0;

                    if ((u32)(r->m_10->m_52C - 1) < 3 && D_800D5F38 != 14) {
                        f = D_800D5F38 != 15;
                    }
                    func_80042FF0(o->m_B8, D_800C68FC, 3000, 0, on, 0, f);
                    D_800CB3C4 = on;
                }
            }
        }
    }
}
