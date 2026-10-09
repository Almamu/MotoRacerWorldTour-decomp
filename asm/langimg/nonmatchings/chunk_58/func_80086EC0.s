nonmatching func_80086EC0, 0x54

glabel func_80086EC0
    /* 756D0 80086EC0 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 756D4 80086EC4 1000B0AF */  sw         $s0, 0x10($sp)
    /* 756D8 80086EC8 21808000 */  addu       $s0, $a0, $zero
    /* 756DC 80086ECC 1400BFAF */  sw         $ra, 0x14($sp)
    /* 756E0 80086ED0 0800028E */  lw         $v0, 0x8($s0)
    /* 756E4 80086ED4 00000000 */  nop
    /* 756E8 80086ED8 08004010 */  beqz       $v0, .L80086EFC
    /* 756EC 80086EDC 00000000 */   nop
    /* 756F0 80086EE0 0000048E */  lw         $a0, 0x0($s0)
    /* 756F4 80086EE4 00000000 */  nop
    /* 756F8 80086EE8 04008010 */  beqz       $a0, .L80086EFC
    /* 756FC 80086EEC 00000000 */   nop
    /* 75700 80086EF0 59D5020C */  jal        func_800B5564
    /* 75704 80086EF4 00000000 */   nop
    /* 75708 80086EF8 000000AE */  sw         $zero, 0x0($s0)
  .L80086EFC:
    /* 7570C 80086EFC 1400BF8F */  lw         $ra, 0x14($sp)
    /* 75710 80086F00 040000AE */  sw         $zero, 0x4($s0)
    /* 75714 80086F04 080000AE */  sw         $zero, 0x8($s0)
    /* 75718 80086F08 1000B08F */  lw         $s0, 0x10($sp)
    /* 7571C 80086F0C 0800E003 */  jr         $ra
    /* 75720 80086F10 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_80086EC0
