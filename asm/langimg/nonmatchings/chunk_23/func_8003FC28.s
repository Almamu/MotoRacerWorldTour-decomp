nonmatching func_8003FC28, 0x6C

glabel func_8003FC28
    /* 2E438 8003FC28 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 2E43C 8003FC2C 1000BFAF */  sw         $ra, 0x10($sp)
    /* 2E440 8003FC30 5C01878C */  lw         $a3, 0x15C($a0)
    /* 2E444 8003FC34 00000000 */  nop
    /* 2E448 8003FC38 1200E010 */  beqz       $a3, .L8003FC84
    /* 2E44C 8003FC3C 00000000 */   nop
    /* 2E450 8003FC40 6001848C */  lw         $a0, 0x160($a0)
    /* 2E454 8003FC44 00000000 */  nop
    /* 2E458 8003FC48 0E008010 */  beqz       $a0, .L8003FC84
    /* 2E45C 8003FC4C FFFF0324 */   addiu     $v1, $zero, -0x1
    /* 2E460 8003FC50 0300C314 */  bne        $a2, $v1, .L8003FC60
    /* 2E464 8003FC54 80100500 */   sll       $v0, $a1, 2
    /* 2E468 8003FC58 1BFF0008 */  j          .L8003FC6C
    /* 2E46C 8003FC5C 21104400 */   addu      $v0, $v0, $a0
  .L8003FC60:
    /* 2E470 8003FC60 0800C010 */  beqz       $a2, .L8003FC84
    /* 2E474 8003FC64 80100600 */   sll       $v0, $a2, 2
    /* 2E478 8003FC68 21104700 */  addu       $v0, $v0, $a3
  .L8003FC6C:
    /* 2E47C 8003FC6C 0000448C */  lw         $a0, 0x0($v0)
    /* 2E480 8003FC70 00000000 */  nop
    /* 2E484 8003FC74 03008310 */  beq        $a0, $v1, .L8003FC84
    /* 2E488 8003FC78 00000000 */   nop
    /* 2E48C 8003FC7C A1B2010C */  jal        func_8006CA84
    /* 2E490 8003FC80 7F000524 */   addiu     $a1, $zero, 0x7F
  .L8003FC84:
    /* 2E494 8003FC84 1000BF8F */  lw         $ra, 0x10($sp)
    /* 2E498 8003FC88 00000000 */  nop
    /* 2E49C 8003FC8C 0800E003 */  jr         $ra
    /* 2E4A0 8003FC90 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_8003FC28
