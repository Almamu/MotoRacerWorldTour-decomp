#include "common.h"

/* The game's code built with GCC 2.91.66: more of the race
 * (docs/matching/issue-35-langimg-chunk34.md). */

extern "C" {
struct Vec34 {
    int x, y, z;
};
struct Body34 {
    u8 m_00[8];
    Vec34 m_08;
    u8 m_14[0xF8];
    int m_10C; // the lap's length
};
// A bike, 0x568 bytes (chunk_36's Bike36)
struct Bike34 {
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
    short m_08;
    short m_0A;
    short m_0C;
    short m_0E;
    u8 m_10[0xC];
    int m_1C;         // how far past the line
    short m_20, m_22; // its section and point
    short m_24, m_26; // last frame's
    u8 m_28[8];
    Body34 *m_30;
    u8 m_34[0xC];
    s8 m_40; // its lap, or -1
    s8 m_41; // its place
    s8 m_42; // the next gate
    s8 m_43;
    u8 m_44[8];
    int m_4C;
    u8 m_50[0x2D7];
    u8 m_327;
    u8 m_328[0x240];
};
// A bike's times (32 bytes)
struct Times34 {
    u32 m_t[8];
};
struct Hold34 {
    u8 m_00[0x4D8];
    int m_4D8;
    int m_4DC;
};
// A gate: a point of a section (4 bytes)
struct Gate34 {
    short m_00; // the point
    short m_02; // the section
};
// The track (chunk_48's)
struct Track34 {
    u8 m_00[0xC4];
    s8 m_C4[8][4]; // per gate
    Gate34 m_E4[9];
    s8 m_108; // the last gate
    u8 m_109;
    s8 m_10A;
};
struct Pos34 {
    int m_00, m_04;
    short m_08, m_0A;
};
// The record to beat
struct Rec34 {
    int m_00;
    u8 m_04[0x3C];
    Pos34 m_40;
};
// The run's five bikes' times, copied whole
struct Times34x5 {
    Times34 m_t[5];
};
// The run (chunk_36's Run36)
struct Run34 {
    u32 m_00;
    union {
        int m_04; // the laps
        s8 m_04b;
    };
    u8 m_08[8];
    Hold34 *m_10;
    u8 m_14[0x18];
    int m_2C[5];
    int m_40[5]; // the places
    Times34 m_54[5];
    Times34 m_F4[5];
    int m_194[5];
    u8 m_1A8[0x140];
    Bike34 m_2E8[5];
    int m_1DF0;
    int m_1DF4;
    Pos34 m_1DF8;
    int m_1E04;
    int m_1E08;
    u8 m_1E0C[4];
    int m_1E10;
    u8 m_1E14[0x10];
    s8 m_1E24; // the bikes by place
    s8 m_1E25;
    u8 m_1E26[5];
    s8 m_1E2B;
    u8 m_1E2C[0xD];
    s8 m_1E39;
    u8 m_1E3A[2];
    Rec34 *m_1E3C;
    struct Track34 m_1E40;
};
// A sequence (chunk_04's Seq): its state's two bits at 0x18
struct Seq34 {
    u8 m_00[0x14];
    int m_14;
    int m_state : 2;
};
// The race's current step
struct Cur34 {
    unsigned m_lo : 21;
    unsigned m_15 : 2;
    unsigned m_17 : 2;
    unsigned m_19 : 2;
    int m_idx : 5; // -1: none
    Seq34 *m_04[11];
};
struct Obj34 {
    u8 m_00[0x11C];
    Vec34 m_11C;
    u8 m_128[0x2C];
    int m_154;
};
// A menu's entry's flags (chunk_25's Bits25)
struct Bits34 {
    u32 m_a : 2;
    u32 m_b : 2;
    u32 m_c : 2;
    u32 m_d : 2;
    int m_e : 2;
    u32 m_f : 2;
    int m_key : 20;
};
struct Elem34 {
    int m_00;
    int m_04;
    int m_08;
    int m_0C;
    Bits34 m_10;
};
// A menu's entries (chunk_25's List25)
struct List34 {
    int m_00;
    int m_04;
    Elem34 m_08[6];
    int m_80; // how many
};
struct Named34 {
    u8 m_00[0xA8];
    List34 m_A8;
};
// A virtual function's entry
struct VT34 {
    u8 m_00[0xC0];
    short m_C0; // the delta
    short m_C2;
    void (*m_C4)(void *, int);
};
// A line of text (chunk_57's)
struct Text34 {
    u8 m_00[0x1C];
    unsigned m_kind : 6;
    unsigned m_time : 16;
    unsigned m_1D : 5;
};
// The race (chunk_36's Own36)
struct Named34;
struct Own34 {
    u8 m_00[0x18];
    int m_18;
    u8 m_1C[0x4C];
    VT34 *m_68;
    void *m_6C;
    u8 m_70[0x48];
    Named34 *m_B8;
    u8 m_BC[0x248];
    int m_304;
    void *m_308;
    int m_30C;
    u8 m_310[0x68];
    Run34 *m_378;
    u8 m_37C[0xBC];
    u8 m_438;
    u8 m_439[3];
    Obj34 *m_43C[2];
    u8 m_444[0x1C];
    int *m_460;
    u8 m_464[0xC];
    s8 m_470[2];
    u8 m_472[0x1E];
    int m_490;
    void *m_494;
    Cur34 *m_498;
};

extern int D_800CBC94[1];
extern u32 D_800D612C; // the frame's time
extern int D_800D5F6C;
extern int D_800D5F68;
extern int D_800D6100; // the frame's time
extern int D_800D5F40;
void *func_80078FC4(void *a, int b);
void func_80057B18(Own34 *o);
void func_8005108C(Bike34 *b, int a);
extern int D_800D5FC0; // a count per racer
extern char D_800C685C[];
extern char D_800C686C[];
int func_8006CA84(int id, int a);
int func_8005BFEC(Own34 *o, Bike34 *b, int k);
extern int D_800D5F30;
void *func_8007142C(Track34 *t, int i);
void func_8006BFEC(void *c, int a, int b);
void func_80057814(Own34 *o, int k, Bike34 *b, int g, int f);
void func_80056F64(Own34 *o, int k, Bike34 *b);
int func_80056CD4(Own34 *o, int k, Bike34 *b);
void func_80056F64(Own34 *o, int k, Bike34 *b);
extern void *D_800C89F4;
extern char D_800C687C[];
extern char D_800C688C[];
extern char D_800C689C[];
int func_80050D7C(Run34 *r, int k);
void func_80082B14(void *p, Own34 *o);
void *func_80053198(Own34 *o, int i);
Text34 *func_800841BC(void *n, int i, int force);
void *func_8005C424(Own34 *o, int x);
void func_80054744(Own34 *o, void *s, int t, int i, int a, int c, int d);
void func_8004FFE4(Run34 *r, int a);
void func_800574EC(Own34 *o, int k, Bike34 *b);
int func_80019D0C(void *l, Seq34 *s, int a, int b, int c);
void func_80042FF0(Named34 *o, char *name, int x, int y, int e, int force, int g);
void func_80055650(Own34 *o, Bike34 *b, int k);

void func_800554E0(Own34 *o);
void func_800557C4(Own34 *o);
void func_80055614(Own34 *o);
int func_8005663C(Own34 *o);
int func_800567CC(Own34 *o);
int func_80056874(Own34 *o);
int func_80056B68(Own34 *o, int k);

extern int D_800CAE90, D_800CAF80, D_800CB0A0, D_800CB190, D_800CB194[8];
extern int *D_800C9EF4;
extern int D_800D4898, D_800D4914, D_800D4948, D_800D4950, D_800D4954, D_800D495C, D_800D49E8;
extern int D_800D5EC4, D_800D5EF4, D_800D5EF8, D_800D5F04, D_800D5F08, D_800D5F0C, D_800D5F84[5],
    D_800D5FC8;
extern int *D_800D5EC8[];
extern char D_800C6818[], D_800C6828[], D_800C6838[], D_800C6848[], D_800C6850[];
void func_80048CF4(Own34 *o, char *name, int *v, int a);
int func_800A029C(Rec34 *r, int t, int a, short b, int c);
void func_80050F5C(Run34 *r);
int func_8005102C(Run34 *r, int a);
void func_800A0124(Pos34 *p);
int func_800A1558(void);
int func_800A1420(int *p);
void func_800A6788(int a, int b);
void func_80051AB0(void *s, int i, int kind, int a, int b, int c);
void func_80051AE0(void *s, Own34 *o, int i);
void func_8004C4E4(Own34 *o, int a, int b);
Elem34 *func_80044C80(List34 *l, int key);
void func_8004185C(Named34 *n, Run34 *r);
}

