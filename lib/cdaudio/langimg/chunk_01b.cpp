#include "common.h"
#include "cdaudio.h"
#include "sound.h"

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_01b", func_80014CB8);

/* The drive's callback: notes errors and, at the end of a track, goes on
 * to the next one (or back to the first when looping). */
void func_800150E4(int status, u8 *result) {
    if (status == 5) {
        D_800B8758 = 8;
        if (result[0] & 0x10) {
            D_800B8764 = 1;
            if (D_800B8744 == 11) {
                D_800B8744 = 9;
            }
        } else {
            D_800B8764 = 0;
        }
    }
    if (status == 4 && D_800B8744 == 11) {
        D_800B8778 = 1;
        CdControlF(9, 0);
        if (D_800CC68C < D_800CC4F0 - 1) {
            D_800CC68C++;
            D_800B8744 = 9;
        } else {
            D_800CC68C = 0;
            if (D_800CC4CC) {
                D_800B8744 = 9;
            } else {
                D_800B8744 = 0;
            }
        }
    }
}

int func_800151F0(void) {
    return D_800B8778;
}

/* The store stays out of the return's delay slot: the variable is
 * volatile. */
void func_80015200(int x) {
    D_800B8778 = x;
}

#ifdef NON_MATCHING
/* Equivalent; scheduling only: the original stores D_800CC4CC in the
 * call's delay slot and D_800CC4F0 before D_800CC68C */
/* Plays count tracks from track. */
int func_80015210(int track, int count, int mode) {
    D_800CC4D4 = track;
    D_800CC4F0 = count;
    D_800CC68C = 0;
    D_800CC4CC = mode & 0xFF;
    EnterCriticalSection();
    CdReadyCallback(func_800150E4);
    D_800CC4EC = 0;
    D_800CC4D8 = D_800B8780 << 16;
    func_800A5DA4("Play DA\n");
    D_800B8778 = 0;
    if (mode & 0x100) {
        if (D_800B8744 == 11) {
            D_800B8744 = 10;
        } else {
            D_800B8744 = 9;
        }
    } else {
        D_800B8744 = 9;
    }
    ExitCriticalSection();
    return 1;
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_01b", func_80015210);
#endif

#ifdef NON_MATCHING
/* Equivalent; scheduling only: the original leaves the delay slot of
 * the wait test empty and sets D_800B8778 through other registers */
/* Stops playing, waiting for the drive if wait. */
int func_800152E4(int wait) {
    if (D_800B8744 == 9 || D_800B8744 == 10 || D_800B8744 == 11 || D_800B8744 == 12 ||
        D_800B8744 == 14 || D_800B8744 == 13 || D_800B8744 == 15) {
        D_800CC4EC = 0;
        D_800B8744 = 7;
        D_800CC4D8 = D_800B8780 << 16;
        func_800A5DA4("Stop Play\n");
        if (wait) {
            func_800A5DA4("Stop Play W:%d\n", func_800154D4());
        }
        D_800B8778 = 1;
        EnterCriticalSection();
        CdReadyCallback(0);
        ExitCriticalSection();
        return 1;
    }
    func_800A5DA4("Stop Play E:\n");
    return 0;
}

/* Strings nothing in the executable uses (code compiled out, or in
 * another file): spelled out where they are. */
extern "C" const char D_800B7210[] = "Pause Play\n";
extern "C" const char D_800B721C[] = "UnPause Play\n";
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_01b", func_800152E4);
#endif

/* Sets the CD volume. This file declared func_80011820 with short
 * parameters (the caller extends them to 16 bits), the sound engine with
 * s8 ones. */
void func_800153FC(int vol) {
    ((void (*)(int, short, short))func_80011820)(0, vol, vol);
    D_800B8780 = vol;
}

void func_80015438(int n) {
    if (n > 0) {
        D_800B877C = n;
    } else {
        D_800B877C = 1;
    }
}

/* Polls the drive: restarts the track after an error, or once when it
 * reports it stopped. */
void func_80015458(void) {
    if (D_800B8758 == 8) {
        func_800155CC();
    } else if (func_80096508() && D_800B8764 != 1) {
        func_800155CC();
        D_800B8764 = 1;
    } else {
        D_800B8764 = 0;
    }
}

/* Waits, at most 600 frames, for the player to go idle; returns the
 * frames left, or -1 if a track changed meanwhile. */
int func_800154D4(void) {
    int a;
    int b;
    int n;

    EnterCriticalSection();
    a = D_800B8754;
    b = D_800B875C;
    ExitCriticalSection();
    n = 600;
    while (D_800B8744) {
        n--;
        func_80015458();
        if (D_800CC4E0) {
            D_800CC4E0(D_800CC4DC);
        }
        VSync(0);
        if (n <= 0) {
            break;
        }
    }
    if (a != D_800B8754 || b != D_800B875C) {
        return -1;
    }
    return n;
}

/* Recovers from a drive error: resets it and restarts the track. */
void func_800155CC(void) {
    func_800A5DA4("Error CD\n");
    CdInit();
    EnterCriticalSection();
    func_80015684(D_800CC4E8);
    ExitCriticalSection();
    func_80015650();
    if (D_800CC4E8) {
        D_800CC4E8(8);
    }
    D_800B8758 = 0;
    D_800B8754++;
}

/* Strings nothing in the executable uses (code compiled out, or in
 * another file): spelled out where they are. */
extern "C" const char D_800B7238[] = "CdlSetmode Error\n";
extern "C" const char D_800B724C[] = "CdlReadN Error\n";
extern "C" const char D_800B725C[] = "CdReady Error\n";
extern "C" const char D_800B726C[] = "CdGetSector Error %d/%d\n";
extern "C" const char D_800B7288[] = "CdlPause Error\n";

/* Reads the disc's table of contents. */
void func_80015650(void) {
    D_800CC690 = CdGetToc(D_800CC4F8);
}

/* Sets the function called while waiting. */
void func_80015678(void (*f)(int)) {
    D_800CC4E0 = f;
}

/* Starts playing, in stereo. */
void func_80015684(void (*f)(int)) {
    CdlATV v;

    v.val0 = 0x80;
    v.val1 = 0;
    v.val2 = 0x80;
    v.val3 = 0;
    CdMix(&v);
    D_800CC4E8 = f;
    D_800B8784 = 1;
    D_800CC4E0 = 0;
}

/* Stops: pauses the drive and removes the CD interrupt's callback. */
void func_800156DC(void) {
    D_800B8784 = 0;
    D_800CC4E8 = 0;
    CdControlB(9, 0, 0);
    EnterCriticalSection();
    InterruptCallback(2, 0);
    ExitCriticalSection();
}

/* CD audio in mono: each channel to both speakers. */
void func_80015730(void) {
    CdlATV v;

    v.val0 = 0x80;
    v.val1 = 0x80;
    v.val2 = 0x80;
    v.val3 = 0x80;
    CdMix(&v);
}

/* CD audio in stereo: each channel to its own speaker. */
void func_80015764(void) {
    CdlATV v;

    v.val0 = 0x80;
    v.val1 = 0;
    v.val2 = 0x80;
    v.val3 = 0;
    CdMix(&v);
}
