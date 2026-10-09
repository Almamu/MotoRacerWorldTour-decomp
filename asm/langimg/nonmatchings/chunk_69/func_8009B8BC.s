nonmatching func_8009B8BC, 0x3C

glabel func_8009B8BC
    /* 8A0CC 8009B8BC E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 8A0D0 8009B8C0 21288000 */  addu       $a1, $a0, $zero
    /* 8A0D4 8009B8C4 1000BFAF */  sw         $ra, 0x10($sp)
    /* 8A0D8 8009B8C8 800AA28C */  lw         $v0, 0xA80($a1)
    /* 8A0DC 8009B8CC 00000000 */  nop
    /* 8A0E0 8009B8D0 6000448C */  lw         $a0, 0x60($v0)
    /* 8A0E4 8009B8D4 00000000 */  nop
    /* 8A0E8 8009B8D8 03008010 */  beqz       $a0, .L8009B8E8
    /* 8A0EC 8009B8DC 00000000 */   nop
    /* 8A0F0 8009B8E0 5F6C020C */  jal        func_8009B17C
    /* 8A0F4 8009B8E4 00000000 */   nop
  .L8009B8E8:
    /* 8A0F8 8009B8E8 1000BF8F */  lw         $ra, 0x10($sp)
    /* 8A0FC 8009B8EC 00000000 */  nop
    /* 8A100 8009B8F0 0800E003 */  jr         $ra
    /* 8A104 8009B8F4 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_8009B8BC
