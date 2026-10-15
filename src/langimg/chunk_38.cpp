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
    u8 m_00[0x170];
    int m_170;
    u8 m_174[0x13];
    Name38 m_187;
    u8 m_192[6];
};
// A bike's body
struct Body38 {
    u8 m_00[0x54];
    struct Bike38 *m_54;
    u8 m_58[0x548];
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
    u8 m_34[0x534];
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
    u8 m_E0[0x18];
    Rec38 m_F8;
    int m_104;
    Blk38b m_108;
    u8 m_11C[0x14];
    int m_130;
};
// The run (chunk_37's Run37)
struct Run38 {
    u32 m_00;
    u8 m_04[0xF0];
    Blk38 m_F4;
    Blk38b m_194;
    u8 m_1A8[0x140];
    Bike38 m_2E8[5];
    u8 m_1DF0[8];
    Rec38 m_1DF8;
    int m_1E04;
    int m_1E08;
};
// The race (chunk_37's Own37)
struct Own38 {
    u8 m_00[0x304];
    int m_304;
    void *m_308;
    u8 m_30C[0x6C];
    Run38 *m_378;
    u8 m_37C[0xC];
    Slot38 *m_388;
};

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
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_38", func_8005D15C);

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

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_38", func_8005EE48);

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
