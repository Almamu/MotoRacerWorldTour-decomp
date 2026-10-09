nonmatching func_80136BF4, 0x70

glabel func_80136BF4
    /* 40C0 80136BF4 1C80083C */  lui        $t0, %hi(D_801BD884)
    /* 40C4 80136BF8 84D8088D */  lw         $t0, %lo(D_801BD884)($t0)
    /* 40C8 80136BFC F0FFBD27 */  addiu      $sp, $sp, -0x10
    /* 40CC 80136C00 0400B0AF */  sw         $s0, 0x4($sp)
    /* 40D0 80136C04 0800B1AF */  sw         $s1, 0x8($sp)
    /* 40D4 80136C08 0C00BFAF */  sw         $ra, 0xC($sp)
    /* 40D8 80136C0C 0F000015 */  bnez       $t0, .L80136C4C
    /* 40DC 80136C10 01000824 */   addiu     $t0, $zero, 0x1
    /* 40E0 80136C14 1C80013C */  lui        $at, %hi(D_801BD884)
    /* 40E4 80136C18 84D828AC */  sw         $t0, %lo(D_801BD884)($at)
    /* 40E8 80136C1C 1580103C */  lui        $s0, %hi(func_8014C224)
    /* 40EC 80136C20 24C21026 */  addiu      $s0, $s0, %lo(func_8014C224)
    /* 40F0 80136C24 0000113C */  lui        $s1, %hi(D_1)
    /* 40F4 80136C28 01003126 */  addiu      $s1, $s1, %lo(D_1)
    /* 40F8 80136C2C 07002012 */  beqz       $s1, .L80136C4C
    /* 40FC 80136C30 00000000 */   nop
  .L80136C34:
    /* 4100 80136C34 0000088E */  lw         $t0, 0x0($s0)
    /* 4104 80136C38 04001026 */  addiu      $s0, $s0, 0x4
    /* 4108 80136C3C 09F80001 */  jalr       $t0
    /* 410C 80136C40 FFFF3126 */   addiu     $s1, $s1, -0x1
    /* 4110 80136C44 FBFF2016 */  bnez       $s1, .L80136C34
    /* 4114 80136C48 00000000 */   nop
  .L80136C4C:
    /* 4118 80136C4C 0C00BF8F */  lw         $ra, 0xC($sp)
    /* 411C 80136C50 0800B18F */  lw         $s1, 0x8($sp)
    /* 4120 80136C54 0400B08F */  lw         $s0, 0x4($sp)
    /* 4124 80136C58 1000BD27 */  addiu      $sp, $sp, 0x10
    /* 4128 80136C5C 0800E003 */  jr         $ra
    /* 412C 80136C60 00000000 */   nop
endlabel func_80136BF4
