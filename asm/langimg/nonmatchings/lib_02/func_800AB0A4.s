nonmatching func_800AB0A4, 0x148

glabel func_800AB0A4
    /* 998B4 800AB0A4 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 998B8 800AB0A8 1400B1AF */  sw         $s1, 0x14($sp)
    /* 998BC 800AB0AC 21888000 */  addu       $s1, $a0, $zero
    /* 998C0 800AB0B0 1800B2AF */  sw         $s2, 0x18($sp)
    /* 998C4 800AB0B4 2190A000 */  addu       $s2, $a1, $zero
    /* 998C8 800AB0B8 0C80053C */  lui        $a1, %hi(D_800BD54C)
    /* 998CC 800AB0BC 4CD5A524 */  addiu      $a1, $a1, %lo(D_800BD54C)
    /* 998D0 800AB0C0 80101100 */  sll        $v0, $s1, 2
    /* 998D4 800AB0C4 21204500 */  addu       $a0, $v0, $a1
    /* 998D8 800AB0C8 2400BFAF */  sw         $ra, 0x24($sp)
    /* 998DC 800AB0CC 2000B4AF */  sw         $s4, 0x20($sp)
    /* 998E0 800AB0D0 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 998E4 800AB0D4 1000B0AF */  sw         $s0, 0x10($sp)
    /* 998E8 800AB0D8 0000948C */  lw         $s4, 0x0($a0)
    /* 998EC 800AB0DC 00000000 */  nop
    /* 998F0 800AB0E0 3A005412 */  beq        $s2, $s4, .L800AB1CC
    /* 998F4 800AB0E4 21108002 */   addu      $v0, $s4, $zero
    /* 998F8 800AB0E8 FCFFA294 */  lhu        $v0, -0x4($a1)
    /* 998FC 800AB0EC 00000000 */  nop
    /* 99900 800AB0F0 35004010 */  beqz       $v0, .L800AB1C8
    /* 99904 800AB0F4 FCFFA624 */   addiu     $a2, $a1, -0x4
    /* 99908 800AB0F8 0C80023C */  lui        $v0, %hi(D_800BE5D8)
    /* 9990C 800AB0FC D8E5428C */  lw         $v0, %lo(D_800BE5D8)($v0)
    /* 99910 800AB100 00000000 */  nop
    /* 99914 800AB104 00004394 */  lhu        $v1, 0x0($v0)
    /* 99918 800AB108 000040A4 */  sh         $zero, 0x0($v0)
    /* 9991C 800AB10C 09004012 */  beqz       $s2, .L800AB134
    /* 99920 800AB110 FFFF7330 */   andi      $s3, $v1, 0xFFFF
    /* 99924 800AB114 01000324 */  addiu      $v1, $zero, 0x1
    /* 99928 800AB118 04182302 */  sllv       $v1, $v1, $s1
    /* 9992C 800AB11C 000092AC */  sw         $s2, 0x0($a0)
    /* 99930 800AB120 3000C294 */  lhu        $v0, 0x30($a2)
    /* 99934 800AB124 25986302 */  or         $s3, $s3, $v1
    /* 99938 800AB128 25104300 */  or         $v0, $v0, $v1
    /* 9993C 800AB12C 55AC0208 */  j          .L800AB154
    /* 99940 800AB130 3000C2A4 */   sh        $v0, 0x30($a2)
  .L800AB134:
    /* 99944 800AB134 01000224 */  addiu      $v0, $zero, 0x1
    /* 99948 800AB138 04102202 */  sllv       $v0, $v0, $s1
    /* 9994C 800AB13C 27100200 */  nor        $v0, $zero, $v0
    /* 99950 800AB140 000080AC */  sw         $zero, 0x0($a0)
    /* 99954 800AB144 2C00A394 */  lhu        $v1, 0x2C($a1)
    /* 99958 800AB148 24986202 */  and        $s3, $s3, $v0
    /* 9995C 800AB14C 24186200 */  and        $v1, $v1, $v0
    /* 99960 800AB150 2C00A3A4 */  sh         $v1, 0x2C($a1)
  .L800AB154:
    /* 99964 800AB154 08002016 */  bnez       $s1, .L800AB178
    /* 99968 800AB158 04000224 */   addiu     $v0, $zero, 0x4
    /* 9996C 800AB15C 0100502E */  sltiu      $s0, $s2, 0x1
    /* 99970 800AB160 0CD7020C */  jal        func_800B5C30
    /* 99974 800AB164 21200002 */   addu      $a0, $s0, $zero
    /* 99978 800AB168 03000424 */  addiu      $a0, $zero, 0x3
    /* 9997C 800AB16C 18D7020C */  jal        func_800B5C60
    /* 99980 800AB170 21280002 */   addu      $a1, $s0, $zero
    /* 99984 800AB174 04000224 */  addiu      $v0, $zero, 0x4
  .L800AB178:
    /* 99988 800AB178 05002216 */  bne        $s1, $v0, .L800AB190
    /* 9998C 800AB17C 05000224 */   addiu     $v0, $zero, 0x5
    /* 99990 800AB180 21200000 */  addu       $a0, $zero, $zero
    /* 99994 800AB184 18D7020C */  jal        func_800B5C60
    /* 99998 800AB188 0100452E */   sltiu     $a1, $s2, 0x1
    /* 9999C 800AB18C 05000224 */  addiu      $v0, $zero, 0x5
  .L800AB190:
    /* 999A0 800AB190 05002216 */  bne        $s1, $v0, .L800AB1A8
    /* 999A4 800AB194 06000224 */   addiu     $v0, $zero, 0x6
    /* 999A8 800AB198 01000424 */  addiu      $a0, $zero, 0x1
    /* 999AC 800AB19C 18D7020C */  jal        func_800B5C60
    /* 999B0 800AB1A0 0100452E */   sltiu     $a1, $s2, 0x1
    /* 999B4 800AB1A4 06000224 */  addiu      $v0, $zero, 0x6
  .L800AB1A8:
    /* 999B8 800AB1A8 03002216 */  bne        $s1, $v0, .L800AB1B8
    /* 999BC 800AB1AC 02000424 */   addiu     $a0, $zero, 0x2
    /* 999C0 800AB1B0 18D7020C */  jal        func_800B5C60
    /* 999C4 800AB1B4 0100452E */   sltiu     $a1, $s2, 0x1
  .L800AB1B8:
    /* 999C8 800AB1B8 0C80023C */  lui        $v0, %hi(D_800BE5D8)
    /* 999CC 800AB1BC D8E5428C */  lw         $v0, %lo(D_800BE5D8)($v0)
    /* 999D0 800AB1C0 00000000 */  nop
    /* 999D4 800AB1C4 000053A4 */  sh         $s3, 0x0($v0)
  .L800AB1C8:
    /* 999D8 800AB1C8 21108002 */  addu       $v0, $s4, $zero
  .L800AB1CC:
    /* 999DC 800AB1CC 2400BF8F */  lw         $ra, 0x24($sp)
    /* 999E0 800AB1D0 2000B48F */  lw         $s4, 0x20($sp)
    /* 999E4 800AB1D4 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 999E8 800AB1D8 1800B28F */  lw         $s2, 0x18($sp)
    /* 999EC 800AB1DC 1400B18F */  lw         $s1, 0x14($sp)
    /* 999F0 800AB1E0 1000B08F */  lw         $s0, 0x10($sp)
    /* 999F4 800AB1E4 0800E003 */  jr         $ra
    /* 999F8 800AB1E8 2800BD27 */   addiu     $sp, $sp, 0x28
endlabel func_800AB0A4
