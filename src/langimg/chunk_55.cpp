#include "common.h"

// A map: keys, values, how many
struct Map55 {
    int *m_00;
    int *m_04;
    int m_08;
};

// An entry: two bytes and a value
struct Pair55 {
    s8 m_00;
    s8 m_01;
    short m_02;
};

struct Tab55 {
    u8 m_00[8];
    u16 m_08; // how many
    u8 m_0A[0xE];
    Pair55 m_18[1];
};

struct Spr55 {
    u8 m_00[7];
    u8 m_07;
    u8 m_08[2];
    u16 m_0A;
};

extern int D_800C89D0;
extern int D_800C89EC;
extern int D_800C89F0;
extern int D_800CBC98;
extern short D_800CBCD8;
extern short D_800CBCDA;
extern short D_800CBCDC;
extern short D_800CBCDE;

extern "C" {
int func_8007F948(void);
int func_80081270(Map55 *m, int k);
int func_800812C4(Map55 *m);
void func_8007F294(void);
void func_8007F2AC(Spr55 *p, u16 a, u16 b);
int func_8007F2C8(Tab55 *t, u8 a, u8 b);
void func_80080678(void);
int func_80080F30(void);
Map55 *func_8008106C(Map55 *m);
void func_8008107C(Map55 *m, int f);
void func_800810C0(Map55 *m);
void func_80081154(Map55 *m, int n);
int func_800811C4(Map55 *m, int k, int v);
void func_8008123C(Map55 *m, int i);
}

void func_8007F294(void) {
    D_800CBC98++;
}

void func_8007F2AC(Spr55 *p, u16 a, u16 b) {
    if (p) {
        p->m_07 = a;
        p->m_0A = b;
    }
}

#ifdef NON_MATCHING
// The three pointers' registers
/* The value of the pair (a, b), or 0. */
int func_8007F2C8(Tab55 *t, u8 a, u8 b) {
    int i;

    for (i = 0; i < t->m_08; i++) {
        if (t->m_18[i].m_00 == a && t->m_18[i].m_01 == b) {
            return t->m_18[i].m_02;
        }
    }
    return 0;
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_55", func_8007F2C8);
#endif

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_55", func_8007F33C);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_55", func_8007F5E8);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_55", func_8007F948);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_55", func_80080040);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_55", func_800803C4);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_55", func_800804B8);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_55", func_80080598);

/* Up by 32 to past 128, then down by 32 to below 0. */
void func_80080678(void) {
    if (!D_800C89F0) {
        D_800C89EC += 32;
        if (D_800C89EC > 128) {
            D_800C89F0 = 1;
        }
    } else {
        D_800C89EC -= 32;
        if (D_800C89EC < 0) {
            D_800C89F0 = 0;
        }
    }
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_55", func_800806D4);

#ifdef NON_MATCHING
// The switch: the original tests the empty case 0x1000 too; GCC drops it
int func_80080F30(void) {
    int r;

    D_800CBCDC = 0;
    D_800CBCDE = 0;
    D_800CBCD8 = 0;
    D_800CBCDA = 0;
    r = 0;
    switch (D_800C89D0 & 0xF000) {
    case 0:
        r = func_8007F948();
        break;
    case 0x1000:
        break;
    }
    return r;
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_55", func_80080F30);
#endif

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_55", func_80080F8C);

Map55 *func_8008106C(Map55 *m) {
    m->m_00 = 0;
    m->m_08 = 0;
    return m;
}

void func_8008107C(Map55 *m, int f) {
    func_800810C0(m);
    if (f & 1) {
        operator delete(m);
    }
}

void func_800810C0(Map55 *m) {
    int i;

    for (i = 0; i < m->m_08; i++) {
        func_8008123C(m, i);
    }
    if (m->m_00) {
        delete[] m->m_00;
        m->m_00 = 0;
    }
    if (m->m_04) {
        delete[] m->m_04;
        m->m_04 = 0;
    }
    m->m_08 = 0;
}

void func_80081154(Map55 *m, int n) {
    if (n > 0) {
        m->m_00 = new int[n];
        m->m_04 = new int[n];
        if (m->m_00) {
            memset(m->m_00, 0, n * 4);
            m->m_08 = n;
        }
    }
}

int func_800811C4(Map55 *m, int k, int v) {
    int i;

    func_80081270(m, k);
    i = func_800812C4(m);
    if (i != -1) {
        m->m_00[i] = k;
        m->m_04[i] = v;
    }
    return i;
}

void func_8008123C(Map55 *m, int i) {
    if (i >= 0 && i < m->m_08) {
        m->m_00[i] = 0;
    }
}
