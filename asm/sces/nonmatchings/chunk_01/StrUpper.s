nonmatching StrUpper, 0x48

glabel StrUpper
    /* 3394 80135EC8 00008280 */  lb         $v0, 0x0($a0)
    /* 3398 80135ECC 00000000 */  nop
    /* 339C 80135ED0 0D004010 */  beqz       $v0, .L80135F08
    /* 33A0 80135ED4 21188000 */   addu      $v1, $a0, $zero
  .L80135ED8:
    /* 33A4 80135ED8 00006590 */  lbu        $a1, 0x0($v1)
    /* 33A8 80135EDC 00000000 */  nop
    /* 33AC 80135EE0 9FFFA224 */  addiu      $v0, $a1, -0x61
    /* 33B0 80135EE4 1A00422C */  sltiu      $v0, $v0, 0x1A
    /* 33B4 80135EE8 02004010 */  beqz       $v0, .L80135EF4
    /* 33B8 80135EEC E0FFA224 */   addiu     $v0, $a1, -0x20
    /* 33BC 80135EF0 000062A0 */  sb         $v0, 0x0($v1)
  .L80135EF4:
    /* 33C0 80135EF4 01006324 */  addiu      $v1, $v1, 0x1
    /* 33C4 80135EF8 00006280 */  lb         $v0, 0x0($v1)
    /* 33C8 80135EFC 00000000 */  nop
    /* 33CC 80135F00 F5FF4014 */  bnez       $v0, .L80135ED8
    /* 33D0 80135F04 00000000 */   nop
  .L80135F08:
    /* 33D4 80135F08 0800E003 */  jr         $ra
    /* 33D8 80135F0C 21108000 */   addu      $v0, $a0, $zero
endlabel StrUpper
