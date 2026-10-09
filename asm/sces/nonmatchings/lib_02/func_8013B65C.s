nonmatching func_8013B65C, 0x148

glabel func_8013B65C
    /* 8B28 8013B65C D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 8B2C 8013B660 1400B1AF */  sw         $s1, 0x14($sp)
    /* 8B30 8013B664 21888000 */  addu       $s1, $a0, $zero
    /* 8B34 8013B668 1800B2AF */  sw         $s2, 0x18($sp)
    /* 8B38 8013B66C 2190A000 */  addu       $s2, $a1, $zero
    /* 8B3C 8013B670 1C80053C */  lui        $a1, %hi(D_801BDF44)
    /* 8B40 8013B674 44DFA524 */  addiu      $a1, $a1, %lo(D_801BDF44)
    /* 8B44 8013B678 80101100 */  sll        $v0, $s1, 2
    /* 8B48 8013B67C 21204500 */  addu       $a0, $v0, $a1
    /* 8B4C 8013B680 2400BFAF */  sw         $ra, 0x24($sp)
    /* 8B50 8013B684 2000B4AF */  sw         $s4, 0x20($sp)
    /* 8B54 8013B688 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 8B58 8013B68C 1000B0AF */  sw         $s0, 0x10($sp)
    /* 8B5C 8013B690 0000948C */  lw         $s4, 0x0($a0)
    /* 8B60 8013B694 00000000 */  nop
    /* 8B64 8013B698 3A005412 */  beq        $s2, $s4, .L8013B784
    /* 8B68 8013B69C 21108002 */   addu      $v0, $s4, $zero
    /* 8B6C 8013B6A0 FCFFA294 */  lhu        $v0, -0x4($a1)
    /* 8B70 8013B6A4 00000000 */  nop
    /* 8B74 8013B6A8 35004010 */  beqz       $v0, .L8013B780
    /* 8B78 8013B6AC FCFFA624 */   addiu     $a2, $a1, -0x4
    /* 8B7C 8013B6B0 1C80023C */  lui        $v0, %hi(D_801BEFD0)
    /* 8B80 8013B6B4 D0EF428C */  lw         $v0, %lo(D_801BEFD0)($v0)
    /* 8B84 8013B6B8 00000000 */  nop
    /* 8B88 8013B6BC 00004394 */  lhu        $v1, 0x0($v0)
    /* 8B8C 8013B6C0 000040A4 */  sh         $zero, 0x0($v0)
    /* 8B90 8013B6C4 09004012 */  beqz       $s2, .L8013B6EC
    /* 8B94 8013B6C8 FFFF7330 */   andi      $s3, $v1, 0xFFFF
    /* 8B98 8013B6CC 01000324 */  addiu      $v1, $zero, 0x1
    /* 8B9C 8013B6D0 04182302 */  sllv       $v1, $v1, $s1
    /* 8BA0 8013B6D4 000092AC */  sw         $s2, 0x0($a0)
    /* 8BA4 8013B6D8 3000C294 */  lhu        $v0, 0x30($a2)
    /* 8BA8 8013B6DC 25986302 */  or         $s3, $s3, $v1
    /* 8BAC 8013B6E0 25104300 */  or         $v0, $v0, $v1
    /* 8BB0 8013B6E4 C3ED0408 */  j          .L8013B70C
    /* 8BB4 8013B6E8 3000C2A4 */   sh        $v0, 0x30($a2)
  .L8013B6EC:
    /* 8BB8 8013B6EC 01000224 */  addiu      $v0, $zero, 0x1
    /* 8BBC 8013B6F0 04102202 */  sllv       $v0, $v0, $s1
    /* 8BC0 8013B6F4 27100200 */  nor        $v0, $zero, $v0
    /* 8BC4 8013B6F8 000080AC */  sw         $zero, 0x0($a0)
    /* 8BC8 8013B6FC 2C00A394 */  lhu        $v1, 0x2C($a1)
    /* 8BCC 8013B700 24986202 */  and        $s3, $s3, $v0
    /* 8BD0 8013B704 24186200 */  and        $v1, $v1, $v0
    /* 8BD4 8013B708 2C00A3A4 */  sh         $v1, 0x2C($a1)
  .L8013B70C:
    /* 8BD8 8013B70C 08002016 */  bnez       $s1, .L8013B730
    /* 8BDC 8013B710 04000224 */   addiu     $v0, $zero, 0x4
    /* 8BE0 8013B714 0100502E */  sltiu      $s0, $s2, 0x1
    /* 8BE4 8013B718 072B050C */  jal        ChangeClearPAD
    /* 8BE8 8013B71C 21200002 */   addu      $a0, $s0, $zero
    /* 8BEC 8013B720 03000424 */  addiu      $a0, $zero, 0x3
    /* 8BF0 8013B724 132B050C */  jal        ChangeClearRCnt
    /* 8BF4 8013B728 21280002 */   addu      $a1, $s0, $zero
    /* 8BF8 8013B72C 04000224 */  addiu      $v0, $zero, 0x4
  .L8013B730:
    /* 8BFC 8013B730 05002216 */  bne        $s1, $v0, .L8013B748
    /* 8C00 8013B734 05000224 */   addiu     $v0, $zero, 0x5
    /* 8C04 8013B738 21200000 */  addu       $a0, $zero, $zero
    /* 8C08 8013B73C 132B050C */  jal        ChangeClearRCnt
    /* 8C0C 8013B740 0100452E */   sltiu     $a1, $s2, 0x1
    /* 8C10 8013B744 05000224 */  addiu      $v0, $zero, 0x5
  .L8013B748:
    /* 8C14 8013B748 05002216 */  bne        $s1, $v0, .L8013B760
    /* 8C18 8013B74C 06000224 */   addiu     $v0, $zero, 0x6
    /* 8C1C 8013B750 01000424 */  addiu      $a0, $zero, 0x1
    /* 8C20 8013B754 132B050C */  jal        ChangeClearRCnt
    /* 8C24 8013B758 0100452E */   sltiu     $a1, $s2, 0x1
    /* 8C28 8013B75C 06000224 */  addiu      $v0, $zero, 0x6
  .L8013B760:
    /* 8C2C 8013B760 03002216 */  bne        $s1, $v0, .L8013B770
    /* 8C30 8013B764 02000424 */   addiu     $a0, $zero, 0x2
    /* 8C34 8013B768 132B050C */  jal        ChangeClearRCnt
    /* 8C38 8013B76C 0100452E */   sltiu     $a1, $s2, 0x1
  .L8013B770:
    /* 8C3C 8013B770 1C80023C */  lui        $v0, %hi(D_801BEFD0)
    /* 8C40 8013B774 D0EF428C */  lw         $v0, %lo(D_801BEFD0)($v0)
    /* 8C44 8013B778 00000000 */  nop
    /* 8C48 8013B77C 000053A4 */  sh         $s3, 0x0($v0)
  .L8013B780:
    /* 8C4C 8013B780 21108002 */  addu       $v0, $s4, $zero
  .L8013B784:
    /* 8C50 8013B784 2400BF8F */  lw         $ra, 0x24($sp)
    /* 8C54 8013B788 2000B48F */  lw         $s4, 0x20($sp)
    /* 8C58 8013B78C 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 8C5C 8013B790 1800B28F */  lw         $s2, 0x18($sp)
    /* 8C60 8013B794 1400B18F */  lw         $s1, 0x14($sp)
    /* 8C64 8013B798 1000B08F */  lw         $s0, 0x10($sp)
    /* 8C68 8013B79C 0800E003 */  jr         $ra
    /* 8C6C 8013B7A0 2800BD27 */   addiu     $sp, $sp, 0x28
endlabel func_8013B65C
