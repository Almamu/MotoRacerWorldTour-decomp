nonmatching VSyncCallback, 0x34

glabel VSyncCallback
    /* 87F4 8013B328 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 87F8 8013B32C 1C80023C */  lui        $v0, %hi(D_801BEFC8)
    /* 87FC 8013B330 C8EF428C */  lw         $v0, %lo(D_801BEFC8)($v0)
    /* 8800 8013B334 21288000 */  addu       $a1, $a0, $zero
    /* 8804 8013B338 1000BFAF */  sw         $ra, 0x10($sp)
    /* 8808 8013B33C 1400428C */  lw         $v0, 0x14($v0)
    /* 880C 8013B340 00000000 */  nop
    /* 8810 8013B344 09F84000 */  jalr       $v0
    /* 8814 8013B348 04000424 */   addiu     $a0, $zero, 0x4
    /* 8818 8013B34C 1000BF8F */  lw         $ra, 0x10($sp)
    /* 881C 8013B350 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 8820 8013B354 0800E003 */  jr         $ra
    /* 8824 8013B358 00000000 */   nop
endlabel VSyncCallback
