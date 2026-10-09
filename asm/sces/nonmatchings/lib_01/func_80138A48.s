nonmatching func_80138A48, 0xD8

glabel func_80138A48
    /* 5F14 80138A48 1C80023C */  lui        $v0, %hi(D_801BDC14)
    /* 5F18 80138A4C 14DC428C */  lw         $v0, %lo(D_801BDC14)($v0)
    /* 5F1C 80138A50 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 5F20 80138A54 1400B1AF */  sw         $s1, 0x14($sp)
    /* 5F24 80138A58 1C80113C */  lui        $s1, %hi(D_801BDC2D)
    /* 5F28 80138A5C 2DDC3126 */  addiu      $s1, $s1, %lo(D_801BDC2D)
    /* 5F2C 80138A60 2000BFAF */  sw         $ra, 0x20($sp)
    /* 5F30 80138A64 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 5F34 80138A68 1800B2AF */  sw         $s2, 0x18($sp)
    /* 5F38 80138A6C 1000B0AF */  sw         $s0, 0x10($sp)
    /* 5F3C 80138A70 00004290 */  lbu        $v0, 0x0($v0)
    /* 5F40 80138A74 FFFF3326 */  addiu      $s3, $s1, -0x1
    /* 5F44 80138A78 03005230 */  andi       $s2, $v0, 0x3
  .L80138A7C:
    /* 5F48 80138A7C 25DD040C */  jal        func_80137494
    /* 5F4C 80138A80 00000000 */   nop
    /* 5F50 80138A84 21804000 */  addu       $s0, $v0, $zero
    /* 5F54 80138A88 1A000012 */  beqz       $s0, .L80138AF4
    /* 5F58 80138A8C 04000232 */   andi      $v0, $s0, 0x4
    /* 5F5C 80138A90 0B004010 */  beqz       $v0, .L80138AC0
    /* 5F60 80138A94 02000232 */   andi      $v0, $s0, 0x2
    /* 5F64 80138A98 1C80023C */  lui        $v0, %hi(D_801BD954)
    /* 5F68 80138A9C 54D9428C */  lw         $v0, %lo(D_801BD954)($v0)
    /* 5F6C 80138AA0 00000000 */  nop
    /* 5F70 80138AA4 05004010 */  beqz       $v0, .L80138ABC
    /* 5F74 80138AA8 00000000 */   nop
    /* 5F78 80138AAC 00002492 */  lbu        $a0, 0x0($s1)
    /* 5F7C 80138AB0 1C80053C */  lui        $a1, %hi(D_801C64B0)
    /* 5F80 80138AB4 09F84000 */  jalr       $v0
    /* 5F84 80138AB8 B064A524 */   addiu     $a1, $a1, %lo(D_801C64B0)
  .L80138ABC:
    /* 5F88 80138ABC 02000232 */  andi       $v0, $s0, 0x2
  .L80138AC0:
    /* 5F8C 80138AC0 EEFF4010 */  beqz       $v0, .L80138A7C
    /* 5F90 80138AC4 00000000 */   nop
    /* 5F94 80138AC8 1C80023C */  lui        $v0, %hi(D_801BD950)
    /* 5F98 80138ACC 50D9428C */  lw         $v0, %lo(D_801BD950)($v0)
    /* 5F9C 80138AD0 00000000 */  nop
    /* 5FA0 80138AD4 E9FF4010 */  beqz       $v0, .L80138A7C
    /* 5FA4 80138AD8 00000000 */   nop
    /* 5FA8 80138ADC 00006492 */  lbu        $a0, 0x0($s3)
    /* 5FAC 80138AE0 1C80053C */  lui        $a1, %hi(D_801C64A8)
    /* 5FB0 80138AE4 09F84000 */  jalr       $v0
    /* 5FB4 80138AE8 A864A524 */   addiu     $a1, $a1, %lo(D_801C64A8)
    /* 5FB8 80138AEC 9FE20408 */  j          .L80138A7C
    /* 5FBC 80138AF0 00000000 */   nop
  .L80138AF4:
    /* 5FC0 80138AF4 1C80023C */  lui        $v0, %hi(D_801BDC14)
    /* 5FC4 80138AF8 14DC428C */  lw         $v0, %lo(D_801BDC14)($v0)
    /* 5FC8 80138AFC 00000000 */  nop
    /* 5FCC 80138B00 000052A0 */  sb         $s2, 0x0($v0)
    /* 5FD0 80138B04 2000BF8F */  lw         $ra, 0x20($sp)
    /* 5FD4 80138B08 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 5FD8 80138B0C 1800B28F */  lw         $s2, 0x18($sp)
    /* 5FDC 80138B10 1400B18F */  lw         $s1, 0x14($sp)
    /* 5FE0 80138B14 1000B08F */  lw         $s0, 0x10($sp)
    /* 5FE4 80138B18 0800E003 */  jr         $ra
    /* 5FE8 80138B1C 2800BD27 */   addiu     $sp, $sp, 0x28
endlabel func_80138A48