// The run's bike k, or 0
static inline Bike34 *Bike34At(Run34 *r, int k) {
    Bike34 *b = 0;

    if (k >= 0) {
        b = &r->m_2E8[k];
    }
    return b;
}

static inline void VecCopyL34(Vec34 *d, Vec34 *s) {
    int x = s->x;
    int y = s->y;
    int z = s->z;

    d->x = x;
    d->y = y;
    d->z = z;
}

// How many bikes are in the race
static inline int CountIn34(Run34 *r) {
    int n = 0;
    Bike34 *first = r->m_2E8;
    Bike34 *p = &r->m_2E8[4];

    do {
        if ((p->m_00 >> 6) & 1) {
            n++;
        }
    } while (p-- != first);
    return n;
}

// How many players are in the race
static inline int CountPlayers34(Run34 *r) {
    int n = 0;
    Bike34 *first = r->m_2E8;
    Bike34 *p = &r->m_2E8[4];

    do {
        if ((p->m_00 >> 6) & 1 && (int)(p->m_00 << 26) >> 27 == 1) {
            n++;
        }
    } while (p-- != first);
    return n;
}

static inline void PosCopy34(Pos34 *d, Pos34 *s) {
    if (s) {
        d->m_00 = s->m_00;
        d->m_04 = s->m_04;
        d->m_08 = s->m_08;
        d->m_0A = s->m_0A;
    }
}

