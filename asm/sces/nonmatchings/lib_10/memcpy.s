nonmatching memcpy, 0x40

glabel memcpy
    /* 1827C 8014ADB0 0A008010 */  beqz       $a0, .L8014ADDC
    /* 18280 8014ADB4 21100000 */   addu      $v0, $zero, $zero
    /* 18284 8014ADB8 0700C018 */  blez       $a2, .L8014ADD8
    /* 18288 8014ADBC 21188000 */   addu      $v1, $a0, $zero
  .L8014ADC0:
    /* 1828C 8014ADC0 0000A290 */  lbu        $v0, 0x0($a1)
    /* 18290 8014ADC4 0100A524 */  addiu      $a1, $a1, 0x1
    /* 18294 8014ADC8 FFFFC624 */  addiu      $a2, $a2, -0x1
    /* 18298 8014ADCC 000082A0 */  sb         $v0, 0x0($a0)
    /* 1829C 8014ADD0 FBFFC01C */  bgtz       $a2, .L8014ADC0
    /* 182A0 8014ADD4 01008424 */   addiu     $a0, $a0, 0x1
  .L8014ADD8:
    /* 182A4 8014ADD8 21106000 */  addu       $v0, $v1, $zero
  .L8014ADDC:
    /* 182A8 8014ADDC 0800E003 */  jr         $ra
    /* 182AC 8014ADE0 00000000 */   nop
    /* 182B0 8014ADE4 00000000 */  nop
    /* 182B4 8014ADE8 00000000 */  nop
    /* 182B8 8014ADEC 00000000 */  nop
endlabel memcpy
