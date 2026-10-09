#include "common.h"
#include "langimg/cobjet.h"
#include "langimg/ui.h"

/* The game's code built with GCC 2.91.66, -G8, split addresses
 * (docs/matching/issue-3-langimg-chunk02.md, issue-4-langimg-chunk03.md). */

extern "C" {

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
/* Registers and scheduling (10 off) around the tables' index; with chunk_02
 * built like chunk_03 (split addresses) the tables' la + addu now match */
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
        int i = D_800C4900[v];
        u8 *e = D_800CC030[i];

        if (e) {
            p->unk12 = *(u16 *)(e + 6) + (f & 0x60);
        }
    }
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_02", func_80015E04);
#endif
}
