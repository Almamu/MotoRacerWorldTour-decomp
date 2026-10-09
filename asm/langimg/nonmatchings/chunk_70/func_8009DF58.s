nonmatching func_8009DF58, 0x38

glabel func_8009DF58
    /* 8C768 8009DF58 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 8C76C 8009DF5C 1000BFAF */  sw         $ra, 0x10($sp)
    /* 8C770 8009DF60 800A828C */  lw         $v0, 0xA80($a0)
    /* 8C774 8009DF64 00000000 */  nop
    /* 8C778 8009DF68 6000448C */  lw         $a0, 0x60($v0)
    /* 8C77C 8009DF6C 00000000 */  nop
    /* 8C780 8009DF70 03008010 */  beqz       $a0, .L8009DF80
    /* 8C784 8009DF74 00000000 */   nop
    /* 8C788 8009DF78 D878020C */  jal        func_8009E360
    /* 8C78C 8009DF7C 00000000 */   nop
  .L8009DF80:
    /* 8C790 8009DF80 1000BF8F */  lw         $ra, 0x10($sp)
    /* 8C794 8009DF84 00000000 */  nop
    /* 8C798 8009DF88 0800E003 */  jr         $ra
    /* 8C79C 8009DF8C 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_8009DF58
