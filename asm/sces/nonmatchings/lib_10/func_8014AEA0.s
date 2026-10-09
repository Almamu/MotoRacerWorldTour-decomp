nonmatching func_8014AEA0, 0x64

glabel func_8014AEA0
    /* 1836C 8014AEA0 03008010 */  beqz       $a0, .L8014AEB0
    /* 18370 8014AEA4 00000000 */   nop
    /* 18374 8014AEA8 0B00A014 */  bnez       $a1, .L8014AED8
    /* 18378 8014AEAC 00000000 */   nop
  .L8014AEB0:
    /* 1837C 8014AEB0 12008510 */  beq        $a0, $a1, .L8014AEFC
    /* 18380 8014AEB4 21100000 */   addu      $v0, $zero, $zero
    /* 18384 8014AEB8 10008010 */  beqz       $a0, .L8014AEFC
    /* 18388 8014AEBC FFFF0224 */   addiu     $v0, $zero, -0x1
    /* 1838C 8014AEC0 BF2B0508 */  j          .L8014AEFC
    /* 18390 8014AEC4 01000224 */   addiu     $v0, $zero, 0x1
  .L8014AEC8:
    /* 18394 8014AEC8 BF2B0508 */  j          .L8014AEFC
    /* 18398 8014AECC 21100000 */   addu      $v0, $zero, $zero
  .L8014AED0:
    /* 1839C 8014AED0 FDFFC010 */  beqz       $a2, .L8014AEC8
    /* 183A0 8014AED4 01008424 */   addiu     $a0, $a0, 0x1
  .L8014AED8:
    /* 183A4 8014AED8 0000A380 */  lb         $v1, 0x0($a1)
    /* 183A8 8014AEDC 00008280 */  lb         $v0, 0x0($a0)
    /* 183AC 8014AEE0 00008690 */  lbu        $a2, 0x0($a0)
    /* 183B0 8014AEE4 FAFF4310 */  beq        $v0, $v1, .L8014AED0
    /* 183B4 8014AEE8 0100A524 */   addiu     $a1, $a1, 0x1
    /* 183B8 8014AEEC 00008380 */  lb         $v1, 0x0($a0)
    /* 183BC 8014AEF0 FFFFA280 */  lb         $v0, -0x1($a1)
    /* 183C0 8014AEF4 00000000 */  nop
    /* 183C4 8014AEF8 23106200 */  subu       $v0, $v1, $v0
  .L8014AEFC:
    /* 183C8 8014AEFC 0800E003 */  jr         $ra
    /* 183CC 8014AF00 00000000 */   nop
endlabel func_8014AEA0
    /* 183D0 8014AF04 00000000 */  nop
    /* 183D4 8014AF08 00000000 */  nop
    /* 183D8 8014AF0C 00000000 */  nop
