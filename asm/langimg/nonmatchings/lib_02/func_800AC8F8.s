nonmatching func_800AC8F8, 0x40

glabel func_800AC8F8
    /* 9B108 800AC8F8 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 9B10C 800AC8FC 1000B0AF */  sw         $s0, 0x10($sp)
    /* 9B110 800AC900 21808000 */  addu       $s0, $a0, $zero
    /* 9B114 800AC904 02000224 */  addiu      $v0, $zero, 0x2
    /* 9B118 800AC908 1400BFAF */  sw         $ra, 0x14($sp)
    /* 9B11C 800AC90C 030002A2 */  sb         $v0, 0x3($s0)
    /* 9B120 800AC910 0000A484 */  lh         $a0, 0x0($a1)
    /* 9B124 800AC914 0200A584 */  lh         $a1, 0x2($a1)
    /* 9B128 800AC918 BCB3020C */  jal        func_800ACEF0
    /* 9B12C 800AC91C 00000000 */   nop
    /* 9B130 800AC920 040002AE */  sw         $v0, 0x4($s0)
    /* 9B134 800AC924 080000AE */  sw         $zero, 0x8($s0)
    /* 9B138 800AC928 1400BF8F */  lw         $ra, 0x14($sp)
    /* 9B13C 800AC92C 1000B08F */  lw         $s0, 0x10($sp)
    /* 9B140 800AC930 0800E003 */  jr         $ra
    /* 9B144 800AC934 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_800AC8F8
