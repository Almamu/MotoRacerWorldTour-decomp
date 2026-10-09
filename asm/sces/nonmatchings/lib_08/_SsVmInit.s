nonmatching _SsVmInit, 0x350

glabel _SsVmInit
    /* 15260 80147D94 90FFBD27 */  addiu      $sp, $sp, -0x70
    /* 15264 80147D98 5400B1AF */  sw         $s1, 0x54($sp)
    /* 15268 80147D9C 21888000 */  addu       $s1, $a0, $zero
    /* 1526C 80147DA0 21200000 */  addu       $a0, $zero, $zero
    /* 15270 80147DA4 6800BFAF */  sw         $ra, 0x68($sp)
    /* 15274 80147DA8 6400B5AF */  sw         $s5, 0x64($sp)
    /* 15278 80147DAC 6000B4AF */  sw         $s4, 0x60($sp)
    /* 1527C 80147DB0 5C00B3AF */  sw         $s3, 0x5C($sp)
    /* 15280 80147DB4 5800B2AF */  sw         $s2, 0x58($sp)
    /* 15284 80147DB8 5120050C */  jal        _spu_setInTransfer
    /* 15288 80147DBC 5000B0AF */   sw        $s0, 0x50($sp)
    /* 1528C 80147DC0 1D80053C */  lui        $a1, %hi(D_801CFC78)
    /* 15290 80147DC4 78FCA524 */  addiu      $a1, $a1, %lo(D_801CFC78)
    /* 15294 80147DC8 1D80013C */  lui        $at, %hi(D_801CFB48)
    /* 15298 80147DCC 48FB20A4 */  sh         $zero, %lo(D_801CFB48)($at)
    /* 1529C 80147DD0 3920050C */  jal        SpuInitMalloc
    /* 152A0 80147DD4 20000424 */   addiu     $a0, $zero, 0x20
    /* 152A4 80147DD8 21800000 */  addu       $s0, $zero, $zero
    /* 152A8 80147DDC 1D80033C */  lui        $v1, %hi(D_801CF8E0)
    /* 152AC 80147DE0 E0F86324 */  addiu      $v1, $v1, %lo(D_801CF8E0)
    /* 152B0 80147DE4 FFFF0232 */  andi       $v0, $s0, 0xFFFF
  .L80147DE8:
    /* 152B4 80147DE8 40100200 */  sll        $v0, $v0, 1
    /* 152B8 80147DEC 21104300 */  addu       $v0, $v0, $v1
    /* 152BC 80147DF0 000040A4 */  sh         $zero, 0x0($v0)
    /* 152C0 80147DF4 01001026 */  addiu      $s0, $s0, 0x1
    /* 152C4 80147DF8 FFFF0232 */  andi       $v0, $s0, 0xFFFF
    /* 152C8 80147DFC C000422C */  sltiu      $v0, $v0, 0xC0
    /* 152CC 80147E00 F9FF4014 */  bnez       $v0, .L80147DE8
    /* 152D0 80147E04 FFFF0232 */   andi      $v0, $s0, 0xFFFF
    /* 152D4 80147E08 21800000 */  addu       $s0, $zero, $zero
    /* 152D8 80147E0C FFFF0232 */  andi       $v0, $s0, 0xFFFF
  .L80147E10:
    /* 152DC 80147E10 1D80013C */  lui        $at, %hi(D_801CF8C0)
    /* 152E0 80147E14 21082200 */  addu       $at, $at, $v0
    /* 152E4 80147E18 C0F820A0 */  sb         $zero, %lo(D_801CF8C0)($at)
    /* 152E8 80147E1C 01001026 */  addiu      $s0, $s0, 0x1
    /* 152EC 80147E20 FFFF0232 */  andi       $v0, $s0, 0xFFFF
    /* 152F0 80147E24 1800422C */  sltiu      $v0, $v0, 0x18
    /* 152F4 80147E28 F9FF4014 */  bnez       $v0, .L80147E10
    /* 152F8 80147E2C FFFF0232 */   andi      $v0, $s0, 0xFFFF
    /* 152FC 80147E30 1D80013C */  lui        $at, %hi(D_801CFC28)
    /* 15300 80147E34 28FC20A4 */  sh         $zero, %lo(D_801CFC28)($at)
    /* 15304 80147E38 21800000 */  addu       $s0, $zero, $zero
    /* 15308 80147E3C FFFF0232 */  andi       $v0, $s0, 0xFFFF
  .L80147E40:
    /* 1530C 80147E40 1D80013C */  lui        $at, %hi(D_801CFBD0)
    /* 15310 80147E44 21082200 */  addu       $at, $at, $v0
    /* 15314 80147E48 D0FB20A0 */  sb         $zero, %lo(D_801CFBD0)($at)
    /* 15318 80147E4C 01001026 */  addiu      $s0, $s0, 0x1
    /* 1531C 80147E50 FFFF0232 */  andi       $v0, $s0, 0xFFFF
    /* 15320 80147E54 1000422C */  sltiu      $v0, $v0, 0x10
    /* 15324 80147E58 F9FF4014 */  bnez       $v0, .L80147E40
    /* 15328 80147E5C FFFF0232 */   andi      $v0, $s0, 0xFFFF
    /* 1532C 80147E60 00161100 */  sll        $v0, $s1, 24
    /* 15330 80147E64 031E0200 */  sra        $v1, $v0, 24
    /* 15334 80147E68 1800622C */  sltiu      $v0, $v1, 0x18
    /* 15338 80147E6C 06004014 */  bnez       $v0, .L80147E88
    /* 1533C 80147E70 0600023C */   lui       $v0, (0x60093 >> 16)
    /* 15340 80147E74 18000224 */  addiu      $v0, $zero, 0x18
    /* 15344 80147E78 1D80013C */  lui        $at, %hi(D_801CFBA4)
    /* 15348 80147E7C A4FB22A0 */  sb         $v0, %lo(D_801CFBA4)($at)
    /* 1534C 80147E80 A41F0508 */  j          .L80147E90
    /* 15350 80147E84 0600023C */   lui       $v0, (0x60093 >> 16)
  .L80147E88:
    /* 15354 80147E88 1D80013C */  lui        $at, %hi(D_801CFBA4)
    /* 15358 80147E8C A4FB23A0 */  sb         $v1, %lo(D_801CFBA4)($at)
  .L80147E90:
    /* 1535C 80147E90 93004234 */  ori        $v0, $v0, (0x60093 & 0xFFFF)
    /* 15360 80147E94 1D80033C */  lui        $v1, %hi(D_801CFBA4)
    /* 15364 80147E98 A4FB6380 */  lb         $v1, %lo(D_801CFBA4)($v1)
    /* 15368 80147E9C 21800000 */  addu       $s0, $zero, $zero
    /* 1536C 80147EA0 1400A2AF */  sw         $v0, 0x14($sp)
    /* 15370 80147EA4 00100224 */  addiu      $v0, $zero, 0x1000
    /* 15374 80147EA8 2400A2A7 */  sh         $v0, 0x24($sp)
    /* 15378 80147EAC 00100224 */  addiu      $v0, $zero, 0x1000
    /* 1537C 80147EB0 2C00A2AF */  sw         $v0, 0x2C($sp)
    /* 15380 80147EB4 FF800234 */  ori        $v0, $zero, 0x80FF
    /* 15384 80147EB8 4A00A2A7 */  sh         $v0, 0x4A($sp)
    /* 15388 80147EBC 00400224 */  addiu      $v0, $zero, 0x4000
    /* 1538C 80147EC0 1800A0A7 */  sh         $zero, 0x18($sp)
    /* 15390 80147EC4 1A00A0A7 */  sh         $zero, 0x1A($sp)
    /* 15394 80147EC8 5E006018 */  blez       $v1, .L80148044
    /* 15398 80147ECC 4C00A2A7 */   sh        $v0, 0x4C($sp)
    /* 1539C 80147ED0 18001524 */  addiu      $s5, $zero, 0x18
    /* 153A0 80147ED4 FF001124 */  addiu      $s1, $zero, 0xFF
    /* 153A4 80147ED8 FFFF1424 */  addiu      $s4, $zero, -0x1
    /* 153A8 80147EDC 40001324 */  addiu      $s3, $zero, 0x40
    /* 153AC 80147EE0 01001224 */  addiu      $s2, $zero, 0x1
    /* 153B0 80147EE4 1000A427 */  addiu      $a0, $sp, 0x10
  .L80147EE8:
    /* 153B4 80147EE8 FFFF0332 */  andi       $v1, $s0, 0xFFFF
    /* 153B8 80147EEC C0100300 */  sll        $v0, $v1, 3
    /* 153BC 80147EF0 23104300 */  subu       $v0, $v0, $v1
    /* 153C0 80147EF4 C0100200 */  sll        $v0, $v0, 3
    /* 153C4 80147EF8 04187200 */  sllv       $v1, $s2, $v1
    /* 153C8 80147EFC 1D80013C */  lui        $at, %hi(D_801CF382)
    /* 153CC 80147F00 21082200 */  addu       $at, $at, $v0
    /* 153D0 80147F04 82F335A4 */  sh         $s5, %lo(D_801CF382)($at)
    /* 153D4 80147F08 1D80013C */  lui        $at, %hi(D_801CF380)
    /* 153D8 80147F0C 21082200 */  addu       $at, $at, $v0
    /* 153DC 80147F10 80F331A4 */  sh         $s1, %lo(D_801CF380)($at)
    /* 153E0 80147F14 1D80013C */  lui        $at, %hi(D_801CF39D)
    /* 153E4 80147F18 21082200 */  addu       $at, $at, $v0
    /* 153E8 80147F1C 9DF320A0 */  sb         $zero, %lo(D_801CF39D)($at)
    /* 153EC 80147F20 1D80013C */  lui        $at, %hi(D_801CF384)
    /* 153F0 80147F24 21082200 */  addu       $at, $at, $v0
    /* 153F4 80147F28 84F320A4 */  sh         $zero, %lo(D_801CF384)($at)
    /* 153F8 80147F2C 1D80013C */  lui        $at, %hi(D_801CF386)
    /* 153FC 80147F30 21082200 */  addu       $at, $at, $v0
    /* 15400 80147F34 86F320A4 */  sh         $zero, %lo(D_801CF386)($at)
    /* 15404 80147F38 1D80013C */  lui        $at, %hi(D_801CF390)
    /* 15408 80147F3C 21082200 */  addu       $at, $at, $v0
    /* 1540C 80147F40 90F334A4 */  sh         $s4, %lo(D_801CF390)($at)
    /* 15410 80147F44 1D80013C */  lui        $at, %hi(D_801CF392)
    /* 15414 80147F48 21082200 */  addu       $at, $at, $v0
    /* 15418 80147F4C 92F320A4 */  sh         $zero, %lo(D_801CF392)($at)
    /* 1541C 80147F50 1D80013C */  lui        $at, %hi(D_801CF394)
    /* 15420 80147F54 21082200 */  addu       $at, $at, $v0
    /* 15424 80147F58 94F320A4 */  sh         $zero, %lo(D_801CF394)($at)
    /* 15428 80147F5C 1D80013C */  lui        $at, %hi(D_801CF396)
    /* 1542C 80147F60 21082200 */  addu       $at, $at, $v0
    /* 15430 80147F64 96F331A4 */  sh         $s1, %lo(D_801CF396)($at)
    /* 15434 80147F68 1D80013C */  lui        $at, %hi(D_801CF388)
    /* 15438 80147F6C 21082200 */  addu       $at, $at, $v0
    /* 1543C 80147F70 88F320A4 */  sh         $zero, %lo(D_801CF388)($at)
    /* 15440 80147F74 1D80013C */  lui        $at, %hi(D_801CF38C)
    /* 15444 80147F78 21082200 */  addu       $at, $at, $v0
    /* 15448 80147F7C 8CF320A4 */  sh         $zero, %lo(D_801CF38C)($at)
    /* 1544C 80147F80 1D80013C */  lui        $at, %hi(D_801CF38A)
    /* 15450 80147F84 21082200 */  addu       $at, $at, $v0
    /* 15454 80147F88 8AF333A0 */  sb         $s3, %lo(D_801CF38A)($at)
    /* 15458 80147F8C 1D80013C */  lui        $at, %hi(D_801CF3B6)
    /* 1545C 80147F90 21082200 */  addu       $at, $at, $v0
    /* 15460 80147F94 B6F320A4 */  sh         $zero, %lo(D_801CF3B6)($at)
    /* 15464 80147F98 1D80013C */  lui        $at, %hi(D_801CF39E)
    /* 15468 80147F9C 21082200 */  addu       $at, $at, $v0
    /* 1546C 80147FA0 9EF320A4 */  sh         $zero, %lo(D_801CF39E)($at)
    /* 15470 80147FA4 1D80013C */  lui        $at, %hi(D_801CF3A0)
    /* 15474 80147FA8 21082200 */  addu       $at, $at, $v0
    /* 15478 80147FAC A0F320A4 */  sh         $zero, %lo(D_801CF3A0)($at)
    /* 1547C 80147FB0 1D80013C */  lui        $at, %hi(D_801CF3A2)
    /* 15480 80147FB4 21082200 */  addu       $at, $at, $v0
    /* 15484 80147FB8 A2F320A4 */  sh         $zero, %lo(D_801CF3A2)($at)
    /* 15488 80147FBC 1D80013C */  lui        $at, %hi(D_801CF3A4)
    /* 1548C 80147FC0 21082200 */  addu       $at, $at, $v0
    /* 15490 80147FC4 A4F320A4 */  sh         $zero, %lo(D_801CF3A4)($at)
    /* 15494 80147FC8 1D80013C */  lui        $at, %hi(D_801CF3AA)
    /* 15498 80147FCC 21082200 */  addu       $at, $at, $v0
    /* 1549C 80147FD0 AAF320A4 */  sh         $zero, %lo(D_801CF3AA)($at)
    /* 154A0 80147FD4 1D80013C */  lui        $at, %hi(D_801CF3AC)
    /* 154A4 80147FD8 21082200 */  addu       $at, $at, $v0
    /* 154A8 80147FDC ACF320A4 */  sh         $zero, %lo(D_801CF3AC)($at)
    /* 154AC 80147FE0 1D80013C */  lui        $at, %hi(D_801CF3AE)
    /* 154B0 80147FE4 21082200 */  addu       $at, $at, $v0
    /* 154B4 80147FE8 AEF320A4 */  sh         $zero, %lo(D_801CF3AE)($at)
    /* 154B8 80147FEC 1D80013C */  lui        $at, %hi(D_801CF3B0)
    /* 154BC 80147FF0 21082200 */  addu       $at, $at, $v0
    /* 154C0 80147FF4 B0F320A4 */  sh         $zero, %lo(D_801CF3B0)($at)
    /* 154C4 80147FF8 1D80013C */  lui        $at, %hi(D_801CF3B2)
    /* 154C8 80147FFC 21082200 */  addu       $at, $at, $v0
    /* 154CC 80148000 B2F320A4 */  sh         $zero, %lo(D_801CF3B2)($at)
    /* 154D0 80148004 1D80013C */  lui        $at, %hi(D_801CF3A6)
    /* 154D4 80148008 21082200 */  addu       $at, $at, $v0
    /* 154D8 8014800C A6F320A4 */  sh         $zero, %lo(D_801CF3A6)($at)
    /* 154DC 80148010 A91D050C */  jal        SpuSetVoiceAttr
    /* 154E0 80148014 1000A3AF */   sw        $v1, 0x10($sp)
    /* 154E4 80148018 1D80013C */  lui        $at, %hi(D_801CFBC8)
    /* 154E8 8014801C C8FB30A4 */  sh         $s0, %lo(D_801CFBC8)($at)
    /* 154EC 80148020 3622050C */  jal        _SsVmKeyOffNow
    /* 154F0 80148024 01000424 */   addiu     $a0, $zero, 0x1
    /* 154F4 80148028 01001026 */  addiu      $s0, $s0, 0x1
    /* 154F8 8014802C 1D80033C */  lui        $v1, %hi(D_801CFBA4)
    /* 154FC 80148030 A4FB6380 */  lb         $v1, %lo(D_801CFBA4)($v1)
    /* 15500 80148034 FFFF0232 */  andi       $v0, $s0, 0xFFFF
    /* 15504 80148038 2A104300 */  slt        $v0, $v0, $v1
    /* 15508 8014803C AAFF4014 */  bnez       $v0, .L80147EE8
    /* 1550C 80148040 1000A427 */   addiu     $a0, $sp, 0x10
  .L80148044:
    /* 15510 80148044 1D80023C */  lui        $v0, %hi(D_801CFAB0)
    /* 15514 80148048 B0FA4224 */  addiu      $v0, $v0, %lo(D_801CFAB0)
    /* 15518 8014804C FF3F0324 */  addiu      $v1, $zero, 0x3FFF
    /* 1551C 80148050 000040AC */  sw         $zero, 0x0($v0)
    /* 15520 80148054 080043A4 */  sh         $v1, 0x8($v0)
    /* 15524 80148058 0A0043A4 */  sh         $v1, 0xA($v0)
    /* 15528 8014805C 040040AC */  sw         $zero, 0x4($v0)
    /* 1552C 80148060 80000224 */  addiu      $v0, $zero, 0x80
    /* 15530 80148064 1D80013C */  lui        $at, %hi(D_801CF370)
    /* 15534 80148068 70F320A4 */  sh         $zero, %lo(D_801CF370)($at)
    /* 15538 8014806C 1D80013C */  lui        $at, %hi(D_801CF372)
    /* 1553C 80148070 72F320A4 */  sh         $zero, %lo(D_801CF372)($at)
    /* 15540 80148074 1D80013C */  lui        $at, %hi(D_801CFAA8)
    /* 15544 80148078 A8FA20A4 */  sh         $zero, %lo(D_801CFAA8)($at)
    /* 15548 8014807C 1D80013C */  lui        $at, %hi(D_801CF374)
    /* 1554C 80148080 74F320A4 */  sh         $zero, %lo(D_801CF374)($at)
    /* 15550 80148084 1D80013C */  lui        $at, %hi(D_801CF376)
    /* 15554 80148088 76F320A4 */  sh         $zero, %lo(D_801CF376)($at)
    /* 15558 8014808C 1D80013C */  lui        $at, %hi(D_801CF378)
    /* 1555C 80148090 78F320A4 */  sh         $zero, %lo(D_801CF378)($at)
    /* 15560 80148094 1D80013C */  lui        $at, %hi(D_801CF37A)
    /* 15564 80148098 7AF320A4 */  sh         $zero, %lo(D_801CF37A)($at)
    /* 15568 8014809C 1D80013C */  lui        $at, %hi(D_801CFBE0)
    /* 1556C 801480A0 E0FB20A0 */  sb         $zero, %lo(D_801CFBE0)($at)
    /* 15570 801480A4 1D80013C */  lui        $at, %hi(D_801CFB90)
    /* 15574 801480A8 90FB20A4 */  sh         $zero, %lo(D_801CFB90)($at)
    /* 15578 801480AC 1D80013C */  lui        $at, %hi(D_801CFBA8)
    /* 1557C 801480B0 A8FB20AC */  sw         $zero, %lo(D_801CFBA8)($at)
    /* 15580 801480B4 1D80013C */  lui        $at, %hi(D_801CFB92)
    /* 15584 801480B8 4D1B050C */  jal        _SsVmFlush
    /* 15588 801480BC 92FB22A4 */   sh        $v0, %lo(D_801CFB92)($at)
    /* 1558C 801480C0 6800BF8F */  lw         $ra, 0x68($sp)
    /* 15590 801480C4 6400B58F */  lw         $s5, 0x64($sp)
    /* 15594 801480C8 6000B48F */  lw         $s4, 0x60($sp)
    /* 15598 801480CC 5C00B38F */  lw         $s3, 0x5C($sp)
    /* 1559C 801480D0 5800B28F */  lw         $s2, 0x58($sp)
    /* 155A0 801480D4 5400B18F */  lw         $s1, 0x54($sp)
    /* 155A4 801480D8 5000B08F */  lw         $s0, 0x50($sp)
    /* 155A8 801480DC 0800E003 */  jr         $ra
    /* 155AC 801480E0 7000BD27 */   addiu     $sp, $sp, 0x70
endlabel _SsVmInit
