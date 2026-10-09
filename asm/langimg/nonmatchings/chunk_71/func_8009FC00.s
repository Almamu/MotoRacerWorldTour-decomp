nonmatching func_8009FC00, 0xD8

glabel func_8009FC00
    /* 8E410 8009FC00 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 8E414 8009FC04 21188000 */  addu       $v1, $a0, $zero
    /* 8E418 8009FC08 0D80023C */  lui        $v0, %hi(D_800C9D1C)
    /* 8E41C 8009FC0C 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 8E420 8009FC10 1C9D5324 */  addiu      $s3, $v0, %lo(D_800C9D1C)
    /* 8E424 8009FC14 21286002 */  addu       $a1, $s3, $zero
    /* 8E428 8009FC18 2000BFAF */  sw         $ra, 0x20($sp)
    /* 8E42C 8009FC1C 1800B2AF */  sw         $s2, 0x18($sp)
    /* 8E430 8009FC20 1400B1AF */  sw         $s1, 0x14($sp)
    /* 8E434 8009FC24 1000B0AF */  sw         $s0, 0x10($sp)
    /* 8E438 8009FC28 800A728C */  lw         $s2, 0xA80($v1)
    /* 8E43C 8009FC2C 980A718C */  lw         $s1, 0xA98($v1)
    /* 8E440 8009FC30 6000508E */  lw         $s0, 0x60($s2)
    /* 8E444 8009FC34 A4EA000C */  jal        func_8003AA90
    /* 8E448 8009FC38 21204002 */   addu      $a0, $s2, $zero
    /* 8E44C 8009FC3C FFFF0324 */  addiu      $v1, $zero, -0x1
    /* 8E450 8009FC40 3C0103AE */  sw         $v1, 0x13C($s0)
    /* 8E454 8009FC44 0800228E */  lw         $v0, 0x8($s1)
    /* 8E458 8009FC48 00000000 */  nop
    /* 8E45C 8009FC4C 04004014 */  bnez       $v0, .L8009FC60
    /* 8E460 8009FC50 21204002 */   addu      $a0, $s2, $zero
    /* 8E464 8009FC54 4401308E */  lw         $s0, 0x144($s1)
    /* 8E468 8009FC58 1B7F0208 */  j          .L8009FC6C
    /* 8E46C 8009FC5C 21286002 */   addu      $a1, $s3, $zero
  .L8009FC60:
    /* 8E470 8009FC60 4801308E */  lw         $s0, 0x148($s1)
    /* 8E474 8009FC64 0D80053C */  lui        $a1, %hi(D_800C9D28)
    /* 8E478 8009FC68 289DA524 */  addiu      $a1, $a1, %lo(D_800C9D28)
  .L8009FC6C:
    /* 8E47C 8009FC6C A4EA000C */  jal        func_8003AA90
    /* 8E480 8009FC70 00000000 */   nop
    /* 8E484 8009FC74 09000012 */  beqz       $s0, .L8009FC9C
    /* 8E488 8009FC78 21204002 */   addu      $a0, $s2, $zero
    /* 8E48C 8009FC7C 40291000 */  sll        $a1, $s0, 5
    /* 8E490 8009FC80 2800438C */  lw         $v1, 0x28($v0)
    /* 8E494 8009FC84 E0FFA524 */  addiu      $a1, $a1, -0x20
    /* 8E498 8009FC88 F1EC000C */  jal        func_8003B3C4
    /* 8E49C 8009FC8C 21286500 */   addu      $a1, $v1, $a1
    /* 8E4A0 8009FC90 01000524 */  addiu      $a1, $zero, 0x1
    /* 8E4A4 8009FC94 2C7F0208 */  j          .L8009FCB0
    /* 8E4A8 8009FC98 21300000 */   addu      $a2, $zero, $zero
  .L8009FC9C:
    /* 8E4AC 8009FC9C 2800458C */  lw         $a1, 0x28($v0)
    /* 8E4B0 8009FCA0 F1EC000C */  jal        func_8003B3C4
    /* 8E4B4 8009FCA4 21204002 */   addu      $a0, $s2, $zero
    /* 8E4B8 8009FCA8 01000524 */  addiu      $a1, $zero, 0x1
    /* 8E4BC 8009FCAC 01000624 */  addiu      $a2, $zero, 0x1
  .L8009FCB0:
    /* 8E4C0 8009FCB0 3000448C */  lw         $a0, 0x30($v0)
    /* 8E4C4 8009FCB4 5E65000C */  jal        func_80019578
    /* 8E4C8 8009FCB8 FFFF0724 */   addiu     $a3, $zero, -0x1
    /* 8E4CC 8009FCBC 2000BF8F */  lw         $ra, 0x20($sp)
    /* 8E4D0 8009FCC0 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 8E4D4 8009FCC4 1800B28F */  lw         $s2, 0x18($sp)
    /* 8E4D8 8009FCC8 1400B18F */  lw         $s1, 0x14($sp)
    /* 8E4DC 8009FCCC 1000B08F */  lw         $s0, 0x10($sp)
    /* 8E4E0 8009FCD0 0800E003 */  jr         $ra
    /* 8E4E4 8009FCD4 2800BD27 */   addiu     $sp, $sp, 0x28
endlabel func_8009FC00
