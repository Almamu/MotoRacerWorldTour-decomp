#include "common.h"
#include "psyq.h"
#include "stdarg.h"
#include "langimg/cobjet.h"

/* (docs/matching/issue-67-langimg-chunk66.md) */

extern "C" {
// An object whose settings mark it to be redone (m_38 cleared)
struct Obj66 {
    short m_00;
    u8 m_02[2];
    short m_04;
    u8 m_06[2];
    short m_08;
    u8 m_0A[2];
    short m_0C;
    u8 m_0E[2];
    int m_10, m_14; // its size
    u8 m_18[0x20];
    int m_38; // up to date
    int m_3C;
    u8 m_40[0x10];
    struct Obj66 *m_50;
    int m_54, m_58, m_5C, m_60, m_64, m_68, m_6C, m_70;
    int m_74, m_78, m_7C, m_80, m_84, m_88, m_8C, m_90;
    u8 m_94[4];
    struct Virt66 *m_98;
    u8 m_9C[0x64];
    int m_100, m_104, m_108, m_10C;
};

// A GCC 2 vtable entry
struct VtEntry {
    short m_delta;
    short m_index;
    int (*m_func)(void *self);
};

#define VCALLV1(o, i, a) \
    (((void (*)(void *, int))(o)->m_vtable[i].m_func)((char *)(o) + (o)->m_vtable[i].m_delta, a))

// An object with a vtable at 0x14
struct Virt66 {
    int m_00;
    int m_04; // a rate
    u8 m_08[0xC];
    VtEntry *m_vtable;
};

// An entry found by its id (12 bytes)
struct Ent66 {
    int m_00, m_04;
    int m_id;
};

// Where a vector goes, and what's done with it
struct Dest66 {
    Vector3 *m_00;
};

// A bit stream
// 16 bytes holding two halves of a word (at 6 and 0x0E)
struct Blk66 {
    u8 m_00[6];
    u16 m_06;
    u8 m_08[6];
    u16 m_0E;
};

// A bit stream over words, or over halves of words in 16-byte blocks
struct Bits66 {
    u32 *m_words; // 0x00
    Blk66 *m_blks;
    u32 *m_word; // 0x08, the position
    Blk66 *m_blk;
    int m_10;   // the words left
    int m_14;   // the halves left (two to a block)
    int m_18;   // the words, from the start
    int m_1C;   // the halves, from the start
    int m_20;   // the size
    short m_24; // 2 when written to
    s8 m_26;    // the words are ours to free
    s8 m_27;    // the bit in the current word
};

// Two words cleared
struct Pair66 {
    int m_00, m_04;
};

int func_80095794(Obj66 *o, int a, int b);
int func_800957C0(Obj66 *o, int a, int b);
int func_800957D4(Obj66 *o, int a, int b);
int func_800957E8(Obj66 *o, int a, int b);
int func_800957FC(Obj66 *o, int a, int b);
int func_80095810(Obj66 *o, Obj66 *a);
int func_80095820(Obj66 *o, int a);
int func_80095830(Obj66 *o, int a);
int func_80095840(Obj66 *o, int a);
int func_80095850(Obj66 *o, int a);
int func_80095860(Obj66 *o, int a);
int func_80095870(Obj66 *o, int a);
int func_80095880(Obj66 *o, int a);
int func_80095890(Obj66 *o, int a);
int func_800958D8(void);
void func_80096724(Bits66 *b);
int func_800968B0(Bits66 *b);
int func_80096900(Bits66 *b);
void func_80096978(Bits66 *b);
Pair66 *func_80096E7C(Pair66 *p);

extern void *D_800C8D94;
extern Ent66 *D_800CBE80;
extern int D_800CBE88;
extern int D_800BF3A0[]; // sines and cosines by angle, two shorts each
void func_80096EC8(Dest66 *d, int a);

void func_8009682C(Bits66 *b);
int func_800958E0(Obj66 *o);
void func_80096918(Bits66 *b, int mode);
void func_80096A64(Bits66 *b);
void func_80096980(Bits66 *b, u32 v);
u32 func_800969EC(Bits66 *b);
void func_80096C14(Bits66 *d, Bits66 *s);
int func_80096B74(Bits66 *b, int n);
int func_80096D84(Bits66 *b, int n, ...);

int func_800963BC(void);
int func_80096884(Bits66 *b);
int func_800968D4(Bits66 *b);
int func_80096508(void);
void func_800958A0(RECT *r);
void func_80096E8C(Dest66 *d, Vector3 *v, int a);
int func_8009574C(Obj66 *o, RECT *r);
void func_800966DC(Bits66 *b);
void func_800961A0(Obj66 *o);
Ent66 *func_80096240(int id);
int func_800961EC(Obj66 *o, int a);
void func_80096E28(short *a, Vector3 *v, int s);
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_66", func_800950B0);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_66", func_800952E0);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_66", func_800953A4);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_66", func_800955C4);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_66", func_80095684);

