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

/* Empty in this build; the caller (func_80135D34) tests what it returns. */
int func_801354FC(void) {
}

/* Empty in this build; the caller (func_80135D34) tests what it returns. */
int func_80135504(void) {
}

/* Empty in this build. */
void func_8013550C(int arg) {
}

INCLUDE_ASM("asm/sces/nonmatchings/chunk_01", LzssDecompress);

INCLUDE_ASM("asm/sces/nonmatchings/chunk_01", LoadFile);

INCLUDE_ASM("asm/sces/nonmatchings/chunk_01", func_80135780);

INCLUDE_ASM("asm/sces/nonmatchings/chunk_01", FindEntry);

INCLUDE_ASM("asm/sces/nonmatchings/chunk_01", OpenArchive);

/* Reads an entry of arc into dest (allocated when 0), checking its CRC;
 * one retry. */
void *LoadEntry(Archive *arc, const char *name, void *dest, u32 *size) {
    ArchiveEntry *e;
    int retries;
    int allocated;

    e = FindEntry(arc, name);
    retries = 1;
    if (e) {
        allocated = dest == 0;
    retry:
        dest = func_80135780(0, (CdlLOC *)&e->loc, e->size, dest);
        if (e->crc != Crc32((u8 *)dest, e->size, 0)) {
            if (retries) {
                if (allocated) {
                    free(dest);
                    dest = 0;
                }
                retries--;
                goto retry;
            }
            printf("Unrecoverable CRC error on block load.\n");
        }
        if (size) {
            *size = e->size;
        }
    }
    return dest;
}

int func_80135D34(int arg) {
    CdInit();
    func_80136E74(0);
    func_8013550C(arg);
    if (func_80135504() == 0) {
        return -1;
    }
    if (func_801354FC() == 0) {
        return -1;
    }
    return 1;
}

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

/* Upper-cases s in place. */
char *StrUpper(char *s) {
    char *p = s;

    while (*p) {
        if (*p >= 'a' && *p <= 'z') {
            *p -= 0x20;
        }
        p++;
    }
    return s;
}

/* Sound off: reverb, master volume, the menu bank, then libsnd. */
void func_80135F10(void) {
    SsUtReverbOff();
    SpuClearReverbWorkArea(5);
    SsUtSetReverbType(0);
    SsUtSetReverbDepth(0, 0);
    SsSetMVol(0, 0);
    if (D_8019D990 != -1) {
        SsVabClose(D_8019D990);
    }
    SsEnd();
    SsQuit();
}

INCLUDE_RODATA("asm/sces/nonmatchings/chunk_01", D_8014C3C0);

INCLUDE_ASM("asm/sces/nonmatchings/chunk_01", func_80135F84);

/* Master volume to full. */
void func_80136028(void) {
    SsSetMVol(127, 127);
}

/* Reverb on: type 5, depth 32. */
void func_8013604C(void) {
    SsUtReverbOff();
    SpuClearReverbWorkArea(5);
    SsUtSetReverbType(5);
    SsUtSetReverbDepth(32, 32);
    SsUtReverbOn();
}

/* Reverb off. */
void func_80136090(void) {
    SsUtReverbOff();
    SpuClearReverbWorkArea(5);
    SsUtSetReverbType(0);
    SsUtSetReverbDepth(0, 0);
}

/* Sends the menu sound bank's body to the SPU; -1 if there's none or it
 * fails. The unused buffer is in the original's stack frame too. */
int func_801360CC(void) {
    char buf[128];

    if (D_8019D990 == -1) {
        return -1;
    }
    if (SsVabTransBody(D_8019E8AC, D_8019D990) == D_8019D990) {
        SsVabTransCompleted(1);
        return 0;
    }
    printf(D_8014C3C0);
    return -1;
}

INCLUDE_ASM("asm/sces/nonmatchings/chunk_01", func_80136130);

/* Waits for the frame, then shows the buffer just drawn. */
void func_80136450(void) {
    DrawSync(0);
    VSync(0);
    PutDrawEnv(&D_8019DA80[D_8019DA5C]);
    PutDispEnv(&D_8019DB38[D_8019DA5C]);
    D_8019DA5C ^= 1;
}

#ifdef NON_MATCHING
/* Equivalent; after the first free() the original puts D_8019DB68's
 * address in $a1, this build in $v0. strInit has the same quirk: the
 * original takes the first argument register the call leaves free */
int func_801364D4(void) {
    EnterCriticalSection();
    VSyncCallback(0);
    DrawSyncCallback(0);
    ExitCriticalSection();
    D_8019DA60 = 0;
    D_8019DA64 = 0;
    D_8019DA68 = 0;
    free(D_8019DB64);
    free(D_8019DB68);
    return 1;
}
#else
INCLUDE_ASM("asm/sces/nonmatchings/chunk_01", func_801364D4);
#endif

/* Clears VRAM, and copies line 510 to 511. */
void func_80136540(void) {
    RECT rect;

    DrawSync(0);
    rect.x = 0;
    rect.y = 0;
    rect.w = 640;
    rect.h = 512;
    ClearImage(&rect, 0, 0, 0);
    rect.x = 0;
    rect.y = 510;
    rect.w = 640;
    rect.h = 1;
    MoveImage(&rect, 0, 511);
    DrawSync(0);
}

/* Vblanks since D_8019DA50. */
void func_801365C0(void) {
    D_8019DA54 = VSync(1) - D_8019DA50;
}

void func_801365F0(void) {
}

