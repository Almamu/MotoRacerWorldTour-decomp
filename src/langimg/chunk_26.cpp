#include "common.h"
#include "stdarg.h"

/* A class on chunk_23's named objects holding a list of others, written as
 * plain functions on a struct (docs/matching/issue-27-langimg-chunk26.md). */

extern "C" {
// A GCC 2 vtable entry
struct VtEntry26 {
    short m_delta;
    short m_index;
    int (*m_func)(void *self);
};

struct Stage26;
struct Lists26;

// A named object (chunk_23's): its kind at 0x10
struct Named26 {
    int m_00; // flags
    u8 m_04[8];
    int m_0C;
    int m_10; // its kind
    int m_14;
    int m_18;
    u8 m_1C[0x44];
    void *m_60;
    u8 m_64[4];
    VtEntry26 *m_vtable; // 0x68
    u8 m_6C[0x34];
    int m_A0;
    Stage26 *m_A4;
    u8 m_A8[4];
    int m_AC, m_B0, m_B4, m_B8, m_BC;
};

// A stage (chunk_23's), what m_A4 points at
struct Stage26 {
    u8 m_00[0x90];
    int m_90;
    int m_94[9];
    int m_B8, m_BC;
    int *m_C0;
    u8 m_C4[4];
    int m_C8, m_CC, m_D0, m_D4;
    u8 m_D8[0x70];
    int *m_148;
    int m_14C;
    int m_150;
};

// The race's settings (chunk_23's)
struct Config26 {
    u8 m_00[0xBC];
    int m_BC, m_C0, m_C4, m_C8;
    int m_CC[6];
    u8 m_E4[4];
    int m_E8[9];
};

// A node of the list at 0x2B4
struct Node26 {
    Node26 *m_next;
    Node26 *m_prev;
    Named26 *m_obj;
};

// The object holding the list
struct Owner26 {
    u8 m_00[0x280];
    struct Lists26 *m_280; // the values' lists
    int *m_284;
    int *m_288;
    int *m_28C;
    int *m_290;
    int *m_294;
    int m_298; // how many values
    u8 m_29C[0x18];
    Node26 *m_list;
};

// A value that starts at 0
struct Zero26 {
    int m_00;

    Zero26() {
        m_00 = 0;
    }
};

// What m_280 points at
struct Lists26 {
    int m_00;
    int *m_04;
    int *m_08;
    int m_0C;
};

// Six arrays
struct Arrs26 {
    int m_00;
    void *m_04, *m_08, *m_0C, *m_10, *m_14;
    int m_18;
};

#define VCALL(o, i) ((o)->m_vtable[i].m_func((char *)(o) + (o)->m_vtable[i].m_delta))
#define VCALLV(o, i) \
    (((void (*)(void *))(o)->m_vtable[i].m_func)((char *)(o) + (o)->m_vtable[i].m_delta))
#define VCALLV1(o, i, a) \
    (((void (*)(void *, int))(o)->m_vtable[i].m_func)((char *)(o) + (o)->m_vtable[i].m_delta, a))
#define VCALL1(o, i, a) \
    (((int (*)(void *, int))(o)->m_vtable[i].m_func)((char *)(o) + (o)->m_vtable[i].m_delta, a))

extern int D_800CAE88; // how many hold the sound
extern int D_800CABC0;
extern u8 D_800C5BF0[], D_800C5CD8[]; // vtables
extern char D_800C5804[];             // the default name
void __builtin_delete(void *p);
void __builtin_vec_delete(void *p);
int func_8003FDD4(Named26 *o);
void func_8003FE2C(Named26 *o, const char *name);
void func_8003FCF8(Named26 *o, int f);
void func_80044CC4(Named26 *o);
void func_8004506C(int *a, int b);
void func_80044FE8(int *a);
void func_80046564(Owner26 *o, Lists26 *first, int n, int *rest);

Named26 *func_800460E4(Owner26 *o, int kind, int sub);
Named26 *func_80046158(Owner26 *o);
int func_80046194(Owner26 *o, Named26 *x);
int func_800462A4(Owner26 *o, int kind);
int func_8004636C(Owner26 *o, Named26 *x, int s, int a);
Arrs26 *func_80046408(Arrs26 *a);
void func_8004642C(Arrs26 *a, int f);
void func_800464F4(Owner26 *o, Lists26 *first, ...);
void func_8004673C(void);
void func_80046778(void);
Named26 *func_800467B8(Named26 *o);
void func_80046848(Named26 *o, int f);
void func_80046A74(Named26 *o);
void func_80046870(Named26 *o, int f);
extern int D_800C8D8C;
extern int D_800C89E8;
extern char D_800C5810[], D_800C5830[], D_800C5850[], D_800C585C[];
int func_80096290(char *name);
void func_8003B47C(void *a);
int func_800955C4(int a, const char *name);
void func_8007F2AC(int a, int b, int c);
int func_8008106C(void *p);
void func_80081154(int a, int b);
void func_800811C4(int a, int b, int c);
void func_80046B78(Named26 *o);
int func_80045F78(Owner26 *o, Named26 *x, int sub, int s, int a);
extern Named26 *D_800CAE80; // the object being added
void *__builtin_new(unsigned int n);
void *__builtin_vec_new(unsigned int n);
void *memset(void *p, int c, unsigned int n);
extern Config26 D_800CC030;
extern int D_800D489C;
extern s8 D_800C9D3D;
extern int D_800D5FD0, D_800D48A8, D_800D5F3C, D_800D5EF8, D_800D5F0C, D_800D5EC0;
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_26", func_800452BC);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_26", func_80045A7C);

