nonmatching func_800A6788, 0x60

glabel func_800A6788
    /* 94F98 800A6788 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 94F9C 800A678C 1000B0AF */  sw         $s0, 0x10($sp)
    /* 94FA0 800A6790 21808000 */  addu       $s0, $a0, $zero
    /* 94FA4 800A6794 02000424 */  addiu      $a0, $zero, 0x2
    /* 94FA8 800A6798 1400B1AF */  sw         $s1, 0x14($sp)
    /* 94FAC 800A679C 1800BFAF */  sw         $ra, 0x18($sp)
    /* 94FB0 800A67A0 B488020C */  jal        func_800A22D0
    /* 94FB4 800A67A4 2188A000 */   addu      $s1, $a1, $zero
    /* 94FB8 800A67A8 AC88020C */  jal        func_800A22B0
    /* 94FBC 800A67AC 21200000 */   addu      $a0, $zero, $zero
    /* 94FC0 800A67B0 0D80033C */  lui        $v1, %hi(D_800D6148)
    /* 94FC4 800A67B4 01001026 */  addiu      $s0, $s0, 0x1
    /* 94FC8 800A67B8 21300000 */  addu       $a2, $zero, $zero
    /* 94FCC 800A67BC 48616424 */  addiu      $a0, $v1, %lo(D_800D6148)
    /* 94FD0 800A67C0 02002012 */  beqz       $s1, .L800A67CC
    /* 94FD4 800A67C4 486170AC */   sw        $s0, %lo(D_800D6148)($v1)
    /* 94FD8 800A67C8 01010624 */  addiu      $a2, $zero, 0x101
  .L800A67CC:
    /* 94FDC 800A67CC A488020C */  jal        func_800A2290
    /* 94FE0 800A67D0 01000524 */   addiu     $a1, $zero, 0x1
    /* 94FE4 800A67D4 1800BF8F */  lw         $ra, 0x18($sp)
    /* 94FE8 800A67D8 1400B18F */  lw         $s1, 0x14($sp)
    /* 94FEC 800A67DC 1000B08F */  lw         $s0, 0x10($sp)
    /* 94FF0 800A67E0 0800E003 */  jr         $ra
    /* 94FF4 800A67E4 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_800A6788
