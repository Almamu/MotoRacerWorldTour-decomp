#include "common.h"
#include "stdarg.h"

/* A list of six entries, a class keeping five globals, an array of eight
 * items (docs/matching/issue-26-langimg-chunk25.md) */

extern "C" {
// An entry's flags: a 20-bit key and six 2-bit fields
struct Bits25 {
    u32 m_a : 2;
    u32 m_b : 2;
    u32 m_c : 2;
    u32 m_d : 2;
    int m_e : 2;
    u32 m_f : 2;
    int m_key : 20;
};
struct Elem25 {
    int m_00;
    int m_04;
    int m_08;
    int m_0C;
    Bits25 m_10;
};
struct Src25 {
    u8 m_00[0xA80];
    int m_A80;
};
struct Own25 {
    u8 m_00[0xA0];
    Src25 *m_A0;
};
struct List25 {
    int m_00;
    int m_04;
    Elem25 m_08[6];
    int m_80; // how many
    int m_84; // the current
    int m_88; // the next found
    Own25 *m_8C;
};
// A class that keeps five globals
struct Keep25 {
    u8 m_00; // its top bit a flag
    u8 m_01[3];
    int m_04;
    u8 m_08[0x10];
    int m_18;
    u8 m_1C[0x4C];
    void *m_68; // the vtable
    u8 m_6C[4];
    int m_70;
    int m_74;
    int m_78;
    int m_7C;
    int m_80;
};
// An item: free (m_00 1), or its kind and values
struct Item25 {
    int m_00;
    int m_04;
    int m_08; // when
    int m_0C; // the kind
    int m_10;
    int m_14;
    int m_18;
    int m_1C;
    int m_20;
    int m_24;
    int m_28;
    int m_2C; // how many of m_30
    int m_30[8];
};
struct Items25 {
    Item25 m_000[8];
    u8 m_280[0x1C];
    int m_29C;
    int m_2A0;
    int m_2A4;
    int m_2A8;
    int m_2AC;
    int m_2B0;
    int m_2B4;
};
struct Time25 {
    int m_t : 30;
    u32 m_f : 2;
};

extern int D_800C873C;
extern int D_800C4938;
extern int D_800C8C68;
extern int D_800CBE90;
extern int D_800CBE94;
extern int D_800C55E8; // stored at 0x68; declared small so its address is one la
extern char D_800CBC94[];
extern int D_800D60E8; // chunk_74's, declared small so its address is one la
extern Time25 D_800D6124;
void __builtin_delete(void *p);
Keep25 *func_8003FC94(Keep25 *k);
void func_8003FCF8(Keep25 *k);
int func_8003FD2C(Keep25 *k);
int func_8003FD4C(Keep25 *k, int a);
void func_8003FD54(Keep25 *k);
void func_8001687C(void);
void func_80017730(int a);
int func_80078FC4(char *t, int a);
void func_80078CCC(int f, int a, char *fmt, va_list ap);
void func_800462A4(Items25 *o, int a);
void func_8004642C(void *p, int a);
void func_80046408(void *p);
void func_800A594C(void *t);
void func_800A59D4(void *t);

void func_800449A8(List25 *l);
int func_80044A14(List25 *l, int key, int a, int f, int b, int c, int x, int y, int z);
int func_80044AFC(List25 *l, int i);
int func_80044B88(List25 *l);
int func_80044BF8(List25 *l);
Elem25 *func_80044C54(List25 *l);
Elem25 *func_80044C80(List25 *l, int key);
int func_80044CBC(void);
Keep25 *func_80044CC4(Keep25 *k);
void func_80044D0C(Keep25 *k, int a);
void func_80044D70(Keep25 *k);
int func_80044DB8(Keep25 *k);
int func_80044DFC(Keep25 *k);
void func_80044E94(Keep25 *k);
void func_80044ED8(Keep25 *k);
int func_80044F34(void);
void func_80044F3C(Keep25 *k, int a, char *fmt, va_list ap);
void func_80044F9C(Keep25 *k, int a, char *fmt, ...);
void func_80044FC8(Keep25 *k);
Items25 *func_80044FE8(Items25 *o);
void func_8004506C(Items25 *o, int flags);
void func_800450C0(Items25 *o, int a);
Item25 *func_80045154(Item25 *t);
Item25 *func_80045168(Item25 *t, int a, int b, int kind, ...);
}

