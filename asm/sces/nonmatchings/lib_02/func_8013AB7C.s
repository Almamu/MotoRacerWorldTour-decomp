nonmatching func_8013AB7C, 0x34

glabel func_8013AB7C
    /* 8048 8013AB7C E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 804C 8013AB80 1000B0AF */  sw         $s0, 0x10($sp)
    /* 8050 8013AB84 21808000 */  addu       $s0, $a0, $zero
    /* 8054 8013AB88 03000016 */  bnez       $s0, .L8013AB98
    /* 8058 8013AB8C 1400BFAF */   sw        $ra, 0x14($sp)
    /* 805C 8013AB90 A6EC040C */  jal        func_8013B298
    /* 8060 8013AB94 00000000 */   nop
  .L8013AB98:
    /* 8064 8013AB98 2EEB040C */  jal        func_8013ACB8
    /* 8068 8013AB9C 21200002 */   addu      $a0, $s0, $zero
    /* 806C 8013ABA0 1400BF8F */  lw         $ra, 0x14($sp)
    /* 8070 8013ABA4 1000B08F */  lw         $s0, 0x10($sp)
    /* 8074 8013ABA8 0800E003 */  jr         $ra
    /* 8078 8013ABAC 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_8013AB7C
