#include "common.h"

/* The game's code built with GCC 2.91.66, -G8, split addresses
 * (docs/matching/issue-33-langimg-chunk32.md). */

extern "C" {
struct Tag32 {
    u8 m_00[8];
};
struct Vec32 {
    int x, y, z;
};
// A point of a bike's path, 32 bytes
struct Pt32 {
    Vec32 m_00;
    Tag32 m_0C;
    u16 m_14[4];
    int m_1C;
};
// A bike's path: its points
struct Path32 {
    int m_00;
    Pt32 *m_04;
};
struct Ctl32 {
    u8 m_00[4];
    s8 m_04;
};
struct Body32 {
    u8 m_00[0x30];
    struct Body32 *m_30;
    u8 m_34[0x20];
    struct Bike32 *m_54;
    u8 m_58[0xC];
    Vec32 m_64;
    u8 m_70[0x9C];
    int m_10C;
    u8 m_110[0x11C];
    Ctl32 **m_22C;
    u8 m_230[0x2F9];
    s8 m_529;
    s8 m_52A;
    u8 m_52B;
    int m_52C;
    int m_530;
};
// A bike, 0x568 bytes (chunk_38's Bike38)
struct Bike32 {
    union {
        u32 m_00;    // flags: bits 1-5, its kind
        u8 m_00b[4]; // 1: its state
    };
    u8 m_04[0x2C];
    Body32 *m_30;
    u8 m_34[0xD];
    s8 m_41;
    s8 m_42;
    s8 m_43;
    s8 m_44;
    u8 m_45[0x4FB];
    int m_540;
    int m_544;
    Vec32 m_548;
    union {
        Tag32 m_554;
        short m_554s[4];
    };
    Path32 *m_55C;
    int m_560;
    int m_564;
};
// A step of the race's sequence, 20 bytes
struct Step32 {
    int m_00; // its kind, 0 to 10
    int m_04;
    int m_08;
    Bike32 *m_0C;
    Body32 *m_10;
};
// The race's sequence of steps (the race's 0x494)
struct Seq32 {
    Step32 *m_00;
    int m_04; // the current step
    int m_08; // the count
};
// The run (chunk_38's Run38)
struct Run32 {
    u32 m_00;
    u8 m_04[0xC];
    Body32 *m_10;
    u8 m_14[0x40];
    struct {
        int m_00;
        u8 m_04[0x1C];
    } m_54[8];
    u8 m_154[0x194];
    Bike32 m_2E8[5];
    int m_1DF0;
    int m_1DF4;
    u8 m_1DF8[0x10];
    int m_1E08;
    u8 m_1E0C[8];
    int m_1E14[2];
    int m_1E1C[2];
    s8 m_1E24;
    u8 m_1E25[0x133];
    Body32 *m_1F58;
};
struct Ent32 {
    u8 m_00[0x15C];
    int m_15C;
};
// An element of a list, linked at 0x0C
struct Node32 {
    u8 m_00[0xC];
    struct Node32 *m_0C;
    u8 m_10[8];
    u32 m_18; // bits 0-1, bits 6-11: its kind
};
struct List32 {
    u8 m_00[4];
    Node32 *m_04;
};
struct Two32 {
    u8 m_00[0x24];
    Node32 *m_24;
};
struct Sub32 {
    u8 m_00[0xAC];
    int m_AC;
};
// A sprite (what func_80053198 returns)
struct Spr32 {
    u8 m_00[8];
    short m_08;
    u8 m_0A[2];
    short m_0C;
};
// One of a sprite's parts (what func_800841BC returns)
struct Part32 {
    u8 m_00[0xC];
    struct {
        u32 a : 30;
        u32 b : 2;
    } m_0C;
    u8 m_10[4];
    struct {
        u32 a : 12;
        u32 b : 10;
    } m_14;
    struct {
        u32 a : 10;
    } m_18;
    struct {
        u32 a : 6;
        u32 b : 16;
        u32 c : 5;
    } m_1C;
};
// One of the race's three cameras, 0x5C bytes
struct Cam32 {
    u8 m_00[0x10];
    short m_10;
    short m_12;
    u8 m_14[0x46];
    short m_5A;
};
struct Hud32 {
    u8 m_00[0x98];
    struct {
        s8 m_00;
        u8 m_01[0xF];
    } m_98[3];
    s8 m_C8;
};
struct Time32 {
    int m_t : 30;
    u32 m_f : 2;
};
// A vtable's entry
struct VtEntry32 {
    short m_delta;
    short m_index;
    void *m_func;
};
struct Sys32 {
    u8 m_00[0x68];
    VtEntry32 *m_68;
};
// What the vtable's call returns
struct Box32 {
    u8 m_00[0x1C];
    int m_1C;
    int m_20;
};
struct Scr32 {
    u8 m_00[0x18];
    int m_18;
    u8 m_1C[4];
    int m_20;
    int m_24;
    int m_28;
    int m_2C;
};
// The race (chunk_38's Own38)
struct Own32 {
    union {
        u32 m_00;
        struct {
            int b0 : 1;
        } m_00f;
    };
    int m_04;
    u8 m_08[0x64];
    List32 *m_6C;
    u8 m_70[0x48];
    Sub32 *m_B8;
    u8 m_BC[8];
    int m_C4[8];
    u8 m_E4[0x220];
    int m_304;
    u8 m_308[0x70];
    Run32 *m_378;
    u8 m_37C[6];
    short m_382;
    u8 m_384[0x34];
    Cam32 *m_3B8;
    u8 m_3BC[0x80];
    Ent32 *m_43C;
    u8 m_440[0x30];
    s8 m_470[0x20];
    int m_490;
    Seq32 *m_494;
    Two32 *m_498;
};

extern Own32 *D_800C5E14;
extern int D_800C676C;
extern u8 D_800C885C;
extern u8 D_800C885D;
extern int D_800C8860;
extern Sys32 *D_800C886C;
extern int D_800C89D0;
extern u8 D_800C89D4;
extern u8 D_800C89D5;
extern int D_800C89D8;
extern int D_800C89DC;
extern Hud32 *D_800C89F4;
extern int D_800C89FC;
extern Scr32 *D_800C8D90;
extern int D_800CB368;
extern int D_800CB374;
extern int D_800CB3BC;
extern int D_800CB410;
extern void *D_800CB478;
extern int D_800CBD50;
extern int D_800CBD64;
extern int D_800CC07C;
extern int D_800CC084;
extern char D_800D4798;
extern int D_800D49A4;
extern u32 D_800D49F0;
extern int D_800D5F30;
extern int D_800D5F38;
extern int D_800D5F40;
extern int D_800D5FD4;
extern int D_800D5FD8;
extern Time32 D_800D6124;
extern int D_800D6128;

int func_80019D0C(List32 *l, Node32 *n, int a, int b, int c);
void func_800333F8(Body32 *a, Vec32 *b, Tag32 *c);
void func_800334E8(Body32 *a, Body32 *b, Own32 *o);
void func_800536F4(Own32 *o, int i, Spr32 *s);
void func_80053738(Own32 *o, int i);
void func_800537FC(Own32 *o, int i, Bike32 *b);
void func_8005C0E4(Own32 *o);
void func_80067650(Body32 *a, Body32 *b, Own32 *o);
int func_8006AC5C(void *c, int id);
void func_8006CA84(int a, int b);
void func_8006F7D4(void);
void func_80077BE4(int img, int a, int x, int y);
void func_80080040(int font, char *s, int x, int y, short *h);
void func_80080F8C(void);
int func_8008280C(int a, int b, int c, int d);
int func_80082B64(Hud32 *h, Bike32 *b);
void func_80082F1C(Hud32 *a, int b, int c, int d);
void func_80082FA8(Hud32 *h, Run32 *r);
void func_80083078(Hud32 *h, int i, Own32 *o);
void func_80083618(int a, int i);
Part32 *func_800841BC(Spr32 *s, int b, int c);
void func_800842E8(Spr32 *s, int a, int b, int c);
int func_800846AC(Run32 *r, Bike32 *b, int k, Scr32 *s, int i, int f);
void func_800846FC(void);
void func_80084720(Own32 *o, Sys32 *s);
void func_80085C28(int *a);
void func_800865B4(Cam32 *c);
u32 func_800993C8(Vec32 *v);
Vec32 *func_800998D0(Vec32 *d, Vec32 *a, Vec32 *b);
int func_80099B88(Vec32 *a, Vec32 *b);
void func_800A6788(int a, int b);

int func_800514F4(Bike32 *b, Own32 *o);
int func_80051578(Bike32 *b);
void func_800515A8(Bike32 *b, int n, Own32 *o);
int func_80051618(Bike32 *b, Own32 *o);
void func_80051884(Bike32 *b);
void func_80051940(Bike32 *b, int x);
void func_80051A84(Seq32 *s, Own32 *o);
void func_80051AB0(Seq32 *s, int i, int kind, int a, Bike32 *b, Body32 *c);
int func_80051AE0(Seq32 *s, Own32 *o, int i);
int func_80051DC4(Seq32 *s, Own32 *o);
int func_80051EA4(Seq32 *s, Own32 *o);
Step32 *func_80052120(Seq32 *s);
void func_80052720(void);
void func_80052EB0(Own32 *o);
void func_80053048(Own32 *o);
Spr32 *func_80053198(Own32 *o, int i);
void func_80053250(Own32 *o, int i);
}

