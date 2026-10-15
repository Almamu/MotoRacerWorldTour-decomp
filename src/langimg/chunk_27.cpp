#include "common.h"

/* A class on chunk_23's named objects, its destructor and its handlers,
 * written as plain functions on a struct
 * (docs/matching/issue-28-langimg-chunk27.md). */

extern "C" {
// A GCC 2 vtable entry
struct VtEntry27 {
    short m_delta;
    short m_index;
    int (*m_func)(void *self);
};

struct Stage27;

// Another named object, found by its state
struct Peer27 {
    u8 m_00[8];
    int m_08;
    u8 m_0C[0x24];
    u8 m_30[0x38];       // chunk_59's grid of tiles
    VtEntry27 *m_vtable; // 0x68
    u8 m_6C[0x30];
    void *m_9C;
    u8 m_A0[0xC0];
    int m_160;
    int m_164;
    u8 m_168[4];
    int m_16C;
    u8 m_170[4];
    void (*m_174)(void);
    Stage27 *m_178;
    int m_17C;
    int m_180;
};

// A tile (chunk_66's object): a racer's slot at 0xA0
struct Tile27 {
    u8 m_00[0x9C];
    void *m_9C;
    u8 m_A0[0x50];
    int m_F0;
    int m_F4;
};

// The race (what m_378 points at)
struct Race27 {
    int m_00; // flags
    u8 m_04[0x1E38];
    void *m_1E3C;
};

// A racer (chunk_05's, 0x184 bytes)
struct Elem27 {
    u8 m_00[0x184];
};

// What m_A4 points at: a stage
struct Stage27b {
    u8 m_00[0xFC];
    int m_FC;
    int m_100;
};
struct Stage27c {
    u8 m_00[0x1C];
    int m_1C;
};
struct Stage27 {
    u8 m_00[4];
    int m_04;
    int m_08;
    u8 m_0C[0x120];
    int m_12C;
    u8 m_130[2];
    short m_132;
    u8 m_134[0x28];
    int *m_15C;
    int *m_160;
    u8 m_164[0x92C];
    int m_A90; // the stage's state
    u8 m_A94[4];
    Stage27b *m_A98;
    Stage27c *m_A9C;
};

// The object
struct Obj27 {
    u8 m_00[0x18];
    int m_state; // 0x18
    u8 m_1C[0x44];
    int m_60;
    int m_64;
    VtEntry27 *m_vtable; // 0x68
    int m_6C;
    int m_70, m_74;
    struct Set27 *m_78; // chunk_59's voices
    int m_7C, m_80;
    u8 m_84[0x1C];
    void *m_A0;
    Stage27 *m_A4;
    void *m_A8;
    u8 m_AC[8];
    int m_B4;
    int m_B8;
    int m_BC[2]; // the players' tiles
    int m_C4[3]; // and the others'
    u8 m_D0[0x220];
    void *m_2F0;
    u8 m_2F4[0x14];
    void *m_308;
    u8 m_30C[0x3C];
    int m_348;
    u8 m_34C[0x2C];
    Race27 *m_378;
    u8 m_37C[0xC0];
    void *m_43C[2];
    void *m_444[3];
    int m_450;
    int m_454;
    u8 m_458[0x44];
    Elem27 m_49C[2];
    Elem27 m_7A4[3];
    u8 m_C30[4]; // chunk_56's object
};

// An object on Cobjet: its vtable at 0x50
struct Obj27b {
    u8 m_00[0x50];
    void *m_50;
};

#define VCALL(o, i) ((o)->m_vtable[i].m_func((char *)(o) + (o)->m_vtable[i].m_delta))
#define VCALL1(o, i, a) \
    (((int (*)(void *, int))(o)->m_vtable[i].m_func)((char *)(o) + (o)->m_vtable[i].m_delta, a))

extern int D_800CBC94[1];
extern int D_800CABC0;
extern u8 D_800C5CC8[]; // vtables
extern VtEntry27 D_800C5E50[];
extern int D_800D5F6C;
extern int D_800D5F40;
extern int D_800D5FC8;
extern int D_800D4898;
void CobjetDtor27(void *o, int f) asm("_._6Cobjet");
void __builtin_vec_delete(void *p);
Peer27 *func_80078FC4(int *list, int s);
int func_8003FE1C(Obj27 *o);
void func_8003FCF8(Obj27 *o, int f);
int func_80044DB8(Obj27 *o);
void func_80044F34(Obj27 *o);
void func_8003B850(void *a, int s);
void func_8003B734(void *a, int b, int c);
int func_80045168(void *a, int b, int c, int d, ...);
void func_800792DC(Peer27 *p);
void func_8001D180(Elem27 *e, int f);
void func_800816B4(void *p, int f);
void func_8006BE10(void *p, int f);
void func_800A0248(void *p);
void func_80050850(Race27 *r, int a);
void func_800A12C4(int *a);
int func_800A0D48(int *a);
int func_8004B900(Obj27 *o, int a);
int func_8004B844(Obj27 *o, int a);
int func_80044F9C(Obj27 *o, int a, int b);
void func_80087900(struct Set27 *s, int a, int b);
int func_800B5A1C(void);
int func_800A5DA4(const char *fmt, ...);
void func_8003D60C(void);
extern char D_800C5BDC[];
int func_80048824(Obj27 *o);
void func_800481E0(Obj27 *o);
struct Buf27; // chunk_58's buffer
// What D_800C9CEC points at: a buffer at 0x120
struct Snd27 {
    u8 m_00[0x120];
    u8 m_120[0x14];
};
extern Snd27 *D_800C9CEC;
extern void *D_800C5868;
extern void *D_800D6098;
extern int D_800C89E8;
extern Peer27 *D_800C886C;
extern int D_800D5FCC[2]; // and D_800D5FD0
extern int D_800C873C, D_800C4938, D_800C8C68, D_800CBE90, D_800CBE94;
extern char D_800C5BB8[], D_800C5BC8[];
void func_800A67E8(int a);
void func_8006C82C(void);
void func_80086EC0(void *b);
void func_80086E7C(void *b, int f);
void __builtin_delete(void *p);
void free(void *p);
void func_800AFC0C(int a, Obj27 *o);
void func_8008107C(int a, int b);
void func_8004BA04(int a);
void func_8009D3B8(void);
int func_800963BC(void);
void func_800A6650(char *name);
int func_80048EC4(Obj27 *o);
void func_8001D1C4(Elem27 *e, void *slot);
Tile27 *func_800891E8(void *g, int i);
extern Elem27 D_800CA7D8;
int func_800480EC(Obj27 *o);
int func_8004818C(Obj27 *o);
int func_8004845C(Obj27 *o);
void func_800487D0(Obj27 *o);
void func_80048980(Obj27 *o);
void func_800489E4(Obj27b *o, int f);
void func_80048A04(Obj27b *o, int f);
void func_80048CF4(int a, int b, int *p, int v);
void func_80048CFC(Obj27 *o);
void func_80048DD0(Obj27 *o, int f);
int func_800490C8(Obj27 *o);
struct Hd27 {
    u8 m_00[0x14];
    int m_14;
};
extern int D_800D5F64, D_800D5F68, D_800D49EC, D_800D49E8;
extern int D_800D496C, D_800D4970, D_800D5F50, D_800D5F54;
extern int D_800C57EC[], D_800C57F8[];
extern int D_800CB2C0;
void func_80044DFC(Obj27 *o);
void func_8003BF0C(Stage27 *s);
void func_8003E3AC(Stage27 *s);
void func_8004AC78(int a);
void func_8004AEDC(void);
void func_8004B480(void);
Hd27 *func_80078FE8(int *list, int s);
int func_80048494(Obj27 *o);
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_27", func_80046F2C);

int func_800480EC(Obj27 *o) {
    Peer27 *p = func_80078FC4(D_800CBC94, o->m_state);
    int r = VCALL1(o, 20, 1);

    if (r) {
        ((Tile27 *)VCALL1(p, 14, o->m_A4->m_08))->m_9C = o->m_A0;
    }
    return r;
}

int func_8004818C(Obj27 *o) {
    int v = VCALL(o, 21);
    int r = 0;

    if (v) {
        r = func_8003FE1C(o) != 0;
    }
    return r;
}

/* The race over: what it made freed, the settings kept. */
void func_800481E0(Obj27 *o) {
    Snd27 *b;
    Stage27 *a;

    func_800A67E8(0);
    func_8006C82C();
    if ((b = D_800C9CEC)) {
        func_80086EC0(b->m_120);
        func_80086E7C(b->m_120, 2);
        __builtin_delete(b);
        D_800C9CEC = 0;
    }
    func_800AFC0C(o->m_60, o);
    if (D_800C5868) {
        __builtin_vec_delete(D_800C5868);
        D_800C5868 = 0;
    }
    if (D_800D6098) {
        __builtin_delete(D_800D6098);
        D_800D6098 = 0;
    }
    if (o->m_A0) {
        __builtin_delete(o->m_A0);
        o->m_A0 = 0;
    }
    if (D_800C89E8) {
        func_8008107C(D_800C89E8, 3);
        D_800C89E8 = 0;
    }
    if ((a = o->m_A4)) {
        if (a->m_15C) {
            __builtin_vec_delete(a->m_15C);
            o->m_A4->m_15C = 0;
        }
        if (o->m_A4->m_160) {
            __builtin_vec_delete(o->m_A4->m_160);
            o->m_A4->m_160 = 0;
        }
    }
    if (o->m_A8) {
        free(o->m_A8);
        o->m_A8 = 0;
    }
    o->m_78 = 0;
    o->m_70 = 0;
    o->m_7C = 0;
    o->m_80 = 0;
    o->m_A4 = 0;
    D_800D5FCC[0] = 1;
    if (o->m_B4) {
        D_800D5FCC[1] = 1;
    }
    if (!o->m_B8) {
        func_8004BA04(o->m_B4 == 0);
    }
    func_8009D3B8();
    VCALL(D_800C886C, 13);
    func_800963BC();
    D_800C873C = o->m_70;
    D_800C4938 = o->m_74;
    D_800C8C68 = (int)o->m_78;
    D_800CBE90 = o->m_7C;
    D_800CBE94 = o->m_80;
    if (o->m_B8) {
        func_800A5DA4(D_800C5BB8);
        func_800A6650(D_800C5BC8);
        func_8004BA04(1);
        o->m_B8 = 0;
    }
}

int func_8004845C(Obj27 *o) {
    func_80044DB8(o);
    func_8003B850(o->m_A4, o->m_state);
    return 1;
}

#ifdef NON_MATCHING
// The demo index's clamp: the original stores the clamped value to D_800D5F64 before the two tables' loads; GCC moves the store after them, which keeps the value in another register (27 off). The clamp itself is an if (v >= 0) around the upper bound, the stage read through a local.
int func_80048494(Obj27 *o) {
    int s;

    func_80044DFC(o);
    func_8003BF0C(o->m_A4);
    {
        Stage27 *a = o->m_A4;

        a->m_04 = o->m_64;
        s = a->m_A90;
    }
    switch (s) {
    case 4:
        func_800AFC0C(o->m_60, o);
        func_8003E3AC(o->m_A4);
        o->m_A4->m_A90 = 3;
        break;
    case 7: {
        func_800487D0(o);
        D_800D49EC = 10;
        {
            int v = D_800D5F64;
            int r;

            if (v >= 0) {
                r = 2;
                if (v < 3) {
                    r = v;
                }
            } else {
                r = 0;
            }
            D_800D5F64 = r;
            D_800D5F68 = D_800C57F8[r];
            func_8004AC78(D_800C57EC[r]);
        }
        if (++D_800D5F64 >= 3) {
            D_800D5F64 = 0;
        }
        break;
    }
    case 6:
        if (o->m_B4) {
            if (o->m_BC[0]) {
                if (o->m_A4->m_132 >= o->m_A4->m_12C) {
                    VCALL1(D_800C886C, 4, 0);
                    func_800487D0(o);
                    o->m_B8 = 1;
                    o->m_BC[0] = 0;
                    func_80045168(&D_800CABC0, 2, -1, 2, 0x11, 2, &D_800CB2C0, 7);
                    D_800D49EC = s;
                }
            } else {
                func_800487D0(o);
                if ((u32)(D_800D49EC - 4) < 2) {
                    if (D_800D49EC == 4) {
                        D_800D5F50 = D_800D496C;
                        D_800D5F54 = D_800D4970;
                    }
                    func_8004B480();
                } else {
                    func_8004AEDC();
                }
            }
        } else if (o->m_A4->m_A9C->m_1C) {
            func_800487D0(o);
            D_800D5FC8 = D_800D49E8;
            func_8004B480();
        } else {
            func_800487D0(o);
            func_80045168(&D_800CABC0, 2, -1, 2, 0x11, 2, &D_800CB2C0, 7);
        }
        break;
    }
    if (o->m_state != -1) {
        func_80078FE8(D_800CBC94, o->m_state)->m_14 |= 1;
    }
    return 1;
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_27", func_80048494);
#endif

void func_800487D0(Obj27 *o) {
    func_80045168(&D_800CABC0, 0, -1, 1, o);
    if (o->m_A4) {
        func_8003B734(o->m_A4, 1, 1);
    }
}

int func_80048824(Obj27 *o) {
    int r = 0;
    Peer27 *p = func_80078FC4(D_800CBC94, o->m_state);

    if (p) {
        r = func_80044F9C(o, 1, 1);
        if (r) {
            func_80087900(o->m_78, 0x3C, 0x3C);
            if (p->m_08 == 6) {
                int v;
                int a;

                p->m_180 = 1;
                p->m_16C = 0;
                p->m_160 = o->m_A4->m_A98->m_FC;
                p->m_164 = o->m_A4->m_A98->m_100;
                func_800792DC(p);
                p->m_174 = func_8003D60C;
                p->m_178 = o->m_A4;
                p->m_17C = 0;
                r = 1;
                v = func_800B5A1C();
                a = v - 0x8000;
                func_800A5DA4(D_800C5BDC, v);
                VCALL1(p, 12, (a / 2) & ~3);
            }
        }
    }
    if (!r) {
        VCALL(o, 21);
    }
    return r;
}

void func_80048980(Obj27 *o) {
    Peer27 *p = func_80078FC4(D_800CBC94, o->m_state);

    if (p->m_08 == 6) {
        p->m_174 = 0;
        p->m_17C = 1;
        p->m_180 = 0;
        func_800792DC(p);
    }
    func_80044F34(o);
}

void func_800489E4(Obj27b *o, int f) {
    CobjetDtor27(o, f);
}

void func_80048A04(Obj27b *o, int f) {
    o->m_50 = D_800C5CC8;
    CobjetDtor27(o, f);
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_27", func_80048A2C);

void func_80048CF4(int a, int b, int *p, int v) {
    *p = v;
}

static inline int func_80048CFC_is8(void) {
    return D_800D5F40 == 8;
}

void func_80048CFC(Obj27 *o) {
    if (D_800D5F6C == 0) {
        if (o->m_378->m_1E3C) {
            func_800A0248(o->m_378->m_1E3C);
        }
        if (func_80048CFC_is8() && D_800D5FC8 == -1) {
            func_80050850(o->m_378, 0);
            func_800A12C4(&D_800D4898);
        }
        if (func_800A0D48(&D_800D4898)) {
            func_8004B900(o, o->m_B8);
        } else {
            func_8004B844(o, o->m_B8);
        }
    } else {
        func_8004B844(o, o->m_B8);
    }
    o->m_348 = 1;
}

/* The destructor: its members' destructors, last first, then chunk_23's. */
/* The destructor: its members' destructors, last first, then chunk_23's. */
void func_80048DD0(Obj27 *o, int f) {
    Elem27 *e;

    o->m_vtable = D_800C5E50;
    if (o->m_2F0) {
        __builtin_vec_delete(o->m_2F0);
        o->m_2F0 = 0;
    }
    if (o->m_308) {
        func_8006BE10(o->m_308, 3);
        o->m_308 = 0;
    }
    func_800816B4(o->m_C30, 2);
    if (o->m_7A4) {
        e = o->m_7A4 + 3;
        while (o->m_7A4 != e) {
            func_8001D180(--e, 2);
        }
    }
    if (o->m_49C) {
        e = o->m_49C + 2;
        while (o->m_49C != e) {
            func_8001D180(--e, 2);
        }
    }
    func_8003FCF8(o, f);
}

/* Each racer given its tile's slot: the players', the race's, then the others'. */
#ifdef NON_MATCHING
// The original keeps the players' count on the stack and the tile's call in other registers (75 off with -fmove-all-movables)
int func_80048EC4(Obj27 *o) {
    Peer27 *p = func_80078FC4(D_800CBC94, o->m_state);
    int r = VCALL1(o, 20, 1);

    if (r) {
        int n = 1;
        int i;
        Tile27 *t;
        void **q;
        Elem27 *e;
        int *k;

        if (o->m_378->m_00 & 0xA8) {
            n = 2;
        }
        i = n - 1;
        q = &o->m_43C[i];
        e = &o->m_49C[i];
        k = &o->m_BC[i];
        do {
            t = (Tile27 *)VCALL1(p, 14, *k--);
            func_8001D1C4(e, t->m_A0);
            t->m_F0 = o->m_450;
            t->m_F4 = o->m_454;
            i--;
            e--;
            t->m_9C = *q--;
        } while (i >= 0);
        func_8001D1C4(&D_800CA7D8, func_800891E8(p->m_30, o->m_BC[0])->m_A0);
        for (i = 2; i >= 0; i--) {
            if (i < n || i == 2) {
                t = (Tile27 *)VCALL1(p, 14, i == 2 ? 2 : o->m_C4[i]);
                func_8001D1C4(&o->m_7A4[i], t->m_A0);
                t->m_9C = o->m_444[i];
            }
        }
    }
    return r;
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_27", func_80048EC4);
#endif

int func_800490C8(Obj27 *o) {
    int v = VCALL(o, 21);
    int r = 0;

    if (v) {
        r = func_8003FE1C(o) != 0;
    }
    return r;
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_27", func_8004911C);
