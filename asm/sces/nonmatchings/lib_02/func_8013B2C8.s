nonmatching func_8013B2C8, 0x30

glabel func_8013B2C8
    /* 8794 8013B2C8 1C80023C */  lui        $v0, %hi(D_801BEFC8)
    /* 8798 8013B2CC C8EF428C */  lw         $v0, %lo(D_801BEFC8)($v0)
    /* 879C 8013B2D0 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 87A0 8013B2D4 1000BFAF */  sw         $ra, 0x10($sp)
    /* 87A4 8013B2D8 0800428C */  lw         $v0, 0x8($v0)
    /* 87A8 8013B2DC 00000000 */  nop
    /* 87AC 8013B2E0 09F84000 */  jalr       $v0
    /* 87B0 8013B2E4 00000000 */   nop
    /* 87B4 8013B2E8 1000BF8F */  lw         $ra, 0x10($sp)
    /* 87B8 8013B2EC 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 87BC 8013B2F0 0800E003 */  jr         $ra
    /* 87C0 8013B2F4 00000000 */   nop
endlabel func_8013B2C8
