nonmatching func_800B5E0C, 0x100

glabel func_800B5E0C
    /* A461C 800B5E0C D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* A4620 800B5E10 1800B2AF */  sw         $s2, 0x18($sp)
    /* A4624 800B5E14 21908000 */  addu       $s2, $a0, $zero
    /* A4628 800B5E18 2000B4AF */  sw         $s4, 0x20($sp)
    /* A462C 800B5E1C 21A0A000 */  addu       $s4, $a1, $zero
    /* A4630 800B5E20 2800BFAF */  sw         $ra, 0x28($sp)
    /* A4634 800B5E24 2400B5AF */  sw         $s5, 0x24($sp)
    /* A4638 800B5E28 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* A463C 800B5E2C 1400B1AF */  sw         $s1, 0x14($sp)
    /* A4640 800B5E30 1000B0AF */  sw         $s0, 0x10($sp)
    /* A4644 800B5E34 0000428E */  lw         $v0, 0x0($s2)
    /* A4648 800B5E38 00000000 */  nop
    /* A464C 800B5E3C 03004014 */  bnez       $v0, .L800B5E4C
    /* A4650 800B5E40 21A8C000 */   addu      $s5, $a2, $zero
    /* A4654 800B5E44 01000224 */  addiu      $v0, $zero, 0x1
    /* A4658 800B5E48 000042AE */  sw         $v0, 0x0($s2)
  .L800B5E4C:
    /* A465C 800B5E4C 5401038C */  lw         $v1, 0x154($zero)
    /* A4660 800B5E50 CCCC023C */  lui        $v0, (0xCCCCCCCD >> 16)
    /* A4664 800B5E54 CDCC4234 */  ori        $v0, $v0, (0xCCCCCCCD & 0xFFFF)
    /* A4668 800B5E58 19006200 */  multu      $v1, $v0
    /* A466C 800B5E5C 5001108C */  lw         $s0, 0x150($zero)
    /* A4670 800B5E60 0E80133C */  lui        $s3, %hi(D_800DE720)
    /* A4674 800B5E64 20E7738E */  lw         $s3, %lo(D_800DE720)($s3)
    /* A4678 800B5E68 10380000 */  mfhi       $a3
    /* A467C 800B5E6C 82190700 */  srl        $v1, $a3, 6
    /* A4680 800B5E70 80100300 */  sll        $v0, $v1, 2
    /* A4684 800B5E74 21104300 */  addu       $v0, $v0, $v1
    /* A4688 800B5E78 00110200 */  sll        $v0, $v0, 4
    /* A468C 800B5E7C 21180202 */  addu       $v1, $s0, $v0
    /* A4690 800B5E80 2B100302 */  sltu       $v0, $s0, $v1
    /* A4694 800B5E84 12004010 */  beqz       $v0, .L800B5ED0
    /* A4698 800B5E88 21204002 */   addu      $a0, $s2, $zero
    /* A469C 800B5E8C 21886000 */  addu       $s1, $v1, $zero
  .L800B5E90:
    /* A46A0 800B5E90 0000048E */  lw         $a0, 0x0($s0)
    /* A46A4 800B5E94 00000000 */  nop
    /* A46A8 800B5E98 08008010 */  beqz       $a0, .L800B5EBC
    /* A46AC 800B5E9C 00000000 */   nop
    /* A46B0 800B5EA0 0E80053C */  lui        $a1, %hi(D_800DE728)
    /* A46B4 800B5EA4 FED8020C */  jal        strcmp
    /* A46B8 800B5EA8 28E7A524 */   addiu     $a1, $a1, %lo(D_800DE728)
    /* A46BC 800B5EAC 03004014 */  bnez       $v0, .L800B5EBC
    /* A46C0 800B5EB0 00000000 */   nop
    /* A46C4 800B5EB4 B3D70208 */  j          .L800B5ECC
    /* A46C8 800B5EB8 340013AE */   sw        $s3, 0x34($s0)
  .L800B5EBC:
    /* A46CC 800B5EBC 50001026 */  addiu      $s0, $s0, 0x50
    /* A46D0 800B5EC0 2B101102 */  sltu       $v0, $s0, $s1
    /* A46D4 800B5EC4 F2FF4014 */  bnez       $v0, .L800B5E90
    /* A46D8 800B5EC8 00000000 */   nop
  .L800B5ECC:
    /* A46DC 800B5ECC 21204002 */  addu       $a0, $s2, $zero
  .L800B5ED0:
    /* A46E0 800B5ED0 21288002 */  addu       $a1, $s4, $zero
    /* A46E4 800B5ED4 0E80023C */  lui        $v0, %hi(D_800DE720)
    /* A46E8 800B5ED8 20E7428C */  lw         $v0, %lo(D_800DE720)($v0)
    /* A46EC 800B5EDC 00000000 */  nop
    /* A46F0 800B5EE0 09F84000 */  jalr       $v0
    /* A46F4 800B5EE4 2130A002 */   addu      $a2, $s5, $zero
    /* A46F8 800B5EE8 2800BF8F */  lw         $ra, 0x28($sp)
    /* A46FC 800B5EEC 2400B58F */  lw         $s5, 0x24($sp)
    /* A4700 800B5EF0 2000B48F */  lw         $s4, 0x20($sp)
    /* A4704 800B5EF4 1C00B38F */  lw         $s3, 0x1C($sp)
    /* A4708 800B5EF8 1800B28F */  lw         $s2, 0x18($sp)
    /* A470C 800B5EFC 1400B18F */  lw         $s1, 0x14($sp)
    /* A4710 800B5F00 1000B08F */  lw         $s0, 0x10($sp)
    /* A4714 800B5F04 0800E003 */  jr         $ra
    /* A4718 800B5F08 3000BD27 */   addiu     $sp, $sp, 0x30
endlabel func_800B5E0C
    /* A471C 800B5F0C 00000000 */  nop
