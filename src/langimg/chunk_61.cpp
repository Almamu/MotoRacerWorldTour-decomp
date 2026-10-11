#include "common.h"

struct Vec61 {
    int x;
    int y;
    int z;
};

// Two planes (a normal and a distance each) and their settings
struct Zone61 {
    int m_00;
    u8 m_04[0x20];
    int m_24;
    int m_28;
    int m_2C;
    int m_30;
    int m_34;
    int m_38;
    int m_3C;
    int m_40;
    int m_44;
    int m_48;
    int m_4C;
    int m_50;
    u8 m_54[0xC];
    int m_60;
    int m_64;
    int m_68;
    int m_6C;
};

struct Plane61 {
    u8 m_00[0x2C];
    Vec61 m_2C;
    int m_38;
    Vec61 m_3C;
    int m_48;
    u8 m_4C[0x2A];
    short m_76; // either plane will do
};

// A rectangle and its flags
struct Rect61 {
    u16 m_00;
    u16 m_02;
    u16 m_04;
    u16 m_06;
    int m_08;
    u8 m_0C[0xC];
    int m_18;
};

// Six bytes in eight
struct Six61 {
    int m_00;
    u16 m_04;
    u16 m_06;
};

extern int D_800CBDCC;
extern int D_800CBDD4;
extern int D_800CBDE4;
extern int D_800CBDE8;
extern int D_800CBDEC;
extern int D_800CBDF0;
extern int D_800CBDF4;

extern "C" {
int func_80099B88(Vec61 *a, Vec61 *b);
int func_8008B998(Plane61 *o, Vec61 *v);
void func_8008C78C(void);
void func_8008C7E8(Zone61 *z, int a, int b, int c, int d);
void func_8008C808(Zone61 *z, int a, int *b, int *c, int *d, int *e);
void func_8008C83C(Zone61 *z, int *a, int *b, int *c, int *d);
Rect61 *func_8008D05C(Rect61 *r, int a, int *b, u16 x, u16 y, u16 w, u16 h);
void func_8008D0A4(Rect61 *r, u16 x, u16 y, u16 w, u16 h);
void func_8008D0CC(Six61 *d, Six61 *s, int n);
void func_8008D0FC(Six61 *d, int n);
void func_8008D120(int *d, int *s, int n);
void func_8008D148(int *d, int n);
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_61", func_8008B208);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_61", func_8008B364);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_61", func_8008B500);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_61", func_8008B65C);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_61", func_8008B7F8);

#ifdef NON_MATCHING
// The second tests' branches: the original branches to 1 on the last test, ours to 0
/* Whether v is in front of both planes, or of either. */
int func_8008B998(Plane61 *o, Vec61 *v) {
    if (o->m_76 == 0) {
        if (func_80099B88(&o->m_2C, v) + o->m_38 >= 0 &&
            func_80099B88(&o->m_3C, v) + o->m_48 >= 0) {
            return 1;
        }
    } else {
        if (func_80099B88(&o->m_2C, v) + o->m_38 >= 0) {
            return 1;
        }
        if (func_80099B88(&o->m_3C, v) + o->m_48 >= 0) {
            return 1;
        }
    }
    return 0;
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_61", func_8008B998);
#endif

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_61", func_8008BA50);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_61", func_8008BCB0);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_61", func_8008C500);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_61", func_8008C678);

void func_8008C78C(void) {
    D_800CBDD4++;
    D_800CBDF4++;
    D_800CBDCC++;
    D_800CBDE4++;
    D_800CBDE8++;
    D_800CBDEC++;
    D_800CBDF0++;
}

void func_8008C7E8(Zone61 *z, int a, int b, int c, int d) {
    z->m_60 = a;
    z->m_64 = b;
    z->m_68 = c;
    z->m_00 = 1;
    z->m_6C = d;
}

void func_8008C808(Zone61 *z, int a, int *b, int *c, int *d, int *e) {
    z->m_24 = *b;
    z->m_28 = *c;
    z->m_2C = *d;
    z->m_30 = *e;
    z->m_00 = a;
}

void func_8008C83C(Zone61 *z, int *a, int *b, int *c, int *d) {
    z->m_44 = *a;
    z->m_48 = *b;
    z->m_4C = *c;
    z->m_50 = *d;
    z->m_34 = z->m_24;
    z->m_38 = z->m_28;
    z->m_3C = z->m_2C;
    z->m_40 = z->m_30;
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_61", func_8008C884);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_61", func_8008CE34);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_61", func_8008CF58);

#ifdef NON_MATCHING
// The stack arguments' loads: the original reads the last one first
Rect61 *func_8008D05C(Rect61 *r, int a, int *b, u16 x, u16 y, u16 w, u16 h) {
    r->m_18 = a;
    r->m_08 = *b;
    func_8008D0A4(r, x, y, w, h);
    return r;
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_61", func_8008D05C);
#endif

void func_8008D0A4(Rect61 *r, u16 x, u16 y, u16 w, u16 h) {
    r->m_00 = x;
    r->m_02 = y;
    r->m_04 = w;
    r->m_06 = h;
    r->m_18 |= 0x18000000;
}

void func_8008D0CC(Six61 *d, Six61 *s, int n) {
    for (; n != 0; n--) {
        int w = s->m_00;
        u16 h = s->m_04;

        d->m_00 = w;
        d->m_04 = h;
        d++;
        s++;
    }
}

void func_8008D0FC(Six61 *d, int n) {
    for (; n != 0; n--) {
        d->m_00 = 0;
        d->m_04 = 0;
        d++;
    }
}

void func_8008D120(int *d, int *s, int n) {
    for (; n != 0; n--) {
        *d++ = *s++;
    }
}

void func_8008D148(int *d, int n) {
    for (; n != 0; n--) {
        *d++ = 0;
    }
}
