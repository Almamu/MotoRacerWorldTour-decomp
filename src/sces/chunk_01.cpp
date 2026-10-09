#include "common.h"
#include "sces/boot.h"

void func_80135024(int *key, Options *opt) {
    if (*key == 0xFF) {
        if (++opt->unk8 >= 2) {
            opt->unk8 = 0;
        }
        SsUtKeyOn(D_8019D990, 0, 1, 0x71, 0, 0x7F, 0x7F);
    }
}

void func_80135090(int *key, Options *opt) {
    if (*key == 0xFF) {
        if (--opt->unk8 < 0) {
            opt->unk8 = 1;
        }
        SsUtKeyOn(D_8019D990, 0, 1, 0x71, 0, 0x7F, 0x7F);
    }
}

void func_801350FC(int *key, Options *opt) {
    if (*key == 0xFF) {
        if (++opt->unk4 >= 3) {
            opt->unk4 = 0;
        }
        SsUtKeyOn(D_8019D990, 0, 1, 0x71, 0, 0x7F, 0x7F);
    }
}

void func_80135168(int *key, Options *opt) {
    if (*key == 0xFF) {
        if (--opt->unk4 < 0) {
            opt->unk4 = 2;
        }
        SsUtKeyOn(D_8019D990, 0, 1, 0x71, 0, 0x7F, 0x7F);
    }
}

void func_801351D4(int *key, int *done) {
    if (*key == 0xFF) {
        *done = 1;
        SsUtKeyOn(D_8019D990, 0, 0, 0x71, 0, 0x7F, 0x7F);
    }
}

INCLUDE_ASM("asm/sces/nonmatchings/chunk_01", func_80135228);

inline void *operator new(unsigned int, void *p) {
    return p;
}

/* Construction and destruction of the global CPair. GCC emits these as
 * _GLOBAL_.I/.D functions at the end of the source file defining the
 * object; until the chunks become the original files they're spelled out. */
void func_801354B0(void) {
    new (&D_8014D3F8) CPair;
}

void func_801354D4(void) {
    D_8014D3F8.~CPair();
}

INCLUDE_ASM("asm/sces/nonmatchings/chunk_01", func_801354FC);

INCLUDE_ASM("asm/sces/nonmatchings/chunk_01", func_80135504);

INCLUDE_ASM("asm/sces/nonmatchings/chunk_01", func_8013550C);

INCLUDE_ASM("asm/sces/nonmatchings/chunk_01", LzssDecompress);

INCLUDE_ASM("asm/sces/nonmatchings/chunk_01", LoadFile);

INCLUDE_ASM("asm/sces/nonmatchings/chunk_01", func_80135780);

INCLUDE_ASM("asm/sces/nonmatchings/chunk_01", FindEntry);

INCLUDE_ASM("asm/sces/nonmatchings/chunk_01", OpenArchive);

INCLUDE_ASM("asm/sces/nonmatchings/chunk_01", func_80135C54);

INCLUDE_ASM("asm/sces/nonmatchings/chunk_01", func_80135D34);

/* CRC-32 of len bytes at p, continuing from crc: bytes up to a word
 * boundary, then whole words, then the rest of the last word. */
u32 Crc32(u8 *p, s32 len, u32 crc)
{
    u32 *table = Crc32Table;
    s32 n;
    s32 w;

    if ((s32)p & 3) {
        n = 4 - ((s32)p & 3);
        while (len != 0) {
            if (n == 0)
                break;
            n--;
            crc = table[(*p++ ^ crc) & 0xFF] ^ (crc >> 8);
            len--;
        }
    }
    n = len & 3;
    len >>= 2;
    while (len != 0) {
        w = *(s32 *)p;
        p += 4;
        len--;
        crc = table[(crc ^ w) & 0xFF] ^ (crc >> 8);
        w >>= 8;
        crc = table[(crc ^ w) & 0xFF] ^ (crc >> 8);
        w >>= 8;
        crc = table[(crc ^ w) & 0xFF] ^ (crc >> 8);
        w >>= 8;
        crc = table[(crc ^ w) & 0xFF] ^ (crc >> 8);
    }
    if (n != 0) {
        w = *(s32 *)p;
        do {
            crc = table[(crc ^ w) & 0xFF] ^ (crc >> 8);
            w >>= 8;
        } while (--n);
    }
    return crc;
}

INCLUDE_ASM("asm/sces/nonmatchings/chunk_01", StrUpper);

INCLUDE_ASM("asm/sces/nonmatchings/chunk_01", func_80135F10);

INCLUDE_RODATA("asm/sces/nonmatchings/chunk_01", D_8014C3C0);

INCLUDE_ASM("asm/sces/nonmatchings/chunk_01", func_80135F84);

INCLUDE_ASM("asm/sces/nonmatchings/chunk_01", func_80136028);

INCLUDE_ASM("asm/sces/nonmatchings/chunk_01", func_8013604C);

INCLUDE_ASM("asm/sces/nonmatchings/chunk_01", func_80136090);

INCLUDE_ASM("asm/sces/nonmatchings/chunk_01", func_801360CC);

INCLUDE_ASM("asm/sces/nonmatchings/chunk_01", func_80136130);

INCLUDE_ASM("asm/sces/nonmatchings/chunk_01", func_80136450);

INCLUDE_ASM("asm/sces/nonmatchings/chunk_01", func_801364D4);

INCLUDE_ASM("asm/sces/nonmatchings/chunk_01", func_80136540);

INCLUDE_ASM("asm/sces/nonmatchings/chunk_01", func_801365C0);

INCLUDE_ASM("asm/sces/nonmatchings/chunk_01", func_801365F0);

INCLUDE_ASM("asm/sces/nonmatchings/chunk_01", func_801365F8);

INCLUDE_ASM("asm/sces/nonmatchings/chunk_01", func_80136644);

INCLUDE_ASM("asm/sces/nonmatchings/chunk_01", func_80136784);

INCLUDE_ASM("asm/sces/nonmatchings/chunk_01", func_80136900);
