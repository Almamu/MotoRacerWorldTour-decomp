nonmatching func_8013F914, 0x128

glabel func_8013F914
    /* CDE0 8013F914 1D80023C */  lui        $v0, %hi(D_801CE6E0)
    /* CDE4 8013F918 E0E6428C */  lw         $v0, %lo(D_801CE6E0)($v0)
    /* CDE8 8013F91C D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* CDEC 8013F920 2400B5AF */  sw         $s5, 0x24($sp)
    /* CDF0 8013F924 21A8A000 */  addu       $s5, $a1, $zero
    /* CDF4 8013F928 1000B0AF */  sw         $s0, 0x10($sp)
    /* CDF8 8013F92C 21800000 */  addu       $s0, $zero, $zero
    /* CDFC 8013F930 2C00BFAF */  sw         $ra, 0x2C($sp)
    /* CE00 8013F934 2800B6AF */  sw         $s6, 0x28($sp)
    /* CE04 8013F938 2000B4AF */  sw         $s4, 0x20($sp)
    /* CE08 8013F93C 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* CE0C 8013F940 1800B2AF */  sw         $s2, 0x18($sp)
    /* CE10 8013F944 33004018 */  blez       $v0, .L8013FA14
    /* CE14 8013F948 1400B1AF */   sw        $s1, 0x14($sp)
    /* CE18 8013F94C 1D80023C */  lui        $v0, %hi(D_801CE6C0)
    /* CE1C 8013F950 C0E65624 */  addiu      $s6, $v0, %lo(D_801CE6C0)
    /* CE20 8013F954 1C80143C */  lui        $s4, %hi(D_801BFE4C)
    /* CE24 8013F958 1C80023C */  lui        $v0, %hi(D_801BFE44)
    /* CE28 8013F95C 44FE5324 */  addiu      $s3, $v0, %lo(D_801BFE44)
    /* CE2C 8013F960 21888000 */  addu       $s1, $a0, $zero
    /* CE30 8013F964 1C80023C */  lui        $v0, %hi(D_801BFE40)
    /* CE34 8013F968 40FE5224 */  addiu      $s2, $v0, %lo(D_801BFE40)
  .L8013F96C:
    /* CE38 8013F96C 1C80023C */  lui        $v0, %hi(D_801BFE48)
    /* CE3C 8013F970 48FE4290 */  lbu        $v0, %lo(D_801BFE48)($v0)
    /* CE40 8013F974 00000000 */  nop
    /* CE44 8013F978 07100202 */  srav       $v0, $v0, $s0
    /* CE48 8013F97C 01004230 */  andi       $v0, $v0, 0x1
    /* CE4C 8013F980 1C004010 */  beqz       $v0, .L8013F9F4
    /* CE50 8013F984 21101602 */   addu      $v0, $s0, $s6
    /* CE54 8013F988 04004380 */  lb         $v1, 0x4($v0)
    /* CE58 8013F98C 04000224 */  addiu      $v0, $zero, 0x4
    /* CE5C 8013F990 05006210 */  beq        $v1, $v0, .L8013F9A8
    /* CE60 8013F994 07000224 */   addiu     $v0, $zero, 0x7
    /* CE64 8013F998 0D006210 */  beq        $v1, $v0, .L8013F9D0
    /* CE68 8013F99C 00000000 */   nop
    /* CE6C 8013F9A0 7EFE0408 */  j          .L8013F9F8
    /* CE70 8013F9A4 02007326 */   addiu     $s3, $s3, 0x2
  .L8013F9A8:
    /* CE74 8013F9A8 4CFE828E */  lw         $v0, %lo(D_801BFE4C)($s4)
    /* CE78 8013F9AC 00000000 */  nop
    /* CE7C 8013F9B0 04004230 */  andi       $v0, $v0, 0x4
    /* CE80 8013F9B4 04004010 */  beqz       $v0, .L8013F9C8
    /* CE84 8013F9B8 21200002 */   addu      $a0, $s0, $zero
    /* CE88 8013F9BC 21282002 */  addu       $a1, $s1, $zero
    /* CE8C 8013F9C0 FCFC040C */  jal        func_8013F3F0
    /* CE90 8013F9C4 2130A002 */   addu      $a2, $s5, $zero
  .L8013F9C8:
    /* CE94 8013F9C8 7DFE0408 */  j          .L8013F9F4
    /* CE98 8013F9CC 000040A6 */   sh        $zero, 0x0($s2)
  .L8013F9D0:
    /* CE9C 8013F9D0 4CFE828E */  lw         $v0, %lo(D_801BFE4C)($s4)
    /* CEA0 8013F9D4 00000000 */  nop
    /* CEA4 8013F9D8 10004230 */  andi       $v0, $v0, 0x10
    /* CEA8 8013F9DC 04004010 */  beqz       $v0, .L8013F9F0
    /* CEAC 8013F9E0 21200002 */   addu      $a0, $s0, $zero
    /* CEB0 8013F9E4 21282002 */  addu       $a1, $s1, $zero
    /* CEB4 8013F9E8 E8FD040C */  jal        func_8013F7A0
    /* CEB8 8013F9EC 2130A002 */   addu      $a2, $s5, $zero
  .L8013F9F0:
    /* CEBC 8013F9F0 000060A6 */  sh         $zero, 0x0($s3)
  .L8013F9F4:
    /* CEC0 8013F9F4 02007326 */  addiu      $s3, $s3, 0x2
  .L8013F9F8:
    /* CEC4 8013F9F8 98003126 */  addiu      $s1, $s1, 0x98
    /* CEC8 8013F9FC 1D80023C */  lui        $v0, %hi(D_801CE6E0)
    /* CECC 8013FA00 E0E6428C */  lw         $v0, %lo(D_801CE6E0)($v0)
    /* CED0 8013FA04 01001026 */  addiu      $s0, $s0, 0x1
    /* CED4 8013FA08 2A100202 */  slt        $v0, $s0, $v0
    /* CED8 8013FA0C D7FF4014 */  bnez       $v0, .L8013F96C
    /* CEDC 8013FA10 02005226 */   addiu     $s2, $s2, 0x2
  .L8013FA14:
    /* CEE0 8013FA14 2C00BF8F */  lw         $ra, 0x2C($sp)
    /* CEE4 8013FA18 2800B68F */  lw         $s6, 0x28($sp)
    /* CEE8 8013FA1C 2400B58F */  lw         $s5, 0x24($sp)
    /* CEEC 8013FA20 2000B48F */  lw         $s4, 0x20($sp)
    /* CEF0 8013FA24 1C00B38F */  lw         $s3, 0x1C($sp)
    /* CEF4 8013FA28 1800B28F */  lw         $s2, 0x18($sp)
    /* CEF8 8013FA2C 1400B18F */  lw         $s1, 0x14($sp)
    /* CEFC 8013FA30 1000B08F */  lw         $s0, 0x10($sp)
    /* CF00 8013FA34 0800E003 */  jr         $ra
    /* CF04 8013FA38 3000BD27 */   addiu     $sp, $sp, 0x30
endlabel func_8013F914
