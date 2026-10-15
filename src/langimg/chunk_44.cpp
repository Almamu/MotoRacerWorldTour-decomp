#include "common.h"

/* (docs/matching/issue-45-langimg-chunk44.md) */

extern "C" {
// A GCC 2 vtable entry
struct VtEntry {
    short m_delta;
    short m_index;
    int (*m_func)(void *self);
};
#define VCALLV(o, i) (((void (*)(void *))(o)->m_vt[i].m_func)((char *)(o) + (o)->m_vt[i].m_delta))
#define VCALL2(o, i, a, b) \
    (((int (*)(void *, int, int))(o)->m_vt[i].m_func)((char *)(o) + (o)->m_vt[i].m_delta, a, b))

// A sound object (vtable D_800C7724)
struct Snd44 {
    u8 m_type;
    u8 m_01, m_02;
    s8 m_03; // its id
    int m_04, m_08;
    VtEntry *m_vt; // 0x0C
    int m_10, m_14;
    u8 m_18[0x10];
    int m_28, m_2C;
    u8 m_30[4];
    short m_34, m_36;
    int m_38, m_3C;
    short m_40, m_42;
    int m_44;
};

// One subclass (vtable D_800C76DC)
struct SndA44 {
    Snd44 m_base;
    short m_48, m_4A;
    int m_4C;
};

// Another (vtable D_800C769C)
struct SndB44 {
    Snd44 m_base;
    int m_48;
};

// Containers
struct Three44 {
    int m_00, m_04, m_08;
};
struct Nine44 {
    int m_00, m_04, m_08, m_0C, m_10, m_14, m_18, m_1C, m_20;
};
struct Four44 {
    short m_00, m_02;
    void *m_04;
    void *m_08;
    void *m_0C;
};
struct Arr44 {
    int m_00, m_04, m_08, m_0C, m_10;
    void *m_14;
    int m_18, m_1C;
};
struct Two44 {
    u8 m_00[4];
    int m_04;
    u8 m_08[8];
    int m_10;
};
struct Ref44 {
    Snd44 *m_00;
    int m_04;
    u8 m_08[4];
    u8 m_0C[0xC];
    int m_18;
};
// A list of sounds
struct Cnt44 {
    Snd44 **m_items;
    int m_n;
    int m_08; // the first free one
};

// Scales for a sound's position
struct Pos44 {
    u8 m_00[0x18];
    int m_18;
    u8 m_1C[4];
    int m_20;
    u8 m_24[0xC];
    int m_30, m_34;
};

struct Flags44 {
    int m_00;
    int m_04;
};

extern VtEntry D_800C7724[], D_800C76DC[], D_800C769C[];
extern int D_800CB480;
extern int D_800D11C0[];
void __builtin_delete(void *p);
void __builtin_vec_delete(void *p);
void func_80097E4C(int a, int x, int y, int z);
void func_8006A6B0(struct Texts44 *o, int k);
void func_8006AB3C(Cnt44 *c, int i);

void func_8006973C(int a, short *v);
void func_80069A88(int *p);
Snd44 *func_80069F50(Snd44 *o);
void func_80069F84(Snd44 *o);
void func_8006A0D0(void);
void func_8006A224(Snd44 *o);
SndA44 *func_8006A258(SndA44 *o);
void func_8006A294(SndA44 *o);
void func_8006A3E4(Snd44 *o, int a);
void func_8006A420(SndA44 *o);
Four44 *func_8006A460(Four44 *t);
void func_8006A494(Four44 *t, int flags);
SndB44 *func_8006A7D8(SndB44 *o);
void func_8006A814(SndB44 *o);
Three44 *func_8006A8FC(Three44 *p);
void func_8006ACB0(Cnt44 *c);
Nine44 *func_8006AF80(Nine44 *p);
void func_8006AFA4(Ref44 *r, int a);
Arr44 *func_8006AFEC(Arr44 *p);
void func_8006B018(Arr44 *p, int flags);
void func_8006B05C(Arr44 *p);
void func_8006B128(Two44 *p, int a);
extern int D_800D11B0[], D_800D11B8[], D_800D11C8[];
extern Flags44 *D_800CAE80;
void func_800B031C(int a, int b);
void *__builtin_vec_new(unsigned int n);
void *memset(void *p, int c, unsigned int n);
#define VCALL1(o, i, a) \
    (((int (*)(void *, int))(o)->m_vt[i].m_func)((char *)(o) + (o)->m_vt[i].m_delta, a))

int func_8006AC5C(Cnt44 *c, int id);
void func_80069ACC(void);
void func_8006A4D8(Four44 *t);
int *func_80069A28(int *p);
int func_8006AD00(Cnt44 *c);
void func_80069FB8(Snd44 *o, Pos44 *x);
int func_8006A1B4(Snd44 *o, int a);
void func_8006A914(Cnt44 *c, int n);
void func_8006B330(void *x, Ref44 *r, int a);
void func_8006ABD4(Cnt44 *c, int id);
void func_8006B098(Arr44 *p, int n);
extern int D_800D60EC; // the frame
extern u8 D_800C885C, D_800C885D;
extern int D_800C8860;
extern int D_800CC030[];
int func_80077BE4(int a, int b, int c, int d);

void func_8006A534(Four44 *t, int n, short m);
int func_8006A994(Cnt44 *c, int a, Snd44 *s, short b);
int func_8006A848(SndB44 *o, int a);
// Texts for a list of sounds: the list and its count, a buffer, its size and its free space
struct Texts44 {
    short m_00;
    short m_02;
    SndA44 *m_04;
    char *m_08;
    char *m_0C;
};
int func_8006B9F8(SndA44 *o, int n);
int func_8006A5D0(Texts44 *o, char *t, int len);
extern int D_800D60EC;
void func_8006AB3C(Cnt44 *c, int i);
void func_8006AD60(Cnt44 *c, int force);
extern SndA44 *D_800CB484; // D_800CB480's list (Texts44.m_04)
SndA44 *func_8006AA30(Cnt44 *c, int a, char *t, int x, int y, int col, short h);
extern int D_800C89D0;
extern int D_800C89D8;
extern u8 D_800C89D4, D_800C89D5;
void func_80080F8C(void);
void func_80080040(int font, char *s, int x, int y, short *h);
int func_8006A2D4(SndA44 *o, int a, short *h);
// The game's system object: the camera's player at 0x64, a vtable at 0x68
struct Sys44 {
    u8 m_00[0x64];
    int m_64;
    VtEntry *m_68;
};
extern Sys44 *D_800C886C;
extern void *D_800C8D90;
void func_80079AE4(void *m, int scale);
void func_8006AE54(Cnt44 *c, int id);
extern int D_800D11A8[];
extern int D_800B8788[][8];
void func_80069B24(void);
// An entry of a group's list (a Ref44 and its next)
struct RefN44 {
    Ref44 m_r;
    u8 m_1C[4];
    struct RefN44 *m_20;
};
struct Area44 {
    u8 m_00[0xC];
    short m_0C;
    u8 m_0E[2];
    short m_10;
};
// A group of entries for a player
struct Grp44 {
    u8 m_00[4];
    int m_04; // the player
    u8 m_08[8];
    int m_10;
    u8 m_14[4];
    RefN44 *m_18;
    Area44 *m_1C;
};
struct RECT44 {
    short x, y, w, h;
};
extern u8 *D_800C8C70;  // the next free GPU packet
extern u32 *D_800CBDC0; // the ordering table
void func_8009574C(int h, RECT44 *r);
void func_8006B134(Grp44 *g);
// ui.h's ADD_PRIM: links packet p in at ordering table entry ot (lwl/swl on the links' 3 bytes)
#define ADD_PRIM44(ot, p) \
    do { \
        u32 _l, _p; \
        __asm__ volatile("lwl %0, 2(%2)\n\tsll %1, %3, 8\n\tswl %0, 2(%3)\n\tswl %1, 2(%2)" \
                         : "=&r"(_l), "=&r"(_p) \
                         : "r"(ot), "r"(p)); \
    } while (0)
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_44", func_800692EC);

void func_8006973C(int a, short *v) {
    func_80097E4C(a, v[0], v[1], v[2]);
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_44", func_8006976C);

int *func_80069A28(int *p) {
    int i;

    D_800D11C8[0] = 0;
    for (i = 0; i < 2; i++) {
        D_800D11B8[i] = 1;
    }
    D_800D11B0[0] = 0;
    func_80069A88(p);
    return p;
}

void func_80069A88(int *p) {
    int i;

    for (i = 0; i < 2; i++) {
        D_800D11C0[i] = 0;
        p[i] = 0x4B;
        p[i + 2] = 6;
    }
}

void func_80069ACC(void) {
    int i;

    D_800D11B0[0] = 0;
    for (i = 0; i < 2; i++) {
        D_800D11B8[i] = 0;
        func_800B031C(i, 0);
    }
}

/* Each frame (a callback): each channel that's on gets its pattern's step from D_800B8788, or 0
 * while they're off; the step counts to 8. */
void func_80069B24(void) {
    int i;
    int on = D_800D11B0[0];

    for (i = 0; i < 2; i++) {
        if (on) {
            if (D_800D11B8[i]) {
                func_800B031C(i, D_800B8788[D_800D11C0[i]][D_800D11C8[0]] | (D_800D11A8[i] << 8));
            }
        } else if (D_800D11B8[i]) {
            func_800B031C(i, 0);
        }
    }
    D_800D11C8[0] = (D_800D11C8[0] + 1) & 7;
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_44", func_80069C28);

Snd44 *func_80069F50(Snd44 *o) {
    o->m_vt = D_800C7724;
    func_80069F84(o);
    return o;
}

void func_80069F84(Snd44 *o) {
    o->m_type = 1;
    o->m_38 = 0xFFFF;
    o->m_3C = 0;
    o->m_40 = 8;
    o->m_42 = 0;
    o->m_44 = -1;
    o->m_28 = 0;
    o->m_2C = 0;
}

#ifdef NON_MATCHING
/* The scales read first as in the original; the registers differ (19 off) */
/* The sound's position on the screen, scaled when it's far. */
void func_80069FB8(Snd44 *o, Pos44 *x) {
    int a = o->m_10;
    int b = o->m_14;
    int sa = x->m_30;
    int sb = x->m_34;
    int ob = x->m_20;
    int oa = x->m_18;

    if ((u32)(a + 0x1FF) >= 0x3FF) {
        a = ((a >> 12) * sa) >> 12;
    }
    if ((u32)(b + 0x1FF) >= 0x3FF) {
        b = ((b >> 12) * sb) >> 12;
    }
    o->m_34 = a + oa;
    o->m_36 = b + ob;
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_44", func_80069FB8);
#endif

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_44", func_8006A028);

void func_8006A0D0(void) {
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_44", func_8006A0D8);

// A virtual function: its argument passed on to the vtable's entry 7 untouched
int func_8006A1B4(Snd44 *o, int a) {
    if (o->m_44 & D_800CAE80->m_04) {
        o->m_38 &= 0xFFFFFF;
        ((void (*)(void *, int))o->m_vt[7].m_func)((char *)o + o->m_vt[7].m_delta, a);
        return 1;
    }
    return 0;
}

void func_8006A224(Snd44 *o) {
    VCALLV(o, 1);
}

SndA44 *func_8006A258(SndA44 *o) {
    func_80069F50(&o->m_base);
    o->m_base.m_vt = D_800C76DC;
    func_8006A294(o);
    return o;
}

void func_8006A294(SndA44 *o) {
    func_80069F84(&o->m_base);
    o->m_base.m_type = 1;
    o->m_4A = 0x12;
    o->m_4C = 0;
    o->m_48 = -1;
}

/* A text sound drawn: its colour and its mode set when they changed, then its text with the
 * font picked by the value at 0x4A; 0 without a font. */
int func_8006A2D4(SndA44 *o, int a, short *h) {
    int r = 0;
    int font = D_800CC030[o->m_4A];

    if (font) {
        r = 1;
        if (func_8006A1B4(&o->m_base, a)) {
            D_800C89D0 = o->m_base.m_3C;
            if (o->m_base.m_38 != D_800C89D8) {
                D_800C89D8 = o->m_base.m_38;
                func_80080F8C();
            }
            if (D_800C89D4 != (u16)o->m_base.m_40 || D_800C89D5 != (u16)o->m_base.m_42) {
                D_800C89D4 = o->m_base.m_40;
                D_800C89D5 = o->m_base.m_42;
                func_80080F8C();
            }
            func_80080040(font, (char *)o->m_4C, o->m_base.m_34, o->m_base.m_36, h);
        }
    }
    return r;
}

void func_8006A3E4(Snd44 *o, int a) {
    VCALL2(o, 8, a, 0);
}

void func_8006A420(SndA44 *o) {
    func_8006A6B0((Texts44 *)&D_800CB480, o->m_48);
    o->m_4C = 0;
    o->m_48 = -1;
}

Four44 *func_8006A460(Four44 *t) {
    t->m_04 = 0;
    t->m_08 = 0;
    t->m_0C = 0;
    func_8006A4D8(t);
    return t;
}

void func_8006A494(Four44 *t, int flags) {
    func_8006A4D8(t);
    if (flags & 1) {
        __builtin_delete(t);
    }
}

void func_8006A4D8(Four44 *t) {
    t->m_00 = 0;
    t->m_02 = 0;
    if (t->m_04) {
        __builtin_vec_delete(t->m_04);
        t->m_04 = 0;
    }
    if (t->m_08) {
        __builtin_vec_delete(t->m_08);
        t->m_08 = 0;
    }
    t->m_0C = 0;
}

void func_8006A534(Four44 *t, int n, short m) {
    SndA44 *a;
    SndA44 *q;
    int i;
    short k = n;

    t->m_00 = n;
    t->m_02 = m;
    a = (SndA44 *)__builtin_vec_new(k * sizeof(SndA44));
    q = a;
    i = k - 1;
    if (i >= 0) {
        do {
            func_8006A258(q);
            q++;
        } while (--i != -1);
    }
    t->m_04 = a;
    t->m_0C = t->m_08 = __builtin_vec_new(t->m_02);
}

/* A text kept for the first sound whose virtual function 6 returns 0: copied into the buffer's
 * free space when it fits; the sound's index, or -1. */
int func_8006A5D0(Texts44 *o, char *t, int len) {
    int r = -1;

    if (t && o->m_08) {
        r = func_8006B9F8(o->m_04, o->m_00);
        if (len == -1) {
            len = strlen(t);
        }
        if (r != -1 && len < (int)(o->m_08 + o->m_02 - o->m_0C)) {
            ((SndA44 *)((r * 5 << 4) + (u8 *)o->m_04))->m_4C = (int)o->m_0C;
            strcpy(o->m_0C, t);
            o->m_0C += len + 1;
        }
    }
    return r;
}

/* A sound's text taken out of the buffer: the texts after it moved down over it and their
 * sounds' pointers moved with them. */
void func_8006A6B0(Texts44 *o, int k) {
    if (k >= 0 && k < o->m_00) {
        SndA44 *s = &o->m_04[k];
        int n = 0;

        if (s->m_4C) {
            int i;
            SndA44 *e;
            char *d, *f;

            n = strlen((char *)s->m_4C) + 1;
            for (i = 0, e = o->m_04; i < o->m_00; i++, e++) {
                if (i != k && (u32)s->m_4C < (u32)e->m_4C) {
                    e->m_4C -= n;
                }
            }
            for (d = (char *)s->m_4C, f = d + n; d < o->m_0C; d++, f++) {
                *d = *f;
            }
        }
        s->m_4C = 0;
        s->m_48 = -1;
        o->m_0C -= n;
    }
}

SndB44 *func_8006A7D8(SndB44 *o) {
    func_80069F50(&o->m_base);
    o->m_base.m_vt = D_800C769C;
    func_8006A814(o);
    return o;
}

void func_8006A814(SndB44 *o) {
    func_80069F84(&o->m_base);
    o->m_base.m_type = 2;
    o->m_48 = -1;
}

int func_8006A848(SndB44 *o, int a) {
    int r = 0;

    if (func_8006A1B4(&o->m_base, a)) {
        D_800C885C = o->m_base.m_40;
        D_800C885D = o->m_base.m_42;
        D_800C8860 = o->m_base.m_38;
        r = func_80077BE4(D_800CC030[o->m_48], o->m_base.m_3C, o->m_base.m_34, o->m_base.m_36);
        if (!r) {
            VCALLV(&o->m_base, 5);
        }
    }
    return r;
}

Three44 *func_8006A8FC(Three44 *p) {
    p->m_00 = 0;
    p->m_04 = 0;
    p->m_08 = -1;
    return p;
}

void func_8006A914(Cnt44 *c, int n) {
    if (n > 0) {
        if (n > 16) {
            n = 16;
        }
        c->m_items = (Snd44 **)__builtin_vec_new(n * 4);
        c->m_n = n;
        memset(c->m_items, 0, n * 4);
        func_8006ACB0(c);
        c->m_08 = func_8006AD00(c);
    }
}

/* s put in the first free place, with its kind and id; its index, or -1. */
int func_8006A994(Cnt44 *c, int a, Snd44 *s, short b) {
    int r = -1;

    if (c->m_08 != -1 && s) {
        r = c->m_08;
        c->m_items[r] = s;
        s->m_08 = D_800D60EC;
        s->m_02 = a;
        s->m_03 = b;
        VCALLV(s, 4);
        c->m_08 = func_8006AD00(c);
    }
    return r;
}

/* A text shown as a sound: its text kept in D_800CB480's buffer, the sound added to the list,
 * given its position and colour; 0 when either is full. */
SndA44 *func_8006AA30(Cnt44 *c, int a, char *t, int x, int y, int col, short h) {
    SndA44 *s = 0;
    int r = -1;

    if (t) {
        int k = func_8006A5D0((Texts44 *)&D_800CB480, t, -1);

        if (k != -1) {
            s = (SndA44 *)((k * 5 << 4) + (u8 *)D_800CB484);
            r = func_8006A994(c, a, &s->m_base, h);
            if (r != -1) {
                s->m_base.m_10 = x;
                s->m_base.m_14 = y;
                s->m_base.m_38 = col;
                s->m_base.m_04 = -1;
                s->m_48 = k;
            } else {
                func_8006A6B0((Texts44 *)&D_800CB480, k);
            }
        }
    }
    if (r == -1) {
        s = 0;
    }
    return s;
}

/* The sound at i stopped and its place freed. */
void func_8006AB3C(Cnt44 *c, int i) {
    if (i >= 0 && i < c->m_n) {
        Snd44 *s = c->m_items[i];

        if (s) {
            VCALLV(s, 5);
        }
        c->m_items[i] = 0;
        c->m_08 = i;
    }
}

/* The sounds with this id. */
void func_8006ABD4(Cnt44 *c, int id) {
    int i = c->m_n - 1;
    Snd44 **p = &c->m_items[i];

    if (i > 0) {
        do {
            if (*p && (*p)->m_03 == id) {
                func_8006AB3C(c, i);
            }
            p--;
        } while (--i >= 0);
    }
}

/* A sound with this id in the list. */
int func_8006AC5C(Cnt44 *c, int id) {
    int i = c->m_n - 1;
    Snd44 **p = &c->m_items[i];

    if (i > 0) {
        do {
            if (*p && (*p)->m_03 == id) {
                return 1;
            }
            p--;
        } while (--i >= 0);
    }
    return 0;
}

/* Every item, from the last; none when there's only one (i > 0 is tested
 * before a loop that runs down to 0). */
void func_8006ACB0(Cnt44 *c) {
    int i = c->m_n - 1;

    if (i > 0) {
        do {
            func_8006AB3C(c, i);
        } while (--i >= 0);
    }
}

/* The first free place in the list, or -1. */
int func_8006AD00(Cnt44 *c) {
    int r = -1;

    if (c->m_items) {
        int n = c->m_n;
        int i = 0;
        Snd44 **p = c->m_items;

        if (n > 0) {
            if (!*p++) {
                r = 0;
                goto done;
            }
            do {
                if (--n == 0) {
                    goto done;
                }
                i++;
            } while (*p++);
            r = i;
        }
    }
done:
    return r;
}

/* Each sound from the last: removed when forced, or when its time is up (-1 always, 0
 * never), else its virtual function 2 called with the time. */
void func_8006AD60(Cnt44 *c, int force) {
    if (c->m_items) {
        int now = D_800D60EC;
        int i = c->m_n - 1;
        Snd44 **p = &c->m_items[i];

        do {
            Snd44 *o = *p;

            if (o) {
                int t = o->m_04;

                if (force || (t != 0 && (t == -1 || o->m_08 + t < now))) {
                    func_8006AB3C(c, i);
                } else {
                    ((void (*)(void *, int))o->m_vt[2].m_func)((char *)o + o->m_vt[2].m_delta, now);
                }
            }
            p--;
        } while (--i >= 0);
    }
}

/* The list's sounds of a player shown: the GTE's matrix set once, each drawn (its virtual
 * function 3) with that player's view, or D_800C8D90 for the camera's own. */
void func_8006AE54(Cnt44 *c, int id) {
    int cam = D_800C886C->m_64;
    int set = 0;

    if (c->m_items) {
        Snd44 **p = c->m_items;
        int n = c->m_n - 1;

        do {
            Snd44 *o = *p;

            if (o && o->m_vt[6].m_func((char *)o + o->m_vt[6].m_delta) && (s8)o->m_02 == id) {
                void *v;

                if (!set) {
                    func_80079AE4(0, 0x80000);
                    set = 1;
                }
                if (cam != id) {
                    VtEntry *e = &D_800C886C->m_68[14];

                    v = ((void *(*)(void *, int))e->m_func)((char *)D_800C886C + e->m_delta, id);
                } else {
                    v = D_800C8D90;
                }
                ((int (*)(void *, void *))o->m_vt[3].m_func)((char *)o + o->m_vt[3].m_delta, v);
            }
            p++;
        } while (--n);
    }
}

Nine44 *func_8006AF80(Nine44 *p) {
    p->m_00 = 0;
    p->m_04 = 0;
    p->m_14 = -1;
    p->m_1C = 0;
    p->m_20 = 0;
    p->m_18 = 0;
    return p;
}

void func_8006AFA4(Ref44 *r, int a) {
    VCALL2(r->m_00, 8, a, (int)r->m_0C);
}

Arr44 *func_8006AFEC(Arr44 *p) {
    p->m_04 = -1;
    p->m_08 = 0;
    p->m_14 = 0;
    p->m_00 = 0;
    p->m_18 = 0;
    p->m_1C = 0;
    p->m_10 = 0;
    p->m_0C = 0;
    return p;
}

void func_8006B018(Arr44 *p, int flags) {
    func_8006B05C(p);
    if (flags & 1) {
        __builtin_delete(p);
    }
}

void func_8006B05C(Arr44 *p) {
    if (p->m_14) {
        __builtin_vec_delete(p->m_14);
        p->m_14 = 0;
    }
}

void func_8006B098(Arr44 *p, int n) {
    Nine44 *a;
    Nine44 *q;
    int i;

    if (n > 16) {
        n = 16;
    }
    p->m_00 = n;
    a = (Nine44 *)__builtin_vec_new(n * sizeof(Nine44));
    q = a;
    i = n - 1;
    if (i >= 0) {
        do {
            func_8006AF80(q);
            q++;
        } while (--i != -1);
    }
    p->m_14 = a;
}

void func_8006B128(Two44 *p, int a) {
    p->m_04 = a;
    p->m_10 = 0;
}

/* A group's frame: its player's view looked up once, each of its entries drawn with it (an
 * entry of kind 2 only when its sound's mask is on), then a dark box over the view's area
 * (gouraud, semi-transparent) and its mode. */
#ifdef NON_MATCHING
// The packets: the original loads the gouraud colour 0x808080 before the code word 0x3A808080, its ADD_PRIM's registers differ ($a1 for the link where ui.h's macro gets $a0), and it builds the mode packet at the old pointer plus 0x24 before storing the pointer back (36 off; the list walk and the box's corners match).
void func_8006B134(Grp44 *g) {
    RefN44 *e = g->m_18;

    if (e) {
        VtEntry *v = &D_800C886C->m_68[14];
        int h = ((int (*)(void *, int))v->m_func)((char *)D_800C886C + v->m_delta, g->m_04);
        RECT44 r;
        u32 *p;

        if (!g->m_10) {
            g->m_10 = h;
        }
        do {
            int k = e->m_r.m_04;

            if (k) {
                if (k != 2 || (e->m_r.m_00->m_44 & D_800CAE80->m_04)) {
                    func_8006AFA4(&e->m_r, h);
                }
            }
            e = e->m_20;
        } while (e);
        func_8009574C(h, &r);
        r.h += r.y;
        r.w = g->m_1C->m_0C + g->m_1C->m_10;
        p = (u32 *)D_800C8C70;
        p[0] = 0x08000000;
        p[1] = 0x3A808080;
        p[3] = 0;
        p[5] = 0x808080;
        p[7] = 0;
        p[2] = (u16)r.x | (r.y << 16);
        p[4] = (u16)r.w | (r.y << 16);
        p[6] = (u16)r.x | (r.h << 16);
        p[8] = (u16)r.w | (r.h << 16);
        ADD_PRIM44(D_800CBDC0 + 1, D_800C8C70);
        D_800C8C70 += 0x24;
        p = (u32 *)D_800C8C70;
        p[0] = 0x01000000;
        p[1] = 0xE1000240;
        ADD_PRIM44(D_800CBDC0 + 1, D_800C8C70);
        D_800C8C70 += 8;
    }
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_44", func_8006B134);
#endif

void func_8006B330(void *x, Ref44 *r, int a) {
    VCALL1(r->m_00, 2, a);
    if (r->m_00->m_2C == r->m_00->m_28) {
        r->m_00->m_08 = a;
        r->m_00->m_04 = r->m_18;
        r->m_04 = 2;
    }
}
