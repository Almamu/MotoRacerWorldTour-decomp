nonmatching func_80019C78, 0x94

glabel func_80019C78
    /* 8488 80019C78 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 848C 80019C7C 1400B1AF */  sw         $s1, 0x14($sp)
    /* 8490 80019C80 1800B2AF */  sw         $s2, 0x18($sp)
    /* 8494 80019C84 2190A000 */  addu       $s2, $a1, $zero
    /* 8498 80019C88 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* 849C 80019C8C 1000B0AF */  sw         $s0, 0x10($sp)
    /* 84A0 80019C90 0400908C */  lw         $s0, 0x4($a0)
    /* 84A4 80019C94 16004012 */  beqz       $s2, .L80019CF0
    /* 84A8 80019C98 21880000 */   addu      $s1, $zero, $zero
    /* 84AC 80019C9C 00004282 */  lb         $v0, 0x0($s2)
    /* 84B0 80019CA0 00000000 */  nop
    /* 84B4 80019CA4 13004010 */  beqz       $v0, .L80019CF4
    /* 84B8 80019CA8 21102002 */   addu      $v0, $s1, $zero
    /* 84BC 80019CAC 11000012 */  beqz       $s0, .L80019CF4
    /* 84C0 80019CB0 00000000 */   nop
  .L80019CB4:
    /* 84C4 80019CB4 E757000C */  jal        Get__5CName
    /* 84C8 80019CB8 21200002 */   addu      $a0, $s0, $zero
    /* 84CC 80019CBC 21204002 */  addu       $a0, $s2, $zero
    /* 84D0 80019CC0 2B98020C */  jal        func_800A60AC
    /* 84D4 80019CC4 21284000 */   addu      $a1, $v0, $zero
    /* 84D8 80019CC8 03004014 */  bnez       $v0, .L80019CD8
    /* 84DC 80019CCC 00000000 */   nop
    /* 84E0 80019CD0 37670008 */  j          .L80019CDC
    /* 84E4 80019CD4 21880002 */   addu      $s1, $s0, $zero
  .L80019CD8:
    /* 84E8 80019CD8 0C00108E */  lw         $s0, 0xC($s0)
  .L80019CDC:
    /* 84EC 80019CDC 00000000 */  nop
    /* 84F0 80019CE0 04000012 */  beqz       $s0, .L80019CF4
    /* 84F4 80019CE4 21102002 */   addu      $v0, $s1, $zero
    /* 84F8 80019CE8 F2FF2012 */  beqz       $s1, .L80019CB4
    /* 84FC 80019CEC 00000000 */   nop
  .L80019CF0:
    /* 8500 80019CF0 21102002 */  addu       $v0, $s1, $zero
  .L80019CF4:
    /* 8504 80019CF4 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* 8508 80019CF8 1800B28F */  lw         $s2, 0x18($sp)
    /* 850C 80019CFC 1400B18F */  lw         $s1, 0x14($sp)
    /* 8510 80019D00 1000B08F */  lw         $s0, 0x10($sp)
    /* 8514 80019D04 0800E003 */  jr         $ra
    /* 8518 80019D08 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_80019C78
