nonmatching func_800AAA70, 0x34

glabel func_800AAA70
    /* 99280 800AAA70 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 99284 800AAA74 1000B0AF */  sw         $s0, 0x10($sp)
    /* 99288 800AAA78 1400BFAF */  sw         $ra, 0x14($sp)
    /* 9928C 800AAA7C B0AA020C */  jal        func_800AAAC0
    /* 99290 800AAA80 21808000 */   addu      $s0, $a0, $zero
    /* 99294 800AAA84 21200002 */  addu       $a0, $s0, $zero
    /* 99298 800AAA88 3F000524 */  addiu      $a1, $zero, 0x3F
    /* 9929C 800AAA8C ACAA020C */  jal        func_800AAAB0
    /* 992A0 800AAA90 21300000 */   addu      $a2, $zero, $zero
    /* 992A4 800AAA94 1400BF8F */  lw         $ra, 0x14($sp)
    /* 992A8 800AAA98 1000B08F */  lw         $s0, 0x10($sp)
    /* 992AC 800AAA9C 0800E003 */  jr         $ra
    /* 992B0 800AAAA0 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_800AAA70
    /* 992B4 800AAAA4 00000000 */  nop
    /* 992B8 800AAAA8 00000000 */  nop
    /* 992BC 800AAAAC 00000000 */  nop
