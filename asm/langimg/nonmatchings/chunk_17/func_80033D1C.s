nonmatching func_80033D1C, 0x30

glabel func_80033D1C
    /* 2252C 80033D1C E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 22530 80033D20 2110A000 */  addu       $v0, $a1, $zero
    /* 22534 80033D24 1000BFAF */  sw         $ra, 0x10($sp)
    /* 22538 80033D28 00004584 */  lh         $a1, 0x0($v0)
    /* 2253C 80033D2C 02004684 */  lh         $a2, 0x2($v0)
    /* 22540 80033D30 04004784 */  lh         $a3, 0x4($v0)
    /* 22544 80033D34 935F020C */  jal        func_80097E4C
    /* 22548 80033D38 00000000 */   nop
    /* 2254C 80033D3C 1000BF8F */  lw         $ra, 0x10($sp)
    /* 22550 80033D40 00000000 */  nop
    /* 22554 80033D44 0800E003 */  jr         $ra
    /* 22558 80033D48 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_80033D1C
