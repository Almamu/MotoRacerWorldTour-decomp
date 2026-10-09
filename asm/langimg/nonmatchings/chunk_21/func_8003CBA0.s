nonmatching func_8003CBA0, 0xD8

glabel func_8003CBA0
    /* 2B3B0 8003CBA0 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 2B3B4 8003CBA4 1800B2AF */  sw         $s2, 0x18($sp)
    /* 2B3B8 8003CBA8 21900000 */  addu       $s2, $zero, $zero
    /* 2B3BC 8003CBAC 1000B0AF */  sw         $s0, 0x10($sp)
    /* 2B3C0 8003CBB0 21808000 */  addu       $s0, $a0, $zero
    /* 2B3C4 8003CBB4 1400B1AF */  sw         $s1, 0x14($sp)
    /* 2B3C8 8003CBB8 2188A000 */  addu       $s1, $a1, $zero
    /* 2B3CC 8003CBBC 21202002 */  addu       $a0, $s1, $zero
    /* 2B3D0 8003CBC0 0C80053C */  lui        $a1, %hi(D_800C4DDC)
    /* 2B3D4 8003CBC4 DC4DA524 */  addiu      $a1, $a1, %lo(D_800C4DDC)
    /* 2B3D8 8003CBC8 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 2B3DC 8003CBCC 2000BFAF */  sw         $ra, 0x20($sp)
    /* 2B3E0 8003CBD0 2B98020C */  jal        func_800A60AC
    /* 2B3E4 8003CBD4 2198C000 */   addu      $s3, $a2, $zero
    /* 2B3E8 8003CBD8 06004014 */  bnez       $v0, .L8003CBF4
    /* 2B3EC 8003CBDC 21202002 */   addu      $a0, $s1, $zero
    /* 2B3F0 8003CBE0 940A028E */  lw         $v0, 0xA94($s0)
    /* 2B3F4 8003CBE4 00000000 */  nop
    /* 2B3F8 8003CBE8 04004234 */  ori        $v0, $v0, 0x4
    /* 2B3FC 8003CBEC 16F30008 */  j          .L8003CC58
    /* 2B400 8003CBF0 940A02AE */   sw        $v0, 0xA94($s0)
  .L8003CBF4:
    /* 2B404 8003CBF4 0C80053C */  lui        $a1, %hi(D_800C4DE4)
    /* 2B408 8003CBF8 2B98020C */  jal        func_800A60AC
    /* 2B40C 8003CBFC E44DA524 */   addiu     $a1, $a1, %lo(D_800C4DE4)
    /* 2B410 8003CC00 05004014 */  bnez       $v0, .L8003CC18
    /* 2B414 8003CC04 21200002 */   addu      $a0, $s0, $zero
    /* 2B418 8003CC08 27F3000C */  jal        func_8003CC9C
    /* 2B41C 8003CC0C 01000524 */   addiu     $a1, $zero, 0x1
    /* 2B420 8003CC10 17F30008 */  j          .L8003CC5C
    /* 2B424 8003CC14 21104002 */   addu      $v0, $s2, $zero
  .L8003CC18:
    /* 2B428 8003CC18 C9F2000C */  jal        func_8003CB24
    /* 2B42C 8003CC1C 21282002 */   addu      $a1, $s1, $zero
    /* 2B430 8003CC20 05006012 */  beqz       $s3, .L8003CC38
    /* 2B434 8003CC24 21904000 */   addu      $s2, $v0, $zero
    /* 2B438 8003CC28 8C0A028E */  lw         $v0, 0xA8C($s0)
    /* 2B43C 8003CC2C 00000000 */  nop
    /* 2B440 8003CC30 FFFF4224 */  addiu      $v0, $v0, -0x1
    /* 2B444 8003CC34 8C0A02AE */  sw         $v0, 0xA8C($s0)
  .L8003CC38:
    /* 2B448 8003CC38 07004012 */  beqz       $s2, .L8003CC58
    /* 2B44C 8003CC3C 21200002 */   addu      $a0, $s0, $zero
    /* 2B450 8003CC40 6401068E */  lw         $a2, 0x164($s0)
    /* 2B454 8003CC44 0AFF000C */  jal        func_8003FC28
    /* 2B458 8003CC48 04000524 */   addiu     $a1, $zero, 0x4
    /* 2B45C 8003CC4C FFFF0224 */  addiu      $v0, $zero, -0x1
    /* 2B460 8003CC50 640102AE */  sw         $v0, 0x164($s0)
    /* 2B464 8003CC54 800A12AE */  sw         $s2, 0xA80($s0)
  .L8003CC58:
    /* 2B468 8003CC58 21104002 */  addu       $v0, $s2, $zero
  .L8003CC5C:
    /* 2B46C 8003CC5C 2000BF8F */  lw         $ra, 0x20($sp)
    /* 2B470 8003CC60 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 2B474 8003CC64 1800B28F */  lw         $s2, 0x18($sp)
    /* 2B478 8003CC68 1400B18F */  lw         $s1, 0x14($sp)
    /* 2B47C 8003CC6C 1000B08F */  lw         $s0, 0x10($sp)
    /* 2B480 8003CC70 0800E003 */  jr         $ra
    /* 2B484 8003CC74 2800BD27 */   addiu     $sp, $sp, 0x28
endlabel func_8003CBA0
