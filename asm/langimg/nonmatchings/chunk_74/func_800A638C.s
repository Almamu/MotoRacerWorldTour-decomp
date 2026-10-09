nonmatching func_800A638C, 0x48

glabel func_800A638C
    /* 94B9C 800A638C 00008280 */  lb         $v0, 0x0($a0)
    /* 94BA0 800A6390 00000000 */  nop
    /* 94BA4 800A6394 0D004010 */  beqz       $v0, .L800A63CC
    /* 94BA8 800A6398 21188000 */   addu      $v1, $a0, $zero
  .L800A639C:
    /* 94BAC 800A639C 00006590 */  lbu        $a1, 0x0($v1)
    /* 94BB0 800A63A0 00000000 */  nop
    /* 94BB4 800A63A4 BFFFA224 */  addiu      $v0, $a1, -0x41
    /* 94BB8 800A63A8 1A00422C */  sltiu      $v0, $v0, 0x1A
    /* 94BBC 800A63AC 02004010 */  beqz       $v0, .L800A63B8
    /* 94BC0 800A63B0 2000A224 */   addiu     $v0, $a1, 0x20
    /* 94BC4 800A63B4 000062A0 */  sb         $v0, 0x0($v1)
  .L800A63B8:
    /* 94BC8 800A63B8 01006324 */  addiu      $v1, $v1, 0x1
    /* 94BCC 800A63BC 00006280 */  lb         $v0, 0x0($v1)
    /* 94BD0 800A63C0 00000000 */  nop
    /* 94BD4 800A63C4 F5FF4014 */  bnez       $v0, .L800A639C
    /* 94BD8 800A63C8 00000000 */   nop
  .L800A63CC:
    /* 94BDC 800A63CC 0800E003 */  jr         $ra
    /* 94BE0 800A63D0 21108000 */   addu      $v0, $a0, $zero
endlabel func_800A638C
