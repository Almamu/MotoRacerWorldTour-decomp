nonmatching func_8004FE88, 0x124

glabel func_8004FE88
    /* 3E698 8004FE88 21400000 */  addu       $t0, $zero, $zero
    /* 3E69C 8004FE8C FFFF0E24 */  addiu      $t6, $zero, -0x1
    /* 3E6A0 8004FE90 261E9924 */  addiu      $t9, $a0, 0x1E26
    /* 3E6A4 8004FE94 54009824 */  addiu      $t8, $a0, 0x54
    /* 3E6A8 8004FE98 21508000 */  addu       $t2, $a0, $zero
    /* 3E6AC 8004FE9C 40008D24 */  addiu      $t5, $a0, 0x40
    /* 3E6B0 8004FEA0 2C008C24 */  addiu      $t4, $a0, 0x2C
    /* 3E6B4 8004FEA4 F4008F24 */  addiu      $t7, $a0, 0xF4
    /* 3E6B8 8004FEA8 94018B24 */  addiu      $t3, $a0, 0x194
  .L8004FEAC:
    /* 3E6BC 8004FEAC 21180000 */  addu       $v1, $zero, $zero
    /* 3E6C0 8004FEB0 40490800 */  sll        $t1, $t0, 5
    /* 3E6C4 8004FEB4 21283801 */  addu       $a1, $t1, $t8
    /* 3E6C8 8004FEB8 21102803 */  addu       $v0, $t9, $t0
    /* 3E6CC 8004FEBC 00008EAD */  sw         $t6, 0x0($t4)
    /* 3E6D0 8004FEC0 0000AEAD */  sw         $t6, 0x0($t5)
    /* 3E6D4 8004FEC4 00004EA0 */  sb         $t6, 0x0($v0)
  .L8004FEC8:
    /* 3E6D8 8004FEC8 0000AEAC */  sw         $t6, 0x0($a1)
    /* 3E6DC 8004FECC 01006324 */  addiu      $v1, $v1, 0x1
    /* 3E6E0 8004FED0 08006228 */  slti       $v0, $v1, 0x8
    /* 3E6E4 8004FED4 FCFF4014 */  bnez       $v0, .L8004FEC8
    /* 3E6E8 8004FED8 0400A524 */   addiu     $a1, $a1, 0x4
    /* 3E6EC 8004FEDC 0C80023C */  lui        $v0, %hi(D_800C5E14)
    /* 3E6F0 8004FEE0 145E428C */  lw         $v0, %lo(D_800C5E14)($v0)
    /* 3E6F4 8004FEE4 00000000 */  nop
    /* 3E6F8 8004FEE8 0403438C */  lw         $v1, 0x304($v0)
    /* 3E6FC 8004FEEC 00000000 */  nop
    /* 3E700 8004FEF0 0B006014 */  bnez       $v1, .L8004FF20
    /* 3E704 8004FEF4 21180000 */   addu      $v1, $zero, $zero
    /* 3E708 8004FEF8 FFFF0624 */  addiu      $a2, $zero, -0x1
    /* 3E70C 8004FEFC 21386001 */  addu       $a3, $t3, $zero
    /* 3E710 8004FF00 21282F01 */  addu       $a1, $t1, $t7
  .L8004FF04:
    /* 3E714 8004FF04 0000A6AC */  sw         $a2, 0x0($a1)
    /* 3E718 8004FF08 0400A524 */  addiu      $a1, $a1, 0x4
    /* 3E71C 8004FF0C 01006324 */  addiu      $v1, $v1, 0x1
    /* 3E720 8004FF10 08006228 */  slti       $v0, $v1, 0x8
    /* 3E724 8004FF14 FBFF4014 */  bnez       $v0, .L8004FF04
    /* 3E728 8004FF18 0000E6AC */   sw        $a2, 0x0($a3)
    /* 3E72C 8004FF1C 21180000 */  addu       $v1, $zero, $zero
  .L8004FF20:
    /* 3E730 8004FF20 FFFF0724 */  addiu      $a3, $zero, -0x1
    /* 3E734 8004FF24 AC014625 */  addiu      $a2, $t2, 0x1AC
    /* 3E738 8004FF28 A8014525 */  addiu      $a1, $t2, 0x1A8
  .L8004FF2C:
    /* 3E73C 8004FF2C 0000A7AC */  sw         $a3, 0x0($a1)
    /* 3E740 8004FF30 0000C0AC */  sw         $zero, 0x0($a2)
    /* 3E744 8004FF34 0800C624 */  addiu      $a2, $a2, 0x8
    /* 3E748 8004FF38 01006324 */  addiu      $v1, $v1, 0x1
    /* 3E74C 8004FF3C 08006228 */  slti       $v0, $v1, 0x8
    /* 3E750 8004FF40 FAFF4014 */  bnez       $v0, .L8004FF2C
    /* 3E754 8004FF44 0800A524 */   addiu     $a1, $a1, 0x8
    /* 3E758 8004FF48 40004A25 */  addiu      $t2, $t2, 0x40
    /* 3E75C 8004FF4C 0400AD25 */  addiu      $t5, $t5, 0x4
    /* 3E760 8004FF50 04008C25 */  addiu      $t4, $t4, 0x4
    /* 3E764 8004FF54 01000825 */  addiu      $t0, $t0, 0x1
    /* 3E768 8004FF58 05000229 */  slti       $v0, $t0, 0x5
    /* 3E76C 8004FF5C D3FF4014 */  bnez       $v0, .L8004FEAC
    /* 3E770 8004FF60 04006B25 */   addiu     $t3, $t3, 0x4
    /* 3E774 8004FF64 21400000 */  addu       $t0, $zero, $zero
    /* 3E778 8004FF68 FFFF0624 */  addiu      $a2, $zero, -0x1
    /* 3E77C 8004FF6C 1C1E8524 */  addiu      $a1, $a0, 0x1E1C
    /* 3E780 8004FF70 141E8324 */  addiu      $v1, $a0, 0x1E14
  .L8004FF74:
    /* 3E784 8004FF74 000066AC */  sw         $a2, 0x0($v1)
    /* 3E788 8004FF78 0000A6AC */  sw         $a2, 0x0($a1)
    /* 3E78C 8004FF7C 0400A524 */  addiu      $a1, $a1, 0x4
    /* 3E790 8004FF80 01000825 */  addiu      $t0, $t0, 0x1
    /* 3E794 8004FF84 02000229 */  slti       $v0, $t0, 0x2
    /* 3E798 8004FF88 FAFF4014 */  bnez       $v0, .L8004FF74
    /* 3E79C 8004FF8C 04006324 */   addiu     $v1, $v1, 0x4
    /* 3E7A0 8004FF90 FFFF0224 */  addiu      $v0, $zero, -0x1
    /* 3E7A4 8004FF94 3A1E80A4 */  sh         $zero, 0x1E3A($a0)
    /* 3E7A8 8004FF98 101E80AC */  sw         $zero, 0x1E10($a0)
    /* 3E7AC 8004FF9C 160080A4 */  sh         $zero, 0x16($a0)
    /* 3E7B0 8004FFA0 F41D82AC */  sw         $v0, 0x1DF4($a0)
    /* 3E7B4 8004FFA4 0800E003 */  jr         $ra
    /* 3E7B8 8004FFA8 0C1E80AC */   sw        $zero, 0x1E0C($a0)
endlabel func_8004FE88
