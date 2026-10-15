#include "common.h"

// Four shorts (2-byte aligned: copied with lwl/lwr)
struct SVec58 {
    short x;
    short y;
    short z;
    short pad;
};

// The game's settings (chunk_23's Config)
struct Cfg58 {
    u8 m_00[0x84];
    int m_84;
    int m_88;
    u8 m_8C[0x1F0];
    int m_27C;
    int m_280;
    int m_284;
};

// A camera's target
struct Cam58 {
    short m_00;
    short m_02;
    u8 m_04[4];
    short m_08;
    short m_0A;
    SVec58 m_0C; // where it is
    SVec58 m_14; // where it looks
    SVec58 m_1C; // from
    SVec58 m_24; // to
    u8 m_2C[0x14];
    SVec58 m_40; // from
    SVec58 m_48; // to
    int m_50;    // when it started
    int m_54;    // how long it takes
    short m_58;  // how far along, in 4096ths
};

// A camera's settings (0x34 bytes)
struct Set58 {
    u8 m_00[8];
    short m_08;
    short m_0A;
    int m_0C;
    int m_10;
    int m_14;
    u8 m_18[0xC];
    short m_24;
    u8 m_26[6];
    int m_2C;
    int m_30;
};

// A point and two values
struct Pt58 {
    short m_00;
    short m_02;
    u8 m_04[0x20];
    int m_24;
    int m_28;
};

// A buffer: its memory, its size, whether it owns it
struct Buf58 {
    void *m_00;
    int m_04;
    int m_08;
};

struct Ent58 {
    int m_00;
    u8 m_04[0xC];
};

extern Cfg58 D_800CC030;
extern short D_800C8BAC;
extern int D_800CBD30;
extern int D_800CBD34;
extern int D_800CBD3C;
extern int D_800CBD44;
extern int D_800CBCE0;
extern int D_800C8A7C;
extern Ent58 D_800CBD68; // five
extern int D_800D60EC;

extern "C" {
void *memset(void *p, int c, size_t n);
void *malloc(unsigned int n);
void free(void *p);
void func_80019F0C(void *r, void *def);
void func_80085258(void);
void func_80085888(Set58 *c, int b);
void func_80086350(Cam58 *c, SVec58 *v);
void func_800863CC(Cam58 *c, SVec58 *v, int a);
void func_80086424(Cam58 *c);
void func_800869E4(void);
int func_80086A38(Buf58 *b, int i);
void func_80086A50(Pt58 *c, int a, int b);
Buf58 *func_80086E68(Buf58 *b);
void func_80086E7C(Buf58 *b, int f);
void func_80086EC0(Buf58 *b);
void func_80086F14(Buf58 *b, void *p, int n);
void func_80086F20(Buf58 *b, int n);
}

#ifdef NON_MATCHING
// The table's address: the original builds it in $v1 directly, as an unsplit `la`; with -mno-split-addresses this matches, but func_80086A50 then doesn't (2 off)
void func_80085258(void) {
    int i = 5;
    Ent58 *e = &D_800CBD68;

    for (; i != 0; i--) {
        e->m_00 |= 0xF0;
        e++;
    }
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_58", func_80085258);
#endif

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_58", func_80085284);

#ifdef NON_MATCHING
// The stores' order after the memset
void func_80085888(Set58 *c, int b) {
    memset(c, 0, sizeof(Set58));
    c->m_0C = D_800CC030.m_27C;
    c->m_10 = D_800CC030.m_280;
    c->m_14 = D_800CC030.m_284;
    c->m_08 = 150;
    c->m_0A = 50;
    c->m_2C = b;
    c->m_24 = 0;
    c->m_30 = D_800C8BAC;
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_58", func_80085888);
#endif

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_58", func_80085900);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_58", func_80085C28);

void func_80086350(Cam58 *c, SVec58 *v) {
    c->m_40 = *v;
    c->m_0C = *v;
    c->m_48 = *v;
    c->m_58 = 0x1000;
}

void func_800863CC(Cam58 *c, SVec58 *v, int a) {
    c->m_40 = c->m_0C;
    c->m_48 = *v;
    c->m_50 = D_800D60EC;
    c->m_54 = a;
    c->m_58 = 0;
}

#ifdef NON_MATCHING
// Registers: the products and the stores interleave differently
/* The camera moved along: both pairs interpolated by the time elapsed. */
void func_80086424(Cam58 *c) {
    int t = D_800D60EC - c->m_50;
    int n;
    int r = 0;
    int f;
    int d0, d1, d2, d3, d4, d5, d6, d7;

    if (t >= 0) {
        n = c->m_54;
        r = n < t ? n : t;
    } else {
        n = c->m_54;
    }
    f = (r << 12) / n;
    d0 = (c->m_48.x - c->m_40.x) * (short)f;
    d1 = (c->m_48.y - c->m_40.y) * (short)f;
    d2 = (c->m_48.z - c->m_40.z) * (short)f;
    d3 = (c->m_48.pad - c->m_40.pad) * (short)f;
    d4 = (c->m_24.x - c->m_1C.x) * (short)f;
    d5 = (c->m_24.y - c->m_1C.y) * (short)f;
    d6 = (c->m_24.z - c->m_1C.z) * (short)f;
    d7 = (c->m_24.pad - c->m_1C.pad) * (short)f;
    c->m_58 = f;
    c->m_0C.x = c->m_40.x + (d0 >> 12);
    c->m_0C.y = c->m_40.y + (d1 >> 12);
    c->m_0C.z = c->m_40.z + (d2 >> 12);
    c->m_0C.pad = c->m_40.pad + (d3 >> 12);
    c->m_14.x = c->m_1C.x + (d4 >> 12);
    c->m_14.y = c->m_1C.y + (d5 >> 12);
    c->m_14.z = c->m_1C.z + (d6 >> 12);
    c->m_14.pad = c->m_1C.pad + (d7 >> 12);
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_58", func_80086424);
#endif

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_58", func_800865B4);

void func_800869E4(void) {
    int *w = &D_800CBD30;

    D_800CBD30 = 0;
    D_800CBD34 = 0;
    w[2] = -1;
    D_800CBD3C = 0;
    w[4] = -1;
    D_800CBD44 = 0;
    func_80019F0C(&D_800CBCE0, &D_800C8A7C);
}

int func_80086A38(Buf58 *b, int i) {
    return ((int *)b->m_08)[i];
}

void func_80086A50(Pt58 *c, int a, int b) {
    c->m_00 = a;
    c->m_02 = b;
    c->m_24 = D_800CC030.m_84;
    c->m_28 = D_800CC030.m_88;
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_58", func_80086A78);

Buf58 *func_80086E68(Buf58 *b) {
    b->m_00 = 0;
    b->m_04 = 0;
    b->m_08 = 0;
    return b;
}

void func_80086E7C(Buf58 *b, int f) {
    func_80086EC0(b);
    if (f & 1) {
        operator delete(b);
    }
}

/* The memory freed if it's the buffer's own. */
void func_80086EC0(Buf58 *b) {
    if (b->m_08 && b->m_00) {
        free(b->m_00);
        b->m_00 = 0;
    }
    b->m_04 = 0;
    b->m_08 = 0;
}

void func_80086F14(Buf58 *b, void *p, int n) {
    b->m_00 = p;
    b->m_04 = n;
}

void func_80086F20(Buf58 *b, int n) {
    b->m_00 = malloc(n);
    b->m_04 = n;
    b->m_08 = 1;
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_58", func_80086F64);