int func_800514F4(Bike32 *b, Own32 *o) {
    int n = func_80051618(b, o);
    int r = 0;

    if (n) {
        b->m_540 += n;
        n = b->m_540;
        if (b->m_544 < n) {
            b->m_544 = n;
            func_800515A8(b, n, o);
        }
        if (func_80051578(b)) {
            r = 1;
        }
    }
    return r;
}

int func_80051578(Bike32 *b) {
    if (!b->m_55C) {
        return 0;
    }
    return b->m_540 >= b->m_55C->m_00 - 1;
}

void func_800515A8(Bike32 *b, int n, Own32 *o) {
    Run32 *r = o->m_378;

    if (!(r->m_00 & 0xA8) && b->m_55C) {
        r->m_1DF0 = b->m_55C->m_04[n].m_14[D_800D5F30];
        func_8006CA84(0x45, 0x7F);
    }
}

static inline void func_80051618_set(Vec32 *d, Vec32 *s) {
    d->x = s->x;
    d->y = s->y;
    d->z = s->z;
}

int func_80051618(Bike32 *b, Own32 *o) {
    int r;
    Path32 *p = b->m_55C;
    Vec32 pos;

    if (!p) {
        return 0;
    }
    r = 0;
    pos = b->m_30->m_64;
    if (b->m_540 + 1 < p->m_00) {
        Pt32 *pt = &p->m_04[b->m_540];
        Vec32 next = pt[1].m_00;
        Vec32 cur = pt->m_00;
        Vec32 d1, d2;
        int ok;

        func_800998D0(&d1, &next, &cur);
        d1.y = 0;
        func_800998D0(&d2, &pos, &next);
        d2.y = 0;
        ok = func_80099B88(&d2, &d1) > 0;
        if (ok) {
            if (func_800993C8(&d2) > 0x10000000) {
                ok = 0;
            }
            if (ok) {
                if ((*b->m_30->m_22C)->m_04 == 6 && b->m_540 < b->m_55C->m_00 - 2) {
                    ok = 0;
                }
                if (ok) {
                    func_80051618_set(&b->m_548, &next);
                    r = 1;
                    if (b->m_540 < b->m_55C->m_00 - 1) {
                        b->m_554 = pt[1].m_0C;
                    }
                    if (D_800D5F38 == 11 && b->m_540 == 3 && b->m_44 == 1 && D_800C5E14 &&
                        (D_800C5E14->m_378->m_00 & 0xA8)) {
                        b->m_554s[1] = 0;
                    }
                }
            }
        }
    }
    return r;
}

