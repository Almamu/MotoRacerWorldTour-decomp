nonmatching func_8006D420, 0x90

glabel func_8006D420
    /* 5BC30 8006D420 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 5BC34 8006D424 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 5BC38 8006D428 21988000 */  addu       $s3, $a0, $zero
    /* 5BC3C 8006D42C 2000BFAF */  sw         $ra, 0x20($sp)
    /* 5BC40 8006D430 1800B2AF */  sw         $s2, 0x18($sp)
    /* 5BC44 8006D434 1400B1AF */  sw         $s1, 0x14($sp)
    /* 5BC48 8006D438 1000B0AF */  sw         $s0, 0x10($sp)
    /* 5BC4C 8006D43C 8809628E */  lw         $v0, 0x988($s3)
    /* 5BC50 8006D440 40900500 */  sll        $s2, $a1, 1
    /* 5BC54 8006D444 21104202 */  addu       $v0, $s2, $v0
    /* 5BC58 8006D448 00004484 */  lh         $a0, 0x0($v0)
    /* 5BC5C 8006D44C FFFF0324 */  addiu      $v1, $zero, -0x1
    /* 5BC60 8006D450 10008310 */  beq        $a0, $v1, .L8006D494
    /* 5BC64 8006D454 21880000 */   addu      $s1, $zero, $zero
    /* 5BC68 8006D458 21806002 */  addu       $s0, $s3, $zero
  .L8006D45C:
    /* 5BC6C 8006D45C 8809628E */  lw         $v0, 0x988($s3)
    /* 5BC70 8006D460 00000000 */  nop
    /* 5BC74 8006D464 21104202 */  addu       $v0, $s2, $v0
    /* 5BC78 8006D468 00004384 */  lh         $v1, 0x0($v0)
    /* 5BC7C 8006D46C 01003126 */  addiu      $s1, $s1, 0x1
    /* 5BC80 8006D470 40200300 */  sll        $a0, $v1, 1
    /* 5BC84 8006D474 21208300 */  addu       $a0, $a0, $v1
    /* 5BC88 8006D478 80200400 */  sll        $a0, $a0, 2
    /* 5BC8C 8006D47C 00048424 */  addiu      $a0, $a0, 0x400
    /* 5BC90 8006D480 ABB3010C */  jal        func_8006CEAC
    /* 5BC94 8006D484 21200402 */   addu      $a0, $s0, $a0
    /* 5BC98 8006D488 0200222E */  sltiu      $v0, $s1, 0x2
    /* 5BC9C 8006D48C F3FF4014 */  bnez       $v0, .L8006D45C
    /* 5BCA0 8006D490 C0041026 */   addiu     $s0, $s0, 0x4C0
  .L8006D494:
    /* 5BCA4 8006D494 2000BF8F */  lw         $ra, 0x20($sp)
    /* 5BCA8 8006D498 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 5BCAC 8006D49C 1800B28F */  lw         $s2, 0x18($sp)
    /* 5BCB0 8006D4A0 1400B18F */  lw         $s1, 0x14($sp)
    /* 5BCB4 8006D4A4 1000B08F */  lw         $s0, 0x10($sp)
    /* 5BCB8 8006D4A8 0800E003 */  jr         $ra
    /* 5BCBC 8006D4AC 2800BD27 */   addiu     $sp, $sp, 0x28
endlabel func_8006D420
