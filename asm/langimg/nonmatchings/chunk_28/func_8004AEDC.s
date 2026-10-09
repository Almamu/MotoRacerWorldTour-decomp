nonmatching func_8004AEDC, 0x30

glabel func_8004AEDC
    /* 396EC 8004AEDC E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 396F0 8004AEE0 1000BFAF */  sw         $ra, 0x10($sp)
    /* 396F4 8004AEE4 6C2B010C */  jal        func_8004ADB0
    /* 396F8 8004AEE8 00000000 */   nop
    /* 396FC 8004AEEC 03004010 */  beqz       $v0, .L8004AEFC
    /* 39700 8004AEF0 00000000 */   nop
    /* 39704 8004AEF4 202D010C */  jal        func_8004B480
    /* 39708 8004AEF8 00000000 */   nop
  .L8004AEFC:
    /* 3970C 8004AEFC 1000BF8F */  lw         $ra, 0x10($sp)
    /* 39710 8004AF00 00000000 */  nop
    /* 39714 8004AF04 0800E003 */  jr         $ra
    /* 39718 8004AF08 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_8004AEDC
