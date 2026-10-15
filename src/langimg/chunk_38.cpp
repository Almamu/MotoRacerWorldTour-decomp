#include "common.h"

/* The game's code built with GCC 2.91.66, -G8, split addresses
 * (docs/matching/issue-39-langimg-chunk38.md). */

extern "C" {
// A bike's controls (what func_8005F380 clears)
struct Ctl38 {
    short m_00;
    short m_02;
    s8 m_04;
    s8 m_05;
    s8 m_06;
    s8 m_07;
    s8 m_08;
    s8 m_09;
    s8 m_0A;
    s8 m_0B;
    s8 m_0C;
    s8 m_0D;
    s8 m_0E;
    s8 m_0F;
    struct {
        int m_00;
        int m_04;
        int m_08;
    } m_10[32];
    int m_190;
    int m_194;
    int m_198;
    u8 m_19C[8];
    short m_1A4;
    u8 m_1A6[6];
    struct {
        int m_00;
        int m_04;
        int m_08;
        int m_0C;
    } m_1AC[24];
};
// 11 bytes copied from what func_800A09C0 returns
struct Name38 {
    s8 m_00[11];
};
// An element of the race's array at 0x388, 0x198 bytes
struct Slot38 {
    u8 m_00[0x28];
    int m_28;
    u8 m_2C[0x144];
    int m_170;
    u8 m_174[0x13];
    Name38 m_187;
    u8 m_192[6];
};
struct Vec38 {
    int x, y, z;
};
// A set of collision shapes (its entries' table at 0)
struct Coll38 {
    u8 *m_00;
};
// A bike's body
struct Body38 {
    u8 m_00[0x34];
    void *m_34; // its model's matrix
    u8 m_38[0x1C];
    struct Bike38 *m_54;
    u8 m_58[9];
    s8 m_61;
    u8 m_62[0xB6];
    int m_118; // its top speed
    u8 m_11C[0x108];
    Coll38 *m_224;
    Coll38 *m_228;
    u8 m_22C[8];
    Vec38 m_234; // its front contact point
    Vec38 m_240; // its back one
    u8 m_24C[0x1AA];
    s8 m_3F6;
    u8 m_3F7[0x1A9];
    Slot38 *m_5A0;
};
struct Stat38 {
    u8 m_00[0x100];
    s8 *m_100;
};
// A bike, 0x568 bytes (chunk_37's Bike37)
struct Bike38 {
    union {
        u32 m_00;    // flags: bit 6, in the race; bits 1-5, its kind
        u8 m_00b[4]; // 1: its state
    };
    u8 m_04[4];
    short m_08;
    u8 m_0A[0x1E];
    Ctl38 *m_28;
    Stat38 *m_2C;
    Body38 *m_30;
    u8 m_34[0x154];
    s8 m_188;
    u8 m_189[0x3DF];
};
// What func_8005E000 copies from
struct Rec38 {
    int m_00;
    int m_04;
    short m_08;
    short m_0A;
};
struct Blk38 {
    int m_00[0x28];
};
struct Blk38b {
    int m_00[5];
};
struct Cfg38 {
    u8 m_00[0x40];
    Blk38 m_40;
    u8 m_E0[8];
    int m_E8;
    u8 m_EC[4];
    int m_F0;
    u8 m_F4[4];
    Rec38 m_F8;
    int m_104;
    Blk38b m_108;
    u8 m_11C[0x14];
    int m_130;
};
// What the run's settings hold (chunk_36's Hold36)
struct Hold38 {
    u8 m_00[0x52C];
    int m_52C;
    u8 m_530[4];
    u8 m_534[3]; // a colour
};
// The run (chunk_37's Run37)
struct Run38 {
    u32 m_00;
    int m_04; // the laps
    u8 m_08[8];
    Hold38 *m_10;
    u8 m_14[0xE0];
    Blk38 m_F4;
    Blk38b m_194;
    u8 m_1A8[0x140];
    Bike38 m_2E8[5];
    u8 m_1DF0[8];
    Rec38 m_1DF8;
    int m_1E04;
    int m_1E08;
    u8 m_1E0C[0x18];
    s8 m_1E24[2]; // the racers' bikes
    u8 m_1E26[0x13];
    s8 m_1E39;
    u8 m_1E3A[2];
    void *m_1E3C;
    u8 m_1E40[0x118];
    Body38 *m_1F58; // the ghost's
};
// A GCC 2 vtable entry
struct Vt38 {
    short m_delta;
    short m_index;
    void *m_func;
};
struct Mat38 {
    short m[3][3];
    short pad;
    long t[3];
};
// A camera: its matrix, its position at 0xF8
struct Cam38 {
    struct Mat38 m_00;
    u8 m_20[0xD8];
    Vec38 m_F8;
};
struct Ghost38 {
    u8 m_00[8];
    struct Ghm38 *m_08;
};
struct Ghm38 {
    u8 m_00[0x34];
    struct Mat38 *m_34;
};
// What func_8005D15C is given
struct Arg38 {
    u8 m_00[4];
    int m_04;
    int m_08;
    int m_0C;
};
// The HUD's colours (D_800C886C)
struct Hud38 {
    u8 m_00[0x85];
    u8 m_85[3];
    u8 m_88[0x59];
    u8 m_E1[3];
    u8 m_E4[0x88];
    u8 m_16C[3];
};
// The race (chunk_37's Own37)
struct Own38 {
    u8 m_00[0x68];
    Vt38 *m_68;
    u8 m_6C[4];
    int m_70;
    void *m_74;
    int m_78;
    int m_7C;
    int m_80;
    u8 m_84[0x26C];
    u8 *m_2F0;
    int m_2F4;
    int m_2F8;
    struct Cfg38 *m_2FC;
    u8 m_300[4];
    int m_304;
    int *m_308;
    int m_30C;
    u8 m_310[0x34];
    int m_344;
    u8 m_348[0x30];
    Run38 *m_378;
    u8 m_37C[0xC];
    Slot38 *m_388;
    u8 m_38C[0x60];
    void *m_3EC;
    u8 m_3F0[0x5C];
    Cam38 *m_44C[3];
    u8 m_458[0xC];
    Ghost38 *m_464;
    u8 m_468[8];
    s8 m_470[2];
    u8 m_472[0x12];
    void *m_484;
};

extern int D_800CAE80;
extern int D_800C5E14;
extern int D_800D5F6C, D_800D5F38, D_800D5F44, D_800D5EC0, D_800D5EC4;
extern int D_800C873C, D_800C4938, D_800C8C68, D_800CBE90, D_800CBE94;
extern int D_800CAE90, D_800CB0A0; // tables, each addressed as one la
extern int D_800D5E70[];
extern u8 D_800D5394[][0x98], D_800D53E0[][0x98];
extern int D_800D4974[];
extern Name38 D_800C6AD4; // "n_curmotoX"
extern Hud38 *D_800C886C;
int func_8004AB7C(struct Cfg38 *r);
int func_80050E88(int a);
void func_80044D0C(Own38 *o, Arg38 *c);
void func_8006FCF8(int *a);
void func_8006FE5C(int *a);
void func_8006FF0C(int *a);
void func_800505BC(Run38 *r, Arg38 *c);
int func_8001B76C(void *c);
void func_80050A4C(Run38 *r);
void *func_80017E10(void *a, Name38 *name, int n);
void func_80016234(void *x, void *m, int a);
void func_8005DB70(Own38 *o, int i);
void func_80064AA0(Body38 *m, Own38 *o, struct Bike38 *b, int k);
void func_8001B6B4(void *c, Own38 *o);
int func_80017FB4(void *a);
void func_80017CF0(void *a, int b, Body38 *m);
void func_800614C0(Own38 *o, int i);
void func_80061510(Own38 *o, Body38 *g);
void func_8006F824(int i, struct Bike38 *b);
void func_800542A4(Own38 *o);
void func_8005C648(Own38 *o);
void func_80051060(struct Bike38 *b, Own38 *o);
void func_800550C0(Own38 *o);
void func_80086A50(void *a, int b, int c);
void func_8006DF68(void);
int func_8005D15C(Own38 *o, Arg38 *c);
extern int D_800CB3C8;
extern int D_800CB3D0;
extern int D_800D5F40;
extern int D_800D4898;
extern int D_800D6100; // the frame's time
extern int D_800CB410;
extern int D_800C7764;
extern int D_800D5FD8;
extern int D_800C8DBC;

void func_8008788C(int *a, int b);
void func_8008784C(int *a);
void func_800643E4(Body38 *s);
void func_80024584(Body38 *s);
void func_80024824(Body38 *s);
void func_80024168(Body38 *s);
Name38 *func_800A09C0(int *a);
void func_8006976C(u8 *a, int b, Slot38 *c);
void func_80030C98(Body38 *s, short t);
int func_8006C094(void *m, int a, Ctl38 *c);
void func_8006C644(void *m, Body38 *s);
int func_8006C064(void *m, short t);
int func_8006C110(void *m);
int func_8006C4A0(void *m, Ctl38 *c, short *v);
void *func_8006BFC0(void *m);
int func_8006C694(void *m, Body38 *s);
void func_8005108C(Bike38 *b, int a);
void func_8005F464(Ctl38 *c);
void func_8005DAF4(void);
void func_8005DB30(void);
void func_8005DB70(Own38 *o, int k);
int func_8005DC10(Own38 *o, Body38 *s, int kind, int k);
int func_8005DD70(Own38 *o, int k);
void func_8005DE2C(Own38 *o, int *f, Bike38 *b);
int func_8005DF6C(Own38 *o, int f, Ctl38 *c);
int func_8005E000(Own38 *o, Cfg38 *c);
int func_8005E0D8(Own38 *o);
int func_8005E1D0(Own38 *o);
void func_8005E2A8(Own38 *o);
Ctl38 *func_8005F358(Ctl38 *c);
void func_8005F380(Ctl38 *c);

// A bike's settings (0x3C bytes) and a rider's (0x54), by index
struct Set38 {
    int m_00[0xF];
};
struct Rider38 {
    int m_00[0x15];
};
struct Pick38 {
    u8 m_00[8];
    Set38 m_08;
    Rider38 m_44;
};
// The game's options (chunk_51's)
struct Opts38 {
    u8 m_00[0x118];
    int m_118, m_11C; // each player's bike, or -1
    int m_120, m_124; // each player's rider, or -1
    int m_128, m_12C;
    u8 m_130[0x1574];
    int m_16A4; // two players
};
extern Opts38 *D_800BC884;
extern Pick38 *D_800C6FB8; // the picks by index (indexed by bytes)
extern Set38 D_800C71C4, D_800C725C;
extern Rider38 D_800C7200, D_800C7298;
extern int D_800D11B8, D_800D11BC;
void *memset(void *d, int c, int n);
void func_800AFB98(int n);
void func_8005F0D4(void);
Vec38 *func_80099D48(Vec38 *v, int shift); // v >> shift
int func_8001B350(Coll38 *s, Vec38 *v);
void func_80096E28(void *e, Vec38 *out, int shift);
int func_80025614(Body38 *m, int front, int back, Vec38 n0, Vec38 n1, Vec38 p0, Vec38 p1, int k);
int func_8005EE48(void *o, struct Bike38 *b);
}

