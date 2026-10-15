#include "common.h"
#include "langimg/cobjet.h"
#include "mulshift.h"

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

// A value eased towards a target
struct Ease45 {
    int m_00; // the value, within -0x1000..0x1000
    int m_04; // the target
    int m_08; // the rate
    int m_0C; // how far back from the value the ease starts (/4096)
    int m_10; // the target last seen
    int m_14; // the ease's start
    int m_18; // its end
};

// A list's node
struct Node45 {
    u8 *m_data; // 8 bytes of an entry's data
    u8 m_04[4];
    Node45 *m_next; // 0x08
    short m_0C;
    u8 m_0E[0x1A];
    u8 m_28;
    u8 m_29[0x17];
};

// Three values packed into a word
struct Packed45 {
    u32 m_a : 13;
    u32 m_b : 5;
    u32 m_c : 14;
};

// A table's settings (12 bytes), read from a bit stream
struct Settings45 {
    u16 m_00;
    u8 m_02;
    s8 m_03;
    s8 m_04, m_05, m_06; // three bytes compared as one: a colour?
    s8 m_07;             // the parity of a vector's bits
    s8 m_08, m_09, m_0A;
    u8 m_0B;
};

// The same 12 bytes as words
struct Words3 {
    int m_00, m_04, m_08;
};

// A table of packed entries with a cursor, and a sound object at 0x42C
struct Table45 {
    u32 m_00;
    u32 m_04;
    int m_08;
    Packed45 m_items[0x100]; // 0x0C
    u32 m_40C;               // the cursor
    u32 m_410;               // the count
    Settings45 m_cur;        // 0x414
    Settings45 m_prev;       // 0x420, what the next settings are read against
    u8 m_42C[0x28];
    int m_454;
};

// What a table's settings are read from
struct Info45 {
    short m_00;
    u8 m_02[2];
    u8 m_04, m_05, m_06, m_07;
    u8 m_08, m_09, m_0A, m_0B;
    u8 m_0C, m_0D;
};

// A list's context
struct Ctx45 {
    int m_00;
    int m_04; // flags
    u8 m_08[0x37];
    s8 m_3F; // its entry's index
};

struct Entry45;

// Something with a vector at 0x64
struct Src45 {
    u8 m_00[0x64];
    Vector3 m_64;
};

// A list's head (0xC bytes)
struct Head45 {
    Ctx45 *m_ctx;
    Entry45 *m_entry;
    Node45 *m_next;
};

// A bank (0x4C0 bytes): 16 lists
struct Bank45 {
    Node45 m_nodes[16];
    Head45 m_lists[16];
};

// An entry of 12 bytes
struct Entry45 {
    int m_00;
    short m_04; // its nodes' count
    u16 m_06;   // flags
    u8 *m_data; // 8 bytes for each node
};

// What the two banks share
// A group of ids and their handles (0x40 bytes)
struct Group45 {
    int m_00;
    int *m_04;   // the ids
    short *m_08; // their handles
    s8 m_0C;     // the count
    u8 m_0D[0x33];
};

struct Shared45 {
    Group45 *m_groups;
    Entry45 *m_04;
    short m_08; // the groups' count
    short m_0A; // the entries' count
};

// Two banks and what they share
struct Banks45 {
    Bank45 m_banks[2];
    Shared45 *m_980;
    int m_984;
    short *m_988;
};

// An object with a vtable at 0x0C
struct Virt45 {
    int m_00;
    int m_04; // a start
    int m_08; // a length
    VtEntry *m_vtable;
    int m_10;
    int m_14;
    u8 m_18[0x10];
    int m_28;
    int m_2C;
    u8 m_30[8];
    int m_38, m_3C, m_40, m_44;
    short m_48; // its index in the bank
    short m_4A;
    int m_4C;
};

