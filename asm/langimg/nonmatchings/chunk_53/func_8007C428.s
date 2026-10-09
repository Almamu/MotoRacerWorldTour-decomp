/* Handwritten function */
nonmatching func_8007C428, 0xC4

glabel func_8007C428
    /* 6AC38 8007C428 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 6AC3C 8007C42C 1400B1AF */  sw         $s1, 0x14($sp)
    /* 6AC40 8007C430 21888000 */  addu       $s1, $a0, $zero
    /* 6AC44 8007C434 2120A000 */  addu       $a0, $a1, $zero
    /* 6AC48 8007C438 1000B0AF */  sw         $s0, 0x10($sp)
    /* 6AC4C 8007C43C 2180C000 */  addu       $s0, $a2, $zero
    /* 6AC50 8007C440 2000BFAF */  sw         $ra, 0x20($sp)
    /* 6AC54 8007C444 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 6AC58 8007C448 1800B2AF */  sw         $s2, 0x18($sp)
    /* 6AC5C 8007C44C 00E85248 */  cfc2       $s2, $29 /* handwritten instruction */
    /* 6AC60 8007C450 00F05348 */  cfc2       $s3, $30 /* handwritten instruction */
    /* 6AC64 8007C454 6EF0010C */  jal        func_8007C1B8
    /* 6AC68 8007C458 21280002 */   addu      $a1, $s0, $zero
    /* 6AC6C 8007C45C 0D80023C */  lui        $v0, %hi(D_800C8864)
    /* 6AC70 8007C460 6488428C */  lw         $v0, %lo(D_800C8864)($v0)
    /* 6AC74 8007C464 00000000 */  nop
    /* 6AC78 8007C468 3C01448C */  lw         $a0, 0x13C($v0)
    /* 6AC7C 8007C46C 00000000 */  nop
    /* 6AC80 8007C470 1400838C */  lw         $v1, 0x14($a0)
    /* 6AC84 8007C474 03821000 */  sra        $s0, $s0, 8
    /* 6AC88 8007C478 18000302 */  mult       $s0, $v1
    /* 6AC8C 8007C47C 1C00828C */  lw         $v0, 0x1C($a0)
    /* 6AC90 8007C480 00000000 */  nop
    /* 6AC94 8007C484 00140200 */  sll        $v0, $v0, 16
    /* 6AC98 8007C488 12800000 */  mflo       $s0
    /* 6AC9C 8007C48C 40181000 */  sll        $v1, $s0, 1
    /* 6ACA0 8007C490 21187000 */  addu       $v1, $v1, $s0
    /* 6ACA4 8007C494 1A004300 */  div        $zero, $v0, $v1
    /* 6ACA8 8007C498 12180000 */  mflo       $v1
    /* 6ACAC 8007C49C 80801000 */  sll        $s0, $s0, 2
    /* 6ACB0 8007C4A0 00000000 */  nop
    /* 6ACB4 8007C4A4 1A005000 */  div        $zero, $v0, $s0
    /* 6ACB8 8007C4A8 12100000 */  mflo       $v0
    /* 6ACBC 8007C4AC 00E8C348 */  ctc2       $v1, $29 /* handwritten instruction */
    /* 6ACC0 8007C4B0 00F0C248 */  ctc2       $v0, $30 /* handwritten instruction */
    /* 6ACC4 8007C4B4 1C00248E */  lw         $a0, 0x1C($s1)
    /* 6ACC8 8007C4B8 1800258E */  lw         $a1, 0x18($s1)
    /* 6ACCC 8007C4BC 00002686 */  lh         $a2, 0x0($s1)
    /* 6ACD0 8007C4C0 47EF010C */  jal        func_8007BD1C
    /* 6ACD4 8007C4C4 00000000 */   nop
    /* 6ACD8 8007C4C8 00E8D248 */  ctc2       $s2, $29 /* handwritten instruction */
    /* 6ACDC 8007C4CC 00F0D348 */  ctc2       $s3, $30 /* handwritten instruction */
    /* 6ACE0 8007C4D0 2000BF8F */  lw         $ra, 0x20($sp)
    /* 6ACE4 8007C4D4 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 6ACE8 8007C4D8 1800B28F */  lw         $s2, 0x18($sp)
    /* 6ACEC 8007C4DC 1400B18F */  lw         $s1, 0x14($sp)
    /* 6ACF0 8007C4E0 1000B08F */  lw         $s0, 0x10($sp)
    /* 6ACF4 8007C4E4 0800E003 */  jr         $ra
    /* 6ACF8 8007C4E8 2800BD27 */   addiu     $sp, $sp, 0x28
endlabel func_8007C428
