nonmatching func_80044D70, 0x48

glabel func_80044D70
    /* 33580 80044D70 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 33584 80044D74 1000BFAF */  sw         $ra, 0x10($sp)
    /* 33588 80044D78 0D80013C */  lui        $at, %hi(D_800C873C)
    /* 3358C 80044D7C 3C8720AC */  sw         $zero, %lo(D_800C873C)($at)
    /* 33590 80044D80 0C80013C */  lui        $at, %hi(D_800C4938)
    /* 33594 80044D84 384920AC */  sw         $zero, %lo(D_800C4938)($at)
    /* 33598 80044D88 0D80013C */  lui        $at, %hi(D_800C8C68)
    /* 3359C 80044D8C 688C20AC */  sw         $zero, %lo(D_800C8C68)($at)
    /* 335A0 80044D90 0D80013C */  lui        $at, %hi(D_800CBE90)
    /* 335A4 80044D94 90BE20AC */  sw         $zero, %lo(D_800CBE90)($at)
    /* 335A8 80044D98 0D80013C */  lui        $at, %hi(D_800CBE94)
    /* 335AC 80044D9C 94BE20AC */  sw         $zero, %lo(D_800CBE94)($at)
    /* 335B0 80044DA0 4BFF000C */  jal        func_8003FD2C
    /* 335B4 80044DA4 00000000 */   nop
    /* 335B8 80044DA8 1000BF8F */  lw         $ra, 0x10($sp)
    /* 335BC 80044DAC 00000000 */  nop
    /* 335C0 80044DB0 0800E003 */  jr         $ra
    /* 335C4 80044DB4 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_80044D70
