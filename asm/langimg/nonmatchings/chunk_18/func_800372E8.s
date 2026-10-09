nonmatching func_800372E8, 0x30

glabel func_800372E8
    /* 25AF8 800372E8 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 25AFC 800372EC 2110A000 */  addu       $v0, $a1, $zero
    /* 25B00 800372F0 1000BFAF */  sw         $ra, 0x10($sp)
    /* 25B04 800372F4 00004584 */  lh         $a1, 0x0($v0)
    /* 25B08 800372F8 02004684 */  lh         $a2, 0x2($v0)
    /* 25B0C 800372FC 04004784 */  lh         $a3, 0x4($v0)
    /* 25B10 80037300 935F020C */  jal        func_80097E4C
    /* 25B14 80037304 00000000 */   nop
    /* 25B18 80037308 1000BF8F */  lw         $ra, 0x10($sp)
    /* 25B1C 8003730C 00000000 */  nop
    /* 25B20 80037310 0800E003 */  jr         $ra
    /* 25B24 80037314 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_800372E8
