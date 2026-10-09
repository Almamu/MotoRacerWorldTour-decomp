nonmatching func_8006FF0C, 0x38

glabel func_8006FF0C
    /* 5E71C 8006FF0C E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 5E720 8006FF10 1000B0AF */  sw         $s0, 0x10($sp)
    /* 5E724 8006FF14 21808000 */  addu       $s0, $a0, $zero
    /* 5E728 8006FF18 1400BFAF */  sw         $ra, 0x14($sp)
    /* 5E72C 8006FF1C 99BF010C */  jal        func_8006FE64
    /* 5E730 8006FF20 01000524 */   addiu     $a1, $zero, 0x1
    /* 5E734 8006FF24 08000426 */  addiu      $a0, $s0, 0x8
    /* 5E738 8006FF28 02000524 */  addiu      $a1, $zero, 0x2
    /* 5E73C 8006FF2C 465A020C */  jal        func_80096918
    /* 5E740 8006FF30 000000AE */   sw        $zero, 0x0($s0)
    /* 5E744 8006FF34 1400BF8F */  lw         $ra, 0x14($sp)
    /* 5E748 8006FF38 1000B08F */  lw         $s0, 0x10($sp)
    /* 5E74C 8006FF3C 0800E003 */  jr         $ra
    /* 5E750 8006FF40 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_8006FF0C
