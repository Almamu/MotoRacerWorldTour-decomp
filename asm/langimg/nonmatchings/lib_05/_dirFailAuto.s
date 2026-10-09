nonmatching _dirFailAuto, 0xDC

glabel _dirFailAuto
    /* A14E0 800B2CD0 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* A14E4 800B2CD4 1000B0AF */  sw         $s0, 0x10($sp)
    /* A14E8 800B2CD8 21808000 */  addu       $s0, $a0, $zero
    /* A14EC 800B2CDC 1400BFAF */  sw         $ra, 0x14($sp)
    /* A14F0 800B2CE0 4C00028E */  lw         $v0, 0x4C($s0)
    /* A14F4 800B2CE4 46000392 */  lbu        $v1, 0x46($s0)
    /* A14F8 800B2CE8 01004224 */  addiu      $v0, $v0, 0x1
    /* A14FC 800B2CEC 1E006010 */  beqz       $v1, .L800B2D68
    /* A1500 800B2CF0 4C0002AE */   sw        $v0, 0x4C($s0)
    /* A1504 800B2CF4 01000224 */  addiu      $v0, $zero, 0x1
    /* A1508 800B2CF8 0B006214 */  bne        $v1, $v0, .L800B2D28
    /* A150C 800B2CFC 00000000 */   nop
    /* A1510 800B2D00 4A000392 */  lbu        $v1, 0x4A($s0)
    /* A1514 800B2D04 00000000 */  nop
    /* A1518 800B2D08 0200622C */  sltiu      $v0, $v1, 0x2
    /* A151C 800B2D0C 0B004014 */  bnez       $v0, .L800B2D3C
    /* A1520 800B2D10 01006224 */   addiu     $v0, $v1, 0x1
    /* A1524 800B2D14 02000224 */  addiu      $v0, $zero, 0x2
    /* A1528 800B2D18 490002A2 */  sb         $v0, 0x49($s0)
    /* A152C 800B2D1C FF000224 */  addiu      $v0, $zero, 0xFF
    /* A1530 800B2D20 67CB0208 */  j          .L800B2D9C
    /* A1534 800B2D24 460002A2 */   sb        $v0, 0x46($s0)
  .L800B2D28:
    /* A1538 800B2D28 4A000392 */  lbu        $v1, 0x4A($s0)
    /* A153C 800B2D2C 00000000 */  nop
    /* A1540 800B2D30 0400622C */  sltiu      $v0, $v1, 0x4
    /* A1544 800B2D34 03004010 */  beqz       $v0, .L800B2D44
    /* A1548 800B2D38 01006224 */   addiu     $v0, $v1, 0x1
  .L800B2D3C:
    /* A154C 800B2D3C 67CB0208 */  j          .L800B2D9C
    /* A1550 800B2D40 4A0002A2 */   sb        $v0, 0x4A($s0)
  .L800B2D44:
    /* A1554 800B2D44 49000292 */  lbu        $v0, 0x49($s0)
    /* A1558 800B2D48 00000000 */  nop
    /* A155C 800B2D4C 06004010 */  beqz       $v0, .L800B2D68
    /* A1560 800B2D50 00000000 */   nop
    /* A1564 800B2D54 0C80023C */  lui        $v0, %hi(D_800C3C8C)
    /* A1568 800B2D58 8C3C428C */  lw         $v0, %lo(D_800C3C8C)($v0)
    /* A156C 800B2D5C 00000000 */  nop
    /* A1570 800B2D60 09F84000 */  jalr       $v0
    /* A1574 800B2D64 21200002 */   addu      $a0, $s0, $zero
  .L800B2D68:
    /* A1578 800B2D68 3C00028E */  lw         $v0, 0x3C($s0)
    /* A157C 800B2D6C 00000000 */  nop
    /* A1580 800B2D70 00004390 */  lbu        $v1, 0x0($v0)
    /* A1584 800B2D74 F3000224 */  addiu      $v0, $zero, 0xF3
    /* A1588 800B2D78 08006210 */  beq        $v1, $v0, .L800B2D9C
    /* A158C 800B2D7C FF000324 */   addiu     $v1, $zero, 0xFF
    /* A1590 800B2D80 3000028E */  lw         $v0, 0x30($s0)
    /* A1594 800B2D84 00000000 */  nop
    /* A1598 800B2D88 000043A0 */  sb         $v1, 0x0($v0)
    /* A159C 800B2D8C 3000028E */  lw         $v0, 0x30($s0)
    /* A15A0 800B2D90 00000000 */  nop
    /* A15A4 800B2D94 010040A0 */  sb         $zero, 0x1($v0)
    /* A15A8 800B2D98 E80000A2 */  sb         $zero, 0xE8($s0)
  .L800B2D9C:
    /* A15AC 800B2D9C 1400BF8F */  lw         $ra, 0x14($sp)
    /* A15B0 800B2DA0 1000B08F */  lw         $s0, 0x10($sp)
    /* A15B4 800B2DA4 0800E003 */  jr         $ra
    /* A15B8 800B2DA8 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel _dirFailAuto
