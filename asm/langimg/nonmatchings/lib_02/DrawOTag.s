nonmatching DrawOTag, 0x70

glabel DrawOTag
    /* 9AAE0 800AC2D0 0C80023C */  lui        $v0, %hi(D_800BF242)
    /* 9AAE4 800AC2D4 42F24290 */  lbu        $v0, %lo(D_800BF242)($v0)
    /* 9AAE8 800AC2D8 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 9AAEC 800AC2DC 1000B0AF */  sw         $s0, 0x10($sp)
    /* 9AAF0 800AC2E0 21808000 */  addu       $s0, $a0, $zero
    /* 9AAF4 800AC2E4 0200422C */  sltiu      $v0, $v0, 0x2
    /* 9AAF8 800AC2E8 08004014 */  bnez       $v0, .L800AC30C
    /* 9AAFC 800AC2EC 1400BFAF */   sw        $ra, 0x14($sp)
    /* 9AB00 800AC2F0 0C80043C */  lui        $a0, %hi(D_800B84F4)
    /* 9AB04 800AC2F4 F4848424 */  addiu      $a0, $a0, %lo(D_800B84F4)
    /* 9AB08 800AC2F8 0C80023C */  lui        $v0, %hi(D_800BF23C)
    /* 9AB0C 800AC2FC 3CF2428C */  lw         $v0, %lo(D_800BF23C)($v0)
    /* 9AB10 800AC300 00000000 */  nop
    /* 9AB14 800AC304 09F84000 */  jalr       $v0
    /* 9AB18 800AC308 21280002 */   addu      $a1, $s0, $zero
  .L800AC30C:
    /* 9AB1C 800AC30C 21280002 */  addu       $a1, $s0, $zero
    /* 9AB20 800AC310 0C80023C */  lui        $v0, %hi(D_800BF238)
    /* 9AB24 800AC314 38F2428C */  lw         $v0, %lo(D_800BF238)($v0)
    /* 9AB28 800AC318 21300000 */  addu       $a2, $zero, $zero
    /* 9AB2C 800AC31C 1800448C */  lw         $a0, 0x18($v0)
    /* 9AB30 800AC320 0800428C */  lw         $v0, 0x8($v0)
    /* 9AB34 800AC324 00000000 */  nop
    /* 9AB38 800AC328 09F84000 */  jalr       $v0
    /* 9AB3C 800AC32C 21380000 */   addu      $a3, $zero, $zero
    /* 9AB40 800AC330 1400BF8F */  lw         $ra, 0x14($sp)
    /* 9AB44 800AC334 1000B08F */  lw         $s0, 0x10($sp)
    /* 9AB48 800AC338 0800E003 */  jr         $ra
    /* 9AB4C 800AC33C 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel DrawOTag
