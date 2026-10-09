nonmatching func_800A1654, 0x198

glabel func_800A1654
    /* 8FE64 800A1654 B8FFBD27 */  addiu      $sp, $sp, -0x48
    /* 8FE68 800A1658 0030043C */  lui        $a0, (0x30007F7F >> 16)
    /* 8FE6C 800A165C 7F7F8434 */  ori        $a0, $a0, (0x30007F7F & 0xFFFF)
    /* 8FE70 800A1660 A901053C */  lui        $a1, (0x1A901CC >> 16)
    /* 8FE74 800A1664 CC01A534 */  ori        $a1, $a1, (0x1A901CC & 0xFFFF)
    /* 8FE78 800A1668 21380000 */  addu       $a3, $zero, $zero
    /* 8FE7C 800A166C 0C80023C */  lui        $v0, %hi(D_800BF3A0)
    /* 8FE80 800A1670 3C00B3AF */  sw         $s3, 0x3C($sp)
    /* 8FE84 800A1674 A0F35324 */  addiu      $s3, $v0, %lo(D_800BF3A0)
    /* 8FE88 800A1678 0006033C */  lui        $v1, (0x6000000 >> 16)
    /* 8FE8C 800A167C 3000B0AF */  sw         $s0, 0x30($sp)
    /* 8FE90 800A1680 1000B027 */  addiu      $s0, $sp, 0x10
    /* 8FE94 800A1684 7F000224 */  addiu      $v0, $zero, 0x7F
    /* 8FE98 800A1688 4000BFAF */  sw         $ra, 0x40($sp)
    /* 8FE9C 800A168C 3800B2AF */  sw         $s2, 0x38($sp)
    /* 8FEA0 800A1690 3400B1AF */  sw         $s1, 0x34($sp)
    /* 8FEA4 800A1694 1000A3AF */  sw         $v1, 0x10($sp)
    /* 8FEA8 800A1698 040004AE */  sw         $a0, 0x4($s0)
    /* 8FEAC 800A169C 0C0002AE */  sw         $v0, 0xC($s0)
    /* 8FEB0 800A16A0 140002AE */  sw         $v0, 0x14($s0)
    /* 8FEB4 800A16A4 080005AE */  sw         $a1, 0x8($s0)
    /* 8FEB8 800A16A8 2458838F */  lw         $v1, %gp_rel(D_800C9F14)($gp)
    /* 8FEBC 800A16AC 10000224 */  addiu      $v0, $zero, 0x10
    /* 8FEC0 800A16B0 23884300 */  subu       $s1, $v0, $v1
    /* 8FEC4 800A16B4 FF0FE230 */  andi       $v0, $a3, 0xFFF
  .L800A16B8:
    /* 8FEC8 800A16B8 80280200 */  sll        $a1, $v0, 2
    /* 8FECC 800A16BC 2118B300 */  addu       $v1, $a1, $s3
    /* 8FED0 800A16C0 00006484 */  lh         $a0, 0x0($v1)
    /* 8FED4 800A16C4 00000000 */  nop
    /* 8FED8 800A16C8 18002402 */  mult       $s1, $a0
    /* 8FEDC 800A16CC 12100000 */  mflo       $v0
    /* 8FEE0 800A16D0 02004104 */  bgez       $v0, .L800A16DC
    /* 8FEE4 800A16D4 02006926 */   addiu     $t1, $s3, 0x2
    /* 8FEE8 800A16D8 FF0F4224 */  addiu      $v0, $v0, 0xFFF
  .L800A16DC:
    /* 8FEEC 800A16DC 2118A900 */  addu       $v1, $a1, $t1
    /* 8FEF0 800A16E0 00006484 */  lh         $a0, 0x0($v1)
    /* 8FEF4 800A16E4 00000000 */  nop
    /* 8FEF8 800A16E8 18002402 */  mult       $s1, $a0
    /* 8FEFC 800A16EC 03130200 */  sra        $v0, $v0, 12
    /* 8FF00 800A16F0 CC014224 */  addiu      $v0, $v0, 0x1CC
    /* 8FF04 800A16F4 12300000 */  mflo       $a2
    /* 8FF08 800A16F8 0200C104 */  bgez       $a2, .L800A1704
    /* 8FF0C 800A16FC FFFF4830 */   andi      $t0, $v0, 0xFFFF
    /* 8FF10 800A1700 FF0FC624 */  addiu      $a2, $a2, 0xFFF
  .L800A1704:
    /* 8FF14 800A1704 8000F224 */  addiu      $s2, $a3, 0x80
    /* 8FF18 800A1708 FF0F4232 */  andi       $v0, $s2, 0xFFF
    /* 8FF1C 800A170C 80380200 */  sll        $a3, $v0, 2
    /* 8FF20 800A1710 2118F300 */  addu       $v1, $a3, $s3
    /* 8FF24 800A1714 00006484 */  lh         $a0, 0x0($v1)
    /* 8FF28 800A1718 00000000 */  nop
    /* 8FF2C 800A171C 18002402 */  mult       $s1, $a0
    /* 8FF30 800A1720 03130600 */  sra        $v0, $a2, 12
    /* 8FF34 800A1724 A9014224 */  addiu      $v0, $v0, 0x1A9
    /* 8FF38 800A1728 00140200 */  sll        $v0, $v0, 16
    /* 8FF3C 800A172C 25100201 */  or         $v0, $t0, $v0
    /* 8FF40 800A1730 12280000 */  mflo       $a1
    /* 8FF44 800A1734 0200A104 */  bgez       $a1, .L800A1740
    /* 8FF48 800A1738 100002AE */   sw        $v0, 0x10($s0)
    /* 8FF4C 800A173C FF0FA524 */  addiu      $a1, $a1, 0xFFF
  .L800A1740:
    /* 8FF50 800A1740 2118E900 */  addu       $v1, $a3, $t1
    /* 8FF54 800A1744 00006484 */  lh         $a0, 0x0($v1)
    /* 8FF58 800A1748 00000000 */  nop
    /* 8FF5C 800A174C 18002402 */  mult       $s1, $a0
    /* 8FF60 800A1750 03130500 */  sra        $v0, $a1, 12
    /* 8FF64 800A1754 CC014224 */  addiu      $v0, $v0, 0x1CC
    /* 8FF68 800A1758 12180000 */  mflo       $v1
    /* 8FF6C 800A175C 02006104 */  bgez       $v1, .L800A1768
    /* 8FF70 800A1760 FFFF4430 */   andi      $a0, $v0, 0xFFFF
    /* 8FF74 800A1764 FF0F6324 */  addiu      $v1, $v1, 0xFFF
  .L800A1768:
    /* 8FF78 800A1768 03130300 */  sra        $v0, $v1, 12
    /* 8FF7C 800A176C A9014224 */  addiu      $v0, $v0, 0x1A9
    /* 8FF80 800A1770 00140200 */  sll        $v0, $v0, 16
    /* 8FF84 800A1774 25108200 */  or         $v0, $a0, $v0
    /* 8FF88 800A1778 180002AE */  sw         $v0, 0x18($s0)
    /* 8FF8C 800A177C 9DB0020C */  jal        DrawPrim
    /* 8FF90 800A1780 21200002 */   addu      $a0, $s0, $zero
    /* 8FF94 800A1784 21384002 */  addu       $a3, $s2, $zero
    /* 8FF98 800A1788 0010E228 */  slti       $v0, $a3, 0x1000
    /* 8FF9C 800A178C CAFF4014 */  bnez       $v0, .L800A16B8
    /* 8FFA0 800A1790 FF0FE230 */   andi      $v0, $a3, 0xFFF
    /* 8FFA4 800A1794 2458828F */  lw         $v0, %gp_rel(D_800C9F14)($gp)
    /* 8FFA8 800A1798 2858838F */  lw         $v1, %gp_rel(D_800C9F18)($gp)
    /* 8FFAC 800A179C 00000000 */  nop
    /* 8FFB0 800A17A0 21104300 */  addu       $v0, $v0, $v1
    /* 8FFB4 800A17A4 245882AF */  sw         $v0, %gp_rel(D_800C9F14)($gp)
    /* 8FFB8 800A17A8 06006018 */  blez       $v1, .L800A17C4
    /* 8FFBC 800A17AC 00000000 */   nop
    /* 8FFC0 800A17B0 05004228 */  slti       $v0, $v0, 0x5
    /* 8FFC4 800A17B4 06004014 */  bnez       $v0, .L800A17D0
    /* 8FFC8 800A17B8 FFFF0224 */   addiu     $v0, $zero, -0x1
    /* 8FFCC 800A17BC F3850208 */  j          .L800A17CC
    /* 8FFD0 800A17C0 00000000 */   nop
  .L800A17C4:
    /* 8FFD4 800A17C4 0200401C */  bgtz       $v0, .L800A17D0
    /* 8FFD8 800A17C8 01000224 */   addiu     $v0, $zero, 0x1
  .L800A17CC:
    /* 8FFDC 800A17CC 285882AF */  sw         $v0, %gp_rel(D_800C9F18)($gp)
  .L800A17D0:
    /* 8FFE0 800A17D0 4000BF8F */  lw         $ra, 0x40($sp)
    /* 8FFE4 800A17D4 3C00B38F */  lw         $s3, 0x3C($sp)
    /* 8FFE8 800A17D8 3800B28F */  lw         $s2, 0x38($sp)
    /* 8FFEC 800A17DC 3400B18F */  lw         $s1, 0x34($sp)
    /* 8FFF0 800A17E0 3000B08F */  lw         $s0, 0x30($sp)
    /* 8FFF4 800A17E4 0800E003 */  jr         $ra
    /* 8FFF8 800A17E8 4800BD27 */   addiu     $sp, $sp, 0x48
endlabel func_800A1654
