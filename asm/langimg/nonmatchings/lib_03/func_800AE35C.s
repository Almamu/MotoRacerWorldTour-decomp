nonmatching func_800AE35C, 0x24

glabel func_800AE35C
    /* 9CB6C 800AE35C 0600C010 */  beqz       $a2, .L800AE378
    /* 9CB70 800AE360 FFFFC224 */   addiu     $v0, $a2, -0x1
    /* 9CB74 800AE364 FFFF0324 */  addiu      $v1, $zero, -0x1
  .L800AE368:
    /* 9CB78 800AE368 000085A0 */  sb         $a1, 0x0($a0)
    /* 9CB7C 800AE36C FFFF4224 */  addiu      $v0, $v0, -0x1
    /* 9CB80 800AE370 FDFF4314 */  bne        $v0, $v1, .L800AE368
    /* 9CB84 800AE374 01008424 */   addiu     $a0, $a0, 0x1
  .L800AE378:
    /* 9CB88 800AE378 0800E003 */  jr         $ra
    /* 9CB8C 800AE37C 00000000 */   nop
endlabel func_800AE35C
    /* 9CB90 800AE380 00000000 */  nop
    /* 9CB94 800AE384 00000000 */  nop
