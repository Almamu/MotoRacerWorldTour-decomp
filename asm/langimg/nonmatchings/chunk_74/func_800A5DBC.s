nonmatching func_800A5DBC, 0x114

glabel func_800A5DBC
    /* 945CC 800A5DBC D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* 945D0 800A5DC0 2000B0AF */  sw         $s0, 0x20($sp)
    /* 945D4 800A5DC4 21808000 */  addu       $s0, $a0, $zero
    /* 945D8 800A5DC8 2120A000 */  addu       $a0, $a1, $zero
    /* 945DC 800A5DCC 1000A527 */  addiu      $a1, $sp, 0x10
    /* 945E0 800A5DD0 2400B1AF */  sw         $s1, 0x24($sp)
    /* 945E4 800A5DD4 2188C000 */  addu       $s1, $a2, $zero
    /* 945E8 800A5DD8 1400A627 */  addiu      $a2, $sp, 0x14
    /* 945EC 800A5DDC 2800BFAF */  sw         $ra, 0x28($sp)
    /* 945F0 800A5DE0 3497020C */  jal        func_800A5CD0
    /* 945F4 800A5DE4 1800A727 */   addiu     $a3, $sp, 0x18
    /* 945F8 800A5DE8 34004010 */  beqz       $v0, .L800A5EBC
    /* 945FC 800A5DEC 21100002 */   addu      $v0, $s0, $zero
    /* 94600 800A5DF0 1000A58F */  lw         $a1, 0x10($sp)
    /* 94604 800A5DF4 00000000 */  nop
    /* 94608 800A5DF8 0400A01C */  bgtz       $a1, .L800A5E0C
    /* 9460C 800A5DFC 21200002 */   addu      $a0, $s0, $zero
    /* 94610 800A5E00 04002232 */  andi       $v0, $s1, 0x4
    /* 94614 800A5E04 0D004014 */  bnez       $v0, .L800A5E3C
    /* 94618 800A5E08 00000000 */   nop
  .L800A5E0C:
    /* 9461C 800A5E0C 02000624 */  addiu      $a2, $zero, 0x2
    /* 94620 800A5E10 0098020C */  jal        func_800A6000
    /* 94624 800A5E14 30000724 */   addiu     $a3, $zero, 0x30
    /* 94628 800A5E18 21804000 */  addu       $s0, $v0, $zero
    /* 9462C 800A5E1C 20000324 */  addiu      $v1, $zero, 0x20
    /* 94630 800A5E20 000003A2 */  sb         $v1, 0x0($s0)
    /* 94634 800A5E24 01001026 */  addiu      $s0, $s0, 0x1
    /* 94638 800A5E28 3A000224 */  addiu      $v0, $zero, 0x3A
    /* 9463C 800A5E2C 000002A2 */  sb         $v0, 0x0($s0)
    /* 94640 800A5E30 01001026 */  addiu      $s0, $s0, 0x1
    /* 94644 800A5E34 000003A2 */  sb         $v1, 0x0($s0)
    /* 94648 800A5E38 01001026 */  addiu      $s0, $s0, 0x1
  .L800A5E3C:
    /* 9464C 800A5E3C 1400A58F */  lw         $a1, 0x14($sp)
    /* 94650 800A5E40 00000000 */  nop
    /* 94654 800A5E44 0400A01C */  bgtz       $a1, .L800A5E58
    /* 94658 800A5E48 21200002 */   addu      $a0, $s0, $zero
    /* 9465C 800A5E4C 02002232 */  andi       $v0, $s1, 0x2
    /* 94660 800A5E50 0D004014 */  bnez       $v0, .L800A5E88
    /* 94664 800A5E54 00000000 */   nop
  .L800A5E58:
    /* 94668 800A5E58 02000624 */  addiu      $a2, $zero, 0x2
    /* 9466C 800A5E5C 0098020C */  jal        func_800A6000
    /* 94670 800A5E60 30000724 */   addiu     $a3, $zero, 0x30
    /* 94674 800A5E64 21804000 */  addu       $s0, $v0, $zero
    /* 94678 800A5E68 20000324 */  addiu      $v1, $zero, 0x20
    /* 9467C 800A5E6C 000003A2 */  sb         $v1, 0x0($s0)
    /* 94680 800A5E70 01001026 */  addiu      $s0, $s0, 0x1
    /* 94684 800A5E74 3A000224 */  addiu      $v0, $zero, 0x3A
    /* 94688 800A5E78 000002A2 */  sb         $v0, 0x0($s0)
    /* 9468C 800A5E7C 01001026 */  addiu      $s0, $s0, 0x1
    /* 94690 800A5E80 000003A2 */  sb         $v1, 0x0($s0)
    /* 94694 800A5E84 01001026 */  addiu      $s0, $s0, 0x1
  .L800A5E88:
    /* 94698 800A5E88 1800A58F */  lw         $a1, 0x18($sp)
    /* 9469C 800A5E8C 00000000 */  nop
    /* 946A0 800A5E90 0500A01C */  bgtz       $a1, .L800A5EA8
    /* 946A4 800A5E94 21200002 */   addu      $a0, $s0, $zero
    /* 946A8 800A5E98 0100223A */  xori       $v0, $s1, 0x1
    /* 946AC 800A5E9C 01004230 */  andi       $v0, $v0, 0x1
    /* 946B0 800A5EA0 06004010 */  beqz       $v0, .L800A5EBC
    /* 946B4 800A5EA4 21100002 */   addu      $v0, $s0, $zero
  .L800A5EA8:
    /* 946B8 800A5EA8 02000624 */  addiu      $a2, $zero, 0x2
    /* 946BC 800A5EAC 0098020C */  jal        func_800A6000
    /* 946C0 800A5EB0 30000724 */   addiu     $a3, $zero, 0x30
    /* 946C4 800A5EB4 21804000 */  addu       $s0, $v0, $zero
    /* 946C8 800A5EB8 21100002 */  addu       $v0, $s0, $zero
  .L800A5EBC:
    /* 946CC 800A5EBC 2800BF8F */  lw         $ra, 0x28($sp)
    /* 946D0 800A5EC0 2400B18F */  lw         $s1, 0x24($sp)
    /* 946D4 800A5EC4 2000B08F */  lw         $s0, 0x20($sp)
    /* 946D8 800A5EC8 0800E003 */  jr         $ra
    /* 946DC 800A5ECC 3000BD27 */   addiu     $sp, $sp, 0x30
endlabel func_800A5DBC
