nonmatching func_8006FB74, 0xFC

glabel func_8006FB74
    /* 5E384 8006FB74 D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* 5E388 8006FB78 E86E828F */  lw         $v0, %gp_rel(D_800CB5D8)($gp)
    /* 5E38C 8006FB7C 01000324 */  addiu      $v1, $zero, 0x1
    /* 5E390 8006FB80 2800BFAF */  sw         $ra, 0x28($sp)
    /* 5E394 8006FB84 2400B5AF */  sw         $s5, 0x24($sp)
    /* 5E398 8006FB88 2000B4AF */  sw         $s4, 0x20($sp)
    /* 5E39C 8006FB8C 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 5E3A0 8006FB90 1800B2AF */  sw         $s2, 0x18($sp)
    /* 5E3A4 8006FB94 1400B1AF */  sw         $s1, 0x14($sp)
    /* 5E3A8 8006FB98 1000B0AF */  sw         $s0, 0x10($sp)
    /* 5E3AC 8006FB9C 01004224 */  addiu      $v0, $v0, 0x1
    /* 5E3B0 8006FBA0 E86E82AF */  sw         $v0, %gp_rel(D_800CB5D8)($gp)
    /* 5E3B4 8006FBA4 0E004314 */  bne        $v0, $v1, .L8006FBE0
    /* 5E3B8 8006FBA8 0D80023C */   lui       $v0, %hi(D_800D11D0)
    /* 5E3BC 8006FBAC D0114424 */  addiu      $a0, $v0, %lo(D_800D11D0)
    /* 5E3C0 8006FBB0 3F000324 */  addiu      $v1, $zero, 0x3F
    /* 5E3C4 8006FBB4 FFFF0524 */  addiu      $a1, $zero, -0x1
    /* 5E3C8 8006FBB8 FFFF6324 */  addiu      $v1, $v1, -0x1
  .L8006FBBC:
    /* 5E3CC 8006FBBC FFFF6514 */  bne        $v1, $a1, .L8006FBBC
    /* 5E3D0 8006FBC0 FFFF6324 */   addiu     $v1, $v1, -0x1
    /* 5E3D4 8006FBC4 01000324 */  addiu      $v1, $zero, 0x1
    /* 5E3D8 8006FBC8 FFFF0524 */  addiu      $a1, $zero, -0x1
    /* 5E3DC 8006FBCC FFFF6324 */  addiu      $v1, $v1, -0x1
  .L8006FBD0:
    /* 5E3E0 8006FBD0 FFFF6514 */  bne        $v1, $a1, .L8006FBD0
    /* 5E3E4 8006FBD4 FFFF6324 */   addiu     $v1, $v1, -0x1
    /* 5E3E8 8006FBD8 3F4F000C */  jal        func_80013CFC
    /* 5E3EC 8006FBDC 00000000 */   nop
  .L8006FBE0:
    /* 5E3F0 8006FBE0 EC6E828F */  lw         $v0, %gp_rel(D_800CB5DC)($gp)
    /* 5E3F4 8006FBE4 01000324 */  addiu      $v1, $zero, 0x1
    /* 5E3F8 8006FBE8 01004224 */  addiu      $v0, $v0, 0x1
    /* 5E3FC 8006FBEC EC6E82AF */  sw         $v0, %gp_rel(D_800CB5DC)($gp)
    /* 5E400 8006FBF0 16004314 */  bne        $v0, $v1, .L8006FC4C
    /* 5E404 8006FBF4 04001224 */   addiu     $s2, $zero, 0x4
    /* 5E408 8006FBF8 0D80113C */  lui        $s1, %hi(D_800CB5E0)
    /* 5E40C 8006FBFC E0B53126 */  addiu      $s1, $s1, %lo(D_800CB5E0)
    /* 5E410 8006FC00 0D80153C */  lui        $s5, %hi(D_800C83D8)
    /* 5E414 8006FC04 D883B526 */  addiu      $s5, $s5, %lo(D_800C83D8)
    /* 5E418 8006FC08 0D80143C */  lui        $s4, %hi(D_800C8400)
    /* 5E41C 8006FC0C 00849426 */  addiu      $s4, $s4, %lo(D_800C8400)
    /* 5E420 8006FC10 FFFF1324 */  addiu      $s3, $zero, -0x1
    /* 5E424 8006FC14 0D80103C */  lui        $s0, %hi(D_800CB62C)
    /* 5E428 8006FC18 2CB61026 */  addiu      $s0, $s0, %lo(D_800CB62C)
  .L8006FC1C:
    /* 5E42C 8006FC1C 15B8010C */  jal        func_8006E054
    /* 5E430 8006FC20 21202002 */   addu      $a0, $s1, $zero
    /* 5E434 8006FC24 40002426 */  addiu      $a0, $s1, 0x40
    /* 5E438 8006FC28 15B8010C */  jal        func_8006E054
    /* 5E43C 8006FC2C C0FF15AE */   sw        $s5, -0x40($s0)
    /* 5E440 8006FC30 21202002 */  addu       $a0, $s1, $zero
    /* 5E444 8006FC34 78BC010C */  jal        func_8006F1E0
    /* 5E448 8006FC38 000014AE */   sw        $s4, 0x0($s0)
    /* 5E44C 8006FC3C 7C001026 */  addiu      $s0, $s0, 0x7C
    /* 5E450 8006FC40 FFFF5226 */  addiu      $s2, $s2, -0x1
    /* 5E454 8006FC44 F5FF5316 */  bne        $s2, $s3, .L8006FC1C
    /* 5E458 8006FC48 7C003126 */   addiu     $s1, $s1, 0x7C
  .L8006FC4C:
    /* 5E45C 8006FC4C 2800BF8F */  lw         $ra, 0x28($sp)
    /* 5E460 8006FC50 2400B58F */  lw         $s5, 0x24($sp)
    /* 5E464 8006FC54 2000B48F */  lw         $s4, 0x20($sp)
    /* 5E468 8006FC58 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 5E46C 8006FC5C 1800B28F */  lw         $s2, 0x18($sp)
    /* 5E470 8006FC60 1400B18F */  lw         $s1, 0x14($sp)
    /* 5E474 8006FC64 1000B08F */  lw         $s0, 0x10($sp)
    /* 5E478 8006FC68 0800E003 */  jr         $ra
    /* 5E47C 8006FC6C 3000BD27 */   addiu     $sp, $sp, 0x30
endlabel func_8006FB74