void func_80051884(Bike32 *b) {
    Body32 *s = b->m_30;

    if (s && s->m_529 && s->m_52A && !func_80051578(b)) {
        if (s->m_530 >= 0x899 || (s->m_530 >= 0x1F5 && !s->m_10C)) {
            func_800333F8(s, &b->m_548, &b->m_554);
            if (!b->m_540) {
                s->m_52A = 0;
            }
            b->m_564 = 1;
        }
    }
}

void func_80051940(Bike32 *b, int x) {
    if (D_800C5E14->m_378->m_10->m_52C == 5) {
        int on = b->m_564;
        int was = on;

        if (x >= 0xF01) {
            on = 0;
        } else if (x < 0x100) {
            on = 1;
        }
        if (on && !was) {
            b->m_560++;
            D_800C5E14->m_378->m_54[b->m_44].m_00 += 5000;
            if (b->m_43 != -1) {
                Spr32 *p;

                func_80082F1C(D_800C89F4, b->m_43, b->m_560, 0);
                p = func_80053198(D_800C5E14, b->m_43);
                if (p) {
                    Part32 *q = func_800841BC(p, 2, 1);

                    if (q) {
                        q->m_1C.a = 1;
                        q->m_1C.b = 1000;
                        q->m_1C.c = 0;
                    }
                }
            }
        }
        b->m_564 = on;
    }
}

