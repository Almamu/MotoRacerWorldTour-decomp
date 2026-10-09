nonmatching func_800A15A0, 0xAC

glabel func_800A15A0
    /* 8FDB0 800A15A0 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 8FDB4 800A15A4 0D80023C */  lui        $v0, %hi(D_800D4790)
    /* 8FDB8 800A15A8 9047438C */  lw         $v1, %lo(D_800D4790)($v0)
    /* 8FDBC 800A15AC 01000424 */  addiu      $a0, $zero, 0x1
    /* 8FDC0 800A15B0 2000BFAF */  sw         $ra, 0x20($sp)
    /* 8FDC4 800A15B4 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 8FDC8 800A15B8 1800B2AF */  sw         $s2, 0x18($sp)
    /* 8FDCC 800A15BC 1400B1AF */  sw         $s1, 0x14($sp)
    /* 8FDD0 800A15C0 1000B0AF */  sw         $s0, 0x10($sp)
    /* 8FDD4 800A15C4 01006324 */  addiu      $v1, $v1, 0x1
    /* 8FDD8 800A15C8 19006414 */  bne        $v1, $a0, .L800A1630
    /* 8FDDC 800A15CC 904743AC */   sw        $v1, %lo(D_800D4790)($v0)
    /* 8FDE0 800A15D0 0D80023C */  lui        $v0, %hi(D_800D4898)
    /* 8FDE4 800A15D4 98485324 */  addiu      $s3, $v0, %lo(D_800D4898)
    /* 8FDE8 800A15D8 1683020C */  jal        func_800A0C58
    /* 8FDEC 800A15DC 04006426 */   addiu     $a0, $s3, 0x4
    /* 8FDF0 800A15E0 FC0A7026 */  addiu      $s0, $s3, 0xAFC
    /* 8FDF4 800A15E4 11001124 */  addiu      $s1, $zero, 0x11
    /* 8FDF8 800A15E8 FFFF1224 */  addiu      $s2, $zero, -0x1
  .L800A15EC:
    /* 8FDFC 800A15EC 5280020C */  jal        func_800A0148
    /* 8FE00 800A15F0 21200002 */   addu      $a0, $s0, $zero
    /* 8FE04 800A15F4 5280020C */  jal        func_800A0148
    /* 8FE08 800A15F8 4C000426 */   addiu     $a0, $s0, 0x4C
    /* 8FE0C 800A15FC FFFF3126 */  addiu      $s1, $s1, -0x1
    /* 8FE10 800A1600 FAFF3216 */  bne        $s1, $s2, .L800A15EC
    /* 8FE14 800A1604 98001026 */   addiu     $s0, $s0, 0x98
    /* 8FE18 800A1608 B0157126 */  addiu      $s1, $s3, 0x15B0
    /* 8FE1C 800A160C 04001024 */  addiu      $s0, $zero, 0x4
    /* 8FE20 800A1610 FFFF1224 */  addiu      $s2, $zero, -0x1
  .L800A1614:
    /* 8FE24 800A1614 1382020C */  jal        func_800A084C
    /* 8FE28 800A1618 21202002 */   addu      $a0, $s1, $zero
    /* 8FE2C 800A161C FFFF1026 */  addiu      $s0, $s0, -0x1
    /* 8FE30 800A1620 FCFF1216 */  bne        $s0, $s2, .L800A1614
    /* 8FE34 800A1624 08003126 */   addiu     $s1, $s1, 0x8
    /* 8FE38 800A1628 5280020C */  jal        func_800A0148
    /* 8FE3C 800A162C D8156426 */   addiu     $a0, $s3, 0x15D8
  .L800A1630:
    /* 8FE40 800A1630 2000BF8F */  lw         $ra, 0x20($sp)
    /* 8FE44 800A1634 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 8FE48 800A1638 1800B28F */  lw         $s2, 0x18($sp)
    /* 8FE4C 800A163C 1400B18F */  lw         $s1, 0x14($sp)
    /* 8FE50 800A1640 1000B08F */  lw         $s0, 0x10($sp)
    /* 8FE54 800A1644 0800E003 */  jr         $ra
    /* 8FE58 800A1648 2800BD27 */   addiu     $sp, $sp, 0x28
endlabel func_800A15A0
