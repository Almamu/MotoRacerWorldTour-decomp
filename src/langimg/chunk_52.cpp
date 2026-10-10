#include "common.h"
#include "psyq.h"

/* The display: its environments, the vsync and drawsync callbacks (docs/matching/issue-53-langimg-chunk52.md) */

extern "C" {
// The display's state
struct Gfx52 {
    u8 m_00[0x84];
    u8 m_84[4];
    u8 m_88[0x58];
    u8 m_E0[4];
    u8 m_E4[0x48];
    u16 m_12C;
    u16 m_12E;
    u8 m_130[0x10];
    u16 m_140;
    u16 m_142;
    u8 m_144[0x1C];
    u16 m_160;
    u8 m_162[2];
    u16 m_164;
    u8 m_166[6];
    u8 m_16C[3];
    u8 m_16F[0x11];
    u8 m_180;
};
// Read split: arrays of unknown size, used as x[0]
extern int D_800B886C[]; // the last frame's length
extern int D_800B8870[];
typedef void (*Cb52)(int a);
extern Cb52 D_800B8874[]; // a callback each vsync
extern int D_800B8878[];  // and its argument
void func_80078CEC(void *a, void *b, void *c);
void func_80079848(void *o);
void func_80088FD4(void *o);
void func_800A22D8(void);
void func_800792DC(Gfx52 *g);
int func_80079328(void);
void func_80079350(void);
void func_80079390(void);
void func_800793C0(void);
void func_80079400(void);
void func_80079494(void *a, void *b, void *c);
int func_800794B4(void);
void func_800794BC(u8 *o);
void func_80079648(void *o, Cb52 cb, int arg);
}

/* The draw area's and the display area's origin and colour from the settings. */
void func_800792DC(Gfx52 *g) {
    u16 x = g->m_160;
    u16 y = g->m_164;
    u8 a = g->m_180;
    u8 r = g->m_16C[0];
    u8 gr = g->m_16C[1];
    u8 b = g->m_16C[2];

    g->m_140 = x;
    g->m_12C = x;
    g->m_142 = y;
    g->m_12E = y;
    g->m_E0[0] = a;
    g->m_84[0] = a;
    g->m_84[1] = r;
    g->m_84[2] = gr;
    g->m_84[3] = b;
    g->m_E0[1] = r;
    g->m_E0[2] = gr;
    g->m_E0[3] = b;
}

int func_80079328(void) {
    func_80079400();
    ResetGraph(3);
    return 1;
}

/* Each vsync: the frame's work, then the user's callback. */
void func_80079350(void) {
    func_800A22D8();
    if (D_800B8874[0]) {
        D_800B8874[0](D_800B8878[0]);
    }
}

/* When drawing ends: how long the frame took. */
void func_80079390(void) {
    D_800B886C[0] = VSync(1) - D_800B8870[0];
}

void func_800793C0(void) {
    EnterCriticalSection();
    VSyncCallback(func_80079350);
    DrawSyncCallback(func_80079390);
    ExitCriticalSection();
}

void func_80079400(void) {
    EnterCriticalSection();
    VSyncCallback(0);
    DrawSyncCallback(0);
    ExitCriticalSection();
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_52", func_80079438);

void func_80079494(void *a, void *b, void *c) {
    func_80078CEC(a, b, c);
}

int func_800794B4(void) {
    return 1;
}

void func_800794BC(u8 *o) {
    func_80079848(o);
    func_80088FD4(o + 0x30);
}

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_52", func_800794E8);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_52", func_800795A0);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_52", func_800795FC);

#ifdef NON_MATCHING
// Registers: the two globals' %hi parts swap $v0 and $v1 (4 off)
void func_80079648(void *o, Cb52 cb, int arg) {
    EnterCriticalSection();
    D_800B8874[0] = cb;
    D_800B8878[0] = arg;
    ExitCriticalSection();
}
#else
INCLUDE_ASM("asm/langimg/nonmatchings/chunk_52", func_80079648);
#endif

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_52", func_8007968C);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_52", func_80079848);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_52", func_800798FC);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_52", func_80079AE4);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_52", func_80079C50);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_52", func_80079DC0);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_52", func_8007A198);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_52", func_8007A6C4);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_52", func_8007A884);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_52", func_8007AA74);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_52", func_8007AC90);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_52", func_8007AED0);

INCLUDE_ASM("asm/langimg/nonmatchings/chunk_52", func_8007B164);
