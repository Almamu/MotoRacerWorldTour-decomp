#include "common.h"

/* Entries of 0x330 bytes and their flags (docs/matching/issue-40-langimg-chunk39.md) */

extern "C" {
// A record of the ring
struct Rec39 {
    int m_00; // the key
    int m_04; // when pressed
    int m_08; // when released, -1 while held
};
// An entry, 0x330 bytes
struct Ent39 {
    u16 m_00; // flags
    u16 m_02; // more flags
    s8 m_04;
    s8 m_05;
    u8 m_06;
    s8 m_07;
    u8 m_08;
    u8 m_09;
    u8 m_0A;
    u8 m_0B;
    u8 m_0C;
    u8 m_0D;
    s8 m_0E;
    u8 m_0F;
    Rec39 m_10[32]; // a ring
    int m_190;      // its newest
    int m_194;      // how many
    u8 m_198[4];
    int m_19C;
    u8 m_1A0[4];
    u16 m_1A4; // bits set this frame
    u16 m_1A6;
    u16 m_1A8;
    u16 m_1AA; // the last frame's
    u8 m_1AC[0x184];
};
struct Sub39 {
    u8 m_00[0x130];
    int m_130; // the open menu, -1 when none
    u8 m_134[0x1C];
    int m_150;
    u8 m_154[0x1C];
    int m_170;
};
// A list of choices: its kind in the top 5 bits, then the choices
struct Sel39b {
    int m_00;
    int m_04[7];
};
struct VtEntry39 {
    short m_delta;
    short m_index;
    void (*m_func)(void *self, int a);
};
#define VCALL39(o, i, a) (o)->m_68[i].m_func((char *)(o) + (o)->m_68[i].m_delta, a)
struct Own39 {
    u8 m_00[0x68];
    VtEntry39 *m_68;
    u8 m_6C[0x4C];
    Sub39 *m_B8;
    u8 m_BC[0x234];
    Ent39 *m_2F0;
    u8 m_2F4[0x10];
    int m_304;
    u8 m_308[0x70];
    struct Run39 *m_378;
    u8 m_37C[0x70];
    int m_3EC;
    u8 m_3F0[4];
    int m_3F4;
    u8 m_3F8[0x6C];
    int *m_464;
    u8 m_468[0x30];
    Sel39b *m_498;
};
struct Vec39 {
    int x;
    int y;
    int z;
};
struct Def39 {
    u8 m_00[8];
    Vec39 m_08;
};
struct Ctl39 {
    u8 m_00[4];
    struct Sel39 *m_04;
    u8 m_08[4];
    int m_0C;
    u8 m_10[0x26];
    u16 m_36;
};
struct Sel39 {
    u8 m_00[0x10];
    int m_10;
};
struct Hud39 {
    u8 m_00[0x100];
    Ctl39 m_100;
};
struct Lnk39 {
    u8 m_00[8];
    Hud39 *m_08;
    u8 m_0C[0x28];
    u8 m_34;
};
// A bike, 0x568 bytes (chunk_31's Bike31)
struct Obj39 {
    u8 m_00[0x30];
    Def39 *m_30;
    u8 m_34[0x20];
    u8 m_54[0x74];
    u8 m_C8[0xBC];
    u8 m_184;
    u8 m_185;
    u8 m_186;
    u8 m_187[4];
    u8 m_18B[0x191];
    void *m_31C;
    u8 m_320[4];
    u8 m_324;
    u8 m_325;
    u8 m_326;
    u8 m_327;
    Lnk39 m_328; // 0x38 bytes
    int m_360;
    u8 m_364[0x6D];
    u8 m_3D1;
    short m_3D2;
    int m_3D4;
    int m_3D8;
    u8 m_3DC;
    u8 m_3DD;
    u8 m_3DE[6];
    int m_3E4;
    u8 m_3E8[4];
    int m_3EC;
    u8 m_3F0[4];
    int m_3F4;
    u8 m_3F8[0x138];
    int m_530;
    int m_534;
    int m_538;
    u8 m_53C[0x2C];
};
struct Run39 {
    int m_00;
    u8 m_04[0x2E4];
    struct Obj39 m_2E8[5];
    u8 m_1DF0[0x18];
    int m_1E08; // the race's kind
};
// A pad's buttons, now and before
struct Pad39 {
    int m_00;
    u8 m_04[4];
    u16 m_08;
    u16 m_0A;
    u16 m_0C;
    u16 m_0E;
};
// A sprite's frames
struct Prim39 {
    u8 m_00[0xC];
    u16 m_0C;
    u16 m_0E;
    u16 m_10;
    u8 m_12[2];
    u16 m_14;
    u16 m_16;
};
struct Uv39 {
    u16 m_00;
    u16 m_02;
    u16 m_04;
    u16 m_06;
    u16 m_08;
};
struct Anim39 {
    u8 m_00; // frames a row
    u8 m_01; // a frame's width
    u8 m_02; // its height
    u8 m_03; // how many prims
    s8 m_04; // the clut moves too
    u8 m_05[3];
    Prim39 **m_08;
    Uv39 *m_0C;
};
void func_80061284(Obj39 *o);
void func_8005F464(Ent39 *e);
void func_8005F480(Ent39 *e, int bits, int st);
Rec39 *func_8005F4A4(Ent39 *e, int key);
void func_800600B8(int *st, Own39 *o, int *i);
void func_80060134(int *st, Own39 *o, int *i);
void func_800601B0(int *st, Own39 *o, int *i);
void func_8006022C(int *st, Own39 *o, int *i);
void func_8005FEB0(int *st, Own39 *o, int *i);
void func_8005FF34(int *st, Own39 *o, int *i);
void func_8005FFB8(int *st, Own39 *o, int *i);
void func_80060038(int *st, Own39 *o, int *i);
void func_8005FB98(int *st, Own39 *o, int *i);
void func_8005FC40(int *st, Own39 *o, int *i);
void func_80060298(int *st, Own39 *o, int *i);
void func_800605A4(int *st, Own39 *o, int *i);
void func_80060410(int *st, Own39 *o, int *i);
void func_800608A8(int *st, Own39 *o, int *i);
void func_8004C430(Own39 *o, int i);
void func_8005F380(Ent39 *e);
void func_80060668(int *st, Own39 *o, int *i);
extern int D_800D6104; // the time
void func_80073E54(int a, Obj39 *b, int c);
void func_80033D4C(void *a, Obj39 *b);
void func_80022BA8(int *p);
void func_80081F28(void *c, Vec39 *v);
void func_80060340(int *st, Own39 *o, int *i);
void func_800604D0(int *st, Own39 *o, int *i);
void func_8005FAB8(Ent39 *e, Pad39 *p);
void func_8005F514(Ent39 *e, int key, int st);
void func_8006139C(Anim39 *a, int f);
extern int D_800D5F6C;
void func_80048CFC(Own39 *o);
void func_8005F638(Ent39 *e);
void func_8005FCE8(Pad39 *p, Own39 *o, int *i);
extern char D_800C718C[]; // "PauseTwoPlayers"
extern char D_800C719C[]; // "PauseWithRestart"
extern char D_800C71B0[]; // "PauseRetire"
extern int D_800D5FC8;
extern int D_800D5F40;
extern int D_800CB410;
void func_80017A30(int a, int b);
void func_80019B2C(int a, int b);
void func_8005663C(Own39 *o);
void func_80042FC0(Sub39 *m, char *name, int a, int b);
void func_80040034(Sub39 *m, int a);
void func_80060650(void);
void func_80060658(void);
void func_80060660(void);
int func_8006095C(int *a, int *b);
void func_80061250(Obj39 *o);
}

