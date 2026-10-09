nonmatching func_8014AF10, 0x44

glabel func_8014AF10
    /* 183DC 8014AF10 0E008010 */  beqz       $a0, .L8014AF4C
    /* 183E0 8014AF14 21100000 */   addu      $v0, $zero, $zero
    /* 183E4 8014AF18 0C00A010 */  beqz       $a1, .L8014AF4C
    /* 183E8 8014AF1C 21188000 */   addu      $v1, $a0, $zero
    /* 183EC 8014AF20 0000A290 */  lbu        $v0, 0x0($a1)
    /* 183F0 8014AF24 0100A524 */  addiu      $a1, $a1, 0x1
    /* 183F4 8014AF28 01006424 */  addiu      $a0, $v1, 0x1
    /* 183F8 8014AF2C 06004010 */  beqz       $v0, .L8014AF48
    /* 183FC 8014AF30 000062A0 */   sb        $v0, 0x0($v1)
  .L8014AF34:
    /* 18400 8014AF34 0000A290 */  lbu        $v0, 0x0($a1)
    /* 18404 8014AF38 0100A524 */  addiu      $a1, $a1, 0x1
    /* 18408 8014AF3C 000082A0 */  sb         $v0, 0x0($a0)
    /* 1840C 8014AF40 FCFF4014 */  bnez       $v0, .L8014AF34
    /* 18410 8014AF44 01008424 */   addiu     $a0, $a0, 0x1
  .L8014AF48:
    /* 18414 8014AF48 21106000 */  addu       $v0, $v1, $zero
  .L8014AF4C:
    /* 18418 8014AF4C 0800E003 */  jr         $ra
    /* 1841C 8014AF50 00000000 */   nop
endlabel func_8014AF10
    /* 18420 8014AF54 00000000 */  nop
    /* 18424 8014AF58 00000000 */  nop
    /* 18428 8014AF5C 00000000 */  nop
