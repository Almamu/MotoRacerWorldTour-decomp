#include "common.h"
#include "match.h"
#include "sces/boot.h"
#include "sces/movie.h"

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

/* Initialises the hardware, shows two pictures and plays the intro movie
 * (again if the first try fails), runs the language choice (Startup, which
 * also loads the game), shuts everything down and jumps to the game's entry
 * point, the first word of LANGIMG.DAT. GCC calls __main (the constructor
 * list) first by itself. */
int main(void) {
    ResetCallback();
    ResetGraph(0);
    CdInit();
    func_80135F84();
    func_80136130(0, 14, 640, 256, 1, 0x2800, 1, 1);
    func_80136450();
    VSync(20);
    func_80136450();
    func_8013F188(0, 1);
    func_8013EB24(1);
    func_8013F908(20);
    func_801360CC();
    func_80136090();
    func_8013604C();
    VSync(0);
    func_80136028();
    SsSetSerialAttr(0, 0, 1);
    D_8014D3F8.Set((int)D_8014D480, 0x50000);
    func_80134948(&D_8014D3F8, D_801A0514, 1, 0, 0);
    VSync(250);
    func_80136450();
    func_801364D4();
    D_8014D0C0 = (u_long *)D_8014D480;
    D_8014D0C4 = (u_long *)D_80175480;
    if (func_80133334(3, D_8014D400, 5, 0) == 0) {
        VSync(3);
        func_80133334(0, D_8014D400, 5, 0);
        VSync(3);
    }
    func_80136130(0, 14, 640, 256, 1, 0x2800, 1, 1);
    Startup();
    func_801364D4();
    func_80136130(0, 14, 512, 256, 1, 0x2800, 1, 1);
    func_80136450();
    SetDispMask(0);
    func_80134948(&D_8014D3F8, D_801B1310, 1, 0, 0);
    func_80134948(&D_8014D3F8, D_801B1310, 1, 0, 256);
    func_80136450();
    SetDispMask(1);
    func_801364D4();
    func_80135F10();
    SsQuit();
    func_8013F1D0();
    func_8013B35C();
    GAME_ENTRY();
    return 0;
}

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

/* Undoes MR3.DAT's LZSS: a flag byte per 8 items, a set bit is a literal
 * byte, a clear one a 16-bit (offset 12 bits, length 4 bits + 3) copy from
 * the output. Offset 0 ends the stream. Copies are word-wide when the
 * source is at least 4 bytes behind. */
void LzssDecompress(u8 *src, u8 *dst) {
    int bits = 0;
    int flags = 0;
    int off;
    int len;
    int k;
    u8 *from;
    u32 w;

    do {
        flags >>= 1;
        if (bits == 0) {
            bits = 8;
            flags = *src++;
        }
        bits--;
        if (flags & 1) {
            *dst++ = *src++;
            off = 1;
        } else {
            len = src[0] | (src[1] << 8);
            off = len & 0xFFF;
            src += 2;
            if (off == 0) {
                return;
            }
            len = (len >> 12) + 3;
            from = dst - off;
            k = (u32)from & 3;
            if (k) {
                k = 4 - k;
                len -= k;
                do {
                    *dst++ = *from++;
                } while (--k);
            }
            k = len;
            if (off >= 5) {
                k &= 3;
                len >>= 2;
                while (len) {
                    w = *(u32 *)from;
                    from += 4;
                    /* in C, GCC decrements len before the store */
                    STORE_UNALIGNED(dst, w);
                    dst += 4;
                    len--;
                }
            }
            while (k) {
                *dst++ = *from++;
                k--;
            }
        }
    } while (off);
}

/* Reads a file of MR3.DAT into dest, or into a new block when dest is 0, and
 * undoes LZSS. The packed data is read to the end of the buffer (moved there
 * first when dest is given) and decompressed towards its start. */
u8 *LoadFile(const char *name, u8 *dest, u32 *sizeOut) {
    int allocated;
    ArchiveEntry *e;
    u32 size;
    u32 unpacked;
    u32 avail;
    u8 *buf;
    u8 *d, *s, *to;
    u32 n;

    e = FindEntry(D_8019D480, name);
    allocated = 0;
    size = e->size;
    if (dest == 0) {
        allocated = 1;
        avail = func_8014AA98() - 0x10;
        buf = (u8 *)func_8014A454(avail);
        dest = (u8 *)((u32)(buf + avail - size - 0x800) & ~3);
    }
    LoadEntry(D_8019D480, name, dest, 0);
    if (*(u32 *)dest == 0x53535A4C) {
        if (allocated) {
            size = ((u32 *)dest)[1];
            LzssDecompress(dest + 8, buf);
        } else {
            n = size;
            s = dest + size;
            unpacked = ((u32 *)dest)[1];
            /* The packed data is moved to end 0x1400 bytes past where the
             * unpacked data will, so decompressing never overtakes it */
            {
                u32 margin = size - 0x1400;
                d = dest + ((unpacked - margin) & ~3);
            }
            to = d + size;
            for (; n != 0; n--) {
                *--to = *--s;
            }
            LzssDecompress(d + 8, dest);
            size = unpacked;
        }
    } else if (allocated) {
        memcpy(buf, dest, size);
    }
    if (allocated) {
        buf = (u8 *)func_8014A838(buf, size);
    }
    if (sizeOut) {
        *sizeOut = size;
    }
    return buf;
}

