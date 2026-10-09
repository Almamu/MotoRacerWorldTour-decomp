nonmatching _padLoadActInfo, 0xD4

glabel _padLoadActInfo
    /* 9FDD0 800B15C0 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 9FDD4 800B15C4 1000B0AF */  sw         $s0, 0x10($sp)
    /* 9FDD8 800B15C8 21808000 */  addu       $s0, $a0, $zero
    /* 9FDDC 800B15CC 1400B1AF */  sw         $s1, 0x14($sp)
    /* 9FDE0 800B15D0 2188A000 */  addu       $s1, $a1, $zero
    /* 9FDE4 800B15D4 0C002012 */  beqz       $s1, .L800B1608
    /* 9FDE8 800B15D8 1800BFAF */   sw        $ra, 0x18($sp)
    /* 9FDEC 800B15DC 0400028E */  lw         $v0, 0x4($s0)
    /* 9FDF0 800B15E0 00000000 */  nop
    /* 9FDF4 800B15E4 26004014 */  bnez       $v0, .L800B1680
    /* 9FDF8 800B15E8 21100000 */   addu      $v0, $zero, $zero
    /* 9FDFC 800B15EC 0C80023C */  lui        $v0, %hi(_padFuncChkEng)
    /* 9FE00 800B15F0 A43C428C */  lw         $v0, %lo(_padFuncChkEng)($v0)
    /* 9FE04 800B15F4 00000000 */  nop
    /* 9FE08 800B15F8 09F84000 */  jalr       $v0
    /* 9FE0C 800B15FC 00000000 */   nop
    /* 9FE10 800B1600 03004010 */  beqz       $v0, .L800B1610
    /* 9FE14 800B1604 01000224 */   addiu     $v0, $zero, 0x1
  .L800B1608:
    /* 9FE18 800B1608 A0C50208 */  j          .L800B1680
    /* 9FE1C 800B160C 21100000 */   addu      $v0, $zero, $zero
  .L800B1610:
    /* 9FE20 800B1610 04000324 */  addiu      $v1, $zero, 0x4
    /* 9FE24 800B1614 03002526 */  addiu      $a1, $s1, 0x3
    /* 9FE28 800B1618 83280500 */  sra        $a1, $a1, 2
    /* 9FE2C 800B161C 490003A2 */  sb         $v1, 0x49($s0)
    /* 9FE30 800B1620 01000324 */  addiu      $v1, $zero, 0x1
    /* 9FE34 800B1624 460003A2 */  sb         $v1, 0x46($s0)
    /* 9FE38 800B1628 0B80033C */  lui        $v1, %hi(func_800B1694)
    /* 9FE3C 800B162C 94166324 */  addiu      $v1, $v1, %lo(func_800B1694)
    /* 9FE40 800B1630 140003AE */  sw         $v1, 0x14($s0)
    /* 9FE44 800B1634 E3000392 */  lbu        $v1, 0xE3($s0)
    /* 9FE48 800B1638 0B80043C */  lui        $a0, %hi(func_800B173C)
    /* 9FE4C 800B163C 3C178424 */  addiu      $a0, $a0, %lo(func_800B173C)
    /* 9FE50 800B1640 180004AE */  sw         $a0, 0x18($s0)
    /* 9FE54 800B1644 E9000492 */  lbu        $a0, 0xE9($s0)
    /* 9FE58 800B1648 80280500 */  sll        $a1, $a1, 2
    /* 9FE5C 800B164C 000005AE */  sw         $a1, 0x0($s0)
    /* 9FE60 800B1650 470000A2 */  sb         $zero, 0x47($s0)
    /* 9FE64 800B1654 01006324 */  addiu      $v1, $v1, 0x1
    /* 9FE68 800B1658 43180300 */  sra        $v1, $v1, 1
    /* 9FE6C 800B165C 80180300 */  sll        $v1, $v1, 2
    /* 9FE70 800B1660 2128A300 */  addu       $a1, $a1, $v1
    /* 9FE74 800B1664 80180400 */  sll        $v1, $a0, 2
    /* 9FE78 800B1668 21186400 */  addu       $v1, $v1, $a0
    /* 9FE7C 800B166C 03006324 */  addiu      $v1, $v1, 0x3
    /* 9FE80 800B1670 FC0F6330 */  andi       $v1, $v1, 0xFFC
    /* 9FE84 800B1674 040005AE */  sw         $a1, 0x4($s0)
    /* 9FE88 800B1678 2128A300 */  addu       $a1, $a1, $v1
    /* 9FE8C 800B167C 080005AE */  sw         $a1, 0x8($s0)
  .L800B1680:
    /* 9FE90 800B1680 1800BF8F */  lw         $ra, 0x18($sp)
    /* 9FE94 800B1684 1400B18F */  lw         $s1, 0x14($sp)
    /* 9FE98 800B1688 1000B08F */  lw         $s0, 0x10($sp)
    /* 9FE9C 800B168C 0800E003 */  jr         $ra
    /* 9FEA0 800B1690 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel _padLoadActInfo
