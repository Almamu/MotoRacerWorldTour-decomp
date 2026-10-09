nonmatching func_800B143C, 0x14C

glabel func_800B143C
    /* 9FC4C 800B143C E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 9FC50 800B1440 1000B0AF */  sw         $s0, 0x10($sp)
    /* 9FC54 800B1444 21808000 */  addu       $s0, $a0, $zero
    /* 9FC58 800B1448 1400BFAF */  sw         $ra, 0x14($sp)
    /* 9FC5C 800B144C 46000392 */  lbu        $v1, 0x46($s0)
    /* 9FC60 800B1450 03000224 */  addiu      $v0, $zero, 0x3
    /* 9FC64 800B1454 1C006210 */  beq        $v1, $v0, .L800B14C8
    /* 9FC68 800B1458 04006228 */   slti      $v0, $v1, 0x4
    /* 9FC6C 800B145C 05004010 */  beqz       $v0, .L800B1474
    /* 9FC70 800B1460 02000224 */   addiu     $v0, $zero, 0x2
    /* 9FC74 800B1464 08006210 */  beq        $v1, $v0, .L800B1488
    /* 9FC78 800B1468 01000224 */   addiu     $v0, $zero, 0x1
    /* 9FC7C 800B146C 5EC50208 */  j          .L800B1578
    /* 9FC80 800B1470 00000000 */   nop
  .L800B1474:
    /* 9FC84 800B1474 04000224 */  addiu      $v0, $zero, 0x4
    /* 9FC88 800B1478 1C006210 */  beq        $v1, $v0, .L800B14EC
    /* 9FC8C 800B147C 01000224 */   addiu     $v0, $zero, 0x1
    /* 9FC90 800B1480 5EC50208 */  j          .L800B1578
    /* 9FC94 800B1484 00000000 */   nop
  .L800B1488:
    /* 9FC98 800B1488 3C00028E */  lw         $v0, 0x3C($s0)
    /* 9FC9C 800B148C 3C00038E */  lw         $v1, 0x3C($s0)
    /* 9FCA0 800B1490 03004290 */  lbu        $v0, 0x3($v0)
    /* 9FCA4 800B1494 00000000 */  nop
    /* 9FCA8 800B1498 E30002A2 */  sb         $v0, 0xE3($s0)
    /* 9FCAC 800B149C 04006290 */  lbu        $v0, 0x4($v1)
    /* 9FCB0 800B14A0 3C00038E */  lw         $v1, 0x3C($s0)
    /* 9FCB4 800B14A4 E60000A6 */  sh         $zero, 0xE6($s0)
    /* 9FCB8 800B14A8 E40002A2 */  sb         $v0, 0xE4($s0)
    /* 9FCBC 800B14AC 05006290 */  lbu        $v0, 0x5($v1)
    /* 9FCC0 800B14B0 3C00038E */  lw         $v1, 0x3C($s0)
    /* 9FCC4 800B14B4 E90002A2 */  sb         $v0, 0xE9($s0)
    /* 9FCC8 800B14B8 06006290 */  lbu        $v0, 0x6($v1)
    /* 9FCCC 800B14BC EC0000AE */  sw         $zero, 0xEC($s0)
    /* 9FCD0 800B14C0 5DC50208 */  j          .L800B1574
    /* 9FCD4 800B14C4 EA0002A2 */   sb        $v0, 0xEA($s0)
  .L800B14C8:
    /* 9FCD8 800B14C8 3C00028E */  lw         $v0, 0x3C($s0)
    /* 9FCDC 800B14CC 00000000 */  nop
    /* 9FCE0 800B14D0 04004390 */  lbu        $v1, 0x4($v0)
    /* 9FCE4 800B14D4 05004290 */  lbu        $v0, 0x5($v0)
    /* 9FCE8 800B14D8 470000A2 */  sb         $zero, 0x47($s0)
    /* 9FCEC 800B14DC 001A0300 */  sll        $v1, $v1, 8
    /* 9FCF0 800B14E0 21104300 */  addu       $v0, $v0, $v1
    /* 9FCF4 800B14E4 5DC50208 */  j          .L800B1574
    /* 9FCF8 800B14E8 E60002A6 */   sh        $v0, 0xE6($s0)
  .L800B14EC:
    /* 9FCFC 800B14EC EC00048E */  lw         $a0, 0xEC($s0)
    /* 9FD00 800B14F0 47000292 */  lbu        $v0, 0x47($s0)
    /* 9FD04 800B14F4 3C00038E */  lw         $v1, 0x3C($s0)
    /* 9FD08 800B14F8 01004224 */  addiu      $v0, $v0, 0x1
    /* 9FD0C 800B14FC 04006390 */  lbu        $v1, 0x4($v1)
    /* 9FD10 800B1500 08008424 */  addiu      $a0, $a0, 0x8
    /* 9FD14 800B1504 470002A2 */  sb         $v0, 0x47($s0)
    /* 9FD18 800B1508 03006324 */  addiu      $v1, $v1, 0x3
    /* 9FD1C 800B150C FC016330 */  andi       $v1, $v1, 0x1FC
    /* 9FD20 800B1510 21208300 */  addu       $a0, $a0, $v1
    /* 9FD24 800B1514 EA000392 */  lbu        $v1, 0xEA($s0)
    /* 9FD28 800B1518 FF004230 */  andi       $v0, $v0, 0xFF
    /* 9FD2C 800B151C 2B104300 */  sltu       $v0, $v0, $v1
    /* 9FD30 800B1520 03004010 */  beqz       $v0, .L800B1530
    /* 9FD34 800B1524 EC0004AE */   sw        $a0, 0xEC($s0)
  .L800B1528:
    /* 9FD38 800B1528 5EC50208 */  j          .L800B1578
    /* 9FD3C 800B152C 21100000 */   addu      $v0, $zero, $zero
  .L800B1530:
    /* 9FD40 800B1530 62C5020C */  jal        func_800B1588
    /* 9FD44 800B1534 21200002 */   addu      $a0, $s0, $zero
    /* 9FD48 800B1538 81004228 */  slti       $v0, $v0, 0x81
    /* 9FD4C 800B153C 06004014 */  bnez       $v0, .L800B1558
    /* 9FD50 800B1540 21200002 */   addu      $a0, $s0, $zero
    /* 9FD54 800B1544 FE000224 */  addiu      $v0, $zero, 0xFE
    /* 9FD58 800B1548 460002A2 */  sb         $v0, 0x46($s0)
    /* 9FD5C 800B154C 02000224 */  addiu      $v0, $zero, 0x2
    /* 9FD60 800B1550 4AC50208 */  j          .L800B1528
    /* 9FD64 800B1554 490002A2 */   sb        $v0, 0x49($s0)
  .L800B1558:
    /* 9FD68 800B1558 FF000224 */  addiu      $v0, $zero, 0xFF
    /* 9FD6C 800B155C 63000526 */  addiu      $a1, $s0, 0x63
    /* 9FD70 800B1560 70C5020C */  jal        func_800B15C0
    /* 9FD74 800B1564 460002A2 */   sb        $v0, 0x46($s0)
    /* 9FD78 800B1568 02000224 */  addiu      $v0, $zero, 0x2
    /* 9FD7C 800B156C 4AC50208 */  j          .L800B1528
    /* 9FD80 800B1570 460002A2 */   sb        $v0, 0x46($s0)
  .L800B1574:
    /* 9FD84 800B1574 01000224 */  addiu      $v0, $zero, 0x1
  .L800B1578:
    /* 9FD88 800B1578 1400BF8F */  lw         $ra, 0x14($sp)
    /* 9FD8C 800B157C 1000B08F */  lw         $s0, 0x10($sp)
    /* 9FD90 800B1580 0800E003 */  jr         $ra
    /* 9FD94 800B1584 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_800B143C
