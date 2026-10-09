nonmatching func_800A1CF8, 0x204

glabel func_800A1CF8
    /* 90508 800A1CF8 B8FFBD27 */  addiu      $sp, $sp, -0x48
    /* 9050C 800A1CFC 3C00B7AF */  sw         $s7, 0x3C($sp)
    /* 90510 800A1D00 21B8C000 */  addu       $s7, $a2, $zero
    /* 90514 800A1D04 2C00B3AF */  sw         $s3, 0x2C($sp)
    /* 90518 800A1D08 2198E000 */  addu       $s3, $a3, $zero
    /* 9051C 800A1D0C 3800B6AF */  sw         $s6, 0x38($sp)
    /* 90520 800A1D10 21B00000 */  addu       $s6, $zero, $zero
    /* 90524 800A1D14 4400BFAF */  sw         $ra, 0x44($sp)
    /* 90528 800A1D18 4000BEAF */  sw         $fp, 0x40($sp)
    /* 9052C 800A1D1C 3400B5AF */  sw         $s5, 0x34($sp)
    /* 90530 800A1D20 3000B4AF */  sw         $s4, 0x30($sp)
    /* 90534 800A1D24 2800B2AF */  sw         $s2, 0x28($sp)
    /* 90538 800A1D28 2400B1AF */  sw         $s1, 0x24($sp)
    /* 9053C 800A1D2C 2000B0AF */  sw         $s0, 0x20($sp)
    /* 90540 800A1D30 0300A888 */  lwl        $t0, 0x3($a1)
    /* 90544 800A1D34 0000A898 */  lwr        $t0, 0x0($a1)
    /* 90548 800A1D38 00000000 */  nop
    /* 9054C 800A1D3C 1B00A8AB */  swl        $t0, 0x1B($sp)
    /* 90550 800A1D40 1800A8BB */  swr        $t0, 0x18($sp)
    /* 90554 800A1D44 F486020C */  jal        func_800A1BD0
    /* 90558 800A1D48 4800A4AF */   sw        $a0, 0x48($sp)
    /* 9055C 800A1D4C B4AA020C */  jal        func_800AAAD0
    /* 90560 800A1D50 21200000 */   addu      $a0, $zero, $zero
    /* 90564 800A1D54 FF07E326 */  addiu      $v1, $s7, 0x7FF
    /* 90568 800A1D58 06006016 */  bnez       $s3, .L800A1D74
    /* 9056C 800A1D5C C2A20300 */   srl       $s4, $v1, 11
    /* 90570 800A1D60 D3D4020C */  jal        func_800B534C
    /* 90574 800A1D64 C0221400 */   sll       $a0, $s4, 11
    /* 90578 800A1D68 21984000 */  addu       $s3, $v0, $zero
    /* 9057C 800A1D6C 52006012 */  beqz       $s3, .L800A1EB8
    /* 90580 800A1D70 01001624 */   addiu     $s6, $zero, 0x1
  .L800A1D74:
    /* 90584 800A1D74 02001524 */  addiu      $s5, $zero, 0x2
  .L800A1D78:
    /* 90588 800A1D78 21888002 */  addu       $s1, $s4, $zero
    /* 9058C 800A1D7C 21906002 */  addu       $s2, $s3, $zero
    /* 90590 800A1D80 80000224 */  addiu      $v0, $zero, 0x80
    /* 90594 800A1D84 1000A2A3 */  sb         $v0, 0x10($sp)
    /* 90598 800A1D88 0E000424 */  addiu      $a0, $zero, 0xE
    /* 9059C 800A1D8C 1000A527 */  addiu      $a1, $sp, 0x10
    /* 905A0 800A1D90 4B9E020C */  jal        func_800A792C
    /* 905A4 800A1D94 21300000 */   addu      $a2, $zero, $zero
    /* 905A8 800A1D98 06000424 */  addiu      $a0, $zero, 0x6
    /* 905AC 800A1D9C 1800A527 */  addiu      $a1, $sp, 0x18
    /* 905B0 800A1DA0 AF9D020C */  jal        func_800A76BC
    /* 905B4 800A1DA4 21300000 */   addu      $a2, $zero, $zero
    /* 905B8 800A1DA8 FFFF3126 */  addiu      $s1, $s1, -0x1
    /* 905BC 800A1DAC FFFF0224 */  addiu      $v0, $zero, -0x1
    /* 905C0 800A1DB0 30002212 */  beq        $s1, $v0, .L800A1E74
    /* 905C4 800A1DB4 09000424 */   addiu     $a0, $zero, 0x9
    /* 905C8 800A1DB8 FFFF1E24 */  addiu      $fp, $zero, -0x1
    /* 905CC 800A1DBC 21200000 */  addu       $a0, $zero, $zero
  .L800A1DC0:
    /* 905D0 800A1DC0 9D9D020C */  jal        func_800A7674
    /* 905D4 800A1DC4 21280000 */   addu      $a1, $zero, $zero
    /* 905D8 800A1DC8 21804000 */  addu       $s0, $v0, $zero
    /* 905DC 800A1DCC 05000824 */  addiu      $t0, $zero, 0x5
    /* 905E0 800A1DD0 08000816 */  bne        $s0, $t0, .L800A1DF4
    /* 905E4 800A1DD4 01000924 */   addiu     $t1, $zero, 0x1
  .L800A1DD8:
    /* 905E8 800A1DD8 2500A012 */  beqz       $s5, .L800A1E70
    /* 905EC 800A1DDC 09000424 */   addiu     $a0, $zero, 0x9
    /* 905F0 800A1DE0 21280000 */  addu       $a1, $zero, $zero
    /* 905F4 800A1DE4 4B9E020C */  jal        func_800A792C
    /* 905F8 800A1DE8 21300000 */   addu      $a2, $zero, $zero
    /* 905FC 800A1DEC 5E870208 */  j          .L800A1D78
    /* 90600 800A1DF0 FFFFB526 */   addiu     $s5, $s5, -0x1
  .L800A1DF4:
    /* 90604 800A1DF4 1B000916 */  bne        $s0, $t1, .L800A1E64
    /* 90608 800A1DF8 21204002 */   addu      $a0, $s2, $zero
    /* 9060C 800A1DFC A69E020C */  jal        func_800A7A98
    /* 90610 800A1E00 00020524 */   addiu     $a1, $zero, 0x200
    /* 90614 800A1E04 F4FF5014 */  bne        $v0, $s0, .L800A1DD8
    /* 90618 800A1E08 02000B24 */   addiu     $t3, $zero, 0x2
    /* 9061C 800A1E0C 4800AA8F */  lw         $t2, 0x48($sp)
    /* 90620 800A1E10 00000000 */  nop
    /* 90624 800A1E14 12004B15 */  bne        $t2, $t3, .L800A1E60
    /* 90628 800A1E18 00000000 */   nop
    /* 9062C 800A1E1C 11005316 */  bne        $s2, $s3, .L800A1E64
    /* 90630 800A1E20 00085226 */   addiu     $s2, $s2, 0x800
    /* 90634 800A1E24 FB86020C */  jal        func_800A1BEC
    /* 90638 800A1E28 21206002 */   addu      $a0, $s3, $zero
    /* 9063C 800A1E2C 0000638E */  lw         $v1, 0x0($s3)
    /* 90640 800A1E30 00000000 */  nop
    /* 90644 800A1E34 18006200 */  mult       $v1, $v0
    /* 90648 800A1E38 12180000 */  mflo       $v1
    /* 9064C 800A1E3C 10007724 */  addiu      $s7, $v1, 0x10
    /* 90650 800A1E40 0F086324 */  addiu      $v1, $v1, 0x80F
    /* 90654 800A1E44 0400C012 */  beqz       $s6, .L800A1E58
    /* 90658 800A1E48 C2A20300 */   srl       $s4, $v1, 11
    /* 9065C 800A1E4C 21206002 */  addu       $a0, $s3, $zero
    /* 90660 800A1E50 CCD5020C */  jal        func_800B5730
    /* 90664 800A1E54 C02A1400 */   sll       $a1, $s4, 11
  .L800A1E58:
    /* 90668 800A1E58 21906002 */  addu       $s2, $s3, $zero
    /* 9066C 800A1E5C FFFF9126 */  addiu      $s1, $s4, -0x1
  .L800A1E60:
    /* 90670 800A1E60 00085226 */  addiu      $s2, $s2, 0x800
  .L800A1E64:
    /* 90674 800A1E64 FFFF3126 */  addiu      $s1, $s1, -0x1
    /* 90678 800A1E68 D5FF3E16 */  bne        $s1, $fp, .L800A1DC0
    /* 9067C 800A1E6C 21200000 */   addu      $a0, $zero, $zero
  .L800A1E70:
    /* 90680 800A1E70 09000424 */  addiu      $a0, $zero, 0x9
  .L800A1E74:
    /* 90684 800A1E74 21280000 */  addu       $a1, $zero, $zero
    /* 90688 800A1E78 4B9E020C */  jal        func_800A792C
    /* 9068C 800A1E7C 21300000 */   addu      $a2, $zero, $zero
    /* 90690 800A1E80 0D80033C */  lui        $v1, %hi(D_800D6000)
    /* 90694 800A1E84 0060628C */  lw         $v0, %lo(D_800D6000)($v1)
    /* 90698 800A1E88 00000000 */  nop
    /* 9069C 800A1E8C 05004010 */  beqz       $v0, .L800A1EA4
    /* 906A0 800A1E90 00000000 */   nop
    /* 906A4 800A1E94 0000428C */  lw         $v0, 0x0($v0)
    /* 906A8 800A1E98 00000000 */  nop
    /* 906AC 800A1E9C 09F84000 */  jalr       $v0
    /* 906B0 800A1EA0 21206002 */   addu      $a0, $s3, $zero
  .L800A1EA4:
    /* 906B4 800A1EA4 0400C012 */  beqz       $s6, .L800A1EB8
    /* 906B8 800A1EA8 21206002 */   addu      $a0, $s3, $zero
    /* 906BC 800A1EAC CCD5020C */  jal        func_800B5730
    /* 906C0 800A1EB0 2128E002 */   addu      $a1, $s7, $zero
    /* 906C4 800A1EB4 21984000 */  addu       $s3, $v0, $zero
  .L800A1EB8:
    /* 906C8 800A1EB8 F886020C */  jal        func_800A1BE0
    /* 906CC 800A1EBC 00000000 */   nop
    /* 906D0 800A1EC0 B4AA020C */  jal        func_800AAAD0
    /* 906D4 800A1EC4 21200000 */   addu      $a0, $zero, $zero
    /* 906D8 800A1EC8 21106002 */  addu       $v0, $s3, $zero
    /* 906DC 800A1ECC 4400BF8F */  lw         $ra, 0x44($sp)
    /* 906E0 800A1ED0 4000BE8F */  lw         $fp, 0x40($sp)
    /* 906E4 800A1ED4 3C00B78F */  lw         $s7, 0x3C($sp)
    /* 906E8 800A1ED8 3800B68F */  lw         $s6, 0x38($sp)
    /* 906EC 800A1EDC 3400B58F */  lw         $s5, 0x34($sp)
    /* 906F0 800A1EE0 3000B48F */  lw         $s4, 0x30($sp)
    /* 906F4 800A1EE4 2C00B38F */  lw         $s3, 0x2C($sp)
    /* 906F8 800A1EE8 2800B28F */  lw         $s2, 0x28($sp)
    /* 906FC 800A1EEC 2400B18F */  lw         $s1, 0x24($sp)
    /* 90700 800A1EF0 2000B08F */  lw         $s0, 0x20($sp)
    /* 90704 800A1EF4 0800E003 */  jr         $ra
    /* 90708 800A1EF8 4800BD27 */   addiu     $sp, $sp, 0x48
endlabel func_800A1CF8
