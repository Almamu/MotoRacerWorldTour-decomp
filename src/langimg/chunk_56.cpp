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
struct Map56;
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
    Map56 *m_28; // the map's parts
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
struct Bike56 {
    u32 m_00; // flags
    u8 m_04[0x564];
};
struct Mode56 {
    u8 m_00[0x4D8];
    int m_4D8;
};
struct Run56 {
    int m_00;
    int m_04; // how many
    u8 m_08[8];
    Mode56 *m_10;
    u8 m_14[0x40];
    int m_54[5][8]; // each rider's times
    u8 m_F4[0x1F4];
    Bike56 m_2E8[5];
    int m_1DF0; // the lap's time
    u8 m_1DF4[0x14];
    int m_1E08;
    u8 m_1E0C[0x30];
    Lap56 *m_1E3C;
};
struct Race56 {
    u8 m_00[4];
    int m_04;
    u8 m_08[0xB4];
    int m_BC;
    u8 m_C0[4];
    int m_C4;
    u8 m_C8[4];
    int m_CC;
    u8 m_D0[0x2A8];
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
    u8 m_B8[0x22];
    short m_DA; // a 3-byte string
    u8 m_DC[0x24];
    void *m_100[2];
    u8 m_108[8];
};
// A colour stored where it isn't aligned
struct Packed56 {
    int v;
} __attribute__((packed));
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
    int m_00; // bits 1-5: a mode
    u8 m_04[0xC];
    int m_10;
    u8 m_14[0x1C];
    void *m_30;
    int m_34;
    u8 m_38[8];
    s8 m_40;
    u8 m_41[2];
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
struct VtEntry56 {
    short m_delta;
    short m_index;
    int (*m_func)(void *self);
};
struct Ot56 {
    u8 m_00[0x14];
    VtEntry56 *m_14;
};
struct Draw56 {
    u8 m_00[0x40];
    u8 m_40[0x2C];
    int m_6C[2];
};
struct Item56 {
    u8 m_00;
    u8 m_01; // its kind
};
extern short D_800C8AC0[2]; // a 3-byte string
extern short D_800C8AB0;    // a 6-byte string
extern short D_800C8AB8;    // a 5-byte string
extern Ot56 *D_800CBDC4;
extern int D_800CBDC0;
extern int D_800C88FC;
extern u8 D_800C8B10[], D_800C8B1C[], D_800C8B28[], D_800C8B34[];
void func_8007C428(void *a, Draw56 *d, int b);
char *func_800A5ED0(char *d, int ms, int flags);
void func_80082A8C(Grid56 *g, Race56 *r);
void func_80082E74(Grid56 *g, int k, Item56 *it, Race56 *r, int f);
void func_8008259C(Draw56 *d, int i);
void func_80082FA8(Grid56 *g, Run56 *run);
void func_80082904(Grid56 *g, Race56 *r);
// The row's rider
struct Row56 {
    int m_00;
    Who56 *m_04;
    int m_08;
};
// A box, as func_800891E8 finds it
struct Box56 {
    int m_00;
    int m_04;
    int m_08;
    int m_0C;
    u8 m_10[8];
    int m_18;
    int m_1C;
    int m_20;
    int m_24;
};
// A span of a column: where it starts, and its value
struct Span56 {
    u8 m_00;
    s8 m_01;
};
struct Map56 {
    void *m_00;
    void *m_04;
    u16 m_08; // how many m_04
    u8 m_0A;
    u8 m_0B; // how many m_10
    void *m_0C;
    void *m_10;
    u8 m_14[4];
    void *m_18;
    void *m_1C;
    void *m_20;
    void *m_24;
    void *m_28;
    void *m_2C;
    u8 *m_30;      // each column's count
    Span56 **m_34; // each column's spans
};
extern Row56 D_800CBD30;
extern u32 D_800D49F0;
extern int D_800D49A4;
extern short D_800CBD48[4];
Box56 *func_800891E8(void *a, int b);
void func_80082BEC(Grid56 *g, int row, Run56 *run, int k, int f);
void func_80083078(Grid56 *g, int row, Race56 *r);
void func_800826BC(u8 *o, Race56 *r);
int func_80081330(Map56 *m, short x, short y);
void func_8008145C(Map56 *m, int flags);
// Twelve bytes, no constructor
struct Pod12 {
    int m_00[3];
};
// Twelve and sixteen bytes, each with an empty constructor
struct Ctor12 {
    int m_00[3];
    Ctor12() {
    }
};
struct Ctor16 {
    int m_00[4];
    Ctor16() {
    }
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

/* The value at (x, y): a binary search of x's spans for y. */
int func_80081330(Map56 *m, short x, short y) {
    Span56 *s;
    int r = 0;
    int lo;
    int hi;
    int mid;
    int v;

    if (x >= 32 && y >= 32) {
        s = m->m_34[x - 32];
        if (s) {
            if (x > 224) {
                return 3;
            }
            if (y > 224) {
                return 3;
            }
            lo = 0;
            hi = m->m_30[x - 32] - 1;
            if (y >= s[0].m_00 && s[hi].m_00 >= y) {
                do {
                    mid = (lo + hi) >> 1;
                    v = s[mid].m_00;
                    if (y < v) {
                        hi = mid - 1;
                    } else if (v < y) {
                        lo = mid + 1;
                    } else {
                        r = s[mid].m_01 * 125 >> 5;
                        break;
                    }
                } while (lo <= hi);
            }
        }
    }
    return r;
}

void *func_8008142C(void *p) {
    memset(p, 0, 0x30);
    return p;
}

void func_8008145C(Map56 *m, int flags) {
    if (m->m_0C) {
        delete[] (u8 *)m->m_0C;
        m->m_0C = 0;
    }
    if (m->m_28) {
        delete[] (u8 *)m->m_28;
        m->m_28 = 0;
    }
    if (m->m_24) {
        delete[] (u8 *)m->m_24;
        m->m_24 = 0;
    }
    if (m->m_2C) {
        delete[] (u8 *)m->m_2C;
        m->m_2C = 0;
    }
    if (m->m_10) {
        delete[] (u8 *)m->m_10;
        m->m_10 = 0;
    }
    if (m->m_00) {
        delete[] (u8 *)m->m_00;
        m->m_00 = 0;
    }
    if (m->m_04) {
        delete[] (u8 *)m->m_04;
        m->m_04 = 0;
    }
    if (m->m_20) {
        delete[] (u8 *)m->m_20;
        m->m_20 = 0;
    }
    if (m->m_18) {
        delete[] (u8 *)m->m_18;
        m->m_18 = 0;
    }
    if (m->m_1C) {
        delete[] (u8 *)m->m_1C;
        m->m_1C = 0;
    }
    if (flags & 1) {
        delete m;
    }
}

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

/* One of the map's parts allocated, or freed. */
void func_800816F8(Obj56 *h, int kind, int alloc) {
    if (alloc) {
        Map56 *m;

        if (!h->m_28) {
            h->m_28 = (Map56 *)func_8008142C(operator new(0x30));
        }
        switch (kind) {
        case 1:
            m = h->m_28;
            if (!m->m_24 && h->m_00) {
                m->m_24 = new Pod12[h->m_00];
            }
            break;
        case 2:
            m = h->m_28;
            if (!m->m_28 && h->m_00) {
                m->m_28 = new int[h->m_00];
            }
            break;
        case 3:
            m = h->m_28;
            if (!m->m_2C && h->m_00) {
                m->m_2C = new Pod12[h->m_00];
            }
            break;
        case 5:
            m = h->m_28;
            if (!m->m_04 && m->m_08) {
                m->m_04 = new Ctor12[m->m_08];
            }
            break;
        case 4:
            m = h->m_28;
            if (!m->m_10 && m->m_0B) {
                m->m_10 = new Ctor16[m->m_0B];
            }
            break;
        case 6:
            m = h->m_28;
            if (!m->m_20 && h->m_04) {
                m->m_20 = new int[h->m_04];
            }
            break;
        case 7:
            break;
        case 8:
            break;
        }
    } else {
        Map56 *m = h->m_28;

        if (m) {
            switch (kind) {
            case 0:
                if (h->m_28) {
                    func_8008145C(h->m_28, 3);
                    h->m_28 = 0;
                }
                break;
            case 1:
                if (m->m_24) {
                    delete[] (u8 *)m->m_24;
                    h->m_28->m_24 = 0;
                }
                break;
            case 2:
                if (m->m_28) {
                    delete[] (u8 *)m->m_28;
                    h->m_28->m_28 = 0;
                }
                break;
            case 3:
                if (m->m_2C) {
                    delete[] (u8 *)m->m_2C;
                    h->m_28->m_2C = 0;
                }
                break;
            case 5:
                if (m->m_04) {
                    delete[] (u8 *)m->m_04;
                    h->m_28->m_04 = 0;
                }
                break;
            case 4:
                if (m->m_10) {
                    delete[] (u8 *)m->m_10;
                    h->m_28->m_10 = 0;
                }
                break;
            case 6:
                if (m->m_20) {
                    delete[] (u8 *)m->m_20;
                    h->m_28->m_20 = 0;
                }
                break;
            case 7:
                if (m->m_18) {
                    delete[] (u8 *)m->m_18;
                    h->m_28->m_18 = 0;
                }
                break;
            case 8:
                if (m->m_1C) {
                    delete[] (u8 *)m->m_1C;
                    h->m_28->m_1C = 0;
                }
                break;
            }
        }
    }
}

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

void func_8008259C(Draw56 *d, int i) {
    if (d->m_6C[i]) {
        D_800C88FC = 0;
        D_800CBDC0 =
            D_800CBDC4->m_14[5].m_func((char *)D_800CBDC4 + D_800CBDC4->m_14[5].m_delta) - 0xC0;
        func_8007C428(d->m_40, d, 0x100000);
        D_800CBDC0 = D_800CBDC4->m_14[5].m_func((char *)D_800CBDC4 + D_800CBDC4->m_14[5].m_delta);
    }
}

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

// A rectangle's four values set, as setRECT does
static inline void SetRect56(short *r, int x, int y, int w, int h) {
    r[0] = x;
    r[1] = y;
    r[2] = w;
    r[3] = h;
}

#ifdef NON_MATCHING
// Registers and delay slots: the values' loads and the rectangle's stores
void func_800826BC(u8 *o, Race56 *r) {
    short *d;
    Box56 *e;
    Box56 *f;

    if ((D_800D49F0 >> 4) & 1) {
        d = D_800CBD48;
        if (!(r->m_378->m_00 & 0xA8)) {
            e = func_800891E8(o + 0x30, r->m_CC);
            SetRect56(d, e->m_18, e->m_1C, e->m_24 - 1, e->m_24 - 1);
        } else {
            e = func_800891E8(o + 0x30, r->m_C4);
            f = func_800891E8(o + 0x30, r->m_BC);
            if (D_800D49A4 == 1) {
                SetRect56(d, f->m_00 + f->m_08, f->m_00 + f->m_08, e->m_20, f->m_24);
            } else {
                SetRect56(d, f->m_18, f->m_1C, f->m_04 + f->m_0C, f->m_04 + f->m_0C);
            }
        }
    }
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_56", func_800826BC);
#endif

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

#ifdef NON_MATCHING
// The strings' copies: " Laps" and " Lap" are likely strcpy'd literals (the block move's address split through $v0); ours, a memcpy from the symbols, loads it whole (12 off)
/* The panel set up: its cells, the riders' count and the laps. */
void func_80082904(Grid56 *g, Race56 *r) {
    int i;
    int j;

    func_80082840(g);
    if (D_800D5F40 == 2) {
        for (i = 0; i < 2; i++) {
            g->m_80[i][0] = 2;
            g->m_80[i][1] = 0x1C;
            g->m_80[i][2] = 0x20;
            g->m_80[i][3] = '0';
            g->m_80[i][4] = 0;
        }
    } else if (D_800D5F40 == 0) {
        for (j = 0; j < 2; j++) {
            g->m_80[j][0] = 0;
        }
    }
    ((char *)g)[0xE8] = '/';
    ((char *)g)[0xE9] = r->m_378->m_04 + '0';
    if ((u32)r->m_378->m_04 >= 2) {
        memcpy((char *)g + 0xEA, &D_800C8AB0, 6);
    } else {
        memcpy((char *)g + 0xEA, &D_800C8AB8, 5);
    }
    func_80082A8C(g, r);
    if (r->m_378->m_1E3C) {
        func_80082B14((char *)g, r);
    }
    func_8008267C(D_800D49A8);
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_56", func_80082904);
#endif

#ifdef NON_MATCHING
// The 3-byte string's copy: likely a strcpy'd literal (" \x82"), a block move with its address in $t3; ours, lh and lb straight from the symbol (9 off)
/* How many bikes are in (a flag's bit 6), and the mode's marker. */
void func_80082A8C(Grid56 *g, Race56 *r) {
    char *b = (char *)g;
    Bike56 *p;
    Bike56 *end;
    int n;

    b[0xD8] = '/';
    n = 0;
    end = &r->m_378->m_2E8[0];
    p = &r->m_378->m_2E8[4];
    do {
        if ((p->m_00 >> 6) & 1) {
            n++;
        }
    } while (p-- != end);
    b[0xD9] = n + '0';
    if (r->m_378->m_00 & 0xA8) {
        b[0xDA] = 0;
    } else {
        memcpy(&g->m_DA, D_800C8AC0, 3);
    }
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_56", func_80082A8C);
#endif

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

static inline int Time56(Run56 *run, int f, int i) {
    if (i < 0) {
        return -1;
    }
    return run->m_54[f][i];
}

#ifdef NON_MATCHING
// Registers: the original hoists the times' base, f * 32 and -1 into saved registers and walks t[] by pointer
/* A row's three times around the k-th, the k-th highlighted. */
void func_80082BEC(Grid56 *g, int row, Run56 *run, int k, int f) {
    int t[3];
    int *tp;
    int sel;
    int i;
    int v;

    sel = 2;
    if (D_800D5F40 == sel) {
        if (run->m_54[f][0] != -1) {
            func_800A5DBC((char *)g + row * 16, run->m_54[f][0], 0);
        }
    } else {
        if (run->m_10->m_4D8 && k == -1) {
            k = 0;
        }
        if (k >= 0) {
            t[0] = k - 2;
            t[1] = k - 1;
            t[2] = k;
            while (t[0] < 0) {
                t[0] = t[1];
                t[1] = t[2];
                t[2] = -1;
                sel--;
            }
        } else {
            t[0] = t[1] = t[2] = -1;
        }
        for (i = 2; i >= 0; i--) {
            char *c = (char *)g + row * 16 + i * 32;

            v = Time56(run, f, t[i]);
            if (v != -1) {
                if (v != 0) {
                    func_800A5DBC(c + 4, v, 0);
                    if (sel == i) {
                        ((Packed56 *)c)->v = 0xFFFF01;
                    } else {
                        ((Packed56 *)c)->v = 0xFFFFFF01;
                    }
                } else {
                    c[0] = 0;
                }
            } else {
                c[0] = 0;
            }
        }
    }
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_56", func_80082BEC);
#endif

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

void func_80082E74(Grid56 *g, int k, Item56 *it, Race56 *r, int f) {
    void *v = 0;
    Run56 *run = r->m_378;

    if (r->m_04 & 4) {
        switch (it->m_01) {
        case 1:
            v = D_800C8B10;
            break;
        case 3:
            if (run->m_1E08 == 3) {
                v = D_800C8B1C;
            }
            break;
        case 4:
            v = D_800C8B28;
            break;
        default:
            if (f == -1) {
                v = D_800C8B34;
            }
            break;
        }
    }
    g->m_100[k] = v;
}

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

#ifdef NON_MATCHING
// Registers: the time and the colour's pointer swap $s0 and $s1, and the dashes' colour is stored through the pointer
/* The lap's time, coloured by how fast; dashes past 9999998. */
void func_80082FA8(Grid56 *g, Run56 *run) {
    char *b = (char *)g;
    int t = run->m_1DF0;
    char *q = b + 0xBB;
    int c;

    b[0xB8] = 2;
    b[0xB9] = 0x1F;
    b[0xBA] = 0x20;
    if (t <= 9999998) {
        if (t >= 0) {
            func_800A5ED0(b + 0xBF, t, 2);
            if (t < 5000) {
                c = 0xFF;
            } else if (t < 15000) {
                c = 0x80FF;
            } else {
                c = 0xFFFF;
            }
            ((Packed56 *)q)->v = (c << 8) | 1;
        } else {
            b[0xBB] = 0;
        }
    } else {
        ((Packed56 *)q)->v = 0xC0C0C001;
        q = b + 0xBF;
        q[4] = '-';
        q[5] = '-';
        q[6] = '-';
        q[7] = 0;
    }
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_56", func_80082FA8);
#endif

/* A row of the panel, for the rider shown. */
void func_80083078(Grid56 *g, int row, Race56 *r) {
    Who56 *w;
    int f;
    int k;
    int mode;
    int col;
    int n;
    int max;

    if (row == -1) {
        return;
    }
    w = D_800CBD30.m_04;
    f = D_800CBD30.m_08;
    k = w->m_40;
    mode = (w->m_00 << 26) >> 27;
    n = r->m_378->m_04;
    max = n - 1;
    if (k >= n) {
        k = max;
    }
    col = w->m_10;
    if (D_800D5F40 != 2) {
        func_80082F1C(g, row, k, max);
    }
    func_80082BEC(g, row, r->m_378, k, f);
    if (D_800D5F40 != 2) {
        func_80082DA4(g, row, (Tab56 *)r->m_378, col, f);
    }
    func_80082DE4(g, row, w, mode);
    func_80082E74(g, row, (Item56 *)w, r, k);
    func_80082FA8(g, r->m_378);
}
