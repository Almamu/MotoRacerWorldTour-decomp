nonmatching func_8013B35C, 0x30

glabel func_8013B35C
    /* 8828 8013B35C 1C80023C */  lui        $v0, %hi(D_801BEFC8)
    /* 882C 8013B360 C8EF428C */  lw         $v0, %lo(D_801BEFC8)($v0)
    /* 8830 8013B364 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 8834 8013B368 1000BFAF */  sw         $ra, 0x10($sp)
    /* 8838 8013B36C 1000428C */  lw         $v0, 0x10($v0)
    /* 883C 8013B370 00000000 */  nop
    /* 8840 8013B374 09F84000 */  jalr       $v0
    /* 8844 8013B378 00000000 */   nop
    /* 8848 8013B37C 1000BF8F */  lw         $ra, 0x10($sp)
    /* 884C 8013B380 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 8850 8013B384 0800E003 */  jr         $ra
    /* 8854 8013B388 00000000 */   nop
endlabel func_8013B35C
