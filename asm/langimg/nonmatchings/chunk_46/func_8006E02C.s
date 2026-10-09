nonmatching func_8006E02C, 0x28

glabel func_8006E02C
    /* 5C83C 8006E02C 21288000 */  addu       $a1, $a0, $zero
    /* 5C840 8006E030 3838848F */  lw         $a0, %gp_rel(D_800C7F28)($gp)
    /* 5C844 8006E034 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 5C848 8006E038 1000BFAF */  sw         $ra, 0x10($sp)
    /* 5C84C 8006E03C E2B4010C */  jal        func_8006D388
    /* 5C850 8006E040 00000000 */   nop
    /* 5C854 8006E044 1000BF8F */  lw         $ra, 0x10($sp)
    /* 5C858 8006E048 00000000 */  nop
    /* 5C85C 8006E04C 0800E003 */  jr         $ra
    /* 5C860 8006E050 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_8006E02C
