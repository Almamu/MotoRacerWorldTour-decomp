nonmatching func_800B12F4, 0x90

glabel func_800B12F4
    /* 9FB04 800B12F4 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 9FB08 800B12F8 0C80033C */  lui        $v1, %hi(D_800C3CE8)
    /* 9FB0C 800B12FC E83C638C */  lw         $v1, %lo(D_800C3CE8)($v1)
    /* 9FB10 800B1300 0C80043C */  lui        $a0, %hi(D_800C3CEC)
    /* 9FB14 800B1304 EC3C848C */  lw         $a0, %lo(D_800C3CEC)($a0)
    /* 9FB18 800B1308 7FFF0224 */  addiu      $v0, $zero, -0x81
    /* 9FB1C 800B130C 1000BFAF */  sw         $ra, 0x10($sp)
    /* 9FB20 800B1310 000062AC */  sw         $v0, 0x0($v1)
    /* 9FB24 800B1314 04008294 */  lhu        $v0, 0x4($a0)
    /* 9FB28 800B1318 00000000 */  nop
    /* 9FB2C 800B131C 80004230 */  andi       $v0, $v0, 0x80
    /* 9FB30 800B1320 0D004010 */  beqz       $v0, .L800B1358
    /* 9FB34 800B1324 00000000 */   nop
  .L800B1328:
    /* 9FB38 800B1328 7FCB020C */  jal        func_800B2DFC
    /* 9FB3C 800B132C 00000000 */   nop
    /* 9FB40 800B1330 10004014 */  bnez       $v0, .L800B1374
    /* 9FB44 800B1334 21100000 */   addu      $v0, $zero, $zero
    /* 9FB48 800B1338 0C80023C */  lui        $v0, %hi(D_800C3CEC)
    /* 9FB4C 800B133C EC3C428C */  lw         $v0, %lo(D_800C3CEC)($v0)
    /* 9FB50 800B1340 00000000 */  nop
    /* 9FB54 800B1344 04004294 */  lhu        $v0, 0x4($v0)
    /* 9FB58 800B1348 00000000 */  nop
    /* 9FB5C 800B134C 80004230 */  andi       $v0, $v0, 0x80
    /* 9FB60 800B1350 F5FF4014 */  bnez       $v0, .L800B1328
    /* 9FB64 800B1354 00000000 */   nop
  .L800B1358:
    /* 9FB68 800B1358 0C80043C */  lui        $a0, %hi(D_800C3CEC)
    /* 9FB6C 800B135C EC3C848C */  lw         $a0, %lo(D_800C3CEC)($a0)
    /* 9FB70 800B1360 00000000 */  nop
    /* 9FB74 800B1364 0A008394 */  lhu        $v1, 0xA($a0)
    /* 9FB78 800B1368 01000224 */  addiu      $v0, $zero, 0x1
    /* 9FB7C 800B136C 10006334 */  ori        $v1, $v1, 0x10
    /* 9FB80 800B1370 0A0083A4 */  sh         $v1, 0xA($a0)
  .L800B1374:
    /* 9FB84 800B1374 1000BF8F */  lw         $ra, 0x10($sp)
    /* 9FB88 800B1378 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 9FB8C 800B137C 0800E003 */  jr         $ra
    /* 9FB90 800B1380 00000000 */   nop
endlabel func_800B12F4
