/* Handwritten function */
nonmatching func_80020C48, 0x468

glabel func_80020C48
    /* F458 80020C48 0D80063C */  lui        $a2, %hi(D_800C8864)
    /* F45C 80020C4C 6488C68C */  lw         $a2, %lo(D_800C8864)($a2)
    /* F460 80020C50 A8FFBD27 */  addiu      $sp, $sp, -0x58
    /* F464 80020C54 5000BEAF */  sw         $fp, 0x50($sp)
    /* F468 80020C58 4C00B7AF */  sw         $s7, 0x4C($sp)
    /* F46C 80020C5C 4800B6AF */  sw         $s6, 0x48($sp)
    /* F470 80020C60 4400B5AF */  sw         $s5, 0x44($sp)
    /* F474 80020C64 4000B4AF */  sw         $s4, 0x40($sp)
    /* F478 80020C68 3C00B3AF */  sw         $s3, 0x3C($sp)
    /* F47C 80020C6C 3800B2AF */  sw         $s2, 0x38($sp)
    /* F480 80020C70 3400B1AF */  sw         $s1, 0x34($sp)
    /* F484 80020C74 3000B0AF */  sw         $s0, 0x30($sp)
    /* F488 80020C78 F800D68C */  lw         $s6, 0xF8($a2)
    /* F48C 80020C7C 00000000 */  nop
    /* F490 80020C80 0000B6AF */  sw         $s6, 0x0($sp)
    /* F494 80020C84 FC00D68C */  lw         $s6, 0xFC($a2)
    /* F498 80020C88 00000000 */  nop
    /* F49C 80020C8C 0400B6AF */  sw         $s6, 0x4($sp)
    /* F4A0 80020C90 0001D68C */  lw         $s6, 0x100($a2)
    /* F4A4 80020C94 00000000 */  nop
    /* F4A8 80020C98 0800B6AF */  sw         $s6, 0x8($sp)
    /* F4AC 80020C9C 0000B68F */  lw         $s6, 0x0($sp)
    /* F4B0 80020CA0 00000000 */  nop
    /* F4B4 80020CA4 43B11600 */  sra        $s6, $s6, 5
    /* F4B8 80020CA8 0000B6AF */  sw         $s6, 0x0($sp)
    /* F4BC 80020CAC 0400B68F */  lw         $s6, 0x4($sp)
    /* F4C0 80020CB0 00000000 */  nop
    /* F4C4 80020CB4 43B11600 */  sra        $s6, $s6, 5
    /* F4C8 80020CB8 0400B6AF */  sw         $s6, 0x4($sp)
    /* F4CC 80020CBC 0800B68F */  lw         $s6, 0x8($sp)
    /* F4D0 80020CC0 6000C224 */  addiu      $v0, $a2, 0x60
    /* F4D4 80020CC4 5800A4AF */  sw         $a0, 0x58($sp)
    /* F4D8 80020CC8 43B11600 */  sra        $s6, $s6, 5
    /* F4DC 80020CCC 0800B6AF */  sw         $s6, 0x8($sp)
    /* F4E0 80020CD0 0000438C */  lw         $v1, 0x0($v0)
    /* F4E4 80020CD4 0400448C */  lw         $a0, 0x4($v0)
    /* F4E8 80020CD8 0000C348 */  ctc2       $v1, $0 /* handwritten instruction */
    /* F4EC 80020CDC 0008C448 */  ctc2       $a0, $1 /* handwritten instruction */
    /* F4F0 80020CE0 0800438C */  lw         $v1, 0x8($v0)
    /* F4F4 80020CE4 0C00448C */  lw         $a0, 0xC($v0)
    /* F4F8 80020CE8 0010C348 */  ctc2       $v1, $2 /* handwritten instruction */
    /* F4FC 80020CEC 1000438C */  lw         $v1, 0x10($v0)
    /* F500 80020CF0 0018C448 */  ctc2       $a0, $3 /* handwritten instruction */
    /* F504 80020CF4 0020C348 */  ctc2       $v1, $4 /* handwritten instruction */
    /* F508 80020CF8 21B00000 */  addu       $s6, $zero, $zero
    /* F50C 80020CFC 0028D648 */  ctc2       $s6, $5 /* handwritten instruction */
    /* F510 80020D00 0030D648 */  ctc2       $s6, $6 /* handwritten instruction */
    /* F514 80020D04 0038D648 */  ctc2       $s6, $7 /* handwritten instruction */
    /* F518 80020D08 3C01C28C */  lw         $v0, 0x13C($a2)
    /* F51C 80020D0C 00000000 */  nop
    /* F520 80020D10 1C00438C */  lw         $v1, 0x1C($v0)
    /* F524 80020D14 1400448C */  lw         $a0, 0x14($v0)
    /* F528 80020D18 001C0300 */  sll        $v1, $v1, 16
    /* F52C 80020D1C C0320400 */  sll        $a2, $a0, 11
    /* F530 80020D20 00130400 */  sll        $v0, $a0, 12
    /* F534 80020D24 21104600 */  addu       $v0, $v0, $a2
    /* F538 80020D28 1A006200 */  div        $zero, $v1, $v0
    /* F53C 80020D2C 12100000 */  mflo       $v0
    /* F540 80020D30 40230400 */  sll        $a0, $a0, 13
    /* F544 80020D34 00000000 */  nop
    /* F548 80020D38 1A006400 */  div        $zero, $v1, $a0
    /* F54C 80020D3C 12180000 */  mflo       $v1
    /* F550 80020D40 00E8C248 */  ctc2       $v0, $29 /* handwritten instruction */
    /* F554 80020D44 00F0C348 */  ctc2       $v1, $30 /* handwritten instruction */
    /* F558 80020D48 202E193C */  lui        $t9, (0x2E202020 >> 16)
    /* F55C 80020D4C 0D80033C */  lui        $v1, %hi(D_800CC0E8)
    /* F560 80020D50 5800B68F */  lw         $s6, 0x58($sp)
    /* F564 80020D54 0D80043C */  lui        $a0, %hi(D_800CBDC4)
    /* F568 80020D58 C4BD848C */  lw         $a0, %lo(D_800CBDC4)($a0)
    /* F56C 80020D5C E8C0628C */  lw         $v0, %lo(D_800CC0E8)($v1)
    /* F570 80020D60 C412D126 */  addiu      $s1, $s6, 0x12C4
    /* F574 80020D64 0D80163C */  lui        $s6, %hi(D_800CBDC0)
    /* F578 80020D68 C0BDD68E */  lw         $s6, %lo(D_800CBDC0)($s6)
    /* F57C 80020D6C C800A524 */  addiu      $a1, $a1, 0xC8
    /* F580 80020D70 2400A5AF */  sw         $a1, 0x24($sp)
    /* F584 80020D74 2000B1AF */  sw         $s1, 0x20($sp)
    /* F588 80020D78 38FFD626 */  addiu      $s6, $s6, -0xC8
    /* F58C 80020D7C 1000B6AF */  sw         $s6, 0x10($sp)
    /* F590 80020D80 0400848C */  lw         $a0, 0x4($a0)
    /* F594 80020D84 20203937 */  ori        $t9, $t9, (0x2E202020 & 0xFFFF)
    /* F598 80020D88 0C00A4AF */  sw         $a0, 0xC($sp)
    /* F59C 80020D8C 0000568C */  lw         $s6, 0x0($v0)
    /* F5A0 80020D90 21800000 */  addu       $s0, $zero, $zero
    /* F5A4 80020D94 1400B6AF */  sw         $s6, 0x14($sp)
    /* F5A8 80020D98 08005694 */  lhu        $s6, 0x8($v0)
    /* F5AC 80020D9C C8001224 */  addiu      $s2, $zero, 0xC8
    /* F5B0 80020DA0 1800B6AF */  sw         $s6, 0x18($sp)
    /* F5B4 80020DA4 0A005694 */  lhu        $s6, 0xA($v0)
    /* F5B8 80020DA8 4000033C */  lui        $v1, (0x400000 >> 16)
    /* F5BC 80020DAC 1C00B6AF */  sw         $s6, 0x1C($sp)
    /* F5C0 80020DB0 0400448C */  lw         $a0, 0x4($v0)
    /* F5C4 80020DB4 0D80063C */  lui        $a2, %hi(D_800C8C70)
    /* F5C8 80020DB8 708CC68C */  lw         $a2, %lo(D_800C8C70)($a2)
    /* F5CC 80020DBC 25F08300 */  or         $fp, $a0, $v1
  .L80020DC0:
    /* F5D0 80020DC0 9F004012 */  beqz       $s2, .L80021040
    /* F5D4 80020DC4 14003626 */   addiu     $s6, $s1, 0x14
    /* F5D8 80020DC8 2800B6AF */  sw         $s6, 0x28($sp)
    /* F5DC 80020DCC 12003826 */  addiu      $t8, $s1, 0x12
    /* F5E0 80020DD0 FFFFA524 */  addiu      $a1, $a1, -0x1
  .L80020DD4:
    /* F5E4 80020DD4 2800B68F */  lw         $s6, 0x28($sp)
    /* F5E8 80020DD8 E8FF1827 */  addiu      $t8, $t8, -0x18
    /* F5EC 80020DDC E8FFD626 */  addiu      $s6, $s6, -0x18
    /* F5F0 80020DE0 2800B6AF */  sw         $s6, 0x28($sp)
    /* F5F4 80020DE4 0000A280 */  lb         $v0, 0x0($a1)
    /* F5F8 80020DE8 00000000 */  nop
    /* F5FC 80020DEC 90004010 */  beqz       $v0, .L80021030
    /* F600 80020DF0 E8FF3126 */   addiu     $s1, $s1, -0x18
    /* F604 80020DF4 04000A87 */  lh         $t2, 0x4($t8)
    /* F608 80020DF8 00831624 */  addiu      $s6, $zero, -0x7D00
    /* F60C 80020DFC 8C005611 */  beq        $t2, $s6, .L80021030
    /* F610 80020E00 C0100A00 */   sll       $v0, $t2, 3
    /* F614 80020E04 21400000 */  addu       $t0, $zero, $zero
    /* F618 80020E08 00831524 */  addiu      $s5, $zero, -0x7D00
    /* F61C 80020E0C 003E173C */  lui        $s7, (0x3E000000 >> 16)
    /* F620 80020E10 FEFF0B87 */  lh         $t3, -0x2($t8)
    /* F624 80020E14 2800B68F */  lw         $s6, 0x28($sp)
    /* F628 80020E18 00000D87 */  lh         $t5, 0x0($t8)
    /* F62C 80020E1C 0000CC86 */  lh         $t4, 0x0($s6)
    /* F630 80020E20 0000B68F */  lw         $s6, 0x0($sp)
    /* F634 80020E24 C0590B00 */  sll        $t3, $t3, 7
    /* F638 80020E28 23587601 */  subu       $t3, $t3, $s6
    /* F63C 80020E2C 0400B68F */  lw         $s6, 0x4($sp)
    /* F640 80020E30 C0690D00 */  sll        $t5, $t5, 7
    /* F644 80020E34 2368B601 */  subu       $t5, $t5, $s6
    /* F648 80020E38 0800B68F */  lw         $s6, 0x8($sp)
    /* F64C 80020E3C C0610C00 */  sll        $t4, $t4, 7
    /* F650 80020E40 23609601 */  subu       $t4, $t4, $s6
    /* F654 80020E44 5800B68F */  lw         $s6, 0x58($sp)
    /* F658 80020E48 23104A00 */  subu       $v0, $v0, $t2
    /* F65C 80020E4C 0000C38E */  lw         $v1, 0x0($s6)
    /* F660 80020E50 C0100200 */  sll        $v0, $v0, 3
    /* F664 80020E54 21386200 */  addu       $a3, $v1, $v0
    /* F668 80020E58 0600E384 */  lh         $v1, 0x6($a3)
    /* F66C 80020E5C 1600E984 */  lh         $t1, 0x16($a3)
    /* F670 80020E60 0E00E284 */  lh         $v0, 0xE($a3)
    /* F674 80020E64 21586301 */  addu       $t3, $t3, $v1
    /* F678 80020E68 2168A201 */  addu       $t5, $t5, $v0
    /* F67C 80020E6C 21608901 */  addu       $t4, $t4, $t1
    /* F680 80020E70 FFFF6331 */  andi       $v1, $t3, 0xFFFF
    /* F684 80020E74 00240D00 */  sll        $a0, $t5, 16
    /* F688 80020E78 25786400 */  or         $t7, $v1, $a0
    /* F68C 80020E7C 1E00E380 */  lb         $v1, 0x1E($a3)
    /* F690 80020E80 1F00E980 */  lb         $t1, 0x1F($a3)
    /* F694 80020E84 21186B00 */  addu       $v1, $v1, $t3
    /* F698 80020E88 21482C01 */  addu       $t1, $t1, $t4
    /* F69C 80020E8C FFFF6230 */  andi       $v0, $v1, 0xFFFF
    /* F6A0 80020E90 25704400 */  or         $t6, $v0, $a0
  .L80020E94:
    /* F6A4 80020E94 00008F48 */  mtc2       $t7, $0 /* handwritten instruction */
    /* F6A8 80020E98 00088C48 */  mtc2       $t4, $1 /* handwritten instruction */
    /* F6AC 80020E9C 00108E48 */  mtc2       $t6, $2 /* handwritten instruction */
    /* F6B0 80020EA0 00188948 */  mtc2       $t1, $3 /* handwritten instruction */
    /* F6B4 80020EA4 00208E48 */  mtc2       $t6, $4 /* handwritten instruction */
    /* F6B8 80020EA8 00288948 */  mtc2       $t1, $5 /* handwritten instruction */
    /* F6BC 80020EAC 2600EA84 */  lh         $t2, 0x26($a3)
    /* F6C0 80020EB0 00000000 */  nop
    /* F6C4 80020EB4 3000284A */  rtpt
    /* F6C8 80020EB8 C0100A00 */  sll        $v0, $t2, 3
    /* F6CC 80020EBC 23104A00 */  subu       $v0, $v0, $t2
    /* F6D0 80020EC0 C0100200 */  sll        $v0, $v0, 3
    /* F6D4 80020EC4 10005511 */  beq        $t2, $s5, .L80020F08
    /* F6D8 80020EC8 2138E200 */   addu      $a3, $a3, $v0
    /* F6DC 80020ECC 0600E384 */  lh         $v1, 0x6($a3)
    /* F6E0 80020ED0 1600E984 */  lh         $t1, 0x16($a3)
    /* F6E4 80020ED4 0E00E284 */  lh         $v0, 0xE($a3)
    /* F6E8 80020ED8 21586301 */  addu       $t3, $t3, $v1
    /* F6EC 80020EDC 2168A201 */  addu       $t5, $t5, $v0
    /* F6F0 80020EE0 21608901 */  addu       $t4, $t4, $t1
    /* F6F4 80020EE4 FFFF6331 */  andi       $v1, $t3, 0xFFFF
    /* F6F8 80020EE8 00240D00 */  sll        $a0, $t5, 16
    /* F6FC 80020EEC 25786400 */  or         $t7, $v1, $a0
    /* F700 80020EF0 1E00E380 */  lb         $v1, 0x1E($a3)
    /* F704 80020EF4 1F00E980 */  lb         $t1, 0x1F($a3)
    /* F708 80020EF8 21186B00 */  addu       $v1, $v1, $t3
    /* F70C 80020EFC 21482C01 */  addu       $t1, $t1, $t4
    /* F710 80020F00 FFFF6230 */  andi       $v0, $v1, 0xFFFF
    /* F714 80020F04 25704400 */  or         $t6, $v0, $a0
  .L80020F08:
    /* F718 80020F08 00F84248 */  cfc2       $v0, $31 /* handwritten instruction */
    /* F71C 80020F0C 00000000 */  nop
    /* F720 80020F10 03004010 */  beqz       $v0, .L80020F20
    /* F724 80020F14 00000000 */   nop
    /* F728 80020F18 0A840008 */  j          .L80021028
    /* F72C 80020F1C 21400000 */   addu      $t0, $zero, $zero
  .L80020F20:
    /* F730 80020F20 3F000011 */  beqz       $t0, .L80021020
    /* F734 80020F24 01000824 */   addiu     $t0, $zero, 0x1
    /* F738 80020F28 2D00584B */  avsz3
    /* F73C 80020F2C 0C00B68F */  lw         $s6, 0xC($sp)
    /* F740 80020F30 16005515 */  bne        $t2, $s5, .L80020F8C
    /* F744 80020F34 FBFFC226 */   addiu     $v0, $s6, -0x5
    /* F748 80020F38 000C163C */  lui        $s6, (0xC000000 >> 16)
    /* F74C 80020F3C 0400D7AC */  sw         $s7, 0x4($a2)
    /* F750 80020F40 1000D7AC */  sw         $s7, 0x10($a2)
    /* F754 80020F44 1C00D9AC */  sw         $t9, 0x1C($a2)
    /* F758 80020F48 2800D9AC */  sw         $t9, 0x28($a2)
    /* F75C 80020F4C 0000D6AC */  sw         $s6, 0x0($a2)
    /* F760 80020F50 1400B68F */  lw         $s6, 0x14($sp)
    /* F764 80020F54 1800DEAC */  sw         $fp, 0x18($a2)
    /* F768 80020F58 0C00D6AC */  sw         $s6, 0xC($a2)
    /* F76C 80020F5C 1800B68F */  lw         $s6, 0x18($sp)
    /* F770 80020F60 00000000 */  nop
    /* F774 80020F64 2400D6AC */  sw         $s6, 0x24($a2)
    /* F778 80020F68 1C00B68F */  lw         $s6, 0x1C($sp)
    /* F77C 80020F6C 00000000 */  nop
    /* F780 80020F70 3000D6AC */  sw         $s6, 0x30($a2)
    /* F784 80020F74 0800CCE8 */  swc2       $12, 0x8($a2)
    /* F788 80020F78 1400CDE8 */  swc2       $13, 0x14($a2)
    /* F78C 80020F7C 34000824 */  addiu      $t0, $zero, 0x34
    /* F790 80020F80 2000D3AC */  sw         $s3, 0x20($a2)
    /* F794 80020F84 F4830008 */  j          .L80020FD0
    /* F798 80020F88 2C00D4AC */   sw        $s4, 0x2C($a2)
  .L80020F8C:
    /* F79C 80020F8C 0009163C */  lui        $s6, (0x9000000 >> 16)
    /* F7A0 80020F90 0000D6AC */  sw         $s6, 0x0($a2)
    /* F7A4 80020F94 0400D9AC */  sw         $t9, 0x4($a2)
    /* F7A8 80020F98 1400B68F */  lw         $s6, 0x14($sp)
    /* F7AC 80020F9C 1400DEAC */  sw         $fp, 0x14($a2)
    /* F7B0 80020FA0 0C00D6AC */  sw         $s6, 0xC($a2)
    /* F7B4 80020FA4 1800B68F */  lw         $s6, 0x18($sp)
    /* F7B8 80020FA8 00000000 */  nop
    /* F7BC 80020FAC 1C00D6AC */  sw         $s6, 0x1C($a2)
    /* F7C0 80020FB0 1C00B68F */  lw         $s6, 0x1C($sp)
    /* F7C4 80020FB4 00000000 */  nop
    /* F7C8 80020FB8 2400D6AC */  sw         $s6, 0x24($a2)
    /* F7CC 80020FBC 0800CCE8 */  swc2       $12, 0x8($a2)
    /* F7D0 80020FC0 1000CDE8 */  swc2       $13, 0x10($a2)
    /* F7D4 80020FC4 28000824 */  addiu      $t0, $zero, 0x28
    /* F7D8 80020FC8 1800D3AC */  sw         $s3, 0x18($a2)
    /* F7DC 80020FCC 2000D4AC */  sw         $s4, 0x20($a2)
  .L80020FD0:
    /* F7E0 80020FD0 00380348 */  mfc2       $v1, $7 /* handwritten instruction */
    /* F7E4 80020FD4 00000000 */  nop
    /* F7E8 80020FD8 2A106200 */  slt        $v0, $v1, $v0
    /* F7EC 80020FDC 04004014 */  bnez       $v0, .L80020FF0
    /* F7F0 80020FE0 00000000 */   nop
    /* F7F4 80020FE4 0C00B68F */  lw         $s6, 0xC($sp)
    /* F7F8 80020FE8 00000000 */  nop
    /* F7FC 80020FEC FAFFC326 */  addiu      $v1, $s6, -0x6
  .L80020FF0:
    /* F800 80020FF0 1000B68F */  lw         $s6, 0x10($sp)
    /* F804 80020FF4 80100300 */  sll        $v0, $v1, 2
    /* F808 80020FF8 2110C202 */  addu       $v0, $s6, $v0
    /* F80C 80020FFC 02004488 */  lwl        $a0, 0x2($v0)
    /* F810 80021000 001A0600 */  sll        $v1, $a2, 8
    /* F814 80021004 0200C4A8 */  swl        $a0, 0x2($a2)
    /* F818 80021008 020043A8 */  swl        $v1, 0x2($v0)
    /* F81C 8002100C 01001026 */  addiu      $s0, $s0, 0x1
    /* F820 80021010 C900022A */  slti       $v0, $s0, 0xC9
    /* F824 80021014 17004010 */  beqz       $v0, .L80021074
    /* F828 80021018 2130C800 */   addu      $a2, $a2, $t0
    /* F82C 8002101C 01000824 */  addiu      $t0, $zero, 0x1
  .L80021020:
    /* F830 80021020 00601348 */  mfc2       $s3, $12 /* handwritten instruction */
    /* F834 80021024 00681448 */  mfc2       $s4, $13 /* handwritten instruction */
  .L80021028:
    /* F838 80021028 9AFF5515 */  bne        $t2, $s5, .L80020E94
    /* F83C 8002102C 00000000 */   nop
  .L80021030:
    /* F840 80021030 FFFF5226 */  addiu      $s2, $s2, -0x1
    /* F844 80021034 67FF4016 */  bnez       $s2, .L80020DD4
    /* F848 80021038 FFFFA524 */   addiu     $a1, $a1, -0x1
    /* F84C 8002103C 0100A524 */  addiu      $a1, $a1, 0x1
  .L80021040:
    /* F850 80021040 5800B68F */  lw         $s6, 0x58($sp)
    /* F854 80021044 00000000 */  nop
    /* F858 80021048 0400C226 */  addiu      $v0, $s6, 0x4
    /* F85C 8002104C 0A002216 */  bne        $s1, $v0, .L80021078
    /* F860 80021050 00000000 */   nop
    /* F864 80021054 CA12C386 */  lh         $v1, 0x12CA($s6)
    /* F868 80021058 00000000 */  nop
    /* F86C 8002105C 06006010 */  beqz       $v1, .L80021078
    /* F870 80021060 C8000224 */   addiu     $v0, $zero, 0xC8
    /* F874 80021064 2000B18F */  lw         $s1, 0x20($sp)
    /* F878 80021068 2400A58F */  lw         $a1, 0x24($sp)
    /* F87C 8002106C 70830008 */  j          .L80020DC0
    /* F880 80021070 23904300 */   subu      $s2, $v0, $v1
  .L80021074:
    /* F884 80021074 5800B68F */  lw         $s6, 0x58($sp)
  .L80021078:
    /* F888 80021078 5000BE8F */  lw         $fp, 0x50($sp)
    /* F88C 8002107C 4C00B78F */  lw         $s7, 0x4C($sp)
    /* F890 80021080 4400B58F */  lw         $s5, 0x44($sp)
    /* F894 80021084 4000B48F */  lw         $s4, 0x40($sp)
    /* F898 80021088 3C00B38F */  lw         $s3, 0x3C($sp)
    /* F89C 8002108C 3800B28F */  lw         $s2, 0x38($sp)
    /* F8A0 80021090 3400B18F */  lw         $s1, 0x34($sp)
    /* F8A4 80021094 CC12D0AE */  sw         $s0, 0x12CC($s6)
    /* F8A8 80021098 4800B68F */  lw         $s6, 0x48($sp)
    /* F8AC 8002109C 3000B08F */  lw         $s0, 0x30($sp)
    /* F8B0 800210A0 0D80013C */  lui        $at, %hi(D_800C8C70)
    /* F8B4 800210A4 708C26AC */  sw         $a2, %lo(D_800C8C70)($at)
    /* F8B8 800210A8 0800E003 */  jr         $ra
    /* F8BC 800210AC 5800BD27 */   addiu     $sp, $sp, 0x58
endlabel func_80020C48