/* Reads size bytes at loc into dest (allocated when 0), at double speed,
 * retrying twice on a disc error. Mode 2 reads an archive's header: its
 * first sector gives the entry table's size, which is what gets read. Then
 * the hook D_8019D48C, if set, sees the data. */
void *func_80135780(int mode, CdlLOC *loc, u32 size, void *dest) {
    u_char param[8];
    CdlLOC pos;
    int allocated = 0;
    u32 sectors;
    int retries;
    int n;
    u8 *p;
    int r;
    u32 esize;

    pos = *loc;
    D_8019DB70 = 1;
    VSync(0);
    sectors = (size + 0x7FF) >> 11;
    if (dest == 0) {
        dest = (void *)func_8014A454(sectors << 11);
        allocated = 1;
        if (dest == 0) {
            goto end;
        }
    }
    retries = 2;
retry:
    n = sectors;
    p = (u8 *)dest;
    param[0] = 0x80;
    CdControlB(0x0E, param, 0);
    CdControl(0x06, (u_char *)&pos, 0);
    while (--n != -1) {
        r = CdReady(0, 0);
        if (r == 5) {
        error:
            if (retries == 0) {
                break;
            }
            CdControlB(0x09, 0, 0);
            retries--;
            goto retry;
        }
        if (r == 1) {
            if (CdGetSector(p, 0x200) != r) {
                goto error;
            }
            if (mode == 2 && p == dest) {
                esize = 0;
                if (dest) {
                    esize = ((Archive *)dest)->entrySize;
                    if (esize == 0) {
                        esize = 0x30;
                    }
                }
                size = ((Archive *)dest)->count * esize + 0x10;
                sectors = (size + 0x7FF) >> 11;
                if (allocated) {
                    func_8014A838(dest, sectors << 11);
                }
                p = (u8 *)dest;
                n = sectors - 1;
            }
            p += 0x800;
        }
    }
    CdControlB(0x09, 0, 0);
    if (D_8019D48C) {
        (*D_8019D48C)(dest);
    }
    if (allocated) {
        dest = (void *)func_8014A838(dest, size);
    }
end:
    D_8019DB70 = 0;
    VSync(0);
    return dest;
}

#ifdef NON_MATCHING
/* Equivalent; the control flow matches, but the original swaps the saved
 * registers of arc and found, and of e and count */
/* Looks an entry up by name: a leading backslash dropped, upper-cased,
 * CRC-32 hashed, then a binary search when the entries are sorted. */
ArchiveEntry *FindEntry(Archive *arc, const char *name) {
    char buf[512];
    ArchiveEntry *found = 0;
    ArchiveEntry *e;
    ArchiveEntry *p;
    u32 count;
    u32 esize;
    u32 stride;
    u32 hash;
    u32 lo;
    u32 hi;
    u32 mid;

    if (arc) {
        esize = arc->entrySize;
        e = arc->entries;
        if (esize == 0) {
            esize = 0x30;
        }
        stride = esize;
        count = arc->count;
        if (*name == '\\') {
            name++;
        }
        if (count) {
            strcpy(buf, name);
            StrUpper(buf);
            hash = Crc32((u8 *)buf, strlen(name), 0);
            if (arc->flags & 8) {
                hi = count - 1;
                lo = 0;
                p = (ArchiveEntry *)((u8 *)e + hi * esize);
                if (hash >= e->hash && p->hash >= hash) {
                    mid = hi >> 1;
                    p = (ArchiveEntry *)((u8 *)e + mid * esize);
                    while (p->hash != hash) {
                        if (p->hash < hash) {
                            lo = mid + 1;
                        } else {
                            hi = mid - 1;
                        }
                        if (hi < lo) {
                            goto end;
                        }
                        mid = lo + ((hi - lo) >> 1);
                        p = (ArchiveEntry *)((u8 *)e + mid * stride);
                    }
                    found = p;
                }
            } else {
                while (e->hash != hash) {
                    if (--count == 0) {
                        goto end;
                    }
                    e = (ArchiveEntry *)((u8 *)e + esize);
                }
                found = e;
            }
        }
    }
end:
    return found;
}
#else
INCLUDE_ASM("asm/sces/nonmatchings/chunk_01", FindEntry);
#endif

/* Reads an archive's header sector and turns each entry's byte offset into
 * a CdlLOC. */
