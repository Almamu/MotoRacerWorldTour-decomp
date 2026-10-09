nonmatching func_800A5530, 0x2B4

glabel func_800A5530
    /* 93D40 800A5530 B0FFBD27 */  addiu      $sp, $sp, -0x50
    /* 93D44 800A5534 2C00B1AF */  sw         $s1, 0x2C($sp)
    /* 93D48 800A5538 6400B18F */  lw         $s1, 0x64($sp)
    /* 93D4C 800A553C 4800BEAF */  sw         $fp, 0x48($sp)
    /* 93D50 800A5540 21F00000 */  addu       $fp, $zero, $zero
    /* 93D54 800A5544 4400B7AF */  sw         $s7, 0x44($sp)
    /* 93D58 800A5548 21B80000 */  addu       $s7, $zero, $zero
    /* 93D5C 800A554C 5400A5AF */  sw         $a1, 0x54($sp)
    /* 93D60 800A5550 21280000 */  addu       $a1, $zero, $zero
    /* 93D64 800A5554 5800A6AF */  sw         $a2, 0x58($sp)
    /* 93D68 800A5558 21300000 */  addu       $a2, $zero, $zero
    /* 93D6C 800A555C 4C00BFAF */  sw         $ra, 0x4C($sp)
    /* 93D70 800A5560 4000B6AF */  sw         $s6, 0x40($sp)
    /* 93D74 800A5564 3C00B5AF */  sw         $s5, 0x3C($sp)
    /* 93D78 800A5568 3800B4AF */  sw         $s4, 0x38($sp)
    /* 93D7C 800A556C 3400B3AF */  sw         $s3, 0x34($sp)
    /* 93D80 800A5570 3000B2AF */  sw         $s2, 0x30($sp)
    /* 93D84 800A5574 2800B0AF */  sw         $s0, 0x28($sp)
    /* 93D88 800A5578 AB81020C */  jal        func_800A06AC
    /* 93D8C 800A557C 5C00A7AF */   sw        $a3, 0x5C($sp)
    /* 93D90 800A5580 3F004010 */  beqz       $v0, .L800A5680
    /* 93D94 800A5584 1800A2AF */   sw        $v0, 0x18($sp)
    /* 93D98 800A5588 21204000 */  addu       $a0, $v0, $zero
    /* 93D9C 800A558C 0D80053C */  lui        $a1, %hi(D_800C9F38)
    /* 93DA0 800A5590 389FA524 */  addiu      $a1, $a1, %lo(D_800C9F38)
    /* 93DA4 800A5594 32D8020C */  jal        bcmp
    /* 93DA8 800A5598 04000624 */   addiu     $a2, $zero, 0x4
    /* 93DAC 800A559C 38004014 */  bnez       $v0, .L800A5680
    /* 93DB0 800A55A0 00000000 */   nop
    /* 93DB4 800A55A4 1800A98F */  lw         $t1, 0x18($sp)
    /* 93DB8 800A55A8 00000000 */  nop
    /* 93DBC 800A55AC 08003725 */  addiu      $s7, $t1, 0x8
    /* 93DC0 800A55B0 0400298D */  lw         $t1, 0x4($t1)
    /* 93DC4 800A55B4 21300000 */  addu       $a2, $zero, $zero
    /* 93DC8 800A55B8 2128E902 */  addu       $a1, $s7, $t1
    /* 93DCC 800A55BC 1400A9AF */  sw         $t1, 0x14($sp)
    /* 93DD0 800A55C0 0000A88C */  lw         $t0, 0x0($a1)
    /* 93DD4 800A55C4 00000000 */  nop
    /* 93DD8 800A55C8 0B000019 */  blez       $t0, .L800A55F8
    /* 93DDC 800A55CC 0400A524 */   addiu     $a1, $a1, 0x4
    /* 93DE0 800A55D0 21382002 */  addu       $a3, $s1, $zero
  .L800A55D4:
    /* 93DE4 800A55D4 0000A28C */  lw         $v0, 0x0($a1)
    /* 93DE8 800A55D8 0400A524 */  addiu      $a1, $a1, 0x4
    /* 93DEC 800A55DC 0000E48C */  lw         $a0, 0x0($a3)
    /* 93DF0 800A55E0 0800E724 */  addiu      $a3, $a3, 0x8
    /* 93DF4 800A55E4 0100C624 */  addiu      $a2, $a2, 0x1
    /* 93DF8 800A55E8 2A18C800 */  slt        $v1, $a2, $t0
    /* 93DFC 800A55EC 2110E202 */  addu       $v0, $s7, $v0
    /* 93E00 800A55F0 F8FF6014 */  bnez       $v1, .L800A55D4
    /* 93E04 800A55F4 000082AC */   sw        $v0, 0x0($a0)
  .L800A55F8:
    /* 93E08 800A55F8 0A000019 */  blez       $t0, .L800A5624
    /* 93E0C 800A55FC 21300000 */   addu      $a2, $zero, $zero
    /* 93E10 800A5600 04002726 */  addiu      $a3, $s1, 0x4
  .L800A5604:
    /* 93E14 800A5604 0000A48C */  lw         $a0, 0x0($a1)
    /* 93E18 800A5608 0400A524 */  addiu      $a1, $a1, 0x4
    /* 93E1C 800A560C 0000E38C */  lw         $v1, 0x0($a3)
    /* 93E20 800A5610 0800E724 */  addiu      $a3, $a3, 0x8
    /* 93E24 800A5614 0100C624 */  addiu      $a2, $a2, 0x1
    /* 93E28 800A5618 2A10C800 */  slt        $v0, $a2, $t0
    /* 93E2C 800A561C F9FF4014 */  bnez       $v0, .L800A5604
    /* 93E30 800A5620 000064AC */   sw        $a0, 0x0($v1)
  .L800A5624:
    /* 93E34 800A5624 0000B08C */  lw         $s0, 0x0($a1)
    /* 93E38 800A5628 0400A524 */  addiu      $a1, $a1, 0x4
    /* 93E3C 800A562C 0000A98C */  lw         $t1, 0x0($a1)
    /* 93E40 800A5630 0400A524 */  addiu      $a1, $a1, 0x4
    /* 93E44 800A5634 1000A9AF */  sw         $t1, 0x10($sp)
    /* 93E48 800A5638 0000A48C */  lw         $a0, 0x0($a1)
    /* 93E4C 800A563C 0400A524 */  addiu      $a1, $a1, 0x4
    /* 93E50 800A5640 0000A28C */  lw         $v0, 0x0($a1)
    /* 93E54 800A5644 5800A98F */  lw         $t1, 0x58($sp)
    /* 93E58 800A5648 00000000 */  nop
    /* 93E5C 800A564C 0C004914 */  bne        $v0, $t1, .L800A5680
    /* 93E60 800A5650 0400A524 */   addiu     $a1, $a1, 0x4
    /* 93E64 800A5654 2190A000 */  addu       $s2, $a1, $zero
    /* 93E68 800A5658 80101000 */  sll        $v0, $s0, 2
    /* 93E6C 800A565C 21984202 */  addu       $s3, $s2, $v0
    /* 93E70 800A5660 40110400 */  sll        $v0, $a0, 5
    /* 93E74 800A5664 1000A98F */  lw         $t1, 0x10($sp)
    /* 93E78 800A5668 1800BE8F */  lw         $fp, 0x18($sp)
    /* 93E7C 800A566C 80180900 */  sll        $v1, $t1, 2
    /* 93E80 800A5670 21186302 */  addu       $v1, $s3, $v1
    /* 93E84 800A5674 21106200 */  addu       $v0, $v1, $v0
    /* 93E88 800A5678 1C00A3AF */  sw         $v1, 0x1C($sp)
    /* 93E8C 800A567C 2000A2AF */  sw         $v0, 0x20($sp)
  .L800A5680:
    /* 93E90 800A5680 4B00C013 */  beqz       $fp, .L800A57B0
    /* 93E94 800A5684 2120E002 */   addu      $a0, $s7, $zero
    /* 93E98 800A5688 21284002 */  addu       $a1, $s2, $zero
    /* 93E9C 800A568C 3E95020C */  jal        func_800A54F8
    /* 93EA0 800A5690 21300002 */   addu      $a2, $s0, $zero
    /* 93EA4 800A5694 1000A98F */  lw         $t1, 0x10($sp)
    /* 93EA8 800A5698 00000000 */  nop
    /* 93EAC 800A569C 25002019 */  blez       $t1, .L800A5734
    /* 93EB0 800A56A0 21A80000 */   addu      $s5, $zero, $zero
  .L800A56A4:
    /* 93EB4 800A56A4 21900000 */  addu       $s2, $zero, $zero
    /* 93EB8 800A56A8 0000628E */  lw         $v0, 0x0($s3)
    /* 93EBC 800A56AC 6000A98F */  lw         $t1, 0x60($sp)
    /* 93EC0 800A56B0 2110E202 */  addu       $v0, $s7, $v0
    /* 93EC4 800A56B4 0000428C */  lw         $v0, 0x0($v0)
    /* 93EC8 800A56B8 0F002019 */  blez       $t1, .L800A56F8
    /* 93ECC 800A56BC 21B00000 */   addu      $s6, $zero, $zero
    /* 93ED0 800A56C0 40A10200 */  sll        $s4, $v0, 5
    /* 93ED4 800A56C4 5C00B18F */  lw         $s1, 0x5C($sp)
  .L800A56C8:
    /* 93ED8 800A56C8 1C00A98F */  lw         $t1, 0x1C($sp)
    /* 93EDC 800A56CC 21802002 */  addu       $s0, $s1, $zero
    /* 93EE0 800A56D0 21280002 */  addu       $a1, $s0, $zero
    /* 93EE4 800A56D4 FED8020C */  jal        strcmp
    /* 93EE8 800A56D8 21203401 */   addu      $a0, $t1, $s4
    /* 93EEC 800A56DC 0A004010 */  beqz       $v0, .L800A5708
    /* 93EF0 800A56E0 01005226 */   addiu     $s2, $s2, 0x1
    /* 93EF4 800A56E4 6000A98F */  lw         $t1, 0x60($sp)
    /* 93EF8 800A56E8 00000000 */  nop
    /* 93EFC 800A56EC 2A104902 */  slt        $v0, $s2, $t1
    /* 93F00 800A56F0 F5FF4014 */  bnez       $v0, .L800A56C8
    /* 93F04 800A56F4 24001126 */   addiu     $s1, $s0, 0x24
  .L800A56F8:
    /* 93F08 800A56F8 0900C016 */  bnez       $s6, .L800A5720
    /* 93F0C 800A56FC 00000000 */   nop
    /* 93F10 800A5700 CD950208 */  j          .L800A5734
    /* 93F14 800A5704 21F00000 */   addu      $fp, $zero, $zero
  .L800A5708:
    /* 93F18 800A5708 01001624 */  addiu      $s6, $zero, 0x1
    /* 93F1C 800A570C 0000628E */  lw         $v0, 0x0($s3)
    /* 93F20 800A5710 2000238E */  lw         $v1, 0x20($s1)
    /* 93F24 800A5714 2110E202 */  addu       $v0, $s7, $v0
    /* 93F28 800A5718 BE950208 */  j          .L800A56F8
    /* 93F2C 800A571C 000043AC */   sw        $v1, 0x0($v0)
  .L800A5720:
    /* 93F30 800A5720 1000A98F */  lw         $t1, 0x10($sp)
    /* 93F34 800A5724 0100B526 */  addiu      $s5, $s5, 0x1
    /* 93F38 800A5728 2A10A902 */  slt        $v0, $s5, $t1
    /* 93F3C 800A572C DDFF4014 */  bnez       $v0, .L800A56A4
    /* 93F40 800A5730 04007326 */   addiu     $s3, $s3, 0x4
  .L800A5734:
    /* 93F44 800A5734 1F00C013 */  beqz       $fp, .L800A57B4
    /* 93F48 800A5738 2110C003 */   addu      $v0, $fp, $zero
    /* 93F4C 800A573C 5800A98F */  lw         $t1, 0x58($sp)
    /* 93F50 800A5740 00000000 */  nop
    /* 93F54 800A5744 15002019 */  blez       $t1, .L800A579C
    /* 93F58 800A5748 21A80000 */   addu      $s5, $zero, $zero
    /* 93F5C 800A574C FFFF0624 */  addiu      $a2, $zero, -0x1
    /* 93F60 800A5750 5400A58F */  lw         $a1, 0x54($sp)
    /* 93F64 800A5754 2000A48F */  lw         $a0, 0x20($sp)
  .L800A5758:
    /* 93F68 800A5758 00000000 */  nop
    /* 93F6C 800A575C 0000828C */  lw         $v0, 0x0($a0)
    /* 93F70 800A5760 00000000 */  nop
    /* 93F74 800A5764 04004610 */  beq        $v0, $a2, .L800A5778
    /* 93F78 800A5768 2110E202 */   addu      $v0, $s7, $v0
    /* 93F7C 800A576C 0000A38C */  lw         $v1, 0x0($a1)
    /* 93F80 800A5770 E1950208 */  j          .L800A5784
    /* 93F84 800A5774 000062AC */   sw        $v0, 0x0($v1)
  .L800A5778:
    /* 93F88 800A5778 0000A28C */  lw         $v0, 0x0($a1)
    /* 93F8C 800A577C 00000000 */  nop
    /* 93F90 800A5780 000040AC */  sw         $zero, 0x0($v0)
  .L800A5784:
    /* 93F94 800A5784 0400A524 */  addiu      $a1, $a1, 0x4
    /* 93F98 800A5788 5800A98F */  lw         $t1, 0x58($sp)
    /* 93F9C 800A578C 0100B526 */  addiu      $s5, $s5, 0x1
    /* 93FA0 800A5790 2A10A902 */  slt        $v0, $s5, $t1
    /* 93FA4 800A5794 F0FF4014 */  bnez       $v0, .L800A5758
    /* 93FA8 800A5798 04008424 */   addiu     $a0, $a0, 0x4
  .L800A579C:
    /* 93FAC 800A579C 1400A98F */  lw         $t1, 0x14($sp)
    /* 93FB0 800A57A0 1800A48F */  lw         $a0, 0x18($sp)
    /* 93FB4 800A57A4 CCD5020C */  jal        func_800B5730
    /* 93FB8 800A57A8 08002525 */   addiu     $a1, $t1, 0x8
    /* 93FBC 800A57AC 21F04000 */  addu       $fp, $v0, $zero
  .L800A57B0:
    /* 93FC0 800A57B0 2110C003 */  addu       $v0, $fp, $zero
  .L800A57B4:
    /* 93FC4 800A57B4 4C00BF8F */  lw         $ra, 0x4C($sp)
    /* 93FC8 800A57B8 4800BE8F */  lw         $fp, 0x48($sp)
    /* 93FCC 800A57BC 4400B78F */  lw         $s7, 0x44($sp)
    /* 93FD0 800A57C0 4000B68F */  lw         $s6, 0x40($sp)
    /* 93FD4 800A57C4 3C00B58F */  lw         $s5, 0x3C($sp)
    /* 93FD8 800A57C8 3800B48F */  lw         $s4, 0x38($sp)
    /* 93FDC 800A57CC 3400B38F */  lw         $s3, 0x34($sp)
    /* 93FE0 800A57D0 3000B28F */  lw         $s2, 0x30($sp)
    /* 93FE4 800A57D4 2C00B18F */  lw         $s1, 0x2C($sp)
    /* 93FE8 800A57D8 2800B08F */  lw         $s0, 0x28($sp)
    /* 93FEC 800A57DC 0800E003 */  jr         $ra
    /* 93FF0 800A57E0 5000BD27 */   addiu     $sp, $sp, 0x50
endlabel func_800A5530