/* An object added to the list, before the first of its sub-kind or
 * higher. */
int func_80045F78(Owner26 *o, Named26 *x, int sub, int s, int a) {
    int r;

    D_800CAE80 = x;
    r = func_8004636C(o, x, s, a);
    if (r) {
        int found = 0;
        int head;
        Node26 *n;
        Node26 *m;
        Node26 *first;
        Node26 *prev;

        if (sub == 5) {
            sub = 4;
        }
        x->m_14 = sub;
        n = o->m_list;
        head = 0;
        first = n;
        if (n) {
            while (!found && n) {
                if (n->m_obj->m_14 >= sub) {
                    found = 1;
                    if (n == first) {
                        head = 1;
                    }
                } else {
                    prev = n;
                    n = n->m_next;
                }
            }
            if (found) {
                m = (Node26 *)__builtin_new(sizeof(Node26));
                if (m) {
                    Node26 *p;

                    m->m_obj = x;
                    p = n->m_prev;
                    m->m_next = n;
                    m->m_prev = p;
                    if (p) {
                        p->m_next = m;
                    }
                    n->m_prev = m;
                    if (head) {
                        o->m_list = m;
                    }
                }
            } else {
                m = (Node26 *)__builtin_new(sizeof(Node26));
                if (m) {
                    m->m_obj = x;
                    m->m_prev = prev;
                    m->m_next = 0;
                    prev->m_next = m;
                } else {
                    r = 0;
                }
            }
        } else {
            m = (Node26 *)__builtin_new(sizeof(Node26));
            if (m) {
                o->m_list = m;
                m->m_obj = x;
                m->m_prev = 0;
                m->m_next = 0;
            } else {
                r = 0;
            }
        }
    }
    D_800CAE80 = 0;
    return r;
}

/* The first in the list of a kind (0x13: any) and a sub-kind (5: any). */
Named26 *func_800460E4(Owner26 *o, int kind, int sub) {
    Named26 *r = 0;
    Node26 *n = o->m_list;

    while (n && !r) {
        Named26 *x = n->m_obj;

        if ((kind == 0x13 || x->m_10 == kind) && (sub == 5 || x->m_14 == sub)) {
            r = x;
        } else {
            n = n->m_next;
        }
    }
    return r;
}

/* The last in the list. */
Named26 *func_80046158(Owner26 *o) {
    Node26 *n = o->m_list;

    if (n) {
        while (n->m_next) {
            n = n->m_next;
        }
    }
    return (Named26 *)n;
}

/* An object taken out of the list and deleted. */
int func_80046194(Owner26 *o, Named26 *x) {
    Node26 *n = o->m_list;

    if (x && n) {
        if (x == n->m_obj) {
            Node26 *next = n->m_next;

            o->m_list = next;
            if (next) {
                next->m_prev = 0;
            }
        } else {
            int found = 0;

            n = n->m_next;
            while (!found && n) {
                Node26 *next = n->m_next;

                if (x == n->m_obj) {
                    Node26 *prev = n->m_prev;

                    found = 1;
                    if (prev) {
                        prev->m_next = next;
                    }
                    if (next) {
                        next->m_prev = prev;
                    }
                } else {
                    n = next;
                }
            }
        }
        n->m_obj = 0;
        VCALLV(x, 7);
        if (n) {
            __builtin_delete(n);
        }
        if (x) {
            VCALLV1(x, 1, 3);
        }
    }
    return 1;
}

