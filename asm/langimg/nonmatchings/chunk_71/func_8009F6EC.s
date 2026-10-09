nonmatching func_8009F6EC, 0x48

glabel func_8009F6EC
    /* 8DEFC 8009F6EC E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 8DF00 8009F6F0 0700A014 */  bnez       $a1, .L8009F710
    /* 8DF04 8009F6F4 1000BFAF */   sw        $ra, 0x10($sp)
    /* 8DF08 8009F6F8 B00A828C */  lw         $v0, 0xAB0($a0)
    /* 8DF0C 8009F6FC A40A838C */  lw         $v1, 0xAA4($a0)
    /* 8DF10 8009F700 80100200 */  sll        $v0, $v0, 2
    /* 8DF14 8009F704 21186200 */  addu       $v1, $v1, $v0
    /* 8DF18 8009F708 C57D0208 */  j          .L8009F714
    /* 8DF1C 8009F70C 08006324 */   addiu     $v1, $v1, 0x8
  .L8009F710:
    /* 8DF20 8009F710 980A838C */  lw         $v1, 0xA98($a0)
  .L8009F714:
    /* 8DF24 8009F714 2182020C */  jal        func_800A0884
    /* 8DF28 8009F718 E0006424 */   addiu     $a0, $v1, 0xE0
    /* 8DF2C 8009F71C A47D020C */  jal        func_8009F690
    /* 8DF30 8009F720 00000000 */   nop
    /* 8DF34 8009F724 1000BF8F */  lw         $ra, 0x10($sp)
    /* 8DF38 8009F728 00000000 */  nop
    /* 8DF3C 8009F72C 0800E003 */  jr         $ra
    /* 8DF40 8009F730 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_8009F6EC
