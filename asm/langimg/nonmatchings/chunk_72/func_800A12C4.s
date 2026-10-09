nonmatching func_800A12C4, 0xC8

glabel func_800A12C4
    /* 8FAD4 800A12C4 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 8FAD8 800A12C8 1000B0AF */  sw         $s0, 0x10($sp)
    /* 8FADC 800A12CC 21800000 */  addu       $s0, $zero, $zero
    /* 8FAE0 800A12D0 1400B1AF */  sw         $s1, 0x14($sp)
    /* 8FAE4 800A12D4 1800BFAF */  sw         $ra, 0x18($sp)
    /* 8FAE8 800A12D8 A884020C */  jal        func_800A12A0
    /* 8FAEC 800A12DC 21888000 */   addu      $s1, $a0, $zero
    /* 8FAF0 800A12E0 04000424 */  addiu      $a0, $zero, 0x4
    /* 8FAF4 800A12E4 24172626 */  addiu      $a2, $s1, 0x1724
    /* 8FAF8 800A12E8 D2152526 */  addiu      $a1, $s1, 0x15D2
    /* 8FAFC 800A12EC 00172326 */  addiu      $v1, $s1, 0x1700
  .L800A12F0:
    /* 8FB00 800A12F0 0000A280 */  lb         $v0, 0x0($a1)
    /* 8FB04 800A12F4 00000000 */  nop
    /* 8FB08 800A12F8 07004010 */  beqz       $v0, .L800A1318
    /* 8FB0C 800A12FC 00000000 */   nop
    /* 8FB10 800A1300 0000C28C */  lw         $v0, 0x0($a2)
    /* 8FB14 800A1304 01001026 */  addiu      $s0, $s0, 0x1
    /* 8FB18 800A1308 00120200 */  sll        $v0, $v0, 8
    /* 8FB1C 800A130C 25108200 */  or         $v0, $a0, $v0
    /* 8FB20 800A1310 000062AC */  sw         $v0, 0x0($v1)
    /* 8FB24 800A1314 04006324 */  addiu      $v1, $v1, 0x4
  .L800A1318:
    /* 8FB28 800A1318 FCFFC624 */  addiu      $a2, $a2, -0x4
    /* 8FB2C 800A131C FFFF8424 */  addiu      $a0, $a0, -0x1
    /* 8FB30 800A1320 F3FF8104 */  bgez       $a0, .L800A12F0
    /* 8FB34 800A1324 F8FFA524 */   addiu     $a1, $a1, -0x8
    /* 8FB38 800A1328 0200022A */  slti       $v0, $s0, 0x2
    /* 8FB3C 800A132C 08004014 */  bnez       $v0, .L800A1350
    /* 8FB40 800A1330 FFFF0426 */   addiu     $a0, $s0, -0x1
    /* 8FB44 800A1334 00172426 */  addiu      $a0, $s1, 0x1700
    /* 8FB48 800A1338 0A80073C */  lui        $a3, %hi(func_800A1284)
    /* 8FB4C 800A133C 21280002 */  addu       $a1, $s0, $zero
    /* 8FB50 800A1340 04000624 */  addiu      $a2, $zero, 0x4
    /* 8FB54 800A1344 62D8020C */  jal        func_800B6188
    /* 8FB58 800A1348 8412E724 */   addiu     $a3, $a3, %lo(func_800A1284)
    /* 8FB5C 800A134C FFFF0426 */  addiu      $a0, $s0, -0x1
  .L800A1350:
    /* 8FB60 800A1350 09008004 */  bltz       $a0, .L800A1378
    /* 8FB64 800A1354 80100400 */   sll       $v0, $a0, 2
    /* 8FB68 800A1358 00172326 */  addiu      $v1, $s1, 0x1700
    /* 8FB6C 800A135C 21184300 */  addu       $v1, $v0, $v1
  .L800A1360:
    /* 8FB70 800A1360 0000628C */  lw         $v0, 0x0($v1)
    /* 8FB74 800A1364 FFFF8424 */  addiu      $a0, $a0, -0x1
    /* 8FB78 800A1368 0F004230 */  andi       $v0, $v0, 0xF
    /* 8FB7C 800A136C 000062AC */  sw         $v0, 0x0($v1)
    /* 8FB80 800A1370 FBFF8104 */  bgez       $a0, .L800A1360
    /* 8FB84 800A1374 FCFF6324 */   addiu     $v1, $v1, -0x4
  .L800A1378:
    /* 8FB88 800A1378 1800BF8F */  lw         $ra, 0x18($sp)
    /* 8FB8C 800A137C 1400B18F */  lw         $s1, 0x14($sp)
    /* 8FB90 800A1380 1000B08F */  lw         $s0, 0x10($sp)
    /* 8FB94 800A1384 0800E003 */  jr         $ra
    /* 8FB98 800A1388 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_800A12C4
