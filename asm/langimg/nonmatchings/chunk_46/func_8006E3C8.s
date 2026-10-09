nonmatching func_8006E3C8, 0xAC

glabel func_8006E3C8
    /* 5CBD8 8006E3C8 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 5CBDC 8006E3CC 1400B1AF */  sw         $s1, 0x14($sp)
    /* 5CBE0 8006E3D0 21888000 */  addu       $s1, $a0, $zero
    /* 5CBE4 8006E3D4 1800BFAF */  sw         $ra, 0x18($sp)
    /* 5CBE8 8006E3D8 3FB8010C */  jal        func_8006E0FC
    /* 5CBEC 8006E3DC 1000B0AF */   sw        $s0, 0x10($sp)
    /* 5CBF0 8006E3E0 1000258E */  lw         $a1, 0x10($s1)
    /* 5CBF4 8006E3E4 FFFF1024 */  addiu      $s0, $zero, -0x1
    /* 5CBF8 8006E3E8 0500B010 */  beq        $a1, $s0, .L8006E400
    /* 5CBFC 8006E3EC 00000000 */   nop
    /* 5CC00 8006E3F0 0D80043C */  lui        $a0, %hi(D_800D11D0)
    /* 5CC04 8006E3F4 DD52000C */  jal        func_80014B74
    /* 5CC08 8006E3F8 D0118424 */   addiu     $a0, $a0, %lo(D_800D11D0)
    /* 5CC0C 8006E3FC 100030AE */  sw         $s0, 0x10($s1)
  .L8006E400:
    /* 5CC10 8006E400 1400258E */  lw         $a1, 0x14($s1)
    /* 5CC14 8006E404 00000000 */  nop
    /* 5CC18 8006E408 0500B010 */  beq        $a1, $s0, .L8006E420
    /* 5CC1C 8006E40C 00000000 */   nop
    /* 5CC20 8006E410 0D80043C */  lui        $a0, %hi(D_800D11D0)
    /* 5CC24 8006E414 DD52000C */  jal        func_80014B74
    /* 5CC28 8006E418 D0118424 */   addiu     $a0, $a0, %lo(D_800D11D0)
    /* 5CC2C 8006E41C 140030AE */  sw         $s0, 0x14($s1)
  .L8006E420:
    /* 5CC30 8006E420 1800258E */  lw         $a1, 0x18($s1)
    /* 5CC34 8006E424 00000000 */  nop
    /* 5CC38 8006E428 0500B010 */  beq        $a1, $s0, .L8006E440
    /* 5CC3C 8006E42C 00000000 */   nop
    /* 5CC40 8006E430 0D80043C */  lui        $a0, %hi(D_800D11D0)
    /* 5CC44 8006E434 DD52000C */  jal        func_80014B74
    /* 5CC48 8006E438 D0118424 */   addiu     $a0, $a0, %lo(D_800D11D0)
    /* 5CC4C 8006E43C 180030AE */  sw         $s0, 0x18($s1)
  .L8006E440:
    /* 5CC50 8006E440 1C00258E */  lw         $a1, 0x1C($s1)
    /* 5CC54 8006E444 00000000 */  nop
    /* 5CC58 8006E448 0500B010 */  beq        $a1, $s0, .L8006E460
    /* 5CC5C 8006E44C 00000000 */   nop
    /* 5CC60 8006E450 0D80043C */  lui        $a0, %hi(D_800D11D0)
    /* 5CC64 8006E454 DD52000C */  jal        func_80014B74
    /* 5CC68 8006E458 D0118424 */   addiu     $a0, $a0, %lo(D_800D11D0)
    /* 5CC6C 8006E45C 1C0030AE */  sw         $s0, 0x1C($s1)
  .L8006E460:
    /* 5CC70 8006E460 1800BF8F */  lw         $ra, 0x18($sp)
    /* 5CC74 8006E464 1400B18F */  lw         $s1, 0x14($sp)
    /* 5CC78 8006E468 1000B08F */  lw         $s0, 0x10($sp)
    /* 5CC7C 8006E46C 0800E003 */  jr         $ra
    /* 5CC80 8006E470 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_8006E3C8
