nonmatching func_8006BABC, 0x8C

glabel func_8006BABC
    /* 5A2CC 8006BABC D86E828F */  lw         $v0, %gp_rel(D_800CB5C8)($gp)
    /* 5A2D0 8006BAC0 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 5A2D4 8006BAC4 1000B0AF */  sw         $s0, 0x10($sp)
    /* 5A2D8 8006BAC8 01001024 */  addiu      $s0, $zero, 0x1
    /* 5A2DC 8006BACC 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* 5A2E0 8006BAD0 1800B2AF */  sw         $s2, 0x18($sp)
    /* 5A2E4 8006BAD4 1400B1AF */  sw         $s1, 0x14($sp)
    /* 5A2E8 8006BAD8 01004224 */  addiu      $v0, $v0, 0x1
    /* 5A2EC 8006BADC D86E82AF */  sw         $v0, %gp_rel(D_800CB5C8)($gp)
    /* 5A2F0 8006BAE0 05005014 */  bne        $v0, $s0, .L8006BAF8
    /* 5A2F4 8006BAE4 00000000 */   nop
    /* 5A2F8 8006BAE8 0D80043C */  lui        $a0, %hi(D_800CB480)
    /* 5A2FC 8006BAEC 80B48424 */  addiu      $a0, $a0, %lo(D_800CB480)
    /* 5A300 8006BAF0 18A9010C */  jal        func_8006A460
    /* 5A304 8006BAF4 00000000 */   nop
  .L8006BAF8:
    /* 5A308 8006BAF8 A06D828F */  lw         $v0, %gp_rel(D_800CB490)($gp)
    /* 5A30C 8006BAFC 00000000 */  nop
    /* 5A310 8006BB00 01004224 */  addiu      $v0, $v0, 0x1
    /* 5A314 8006BB04 A06D82AF */  sw         $v0, %gp_rel(D_800CB490)($gp)
    /* 5A318 8006BB08 09005014 */  bne        $v0, $s0, .L8006BB30
    /* 5A31C 8006BB0C 03001024 */   addiu     $s0, $zero, 0x3
    /* 5A320 8006BB10 0D80113C */  lui        $s1, %hi(D_800CB498)
    /* 5A324 8006BB14 98B43126 */  addiu      $s1, $s1, %lo(D_800CB498)
    /* 5A328 8006BB18 FFFF1224 */  addiu      $s2, $zero, -0x1
  .L8006BB1C:
    /* 5A32C 8006BB1C F6A9010C */  jal        func_8006A7D8
    /* 5A330 8006BB20 21202002 */   addu      $a0, $s1, $zero
    /* 5A334 8006BB24 FFFF1026 */  addiu      $s0, $s0, -0x1
    /* 5A338 8006BB28 FCFF1216 */  bne        $s0, $s2, .L8006BB1C
    /* 5A33C 8006BB2C 4C003126 */   addiu     $s1, $s1, 0x4C
  .L8006BB30:
    /* 5A340 8006BB30 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* 5A344 8006BB34 1800B28F */  lw         $s2, 0x18($sp)
    /* 5A348 8006BB38 1400B18F */  lw         $s1, 0x14($sp)
    /* 5A34C 8006BB3C 1000B08F */  lw         $s0, 0x10($sp)
    /* 5A350 8006BB40 0800E003 */  jr         $ra
    /* 5A354 8006BB44 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_8006BABC
