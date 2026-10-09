nonmatching func_80014774, 0x30

glabel func_80014774
    /* 2F84 80014774 01008280 */  lb         $v0, 0x1($a0)
    /* 2F88 80014778 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 2F8C 8001477C 05004010 */  beqz       $v0, .L80014794
    /* 2F90 80014780 1000BFAF */   sw        $ra, 0x10($sp)
    /* 2F94 80014784 8D51000C */  jal        func_80014634
    /* 2F98 80014788 00000000 */   nop
    /* 2F9C 8001478C E147000C */  jal        func_80011F84
    /* 2FA0 80014790 00000000 */   nop
  .L80014794:
    /* 2FA4 80014794 1000BF8F */  lw         $ra, 0x10($sp)
    /* 2FA8 80014798 00000000 */  nop
    /* 2FAC 8001479C 0800E003 */  jr         $ra
    /* 2FB0 800147A0 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_80014774
