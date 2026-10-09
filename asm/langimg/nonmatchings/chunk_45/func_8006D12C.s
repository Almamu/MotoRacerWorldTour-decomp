nonmatching func_8006D12C, 0x60

glabel func_8006D12C
    /* 5B93C 8006D12C E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 5B940 8006D130 1800B2AF */  sw         $s2, 0x18($sp)
    /* 5B944 8006D134 2190A000 */  addu       $s2, $a1, $zero
    /* 5B948 8006D138 1400B1AF */  sw         $s1, 0x14($sp)
    /* 5B94C 8006D13C 21880000 */  addu       $s1, $zero, $zero
    /* 5B950 8006D140 1000B0AF */  sw         $s0, 0x10($sp)
    /* 5B954 8006D144 00049024 */  addiu      $s0, $a0, 0x400
    /* 5B958 8006D148 1C00BFAF */  sw         $ra, 0x1C($sp)
  .L8006D14C:
    /* 5B95C 8006D14C 86B3010C */  jal        func_8006CE18
    /* 5B960 8006D150 21200002 */   addu      $a0, $s0, $zero
    /* 5B964 8006D154 03004010 */  beqz       $v0, .L8006D164
    /* 5B968 8006D158 21200002 */   addu      $a0, $s0, $zero
    /* 5B96C 8006D15C B6B3010C */  jal        func_8006CED8
    /* 5B970 8006D160 21284002 */   addu      $a1, $s2, $zero
  .L8006D164:
    /* 5B974 8006D164 01003126 */  addiu      $s1, $s1, 0x1
    /* 5B978 8006D168 1000222E */  sltiu      $v0, $s1, 0x10
    /* 5B97C 8006D16C F7FF4014 */  bnez       $v0, .L8006D14C
    /* 5B980 8006D170 0C001026 */   addiu     $s0, $s0, 0xC
    /* 5B984 8006D174 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* 5B988 8006D178 1800B28F */  lw         $s2, 0x18($sp)
    /* 5B98C 8006D17C 1400B18F */  lw         $s1, 0x14($sp)
    /* 5B990 8006D180 1000B08F */  lw         $s0, 0x10($sp)
    /* 5B994 8006D184 0800E003 */  jr         $ra
    /* 5B998 8006D188 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_8006D12C
