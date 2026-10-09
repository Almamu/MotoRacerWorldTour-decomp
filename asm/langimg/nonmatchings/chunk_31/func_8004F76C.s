nonmatching func_8004F76C, 0xBC

glabel func_8004F76C
    /* 3DF7C 8004F76C D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 3DF80 8004F770 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 3DF84 8004F774 21980000 */  addu       $s3, $zero, $zero
    /* 3DF88 8004F778 2000B4AF */  sw         $s4, 0x20($sp)
    /* 3DF8C 8004F77C 21A08000 */  addu       $s4, $a0, $zero
    /* 3DF90 8004F780 1800B2AF */  sw         $s2, 0x18($sp)
    /* 3DF94 8004F784 9C049226 */  addiu      $s2, $s4, 0x49C
    /* 3DF98 8004F788 1400B1AF */  sw         $s1, 0x14($sp)
    /* 3DF9C 8004F78C BC009126 */  addiu      $s1, $s4, 0xBC
    /* 3DFA0 8004F790 1000B0AF */  sw         $s0, 0x10($sp)
    /* 3DFA4 8004F794 88049026 */  addiu      $s0, $s4, 0x488
    /* 3DFA8 8004F798 2400BFAF */  sw         $ra, 0x24($sp)
  .L8004F79C:
    /* 3DFAC 8004F79C 0000028E */  lw         $v0, 0x0($s0)
    /* 3DFB0 8004F7A0 00000000 */  nop
    /* 3DFB4 8004F7A4 01004230 */  andi       $v0, $v0, 0x1
    /* 3DFB8 8004F7A8 11004010 */  beqz       $v0, .L8004F7F0
    /* 3DFBC 8004F7AC 00000000 */   nop
    /* 3DFC0 8004F7B0 0D80063C */  lui        $a2, %hi(D_800C886C)
    /* 3DFC4 8004F7B4 6C88C68C */  lw         $a2, %lo(D_800C886C)($a2)
    /* 3DFC8 8004F7B8 00000000 */  nop
    /* 3DFCC 8004F7BC 6800C38C */  lw         $v1, 0x68($a2)
    /* 3DFD0 8004F7C0 0000258E */  lw         $a1, 0x0($s1)
    /* 3DFD4 8004F7C4 70006484 */  lh         $a0, 0x70($v1)
    /* 3DFD8 8004F7C8 7400628C */  lw         $v0, 0x74($v1)
    /* 3DFDC 8004F7CC 00000000 */  nop
    /* 3DFE0 8004F7D0 09F84000 */  jalr       $v0
    /* 3DFE4 8004F7D4 2120C400 */   addu      $a0, $a2, $a0
    /* 3DFE8 8004F7D8 9C00458C */  lw         $a1, 0x9C($v0)
    /* 3DFEC 8004F7DC 00000000 */  nop
    /* 3DFF0 8004F7E0 0300A010 */  beqz       $a1, .L8004F7F0
    /* 3DFF4 8004F7E4 21208002 */   addu      $a0, $s4, $zero
    /* 3DFF8 8004F7E8 B23D010C */  jal        func_8004F6C8
    /* 3DFFC 8004F7EC 21304002 */   addu      $a2, $s2, $zero
  .L8004F7F0:
    /* 3E000 8004F7F0 84015226 */  addiu      $s2, $s2, 0x184
    /* 3E004 8004F7F4 04003126 */  addiu      $s1, $s1, 0x4
    /* 3E008 8004F7F8 01007326 */  addiu      $s3, $s3, 0x1
    /* 3E00C 8004F7FC 0200622A */  slti       $v0, $s3, 0x2
    /* 3E010 8004F800 E6FF4014 */  bnez       $v0, .L8004F79C
    /* 3E014 8004F804 04001026 */   addiu     $s0, $s0, 0x4
    /* 3E018 8004F808 2400BF8F */  lw         $ra, 0x24($sp)
    /* 3E01C 8004F80C 2000B48F */  lw         $s4, 0x20($sp)
    /* 3E020 8004F810 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 3E024 8004F814 1800B28F */  lw         $s2, 0x18($sp)
    /* 3E028 8004F818 1400B18F */  lw         $s1, 0x14($sp)
    /* 3E02C 8004F81C 1000B08F */  lw         $s0, 0x10($sp)
    /* 3E030 8004F820 0800E003 */  jr         $ra
    /* 3E034 8004F824 2800BD27 */   addiu     $sp, $sp, 0x28
endlabel func_8004F76C
