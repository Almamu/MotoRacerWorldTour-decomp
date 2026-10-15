#include "common.h"
#include "psyq.h"
#include "stdarg.h"

/* Small helpers: strings, relocations, a global object (docs/matching/issue-75-langimg-chunk74.md) */

extern "C" {
// A time at 0x3C: 30 bits and a flag's 2
struct Time74 {
    int m_t : 30;
    u32 m_f : 2;
};
struct Obj74 {
    int m_00;
    int m_04;
    int m_08;
    int m_0C;
    int m_10;
    int m_14;
    int m_18;
    int m_1C;
    int m_20;
    int m_24;
    int m_28[4];
    int m_38;
    union {
        Time74 m_3C;
        u32 m_3Cw;
    };
    int m_40;
    int m_44;
    int m_48;
    int m_4C;
    int m_50;
    int m_54;
    int m_58;
    int m_5C;
};

void __builtin_delete(void *p);
Obj74 *func_800A57E4(Obj74 *o);
int func_800A22D0(int a);
int func_800A22B0(int a);
int func_800151F0(void);
void func_80015200(int a);
extern int D_800D60E0[];
extern u8 D_800D60E8[];
extern u32 *D_800BCE3C[];
extern u8 D_800BCA3C[];

struct VtEntry74 {
    short m_delta;
    short m_index;
    void (*m_func)(void *self, int a);
};
// A button sequence (a cheat): how far it's matched, the key held, the time
// since the last key, what it gives, and its keys (0 at the end)
struct Seq74 {
    int m_00;
    int m_04;
    int m_08;
    int m_0C;
    u16 m_10[8];
};
struct Game74 {
    u8 m_00[0x68];
    VtEntry74 *m_68;
    u8 m_6C[0xE4];
    int m_150;
};
extern u8 D_800BC93C[]; // the case-folding table
extern Game74 *D_800C886C[];
extern int D_800BC938[];
extern int D_800D6148[];
extern int D_800D49A8[];
void func_800A2290(int *p, int a, int b);

void func_800A54F0(void);
int func_800A60AC(const char *a, const char *b);
int func_800A6100(const char *a, const char *b, int n);
int func_800A58B0(void);
void func_800A6788(int a, int b);
int func_800A6850(int x);
char *func_800A5F90(char *d, int v);
int func_800A5CD0(u32 ms, int *m, int *sec, int *cs);
void *memset(void *d, int c, int n);
void func_800A594C(Obj74 *o);
char *func_800A5ED0(char *d, u32 ms, int flags);
char *func_800A6000(char *d, int v, int width, int pad);
void func_800A658C(u8 *base, u32 *r);
void func_800A5BB8(Obj74 *o, int n);
char *func_800A5DBC(char *d, u32 ms, int flags);
u32 func_800A645C(u8 *p, int n, u32 crc);
void func_800A6650(char *name);
void *func_800A06AC(char *name, int a, int *size);
void func_800156DC(void);
void func_8006C77C(void);
void func_800AEC38(void);
void func_80079400(Game74 *g);
void func_800AADA4(void);
void FlushCache(void);
void func_800793C0(Game74 *g);
void func_800AEBF0(int a, int b);
void func_80015684(int a);
void func_8006C750(void);
int func_800A68BC(int key, Seq74 *s, int n);
void func_800A59D4(Obj74 *o);
int func_800A6168(s8 *d, s8 *fmt, va_list ap);
int func_800A54F8(u8 *base, int *offs, int n);
void func_800A5888(void *p, int flags);
void func_800A5908(Obj74 *o);
void func_800A5CBC(Obj74 *o);
void func_800A5D2C(void);
void func_800A5D68(void);
void func_800A5DA4(int a, ...);
s8 *func_800A6344(s8 *s);
s8 *func_800A638C(s8 *s);
void func_800A63D4(void);
void func_800A63DC(void);
u16 func_800A63E4(u16 x);
void func_800A63FC(void);
void func_800A6448(void);
void func_800A67E8(int a);
int func_800A6818(void);
}

