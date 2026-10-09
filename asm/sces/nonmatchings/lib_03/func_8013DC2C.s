nonmatching func_8013DC2C, 0x24

glabel func_8013DC2C
    /* B0F8 8013DC2C E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* B0FC 8013DC30 1000BFAF */  sw         $ra, 0x10($sp)
    /* B100 8013DC34 2138C000 */  addu       $a3, $a2, $zero
    /* B104 8013DC38 14F7040C */  jal        func_8013DC50
    /* B108 8013DC3C 21300000 */   addu      $a2, $zero, $zero
    /* B10C 8013DC40 1000BF8F */  lw         $ra, 0x10($sp)
    /* B110 8013DC44 1800BD27 */  addiu      $sp, $sp, 0x18
    /* B114 8013DC48 0800E003 */  jr         $ra
    /* B118 8013DC4C 00000000 */   nop
endlabel func_8013DC2C
