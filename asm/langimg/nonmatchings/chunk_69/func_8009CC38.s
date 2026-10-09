nonmatching func_8009CC38, 0xB4

glabel func_8009CC38
    /* 8B448 8009CC38 C8FFBD27 */  addiu      $sp, $sp, -0x38
    /* 8B44C 8009CC3C 3000B2AF */  sw         $s2, 0x30($sp)
    /* 8B450 8009CC40 21908000 */  addu       $s2, $a0, $zero
    /* 8B454 8009CC44 3400BFAF */  sw         $ra, 0x34($sp)
    /* 8B458 8009CC48 2C00B1AF */  sw         $s1, 0x2C($sp)
    /* 8B45C 8009CC4C 2800B0AF */  sw         $s0, 0x28($sp)
    /* 8B460 8009CC50 900A428E */  lw         $v0, 0xA90($s2)
    /* 8B464 8009CC54 00000000 */  nop
    /* 8B468 8009CC58 1C004014 */  bnez       $v0, .L8009CCCC
    /* 8B46C 8009CC5C 0D80033C */   lui       $v1, %hi(D_800CC1F0)
    /* 8B470 8009CC60 F0C1708C */  lw         $s0, %lo(D_800CC1F0)($v1)
    /* 8B474 8009CC64 959C020C */  jal        __builtin_vec_new
    /* 8B478 8009CC68 00700424 */   addiu     $a0, $zero, 0x7000
    /* 8B47C 8009CC6C 1800A427 */  addiu      $a0, $sp, 0x18
    /* 8B480 8009CC70 9A1B020C */  jal        func_80086E68
    /* 8B484 8009CC74 21884000 */   addu      $s1, $v0, $zero
    /* 8B488 8009CC78 1800A427 */  addiu      $a0, $sp, 0x18
    /* 8B48C 8009CC7C 21282002 */  addu       $a1, $s1, $zero
    /* 8B490 8009CC80 C51B020C */  jal        func_80086F14
    /* 8B494 8009CC84 00700624 */   addiu     $a2, $zero, 0x7000
    /* 8B498 8009CC88 1800A427 */  addiu      $a0, $sp, 0x18
    /* 8B49C 8009CC8C 01000624 */  addiu      $a2, $zero, 0x1
    /* 8B4A0 8009CC90 0C80023C */  lui        $v0, %hi(D_800B8868)
    /* 8B4A4 8009CC94 68884280 */  lb         $v0, %lo(D_800B8868)($v0)
    /* 8B4A8 8009CC98 21380000 */  addu       $a3, $zero, $zero
    /* 8B4AC 8009CC9C 1400A0AF */  sw         $zero, 0x14($sp)
    /* 8B4B0 8009CCA0 21280002 */  addu       $a1, $s0, $zero
    /* 8B4B4 8009CCA4 00120200 */  sll        $v0, $v0, 8
    /* 8B4B8 8009CCA8 1A1D020C */  jal        func_80087468
    /* 8B4BC 8009CCAC 1000A2AF */   sw        $v0, 0x10($sp)
    /* 8B4C0 8009CCB0 03002012 */  beqz       $s1, .L8009CCC0
    /* 8B4C4 8009CCB4 00000000 */   nop
    /* 8B4C8 8009CCB8 8D9C020C */  jal        __builtin_vec_delete
    /* 8B4CC 8009CCBC 21202002 */   addu      $a0, $s1, $zero
  .L8009CCC0:
    /* 8B4D0 8009CCC0 1800A427 */  addiu      $a0, $sp, 0x18
    /* 8B4D4 8009CCC4 9F1B020C */  jal        func_80086E7C
    /* 8B4D8 8009CCC8 02000524 */   addiu     $a1, $zero, 0x2
  .L8009CCCC:
    /* 8B4DC 8009CCCC 4CF3000C */  jal        func_8003CD30
    /* 8B4E0 8009CCD0 21204002 */   addu      $a0, $s2, $zero
    /* 8B4E4 8009CCD4 3400BF8F */  lw         $ra, 0x34($sp)
    /* 8B4E8 8009CCD8 3000B28F */  lw         $s2, 0x30($sp)
    /* 8B4EC 8009CCDC 2C00B18F */  lw         $s1, 0x2C($sp)
    /* 8B4F0 8009CCE0 2800B08F */  lw         $s0, 0x28($sp)
    /* 8B4F4 8009CCE4 0800E003 */  jr         $ra
    /* 8B4F8 8009CCE8 3800BD27 */   addiu     $sp, $sp, 0x38
endlabel func_8009CC38
