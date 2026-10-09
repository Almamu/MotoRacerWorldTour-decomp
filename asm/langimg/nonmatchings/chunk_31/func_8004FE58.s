nonmatching func_8004FE58, 0x30

glabel func_8004FE58
    /* 3E668 8004FE58 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 3E66C 8004FE5C 2110A000 */  addu       $v0, $a1, $zero
    /* 3E670 8004FE60 1000BFAF */  sw         $ra, 0x10($sp)
    /* 3E674 8004FE64 00004584 */  lh         $a1, 0x0($v0)
    /* 3E678 8004FE68 02004684 */  lh         $a2, 0x2($v0)
    /* 3E67C 8004FE6C 04004784 */  lh         $a3, 0x4($v0)
    /* 3E680 8004FE70 935F020C */  jal        func_80097E4C
    /* 3E684 8004FE74 00000000 */   nop
    /* 3E688 8004FE78 1000BF8F */  lw         $ra, 0x10($sp)
    /* 3E68C 8004FE7C 00000000 */  nop
    /* 3E690 8004FE80 0800E003 */  jr         $ra
    /* 3E694 8004FE84 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_8004FE58
