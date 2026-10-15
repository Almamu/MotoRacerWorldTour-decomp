#include "common.h"
#include "langimg/race.h"

/* The game's code built with GCC 2.91.66, -G8, split addresses
 * (docs/matching/issue-34-langimg-chunk33.md). */

extern "C" {
// An element of a bike's list at 0x55C, 32 bytes
struct Shown33 {
    u8 m_00[4];
    int m_04; // flags: bit 1 set on the one after the current
};
struct Elem33 {
    u8 m_00[0x1C];
    Shown33 *m_1C;
};
struct Elems33 {
    int m_00; // how many
    Elem33 *m_04;
};
// A bike's state (chunk_10's)
struct State33 {
    u8 m_00[8];
    Vector3 m_08; // its position
    u8 m_14[0x20];
    void *m_34; // a matrix (where func_800544A8 passes its own)
    u8 m_38[0x20];
    s8 m_58;
    s8 m_59;
    u8 m_5A[0x3E4];
    short m_43E;
    u8 m_440[0xF4];
    int m_534;
    u8 m_538[0x1C];
    int m_554;
    int m_558;
};
// A bike, 0x568 bytes (chunk_39's Obj39)
struct Bike33 {
    u32 m_00; // flags: bit 6, in the race; bits 1-5, its kind
    u8 m_04[0x2C];
    State33 *m_30;
    u8 m_34[0x20];
    u8 m_54[0x74];
    u8 m_C8[0x74];
    Vector3 m_13C; // two boxes, each its low and high corners
    Vector3 m_148;
    Vector3 m_154;
    Vector3 m_160;
    Vector3 m_16C;
    Vector3 m_178;
    s8 m_184;
    u8 m_185;
    u8 m_186[2];
    u8 m_188;
    s8 m_189;
    u8 m_18A;
    u8 m_18B[0x12D];
    Vector3 m_2B8;
    u8 m_2C4[0x61];
    s8 m_325;
    u8 m_326[2];
    u8 m_328[0x218];
    int m_540;
    u8 m_544[0x18];
    Elems33 *m_55C;
    u8 m_560[8];
};
// The run (chunk_39's Run39)
struct Run33 {
    int m_00;
    int m_04; // how many
    u8 m_08[0x2E0];
    Bike33 m_2E8[5];
    u8 m_1DF0[0x18];
    int m_1E08; // the race's kind
    u8 m_1E0C[0x2E];
    short m_1E3A;
};
// A list of entries
struct Ent33 {
    u8 m_00[4];
    int m_04; // flags
    Vector3 m_08;
};
struct Ents33 {
    Ent33 **m_00;
    u8 m_04[4];
    int m_08; // how many
};
struct Ent33x {
    u8 m_00[0x14];
    int m_14;
};
struct Ent33b {
    u8 m_00[4];
    Ent33x *m_04;
};
// A sequence in the list (chunk_03's Seq)
struct Seq33 {
    u8 m_00[0xC];
    Seq33 *m_0C;
    u8 m_10[8];
    u32 m_18;
};
struct Seqs33 {
    u8 m_00[4];
    Seq33 *m_04;
};
struct Sel33 {
    int m_00; // flags
    u8 m_04[0x28];
    Seq33 *m_2C;
};
// The course (chunk_66's Course66): three lists of items, flag 0x8000 at 0x08
struct Item33 {
    u8 m_00[8];
    u16 m_08;
};
struct Course33 {
    u8 m_00[0x18];
    int m_18;
    int m_1C;
    int m_20;
    u8 m_24[4];
    Item33 **m_28;
    Item33 **m_2C;
    Item33 **m_30;
    u8 m_34[4];
    int m_38;
};
struct Scr33 {
    u8 m_00[0x18];
    int m_18;
    int m_1C;
    int m_20;
    int m_24;
};
// Two numbers to draw
struct Lap33 {
    u8 m_00[0xC];
    short m_0C;
    short m_0E;
};
// A zone: a position, then the entries in it
struct Zone33 {
    short m_00[2];
    Ent33 **m_04;
    short m_08;
};
struct Sel33b {
    u8 m_00[4];
    int m_04; // flags
};
// The race (chunk_39's Own39)
struct Race33 {
    int m_00a : 1;
    u32 m_00b : 6;
    u32 m_00c : 1; // the racer drawn (func_8001DA10)
    u32 m_00d : 24;
    u8 m_04[0x68];
    Seqs33 *m_6C;
    u8 m_70[4];
    Ents33 *m_74;
    u8 m_78[0x44];
    int m_BC[2];
    int m_C4[2];
    u8 m_CC[0x18];
    int m_E4[4];
    u8 m_F4[0x200];
    int m_2F4;
    u8 m_2F8[8];
    int m_300;
    int m_304;
    u8 m_308[8];
    void *m_310[2];
    int m_318;
    int m_31C;
    int m_320;
    int m_324; // bikes in
    int m_328; // of kind 1
    int m_32C;
    u8 m_330[0x28];
    int m_358;
    int m_35C;
    u8 m_360[0x18];
    Run33 *m_378;
    u8 m_37C[4];
    short m_380;
    u8 m_382[0x1A];
    int m_39C[2];
    int m_3A4[2];
    int m_3AC;
    u8 m_3B0[0xB4];
    Sel33b **m_464;
    u8 m_468[8];
    s8 m_470[0x18];
    int m_488[2];
    u8 m_490[8];
    Sel33 *m_498;
    u8 m_49C[0x7D4];
    Course33 *m_C70;
};

extern Scr33 *D_800C8D90;
extern int D_800CA7D8; // a Racer (chunk_06), declared small: its address is an `la`
extern char D_800C67CC[], D_800C67D4[], D_800C67E0[], D_800C67E8[], D_800C67F0[], D_800C67FC[];
extern int D_800C6804[];
extern int D_800D5F38;
// The 2D drawing state (chunk_03's DrawState), its vtable pointer at 0x68
struct DrawState33 {
    u8 m_00[0x68];
    struct VtEntry33 *m_68;
};
struct VtEntry33 {
    short m_delta;
    short m_index;
    void (*m_func)(void *self, int v);
};
extern DrawState33 *D_800C886C;
// The same vtable entry returning a screen (D_800C8D90's kind)
struct VtEntry33s {
    short m_delta;
    short m_index;
    Scr33 *(*m_func)(void *self, int v);
};
// An image: two of its bytes
struct Img33 {
    u8 m_00;
    u8 m_01[3];
    u8 m_04;
};
extern Img33 *D_800CC28C;
void func_80077EE0(Img33 *img, int a, int x, int y, int s, int w, int c);
void func_80081F28(void *p, Vector3 *v);
void func_8005114C(Bike33 *b, void *m, int n);
void func_80081FE0(void *p, void *m, Vector3 *lo, Vector3 *hi);
void func_8008259C(void *p, int k);
void func_80081A78(void *p, Vector3 *v, int n);
void func_80090E58(void *p, int k, Vector3 *lo, Vector3 *hi, int a);
void func_80090F94(void *p, int k, Vector3 *lo, Vector3 *hi, int a);
void func_80098DD4(Vector3 *lo, Vector3 *v);
void func_80098E38(Vector3 *hi, Vector3 *v);
extern int D_800CC030[];
extern int D_800C679C, D_800C67A0, D_800C67A4, D_800C67A8; // four images
extern int D_800C6770[2];
extern short D_800C6778[2];
extern int D_800C677C[][2]; // where the images go
extern u8 D_800C885C;       // the text's mode
extern u8 D_800C885D;       // its brightness
extern int D_800C8860;      // its colour
void func_80077BE4(int img, int a, int x, int y);
extern int D_800D49A4;
extern int D_800C89D0;
extern u8 D_800C89D4; // the font's size
extern u8 D_800C89D5;
extern int D_800C89D8;
extern int D_800CBD5C, D_800CBD64; // fonts
extern void *D_800C8A00;
void func_80080F8C(void);
void func_80080040(int font, char *s, int x, int y, short *h);
char *func_8005C424(Race33 *o, int x);
char *func_800A5F90(char *d, int v);
void func_80083E78(void *p, int a, Lap33 *l);
extern int D_800D613C;
extern int D_800D49F0;
extern int D_800D60E8;
int func_8005E1D0(Race33 *o);
void func_800A5BB8(int *p, int a);
void func_80074688(void);
void func_8001DA10(Racer *r);
void func_8005663C(Race33 *o);
extern void *D_800CAB68;
int func_80034C0C(void *m, short *pos);
void func_80084B1C(int a, int b);
int func_8006B658(void *p, int a, int b, int c, int d, int e, int f, int g);
int func_80019578(Seq33 *s, int a, int back, int c);
int func_8001DF10(Racer *r, Vector3 *v, int lo, int hi, int *depth);
void func_8001E240(Racer *r, int a, int b, int c, int d, int e, int f);
void func_8005CA00(Race33 *o);
void func_8005E0D8(Race33 *o);
void func_8005E2A8(Race33 *o);
void func_80062440(Bike33 *b);
void func_8005A59C(Race33 *o);
void func_800536F4(Race33 *o);
void func_80053738(Race33 *o, int i);
void func_800537FC(Race33 *o, int a, Lap33 *l);
void func_800539DC(Race33 *o, int i);
void func_80053BF8(Race33 *o, Zone33 **z, int n);
void func_80053D4C(Race33 *o);
void func_80053E44(Race33 *o);
void func_800542A4(Race33 *o);
void func_800544A0(void);
void func_800544A8(Race33 *o);
char *func_800546D4(int i);
int func_80054744(Race33 *o, int a, int b, u32 i, int k, int c, int d);
void func_800547F4(void);
void func_800547FC(Race33 *o, DrawState33 *g, int i, int a);
void func_800550C0(Race33 *o);
int func_80055188(Race33 *o);
int func_80055320(Race33 *o);
int func_800553CC(Race33 *o);
int func_80055410(Race33 *o);
}