static inline void VecCopyL38(Vec38 *d, Vec38 *s) {
    int x = s->x;
    int y = s->y;
    int z = s->z;

    d->x = x;
    d->y = y;
    d->z = z;
}

// A colour's three bytes copied
static inline void Rgb38(u8 *d, u8 *c) {
    d[0] = c[0];
    d[1] = c[1];
    d[2] = c[2];
}

// The run's bike k, or 0
static inline Bike38 *Bike38At(Run38 *r, int k) {
    Bike38 *b = 0;

    if (k >= 0) {
        b = &r->m_2E8[k];
    }
    return b;
}

#ifdef NON_MATCHING
// Written in full: with the tables (D_800CAE90, D_800CB0A0) declared as small objects their addresses are one `la` each, rebuilt for each call as the original's, and the size is the original's (614 instructions); left: the race and its argument in other saved registers from the start ($s4/$s1 against $s2/$s0) and the cameras' copy loop kept in other registers (504 off, from 529).
int func_8005D15C(Own38 *o, Arg38 *c) {
    int r = 1;
    int i, n;
    Run38 *run;

    D_800C5E14 = D_800CAE80;
    if (D_800D5F6C == 2) {
        if (o->m_2FC && func_8004AB7C(o->m_2FC) && func_8005E000(o, o->m_2FC)) {
            *o->m_308 = o->m_2FC->m_F0;
            o->m_304 = r;
        }
        c->m_04 = o->m_2FC->m_E8;
        c->m_0C = func_80050E88(D_800D5F38);
        c->m_08 = D_800D5F44;
    }
    D_800D5EC0 = 0;
    D_800D5EC4 = 0;
    D_800C873C = o->m_70;
    D_800C4938 = (int)o->m_74;
    D_800C8C68 = o->m_78;
    D_800CBE90 = o->m_7C;
    o->m_2F8 = 0;
    D_800CBE94 = o->m_80;
    func_80044D0C(o, c);
    o->m_378->m_04 = c->m_08;
    {
        Vt38 *v = &o->m_68[25];

        r = ((int (*)(void *, Arg38 *))v->m_func)((char *)o + v->m_delta, c);
    }
    o->m_30C = -1;
    if (o->m_464->m_08) {
        Mat38 *src = o->m_464->m_08->m_34;
        Cam38 **pc = &o->m_44C[2];

        for (i = 2; i >= 0; i--, pc--) {
            Vec38 v;

            (*pc)->m_00 = *src;
            (*pc)->m_00.t[0] = (*pc)->m_00.t[1] = (*pc)->m_00.t[2] = 0;
            VecCopyL38(&v, (Vec38 *)src->t);
            VecCopyL38(&(*pc)->m_F8, &v);
        }
    }
    run = o->m_378;
    run->m_1E39 = 0;
    o->m_378->m_1E3C = 0;
    run = o->m_378;
    if (!(run->m_00 & 0xA8)) {
        if (run->m_00 & 0x103) {
            run->m_1E3C = D_800D5E70;
        } else {
            if (D_800D5F40 == 4) {
                run->m_1E3C = D_800D5394[D_800D5F38];
            } else {
                run->m_1E3C = D_800D53E0[D_800D5F38];
            }
            o->m_378->m_1E39 = 2;
        }
        run = o->m_378;
    }
    if (!run->m_1E3C || !D_800D5F6C) {
        run->m_1E39 = 0;
    }
    o->m_304 = 0;
    if (o->m_378->m_00 & 0x102) {
        func_8006FCF8(&D_800CAE90);
        func_8006FE5C(&D_800CAE90);
        func_8006FCF8(&D_800CB0A0);
        func_8006FF0C(&D_800CB0A0);
    }
    func_800505BC(o->m_378, c);
    if (!func_8001B76C(o->m_3EC)) {
        Bike38 *b = o->m_378->m_2E8;

        for (i = 0; i < 5; i++, b++) {
            if ((b->m_00 & 0x7E) == 0x44) {
                b->m_00 &= ~0x40;
            }
        }
    }
    func_80050A4C(o->m_378);
    for (i = 0; i < 5; i++) {
        Name38 name;
        void *x;

        name = D_800C6AD4;
        name.m_00[9] = '1' + i;
        x = func_80017E10(o->m_74, &name, 10);
        if (x) {
            Bike38 *b = Bike38At(o->m_378, i);
            Body38 *m = 0;

            if (b && ((b->m_00 >> 6) & 1)) {
                m = b->m_30;
            }
            if (m) {
                func_80016234(x, m->m_34, 0);
            }
        }
    }
    for (i = 0; i < 5; i++) {
        if ((o->m_378->m_2E8[i].m_00 >> 6) & 1) {
            func_8005DB70(o, i);
        }
    }
    run = o->m_378;
    for (i = 0; i < 2; i++) {
        Bike38 *b = Bike38At(run, run->m_1E24[i]);

        if (b) {
            Body38 *m = b->m_30;

            if ((u32)(run->m_10->m_52C - 1) < 3 && D_800D5F38 != 16 && D_800D5F38 != 17 &&
                D_800D5F40 != 4) {
                m->m_3F6 = D_800D4974[i] == 0;
            } else {
                m->m_3F6 = 1;
            }
            run = o->m_378;
        }
    }
    if (run->m_1F58) {
        Bike38 *b = Bike38At(run, run->m_1E24[0]);

        run->m_1F58->m_54 = b;
        func_8005DC10(o, o->m_378->m_1F58, 2, b->m_08);
        run = o->m_378;
    }
    {
        Slot38 *slot = Bike38At(run, run->m_1E24[0])->m_30->m_5A0;
        Bike38 *b = run->m_2E8;

        n = 0;
        for (i = 0; i < 5; i++, b++) {
            if ((b->m_00 & 0x7E) == 0x44) {
                func_80064AA0(b->m_30, o, b, n);
                n++;
                b->m_30->m_118 = slot->m_28;
            }
        }
    }
    if (o->m_378->m_1F58) {
        func_80064AA0(o->m_378->m_1F58, o, o->m_378->m_1F58->m_54, 0);
    }
    func_8001B6B4(o->m_3EC, o);
    o->m_344 = func_80017FB4(o->m_74);
    for (i = 0; i < 5; i++) {
        Body38 *m = o->m_378->m_2E8[i].m_30;

        if (m) {
            func_80017CF0(o->m_74, o->m_344, m);
            o->m_344 = func_80017FB4(o->m_74);
        }
    }
    if (o->m_378->m_1F58) {
        func_80017CF0(o->m_74, o->m_344, o->m_378->m_1F58);
        o->m_344 = func_80017FB4(o->m_74);
    }
    for (i = 0; i < 5; i++) {
        if ((o->m_378->m_2E8[i].m_00 >> 6) & 1) {
            func_800614C0(o, i);
        }
    }
    if (o->m_378->m_1F58) {
        func_80061510(o, o->m_378->m_1F58);
    }
    for (i = 0; i < 5; i++) {
        func_8006F824(i, &o->m_378->m_2E8[i]);
    }
    func_800542A4(o);
    {
        Bike38 *b = o->m_378->m_2E8;
        int off = 0;

        for (i = 0; i < 5; i++, b++) {
            if ((b->m_00 & 0x7E) == 0x42) {
                b->m_28 = (Ctl38 *)(o->m_2F0 + off);
                off += 0x330;
            }
        }
    }
    for (i = 1; i >= 0; i--) {
        o->m_470[i] = -1;
    }
    func_8005C648(o);
    o->m_2F4 = 1;
    {
        Hud38 *h = D_800C886C;
        u8 *col = h->m_16C;

        col[0] = o->m_378->m_10->m_534[0];
        col[1] = o->m_378->m_10->m_534[1];
        col[2] = o->m_378->m_10->m_534[2];
        Rgb38(h->m_85, col);
        Rgb38(h->m_E1, col);
    }
    for (i = 0; i < 5; i++) {
        func_80051060(&o->m_378->m_2E8[i], o);
    }
    func_800550C0(o);
    if (o->m_484) {
        func_80086A50(o->m_484, 20, 150);
    }
    D_800C5E14 = 0;
    ((void (*)(Own38 *))func_8005F0D4)(o);
    func_8006DF68();
    return r;
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_38", func_8005D15C);
#endif

void func_8005DAF4(void) {
    if (--D_800CB3C8 == 0) {
        func_8008788C(&D_800CB3D0, 2);
    }
}

void func_8005DB30(void) {
    if (++D_800CB3C8 == 1) {
        func_8008784C(&D_800CB3D0);
    }
}

void func_8005DB70(Own38 *o, int k) {
    Run38 *r = o->m_378;
    Bike38 *b = 0;
    Body38 *s;

    if (k >= 0) {
        b = &r->m_2E8[k];
    }
    s = b->m_30;
    if (b->m_28) {
        func_8005F380(b->m_28);
    }
    s->m_54 = b;
    func_8005DC10(o, s, (int)(b->m_00 << 26) >> 27, b->m_08);
}

#ifdef NON_MATCHING
// Registers: the original tests the race's mode in $v1 against constants in $v0; ours has the mode in $a0 (7 off)
int func_8005DC10(Own38 *o, Body38 *s, int kind, int k) {
    int r = 0;
    Name38 *n;

    if (kind == 2) {
        r = 1;
        func_800643E4(s);
    } else if (kind == 1) {
        if (o->m_378->m_00 == 8 || o->m_378->m_00 == 4 || o->m_378->m_00 == 0x20 ||
            o->m_378->m_00 == 0x10 || D_800D5F40 == 1 || D_800D5F40 == 3) {
            k = 0;
        }
        s->m_5A0 = &o->m_388[k];
        n = func_800A09C0(&D_800D4898);
        if (n) {
            s->m_5A0->m_187 = *n;
            s->m_5A0->m_170 = 1;
            func_8006976C(s->m_5A0->m_174, s->m_5A0->m_170, s->m_5A0);
        }
        func_80024824(s);
        func_80024168(s);
        func_80024584(s);
        r = 1;
    }
    return r;
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_38", func_8005DC10);
#endif

int func_8005DD70(Own38 *o, int k) {
    int ok = 0;
    Run38 *r = o->m_378;
    Bike38 *b = 0;
    Body38 *s;

    if (k >= 0) {
        b = &r->m_2E8[k];
    }
    s = b->m_30;
    if (*b->m_2C->m_100) {
        int kind = (int)(b->m_00 << 26) >> 27;

        if (kind == 2) {
            ok = 1;
            func_800643E4(s);
        } else if (kind == 1) {
            ok = 1;
            func_80024584(s);
        }
    }
    return ok;
}

#ifdef NON_MATCHING
// The original loads the run's word at 0x1E08 before the last call and doesn't use it; GCC drops the load unless it's volatile, and keeps the race in $a3 rather than a saved register (39 off; the parameters copied into locals took it from 83)
void func_8005DE2C(Own38 *o_p, int *f_p, Bike38 *b_p) {
    Own38 *o = o_p;
    int *f = f_p;
    Bike38 *b = b_p;
    Ctl38 *c = b->m_28;

    *f = (short)(c->m_02 | c->m_00);
    c->m_02 = 0;
    if ((*f & 4) && c->m_04 >= 0) {
        *f &= ~4;
    }
    if ((*f & 8) && c->m_04 <= 0) {
        *f &= ~8;
    }
    if (!(*f & 0xC)) {
        c->m_04 = 0;
    }
    switch (b->m_00b[1]) {
    case 0:
    case 2:
        break;
    case 1:
        *f |= 2;
        break;
    case 3:
    case 4:
        *f = 2;
        c->m_09 = 0;
        c->m_05 = -0x7F;
        break;
    }
    func_8005DF6C(o, *f, c);
    func_80030C98(b->m_30, D_800D6100);
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_38", func_8005DE2C);
#endif

int func_8005DF6C(Own38 *o, int f, Ctl38 *c) {
    int i;
    Bike38 *b;

    if (!o->m_308) {
        return 0;
    }
    if (!(o->m_378->m_00 & 0x54) || o->m_304) {
        return 1;
    }
    i = 0;
    b = o->m_378->m_2E8;
    do {
        if ((b->m_00 & 0x7E) == 0x42) {
            func_8006C094(o->m_308, f, c);
            break;
        }
        b++;
    } while (++i < 5);
    return 1;
}

static inline void func_8005E000_cpy(Rec38 *d, Rec38 *s) {
    d->m_00 = s->m_00;
    d->m_04 = s->m_04;
    d->m_08 = s->m_08;
    d->m_0A = s->m_0A;
}

#ifdef NON_MATCHING
// The record's copy: the original loads and stores its two words at their offsets, then its two halves through the records' addresses, the result in $v1; ours takes the source's address after the first word
int func_8005E000(Own38 *o, Cfg38 *c) {
    int r = 0;

    if (c) {
        o->m_378->m_F4 = c->m_40;
        o->m_378->m_194 = c->m_108;
        func_8005E000_cpy(&o->m_378->m_1DF8, &c->m_F8);
        o->m_378->m_1E04 = c->m_104;
        D_800C8DBC = c->m_130;
        r = 1;
    }
    return r;
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_38", func_8005E000);
#endif

int func_8005E0D8(Own38 *o) {
    int r = 0;
    int i;
    Bike38 *b;

    if (!o->m_308) {
        return 0;
    }
    if (!(o->m_378->m_00 & 0x54)) {
        return 0;
    }
    if (o->m_304) {
        return 0;
    }
    i = 0;
    b = o->m_378->m_2E8;
    do {
        int one = 1;

        if ((b->m_00 >> 6) & 1 && (int)(b->m_00 << 26) >> 27 == one) {
            int t = D_800D6100;

            if (t) {
                func_8006C644(o->m_308, b->m_30);
                func_8006C064(o->m_308, t);
                r = func_8006C110(o->m_308);
            }
            break;
        }
        b++;
    } while (++i < 5);
    return r;
}

int func_8005E1D0(Own38 *o) {
    short v;
    int r = -1;
    int i;
    Bike38 *b;

    if (o->m_304) {
        int one = 1;

        i = 0;
        b = o->m_378->m_2E8;
        do {
            if ((b->m_00 >> 6) & 1 && (int)(b->m_00 << 26) >> 27 == one) {
                if (!D_800CB410 && func_8006C4A0(o->m_308, b->m_28, &v)) {
                    r = v;
                    func_8006BFC0(o->m_308);
                } else {
                    func_8005108C(b, 3);
                }
                break;
            }
            b++;
        } while (++i < 5);
    }
    return r;
}

void func_8005E2A8(Own38 *o) {
    int i;
    Bike38 *b;

    if (o->m_304) {
        i = 0;
        b = o->m_378->m_2E8;
        do {
            int one = 1;
            int two = 2;

            if ((b->m_00 >> 6) & 1 && (int)(b->m_00 << 26) >> 27 == one) {
                if (!D_800D6100) {
                    continue;
                }
                func_8006C694(o->m_308, b->m_30);
                if (D_800C7764 > 0x28 && b->m_00b[1] == two) {
                    D_800D5FD8 |= 2;
                    func_8005108C(b, 3);
                }
                break;
            }
            b++;
        } while (++i < 5);
    }
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_38", func_8005E3A4);

int func_8005EE48(void *o, Bike38 *b) {
    Body38 *m = b->m_30;
    Vec38 a, c, n0, n1, p0, p1;
    int r = 0;

    a = m->m_234;
    func_80099D48(&a, 5);
    c = m->m_240;
    func_80099D48(&c, 5);
    if (m->m_224 && m->m_228) {
        int again = 0;
        Vec38 *pa;

        {
            int i, j;

        top:
            pa = &a;
            VecCopyL38(&p0, pa);
            i = func_8001B350(m->m_224, &p0);
            if (i >= 0) {
                func_80096E28(m->m_224->m_00 + (i * 4 + 0x1C), &n0, 26);
            }
            VecCopyL38(&p1, &c);
            j = func_8001B350(m->m_228, &p1);
            if (j >= 0) {
                func_80096E28(m->m_228->m_00 + (j * 4 + 0x1C), &n1, 26);
            }
            if (i < 0 && j < 0) {
                goto out;
            }
            r = 1;
            if (m->m_61) {
                goto out;
            }
            {
                int v = func_80025614(m, i >= 0, j >= 0, n0, n1, p0, p1, 0x333);

                if (b->m_188 || !v || again) {
                    goto out;
                }
            }
            again = 1;
            VecCopyL38(pa, &m->m_234);
            func_80099D48(pa, 5);
            VecCopyL38(&c, &m->m_240);
            func_80099D48(&c, 5);
            goto top;
        }
    }
out:
    return r;
}

// The pick of index i
static inline Pick38 *Pick38At(int i) {
    return *(Pick38 **)((u8 *)&D_800C6FB8 + (i << 2));
}

void func_8005F0D4(void) {
    D_800D11B8 = D_800BC884->m_128;
    if (D_800BC884->m_118 != -1) {
        Set38 *d = &D_800C71C4;

        *d = Pick38At(D_800BC884->m_118)->m_08;
    }
    if (D_800BC884->m_120 != -1) {
        Rider38 *d = &D_800C7200;

        *d = Pick38At(D_800BC884->m_120)->m_44;
    }
    if (D_800BC884->m_16A4) {
        D_800D11BC = D_800BC884->m_12C;
        if (D_800BC884->m_11C != -1) {
            Set38 *d = &D_800C725C;

            *d = Pick38At(D_800BC884->m_11C)->m_08;
        }
        if (D_800BC884->m_124 != -1) {
            Rider38 *d = &D_800C7298;

            *d = Pick38At(D_800BC884->m_124)->m_44;
        }
        func_800AFB98(2);
    } else {
        if (D_800BC884->m_11C != -1) {
            memset(&D_800C725C, 0, sizeof(Set38));
        }
        if (D_800BC884->m_124 != -1) {
            memset(&D_800C7298, 0, sizeof(Rider38));
        }
        func_800AFB98(1);
    }
}

Ctl38 *func_8005F358(Ctl38 *c) {
    func_8005F380(c);
    return c;
}

void func_8005F380(Ctl38 *c) {
    int i;

    c->m_0B = 1;
    c->m_08 = 0;
    c->m_09 = 0;
    c->m_0A = 0;
    c->m_0C = 0;
    c->m_00 = 0;
    c->m_02 = 0;
    c->m_04 = 0;
    c->m_05 = 0;
    c->m_06 = 0;
    c->m_07 = 0;
    c->m_0D = -1;
    c->m_0E = 0;
    c->m_0F = 0;
    c->m_190 = 0;
    c->m_194 = 0;
    for (i = 0; i < 32; i++) {
        c->m_10[i].m_00 = 0;
        c->m_10[i].m_04 = 0;
        c->m_10[i].m_08 = 0;
    }
    for (i = 0; i < 24; i++) {
        c->m_1AC[i].m_00 = 0;
        c->m_1AC[i].m_04 = -1;
        c->m_1AC[i].m_08 = -1;
        c->m_1AC[i].m_0C = -1;
    }
    c->m_198 = 0;
    c->m_1A4 = 0;
    func_8005F464(c);
}
