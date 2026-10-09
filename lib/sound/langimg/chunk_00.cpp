#include "common.h"
#include "sound.h"

/* Sets the CD audio volume, each side from -128 to 127. */
void func_80011820(int unused, s8 left, s8 right) {
    SpuSetCommonCDVolume(left << 8, right << 8);
}

/* Waits, at most 300 frames, until func_80011BA4 says the voices are
 * quiet, then 30 more. */
void func_8001184C(void) {
    int unused[6]; /* the original's frame has 24 bytes of unused locals */
    int n = 300;

    /* Jumps into the loop: the first VSync comes before any test */
    goto body;
test:
    if (n == 0) {
        goto done;
    }
body:
    VSync(0);
    n--;
    if (func_80011BA4()) {
        goto test;
    }
done:
    VSync(30);
}

/* A field of a note's tone in the VAB: tone note[2] of program note[0]
 * (the tones follow the header and the 128 programs, 16 to a program). */
u16 func_80011898(u8 *note) {
    VagAtr *t = (VagAtr *)(D_800C4734 + (note[0] * 0x200 + 0x820));

    t += note[2];
    return t->unkC;
}

#ifdef NON_MATCHING
/* Equivalent; the original keeps i and walks the fields with three
 * pointers, this build with one */
/* Clears the voices' bookkeeping, reserved voices left out of use. */
void func_800118C4(int reserved) {
    int i;

    D_800C9F54 = 0;
    D_800C9F48 = 0;
    D_800C4748 = 24 - reserved;
    for (i = 0; i < 24; i++) {
        D_800C9F70[i].unk0 = 0;
        D_800C9F70[i].unk4 = 0;
        D_800C9F70[i].unkA = 0;
        D_800C9F70[i].owner = 0;
    }
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_00", func_800118C4);
#endif

/* Marks a voice to be keyed off; -1 is no voice. */
int func_80011924(int voice) {
    int r = 0;

    if (voice != -1) {
        D_800C9F54 |= 1 << voice;
        D_800C4738 &= ~(1 << voice);
        r = 1;
    }
    return r;
}

/* Stops every voice not reserved and forgets which sounds had them. */
int func_80011960(void) {
    int mask = 0;
    int i;

    for (i = D_800C4748; i < 24; i++) {
        int bit = 1 << i;
        s8 none = -1; /* set in the loop, so GCC hoists it before the addresses */

        VOICE(i)->unk0 = 0;
        mask |= bit;
        if (VOICE(i)->owner) {
            VOICE(i)->owner->voice = none;
            VOICE(i)->owner = 0;
        }
        if (VOICE(i)->unkA & 1) {
            VOICE(i)->unkA &= ~1;
            SpuSetPitchLFOVoice(0, bit);
        }
    }
    SpuSetKey(0, mask);
    SpuSetReverbVoice(0, mask);
    D_800C9F54 = 0;
    D_800C9F48 = 0;
    D_800C473C = 0;
    D_800C4738 = 0;
    return 1;
}

/* Once a frame: frees the voices that stopped by themselves, then keys
 * off the ones marked. */
void func_80011A68(void) {
    int i;

    for (i = D_800C4748; i < 24; i++) {
        s8 none = -1; /* set in the loop, so GCC hoists it before the addresses */
        int bit = 1;  /* likewise */

        if (!((D_800C9F48 >> i) & 1) && !((D_800C4738 >> i) & 1) && VOICE(i)->unk0) {
            VOICE(i)->unk0 = 0;
            if (VOICE(i)->owner) {
                VOICE(i)->owner->voice = none;
                VOICE(i)->owner = 0;
            }
            if (VOICE(i)->unkA & 1) {
                VOICE(i)->unkA &= ~1;
                SpuSetPitchLFOVoice(0, bit << i);
            }
        }
    }
    func_800131D0(D_800C9F48);
    func_80011BA4();
    if (D_800C9F54) {
        SpuSetKey(0, D_800C9F54);
        SpuSetReverbVoice(0, D_800C9F54);
        D_800C9F54 = 0;
    }
}

/* Reads every voice's key status: returns the voices playing (a bit
 * each), and marks the ones that have just been released to be keyed
 * off. */
int func_80011BA4(void) {
    s8 status[24];
    int mask;
    int count;
    int i;

    SpuGetAllKeysStatus((char *)status);
    mask = 0;
    count = 0;
    for (i = 0; i < 24; i++) {
        int s = status[i];
        int fresh = 0;

        if (s == 3) {
            fresh = D_800C9F58[i] == 0;
        }
        if ((u32)(s - 1) < 2 || fresh) {
            mask |= 1 << i;
            count++;
            if (fresh) {
                continue;
            }
        }
        if (s == 3) {
            D_800C9F54 |= 1 << i;
        }
        D_800C9F58[i] = s;
    }
    D_800C9F48 = mask;
    D_800CA0F0 = count;
    return mask;
}

/* Sets the SPU up: reverb off, full master and CD volume, the volume curve
 * (full up to nearDist, none from farDist) and the voices to leave alone. */
int func_80011C5C(int nearDist, int farDist, int reserved) {
    SpuInit();
    SpuSetReverb(0);
    SpuClearReverbWorkArea(7);
    SpuSetCommonMasterVolume(0x3FFF, 0x3FFF);
    SpuSetCommonCDMix(1);
    SpuSetCommonCDVolume(0x7FFF, 0x7FFF);
    D_800C473D = 0;
    D_800C473E = 0;
    D_800C4740 = 0;
    D_800C9F50 = reserved;
    D_800C46FC = 1;
    func_800121C0(1);
    D_800C470C = nearDist;
    D_800C4710 = farDist;
    D_800C4714 = nearDist;
    D_800C4718 = farDist;
    D_800C471C = 0;
    D_800C4720 = 0x40;
    func_80011D10();
    return 1;
}

#ifdef NON_MATCHING
/* Equivalent; the slot loop, as in func_80012F7C (one pointer per field, each loaded
 * with its own la, and ~1 in a register) */
/* Frees every sound slot and voice. */
void func_80011D10(void) {
    int i;

    for (i = 0; i < 30; i++) {
        D_800CA0F8[i].unk6 = 0;
        D_800CA0F8[i].unk4 = 0;
        D_800CA0F8[i].unk0 = -1;
        D_800CA0F8[i].unk6 &= ~1;
    }
    func_800118C4(D_800C9F50);
    D_800C9F48 = 0;
    memset(D_800C9F58, 0, 24);
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_00", func_80011D10);
#endif

/* Turns the reverb on: type, and depth from -128 to 127. */
void func_80011DA8(int type, int depth) {
    SpuClearReverbWorkArea(type);
    SpuSetReverbModeType(type);
    SpuSetReverbModeDepth(depth << 8, depth << 8);
    SpuSetReverb(1);
    D_800C473D = 0;
    D_800C473E = 0;
    D_800C4740 = 0;
}

/* Shuts the SPU down. */
int func_80011E08(void) {
    func_80011F84();
    func_8001184C();
    SpuSetReverb(0);
    SpuQuit();
    D_800C46FC = 0;
    return 1;
}

/* Loads the sound bank: relocates its directory, numbers the VAB's
 * samples in SPU memory, sends them there and frees them. */
/* Loads the sound bank: relocates its directory, numbers the VAB's
 * samples in SPU memory, sends them there and frees them. */
int func_80011E44(const char *name) {
    Dir *dir = func_800A06AC(name, 0, 0);
    u8 *vab;
    u16 *p;
    int n;
    int addr;
    int size;
    int off;

    D_800C46FC |= (dir->flags & 0x80) ? 4 : 2;
    dir->notes += (u32)dir;
    dir->entries = (DirEntry *)((u8 *)dir->entries + (u32)dir);
    dir->names = (DirName *)((u8 *)dir->names + (u32)dir);
    dir->records += (u32)dir;
    dir->samples += (u32)dir;
    D_800C4734 = vab = dir->records;
    n = *(u16 *)(vab + 0x16);
    off = *(u16 *)(vab + 0x12) * 0x200 + 0x820;
    size = *(int *)(vab + 0xC) - off - 0x200;
    p = *(u16 **)(vab + 0x1C) = (u16 *)(vab + off);
    addr = 0x202;
    do {
        int len = *p;

        *p++ = addr;
        addr += len;
    } while (n-- != 0);
    SpuSetTransferMode(0);
    SpuSetTransferStartAddr(0x1010);
    SpuRead(dir->samples, size);
    SpuIsTransferCompleted(1);
    dir = func_800B5730(dir, dir->samples - (u8 *)dir);
    D_800C46F0 = dir;
    D_800C4744 = dir->notes;
    D_800C4728 = dir->notes;
    D_800C472C = dir;
    return 1;
}

int func_80011F84(void) {
    func_80012F7C();
    D_800C46FC &= ~6;
    if (D_800C46F0) {
        free(D_800C46F0);
        D_800C46F0 = 0;
    }
    return 1;
}

#ifdef NON_MATCHING
/* Equivalent; the original compares sign-extended bytes after an unsigned
 * range check (a tolower() macro, likely), and its loop is laid out
 * differently */
/* Compares a name with a directory entry's, ignoring case: 0 if equal. */
#define LOWER(c) ((u8)((c) - 'A') < 26 ? (c) + 0x20 : (c))
int func_80011FCC(const char *name, DirEntry *entry) {
    const u8 *a = (const u8 *)name;
    const u8 *b = (const u8 *)entry->name;
    int r = 1;

    while (*a && *b) {
        if ((s8)LOWER(*a) != (s8)LOWER(*b)) {
            break;
        }
        a++;
        b++;
    }
    if (*a == 0 && *b == 0) {
        r = 0;
    }
    return r;
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_00", func_80011FCC);
#endif

/* The value of the directory entry called name, or -1. */
int func_80012080(const char *name) {
    u32 i;

    for (i = 0; i < D_800C472C->count; i++) {
        if (func_80011FCC(name, &D_800C472C->entries[i]) == 0) {
            return D_800C472C->entries[i].value;
        }
    }
    return -1;
}

/* Sets byte 1 of the record of every bank entry whose 4-letter name is
 * name's (upper-cased). */
void func_80012120(const char *name, int value) {
    char key[5];
    DirName *names = D_800C472C->names;
    int n = D_800C472C->nNames;
    DirRecord *rec = (DirRecord *)(D_800C472C->records + 0x20);
    int i;
    int k;

    key[4] = 0;
    strncpy(key, name, 4);
    func_800A638C(key);
    k = *(int *)key;
    for (i = 0; i < n; i++) {
        if (k == names->name) {
            rec->unk1 = value;
        }
        names++;
        rec++;
    }
}

void func_800121C0(int mode) {
    D_800C46F8 = mode;
    if (mode == 0) {
        D_800C46F4 = D_800C4750;
    } else {
        D_800C46F4 = D_800C47D0;
    }
}

#ifdef NON_MATCHING
/* Equivalent; the original walks the voices with three pointers
 * (&D[i].unk0, &D[i - 1].unkA, &D[i - 1].unk8) that serve both voices of
 * a pair, keeps D_800C9F70's address in a saved register for after the
 * loop, and allocates its registers otherwise */
/* Finds a voice (two neighbouring ones for a stereo note) for a note:
 * a free one, else the one with the lowest priority below level, taken
 * from its sound. Returns it (the higher of the two), or -1. */
int func_800121F4(u8 *note, int level) {
    int voice = -1;
    u16 flags = *(u16 *)(note + 4);
    int n;
    int lfo;
    int stereo;
    int i;
    u32 mask;
    int found;
    int best;
    int bestPri;

    if (flags & 0x800) {
        voice = D_800C4724;
        if (voice != -1) {
            VOICE(voice)->unk0 = (int)note;
            VOICE(voice)->unk4 = D_800C474C++;
            VOICE(voice)->unkA |= 2;
        }
        goto end;
    }
    n = 1;
    i = D_800C4748;
    lfo = 0;
    stereo = (u16)(flags & 0x400);
    mask = 1 << i;
    if (stereo) {
        n = 2;
        lfo = 1;
        mask = 3 << i;
        i++;
    }
    found = -1;
    best = -1;
    bestPri = 0x40000000;
    for (; i < 24; i++) {
        int free = D_800C9F70[i].unk0 == 0;
        int pri = 0;

        if (!free) {
            pri = (D_800C9F70[i].unkA & 3) ? 0x40000000 : D_800C9F70[i].unk8;
        }
        if (stereo) {
            int free2 = D_800C9F70[i - 1].unk0 == 0;
            int pri2 = 0;

            free = free ? free2 != 0 : 0;
            if (!free2) {
                pri2 = (D_800C9F70[i - 1].unkA & 3) ? 0x40000000 : D_800C9F70[i - 1].unk8;
            }
            if (pri < pri2) {
                pri = pri2;
            }
        }
        if (free && !(D_800C9F48 & mask) && !(D_800C4738 & mask)) {
            found = i;
            break;
        }
        if (pri < bestPri) {
            bestPri = pri;
            best = i;
        }
        mask <<= 1;
    }
    if (found == -1) {
        if (bestPri < level) {
            if (VOICE(best)->unk0) {
                VOICE(best)->unk0 = 0;
                if (VOICE(best)->owner) {
                    VOICE(best)->owner->voice = found;
                    VOICE(best)->owner = 0;
                }
                if (VOICE(best)->unkA & 1) {
                    VOICE(best)->unkA &= ~1;
                    SpuSetPitchLFOVoice(0, 1 << best);
                }
            }
            found = best;
            if (stereo && VOICE(best - 1)->unk0) {
                VOICE(best - 1)->unk0 = 0;
                if (VOICE(best - 1)->owner) {
                    VOICE(best - 1)->owner->voice = -1;
                    VOICE(best - 1)->owner = 0;
                }
                if (VOICE(best - 1)->unkA & 1) {
                    VOICE(best - 1)->unkA &= ~1;
                    SpuSetPitchLFOVoice(0, 1 << (best - 1));
                }
                found = best;
            }
        }
        if (found == -1) {
            goto end;
        }
    }
    voice = found;
    D_800C9F48 |= mask;
    {
        Voice *v = VOICE(found);

        v->unkA |= lfo;
        do {
            v->unk0 = (int)note;
            v->unk4 = D_800C474C++;
            v--;
        } while (--n);
    }
end:
    return voice;
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_00", func_800121F4);
#endif

#ifdef NON_MATCHING
/* Equivalent. With split addresses (--cflags=-msplit-addresses) it gets
 * the original's frame, registers and la + addu for the voice's fields
 * (D_800C9F7C, the owner field, in $fp for both uses), as func_800128E8
 * needs them; the two volumes are still multiplied in the other order. */
/* Starts a voice for a note of the bank (sv->voice gets it, -1 when none
 * was free): its volume, pitch, reverb, sample and envelope. Returns 1
 * when it started one. */
s8 func_80012504(SlotVoice *sv, u8 *note, int pitch, int left, int right) {
    u8 *vab = D_800C4734;
    u8 *prog = vab + note[0] * 16;
    VagAtr *t = (VagAtr *)(vab + (note[0] * 0x200 + 0x820)) + note[2];
    int level = t->vol * prog[0x21] >> 7;
    SpuVoiceAttr attr;
    int r;
    int voice;
    int again;
    u16 flags;
    u32 addr;

    left = left * level >> 14;
    r = 0;
    voice = sv->voice;
    right = right * level >> 14;
    addr = ((u16 *)*(u8 **)(vab + 0x1C))[t->vag] << 3;
    attr.volume.left = left;
    attr.volume.right = right;
    level = (ABS(left) + ABS(right)) >> 1;
    again = sv->unk1;
    flags = *(u16 *)(note + 4);
    if (!again) {
        voice = func_800121F4(note, level);
    }
    sv->voice = voice;
    if (voice == -1) {
        if (flags & 0x400) {
            sv[1].voice = voice;
        }
    } else {
        int bit;
        int p;
        int rev;
        int on;
        int shift;
        u32 mask;

        {
            SlotVoice **owner = &D_800C9F70[voice].owner;

            *owner = sv;
        }
        D_800C9F70[voice].unk8 = level;
        shift = t->shift;
        if (pitch < 0) {
            p = -pitch;
        } else {
            p = pitch * t->unkC / 44100;
        }
        if (shift) {
            p = (shift + 30) * p >> 6;
        }
        attr.pitch = p;
        rev = D_800C9F70[voice].unkA;
        on = 0;
        bit = 1 << voice;
        if ((t->mode & 4) || (D_800C473D && ((flags & 4) || D_800C473E))) {
            on = 1;
            rev |= 4;
        } else {
            rev &= ~4;
        }
        D_800C9F70[voice].unkA = rev;
        SpuSetReverbVoice(on, bit);
        mask = SPU_VOICE_VOLL | SPU_VOICE_VOLR | SPU_VOICE_PITCH;
        if (!again) {
            u16 start = *(u16 *)(note + 0xA);

            if (start != 0xFFFF) {
                if (flags & 0x10) {
                    mask = SPU_VOICE_VOLL | SPU_VOICE_VOLR | SPU_VOICE_PITCH | SPU_VOICE_LSAX;
                    attr.loop_addr = (addr + *(u16 *)(note + 6)) << 4;
                }
                addr += start << 4;
            }
            attr.addr = addr;
            mask |= SPU_VOICE_WDSA | SPU_VOICE_ADSR_ADSR1 | SPU_VOICE_ADSR_ADSR2;
            attr.adsr1 = t->adsr1;
            attr.adsr2 = t->adsr2;
            if (flags & 0x400) {
                SpuSetPitchLFOVoice(1, bit);
                sv[1].voice = voice - 1;
                {
                    SlotVoice **owner = &D_800C9F70[voice - 1].owner;

                    *owner = &sv[1];
                }
            }
        }
        attr.mask = mask;
        attr.voice = bit;
        SpuNSetVoiceAttr(voice, &attr);
        r = 1;
        if (!again) {
            SpuSetKey(1, bit);
        }
        D_800C9F54 &= ~bit;
    }
    return r;
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_00", func_80012504);
#endif

/* Where a sound at b is heard from a listener at a facing angle: out[1]
 * the distance, out[0] the angle to it on the ground (0 when it's nearly
 * overhead). */
void func_8001280C(SndVector *a, SndVector *b, int angle, int *out) {
    SndVector d;
    SndVector *p = &d; /* the original keeps &d in a register */
    int dx, dz;
    int len;

    p->vx = dx = b->vx - a->vx;
    p->vy = b->vy - a->vy;
    p->vz = dz = b->vz - a->vz;
    out[1] = func_8009923C(p);
    d.vy = 0;
    len = func_8009923C(p);
    if (len >= 0x334) {
        int x;

        len >>= 4;
        /* x first, then z; the angle's offset subtracted after the call */
        x = (dx << 8) / len;
        out[0] = -(angle + 0x400) + ratan2((dz << 8) / len, x);
    } else {
        out[0] = 0;
    }
}

#ifdef NON_MATCHING
/* Equivalent; GCC reads the table as D_800C4850(v), the original forms its
 * address (la) and adds v. With GCC's default split addresses it matches,
 * but those put a lui in func_800121C0's branch delay slot. */
/* The volume at a distance: full up to D_800C470C, none from D_800C4710. */
u8 func_800128E8(int dist) {
    int range = D_800C4710 - D_800C470C;
    int v = 0;

    if (range) {
        if (dist > D_800C470C) {
            v = (dist - D_800C470C) * 127 / range;
        }
        if (v < 0) {
            v = 0;
        }
        if (v >= 128) {
            v = 127;
        }
    }
    v = 127 - v;
    return D_800C4850[v];
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_00", func_800128E8);
#endif

/* Plays a note on two voices, panned left and right, the second a little
 * higher; returns the voices started. Only in stereo. */
int func_8001295C(u8 *note, int vol, int pitch, SlotVoice *sv) {
    int r = 0;

    if (D_800C4700 == 1) {
        u8 *pan = D_800C46F4;
        int v = vol * D_800C4708 * D_800C4704 >> 7;

        r = func_80012504(sv, note, pitch, v * pan[127 - 87], v * pan[87]);
        r += (sv[1].voice =
                  func_80012504(&sv[1], note, pitch * 1050 / 1000, v * pan[127 - 17], v * pan[17]));
    }
    return r;
}

/* Plays with a volume and a pan (0 left, 127 right). */
int func_80012A88(u8 *note, int vol, int pan, int c, SlotVoice *d) {
    int v = vol * D_800C4708;

    return func_80012504(d, note, c, v * D_800C46F4[127 - pan], v * D_800C46F4[pan]);
}

#ifdef NON_MATCHING
/* Equivalent; the original copies vol to its saved register first and
 * loads D_800C4708 before the second multiplication: scheduling only */
/* Plays a note placed in 3D (place: func_8001280C's angle and distance):
 * the volume falls with the distance, the pan follows the angle. */
int func_80012AF0(u8 *note, int vol, int pitch, int *place, SlotVoice *sv) {
    u8 *pans = D_800C46F4;
    u32 v = (u32)(vol * func_800128E8(place[1])) >> 7;
    int pan;

    if (*(u16 *)(note + 4) & 0x200) {
        pan = 64;
    } else {
        pan = place[0] << 20 >> 20;
        if (pan > 0x400) {
            pan = 0x7FF - pan;
        } else if (pan < -0x400) {
            pan = -0x800 - pan;
        }
        pan = 64 - (pan >> 5);
    }
    if (D_800C471C) {
        pan = D_800C4720;
    }
    {
        int right = pans[127 - pan] * v * D_800C4708;
        int left = pans[pan] * v * D_800C4708;

        return func_80012504(sv, note, pitch, left, right);
    }
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_00", func_80012AF0);
#endif

/* Plays a sound's notes, placed at `at` as heard from `from`; returns
 * whether any voice started. */
int func_80012C18(u32 handle, int vol, int pitch, SndVector *from, SndVector *at, int angle,
                  int unkA, int flag) {
    int n = 0;
    SoundSlot *slot = func_80013348(handle);

    if (slot) {
        int place[2];
        u8 *note = D_800C4744;
        int i = slot->unk0;
        int again = slot->unk4 != 0;

        func_8001280C(from, at, angle, place);
        do {
            SlotVoice *sv;

            note += i * 44;
            sv = &slot->voices[n];
            sv[0].unk1 = again;
            sv[1].unk1 = again;
            *(short *)(note + 0xA) = unkA;
            *(u16 *)(note + 4) |= flag;
            n += func_80012AF0(note, vol, pitch, place, sv);
            *(u16 *)(note + 4) &= ~flag;
            i = note[3];
        } while (i != 0xFF);
        slot->unk4 = n;
    }
    return n != 0;
}

/* Plays a sound's notes: in stereo on two voices each where the note
 * asks for it, else panned; returns whether any voice started. */
/* Plays a sound's notes: in stereo on two voices each where the note
 * asks for it, else panned; returns whether any voice started. */
int func_80012D38(u32 handle, int vol, int pan, int pitch, int unkA) {
    int n = 0;
    SoundSlot *slot = func_80013348(handle);

    if (slot) {
        u8 *note = D_800C4744;
        int again = slot->unk4 != 0;
        int i = slot->unk0;

        do {
            u8 end = 0xFF; /* in the loop: kept in a register */
            SlotVoice *sv;

            note += i * 44;
            sv = &slot->voices[n];
            sv[0].unk1 = again;
            sv[1].unk1 = again;
            *(short *)(note + 0xA) = unkA;
            if (*(u16 *)(note + 4) & 0x100) {
                if (!again) {
                    n += func_8001295C(note, vol, pitch, sv);
                }
            } else {
                n += func_80012A88(note, vol, pan, pitch, sv);
            }
            i = note[3];
            if (i == end) {
                break;
            }
        } while (1);
        slot->unk4 = n;
    }
    return n != 0;
}

/* Keys off the voices of a sound, and those of the notes chained after it
 * while they're marked to follow. */
void func_80012E58(SoundSlot *slot) {
    u8 *note = D_800C4744 + slot->unk0 * 44;
    int i;

    while (1) {
        u8 end = 0xFF; /* in the loop: kept in a register */

        for (i = 0; i < slot->unk4; i++) {
            func_80011924(slot->voices[i].voice);
        }
        if (!(*(u16 *)(note + 4) & 1)) {
            break;
        }
        if (note[3] == end) {
            break;
        }
        note += note[3] * 44;
    }
}

int func_80012F40(u32 handle) {
    int r = 0;
    SoundSlot *p = func_80013348(handle);

    if (p) {
        func_80012E58(p);
        r = 1;
    }
    return r;
}

#ifdef NON_MATCHING
/* Equivalent; the original keeps ~1 in a register and loads each field's
 * address on its own. With ClearFlags (decomp-permuter's idea) and
 * -fno-rerun-cse-after-loop it matches, but that flag breaks
 * func_80012080, so the library isn't built with it. */
static inline void ClearFlags(u16 *flags, int bits) {
    *flags &= ~bits;
}

/* Frees every sound slot. */
int func_80012F7C(void) {
    int i;

    func_80011960();
    for (i = 0; i < 30; i++) {
        D_800CA0F8[i].unk4 = 0;
        D_800CA0F8[i].unk0 = -1;
        ClearFlags(&D_800CA0F8[i].unk6, 1);
    }
    return 1;
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_00", func_80012F7C);
#endif

/* The longest of a chain of notes: each record gives the next one's
 * distance in records, 0xFF ends it. */
u32 func_80012FEC(int first) {
    u8 *p = D_800C4744;
    u32 longest = 0;
    u32 len;
    int next = first;

    do {
        p += next * 44;
        len = (u32)(*(u16 *)(p + 8) * 28000) / func_80011898(p);
        if (longest < len) {
            longest = len;
        }
        next = p[3];
    } while (next != 0xFF);
    return longest;
}

void func_80013098(u32 handle) {
    SoundSlot *p = func_80013348(handle);

    if (p) {
        D_800C4724 = p->voices[1].voice;
    }
}

int func_800130CC(u32 handle) {
    int r = 0;
    SoundSlot *p = func_80013348(handle);

    if (p) {
        r = p->unk4 != 0;
    }
    return r;
}

#ifdef NON_MATCHING
/* Equivalent; the slot loop, as in func_80012F7C (a pointer per field,
 * each from its own la, and ~1 in a register) */
/* Frees the slots whose voices have all stopped (unless kept) and returns
 * the first free one, or -1. */
int func_80013108(int unused) {
    int r = -1;
    int i;
    int j;
    int all;
    SoundSlot *slot;

    for (i = 0; i < 30; i++) {
        slot = &D_800CA0F8[i];
        if (!(slot->unk6 & 1)) {
            all = -1;
            for (j = 0; j < slot->unk4; j++) {
                all &= slot->voices[j].voice;
            }
            if (all == -1) {
                slot->unk4 = 0;
                slot->unk0 = -1;
                slot->unk6 &= ~1;
            }
            if (slot->unk0 == -1) {
                r = i;
                break;
            }
        }
    }
    return r;
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_00", func_80013108);
#endif

#ifdef NON_MATCHING
/* Equivalent; the original loads each of the slot's field pointers with
 * its own la (as func_800118C4 and func_80012F7C do), this build derives
 * them from one, and it keeps ~1 in a register */
/* Frees the voices that stopped (not in playing), and the sounds left
 * with none. */
void func_800131D0(int playing) {
    int i;

    for (i = 0; i < 30; i++) {
        SoundSlot *slot = &D_800CA0F8[i];
        int all = -1;

        if (slot->unk4 != 0) {
            int j;

            for (j = 0; j < slot->unk4; j++) {
                int v = slot->voices[j].voice;
                int bit = 1;

                if (v != -1 && !((playing >> v) & 1)) {
                    VOICE(v)->unk0 = 0;
                    if (VOICE(v)->owner) {
                        VOICE(v)->owner->voice = -1;
                        VOICE(v)->owner = 0;
                    }
                    if (VOICE(v)->unkA & 1) {
                        VOICE(v)->unkA &= ~1;
                        SpuSetPitchLFOVoice(0, bit << v);
                    }
                }
                all &= slot->voices[j].voice;
            }
        }
        if (all == -1) {
            slot->unk4 = 0;
            slot->unk0 = all;
            slot->unk6 &= ~1;
        }
    }
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_00", func_800131D0);
#endif

/* The slot of a sound handle, or 0 if the sound is gone. */
SoundSlot *func_80013348(u32 handle) {
    SoundSlot *r = 0;
    SoundSlot *slot;

    if (handle != (u32)-1) {
        slot = &D_800CA0F8[handle & 0x1F];
        if (slot->unk2 == handle >> 16 && slot->unk0 != -1) {
            r = slot;
        }
    }
    return r;
}

#ifdef NON_MATCHING
/* Equivalent; the order of the slot's stores and the serial number's
 * load */
/* Starts sound id in a free slot; returns its handle, or -1. */
int func_800133A0(int id) {
    int h = -1;
    int serial;
    SoundSlot *slot;

    if (id != -1) {
        h = func_80013108(-1);
        if (h != -1) {
            slot = &D_800CA0F8[h];
            h = (h & 0x1F) | ((id & 0x3FF) << 5);
            serial = D_800C9F4C;
            slot->unk0 = id;
            slot->unk4 = 0;
            h |= serial << 16;
            slot->unk2 = serial;
            D_800C9F4C = (serial + 1) & 0xFFFF;
            slot->unk6 |= 1;
        }
    }
    return h;
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_00", func_800133A0);
#endif

void func_80013440(void) {
}

void func_80013448(void) {
}

/* Places the listener; its angle is the facing direction's (c) on the
 * ground. */
void func_80013450(SndListener *l, SndVector *a, SndVector *b, SndVector *c, SndVector *d) {
    int x;
    int z;
    int len;

    CopyVector(&l->unk8, a);
    CopyVector(&l->unk14, b);
    CopyVector(&l->unk20, c);
    CopyVector(&l->unk2C, d);
    x = c->vx;
    z = c->vz;
    len = func_80097AC8(x * x + z * z);
    if (len == 0) {
        len = 1;
    }
    /* x is divided first, back into x */
    x = (x << 12) / len;
    l->angle = ratan2((z << 12) / len, x) - 0x400;
}

void func_80013554(void) {
}

/* An emitter's volume by where the listener faces and where the emitter
 * points: 0x1000 straight on. */
void func_8001355C(SndEmitter *e, SndVector *pos, SndVector *dir) {
    SndVector v;
    SndVector *facing;
    int a, b;

    func_800998D0(&v, &e->listener->unk8, pos);
    facing = &e->listener->unk14;
    func_80098E9C(&v);
    a = func_80099B88(dir, &v);
    b = func_80099B88(facing, &v);
    e->volume = ((a / 360 + 0x1000) * (0x1000 - b / 360)) / 0x1000;
}

/* Where an emitter is and which way its sound goes; a moving one's
 * direction is its velocity over dt. */
void func_8001363C(SndEmitter *e, SndVector *pos, SndVector *dir, int dt) {
    SndVector t;
    SndVector v;
    SndVector d;

    if (e->flags & 0x400) {
        CopyVector(pos, e->unk3C);
        CopyVector(dir, e->unk40);
    } else if (e->flags & 0x200) {
        SndVector *pv; /* &v, taken before the first call */

        CopyVector(pos, e->unk3C);
        pv = &v;
        func_800998D0(&d, pos, &e->unk44);
        func_80099718(pv, &d, dt >> 6);
        func_80099DCC(&t, pv, 6);
        CopyVector(dir, &t);
    } else {
        CopyVector(pos, &e->unk50);
        CopyVector(dir, &e->unk5C);
    }
}
