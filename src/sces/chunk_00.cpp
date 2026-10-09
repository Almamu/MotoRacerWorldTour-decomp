#include "common.h"
#include "sces/boot.h"
#include "sces/movie.h"

INCLUDE_ASM("asm/sces/nonmatchings/chunk_00", func_80133334);

/* The screen for movies: 24-bit display, two w x h buffers one above the
 * other, both cleared. */
void func_80133AE4(int w, int h) {
    RECT rect;
    DRAWENV *draw;

    ResetGraph(3);
    SetGraphDebug(0);
    SetDefDispEnv(&D_8014D260[0], 0, 0, w, h);
    SetDefDispEnv(&D_8014D260[1], 0, 256, w, h);
    SetVideoMode(1);
    D_8014D260[0].screen.x = D_8014D260[1].screen.x = 0;
    D_8014D260[0].screen.y = D_8014D260[1].screen.y = 14;
    SetDefDrawEnv(&D_8014D288[0], 0, 0, w, h);
    draw = &D_8014D288[1];
    SetDefDrawEnv(draw, 0, 256, w, h);
    D_8014D260[0].screen.w = D_8014D260[1].screen.w = 256;
    D_8014D260[0].screen.h = D_8014D260[1].screen.h = 256;
    D_8014D288[0].isbg = D_8014D288[1].isbg = 0;
    D_8014D288[0].dtd = D_8014D288[1].dtd = 0;
    D_8014D288[0].r0 = 0;
    D_8014D288[0].g0 = 0;
    D_8014D288[0].b0 = 0;
    draw->r0 = 0;
    draw->g0 = 0;
    draw->b0 = 0;
    D_8014D260[0].isrgb24 = 1;
    D_8014D260[1].isrgb24 = 1;
    rect.x = 0;
    rect.y = 0;
    rect.w = 480;
    rect.h = 256;
    DrawSync(0);
    ClearImage(&rect, 0, 0, 0);
    DrawSync(0);
    rect.x = 0;
    rect.y = 256;
    rect.w = 480;
    rect.h = 256;
    DrawSync(0);
    ClearImage(&rect, 0, 0, 0);
    DrawSync(0);
    PutDispEnv(&D_8014D260[D_8014D348]);
    PutDrawEnv(&D_8014D288[D_8014D348 ^ 1]);
    VSync(0);
}

/* DecDCTout's callback: sends the decoded slice to VRAM and starts the next
 * one, or flips the frame buffers when the frame is done. */
void strCallback(void) {
    if (D_801C646C) {
        StCdInterrupt();
        D_801C646C = 0;
    }
    DrawSync(0);
    LoadImage(&D_8014D22C.slice, (u_long *)D_8014D22C.imgbuf);
    DrawSync(0);
    D_8014D22C.slice.x += D_8014D22C.slice.w;
    if (D_8014D22C.slice.x < D_8014D22C.rect[D_8014D22C.rectid].x + D_8014D22C.rect[D_8014D22C.rectid].w) {
        DecDCTout((u_long *)D_8014D22C.imgbuf, D_8014D22C.slice.w * D_8014D22C.slice.h / 2);
    } else {
        D_8014D22C.isdone = 1;
        D_8014D22C.rectid ^= 1;
        D_8014D22C.slice.x = D_8014D22C.rect[D_8014D22C.rectid].x;
        D_8014D22C.slice.y = D_8014D22C.rect[D_8014D22C.rectid].y;
    }
}

/* The next frame from the ring buffer, or 0. Also tracks the frame number,
 * flags the end of the movie, fades the CD audio out near it, and centres
 * the picture when its size changes. */
