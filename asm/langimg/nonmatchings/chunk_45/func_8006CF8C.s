nonmatching func_8006CF8C, 0x44

glabel func_8006CF8C
    /* 5B79C 8006CF8C E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 5B7A0 8006CF90 1400B1AF */  sw         $s1, 0x14($sp)
    /* 5B7A4 8006CF94 21880000 */  addu       $s1, $zero, $zero
    /* 5B7A8 8006CF98 1000B0AF */  sw         $s0, 0x10($sp)
    /* 5B7AC 8006CF9C 00049024 */  addiu      $s0, $a0, 0x400
    /* 5B7B0 8006CFA0 1800BFAF */  sw         $ra, 0x18($sp)
  .L8006CFA4:
    /* 5B7B4 8006CFA4 9AB3010C */  jal        func_8006CE68
    /* 5B7B8 8006CFA8 21200002 */   addu      $a0, $s0, $zero
    /* 5B7BC 8006CFAC 01003126 */  addiu      $s1, $s1, 0x1
    /* 5B7C0 8006CFB0 1000222E */  sltiu      $v0, $s1, 0x10
    /* 5B7C4 8006CFB4 FBFF4014 */  bnez       $v0, .L8006CFA4
    /* 5B7C8 8006CFB8 0C001026 */   addiu     $s0, $s0, 0xC
    /* 5B7CC 8006CFBC 1800BF8F */  lw         $ra, 0x18($sp)
    /* 5B7D0 8006CFC0 1400B18F */  lw         $s1, 0x14($sp)
    /* 5B7D4 8006CFC4 1000B08F */  lw         $s0, 0x10($sp)
    /* 5B7D8 8006CFC8 0800E003 */  jr         $ra
    /* 5B7DC 8006CFCC 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_8006CF8C
