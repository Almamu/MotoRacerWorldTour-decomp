nonmatching func_800A0AE8, 0x170

glabel func_800A0AE8
    /* 8F2F8 800A0AE8 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 8F2FC 800A0AEC 1800B2AF */  sw         $s2, 0x18($sp)
    /* 8F300 800A0AF0 21900000 */  addu       $s2, $zero, $zero
    /* 8F304 800A0AF4 1000B0AF */  sw         $s0, 0x10($sp)
    /* 8F308 800A0AF8 21808000 */  addu       $s0, $a0, $zero
    /* 8F30C 800A0AFC 1400B1AF */  sw         $s1, 0x14($sp)
    /* 8F310 800A0B00 3C001126 */  addiu      $s1, $s0, 0x3C
    /* 8F314 800A0B04 02000224 */  addiu      $v0, $zero, 0x2
    /* 8F318 800A0B08 07000324 */  addiu      $v1, $zero, 0x7
    /* 8F31C 800A0B0C 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* 8F320 800A0B10 040002AE */  sw         $v0, 0x4($s0)
    /* 8F324 800A0B14 10000224 */  addiu      $v0, $zero, 0x10
    /* 8F328 800A0B18 0C0003AE */  sw         $v1, 0xC($s0)
    /* 8F32C 800A0B1C 100003AE */  sw         $v1, 0x10($s0)
    /* 8F330 800A0B20 0E000324 */  addiu      $v1, $zero, 0xE
    /* 8F334 800A0B24 1C0002AE */  sw         $v0, 0x1C($s0)
    /* 8F338 800A0B28 0B000224 */  addiu      $v0, $zero, 0xB
    /* 8F33C 800A0B2C 000000AE */  sw         $zero, 0x0($s0)
    /* 8F340 800A0B30 080000AE */  sw         $zero, 0x8($s0)
    /* 8F344 800A0B34 140000AE */  sw         $zero, 0x14($s0)
    /* 8F348 800A0B38 180000AE */  sw         $zero, 0x18($s0)
    /* 8F34C 800A0B3C 240003AE */  sw         $v1, 0x24($s0)
    /* 8F350 800A0B40 200002AE */  sw         $v0, 0x20($s0)
    /* 8F354 800A0B44 280000AE */  sw         $zero, 0x28($s0)
    /* 8F358 800A0B48 300000AE */  sw         $zero, 0x30($s0)
    /* 8F35C 800A0B4C 2C0000AE */  sw         $zero, 0x2C($s0)
    /* 8F360 800A0B50 340000AE */  sw         $zero, 0x34($s0)
    /* 8F364 800A0B54 380000AE */  sw         $zero, 0x38($s0)
  .L800A0B58:
    /* 8F368 800A0B58 0D82020C */  jal        func_800A0834
    /* 8F36C 800A0B5C 21202002 */   addu      $a0, $s1, $zero
    /* 8F370 800A0B60 01005226 */  addiu      $s2, $s2, 0x1
    /* 8F374 800A0B64 0300422E */  sltiu      $v0, $s2, 0x3
    /* 8F378 800A0B68 FBFF4014 */  bnez       $v0, .L800A0B58
    /* 8F37C 800A0B6C 14003126 */   addiu     $s1, $s1, 0x14
    /* 8F380 800A0B70 01000424 */  addiu      $a0, $zero, 0x1
    /* 8F384 800A0B74 64000324 */  addiu      $v1, $zero, 0x64
    /* 8F388 800A0B78 3C000224 */  addiu      $v0, $zero, 0x3C
    /* 8F38C 800A0B7C 7C0000AE */  sw         $zero, 0x7C($s0)
    /* 8F390 800A0B80 780000AE */  sw         $zero, 0x78($s0)
    /* 8F394 800A0B84 800000AE */  sw         $zero, 0x80($s0)
    /* 8F398 800A0B88 840004AE */  sw         $a0, 0x84($s0)
    /* 8F39C 800A0B8C 880004AE */  sw         $a0, 0x88($s0)
    /* 8F3A0 800A0B90 8C0000AE */  sw         $zero, 0x8C($s0)
    /* 8F3A4 800A0B94 900000AE */  sw         $zero, 0x90($s0)
    /* 8F3A8 800A0B98 940004AE */  sw         $a0, 0x94($s0)
    /* 8F3AC 800A0B9C 980004AE */  sw         $a0, 0x98($s0)
    /* 8F3B0 800A0BA0 9C0000AE */  sw         $zero, 0x9C($s0)
    /* 8F3B4 800A0BA4 A00000AE */  sw         $zero, 0xA0($s0)
    /* 8F3B8 800A0BA8 A40000AE */  sw         $zero, 0xA4($s0)
    /* 8F3BC 800A0BAC A80000AE */  sw         $zero, 0xA8($s0)
    /* 8F3C0 800A0BB0 AC0000AE */  sw         $zero, 0xAC($s0)
    /* 8F3C4 800A0BB4 B00000AE */  sw         $zero, 0xB0($s0)
    /* 8F3C8 800A0BB8 B40000AE */  sw         $zero, 0xB4($s0)
    /* 8F3CC 800A0BBC B80000AE */  sw         $zero, 0xB8($s0)
    /* 8F3D0 800A0BC0 BC0000AE */  sw         $zero, 0xBC($s0)
    /* 8F3D4 800A0BC4 C00000AE */  sw         $zero, 0xC0($s0)
    /* 8F3D8 800A0BC8 C40000AE */  sw         $zero, 0xC4($s0)
    /* 8F3DC 800A0BCC C80000AE */  sw         $zero, 0xC8($s0)
    /* 8F3E0 800A0BD0 CC0000AE */  sw         $zero, 0xCC($s0)
    /* 8F3E4 800A0BD4 D00000AE */  sw         $zero, 0xD0($s0)
    /* 8F3E8 800A0BD8 D40000AE */  sw         $zero, 0xD4($s0)
    /* 8F3EC 800A0BDC D80000AE */  sw         $zero, 0xD8($s0)
    /* 8F3F0 800A0BE0 DC0000AE */  sw         $zero, 0xDC($s0)
    /* 8F3F4 800A0BE4 E00004AE */  sw         $a0, 0xE0($s0)
    /* 8F3F8 800A0BE8 E40003AE */  sw         $v1, 0xE4($s0)
    /* 8F3FC 800A0BEC E80002AE */  sw         $v0, 0xE8($s0)
    /* 8F400 800A0BF0 EC0003AE */  sw         $v1, 0xEC($s0)
    /* 8F404 800A0BF4 F00003AE */  sw         $v1, 0xF0($s0)
    /* 8F408 800A0BF8 F40003AE */  sw         $v1, 0xF4($s0)
    /* 8F40C 800A0BFC F80003AE */  sw         $v1, 0xF8($s0)
    /* 8F410 800A0C00 FC0000AE */  sw         $zero, 0xFC($s0)
    /* 8F414 800A0C04 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* 8F418 800A0C08 1800B28F */  lw         $s2, 0x18($sp)
    /* 8F41C 800A0C0C 1400B18F */  lw         $s1, 0x14($sp)
    /* 8F420 800A0C10 0E000224 */  addiu      $v0, $zero, 0xE
    /* 8F424 800A0C14 000102AE */  sw         $v0, 0x100($s0)
    /* 8F428 800A0C18 FFFF0224 */  addiu      $v0, $zero, -0x1
    /* 8F42C 800A0C1C 040104AE */  sw         $a0, 0x104($s0)
    /* 8F430 800A0C20 080100AE */  sw         $zero, 0x108($s0)
    /* 8F434 800A0C24 0C0104AE */  sw         $a0, 0x10C($s0)
    /* 8F438 800A0C28 100104AE */  sw         $a0, 0x110($s0)
    /* 8F43C 800A0C2C 140102AE */  sw         $v0, 0x114($s0)
    /* 8F440 800A0C30 180102AE */  sw         $v0, 0x118($s0)
    /* 8F444 800A0C34 1C0102AE */  sw         $v0, 0x11C($s0)
    /* 8F448 800A0C38 200102AE */  sw         $v0, 0x120($s0)
    /* 8F44C 800A0C3C 240100AE */  sw         $zero, 0x124($s0)
    /* 8F450 800A0C40 280100AE */  sw         $zero, 0x128($s0)
    /* 8F454 800A0C44 4C0102AE */  sw         $v0, 0x14C($s0)
    /* 8F458 800A0C48 500100AE */  sw         $zero, 0x150($s0)
    /* 8F45C 800A0C4C 1000B08F */  lw         $s0, 0x10($sp)
    /* 8F460 800A0C50 0800E003 */  jr         $ra
    /* 8F464 800A0C54 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_800A0AE8
