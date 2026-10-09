nonmatching bzero, 0x30

glabel bzero
    /* 181FC 8014AD30 09008010 */  beqz       $a0, .L8014AD58
    /* 18200 8014AD34 21100000 */   addu      $v0, $zero, $zero
    /* 18204 8014AD38 0300A01C */  bgtz       $a1, .L8014AD48
    /* 18208 8014AD3C 21108000 */   addu      $v0, $a0, $zero
    /* 1820C 8014AD40 562B0508 */  j          .L8014AD58
    /* 18210 8014AD44 21100000 */   addu      $v0, $zero, $zero
  .L8014AD48:
    /* 18214 8014AD48 000080A0 */  sb         $zero, 0x0($a0)
    /* 18218 8014AD4C FFFFA524 */  addiu      $a1, $a1, -0x1
    /* 1821C 8014AD50 FDFFA01C */  bgtz       $a1, .L8014AD48
    /* 18220 8014AD54 01008424 */   addiu     $a0, $a0, 0x1
  .L8014AD58:
    /* 18224 8014AD58 0800E003 */  jr         $ra
    /* 18228 8014AD5C 00000000 */   nop
endlabel bzero
