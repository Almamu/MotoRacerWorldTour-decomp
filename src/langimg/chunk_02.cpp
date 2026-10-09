#include "common.h"
#include "langimg/cobjet.h"

/* C, GCC 2.91.66 with -G0 (docs/matching/issue-3-langimg-chunk02.md). */

extern "C" {

// A sprite's texture: the UVs, CLUT and texture page of a textured quad
struct UiTexture {
    u8 u0, v0;
    u16 clut;
    u8 u1, v1;
    u16 tpage;
    u8 u2, v2;
    u16 pad0;
    u8 u3, v3;
    u16 pad1;
};

// A 2D item: a flat or gouraud quad, or a sprite
struct UiItem {
    int kind; // 0 flat quad, 1 gouraud quad, 2 sprite
    short x;
    short y;
    int color;  // 0x08: and the first corner's
    short semi; // 0x0C: semi-transparency mode + 1; 0 opaque
    short done; // 0x0E: (sprites) the texture resolved
    union {
        struct {
            short w;
            short h;
        } size; // quads
        int id; // sprites: the texture's block, then its address
        UiTexture *tex;
    };
    int color1; // 0x14: the other corners' (gouraud)
    int color3;
    int color2;
};

struct UiList {
    UiItem **items;
    int w;
    int h;
    int count;
};

struct UiOrigin {
    int x;
    int y;
};

// The ordering table's
struct OtInfo {
    u_long *ot;
    int len;
};

extern UiOrigin *D_800C8D90;
extern u8 *D_800C8C70;     // the next free GPU packet
extern u_long *D_800CBDC0; // the ordering table
extern OtInfo *D_800CBDC4;

// Links packet p in at ordering table entry ot: p takes the entry's link
// (24 bits), the entry then points at p. Hand-written: its loads and stores
// are lwl/swl on the links' 3 bytes.
#define ADD_PRIM(ot, p) \
    do { \
        u_long _l, _p; \
        __asm__ volatile("lwl %0, 2(%2)\n\tsll %1, %3, 8\n\tswl %0, 2(%3)\n\tswl %1, 2(%2)" \
                         : "=&r"(_l), "=&r"(_p) \
                         : "r"(ot), "r"(p)); \
    } while (0)

#define XY(x, y) (((x) & 0xFFFF) | ((y) << 16))
// The ordering table entry z, or the last one
#define OT_Z(z) ((z) < D_800CBDC4->len ? (z) : D_800CBDC4->len - 1)

#ifdef NON_MATCHING
/* Equivalent; the original keeps all its constants (1, the packets' tags
 * and codes) in saved registers through the loop, which loop-local
 * variables only partly bring about */
/* Draws a list of 2D items at (x, y), aligned by align (0x10 centred,
 * 0x20 right; 0x100 middle, 0x200 bottom), at the ordering table's
 * entry 1. */
void func_80015798(UiList *l, int x, int y, int align) {
    int i;

    x += D_800C8D90->x;
    y += D_800C8D90->y;
    switch (align & 0xF0) {
    case 0x10:
        x -= l->w / 2;
        break;
    case 0x20:
        x -= l->w;
        break;
    }
    switch (align & 0xF00) {
    case 0x100:
        y -= l->h / 2;
        break;
    case 0x200:
        y -= l->h;
        break;
    }
    for (i = 0; i < l->count; i++) {
        UiItem *it = l->items[i];

        switch (it->kind) {
        case 0: {
            u_long *p = (u_long *)D_800C8C70;
            int x0 = it->x + x;
            int y0 = it->y + y;
            int x1 = x0 + it->size.w;
            int y1 = y0 + it->size.h;
            int abe = (it->semi != 0) << 1;

            p[0] = 0x05000000;
            p[1] = ((abe | 0x28) << 24) | it->color;
            p[2] = XY(x0, y0);
            p[3] = XY(x1, y0);
            p[4] = XY(x0, y1);
            p[5] = XY(x1, y1);
            ADD_PRIM(D_800CBDC0 + 1, D_800C8C70);
            D_800C8C70 += 0x18;
            if (abe) {
                p = (u_long *)D_800C8C70;
                p[0] = 0x01000000;
                p[1] = 0xE1000200 | (((it->semi - 1) & 3) << 5);
                ADD_PRIM(D_800CBDC0 + 1, D_800C8C70);
                D_800C8C70 += 8;
            }
            break;
        }
        case 1: {
            u_long *p = (u_long *)D_800C8C70;
            int x0 = it->x + x;
            int y0 = it->y + y;
            int x1 = x0 + it->size.w;
            int y1 = y0 + it->size.h;
            int abe = (it->semi != 0) << 1;

            p[0] = 0x08000000;
            p[1] = ((abe | 0x38) << 24) | it->color;
            p[2] = XY(x0, y0);
            p[3] = it->color1;
            p[4] = XY(x1, y0);
            p[5] = it->color2;
            p[6] = XY(x0, y1);
            p[7] = it->color3;
            p[8] = XY(x1, y1);
            ADD_PRIM(D_800CBDC0 + 1, D_800C8C70);
            D_800C8C70 += 0x24;
            if (abe) {
                p = (u_long *)D_800C8C70;
                p[0] = 0x01000000;
                p[1] = 0xE1000200 | (((it->semi - 1) & 3) << 5);
                ADD_PRIM(D_800CBDC0 + 1, D_800C8C70);
                D_800C8C70 += 8;
            }
            break;
        }
        case 2: {
            u_long *p = (u_long *)D_800C8C70;
            int abe = (it->semi != 0) << 1;
            int color = it->color & 0xFFFFFF;
            UiTexture *t = it->tex;
            int x0 = it->x + x;
            int y0 = it->y + y;
            int w = t->u1 - t->u0 + 1;
            int h = t->v2 - t->v0 + 1;

            p[0] = 0x04000000;
            p[1] = color | (abe ? 0x66000000 : 0x64000000);
            p[2] = XY(x0, y0);
            p[3] = *(u16 *)t | (t->clut << 16);
            p[4] = XY(w, h);
            ADD_PRIM(D_800CBDC0 + OT_Z(1), D_800C8C70);
            D_800C8C70 += 0x14;
            t->tpage &= ~0x60;
            if (abe) {
                t->tpage |= ((it->semi - 1) & 3) << 5;
            }
            p = (u_long *)D_800C8C70;
            p[0] = 0x01000000;
            p[1] = 0xE1000200 | (t->tpage & 0x1FF);
            ADD_PRIM(D_800CBDC0 + OT_Z(1), D_800C8C70);
            D_800C8C70 += 8;
            break;
        }
        }
    }
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_02", func_80015798);
#endif

extern u8 D_800B8868;
extern int D_800C4900[];
extern u8 *D_800CC030[];
extern int D_800CBE84;
void *func_80096240(int id);

/* Resolves the type-2 entries of a list once: an id whose block is a
 * "BLKS" becomes an address. */
void func_80015CF4(UiList *l) {
    int i;

    for (i = 0; i < l->count; i++) {
        int two = 2;
        int magic = 0x534B4C42;
        int one = 1;
        UiItem *r = l->items[i];

        if (r->kind == two && !r->done) {
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
