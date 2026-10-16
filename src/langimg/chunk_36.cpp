#include "common.h"

/* The game's code built with GCC 2.91.66, -G8, split addresses
 * (docs/matching/issue-37-langimg-chunk36.md). */

extern "C" {
// A GCC 2 vtable entry
struct VtEntry36 {
    short m_delta;
    short m_index;
    void *m_func;
};
struct Vec36 {
    int x, y, z;
};
struct Pose36 {
    u8 m_00[4];
    short m_04;
    u8 m_06[4];
    short m_0A;
    u8 m_0C[4];
    short m_10;
    u8 m_12[2];
    Vec36 m_14; // the translation
};
struct Body36 {
    u8 m_00[0x34];
    Pose36 *m_34;
};
// A bike, 0x568 bytes (chunk_38's Bike38)
struct Bike36 {
    union {
        u32 m_00;    // flags: bit 6, in the race; bits 1-5, its kind
        u8 m_00b[4]; // 1: its state
        struct {
            unsigned m_b0 : 1;
            int m_kind : 5;
            unsigned m_in : 1;
            unsigned m_back : 1; // going the wrong way
        } m_f;
    };
    int m_04; // its time
    u8 m_08[4];
    short m_0C; // its points
    u8 m_0E[2];
    int m_10;
    u8 m_14[8];
    int m_1C;
    short m_20; // its section
    short m_22; // its point
    short m_24; // last frame's
    short m_26;
    u8 m_28[8];
    Body36 *m_30;
    u8 m_34[8];
    short m_3C; // its distance from the start line
    short m_3E;
    u8 m_40;
    s8 m_41; // its place
    u8 m_42;
    s8 m_43;
    u8 m_44;
    s8 m_45;
    u8 m_46[0x143];
    s8 m_189;
    u8 m_18A[0x19D];
    u8 m_327;
    u8 m_328[0x38];
    int m_360;
    u8 m_364[0x204];
};
// The run (chunk_38's Run38)
struct Run36 {
    u32 m_00;
    u8 m_04[0xC];
    struct Hold36 *m_10;
    u8 m_14[0x2D4];
    Bike36 m_2E8[5];
    u8 m_1DF0[4];
    int m_1DF4;
    u8 m_1DF8[0x10];
    int m_1E08;
    u8 m_1E0C[0x18];
    s8 m_1E24[2]; // the racers' bikes
    u8 m_1E26[0x12];
    s8 m_1E38;
    s8 m_1E39;
    u8 m_1E3A[2];
    struct List36 *m_1E3C;
    u8 m_1E40[0xE4]; // the track (chunk_48's)
    short m_1F24;    // the start line's point
    short m_1F26;    // and section
    u8 m_1F28[0x22];
    s8 m_1F4A;
};
// A section of the track (chunk_48's Ent48)
struct Sec36 {
    short m_00;
    s8 m_02; // -1: the end of the track
    u8 m_03;
    u32 m_04; // bit 1: counted
    int m_08; // how many points
    u8 m_0C[0x44];
    struct Sec36 *m_50; // the next section
};
// An entry of the run's list at 0x1E3C (12 bytes)
struct Ent36 {
    int m_00;
    int m_04;
    short m_08;
};
struct List36 {
    int m_00;
    Ent36 m_04[5];
    Ent36 m_40;
};
// An entry of D_800C9EE0's table (20 bytes)
struct Rec36 {
    u8 m_00[8];
    int m_08;
    u8 m_0C[8];
};
struct Step36 {
    int m_00;
    int m_04;
};
struct State36 {
    u8 m_00[0x52C];
    int m_52C;
};
struct Hold36 {
    u8 m_00[0x4E4];
    int m_4E4;
    u8 m_4E8[0x44];
    int m_52C;
};
struct Game36 {
    u8 m_00[0x378];
    Run36 *m_378;
};
// A slot of the race's (0x4C bytes), an object with a vtable at 0xC
struct Slot36 {
    u8 m_00[4];
    int m_04;
    u8 m_08[4];
    VtEntry36 *m_0C;
    int m_10;
    int m_14;
    u8 m_18[0x20];
    int m_38;
    int m_3C;
    u8 m_40[8];
    int m_48;
};
struct Named36;
struct Sub36 {
    u8 m_00[0xA0];
    void *m_A0;
    u8 m_A4[0x8C];
    int m_130;
    u8 m_134[8];
    int m_13C;
};
// The race (chunk_38's Own38)
struct Own36 {
    u8 m_00[0x68];
    VtEntry36 *m_vtable;
    u8 m_6C[0x4C];
    Sub36 *m_B8;
    u8 m_BC[8];
    int m_C4[8];
    u8 m_E4[0x220];
    int m_304;
    u8 m_308[0x70];
    Run36 *m_378;
    u8 m_37C[4];
    short m_380;
    u8 m_382[0x2E];
    int m_3B0;
    int m_3B4;
    u8 m_3B8[0xD0];
    u32 m_488[2];
    u8 m_490[4];
    void *m_494;
    u8 m_498[0x7DC];
    Slot36 m_C74[2];
};

extern Game36 *D_800C5E14;
extern int D_800C8A70[];
extern void *D_800CB478;
extern int D_800D5F6C;
extern Rec36 *D_800C9EE0;
extern int D_800C8A74;
void *func_80070D98(void *l, int i);
void func_80070D54(void *a, Vec36 *out);
int func_80063A5C(Body36 *b);
extern int D_800D5F40;
extern int D_800D5FC0;
extern int D_800D5FC4;
extern char D_800C690C[];
extern char D_800C691C[];
extern char D_800C6920[];
extern char D_800C692C[];
extern char D_800C6938[];
extern char D_800C6948[];
extern char D_800C695C[];
extern char D_800C696C[];
extern char D_800C6980[];
extern char D_800C6988[];
extern char D_800C6990[];
extern char D_800C6998[];
extern int D_800D5FC8;
extern int D_800D49E8;
extern int D_800D5F2C;
extern int *D_800C9EEC;
int func_8005102C(Run36 *r, int a);
int func_800A14CC(void);
int func_800A1504(void);
int func_800A1528(int a, int b);
int func_800A158C(int a);
void func_800A5F90(char *buf, int n);
void func_800A5DBC(char *buf, int t, int f);
int func_8005A148(Own36 *o);

int sprintf(char *buf, const char *fmt, ...);
int func_8006A994(void *c, int a, Slot36 *s, short b);
void func_800557C4(Own36 *o);
void *func_8003CB24(void *s, const char *name);
void *func_80040178(Sub36 *o, void *h, const char *name, ...);
void func_80048CFC(Own36 *o);
void func_80042FC0(Sub36 *o, const char *name, int idx, int x);
void func_8004FFE4(Run36 *r, int a);
void func_80041E10(Sub36 *o, Run36 *r);
Step36 *func_80052120(void *s);
int func_80051EA4(void *s, Own36 *o);
void func_8006ABD4(void *c, int id);

Sec36 *func_8007142C(void *track, int i);
int func_80071994(void *track, int deep, Sec36 **pe, int *pi, Vec36 *x, int *pr, int *pflag);
int func_80070E20(Sec36 *a, Sec36 *b);
int func_800593CC(Own36 *o, int x, Bike36 *b);
void func_80059960(Own36 *o, int x, Bike36 *b, void *l);
void func_80059B54(Own36 *o, int i, int s, int a);
int func_80059BE8(Own36 *o);
int func_80059CD4(Own36 *o);
int func_80059ECC(Own36 *o);
int func_80059FAC(Own36 *o);
int func_8005A594(void);
}

