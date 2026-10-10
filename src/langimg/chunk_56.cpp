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
    void *m_1C;
    int m_20;
    void *m_24;
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
// The HUD panel's strings
struct Grid56 {
    u8 m_00[0x60];
    char m_60[2][16];
    char m_80[2][8];
    char m_90[2][4];
    char m_98[2][16];
    u8 m_B8[0x58];
};
struct Str4 {
    char c[4];
};
// A matrix and its translation, then a part of the camera's
struct Mat56 {
    short m[3][3];
    short pad;
    int t[3];
};
struct Sub56 {
    int m_00;
    int m_04;
    Vec56 m_08;
    u8 m_14[0xC];
};
struct Cam56 {
    Mat56 m_00;
    Sub56 m_20;
};
struct Who56 {
    u8 m_00[0x30];
    void *m_30;
    int m_34;
    u8 m_38[0xB];
    s8 m_43;
};
extern int D_800D5F38;
extern int D_800D5F40;
extern int D_800C8AC4; // the modes' limits (built with la)
extern Str4 D_800C8B0C;
char *func_800A5F90(char *d, int v);
char *func_800A6000(char *d, int v, int width, int pad);
int func_800A6850(int x);
int func_80063A5C(void *p);
void func_800816F8(Obj56 *o, int a, int b);
void func_80081628(Obj56 *o);
void func_80081F28(Cam56 *c, Vec56 *p);
void func_80082840(Grid56 *g);
int func_80082B64(Grid56 *g, Who56 *w);
void func_80082F1C(Grid56 *g, int row, int v, int max);
void func_80082DE4(Grid56 *g, int row, Who56 *w, int mode);
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

static inline void VecCopyL56(Vec56 *d, Vec56 *s) {
    int x = s->vx;
    int y = s->vy;
    int z = s->vz;

    d->vx = x;
    d->vy = y;
    d->vz = z;
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

void func_80081628(Obj56 *o) {
    if (o->m_06 & 1) {
        if (o->m_1C) {
            __builtin_vec_delete(o->m_1C);
            o->m_1C = 0;
        }
        o->m_06 &= ~1;
    }
    func_800816F8(o, 0, 0);
    if (o->m_24) {
        __builtin_vec_delete(o->m_24);
        o->m_24 = 0;
    }
    o->m_04 = 0;
}

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

/* The camera at p, unturned. */
void func_80081F28(Cam56 *c, Vec56 *p) {
    c->m_00.m[0][0] = 0x1000;
    c->m_00.t[0] = 0;
    c->m_00.m[0][2] = 0;
    c->m_00.m[0][1] = 0;
    c->m_00.m[1][1] = 0x1000;
    c->m_00.t[1] = 0;
    c->m_00.m[1][2] = 0;
    c->m_00.m[1][0] = 0;
    c->m_00.m[2][2] = 0x1000;
    c->m_00.t[2] = 0;
    c->m_00.m[2][1] = 0;
    c->m_00.m[2][0] = 0;
    {
        int x = p->vx;
        int y = p->vy;
        int z = p->vz;

        c->m_00.t[0] = x;
        c->m_00.t[1] = y;
        c->m_00.t[2] = z;
    }
    {
        Sub56 *u = &c->m_20;

        memset(u, 0, sizeof(*u));
        u->m_04 = -1;
        VecCopyL56(&c->m_20.m_08, p);
    }
}

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

/* The panel's strings emptied. */
void func_80082840(Grid56 *g) {
    u8 *b = (u8 *)g;
    int i;

    for (i = 0; i < 2; i++) {
        b[i * 32] = 0;
        b[0x10 + i * 32] = 0;
        b[0x20 + i * 32] = 0;
        g->m_60[i][0] = 0;
        g->m_80[i][0] = 0;
        g->m_98[i][0] = 0;
        g->m_90[i][0] = 0;
    }
    b[0xC8] = 0;
    b[0xB8] = 0;
    b[0xD8] = 0;
    b[0xE8] = 0;
    memset(b + 0xF8, 0, 8);
    memset(b + 0x100, 0, 8);
    memset(b + 0x108, 0, 8);
}

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

/* A rider's speed, when past the mode's limit. */
int func_80082B64(Grid56 *g, Who56 *w) {
    int r = 0;
    int sp = w->m_34;
    int k = w->m_43;

    if (*(int *)((u8 *)&D_800C8AC4 + (D_800D5F38 << 2)) < sp) {
        r = 1;
        *func_800A5F90(g->m_98[k], func_800A6850(sp)) = 0;
    }
    return r;
}

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

#ifdef NON_MATCHING
// Registers: the 4-byte string's address goes through $v0 in the original
void func_80082DE4(Grid56 *g, int row, Who56 *w, int mode) {
    char *q = g->m_90[row];
    int v = 0;

    if ((u32)(mode - 1) < 2) {
        int t = func_800A6850(func_80063A5C(w->m_30));

        v = (t ^ (t >> 31)) - (t >> 31);
    }
    if (v < 1000) {
        func_800A5F90(q, v);
    } else {
        *(Str4 *)q = D_800C8B0C;
    }
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_56", func_80082DE4);
#endif

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_56", func_80082E74);

void func_80082F1C(Grid56 *g, int row, int v, int max) {
    char *q = g->m_80[row];

    if (D_800D5F40 == 0) {
        func_800A5F90(q, v);
    } else if (D_800D5F40 == 2) {
        func_800A6000(q + 2, v, 2, ' ');
    } else {
        q[1] = 0;
        if (v >= 0) {
            if (max < v) {
                v = max;
            }
            q[0] = v + '1';
        } else {
            q[0] = '-';
        }
    }
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_56", func_80082FA8);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_56", func_80083078);