// A slot of 0x24 bytes
struct Slot45 {
    Virt45 *m_00;
    int m_04; // its state: 0 free, 1 to 3
    int m_08;
    short m_0C, m_0E, m_10, m_12;
    int m_14; // its number
    int m_18;
    Slot45 *m_prev; // 0x1C
    Slot45 *m_next; // 0x20
};

// A set of slots
struct Slots45 {
    int m_count;
    int m_04;
    int m_08; // the next slot's number
    int m_0C;
    Virt45 *m_10;
    Slot45 *m_slots; // 0x14
    Slot45 *m_first; // 0x18
    Slot45 *m_last;  // 0x1C
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
// A sound bank's names and ids
struct SndName {
    char *m_name;
    int m_id;
};

struct SndDef {
    int m_00;
    s8 m_04, m_05, m_06;
    u8 m_07;       // the bank's count
    SndName *m_08; // the bank
};

// A scene's music (5 bytes)
struct Music45 {
    u8 m_00;
    s8 m_01, m_02, m_03, m_04;
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
extern SndName D_800C7DD8[]; // 13 names
int func_80014724(int *a, char *b);
void func_80013DE0(int *a, int n, SndName *t);
void func_80011DA8(int a, int b);
void func_8006CC40(Shared45 *s, int *a);
int func_80096884(void *p);
void func_8009682C(void *p);
void __builtin_delete(void *p);
int func_8006CFD0(Bank45 *b, Ctx45 *s, Entry45 *e);
void func_8006B854(Slots45 *o, Slot45 *s);

void func_8006C644(Table45 *t, Src45 *s);
void func_8006C7CC(void);
void func_8006D12C(Bank45 *b, int a);
void func_8006D18C(Banks45 *o, int *a);
int func_8006BD78(Packed45 *out, u32 a, u32 b, u32 c);
void func_8006CDA0(Head45 *h);
void func_8006BE10(Table45 *o, int flags);
int func_8006C5D8(Vector3 v);
int func_8006D274(Banks45 *o, Ctx45 *s, int i);
void func_8006B500(Slots45 *o, Slot45 *s, int a);
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
int func_8006D314(Banks45 *o, Ctx45 *s);
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
void func_8006D420(Banks45 *b, int id);
int func_80014A98(int *a, int id, int b);
void func_80014368(int *a, int h, int b);
void func_80014B18(int *a, int h);
short func_80013E64(int *a, int id);

int func_8006CA84(int id, int a);
int func_8006C694(Table45 *t, Src45 *s);
extern int D_800D60EC;
int func_800B6318(void);
void func_8006B330(Slots45 *o, Slot45 *s, int a);
void func_8006B3B0(Slots45 *o, Slot45 *s, int a);

int func_8006CB68(int vol, int a, int b, int c, int d, int e);
void func_8006B570(Slots45 *o);
extern char D_800C7F48[];
extern SndName D_800C79F8[]; // 94 names
extern int D_800D13D8;
extern u8 D_800C7F2E;
extern u8 D_800C7F2C;
extern int D_800CB84C;
extern int D_800CB5D0;
extern int D_800CB5D4;
extern Music45 D_800C7F5C[];
int sprintf(char *s, const char *f, ...);
void func_8006FAF8(int a, int b);
void func_8005F380(Info45 *d);
int func_8006C330(Table45 *t);
void func_8006A028(Virt45 *v, int a, int b, int c, int d);

int func_8006C4A0(Table45 *t, Info45 *d, u16 *out);
void func_8006C8EC(int a, int b, int c);
int func_80096B74(void *p, int n);
int func_800968B0(void *p);
void func_80096ACC(void *p, int n, int v);
int func_800968D4(void *p);
extern Virt45 *D_800CB484;
extern int D_800CC030[];
int func_8006A5D0(int *a, int b, int c);
short func_800803C4(int a, int b);

int func_8006B658(Slots45 *o, int a, int b, int c, int d, int e, int f, int g);
int func_8006BBC4(Ease45 *o, int dt);
extern u8 D_800C7F2D;
extern Banks45 *D_800C7F28;
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
void func_8006CE08(Head45 *h, Ctx45 *c, Entry45 *e, Node45 *n);
int func_8006CE18(Head45 *h);
void func_8006CEAC(Head45 *h);
}

/* A slot's object past its end: the slot finished, the ones after it moved up. */
void func_8006B3B0(Slots45 *o, Slot45 *s, int x) {
    Virt45 *v;
    Slot45 *p;

    VCALLV1(s->m_00, 2, x);
    v = s->m_00;
    if (v->m_08 + v->m_04 < x) {
        s->m_04 = 3;
        func_8006A028(v, v->m_10, v->m_14 + 30, 0, 150);
        for (p = s->m_next; p; p = p->m_next) {
            if ((u32)(p->m_04 - 1) < 2) {
                Virt45 *w = p->m_00;

                p->m_08 = p->m_08 - (10 + s->m_10);
                func_8006A028(p->m_00, p->m_08, w->m_14, 0, 90);
            }
        }
        if (s == o->m_last && s == o->m_first) {
            o->m_0C = 0;
        } else {
            o->m_0C = o->m_0C - (10 + s->m_10);
        }
    }
}

void func_8006B500(Slots45 *o, Slot45 *s, int a) {
    VCALLV1(s->m_00, 2, a);
    if (s->m_00->m_2C == s->m_00->m_28) {
        func_8006B854(o, s);
    }
}

/* Each slot updated by its state. */
void func_8006B570(Slots45 *o) {
    int n = o->m_count;
    Slot45 *p;
    int x;

    if (n > 0) {
        p = o->m_slots;
        x = D_800D60EC;
        do {
            switch (p->m_04) {
            case 0: // free
                break;
            case 1:
                func_8006B330(o, p, x);
                break;
            case 2:
                func_8006B3B0(o, p, x);
                break;
            case 3:
                func_8006B500(o, p, x);
                break;
            }
            p++;
        } while (--n);
    }
}

/* A slot added at the end of the list, with an object from the bank; its
 * number, or -1. */
int func_8006B658(Slots45 *o, int a, int b, int c, int d, int e, int f, int g) {
    int r = -1;
    int i = func_8006B9B0(o);
    Slot45 *s;
    Slot45 *p;
    Virt45 *v;
    int len;
    int x;
    int k;

    if (i != -1) {
        s = &o->m_slots[i];
        len = 0x200;
        x = o->m_0C;
        if (o->m_10) {
            len = o->m_10->m_08;
        }
        k = func_8006A5D0(&D_800CB480, a, -1);
        if (k != -1) {
            v = &D_800CB484[k];
            v->m_10 = len;
            v->m_14 = 0;
            v->m_38 = d;
            v->m_04 = r;
            v->m_48 = k;
            v->m_4A = c;
            v->m_3C = e;
            v->m_44 = g;
            s->m_00 = v;
            r = o->m_08++;
            s->m_14 = r;
            s->m_08 = x;
            s->m_04 = 1;
            s->m_18 = b;
            s->m_12 = 0;
            s->m_10 = 0;
            s->m_0E = 0;
            s->m_0C = 0;
            s->m_next = 0;
            s->m_prev = o->m_last;
            if (o->m_last) {
                o->m_last->m_next = s;
            }
            o->m_last = s;
            if (!o->m_first) {
                o->m_first = s;
            }
            p = o->m_last;
            if (f < 0) {
                f = 0;
            }
            func_8006A028(s->m_00, x, s->m_00->m_14, 0, (short)f);
            p->m_10 = func_800803C4(D_800CC030[p->m_00->m_4A], p->m_00->m_4C);
            o->m_0C = 0;
            if (p) {
                o->m_0C = p->m_08 + p->m_10 + 10;
            }
        }
    }
    return r;
}

/* A slot released and taken out of the list. */
void func_8006B854(Slots45 *o, Slot45 *s) {
    if (s->m_04) {
        s->m_04 = 0;
        VCALLV(s->m_00, 5);
        if (s->m_prev) {
            s->m_prev->m_next = s->m_next;
        }
        if (s->m_next) {
            s->m_next->m_prev = s->m_prev;
        }
        if (!s->m_prev) {
            o->m_first = s->m_next;
        }
        if (!s->m_next) {
            o->m_last = s->m_prev;
        }
    }
}

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
    s->m_first = 0;
    s->m_last = 0;
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

/* The first of n objects whose virtual function 6 returns 0, or -1. */
int func_8006B9F8(Obj50 *o, int n) {
    int r = -1;
    int i = 0;
    int k = n;
    Obj50 *p = o;

    if (k > 0) {
        while (VCALL(p, 6)) {
            i++;
            p++;
            if (--k == 0) {
                goto done;
            }
        }
        r = i;
    }
done:
    return r;
}

/* The last user gone, the bank released. */
void func_8006BA80(void) {
    if (--D_800CB5C8 == 0) {
        func_8006A494(&D_800CB480, 2);
    }
}

// D_800CB498 declared small: its address is one la
extern int D_800CB498_la __asm__("D_800CB498");

void func_8006BABC(void) {
    int i;
    Unit4C *u;

    if (++D_800CB5C8 == 1) {
        func_8006A460(&D_800CB480);
    }
    if (++D_800CB490 == 1) {
        for (u = (Unit4C *)&D_800CB498_la, i = 3; i != -1; i--, u++) {
            func_8006A7D8(u);
        }
    }
}

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

#ifdef NON_MATCHING
/* The layout matches; the value and the object in other registers, which moves the scheduling (85 off; MULSHIFT keeps it from the permuter) */
/* The value eased towards its target for dt; the new value. */
int func_8006BBC4(Ease45 *o, int dt) {
    int cur = o->m_00;
    int tgt = o->m_04;
    int back;
    int step;

    if (tgt != cur) {
        if (dt <= 0) {
            return cur;
        }
        if (tgt != o->m_10) {
            o->m_14 = cur;
            o->m_18 = tgt;
            o->m_10 = tgt;
            back = (tgt - cur) * o->m_0C / 4096;
            if ((back > 0 && !(cur < cur - back)) || (back < 0 && !(cur - back < cur))) {
                o->m_14 = o->m_00 - back;
            }
            cur = o->m_00;
        }
        if (o->m_14 != o->m_18) {
            tgt = o->m_18;
            step =
                MULSHIFT(o->m_08 * (tgt - cur), dt * (o->m_14 - cur), 12) / ((o->m_14 - tgt) * 38);
            if (step == 0) {
                if (cur < tgt) {
                    step = 1;
                } else if (tgt < cur) {
                    step = -1;
                }
            }
            if ((cur < tgt && tgt < cur + step) || (tgt < cur && cur + step < tgt)) {
                step = tgt - cur;
            }
            o->m_00 = cur = cur + step;
        }
        if (cur < -0x1000) {
            cur = -0x1000;
        } else if (cur > 0x1000) {
            cur = 0x1000;
        }
        o->m_00 = cur;
    }
    return cur;
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_45", func_8006BBC4);
#endif

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
    memset(&t->m_cur, 0, 12);
    memset(&t->m_prev, 0, 12);
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
    memset(&t->m_cur, 0, 12);
    memset(&t->m_prev, 0, 12);
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
    t->m_cur.m_02 = s;
    t->m_08 = 0;
    return 1;
}

#ifdef NON_MATCHING
/* The constant 1 loaded twice (the field and the result) in the original, and the halfword's store scheduled later (22 off) */
int func_8006C094(Table45 *t, int a, Info45 *d) {
    if (t->m_00 >= 8000) {
        return 0;
    }
    t->m_cur.m_08 = d->m_08;
    t->m_cur.m_00 = a;
    t->m_cur.m_09 = d->m_09;
    t->m_cur.m_04 = d->m_04;
    t->m_cur.m_05 = d->m_05;
    t->m_cur.m_03 = d->m_0D;
    t->m_cur.m_06 = d->m_07;
    t->m_08 = 1;
    t->m_cur.m_0A = d->m_0A;
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

/* The settings written to the stream, each field after a bit that keeps the
 * last one (as func_8006C330 reads them). */
int func_8006C140(Table45 *t) {
    int r = 0;

    if (!func_800968B0(t->m_42C)) {
        func_80096ACC(t->m_42C, 1, t->m_cur.m_07);
        func_80096ACC(t->m_42C, 1, t->m_cur.m_08);
        func_80096ACC(t->m_42C, 1, t->m_cur.m_09);
        func_80096ACC(t->m_42C, 1, t->m_cur.m_0A);
        if (t->m_cur.m_02 == t->m_prev.m_02) {
            func_80096ACC(t->m_42C, 1, 0);
        } else {
            func_80096ACC(t->m_42C, 1, 1);
            func_80096ACC(t->m_42C, 8, t->m_cur.m_02);
        }
        if (t->m_cur.m_00 == t->m_prev.m_00) {
            func_80096ACC(t->m_42C, 1, 1);
        } else {
            func_80096ACC(t->m_42C, 1, 0);
            func_80096ACC(t->m_42C, 16, t->m_cur.m_00);
        }
        if (t->m_cur.m_03 == t->m_prev.m_03) {
            func_80096ACC(t->m_42C, 1, 1);
        } else {
            func_80096ACC(t->m_42C, 1, 0);
            func_80096ACC(t->m_42C, 8, t->m_cur.m_03);
        }
        if ((*(u32 *)&t->m_cur.m_04 & 0xFFFFFF) == (*(u32 *)&t->m_prev.m_04 & 0xFFFFFF)) {
            func_80096ACC(t->m_42C, 1, 1);
        } else {
            func_80096ACC(t->m_42C, 1, 0);
            func_80096ACC(t->m_42C, 8, t->m_cur.m_04);
            func_80096ACC(t->m_42C, 8, t->m_cur.m_05);
            func_80096ACC(t->m_42C, 8, t->m_cur.m_06);
        }
        *(Words3 *)&t->m_prev = *(Words3 *)&t->m_cur;
        t->m_454 = func_800968D4(t->m_42C);
        if (!func_800968B0(t->m_42C)) {
            r = 1;
        }
    }
    return r;
}

/* The next settings read from the stream: each field after a bit that keeps the
 * last one; nonzero if the stream goes on. */
int func_8006C330(Table45 *t) {
    t->m_cur.m_07 = func_80096B74(t->m_42C, 1);
    t->m_cur.m_08 = func_80096B74(t->m_42C, 1);
    t->m_cur.m_09 = func_80096B74(t->m_42C, 1);
    t->m_cur.m_0A = func_80096B74(t->m_42C, 1);
    if (func_80096B74(t->m_42C, 1)) {
        t->m_cur.m_02 = func_80096B74(t->m_42C, 8);
    }
    if (func_80096B74(t->m_42C, 1)) {
        t->m_cur.m_00 = t->m_prev.m_00;
    } else {
        t->m_cur.m_00 = func_80096B74(t->m_42C, 16);
    }
    if (func_80096B74(t->m_42C, 1)) {
        t->m_cur.m_03 = t->m_prev.m_03;
    } else {
        t->m_cur.m_03 = func_80096B74(t->m_42C, 8);
    }
    if (func_80096B74(t->m_42C, 1)) {
        t->m_cur.m_04 = t->m_prev.m_04;
        t->m_cur.m_05 = t->m_prev.m_05;
        t->m_cur.m_06 = t->m_prev.m_06;
    } else {
        t->m_cur.m_04 = func_80096B74(t->m_42C, 8);
        t->m_cur.m_05 = func_80096B74(t->m_42C, 8);
        t->m_cur.m_06 = func_80096B74(t->m_42C, 8);
    }
    *(Words3 *)&t->m_prev = *(Words3 *)&t->m_cur;
    return !func_800968B0(t->m_42C);
}

/* The next entry's settings read back; the cursor past the entries of the
 * same time. */
int func_8006C4A0(Table45 *t, Info45 *d, u16 *out) {
    if (t->m_04 >= t->m_00) {
        return 0;
    }
    if (!func_8006C330(t)) {
        return 0;
    }
    *out = t->m_cur.m_02;
    func_8005F380(d);
    d->m_00 = t->m_cur.m_00;
    d->m_04 = t->m_cur.m_04;
    d->m_08 = t->m_cur.m_08 != 0;
    d->m_05 = t->m_cur.m_05;
    d->m_09 = t->m_cur.m_09 != 0;
    d->m_07 = t->m_cur.m_06;
    d->m_0A = t->m_cur.m_0A != 0;
    d->m_0D = t->m_cur.m_03;
    while (t->m_40C < t->m_410 - 1 && (&t->m_items[t->m_40C])[1].m_a == t->m_04) {
        t->m_40C++;
    }
    t->m_04++;
    return 1;
}

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
    t->m_cur.m_07 = func_8006C5D8(s->m_64);
}

int func_8006C694(Table45 *t, Src45 *s) {
    int r = 0;
    int p;

    if (t->m_04 >= t->m_00) {
        return 0;
    }
    p = func_8006C5D8(s->m_64);
    if ((t->m_cur.m_07 && !p) || (!t->m_cur.m_07 && p)) {
        r = 1;
    }
    if (r) {
        D_800C7764++;
    }
    return r;
}

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

// D_800C7DD8 declared small: its address is one la
extern int D_800C7DD8_la __asm__("D_800C7DD8");

void func_8006C7CC(void) {
    if (func_80014724(D_800D11D0, D_800C7F30)) {
        func_80013DE0(D_800D11D0, 13, (SndName *)&D_800C7DD8_la);
        func_80011DA8(4, 40);
        ((u8 *)D_800D11D0)[3] = 1;
    }
}

void func_8006C82C(void) {
    func_80014774(D_800D11D0);
    ((u8 *)D_800D11D0)[3] = 0;
}

// The sound table declared small: each address built from it is one la
extern int D_800C7E94_la __asm__("D_800C7E94");
#define SND45 ((SndDef *)&D_800C7E94_la)

SndDef *func_8006C85C(int a, int b, int c) {
    SndDef *r = 0;
    u32 i;

    for (i = 0; i < 11; i++) {
        if (SND45[i].m_04 == a && SND45[i].m_05 == b &&
            (SND45[i].m_06 == -1 || SND45[i].m_06 == c)) {
            r = &SND45[i];
            break;
        }
    }
    return r;
}
#undef SND45

extern int D_800D13D8_a[] __asm__("D_800D13D8");
extern int D_800C79F8_la __asm__("D_800C79F8");
extern int D_800C7F5C_la __asm__("D_800C7F5C");
#define MUS45 ((Music45 *)&D_800C7F5C_la)

void func_8006C8EC(int a, int b, int c) {
    char buf[256];
    SndDef *d = func_8006C85C(a, b, c);
    u32 i;

    if (d) {
        sprintf(buf, D_800C7F48, d->m_00);
        if (func_80014724(D_800D11D0, buf)) {
            func_80013DE0(D_800D11D0, d->m_07, d->m_08);
            func_80013DE0(D_800D11D0, 0x5E, (SndName *)&D_800C79F8_la);
        }
    }
    func_8006FAF8(0, 0);
    D_800D13D8_a[0] = 2;
    D_800C7F2E = 0;
    for (i = 0; i < 10; i++) {
        if (c == MUS45[i].m_02 || a == MUS45[i].m_01) {
            D_800C7F2E = MUS45[i].m_00;
            func_80011DA8(MUS45[i].m_03, MUS45[i].m_04);
            break;
        }
    }
    D_800CB84C = b;
    D_800CB5D0 = a;
    D_800CB5D4 = c;
    D_800C7F2C = (u32)(c - 14) < 2;
}
#undef MUS45

void func_8006CA50(void) {
    D_800C7F28 = 0;
    func_80014774(D_800D11D0);
}

void func_8006CA78(u8 c) {
    D_800C7F2D = c;
}

/* A sound started: on the banks if they have it, else on the channels. */
int func_8006CA84(int id, int a) {
    int r = -1;

    if (id != -1) {
        if (D_800C7F28 && D_800C7F28->m_988[id] != -1) {
            func_8006D420(D_800C7F28, id);
        } else {
            r = func_80014A98(D_800D11D0, id, 0);
            func_80014368(D_800D11D0, r, a);
            func_80014B18(D_800D11D0, r);
        }
    }
    return r;
}

void func_8006CB38(int id) {
    if (id != -1) {
        func_80014B74(D_800D11D0, id);
    }
}

/* One of up to five sounds (the list ends at -1), picked at random. */
int func_8006CB68(int vol, int a, int b, int c, int d, int e) {
    short ids[5];
    int n = 0;
    int h;

    ids[0] = a;
    ids[1] = b;
    ids[2] = c;
    ids[3] = d;
    ids[4] = e;
    while (ids[n] != -1) {
        n++;
    }
    vol = (vol * 127) >> 8;
    h = func_80014A98(D_800D11D0, ids[func_800B6318() % n], 0);
    func_80014368(D_800D11D0, h, vol);
    func_80014B18(D_800D11D0, h);
    return h;
}

/* Each group's ids to handles. */
void func_8006CC40(Shared45 *s, int *a) {
    int i;
    int j;

    for (i = 0; i < s->m_08; i++) {
        Group45 *g = &s->m_groups[i];

        for (j = 0; j < g->m_0C; j++) {
            g->m_08[j] = func_80013E64(a, g->m_04[j]);
        }
    }
}

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
    h->m_entry = 0;
    h->m_next = 0;
}

