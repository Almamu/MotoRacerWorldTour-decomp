nonmatching func_8013F7A0, 0x168

glabel func_8013F7A0
    /* CC6C 8013F7A0 C0FFBD27 */  addiu      $sp, $sp, -0x40
    /* CC70 8013F7A4 3000B4AF */  sw         $s4, 0x30($sp)
    /* CC74 8013F7A8 21A0A000 */  addu       $s4, $a1, $zero
    /* CC78 8013F7AC 3400B5AF */  sw         $s5, 0x34($sp)
    /* CC7C 8013F7B0 21A8C000 */  addu       $s5, $a2, $zero
    /* CC80 8013F7B4 2C00B3AF */  sw         $s3, 0x2C($sp)
    /* CC84 8013F7B8 21980000 */  addu       $s3, $zero, $zero
    /* CC88 8013F7BC 0F008430 */  andi       $a0, $a0, 0xF
    /* CC8C 8013F7C0 1C80023C */  lui        $v0, %hi(D_801BFE44)
    /* CC90 8013F7C4 44FE4224 */  addiu      $v0, $v0, %lo(D_801BFE44)
    /* CC94 8013F7C8 40200400 */  sll        $a0, $a0, 1
    /* CC98 8013F7CC 21208200 */  addu       $a0, $a0, $v0
    /* CC9C 8013F7D0 2800B2AF */  sw         $s2, 0x28($sp)
    /* CCA0 8013F7D4 21908000 */  addu       $s2, $a0, $zero
    /* CCA4 8013F7D8 3800BFAF */  sw         $ra, 0x38($sp)
    /* CCA8 8013F7DC 2400B1AF */  sw         $s1, 0x24($sp)
    /* CCAC 8013F7E0 2000B0AF */  sw         $s0, 0x20($sp)
    /* CCB0 8013F7E4 1800A0A7 */  sh         $zero, 0x18($sp)
    /* CCB4 8013F7E8 1A00A0A7 */  sh         $zero, 0x1A($sp)
    /* CCB8 8013F7EC 00004296 */  lhu        $v0, 0x0($s2)
    /* CCBC 8013F7F0 44009126 */  addiu      $s1, $s4, 0x44
    /* CCC0 8013F7F4 1C00A2A7 */  sh         $v0, 0x1C($sp)
    /* CCC4 8013F7F8 1C80023C */  lui        $v0, %hi(D_801BFDAC)
    /* CCC8 8013F7FC 00004396 */  lhu        $v1, 0x0($s2)
    /* CCCC 8013F800 ACFD5024 */  addiu      $s0, $v0, %lo(D_801BFDAC)
    /* CCD0 8013F804 1E00A3A7 */  sh         $v1, 0x1E($sp)
  .L8013F808:
    /* CCD4 8013F808 0000228E */  lw         $v0, 0x0($s1)
    /* CCD8 8013F80C 00000000 */  nop
    /* CCDC 8013F810 12004010 */  beqz       $v0, .L8013F85C
    /* CCE0 8013F814 00000000 */   nop
    /* CCE4 8013F818 00004296 */  lhu        $v0, 0x0($s2)
    /* CCE8 8013F81C 0000038E */  lw         $v1, 0x0($s0)
    /* CCEC 8013F820 00000000 */  nop
    /* CCF0 8013F824 24104300 */  and        $v0, $v0, $v1
    /* CCF4 8013F828 0C004010 */  beqz       $v0, .L8013F85C
    /* CCF8 8013F82C 1000A427 */   addiu     $a0, $sp, 0x10
    /* CCFC 8013F830 1000A0AF */  sw         $zero, 0x10($sp)
    /* CD00 8013F834 00000296 */  lhu        $v0, 0x0($s0)
    /* CD04 8013F838 00004396 */  lhu        $v1, 0x0($s2)
    /* CD08 8013F83C 27100200 */  nor        $v0, $zero, $v0
    /* CD0C 8013F840 24186200 */  and        $v1, $v1, $v0
    /* CD10 8013F844 000043A6 */  sh         $v1, 0x0($s2)
    /* CD14 8013F848 0000868E */  lw         $a2, 0x0($s4)
    /* CD18 8013F84C 0000228E */  lw         $v0, 0x0($s1)
    /* CD1C 8013F850 00000000 */  nop
    /* CD20 8013F854 09F84000 */  jalr       $v0
    /* CD24 8013F858 2128A002 */   addu      $a1, $s5, $zero
  .L8013F85C:
    /* CD28 8013F85C 04003126 */  addiu      $s1, $s1, 0x4
    /* CD2C 8013F860 01007326 */  addiu      $s3, $s3, 0x1
    /* CD30 8013F864 1100622E */  sltiu      $v0, $s3, 0x11
    /* CD34 8013F868 E7FF4014 */  bnez       $v0, .L8013F808
    /* CD38 8013F86C 04001026 */   addiu     $s0, $s0, 0x4
    /* CD3C 8013F870 1000A0AF */  sw         $zero, 0x10($sp)
    /* CD40 8013F874 8400828E */  lw         $v0, 0x84($s4)
    /* CD44 8013F878 00000000 */  nop
    /* CD48 8013F87C 04004010 */  beqz       $v0, .L8013F890
    /* CD4C 8013F880 1000A427 */   addiu     $a0, $sp, 0x10
    /* CD50 8013F884 0000868E */  lw         $a2, 0x0($s4)
    /* CD54 8013F888 09F84000 */  jalr       $v0
    /* CD58 8013F88C 2128A002 */   addu      $a1, $s5, $zero
  .L8013F890:
    /* CD5C 8013F890 8800828E */  lw         $v0, 0x88($s4)
    /* CD60 8013F894 00000000 */  nop
    /* CD64 8013F898 04004010 */  beqz       $v0, .L8013F8AC
    /* CD68 8013F89C 1000A427 */   addiu     $a0, $sp, 0x10
    /* CD6C 8013F8A0 0000868E */  lw         $a2, 0x0($s4)
    /* CD70 8013F8A4 09F84000 */  jalr       $v0
    /* CD74 8013F8A8 2128A002 */   addu      $a1, $s5, $zero
  .L8013F8AC:
    /* CD78 8013F8AC 8C00828E */  lw         $v0, 0x8C($s4)
    /* CD7C 8013F8B0 00000000 */  nop
    /* CD80 8013F8B4 04004010 */  beqz       $v0, .L8013F8C8
    /* CD84 8013F8B8 1000A427 */   addiu     $a0, $sp, 0x10
    /* CD88 8013F8BC 0000868E */  lw         $a2, 0x0($s4)
    /* CD8C 8013F8C0 09F84000 */  jalr       $v0
    /* CD90 8013F8C4 2128A002 */   addu      $a1, $s5, $zero
  .L8013F8C8:
    /* CD94 8013F8C8 9000828E */  lw         $v0, 0x90($s4)
    /* CD98 8013F8CC 00000000 */  nop
    /* CD9C 8013F8D0 04004010 */  beqz       $v0, .L8013F8E4
    /* CDA0 8013F8D4 1000A427 */   addiu     $a0, $sp, 0x10
    /* CDA4 8013F8D8 0000868E */  lw         $a2, 0x0($s4)
    /* CDA8 8013F8DC 09F84000 */  jalr       $v0
    /* CDAC 8013F8E0 2128A002 */   addu      $a1, $s5, $zero
  .L8013F8E4:
    /* CDB0 8013F8E4 3800BF8F */  lw         $ra, 0x38($sp)
    /* CDB4 8013F8E8 3400B58F */  lw         $s5, 0x34($sp)
    /* CDB8 8013F8EC 3000B48F */  lw         $s4, 0x30($sp)
    /* CDBC 8013F8F0 2C00B38F */  lw         $s3, 0x2C($sp)
    /* CDC0 8013F8F4 2800B28F */  lw         $s2, 0x28($sp)
    /* CDC4 8013F8F8 2400B18F */  lw         $s1, 0x24($sp)
    /* CDC8 8013F8FC 2000B08F */  lw         $s0, 0x20($sp)
    /* CDCC 8013F900 0800E003 */  jr         $ra
    /* CDD0 8013F904 4000BD27 */   addiu     $sp, $sp, 0x40
endlabel func_8013F7A0
