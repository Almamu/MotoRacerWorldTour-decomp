#include "common.h"
#include "langimg/cobjet.h"

/* (docs/matching/issue-46-langimg-chunk45.md) */

extern "C" {
// An animation channel (0x1C bytes)
struct AnimChan {
    int m_00, m_04;
    int m_08, m_0C; // 0x3AE, 0x333 to start with
    int m_10;
    int m_14, m_18;
};

// An object with two flags at 0x48
struct Flagged {
    u8 m_00[0x48];
    int m_48;
    int m_4C;
};

// A GCC 2 vtable entry
struct VtEntry {
    short m_delta;
    short m_index;
    int (*m_func)(void *self);
};

#define VCALL(o, i) ((o)->m_vtable[i].m_func((char *)(o) + (o)->m_vtable[i].m_delta))
// The same calls with the result ignored, through a function returning void
#define VCALLV(o, i) \
    (((void (*)(void *))(o)->m_vtable[i].m_func)((char *)(o) + (o)->m_vtable[i].m_delta))
#define VCALLV1(o, i, a) \
    (((void (*)(void *, int))(o)->m_vtable[i].m_func)((char *)(o) + (o)->m_vtable[i].m_delta, a))
#define VCALL1(o, i, a) \
    (((int (*)(void *, int))(o)->m_vtable[i].m_func)((char *)(o) + (o)->m_vtable[i].m_delta, a))

// A list's node
struct Node45 {
    int m_00;
    u8 m_04[4];
    Node45 *m_next; // 0x08
    u8 m_0C[0x1C];
    u8 m_28;
};

// Three values packed into a word
struct Packed45 {
    u32 m_a : 13;
    u32 m_b : 5;
    u32 m_c : 14;
};

// A table of packed entries with a cursor, and a sound object at 0x42C
struct Table45 {
    u32 m_00;
    int m_04;
    int m_08;
    Packed45 m_items[0x100]; // 0x0C
    u32 m_40C;               // the cursor
    u32 m_410;               // the count
    short m_414;
    s8 m_416;
    u8 m_417, m_418, m_419, m_41A;
    u8 m_41B; // the parity of a vector's bits
    u8 m_41C, m_41D, m_41E, m_41F;
    u8 m_420[0xC];
    u8 m_42C[0x28];
    int m_454;
};

// What a table's settings are read from
struct Info45 {
    u8 m_00[4];
    u8 m_04, m_05, m_06, m_07;
    u8 m_08, m_09, m_0A, m_0B;
    u8 m_0C, m_0D;
};

// A list's context
struct Ctx45 {
    int m_00;
    int m_04; // flags
    u8 m_08[4];
};

// Something with a vector at 0x64
struct Src45 {
    u8 m_00[0x64];
    Vector3 m_64;
};

// A list's head (0xC bytes)
struct Head45 {
    Ctx45 *m_ctx;
    int m_04;
    Node45 *m_next;
};

// A bank (0x4C0 bytes): 16 lists
struct Bank45 {
    u8 m_00[0x400];
    Head45 m_lists[16];
};

// An entry of 12 bytes
struct Entry45 {
    int m_00;
    short m_04;
    u16 m_06; // flags
    int m_08;
};

// What the two banks share
struct Shared45 {
    int m_00;
    Entry45 *m_04;
    short m_08;
    short m_0A; // the entries' count
};

// Two banks and what they share
struct Banks45 {
    Bank45 m_banks[2];
    Shared45 *m_980;
};

// A sound with an entry's index at 0x3F
struct Sound45 {
    u8 m_00[0x3F];
    s8 m_3F;
};

// An object with a vtable at 0x0C
struct Virt45 {
    u8 m_00[0xC];
    VtEntry *m_vtable;
    u8 m_10[0x18];
    int m_28;
    int m_2C;
};

// A slot of 0x24 bytes
struct Slot45 {
    Virt45 *m_00;
    int m_04; // in use
    u8 m_08[0x1C];
};

// A set of slots
struct Slots45 {
    int m_count;
    int m_04, m_08, m_0C, m_10;
    Slot45 *m_slots; // 0x14
    int m_18, m_1C;
};

// An object of 0x50 bytes with a vtable at 0x0C
struct Obj50 {
    u8 m_00[0xC];
    VtEntry *m_vtable;
    u8 m_10[0x40];
};

// A unit of 0x4C bytes
struct Unit4C {
    u8 m_00[0x4C];
};

// A sound's settings (12 bytes)
struct SndDef {
    u8 m_00[4];
    s8 m_04, m_05, m_06;
    u8 m_07[5];
};

extern int D_800CB5C8;
extern int D_800CB480;
int func_8006C140(Table45 *t);
void func_80014B74(int *a, int id);
void func_800966DC(void *p);
void func_8006A494(int *a, int b);
void func_8006D4B0(Node45 *n);
void func_8006D7E4(Node45 *n);
int func_8009674C(void *p, int a, int b, int c, int d, int e);
void func_80096724(void *p);

int func_8006C110(Table45 *t);
void func_8006C82C(void);
void func_8006CB38(int id);
Table45 *func_8006BDDC(Table45 *o);
void func_8006D2E0(Bank45 *b, int a, int i);
void func_8006BA80(void);
void func_8006CE24(Head45 *h);
void func_8006CE68(Head45 *h);
void func_8006CF48(Bank45 *b);
void func_8006CF8C(Bank45 *b);
void func_8006D1EC(Bank45 *b);
void func_8006D230(Bank45 *b);
int func_8006B9B0(Slots45 *s);
int func_8006BE7C(Table45 *o, int a, int b, int c, int d, int e);
extern char D_800C7F30[];
extern char D_800C7DD8[];
int func_80014724(int *a, char *b);
void func_80013DE0(int *a, u8 b, char *c);
void func_80011DA8(int a, int b);
void func_8006CC40(Shared45 *s);
int func_80096884(void *p);
void func_8009682C(void *p);
void __builtin_delete(void *p);
int func_8006CFD0(Bank45 *b, Sound45 *s, Entry45 *e);
void func_8006B854(void *o, Virt45 **v);

void func_8006C644(Table45 *t, Src45 *s);
void func_8006C7CC(void);
void func_8006D12C(Bank45 *b, int a);
void func_8006D18C(Banks45 *o);
int func_8006BD78(Packed45 *out, u32 a, u32 b, u32 c);
void func_8006CDA0(Head45 *h);
void func_8006BE10(Table45 *o, int flags);
int func_8006C5D8(Vector3 v);
int func_8006D274(Banks45 *o, Sound45 *s, int i);
void func_8006B500(void *o, Virt45 **v, int a);
extern int D_800C7764;
// A word of flags
struct Flags45 {
    u32 m_b0 : 1;
    u32 m_b1 : 1;
};
extern Flags45 D_800D5FD8;
void *memset(void *p, int c, size_t n);
void func_80096918(void *p, int a);
void func_8006D844(Node45 *n, int f, void *d, int a);

void func_8006CED8(Head45 *h, int a);
void func_8006D0BC(Bank45 *b, Ctx45 *c);
void func_8006BF4C(Table45 *t);
int func_8006D314(Banks45 *o, Sound45 *s);
int func_8006BFEC(Table45 *t, u32 b, u32 c);
int func_8006C094(Table45 *t, int a, Info45 *d);
extern int D_800CB490;
extern Unit4C D_800CB498[];
extern SndDef D_800C7E94[];
void func_8006A460(int *a);
void func_8006A7D8(Unit4C *u);

void func_8006BECC(Table45 *t);
int func_8006B9F8(Obj50 *o, int n);
void func_8006BABC(void);
SndDef *func_8006C85C(int a, int b, int c);
void func_8006CD00(Shared45 *s, Bank45 *b);
void func_8006B914(Slots45 *s);
extern u8 D_800C7F2D;
extern int D_800C7F28;
extern int D_800D11D0[]; // a sound channel set
extern int D_800D6130;
void func_8001480C(int *a);
void func_80014774(int *a);
void func_800146EC(int *a);
void func_80015438(int a);
void func_80013F38(int *a, int b);

int func_8006BB48(Flagged *o);
int func_8006BB5C(Flagged *o);
int func_8006BB68(void);
AnimChan *func_8006BB70(AnimChan *c);
void func_8006BB9C(AnimChan *c, int a);
Packed45 *func_8006BFC0(Table45 *t);
int func_8006C064(Table45 *t, short s);
void func_8006C750(void);
void func_8006C77C(void);
void func_8006C7A0(void);
void func_8006CA50(void);
void func_8006CA78(u8 c);
void func_8006CD90(Head45 *h);
void func_8006CE08(Head45 *h, Ctx45 *c, int a, Node45 *n);
int func_8006CE18(Head45 *h);
void func_8006CEAC(Head45 *h);
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_45", func_8006B3B0);

void func_8006B500(void *o, Virt45 **v, int a) {
    VCALLV1(*v, 2, a);
    if ((*v)->m_2C == (*v)->m_28) {
        func_8006B854(o, v);
    }
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_45", func_8006B570);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_45", func_8006B658);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_45", func_8006B854);

/* Every slot released. */
void func_8006B914(Slots45 *s) {
    int i;
    int n = s->m_count;
    Slot45 *p;

    if (n > 0) {
        p = s->m_slots;
        i = 0;
        do {
            if (p->m_00) {
                VCALLV(p->m_00, 5);
            }
            p->m_04 = 0;
            i++;
            p++;
        } while (i < n);
    }
    s->m_18 = 0;
    s->m_1C = 0;
    s->m_0C = 0;
}

/* The first free slot, or -1. */
int func_8006B9B0(Slots45 *s) {
    int i;
    int n = s->m_count;
    Slot45 *p;

    if (n > 0) {
        p = s->m_slots;
        i = 0;
        do {
            if (!p->m_04) {
                return i;
            }
            i++;
            p++;
        } while (i < n);
    }
    return -1;
}

#ifdef NON_MATCHING
/* The call is the loop's test, as in the original; its registers and the counter's place still differ (8 off) */
int func_8006B9F8(Obj50 *o, int n) {
    int r = -1;
    int i = 0;
    int v;

    if (n > 0) {
        while (v = VCALL(o, 6), n--, v) {
            i++;
            o++;
            if (n == 0) {
                goto done;
            }
        }
        r = i;
    }
done:
    return r;
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_45", func_8006B9F8);
#endif

/* The last user gone, the bank released. */
void func_8006BA80(void) {
    if (--D_800CB5C8 == 0) {
        func_8006A494(&D_800CB480, 2);
    }
}

#ifdef NON_MATCHING
/* The loop's counter set before the array's address in the original (3 off) */
void func_8006BABC(void) {
    int i;
    Unit4C *u;

    if (++D_800CB5C8 == 1) {
        func_8006A460(&D_800CB480);
    }
    if (++D_800CB490 == 1) {
        for (u = D_800CB498, i = 3; i != -1; i--, u++) {
            func_8006A7D8(u);
        }
    }
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_45", func_8006BABC);
#endif

int func_8006BB48(Flagged *o) {
    return o->m_48 != -1;
}

int func_8006BB5C(Flagged *o) {
    return o->m_4C != 0;
}

int func_8006BB68(void) {
    return 1;
}

/* The channel's constructor. */
AnimChan *func_8006BB70(AnimChan *c) {
    func_8006BB9C(c, 0);
    return c;
}

void func_8006BB9C(AnimChan *c, int a) {
    c->m_00 = a;
    c->m_04 = a;
    c->m_10 = a;
    c->m_14 = 0;
    c->m_18 = 0;
    c->m_08 = 0x3AE;
    c->m_0C = 0x333;
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_45", func_8006BBC4);

/* Three values packed into a word: 13 bits, 5 and 14 (-1 is 0x3FFF). */
int func_8006BD78(Packed45 *out, u32 a, u32 b, u32 c) {
    int r = 0;

    if (a < 8000) {
        if (c == (u32)-1) {
            c = 0x3FFF;
        }
        if (a < 0x2000 && b < 0x20 && c < 0x4000) {
            out->m_a = a;
            out->m_b = b;
            out->m_c = c;
            r = 1;
        }
    }
    return r;
}

Table45 *func_8006BDDC(Table45 *o) {
    func_800966DC(o->m_42C);
    func_8006BECC(o);
    return o;
}

/* The destructor. */
void func_8006BE10(Table45 *o, int flags) {
    if (func_80096884(o->m_42C)) {
        func_8009682C(o->m_42C);
    }
    func_8009682C(o->m_42C);
    if (flags & 1) {
        __builtin_delete(o);
    }
}

int func_8006BE7C(Table45 *o, int a, int b, int c, int d, int e) {
    int r = func_8009674C(o->m_42C, a, b, c, d, e);

    func_80096724(o->m_42C);
    return r;
}

/* The table emptied. */
void func_8006BECC(Table45 *t) {
    D_800C7764 = 0;
    D_800D5FD8.m_b1 = 0;
    t->m_00 = 0;
    t->m_410 = 0;
    t->m_04 = 0;
    t->m_40C = 0;
    t->m_454 = 0;
    memset(&t->m_414, 0, 12);
    memset(t->m_420, 0, 12);
    t->m_08 = 0;
    func_80096918(t->m_42C, 2);
}

/* The table reset. */
void func_8006BF4C(Table45 *t) {
    D_800C7764 = 0;
    D_800D5FD8.m_b1 = 0;
    t->m_04 = 0;
    t->m_40C = 0;
    t->m_08 = 0;
    memset(&t->m_414, 0, 12);
    memset(t->m_420, 0, 12);
    func_80096918(t->m_42C, 1);
}

/* The entry at the cursor, or 0 past the end. */
Packed45 *func_8006BFC0(Table45 *t) {
    Packed45 *r = 0;

    if (t->m_40C < t->m_410) {
        r = &t->m_items[t->m_40C];
    }
    return r;
}

/* An entry added; its index, or -1. */
int func_8006BFEC(Table45 *t, u32 b, u32 c) {
    int r = -1;

    if (t->m_410 < 0x100 && func_8006BD78(&t->m_items[t->m_410], t->m_00, b, c)) {
        r = t->m_410++;
    }
    return r;
}

int func_8006C064(Table45 *t, short s) {
    if (t->m_00 >= 8000) {
        return 0;
    }
    t->m_416 = s;
    t->m_08 = 0;
    return 1;
}

#ifdef NON_MATCHING
/* The constant 1 loaded twice (the field and the result) in the original, and the halfword's store scheduled later (22 off) */
int func_8006C094(Table45 *t, int a, Info45 *d) {
    if (t->m_00 >= 8000) {
        return 0;
    }
    t->m_41C = d->m_08;
    t->m_414 = a;
    t->m_41D = d->m_09;
    t->m_418 = d->m_04;
    t->m_419 = d->m_05;
    t->m_417 = d->m_0D;
    t->m_41A = d->m_07;
    t->m_08 = 1;
    t->m_41E = d->m_0A;
    return 1;
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_45", func_8006C094);
#endif

int func_8006C110(Table45 *t) {
    int r = func_8006C140(t);

    t->m_00++;
    return r;
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_45", func_8006C140);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_45", func_8006C330);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_45", func_8006C4A0);

/* The parity of a vector's bits. */
int func_8006C5D8(Vector3 v) {
    int n = 0;
    int i;

    for (i = 0; i < 32; i++) {
        if ((v.vx >> i) & 1) {
            n++;
        }
        if ((v.vy >> i) & 1) {
            n++;
        }
        if ((v.vz >> i) & 1) {
            n++;
        }
    }
    return n & 1;
}

void func_8006C644(Table45 *t, Src45 *s) {
    t->m_41B = func_8006C5D8(s->m_64);
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_45", func_8006C694);

void func_8006C750(void) {
    func_800146EC(D_800D11D0);
    func_80015438(5);
}

void func_8006C77C(void) {
    func_8001480C(D_800D11D0);
}

void func_8006C7A0(void) {
    func_80013F38(D_800D11D0, D_800D6130);
}

#ifdef NON_MATCHING
/* The call's second and third arguments are set in the other order (3 off) */
void func_8006C7CC(void) {
    if (func_80014724(D_800D11D0, D_800C7F30)) {
        func_80013DE0(D_800D11D0, 13, D_800C7DD8);
        func_80011DA8(4, 40);
        ((u8 *)D_800D11D0)[3] = 1;
    }
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_45", func_8006C7CC);
#endif

void func_8006C82C(void) {
    func_80014774(D_800D11D0);
    ((u8 *)D_800D11D0)[3] = 0;
}

#ifdef NON_MATCHING
/* The original builds each field's address from the symbol; here they're offsets from one base (27 off) */
SndDef *func_8006C85C(int a, int b, int c) {
    SndDef *r = 0;
    u32 i;

    for (i = 0; i < 11; i++) {
        if (D_800C7E94[i].m_04 == a && D_800C7E94[i].m_05 == b &&
            (D_800C7E94[i].m_06 == -1 || D_800C7E94[i].m_06 == c)) {
            r = &D_800C7E94[i];
            break;
        }
    }
    return r;
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_45", func_8006C85C);
#endif

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_45", func_8006C8EC);

void func_8006CA50(void) {
    D_800C7F28 = 0;
    func_80014774(D_800D11D0);
}

void func_8006CA78(u8 c) {
    D_800C7F2D = c;
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_45", func_8006CA84);

void func_8006CB38(int id) {
    if (id != -1) {
        func_80014B74(D_800D11D0, id);
    }
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_45", func_8006CB68);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_45", func_8006CC40);

void func_8006CD00(Shared45 *s, Bank45 *b) {
    int i;
    int n = s->m_0A;

    for (i = 0; i < n; i++) {
        Entry45 *e = &s->m_04[i];

        if (e->m_06 & 1) {
            func_8006CFD0(b, 0, e);
        }
    }
}

void func_8006CD90(Head45 *h) {
    h->m_ctx = 0;
    h->m_04 = 0;
    h->m_next = 0;
}

void func_8006CDA0(Head45 *h) {
    Node45 *p = h->m_next;
    Node45 *n;

    while (p) {
        n = p->m_next;
        func_8006D7E4(p);
        p->m_00 = 0;
        p->m_next = 0;
        p = n;
    }
    func_8006CD90(h);
}

void func_8006CE08(Head45 *h, Ctx45 *c, int a, Node45 *n) {
    h->m_ctx = c;
    h->m_04 = a;
    h->m_next = n;
}

int func_8006CE18(Head45 *h) {
    return h->m_next != 0;
}

void func_8006CE24(Head45 *h) {
    Node45 *p;

    for (p = h->m_next; p; p = p->m_next) {
        func_8006D4B0(p);
    }
}

void func_8006CE68(Head45 *h) {
    Node45 *p;

    for (p = h->m_next; p; p = p->m_next) {
        func_8006D7E4(p);
    }
}

void func_8006CEAC(Head45 *h) {
    Node45 *p;

    for (p = h->m_next; p; p = p->m_next) {
        p->m_28 = 2;
    }
}

void func_8006CED8(Head45 *h, int a) {
    Node45 *p = h->m_next;
    Ctx45 *c = h->m_ctx;

    for (; p; p = p->m_next) {
        void *d = 0;
        int f = 1;

        if (c) {
            f = c->m_04 & 2;
            d = c->m_08;
        }
        func_8006D844(p, f, d, a);
    }
}

void func_8006CF48(Bank45 *b) {
    u32 i;

    for (i = 0; i < 16; i++) {
        func_8006CE24(&b->m_lists[i]);
    }
}

void func_8006CF8C(Bank45 *b) {
    u32 i;

    for (i = 0; i < 16; i++) {
        func_8006CE68(&b->m_lists[i]);
    }
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_45", func_8006CFD0);

/* The lists of a context emptied. */
void func_8006D0BC(Bank45 *b, Ctx45 *c) {
    u32 i;

    for (i = 0; i < 16; i++) {
        if (b->m_lists[i].m_ctx == c) {
            func_8006CDA0(&b->m_lists[i]);
        }
    }
}

void func_8006D12C(Bank45 *b, int a) {
    u32 i;

    for (i = 0; i < 16; i++) {
        if (func_8006CE18(&b->m_lists[i])) {
            func_8006CED8(&b->m_lists[i], a);
        }
    }
}

void func_8006D18C(Banks45 *o) {
    u32 i;

    func_8006CC40(o->m_980);
    for (i = 0; i < 2; i++) {
        func_8006CD00(o->m_980, &o->m_banks[i]);
    }
}

void func_8006D1EC(Bank45 *b) {
    u32 i;

    for (i = 0; i < 2; i++) {
        func_8006CF48(&b[i]);
    }
}

void func_8006D230(Bank45 *b) {
    u32 i;

    for (i = 0; i < 2; i++) {
        func_8006CF8C(&b[i]);
    }
}

int func_8006D274(Banks45 *o, Sound45 *s, int i) {
    int r = 0;
    int k = s->m_3F;

    if (k != -1) {
        Entry45 *e = &o->m_980->m_04[k];
        r = func_8006CFD0(&o->m_banks[i], s, e) != -1;
    }
    return r;
}

void func_8006D2E0(Bank45 *b, int a, int i) {
    func_8006D0BC(&b[i], a);
}

/* A sound in both banks. */
int func_8006D314(Banks45 *o, Sound45 *s) {
    int r = 1;
    u32 i;

    for (i = 0; i < 2; i++) {
        if (!func_8006D274(o, s, i)) {
            r = 0;
            break;
        }
    }
    return r;
}