int func_800593CC(Own36 *o, int x, Bike36 *b) {
    if (b && ((b->m_00 >> 6) & 1) && o->m_378->m_1F4A > 0) {
        Vec36 pos;
        Sec36 *sec;
        int pt, found, k;
        Sec36 *a, *c;

        found = 0;
        {
            Pose36 *ps = b->m_30->m_34;
            int px = ps->m_14.x;
            int py = ps->m_14.y;
            int pz = ps->m_14.z;

            b->m_26 = b->m_22;
            b->m_24 = b->m_20;
            pt = b->m_22;
            pos.x = px;
            pos.y = py;
            pos.z = pz;
        }
        sec = func_8007142C(o->m_378->m_1E40, b->m_20);
        k = b->m_45;
        if (func_80071994(o->m_378->m_1E40, 1, &sec, &pt, &pos, &found, &k)) {
            b->m_1C = found;
            b->m_20 = sec->m_00;
            b->m_22 = pt;
            b->m_45 = k;
        }
        a = func_8007142C(o->m_378->m_1E40, b->m_20);
        c = func_8007142C(o->m_378->m_1E40, b->m_24);
        if (!b->m_189) {
            if (b->m_20 == b->m_24) {
                if (b->m_22 != b->m_26) {
                    b->m_f.m_back = b->m_22 < b->m_26;
                    if ((b->m_00 >> 7) & 1) {
                        if (func_80070E20(a, c) && (b->m_22 << 12) / a->m_08 < 0x333 &&
                            (b->m_26 << 12) / c->m_08 >= 0xCCD) {
                            b->m_f.m_back = 0;
                        }
                    } else if (func_80070E20(a, c) && (b->m_26 << 12) / c->m_08 < 0x333 &&
                               (b->m_22 << 12) / a->m_08 >= 0xCCD) {
                        b->m_f.m_back = 1;
                    }
                }
            } else if (c && a && a->m_02 < c->m_02) {
                b->m_f.m_back = 0;
            }
        }
        func_80059960(o, x, b, a);
    }
    if (b->m_3E == -0x7FFF && b->m_20 != -1 && b->m_22 != -1) {
        int sec0, pt0;
        Sec36 *start, *e, *first;

        b->m_3C = 0;
        sec0 = o->m_378->m_1F26;
        start = func_8007142C(o->m_378->m_1E40, sec0);
        pt0 = o->m_378->m_1F24;
        e = func_8007142C(o->m_378->m_1E40, b->m_20);
        first = 0;
        if (sec0 == b->m_20) {
            if (b->m_22 >= pt0 && o->m_378->m_10->m_4E4) {
                b->m_3C += start->m_08 - (b->m_22 - pt0);
            } else {
                b->m_3C = pt0 - b->m_22;
            }
        } else {
            for (;;) {
                if ((e->m_04 >> 1) & 1) {
                    if (!first) {
                        first = e;
                    }
                    if (e == start) {
                        b->m_3C += o->m_378->m_1F24 + 1;
                        break;
                    }
                    b->m_3C += e->m_08;
                }
                e = e->m_50;
                if (e == first) {
                    break;
                }
            }
        }
        if (!o->m_378->m_10->m_4E4) {
            b->m_3E = -b->m_3C;
            b->m_3C = 0;
        } else {
            b->m_3E = 0;
        }
    }
    {
        int pt = b->m_22;
        int lpt = b->m_26;
        int sec = b->m_20;
        int lsec = b->m_24;

        if (pt != -1 && sec != -1 && lpt != -1 && lsec != -1) {
            Sec36 *a = func_8007142C(o->m_378->m_1E40, sec);
            Sec36 *c = func_8007142C(o->m_378->m_1E40, lsec);

            if (sec != lsec) {
                if (a->m_02 != -1 && c->m_02 != -1) {
                    if (c->m_02 < a->m_02) {
                        b->m_3E++;
                    } else if (a->m_02 < c->m_02) {
                        b->m_3E--;
                    }
                }
            } else if (a->m_02 != -1 && pt != lpt) {
                if (!lpt && a->m_08 >> 1 < pt) {
                    b->m_3E -= a->m_08 - pt;
                } else if (a->m_08 >> 1 < lpt && pt < a->m_08 >> 1) {
                    b->m_3E += pt + 1;
                } else {
                    b->m_3E += pt - lpt;
                }
            }
        }
    }
    return 0;
}

