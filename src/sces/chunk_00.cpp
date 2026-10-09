#include "common.h"
#include "sces/boot.h"
#include "sces/movie.h"

INCLUDE_ASM("asm/sces/nonmatchings/chunk_00", func_80133334);

INCLUDE_ASM("asm/sces/nonmatchings/chunk_00", func_80133AE4);

INCLUDE_ASM("asm/sces/nonmatchings/chunk_00", func_80133CCC);

INCLUDE_ASM("asm/sces/nonmatchings/chunk_00", func_80133DD0);

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

    while ((next = func_80133DD0(dec)) == 0) {
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

INCLUDE_ASM("asm/sces/nonmatchings/chunk_00", func_80134404);

INCLUDE_ASM("asm/sces/nonmatchings/chunk_00", func_80134424);

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
