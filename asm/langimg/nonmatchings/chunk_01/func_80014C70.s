nonmatching func_80014C70, 0x48

glabel func_80014C70
    /* 3480 80014C70 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 3484 80014C74 1000BFAF */  sw         $ra, 0x10($sp)
    /* 3488 80014C78 FFFF0624 */  addiu      $a2, $zero, -0x1
    /* 348C 80014C7C 0A00A610 */  beq        $a1, $a2, .L80014CA8
    /* 3490 80014C80 21180000 */   addu      $v1, $zero, $zero
    /* 3494 80014C84 40100500 */  sll        $v0, $a1, 1
    /* 3498 80014C88 21108200 */  addu       $v0, $a0, $v0
    /* 349C 80014C8C 06004484 */  lh         $a0, 0x6($v0)
    /* 34A0 80014C90 00000000 */  nop
    /* 34A4 80014C94 04008610 */  beq        $a0, $a2, .L80014CA8
    /* 34A8 80014C98 00000000 */   nop
    /* 34AC 80014C9C FB4B000C */  jal        func_80012FEC
    /* 34B0 80014CA0 00000000 */   nop
    /* 34B4 80014CA4 21184000 */  addu       $v1, $v0, $zero
  .L80014CA8:
    /* 34B8 80014CA8 1000BF8F */  lw         $ra, 0x10($sp)
    /* 34BC 80014CAC 21106000 */  addu       $v0, $v1, $zero
    /* 34C0 80014CB0 0800E003 */  jr         $ra
    /* 34C4 80014CB4 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_80014C70
