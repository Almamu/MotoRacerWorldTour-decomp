nonmatching func_80078CCC, 0x20

glabel func_80078CCC
    /* 674DC 80078CCC E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 674E0 80078CD0 1000BFAF */  sw         $ra, 0x10($sp)
    /* 674E4 80078CD4 AC1F020C */  jal        func_80087EB0
    /* 674E8 80078CD8 30008424 */   addiu     $a0, $a0, 0x30
    /* 674EC 80078CDC 1000BF8F */  lw         $ra, 0x10($sp)
    /* 674F0 80078CE0 00000000 */  nop
    /* 674F4 80078CE4 0800E003 */  jr         $ra
    /* 674F8 80078CE8 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_80078CCC
