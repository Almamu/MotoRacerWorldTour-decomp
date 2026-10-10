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
    u8 m_20[5];
    s8 m_gears; // 0x25
    short m_26; // 0x26: the lowest x
    u8 m_28[0xC];
    int m_34;
    u8 m_38[4];
    int m_3C;
    u8 m_40[0x22];
    short m_62;
    u8 m_64[8];
    int m_ratio[6]; // 0x6C: the gears' ratios
};

int func_800236F0(Motor *m, int x, int gear);
int func_80023788(Motor *m, int x, int gear);
void func_800237E8(Motor *m, int *out);
int func_8002357C(Motor *m, int x, int gear);
u32 func_800235F8(Motor *m, int x);
}

#endif
