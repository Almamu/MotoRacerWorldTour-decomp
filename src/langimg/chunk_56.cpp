#include "common.h"

/* Tables, a character grid, a list's lookups (docs/matching/issue-57-langimg-chunk56.md) */

extern "C" {
// A list of pointers and its count
struct List56 {
    int *m_00;
    int m_04;
    int m_08;
};
struct Vec56 {
    int vx, vy, vz;
};
struct Obj56 {
    short m_00;
    u8 m_02[2];
    short m_04;
    u8 m_06;
    u8 m_07;
    Vec56 m_08;
    int m_14;
    int m_18;
    int m_1C;
    int m_20;
    int m_24;
    int m_28;
    u8 m_2C[0x14];
    short m_40;
    u8 m_42[2];
    short m_44;
    u8 m_46[0x12];
    void *m_58;
    void *m_5C;
};
struct Snd56 {
    u8 m_00[0xF8];
    int m_F8;
    int m_FC;
};
struct Tab56 {
    u8 m_00[0x40];
    int m_40[8];
};
struct Lap56 {
    u8 m_00[0x40];
    int m_40;
};
struct Run56 {
    u8 m_00[0x1E3C];
    Lap56 *m_1E3C;
};
struct Race56 {
    u8 m_00[0x378];
    Run56 *m_378;
};

extern int D_800CC030[];
extern int D_800CBD58, D_800CBD5C, D_800CBD60, D_800CBD64;
extern int D_800D49A8;
extern Snd56 *D_800C89F4;
extern int *D_800C89F8;
void *memset(void *d, int c, int n);
void __builtin_delete(void *p);
void __builtin_vec_delete(void *p);
void func_80081628(Obj56 *o);
char *func_800A5DBC(char *d, int ms, int flags);

int func_80081270(List56 *l, int key);
int func_800812C4(List56 *l);
int func_80081318(List56 *l, int i);
void *func_8008142C(void *p);
Obj56 *func_800815B0(Obj56 *o);
void func_800815D8(Obj56 *o);
void func_800816B4(Obj56 *o, int flags);
void func_80081EC8(Obj56 *o);
void func_8008264C(void);
void func_8008267C(int i);
int func_800827DC(void *o, int x, int b, int c);
int func_8008280C(List56 *l, int x, int b, int c);
void func_80082B14(char *p, Race56 *r);
struct Grid56 {
    u8 m_00[0x60];
    char m_60[8][16];
};
void func_80082DA4(Grid56 *g, int row, Tab56 *t, int flag, int col);
}

// The GTE's count of leading zeros (or ones)
#define GTE_LZC(r, x) \
    __asm__ volatile("mtc2 %1, $30\n\t" \
                     "nop\n\t" \
                     "nop\n\t" \
                     "mfc2 %0, $31" \
                     : "=r"(r) \
                     : "r"(x))

static inline void VecZero56(Vec56 *v) {
    v->vx = 0;
    v->vy = 0;
    v->vz = 0;
}

static inline void VecCopy56(Vec56 *d, Vec56 *s) {
    d->vx = s->vx;
    d->vy = s->vy;
    d->vz = s->vz;
}

/* key's index in the list, or -1. */
int func_80081270(List56 *l, int key) {
    int r = -1;
    int i;

    if (l->m_00) {
        i = 0;
        while (r == -1) {
            if (i >= l->m_08) {
                break;
            }
            if (l->m_00[i] == key) {
                r = i;
            }
            i++;
        }
    }
    return r;
}

/* The list's first empty place, or -1. */
int func_800812C4(List56 *l) {
    int r = -1;
    int i;

    if (l->m_00) {
        i = 0;
        while (r == -1) {
            if (i >= l->m_08) {
                break;
            }
            if (!l->m_00[i]) {
                r = i;
            }
            i++;
        }
    }
    return r;
}

int func_80081318(List56 *l, int i) {
    return l->m_00[i];
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_56", func_80081330);

void *func_8008142C(void *p) {
    memset(p, 0, 0x30);
    return p;
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_56", func_8008145C);

Obj56 *func_800815B0(Obj56 *o) {
    func_800815D8(o);
    return o;
}

void func_800815D8(Obj56 *o) {
    Vec56 z;

    o->m_06 = 1;
    o->m_1C = 0;
    o->m_24 = 0;
    o->m_18 = 0;
    o->m_00 = 0;
    o->m_04 = 0;
    VecZero56(&z);
    VecCopy56(&o->m_08, &z);
    o->m_14 = 0;
    o->m_20 = 0;
    o->m_28 = 0;
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_56", func_80081628);

void func_800816B4(Obj56 *o, int flags) {
    func_80081628(o);
    if (flags & 1) {
        __builtin_delete(o);
    }
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_56", func_800816F8);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_56", func_80081A78);

void func_80081EC8(Obj56 *o) {
    if (o->m_5C) {
        __builtin_vec_delete(o->m_5C);
        o->m_5C = 0;
    }
    if (o->m_58) {
        __builtin_vec_delete(o->m_58);
        o->m_58 = 0;
    }
    o->m_44 = 0;
    o->m_40 = 0;
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_56", func_80081F28);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_56", func_80081FE0);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_56", func_80082468);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_56", func_8008259C);

void func_8008264C(void) {
    D_800CBD58 = D_800CC030[19];
    D_800CBD5C = D_800CC030[18];
    D_800CBD60 = D_800CC030[17];
    D_800CBD64 = D_800CC030[20];
}

#ifdef NON_MATCHING
// Registers: the table's address and the index swap
void func_8008267C(int i) {
    D_800D49A8 = i;
    D_800C89F4->m_F8 = D_800C89F8[i + 2];
    D_800C89F4->m_FC = D_800C89F8[i + 2];
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_56", func_8008267C);
#endif

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_56", func_800826BC);

/* A table's index from x's size in bits (by the GTE's leading zeros). */
int func_800827DC(void *o, int x, int b, int c) {
    int z;

    GTE_LZC(z, x);
    return (b + (32 - z) * 9) * 2 + c;
}

int func_8008280C(List56 *l, int x, int b, int c) {
    return l->m_00[func_800827DC(l, x, b, c)];
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_56", func_80082840);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_56", func_80082904);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_56", func_80082A8C);

void func_80082B14(char *p, Race56 *r) {
    int t = r->m_378->m_1E3C->m_40;

    if (t != -1) {
        func_800A5DBC(p + 0xC8, t, 0);
    } else {
        p[0xC8] = 0;
    }
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_56", func_80082B64);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_56", func_80082BEC);

/* A grid cell: col's value as a digit (from '1'), or '-'. */
void func_80082DA4(Grid56 *g, int row, Tab56 *t, int flag, int col) {
    char *q = g->m_60[row];
    int v = t->m_40[col];

    q[1] = 0;
    if (v >= 0 && flag >= 0) {
        q[0] = v + '1';
    } else {
        q[0] = '-';
    }
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_56", func_80082DE4);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_56", func_80082E74);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_56", func_80082F1C);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_56", func_80082FA8);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_56", func_80083078);