// A time added to, kept under 0x36EE7F
static inline void AddTime34(u32 *p, u32 dt) {
    u32 t = *p + dt;

    if (t <= 0x36EE7E) {
        *p = t;
    } else {
        *p = 0x36EE7F;
    }
}

void func_800554E0(Own34 *o) {
    int i;

    o->m_378->m_1E08 = 2;
    func_80078FC4(D_800CBC94, o->m_18);
    for (i = 0; i < 2; i++) {
        Bike34 *b = Bike34At(o->m_378, o->m_470[i]);

        if (b && b->m_30) {
            Vec34 v = b->m_30->m_08;

            VecCopyL34(&o->m_43C[i]->m_11C, &v);
        }
    }
    o->m_498->m_19 = 1;
    o->m_498->m_17 = 0;
    o->m_490 |= 1;
}

void func_80055614(Own34 *o) {
    if (o->m_304) {
        o->m_378->m_1E08 = 4;
    } else {
        o->m_378->m_1E08 = 3;
    }
    func_80057B18(o);
}

void func_80055650(Own34 *o, Bike34 *b, int k) {
    if ((int)(b->m_00 << 26) >> 27 == 1) {
        if (b->m_41 >= 2) {
            b->m_327 = 24;
        } else if (b->m_41 >= 4) {
            b->m_327 = 23;
        }
    }
    if ((int)(b->m_00 << 26) >> 27 == 1) {
        int lim = !(o->m_378->m_00 & 0xA8) << 1;

        if (lim >= b->m_41) {
            func_8006CA84(70, 127);
        }
    }
    if ((o->m_378->m_00 & 0xA8) && !b->m_41) {
        (*(int *)((u8 *)&D_800D5FC0 + (k << 2)))++;
    }
    if (b->m_43 != -1) {
        int n = 0;
        Run34 *r = o->m_378;
        Bike34 *first = r->m_2E8;
        Bike34 *p = &r->m_2E8[4];

        do {
            if ((p->m_00 >> 6) & 1) {
                n++;
            }
        } while (p-- != first);
        if (n >= 2 && b->m_41 < 3) {
            func_8005BFEC(o, b, k);
        }
    }
}

