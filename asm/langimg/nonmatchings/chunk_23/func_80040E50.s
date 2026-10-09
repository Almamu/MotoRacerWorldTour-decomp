nonmatching func_80040E50, 0x48

glabel func_80040E50
    /* 2F660 80040E50 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 2F664 80040E54 1000B0AF */  sw         $s0, 0x10($sp)
    /* 2F668 80040E58 1400BFAF */  sw         $ra, 0x14($sp)
    /* 2F66C 80040E5C 6E13010C */  jal        func_80044DB8
    /* 2F670 80040E60 21808000 */   addu      $s0, $a0, $zero
    /* 2F674 80040E64 5C01038E */  lw         $v1, 0x15C($s0)
    /* 2F678 80040E68 00000000 */  nop
    /* 2F67C 80040E6C 05006010 */  beqz       $v1, .L80040E84
    /* 2F680 80040E70 00000000 */   nop
    /* 2F684 80040E74 A000048E */  lw         $a0, 0xA0($s0)
    /* 2F688 80040E78 1800058E */  lw         $a1, 0x18($s0)
    /* 2F68C 80040E7C 14EE000C */  jal        func_8003B850
    /* 2F690 80040E80 00000000 */   nop
  .L80040E84:
    /* 2F694 80040E84 1400BF8F */  lw         $ra, 0x14($sp)
    /* 2F698 80040E88 1000B08F */  lw         $s0, 0x10($sp)
    /* 2F69C 80040E8C 01000224 */  addiu      $v0, $zero, 0x1
    /* 2F6A0 80040E90 0800E003 */  jr         $ra
    /* 2F6A4 80040E94 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_80040E50
