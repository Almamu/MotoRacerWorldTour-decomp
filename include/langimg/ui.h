#ifndef LANGIMG_UI_H
#define LANGIMG_UI_H

#include "common.h"
#include "psyq.h"

#ifdef __cplusplus
extern "C" {
#endif

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

// The screen: an origin added to 2D positions, and the box they're
// clipped to
struct UiScreen {
    int x;
    int y;
    int x1;
    int y1;
};

// The ordering table's
struct OtInfo {
    u_long *ot;
    int len;
};

extern UiScreen *D_800C8D90;
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

void func_80015798(struct UiList *l, int x, int y, int align);
void func_80015CF4(struct UiList *l);

#ifdef __cplusplus
}
#endif

#endif