/* The list's objects of a kind (0x13: all) stopped and deleted. */
int func_800462A4(Owner26 *o, int kind) {
    Node26 *n = o->m_list;

    while (n) {
        Node26 *next = n->m_next;

        if (kind == 0x13 || n->m_obj->m_10 == kind) {
            func_8003FDD4(n->m_obj);
            VCALLV(n->m_obj, 6);
            func_80046194(o, n->m_obj);
        }
        n = next;
    }
    o->m_list = 0;
    return 1;
}

int func_8004636C(Owner26 *o, Named26 *x, int s, int a) {
    int r = 0;

    if (x) {
        r = VCALL1(x, 3, a);
        if (!r) {
            VCALLV(x, 6);
            x = 0;
        }
        if (s != -1) {
            x->m_0C = s;
        }
    }
    return r;
}

Arrs26 *func_80046408(Arrs26 *a) {
    a->m_00 = 0;
    a->m_04 = 0;
    a->m_08 = 0;
    a->m_0C = 0;
    a->m_10 = 0;
    a->m_14 = 0;
    a->m_18 = 0;
    return a;
}

void func_8004642C(Arrs26 *a, int f) {
    if (a->m_04) {
        __builtin_vec_delete(a->m_04);
        a->m_04 = 0;
    }
    if (a->m_08) {
        __builtin_vec_delete(a->m_08);
        a->m_08 = 0;
    }
    if (a->m_0C) {
        __builtin_vec_delete(a->m_0C);
        a->m_0C = 0;
    }
    if (a->m_10) {
        __builtin_vec_delete(a->m_10);
        a->m_10 = 0;
    }
    if (a->m_14) {
        __builtin_vec_delete(a->m_14);
        a->m_14 = 0;
    }
    a->m_18 = 0;
    if (f & 1) {
        __builtin_delete(a);
    }
}

/* The arguments up to a 0 (and it) passed on as an array. */
void func_800464F4(Owner26 *o, Lists26 *first, ...) {
    int rest[8];
    int n;
    int v;
    int *p;
    va_list ap;

    if (!first) {
        func_80046564(o, 0, 0, 0);
        return;
    }
    va_start(ap, first);
    n = 0;
    p = rest;
    do {
        v = va_arg(ap, int);
        n++;
        *p++ = v;
    } while (v);
    func_80046564(o, first, n, rest);
}

/* The values' arrays freed (no lists) or made for n values. */
void func_80046564(Owner26 *o, Lists26 *first, int n, int *rest) {
    o->m_280 = first;
    if (!first) {
        if (o->m_284) {
            __builtin_vec_delete(o->m_284);
            o->m_284 = 0;
        }
        if (o->m_288) {
            __builtin_vec_delete(o->m_288);
            o->m_288 = 0;
        }
        if (o->m_28C) {
            __builtin_vec_delete(o->m_28C);
            o->m_28C = 0;
        }
        if (o->m_290) {
            __builtin_vec_delete(o->m_290);
            o->m_290 = 0;
        }
        if (o->m_294) {
            __builtin_vec_delete(o->m_294);
            o->m_294 = 0;
        }
        o->m_298 = 0;
    } else {
        int sz = n * 4;
        int i;
        int *q;

        o->m_284 = (int *)__builtin_vec_new(sz);
        o->m_288 = (int *)__builtin_vec_new(sz);
        memset(o->m_288, 0, sz);
        o->m_28C = (int *)__builtin_vec_new(sz);
        memset(o->m_28C, 0, sz);
        o->m_290 = (int *)__builtin_vec_new(sz);
        memset(o->m_290, 0, sz);
        q = (int *)new Zero26[n];
        o->m_294 = q;
        memset(q, 0, sz);
        o->m_280->m_0C = n;
        o->m_280->m_08 = o->m_28C;
        o->m_280->m_04 = o->m_288;
        o->m_298 = n;
        for (i = 0; i < n; i++) {
            o->m_284[i] = rest[i];
        }
    }
}

void func_8004673C(void) {
    if (--D_800CAE88 == 0) {
        func_8004506C(&D_800CABC0, 2);
    }
}

