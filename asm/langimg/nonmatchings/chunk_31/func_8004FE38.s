nonmatching func_8004FE38, 0x20

glabel func_8004FE38
    /* 3E648 8004FE38 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 3E64C 8004FE3C 1000BFAF */  sw         $ra, 0x10($sp)
    /* 3E650 8004FE40 0F3E010C */  jal        func_8004F83C
    /* 3E654 8004FE44 F800A524 */   addiu     $a1, $a1, 0xF8
    /* 3E658 8004FE48 1000BF8F */  lw         $ra, 0x10($sp)
    /* 3E65C 8004FE4C 00000000 */  nop
    /* 3E660 8004FE50 0800E003 */  jr         $ra
    /* 3E664 8004FE54 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_8004FE38