Archive *OpenArchive(char *path, void *dest) {
    CdlFILE file;
    CdlFILE *fp = &file;
    Archive *arc = 0;
    int tries;
    CdlFILE *found;
    u32 esize;
    u32 i;
    ArchiveEntry *e;

    D_8019DB70 = 1;
    VSync(0);
    tries = 2;
    do {
        found = CdSearchFile(fp, path);
        tries--;
    } while (found == 0 && tries != 0);
    D_8019DB70 = 0;
    VSync(0);
    if (found) {
        arc = (Archive *)func_80135780(2, &file.pos, 0x800, dest);
        esize = 0;
        e = arc->entries;
        if (arc) {
            esize = arc->entrySize;
            if (esize == 0) {
                esize = 0x30;
            }
        }
        for (i = 0; i < arc->count; i++) {
            CdIntToPos(CdPosToInt(&file.pos) + ((e->loc + 0x7FF) >> 11), (CdlLOC *)&e->loc);
            e = (ArchiveEntry *)((u8 *)e + esize);
        }
    }
    if (arc) {
        arc->unk8 = 0;
    }
    return arc;
}

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
u32 Crc32(u8 *p, s32 len, u32 crc) {
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

/* libsnd on, reverb off, and the menu sound bank's header opened. */
int func_80135F84(void) {
    SsInit();
    SsUtReverbOff();
    SpuClearReverbWorkArea(5);
    SsUtSetReverbType(0);
    SsUtSetReverbDepth(0, 0);
    SsSetTableSize(D_8019D994, 1, 1);
    SsSetTickMode(1);
    SsStart();
    D_8019D990 = SsVabOpenHead(D_8019DC88, -1);
    if (D_8019D990 == -1) {
        printf("VAB header open failed\n");
        return -1;
    }
    return 0;
}

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

/* Graphics: the double-buffered draw and display environments (one above
 * the other unless h > 256), PAL/NTSC, the screen position (-1: default),
 * then the ordering table and the primitive buffer. 0 if out of memory.
 * The unused RECT is in the original's frame too. */
int func_80136130(int x, int y, int w, int h, int mode, int otSize, int primCount, int clear) {
    RECT unused;
    DRAWENV *draw;

    ResetGraph(3);
    SetGraphDebug(0);
    EnterCriticalSection();
    VSyncCallback(func_801365F0);
    DrawSyncCallback(func_801365C0);
    ExitCriticalSection();
    InitGeom();
    SetGeomScreen(256);
    if (h <= 256) {
        SetDefDrawEnv(&D_8019DA80[0], 0, 0, w, h);
        SetDefDrawEnv(&D_8019DA80[1], 0, 256, w, h);
        SetDefDispEnv(&D_8019DB38[0], 0, 256, w, h);
        SetDefDispEnv(&D_8019DB38[1], 0, 0, w, h);
        D_8019DB60 = 0;
    } else {
        SetDefDrawEnv(&D_8019DA80[0], 0, 0, w, h);
        SetDefDrawEnv(&D_8019DA80[1], 0, 0, w, h);
        SetDefDispEnv(&D_8019DB38[0], 0, 0, w, h);
        SetDefDispEnv(&D_8019DB38[1], 0, 0, w, h);
        D_8019DB60 = 1;
    }
    D_8019DA80[0].isbg = D_8019DA80[1].isbg = 0;
    D_8019DA80[0].r0 = 0;
    D_8019DA80[0].g0 = 0;
    D_8019DA80[0].b0 = 0;
    draw = &D_8019DA80[1];
    draw->r0 = 0;
    draw->g0 = 0;
    draw->b0 = 0;
    if (mode & 1) {
        SetVideoMode(1);
        D_8019DB38[0].screen.w = D_8019DB38[1].screen.w = 256;
        D_8019DB38[0].screen.h = D_8019DB38[1].screen.h = 256;
    } else if (mode & 2) {
        SetVideoMode(0);
    }
    if (x == -1) {
        D_8019DB38[0].screen.x = D_8019DB38[1].screen.x = 0;
    } else {
        D_8019DB38[0].screen.x = D_8019DB38[1].screen.x = x;
    }
    if (y == -1) {
        D_8019DB38[0].screen.y = D_8019DB38[1].screen.y = 14;
    } else {
        D_8019DB38[0].screen.y = D_8019DB38[1].screen.y = y;
    }
    if (clear) {
        func_80136540();
        PutDrawEnv(&D_8019DA80[D_8019DA5C]);
        PutDispEnv(&D_8019DB38[D_8019DA5C]);
    }
    SetDispMask(1);
    D_8019DB6C = otSize;
    D_8019DB64 = (void *)func_8014A454(otSize * 2);
    if (D_8019DB64 == 0) {
        return 0;
    }
    D_8019DA70 = D_8019DB64;
    D_8019DB68 = (void *)func_8014A454(primCount * 20);
    if (D_8019DB68 == 0) {
        return 0;
    }
    D_8019DA68 = 0;
    return 1;
}

/* Waits for the frame, then shows the buffer just drawn. */
void func_80136450(void) {
    DrawSync(0);
    VSync(0);
    PutDrawEnv(&D_8019DA80[D_8019DA5C]);
    PutDispEnv(&D_8019DB38[D_8019DA5C]);
    D_8019DA5C ^= 1;
}

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
