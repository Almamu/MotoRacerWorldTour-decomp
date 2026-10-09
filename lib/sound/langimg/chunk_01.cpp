#include "common.h"
#include "psyq.h"
#include "sound.h"

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_01", func_80013764);

void func_80013BA0(SndEmitter *e, int v) {
    if (e->flags & 0x4000) {
        v = v * e->unk1C >> 12;
    }
    e->unk14 = v;
    e->unk1A = v;
}

void func_80013BD4(SndEmitter *e, SndParams *p) {
    int mask = p->mask;
    int flags = e->flags;

    if (mask & 1) {
        func_80013BA0(e, p->unk2);
    }
    if (mask & 2) {
        e->unk16 = p->unk4;
    }
    if (mask & 8) {
        e->unk24 = p->unkC;
    }
    if (mask & 4) {
        e->unk28 = p->unk8;
    }
    if (mask & 0x20) {
        flags |= 8;
        CopyVector(&e->unk50, &p->unk1C);
    }
    if (mask & 0x40) {
        flags |= 8;
        CopyVector(&e->unk5C, &p->unk28);
    }
    if (mask & 0x80) {
        e->unk34 = p->unk14;
        e->unk38 = p->unk18;
        flags |= 0x8008;
    }
    e->flags = flags | 0x100;
}

void func_80013CFC(SndWorld *w) {
    int i;

    func_80013440(w);
    w->unk1 = 0;
    w->unk1C84 = 0;
    w->unk208 = 0;
    w->unk2 = 0;
    w->unk1CC8 = 0;
    w->unk1CF4 = 64;
    w->unk1CF8 = 0;
    for (i = 0; i < 2; i++) {
        func_80013448(&w->listeners[i]);
    }
    for (i = 0; i < 64; i++) {
        w->emitters[i].flags = 0;
    }
    w->nFree = 64;
    for (i = 0; i < 64; i++) {
        w->free[i] = 63 - i;
    }
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_01", func_80013DB8);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_01", func_80013DE0);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_01", func_80013E64);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_01", func_80013F38);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_01", func_800140CC);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_01", func_80014130);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_01", func_80014188);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_01", func_8001427C);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_01", func_800142E0);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_01", func_80014368);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_01", func_800143E0);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_01", func_8001444C);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_01", func_800144B8);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_01", func_80014530);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_01", func_8001456C);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_01", func_800145A8);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_01", func_80014634);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_01", func_8001467C);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_01", func_800146EC);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_01", func_80014724);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_01", func_80014774);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_01", func_800147A4);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_01", func_800147C8);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_01", func_8001480C);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_01", func_8001483C);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_01", func_800148D8);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_01", func_80014A98);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_01", func_80014B18);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_01", func_80014B74);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_01", func_80014BB0);

/* A note's 0x6 field, through a table of note numbers; 0 for none. */
u16 func_80014C24(NoteMap *map, int i) {
    u16 r = 0;

    if (i != -1) {
        int n = map->notes[i];

        if (n != -1) {
            r = *(u16 *)(D_800C4744 + n * 44 + 6);
        }
    }
    return r;
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_01", func_80014C70);