u_long *strNext(DECENV *dec) {
    u_long *addr;
    StHEADER *sector;
    int cnt = 100000;
    u_long max;

    while (StGetNext(&addr, (u_long **)&sector)) {
        if (--cnt == 0) {
            return 0;
        }
    }
    max = D_8014D0E4;
    if (max < sector->frameCount) {
        max = sector->frameCount;
    }
    D_8014D0E4 = max;
    D_8014D0D4 = sector->frameCount;
    if (D_8014D350[D_8014D358].unk10 == 1) {
        if (sector->frameCount >= D_8014D354 - 5) {
            D_8014D340 = 1;
        }
    } else {
        if (sector->frameCount >= D_8014D354 - 5) {
            D_8014D340 = 1;
        }
        if (sector->frameCount >= D_8014D354 - 11) {
            D_8014D34C -= 0xCC000;
            SsSetSerialVol(0, (D_8014D34C * 2) >> 16, (D_8014D34C * 2) >> 16);
        }
    }
    if (sector->type != 0x8001) {
        printf("Not Str Header %04x %04x\n", sector->id, sector->type);
        StFreeRing(addr);
        return 0;
    }
    if (addr[0] != sector->headm || addr[1] != sector->headv) {
        printf("header is wrong!\n");
        return 0;
    }
    if (D_8014D0C8 != sector->width || D_8014D0CC != sector->height) {
        D_8014D0C8 = sector->width;
        D_8014D0CC = sector->height;
        dec->rect[0].x = D_8014D288[0].ofs[0] + (D_8014D288[0].clip.w * 3 / 2 >> 1) - (D_8014D0C8 * 3 / 2 >> 1);
        dec->rect[0].y = D_8014D288[0].ofs[1] + (D_8014D288[0].clip.h >> 1) - (D_8014D0CC >> 1);
        dec->rect[1].x = D_8014D288[1].ofs[0] + (D_8014D288[1].clip.w * 3 / 2 >> 1) - (D_8014D0C8 * 3 / 2 >> 1);
        dec->rect[1].y = D_8014D288[1].ofs[1] + (D_8014D288[1].clip.h >> 1) - (D_8014D0CC >> 1);
    }
    dec->rect[0].w = dec->rect[1].w = D_8014D0C8 * 3 / 2;
    dec->rect[0].h = dec->rect[1].h = D_8014D0CC;
    dec->slice.h = D_8014D0CC;
    return addr;
}

/* Starts streaming: XA filter on file 1 channel 1, seek, then read at
 * double speed (mode 1: 0x168) or with the ADPCM bit too (0x1E8). */
void strKickCD(CdlLOC *loc, int mode) {
    CdlFILTER filter;
    u_char result[8];

    filter.file = 1;
    filter.chan = 1;
    CdControlB(0x0D, (u_char *)&filter, result);
    CdControlB(0x15, (u_char *)loc, 0);
    if (mode == 1) {
        while (CdRead2(0x168) == 0) {
        }
    } else {
        while (CdRead2(0x1E8) == 0) {
        }
    }
}

/* Waits for the frame to finish decoding, giving up after a while. */
void strSync(DECENV *dec) {
    volatile u_long cnt = 100000;

    while (dec->isdone == 0) {
        if (--cnt == 0) {
            printf("time out in decoding !\n");
            dec->isdone = 1;
            dec->rectid = dec->rectid ^ 1;
            dec->slice.x = dec->rect[dec->rectid].x;
            dec->slice.y = dec->rect[dec->rectid].y;
        }
    }
    dec->isdone = 0;
}

/* Decodes the VLC of the next frame into the other VLC buffer; -1 when no
 * frame came. */
int strNextVlc(DECENV *dec) {
    int cnt = 100000;
    u_long *next;

    while ((next = strNext(dec)) == 0) {
        if (--cnt == 0) {
            return -1;
        }
    }
    dec->vlcid ^= 1;
    func_80136644(next, dec->vlcbuf[dec->vlcid]);
    StFreeRing(next);
    return 0;
}

void strInit(CdlLOC *loc, int unused, StrCallback callback, int mode) {
    DecDCTReset(0); /* DecDCTReset(0) in the sample */
    func_801365F8();
    D_8014D340 = 0;
    DecDCToutCallback(callback);
    StSetRing(D_8014D228, 32);
    StSetStream(1, 1, 0xFFFFFFFF, 0, 0);
    strKickCD(loc, mode);
}

// The statement order is what gives the original's scheduling.
void strSetDefDecEnv(DECENV *dec, int x0, int y0, int x1, int y1, int w, int h) {
    dec->vlcid = 0;
    dec->rectid = 0;
    dec->isdone = 0;
    dec->rect[0].x = x0;
    dec->rect[0].y = y0;
    dec->imgbuf = D_801C0A60;
    dec->rect[1].x = x1;
    dec->slice.x = x0;
    dec->vlcbuf[0] = D_8014D0C0;
    dec->vlcbuf[1] = D_8014D0C4;
    dec->slice.y = y0;
    dec->rect[0].w = w * 3;
    dec->rect[0].h = h;
    dec->rect[1].w = w * 3;
    dec->rect[1].h = h;
    dec->rect[1].y = y1;
    dec->slice.h = h;
    dec->slice.w = 24;
}

