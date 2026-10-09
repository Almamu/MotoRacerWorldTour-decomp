nonmatching func_800A5888, 0x28

glabel func_800A5888
    /* 94098 800A5888 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 9409C 800A588C 0100A530 */  andi       $a1, $a1, 0x1
    /* 940A0 800A5890 0300A010 */  beqz       $a1, .L800A58A0
    /* 940A4 800A5894 1000BFAF */   sw        $ra, 0x10($sp)
    /* 940A8 800A5898 679C020C */  jal        __builtin_delete
    /* 940AC 800A589C 00000000 */   nop
  .L800A58A0:
    /* 940B0 800A58A0 1000BF8F */  lw         $ra, 0x10($sp)
    /* 940B4 800A58A4 00000000 */  nop
    /* 940B8 800A58A8 0800E003 */  jr         $ra
    /* 940BC 800A58AC 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_800A5888
