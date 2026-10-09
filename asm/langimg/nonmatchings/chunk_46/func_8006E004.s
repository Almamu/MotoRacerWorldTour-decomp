nonmatching func_8006E004, 0x28

glabel func_8006E004
    /* 5C814 8006E004 21288000 */  addu       $a1, $a0, $zero
    /* 5C818 8006E008 3838848F */  lw         $a0, %gp_rel(D_800C7F28)($gp)
    /* 5C81C 8006E00C E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 5C820 8006E010 1000BFAF */  sw         $ra, 0x10($sp)
    /* 5C824 8006E014 C5B4010C */  jal        func_8006D314
    /* 5C828 8006E018 00000000 */   nop
    /* 5C82C 8006E01C 1000BF8F */  lw         $ra, 0x10($sp)
    /* 5C830 8006E020 00000000 */  nop
    /* 5C834 8006E024 0800E003 */  jr         $ra
    /* 5C838 8006E028 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_8006E004
