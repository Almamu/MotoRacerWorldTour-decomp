nonmatching func_8003F6B8, 0x88

glabel func_8003F6B8
    /* 2DEC8 8003F6B8 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 2DECC 8003F6BC 1800B2AF */  sw         $s2, 0x18($sp)
    /* 2DED0 8003F6C0 21908000 */  addu       $s2, $a0, $zero
    /* 2DED4 8003F6C4 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* 2DED8 8003F6C8 1400B1AF */  sw         $s1, 0x14($sp)
    /* 2DEDC 8003F6CC 1000B0AF */  sw         $s0, 0x10($sp)
    /* 2DEE0 8003F6D0 700A428E */  lw         $v0, 0xA70($s2)
    /* 2DEE4 8003F6D4 00000000 */  nop
    /* 2DEE8 8003F6D8 13004018 */  blez       $v0, .L8003F728
    /* 2DEEC 8003F6DC 21880000 */   addu      $s1, $zero, $zero
    /* 2DEF0 8003F6E0 21800000 */  addu       $s0, $zero, $zero
  .L8003F6E4:
    /* 2DEF4 8003F6E4 7C0A428E */  lw         $v0, 0xA7C($s2)
    /* 2DEF8 8003F6E8 00000000 */  nop
    /* 2DEFC 8003F6EC 21100202 */  addu       $v0, $s0, $v0
    /* 2DF00 8003F6F0 3800448C */  lw         $a0, 0x38($v0)
    /* 2DF04 8003F6F4 CC5D000C */  jal        func_80017730
    /* 2DF08 8003F6F8 01003126 */   addiu     $s1, $s1, 0x1
    /* 2DF0C 8003F6FC 7C0A438E */  lw         $v1, 0xA7C($s2)
    /* 2DF10 8003F700 00000000 */  nop
    /* 2DF14 8003F704 21180302 */  addu       $v1, $s0, $v1
    /* 2DF18 8003F708 3800648C */  lw         $a0, 0x38($v1)
    /* 2DF1C 8003F70C 9761000C */  jal        func_8001865C
    /* 2DF20 8003F710 74001026 */   addiu     $s0, $s0, 0x74
    /* 2DF24 8003F714 700A428E */  lw         $v0, 0xA70($s2)
    /* 2DF28 8003F718 00000000 */  nop
    /* 2DF2C 8003F71C 2A102202 */  slt        $v0, $s1, $v0
    /* 2DF30 8003F720 F0FF4014 */  bnez       $v0, .L8003F6E4
    /* 2DF34 8003F724 00000000 */   nop
  .L8003F728:
    /* 2DF38 8003F728 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* 2DF3C 8003F72C 1800B28F */  lw         $s2, 0x18($sp)
    /* 2DF40 8003F730 1400B18F */  lw         $s1, 0x14($sp)
    /* 2DF44 8003F734 1000B08F */  lw         $s0, 0x10($sp)
    /* 2DF48 8003F738 0800E003 */  jr         $ra
    /* 2DF4C 8003F73C 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_8003F6B8
