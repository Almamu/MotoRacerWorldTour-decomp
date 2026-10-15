#include "common.h"
#include "psyq.h"

/* The memory cards (docs/matching/issue-73-langimg-chunk72.md) */

extern "C" {

// A file's entry (24 bytes)
struct File72 {
    u8 m_00[0x10];
    int m_10;
    u8 m_14[4];
};

// A directory: its files
struct Dir72 {
    File72 *m_files;
};

// A position in a directory (20 bytes)
struct Pos72 {
    int m_file;
    int m_04;
    u8 m_08[0xC];
};

// An object of 0x4C bytes the cards set up
struct Obj4C {
    u8 m_00[0x4C];
};

// Two of them
struct Pair98 {
    Obj4C m_a, m_b;
};

// A card slot (8 bytes)
struct Slot72 {
    u8 m_00[2];
    s8 m_02; // a card in it
    u8 m_03[5];
};

// The cards' state (D_800D4898)
struct Card72 {
    u8 m_00[4];
    u8 m_04[0x3C];
    Pos72 m_pos[3]; // 0x40
    int m_cur;      // 0x7C
    u8 m_80[4];
    int m_84[11]; // flags
    u8 m_B0[0xA4C];
    Pair98 m_AFC[18];
    u8 m_15AC[4];
    Slot72 m_15B0[5];
    Obj4C m_15D8;
    u8 m_1624[4];
    int m_1628; // flags
    int m_162C;
    void *m_1630[11];
    u8 m_165C[0x38];
    int m_1694; // the file to start at
    u8 m_1698[0x10];
    int m_16A8; // the state
    u8 m_16AC[0x1C];
    int m_16C8;
    u8 m_16CC[0x20];
    int m_16EC;
    u8 m_16F0[0x10];
    int m_1700[5];
    int m_1714[5];
    int m_1728[2];
};

// Something with a count at 6
struct Item72 {
    u8 m_00[6];
    u16 m_06;
};

extern int D_800B887C[]; // not one of the small globals
extern int D_800C9F34;
extern volatile int D_800D6094[]; // not one of the small globals
extern volatile int D_800D60C0[]; // not one of the small globals
extern Dir72 *D_800C9EE8[];       // not one of the small globals
extern int D_800D4914[];          // not one of the small globals
extern Pos72 D_800D48D8[];
extern Card72 D_800D4898;
void func_80015210(void);
void func_800152E4(void);
void func_80014CB8(void);
int _card_chan(void);
extern int D_800D6070[];
extern volatile int D_800D60A0[]; // the events counted, by kind
extern volatile int D_800D60C8[];
extern int D_800C9D60[];
extern int *D_800C9EEC;
extern char D_800BC88C[];
extern char D_800D4958[];
// A block's header: its CRC, its size
struct Blk72 {
    u32 m_crc;
    int m_size;
    CdlLOC m_loc;
    u32 m_hash; // its name's
};

// A pack: its blocks' count, flags, the blocks' size, the blocks from 0x10
struct Pack72 {
    u32 m_count;
    u16 m_flags; // 8: sorted by hash
    u16 m_size;
};

// A file's header: its entries' count, then the entries from 0x18
struct Hdr72 {
    u32 m_count;
    int m_04;
    int m_08;
};

Blk72 *func_800A1EFC(Pack72 *h, char *name);
void *func_800A2148(Pack72 *h, Blk72 *b, void *buf, int *out);
int TestEvent(int ev);
extern int D_800D6074[], D_800D6078[], D_800D607C[], D_800D6080[], D_800D6084[], D_800D6088[];
extern int D_800D60B0[], D_800D60B8[]; // the card's events
int CdInit(void);
void func_800A7660(int a);
void func_80015684(int a);
int func_800963E8(void);
int func_80015650(void);
struct Ent66 {
    int m_00, m_04, m_08;
};
Ent66 *func_80096240(int id);
extern int *D_800C9F30;
extern char *D_800CC030[];
extern char *
    D_800CBE84; // declared small: maspsx loads it with its own lui at each use (not one of this file's small globals)

void func_800A29E0(void);
void func_800A2A40(void);
int func_800A1C10(int a);
void func_800A1B54(void);
void func_800A2304(u8 *d, u32 c, int n);
CdlFILE *func_800A1C74(CdlFILE *fp, char *name);
extern int D_800D4790[];
void func_800A0C58(void *p);
void func_800A0148(Obj4C *o);
void func_800A084C(Slot72 *s);
void qsort(void *base, int n, int size, int (*cmp)(int *, int *));

int func_800A1420(Card72 *c);
void func_800A15A0(void);
int func_800A1170(Card72 *c);
void func_800A12C4(Card72 *c);

int func_800A1110(Card72 *c);
void func_800A13C0(Card72 *c);
void *func_800A2234(Pack72 *h, char *name, void *buf, int *out);
int DisableEvent(int ev);
int CloseEvent(int ev);
int func_800A5DA4(const char *fmt, ...);
// A range of characters with glyphs: its first glyph, its first character
struct Range72 {
    u16 m_glyph;
    u16 m_char;
};
extern Range72 D_800BC8BC[];
extern u16 D_800BC8C8[]; // the punctuation's glyphs
void func_800A63FC(void);
u32 func_800A645C(void *p, int n, int a);
void func_800A6448(void);
void *func_800A1CF8(int mode, CdlLOC *loc, int size, void *buf);
void *malloc(unsigned int n);
// A work buffer (chunk_58's Buf58)
struct Buf72 {
    void *m_00;
    int m_04;
    int m_08;
};
extern char D_800C9F1C[]; // the default picture's name
Buf72 *func_80086E68(Buf72 *b);
void func_80086E7C(Buf72 *b, int f);
void func_80086F14(Buf72 *b, void *p, int n);
int func_80087468(Buf72 *b, void *img, int c, int d, int e, int f);
void *func_800A06AC(char *name, void *buf, int *size);
void func_80015678(void (*f)(void));
void func_800A1654(void);
void func_800A17EC(int x, char *name);
// A three-point Gouraud line (LINE_G3) as words
struct Line72 {
    u32 m_tag;
    u32 m_c0;
    u32 m_xy0;
    u32 m_c1;
    u32 m_xy1;
    u32 m_c2;
    u32 m_xy2;
};
extern int D_800C9F14;        // the spinner's size, 0 to 5
extern int D_800C9F18;        // its step
extern short D_800BF3A0[][2]; // sines and cosines by angle (4.12)
void DrawPrim(void *p);
void *func_800B5730(void *p, int size);
extern void (**D_800D6000)(void *p); // a hook on what's read

void func_800A28B8(void);
int func_800A2380(int ch);
Hdr72 *func_800A207C(char *name, void *buf);
void func_800A2490(void);
void func_800A24CC(void);
void func_800A2510(void);
void func_800A2554(void);
void func_800A2598(void);
void func_800A25D4(void);
void func_800A2618(void);
void func_800A265C(void);
void func_800A26A0(void);
void func_800A26DC(void);
// The display (chunk_51's A51): its sizes at 0xC and 0x10
struct Disp72 {
    u8 m_00[0xC];
    int m_0C, m_10;
};
// chunk_51's G51
struct Gfx72 {
    u8 m_00[4];
    Disp72 *m_04;
};
void *__builtin_new(unsigned int n);
void func_8009793C(void);
void func_800A0CC4(Card72 *c);
void func_800AEBF0(int a, int b);
void func_800AFB8C(int a);
void func_800B0258(int a);
void func_800450C0(char *s, int a);
Gfx72 *func_80078DA8(Gfx72 *g, int a, int b, int c, int d, int e);
int func_80078F5C(int *t, Gfx72 *g);
void func_80078C78(Disp72 *o, int a, int b, int c, int e, int f, int g, int h, int i, ...);
void func_800A0680(void);
extern s8 D_800C9D3C;
extern char D_800CABC0[];
extern int D_800CBC94[];
extern Disp72 *D_800C886C;
int func_800A195C(void);

void func_800A1228(Card72 *c);
void func_800A1248(Card72 *c);
void func_800A1268(Card72 *c);
int func_800A1284(int *a, int *b);
void func_800A12A0(Card72 *c);
int func_800A138C(Card72 *c, int x);
Dir72 *func_800A14B8(int i);
Dir72 *func_800A14CC(void);
Pos72 *func_800A14E8(int i);
Pos72 *func_800A1504(void);
int func_800A1528(Dir72 *d, Pos72 *p);
int func_800A1558(void);
int func_800A158C(int *p);
void func_800A164C(int *p);
void func_800A1B4C(void);
void func_800A1BD0(void);
void func_800A1BE0(void);
int func_800A1BEC(Item72 *p);
void func_800A2290(void);
void func_800A22B0(void);
int func_800A22D0(void);
void func_800A22D8(void);
void func_800A22F8(int a);
int func_800A2AA0(void);
int func_800A2AB0(void);
}

