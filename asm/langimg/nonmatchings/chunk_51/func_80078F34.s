nonmatching func_80078F34, 0x28

glabel func_80078F34
    /* 67744 80078F34 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 67748 80078F38 0100A530 */  andi       $a1, $a1, 0x1
    /* 6774C 80078F3C 0300A010 */  beqz       $a1, .L80078F4C
    /* 67750 80078F40 1000BFAF */   sw        $ra, 0x10($sp)
    /* 67754 80078F44 679C020C */  jal        __builtin_delete
    /* 67758 80078F48 00000000 */   nop
  .L80078F4C:
    /* 6775C 80078F4C 1000BF8F */  lw         $ra, 0x10($sp)
    /* 67760 80078F50 00000000 */  nop
    /* 67764 80078F54 0800E003 */  jr         $ra
    /* 67768 80078F58 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_80078F34
