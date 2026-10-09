nonmatching func_8013E62C, 0x24

glabel func_8013E62C
    /* BAF8 8013E62C 0600C010 */  beqz       $a2, .L8013E648
    /* BAFC 8013E630 FFFFC224 */   addiu     $v0, $a2, -0x1
    /* BB00 8013E634 FFFF0324 */  addiu      $v1, $zero, -0x1
  .L8013E638:
    /* BB04 8013E638 000085A0 */  sb         $a1, 0x0($a0)
    /* BB08 8013E63C FFFF4224 */  addiu      $v0, $v0, -0x1
    /* BB0C 8013E640 FDFF4314 */  bne        $v0, $v1, .L8013E638
    /* BB10 8013E644 01008424 */   addiu     $a0, $a0, 0x1
  .L8013E648:
    /* BB14 8013E648 0800E003 */  jr         $ra
    /* BB18 8013E64C 00000000 */   nop
endlabel func_8013E62C
    /* BB1C 8013E650 00000000 */  nop