void func_8005F464(Ent39 *e) {
    u16 v = e->m_1A4;

    e->m_1A4 = 0;
    e->m_1A6 = 0;
    e->m_1A8 = 0;
    e->m_19C = 0;
    e->m_1AA = v;
}

void func_8005F480(Ent39 *e, int bits, int st) {
    if (st == 0xFF) {
        e->m_1A4 |= bits;
    }
}

/* The ring's newest record with the key, going back; 0 when none. */
Rec39 *func_8005F4A4(Ent39 *e, int key) {
    int found = 0;
    int i = e->m_190;
    int n = e->m_194;
    Rec39 *r = &e->m_10[i];

    goto test;
    // A workaround (the permuter): inside a do/while (0), GCC keeps i live
    // when found, and undoes the i-- it took into the delay slot
    do {
    next:
        i--;
        n--;
        if (i < 0) {
            i = 31;
            r = &e->m_10[31];
        } else {
            r--;
        }
    test:
        if (n > 0) {
            if (r->m_00 != key) {
                goto next;
            }
            found = 1;
        }
        if (found) {
            return r;
        }
    } while (0);
    return 0;
}

/* A key pressed (0xFF) pushed on the ring unless still held; released (0), its record closed. */
void func_8005F514(Ent39 *e, int key, int st) {
    Rec39 *r = func_8005F4A4(e, key);
    int held = 0;

    if (r) {
        held = (u32)r->m_08 >> 31;
    }
    if (st == 0xFF) {
        if (!held) {
            if (++e->m_190 >= 32) {
                e->m_190 = 0;
            }
            if (++e->m_194 > 32) {
                e->m_194 = 32;
            }
            e->m_10[e->m_190].m_00 = key;
            e->m_10[e->m_190].m_04 = D_800D6104;
            e->m_10[e->m_190].m_08 = -1;
        }
    } else if (st == 0) {
        if (held) {
            r->m_08 = D_800D6104;
        }
    }
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_39", func_8005F638);

/* Unless pressed (0x0E), the held records closed now; else each changed button passed on. */
void func_8005FAB8(Ent39 *e, Pad39 *p) {
    int i;

    if (!e->m_0E) {
        int j;

        for (j = 0; j < 32; j++) {
            if (e->m_10[j].m_08 == -1) {
                e->m_10[j].m_08 = D_800D6104;
            }
        }
    } else {
        int bit = 1;

        for (i = 0; i < 20; i++) {
            if (!(bit & 0xFF06)) {
                int a = p->m_08 & bit;

                if (a != (p->m_0E & bit)) {
                    func_8005F514(e, bit, a ? 0xFF : 0);
                }
            }
            bit <<= 1;
        }
    }
}

void func_8005FB98(int *st, Own39 *o, int *i) {
    if (o) {
        Ent39 *e = &o->m_2F0[*i];
        int v = *st;

        e->m_08 = 0;
        e->m_0B = 1;
        if (v == 0xFF) {
            e->m_04 = -0x7F;
            e->m_00 |= 4;
        } else if (v == 0) {
            e->m_00 &= ~4;
            if (e->m_00 & 8) {
                e->m_04 = 0x7F;
            } else {
                e->m_04 = 0;
            }
        }
        func_8005F480(e, 0x80, v);
    }
}

void func_8005FC40(int *st, Own39 *o, int *i) {
    if (o) {
        Ent39 *e = &o->m_2F0[*i];
        int v = *st;

        e->m_08 = 0;
        e->m_0B = 1;
        if (v == 0xFF) {
            e->m_04 = 0x7F;
            e->m_00 |= 8;
        } else if (v == 0) {
            e->m_00 &= ~8;
            if (e->m_00 & 4) {
                e->m_04 = -0x7F;
            } else {
                e->m_04 = 0;
            }
        }
        func_8005F480(e, 0x20, v);
    }
}

/* The frame's input: the analogue values past 85 as directions, then the pad's buttons. */
void func_8005FCE8(Pad39 *p, Own39 *o, int *i) {
    Ent39 *e;

    if (D_800D5F6C && p->m_08) {
        func_80048CFC(o);
        VCALL39(o, 24, 0);
        VCALL39(o, 23, 0);
        VCALL39(o, 22, 0);
    }
    e = &o->m_2F0[*i];
    if (!o->m_304) {
        Pad39 t;

        func_8005F464(e);
        if (e->m_04 < -84) {
            func_8005F480(e, 0x80, 0xFF);
        } else if (e->m_04 >= 85) {
            func_8005F480(e, 0x20, 0xFF);
        }
        if (e->m_05 < -84) {
            func_8005F480(e, 0x1000, 0xFF);
        } else if (e->m_05 >= 85) {
            func_8005F480(e, 0x4000, 0xFF);
        }
        if (e->m_07 < -84) {
            func_8005F480(e, 0x10, 0xFF);
        } else if (e->m_07 >= 85) {
            func_8005F480(e, 0x40, 0xFF);
        }
        func_8005FAB8(e, (Pad39 *)&e->m_19C);
        t.m_0A = 0;
        t.m_0C = 0;
        t.m_00 = 0;
        t.m_08 = p->m_08;
        t.m_0E = p->m_0E;
        t.m_08 &= ~0x100;
        t.m_0E &= ~0x100;
        // The copy without bit 8 is never used: the pad goes on as it is
        func_8005FAB8(e, p);
        func_8005F638(e);
    }
}

void func_8005FEB0(int *st, Own39 *o, int *i) {
    if (o) {
        Ent39 *e = &o->m_2F0[*i];
        int v = *st;

        if (v == 0xFF) {
            e->m_07 = -0x7F;
            e->m_00 |= 0x100;
        }
        if (v == 0) {
            e->m_07 = 0;
            e->m_00 &= ~0x100;
        }
        e->m_0A = 0;
        func_8005F480(e, 0x10, v);
    }
}

void func_8005FF34(int *st, Own39 *o, int *i) {
    if (o) {
        Ent39 *e = &o->m_2F0[*i];
        int v = *st;

        if (v == 0xFF) {
            e->m_07 = 0x7F;
            e->m_00 |= 0x200;
        }
        if (v == 0) {
            e->m_07 = 0;
            e->m_00 &= ~0x200;
        }
        e->m_0A = 0;
        func_8005F480(e, 0x40, v);
    }
}

void func_8005FFB8(int *st, Own39 *o, int *i) {
    if (o) {
        Ent39 *e = &o->m_2F0[*i];
        int v = *st;

        e->m_09 = 0;
        if (v == 0xFF) {
            e->m_00 |= 0x1;
        }
        if (v == 0) {
            e->m_00 &= ~0x1;
        }
        func_8005F480(e, 0x4000, v);
    }
}

void func_80060038(int *st, Own39 *o, int *i) {
    if (o) {
        Ent39 *e = &o->m_2F0[*i];
        int v = *st;

        e->m_09 = 0;
        if (v == 0xFF) {
            e->m_00 |= 0x2;
        }
        if (v == 0) {
            e->m_00 &= ~0x2;
        }
        func_8005F480(e, 0x8000, v);
    }
}

void func_800600B8(int *st, Own39 *o, int *i) {
    if (o) {
        Ent39 *e = &o->m_2F0[*i];
        int v = *st;

        if (v == 0xFF) {
            e->m_00 |= 0x80;
        }
        if (v == 0) {
            e->m_00 &= ~0x80;
        }
        func_8005F480(e, 0x200, v);
    }
}

void func_80060134(int *st, Own39 *o, int *i) {
    if (o) {
        Ent39 *e = &o->m_2F0[*i];
        int v = *st;

        if (v == 0xFF) {
            e->m_00 |= 0x10;
        }
        if (v == 0) {
            e->m_00 &= ~0x10;
        }
        func_8005F480(e, 0x800, v);
    }
}

void func_800601B0(int *st, Own39 *o, int *i) {
    if (o) {
        Ent39 *e = &o->m_2F0[*i];
        int v = *st;

        if (v == 0xFF) {
            e->m_00 |= 0x20;
        }
        if (v == 0) {
            e->m_00 &= ~0x20;
        }
        func_8005F480(e, 0x400, v);
    }
}

void func_8006022C(int *st, Own39 *o, int *i) {
    if (o) {
        Ent39 *e = &o->m_2F0[*i];
        int v = *st;

        func_8005F480(e, 0x2000, v);
        e->m_0C = v == 0xFE || v == 0xFF;
    }
}

void func_80060298(int *st, Own39 *o, int *i) {
    if (o) {
        int k = *i;
        int v = *st;

        func_8005F480(&o->m_2F0[k], 0x1000, v);
        if (!o->m_304 && (u32)(o->m_378->m_1E08 - 2) < 2 && v == 0xFF) {
            func_8004C430(o, k);
        }
    }
}

void func_80060340(int *st, Own39 *o, int *i) {
    if (o) {
        int k = *i;
        Ent39 *e = &o->m_2F0[k];
        int v = *st;

        func_8005F480(e, 0x100, v);
        e->m_0E = v != 0;
        if (v == 0xFF) {
            Run39 *r = o->m_378;
            Obj39 *b = 0;

            if (k >= 0) {
                b = &r->m_2E8[k];
            }
            b->m_324 = 1;
            func_80073E54(o->m_3F4, b, o->m_3EC);
        }
    }
}

void func_80060410(int *st, Own39 *o, int *i) {
    if (o) {
        Ent39 *e = &o->m_2F0[*i];
        int x = *st;

        e->m_08 = 1;
        e->m_0B = 0;
        e->m_02 &= ~0xC;
        e->m_04 = x * 127 / 98;
        if (x < 0) {
            e->m_00 = (e->m_00 | 4) & ~8;
        } else if (x > 0) {
            e->m_00 = (e->m_00 | 8) & ~4;
        } else {
            e->m_00 &= ~0xC;
        }
    }
}

void func_800604D0(int *st, Own39 *o, int *i) {
    if (o) {
        int x = *st;
        Ent39 *e = &o->m_2F0[*i];
        u16 f = e->m_02 & ~3;

        e->m_02 = f;
        e->m_05 = x * 127 / 98;
        if (e->m_05 >= 64) {
            e->m_02 = f | 2;
            e->m_09 = 1;
        } else if (e->m_05 < -15) {
            e->m_02 = f | 1;
            e->m_09 = 1;
        } else if (e->m_00 & 2) {
            e->m_05 = 0x7F;
        } else if (e->m_00 & 1) {
            e->m_05 = -0x7F;
        } else {
            e->m_05 = 0;
        }
    }
}

/* A value from -98 to 98 scaled to a byte; past 21 either way, a direction's bit. */
void func_800605A4(int *st, Own39 *o, int *i) {
    if (o) {
        int x = *st;
        Ent39 *e = &o->m_2F0[*i];
        u16 f = e->m_02 & ~0x300;

        e->m_02 = f;
        e->m_07 = x * 127 / 98;
        if (e->m_07 >= 22) {
            e->m_02 = f | 0x200;
        } else if (e->m_07 < -21) {
            e->m_02 = f | 0x100;
        } else {
            e->m_07 = 0;
        }
        e->m_0A = 1;
    }
}

void func_80060650(void) {
}

void func_80060658(void) {
}

void func_80060660(void) {
}

/* Start pressed: a choice made when a list is up; else the pause menu, by the race's kind. */
void func_80060668(int *st, Own39 *o, int *i) {
    // A workaround (the permuter): the body in a do/while (0) for the registers
    do {
        if (o && *st == 0xFF) {
            Sub39 *m = o->m_B8;
            int none = m->m_130;

            if (none == -1) {
                Sel39b *l;
                int k;

                if (o->m_304) {
                    m->m_150 = none;
                }
                l = o->m_498;
                k = l->m_00 >> 27;
                if ((u32)k < 7) {
                    int c = l->m_04[k];

                    if (*o->m_464) {
                        func_80017A30(*o->m_464, -1);
                    }
                    func_80019B2C(c, -1);
                    o->m_498->m_00 = (o->m_498->m_00 & 0x7FFFFFF) | 0x38000000;
                    func_8005663C(o);
                } else if (o->m_B8 && o->m_B8->m_170 <= 0) {
                    int f = 1;

                    if (o->m_304) {
                        if (o->m_378->m_1E08 == 4) {
                            D_800CB410 = f;
                        }
                        f = 0;
                    } else if (o->m_378->m_00 & 0xA8) {
                        func_80042FC0(o->m_B8, D_800C718C, 3, 0);
                        func_80040034(o->m_B8, 2);
                    } else {
                        func_80040034(o->m_B8, 1);
                        if (D_800D5FC8 != none || (D_800D5F40 != 8 && D_800D5F40 != 4)) {
                            func_80042FC0(o->m_B8, D_800C719C, 3, 0);
                        } else {
                            func_80042FC0(o->m_B8, D_800C71B0, 3, 0);
                        }
                    }
                    if (f) {
                        int j;

                        VCALL39(o, 22, 0);
                        VCALL39(o, 24, 0);
                        for (j = 0; j < 2; j++) {
                            func_8005F380(&o->m_2F0[j]);
                        }
                    }
                }
            }
        }
    } while (0);
}

void func_800608A8(int *st, Own39 *o, int *i) {
    int buf[4];

    if (o) {
        if (i && o->m_2F0) {
            func_8005F380(&o->m_2F0[*i]);
        }
        if (*st == 0) {
            memset(buf, 0, sizeof(buf));
            buf[0] = 0xFF;
            o->m_B8->m_170 = 0;
            func_80060668(buf, o, i);
        }
    }
}

int func_8006095C(int *a, int *b) {
    int x = *a;
    int y = *b;
    int r = -1;

    if (x >= y) {
        r = y < x;
    }
    return r;
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_39", func_80060980);

void func_80061250(Obj39 *o) {
    func_80061284(o);
    o->m_185 = 0;
    o->m_3E4 = 0;
    o->m_3DD = 0x1A;
}

#ifdef NON_MATCHING
// The vector's stack address: the original computes it for each call, ours keeps it in a saved register (the open problem of chunk_02b)
/* A bike's state reset: its sound stopped, its controls cleared, its cameras placed. */
void func_80061284(Obj39 *o) {
    Lnk39 *l;
    Ctl39 *c;

    o->m_325 = 0;
    o->m_530 = -10000;
    o->m_534 = 0;
    if (o->m_31C) {
        func_80033D4C(o->m_31C, o);
    }
    func_80022BA8(&o->m_3EC);
    o->m_3F4 = 0;
    o->m_187[0] = 0;
    o->m_187[1] = 0;
    o->m_187[2] = 0;
    o->m_187[3] = 0;
    l = &o->m_328;
    c = &l->m_08->m_100;
    c->m_36 &= ~0x1000;
    c = &l->m_08->m_100;
    if (!(c->m_36 & 0x1000)) {
        c->m_0C = c->m_04 ? c->m_04->m_10 : 0;
    }
    l->m_34 = 0;
    o->m_360 = 0;
    o->m_3D8 = 0;
    o->m_3D4 = 0;
    o->m_326 = 0;
    o->m_3D1 = 0;
    o->m_3D2 = 0;
    if (o->m_30) {
        Vec39 v = o->m_30->m_08;

        func_80081F28(o->m_54, &v);
        func_80081F28(o->m_C8, &v);
    }
    o->m_184 = 0;
    o->m_538 = -1;
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_39", func_80061284);
#endif

#ifdef NON_MATCHING
// Registers and order: the original adds the clut last and keeps the frame's width in $t7
/* Frame f's texture coordinates (and clut row) set on the prims. */
void func_8006139C(Anim39 *a, int f) {
    int n = a->m_03;

    if (n) {
        int clut = 0;
        int uv;
        Prim39 **p;
        Uv39 *u;

        if (a->m_04) {
            clut = ((f >> 2) << 6) | (f & 3);
        }
        uv = ((f / a->m_00 * a->m_02) << 8) | (f % a->m_00 * a->m_01);
        u = a->m_0C;
        p = a->m_08;
        for (; n != 0; n--) {
            Prim39 *q = *p++;
            int u0 = u->m_02 + uv;
            int u1 = u->m_04 + uv;
            int u2 = u->m_06 + uv;
            int u3 = u->m_08 + uv;
            int c = u->m_00 + clut;

            q->m_0E = c;
            q->m_0C = u0;
            q->m_10 = u1;
            q->m_14 = u2;
            q->m_16 = u3;
            u++;
        }
    }
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_39", func_8006139C);
#endif
