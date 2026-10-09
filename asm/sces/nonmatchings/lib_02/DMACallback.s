nonmatching DMACallback, 0x30

glabel DMACallback
    /* 87C4 8013B2F8 1C80023C */  lui        $v0, %hi(D_801BEFC8)
    /* 87C8 8013B2FC C8EF428C */  lw         $v0, %lo(D_801BEFC8)($v0)
    /* 87CC 8013B300 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 87D0 8013B304 1000BFAF */  sw         $ra, 0x10($sp)
    /* 87D4 8013B308 0400428C */  lw         $v0, 0x4($v0)
    /* 87D8 8013B30C 00000000 */  nop
    /* 87DC 8013B310 09F84000 */  jalr       $v0
    /* 87E0 8013B314 00000000 */   nop
    /* 87E4 8013B318 1000BF8F */  lw         $ra, 0x10($sp)
    /* 87E8 8013B31C 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 87EC 8013B320 0800E003 */  jr         $ra
    /* 87F0 8013B324 00000000 */   nop
endlabel DMACallback