static inline void SetVec36(Vec36 *v, int x, int y, int z) {
    v->x = x;
    v->y = y;
    v->z = z;
}

static inline int Dot36(Vec36 *a, Vec36 *b) {
    return a->x * b->x + a->y * b->y + a->z * b->z;
}

#ifdef NON_MATCHING
// The slot's address for the virtual call: the original computes it as the index's offset plus the race (and loads the global before the slot's field); GCC adds them the other way round (7 off).
void func_80059960(Own36 *o, int x, Bike36 *b, void *l) {
    if (!o->m_304 && ((o->m_488[b->m_43] >> 9) & 1) && b->m_43 != -1) {
        int ahead = 1;

        if (l) {
            void *e = func_80070D98(l, b->m_22);

            if (e && b->m_30) {
                Vec36 v, d;
                Pose36 *p = b->m_30->m_34;

                SetVec36(&v, p->m_04, p->m_0A, p->m_10);
                func_80070D54(e, &d);
                ahead = (u32)Dot36(&d, &v) >> 31;
            }
        }
        if (!(b->m_00b[0] >> 7) || !ahead) {
            if (b->m_10 != -2) {
                int k = b->m_43;

                if (D_800C8A74 == o->m_C74[k].m_48) {
                    VtEntry36 *v = &o->m_C74[k].m_0C[5];

                    ((void (*)(void *))v->m_func)((char *)&o->m_C74[k] + v->m_delta);
                }
            }
        } else if (!b->m_189 && func_80063A5C(b->m_30) >= 0 && (b->m_26 != 1 || b->m_22)) {
            func_80059B54(o, 1, b->m_43, 1500);
        }
    }
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_36", func_80059960);
#endif

void func_80059B54(Own36 *o, int i, int s, int a) {
    Slot36 *p = &o->m_C74[s];

    p->m_10 = o->m_3B0;
    p->m_14 = o->m_3B4;
    p->m_48 = D_800C8A70[i];
    p->m_38 = 0xFFFFFF;
    p->m_04 = a;
    p->m_3C = 0x10;
    func_8006A994(D_800CB478, o->m_C4[s], p, 5);
}

int func_80059BE8(Own36 *o) {
    Run36 *r = o->m_378;

    if (!(r->m_00 & 3)) {
        int found, i;
        Bike36 *b;

        found = 0;
        i = 0;
        b = r->m_2E8;
        do {
            if (((b->m_00 >> 6) & 1) && (u32)(b->m_00b[1] - 1) < 2) {
                int k = (int)(b->m_00 << 26) >> 27;

                if (k == 1 || k == 3 || o->m_378->m_1E38) {
                    found = 1;
                }
            }
            b++;
        } while (!found && ++i < 5);
        if (!found) {
            func_800557C4(o);
        }
    }
    return o->m_378->m_1E08 != 3 && o->m_378->m_1E08 != 4;
}

#ifdef NON_MATCHING
// The search of the run's list: the original tests the first entry, then counts the other four down from 4 (with a fix-up of the count when found); GCC keeps the loop as written.
int func_80059CD4(Own36 *o) {
    int busy = 1;
    int r = 0;
    Run36 *run;

    if (o->m_B8->m_13C == 3 || o->m_B8->m_130 != -1) {
        if (!(o->m_378->m_00 & 0x3D)) {
            func_8004FFE4(o->m_378, o->m_304);
        }
        func_80041E10(o->m_B8, o->m_378);
        run = o->m_378;
    } else {
        run = o->m_378;
        busy = 0;
        if (run->m_1E39 == 1) {
            int k;

            for (k = 1; k >= 0; k--) {
                Ent36 *found = 0;
                Ent36 *e = run->m_1E3C->m_04;
                int i;

                for (i = 0; i < 5; i++, e++) {
                    if (e->m_08 == k) {
                        found = e;
                        break;
                    }
                }
                if (!found) {
                    e = &run->m_1E3C->m_40;
                    if (e->m_08 == k) {
                        found = e;
                    }
                }

                if (found) {
                    D_800C9EE0[k].m_08 = found->m_04;
                    run = o->m_378;
                }
            }
        }
    }
    if (run->m_1E08 == 7 || run->m_1E08 == 5) {
        Step36 *st = func_80052120(o->m_494);

        if (!busy && st) {
            if ((u32)(st->m_00 - 2) < 3) {
                st->m_04 = -1;
            } else if (st->m_00 == 10) {
                func_8006ABD4(D_800CB478, 3);
                func_8006ABD4(D_800CB478, 4);
            }
        }
        r = func_80051EA4(o->m_494, o);
    }
    return r || busy;
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_36", func_80059CD4);
#endif

int func_80059ECC(Own36 *o) {
    int i;
    Bike36 *b = o->m_378->m_2E8;

    for (i = 0; i < 5; b++, i++) {
        if (((b->m_00 >> 6) & 1) && b->m_00b[1] == 1 && (int)(b->m_00 << 26) >> 27 == 1 &&
            D_800C5E14->m_378->m_10->m_52C != 6 && D_800C5E14->m_378->m_10->m_52C != 5 &&
            o->m_378->m_1DF4 < -4000 && !b->m_360) {
            b->m_327 = 25;
        }
    }
    return 1;
}

int func_80059FAC(Own36 *o) {
    int r = 0;

    if (!func_80059CD4(o)) {
        if (!D_800D5F6C) {
            VtEntry36 *v;

            if (o->m_378->m_00 & 0xA8) {
                char buf[32];
                void *h = func_8003CB24(o->m_B8->m_A0, D_800C690C);

                sprintf(buf, D_800C691C, D_800D5FC0);
                func_80040178(o->m_B8, h, D_800C6920, buf);
                sprintf(buf, D_800C691C, D_800D5FC4);
                func_80040178(o->m_B8, h, D_800C692C, buf);
                func_80042FC0(o->m_B8, D_800C690C, 6, 0);
            } else if (D_800D5F40 != 2) {
                if (D_800D5F40 == 4) {
                    func_80042FC0(o->m_B8, D_800C6938, 0, 0);
                }
            } else {
                func_80042FC0(o->m_B8, D_800C6948, 6, 0);
            }
            v = &o->m_vtable[22];
            ((void (*)(void *, int))v->m_func)((char *)o + v->m_delta, 0);
            r = 1;
            o->m_380 = 0;
            v = &o->m_vtable[24];
            ((void (*)(void *, int))v->m_func)((char *)o + v->m_delta, 0);
        } else {
            func_80048CFC(o);
        }
    }
    return r;
}

// The run's bike k, or 0
static inline Bike36 *Bike36At(Run36 *r, int k) {
    Bike36 *b = 0;

    if (k >= 0) {
        b = &r->m_2E8[k];
    }
    return b;
}

#ifdef NON_MATCHING
// The modes' branches and calls are the original's; left: in the 0xA8 branch's last call GCC computes the name's address before loading o->m_B8, so that branch doesn't join the other two at the shared 2 argument (49 off).
int func_8005A148(Own36 *o) {
    int r = 0;
    Bike36 *b = Bike36At(o->m_378, o->m_378->m_1E24[0]);

    if (!func_80059CD4(o)) {
        if (!D_800D5F6C) {
            VtEntry36 *v;
            int place = func_8005102C(o->m_378, 0);

            switch (D_800D5F40) {
            case 8: {
                int a = func_800A14CC();
                int c = func_800A1504();
                int k = D_800D5FC8;
                int m = D_800D49E8;

                if (k != -1) {
                    func_80042FC0(o->m_B8, D_800C695C, 1, 0);
                } else if (func_800A1528(a, c)) {
                    if (place < 3) {
                        if (m != k) {
                            func_80042FC0(o->m_B8, D_800C695C, 1, 0);
                        } else if (func_800A158C(c)) {
                            func_80042FC0(o->m_B8, D_800C695C, 1, 0);
                        } else {
                            func_80042FC0(o->m_B8, D_800C696C, 1, 0);
                        }
                    } else {
                        func_80042FC0(o->m_B8, D_800C695C, 1, 0);
                    }
                } else {
                    func_80042FC0(o->m_B8, D_800C696C, 1, 0);
                }
                break;
            }
            case 4:
                if (!b->m_41) {
                    if (D_800D5F2C >= *D_800C9EEC - 1) {
                        func_80042FC0(o->m_B8, D_800C6980, 0, 0);
                    } else {
                        func_80042FC0(o->m_B8, D_800C696C, 0, 0);
                    }
                } else {
                    func_80042FC0(o->m_B8, D_800C6938, 0, 0);
                }
                break;
            default:
                if (o->m_378->m_00 & 0xA8) {
                    char buf[32];
                    void *h = func_8003CB24(o->m_B8->m_A0, D_800C690C);
                    Run36 *run;
                    Bike36 *p, *q;

                    sprintf(buf, D_800C691C, D_800D5FC0);
                    func_80040178(o->m_B8, h, D_800C6920, buf);
                    sprintf(buf, D_800C691C, D_800D5FC4);
                    func_80040178(o->m_B8, h, D_800C692C, buf);
                    run = o->m_378;
                    p = Bike36At(run, run->m_1E24[0]);
                    q = Bike36At(run, run->m_1E24[1]);
                    if (run->m_00 == 0x20) {
                        func_800A5F90(buf, p->m_0C);
                        func_80040178(o->m_B8, h, D_800C6988, buf);
                        func_800A5F90(buf, q->m_0C);
                    } else {
                        func_800A5DBC(buf, p->m_04, 0);
                        func_80040178(o->m_B8, h, D_800C6988, buf);
                        func_800A5DBC(buf, q->m_04, 0);
                    }
                    func_80040178(o->m_B8, h, D_800C6990, buf);
                    func_80042FC0(o->m_B8, D_800C690C, 2, 0);
                } else if (o->m_378->m_00 & 0x54) {
                    func_80042FC0(o->m_B8, D_800C6948, 2, 0);
                } else {
                    func_80042FC0(o->m_B8, D_800C6998, 2, 0);
                }
                break;
            }
            v = &o->m_vtable[22];
            ((void (*)(void *, int))v->m_func)((char *)o + v->m_delta, 0);
            r = 1;
            o->m_380 = 0;
            v = &o->m_vtable[24];
            ((void (*)(void *, int))v->m_func)((char *)o + v->m_delta, 0);
        } else {
            func_80048CFC(o);
        }
    }
    return r;
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_36", func_8005A148);
#endif

int func_8005A594(void) {
    return 1;
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_36", func_8005A59C);
