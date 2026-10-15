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
    char m_1C[0x20]; // the file's path
    struct Dir73 {
        char m_00[0x18]; // its name
        int m_18;        // its size
        u8 m_1C[0x24C];
    } m_3C[29]; // the directory
    u8 m_4604[0xB8];
    int m_46BC; // the last result (also the free space)
    int m_46C0; // how many files
    u8 m_46C4[4];
    int m_46C8;
};

extern Card73 *D_800D6098[]; // the slots
extern int D_800D606C[];
extern int D_800D608C[];
extern int D_800D60D8[];
extern int D_800BC898[];
extern char *D_800BC89C[]; // the cards' names
extern char D_800B7B60[];
extern const char D_800B7BD4[]; // "%s%s%s", in .rodata (a literal this short would go to .sdata)

extern "C" {
void func_800A26A0(void);
void func_800A26DC(void);
void func_800A28B8(void);
int func_800A3848(int n, char *name);
int sprintf(char *buf, const char *fmt, ...);
int erase(char *name);
int strcmp(const char *a, const char *b);
int func_800A41BC(void);
int func_800A4244(void);
int func_800A4264(int a, int b, int c);
int func_800A4284(int n);
int func_800A42EC(int n, int a, int b, int c);
int func_800A4384(int n, int a, int b, int c, int d);
int func_800A442C(int n, char *name);
int func_800A444C(int n);
int func_800A44B4(int n);
int func_800A44F8(int n);
void func_800A45B4(int n);
void func_800A4608(int v);
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_73", func_800A32A0);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_73", func_800A3614);

/* A file erased from card n and taken out of its directory (the space it
 * took given back). */
int func_800A3848(int n, char *name) {
    char path[0x20];
    int r;
    int i;

    sprintf(D_800D6098[0][n].m_1C, D_800B7B60, D_800BC89C[n], (char *)D_800D60D8[0], name);
    sprintf(path, D_800B7BD4, D_800BC89C[n], (char *)D_800D60D8[0], name);
    r = erase(D_800D6098[0][n].m_1C);
    if (r) {
        Card73::Dir73 *p, *q;

        r = 0;
        p = q = D_800D6098[0][n].m_3C;
        for (i = 0; i < D_800D6098[0][n].m_46C0; p++, i++) {
            if (p != q) {
                *p = *q;
            }
            if (strcmp(p->m_00, path)) {
                q++;
            } else {
                D_800D6098[0][n].m_46C0--;
                D_800D6098[0][n].m_46BC += (p->m_18 + 0x1FFF) / 0x2000 << 13;
                r = 1;
            }
        }
    }
    return r;
}

extern "C" const char D_800B7BD4[8] __attribute__((section(".rodata"))) = "%s%s%s";
// Unused (it follows the format above)
extern "C" const char D_800B7BDC[] __attribute__((section(".rodata"))) = "bu%02x:%s";

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

int func_800A442C(int n, char *name) {
    return func_800A3848(n, name);
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
