nonmatching func_8004970C, 0xA0

glabel func_8004970C
    /* 37F1C 8004970C E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 37F20 80049710 1800B2AF */  sw         $s2, 0x18($sp)
    /* 37F24 80049714 21908000 */  addu       $s2, $a0, $zero
    /* 37F28 80049718 0D80043C */  lui        $a0, %hi(D_800CBC94)
    /* 37F2C 8004971C 94BC8424 */  addiu      $a0, $a0, %lo(D_800CBC94)
    /* 37F30 80049720 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* 37F34 80049724 1400B1AF */  sw         $s1, 0x14($sp)
    /* 37F38 80049728 1000B0AF */  sw         $s0, 0x10($sp)
    /* 37F3C 8004972C 1800458E */  lw         $a1, 0x18($s2)
    /* 37F40 80049730 F1E3010C */  jal        func_80078FC4
    /* 37F44 80049734 01001124 */   addiu     $s1, $zero, 0x1
    /* 37F48 80049738 21204000 */  addu       $a0, $v0, $zero
    /* 37F4C 8004973C 21280000 */  addu       $a1, $zero, $zero
    /* 37F50 80049740 92E5010C */  jal        func_80079648
    /* 37F54 80049744 21300000 */   addu      $a2, $zero, $zero
    /* 37F58 80049748 B4AA020C */  jal        VSync
    /* 37F5C 8004974C 21200000 */   addu      $a0, $zero, $zero
    /* 37F60 80049750 B3A6010C */  jal        func_80069ACC
    /* 37F64 80049754 9C004426 */   addiu     $a0, $s2, 0x9C
    /* 37F68 80049758 B4AA020C */  jal        VSync
    /* 37F6C 8004975C 21200000 */   addu      $a0, $zero, $zero
    /* 37F70 80049760 14035026 */  addiu      $s0, $s2, 0x314
  .L80049764:
    /* 37F74 80049764 0000048E */  lw         $a0, 0x0($s0)
    /* 37F78 80049768 00000000 */  nop
    /* 37F7C 8004976C 04008010 */  beqz       $a0, .L80049780
    /* 37F80 80049770 00000000 */   nop
    /* 37F84 80049774 06AC010C */  jal        func_8006B018
    /* 37F88 80049778 03000524 */   addiu     $a1, $zero, 0x3
    /* 37F8C 8004977C 000000AE */  sw         $zero, 0x0($s0)
  .L80049780:
    /* 37F90 80049780 FFFF3126 */  addiu      $s1, $s1, -0x1
    /* 37F94 80049784 F7FF2106 */  bgez       $s1, .L80049764
    /* 37F98 80049788 FCFF1026 */   addiu     $s0, $s0, -0x4
    /* 37F9C 8004978C CD13010C */  jal        func_80044F34
    /* 37FA0 80049790 21204002 */   addu      $a0, $s2, $zero
    /* 37FA4 80049794 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* 37FA8 80049798 1800B28F */  lw         $s2, 0x18($sp)
    /* 37FAC 8004979C 1400B18F */  lw         $s1, 0x14($sp)
    /* 37FB0 800497A0 1000B08F */  lw         $s0, 0x10($sp)
    /* 37FB4 800497A4 0800E003 */  jr         $ra
    /* 37FB8 800497A8 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_8004970C