int func_8009574C(Obj66 *o, RECT *r) {
    int ok = 0;

    if (o->m_38) {
        r->x = o->m_00;
        r->y = o->m_04;
        r->w = o->m_08;
        r->h = o->m_0C;
        ok = 1;
    }
    return ok;
}

/* The size set, if both are at least 2. */
int func_80095794(Obj66 *o, int a, int b) {
    int r = 0;

    if (a >= 2 && b >= 2) {
        r = 1;
        o->m_10 = a;
        o->m_14 = b;
    }
    return r;
}

int func_800957C0(Obj66 *o, int a, int b) {
    o->m_54 = a;
    o->m_74 = b;
    o->m_38 = 0;
    return 1;
}

int func_800957D4(Obj66 *o, int a, int b) {
    o->m_58 = a;
    o->m_78 = b;
    o->m_38 = 0;
    return 1;
}

int func_800957E8(Obj66 *o, int a, int b) {
    o->m_5C = a;
    o->m_7C = b;
    o->m_38 = 0;
    return 1;
}

int func_800957FC(Obj66 *o, int a, int b) {
    o->m_60 = a;
    o->m_80 = b;
    o->m_38 = 0;
    return 1;
}

int func_80095810(Obj66 *o, Obj66 *a) {
    o->m_50 = a;
    o->m_38 = 0;
    return 1;
}

int func_80095820(Obj66 *o, int a) {
    o->m_64 = a;
    o->m_38 = 0;
    return 1;
}

int func_80095830(Obj66 *o, int a) {
    o->m_68 = a;
    o->m_38 = 0;
    return 1;
}

int func_80095840(Obj66 *o, int a) {
    o->m_6C = a;
    o->m_38 = 0;
    return 1;
}

int func_80095850(Obj66 *o, int a) {
    o->m_70 = a;
    o->m_38 = 0;
    return 1;
}

int func_80095860(Obj66 *o, int a) {
    o->m_84 = a;
    o->m_38 = 0;
    return 1;
}

int func_80095870(Obj66 *o, int a) {
    o->m_88 = a;
    o->m_38 = 0;
    return 1;
}

int func_80095880(Obj66 *o, int a) {
    o->m_8C = a;
    o->m_38 = 0;
    return 1;
}

int func_80095890(Obj66 *o, int a) {
    o->m_90 = a;
    o->m_38 = 0;
    return 1;
}

/* At least 2 by 2. */
void func_800958A0(RECT *r) {
    if (r->w < 2) {
        r->w = 2;
    }
    if (r->h < 2) {
        r->h = 2;
    }
}

int func_800958D8(void) {
    return 1;
}

/* Placed after the one before it (m_50), if that one is placed. */
int func_800958E0(Obj66 *o) {
    o->m_3C = 1;
    if (o->m_50) {
        if (o->m_50->m_3C) {
            o->m_104 = o->m_50->m_108 + 0x1000;
        } else {
            o->m_3C = 0;
        }
    } else {
        o->m_104 = 0;
    }
    o->m_108 = o->m_104 + o->m_100;
    return 1;
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_66", func_8009593C);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_66", func_80095F84);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_66", func_800960D0);

void func_800961A0(Obj66 *o) {
    if (o->m_98) {
        VCALLV1(o->m_98, 1, 3);
    }
}

int func_800961EC(Obj66 *o, int a) {
    o->m_100 = a;
    o->m_108 = o->m_104 + a;
    if (a && o->m_98) {
        o->m_10C = (o->m_98->m_04 << 18) / (a >> 6);
    } else {
        o->m_10C = 0;
    }
    o->m_3C = 0;
    return 1;
}

