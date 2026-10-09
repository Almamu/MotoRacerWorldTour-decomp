nonmatching func_8001A63C, 0x28

glabel func_8001A63C
    /* 8E4C 8001A63C E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 8E50 8001A640 0100A530 */  andi       $a1, $a1, 0x1
    /* 8E54 8001A644 0300A010 */  beqz       $a1, .L8001A654
    /* 8E58 8001A648 1000BFAF */   sw        $ra, 0x10($sp)
    /* 8E5C 8001A64C 679C020C */  jal        __builtin_delete
    /* 8E60 8001A650 00000000 */   nop
  .L8001A654:
    /* 8E64 8001A654 1000BF8F */  lw         $ra, 0x10($sp)
    /* 8E68 8001A658 00000000 */  nop
    /* 8E6C 8001A65C 0800E003 */  jr         $ra
    /* 8E70 8001A660 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_8001A63C
