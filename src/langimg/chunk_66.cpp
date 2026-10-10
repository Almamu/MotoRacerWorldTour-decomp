#include "common.h"
#include "psyq.h"
#include "stdarg.h"
#include "langimg/cobjet.h"
#include "gte.h"
#include "mulshift.h"

/* (docs/matching/issue-67-langimg-chunk66.md) */

extern "C" {
// An object whose settings mark it to be redone (m_38 cleared)
struct Obj66 {
    int m_00, m_04, m_08, m_0C;
    int m_10, m_14; // its size
    u8 m_18[0x20];
    int m_38; // up to date
    int m_3C;
    int m_40, m_44, m_48, m_4C;
    struct Obj66 *m_50;
    int m_54, m_58, m_5C, m_60, m_64, m_68, m_6C, m_70;
    int m_74, m_78, m_7C, m_80, m_84, m_88, m_8C, m_90;
    int m_94;
    struct Virt66 *m_98;
    int m_9C;
    u8 m_A0[0x50];
    int m_F0, m_F4;
    short m_F8, m_FA, m_FC, m_FE;
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

// A plane: its normal, and its distance with the normal's side in the top bit
struct Plane66 {
    Vector3 *m_n;
    int m_d : 31;
    int m_flip : 1;
};

// A named item of a list
struct Item66 {
    int m_00;
    char m_name[1];
};

// A list of named items
struct List66 {
    Item66 **m_items;
    int m_count;
};

// A track's point (12 bytes)
struct Pt66 {
    short m_x, m_z;
    short m_04;
    short m_idx; // 0x06
    int m_08;
};

struct Course66 {
    u8 m_00[0x54];
    Pt66 *m_pts;
};

struct Game66 {
    u8 m_00[0xC70];
    Course66 *m_C70;
};

// 8 bytes of something a point indexes
struct Rec66 {
    int m_00, m_04;
};

extern Game66 *D_800C5E14;
int func_80096538(int a, int b, int c);
int CdInit(void);
char *func_800A6344(char *s);
int func_800A60AC(char *a, char *b);
void ApplyRotMatrixLV(Vector3 *a, Vector3 *b);

void func_80096ACC(Bits66 *b, int n, u32 v);
int func_8009662C(int a, int b, int c);
int func_8009707C(Plane66 *p, Vector3 *v);
int func_800955C4(List66 *l, char *name);
Rec66 *func_800952E0(int i, Rec66 *recs);
void func_80095684(Obj66 *o);

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

#ifdef NON_MATCHING
/* The camera loaded after the course here, and the translation's three words loaded in another order (43 off) */
/* A track point moved into the camera's frame (the GTE's translation), and what
 * it indexes. */
Rec66 *func_800952E0(int i, Rec66 *recs) {
    Camera *c = D_800C8864;
    Pt66 *p = &D_800C5E14->m_C70->m_pts[i];
    Vector3 v;
    int x;
    int y;
    int z;

    y = -c->m_pos.vy >> 5;
    x = ((p->m_x << 12) - c->m_pos.vx) >> 5;
    z = ((p->m_z << 12) - c->m_pos.vz) >> 5;
    v.vx = x;
    v.vy = y;
    v.vz = z;
    ApplyRotMatrixLV(&v, &v);
    GTE_SET_TRANS(v.vx, v.vy, v.vz);
    return &recs[p->m_idx];
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_66", func_800952E0);
#endif

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_66", func_800953A4);

/* The index of the item with this name (any case), or -1. */
int func_800955C4(List66 *l, char *name) {
    char buf[257];
    int r = -1;
    int i;

    strncpy(buf, name, 256);
    buf[256] = 0;
    func_800A6344(buf);
    if (l->m_items) {
        for (i = 0; r == -1 && i < l->m_count; i++) {
            if (l->m_items[i] && l->m_items[i]->m_name &&
                !func_800A60AC(buf, l->m_items[i]->m_name)) {
                r = i;
            }
        }
    }
    return r;
}

/* The constructor. */
void func_80095684(Obj66 *o) {
    o->m_44 = 1;
    o->m_00 = 0x7FFFFFFF;
    o->m_04 = 0x7FFFFFFF;
    o->m_08 = 0x7FFFFFFF;
    o->m_0C = 0x7FFFFFFF;
    o->m_10 = 0;
    o->m_14 = 0;
    o->m_F8 = 0;
    o->m_FA = 0;
    o->m_FC = 0;
    o->m_FE = 0;
    o->m_3C = 0;
    o->m_40 = 0;
    o->m_38 = 0;
    o->m_48 = 0;
    o->m_98 = 0;
    o->m_94 = 0;
    o->m_50 = 0;
    o->m_54 = 0;
    o->m_58 = 0;
    o->m_5C = 0;
    o->m_60 = 0;
    o->m_6C = 0x7FFFFFFF;
    o->m_70 = 0x7FFFFFFF;
    o->m_64 = 0x7FFFFFFF;
    o->m_68 = 0x7FFFFFFF;
    o->m_74 = 0;
    o->m_78 = 0;
    o->m_7C = 0;
    o->m_80 = 0;
    o->m_84 = 0;
    o->m_88 = 0;
    o->m_8C = 0;
    o->m_90 = 0;
    o->m_4C = 0x110;
    o->m_9C = 0;
    o->m_F0 = 0x276000;
    o->m_F4 = 0x276000;
    o->m_100 = 0;
    o->m_10C = 0;
    o->m_104 = 0x1000;
    o->m_108 = 0x1000;
}

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

/* A CD read, tried 20 times: the drive started again when its shell was
 * opened, and for the last ten tries. */
int func_8009662C(int a, int b, int c) {
    int tries = 20;
    int opened = 0;
    int ok;

    for (;;) {
        while (func_80096508()) {
            opened = 1;
        }
        if (opened || tries < 10) {
            CdInit();
            opened = 0;
        }
        ok = func_80096538(a, b, c);
        if (--tries < 0) {
            return 0;
        }
        if (ok) {
            return 1;
        }
    }
}

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

/* n bits of v written. */
void func_80096ACC(Bits66 *b, int n, u32 v) {
    int pos = b->m_27 + n;
    u32 x;

    n = 32 - n;
    x = (v << n) >> n;
    func_80096980(b, func_800969EC(b) | (x << b->m_27));
    if (pos >= 32) {
        func_80096A64(b);
        pos -= 32;
        func_80096980(b, b->m_27 ? x >> (32 - b->m_27) : 0);
    }
    b->m_27 = pos;
}

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

/* A point's distance from a plane. */
int func_8009707C(Plane66 *p, Vector3 *v) {
    int vx = v->vx;
    int vy = v->vy;
    int vz = v->vz;
    int x = p->m_n->vx;
    int y = p->m_n->vy;
    int z = p->m_n->vz;

    if (p->m_flip) {
        x = -x;
        y = -y;
        z = -z;
    }
    return MULSHIFT(vx, x, 26) + MULSHIFT(vy, y, 26) + MULSHIFT(vz, z, 26) + p->m_d;
}
