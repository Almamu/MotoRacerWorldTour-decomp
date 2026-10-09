nonmatching func_800AA524, 0x34

glabel func_800AA524
    /* 98D34 800AA524 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 98D38 800AA528 1000B0AF */  sw         $s0, 0x10($sp)
    /* 98D3C 800AA52C 21808000 */  addu       $s0, $a0, $zero
    /* 98D40 800AA530 03000016 */  bnez       $s0, .L800AA540
    /* 98D44 800AA534 1400BFAF */   sw        $ra, 0x14($sp)
    /* 98D48 800AA538 38AB020C */  jal        func_800AACE0
    /* 98D4C 800AA53C 00000000 */   nop
  .L800AA540:
    /* 98D50 800AA540 98A9020C */  jal        func_800AA660
    /* 98D54 800AA544 21200002 */   addu      $a0, $s0, $zero
    /* 98D58 800AA548 1400BF8F */  lw         $ra, 0x14($sp)
    /* 98D5C 800AA54C 1000B08F */  lw         $s0, 0x10($sp)
    /* 98D60 800AA550 0800E003 */  jr         $ra
    /* 98D64 800AA554 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_800AA524
