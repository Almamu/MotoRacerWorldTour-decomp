nonmatching func_8006DFD8, 0x2C

glabel func_8006DFD8
    /* 5C7E8 8006DFD8 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 5C7EC 8006DFDC 21108000 */  addu       $v0, $a0, $zero
    /* 5C7F0 8006DFE0 2130A000 */  addu       $a2, $a1, $zero
    /* 5C7F4 8006DFE4 3838848F */  lw         $a0, %gp_rel(D_800C7F28)($gp)
    /* 5C7F8 8006DFE8 1000BFAF */  sw         $ra, 0x10($sp)
    /* 5C7FC 8006DFEC F8B4010C */  jal        func_8006D3E0
    /* 5C800 8006DFF0 21284000 */   addu      $a1, $v0, $zero
    /* 5C804 8006DFF4 1000BF8F */  lw         $ra, 0x10($sp)
    /* 5C808 8006DFF8 00000000 */  nop
    /* 5C80C 8006DFFC 0800E003 */  jr         $ra
    /* 5C810 8006E000 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_8006DFD8