#ifdef NON_MATCHING
/* The clamp's value and the count's pointer in other registers (14 off) */
/* The file to start at: the one asked for, within the directory. */
int func_800A1110(Card72 *c) {
    c->m_1694 = 0;
    if (D_800C9D60[0] != -1) {
        int v = 0;

        if (D_800C9D60[0] >= 0) {
            int m = *D_800C9EEC - 1;

            v = m;
            if (!(m < D_800C9D60[0])) {
                v = D_800C9D60[0];
            }
        }
        c->m_1694 = v;
    }
    c->m_16C8 = 0;
    return 1;
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_72", func_800A1110);
#endif

#ifdef NON_MATCHING
/* The original keeps the card in $a1 (copied at the start), and schedules around it (32 off) */
/* On to the next file; past the last, every flag set. */
int func_800A1170(Card72 *c) {
    int r = 0;

    if (c->m_16A8 == 4) {
        if (c->m_162C) {
            int n = c->m_1694;

            if (n >= *D_800C9EEC - 1) {
                c->m_84[0] = 1;
                c->m_84[1] = 1;
                c->m_84[2] = 1;
                c->m_84[3] = 1;
                c->m_84[4] = 1;
                c->m_84[5] = 1;
                c->m_84[6] = 1;
                c->m_84[7] = 1;
                c->m_84[8] = 1;
                c->m_84[9] = 1;
                c->m_84[10] = 1;
                c->m_1628 |= 4;
            } else {
                c->m_1694 = n + 1;
                r = 1;
            }
        } else {
            func_800A1110(c);
        }
    }
    return r;
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_72", func_800A1170);
#endif

void func_800A1228(Card72 *c) {
    int i;

    for (i = 4; i >= 0; i--) {
        c->m_1714[i] = 0;
    }
}

void func_800A1248(Card72 *c) {
    int i;

    for (i = 1; i >= 0; i--) {
        c->m_1728[i] = 0;
    }
}

void func_800A1268(Card72 *c) {
    int i;

    for (i = 4; i >= 0; i--) {
        c->m_16EC = -1;
    }
}

/* A sort's comparison, ignoring the low 4 bits. */
int func_800A1284(int *a, int *b) {
    int x = *a & ~15;
    int y = *b & ~15;

    return y - x;
}

void func_800A12A0(Card72 *c) {
    int i;

    for (i = 4; i >= 0; i--) {
        c->m_1700[i] = -1;
    }
}

/* The slots with a card, by their counts. */
void func_800A12C4(Card72 *c) {
    int n = 0;
    int i;

    func_800A12A0(c);
    for (i = 4; i >= 0; i--) {
        if (c->m_15B0[i].m_02) {
            c->m_1700[n++] = i | (c->m_1714[i] << 8);
        }
    }
    if (n >= 2) {
        qsort(c->m_1700, n, 4, func_800A1284);
    }
    for (i = n - 1; i >= 0; i--) {
        c->m_1700[i] &= 0xF;
    }
}

int func_800A138C(Card72 *c, int x) {
    int i = 4;
    int *p = &c->m_1700[4];

    do {
        if (*p-- == x) {
            return i;
        }
    } while (--i >= 0);
    return -1;
}

void func_800A13C0(Card72 *c) {
    c->m_1630[0] = D_800BC88C;
    c->m_1630[1] = (u8 *)c + 0xCC;
    c->m_1630[2] = (u8 *)c + 0xC4;
    c->m_1630[3] = D_800BC88C;
    c->m_1630[4] = (u8 *)c + 0xD0;
    c->m_1630[5] = (u8 *)c + 0xB8;
    c->m_1630[6] = (u8 *)c + 0xBC;
    c->m_1630[7] = (u8 *)c + 0xB0;
    c->m_1630[8] = (u8 *)c + 0xC8;
    c->m_1630[9] = D_800D4958;
    c->m_1630[10] = D_800D4958 - 12;
}

/* The current file's number, at the directory's last file. */
int func_800A1420(Card72 *c) {
    int r = -1;

    if (c->m_16A8 == 8) {
        Dir72 *d = func_800A14CC();
        Pos72 *p = func_800A1504();

        if (p->m_04 >= d->m_files[p->m_file].m_10 - 1) {
            r = c->m_cur * 3 + p->m_file;
        }
    }
    return r;
}

Dir72 *func_800A14B8(int i) {
    return &D_800C9EE8[0][i];
}

Dir72 *func_800A14CC(void) {
    return &D_800C9EE8[0][D_800D4914[0]];
}

Pos72 *func_800A14E8(int i) {
    return &D_800D48D8[i];
}

Pos72 *func_800A1504(void) {
    return &D_800D4898.m_pos[D_800D4898.m_cur];
}

/* At the directory's last file. */
int func_800A1528(Dir72 *d, Pos72 *p) {
    return p->m_04 >= d->m_files[p->m_file].m_10 - 1;
}

int func_800A1558(void) {
    Pos72 *p = func_800A1504();

    return func_800A1528(func_800A14CC(), p);
}

int func_800A158C(int *p) {
    return *p >= 2;
}

/* The cards' objects set up, by their first user. */
void func_800A15A0(void) {
    int i;
    int j;
    Pair98 *p;
    Slot72 *s;

    if (++D_800D4790[0] == 1) {
        Card72 *c = &D_800D4898;

        func_800A0C58(c->m_04);
        p = c->m_AFC;
        for (i = 17; i != -1; i--) {
            func_800A0148(&p->m_a);
            func_800A0148(&p->m_b);
            p++;
        }
        s = c->m_15B0;
        for (j = 4; j != -1; j--) {
            func_800A084C(s);
            s++;
        }
        func_800A0148(&c->m_15D8);
    }
}

void func_800A164C(int *p) {
    *p = 0;
}

/* The loading spinner: 32 lines out from (460, 425), their length
 * swinging between 11 and 16. */
void func_800A1654(void) {
    Line72 p;
    Line72 *l = &p;
    int a, r;

    p.m_tag = 0x06000000;
    l->m_c0 = 0x30007F7F;
    l->m_c1 = 0x7F;
    l->m_c2 = 0x7F;
    l->m_xy0 = 0x01A901CC;
    r = 16 - D_800C9F14;
    for (a = 0; a < 0x1000;) {
        int n;

        l->m_xy1 = (u16)(r * D_800BF3A0[a & 0xFFF][0] / 4096 + 0x1CC) |
                   ((r * D_800BF3A0[a & 0xFFF][1] / 4096 + 0x1A9) << 16);
        n = a + 0x80;
        l->m_xy2 = (u16)(r * D_800BF3A0[n & 0xFFF][0] / 4096 + 0x1CC) |
                   ((r * D_800BF3A0[n & 0xFFF][1] / 4096 + 0x1A9) << 16);
        DrawPrim(l);
        a = n;
    }
    D_800C9F14 += D_800C9F18;
    if (D_800C9F18 > 0) {
        if (D_800C9F14 >= 5) {
            D_800C9F18 = -1;
        }
    } else if (D_800C9F14 <= 0) {
        D_800C9F18 = 1;
    }
}

/* A picture shown full screen: the named one, or the default one. */
void func_800A17EC(int x, char *name) {
    Buf72 b;
    RECT r;
    void *work;

    func_80086E68(&b);
    DrawSync(0);
    VSync(0);
    work = malloc(0x7000);
    if (work) {
        u8 *img;

        if (name) {
            img = (u8 *)func_800A06AC(name, 0, 0);
        } else {
            img = 0;
        }
        if (!img) {
            img = (u8 *)func_800A06AC(D_800C9F1C, 0, 0);
        }
        r.w = 512;
        r.h = 512;
        r.x = 0;
        r.y = 0;
        ClearImage(&r, 0, 0, 0);
        DrawSync(0);
        SetDispMask(0);
        func_80086F14(&b, work, 0x7000);
        func_80087468(&b, img + 4, 1, 0, 0, 0);
        DrawSync(0);
        func_80087468(&b, img + 4, 1, 0, 0x100, 0);
        DrawSync(0);
        SetDispMask(1);
        if (img) {
            free(img);
        }
        func_80015678(func_800A1654);
        if (work) {
            free(work);
        }
    }
    func_80086E7C(&b, 2);
}

/* The game started: the cards, the GTE, the sound, the loading spinner, the
 * display and its primitives' layout. */
#ifdef NON_MATCHING
// One instruction: the original sets the 1 it keeps in $s0 in the delay slot of func_800A0CC4's call and leaves ResetCallback's slot empty; GCC sets it after that call, in ResetCallback's slot, which shifts the rest by one (118 off, the code otherwise the original's).
int func_800A195C(void) {
    Gfx72 *g;
    int on = 1;

    func_8009793C();
    func_800A0CC4(&D_800D4898);
    ResetCallback();
    InitGeom();
    func_800AEBF0(0, 2);
    func_800AFB8C(0x16);
    func_800B0258(1);
    func_800A1C10(0);
    func_80015678(func_800A1654);
    D_800C9D3C = on;
    func_800450C0(D_800CABC0, 1);
    g = func_80078DA8((Gfx72 *)__builtin_new(0x20), -1, -1, 0x200, 0x100, 6);
    func_80078F5C(D_800CBC94, g);
    func_80078C78(g->m_04, 0xE, 2, 8, 4, g->m_04->m_0C, g->m_04->m_10, on, 0x44, 2, 0, 2, 0, 7, on,
                  2, on, 2, on, 2, on, 2, on, 2, on, 2, on, 7, on, 2, 0, 2, 0, 2, 0, 2, 0, 2, 0, 2,
                  0, 2, 0, 7, on, 2, 0, 2, 0, 2, 0, 0x800, 0xC0);
    D_800C886C = g->m_04;
    SetGeomScreen(0x100);
    func_800A0680();
    return 1;
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_72", func_800A195C);
#endif

void func_800A1B4C(void) {
}

void func_800A1B54(void) {
    int i = 0;
    char **out = D_800CC030;
    int *ids = D_800C9F30;

    for (; i < 163; i++) {
        Ent66 *e = func_80096240(*ids);
        char *p = 0;

        if (e) {
            p = D_800CBE84 + e->m_00;
        }
        *out++ = p;
        ids++;
    }
}

void func_800A1BD0(void) {
    D_800B887C[0] = 1;
}

void func_800A1BE0(void) {
    D_800B887C[0] = 0;
}

/* An item's count, 0x30 when it has none. */
int func_800A1BEC(Item72 *p) {
    int r = 0;

    if (p) {
        r = p->m_06;
        if (!r) {
            r = 0x30;
        }
    }
    return r;
}

int func_800A1C10(int a) {
    CdInit();
    func_800A7660(0);
    func_80015684(a);
    if (!func_800963E8()) {
        return -1;
    }
    if (!func_80015650()) {
        return -1;
    }
    return 1;
}

/* A file looked for on the CD, twice. */
CdlFILE *func_800A1C74(CdlFILE *fp, char *name) {
    int tries;
    CdlFILE *r;

    func_800A1BD0();
    VSync(0);
    tries = 2;
    do {
        r = CdSearchFile(fp, name);
    } while (!r && --tries);
    func_800A1BE0();
    VSync(0);
    return r;
}

#ifdef NON_MATCHING
/* With -fmove-all-movables (the chunk's flag): only the hook's address: its high half in $v0 where the original uses $v1 (2 off) */
/* size bytes read from loc into buf (allocated if none is given), the sector
 * read again twice on an error. Mode 2 reads a pack: its first sector gives
 * its size. */
void *func_800A1CF8(int mode, CdlLOC *loc, int size, void *buf) {
    u_char param[8];
    CdlLOC pos = *loc;
    int ours = 0;
    int sectors;
    int tries;
    int n;
    int r;
    u8 *p;

    func_800A1BD0();
    VSync(0);
    sectors = (u32)(size + 0x7FF) >> 11;
    if (!buf) {
        buf = malloc(sectors << 11);
        ours = 1;
        if (!buf) {
            goto out;
        }
    }
    tries = 2;
retry:
    n = sectors;
    p = (u8 *)buf;
    param[0] = 0x80;
    CdControlB(0xE, param, 0);
    CdControl(6, (u_char *)&pos, 0);
    for (n--; n != -1; n--) {
        r = CdReady(0, 0);
        if (r == 5) {
        fail:
            if (!tries) {
                break;
            }
            CdControlB(9, 0, 0);
            tries--;
            goto retry;
        }
        if (r == 1) {
            if (CdGetSector(p, 0x200) != r) {
                goto fail;
            }
            if (mode == 2 && p == buf) {
                int len = ((Pack72 *)buf)->m_count * func_800A1BEC((Item72 *)buf);

                size = len + 0x10;
                sectors = (u32)(len + 0x80F) >> 11;
                if (ours) {
                    func_800B5730(buf, sectors << 11);
                }
                p = (u8 *)buf;
                n = sectors - 1;
            }
            p += 0x800;
        }
    }
    CdControlB(9, 0, 0);
    if (D_800D6000) {
        (*D_800D6000)(buf);
    }
    if (ours) {
        buf = func_800B5730(buf, size);
    }
out:
    func_800A1BE0();
    VSync(0);
    return buf;
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_72", func_800A1CF8);
#endif

#ifdef NON_MATCHING
/* The layout matches up to the binary search; registers and the search's scheduling differ (74 off) */
/* The block with this name (any case), by its hash. */
Blk72 *func_800A1EFC(Pack72 *h, char *name) {
    char buf[0x200];
    Blk72 *r = 0;

    if (h) {
        u8 *e = (u8 *)h + 0x10;
        int step = func_800A1BEC((Item72 *)h);
        u32 n = h->m_count;
        u32 hash;

        if (*(s8 *)name == '\\') {
            name++;
        }
        if (n) {
            strcpy(buf, name);
            func_800A6344(buf);
            hash = func_800A645C(buf, strlen(name), 0);
            if (h->m_flags & 8) {
                u32 hi = n - 1;
                u32 lo = 0;
                u32 mid;
                u32 x;

                if (hash < ((Blk72 *)e)->m_hash) {
                    return r;
                }
                if (((Blk72 *)(e + hi * step))->m_hash < hash) {
                    return r;
                }
                mid = hi >> 1;
                x = ((Blk72 *)(e + mid * step))->m_hash;
                while (hash != x) {
                    if (x < hash) {
                        lo = mid + 1;
                    } else {
                        hi = mid - 1;
                    }
                    if (hi < lo) {
                        return r;
                    }
                    mid = lo + ((hi - lo) >> 1);
                    x = ((Blk72 *)(e + mid * step))->m_hash;
                }
                r = (Blk72 *)(e + mid * step);
            } else {
                while (hash != ((Blk72 *)e)->m_hash) {
                    if (!--n) {
                        return r;
                    }
                    e += step;
                }
                r = (Blk72 *)e;
            }
        }
    }
    return r;
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_72", func_800A1EFC);
#endif

/* A file's header read; its entries' sectors made positions on the CD. */
Hdr72 *func_800A207C(char *name, void *buf) {
    CdlFILE fp;
    Hdr72 *h = 0;
    u32 i;

    if (func_800A1C74(&fp, name)) {
        int step;
        u8 *e;

        h = (Hdr72 *)func_800A1CF8(2, &fp.pos, 0x800, buf);
        step = func_800A1BEC((Item72 *)h);
        i = 0;
        if (h->m_count) {
            e = (u8 *)h + 0x18;
            do {
                CdIntToPos(CdPosToInt(&fp.pos) + ((*(u32 *)e + 0x7FF) >> 11), (CdlLOC *)e);
                e += step;
                i++;
            } while (i < h->m_count);
        }
    }
    if (h) {
        h->m_08 = 0;
    }
    return h;
}

/* A block read into buf (allocated if none is given), read again once if its
 * CRC is wrong; its size to *out. */
void *func_800A2148(Pack72 *h, Blk72 *b, void *buf, int *out) {
    int tries = 1;
    int ours = buf == 0;
    u32 crc;

again:
    buf = func_800A1CF8(0, &b->m_loc, b->m_size, buf);
    func_800A63FC();
    crc = func_800A645C(buf, b->m_size, 0);
    func_800A6448();
    if (b->m_crc != crc) {
        if (tries) {
            if (ours) {
                free(buf);
                buf = 0;
            }
            tries--;
            goto again;
        }
        func_800A5DA4("Unrecoverable CRC error on block load.\n");
    }
    if (out) {
        *out = b->m_size;
    }
    return buf;
}

void *func_800A2234(Pack72 *h, char *name, void *buf, int *out) {
    Blk72 *b = func_800A1EFC(h, name);

    if (b) {
        buf = func_800A2148(h, b, buf, out);
    }
    return buf;
}

void func_800A2290(void) {
    func_80015210();
}

void func_800A22B0(void) {
    func_800152E4();
}

int func_800A22D0(void) {
    return 1;
}

void func_800A22D8(void) {
    func_80014CB8();
}

void func_800A22F8(int a) {
    D_800C9F34 = a;
}

/* n bytes of d set to c, by words where it can. */
void func_800A2304(u8 *d, u32 c, int n) {
    int k;

    if (n >= 7) {
        c |= c << 8;
        c |= c << 16;
        k = 4 - ((u32)d & 3);
        n -= k;
        while (k) {
            *d++ = c;
            k--;
        }
        k = n >> 2;
        n &= 3;
        while (k) {
            *(u32 *)d = c;
            d += 4;
            k--;
        }
    }
    while (n) {
        *d++ = c;
        n--;
    }
}

#ifdef NON_MATCHING
/* The two endings in the other order, and punct + 0x1F folded (23 off) */
/* A character's glyph. */
int func_800A2380(int ch) {
    int range = 0;
    int punct = 0;

    ch &= 0xFF;
    if ((u32)(ch - 0x20) < 16) {
        punct = 1;
    } else if ((u32)(ch - 0x30) < 10) {
        range = 0;
    } else if ((u32)(ch - 0x3A) < 7) {
        punct = 0xB;
    } else if ((u32)(ch - 0x41) < 26) {
        range = 1;
    } else if ((u32)(ch - 0x5B) < 6) {
        punct = 0x25;
    } else if ((u32)(ch - 0x61) < 26) {
        range = 2;
    } else if ((u32)(ch - 0x7B) < 4) {
        punct = 0x3F;
    } else {
        func_800A5DA4("bad ASCII code 0x%x\n", ch);
        return 0;
    }
    if (punct) {
        return D_800BC8C8[ch - (punct + 0x1F)];
    }
    return D_800BC8BC[range].m_glyph + ch - D_800BC8BC[range].m_char;
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_72", func_800A2380);
#endif

void func_800A2490(void) {
    int ch = _card_chan();

    D_800D6094[0] = 0;
    D_800D6070[0] = ch;
    D_800D60A0[0]++;
}

void func_800A24CC(void) {
    int ch = _card_chan();

    D_800D6094[0] = 1;
    D_800D6070[0] = ch;
    D_800D60A0[1]++;
}

void func_800A2510(void) {
    int ch = _card_chan();

    D_800D6094[0] = 2;
    D_800D6070[0] = ch;
    D_800D60A0[2]++;
}

void func_800A2554(void) {
    int ch = _card_chan();

    D_800D6094[0] = 3;
    D_800D6070[0] = ch;
    D_800D60A0[3]++;
}

void func_800A2598(void) {
    int ch = _card_chan();

    D_800D60C0[0] = 0;
    D_800D6070[0] = ch;
    D_800D60C8[0]++;
}

void func_800A25D4(void) {
    int ch = _card_chan();

    D_800D60C0[0] = 1;
    D_800D6070[0] = ch;
    D_800D60C8[1]++;
}

void func_800A2618(void) {
    int ch = _card_chan();

    D_800D60C0[0] = 2;
    D_800D6070[0] = ch;
    D_800D60C8[2]++;
}

void func_800A265C(void) {
    int ch = _card_chan();

    D_800D60C0[0] = 3;
    D_800D6070[0] = ch;
    D_800D60C8[3]++;
}

/* The events' counts cleared. */
void func_800A26A0(void) {
    int i;

    for (i = 0; i < 4; i++) {
        D_800D60A0[i] = D_800D60C8[i] = 0;
    }
}

/* The card's events opened (their handlers above), then enabled. */
void func_800A26DC(void) {
    EnterCriticalSection();
    D_800D6080[0] = OpenEvent(0xF4000001, 4, 0x1000, func_800A2490);
    D_800D60B8[0] = OpenEvent(0xF4000001, 0x8000, 0x1000, func_800A24CC);
    D_800D6078[0] = OpenEvent(0xF4000001, 0x100, 0x1000, func_800A2510);
    D_800D6088[0] = OpenEvent(0xF4000001, 0x2000, 0x1000, func_800A2554);
    D_800D607C[0] = OpenEvent(0xF0000011, 4, 0x1000, func_800A2598);
    D_800D60B0[0] = OpenEvent(0xF0000011, 0x8000, 0x1000, func_800A25D4);
    D_800D6074[0] = OpenEvent(0xF0000011, 0x100, 0x1000, func_800A2618);
    D_800D6084[0] = OpenEvent(0xF0000011, 0x2000, 0x1000, func_800A265C);
    ExitCriticalSection();
    EnableEvent(D_800D6080[0]);
    EnableEvent(D_800D60B8[0]);
    EnableEvent(D_800D6078[0]);
    EnableEvent(D_800D6088[0]);
    EnableEvent(D_800D607C[0]);
    EnableEvent(D_800D60B0[0]);
    EnableEvent(D_800D6074[0]);
    EnableEvent(D_800D6084[0]);
}

/* The card's events closed. */
void func_800A28B8(void) {
    DisableEvent(D_800D6080[0]);
    DisableEvent(D_800D60B8[0]);
    DisableEvent(D_800D6078[0]);
    DisableEvent(D_800D6088[0]);
    DisableEvent(D_800D607C[0]);
    DisableEvent(D_800D60B0[0]);
    DisableEvent(D_800D6074[0]);
    DisableEvent(D_800D6084[0]);
    EnterCriticalSection();
    CloseEvent(D_800D6080[0]);
    CloseEvent(D_800D60B8[0]);
    CloseEvent(D_800D6078[0]);
    CloseEvent(D_800D6088[0]);
    CloseEvent(D_800D607C[0]);
    CloseEvent(D_800D60B0[0]);
    CloseEvent(D_800D6074[0]);
    CloseEvent(D_800D6084[0]);
    ExitCriticalSection();
}

void func_800A29E0(void) {
    TestEvent(D_800D6080[0]);
    TestEvent(D_800D60B8[0]);
    TestEvent(D_800D6078[0]);
    TestEvent(D_800D6088[0]);
    D_800D6094[0] = -1;
}

void func_800A2A40(void) {
    TestEvent(D_800D607C[0]);
    TestEvent(D_800D60B0[0]);
    TestEvent(D_800D6074[0]);
    TestEvent(D_800D6084[0]);
    D_800D60C0[0] = -1;
}

int func_800A2AA0(void) {
    return D_800D6094[0];
}

int func_800A2AB0(void) {
    return D_800D60C0[0];
}

INCLUDE_RODATA("asm/langimg/nonmatchings/chunk_72", D_800B7B60);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_72", func_800A2AC0);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_72", func_800A2DA8);
