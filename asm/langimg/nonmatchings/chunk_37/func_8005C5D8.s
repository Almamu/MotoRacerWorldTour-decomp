nonmatching func_8005C5D8, 0x30

glabel func_8005C5D8
    /* 4ADE8 8005C5D8 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 4ADEC 8005C5DC 2110A000 */  addu       $v0, $a1, $zero
    /* 4ADF0 8005C5E0 1000BFAF */  sw         $ra, 0x10($sp)
    /* 4ADF4 8005C5E4 00004584 */  lh         $a1, 0x0($v0)
    /* 4ADF8 8005C5E8 02004684 */  lh         $a2, 0x2($v0)
    /* 4ADFC 8005C5EC 04004784 */  lh         $a3, 0x4($v0)
    /* 4AE00 8005C5F0 935F020C */  jal        func_80097E4C
    /* 4AE04 8005C5F4 00000000 */   nop
    /* 4AE08 8005C5F8 1000BF8F */  lw         $ra, 0x10($sp)
    /* 4AE0C 8005C5FC 00000000 */  nop
    /* 4AE10 8005C600 0800E003 */  jr         $ra
    /* 4AE14 8005C604 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_8005C5D8
