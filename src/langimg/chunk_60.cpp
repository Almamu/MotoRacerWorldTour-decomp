#include "common.h"
#include "psyq.h"

/* (docs/matching/issue-61-langimg-chunk60.md) */

extern "C" {
// A buffer of frames: its state, its data, the frames' size and count, its
// memory, its vtable
struct Buf60 {
    int m_00; // 1 when ready
    u16 *m_04;
    int m_08;
    int m_0C;
    int *m_10;
    void *m_vt; // 0x14
};

// A range of halfwords
struct Range60 {
    int m_00;
    u16 *m_start;
    int m_n;
    u16 *m_end;
};

// Something with eight halfwords at 0x5C
struct Cnt60 {
    u8 m_00[8];
    u16 m_08;
    u8 m_0A[0x52];
    short m_5C[8];
};

// A list of nodes
struct Node60 {
    int m_00;
    Node60 *m_next;
};
struct List60 {
    u8 m_00[2];
    short m_n;
    u8 m_04[4];
    Node60 **m_nodes;
};

// A pool of 0x68-byte items
struct Pool60 {
    int m_00;
    u8 *m_items;
    u8 **m_free;
    short m_0C, m_0E;
};

// What holds four of the pieces
struct Hold60 {
    u8 m_00[0xC];
    u8 m_0C[0x20];
    u8 m_2C[0x10];
    u8 m_3C[0x10];
    u8 m_4C[0x10];
};

extern int D_800C8C6C, D_800C8C70, D_800C8C74, D_800C8C78;
extern char D_800C8C7C[], D_800C8CC4[]; // vtables
extern s8 D_800B8868;
void __builtin_delete(void *p);
void func_800961A0(void *a);
void func_80089A3C(void *p);
void func_80089BF8(void *p);
void func_80089FB4(void *p);

Buf60 *func_80089508(Buf60 *b);
void func_80089550(Buf60 *b, int flags);
int func_800895A0(int a, int b);
int func_800895D8(void);
int func_800895EC(Buf60 *b);
int func_80089630(Range60 *r, u16 *a, int n);
int func_8008964C(Range60 *r, u16 *a, int n);
int *func_800896D0(Buf60 *b);
int *func_80089720(Buf60 *b);
int *func_80089764(Buf60 *b, int i);
int func_800897B8(void);
Buf60 *func_800897C0(Buf60 *b);
void func_800893C8(void *a);
void func_80089930(Buf60 *b, int flags);
void *func_80089950(void *p);
void func_80089980(void *p, int flags);
void *func_80089AF8(void *p);
void func_80089B28(void *p, int flags);
void *func_80089EE8(void *p);
void func_80089F18(void *p, int flags);
void func_8008A01C(Pool60 *p);
void func_8008A1D0(Hold60 *h);
void func_8008A220(Cnt60 *c);
void func_8008A4E4(List60 *l, Node60 *n);
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_60", func_80089200);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_60", func_800892DC);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_60", func_80089354);

