#include "common.h"

INCLUDE_ASM("asm/sces/nonmatchings/chunk_01", func_80135024);

INCLUDE_ASM("asm/sces/nonmatchings/chunk_01", func_80135090);

INCLUDE_ASM("asm/sces/nonmatchings/chunk_01", func_801350FC);

INCLUDE_ASM("asm/sces/nonmatchings/chunk_01", func_80135168);

INCLUDE_ASM("asm/sces/nonmatchings/chunk_01", func_801351D4);

INCLUDE_ASM("asm/sces/nonmatchings/chunk_01", func_80135228);

INCLUDE_ASM("asm/sces/nonmatchings/chunk_01", func_801354B0);

INCLUDE_ASM("asm/sces/nonmatchings/chunk_01", func_801354D4);

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

extern u32 Crc32Table[256];

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