// The five globals set from the object's copies
static inline void Restore25(Keep25 *k) {
    D_800C873C = k->m_70;
    D_800C4938 = k->m_74;
    D_800C8C68 = k->m_78;
    D_800CBE90 = k->m_7C;
    D_800CBE94 = k->m_80;
}

static inline void Clear25(void) {
    D_800C873C = 0;
    D_800C4938 = 0;
    D_800C8C68 = 0;
    D_800CBE90 = 0;
    D_800CBE94 = 0;
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_25", func_8004316C);

void func_800449A8(List25 *l) {
    Elem25 *e = l->m_08;
    int i;

    for (i = 6; i != 0; i--) {
        e->m_10.m_e = 0;
        e->m_10.m_key = 0;
        e->m_00 = 0;
        e->m_04 = -1;
        e->m_10.m_d = 0;
        e->m_0C = -1;
        e->m_10.m_a = 0;
        e->m_10.m_c = 0;
        e++;
    }
    l->m_00 = -1;
    l->m_04 = -1;
    l->m_80 = 0;
    l->m_84 = -1;
    l->m_88 = -1;
}

#ifdef NON_MATCHING
// Registers or a loop's shape (the permuter's to find)
/* An entry added; returns its index. */
int func_80044A14(List25 *l, int key, int a, int f, int b, int c, int x, int y, int z) {
    if (l->m_80 < 5) {
        Elem25 *e = &l->m_08[l->m_80];

        e->m_00 = a;
        e->m_04 = b;
        e->m_0C = c;
        e->m_10.m_e = 1;
        e->m_10.m_key = key;
        e->m_10.m_f = f;
        e->m_10.m_d = b != -1;
        e->m_10.m_b = z;
        e->m_10.m_a = y;
        e->m_10.m_c = x;
        l->m_80++;
    }
    return l->m_80 - 1;
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_25", func_80044A14);
#endif

#ifdef NON_MATCHING
// Registers (33 off): the loop's shape is the original's (entered at its test), but GCC copies the list and the result to other registers first
/* The first entry from i on that's on (m_e) and set (m_00). */
int func_80044AFC(List25 *l, int i) {
    int n = l->m_80;
    int r = 0;

    if (n > 0 && i >= 0 && i < n) {
        while (!l->m_08[i].m_10.m_e || !l->m_08[i].m_00) {
            if (++i >= n) {
                goto done;
            }
        }
        l->m_88 = i;
        r = 1;
    }
done:
    return r;
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_25", func_80044AFC);
#endif

int func_80044B88(List25 *l) {
    int r = 0;

    if (l->m_00 != -1 && l->m_04 != -1 && l->m_84 >= l->m_04) {
        r = func_80044AFC(l, l->m_00);
    } else if (l->m_84 < l->m_80 - 1) {
        r = func_80044AFC(l, l->m_84 + 1);
    }
    return r;
}

int func_80044BF8(List25 *l) {
    int k = l->m_8C->m_A0->m_A80;
    int i = -1;

    if (k) {
        Elem25 *e;

        i = 5;
        e = &l->m_08[4];
        if (l->m_08[5].m_00 != k) {
        next:
            if (--i >= 0) {
                if (e->m_00 != k) {
                    e--;
                    goto next;
                }
            }
        }
    }
    l->m_84 = i;
    return i;
}

Elem25 *func_80044C54(List25 *l) {
    if (l->m_84 != -1) {
        return &l->m_08[l->m_84];
    }
    return 0;
}

Elem25 *func_80044C80(List25 *l, int key) {
    Elem25 *e;
    int i;

    for (i = 0, e = l->m_08; i < 6; i++) {
        int k2 = e->m_10.m_key;

        e++;
        if (k2 == key) {
            goto found;
        }
    }
    return 0;
found:
    return e - 1;
}

int func_80044CBC(void) {
    return 1;
}

Keep25 *func_80044CC4(Keep25 *k) {
    func_8003FC94(k);
    k->m_68 = (u8 *)&D_800C55E8;
    k->m_70 = 0;
    k->m_74 = 0;
    k->m_78 = 0;
    k->m_7C = 0;
    k->m_80 = 0;
    return k;
}

void func_80044D0C(Keep25 *k, int a) {
    Clear25();
    func_8001687C();
    func_8003FD4C(k, a);
}

void func_80044D70(Keep25 *k) {
    Clear25();
    func_8003FD2C(k);
}

int func_80044DB8(Keep25 *k) {
    Restore25(k);
    return 1;
}

int func_80044DFC(Keep25 *k) {
    Restore25(k);
    if ((k->m_00 >> 7) && k->m_74) {
        func_80017730(k->m_74);
    }
    k->m_04++;
    return 1;
}

void func_80044E94(Keep25 *k) {
    Restore25(k);
}

void func_80044ED8(Keep25 *k) {
    Restore25(k);
    func_8003FD54(k);
}

int func_80044F34(void) {
    return 1;
}

void func_80044F3C(Keep25 *k, int a, char *fmt, va_list ap) {
    func_80078CCC(func_80078FC4(D_800CBC94, k->m_18), a, fmt, ap);
}

void func_80044F9C(Keep25 *k, int a, char *fmt, ...) {
    va_list ap;

    va_start(ap, fmt);
    func_80044F3C(k, a, fmt, ap);
}

void func_80044FC8(Keep25 *k) {
    func_8003FCF8(k);
}

Items25 *func_80044FE8(Items25 *o) {
    Item25 *t = o->m_000;
    int i = 7;

    do {
        func_80045154(t);
        t++;
    } while (--i != -1);
    func_80046408(o->m_280);
    o->m_2A4 = -1;
    o->m_2A8 = -1;
    o->m_2AC = -1;
    o->m_2B0 = -1;
    o->m_2A0 = 0;
    o->m_2B4 = 0;
    o->m_29C = 0;
    return o;
}

void func_8004506C(Items25 *o, int flags) {
    func_800462A4(o, 0x13);
    func_8004642C(o->m_280, 2);
    if (flags & 1) {
        __builtin_delete(o);
    }
}

/* The timer ticked, and the frame's time and the first kept. */
void func_800450C0(Items25 *o, int a) {
    int t;

    if (a) {
        func_800A594C(&D_800D60E8);
    } else {
        func_800A59D4(&D_800D60E8);
    }
    t = o->m_2AC;
    o->m_2A8 = t;
    o->m_2AC = D_800D6124.m_t;
    if (t == -1) {
        o->m_2A8 = o->m_2AC;
    }
    o->m_2A4 = o->m_2AC - o->m_2A8;
    if (o->m_2B0 == -1) {
        o->m_2B0 = o->m_2AC;
    }
}

Item25 *func_80045154(Item25 *t) {
    t->m_24 = 0;
    t->m_00 = 1;
    return t;
}

/* The first free item of eight, set up: its values by its kind follow. */
Item25 *func_80045168(Item25 *p, int a, int b, int kind, ...) {
    Item25 *t = 0;
    va_list ap;
    int i = 0;
    int x;

    while (!t) {
        if (i >= 8) {
            break;
        }
        if (p->m_00 == 1) {
            t = p;
        }
        p++;
        i++;
    }
    va_start(ap, kind);
    if (t) {
        t->m_00 = 0;
        t->m_0C = kind;
        t->m_04 = b;
        t->m_10 = a;
        t->m_08 = D_800D6124.m_t;
        switch (kind) {
        case 0:
            break;
        case 1:
            t->m_14 = va_arg(ap, int);
            break;
        case 2:
            t->m_18 = va_arg(ap, int);
            t->m_1C = va_arg(ap, int);
            t->m_20 = va_arg(ap, int);
            t->m_24 = va_arg(ap, int);
            break;
        case 3:
        case 4:
        case 5:
            t->m_14 = va_arg(ap, int);
            t->m_20 = va_arg(ap, int);
            break;
        case 8:
            t->m_28 = va_arg(ap, int);
            t->m_2C = 0;
            if (t->m_28) {
                int *q = t->m_30;

            more:
                x = va_arg(ap, int);
                if (x) {
                    *(int *)((char *)q + (t->m_2C++ << 2)) = x;
                    goto more;
                }
            }
            break;
        }
    }
    return t;
}

// The word after its jump table, the end of this file's .rodata
extern "C" const int D_800B74B0 __attribute__((section(".rodata"))) = 0;
