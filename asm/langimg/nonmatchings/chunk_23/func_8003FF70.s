nonmatching func_8003FF70, 0xC4

glabel func_8003FF70
    /* 2E780 8003FF70 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 2E784 8003FF74 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* 2E788 8003FF78 1800B2AF */  sw         $s2, 0x18($sp)
    /* 2E78C 8003FF7C 1400B1AF */  sw         $s1, 0x14($sp)
    /* 2E790 8003FF80 1000B0AF */  sw         $s0, 0x10($sp)
    /* 2E794 8003FF84 0000828C */  lw         $v0, 0x0($a0)
    /* 2E798 8003FF88 0400D18C */  lw         $s1, 0x4($a2)
    /* 2E79C 8003FF8C 23004014 */  bnez       $v0, .L8004001C
    /* 2E7A0 8003FF90 01000324 */   addiu     $v1, $zero, 0x1
    /* 2E7A4 8003FF94 9C0A228E */  lw         $v0, 0xA9C($s1)
    /* 2E7A8 8003FF98 900A248E */  lw         $a0, 0xA90($s1)
    /* 2E7AC 8003FF9C 00000000 */  nop
    /* 2E7B0 8003FFA0 04008310 */  beq        $a0, $v1, .L8003FFB4
    /* 2E7B4 8003FFA4 08005224 */   addiu     $s2, $v0, 0x8
    /* 2E7B8 8003FFA8 04000224 */  addiu      $v0, $zero, 0x4
    /* 2E7BC 8003FFAC 04008214 */  bne        $a0, $v0, .L8003FFC0
    /* 2E7C0 8003FFB0 00000000 */   nop
  .L8003FFB4:
    /* 2E7C4 8003FFB4 840A248E */  lw         $a0, 0xA84($s1)
    /* 2E7C8 8003FFB8 F1FF0008 */  j          .L8003FFC4
    /* 2E7CC 8003FFBC 00000000 */   nop
  .L8003FFC0:
    /* 2E7D0 8003FFC0 800A248E */  lw         $a0, 0xA80($s1)
  .L8003FFC4:
    /* 2E7D4 8003FFC4 00000000 */  nop
    /* 2E7D8 8003FFC8 0000848C */  lw         $a0, 0x0($a0)
    /* 2E7DC 8003FFCC 0C80053C */  lui        $a1, %hi(D_800C4F70)
    /* 2E7E0 8003FFD0 2B98020C */  jal        func_800A60AC
    /* 2E7E4 8003FFD4 704FA524 */   addiu     $a1, $a1, %lo(D_800C4F70)
    /* 2E7E8 8003FFD8 10004010 */  beqz       $v0, .L8004001C
    /* 2E7EC 8003FFDC 21800000 */   addu      $s0, $zero, $zero
    /* 2E7F0 8003FFE0 21202002 */  addu       $a0, $s1, $zero
  .L8003FFE4:
    /* 2E7F4 8003FFE4 0C000524 */  addiu      $a1, $zero, 0xC
    /* 2E7F8 8003FFE8 21300002 */  addu       $a2, $s0, $zero
    /* 2E7FC 8003FFEC 24FB000C */  jal        func_8003EC90
    /* 2E800 8003FFF0 21380000 */   addu      $a3, $zero, $zero
    /* 2E804 8003FFF4 01001026 */  addiu      $s0, $s0, 0x1
    /* 2E808 8003FFF8 0200022A */  slti       $v0, $s0, 0x2
    /* 2E80C 8003FFFC F9FF4014 */  bnez       $v0, .L8003FFE4
    /* 2E810 80040000 21202002 */   addu      $a0, $s1, $zero
    /* 2E814 80040004 01000324 */  addiu      $v1, $zero, 0x1
    /* 2E818 80040008 0C0043AE */  sw         $v1, 0xC($s2)
    /* 2E81C 8004000C 940A228E */  lw         $v0, 0xA94($s1)
    /* 2E820 80040010 00000000 */  nop
    /* 2E824 80040014 04004234 */  ori        $v0, $v0, 0x4
    /* 2E828 80040018 940A22AE */  sw         $v0, 0xA94($s1)
  .L8004001C:
    /* 2E82C 8004001C 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* 2E830 80040020 1800B28F */  lw         $s2, 0x18($sp)
    /* 2E834 80040024 1400B18F */  lw         $s1, 0x14($sp)
    /* 2E838 80040028 1000B08F */  lw         $s0, 0x10($sp)
    /* 2E83C 8004002C 0800E003 */  jr         $ra
    /* 2E840 80040030 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_8003FF70
