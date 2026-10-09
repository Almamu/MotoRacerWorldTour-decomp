nonmatching func_8005FCE8, 0x1C8

glabel func_8005FCE8
    /* 4E4F8 8005FCE8 0D80023C */  lui        $v0, %hi(D_800D5F6C)
    /* 4E4FC 8005FCEC 6C5F428C */  lw         $v0, %lo(D_800D5F6C)($v0)
    /* 4E500 8005FCF0 D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* 4E504 8005FCF4 2400B1AF */  sw         $s1, 0x24($sp)
    /* 4E508 8005FCF8 21888000 */  addu       $s1, $a0, $zero
    /* 4E50C 8005FCFC 2000B0AF */  sw         $s0, 0x20($sp)
    /* 4E510 8005FD00 2180A000 */  addu       $s0, $a1, $zero
    /* 4E514 8005FD04 2800B2AF */  sw         $s2, 0x28($sp)
    /* 4E518 8005FD08 2190C000 */  addu       $s2, $a2, $zero
    /* 4E51C 8005FD0C 1C004010 */  beqz       $v0, .L8005FD80
    /* 4E520 8005FD10 2C00BFAF */   sw        $ra, 0x2C($sp)
    /* 4E524 8005FD14 08002296 */  lhu        $v0, 0x8($s1)
    /* 4E528 8005FD18 00000000 */  nop
    /* 4E52C 8005FD1C 18004010 */  beqz       $v0, .L8005FD80
    /* 4E530 8005FD20 00000000 */   nop
    /* 4E534 8005FD24 3F23010C */  jal        func_80048CFC
    /* 4E538 8005FD28 21200002 */   addu      $a0, $s0, $zero
    /* 4E53C 8005FD2C 6800028E */  lw         $v0, 0x68($s0)
    /* 4E540 8005FD30 21280000 */  addu       $a1, $zero, $zero
    /* 4E544 8005FD34 C0004484 */  lh         $a0, 0xC0($v0)
    /* 4E548 8005FD38 C400438C */  lw         $v1, 0xC4($v0)
    /* 4E54C 8005FD3C 00000000 */  nop
    /* 4E550 8005FD40 09F86000 */  jalr       $v1
    /* 4E554 8005FD44 21200402 */   addu      $a0, $s0, $a0
    /* 4E558 8005FD48 6800028E */  lw         $v0, 0x68($s0)
    /* 4E55C 8005FD4C 21280000 */  addu       $a1, $zero, $zero
    /* 4E560 8005FD50 B8004484 */  lh         $a0, 0xB8($v0)
    /* 4E564 8005FD54 BC00438C */  lw         $v1, 0xBC($v0)
    /* 4E568 8005FD58 00000000 */  nop
    /* 4E56C 8005FD5C 09F86000 */  jalr       $v1
    /* 4E570 8005FD60 21200402 */   addu      $a0, $s0, $a0
    /* 4E574 8005FD64 6800028E */  lw         $v0, 0x68($s0)
    /* 4E578 8005FD68 21280000 */  addu       $a1, $zero, $zero
    /* 4E57C 8005FD6C B0004484 */  lh         $a0, 0xB0($v0)
    /* 4E580 8005FD70 B400438C */  lw         $v1, 0xB4($v0)
    /* 4E584 8005FD74 00000000 */  nop
    /* 4E588 8005FD78 09F86000 */  jalr       $v1
    /* 4E58C 8005FD7C 21200402 */   addu      $a0, $s0, $a0
  .L8005FD80:
    /* 4E590 8005FD80 0000448E */  lw         $a0, 0x0($s2)
    /* 4E594 8005FD84 00000000 */  nop
    /* 4E598 8005FD88 40100400 */  sll        $v0, $a0, 1
    /* 4E59C 8005FD8C 21104400 */  addu       $v0, $v0, $a0
    /* 4E5A0 8005FD90 00190200 */  sll        $v1, $v0, 4
    /* 4E5A4 8005FD94 21104300 */  addu       $v0, $v0, $v1
    /* 4E5A8 8005FD98 00110200 */  sll        $v0, $v0, 4
    /* 4E5AC 8005FD9C F002048E */  lw         $a0, 0x2F0($s0)
    /* 4E5B0 8005FDA0 0403038E */  lw         $v1, 0x304($s0)
    /* 4E5B4 8005FDA4 00000000 */  nop
    /* 4E5B8 8005FDA8 3B006014 */  bnez       $v1, .L8005FE98
    /* 4E5BC 8005FDAC 21808200 */   addu      $s0, $a0, $v0
    /* 4E5C0 8005FDB0 197D010C */  jal        func_8005F464
    /* 4E5C4 8005FDB4 21200002 */   addu      $a0, $s0, $zero
    /* 4E5C8 8005FDB8 04000382 */  lb         $v1, 0x4($s0)
    /* 4E5CC 8005FDBC 00000000 */  nop
    /* 4E5D0 8005FDC0 ACFF6228 */  slti       $v0, $v1, -0x54
    /* 4E5D4 8005FDC4 03004010 */  beqz       $v0, .L8005FDD4
    /* 4E5D8 8005FDC8 21200002 */   addu      $a0, $s0, $zero
    /* 4E5DC 8005FDCC 787F0108 */  j          .L8005FDE0
    /* 4E5E0 8005FDD0 80000524 */   addiu     $a1, $zero, 0x80
  .L8005FDD4:
    /* 4E5E4 8005FDD4 55006228 */  slti       $v0, $v1, 0x55
    /* 4E5E8 8005FDD8 03004014 */  bnez       $v0, .L8005FDE8
    /* 4E5EC 8005FDDC 20000524 */   addiu     $a1, $zero, 0x20
  .L8005FDE0:
    /* 4E5F0 8005FDE0 207D010C */  jal        func_8005F480
    /* 4E5F4 8005FDE4 FF000624 */   addiu     $a2, $zero, 0xFF
  .L8005FDE8:
    /* 4E5F8 8005FDE8 05000382 */  lb         $v1, 0x5($s0)
    /* 4E5FC 8005FDEC 00000000 */  nop
    /* 4E600 8005FDF0 ACFF6228 */  slti       $v0, $v1, -0x54
    /* 4E604 8005FDF4 03004010 */  beqz       $v0, .L8005FE04
    /* 4E608 8005FDF8 21200002 */   addu      $a0, $s0, $zero
    /* 4E60C 8005FDFC 847F0108 */  j          .L8005FE10
    /* 4E610 8005FE00 00100524 */   addiu     $a1, $zero, 0x1000
  .L8005FE04:
    /* 4E614 8005FE04 55006228 */  slti       $v0, $v1, 0x55
    /* 4E618 8005FE08 03004014 */  bnez       $v0, .L8005FE18
    /* 4E61C 8005FE0C 00400524 */   addiu     $a1, $zero, 0x4000
  .L8005FE10:
    /* 4E620 8005FE10 207D010C */  jal        func_8005F480
    /* 4E624 8005FE14 FF000624 */   addiu     $a2, $zero, 0xFF
  .L8005FE18:
    /* 4E628 8005FE18 07000382 */  lb         $v1, 0x7($s0)
    /* 4E62C 8005FE1C 00000000 */  nop
    /* 4E630 8005FE20 ACFF6228 */  slti       $v0, $v1, -0x54
    /* 4E634 8005FE24 03004010 */  beqz       $v0, .L8005FE34
    /* 4E638 8005FE28 21200002 */   addu      $a0, $s0, $zero
    /* 4E63C 8005FE2C 917F0108 */  j          .L8005FE44
    /* 4E640 8005FE30 10000524 */   addiu     $a1, $zero, 0x10
  .L8005FE34:
    /* 4E644 8005FE34 55006228 */  slti       $v0, $v1, 0x55
    /* 4E648 8005FE38 04004014 */  bnez       $v0, .L8005FE4C
    /* 4E64C 8005FE3C 40000524 */   addiu     $a1, $zero, 0x40
    /* 4E650 8005FE40 21200002 */  addu       $a0, $s0, $zero
  .L8005FE44:
    /* 4E654 8005FE44 207D010C */  jal        func_8005F480
    /* 4E658 8005FE48 FF000624 */   addiu     $a2, $zero, 0xFF
  .L8005FE4C:
    /* 4E65C 8005FE4C 21200002 */  addu       $a0, $s0, $zero
    /* 4E660 8005FE50 AE7E010C */  jal        func_8005FAB8
    /* 4E664 8005FE54 9C010526 */   addiu     $a1, $s0, 0x19C
    /* 4E668 8005FE58 21200002 */  addu       $a0, $s0, $zero
    /* 4E66C 8005FE5C 08002296 */  lhu        $v0, 0x8($s1)
    /* 4E670 8005FE60 0E002396 */  lhu        $v1, 0xE($s1)
    /* 4E674 8005FE64 21282002 */  addu       $a1, $s1, $zero
    /* 4E678 8005FE68 1A00A0A7 */  sh         $zero, 0x1A($sp)
    /* 4E67C 8005FE6C 1C00A0A7 */  sh         $zero, 0x1C($sp)
    /* 4E680 8005FE70 1000A0AF */  sw         $zero, 0x10($sp)
    /* 4E684 8005FE74 1800A2A7 */  sh         $v0, 0x18($sp)
    /* 4E688 8005FE78 FFFE4230 */  andi       $v0, $v0, 0xFEFF
    /* 4E68C 8005FE7C 1E00A3A7 */  sh         $v1, 0x1E($sp)
    /* 4E690 8005FE80 FFFE6330 */  andi       $v1, $v1, 0xFEFF
    /* 4E694 8005FE84 1800A2A7 */  sh         $v0, 0x18($sp)
    /* 4E698 8005FE88 AE7E010C */  jal        func_8005FAB8
    /* 4E69C 8005FE8C 1E00A3A7 */   sh        $v1, 0x1E($sp)
    /* 4E6A0 8005FE90 8E7D010C */  jal        func_8005F638
    /* 4E6A4 8005FE94 21200002 */   addu      $a0, $s0, $zero
  .L8005FE98:
    /* 4E6A8 8005FE98 2C00BF8F */  lw         $ra, 0x2C($sp)
    /* 4E6AC 8005FE9C 2800B28F */  lw         $s2, 0x28($sp)
    /* 4E6B0 8005FEA0 2400B18F */  lw         $s1, 0x24($sp)
    /* 4E6B4 8005FEA4 2000B08F */  lw         $s0, 0x20($sp)
    /* 4E6B8 8005FEA8 0800E003 */  jr         $ra
    /* 4E6BC 8005FEAC 3000BD27 */   addiu     $sp, $sp, 0x30
endlabel func_8005FCE8
