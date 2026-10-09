nonmatching func_800A7AD8, 0x24

glabel func_800A7AD8
    /* 962E8 800A7AD8 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 962EC 800A7ADC 1000BFAF */  sw         $ra, 0x10($sp)
    /* 962F0 800A7AE0 21288000 */  addu       $a1, $a0, $zero
    /* 962F4 800A7AE4 50AB020C */  jal        func_800AAD40
    /* 962F8 800A7AE8 03000424 */   addiu     $a0, $zero, 0x3
    /* 962FC 800A7AEC 1000BF8F */  lw         $ra, 0x10($sp)
    /* 96300 800A7AF0 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 96304 800A7AF4 0800E003 */  jr         $ra
    /* 96308 800A7AF8 00000000 */   nop
endlabel func_800A7AD8
