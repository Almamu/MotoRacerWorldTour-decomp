nonmatching SpuSetNoiseClock, 0x50

glabel SpuSetNoiseClock
    /* 15D54 80148888 21108000 */  addu       $v0, $a0, $zero
    /* 15D58 8014888C 06004004 */  bltz       $v0, .L801488A8
    /* 15D5C 80148890 21280000 */   addu      $a1, $zero, $zero
    /* 15D60 80148894 21284000 */  addu       $a1, $v0, $zero
    /* 15D64 80148898 4000A228 */  slti       $v0, $a1, 0x40
    /* 15D68 8014889C 02004014 */  bnez       $v0, .L801488A8
    /* 15D6C 801488A0 00000000 */   nop
    /* 15D70 801488A4 3F000524 */  addiu      $a1, $zero, 0x3F
  .L801488A8:
    /* 15D74 801488A8 1C80043C */  lui        $a0, %hi(D_801BFF14)
    /* 15D78 801488AC 14FF848C */  lw         $a0, %lo(D_801BFF14)($a0)
    /* 15D7C 801488B0 3F00A230 */  andi       $v0, $a1, 0x3F
    /* 15D80 801488B4 AA018394 */  lhu        $v1, 0x1AA($a0)
    /* 15D84 801488B8 00120200 */  sll        $v0, $v0, 8
    /* 15D88 801488BC FFC06330 */  andi       $v1, $v1, 0xC0FF
    /* 15D8C 801488C0 25186200 */  or         $v1, $v1, $v0
    /* 15D90 801488C4 2110A000 */  addu       $v0, $a1, $zero
    /* 15D94 801488C8 0800E003 */  jr         $ra
    /* 15D98 801488CC AA0183A4 */   sh        $v1, 0x1AA($a0)
    /* 15D9C 801488D0 00000000 */  nop
    /* 15DA0 801488D4 00000000 */  nop
endlabel SpuSetNoiseClock
