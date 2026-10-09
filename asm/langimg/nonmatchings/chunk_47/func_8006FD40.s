nonmatching func_8006FD40, 0x38

glabel func_8006FD40
    /* 5E550 8006FD40 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 5E554 8006FD44 1000B0AF */  sw         $s0, 0x10($sp)
    /* 5E558 8006FD48 08009024 */  addiu      $s0, $a0, 0x8
    /* 5E55C 8006FD4C 1400BFAF */  sw         $ra, 0x14($sp)
    /* 5E560 8006FD50 215A020C */  jal        func_80096884
    /* 5E564 8006FD54 21200002 */   addu      $a0, $s0, $zero
    /* 5E568 8006FD58 03004010 */  beqz       $v0, .L8006FD68
    /* 5E56C 8006FD5C 00000000 */   nop
    /* 5E570 8006FD60 0B5A020C */  jal        func_8009682C
    /* 5E574 8006FD64 21200002 */   addu      $a0, $s0, $zero
  .L8006FD68:
    /* 5E578 8006FD68 1400BF8F */  lw         $ra, 0x14($sp)
    /* 5E57C 8006FD6C 1000B08F */  lw         $s0, 0x10($sp)
    /* 5E580 8006FD70 0800E003 */  jr         $ra
    /* 5E584 8006FD74 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_8006FD40
