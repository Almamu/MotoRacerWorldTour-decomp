nonmatching func_800AA420, 0x104

glabel func_800AA420
    /* 98C30 800AA420 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 98C34 800AA424 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 98C38 800AA428 21988000 */  addu       $s3, $a0, $zero
    /* 98C3C 800AA42C 2000B4AF */  sw         $s4, 0x20($sp)
    /* 98C40 800AA430 21A0A000 */  addu       $s4, $a1, $zero
    /* 98C44 800AA434 1400B1AF */  sw         $s1, 0x14($sp)
    /* 98C48 800AA438 0C80113C */  lui        $s1, %hi(D_800BD35C)
    /* 98C4C 800AA43C 5CD33126 */  addiu      $s1, $s1, %lo(D_800BD35C)
    /* 98C50 800AA440 1800B2AF */  sw         $s2, 0x18($sp)
    /* 98C54 800AA444 08003226 */  addiu      $s2, $s1, 0x8
    /* 98C58 800AA448 2400BFAF */  sw         $ra, 0x24($sp)
    /* 98C5C 800AA44C 1000B0AF */  sw         $s0, 0x10($sp)
  .L800AA450:
    /* 98C60 800AA450 B4AA020C */  jal        func_800AAAD0
    /* 98C64 800AA454 FFFF0424 */   addiu     $a0, $zero, -0x1
    /* 98C68 800AA458 0000238E */  lw         $v1, 0x0($s1)
    /* 98C6C 800AA45C 00000000 */  nop
    /* 98C70 800AA460 B0046324 */  addiu      $v1, $v1, 0x4B0
    /* 98C74 800AA464 2A186200 */  slt        $v1, $v1, $v0
    /* 98C78 800AA468 13006014 */  bnez       $v1, .L800AA4B8
    /* 98C7C 800AA46C FFFF1024 */   addiu     $s0, $zero, -0x1
    /* 98C80 800AA470 F8FF228E */  lw         $v0, -0x8($s1)
    /* 98C84 800AA474 00000000 */  nop
    /* 98C88 800AA478 09004004 */  bltz       $v0, .L800AA4A0
    /* 98C8C 800AA47C 00000000 */   nop
    /* 98C90 800AA480 B4AA020C */  jal        func_800AAAD0
    /* 98C94 800AA484 FFFF0424 */   addiu     $a0, $zero, -0x1
    /* 98C98 800AA488 FCFF238E */  lw         $v1, -0x4($s1)
    /* 98C9C 800AA48C 00000000 */  nop
    /* 98CA0 800AA490 3C006324 */  addiu      $v1, $v1, 0x3C
    /* 98CA4 800AA494 2A186200 */  slt        $v1, $v1, $v0
    /* 98CA8 800AA498 06006010 */  beqz       $v1, .L800AA4B4
    /* 98CAC 800AA49C 00000000 */   nop
  .L800AA4A0:
    /* 98CB0 800AA4A0 27A8020C */  jal        func_800AA09C
    /* 98CB4 800AA4A4 01000424 */   addiu     $a0, $zero, 0x1
    /* 98CB8 800AA4A8 E4FF308E */  lw         $s0, -0x1C($s1)
    /* 98CBC 800AA4AC 2EA90208 */  j          .L800AA4B8
    /* 98CC0 800AA4B0 00000000 */   nop
  .L800AA4B4:
    /* 98CC4 800AA4B4 F8FF308E */  lw         $s0, -0x8($s1)
  .L800AA4B8:
    /* 98CC8 800AA4B8 09006016 */  bnez       $s3, .L800AA4E0
    /* 98CCC 800AA4BC 01000424 */   addiu     $a0, $zero, 0x1
    /* 98CD0 800AA4C0 0000428E */  lw         $v0, 0x0($s2)
    /* 98CD4 800AA4C4 00000000 */  nop
    /* 98CD8 800AA4C8 03004010 */  beqz       $v0, .L800AA4D8
    /* 98CDC 800AA4CC 00000000 */   nop
    /* 98CE0 800AA4D0 DFFF0012 */  beqz       $s0, .L800AA450
    /* 98CE4 800AA4D4 00000000 */   nop
  .L800AA4D8:
    /* 98CE8 800AA4D8 DDFF001E */  bgtz       $s0, .L800AA450
    /* 98CEC 800AA4DC 01000424 */   addiu     $a0, $zero, 0x1
  .L800AA4E0:
    /* 98CF0 800AA4E0 9D9D020C */  jal        func_800A7674
    /* 98CF4 800AA4E4 21288002 */   addu      $a1, $s4, $zero
    /* 98CF8 800AA4E8 0000428E */  lw         $v0, 0x0($s2)
    /* 98CFC 800AA4EC 00000000 */  nop
    /* 98D00 800AA4F0 04004010 */  beqz       $v0, .L800AA504
    /* 98D04 800AA4F4 21100002 */   addu      $v0, $s0, $zero
    /* 98D08 800AA4F8 02000016 */  bnez       $s0, .L800AA504
    /* 98D0C 800AA4FC 01001024 */   addiu     $s0, $zero, 0x1
    /* 98D10 800AA500 21100002 */  addu       $v0, $s0, $zero
  .L800AA504:
    /* 98D14 800AA504 2400BF8F */  lw         $ra, 0x24($sp)
    /* 98D18 800AA508 2000B48F */  lw         $s4, 0x20($sp)
    /* 98D1C 800AA50C 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 98D20 800AA510 1800B28F */  lw         $s2, 0x18($sp)
    /* 98D24 800AA514 1400B18F */  lw         $s1, 0x14($sp)
    /* 98D28 800AA518 1000B08F */  lw         $s0, 0x10($sp)
    /* 98D2C 800AA51C 0800E003 */  jr         $ra
    /* 98D30 800AA520 2800BD27 */   addiu     $sp, $sp, 0x28
endlabel func_800AA420