void func_80046778(void) {
    if (++D_800CAE88 == 1) {
        func_80044FE8(&D_800CABC0);
    }
}

Named26 *func_800467B8(Named26 *o) {
    func_80044CC4(o);
    o->m_vtable = (VtEntry26 *)D_800C5BF0;
    o->m_0C = -1;
    o->m_18 = -1;
    o->m_10 = 0x11;
    o->m_60 = D_800C5CD8;
    o->m_A4 = 0;
    o->m_A0 = 0;
    o->m_AC = 0;
    o->m_B0 = 0;
    o->m_B4 = 1;
    o->m_B8 = 0;
    o->m_BC = 0;
    o->m_00 |= 0x80;
    func_8003FE2C(o, D_800C5804);
    return o;
}

void func_80046848(Named26 *o, int f) {
    o->m_vtable = (VtEntry26 *)D_800C5BF0;
    func_8003FCF8(o, f);
}

void func_80046870(Named26 *o, int f) {
    if (f & 1) {
        if (o->m_B4) {
            func_80096290(D_800C5810);
        } else {
            func_80096290(D_800C5830);
        }
    }
    if (f & 2) {
        int v;
        Stage26 *st;

        func_80046A74(o);
        func_8007F2AC(D_800CC030.m_C0, (u16)func_800955C4(D_800C8D8C, D_800C5850), 0x15E);
        v = (u16)func_800955C4(D_800C8D8C, D_800C585C);
        func_8007F2AC(D_800CC030.m_BC, v, 1000);
        func_8007F2AC(D_800CC030.m_C4, v, 1000);
        D_800C89E8 = func_8008106C(__builtin_new(0xC));
        func_80081154(D_800C89E8, 4);
        func_800811C4(D_800C89E8, D_800CC030.m_C0, 0);
        func_800811C4(D_800C89E8, D_800CC030.m_BC, 0);
        func_800811C4(D_800C89E8, D_800CC030.m_C4, 0);
        func_800811C4(D_800C89E8, D_800CC030.m_C8, 0);
        o->m_A4->m_14C = 6;
        st = o->m_A4;
        st->m_148 = (int *)__builtin_vec_new(st->m_14C * 4);
        o->m_A4->m_148[0] = D_800CC030.m_CC[0];
        o->m_A4->m_148[1] = D_800CC030.m_CC[1];
        o->m_A4->m_148[2] = D_800CC030.m_CC[2];
        o->m_A4->m_148[3] = D_800CC030.m_CC[3];
        o->m_A4->m_148[4] = D_800CC030.m_CC[4];
        o->m_A4->m_148[5] = D_800CC030.m_CC[5];
        o->m_A4->m_150 = 0x84;
        func_8003B47C(o->m_A4);
    }
}

/* The stage given the race's settings. */
void func_80046A74(Named26 *o) {
    o->m_A4->m_90 = 0;
    o->m_A4->m_94[0] = D_800CC030.m_E8[0];
    o->m_A4->m_94[1] = D_800CC030.m_E8[1];
    o->m_A4->m_94[2] = D_800CC030.m_E8[2];
    o->m_A4->m_94[3] = D_800CC030.m_E8[3];
    o->m_A4->m_94[4] = D_800CC030.m_E8[4];
    o->m_A4->m_94[5] = D_800CC030.m_E8[5];
    o->m_A4->m_94[6] = D_800CC030.m_E8[6];
    o->m_A4->m_94[7] = D_800CC030.m_E8[7];
    o->m_A4->m_94[8] = D_800CC030.m_E8[8];
    o->m_A4->m_B8 = D_800CC030.m_C4;
    o->m_A4->m_BC = D_800CC030.m_C8;
    o->m_A4->m_C0 = &D_800D489C;
    o->m_A4->m_C8 = 50;
    o->m_A4->m_CC = 240;
    o->m_A4->m_D0 = 400;
    o->m_A4->m_D4 = 230;
}

void func_80046B78(Named26 *o) {
    if (D_800C9D3D ||
        (D_800D5FD0 && (D_800D48A8 == 8 || D_800D48A8 == 4) && !D_800D5F3C && D_800D5EF8 == 1 &&
         (!(D_800D5F0C == -1 || D_800D5F0C == 0 || D_800D5F0C == 3) || (D_800D5EC0 & 0xD)))) {
        o->m_B4 = 0;
    } else {
        o->m_B4 = 1;
    }
    D_800D5FD0 = 0;
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_26", func_80046C40);
