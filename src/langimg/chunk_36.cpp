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
struct Pose36 {
    u8 m_00[4];
    short m_04;
    u8 m_06[4];
    short m_0A;
    u8 m_0C[4];
    short m_10;
};
struct Body36 {
    u8 m_00[0x34];
    Pose36 *m_34;
};
struct Vec36 {
    int x, y, z;
};
// A bike, 0x568 bytes (chunk_38's Bike38)
struct Bike36 {
    union {
        u32 m_00;    // flags: bit 6, in the race; bits 1-5, its kind
        u8 m_00b[4]; // 1: its state
    };
    u8 m_04[0xC];
    int m_10;
    u8 m_14[0xE];
    short m_22;
    u8 m_24[2];
    short m_26;
    u8 m_28[8];
    Body36 *m_30;
    u8 m_34[0xF];
    s8 m_43;
    u8 m_44[0x145];
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
    u8 m_1E0C[0x2C];
    s8 m_1E38;
    s8 m_1E39;
    u8 m_1E3A[2];
    struct List36 *m_1E3C;
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
    u8 m_00[0x52C];
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

void func_80059960(Own36 *o, int x, Bike36 *b, void *l);
void func_80059B54(Own36 *o, int i, int s, int a);
int func_80059BE8(Own36 *o);
int func_80059CD4(Own36 *o);
int func_80059ECC(Own36 *o);
int func_80059FAC(Own36 *o);
int func_8005A594(void);
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_36", func_800593CC);

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

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_36", func_8005A148);

int func_8005A594(void) {
    return 1;
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_36", func_8005A59C);
