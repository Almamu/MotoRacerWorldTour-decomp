nonmatching func_80014B74, 0x3C

glabel func_80014B74
    /* 3384 80014B74 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 3388 80014B78 1000BFAF */  sw         $ra, 0x10($sp)
    /* 338C 80014B7C 9F50000C */  jal        func_8001427C
    /* 3390 80014B80 00000000 */   nop
    /* 3394 80014B84 21184000 */  addu       $v1, $v0, $zero
    /* 3398 80014B88 05006010 */  beqz       $v1, .L80014BA0
    /* 339C 80014B8C 00000000 */   nop
    /* 33A0 80014B90 1000628C */  lw         $v0, 0x10($v1)
    /* 33A4 80014B94 00000000 */  nop
    /* 33A8 80014B98 80004234 */  ori        $v0, $v0, 0x80
    /* 33AC 80014B9C 100062AC */  sw         $v0, 0x10($v1)
  .L80014BA0:
    /* 33B0 80014BA0 1000BF8F */  lw         $ra, 0x10($sp)
    /* 33B4 80014BA4 00000000 */  nop
    /* 33B8 80014BA8 0800E003 */  jr         $ra
    /* 33BC 80014BAC 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_80014B74
