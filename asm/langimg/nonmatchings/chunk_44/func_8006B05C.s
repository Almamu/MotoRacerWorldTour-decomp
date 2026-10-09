nonmatching func_8006B05C, 0x3C

glabel func_8006B05C
    /* 5986C 8006B05C E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 59870 8006B060 1000B0AF */  sw         $s0, 0x10($sp)
    /* 59874 8006B064 21808000 */  addu       $s0, $a0, $zero
    /* 59878 8006B068 1400BFAF */  sw         $ra, 0x14($sp)
    /* 5987C 8006B06C 1400048E */  lw         $a0, 0x14($s0)
    /* 59880 8006B070 00000000 */  nop
    /* 59884 8006B074 04008010 */  beqz       $a0, .L8006B088
    /* 59888 8006B078 00000000 */   nop
    /* 5988C 8006B07C 8D9C020C */  jal        __builtin_vec_delete
    /* 59890 8006B080 00000000 */   nop
    /* 59894 8006B084 140000AE */  sw         $zero, 0x14($s0)
  .L8006B088:
    /* 59898 8006B088 1400BF8F */  lw         $ra, 0x14($sp)
    /* 5989C 8006B08C 1000B08F */  lw         $s0, 0x10($sp)
    /* 598A0 8006B090 0800E003 */  jr         $ra
    /* 598A4 8006B094 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_8006B05C
