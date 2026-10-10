#include "common.h"

/* Entries of 0x330 bytes and their flags (docs/matching/issue-40-langimg-chunk39.md) */

extern "C" {
// A record of the ring
struct Rec39 {
    int m_00;
    u8 m_04[8];
};
// An entry, 0x330 bytes
struct Ent39 {
    u16 m_00; // flags
    u8 m_02[0xA];
    u8 m_0C;
    u8 m_0D[3];
    Rec39 m_10[32]; // a ring
    int m_190;      // its newest
    int m_194;      // how many
    u8 m_198[4];
    int m_19C;
    u8 m_1A0[4];
    u16 m_1A4; // bits set this frame
    u16 m_1A6;
    u16 m_1A8;
    u16 m_1AA; // the last frame's
    u8 m_1AC[0x184];
};
struct Own39 {
    u8 m_00[0x2F0];
    Ent39 *m_2F0;
};
struct Obj39 {
    u8 m_00[0x185];
    u8 m_185;
    u8 m_186[0x257];
    u8 m_3DD;
    u8 m_3DE[6];
    int m_3E4;
};
void func_80061284(Obj39 *o);
void func_8005F464(Ent39 *e);
void func_8005F480(Ent39 *e, int bits, int st);
Rec39 *func_8005F4A4(Ent39 *e, int key);
void func_800600B8(int *st, Own39 *o, int *i);
void func_80060134(int *st, Own39 *o, int *i);
void func_800601B0(int *st, Own39 *o, int *i);
void func_8006022C(int *st, Own39 *o, int *i);
void func_80060650(void);
void func_80060658(void);
void func_80060660(void);
int func_8006095C(int *a, int *b);
void func_80061250(Obj39 *o);
}

void func_8005F464(Ent39 *e) {
    u16 v = e->m_1A4;

    e->m_1A4 = 0;
    e->m_1A6 = 0;
    e->m_1A8 = 0;
    e->m_19C = 0;
    e->m_1AA = v;
}

void func_8005F480(Ent39 *e, int bits, int st) {
    if (st == 0xFF) {
        e->m_1A4 |= bits;
    }
}

#ifdef NON_MATCHING
// The comparison's delay slot: the original takes the next i-- into it and undoes it when found (i++), which keeps i live; ours has no use of i there
/* The ring's newest record with the key, going back; 0 when none. */
Rec39 *func_8005F4A4(Ent39 *e, int key) {
    int found = 0;
    int i = e->m_190;
    int n = e->m_194;
    Rec39 *r = &e->m_10[i];

    goto test;
next:
    i--;
    n--;
    if (i < 0) {
        i = 31;
        r = &e->m_10[31];
    } else {
        r--;
    }
test:
    if (n > 0) {
        if (r->m_00 != key) {
            goto next;
        }
        found = 1;
    }
    if (found) {
        return r;
    }
    return 0;
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_39", func_8005F4A4);
#endif

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_39", func_8005F514);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_39", func_8005F638);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_39", func_8005FAB8);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_39", func_8005FB98);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_39", func_8005FC40);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_39", func_8005FCE8);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_39", func_8005FEB0);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_39", func_8005FF34);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_39", func_8005FFB8);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_39", func_80060038);

void func_800600B8(int *st, Own39 *o, int *i) {
    if (o) {
        Ent39 *e = &o->m_2F0[*i];
        int v = *st;

        if (v == 0xFF) {
            e->m_00 |= 0x80;
        }
        if (v == 0) {
            e->m_00 &= ~0x80;
        }
        func_8005F480(e, 0x200, v);
    }
}

void func_80060134(int *st, Own39 *o, int *i) {
    if (o) {
        Ent39 *e = &o->m_2F0[*i];
        int v = *st;

        if (v == 0xFF) {
            e->m_00 |= 0x10;
        }
        if (v == 0) {
            e->m_00 &= ~0x10;
        }
        func_8005F480(e, 0x800, v);
    }
}

void func_800601B0(int *st, Own39 *o, int *i) {
    if (o) {
        Ent39 *e = &o->m_2F0[*i];
        int v = *st;

        if (v == 0xFF) {
            e->m_00 |= 0x20;
        }
        if (v == 0) {
            e->m_00 &= ~0x20;
        }
        func_8005F480(e, 0x400, v);
    }
}

void func_8006022C(int *st, Own39 *o, int *i) {
    if (o) {
        Ent39 *e = &o->m_2F0[*i];
        int v = *st;

        func_8005F480(e, 0x2000, v);
        e->m_0C = v == 0xFE || v == 0xFF;
    }
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_39", func_80060298);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_39", func_80060340);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_39", func_80060410);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_39", func_800604D0);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_39", func_800605A4);

void func_80060650(void) {
}

void func_80060658(void) {
}

void func_80060660(void) {
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_39", func_80060668);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_39", func_800608A8);

int func_8006095C(int *a, int *b) {
    int x = *a;
    int y = *b;
    int r = -1;

    if (x >= y) {
        r = y < x;
    }
    return r;
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_39", func_80060980);

void func_80061250(Obj39 *o) {
    func_80061284(o);
    o->m_185 = 0;
    o->m_3E4 = 0;
    o->m_3DD = 0x1A;
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_39", func_80061284);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_39", func_8006139C);
