nonmatching func_800AFC0C, 0x12C

glabel func_800AFC0C
    /* 9E41C 800AFC0C C8FFBD27 */  addiu      $sp, $sp, -0x38
    /* 9E420 800AFC10 2800B6AF */  sw         $s6, 0x28($sp)
    /* 9E424 800AFC14 0E80163C */  lui        $s6, %hi(D_800DE360)
    /* 9E428 800AFC18 60E3C28E */  lw         $v0, %lo(D_800DE360)($s6)
    /* 9E42C 800AFC1C 1000B0AF */  sw         $s0, 0x10($sp)
    /* 9E430 800AFC20 21800000 */  addu       $s0, $zero, $zero
    /* 9E434 800AFC24 2400B5AF */  sw         $s5, 0x24($sp)
    /* 9E438 800AFC28 21A8A000 */  addu       $s5, $a1, $zero
    /* 9E43C 800AFC2C 3000BFAF */  sw         $ra, 0x30($sp)
    /* 9E440 800AFC30 2C00B7AF */  sw         $s7, 0x2C($sp)
    /* 9E444 800AFC34 2000B4AF */  sw         $s4, 0x20($sp)
    /* 9E448 800AFC38 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 9E44C 800AFC3C 1800B2AF */  sw         $s2, 0x18($sp)
    /* 9E450 800AFC40 32004018 */  blez       $v0, .L800AFD0C
    /* 9E454 800AFC44 1400B1AF */   sw        $s1, 0x14($sp)
    /* 9E458 800AFC48 0E80023C */  lui        $v0, %hi(D_800DE344)
    /* 9E45C 800AFC4C 44E35724 */  addiu      $s7, $v0, %lo(D_800DE344)
    /* 9E460 800AFC50 0C80143C */  lui        $s4, %hi(D_800C3C74)
    /* 9E464 800AFC54 21900000 */  addu       $s2, $zero, $zero
    /* 9E468 800AFC58 21888000 */  addu       $s1, $a0, $zero
  .L800AFC5C:
    /* 9E46C 800AFC5C 0C80033C */  lui        $v1, %hi(D_800C3C70)
    /* 9E470 800AFC60 703C6290 */  lbu        $v0, %lo(D_800C3C70)($v1)
    /* 9E474 800AFC64 00000000 */  nop
    /* 9E478 800AFC68 07100202 */  srav       $v0, $v0, $s0
    /* 9E47C 800AFC6C 01004230 */  andi       $v0, $v0, 0x1
    /* 9E480 800AFC70 20004010 */  beqz       $v0, .L800AFCF4
    /* 9E484 800AFC74 21101702 */   addu      $v0, $s0, $s7
    /* 9E488 800AFC78 00004480 */  lb         $a0, 0x0($v0)
    /* 9E48C 800AFC7C 04000324 */  addiu      $v1, $zero, 0x4
    /* 9E490 800AFC80 05008310 */  beq        $a0, $v1, .L800AFC98
    /* 9E494 800AFC84 07000224 */   addiu     $v0, $zero, 0x7
    /* 9E498 800AFC88 0E008210 */  beq        $a0, $v0, .L800AFCC4
    /* 9E49C 800AFC8C 00000000 */   nop
    /* 9E4A0 800AFC90 3EBF0208 */  j          .L800AFCF8
    /* 9E4A4 800AFC94 02005226 */   addiu     $s2, $s2, 0x2
  .L800AFC98:
    /* 9E4A8 800AFC98 743C828E */  lw         $v0, %lo(D_800C3C74)($s4)
    /* 9E4AC 800AFC9C 00000000 */  nop
    /* 9E4B0 800AFCA0 04004230 */  andi       $v0, $v0, 0x4
    /* 9E4B4 800AFCA4 05004010 */  beqz       $v0, .L800AFCBC
    /* 9E4B8 800AFCA8 0C80133C */   lui       $s3, %hi(D_800C3C68)
    /* 9E4BC 800AFCAC 21200002 */  addu       $a0, $s0, $zero
    /* 9E4C0 800AFCB0 21282002 */  addu       $a1, $s1, $zero
    /* 9E4C4 800AFCB4 82BD020C */  jal        func_800AF608
    /* 9E4C8 800AFCB8 2130A002 */   addu      $a2, $s5, $zero
  .L800AFCBC:
    /* 9E4CC 800AFCBC 3BBF0208 */  j          .L800AFCEC
    /* 9E4D0 800AFCC0 683C6226 */   addiu     $v0, $s3, %lo(D_800C3C68)
  .L800AFCC4:
    /* 9E4D4 800AFCC4 743C828E */  lw         $v0, %lo(D_800C3C74)($s4)
    /* 9E4D8 800AFCC8 00000000 */  nop
    /* 9E4DC 800AFCCC 10004230 */  andi       $v0, $v0, 0x10
    /* 9E4E0 800AFCD0 05004010 */  beqz       $v0, .L800AFCE8
    /* 9E4E4 800AFCD4 0C80133C */   lui       $s3, %hi(D_800C3C6C)
    /* 9E4E8 800AFCD8 21200002 */  addu       $a0, $s0, $zero
    /* 9E4EC 800AFCDC 21282002 */  addu       $a1, $s1, $zero
    /* 9E4F0 800AFCE0 89BE020C */  jal        func_800AFA24
    /* 9E4F4 800AFCE4 2130A002 */   addu      $a2, $s5, $zero
  .L800AFCE8:
    /* 9E4F8 800AFCE8 6C3C6226 */  addiu      $v0, $s3, %lo(D_800C3C6C)
  .L800AFCEC:
    /* 9E4FC 800AFCEC 21104202 */  addu       $v0, $s2, $v0
    /* 9E500 800AFCF0 000040A4 */  sh         $zero, 0x0($v0)
  .L800AFCF4:
    /* 9E504 800AFCF4 02005226 */  addiu      $s2, $s2, 0x2
  .L800AFCF8:
    /* 9E508 800AFCF8 60E3C28E */  lw         $v0, %lo(D_800DE360)($s6)
    /* 9E50C 800AFCFC 01001026 */  addiu      $s0, $s0, 0x1
    /* 9E510 800AFD00 2A100202 */  slt        $v0, $s0, $v0
    /* 9E514 800AFD04 D5FF4014 */  bnez       $v0, .L800AFC5C
    /* 9E518 800AFD08 98003126 */   addiu     $s1, $s1, 0x98
  .L800AFD0C:
    /* 9E51C 800AFD0C 3000BF8F */  lw         $ra, 0x30($sp)
    /* 9E520 800AFD10 2C00B78F */  lw         $s7, 0x2C($sp)
    /* 9E524 800AFD14 2800B68F */  lw         $s6, 0x28($sp)
    /* 9E528 800AFD18 2400B58F */  lw         $s5, 0x24($sp)
    /* 9E52C 800AFD1C 2000B48F */  lw         $s4, 0x20($sp)
    /* 9E530 800AFD20 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 9E534 800AFD24 1800B28F */  lw         $s2, 0x18($sp)
    /* 9E538 800AFD28 1400B18F */  lw         $s1, 0x14($sp)
    /* 9E53C 800AFD2C 1000B08F */  lw         $s0, 0x10($sp)
    /* 9E540 800AFD30 0800E003 */  jr         $ra
    /* 9E544 800AFD34 3800BD27 */   addiu     $sp, $sp, 0x38
endlabel func_800AFC0C
