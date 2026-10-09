nonmatching func_80020AB0, 0x34

glabel func_80020AB0
    /* F2C0 80020AB0 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* F2C4 80020AB4 1000B0AF */  sw         $s0, 0x10($sp)
    /* F2C8 80020AB8 21808000 */  addu       $s0, $a0, $zero
    /* F2CC 80020ABC 1400BFAF */  sw         $ra, 0x14($sp)
    /* F2D0 80020AC0 B982000C */  jal        func_80020AE4
    /* F2D4 80020AC4 801F053C */   lui       $a1, (0x1F800000 >> 16)
    /* F2D8 80020AC8 21200002 */  addu       $a0, $s0, $zero
    /* F2DC 80020ACC 1283000C */  jal        func_80020C48
    /* F2E0 80020AD0 801F053C */   lui       $a1, (0x1F800000 >> 16)
    /* F2E4 80020AD4 1400BF8F */  lw         $ra, 0x14($sp)
    /* F2E8 80020AD8 1000B08F */  lw         $s0, 0x10($sp)
    /* F2EC 80020ADC 0800E003 */  jr         $ra
    /* F2F0 80020AE0 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_80020AB0
