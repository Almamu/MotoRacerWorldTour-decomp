/* Handwritten function */
nonmatching func_8001FCC8, 0x21C

glabel func_8001FCC8
    /* E4D8 8001FCC8 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* E4DC 8001FCCC 0D80063C */  lui        $a2, %hi(D_800C8864)
    /* E4E0 8001FCD0 6488C68C */  lw         $a2, %lo(D_800C8864)($a2)
    /* E4E4 8001FCD4 64001824 */  addiu      $t8, $zero, 0x64
    /* E4E8 8001FCD8 0C00B3AF */  sw         $s3, 0xC($sp)
    /* E4EC 8001FCDC 21988000 */  addu       $s3, $a0, $zero
    /* E4F0 8001FCE0 1400B5AF */  sw         $s5, 0x14($sp)
    /* E4F4 8001FCE4 1000B4AF */  sw         $s4, 0x10($sp)
    /* E4F8 8001FCE8 0800B2AF */  sw         $s2, 0x8($sp)
    /* E4FC 8001FCEC 0400B1AF */  sw         $s1, 0x4($sp)
    /* E500 8001FCF0 0000B0AF */  sw         $s0, 0x0($sp)
    /* E504 8001FCF4 6000C224 */  addiu      $v0, $a2, 0x60
    /* E508 8001FCF8 0000438C */  lw         $v1, 0x0($v0)
    /* E50C 8001FCFC 0400448C */  lw         $a0, 0x4($v0)
    /* E510 8001FD00 0000C348 */  ctc2       $v1, $0 /* handwritten instruction */
    /* E514 8001FD04 0008C448 */  ctc2       $a0, $1 /* handwritten instruction */
    /* E518 8001FD08 0800438C */  lw         $v1, 0x8($v0)
    /* E51C 8001FD0C 0C00448C */  lw         $a0, 0xC($v0)
    /* E520 8001FD10 0010C348 */  ctc2       $v1, $2 /* handwritten instruction */
    /* E524 8001FD14 1000438C */  lw         $v1, 0x10($v0)
    /* E528 8001FD18 0018C448 */  ctc2       $a0, $3 /* handwritten instruction */
    /* E52C 8001FD1C 0020C348 */  ctc2       $v1, $4 /* handwritten instruction */
    /* E530 8001FD20 3C01C28C */  lw         $v0, 0x13C($a2)
    /* E534 8001FD24 00000000 */  nop
    /* E538 8001FD28 1C00438C */  lw         $v1, 0x1C($v0)
    /* E53C 8001FD2C 1400448C */  lw         $a0, 0x14($v0)
    /* E540 8001FD30 001C0300 */  sll        $v1, $v1, 16
    /* E544 8001FD34 C02A0400 */  sll        $a1, $a0, 11
    /* E548 8001FD38 00130400 */  sll        $v0, $a0, 12
    /* E54C 8001FD3C 21104500 */  addu       $v0, $v0, $a1
    /* E550 8001FD40 1A006200 */  div        $zero, $v1, $v0
    /* E554 8001FD44 12100000 */  mflo       $v0
    /* E558 8001FD48 40230400 */  sll        $a0, $a0, 13
    /* E55C 8001FD4C 00000000 */  nop
    /* E560 8001FD50 1A006400 */  div        $zero, $v1, $a0
    /* E564 8001FD54 12180000 */  mflo       $v1
    /* E568 8001FD58 00E8C248 */  ctc2       $v0, $29 /* handwritten instruction */
    /* E56C 8001FD5C 00F0C348 */  ctc2       $v1, $30 /* handwritten instruction */
    /* E570 8001FD60 FF40103C */  lui        $s0, (0x40FFFFFF >> 16)
    /* E574 8001FD64 FFFF1036 */  ori        $s0, $s0, (0x40FFFFFF & 0xFFFF)
    /* E578 8001FD68 21A80000 */  addu       $s5, $zero, $zero
    /* E57C 8001FD6C 0D80193C */  lui        $t9, %hi(D_800CBDC0)
    /* E580 8001FD70 C0BD398F */  lw         $t9, %lo(D_800CBDC0)($t9)
    /* E584 8001FD74 0D80093C */  lui        $t1, %hi(D_800C8C70)
    /* E588 8001FD78 708C298D */  lw         $t1, %lo(D_800C8C70)($t1)
    /* E58C 8001FD7C 0D80023C */  lui        $v0, %hi(D_800CBDC4)
    /* E590 8001FD80 C4BD428C */  lw         $v0, %lo(D_800CBDC4)($v0)
    /* E594 8001FD84 F800CF8C */  lw         $t7, 0xF8($a2)
    /* E598 8001FD88 FC00CE8C */  lw         $t6, 0xFC($a2)
    /* E59C 8001FD8C 0001CD8C */  lw         $t5, 0x100($a2)
    /* E5A0 8001FD90 38FF3927 */  addiu      $t9, $t9, -0xC8
    /* E5A4 8001FD94 0400518C */  lw         $s1, 0x4($v0)
    /* E5A8 8001FD98 0028D548 */  ctc2       $s5, $5 /* handwritten instruction */
    /* E5AC 8001FD9C 0030D548 */  ctc2       $s5, $6 /* handwritten instruction */
    /* E5B0 8001FDA0 0038D548 */  ctc2       $s5, $7 /* handwritten instruction */
    /* E5B4 8001FDA4 21600000 */  addu       $t4, $zero, $zero
    /* E5B8 8001FDA8 0003143C */  lui        $s4, (0x3000000 >> 16)
    /* E5BC 8001FDAC 9C256B26 */  addiu      $t3, $s3, 0x259C
    /* E5C0 8001FDB0 98256826 */  addiu      $t0, $s3, 0x2598
    /* E5C4 8001FDB4 FBFF3226 */  addiu      $s2, $s1, -0x5
  .L8001FDB8:
    /* E5C8 8001FDB8 16000285 */  lh         $v0, 0x16($t0)
    /* E5CC 8001FDBC 00000000 */  nop
    /* E5D0 8001FDC0 39004010 */  beqz       $v0, .L8001FEA8
    /* E5D4 8001FDC4 21502001 */   addu      $t2, $t1, $zero
    /* E5D8 8001FDC8 F0FF028D */  lw         $v0, -0x10($t0)
    /* E5DC 8001FDCC F4FF048D */  lw         $a0, -0xC($t0)
    /* E5E0 8001FDD0 F8FF068D */  lw         $a2, -0x8($t0)
    /* E5E4 8001FDD4 FCFF038D */  lw         $v1, -0x4($t0)
    /* E5E8 8001FDD8 0000058D */  lw         $a1, 0x0($t0)
    /* E5EC 8001FDDC 0000678D */  lw         $a3, 0x0($t3)
    /* E5F0 8001FDE0 23104F00 */  subu       $v0, $v0, $t7
    /* E5F4 8001FDE4 23208E00 */  subu       $a0, $a0, $t6
    /* E5F8 8001FDE8 2330CD00 */  subu       $a2, $a2, $t5
    /* E5FC 8001FDEC 23186F00 */  subu       $v1, $v1, $t7
    /* E600 8001FDF0 2328AE00 */  subu       $a1, $a1, $t6
    /* E604 8001FDF4 2338ED00 */  subu       $a3, $a3, $t5
    /* E608 8001FDF8 43110200 */  sra        $v0, $v0, 5
    /* E60C 8001FDFC 43210400 */  sra        $a0, $a0, 5
    /* E610 8001FE00 43310600 */  sra        $a2, $a2, 5
    /* E614 8001FE04 43190300 */  sra        $v1, $v1, 5
    /* E618 8001FE08 43290500 */  sra        $a1, $a1, 5
    /* E61C 8001FE0C 43390700 */  sra        $a3, $a3, 5
    /* E620 8001FE10 FFFF4230 */  andi       $v0, $v0, 0xFFFF
    /* E624 8001FE14 00240400 */  sll        $a0, $a0, 16
    /* E628 8001FE18 25104400 */  or         $v0, $v0, $a0
    /* E62C 8001FE1C 00008248 */  mtc2       $v0, $0 /* handwritten instruction */
    /* E630 8001FE20 00088648 */  mtc2       $a2, $1 /* handwritten instruction */
    /* E634 8001FE24 FFFF6330 */  andi       $v1, $v1, 0xFFFF
    /* E638 8001FE28 002C0500 */  sll        $a1, $a1, 16
    /* E63C 8001FE2C 25186500 */  or         $v1, $v1, $a1
    /* E640 8001FE30 00108348 */  mtc2       $v1, $2 /* handwritten instruction */
    /* E644 8001FE34 00188748 */  mtc2       $a3, $3 /* handwritten instruction */
    /* E648 8001FE38 00208348 */  mtc2       $v1, $4 /* handwritten instruction */
    /* E64C 8001FE3C 00288748 */  mtc2       $a3, $5 /* handwritten instruction */
    /* E650 8001FE40 00000000 */  nop
    /* E654 8001FE44 00000000 */  nop
    /* E658 8001FE48 3000284A */  rtpt
    /* E65C 8001FE4C 000034AD */  sw         $s4, 0x0($t1)
    /* E660 8001FE50 040030AD */  sw         $s0, 0x4($t1)
    /* E664 8001FE54 00F84248 */  cfc2       $v0, $31 /* handwritten instruction */
    /* E668 8001FE58 00000000 */  nop
    /* E66C 8001FE5C 12004014 */  bnez       $v0, .L8001FEA8
    /* E670 8001FE60 00000000 */   nop
    /* E674 8001FE64 2D00584B */  avsz3
    /* E678 8001FE68 08004CE9 */  swc2       $12, 0x8($t2)
    /* E67C 8001FE6C 0C004DE9 */  swc2       $13, 0xC($t2)
    /* E680 8001FE70 00380348 */  mfc2       $v1, $7 /* handwritten instruction */
    /* E684 8001FE74 00000000 */  nop
    /* E688 8001FE78 2A107200 */  slt        $v0, $v1, $s2
    /* E68C 8001FE7C 03004014 */  bnez       $v0, .L8001FE8C
    /* E690 8001FE80 80100300 */   sll       $v0, $v1, 2
    /* E694 8001FE84 FAFF2326 */  addiu      $v1, $s1, -0x6
    /* E698 8001FE88 80100300 */  sll        $v0, $v1, 2
  .L8001FE8C:
    /* E69C 8001FE8C 21102203 */  addu       $v0, $t9, $v0
    /* E6A0 8001FE90 02004488 */  lwl        $a0, 0x2($v0)
    /* E6A4 8001FE94 001A0900 */  sll        $v1, $t1, 8
    /* E6A8 8001FE98 020024A9 */  swl        $a0, 0x2($t1)
    /* E6AC 8001FE9C 020043A8 */  swl        $v1, 0x2($v0)
    /* E6B0 8001FEA0 10002925 */  addiu      $t1, $t1, 0x10
    /* E6B4 8001FEA4 01008C25 */  addiu      $t4, $t4, 0x1
  .L8001FEA8:
    /* E6B8 8001FEA8 60000825 */  addiu      $t0, $t0, 0x60
    /* E6BC 8001FEAC FFFF1827 */  addiu      $t8, $t8, -0x1
    /* E6C0 8001FEB0 C1FF0017 */  bnez       $t8, .L8001FDB8
    /* E6C4 8001FEB4 60006B25 */   addiu     $t3, $t3, 0x60
    /* E6C8 8001FEB8 1400B58F */  lw         $s5, 0x14($sp)
    /* E6CC 8001FEBC 1000B48F */  lw         $s4, 0x10($sp)
    /* E6D0 8001FEC0 0E4B6CA6 */  sh         $t4, 0x4B0E($s3)
    /* E6D4 8001FEC4 0C00B38F */  lw         $s3, 0xC($sp)
    /* E6D8 8001FEC8 0800B28F */  lw         $s2, 0x8($sp)
    /* E6DC 8001FECC 0400B18F */  lw         $s1, 0x4($sp)
    /* E6E0 8001FED0 0000B08F */  lw         $s0, 0x0($sp)
    /* E6E4 8001FED4 0D80013C */  lui        $at, %hi(D_800C8C70)
    /* E6E8 8001FED8 708C29AC */  sw         $t1, %lo(D_800C8C70)($at)
    /* E6EC 8001FEDC 0800E003 */  jr         $ra
    /* E6F0 8001FEE0 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_8001FCC8
