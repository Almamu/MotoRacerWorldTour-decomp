nonmatching func_800553CC, 0x44

glabel func_800553CC
    /* 43BDC 800553CC E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 43BE0 800553D0 1000B0AF */  sw         $s0, 0x10($sp)
    /* 43BE4 800553D4 21808000 */  addu       $s0, $a0, $zero
    /* 43BE8 800553D8 1400BFAF */  sw         $ra, 0x14($sp)
    /* 43BEC 800553DC 0003028E */  lw         $v0, 0x300($s0)
    /* 43BF0 800553E0 00000000 */  nop
    /* 43BF4 800553E4 05004010 */  beqz       $v0, .L800553FC
    /* 43BF8 800553E8 00000000 */   nop
    /* 43BFC 800553EC 3678010C */  jal        func_8005E0D8
    /* 43C00 800553F0 00000000 */   nop
    /* 43C04 800553F4 AA78010C */  jal        func_8005E2A8
    /* 43C08 800553F8 21200002 */   addu      $a0, $s0, $zero
  .L800553FC:
    /* 43C0C 800553FC 1400BF8F */  lw         $ra, 0x14($sp)
    /* 43C10 80055400 1000B08F */  lw         $s0, 0x10($sp)
    /* 43C14 80055404 01000224 */  addiu      $v0, $zero, 0x1
    /* 43C18 80055408 0800E003 */  jr         $ra
    /* 43C1C 8005540C 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_800553CC
