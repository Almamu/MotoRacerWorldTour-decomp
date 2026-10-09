nonmatching func_800895EC, 0x44

glabel func_800895EC
    /* 77DFC 800895EC E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 77E00 800895F0 1000B0AF */  sw         $s0, 0x10($sp)
    /* 77E04 800895F4 21808000 */  addu       $s0, $a0, $zero
    /* 77E08 800895F8 1400BFAF */  sw         $ra, 0x14($sp)
    /* 77E0C 800895FC 1000048E */  lw         $a0, 0x10($s0)
    /* 77E10 80089600 00000000 */  nop
    /* 77E14 80089604 04008010 */  beqz       $a0, .L80089618
    /* 77E18 80089608 00000000 */   nop
    /* 77E1C 8008960C 59D5020C */  jal        func_800B5564
    /* 77E20 80089610 00000000 */   nop
    /* 77E24 80089614 100000AE */  sw         $zero, 0x10($s0)
  .L80089618:
    /* 77E28 80089618 1400BF8F */  lw         $ra, 0x14($sp)
    /* 77E2C 8008961C 1000B08F */  lw         $s0, 0x10($sp)
    /* 77E30 80089620 01000224 */  addiu      $v0, $zero, 0x1
    /* 77E34 80089624 7C4580AF */  sw         $zero, %gp_rel(D_800C8C6C)($gp)
    /* 77E38 80089628 0800E003 */  jr         $ra
    /* 77E3C 8008962C 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_800895EC
