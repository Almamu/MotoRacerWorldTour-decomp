nonmatching atoi, 0x12C

glabel atoi
    /* A4740 800B5F30 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* A4744 800B5F34 1000B0AF */  sw         $s0, 0x10($sp)
    /* A4748 800B5F38 21808000 */  addu       $s0, $a0, $zero
    /* A474C 800B5F3C 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* A4750 800B5F40 01001324 */  addiu      $s3, $zero, 0x1
    /* A4754 800B5F44 1400B1AF */  sw         $s1, 0x14($sp)
    /* A4758 800B5F48 0A001124 */  addiu      $s1, $zero, 0xA
    /* A475C 800B5F4C 1800B2AF */  sw         $s2, 0x18($sp)
    /* A4760 800B5F50 21900000 */  addu       $s2, $zero, $zero
    /* A4764 800B5F54 2000BFAF */  sw         $ra, 0x20($sp)
    /* A4768 800B5F58 39000012 */  beqz       $s0, .L800B6040
    /* A476C 800B5F5C 21100000 */   addu      $v0, $zero, $zero
  .L800B5F60:
    /* A4770 800B5F60 00000292 */  lbu        $v0, 0x0($s0)
    /* A4774 800B5F64 0C80013C */  lui        $at, %hi(D_800C4631)
    /* A4778 800B5F68 21082200 */  addu       $at, $at, $v0
    /* A477C 800B5F6C 31462290 */  lbu        $v0, %lo(D_800C4631)($at)
    /* A4780 800B5F70 00000000 */  nop
    /* A4784 800B5F74 08004230 */  andi       $v0, $v0, 0x8
    /* A4788 800B5F78 F9FF4014 */  bnez       $v0, .L800B5F60
    /* A478C 800B5F7C 01001026 */   addiu     $s0, $s0, 0x1
    /* A4790 800B5F80 FFFF1026 */  addiu      $s0, $s0, -0x1
    /* A4794 800B5F84 00000382 */  lb         $v1, 0x0($s0)
    /* A4798 800B5F88 2D000224 */  addiu      $v0, $zero, 0x2D
    /* A479C 800B5F8C 09006214 */  bne        $v1, $v0, .L800B5FB4
    /* A47A0 800B5F90 30000224 */   addiu     $v0, $zero, 0x30
    /* A47A4 800B5F94 2D000324 */  addiu      $v1, $zero, 0x2D
  .L800B5F98:
    /* A47A8 800B5F98 01001026 */  addiu      $s0, $s0, 0x1
    /* A47AC 800B5F9C 00000282 */  lb         $v0, 0x0($s0)
    /* A47B0 800B5FA0 00000000 */  nop
    /* A47B4 800B5FA4 FCFF4310 */  beq        $v0, $v1, .L800B5F98
    /* A47B8 800B5FA8 23981300 */   negu      $s3, $s3
    /* A47BC 800B5FAC 00000382 */  lb         $v1, 0x0($s0)
    /* A47C0 800B5FB0 30000224 */  addiu      $v0, $zero, 0x30
  .L800B5FB4:
    /* A47C4 800B5FB4 16006214 */  bne        $v1, $v0, .L800B6010
    /* A47C8 800B5FB8 58000224 */   addiu     $v0, $zero, 0x58
    /* A47CC 800B5FBC 01001026 */  addiu      $s0, $s0, 0x1
    /* A47D0 800B5FC0 00000382 */  lb         $v1, 0x0($s0)
    /* A47D4 800B5FC4 00000000 */  nop
    /* A47D8 800B5FC8 0C006210 */  beq        $v1, $v0, .L800B5FFC
    /* A47DC 800B5FCC 59006228 */   slti      $v0, $v1, 0x59
    /* A47E0 800B5FD0 05004010 */  beqz       $v0, .L800B5FE8
    /* A47E4 800B5FD4 42000224 */   addiu     $v0, $zero, 0x42
    /* A47E8 800B5FD8 0B006210 */  beq        $v1, $v0, .L800B6008
    /* A47EC 800B5FDC 08001124 */   addiu     $s1, $zero, 0x8
    /* A47F0 800B5FE0 04D80208 */  j          .L800B6010
    /* A47F4 800B5FE4 00000000 */   nop
  .L800B5FE8:
    /* A47F8 800B5FE8 62000224 */  addiu      $v0, $zero, 0x62
    /* A47FC 800B5FEC 06006210 */  beq        $v1, $v0, .L800B6008
    /* A4800 800B5FF0 78000224 */   addiu     $v0, $zero, 0x78
    /* A4804 800B5FF4 06006214 */  bne        $v1, $v0, .L800B6010
    /* A4808 800B5FF8 08001124 */   addiu     $s1, $zero, 0x8
  .L800B5FFC:
    /* A480C 800B5FFC 01001026 */  addiu      $s0, $s0, 0x1
    /* A4810 800B6000 04D80208 */  j          .L800B6010
    /* A4814 800B6004 10001124 */   addiu     $s1, $zero, 0x10
  .L800B6008:
    /* A4818 800B6008 01001026 */  addiu      $s0, $s0, 0x1
    /* A481C 800B600C 02001124 */  addiu      $s1, $zero, 0x2
  .L800B6010:
    /* A4820 800B6010 00000482 */  lb         $a0, 0x0($s0)
    /* A4824 800B6014 7AD9020C */  jal        todigit
    /* A4828 800B6018 01001026 */   addiu     $s0, $s0, 0x1
    /* A482C 800B601C 21184000 */  addu       $v1, $v0, $zero
    /* A4830 800B6020 2B107100 */  sltu       $v0, $v1, $s1
    /* A4834 800B6024 04004010 */  beqz       $v0, .L800B6038
    /* A4838 800B6028 18005102 */   mult      $s2, $s1
    /* A483C 800B602C 12900000 */  mflo       $s2
    /* A4840 800B6030 04D80208 */  j          .L800B6010
    /* A4844 800B6034 21904302 */   addu      $s2, $s2, $v1
  .L800B6038:
    /* A4848 800B6038 18005302 */  mult       $s2, $s3
    /* A484C 800B603C 12100000 */  mflo       $v0
  .L800B6040:
    /* A4850 800B6040 2000BF8F */  lw         $ra, 0x20($sp)
    /* A4854 800B6044 1C00B38F */  lw         $s3, 0x1C($sp)
    /* A4858 800B6048 1800B28F */  lw         $s2, 0x18($sp)
    /* A485C 800B604C 1400B18F */  lw         $s1, 0x14($sp)
    /* A4860 800B6050 1000B08F */  lw         $s0, 0x10($sp)
    /* A4864 800B6054 0800E003 */  jr         $ra
    /* A4868 800B6058 2800BD27 */   addiu     $sp, $sp, 0x28
endlabel atoi
