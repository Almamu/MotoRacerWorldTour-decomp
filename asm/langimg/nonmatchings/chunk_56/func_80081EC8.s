nonmatching func_80081EC8, 0x60

glabel func_80081EC8
    /* 706D8 80081EC8 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 706DC 80081ECC 1000B0AF */  sw         $s0, 0x10($sp)
    /* 706E0 80081ED0 21808000 */  addu       $s0, $a0, $zero
    /* 706E4 80081ED4 1400BFAF */  sw         $ra, 0x14($sp)
    /* 706E8 80081ED8 5C00048E */  lw         $a0, 0x5C($s0)
    /* 706EC 80081EDC 00000000 */  nop
    /* 706F0 80081EE0 04008010 */  beqz       $a0, .L80081EF4
    /* 706F4 80081EE4 00000000 */   nop
    /* 706F8 80081EE8 8D9C020C */  jal        __builtin_vec_delete
    /* 706FC 80081EEC 00000000 */   nop
    /* 70700 80081EF0 5C0000AE */  sw         $zero, 0x5C($s0)
  .L80081EF4:
    /* 70704 80081EF4 5800048E */  lw         $a0, 0x58($s0)
    /* 70708 80081EF8 00000000 */  nop
    /* 7070C 80081EFC 04008010 */  beqz       $a0, .L80081F10
    /* 70710 80081F00 00000000 */   nop
    /* 70714 80081F04 8D9C020C */  jal        __builtin_vec_delete
    /* 70718 80081F08 00000000 */   nop
    /* 7071C 80081F0C 580000AE */  sw         $zero, 0x58($s0)
  .L80081F10:
    /* 70720 80081F10 1400BF8F */  lw         $ra, 0x14($sp)
    /* 70724 80081F14 440000A6 */  sh         $zero, 0x44($s0)
    /* 70728 80081F18 400000A6 */  sh         $zero, 0x40($s0)
    /* 7072C 80081F1C 1000B08F */  lw         $s0, 0x10($sp)
    /* 70730 80081F20 0800E003 */  jr         $ra
    /* 70734 80081F24 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_80081EC8
