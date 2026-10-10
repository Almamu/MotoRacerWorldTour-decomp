#include "common.h"

// A memory card slot (0x46CC bytes): what it's doing, and its request
struct Card73 {
    int m_00; // its state: 0x12 idle
    int m_04;
    int m_08;
    int m_0C;
    int m_10;
    int m_14;
    int m_18;
    u8 m_1C[0x46A0];
    int m_46BC; // the last result
    u8 m_46C0[8];
    int m_46C8;
};

extern Card73 *D_800D6098[]; // the slots
extern int D_800D606C[];
extern int D_800D608C[];
extern int D_800D60D8[];
extern int D_800BC898[];

extern "C" {
void func_800A26A0(void);
void func_800A26DC(void);
void func_800A28B8(void);
int func_800A3848(void);
int func_800A41BC(void);
int func_800A4244(void);
int func_800A4264(int a, int b, int c);
int func_800A4284(int n);
int func_800A42EC(int n, int a, int b, int c);
int func_800A4384(int n, int a, int b, int c, int d);
int func_800A442C(void);
int func_800A444C(int n);
int func_800A44B4(int n);
int func_800A44F8(int n);
void func_800A45B4(int n);
void func_800A4608(int v);
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_73", func_800A32A0);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_73", func_800A3614);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_73", func_800A3848);

INCLUDE_RODATA("asm/langimg/nonmatchings/chunk_73", D_800B7BE8);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_73", func_800A3A44);

/* The slots made idle. */
int func_800A41BC(void) {
    int i;

    for (i = 0; i < 1; i++) {
        D_800D6098[0][i].m_00 = 0x12;
        D_800D6098[0][i].m_04 = 0;
        D_800D6098[0][i].m_08 = -1;
        D_800D6098[0][i].m_46C8 = 1;
    }
    func_800A26DC();
    func_800A26A0();
    return 1;
}

int func_800A4244(void) {
    func_800A28B8();
    return 1;
}

int func_800A4264(int a, int b, int c) {
    D_800D606C[0] = a;
    D_800D60D8[0] = b;
    D_800D608C[0] = c;
    return 1;
}

/* Slot n's request cleared, if it's idle. */
int func_800A4284(int n) {
    if (D_800D6098[0][n].m_00 == 0x12) {
        D_800D6098[0][n].m_00 = 0;
        D_800D6098[0][n].m_04 = 0;
        return 1;
    }
    return 0;
}

/* A request 9 on slot n, if it's idle. */
int func_800A42EC(int n, int a, int b, int c) {
    if (D_800D6098[0][n].m_00 == 0x12) {
        D_800D6098[0][n].m_0C = a;
        D_800D6098[0][n].m_14 = b;
        D_800D6098[0][n].m_18 = c;
        D_800D6098[0][n].m_00 = 9;
        D_800D6098[0][n].m_04 = 0;
        return 1;
    }
    return 0;
}

/* A request 10 on slot n, if it's idle. */
int func_800A4384(int n, int a, int b, int c, int d) {
    if (D_800D6098[0][n].m_00 == 0x12) {
        D_800D6098[0][n].m_10 = a;
        D_800D6098[0][n].m_0C = b;
        D_800D6098[0][n].m_14 = c;
        D_800D6098[0][n].m_18 = d;
        D_800D6098[0][n].m_00 = 10;
        D_800D6098[0][n].m_04 = 0;
        return 1;
    }
    return 0;
}

int func_800A442C(void) {
    return func_800A3848();
}

/* A request 13 on slot n, if it's idle. */
int func_800A444C(int n) {
    if (D_800D6098[0][n].m_00 == 0x12) {
        D_800D6098[0][n].m_00 = 13;
        D_800D6098[0][n].m_04 = 0;
        return 1;
    }
    return 0;
}

int func_800A44B4(int n) {
    return D_800D6098[0][n].m_46BC;
}

/* Slot n's state, 8 and 9 as 9, 10 and 12 as 10. */
int func_800A44F8(int n) {
    switch (D_800D6098[0][n].m_00) {
    case 8:
    case 9:
        return 9;
    case 10:
    case 12:
        return 10;
    }
    return D_800D6098[0][n].m_00;
}

void func_800A45B4(int n) {
    D_800D6098[0][n].m_04 = 1;
    D_800D6098[0][n].m_00 = 0x12;
}

void func_800A4608(int v) {
    D_800BC898[0] = v;
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_73", func_800A4614);
