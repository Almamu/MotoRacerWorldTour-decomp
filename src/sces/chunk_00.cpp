#include "common.h"
#include "sces/boot.h"
#include "sces/movie.h"

INCLUDE_ASM("asm/sces/nonmatchings/chunk_00", func_80133334);

INCLUDE_ASM("asm/sces/nonmatchings/chunk_00", func_80133AE4);

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

#ifdef NON_MATCHING
/* Equivalent; the original keeps the addresses of D_8014D340 and D_8014D228
 * in $v1 and $a2, this build in $v0 and $v1. The second argument (passed by
 * the caller) isn't used. */
void strInit(CdlLOC *loc, int unused, StrCallback callback, int mode) {
    func_8013AB7C(0); /* DecDCTReset(0) in the sample */
    func_801365F8();
    D_8014D340 = 0;
    DecDCToutCallback(callback);
    StSetRing(D_8014D228, 32);
    StSetStream(1, 1, 0xFFFFFFFF, 0, 0);
    strKickCD(loc, mode);
}
#else
INCLUDE_ASM("asm/sces/nonmatchings/chunk_00", strInit);
#endif

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

INCLUDE_ASM("asm/sces/nonmatchings/chunk_00", func_80134948);

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

INCLUDE_ASM("asm/sces/nonmatchings/chunk_00", func_80134CA0);

INCLUDE_ASM("asm/sces/nonmatchings/chunk_00", Startup);
