#include "common.h"
#include "langimg/cobjet.h"

/* C, GCC 2.91.66 with -G0 (docs/matching/issue-3-langimg-chunk02.md). */

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_02", func_80015798);

extern "C" {
extern u8 D_800B8868;
extern int D_800C4900[];
extern u8 *D_800CC030[];
extern int D_800CBE84;
void *func_80096240(int id);

struct Res15CF4 {
    int type; /* 2: to resolve */
    u8 unk4[0xA];
    short done;
    int id;
};

struct ResList {
    Res15CF4 **items;
    u8 unk4[8];
    int count;
};

/* Resolves the type-2 entries of a list once: an id whose block is a
 * "BLKS" becomes an address. */
void func_80015CF4(ResList *l) {
    int i;

    for (i = 0; i < l->count; i++) {
        int two = 2;
        int magic = 0x534B4C42;
        int one = 1;
        Res15CF4 *r = l->items[i];

        if (r->type == two && !r->done) {
            int *b = (int *)func_80096240(r->id);

            if (b && b[1] == magic) {
                r->id = D_800CBE84 + b[0];
            }
            l->items[i]->done = one;
        }
    }
}

struct Thing15E04 {
    u8 unk0[0x12];
    u16 unk12;
    u8 unk14[4];
    int unk18;
};

#ifdef NON_MATCHING
/* Equivalent; the original forms the tables' addresses with la + addu,
 * moves p to $a2, and keeps the 0x40 case's value in $v0 */
void func_80015E04(Thing15E04 *p) {
    u16 v = p->unk12;
    int f = p->unk18;

    if (v == 0xFFFF) {
        return;
    }
    if (v == 0x40) {
        int t = (s8)(D_800B8868 ^ 1) << 8;

        p->unk12 = ((t & 0x100) >> 4) | 0x102 | ((t & 0x200) << 2);
    } else if (v < 14) {
        u8 *e = D_800CC030[D_800C4900[v]];

        if (e) {
            p->unk12 = *(u16 *)(e + 6) + (f & 0x60);
        }
    }
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_02", func_80015E04);
#endif
}