void func_8006CDA0(Head45 *h) {
    Node45 *p = h->m_next;
    Node45 *n;

    while (p) {
        n = p->m_next;
        func_8006D7E4(p);
        p->m_data = 0;
        p->m_next = 0;
        p = n;
    }
    func_8006CD90(h);
}

void func_8006CE08(Head45 *h, Ctx45 *c, Entry45 *e, Node45 *n) {
    h->m_ctx = c;
    h->m_entry = e;
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

#ifdef NON_MATCHING
/* GCC makes a second pointer for the node's halfword at 0x0C, which the original doesn't (44 off) */
/* An entry's nodes taken from the free ones into the first empty list; the
 * list's index, or -1. */
int func_8006CFD0(Bank45 *b, Ctx45 *c, Entry45 *e) {
    int r = -1;
    u32 i;
    u32 j;

    for (i = 0; i < 16; i++) {
        if (!func_8006CE18(&b->m_lists[i])) {
            Node45 *prev = 0;
            Node45 *nd = b->m_nodes;
            u8 *d = e->m_data;
            int k = e->m_04;

            for (j = 0; j < 16; j++, nd++) {
                if (!nd->m_data) {
                    nd->m_data = d;
                    d += 8;
                    nd->m_next = prev;
                    prev = nd;
                    nd->m_0C = 0;
                    if (--k == 0) {
                        break;
                    }
                }
            }
            func_8006CE08(&b->m_lists[i], c, e, prev);
            func_8006CE24(&b->m_lists[i]);
            r = i;
            break;
        }
    }
    return r;
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_45", func_8006CFD0);
#endif

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

void func_8006D18C(Banks45 *o, int *a) {
    u32 i;

    func_8006CC40(o->m_980, a);
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

int func_8006D274(Banks45 *o, Ctx45 *s, int i) {
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
int func_8006D314(Banks45 *o, Ctx45 *s) {
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