void func_800A54F0(void) {
}

/* Relocates: each offset's word gets the base added. */
int func_800A54F8(u8 *base, int *offs, int n) {
    int i;

    for (i = 0; i < n; i++) {
        *(int *)(base + *offs++) += (int)base;
    }
    return 1;
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_74", func_800A5530);

Obj74 *func_800A57E4(Obj74 *o) {
    o->m_00 = 0;
    o->m_40 = 1;
    o->m_08 = 1;
    o->m_14 = 0;
    o->m_10 = 0;
    o->m_04 = 0;
    o->m_0C = 0;
    o->m_18 = 0;
    o->m_44 = 0;
    o->m_48 = 0;
    o->m_20 = 0;
    o->m_24 = 0;
    o->m_3Cw &= 0xC0000000;
    o->m_38 = 0;
    o->m_3Cw |= 0x40000000;
    memset(o->m_28, 0, sizeof(o->m_28));
    o->m_58 = 1;
    o->m_5C = 1;
    o->m_4C = 0;
    o->m_54 = 0;
    o->m_1C = 0;
    return o;
}

void func_800A5888(void *p, int flags) {
    if (flags & 1) {
        __builtin_delete(p);
    }
}

int func_800A58B0(void) {
    int t = D_800C886C[0]->m_150;

    if (t) {
        D_800BC938[0] += t * 64 / 1000;
    }
    return D_800BC938[0];
}

void func_800A5908(Obj74 *o) {
    int i;

    o->m_5C = 1;
    o->m_10 = 0;
    o->m_14 = 0;
    o->m_38 = 0;
    o->m_08 = 1;
    o->m_0C = 0;
    for (i = 0; i < 4; i++) {
        o->m_28[i] = 0x23;
    }
    o->m_1C = 0;
}

void func_800A594C(Obj74 *o) {
    int e;
    int r;

    o->m_3Cw = (o->m_3Cw & 0xC0000000) | (func_800A58B0() & 0x3FFFFFFF);
    o->m_00 = o->m_3C.m_t - 0x23;
    e = o->m_3C.m_t - o->m_00;
    if (e > 0) {
        r = e > 0x7FFFFFFF ? 0x7FFFFFFF : e;
    } else {
        r = 1;
    }
    o->m_40 = r;
    o->m_04 = 0;
}

#ifdef NON_MATCHING
// Registers: the walking pointer and the counter swap $a1 and $a2 (8 off)
/* The timer each frame: the frame's length, the last four's average. */
void func_800A59D4(Obj74 *o) {
    int e;
    int r;
    int i;
    int *q;

    o->m_54 = o->m_4C;
    if (o->m_50) {
        func_800A5CBC(o);
        o->m_50 = 0;
    }
    if (o->m_58) {
        o->m_3Cw = (o->m_3Cw & 0xC0000000) | (func_800A58B0() & 0x3FFFFFFF);
        o->m_00 = o->m_3C.m_t - 0x23;
    } else {
        o->m_00 = o->m_3C.m_t;
        o->m_3Cw = (o->m_3Cw & 0xC0000000) | (func_800A58B0() & 0x3FFFFFFF);
    }
    e = o->m_3C.m_t - o->m_00;
    if (e > 0) {
        r = e > 0x7FFFFFFF ? 0x7FFFFFFF : e;
    } else {
        r = 1;
    }
    o->m_40 = r;
    if (!o->m_54) {
        o->m_04 += r;
    }
    o->m_18 = o->m_40;
    if (o->m_14 && !o->m_58) {
        o->m_08 = 0;
        o->m_0C = 0;
    }
    q = o->m_28;
    q[o->m_38] = o->m_40;
    if (++o->m_38 >= 4) {
        o->m_38 = 0;
    }
    o->m_24 = 0;
    for (i = 0; i < 4; i++) {
        o->m_24 += *q++;
    }
    if (o->m_24) {
        o->m_24 = 0xFA00000 / o->m_24;
    } else {
        o->m_24 = 999;
    }
    o->m_58 = 0;
    o->m_20 = 0x3E80000 / o->m_40;
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_74", func_800A59D4);
#endif

/* The frame's time: its length (20 to 66, or n), and the running total. */
void func_800A5BB8(Obj74 *o, int n) {
    if (!o->m_54) {
        o->m_1C++;
        if (o->m_5C) {
            o->m_18 = 0x23;
            o->m_44 = 0x23;
        } else {
            o->m_18 = o->m_40;
            o->m_44 = o->m_3C.m_t - o->m_00;
        }
        if (n >= 0) {
            o->m_18 = n;
            o->m_44 = n;
        }
        if (o->m_18 > 0x42) {
            o->m_18 = 0x42;
        }
        if (o->m_18 < 0x14) {
            o->m_18 = 0x14;
        }
        o->m_48 = 0x3E8000 / o->m_18;
    } else {
        o->m_18 = 0;
        o->m_44 = 0;
        o->m_48 = 0;
    }
    if (o->m_5C) {
        o->m_10 = 0;
        o->m_14 = 0;
        o->m_5C = 0;
    } else {
        o->m_10 = o->m_14;
        o->m_14 += o->m_18;
    }
    o->m_08 = 1;
    o->m_0C = 1;
}

void func_800A5CBC(Obj74 *o) {
    o->m_4C = !o->m_54;
}

#ifdef NON_MATCHING
// Registers: the original divides and moves through $t0 (a reload), ours through others (24 off)
/* Milliseconds as minutes, seconds and hundredths; 0 for -1. */
int func_800A5CD0(u32 ms, int *m, int *sec, int *cs) {
    u32 k;

    if (ms == (u32)-1) {
        return 0;
    }
    k = 60000;
    *m = ms / k;
    ms %= k;
    k = 1000;
    *sec = ms / k;
    ms %= k;
    *cs = ms / 10;
    return 1;
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_74", func_800A5CD0);
#endif

void func_800A5D2C(void) {
    if (--D_800D60E0[0] == 0) {
        func_800A5888(D_800D60E8, 2);
    }
}

void func_800A5D68(void) {
    if (++D_800D60E0[0] == 1) {
        func_800A57E4((Obj74 *)D_800D60E8);
    }
}

void func_800A5DA4(int a, ...) {
}

/* A time as "mm : ss : cc", leaving out the minutes (flag 4), the seconds
 * (flag 2) or the hundredths (flag 1) when they're 0. */
char *func_800A5DBC(char *d, u32 ms, int flags) {
    int m;
    int sec;
    int cs;

    if (!func_800A5CD0(ms, &m, &sec, &cs)) {
        return d;
    }
    if (m > 0 || !(flags & 4)) {
        d = func_800A6000(d, m, 2, '0');
        *d++ = ' ';
        *d++ = ':';
        *d++ = ' ';
    }
    if (sec > 0 || !(flags & 2)) {
        d = func_800A6000(d, sec, 2, '0');
        *d++ = ' ';
        *d++ = ':';
        *d++ = ' ';
    }
    if (cs > 0 || !(flags & 1)) {
        d = func_800A6000(d, cs, 2, '0');
    }
    return d;
}

/* A time as "m : ss", leaving out the minutes (flag 2) or the seconds
 * (flag 1) when they're 0. */
char *func_800A5ED0(char *d, u32 ms, int flags) {
    int m;
    int sec;
    int cs;

    if (!func_800A5CD0(ms, &m, &sec, &cs)) {
        return d;
    }
    if (m > 0 || !(flags & 2)) {
        d = func_800A5F90(d, m);
        *d++ = ' ';
        *d++ = ':';
        *d++ = ' ';
    }
    if (sec > 0 || !(flags & 1)) {
        d = func_800A6000(d, sec, 2, '0');
    }
    return d;
}

#ifdef NON_MATCHING
// Registers: the original divides by 10 through $t0 each time round (a reload), ours keeps it in a register (16 off)
/* The number's digits, then a 0; returns the 0's address. */
char *func_800A5F90(char *d, int v) {
    char buf[16];
    char *p = &buf[15];
    int i = 15;
    int base = 10;
    int q;

    do {
        q = v / base;
        *p-- = v % base + '0';
        v = q;
    } while (--i && q);
    i = 15 - i;
    do {
        *d++ = *++p;
    } while (--i);
    *d = 0;
    return d;
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_74", func_800A5F90);
#endif

#ifdef NON_MATCHING
// As func_800A5F90: the division by 10 through a reload register
/* The number's digits, padded on the left to width with pad. */
char *func_800A6000(char *d, int v, int width, int pad) {
    char buf[32];
    char *p = &buf[31];
    int i = 31;
    int base = 10;
    int q;

    if (width > 31) {
        width = 31;
    }
    do {
        q = v / base;
        *p-- = v % base + '0';
        v = q;
        width--;
    } while (--i && q);
    if (width > 0) {
        do {
            *p-- = pad;
            if (!--i) {
                break;
            }
        } while (--width);
    }
    i = 31 - i;
    do {
        *d++ = *++p;
    } while (--i);
    *d = 0;
    return d;
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_74", func_800A6000);
#endif

/* stricmp */
/* stricmp */
int func_800A60AC(const char *a, const char *b) {
    const u8 *p = (const u8 *)a;
    const u8 *x;
    const u8 *y;
    u32 c;

    do {
        c = *p++;
        x = &D_800BC93C[c];
        y = &D_800BC93C[*(const u8 *)b++];
        if (*x != *y) {
            return *x - *y;
        }
    } while (c);
    return 0;
}

/* strnicmp */
/* strnicmp */
/* strnicmp */
/* strnicmp */
/* strnicmp */
int func_800A6100(const char *a, const char *b, int n) {
    const u8 *p = (const u8 *)a;
    const u8 *x;
    const u8 *y;
    short c;

    if (n)
        do {
            c = *p++;
            x = &D_800BC93C[c];
            y = &D_800BC93C[*(const u8 *)b++];
            if (*x != *y) {
                return *x - *y;
            }
            if (!c) {
                return 0;
            }
        } while (--n);
    return 0;
}

/* A small sprintf: %d and %s, with a width (digits or *) and 0 to pad
 * with zeroes. Returns the length. */
/* A small vsprintf: %d and %s, with a width (digits or *) and 0 to pad
 * with zeroes. Returns the length. */
#ifdef NON_MATCHING
// The original hoists six constants out of the loop into $t4-$t9 (and 10 into $s0); the chunk is now built with -fmove-all-movables, which hoists them too (104 off, from 121), the rest still laid out differently
int func_800A6168(s8 *d, s8 *fmt, va_list ap) {
    s8 *start = d;
    s8 buf[16];
    s8 *p;
    s8 *str;
    s8 c;
    int pad;
    int skip;
    int w;
    int n;
    int i;
    int base;

    c = *fmt++;
    while (c) {
        if (c == '%') {
            pad = ' ';
            if (*fmt == '0') {
                skip = 1;
                pad = '0';
            } else {
                skip = 0;
            }
            fmt += skip;
            c = *fmt;
            w = 0;
            if (c == '*') {
                w = va_arg(ap, int);
                skip = 1;
            } else {
                while (c >= '0' && c <= '9') {
                    fmt++;
                    w = w * 10 + c - '0';
                    c = *fmt;
                }
                skip = 1;
            }
            if (c == 'd') {
                i = 0;
                n = va_arg(ap, int);
                if (n < 0) {
                    *d++ = '-';
                    n = -n;
                }
                buf[0] = 0;
                p = &buf[1];
                base = 10;
                do {
                    *p++ = n % base + '0';
                    n /= base;
                    i++;
                } while (n);
                for (n = w - i; n > 0; n--) {
                    *d++ = pad;
                }
                p--;
                while (*p) {
                    *d++ = *p--;
                }
            } else if (c == 's') {
                str = va_arg(ap, s8 *);
                while (*str) {
                    *d++ = *str++;
                }
            } else {
                skip = 0;
            }
            fmt += skip;
        } else {
            *d++ = c;
        }
        c = *fmt++;
    }
    *d = 0;
    return d - start;
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_74", func_800A6168);
#endif

/* strupr */
s8 *func_800A6344(s8 *s) {
    s8 *p;

    for (p = s; *p; p++) {
        u8 c = *p;

        if (c >= 'a' && c <= 'z') {
            *p = c - 0x20;
        }
    }
    return s;
}

/* strlwr */
s8 *func_800A638C(s8 *s) {
    s8 *p;

    for (p = s; *p; p++) {
        u8 c = *p;

        if (c >= 'A' && c <= 'Z') {
            *p = c + 0x20;
        }
    }
    return s;
}

void func_800A63D4(void) {
}

void func_800A63DC(void) {
}

u16 func_800A63E4(u16 x) {
    return (x >> 8) | (x << 8);
}

/* The CRC table copied to the scratchpad (0x1F800000), which D_800BCE3C then
 * points at, unless the stack (a local's address) is at 0x1800xxxx. */
void func_800A63FC(void) {
    int here;

    if (((int)&here >> 16) != 0x1800) {
        u32 *s = (u32 *)D_800BCA3C;
        u32 *d = (u32 *)0x1F800000;
        int i;

        D_800BCE3C[0] = d;
        for (i = 255; i != -1; i--) {
            *d++ = *s++;
        }
    }
}

void func_800A6448(void) {
    D_800BCE3C[0] = (u32 *)D_800BCA3C;
}

/* CRC-32 of n bytes, through the table D_800BCE3C points at. */
u32 func_800A645C(u8 *p, int n, u32 crc) {
    u32 *t = D_800BCE3C[0];
    int r = (u32)p & 3;
    int k;
    int w;

    if (r) {
        k = 4 - r;
        while (n) {
            if (!k) {
                break;
            }
            k--;
            crc = t[(*p++ ^ crc) & 0xFF] ^ (crc >> 8);
            n--;
        }
    }
    k = n & 3;
    n >>= 2;
    while (n) {
        w = *(int *)p;
        p += 4;
        n--;
        crc = t[(crc ^ w) & 0xFF] ^ (crc >> 8);
        w >>= 8;
        crc = t[(crc ^ w) & 0xFF] ^ (crc >> 8);
        w >>= 8;
        crc = t[(crc ^ w) & 0xFF] ^ (crc >> 8);
        w >>= 8;
        crc = t[(crc ^ w) & 0xFF] ^ (crc >> 8);
    }
    if (k) {
        w = *(int *)p;
        do {
            crc = t[(crc ^ w) & 0xFF] ^ (crc >> 8);
            w >>= 8;
        } while (--k);
    }
    return crc;
}

/* Relocates code: each entry an offset and its type (a word, a hi16, a
 * lo16, a jump's target), -1 at the end. */
/* Relocates code: each entry an offset and its type (a word, a hi16, a
 * lo16, a jump's target), -1 at the end. */
/* Relocates code: each entry an offset and its type (a word, a hi16, a
 * lo16, a jump's target), -1 at the end. */
void func_800A658C(u8 *base, u32 *r) {
    u32 e = *r;
    u32 t;

    if (e == (u32)-1) {
        return;
    }
    do {
        u8 *p = base + (e & ~3);

        r++;
        switch (e & 3) {
        case 0:
            *(u32 *)p += (u32)base;
            break;
        case 1:
            *(u16 *)p = ((u32)base + *r++ + 0x8000) >> 16;
            break;
        case 2:
            *(u16 *)p += (u32)base;
            break;
        case 3:
            *(u32 *)p += ((u32)base << 4) >> 6;
            break;
        }
        t = *r;
        e = t;
    } while (t != (u32)-1);
}

/* Loads an overlay, relocates it and runs it, then resets the system. */
void func_800A6650(char *name) {
    u32 *ov;
    u8 *code;
    Game74 *g;

    func_800A22B0(1);
    ov = (u32 *)func_800A06AC(name, 0, 0);
    code = (u8 *)(ov + 2);
    g = D_800C886C[0];
    func_800A658C(code, (u32 *)(code + (ov[0] >> 2 << 2)));
    func_800156DC();
    func_8006C77C();
    func_800AEC38();
    func_80079400(g);
    func_800AADA4();
    FlushCache();
    ((void (*)(void))ov[2])();
    ResetCallback();
    ResetGraph(3);
    func_800793C0(g);
    if (ov) {
        free(ov);
    }
    func_800AEBF0(0, 2);
    CdInit();
    func_80015684(0);
    SetDispMask(0);
    ((int (*)(void *))g->m_68[8].m_func)((char *)g + g->m_68[8].m_delta);
    ((int (*)(void *, int))g->m_68[4].m_func)((char *)g + g->m_68[4].m_delta, 0);
    SetDispMask(1);
    func_8006C750();
}

void func_800A6788(int a, int b) {
    func_800A22D0(2);
    func_800A22B0(0);
    D_800D6148[0] = a + 1;
    func_800A2290(D_800D6148, 1, b ? 0x101 : 0);
}

void func_800A67E8(int a) {
    func_800A22D0(2);
    func_800A22B0(a);
}

int func_800A6818(void) {
    int r = func_800151F0();

    if (r) {
        func_80015200(0);
    }
    return r;
}

int func_800A6850(int x) {
    if (D_800D49A8[0]) {
        return x * 36 / 0xA000;
    }
    return x * 85 / 0x26000;
}

/* Feeds a key to n sequences; returns the longest one completed's value, or
 * -1. */
#ifdef NON_MATCHING
// Registers: the original keeps a pointer to each field (85 off)
int func_800A68BC(int key, Seq74 *s, int n) {
    int best = 0;
    int r = -1;
    int i;
    int p;
    int c;

    if (!s) {
        return -1;
    }
    if (n <= 0) {
        return -1;
    }
    for (i = 0; i < n; i++, s++) {
        p = s->m_00;
        if (p > 8) {
            s->m_00 = 0;
            p = 0;
        }
        if (p < 0) {
            s->m_00 = 0;
            p = 0;
        }
        c = s->m_10[p];
        if (!c) {
            continue;
        }
        if (p) {
            s->m_08++;
        }
        if (key) {
            if (c == key) {
                if (!s->m_04) {
                    p = s->m_00 + 1;
                    s->m_00 = p;
                    s->m_08 = 0;
                    s->m_04 = 1;
                    if (!s->m_10[p]) {
                        if (best < p) {
                            r = s->m_0C;
                            best = p;
                        }
                        s->m_00 = 0;
                    }
                }
            } else if (s->m_00 <= 0 || s->m_10[s->m_00 - 1] != key) {
                s->m_00 = 0;
                s->m_04 = 0;
                s->m_08 = 0;
            }
        } else {
            s->m_04 = 0;
        }
        if (s->m_00 && s->m_08 > 60) {
            s->m_00 = 0;
            s->m_08 = 0;
            s->m_04 = 0;
        }
    }
    return r;
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_74", func_800A68BC);
#endif

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_74", func_800A6A4C);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_74", func_800A6A98);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_74", func_800A6BD8);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_74", func_800A6D54);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_74", func_800A6FA0);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_74", func_800A7034);
