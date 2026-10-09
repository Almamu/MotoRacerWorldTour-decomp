nonmatching func_8003FE2C, 0x30

glabel func_8003FE2C
    /* 2E63C 8003FE2C E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 2E640 8003FE30 1000B0AF */  sw         $s0, 0x10($sp)
    /* 2E644 8003FE34 21808000 */  addu       $s0, $a0, $zero
    /* 2E648 8003FE38 1C000426 */  addiu      $a0, $s0, 0x1C
    /* 2E64C 8003FE3C 1400BFAF */  sw         $ra, 0x14($sp)
    /* 2E650 8003FE40 5ED9020C */  jal        strncpy
    /* 2E654 8003FE44 3F000624 */   addiu     $a2, $zero, 0x3F
    /* 2E658 8003FE48 1400BF8F */  lw         $ra, 0x14($sp)
    /* 2E65C 8003FE4C 5B0000A2 */  sb         $zero, 0x5B($s0)
    /* 2E660 8003FE50 1000B08F */  lw         $s0, 0x10($sp)
    /* 2E664 8003FE54 0800E003 */  jr         $ra
    /* 2E668 8003FE58 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_8003FE2C
