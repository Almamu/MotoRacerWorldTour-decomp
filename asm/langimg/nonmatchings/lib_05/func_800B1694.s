nonmatching func_800B1694, 0xA8

glabel func_800B1694
    /* 9FEA4 800B1694 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 9FEA8 800B1698 1000BFAF */  sw         $ra, 0x10($sp)
    /* 9FEAC 800B169C 46008390 */  lbu        $v1, 0x46($a0)
    /* 9FEB0 800B16A0 03000224 */  addiu      $v0, $zero, 0x3
    /* 9FEB4 800B16A4 11006210 */  beq        $v1, $v0, .L800B16EC
    /* 9FEB8 800B16A8 04006228 */   slti      $v0, $v1, 0x4
    /* 9FEBC 800B16AC 05004010 */  beqz       $v0, .L800B16C4
    /* 9FEC0 800B16B0 02000224 */   addiu     $v0, $zero, 0x2
    /* 9FEC4 800B16B4 08006210 */  beq        $v1, $v0, .L800B16D8
    /* 9FEC8 800B16B8 00000000 */   nop
    /* 9FECC 800B16BC CBC50208 */  j          .L800B172C
    /* 9FED0 800B16C0 00000000 */   nop
  .L800B16C4:
    /* 9FED4 800B16C4 04000224 */  addiu      $v0, $zero, 0x4
    /* 9FED8 800B16C8 0D006210 */  beq        $v1, $v0, .L800B1700
    /* 9FEDC 800B16CC 00000000 */   nop
    /* 9FEE0 800B16D0 CBC50208 */  j          .L800B172C
    /* 9FEE4 800B16D4 00000000 */   nop
  .L800B16D8:
    /* 9FEE8 800B16D8 47008590 */  lbu        $a1, 0x47($a0)
    /* 9FEEC 800B16DC 1FC7020C */  jal        func_800B1C7C
    /* 9FEF0 800B16E0 00000000 */   nop
    /* 9FEF4 800B16E4 CBC50208 */  j          .L800B172C
    /* 9FEF8 800B16E8 00000000 */   nop
  .L800B16EC:
    /* 9FEFC 800B16EC 47008590 */  lbu        $a1, 0x47($a0)
    /* 9FF00 800B16F0 27C7020C */  jal        func_800B1C9C
    /* 9FF04 800B16F4 00000000 */   nop
    /* 9FF08 800B16F8 CBC50208 */  j          .L800B172C
    /* 9FF0C 800B16FC 00000000 */   nop
  .L800B1700:
    /* 9FF10 800B1700 48008290 */  lbu        $v0, 0x48($a0)
    /* 9FF14 800B1704 00000000 */  nop
    /* 9FF18 800B1708 06004014 */  bnez       $v0, .L800B1724
    /* 9FF1C 800B170C 00000000 */   nop
    /* 9FF20 800B1710 47008590 */  lbu        $a1, 0x47($a0)
    /* 9FF24 800B1714 2FC7020C */  jal        func_800B1CBC
    /* 9FF28 800B1718 00000000 */   nop
    /* 9FF2C 800B171C CBC50208 */  j          .L800B172C
    /* 9FF30 800B1720 00000000 */   nop
  .L800B1724:
    /* 9FF34 800B1724 37C7020C */  jal        func_800B1CDC
    /* 9FF38 800B1728 00000000 */   nop
  .L800B172C:
    /* 9FF3C 800B172C 1000BF8F */  lw         $ra, 0x10($sp)
    /* 9FF40 800B1730 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 9FF44 800B1734 0800E003 */  jr         $ra
    /* 9FF48 800B1738 00000000 */   nop
endlabel func_800B1694