/* Shows buffer id and draws into the other one. */
void func_801343A0(int id) {
    PutDispEnv(&D_8014D260[id]);
    PutDrawEnv(&D_8014D288[id ^ 1]);
}

void func_80134404(int *key) {
    if (*key == 0xFF) {
        D_8014D0F4 = 1;
    }
}

void func_80134424(int *key) {
    if (*key == 0xFF) {
        D_8014D0F0 = 1;
    }
}

INCLUDE_ASM("asm/sces/nonmatchings/chunk_00", func_80134444);

#ifdef NON_MATCHING
/* Equivalent as far as read; the original assigns the registers and
 * the stack frame differently throughout */
/* Decodes a BS picture with the MDEC into VRAM at x, y, using buf (base,
 * size) as scratch: 16 pixels wide strips; an "MCOL" picture is a table of
 * separately coded strips. In 16-bit mode near-black pixels become 0
 * (transparent). Returns 1 if anything was shown. */
int func_80134948(CPair *buf, void *image_, int mode, int x, int y) {
    u8 *image = (u8 *)image_;
    RECT rect;
    int ok = 0;
    u8 *data = image + 8;
    int cols;
    int i;
    u8 *col;
    int size;
    int words;
    u_long *out;
    short *p;
    int k;
    short c;

    if (bcmp(data, "MCOL", 4) == 0) {
        cols = *(u16 *)(image + 4) >> 4;
        i = 0;
        col = image + cols * 4 + 0xC;
        DecDCTReset(0);
        func_801365F8();
        if (cols == 0) {
            return ok;
        }
        do {
            size = DecDCTBufSize((u_long *)col);
            words = (mode + 2) * (*(u16 *)(image + 6) * 4);
            out = (u_long *)(buf->m_00 + size * 4 + 4);
            if (size * 4 + words * 4 < buf->m_04) {
                func_80136644((u_long *)col, (u_long *)buf->m_00);
                DecDCTin((u_long *)buf->m_00, mode);
                rect.w = 16;
                rect.y = y;
                rect.x = x + i * 16;
                rect.h = *(u16 *)(image + 6);
                DecDCTout(out, words);
                DecDCToutSync(0);
                if (mode) {
                    func_80134444(buf, out, 16, *(u16 *)(image + 6));
                } else {
                    p = (short *)out;
                    for (k = 0; k < words * 2; k++) {
                        c = p[k];
                        if ((c & 0x1F) < 3 || (c & 0x3E0) < 0x41 || (c & 0x7C00) < 0x801) {
                            p[k] = 0;
                        }
                    }
                }
                LoadImage(&rect, out);
                ok = 1;
            } else {
                printf("MDEC Tmp Buffer size is more lower ");
            }
            i++;
            col += (((u32 *)data)[i] >> 2) << 2;
        } while (i < cols);
        return ok;
    }
    size = DecDCTBufSize((u_long *)data);
    out = (u_long *)(buf->m_00 + size * 4 + 4);
    words = *(u16 *)(image + 6) * 8;
    if (size * 4 + *(u16 *)(image + 6) * 32 < buf->m_04) {
        DecDCTReset(0);
        func_801365F8();
        func_80136644((u_long *)data, (u_long *)buf->m_00);
        DecDCTin((u_long *)buf->m_00, 0);
        rect.y = y;
        rect.w = 16;
        rect.h = *(u16 *)(image + 6);
        for (rect.x = x; rect.x < x + *(u16 *)(image + 4); rect.x += 16) {
            DecDCTout(out, words);
            DecDCToutSync(0);
            LoadImage(&rect, out);
            DrawSync(0);
        }
        ok = 1;
        return ok;
    }
    printf("MDEC Tmp Buffer size is more lower ");
    return ok;
}
#else
INCLUDE_ASM("asm/sces/nonmatchings/chunk_00", func_80134948);
#endif

