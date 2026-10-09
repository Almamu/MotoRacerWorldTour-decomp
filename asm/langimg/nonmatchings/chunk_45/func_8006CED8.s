nonmatching func_8006CED8, 0x70

glabel func_8006CED8
    /* 5B6E8 8006CED8 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 5B6EC 8006CEDC 1800B2AF */  sw         $s2, 0x18($sp)
    /* 5B6F0 8006CEE0 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* 5B6F4 8006CEE4 1400B1AF */  sw         $s1, 0x14($sp)
    /* 5B6F8 8006CEE8 1000B0AF */  sw         $s0, 0x10($sp)
    /* 5B6FC 8006CEEC 0800908C */  lw         $s0, 0x8($a0)
    /* 5B700 8006CEF0 0000918C */  lw         $s1, 0x0($a0)
    /* 5B704 8006CEF4 0E000012 */  beqz       $s0, .L8006CF30
    /* 5B708 8006CEF8 2190A000 */   addu      $s2, $a1, $zero
    /* 5B70C 8006CEFC 21300000 */  addu       $a2, $zero, $zero
  .L8006CF00:
    /* 5B710 8006CF00 04002012 */  beqz       $s1, .L8006CF14
    /* 5B714 8006CF04 01000524 */   addiu     $a1, $zero, 0x1
    /* 5B718 8006CF08 0400228E */  lw         $v0, 0x4($s1)
    /* 5B71C 8006CF0C 08002626 */  addiu      $a2, $s1, 0x8
    /* 5B720 8006CF10 02004530 */  andi       $a1, $v0, 0x2
  .L8006CF14:
    /* 5B724 8006CF14 21200002 */  addu       $a0, $s0, $zero
    /* 5B728 8006CF18 11B6010C */  jal        func_8006D844
    /* 5B72C 8006CF1C 21384002 */   addu      $a3, $s2, $zero
    /* 5B730 8006CF20 0800108E */  lw         $s0, 0x8($s0)
    /* 5B734 8006CF24 00000000 */  nop
    /* 5B738 8006CF28 F5FF0016 */  bnez       $s0, .L8006CF00
    /* 5B73C 8006CF2C 21300000 */   addu      $a2, $zero, $zero
  .L8006CF30:
    /* 5B740 8006CF30 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* 5B744 8006CF34 1800B28F */  lw         $s2, 0x18($sp)
    /* 5B748 8006CF38 1400B18F */  lw         $s1, 0x14($sp)
    /* 5B74C 8006CF3C 1000B08F */  lw         $s0, 0x10($sp)
    /* 5B750 8006CF40 0800E003 */  jr         $ra
    /* 5B754 8006CF44 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_8006CED8
