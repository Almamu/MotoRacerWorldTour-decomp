nonmatching func_80040578, 0x28

glabel func_80040578
    /* 2ED88 80040578 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 2ED8C 8004057C 0C80023C */  lui        $v0, %hi(D_800C53E8)
    /* 2ED90 80040580 E8534224 */  addiu      $v0, $v0, %lo(D_800C53E8)
    /* 2ED94 80040584 1000BFAF */  sw         $ra, 0x10($sp)
    /* 2ED98 80040588 3EFF000C */  jal        func_8003FCF8
    /* 2ED9C 8004058C 680082AC */   sw        $v0, 0x68($a0)
    /* 2EDA0 80040590 1000BF8F */  lw         $ra, 0x10($sp)
    /* 2EDA4 80040594 00000000 */  nop
    /* 2EDA8 80040598 0800E003 */  jr         $ra
    /* 2EDAC 8004059C 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_80040578
