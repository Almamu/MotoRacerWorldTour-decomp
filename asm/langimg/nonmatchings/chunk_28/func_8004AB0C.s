nonmatching func_8004AB0C, 0x70

glabel func_8004AB0C
    /* 3931C 8004AB0C E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 39320 8004AB10 0D80043C */  lui        $a0, %hi(D_800CAFB8)
    /* 39324 8004AB14 B8AF8424 */  addiu      $a0, $a0, %lo(D_800CAFB8)
    /* 39328 8004AB18 1000BFAF */  sw         $ra, 0x10($sp)
    /* 3932C 8004AB1C 7428020C */  jal        func_8008A1D0
    /* 39330 8004AB20 00000000 */   nop
    /* 39334 8004AB24 0D80043C */  lui        $a0, %hi(D_800CB02C)
    /* 39338 8004AB28 2CB08424 */  addiu      $a0, $a0, %lo(D_800CB02C)
    /* 3933C 8004AB2C 7428020C */  jal        func_8008A1D0
    /* 39340 8004AB30 00000000 */   nop
    /* 39344 8004AB34 812E010C */  jal        func_8004BA04
    /* 39348 8004AB38 21200000 */   addu      $a0, $zero, $zero
    /* 3934C 8004AB3C EF58020C */  jal        func_800963BC
    /* 39350 8004AB40 00000000 */   nop
    /* 39354 8004AB44 0D80053C */  lui        $a1, %hi(D_800C886C)
    /* 39358 8004AB48 6C88A58C */  lw         $a1, %lo(D_800C886C)($a1)
    /* 3935C 8004AB4C 00000000 */  nop
    /* 39360 8004AB50 6800A38C */  lw         $v1, 0x68($a1)
    /* 39364 8004AB54 00000000 */  nop
    /* 39368 8004AB58 68006484 */  lh         $a0, 0x68($v1)
    /* 3936C 8004AB5C 6C00628C */  lw         $v0, 0x6C($v1)
    /* 39370 8004AB60 00000000 */  nop
    /* 39374 8004AB64 09F84000 */  jalr       $v0
    /* 39378 8004AB68 2120A400 */   addu      $a0, $a1, $a0
    /* 3937C 8004AB6C 1000BF8F */  lw         $ra, 0x10($sp)
    /* 39380 8004AB70 01000224 */  addiu      $v0, $zero, 0x1
    /* 39384 8004AB74 0800E003 */  jr         $ra
    /* 39388 8004AB78 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_8004AB0C
