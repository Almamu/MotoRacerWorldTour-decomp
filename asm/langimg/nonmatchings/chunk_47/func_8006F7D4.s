nonmatching func_8006F7D4, 0x50

glabel func_8006F7D4
    /* 5DFE4 8006F7D4 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 5DFE8 8006F7D8 1400B1AF */  sw         $s1, 0x14($sp)
    /* 5DFEC 8006F7DC 21880000 */  addu       $s1, $zero, $zero
    /* 5DFF0 8006F7E0 1000B0AF */  sw         $s0, 0x10($sp)
    /* 5DFF4 8006F7E4 0D80103C */  lui        $s0, %hi(D_800CB5E0)
    /* 5DFF8 8006F7E8 E0B51026 */  addiu      $s0, $s0, %lo(D_800CB5E0)
    /* 5DFFC 8006F7EC 1800BFAF */  sw         $ra, 0x18($sp)
  .L8006F7F0:
    /* 5E000 8006F7F0 9CBC010C */  jal        func_8006F270
    /* 5E004 8006F7F4 21200002 */   addu      $a0, $s0, $zero
    /* 5E008 8006F7F8 01003126 */  addiu      $s1, $s1, 0x1
    /* 5E00C 8006F7FC 0500222E */  sltiu      $v0, $s1, 0x5
    /* 5E010 8006F800 FBFF4014 */  bnez       $v0, .L8006F7F0
    /* 5E014 8006F804 7C001026 */   addiu     $s0, $s0, 0x7C
    /* 5E018 8006F808 EDB7010C */  jal        func_8006DFB4
    /* 5E01C 8006F80C 00000000 */   nop
    /* 5E020 8006F810 1800BF8F */  lw         $ra, 0x18($sp)
    /* 5E024 8006F814 1400B18F */  lw         $s1, 0x14($sp)
    /* 5E028 8006F818 1000B08F */  lw         $s0, 0x10($sp)
    /* 5E02C 8006F81C 0800E003 */  jr         $ra
    /* 5E030 8006F820 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_8006F7D4