/* The entry with this id, or 0. */
Ent66 *func_80096240(int id) {
    int i;
    Ent66 *r = 0;

    for (i = 0; i < D_800CBE88; i++) {
        if (D_800CBE80[i].m_id == id) {
            r = &D_800CBE80[i];
            break;
        }
    }
    return r;
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_66", func_80096290);

int func_800963BC(void) {
    if (D_800C8D94) {
        free(D_800C8D94);
        D_800C8D94 = 0;
    }
    return 1;
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_66", func_800963E8);

/* The CD's shell open bit. */
int func_80096508(void) {
    u32 res[8];

    CdControlB(1, 0, (u_char *)res);
    return (res[0] >> 4) & 1;
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_66", func_80096538);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_66", func_8009662C);

/* The stream emptied. */
void func_800966DC(Bits66 *b) {
    b->m_words = 0;
    b->m_blks = 0;
    b->m_word = 0;
    b->m_blk = 0;
    b->m_10 = 0;
    b->m_14 = 0;
    b->m_18 = 0;
    b->m_1C = 0;
    b->m_26 = 0;
    b->m_20 = 0;
    b->m_24 = 0;
    func_80096724(b);
}

/* Back to the start. */
void func_80096724(Bits66 *b) {
    b->m_27 = 0;
    b->m_word = b->m_words;
    b->m_blk = b->m_blks;
    b->m_10 = b->m_18;
    b->m_14 = b->m_1C;
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_66", func_8009674C);

/* The destructor. */
void func_8009682C(Bits66 *b) {
    if (b->m_26 && b->m_words) {
        free(b->m_words);
        func_800966DC(b);
    }
    func_800966DC(b);
}

int func_80096884(Bits66 *b) {
    int r = 0;

    if (b->m_words || b->m_blks) {
        r = 1;
    }
    return r;
}

/* At the end. */
int func_800968B0(Bits66 *b) {
    int r = 0;

    if (!b->m_10) {
        r = !b->m_14;
    }
    return r;
}

int func_800968D4(Bits66 *b) {
    return b->m_20 - func_80096900(b);
}

int func_80096900(Bits66 *b) {
    return b->m_10 * 4 + b->m_14 * 2;
}

void func_80096918(Bits66 *b, int mode) {
    if (b->m_24) {
        func_80096978(b);
    }
    func_80096724(b);
    b->m_24 = mode;
    if (mode == 2) {
        func_80096980(b, 0);
    }
}

void func_80096978(Bits66 *b) {
    b->m_24 = 0;
}

void func_80096980(Bits66 *b, u32 v) {
    if (!func_800968B0(b)) {
        if (b->m_14) {
            b->m_blk->m_06 = v;
            b->m_blk->m_0E = v >> 16;
        } else {
            *b->m_word = v;
        }
    }
}

u32 func_800969EC(Bits66 *b) {
    u32 r = 0;

    if (!func_800968B0(b)) {
        if (b->m_14) {
            r = b->m_blk->m_06 | (b->m_blk->m_0E << 16);
        } else {
            r = *b->m_word;
        }
    }
    return r;
}

/* On to the next word. */
void func_80096A64(Bits66 *b) {
    if (!func_800968B0(b)) {
        if (b->m_14) {
            b->m_14 -= 2;
            b->m_blk++;
        } else {
            b->m_10--;
            b->m_word++;
        }
    }
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_66", func_80096ACC);

/* n bits read, sign-extended. */
int func_80096B74(Bits66 *b, int n) {
    int pos = b->m_27 + n;
    u32 v = func_800969EC(b) >> b->m_27;

    if (pos >= 32) {
        func_80096A64(b);
        pos -= 32;
        if (b->m_27) {
            v |= func_800969EC(b) << (32 - b->m_27);
        }
    }
    b->m_27 = pos;
    n = 32 - n;
    return (int)(v << n) >> n;
}

/* s copied into d. */
void func_80096C14(Bits66 *d, Bits66 *s) {
    if (func_80096884(s)) {
        func_80096918(d, 2);
        func_80096724(s);
        while (!func_800968B0(d)) {
            func_80096980(d, func_800969EC(s));
            func_80096A64(d);
            func_80096A64(s);
        }
        func_80096724(d);
    }
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_66", func_80096CA8);

/* For each width of the list (to -1), a bit: when it's set, a value of that
 * width read. */
int func_80096D84(Bits66 *b, int n, ...) {
    int r = 0;
    int w = n;
    va_list ap;

    va_start(ap, n);
    while (w != -1) {
        if (func_80096B74(b, 1)) {
            r = func_80096B74(b, w);
            break;
        }
        w = va_arg(ap, int);
    }
    va_end(ap);
    return r;
}

/* A vector from an angle's sine and cosine, with s bits of fraction. */
void func_80096E28(short *a, Vector3 *v, int s) {
    int t = 0;

    if (*a >= 0) {
        t = D_800BF3A0[*a];
    }
    v->vx = ((t >> 16) << 18) >> (30 - s);
    v->vy = 0;
    v->vz = (t << 18) >> (30 - s);
}

Pair66 *func_80096E7C(Pair66 *p) {
    p->m_00 = 0;
    p->m_04 = 0;
    return p;
}

void func_80096E8C(Dest66 *d, Vector3 *v, int a) {
    Vector3 *p = d->m_00;
    int x = v->vx;
    int y = v->vy;
    int z = v->vz;

    p->vx = x;
    p->vy = y;
    p->vz = z;
    func_80096EC8(d, a);
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_66", func_80096EC8);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_66", func_80096F8C);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_66", func_8009707C);
