nonmatching func_80089190, 0x38

glabel func_80089190
    /* 779A0 80089190 0800828C */  lw         $v0, 0x8($a0)
    /* 779A4 80089194 00000000 */  nop
    /* 779A8 80089198 1800A200 */  mult       $a1, $v0
    /* 779AC 8008919C E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 779B0 800891A0 1000BFAF */  sw         $ra, 0x10($sp)
    /* 779B4 800891A4 0400858C */  lw         $a1, 0x4($a0)
    /* 779B8 800891A8 12180000 */  mflo       $v1
    /* 779BC 800891AC 2128A300 */  addu       $a1, $a1, $v1
    /* 779C0 800891B0 7A24020C */  jal        func_800891E8
    /* 779C4 800891B4 2128A600 */   addu      $a1, $a1, $a2
    /* 779C8 800891B8 1000BF8F */  lw         $ra, 0x10($sp)
    /* 779CC 800891BC 00000000 */  nop
    /* 779D0 800891C0 0800E003 */  jr         $ra
    /* 779D4 800891C4 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_80089190