void func_800893C8(void *a) {
    func_800961A0(a);
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_60", func_800893E8);

Buf60 *func_80089508(Buf60 *b) {
    b->m_vt = D_800C8C7C;
    D_800C8C6C = 0;
    b->m_10 = 0;
    b->m_04 = 0;
    b->m_08 = 0;
    b->m_0C = 0;
    func_800895D8();
    return b;
}

void func_80089550(Buf60 *b, int flags) {
    b->m_vt = D_800C8C7C;
    func_800895EC(b);
    if (flags & 1) {
        __builtin_delete(b);
    }
}

int func_800895A0(int a, int b) {
    if (!a) {
        return 0;
    }
    D_800C8C6C = a;
    D_800C8C78 = b;
    return func_800895D8();
}

int func_800895D8(void) {
    D_800C8C74 = 0;
    D_800C8C70 = D_800C8C6C;
    return D_800C8C6C != 0;
}

int func_800895EC(Buf60 *b) {
    if (b->m_10) {
        free(b->m_10);
        b->m_10 = 0;
    }
    D_800C8C6C = 0;
    return 1;
}

#ifdef NON_MATCHING
/* The end pointer computed into the count's register in the original (3 off) */
int func_80089630(Range60 *r, u16 *a, int n) {
    r->m_n = n;
    r->m_end = a + n;
    r->m_start = a;
    return 1;
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_60", func_80089630);
#endif

int func_8008964C(Range60 *r, u16 *a, int n) {
    return (int)(a + n) > 0;
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_60", func_8008965C);

int *func_800896D0(Buf60 *b) {
    int *r = 0;

    if (b->m_10 && b->m_00 && b->m_00 == 1) {
        r = b->m_10 + b->m_0C * D_800B8868;
    }
    return r;
}

int *func_80089720(Buf60 *b) {
    int *r = 0;

    if (b->m_10) {
        r = b->m_10 + b->m_0C * D_800B8868 + b->m_0C - 1;
    }
    return r;
}

int *func_80089764(Buf60 *b, int i) {
    int *r = 0;

    if (b->m_10) {
        r = b->m_10 + b->m_08 + b->m_0C * D_800B8868 + i;
    }
    return r;
}

int func_800897B8(void) {
    return 0;
}

Buf60 *func_800897C0(Buf60 *b) {
    func_80089508(b);
    b->m_vt = D_800C8CC4;
    b->m_00 = 1;
    return b;
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_60", func_800897FC);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_60", func_800898C4);

void func_80089930(Buf60 *b, int flags) {
    func_80089550(b, flags);
}

void *func_80089950(void *p) {
    memset(p, 0, 0x10);
    return p;
}

void func_80089980(void *p, int flags) {
    func_80089A3C(p);
    if (flags & 1) {
        __builtin_delete(p);
    }
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_60", func_800899C4);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_60", func_80089A3C);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_60", func_80089AA4);

void *func_80089AF8(void *p) {
    memset(p, 0, 0x20);
    return p;
}

void func_80089B28(void *p, int flags) {
    func_80089BF8(p);
    if (flags & 1) {
        __builtin_delete(p);
    }
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_60", func_80089B6C);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_60", func_80089BF8);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_60", func_80089C7C);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_60", func_80089CF4);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_60", func_80089E24);

void *func_80089EE8(void *p) {
    memset(p, 0, 0x10);
    return p;
}

void func_80089F18(void *p, int flags) {
    func_80089FB4(p);
    if (flags & 1) {
        __builtin_delete(p);
    }
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_60", func_80089F5C);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_60", func_80089FB4);

/* Every item free. */
void func_8008A01C(Pool60 *p) {
    u8 *e = p->m_items;
    int i;

    p->m_00 = 0;
    p->m_0C = p->m_0E;
    for (i = 0; i < p->m_0E; i++) {
        p->m_free[i] = e;
        e += 0x68;
    }
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_60", func_8008A06C);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_60", func_8008A0C0);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_60", func_8008A134);

void func_8008A1D0(Hold60 *h) {
    func_80089BF8(h->m_0C);
    func_80089FB4(h->m_2C);
    func_80089A3C(h->m_3C);
    func_80089A3C(h->m_4C);
    memset(h, 0, 0x74);
}

void func_8008A220(Cnt60 *c) {
    c->m_5C[0] = 0;
    c->m_5C[1] = 0;
    c->m_5C[2] = 0;
    c->m_5C[3] = 0;
    c->m_5C[4] = 0;
    c->m_5C[5] = 0;
    c->m_5C[6] = 0;
    c->m_5C[7] = 0;
    c->m_08++;
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_60", func_8008A250);

/* A chain of nodes added, unlinked. */
void func_8008A4E4(List60 *l, Node60 *n) {
    int i = l->m_n;

    do {
        Node60 *next;

        l->m_nodes[i] = n;
        next = n->m_next;
        n->m_next = 0;
        n = next;
        i++;
    } while (n);
    l->m_n = i;
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_60", func_8008A518);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_60", func_8008A70C);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_60", func_8008A91C);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_60", func_8008AF5C);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_60", func_8008B000);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_60", func_8008B168);
