nonmatching func_8003B7E0, 0x70

glabel func_8003B7E0
    /* 29FF0 8003B7E0 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 29FF4 8003B7E4 1400B1AF */  sw         $s1, 0x14($sp)
    /* 29FF8 8003B7E8 21880000 */  addu       $s1, $zero, $zero
    /* 29FFC 8003B7EC 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* 2A000 8003B7F0 1800B2AF */  sw         $s2, 0x18($sp)
    /* 2A004 8003B7F4 1000B0AF */  sw         $s0, 0x10($sp)
    /* 2A008 8003B7F8 6C01908C */  lw         $s0, 0x16C($a0)
    /* 2A00C 8003B7FC 00000000 */  nop
    /* 2A010 8003B800 0C000012 */  beqz       $s0, .L8003B834
    /* 2A014 8003B804 2190A000 */   addu      $s2, $a1, $zero
    /* 2A018 8003B808 04000426 */  addiu      $a0, $s0, 0x4
  .L8003B80C:
    /* 2A01C 8003B80C 2B98020C */  jal        func_800A60AC
    /* 2A020 8003B810 21284002 */   addu      $a1, $s2, $zero
    /* 2A024 8003B814 03004014 */  bnez       $v0, .L8003B824
    /* 2A028 8003B818 00000000 */   nop
    /* 2A02C 8003B81C 0DEE0008 */  j          .L8003B834
    /* 2A030 8003B820 21880002 */   addu      $s1, $s0, $zero
  .L8003B824:
    /* 2A034 8003B824 0000108E */  lw         $s0, 0x0($s0)
    /* 2A038 8003B828 00000000 */  nop
    /* 2A03C 8003B82C F7FF0016 */  bnez       $s0, .L8003B80C
    /* 2A040 8003B830 04000426 */   addiu     $a0, $s0, 0x4
  .L8003B834:
    /* 2A044 8003B834 21102002 */  addu       $v0, $s1, $zero
    /* 2A048 8003B838 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* 2A04C 8003B83C 1800B28F */  lw         $s2, 0x18($sp)
    /* 2A050 8003B840 1400B18F */  lw         $s1, 0x14($sp)
    /* 2A054 8003B844 1000B08F */  lw         $s0, 0x10($sp)
    /* 2A058 8003B848 0800E003 */  jr         $ra
    /* 2A05C 8003B84C 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_8003B7E0
