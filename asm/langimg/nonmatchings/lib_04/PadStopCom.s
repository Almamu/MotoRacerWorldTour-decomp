nonmatching PadStopCom, 0x44

glabel PadStopCom
    /* 9F2B4 800B0AA4 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 9F2B8 800B0AA8 1000BFAF */  sw         $ra, 0x10($sp)
    /* 9F2BC 800B0AAC E0D6020C */  jal        EnterCriticalSection
    /* 9F2C0 800B0AB0 00000000 */   nop
    /* 9F2C4 800B0AB4 03000424 */  addiu      $a0, $zero, 0x3
    /* 9F2C8 800B0AB8 18D7020C */  jal        ChangeClearRCnt
    /* 9F2CC 800B0ABC 01000524 */   addiu     $a1, $zero, 0x1
    /* 9F2D0 800B0AC0 0E80053C */  lui        $a1, %hi(D_800DE420)
    /* 9F2D4 800B0AC4 20E4A524 */  addiu      $a1, $a1, %lo(D_800DE420)
    /* 9F2D8 800B0AC8 14D7020C */  jal        SysDeqIntRP
    /* 9F2DC 800B0ACC 02000424 */   addiu     $a0, $zero, 0x2
    /* 9F2E0 800B0AD0 E4D6020C */  jal        ExitCriticalSection
    /* 9F2E4 800B0AD4 00000000 */   nop
    /* 9F2E8 800B0AD8 1000BF8F */  lw         $ra, 0x10($sp)
    /* 9F2EC 800B0ADC 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 9F2F0 800B0AE0 0800E003 */  jr         $ra
    /* 9F2F4 800B0AE4 00000000 */   nop
endlabel PadStopCom
