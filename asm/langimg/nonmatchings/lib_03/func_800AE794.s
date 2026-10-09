/* Handwritten function */
nonmatching func_800AE794, 0x6C

glabel func_800AE794
    /* 9CFA4 800AE794 040041AF */  sw         $at, 0x4($k0) /* handwritten instruction */
    /* 9CFA8 800AE798 080042AF */  sw         $v0, 0x8($k0) /* handwritten instruction */
    /* 9CFAC 800AE79C 0C0043AF */  sw         $v1, 0xC($k0) /* handwritten instruction */
    /* 9CFB0 800AE7A0 7C005FAF */  sw         $ra, 0x7C($k0) /* handwritten instruction */
    /* 9CFB4 800AE7A4 00700340 */  mfc0       $v1, $14 /* handwritten instruction */
    /* 9CFB8 800AE7A8 00000000 */  nop
  alabel D_800AE7AC
    /* 9CFBC 800AE7AC 040041AF */  sw         $at, 0x4($k0) /* handwritten instruction */
    /* 9CFC0 800AE7B0 080042AF */  sw         $v0, 0x8($k0) /* handwritten instruction */
    /* 9CFC4 800AE7B4 00680240 */  mfc0       $v0, $13 /* handwritten instruction */
    /* 9CFC8 800AE7B8 0C0043AF */  sw         $v1, 0xC($k0) /* handwritten instruction */
    /* 9CFCC 800AE7BC 00700340 */  mfc0       $v1, $14 /* handwritten instruction */
    /* 9CFD0 800AE7C0 7C005FAF */  sw         $ra, 0x7C($k0) /* handwritten instruction */
  alabel D_800AE7C4
    /* 9CFD4 800AE7C4 00000000 */  nop
  alabel func_800AE7C8
    /* 9CFD8 800AE7C8 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 9CFDC 800AE7CC 0E80023C */  lui        $v0, %hi(D_800DE358)
    /* 9CFE0 800AE7D0 58E34224 */  addiu      $v0, $v0, %lo(D_800DE358)
    /* 9CFE4 800AE7D4 80200400 */  sll        $a0, $a0, 2
    /* 9CFE8 800AE7D8 21208200 */  addu       $a0, $a0, $v0
    /* 9CFEC 800AE7DC 03000524 */  addiu      $a1, $zero, 0x3
    /* 9CFF0 800AE7E0 1000BFAF */  sw         $ra, 0x10($sp)
    /* 9CFF4 800AE7E4 0000848C */  lw         $a0, 0x0($a0)
    /* 9CFF8 800AE7E8 4FC1020C */  jal        func_800B053C
    /* 9CFFC 800AE7EC 21300000 */   addu      $a2, $zero, $zero
    /* 9D000 800AE7F0 1000BF8F */  lw         $ra, 0x10($sp)
    /* 9D004 800AE7F4 00000000 */  nop
    /* 9D008 800AE7F8 0800E003 */  jr         $ra
    /* 9D00C 800AE7FC 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_800AE794
