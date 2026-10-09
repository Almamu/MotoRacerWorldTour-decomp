nonmatching func_80022CD4, 0x30

glabel func_80022CD4
    /* 114E4 80022CD4 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 114E8 80022CD8 2110A000 */  addu       $v0, $a1, $zero
    /* 114EC 80022CDC 1000BFAF */  sw         $ra, 0x10($sp)
    /* 114F0 80022CE0 00004584 */  lh         $a1, 0x0($v0)
    /* 114F4 80022CE4 02004684 */  lh         $a2, 0x2($v0)
    /* 114F8 80022CE8 04004784 */  lh         $a3, 0x4($v0)
    /* 114FC 80022CEC 935F020C */  jal        func_80097E4C
    /* 11500 80022CF0 00000000 */   nop
    /* 11504 80022CF4 1000BF8F */  lw         $ra, 0x10($sp)
    /* 11508 80022CF8 00000000 */  nop
    /* 1150C 80022CFC 0800E003 */  jr         $ra
    /* 11510 80022D00 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_80022CD4