#ifdef NON_MATCHING
// Shape right (28 opcode runs out of place; most of the rest is registers): the original saves $s7 too, walks D_800D5F84 with its own pointer, tests D_800D5F40 with xori, and stores an entry's flags twice (three fields, then m_d) where this merges them; -fmove-all-movables (now the chunk's flag) put the loop's constants in saved registers (890 to 793 off).
void func_800557C4(Own34 *o) {
    int ok;
    int i;

    if ((o->m_378->m_00 & 0x100) && D_800CAE90) {
        Bike34At(o->m_378, o->m_378->m_1E2B)->m_04 = D_800CAF80;
    }
    if (!(o->m_378->m_00 & 0x3D)) {
        func_8004FFE4(o->m_378, o->m_304);
    }
    if (o->m_304) {
        i = 4;
        do {
            o->m_378->m_2E8[i].m_04 = o->m_378->m_194[i];
        } while (--i >= 0);
    } else {
        Rec34 *rec;

        ok = 0;
        if (CountPlayers34(o->m_378) > 0) {
            int k;

            ok = 1;
            for (i = 0; i < 5; i++) {
                if ((o->m_378->m_2E8[i].m_00 & 0x7E) == 0x42 && o->m_378->m_2E8[i].m_00b[1] != 4) {
                    ok = 0;
                }
            }
            if (ok) {
                func_8005BFEC(o, Bike34At(o->m_378, o->m_378->m_1E24), o->m_378->m_1E24);
            }
            k = -1;
            if (o->m_378->m_1E24 != -1) {
                k = o->m_378->m_40[o->m_378->m_1E24];
            }
            func_80048CF4(o, D_800C6818, &D_800D5F04, k);
        }
        func_8006BFEC(o->m_308, 9, 0);
        D_800D5EC4 = !ok;
        if (!ok) {
            func_8006CA84(0x2F, 0x7F);
        }
        {
            Run34 *r = o->m_378;

            for (i = 0; i < 5; i++) {
                if ((r->m_2E8[i].m_00 >> 6) & 1) {
                    r->m_2E8[i].m_0C += r->m_2E8[i].m_0E;
                    r->m_2E8[i].m_0E = 0;
                }
            }
        }
        i = 4;
        do {
            o->m_378->m_194[i] = o->m_378->m_2E8[i].m_04;
        } while (--i >= 0);
        if (o->m_378->m_1E3C) {
            for (i = CountPlayers34(o->m_378) - 1; i >= 0; i--) {
                Bike34 *b = Bike34At(o->m_378, (&o->m_378->m_1E24)[i]);

                if (b->m_00b[1] == 3) {
                    int t;

                    if (o->m_378->m_1E3C->m_00) {
                        t = b->m_04;
                    } else {
                        t = b->m_0C;
                    }
                    if (t > 0 && func_800A029C(o->m_378->m_1E3C, t, b->m_4C, b->m_08, b->m_43) &&
                        o->m_378->m_1E39) {
                        o->m_378->m_1E39 = 1;
                    }
                }
            }
        }
        if (!(D_800D5F40 ^ 8) && D_800D5FC8 == -1) {
            Bike34 *b = o->m_378->m_2E8;

            for (i = 0; i < 5; i++, b++) {
                int lap = o->m_378->m_40[i];

                if (lap != -1 && (b->m_00b[1] == 3 || (int)(b->m_00 << 26) >> 27 != 1)) {
                    b->m_0C += D_800C9EF4[lap];
                }
                D_800D5F84[i] = o->m_378->m_2C[i];
            }
            func_80050F5C(o->m_378);
            func_80048CF4(o, D_800C6828, &D_800D5F08, func_8005102C(o->m_378, 0));
        }
        o->m_378->m_1E10 = ok ? 2 : 1;
        func_80048CF4(o, D_800C6838, &D_800D5EF8, o->m_378->m_1E10);
        if ((o->m_378->m_00 & 0x100) && D_800CB0A0) {
            int k = o->m_378->m_1E24;

            if (o->m_378->m_2E8[k].m_00b[1] == 3) {
                D_800CB190 = o->m_378->m_2E8[k].m_04;
                for (i = 0; i < 8; i++) {
                    D_800CB194[i] = o->m_378->m_54[k].m_t[i];
                }
            }
        }
        *(Times34x5 *)o->m_378->m_F4 = *(Times34x5 *)o->m_378->m_54;
        for (i = CountIn34(o->m_378) - 1; i >= 0; i--) {
            Bike34 *b = Bike34At(o->m_378, i);

            if (b && b->m_40 < 8) {
                o->m_378->m_F4[i].m_t[b->m_40] = (u32)-1;
            }
        }
        rec = o->m_378->m_1E3C;
        if (rec) {
            PosCopy34(&o->m_378->m_1DF8, &rec->m_40);
        } else {
            func_800A0124(&o->m_378->m_1DF8);
        }
        o->m_378->m_1E04 = o->m_378->m_1DF4;
        if (D_800D5F40 == 8 && D_800D5FC8 == -1 && func_8005102C(o->m_378, 0) < 3 &&
            func_800A1558()) {
            int s = func_800A1420(&D_800D4898);

            if (D_800D5F30 == 2) {
                if (D_800D4914 == 0) {
                    if (s == D_800D5F30 && D_800D495C && D_800D4954) {
                        s = 9;
                    }
                } else if (D_800D4914 == 1 && s == 5 && D_800D4950 && D_800D4948) {
                    s = 10;
                }
            }
            if (s != -1 && *D_800D5EC8[s] == 0) {
                func_80048CF4(o, D_800C6848, &D_800D5F0C, s);
                D_800D49E8 = s;
            }
        }
    }
    if (!D_800D5F6C) {
        int k;

        if (!o->m_304 && !D_800D5EC4) {
            func_800A6788(0x11, 0);
        }
        i = 0;
        if (o->m_304) {
            func_80051AB0(o->m_494, i, 0, 5000, 0, 0);
        } else {
            if (o->m_378->m_00 & 0xA8) {
                func_80051AB0(o->m_494, 0, 0, 5000, 0, 0);
                func_80051AB0(o->m_494, 1, 1, -1, 0, 0);
                i = 2;
                k = 8;
            } else {
                o->m_30C = o->m_43C[0]->m_154;
                func_8004C4E4(o, 0, 3);
                if (o->m_378->m_00 == 0x10) {
                    i = 1;
                    func_80051AB0(o->m_494, 0, 0, 3000, 0, 0);
                } else if (!(o->m_378->m_00 & 0x3D)) {
                    int n = CountIn34(o->m_378);

                    i = 1;
                    if (n >= 2 && !D_800D5F04) {
                        func_80051AB0(o->m_494, 0, 2, 18000, 0, 0);
                        i = 2;
                        func_80051AB0(o->m_494, 1, 3, 1000, 0, 0);
                    } else {
                        func_80051AB0(o->m_494, 0, 4, 18000, 0, 0);
                    }
                }
                func_80051AB0(o->m_494, i++, 7, -1, 0, 0);
                k = 0;
            }
            func_80051AB0(o->m_494, i++, k, 1000, 0, 0);
            func_80051AB0(o->m_494, i++, 9, -1, 0, 0);
            func_80051AB0(o->m_494, i, 10, -1, 0, 0);
        }
        func_80051AE0(o->m_494, o, 0);
        if (D_800D5EC4) {
            o->m_378->m_1E08 = 7;
        } else {
            o->m_378->m_1E08 = 5;
        }
        if (!o->m_304) {
            if (!D_800D5EC4) {
                Elem34 *e;
                u32 *w = (u32 *)&o->m_B8->m_A8.m_08[0].m_10;

                i = 6;
                do {
                    if ((*w & 0x300) && (*w & ~0xFFF) != 0x1000) {
                        *w &= ~0x300;
                    }
                    w += 5;
                } while (--i);
                e = func_80044C80(&o->m_B8->m_A8, 1);
                e->m_0C = -1;
                e->m_04 = 3000;
                e->m_10.m_a = 0;
                e->m_10.m_b = 0;
                e->m_10.m_c = 0;
                e->m_10.m_d = 1;
            } else {
                Named34 *n;
                Elem34 *e;

                func_80048CF4(o, D_800C6850, &D_800D5EF4, o->m_378->m_1E39);
                n = o->m_B8;
                if (n->m_A8.m_80 > 0) {
                    if (D_800D5FC8 != -1) {
                        e = func_80044C80(&n->m_A8, 4);
                        if (e) {
                            e->m_10.m_e = 0;
                        }
                    }
                    if (!(o->m_378->m_00 & 0xA8)) {
                        Run34 *q;

                        e = func_80044C80(&o->m_B8->m_A8, 2);
                        e->m_04 = 10000;
                        e->m_10.m_d = 1;
                        q = o->m_378;
                        if (!Bike34At(q, q->m_1E24)->m_41 && q->m_00 != 0x10 && q->m_00 != 4) {
                            Elem34 *f = func_80044C80(&o->m_B8->m_A8, 1);

                            if (f) {
                                f->m_10.m_e = 0;
                            }
                        }
                        e->m_0C = -1;
                        e->m_10.m_a = 0;
                        e->m_10.m_b = 0;
                        e->m_10.m_c = 0;
                    }
                    e = func_80044C80(&o->m_B8->m_A8, 3);
                    if (e) {
                        e->m_10.m_e = CountIn34(o->m_378) >= 2;
                    }
                    e = func_80044C80(&o->m_B8->m_A8, 5);
                    if (e) {
                        e->m_10.m_e = o->m_378->m_1E39 == 1;
                    }
                }
            }
            func_8004185C(o->m_B8, o->m_378);
            o->m_68->m_C4((u8 *)o + o->m_68->m_C0, 0);
        }
    } else {
        o->m_378->m_1E08 = 7;
    }
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_34", func_800557C4);
#endif

int func_8005663C(Own34 *o) {
    Cur34 *c;
    int k, r;

    o->m_498->m_idx++;
    c = o->m_498;
    k = c->m_idx;
    r = 0;
    if (o->m_304 || k == 1) {
        r = 1;
    }
    if (k < 8 && *o->m_460 != -1 && k != -1) {
        if (r && func_80019D0C(o->m_6C, c->m_04[k], 1, 0, -1)) {
            if (o->m_304) {
                int x = o->m_498->m_04[k]->m_14;

                if (k == 2) {
                    func_80042FF0(o->m_B8, D_800C685C, x, 1, 0, 0, 1);
                } else if (k == 7) {
                    func_80042FF0(o->m_B8, D_800C686C, x, 1, 0, 1, 1);
                }
            }
            o->m_438 = 2;
            r = 1;
        } else {
            r = func_8005663C(o);
        }
    } else {
        r = 0;
        o->m_498->m_idx = -1;
    }
    return r;
}

int func_800567CC(Own34 *o) {
    if (o->m_378->m_1E08 == 1) {
        Cur34 *c = o->m_498;

        if (c->m_idx == -1) {
            func_800554E0(o);
        } else {
            Seq34 *q = c->m_04[c->m_idx];

            if (q) {
                int st = q->m_state;

                if (st) {
                    goto done;
                }
            }
            if (!func_8005663C(o)) {
                func_800554E0(o);
            }
        }
    }
done:
    return o->m_378->m_1E08 != 1;
}

#ifdef NON_MATCHING
// Registers only: the original reads the run for the time at 0x1DF0 into $a2 and copies it to $a0 for the loop; GCC reads it into $a0 (5 off).
int func_80056874(Own34 *o) {
    int dt = D_800D6100;
    int r;

    o->m_378->m_1DF4 += dt;
    r = 0;
    if (!o->m_498->m_15 && o->m_378->m_1DF4 >= -999) {
        o->m_498->m_15 = 1;
        func_80019D0C(o->m_6C, o->m_498->m_04[10], 1, 0, -1);
    }
    if (o->m_378->m_1DF4 >= 0) {
        r = 1;
        if (o->m_378->m_1E08 == 2) {
            func_80055614(o);
        }
        if ((u32)(o->m_378->m_1E08 - 5) < 4) {
            goto end;
        }
        o->m_378->m_1DF0 -= dt;
        if (o->m_378->m_1DF0 < 0) {
            Run34 *q = o->m_378;
            int m = 0;

            if (q->m_00 == 16 || q->m_00 == 32) {
                m = 3;
            } else if (q->m_00 == 4 || D_800D5F40 == 4) {
                m = 4;
            }
            if (m) {
                int i;
                Bike34 *b;

                for (i = 0, b = q->m_2E8; i < 5; i++, b++) {
                    if ((b->m_00 & 0x7E) == 0x42) {
                        func_8005108C(b, m);
                    }
                }
                if (m == 3 && (o->m_378->m_00 & 0x30)) {
                    Run34 *run = o->m_378;
                    Bike34 *a = Bike34At(run, run->m_1E24);

                    if (run->m_00 & 0x10) {
                        if (!o->m_304) {
                            a->m_41 = 0;
                        }
                        func_80055650(o, a, 0);
                    } else {
                        Bike34 *c = Bike34At(run, run->m_1E25);

                        if (!o->m_304) {
                            a->m_41 = a->m_0C < c->m_0C;
                            c->m_41 = c->m_0C < a->m_0C;
                        }
                        func_80055650(o, a, o->m_378->m_1E24);
                        func_80055650(o, c, o->m_378->m_1E25);
                    }
                }
            }
        }
    }
end:
    return r;
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_34", func_80056874);
#endif

int func_80056B68(Own34 *o, int k) {
    Bike34 *b = Bike34At(o->m_378, k);

    if (b && b->m_00b[1] == 2) {
        u32 dt = D_800D612C;
        u32 *p;

        AddTime34(&b->m_04, dt);
        p = 0;
        if (b->m_40 == -1 && o->m_378->m_10->m_4D8) {
            p = &o->m_378->m_54[k].m_t[0];
        } else if (b->m_40 >= 0) {
            p = &o->m_378->m_54[k].m_t[b->m_40];
        }
        if (p) {
            AddTime34(p, dt);
        }
        if (D_800D5F6C && D_800D5F68 < o->m_378->m_1DF4) {
            func_8005108C(b, 3);
        }
    }
    return 1;
}

int func_80056CD4(Own34 *o, int k, Bike34 *b) {
    int r = 0;
    Track34 *t = &o->m_378->m_1E40;

    if (t->m_10A > 0) {
        if (b->m_00b[0] >> 7) {
            r = 1;
        } else if (t->m_108 != -1) {
            Gate34 *g;
            s8 *e;
            int w;

            func_8007142C(t, b->m_20);
            g = &t->m_E4[b->m_42];
            if (!func_8007142C(t, g->m_02)) {
                b->m_42--;
            }
            if (b->m_20 == g->m_02 && b->m_20 == b->m_24 && b->m_22 >= g->m_00 &&
                b->m_26 < g->m_00) {
                if (!o->m_304 && k == o->m_378->m_1E24) {
                    if (!b->m_42) {
                        func_8006BFEC(o->m_308, 8, b->m_40 + 1);
                    } else {
                        func_8006BFEC(o->m_308, 7, b->m_42);
                    }
                }
                e = t->m_C4[b->m_42];
                {
                    int v = e[D_800D5F30];

                    if (!k && D_800D5F40 == 4) {
                        o->m_378->m_1DF0 += v * 1000;
                    }
                }
                w = e[3];
                if (w >= 0) {
                    int f = 0;

                    if ((u32)(o->m_378->m_1E08 - 3) < 2 && (!o->m_304 || b->m_42)) {
                        f = 1;
                    }
                    func_80057814(o, k, b, w, f);
                }
                if (!b->m_42) {
                    func_80056F64(o, k, b);
                }
                b->m_42++;
                if (t->m_108 < b->m_42) {
                    b->m_42 = 0;
                }
                r = 1;
            }
        }
    }
    return r;
}

void func_80056F64(Own34 *o, int k, Bike34 *b) {
    if ((u32)(b->m_00b[1] - 3) >= 2) {
        int len = b->m_30->m_10C;
        int over = b->m_1C;
        int adj = 0;

        if (len && b->m_40 >= 0) {
            adj = over * 1000 / len;
            o->m_378->m_54[k].m_t[b->m_40] -= adj;
        }
        if (o->m_378->m_10->m_4DC && (o->m_378->m_00 & 3) && !b->m_40) {
            o->m_378->m_10->m_4DC = 0;
        }
        if (o->m_378->m_1E3C && (b->m_40 > 0 || (b->m_40 == 0 && !o->m_378->m_10->m_4DC))) {
            int kind = (int)(b->m_00 << 26) >> 27;

            if (kind == 1 && func_80050D7C(o->m_378, k)) {
                int idx;

                func_80082B14(D_800C89F4, o);
                o->m_490 = kind;
                idx = b->m_43;
                if (!o->m_304 && idx != -1) {
                    void *q = func_80053198(o, idx);

                    if (q) {
                        Text34 *x = func_800841BC(q, 1, 1);

                        if (x) {
                            x->m_kind = 4;
                            x->m_time = 5000;
                            x->m_1D = 0;
                        }
                    }
                }
            }
        }
        if (o->m_304 && b->m_43 != -1 && b->m_40 > 0) {
            u32 best = -1;
            int i;

            i = b->m_40 - 1;
            do {
                if (best == -1 || o->m_378->m_54[k].m_t[i] < best) {
                    best = o->m_378->m_54[k].m_t[i];
                }
                i--;
            } while (i >= 0);
            if (o->m_378->m_54[k].m_t[b->m_40] < best) {
                func_80042FF0(o->m_B8, D_800C687C, 5000, 1, k, 0, 1);
            }
        }
        {
            if ((u8)b->m_40++ < 7 || (!b->m_40 && !o->m_378->m_10->m_4D8)) {
                o->m_378->m_54[k].m_t[b->m_40] = 0;
                if (adj) {
                    o->m_378->m_54[k].m_t[b->m_40] += adj;
                }
            }
        }
        if (!o->m_304) {
            if (b->m_40 == o->m_378->m_04 - 1) {
                if ((u32)o->m_378->m_04 >= 2 && b->m_43 != -1) {
                    void *t = func_8005C424(o, 45);

                    if (t) {
                        func_80054744(o, t, 4000, b->m_43, 2, 0xFF00, 4);
                    }
                    func_8006CA84(56, 127);
                }
            } else if (b->m_40 >= o->m_378->m_04b) {
                func_8005108C(b, 3);
                if (len && adj) {
                    b->m_04 -= adj;
                }
                if (!(o->m_378->m_00 & 0x3D)) {
                    func_8004FFE4(o->m_378, o->m_304);
                    int p = o->m_378->m_40[k];

                    b->m_41 = p;
                } else {
                    b->m_41 = 0;
                }
                func_80055650(o, b, k);
            }
        } else {
            if (b->m_40 >= o->m_378->m_04b) {
                func_8005108C(b, 3);
            }
            if (b->m_43 != -1) {
                if (b->m_40 > 0 && ((u8)b->m_40 & 1)) {
                    func_80042FF0(o->m_B8, D_800C688C, 7000, 0, b->m_40, 0, 1);
                } else {
                    func_80042FF0(o->m_B8, D_800C689C, 3000, 1, k, 0, 1);
                }
            }
        }
    }
    if (b->m_00b[1] == 3 && (o->m_378->m_00 & 3) && b == Bike34At(o->m_378, o->m_378->m_1E24)) {
        func_800574EC(o, k, b);
    }
}
