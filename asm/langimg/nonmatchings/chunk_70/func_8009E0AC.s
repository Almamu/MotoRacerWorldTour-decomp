nonmatching func_8009E0AC, 0x3C

glabel func_8009E0AC
    /* 8C8BC 8009E0AC E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 8C8C0 8009E0B0 1000B0AF */  sw         $s0, 0x10($sp)
    /* 8C8C4 8009E0B4 21808000 */  addu       $s0, $a0, $zero
    /* 8C8C8 8009E0B8 1400BFAF */  sw         $ra, 0x14($sp)
    /* 8C8CC 8009E0BC 3400048E */  lw         $a0, 0x34($s0)
    /* 8C8D0 8009E0C0 00000000 */  nop
    /* 8C8D4 8009E0C4 04008010 */  beqz       $a0, .L8009E0D8
    /* 8C8D8 8009E0C8 00000000 */   nop
    /* 8C8DC 8009E0CC 8D9C020C */  jal        __builtin_vec_delete
    /* 8C8E0 8009E0D0 00000000 */   nop
    /* 8C8E4 8009E0D4 340000AE */  sw         $zero, 0x34($s0)
  .L8009E0D8:
    /* 8C8E8 8009E0D8 1400BF8F */  lw         $ra, 0x14($sp)
    /* 8C8EC 8009E0DC 1000B08F */  lw         $s0, 0x10($sp)
    /* 8C8F0 8009E0E0 0800E003 */  jr         $ra
    /* 8C8F4 8009E0E4 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_8009E0AC
