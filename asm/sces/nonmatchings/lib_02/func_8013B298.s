nonmatching func_8013B298, 0x30

glabel func_8013B298
    /* 8764 8013B298 1C80023C */  lui        $v0, %hi(D_801BEFC8)
    /* 8768 8013B29C C8EF428C */  lw         $v0, %lo(D_801BEFC8)($v0)
    /* 876C 8013B2A0 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 8770 8013B2A4 1000BFAF */  sw         $ra, 0x10($sp)
    /* 8774 8013B2A8 0C00428C */  lw         $v0, 0xC($v0)
    /* 8778 8013B2AC 00000000 */  nop
    /* 877C 8013B2B0 09F84000 */  jalr       $v0
    /* 8780 8013B2B4 00000000 */   nop
    /* 8784 8013B2B8 1000BF8F */  lw         $ra, 0x10($sp)
    /* 8788 8013B2BC 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 878C 8013B2C0 0800E003 */  jr         $ra
    /* 8790 8013B2C4 00000000 */   nop
endlabel func_8013B298
