nonmatching func_8006ABD4, 0x88

glabel func_8006ABD4
    /* 593E4 8006ABD4 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 593E8 8006ABD8 1800B2AF */  sw         $s2, 0x18($sp)
    /* 593EC 8006ABDC 21908000 */  addu       $s2, $a0, $zero
    /* 593F0 8006ABE0 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 593F4 8006ABE4 2198A000 */  addu       $s3, $a1, $zero
    /* 593F8 8006ABE8 2000BFAF */  sw         $ra, 0x20($sp)
    /* 593FC 8006ABEC 1400B1AF */  sw         $s1, 0x14($sp)
    /* 59400 8006ABF0 1000B0AF */  sw         $s0, 0x10($sp)
    /* 59404 8006ABF4 0400428E */  lw         $v0, 0x4($s2)
    /* 59408 8006ABF8 0000448E */  lw         $a0, 0x0($s2)
    /* 5940C 8006ABFC FFFF5024 */  addiu      $s0, $v0, -0x1
    /* 59410 8006AC00 80181000 */  sll        $v1, $s0, 2
    /* 59414 8006AC04 0E00001A */  blez       $s0, .L8006AC40
    /* 59418 8006AC08 21888300 */   addu      $s1, $a0, $v1
  .L8006AC0C:
    /* 5941C 8006AC0C 0000228E */  lw         $v0, 0x0($s1)
    /* 59420 8006AC10 00000000 */  nop
    /* 59424 8006AC14 07004010 */  beqz       $v0, .L8006AC34
    /* 59428 8006AC18 00000000 */   nop
    /* 5942C 8006AC1C 03004280 */  lb         $v0, 0x3($v0)
    /* 59430 8006AC20 00000000 */  nop
    /* 59434 8006AC24 03005314 */  bne        $v0, $s3, .L8006AC34
    /* 59438 8006AC28 21204002 */   addu      $a0, $s2, $zero
    /* 5943C 8006AC2C CFAA010C */  jal        func_8006AB3C
    /* 59440 8006AC30 21280002 */   addu      $a1, $s0, $zero
  .L8006AC34:
    /* 59444 8006AC34 FFFF1026 */  addiu      $s0, $s0, -0x1
    /* 59448 8006AC38 F4FF0106 */  bgez       $s0, .L8006AC0C
    /* 5944C 8006AC3C FCFF3126 */   addiu     $s1, $s1, -0x4
  .L8006AC40:
    /* 59450 8006AC40 2000BF8F */  lw         $ra, 0x20($sp)
    /* 59454 8006AC44 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 59458 8006AC48 1800B28F */  lw         $s2, 0x18($sp)
    /* 5945C 8006AC4C 1400B18F */  lw         $s1, 0x14($sp)
    /* 59460 8006AC50 1000B08F */  lw         $s0, 0x10($sp)
    /* 59464 8006AC54 0800E003 */  jr         $ra
    /* 59468 8006AC58 2800BD27 */   addiu     $sp, $sp, 0x28
endlabel func_8006ABD4
