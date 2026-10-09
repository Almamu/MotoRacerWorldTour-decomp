nonmatching func_800A2598, 0x3C

glabel func_800A2598
    /* 90DA8 800A2598 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 90DAC 800A259C 1000BFAF */  sw         $ra, 0x10($sp)
    /* 90DB0 800A25A0 98AA020C */  jal        func_800AAA60
    /* 90DB4 800A25A4 00000000 */   nop
    /* 90DB8 800A25A8 0D80033C */  lui        $v1, %hi(D_800D60C0)
    /* 90DBC 800A25AC 0D80053C */  lui        $a1, %hi(D_800D60C8)
    /* 90DC0 800A25B0 C06060AC */  sw         $zero, %lo(D_800D60C0)($v1)
    /* 90DC4 800A25B4 C860A48C */  lw         $a0, %lo(D_800D60C8)($a1)
    /* 90DC8 800A25B8 1000BF8F */  lw         $ra, 0x10($sp)
    /* 90DCC 800A25BC 0D80033C */  lui        $v1, %hi(D_800D6070)
    /* 90DD0 800A25C0 706062AC */  sw         $v0, %lo(D_800D6070)($v1)
    /* 90DD4 800A25C4 01008424 */  addiu      $a0, $a0, 0x1
    /* 90DD8 800A25C8 C860A4AC */  sw         $a0, %lo(D_800D60C8)($a1)
    /* 90DDC 800A25CC 0800E003 */  jr         $ra
    /* 90DE0 800A25D0 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_800A2598
