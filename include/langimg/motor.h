#ifndef LANGIMG_MOTOR_H
#define LANGIMG_MOTOR_H

#include "common.h"

extern "C" {
// A motor's curves and gears (fields named by use)
struct Motor {
    int m_00;
    int m_04;
    u8 m_08[8];
    int m_10, m_14; // 0x10: below m_3C, a line: m_10 + x * m_14
    int m_18, m_1C; // 0x18: above
    int m_20;       // 0x20: flags
    s8 m_24;        // 0x24: its kind
    s8 m_gears;     // 0x25
    short m_26;     // 0x26: the lowest x
    int m_28;       // 0x28: the top engine speed
    u8 m_2C[8];
    int m_34;
    u8 m_38[4];
    int m_3C;
    u8 m_40[0xC];
    int m_4C; // 0x4C: the grip's force on the ground
    int m_50; // 0x50: on the rear wheel
    u8 m_54[0xE];
    short m_62;
    u8 m_64[8];
    int m_ratio[6];   // 0x6C: the gears' ratios
    int m_upshift[6]; // 0x84: the engine speed to shift up at, per gear
    u8 m_9C[4];
    int m_A0;
    int m_A4, m_A8;
    u8 m_AC[0x9C];
    short m_148;
    u8 m_14A[4];
    short m_14E;
    int m_150;
    int m_154;
    short m_158;
    short m_15A; // 0x15A: rolling resistance
    u8 m_15C[4];
    int m_160;
};

int func_800236F0(Motor *m, int x, int gear);
void func_8002385C(Motor *m);
int func_80023E48(Motor *m, int *out, int dt, int n);
int func_80023788(Motor *m, int x, int gear);
void func_800237E8(Motor *m, int *out);
int func_8002357C(Motor *m, int x, int gear);
u32 func_800235F8(Motor *m, int x);
}

#endif