void CPair::Set(int a, int b) {
    m_00 = a;
    m_04 = b;
}

CPair::~CPair() {
}

CPair::CPair() {
    m_00 = 0;
    m_04 = 0;
}

/* A bevelled frame, 3 pixels wide, around the 128x43 box at x, y: four
 * flat quads drawn at once. */
void func_80134CA0(int x, int y, int color) {
    POLY_F4 p;
    char c = color;

    ((u_char *)&p.tag)[3] = 5;
    p.code = 0x28;
    p.r0 = c;
    p.g0 = c;
    p.b0 = c;
    p.x0 = x;
    p.y0 = y;
    p.x1 = x - 3;
    p.y1 = y - 3;
    p.x2 = x + 128;
    p.y2 = y;
    p.x3 = x + 131;
    p.y3 = y - 3;
    func_8013C6F0(&p);
    ((u_char *)&p.tag)[3] = 5;
    p.code = 0x28;
    p.r0 = c;
    p.g0 = c;
    p.b0 = c;
    p.x0 = x + 128;
    p.y0 = y;
    p.x1 = x + 131;
    p.y1 = y - 3;
    p.x2 = x + 128;
    p.y2 = y + 43;
    p.x3 = x + 131;
    p.y3 = y + 46;
    func_8013C6F0(&p);
    ((u_char *)&p.tag)[3] = 5;
    p.code = 0x28;
    p.r0 = c;
    p.g0 = c;
    p.b0 = c;
    p.x0 = x;
    p.y0 = y;
    p.x1 = x - 3;
    p.y1 = y - 3;
    p.x2 = x;
    p.y2 = y + 43;
    p.x3 = x - 3;
    p.y3 = y + 46;
    func_8013C6F0(&p);
    ((u_char *)&p.tag)[3] = 5;
    p.code = 0x28;
    p.r0 = c;
    p.g0 = c;
    p.b0 = c;
    p.x0 = x;
    p.y0 = y + 43;
    p.x1 = x - 3;
    p.y1 = y + 46;
    p.x2 = x + 128;
    p.y2 = y + 43;
    p.x3 = x + 131;
    p.y3 = y + 46;
    func_8013C6F0(&p);
}

/* The language choice: shows the picture, then moves a frame over a 3x2
 * grid until a choice is made or about 500 frames pass. The game reads the
 * choice (column + 3 * row) at 0x80010004. Also opens MR3.DAT and loads the
 * game (data\\LANGIMG.DAT) first. */
void Startup(void) {
    Choice choice;
    RECT rect;
    u32 size;
    int count = 1000;

    func_80135D34(0);
    D_8019D480 = OpenArchive("\\MR3.DAT;1", (void *)0x80010008);
    LoadFile("data\\LANGIMG.DAT", (u8 *)0x800117F0, &size);
    func_80134948(&D_8014D3F8, D_801A6C10, 1, 0, 0);
    rect.x = 0;
    rect.y = 0;
    rect.w = 640;
    rect.h = 256;
    StoreImage(&rect, (u_long *)D_8014D480);
    *(u32 *)0x80010000 = 0x12345670;
    D_8014D3F4 = (u32 *)0x80010004;
    do {
        func_8013FA3C(D_8014D35C, &choice);
        DrawSync(0);
        rect.y = (D_8019DA5C ^ 1) << 8;
        LoadImage(&rect, (u_long *)D_8014D480);
        DrawSync(0);
        count -= 2;
        func_80134CA0(choice.col * 160 + 96, choice.row * 77 + 68, (D_8019DA5C << 7) | 0x40);
        VSync(2);
        func_80136450();
        if (count < 0) {
            SsUtKeyOn(D_8019D990, 0, 0, 0x71, 0, 0x7F, 0x7F);
            break;
        }
    } while (choice.done == 0);
    func_80136540();
    *D_8014D3F4 = choice.col + choice.row * 3;
}

/* An unreferenced copy of the path: the first .rodata of the next source
 * file (the one starting with func_80135024), where something that was
 * compiled out used it. Identical literals are merged within a file, so it
 * can't come from Startup; spelled out until the chunks follow the
 * original files. */
extern "C" const char D_8014C38C[] = "\\MR3.DAT;1";