void func_80051A84(Seq32 *s, Own32 *o) {
    func_80051DC4(s, o);
    s->m_04 = -1;
}

void func_80051AB0(Seq32 *s, int i, int kind, int a, Bike32 *b, Body32 *c) {
    Step32 *p = &s->m_00[i];

    p->m_00 = kind;
    p->m_08 = a;
    p->m_0C = b;
    p->m_10 = c;
}

int func_80051AE0(Seq32 *s, Own32 *o, int i) {
    int r = 0;
    int n = s->m_08;

    if (i >= 0) {
        goto test;
    next:
        i++;
    test:
        if (i < n) {
            Step32 *p = &s->m_00[i];
            int kind = p->m_00;

            p->m_04 = p->m_08;
            switch (kind) {
            case 1:
            case 8:
            case 9:
            case 10:
                r = 1;
                // falls through (with a break, GCC lays the cases out differently)
            case 0:
                if (p->m_04 >= 0) {
                    r = 1;
                }
                break;
            case 2:
            case 4:
                if (!o->m_304 && !(o->m_378->m_00 & 0x102)) {
                    Run32 *rr = o->m_378;
                    Bike32 *b = 0;

                    if (rr->m_1E24 >= 0) {
                        b = &rr->m_2E8[rr->m_1E24];
                    }
                    if (b->m_00b[1] == 3 && (!b->m_41 || kind == 4) && rr->m_1F58) {
                        Body32 *nb, *old;

                        if (kind == 2) {
                            func_800A6788(14, 0);
                        }
                        old = b->m_30;
                        nb = o->m_378->m_1F58;
                        p->m_0C = b;
                        p->m_10 = b->m_30;
                        b->m_30 = nb;
                        b->m_00 = (b->m_00 & ~0x3E) | 4;
                        nb->m_54 = b;
                        func_80067650(nb, old, o);
                        p->m_04 = p->m_08;
                        r = 1;
                    }
                }
                break;
            case 3: {
                Step32 *q = &s->m_00[s->m_04];

                if (q->m_00 == 2) {
                    p->m_0C = q->m_0C;
                    p->m_10 = q->m_10;
                    p->m_04 = p->m_08;
                    r = 1;
                }
                break;
            }
            case 5: {
                Run32 *rr = o->m_378;

                if (!(rr->m_00 & 0xA8)) {
                    Bike32 *b = 0;

                    if (rr->m_1E24 >= 0) {
                        b = &rr->m_2E8[rr->m_1E24];
                    }
                    if (b->m_00b[1] == 3) {
                        r = 1;
                        o->m_43C->m_15C = 6;
                        o->m_382 = 0;
                        func_8006F7D4();
                    }
                }
                break;
            }
            case 7:
                r = func_80019D0C(o->m_6C, o->m_498->m_24, 1, 0, -1) != 0;
                break;
            case 6:
                break;
            }
            if (!r) {
                goto next;
            }
        }
    }
    s->m_04 = i;
    return r;
}