void func_800536F4(Race33 *o) {
    if (!o->m_358) {
        func_80084B1C(D_800C8D90->m_1C, D_800C8D90->m_24);
    }
}

void func_80053738(Race33 *o, int i) {
    int k = o->m_470[i];
    Run33 *r = o->m_378;
    Bike33 *b = 0;
    Elems33 *t;
    int j;

    if (k >= 0) {
        b = &r->m_2E8[k];
    }
    if (b) {
        t = b->m_55C;
        if (t) {
            j = t->m_00 - 1;
            do {
                Shown33 *e = t->m_04[j].m_1C;
                if (e) {
                    if (j == b->m_540 + 1) {
                        e->m_04 |= 2;
                    } else {
                        e->m_04 &= ~2;
                    }
                }
            } while (--j >= 0);
        }
    }
}

void func_800537FC(Race33 *o, int a, Lap33 *l) {
    Scr33 *scr = D_800C8D90;
    int x;
    int y;
    int m;
    short h[4];
    char buf[16];

    if (!a || !(o->m_378->m_00 & 0xA8) || !D_800D49A4) {
        x = scr->m_18;
        y = scr->m_20;
        m = 0;
    } else {
        x = scr->m_1C;
        y = scr->m_20;
        m = 0x20;
    }
    D_800C89D0 = m;
    if (D_800C89D4 != 8 || D_800C89D5) {
        D_800C89D4 = 8;
        D_800C89D5 = 0;
        func_80080F8C();
    }
    if (D_800C89D8 != 0xFFFFFF) {
        D_800C89D8 = 0xFFFFFF;
        func_80080F8C();
    }
    func_80080040(D_800CBD5C, func_8005C424(o, 0x32), x, y, h);
    if (D_800C89D8 != 0xFFFF) {
        D_800C89D8 = 0xFFFF;
        func_80080F8C();
    }
    y += h[3];
    func_800A5F90(buf, l->m_0C);
    func_80080040(D_800CBD64, buf, x, y, h);
    if (l->m_0E > 0) {
        y += h[3];
        func_800A5F90(buf, l->m_0E);
        func_80080040(D_800CBD5C, buf, x, y, h);
    }
    func_80083E78(D_800C8A00, a, l);
}

