nonmatching func_8003B734, 0x7C

glabel func_8003B734
    /* 29F44 8003B734 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 29F48 8003B738 1000B0AF */  sw         $s0, 0x10($sp)
    /* 29F4C 8003B73C 21808000 */  addu       $s0, $a0, $zero
    /* 29F50 8003B740 1400BFAF */  sw         $ra, 0x14($sp)
    /* 29F54 8003B744 940A038E */  lw         $v1, 0xA94($s0)
    /* 29F58 8003B748 00000000 */  nop
    /* 29F5C 8003B74C 10006230 */  andi       $v0, $v1, 0x10
    /* 29F60 8003B750 13004014 */  bnez       $v0, .L8003B7A0
    /* 29F64 8003B754 10006234 */   ori       $v0, $v1, 0x10
    /* 29F68 8003B758 0300C010 */  beqz       $a2, .L8003B768
    /* 29F6C 8003B75C 940A02AE */   sw        $v0, 0xA94($s0)
    /* 29F70 8003B760 ECED000C */  jal        func_8003B7B0
    /* 29F74 8003B764 00000000 */   nop
  .L8003B768:
    /* 29F78 8003B768 4801048E */  lw         $a0, 0x148($s0)
    /* 29F7C 8003B76C 00000000 */  nop
    /* 29F80 8003B770 04008010 */  beqz       $a0, .L8003B784
    /* 29F84 8003B774 00000000 */   nop
    /* 29F88 8003B778 8D9C020C */  jal        __builtin_vec_delete
    /* 29F8C 8003B77C 00000000 */   nop
    /* 29F90 8003B780 480100AE */  sw         $zero, 0x148($s0)
  .L8003B784:
    /* 29F94 8003B784 3800048E */  lw         $a0, 0x38($s0)
    /* 29F98 8003B788 00000000 */  nop
    /* 29F9C 8003B78C 04008010 */  beqz       $a0, .L8003B7A0
    /* 29FA0 8003B790 00000000 */   nop
    /* 29FA4 8003B794 6074000C */  jal        func_8001D180
    /* 29FA8 8003B798 03000524 */   addiu     $a1, $zero, 0x3
    /* 29FAC 8003B79C 380000AE */  sw         $zero, 0x38($s0)
  .L8003B7A0:
    /* 29FB0 8003B7A0 1400BF8F */  lw         $ra, 0x14($sp)
    /* 29FB4 8003B7A4 1000B08F */  lw         $s0, 0x10($sp)
    /* 29FB8 8003B7A8 0800E003 */  jr         $ra
    /* 29FBC 8003B7AC 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_8003B734