int func_80051DC4(Seq32 *s, Own32 *o) {
    int r = 0;

    if (s->m_04 >= 0 && s->m_04 < s->m_08) {
        Step32 *p = &s->m_00[s->m_04];

        r = 1;
        switch (p->m_00) {
        case 0:
        case 1:
        case 2:
        case 6:
        case 7:
        case 8:
        case 9:
        case 10:
            break;
        case 3:
        case 4: {
            Bike32 *b = p->m_0C;
            Body32 *n, *old;

            b->m_00 = (b->m_00 & ~0x3E) | 2;
            n = p->m_10;
            old = b->m_30;
            b->m_30 = n;
            n->m_54 = b;
            func_800334E8(n, old, o);
            break;
        }
        case 5:
            o->m_382 = 1;
            break;
        }
    }
    if (r) {
        D_800CB3BC = 1;
    }
    return r;
}

#ifdef NON_MATCHING
// Registers: the list's node in $v1 where the original has $a0 (6 off). The search is a goto loop: written as a for or a while, GCC copies its first test before it.
int func_80051EA4(Seq32 *s, Own32 *o) {
    int r = 0;

    if (s->m_04 >= 0 && s->m_04 < s->m_08) {
        Step32 *p = &s->m_00[s->m_04];
        int done = 0;

        r = 1;
        switch (p->m_00) {
        case 8:
            p->m_04 -= D_800D6128;
            done = p->m_04 < 0 && (u32)(o->m_378->m_1E08 - 5) < 4;
            break;
        case 10:
            done = !func_8006AC5C(D_800CB478, 3) && !func_8006AC5C(D_800CB478, 4);
            break;
        case 9: {
            Node32 *n = o->m_6C->m_04;
            int found = 0;

            goto test;
        next:
            n = n->m_0C;
        test:
            if (n) {
                if ((u32)(((n->m_18 >> 6) & 0x3F) - 5) >= 3 || !(n->m_18 << 30)) {
                    goto next;
                }
                found = 1;
            }
            done = !found;
            break;
        }
        case 1:
            func_8005C0E4(o);
            done = 1;
            break;
        case 3:
        case 4:
            p->m_04 -= D_800D6128;
            if (p->m_04 < 0) {
                done = 1;
                o->m_382 = -1;
                func_8006F7D4();
            }
            break;
        case 0:
        case 2:
            p->m_04 -= D_800D6128;
            if (D_800CB410 || p->m_04 < 0) {
                done = 1;
            }
            break;
        case 5:
            if (!o->m_43C->m_15C) {
                done = 1;
            }
            break;
        case 7:
            if (!o->m_498->m_24 || !(o->m_498->m_24->m_18 << 30)) {
                done = 1;
            }
            break;
        case 6:
            break;
        }
        if (done) {
            func_80051DC4(s, o);
            r = func_80051AE0(s, o, s->m_04 + 1);
        }
        if (!r) {
            o->m_B8->m_AC = -1;
        }
    }
    return r;
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_32", func_80051EA4);
#endif

Step32 *func_80052120(Seq32 *s) {
    Step32 *p = 0;

    if (s->m_04 >= 0 && s->m_04 < s->m_08) {
        p = &s->m_00[s->m_04];
    }
    return p;
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_32", func_8005215C);

#ifdef NON_MATCHING
// The digit loop: GCC steps a pointer through the text where the original adds the index to the text's address each time; the last call loads the screen before the font (27 off).
void func_80052720(void) {
    if (D_800D5FD4 & 0x400) {
        int c = ++D_800C676C;
        int m;
        int i;
        int f;
        VtEntry32 *e;

        if (!(c & 0x3F)) {
            D_800D5FD8 &= ~1;
        } else if (!(c & 0x1F)) {
            D_800D5FD8 |= 1;
        }
        m = 8;
        (&D_800D4798)[0] = 0;
        for (i = 0; i < 4; i++) {
            char c = '0';
            char *d = &D_800D4798;

            if (D_800D5FD8 & m) {
                c = '1';
            }
            m >>= 1;
            d[i] = c;
            d[i + 1] = 0;
        }
        e = &D_800C886C->m_68[14];
        ((int (*)(void *, int))e->m_func)((char *)D_800C886C + e->m_delta, 0);
        if (D_800C89D8 != 0xFFFF) {
            D_800C89D8 = 0xFFFF;
            func_80080F8C();
        }
        func_80080040(D_800CC07C, &D_800D4798, D_800C8D90->m_18 + 0x1E, D_800C8D90->m_24, 0);
    }
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_32", func_80052720);
#endif

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_32", func_80052868);

#ifdef NON_MATCHING
// The text's mode and colours: GCC loads the image's handle before the three stores, the original after the colour's (10 off).
void func_80052EB0(Own32 *o) {
    int t;
    VtEntry32 *e = &D_800C886C->m_68[14];
    Box32 *g = ((Box32 * (*)(void *, int)) e->m_func)((char *)D_800C886C + e->m_delta, 10);

    if (D_800C89D4 != 8 || D_800C89D5 != 0) {
        D_800C89D4 = 8;
        D_800C89D5 = 0;
        func_80080F8C();
    }
    if (D_800D5F40 == 4 || D_800D5F40 == 0 || o->m_378->m_00 == 4) {
        func_80053048(o);
    }
    if (o->m_304) {
        D_800C885C = 4;
        D_800C8860 = 0xFFFFFF;
        D_800C885D = 0x80;
        func_80077BE4(D_800CC084, 0x20, g->m_1C, g->m_20);
    }
    t = -(o->m_00 & 1);
    if (t && (u32)(o->m_378->m_1DF4 + 5499) < 7000 && D_800CB374) {
        func_80085C28(&D_800CB368);
    }
    if ((D_800D49F0 >> 4) & 1) {
        func_80084720(o, D_800C886C);
    }
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_32", func_80052EB0);
#endif

#ifdef NON_MATCHING
// The last call's arguments: the original loads D_800C89F4 before the font, GCC the font first (4 off).
void func_80053048(Own32 *o) {
    Run32 *r = o->m_378;

    if (r->m_1E08 == 3) {
        int f = -1;

        if (r->m_1DF0 < 2000) {
            f = 2;
        } else if (r->m_1DF0 < 5000) {
            f = 4;
        } else if (r->m_1DF0 < 10000) {
            f = 8;
        }
        if (o->m_04 & f) {
            int x, y, w;

            if (D_800C89D4 != 8 || D_800C89D5 != 0x80) {
                D_800C89D4 = 8;
                D_800C89D5 = 0x80;
                func_80080F8C();
                r = o->m_378;
            }
            y = 0x10;
            x = D_800C8D90->m_20;
            if (D_800D5F40 == 4) {
                x += 0x1C;
            }
            if ((r->m_00 & 0xA8) && !D_800D49A4) {
                x = D_800C8D90->m_2C;
                y = 0x110;
            }
            D_800C89D0 = y;
            w = D_800C8D90->m_28;
            func_80080040(D_800CBD64, (char *)D_800C89F4 + 0xB8, w, x, 0);
        }
    }
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_32", func_80053048);
#endif

Spr32 *func_80053198(Own32 *o, int i) {
    Run32 *r = o->m_378;
    int k = o->m_470[i];
    Bike32 *b = 0;

    if (k >= 0) {
        b = &r->m_2E8[k];
    }
    if (r->m_00 & 0xA8) {
        int v;

        if (b->m_00b[1] == 3) {
            v = 8;
        } else if (b->m_00b[1] == 4) {
            v = 6;
        } else {
            v = r->m_1E08;
        }
        return (Spr32 *)func_8008280C(D_800CBD50, r->m_00, v, i);
    }
    return (Spr32 *)func_8008280C(D_800CBD50, r->m_00, r->m_1E08, i);
}

void func_80053250(Own32 *o, int i) {
    VtEntry32 *e;
    Run32 *r;
    int n, m;
    Bike32 *b;
    Spr32 *sp;
    int k;

    if (D_800C89D4 != 8 || D_800C89D5 != 0) {
        D_800C89D4 = 8;
        D_800C89D5 = 0;
        func_80080F8C();
    }
    e = &D_800C886C->m_68[14];
    ((int (*)(void *, int))e->m_func)((char *)D_800C886C + e->m_delta, o->m_C4[i]);
    for (k = 2; k >= 0; k--) {
        if (o->m_3B8[k].m_5A == o->m_C4[i] && o->m_3B8[k].m_10 > 0 && o->m_3B8[k].m_12 > 0) {
            func_800865B4(&o->m_3B8[k]);
        }
    }
    r = o->m_378;
    n = o->m_470[i];
    b = 0;
    if (n >= 0) {
        b = &r->m_2E8[n];
    }
    if (!func_800846AC(r, b, n, D_800C8D90, i, o->m_04)) {
        return;
    }
    sp = func_80053198(o, i);
    if (sp) {
        int t, t0, t1;
        int f;

        sp->m_0C = sp->m_08;
        t = D_800D6124.m_t;
        t0 = o->m_378->m_1E14[i];
        t1 = o->m_378->m_1E1C[i];
        if (t0 != -1 && t1 == -1 && t - t0 > 500 && func_80082B64(D_800C89F4, b)) {
            Part32 *q = func_800841BC(sp, 11, 1);

            if (q) {
                q->m_1C.a = 2;
                q->m_1C.b = 500;
                q->m_1C.c = 0;
            }
            o->m_378->m_1E1C[i] = t;
            o->m_490 = 1;
        }
        func_80083078(D_800C89F4, i, o);
        f = sp->m_0C;
        if (!D_800C89F4->m_C8) {
            f &= ~1;
            f &= ~2;
        } else {
            f |= 3;
        }
        if (o->m_378->m_10->m_52C != 7 || !D_800C89F4->m_98[i].m_00) {
            f &= ~0x200;
            f &= ~0x400;
            f &= ~0x800;
        } else {
            f |= 0xE00;
        }
        sp->m_0C = f;
        func_800842E8(sp, 0, 16, !o->m_490);
        if ((D_800C89DC & 0xFFFFFF) != D_800C89D8) {
            D_800C89D8 = D_800C89DC & 0xFFFFFF;
            func_80080F8C();
        }
        func_800536F4(o, i, sp);
    }
    if (D_800C89FC) {
        func_80083618(D_800C89FC, i);
    }
    if (D_800D5F40 == 0 && (o->m_378->m_1E08 == 3 || o->m_378->m_1E08 == 4)) {
        func_80082FA8(D_800C89F4, o->m_378);
        func_800537FC(o, i, b);
    } else if (D_800D5F40 == 2 && o->m_378->m_1E08 == 3) {
        func_80053738(o, i);
    }
    if (o->m_378->m_00 == 8 && (m = D_800D49A4) == 1) {
        Part32 *q = func_800841BC(sp, 8, 0);

        if (q) {
            if (i == m) {
                q->m_14.b = 0;
                q->m_18.a = 0;
            } else {
                q->m_14.b = 0x20;
                q->m_18.a = 0x20;
            }
            q->m_0C.b = 1;
        }
    }
    func_800846FC();
}