#ifdef NON_MATCHING
// The drawing loop: the original recomputes the table entry's address from the count each time (n * 8), ours walks more pointers (one more saved register, a bigger frame)
void func_800539DC(Race33 *o, int i) {
    int k;
    Bike33 *b;
    Run33 *r;

    if (!o->m_00a) {
        return;
    }
    if (!D_800C679C) {
        int a = D_800CC030[27];
        int b = D_800CC030[26];
        int c = D_800CC030[25];
        int d = D_800CC030[24];
        D_800C679C = a;
        D_800C67A0 = b;
        D_800C67A4 = c;
        D_800C67A8 = d;
    }
    k = o->m_470[i];
    r = o->m_378;
    b = 0;
    if (k >= 0) {
        b = &r->m_2E8[k];
    }
    if (b && (int)(b->m_00 << 26) >> 27 == 1) {
        int v = b->m_30->m_43E;
        if (v > 0x1000) {
            v = 0x1000;
        }
        if (v >= 0x400) {
            Scr33 *scr;
            int n;
            int *p;
            int x;
            int y;
            D_800C6770[i] += D_800C6778[i] = (v & 0x1E00) >> 10;
            if (D_800C6770[i] >= 0x10) {
                D_800C6770[i] = 0;
            }
            D_800C885C = 0;
            D_800C8860 = 0xFFFFFF;
            D_800C885D = 0x80;
            scr = D_800C8D90;
            x = scr->m_1C;
            y = scr->m_20;
            n = D_800C6770[i] >> 2;
            p = &D_800C679C + n;
            do {
                int tx = D_800C677C[n][0] - 0x20;
                int ty = D_800C677C[n][1] + 0x20;
                func_80077BE4(*p--, 0, x + tx, y + ty);
            } while (--n >= 0);
        } else {
            D_800C6770[i] = 0;
            D_800C6778[i] = 0;
        }
    }
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_33", func_800539DC);
#endif

void func_80053BF8(Race33 *o, Zone33 **z, int n) {
    Ent33 *last = 0;
    int test = 0;
    int skip;
    Sel33b *s;

    if (!o->m_304 || D_800D5F38 == 1) {
        test = 1;
    }
    s = *o->m_464;
    skip = 0;
    if (s && (o->m_378->m_1E08 == 1 || (s->m_04 & 0x200))) {
        skip = 1;
    }
    test &= 1;
    if (skip) {
        test = 0;
    }
    for (; n; n--, z++) {
        Zone33 *e = *z;
        int k;
        Ent33 **q;
        if (test && !func_80034C0C(D_800CAB68, e->m_00)) {
            *z = 0;
            continue;
        }
        k = e->m_08;
        q = e->m_04;
        for (; k; k--) {
            Ent33 *x = *q++;
            if (x && x != last) {
                last = x;
                if (!(x->m_04 & 0x10)) {
                    x->m_04 |= 0x10;
                }
            }
        }
    }
}

void func_80053D4C(Race33 *o) {
    Ents33 *l = o->m_74;
    int n = l->m_08;
    Ent33 **p = l->m_00;
    Vector3 v;
    int d[2];

    for (; n; n--) {
        Ent33 *e = *p++;
        if (e && (e->m_04 & 0xE) == 2) {
            Ent33b *x = (Ent33b *)func_80017948((Cobjet *)e);
            if (x) {
                Ent33x *y = x->m_04;
                v = e->m_08;
                if (func_8001DF10((Racer *)&D_800CA7D8, &v, y->m_14, o->m_C70->m_38, d)) {
                    e->m_04 |= 0x10;
                }
            }
        }
    }
}

void func_80053E44(Race33 *o) {
    int k;
    Item33 **p;

    func_8001E240((Racer *)&D_800CA7D8, (int)o->m_C70->m_30, (int)o->m_C70->m_2C,
                  (int)o->m_C70->m_28, (int)&o->m_C70->m_20, (int)&o->m_C70->m_1C,
                  (int)&o->m_C70->m_18);
    k = o->m_C70->m_20;
    p = o->m_C70->m_30;
    while (k--) {
        (*p++)->m_08 &= 0x7FFF;
    }
    k = o->m_C70->m_1C;
    p = o->m_C70->m_2C;
    while (k--) {
        (*p++)->m_08 &= 0x7FFF;
    }
    k = o->m_C70->m_18;
    p = o->m_C70->m_28;
    while (k--) {
        (*p++)->m_08 &= 0x7FFF;
    }
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_33", func_80053F54);

void func_800542A4(Race33 *o) {
    int i;
    Vector3 v;
    Vector3 lo;
    Vector3 hi;
    Bike33 *b = o->m_378->m_2E8;

    for (i = 0; i < 5; b++, i++) {
        if ((b->m_00 >> 6) & 1) {
            /* do/while (0), a workaround (the permuter's): without it GCC
             * hoists &v out of the loop */
            do {
                v = b->m_30->m_08;
                b->m_184 = 0;
                func_80081A78(b->m_54, &v, 0x20);
            } while (0);
            func_80081A78(b->m_C8, &v, 0x20);
            b->m_16C.vz = 0x7FFFFFFF;
            b->m_16C.vy = 0x7FFFFFFF;
            b->m_16C.vx = 0x7FFFFFFF;
            b->m_178.vz = 0x80000000;
            b->m_178.vy = 0x80000000;
            b->m_178.vx = 0x80000000;
            func_80090E58(b->m_328, 0, &b->m_16C, &b->m_178, 1);
            b->m_13C.vz = 0x7FFFFFFF;
            b->m_13C.vy = 0x7FFFFFFF;
            b->m_13C.vx = 0x7FFFFFFF;
            b->m_148.vz = 0x80000000;
            b->m_148.vy = 0x80000000;
            b->m_148.vx = 0x80000000;
            func_80090F94(b->m_328, 0, &b->m_154, &b->m_160, 1);
            func_80090E58(b->m_328, 1, &lo, &hi, 1);
            func_80098DD4(&b->m_154, &lo);
            func_80098E38(&b->m_160, &lo);
            func_80098DD4(&b->m_154, &hi);
            func_80098E38(&b->m_160, &hi);
            func_80090E58(b->m_328, 0x15, &lo, &hi, 1);
            func_80098DD4(&b->m_154, &lo);
            func_80098E38(&b->m_160, &lo);
            func_80098DD4(&b->m_154, &hi);
            func_80098E38(&b->m_160, &hi);
        }
    }
}

void func_800544A0(void) {
}

#ifdef NON_MATCHING
// Registers: the bike's pointer and its 0x30 field's swap saved registers ($s1, $s0), as do the count and the 0x178 field's ($s5, $s4); the original stores the flag between the vector's loads and its stores
void func_800544A8(Race33 *o) {
    int i;
    int j;
    Bike33 *b;
    Vector3 v;
    MATRIX m;
    int *f;
    int *c;
    int one = 1;

    b = o->m_378->m_2E8;
    for (i = 0; i < 5; b++, i++) {
        if ((b->m_00 >> 6) & 1) {
            if (b->m_189) {
                if (!b->m_184) {
                    v = b->m_2B8;
                    b->m_184 = one;
                    func_80081F28(b->m_C8, &v);
                }
                func_8005114C(b, &m, 0x4CC);
                func_80081FE0(b->m_54, b->m_30->m_34, &b->m_154, &b->m_160);
                func_80081FE0(b->m_C8, &m, &b->m_13C, &b->m_148);
            } else {
                b->m_184 = 0;
                func_80081FE0(b->m_54, b->m_30->m_34, &b->m_16C, &b->m_178);
            }
        }
    }
    c = o->m_BC;
    f = o->m_488;
    for (j = 0; j < 2; f++, j++, c++) {
        if (*f & 1) {
            DrawState33 *g = D_800C886C;
            g->m_68[14].m_func((char *)g + g->m_68[14].m_delta, *c);
            b = o->m_378->m_2E8;
            for (i = 0; i < 5; b++, i++) {
                if ((b->m_00 >> 6) & 1 && !b->m_325) {
                    func_8008259C(b->m_54, j);
                    if (b->m_184) {
                        func_8008259C(b->m_C8, j);
                    }
                }
            }
        }
    }
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_33", func_800544A8);
#endif

char *func_800546D4(int i) {
    switch (i) {
    case 0:
        return D_800C67CC;
    case 1:
        return D_800C67D4;
    case 2:
        return D_800C67E0;
    case 3:
        return D_800C67E8;
    case 4:
        return D_800C67F0;
    }
    return D_800C67FC;
}

#ifdef NON_MATCHING
// Registers: the original keeps the result and the table's index in $t0, the colour in $t1; ours one register up
static inline int func_80054744_draw(Race33 *o, u32 i, int a, int b, int img, int c, int d) {
    return func_8006B658(o->m_310[i], a, b, img, c, 0, 300, d);
}
int func_80054744(Race33 *o, int a, int b, u32 i, int k, int c, int d) {
    int r = -1;

    if (i < 2 && o->m_310[i]) {
        if (k >= 0) {
            if (k < 5) {
                r = k;
            } else {
                r = 4;
            }
        } else {
            r = 0;
        }
        c &= 0xFFFFFF;
        r = func_80054744_draw(o, i, a, b, D_800C6804[r], c, d);
    }
    return r;
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_33", func_80054744);
#endif

void func_800547F4(void) {
}

#ifdef NON_MATCHING
// Registers: the original loads the count into $a2 and the value into $a1, ours $a1 and $a3, and the rest follows
void func_800547FC(Race33 *o, DrawState33 *g, int i, int a) {
    int k;
    Run33 *r;
    Bike33 *b;
    State33 *st;
    Scr33 *s;
    VtEntry33s *vt;
    int q;
    int v;
    int h;
    int w;
    int lo;
    int sc = 0xB33;
    int x;
    Img33 *img;

    if (!g) {
        return;
    }
    k = o->m_470[i];
    r = o->m_378;
    b = 0;
    if (k >= 0) {
        b = &r->m_2E8[k];
    }
    if (!b) {
        return;
    }
    st = b->m_30;
    if (!st->m_59 || !st->m_58) {
        return;
    }
    vt = (VtEntry33s *)g->m_68;
    s = vt[14].m_func((char *)g + vt[14].m_delta, o->m_C4[i]);
    v = st->m_534;
    q = st->m_554 / 4;
    h = st->m_558 / 2;
    o->m_39C[i] -= 0x51;
    if (o->m_39C[i] < 0) {
        o->m_39C[i] = 0;
    }
    if (h != o->m_3A4[i]) {
        o->m_3A4[i] = h;
        o->m_39C[i] = 0x1000;
    }
    lo = v - 0x1000;
    v = v + q + ((o->m_39C[i] * (o->m_3A4[i] - lo - q)) >> 12);
    w = (v * sc >> 12) + 0x666;
    D_800C885C = 0;
    D_800C885D = 0x80;
    img = D_800CC28C;
    x = s->m_1C - 1;
    x -= img->m_04 - img->m_00;
    if (!i && a) {
        x = s->m_18;
    }
    func_80077EE0(img, 0x220, x + 0x21, s->m_20 + o->m_3AC, 0x1000, w, 0);
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_33", func_800547FC);
#endif

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_33", func_800549EC);

void func_800550C0(Race33 *o) {
    Run33 *r = o->m_378;
    Bike33 *p;
    Bike33 *end;
    Bike33 *e2;
    int n;
    int m;
    int one;

    o->m_318 = r->m_00;
    o->m_31C = r->m_1E08;
    o->m_320 = r->m_04;
    n = 0;
    end = &r->m_2E8[0];
    p = &r->m_2E8[4];
    do {
        if ((p->m_00 >> 6) & 1) {
            n++;
        }
    } while (p-- != end);
    o->m_324 = n;
    one = 1;
    m = 0;
    e2 = &o->m_378->m_2E8[0];
    p = &o->m_378->m_2E8[4];
    do {
        if ((p->m_00 >> 6) & 1 && (int)(p->m_00 << 26) >> 27 == one) {
            m++;
        }
    } while (p-- != e2);
    o->m_328 = m;
    o->m_32C = (o->m_378->m_00 & 0xA8) ? 2 : 1;
}

int func_80055188(Race33 *o) {
    int i;

    o->m_35C = D_800D613C;
    o->m_378->m_1E3A = 0;
    o->m_300 = 0;
    o->m_380 = 1;
    if (o->m_358 || (o->m_498->m_00 & 0x6000000)) {
        int a = -1;
        if (!o->m_35C && !o->m_358) {
            o->m_300 = 1;
            a = func_8005E1D0(o);
        }
        func_800A5BB8(&D_800D60E8, a);
        func_80074688();
    }
    if (o->m_358) {
        func_80055320(o);
    }
    for (i = 3; i >= 0; i--) {
        o->m_E4[i] = 0;
    }
    o->m_488[1] = (o->m_488[1] & ~1) | 0x3FE;
    o->m_488[0] |= 0x3FF;
    if ((o->m_378->m_00 & 0xA8) && (o->m_498->m_00 & 0x6000000) && o->m_378->m_1E08 != 1) {
        D_800D49F0 |= 0x10;
    } else {
        D_800D49F0 &= ~0x10;
    }
    if (o->m_00c) {
        func_8001DA10((Racer *)&D_800CA7D8);
        func_8005663C(o);
    }
    func_800550C0(o);
    return 1;
}

int func_80055320(Race33 *o) {
    Seq33 *s;

    func_8005CA00(o);
    for (s = o->m_6C->m_04; s; s = s->m_0C) {
        if (((s->m_18 >> 6) & 0x3F) == 2) {
            func_80019578(s, 1, 0, -1);
        }
    }
    if (o->m_498->m_2C) {
        func_80019578(o->m_498->m_2C, 1, 1, -1);
    }
    return 1;
}

int func_800553CC(Race33 *o) {
    if (o->m_300) {
        func_8005E0D8(o);
        func_8005E2A8(o);
    }
    return 1;
}

int func_80055410(Race33 *o) {
    int i;

    if (o->m_2F4) {
        Bike33 *b = o->m_378->m_2E8;
        for (i = 0; i < 5; b++, i++) {
            if ((b->m_00 >> 6) & 1 && b->m_189) {
                b->m_189 = 0;
                b->m_188 = 0;
                b->m_18A = 0;
                b->m_185 = 1;
                func_80062440(b);
            }
        }
        func_8005A59C(o);
        o->m_2F4 = 0;
    }
    return 1;
}
