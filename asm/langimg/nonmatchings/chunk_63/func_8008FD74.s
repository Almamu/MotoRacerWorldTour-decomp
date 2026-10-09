/* Handwritten function */
nonmatching func_8008FD74, 0xD44

glabel func_8008FD74
    /* 7E584 8008FD74 78FFBD27 */  addiu      $sp, $sp, -0x88
    /* 7E588 8008FD78 7000B4AF */  sw         $s4, 0x70($sp)
    /* 7E58C 8008FD7C 21A0A000 */  addu       $s4, $a1, $zero
    /* 7E590 8008FD80 8000BEAF */  sw         $fp, 0x80($sp)
    /* 7E594 8008FD84 21F08000 */  addu       $fp, $a0, $zero
    /* 7E598 8008FD88 8400BFAF */  sw         $ra, 0x84($sp)
    /* 7E59C 8008FD8C 7C00B7AF */  sw         $s7, 0x7C($sp)
    /* 7E5A0 8008FD90 7800B6AF */  sw         $s6, 0x78($sp)
    /* 7E5A4 8008FD94 7400B5AF */  sw         $s5, 0x74($sp)
    /* 7E5A8 8008FD98 6C00B3AF */  sw         $s3, 0x6C($sp)
    /* 7E5AC 8008FD9C 6800B2AF */  sw         $s2, 0x68($sp)
    /* 7E5B0 8008FDA0 6400B1AF */  sw         $s1, 0x64($sp)
    /* 7E5B4 8008FDA4 6000B0AF */  sw         $s0, 0x60($sp)
    /* 7E5B8 8008FDA8 00E85848 */  cfc2       $t8, $29 /* handwritten instruction */
    /* 7E5BC 8008FDAC 00000000 */  nop
    /* 7E5C0 8008FDB0 2C00B8AF */  sw         $t8, 0x2C($sp)
    /* 7E5C4 8008FDB4 00F05948 */  cfc2       $t9, $30 /* handwritten instruction */
    /* 7E5C8 8008FDB8 21C00000 */  addu       $t8, $zero, $zero
    /* 7E5CC 8008FDBC 3000B9AF */  sw         $t9, 0x30($sp)
    /* 7E5D0 8008FDC0 00D8D848 */  ctc2       $t8, $27 /* handwritten instruction */
    /* 7E5D4 8008FDC4 21C80000 */  addu       $t9, $zero, $zero
    /* 7E5D8 8008FDC8 00E0D948 */  ctc2       $t9, $28 /* handwritten instruction */
    /* 7E5DC 8008FDCC 05008016 */  bnez       $s4, .L8008FDE4
    /* 7E5E0 8008FDD0 00000000 */   nop
    /* 7E5E4 8008FDD4 0D80023C */  lui        $v0, %hi(D_800C8864)
    /* 7E5E8 8008FDD8 6488428C */  lw         $v0, %lo(D_800C8864)($v0)
    /* 7E5EC 8008FDDC 00000000 */  nop
    /* 7E5F0 8008FDE0 40005424 */  addiu      $s4, $v0, 0x40
  .L8008FDE4:
    /* 7E5F4 8008FDE4 0000828E */  lw         $v0, 0x0($s4)
    /* 7E5F8 8008FDE8 0400838E */  lw         $v1, 0x4($s4)
    /* 7E5FC 8008FDEC 0040C248 */  ctc2       $v0, $8 /* handwritten instruction */
    /* 7E600 8008FDF0 0048C348 */  ctc2       $v1, $9 /* handwritten instruction */
    /* 7E604 8008FDF4 0800828E */  lw         $v0, 0x8($s4)
    /* 7E608 8008FDF8 0C00838E */  lw         $v1, 0xC($s4)
    /* 7E60C 8008FDFC 0050C248 */  ctc2       $v0, $10 /* handwritten instruction */
    /* 7E610 8008FE00 1000828E */  lw         $v0, 0x10($s4)
    /* 7E614 8008FE04 0058C348 */  ctc2       $v1, $11 /* handwritten instruction */
    /* 7E618 8008FE08 0060C248 */  ctc2       $v0, $12 /* handwritten instruction */
    /* 7E61C 8008FE0C 1400988E */  lw         $t8, 0x14($s4)
    /* 7E620 8008FE10 00000000 */  nop
    /* 7E624 8008FE14 0068D848 */  ctc2       $t8, $13 /* handwritten instruction */
    /* 7E628 8008FE18 1800998E */  lw         $t9, 0x18($s4)
    /* 7E62C 8008FE1C 00000000 */  nop
    /* 7E630 8008FE20 0070D948 */  ctc2       $t9, $14 /* handwritten instruction */
    /* 7E634 8008FE24 1C00988E */  lw         $t8, 0x1C($s4)
    /* 7E638 8008FE28 00000000 */  nop
    /* 7E63C 8008FE2C 0078D848 */  ctc2       $t8, $15 /* handwritten instruction */
    /* 7E640 8008FE30 FE00053C */  lui        $a1, (0xFEFEFE >> 16)
    /* 7E644 8008FE34 0024043C */  lui        $a0, (0x24000000 >> 16)
    /* 7E648 8008FE38 FEFEA534 */  ori        $a1, $a1, (0xFEFEFE & 0xFFFF)
    /* 7E64C 8008FE3C 2800C28F */  lw         $v0, 0x28($fp)
    /* 7E650 8008FE40 0D80063C */  lui        $a2, %hi(D_800CBCCC)
    /* 7E654 8008FE44 CCBCC694 */  lhu        $a2, %lo(D_800CBCCC)($a2)
    /* 7E658 8008FE48 25104400 */  or         $v0, $v0, $a0
    /* 7E65C 8008FE4C 801F013C */  lui        $at, (0x1F8003F0 >> 16)
    /* 7E660 8008FE50 F00322AC */  sw         $v0, (0x1F8003F0 & 0xFFFF)($at)
    /* 7E664 8008FE54 2800C38F */  lw         $v1, 0x28($fp)
    /* 7E668 8008FE58 002C043C */  lui        $a0, (0x2C000000 >> 16)
    /* 7E66C 8008FE5C 25186400 */  or         $v1, $v1, $a0
    /* 7E670 8008FE60 801F013C */  lui        $at, (0x1F8003F4 >> 16)
    /* 7E674 8008FE64 F40323AC */  sw         $v1, (0x1F8003F4 & 0xFFFF)($at)
    /* 7E678 8008FE68 2800C28F */  lw         $v0, 0x28($fp)
    /* 7E67C 8008FE6C 0026043C */  lui        $a0, (0x26000000 >> 16)
    /* 7E680 8008FE70 24104500 */  and        $v0, $v0, $a1
    /* 7E684 8008FE74 42100200 */  srl        $v0, $v0, 1
    /* 7E688 8008FE78 25104400 */  or         $v0, $v0, $a0
    /* 7E68C 8008FE7C 801F013C */  lui        $at, (0x1F8003F8 >> 16)
    /* 7E690 8008FE80 F80322AC */  sw         $v0, (0x1F8003F8 & 0xFFFF)($at)
    /* 7E694 8008FE84 2800C38F */  lw         $v1, 0x28($fp)
    /* 7E698 8008FE88 002E043C */  lui        $a0, (0x2E000000 >> 16)
    /* 7E69C 8008FE8C 24186500 */  and        $v1, $v1, $a1
    /* 7E6A0 8008FE90 42180300 */  srl        $v1, $v1, 1
    /* 7E6A4 8008FE94 0D80053C */  lui        $a1, %hi(D_800CBCA4)
    /* 7E6A8 8008FE98 A4BCA58C */  lw         $a1, %lo(D_800CBCA4)($a1)
    /* 7E6AC 8008FE9C 25186400 */  or         $v1, $v1, $a0
    /* 7E6B0 8008FEA0 801F013C */  lui        $at, (0x1F8003FC >> 16)
    /* 7E6B4 8008FEA4 FC0323AC */  sw         $v1, (0x1F8003FC & 0xFFFF)($at)
    /* 7E6B8 8008FEA8 0D80033C */  lui        $v1, %hi(D_800CBCB8)
    /* 7E6BC 8008FEAC B8BC638C */  lw         $v1, %lo(D_800CBCB8)($v1)
    /* 7E6C0 8008FEB0 0600A294 */  lhu        $v0, 0x6($a1)
    /* 7E6C4 8008FEB4 0D80043C */  lui        $a0, %hi(D_800CBCBC)
    /* 7E6C8 8008FEB8 BCBC848C */  lw         $a0, %lo(D_800CBCBC)($a0)
    /* 7E6CC 8008FEBC 20004224 */  addiu      $v0, $v0, 0x20
    /* 7E6D0 8008FEC0 801F013C */  lui        $at, (0x1F8003EE >> 16)
    /* 7E6D4 8008FEC4 EE0322A4 */  sh         $v0, (0x1F8003EE & 0xFFFF)($at)
    /* 7E6D8 8008FEC8 0200A794 */  lhu        $a3, 0x2($a1)
    /* 7E6DC 8008FECC 0D80023C */  lui        $v0, %hi(D_800CBCD0)
    /* 7E6E0 8008FED0 D0BC4294 */  lhu        $v0, %lo(D_800CBCD0)($v0)
    /* 7E6E4 8008FED4 0D80053C */  lui        $a1, %hi(D_800CBCC0)
    /* 7E6E8 8008FED8 C0BCA58C */  lw         $a1, %lo(D_800CBCC0)($a1)
    /* 7E6EC 8008FEDC FFFF1924 */  addiu      $t9, $zero, -0x1
    /* 7E6F0 8008FEE0 801F013C */  lui        $at, (0x1F8003E8 >> 16)
    /* 7E6F4 8008FEE4 E80326A4 */  sh         $a2, (0x1F8003E8 & 0xFFFF)($at)
    /* 7E6F8 8008FEE8 801F013C */  lui        $at, (0x1F8003DC >> 16)
    /* 7E6FC 8008FEEC DC0323AC */  sw         $v1, (0x1F8003DC & 0xFFFF)($at)
    /* 7E700 8008FEF0 801F013C */  lui        $at, (0x1F8003E0 >> 16)
    /* 7E704 8008FEF4 E00324AC */  sw         $a0, (0x1F8003E0 & 0xFFFF)($at)
    /* 7E708 8008FEF8 801F013C */  lui        $at, (0x1F8003EA >> 16)
    /* 7E70C 8008FEFC EA0322A4 */  sh         $v0, (0x1F8003EA & 0xFFFF)($at)
    /* 7E710 8008FF00 801F013C */  lui        $at, (0x1F8003E4 >> 16)
    /* 7E714 8008FF04 E40325AC */  sw         $a1, (0x1F8003E4 & 0xFFFF)($at)
    /* 7E718 8008FF08 801F013C */  lui        $at, (0x1F8003EC >> 16)
    /* 7E71C 8008FF0C EC0327A4 */  sh         $a3, (0x1F8003EC & 0xFFFF)($at)
    /* 7E720 8008FF10 00309948 */  mtc2       $t9, $6 /* handwritten instruction */
    /* 7E724 8008FF14 0400C38F */  lw         $v1, 0x4($fp)
    /* 7E728 8008FF18 00000000 */  nop
    /* 7E72C 8008FF1C 2400788C */  lw         $t8, 0x24($v1)
    /* 7E730 8008FF20 00100524 */  addiu      $a1, $zero, 0x1000
    /* 7E734 8008FF24 3C00B8AF */  sw         $t8, 0x3C($sp)
    /* 7E738 8008FF28 6C00798C */  lw         $t9, 0x6C($v1)
    /* 7E73C 8008FF2C 7000778C */  lw         $s7, 0x70($v1)
    /* 7E740 8008FF30 FFFF3527 */  addiu      $s5, $t9, -0x1
    /* 7E744 8008FF34 4000B9AF */  sw         $t9, 0x40($sp)
    /* 7E748 8008FF38 0000C283 */  lb         $v0, 0x0($fp)
    /* 7E74C 8008FF3C 1C006484 */  lh         $a0, 0x1C($v1)
    /* 7E750 8008FF40 2400C787 */  lh         $a3, 0x24($fp)
    /* 7E754 8008FF44 0800D88F */  lw         $t8, 0x8($fp)
    /* 7E758 8008FF48 21B05500 */  addu       $s6, $v0, $s5
    /* 7E75C 8008FF4C 04288500 */  sllv       $a1, $a1, $a0
    /* 7E760 8008FF50 3400B8AF */  sw         $t8, 0x34($sp)
    /* 7E764 8008FF54 7400798C */  lw         $t9, 0x74($v1)
    /* 7E768 8008FF58 23380700 */  negu       $a3, $a3
    /* 7E76C 8008FF5C 3800B9AF */  sw         $t9, 0x38($sp)
    /* 7E770 8008FF60 1400788C */  lw         $t8, 0x14($v1)
    /* 7E774 8008FF64 99111924 */  addiu      $t9, $zero, 0x1199
    /* 7E778 8008FF68 2800B8AF */  sw         $t8, 0x28($sp)
    /* 7E77C 8008FF6C 0C001824 */  addiu      $t8, $zero, 0xC
    /* 7E780 8008FF70 2000638C */  lw         $v1, 0x20($v1)
    /* 7E784 8008FF74 00000000 */  nop
    /* 7E788 8008FF78 18007900 */  mult       $v1, $t9
    /* 7E78C 8008FF7C 20000434 */  ori        $a0, $zero, 0x20
    /* 7E790 8008FF80 22209800 */  sub        $a0, $a0, $t8 /* handwritten instruction */
    /* 7E794 8008FF84 10400000 */  mfhi       $t0
    /* 7E798 8008FF88 04408800 */  sllv       $t0, $t0, $a0
    /* 7E79C 8008FF8C 12200000 */  mflo       $a0
    /* 7E7A0 8008FF90 06200403 */  srlv       $a0, $a0, $t8
    /* 7E7A4 8008FF94 25400401 */  or         $t0, $t0, $a0
    /* 7E7A8 8008FF98 0D80023C */  lui        $v0, %hi(D_800C8864)
    /* 7E7AC 8008FF9C 6488428C */  lw         $v0, %lo(D_800C8864)($v0)
    /* 7E7B0 8008FFA0 00000000 */  nop
    /* 7E7B4 8008FFA4 3C01468C */  lw         $a2, 0x13C($v0)
    /* 7E7B8 8008FFA8 2148A000 */  addu       $t1, $a1, $zero
    /* 7E7BC 8008FFAC 1400C48C */  lw         $a0, 0x14($a2)
    /* 7E7C0 8008FFB0 03120900 */  sra        $v0, $t1, 8
    /* 7E7C4 8008FFB4 18004400 */  mult       $v0, $a0
    /* 7E7C8 8008FFB8 1C00C38C */  lw         $v1, 0x1C($a2)
    /* 7E7CC 8008FFBC 00000000 */  nop
    /* 7E7D0 8008FFC0 001C0300 */  sll        $v1, $v1, 16
    /* 7E7D4 8008FFC4 12100000 */  mflo       $v0
    /* 7E7D8 8008FFC8 40200200 */  sll        $a0, $v0, 1
    /* 7E7DC 8008FFCC 21208200 */  addu       $a0, $a0, $v0
    /* 7E7E0 8008FFD0 1A006400 */  div        $zero, $v1, $a0
    /* 7E7E4 8008FFD4 12200000 */  mflo       $a0
    /* 7E7E8 8008FFD8 1000B127 */  addiu      $s1, $sp, 0x10
    /* 7E7EC 8008FFDC F4FFE724 */  addiu      $a3, $a3, -0xC
    /* 7E7F0 8008FFE0 80100200 */  sll        $v0, $v0, 2
    /* 7E7F4 8008FFE4 1A006200 */  div        $zero, $v1, $v0
    /* 7E7F8 8008FFE8 12180000 */  mflo       $v1
    /* 7E7FC 8008FFEC 00E8C448 */  ctc2       $a0, $29 /* handwritten instruction */
    /* 7E800 8008FFF0 00F0C348 */  ctc2       $v1, $30 /* handwritten instruction */
    /* 7E804 8008FFF4 0000828E */  lw         $v0, 0x0($s4)
    /* 7E808 8008FFF8 0400838E */  lw         $v1, 0x4($s4)
    /* 7E80C 8008FFFC 0000C248 */  ctc2       $v0, $0 /* handwritten instruction */
    /* 7E810 80090000 0008C348 */  ctc2       $v1, $1 /* handwritten instruction */
    /* 7E814 80090004 0800828E */  lw         $v0, 0x8($s4)
    /* 7E818 80090008 0C00838E */  lw         $v1, 0xC($s4)
    /* 7E81C 8009000C 0010C248 */  ctc2       $v0, $2 /* handwritten instruction */
    /* 7E820 80090010 1000828E */  lw         $v0, 0x10($s4)
    /* 7E824 80090014 0018C348 */  ctc2       $v1, $3 /* handwritten instruction */
    /* 7E828 80090018 0020C248 */  ctc2       $v0, $4 /* handwritten instruction */
    /* 7E82C 8009001C 1400838E */  lw         $v1, 0x14($s4)
    /* 7E830 80090020 1800828E */  lw         $v0, 0x18($s4)
    /* 7E834 80090024 0028C348 */  ctc2       $v1, $5 /* handwritten instruction */
    /* 7E838 80090028 1C00838E */  lw         $v1, 0x1C($s4)
    /* 7E83C 8009002C 0030C248 */  ctc2       $v0, $6 /* handwritten instruction */
    /* 7E840 80090030 0038C348 */  ctc2       $v1, $7 /* handwritten instruction */
    /* 7E844 80090034 21C00000 */  addu       $t8, $zero, $zero
    /* 7E848 80090038 00009848 */  mtc2       $t8, $0 /* handwritten instruction */
    /* 7E84C 8009003C 21C80000 */  addu       $t9, $zero, $zero
    /* 7E850 80090040 00089948 */  mtc2       $t9, $1 /* handwritten instruction */
    /* 7E854 80090044 00000000 */  nop
    /* 7E858 80090048 00000000 */  nop
    /* 7E85C 8009004C 0100184A */  rtps
    /* 7E860 80090050 00981048 */  mfc2       $s0, $19 /* handwritten instruction */
    /* 7E864 80090054 00000000 */  nop
    /* 7E868 80090058 00889048 */  mtc2       $s0, $17 /* handwritten instruction */
    /* 7E86C 8009005C 00909048 */  mtc2       $s0, $18 /* handwritten instruction */
    /* 7E870 80090060 00000000 */  nop
    /* 7E874 80090064 00000000 */  nop
    /* 7E878 80090068 2D00584B */  avsz3
    /* 7E87C 8009006C 00380248 */  mfc2       $v0, $7 /* handwritten instruction */
    /* 7E880 80090070 00000000 */  nop
    /* 7E884 80090074 21204700 */  addu       $a0, $v0, $a3
    /* 7E888 80090078 41FF8328 */  slti       $v1, $a0, -0xBF
    /* 7E88C 8009007C 05006014 */  bnez       $v1, .L80090094
    /* 7E890 80090080 41FF1324 */   addiu     $s3, $zero, -0xBF
    /* 7E894 80090084 FB078228 */  slti       $v0, $a0, 0x7FB
    /* 7E898 80090088 02004010 */  beqz       $v0, .L80090094
    /* 7E89C 8009008C FA071324 */   addiu     $s3, $zero, 0x7FA
    /* 7E8A0 80090090 21988000 */  addu       $s3, $a0, $zero
  .L80090094:
    /* 7E8A4 80090094 18001824 */  addiu      $t8, $zero, 0x18
    /* 7E8A8 80090098 18000901 */  mult       $t0, $t1
    /* 7E8AC 8009009C 20000234 */  ori        $v0, $zero, 0x20
    /* 7E8B0 800900A0 22105800 */  sub        $v0, $v0, $t8 /* handwritten instruction */
    /* 7E8B4 800900A4 10380000 */  mfhi       $a3
    /* 7E8B8 800900A8 04384700 */  sllv       $a3, $a3, $v0
    /* 7E8BC 800900AC 12100000 */  mflo       $v0
    /* 7E8C0 800900B0 06100203 */  srlv       $v0, $v0, $t8
    /* 7E8C4 800900B4 2538E200 */  or         $a3, $a3, $v0
    /* 7E8C8 800900B8 1000043C */  lui        $a0, (0x100000 >> 16)
    /* 7E8CC 800900BC 40180700 */  sll        $v1, $a3, 1
    /* 7E8D0 800900C0 1A008300 */  div        $zero, $a0, $v1
    /* 7E8D4 800900C4 12300000 */  mflo       $a2
    /* 7E8D8 800900C8 FF07023C */  lui        $v0, (0x7FFF000 >> 16)
    /* 7E8DC 800900CC 00F04234 */  ori        $v0, $v0, (0x7FFF000 & 0xFFFF)
    /* 7E8E0 800900D0 21180702 */  addu       $v1, $s0, $a3
    /* 7E8E4 800900D4 1A004300 */  div        $zero, $v0, $v1
    /* 7E8E8 800900D8 12100000 */  mflo       $v0
    /* 7E8EC 800900DC 00000000 */  nop
    /* 7E8F0 800900E0 2A20C200 */  slt        $a0, $a2, $v0
    /* 7E8F4 800900E4 02008010 */  beqz       $a0, .L800900F0
    /* 7E8F8 800900E8 00000000 */   nop
    /* 7E8FC 800900EC 2110C000 */  addu       $v0, $a2, $zero
  .L800900F0:
    /* 7E900 800900F0 21304000 */  addu       $a2, $v0, $zero
    /* 7E904 800900F4 5555023C */  lui        $v0, (0x55555556 >> 16)
    /* 7E908 800900F8 56554234 */  ori        $v0, $v0, (0x55555556 & 0xFFFF)
    /* 7E90C 800900FC 1800C200 */  mult       $a2, $v0
    /* 7E910 80090100 2120C000 */  addu       $a0, $a2, $zero
    /* 7E914 80090104 C31F0600 */  sra        $v1, $a2, 31
    /* 7E918 80090108 10100000 */  mfhi       $v0
    /* 7E91C 8009010C 0200C104 */  bgez       $a2, .L80090118
    /* 7E920 80090110 23184300 */   subu      $v1, $v0, $v1
    /* 7E924 80090114 0300C424 */  addiu      $a0, $a2, 0x3
  .L80090118:
    /* 7E928 80090118 83100400 */  sra        $v0, $a0, 2
    /* 7E92C 8009011C 00E8C348 */  ctc2       $v1, $29 /* handwritten instruction */
    /* 7E930 80090120 00F0C248 */  ctc2       $v0, $30 /* handwritten instruction */
    /* 7E934 80090124 23800702 */  subu       $s0, $s0, $a3
    /* 7E938 80090128 18000602 */  mult       $s0, $a2
    /* 7E93C 8009012C 00010224 */  addiu      $v0, $zero, 0x100
    /* 7E940 80090130 80000324 */  addiu      $v1, $zero, 0x80
    /* 7E944 80090134 0D80043C */  lui        $a0, %hi(D_800C8C70)
    /* 7E948 80090138 708C848C */  lw         $a0, %lo(D_800C8C70)($a0)
    /* 7E94C 8009013C 00020524 */  addiu      $a1, $zero, 0x200
    /* 7E950 80090140 080022AE */  sw         $v0, 0x8($s1)
    /* 7E954 80090144 0C0023AE */  sw         $v1, 0xC($s1)
    /* 7E958 80090148 00088224 */  addiu      $v0, $a0, 0x800
    /* 7E95C 8009014C 000024AE */  sw         $a0, 0x0($s1)
    /* 7E960 80090150 0D80013C */  lui        $at, %hi(D_800C8C70)
    /* 7E964 80090154 708C22AC */  sw         $v0, %lo(D_800C8C70)($at)
    /* 7E968 80090158 12800000 */  mflo       $s0
    /* 7E96C 8009015C 72B0020C */  jal        ClearOTagR
    /* 7E970 80090160 03831000 */   sra       $s0, $s0, 12
    /* 7E974 80090164 80101300 */  sll        $v0, $s3, 2
    /* 7E978 80090168 0D80043C */  lui        $a0, %hi(D_800CBDC0)
    /* 7E97C 8009016C C0BD848C */  lw         $a0, %lo(D_800CBDC0)($a0)
    /* 7E980 80090170 0000258E */  lw         $a1, 0x0($s1)
    /* 7E984 80090174 21208200 */  addu       $a0, $a0, $v0
    /* 7E988 80090178 0000838C */  lw         $v1, 0x0($a0)
    /* 7E98C 8009017C FF00063C */  lui        $a2, (0xFFFFFF >> 16)
    /* 7E990 80090180 0000A3AC */  sw         $v1, 0x0($a1)
    /* 7E994 80090184 0000228E */  lw         $v0, 0x0($s1)
    /* 7E998 80090188 FFFFC634 */  ori        $a2, $a2, (0xFFFFFF & 0xFFFF)
    /* 7E99C 8009018C 4800A0AF */  sw         $zero, 0x48($sp)
    /* 7E9A0 80090190 FC074224 */  addiu      $v0, $v0, 0x7FC
    /* 7E9A4 80090194 24104600 */  and        $v0, $v0, $a2
    /* 7E9A8 80090198 000082AC */  sw         $v0, 0x0($a0)
    /* 7E9AC 8009019C 0D800A3C */  lui        $t2, %hi(D_800C8C70)
    /* 7E9B0 800901A0 708C4A8D */  lw         $t2, %lo(D_800C8C70)($t2)
    /* 7E9B4 800901A4 0000238E */  lw         $v1, 0x0($s1)
    /* 7E9B8 800901A8 2700C283 */  lb         $v0, 0x27($fp)
    /* 7E9BC 800901AC 80FF1026 */  addiu      $s0, $s0, -0x80
    /* 7E9C0 800901B0 100030AE */  sw         $s0, 0x10($s1)
    /* 7E9C4 800901B4 040023AE */  sw         $v1, 0x4($s1)
    /* 7E9C8 800901B8 1400B88F */  lw         $t8, 0x14($sp)
    /* 7E9CC 800901BC 00160200 */  sll        $v0, $v0, 24
    /* 7E9D0 800901C0 4C00A2AF */  sw         $v0, 0x4C($sp)
    /* 7E9D4 800901C4 2602C012 */  beqz       $s6, .L80090A60
    /* 7E9D8 800901C8 4400B8AF */   sw        $t8, 0x44($sp)
    /* 7E9DC 800901CC 5000B5AF */  sw         $s5, 0x50($sp)
  .L800901D0:
    /* 7E9E0 800901D0 4000B98F */  lw         $t9, 0x40($sp)
    /* 7E9E4 800901D4 00000000 */  nop
    /* 7E9E8 800901D8 2A10D902 */  slt        $v0, $s6, $t9
    /* 7E9EC 800901DC 2C014014 */  bnez       $v0, .L80090690
    /* 7E9F0 800901E0 21700000 */   addu      $t6, $zero, $zero
    /* 7E9F4 800901E4 3C00B88F */  lw         $t8, 0x3C($sp)
    /* 7E9F8 800901E8 00000000 */  nop
    /* 7E9FC 800901EC 00000283 */  lb         $v0, 0x0($t8)
    /* 7EA00 800901F0 3400B98F */  lw         $t9, 0x34($sp)
    /* 7EA04 800901F4 C0110200 */  sll        $v0, $v0, 7
    /* 7EA08 800901F8 21602203 */  addu       $t4, $t9, $v0
    /* 7EA0C 800901FC 36008495 */  lhu        $a0, 0x36($t4)
    /* 7EA10 80090200 01001827 */  addiu      $t8, $t8, 0x1
    /* 7EA14 80090204 30008230 */  andi       $v0, $a0, 0x30
    /* 7EA18 80090208 5B014014 */  bnez       $v0, .L80090778
    /* 7EA1C 8009020C 3C00B8AF */   sw        $t8, 0x3C($sp)
    /* 7EA20 80090210 0200C397 */  lhu        $v1, 0x2($fp)
    /* 7EA24 80090214 00000000 */  nop
    /* 7EA28 80090218 24108300 */  and        $v0, $a0, $v1
    /* 7EA2C 8009021C 57014314 */  bne        $v0, $v1, .L8009077C
    /* 7EA30 80090220 801F133C */   lui       $s3, (0x1F800006 >> 16)
    /* 7EA34 80090224 1000888D */  lw         $t0, 0x10($t4)
    /* 7EA38 80090228 1400988E */  lw         $t8, 0x14($s4)
    /* 7EA3C 8009022C 00000000 */  nop
    /* 7EA40 80090230 0068D848 */  ctc2       $t8, $13 /* handwritten instruction */
    /* 7EA44 80090234 1800998E */  lw         $t9, 0x18($s4)
    /* 7EA48 80090238 00000000 */  nop
    /* 7EA4C 8009023C 0070D948 */  ctc2       $t9, $14 /* handwritten instruction */
    /* 7EA50 80090240 1C00988E */  lw         $t8, 0x1C($s4)
    /* 7EA54 80090244 00000000 */  nop
    /* 7EA58 80090248 0078D848 */  ctc2       $t8, $15 /* handwritten instruction */
    /* 7EA5C 8009024C 0400098D */  lw         $t1, 0x4($t0)
    /* 7EA60 80090250 0C000B8D */  lw         $t3, 0xC($t0)
    /* 7EA64 80090254 0000068D */  lw         $a2, 0x0($t0)
    /* 7EA68 80090258 00000000 */  nop
    /* 7EA6C 8009025C 00488648 */  mtc2       $a2, $9 /* handwritten instruction */
    /* 7EA70 80090260 03140900 */  sra        $v0, $t1, 16
    /* 7EA74 80090264 00508248 */  mtc2       $v0, $10 /* handwritten instruction */
    /* 7EA78 80090268 00588B48 */  mtc2       $t3, $11 /* handwritten instruction */
    /* 7EA7C 8009026C 02340600 */  srl        $a2, $a2, 16
    /* 7EA80 80090270 025C0B00 */  srl        $t3, $t3, 16
    /* 7EA84 80090274 12E04B4A */  mvmva      1, 1, 3, 3, 0
    /* 7EA88 80090278 0800078D */  lw         $a3, 0x8($t0)
    /* 7EA8C 8009027C 00088B48 */  mtc2       $t3, $1 /* handwritten instruction */
    /* 7EA90 80090280 00140700 */  sll        $v0, $a3, 16
    /* 7EA94 80090284 2530C200 */  or         $a2, $a2, $v0
    /* 7EA98 80090288 00008648 */  mtc2       $a2, $0 /* handwritten instruction */
    /* 7EA9C 8009028C 00480648 */  mfc2       $a2, $9 /* handwritten instruction */
    /* 7EAA0 80090290 00500B48 */  mfc2       $t3, $10 /* handwritten instruction */
    /* 7EAA4 80090294 00580548 */  mfc2       $a1, $11 /* handwritten instruction */
    /* 7EAA8 80090298 12604A4A */  mvmva      1, 1, 0, 3, 0
    /* 7EAAC 8009029C FFFF2331 */  andi       $v1, $t1, 0xFFFF
    /* 7EAB0 800902A0 FFFF193C */  lui        $t9, (0xFFFF0000 >> 16)
    /* 7EAB4 800902A4 2410F900 */  and        $v0, $a3, $t9
    /* 7EAB8 800902A8 25386200 */  or         $a3, $v1, $v0
    /* 7EABC 800902AC 00108748 */  mtc2       $a3, $2 /* handwritten instruction */
    /* 7EAC0 800902B0 100003C9 */  lwc2       $3, 0x10($t0)
    /* 7EAC4 800902B4 00480948 */  mfc2       $t1, $9 /* handwritten instruction */
    /* 7EAC8 800902B8 00500748 */  mfc2       $a3, $10 /* handwritten instruction */
    /* 7EACC 800902BC 00580448 */  mfc2       $a0, $11 /* handwritten instruction */
    /* 7EAD0 800902C0 12E04A4A */  mvmva      1, 1, 1, 3, 0
    /* 7EAD4 800902C4 FFFFC230 */  andi       $v0, $a2, 0xFFFF
    /* 7EAD8 800902C8 001C0900 */  sll        $v1, $t1, 16
    /* 7EADC 800902CC 25104300 */  or         $v0, $v0, $v1
    /* 7EAE0 800902D0 0000C248 */  ctc2       $v0, $0 /* handwritten instruction */
    /* 7EAE4 800902D4 FFFFA530 */  andi       $a1, $a1, 0xFFFF
    /* 7EAE8 800902D8 00240400 */  sll        $a0, $a0, 16
    /* 7EAEC 800902DC 2528A400 */  or         $a1, $a1, $a0
    /* 7EAF0 800902E0 0018C548 */  ctc2       $a1, $3 /* handwritten instruction */
    /* 7EAF4 800902E4 00480648 */  mfc2       $a2, $9 /* handwritten instruction */
    /* 7EAF8 800902E8 00500948 */  mfc2       $t1, $10 /* handwritten instruction */
    /* 7EAFC 800902EC FFFFC230 */  andi       $v0, $a2, 0xFFFF
    /* 7EB00 800902F0 001C0B00 */  sll        $v1, $t3, 16
    /* 7EB04 800902F4 25104300 */  or         $v0, $v0, $v1
    /* 7EB08 800902F8 0008C248 */  ctc2       $v0, $1 /* handwritten instruction */
    /* 7EB0C 800902FC 00580648 */  mfc2       $a2, $11 /* handwritten instruction */
    /* 7EB10 80090300 FFFFE330 */  andi       $v1, $a3, 0xFFFF
    /* 7EB14 80090304 00140900 */  sll        $v0, $t1, 16
    /* 7EB18 80090308 25186200 */  or         $v1, $v1, $v0
    /* 7EB1C 8009030C 0010C348 */  ctc2       $v1, $2 /* handwritten instruction */
    /* 7EB20 80090310 0020C648 */  ctc2       $a2, $4 /* handwritten instruction */
    /* 7EB24 80090314 14000225 */  addiu      $v0, $t0, 0x14
    /* 7EB28 80090318 1400058D */  lw         $a1, 0x14($t0)
    /* 7EB2C 8009031C 0400448C */  lw         $a0, 0x4($v0)
    /* 7EB30 80090320 0800468C */  lw         $a2, 0x8($v0)
    /* 7EB34 80090324 0700A104 */  bgez       $a1, .L80090344
    /* 7EB38 80090328 C34B0500 */   sra       $t1, $a1, 15
    /* 7EB3C 8009032C 23280500 */  negu       $a1, $a1
    /* 7EB40 80090330 C3130500 */  sra        $v0, $a1, 15
    /* 7EB44 80090334 23480200 */  negu       $t1, $v0
    /* 7EB48 80090338 FF7FA330 */  andi       $v1, $a1, 0x7FFF
    /* 7EB4C 8009033C D2400208 */  j          .L80090348
    /* 7EB50 80090340 23280300 */   negu      $a1, $v1
  .L80090344:
    /* 7EB54 80090344 FF7FA530 */  andi       $a1, $a1, 0x7FFF
  .L80090348:
    /* 7EB58 80090348 07008104 */  bgez       $a0, .L80090368
    /* 7EB5C 8009034C C33B0400 */   sra       $a3, $a0, 15
    /* 7EB60 80090350 23200400 */  negu       $a0, $a0
    /* 7EB64 80090354 C3130400 */  sra        $v0, $a0, 15
    /* 7EB68 80090358 23380200 */  negu       $a3, $v0
    /* 7EB6C 8009035C FF7F8330 */  andi       $v1, $a0, 0x7FFF
    /* 7EB70 80090360 DB400208 */  j          .L8009036C
    /* 7EB74 80090364 23200300 */   negu      $a0, $v1
  .L80090368:
    /* 7EB78 80090368 FF7F8430 */  andi       $a0, $a0, 0x7FFF
  .L8009036C:
    /* 7EB7C 8009036C 0700C104 */  bgez       $a2, .L8009038C
    /* 7EB80 80090370 C3130600 */   sra       $v0, $a2, 15
    /* 7EB84 80090374 23300600 */  negu       $a2, $a2
    /* 7EB88 80090378 C3130600 */  sra        $v0, $a2, 15
    /* 7EB8C 8009037C 23100200 */  negu       $v0, $v0
    /* 7EB90 80090380 FF7FC330 */  andi       $v1, $a2, 0x7FFF
    /* 7EB94 80090384 E4400208 */  j          .L80090390
    /* 7EB98 80090388 23300300 */   negu      $a2, $v1
  .L8009038C:
    /* 7EB9C 8009038C FF7FC630 */  andi       $a2, $a2, 0x7FFF
  .L80090390:
    /* 7EBA0 80090390 00488948 */  mtc2       $t1, $9 /* handwritten instruction */
    /* 7EBA4 80090394 00508748 */  mtc2       $a3, $10 /* handwritten instruction */
    /* 7EBA8 80090398 00588248 */  mtc2       $v0, $11 /* handwritten instruction */
    /* 7EBAC 8009039C 00000000 */  nop
    /* 7EBB0 800903A0 00000000 */  nop
    /* 7EBB4 800903A4 12E0434A */  mvmva      0, 1, 3, 3, 0
    /* 7EBB8 800903A8 FFFFA230 */  andi       $v0, $a1, 0xFFFF
    /* 7EBBC 800903AC 001C0400 */  sll        $v1, $a0, 16
    /* 7EBC0 800903B0 25104300 */  or         $v0, $v0, $v1
    /* 7EBC4 800903B4 00008248 */  mtc2       $v0, $0 /* handwritten instruction */
    /* 7EBC8 800903B8 00088648 */  mtc2       $a2, $1 /* handwritten instruction */
    /* 7EBCC 800903BC 00C80948 */  mfc2       $t1, $25 /* handwritten instruction */
    /* 7EBD0 800903C0 00D00748 */  mfc2       $a3, $26 /* handwritten instruction */
    /* 7EBD4 800903C4 00D80248 */  mfc2       $v0, $27 /* handwritten instruction */
    /* 7EBD8 800903C8 12204A4A */  mvmva      1, 1, 0, 1, 0
    /* 7EBDC 800903CC C0480900 */  sll        $t1, $t1, 3
    /* 7EBE0 800903D0 C0380700 */  sll        $a3, $a3, 3
    /* 7EBE4 800903D4 C0100200 */  sll        $v0, $v0, 3
    /* 7EBE8 800903D8 00C80548 */  mfc2       $a1, $25 /* handwritten instruction */
    /* 7EBEC 800903DC 00D00448 */  mfc2       $a0, $26 /* handwritten instruction */
    /* 7EBF0 800903E0 00D80648 */  mfc2       $a2, $27 /* handwritten instruction */
    /* 7EBF4 800903E4 2128A900 */  addu       $a1, $a1, $t1
    /* 7EBF8 800903E8 21208700 */  addu       $a0, $a0, $a3
    /* 7EBFC 800903EC 2130C200 */  addu       $a2, $a2, $v0
    /* 7EC00 800903F0 0028C548 */  ctc2       $a1, $5 /* handwritten instruction */
    /* 7EC04 800903F4 0030C448 */  ctc2       $a0, $6 /* handwritten instruction */
    /* 7EC08 800903F8 0038C648 */  ctc2       $a2, $7 /* handwritten instruction */
    /* 7EC0C 800903FC 801F183C */  lui        $t8, (0x1F8003DC >> 16)
    /* 7EC10 80090400 DC03188F */  lw         $t8, (0x1F8003DC & 0xFFFF)($t8)
    /* 7EC14 80090404 00000000 */  nop
    /* 7EC18 80090408 0080D848 */  ctc2       $t8, $16 /* handwritten instruction */
    /* 7EC1C 8009040C 801F193C */  lui        $t9, (0x1F8003E0 >> 16)
    /* 7EC20 80090410 E003398F */  lw         $t9, (0x1F8003E0 & 0xFFFF)($t9)
    /* 7EC24 80090414 00000000 */  nop
    /* 7EC28 80090418 0088D948 */  ctc2       $t9, $17 /* handwritten instruction */
    /* 7EC2C 8009041C 801F183C */  lui        $t8, (0x1F8003E4 >> 16)
    /* 7EC30 80090420 E403188F */  lw         $t8, (0x1F8003E4 & 0xFFFF)($t8)
    /* 7EC34 80090424 00000000 */  nop
    /* 7EC38 80090428 0090D848 */  ctc2       $t8, $18 /* handwritten instruction */
    /* 7EC3C 8009042C 21C80000 */  addu       $t9, $zero, $zero
    /* 7EC40 80090430 0098D948 */  ctc2       $t9, $19 /* handwritten instruction */
    /* 7EC44 80090434 21C00000 */  addu       $t8, $zero, $zero
    /* 7EC48 80090438 00A0D848 */  ctc2       $t8, $20 /* handwritten instruction */
    /* 7EC4C 8009043C 00001995 */  lhu        $t9, 0x0($t0)
    /* 7EC50 80090440 00000000 */  nop
    /* 7EC54 80090444 00489948 */  mtc2       $t9, $9 /* handwritten instruction */
    /* 7EC58 80090448 06001895 */  lhu        $t8, 0x6($t0)
    /* 7EC5C 8009044C 00000000 */  nop
    /* 7EC60 80090450 00509848 */  mtc2       $t8, $10 /* handwritten instruction */
    /* 7EC64 80090454 0C001995 */  lhu        $t9, 0xC($t0)
    /* 7EC68 80090458 00000000 */  nop
    /* 7EC6C 8009045C 00589948 */  mtc2       $t9, $11 /* handwritten instruction */
    /* 7EC70 80090460 00000000 */  nop
    /* 7EC74 80090464 00000000 */  nop
    /* 7EC78 80090468 12E04D4A */  mvmva      1, 2, 3, 3, 0
    /* 7EC7C 8009046C 02000485 */  lh         $a0, 0x2($t0)
    /* 7EC80 80090470 08000585 */  lh         $a1, 0x8($t0)
    /* 7EC84 80090474 0E000685 */  lh         $a2, 0xE($t0)
    /* 7EC88 80090478 00480248 */  mfc2       $v0, $9 /* handwritten instruction */
    /* 7EC8C 8009047C 00500348 */  mfc2       $v1, $10 /* handwritten instruction */
    /* 7EC90 80090480 00488448 */  mtc2       $a0, $9 /* handwritten instruction */
    /* 7EC94 80090484 00508548 */  mtc2       $a1, $10 /* handwritten instruction */
    /* 7EC98 80090488 00588648 */  mtc2       $a2, $11 /* handwritten instruction */
    /* 7EC9C 8009048C 801F013C */  lui        $at, (0x1F8003D0 >> 16)
    /* 7ECA0 80090490 D00322A4 */  sh         $v0, (0x1F8003D0 & 0xFFFF)($at)
    /* 7ECA4 80090494 801F013C */  lui        $at, (0x1F8003D6 >> 16)
    /* 7ECA8 80090498 D60323A4 */  sh         $v1, (0x1F8003D6 & 0xFFFF)($at)
    /* 7ECAC 8009049C 12E04D4A */  mvmva      1, 2, 3, 3, 0
    /* 7ECB0 800904A0 04000485 */  lh         $a0, 0x4($t0)
    /* 7ECB4 800904A4 0A000585 */  lh         $a1, 0xA($t0)
    /* 7ECB8 800904A8 10000685 */  lh         $a2, 0x10($t0)
    /* 7ECBC 800904AC 00480248 */  mfc2       $v0, $9 /* handwritten instruction */
    /* 7ECC0 800904B0 00500348 */  mfc2       $v1, $10 /* handwritten instruction */
    /* 7ECC4 800904B4 00488448 */  mtc2       $a0, $9 /* handwritten instruction */
    /* 7ECC8 800904B8 00508548 */  mtc2       $a1, $10 /* handwritten instruction */
    /* 7ECCC 800904BC 00588648 */  mtc2       $a2, $11 /* handwritten instruction */
    /* 7ECD0 800904C0 801F013C */  lui        $at, (0x1F8003D2 >> 16)
    /* 7ECD4 800904C4 D20322A4 */  sh         $v0, (0x1F8003D2 & 0xFFFF)($at)
    /* 7ECD8 800904C8 801F013C */  lui        $at, (0x1F8003D8 >> 16)
    /* 7ECDC 800904CC D80323A4 */  sh         $v1, (0x1F8003D8 & 0xFFFF)($at)
    /* 7ECE0 800904D0 12E04D4A */  mvmva      1, 2, 3, 3, 0
    /* 7ECE4 800904D4 00480248 */  mfc2       $v0, $9 /* handwritten instruction */
    /* 7ECE8 800904D8 00500348 */  mfc2       $v1, $10 /* handwritten instruction */
    /* 7ECEC 800904DC 801F183C */  lui        $t8, (0x1F8003D0 >> 16)
    /* 7ECF0 800904E0 D003188F */  lw         $t8, (0x1F8003D0 & 0xFFFF)($t8)
    /* 7ECF4 800904E4 801F013C */  lui        $at, (0x1F8003D4 >> 16)
    /* 7ECF8 800904E8 D40322A4 */  sh         $v0, (0x1F8003D4 & 0xFFFF)($at)
    /* 7ECFC 800904EC 801F013C */  lui        $at, (0x1F8003DA >> 16)
    /* 7ED00 800904F0 DA0323A4 */  sh         $v1, (0x1F8003DA & 0xFFFF)($at)
    /* 7ED04 800904F4 0080D848 */  ctc2       $t8, $16 /* handwritten instruction */
    /* 7ED08 800904F8 801F193C */  lui        $t9, (0x1F8003D4 >> 16)
    /* 7ED0C 800904FC D403398F */  lw         $t9, (0x1F8003D4 & 0xFFFF)($t9)
    /* 7ED10 80090500 00000000 */  nop
    /* 7ED14 80090504 0088D948 */  ctc2       $t9, $17 /* handwritten instruction */
    /* 7ED18 80090508 801F183C */  lui        $t8, (0x1F8003D8 >> 16)
    /* 7ED1C 8009050C D803188F */  lw         $t8, (0x1F8003D8 & 0xFFFF)($t8)
    /* 7ED20 80090510 00000000 */  nop
    /* 7ED24 80090514 0090D848 */  ctc2       $t8, $18 /* handwritten instruction */
    /* 7ED28 80090518 801F193C */  lui        $t9, (0x1F8003E8 >> 16)
    /* 7ED2C 8009051C E8033997 */  lhu        $t9, (0x1F8003E8 & 0xFFFF)($t9)
    /* 7ED30 80090520 00000000 */  nop
    /* 7ED34 80090524 0068D948 */  ctc2       $t9, $13 /* handwritten instruction */
    /* 7ED38 80090528 801F183C */  lui        $t8, (0x1F8003EA >> 16)
    /* 7ED3C 8009052C EA031897 */  lhu        $t8, (0x1F8003EA & 0xFFFF)($t8)
    /* 7ED40 80090530 00000000 */  nop
    /* 7ED44 80090534 0070D848 */  ctc2       $t8, $14 /* handwritten instruction */
    /* 7ED48 80090538 21C80000 */  addu       $t9, $zero, $zero
    /* 7ED4C 8009053C 0078D948 */  ctc2       $t9, $15 /* handwritten instruction */
    /* 7ED50 80090540 00184448 */  cfc2       $a0, $3 /* handwritten instruction */
    /* 7ED54 80090544 00000000 */  nop
    /* 7ED58 80090548 00140400 */  sll        $v0, $a0, 16
    /* 7ED5C 8009054C C3250200 */  sra        $a0, $v0, 23
    /* 7ED60 80090550 40180400 */  sll        $v1, $a0, 1
    /* 7ED64 80090554 23100400 */  negu       $v0, $a0
    /* 7ED68 80090558 801F013C */  lui        $at, (0x1F8003D3 >> 16)
    /* 7ED6C 8009055C D30322A0 */  sb         $v0, (0x1F8003D3 & 0xFFFF)($at)
    /* 7ED70 80090560 40100200 */  sll        $v0, $v0, 1
    /* 7ED74 80090564 801F013C */  lui        $at, (0x1F8003D0 >> 16)
    /* 7ED78 80090568 D00323A0 */  sb         $v1, (0x1F8003D0 & 0xFFFF)($at)
    /* 7ED7C 8009056C 801F013C */  lui        $at, (0x1F8003D1 >> 16)
    /* 7ED80 80090570 D10324A0 */  sb         $a0, (0x1F8003D1 & 0xFFFF)($at)
    /* 7ED84 80090574 801F013C */  lui        $at, (0x1F8003D2 >> 16)
    /* 7ED88 80090578 D20320A0 */  sb         $zero, (0x1F8003D2 & 0xFFFF)($at)
    /* 7ED8C 8009057C 801F013C */  lui        $at, (0x1F8003D4 >> 16)
    /* 7ED90 80090580 D40322A0 */  sb         $v0, (0x1F8003D4 & 0xFFFF)($at)
    /* 7ED94 80090584 00204448 */  cfc2       $a0, $4 /* handwritten instruction */
    /* 7ED98 80090588 00000000 */  nop
    /* 7ED9C 8009058C C3210400 */  sra        $a0, $a0, 7
    /* 7EDA0 80090590 40100400 */  sll        $v0, $a0, 1
    /* 7EDA4 80090594 801F013C */  lui        $at, (0x1F8003D5 >> 16)
    /* 7EDA8 80090598 D50322A0 */  sb         $v0, (0x1F8003D5 & 0xFFFF)($at)
    /* 7EDAC 8009059C 23100400 */  negu       $v0, $a0
    /* 7EDB0 800905A0 801F013C */  lui        $at, (0x1F8003D8 >> 16)
    /* 7EDB4 800905A4 D80322A0 */  sb         $v0, (0x1F8003D8 & 0xFFFF)($at)
    /* 7EDB8 800905A8 40100200 */  sll        $v0, $v0, 1
    /* 7EDBC 800905AC 801F013C */  lui        $at, (0x1F8003D6 >> 16)
    /* 7EDC0 800905B0 D60324A0 */  sb         $a0, (0x1F8003D6 & 0xFFFF)($at)
    /* 7EDC4 800905B4 801F013C */  lui        $at, (0x1F8003D7 >> 16)
    /* 7EDC8 800905B8 D70320A0 */  sb         $zero, (0x1F8003D7 & 0xFFFF)($at)
    /* 7EDCC 800905BC 801F013C */  lui        $at, (0x1F8003D9 >> 16)
    /* 7EDD0 800905C0 D90322A0 */  sb         $v0, (0x1F8003D9 & 0xFFFF)($at)
    /* 7EDD4 800905C4 3C00848D */  lw         $a0, 0x3C($t4)
    /* 7EDD8 800905C8 00000000 */  nop
    /* 7EDDC 800905CC 16008790 */  lbu        $a3, 0x16($a0)
    /* 7EDE0 800905D0 00000000 */  nop
    /* 7EDE4 800905D4 2800E010 */  beqz       $a3, .L80090678
    /* 7EDE8 800905D8 00000000 */   nop
    /* 7EDEC 800905DC 1C008284 */  lh         $v0, 0x1C($a0)
    /* 7EDF0 800905E0 3800B88F */  lw         $t8, 0x38($sp)
    /* 7EDF4 800905E4 1E008484 */  lh         $a0, 0x1E($a0)
    /* 7EDF8 800905E8 2800B98F */  lw         $t9, 0x28($sp)
    /* 7EDFC 800905EC 80180200 */  sll        $v1, $v0, 2
    /* 7EE00 800905F0 21400303 */  addu       $t0, $t8, $v1
    /* 7EE04 800905F4 C0100200 */  sll        $v0, $v0, 3
    /* 7EE08 800905F8 21302203 */  addu       $a2, $t9, $v0
    /* 7EE0C 800905FC 801F183C */  lui        $t8, %hi(D_1F7FFFF8)
    /* 7EE10 80090600 21289800 */  addu       $a1, $a0, $t8
    /* 7EE14 80090604 0000C0C8 */  lwc2       $0, 0x0($a2)
    /* 7EE18 80090608 0400C1C8 */  lwc2       $1, 0x4($a2)
    /* 7EE1C 8009060C F8FFA524 */  addiu      $a1, $a1, %lo(D_1F7FFFF8)
    /* 7EE20 80090610 00FF093C */  lui        $t1, (0xFF000000 >> 16)
  .L80090614:
    /* 7EE24 80090614 0100184A */  rtps
    /* 7EE28 80090618 FFFFE724 */  addiu      $a3, $a3, -0x1
    /* 7EE2C 8009061C 0000028D */  lw         $v0, 0x0($t0)
    /* 7EE30 80090620 04000825 */  addiu      $t0, $t0, 0x4
    /* 7EE34 80090624 00260200 */  sll        $a0, $v0, 24
    /* 7EE38 80090628 001C0200 */  sll        $v1, $v0, 16
    /* 7EE3C 8009062C 24186900 */  and        $v1, $v1, $t1
    /* 7EE40 80090630 00120200 */  sll        $v0, $v0, 8
    /* 7EE44 80090634 24104900 */  and        $v0, $v0, $t1
    /* 7EE48 80090638 83250400 */  sra        $a0, $a0, 22
    /* 7EE4C 8009063C 831D0300 */  sra        $v1, $v1, 22
    /* 7EE50 80090640 83150200 */  sra        $v0, $v0, 22
    /* 7EE54 80090644 00488448 */  mtc2       $a0, $9 /* handwritten instruction */
    /* 7EE58 80090648 00508348 */  mtc2       $v1, $10 /* handwritten instruction */
    /* 7EE5C 8009064C 00588248 */  mtc2       $v0, $11 /* handwritten instruction */
    /* 7EE60 80090650 0800C624 */  addiu      $a2, $a2, 0x8
    /* 7EE64 80090654 0800A524 */  addiu      $a1, $a1, 0x8
    /* 7EE68 80090658 1C04384B */  cc
    /* 7EE6C 8009065C 0000C0C8 */  lwc2       $0, 0x0($a2)
    /* 7EE70 80090660 0400C1C8 */  lwc2       $1, 0x4($a2)
    /* 7EE74 80090664 0000AEE8 */  swc2       $14, 0x0($a1)
    /* 7EE78 80090668 00B00248 */  mfc2       $v0, $22 /* handwritten instruction */
    /* 7EE7C 8009066C 0400B3E8 */  swc2       $19, 0x4($a1)
    /* 7EE80 80090670 E8FFE014 */  bnez       $a3, .L80090614
    /* 7EE84 80090674 0600A2A4 */   sh        $v0, 0x6($a1)
  .L80090678:
    /* 7EE88 80090678 3C00828D */  lw         $v0, 0x3C($t4)
    /* 7EE8C 8009067C 00000000 */  nop
    /* 7EE90 80090680 14004E94 */  lhu        $t6, 0x14($v0)
    /* 7EE94 80090684 2000528C */  lw         $s2, 0x20($v0)
    /* 7EE98 80090688 DF410208 */  j          .L8009077C
    /* 7EE9C 8009068C 801F133C */   lui       $s3, (0x1F800006 >> 16)
  .L80090690:
    /* 7EEA0 80090690 5000B98F */  lw         $t9, 0x50($sp)
    /* 7EEA4 80090694 0200C397 */  lhu        $v1, 0x2($fp)
    /* 7EEA8 80090698 0400D916 */  bne        $s6, $t9, .L800906AC
    /* 7EEAC 8009069C 00000000 */   nop
    /* 7EEB0 800906A0 0400C28F */  lw         $v0, 0x4($fp)
    /* 7EEB4 800906A4 00000000 */  nop
    /* 7EEB8 800906A8 4C00528C */  lw         $s2, 0x4C($v0)
  .L800906AC:
    /* 7EEBC 800906AC 001C0300 */  sll        $v1, $v1, 16
    /* 7EEC0 800906B0 031C0300 */  sra        $v1, $v1, 16
    /* 7EEC4 800906B4 0300E282 */  lb         $v0, 0x3($s7)
    /* 7EEC8 800906B8 0000EE86 */  lh         $t6, 0x0($s7)
    /* 7EECC 800906BC 24104300 */  and        $v0, $v0, $v1
    /* 7EED0 800906C0 06004310 */  beq        $v0, $v1, .L800906DC
    /* 7EED4 800906C4 C0100E00 */   sll       $v0, $t6, 3
    /* 7EED8 800906C8 23104E00 */  subu       $v0, $v0, $t6
    /* 7EEDC 800906CC 80100200 */  sll        $v0, $v0, 2
    /* 7EEE0 800906D0 21904202 */  addu       $s2, $s2, $v0
    /* 7EEE4 800906D4 DD410208 */  j          .L80090774
    /* 7EEE8 800906D8 21700000 */   addu      $t6, $zero, $zero
  .L800906DC:
    /* 7EEEC 800906DC 0200E282 */  lb         $v0, 0x2($s7)
    /* 7EEF0 800906E0 3400B88F */  lw         $t8, 0x34($sp)
    /* 7EEF4 800906E4 C0110200 */  sll        $v0, $v0, 7
    /* 7EEF8 800906E8 21105800 */  addu       $v0, $v0, $t8
    /* 7EEFC 800906EC 1000458C */  lw         $a1, 0x10($v0)
    /* 7EF00 800906F0 00000000 */  nop
    /* 7EF04 800906F4 0C00A394 */  lhu        $v1, 0xC($a1)
    /* 7EF08 800906F8 801F013C */  lui        $at, (0x1F8003D2 >> 16)
    /* 7EF0C 800906FC D20320A0 */  sb         $zero, (0x1F8003D2 & 0xFFFF)($at)
    /* 7EF10 80090700 001C0300 */  sll        $v1, $v1, 16
    /* 7EF14 80090704 C3150300 */  sra        $v0, $v1, 23
    /* 7EF18 80090708 40200200 */  sll        $a0, $v0, 1
    /* 7EF1C 8009070C 801F013C */  lui        $at, (0x1F8003D1 >> 16)
    /* 7EF20 80090710 D10322A0 */  sb         $v0, (0x1F8003D1 & 0xFFFF)($at)
    /* 7EF24 80090714 23100200 */  negu       $v0, $v0
    /* 7EF28 80090718 801F013C */  lui        $at, (0x1F8003D3 >> 16)
    /* 7EF2C 8009071C D30322A0 */  sb         $v0, (0x1F8003D3 & 0xFFFF)($at)
    /* 7EF30 80090720 40100200 */  sll        $v0, $v0, 1
    /* 7EF34 80090724 801F013C */  lui        $at, (0x1F8003D0 >> 16)
    /* 7EF38 80090728 D00324A0 */  sb         $a0, (0x1F8003D0 & 0xFFFF)($at)
    /* 7EF3C 8009072C 801F013C */  lui        $at, (0x1F8003D4 >> 16)
    /* 7EF40 80090730 D40322A0 */  sb         $v0, (0x1F8003D4 & 0xFFFF)($at)
    /* 7EF44 80090734 1000A394 */  lhu        $v1, 0x10($a1)
    /* 7EF48 80090738 801F013C */  lui        $at, (0x1F8003D7 >> 16)
    /* 7EF4C 8009073C D70320A0 */  sb         $zero, (0x1F8003D7 & 0xFFFF)($at)
    /* 7EF50 80090740 001C0300 */  sll        $v1, $v1, 16
    /* 7EF54 80090744 C3150300 */  sra        $v0, $v1, 23
    /* 7EF58 80090748 40200200 */  sll        $a0, $v0, 1
    /* 7EF5C 8009074C 801F013C */  lui        $at, (0x1F8003D6 >> 16)
    /* 7EF60 80090750 D60322A0 */  sb         $v0, (0x1F8003D6 & 0xFFFF)($at)
    /* 7EF64 80090754 23100200 */  negu       $v0, $v0
    /* 7EF68 80090758 801F013C */  lui        $at, (0x1F8003D8 >> 16)
    /* 7EF6C 8009075C D80322A0 */  sb         $v0, (0x1F8003D8 & 0xFFFF)($at)
    /* 7EF70 80090760 40100200 */  sll        $v0, $v0, 1
    /* 7EF74 80090764 801F013C */  lui        $at, (0x1F8003D5 >> 16)
    /* 7EF78 80090768 D50324A0 */  sb         $a0, (0x1F8003D5 & 0xFFFF)($at)
    /* 7EF7C 8009076C 801F013C */  lui        $at, (0x1F8003D9 >> 16)
    /* 7EF80 80090770 D90322A0 */  sb         $v0, (0x1F8003D9 & 0xFFFF)($at)
  .L80090774:
    /* 7EF84 80090774 0400F726 */  addiu      $s7, $s7, 0x4
  .L80090778:
    /* 7EF88 80090778 801F133C */  lui        $s3, (0x1F800006 >> 16)
  .L8009077C:
    /* 7EF8C 8009077C B500C011 */  beqz       $t6, .L80090A54
    /* 7EF90 80090780 801F193C */   lui       $t9, (0x1F8003D0 >> 16)
    /* 7EF94 80090784 0007153C */  lui        $s5, (0x7000000 >> 16)
    /* 7EF98 80090788 D0033937 */  ori        $t9, $t9, (0x1F8003D0 & 0xFFFF)
    /* 7EF9C 8009078C 5800B9AF */  sw         $t9, 0x58($sp)
    /* 7EFA0 80090790 801F113C */  lui        $s1, (0x1F8003D5 >> 16)
    /* 7EFA4 80090794 D5033136 */  ori        $s1, $s1, (0x1F8003D5 & 0xFFFF)
    /* 7EFA8 80090798 18005026 */  addiu      $s0, $s2, 0x18
    /* 7EFAC 8009079C 14004D26 */  addiu      $t5, $s2, 0x14
  .L800907A0:
    /* 7EFB0 800907A0 0000438E */  lw         $v1, 0x0($s2)
    /* 7EFB4 800907A4 F0FFA28D */  lw         $v0, -0x10($t5)
    /* 7EFB8 800907A8 FFFF6430 */  andi       $a0, $v1, 0xFFFF
    /* 7EFBC 800907AC 021C0300 */  srl        $v1, $v1, 16
    /* 7EFC0 800907B0 FFFF4530 */  andi       $a1, $v0, 0xFFFF
    /* 7EFC4 800907B4 03440200 */  sra        $t0, $v0, 16
    /* 7EFC8 800907B8 21486402 */  addu       $t1, $s3, $a0
    /* 7EFCC 800907BC 00002CC9 */  lwc2       $12, (0x1F800000 & 0xFFFF)($t1)
    /* 7EFD0 800907C0 21586302 */  addu       $t3, $s3, $v1
    /* 7EFD4 800907C4 00006DC9 */  lwc2       $13, (0x1F800000 & 0xFFFF)($t3)
    /* 7EFD8 800907C8 21606502 */  addu       $t4, $s3, $a1
    /* 7EFDC 800907CC 00008EC9 */  lwc2       $14, (0x1F800000 & 0xFFFF)($t4)
    /* 7EFE0 800907D0 0000028E */  lw         $v0, 0x0($s0)
    /* 7EFE4 800907D4 33000105 */  bgez       $t0, .L800908A4
    /* 7EFE8 800907D8 00044F30 */   andi      $t7, $v0, 0x400
    /* 7EFEC 800907DC 0600404B */  nclip
    /* 7EFF0 800907E0 21304001 */  addu       $a2, $t2, $zero
    /* 7EFF4 800907E4 0200E011 */  beqz       $t7, .L800907F0
    /* 7EFF8 800907E8 21204001 */   addu      $a0, $t2, $zero
    /* 7EFFC 800907EC 20004625 */  addiu      $a2, $t2, 0x20
  .L800907F0:
    /* 7F000 800907F0 801F023C */  lui        $v0, (0x1F8003F8 >> 16)
    /* 7F004 800907F4 F803428C */  lw         $v0, (0x1F8003F8 & 0xFFFF)($v0)
    /* 7F008 800907F8 00000000 */  nop
    /* 7F00C 800907FC 040042AD */  sw         $v0, 0x4($t2)
    /* 7F010 80090800 801F033C */  lui        $v1, (0x1F8003F0 >> 16)
    /* 7F014 80090804 F003638C */  lw         $v1, (0x1F8003F0 & 0xFFFF)($v1)
    /* 7F018 80090808 00000000 */  nop
    /* 7F01C 8009080C 0400C3AC */  sw         $v1, 0x4($a2)
    /* 7F020 80090810 00C00248 */  mfc2       $v0, $24 /* handwritten instruction */
    /* 7F024 80090814 00000000 */  nop
    /* 7F028 80090818 89004018 */  blez       $v0, .L80090A40
    /* 7F02C 8009081C 00000000 */   nop
    /* 7F030 80090820 040031C9 */  lwc2       $17, (0x1F800004 & 0xFFFF)($t1)
    /* 7F034 80090824 040072C9 */  lwc2       $18, (0x1F800004 & 0xFFFF)($t3)
    /* 7F038 80090828 040093C9 */  lwc2       $19, (0x1F800004 & 0xFFFF)($t4)
    /* 7F03C 8009082C 08008CE8 */  swc2       $12, 0x8($a0)
    /* 7F040 80090830 10008DE8 */  swc2       $13, 0x10($a0)
    /* 7F044 80090834 18008EE8 */  swc2       $14, 0x18($a0)
    /* 7F048 80090838 0800CCE8 */  swc2       $12, 0x8($a2)
    /* 7F04C 8009083C 1000CDE8 */  swc2       $13, 0x10($a2)
    /* 7F050 80090840 1800CEE8 */  swc2       $14, 0x18($a2)
    /* 7F054 80090844 2D00584B */  avsz3
    /* 7F058 80090848 000055AD */  sw         $s5, 0x0($t2)
    /* 7F05C 8009084C 0000D5AC */  sw         $s5, 0x0($a2)
    /* 7F060 80090850 06002285 */  lh         $v0, (0x1F800006 & 0xFFFF)($t1)
    /* 7F064 80090854 06006385 */  lh         $v1, (0x1F800006 & 0xFFFF)($t3)
    /* 7F068 80090858 06008485 */  lh         $a0, (0x1F800006 & 0xFFFF)($t4)
    /* 7F06C 8009085C 0C0042A5 */  sh         $v0, 0xC($t2)
    /* 7F070 80090860 140043A5 */  sh         $v1, 0x14($t2)
    /* 7F074 80090864 1C0044A5 */  sh         $a0, 0x1C($t2)
    /* 7F078 80090868 801F053C */  lui        $a1, (0x1F8003EC >> 16)
    /* 7F07C 8009086C EC03A584 */  lh         $a1, (0x1F8003EC & 0xFFFF)($a1)
    /* 7F080 80090870 801F033C */  lui        $v1, (0x1F8003EE >> 16)
    /* 7F084 80090874 EE036384 */  lh         $v1, (0x1F8003EE & 0xFFFF)($v1)
    /* 7F088 80090878 20000824 */  addiu      $t0, $zero, 0x20
    /* 7F08C 8009087C 0E0045A5 */  sh         $a1, 0xE($t2)
    /* 7F090 80090880 160043A5 */  sh         $v1, 0x16($t2)
    /* 7F094 80090884 F8FFA28D */  lw         $v0, -0x8($t5)
    /* 7F098 80090888 FCFFA48D */  lw         $a0, -0x4($t5)
    /* 7F09C 8009088C 4C00B88F */  lw         $t8, 0x4C($sp)
    /* 7F0A0 80090890 0000A395 */  lhu        $v1, 0x0($t5)
    /* 7F0A4 80090894 21105800 */  addu       $v0, $v0, $t8
    /* 7F0A8 80090898 0C00C2AC */  sw         $v0, 0xC($a2)
    /* 7F0AC 8009089C 68420208 */  j          .L800909A0
    /* 7F0B0 800908A0 1400C4AC */   sw        $a0, 0x14($a2)
  .L800908A4:
    /* 7F0B4 800908A4 0600404B */  nclip
    /* 7F0B8 800908A8 21304001 */  addu       $a2, $t2, $zero
    /* 7F0BC 800908AC 0200E011 */  beqz       $t7, .L800908B8
    /* 7F0C0 800908B0 21384001 */   addu      $a3, $t2, $zero
    /* 7F0C4 800908B4 28004625 */  addiu      $a2, $t2, 0x28
  .L800908B8:
    /* 7F0C8 800908B8 0800ECE8 */  swc2       $12, 0x8($a3)
    /* 7F0CC 800908BC 1000EDE8 */  swc2       $13, 0x10($a3)
    /* 7F0D0 800908C0 2000EEE8 */  swc2       $14, 0x20($a3)
    /* 7F0D4 800908C4 0800CCE8 */  swc2       $12, 0x8($a2)
    /* 7F0D8 800908C8 1000CDE8 */  swc2       $13, 0x10($a2)
    /* 7F0DC 800908CC 2000CEE8 */  swc2       $14, 0x20($a2)
    /* 7F0E0 800908D0 00C00248 */  mfc2       $v0, $24 /* handwritten instruction */
    /* 7F0E4 800908D4 21286802 */  addu       $a1, $s3, $t0
    /* 7F0E8 800908D8 0000ADC8 */  lwc2       $13, (0x1F800000 & 0xFFFF)($a1)
    /* 7F0EC 800908DC 00000000 */  nop
    /* 7F0F0 800908E0 00000000 */  nop
    /* 7F0F4 800908E4 0600404B */  nclip
    /* 7F0F8 800908E8 801F033C */  lui        $v1, (0x1F8003FC >> 16)
    /* 7F0FC 800908EC FC03638C */  lw         $v1, (0x1F8003FC & 0xFFFF)($v1)
    /* 7F100 800908F0 00000000 */  nop
    /* 7F104 800908F4 040043AD */  sw         $v1, 0x4($t2)
    /* 7F108 800908F8 801F043C */  lui        $a0, (0x1F8003F4 >> 16)
    /* 7F10C 800908FC F403848C */  lw         $a0, (0x1F8003F4 & 0xFFFF)($a0)
    /* 7F110 80090900 0500401C */  bgtz       $v0, .L80090918
    /* 7F114 80090904 0400C4AC */   sw        $a0, 0x4($a2)
    /* 7F118 80090908 00C00248 */  mfc2       $v0, $24 /* handwritten instruction */
    /* 7F11C 8009090C 00000000 */  nop
    /* 7F120 80090910 4B004104 */  bgez       $v0, .L80090A40
    /* 7F124 80090914 00000000 */   nop
  .L80090918:
    /* 7F128 80090918 040031C9 */  lwc2       $17, (0x1F800004 & 0xFFFF)($t1)
    /* 7F12C 8009091C 040072C9 */  lwc2       $18, (0x1F800004 & 0xFFFF)($t3)
    /* 7F130 80090920 040093C9 */  lwc2       $19, (0x1F800004 & 0xFFFF)($t4)
    /* 7F134 80090924 0400B0C8 */  lwc2       $16, (0x1F800004 & 0xFFFF)($a1)
    /* 7F138 80090928 0009193C */  lui        $t9, (0x9000000 >> 16)
    /* 7F13C 8009092C 000059AD */  sw         $t9, 0x0($t2)
    /* 7F140 80090930 0000D9AC */  sw         $t9, 0x0($a2)
    /* 7F144 80090934 2E00684B */  avsz4
    /* 7F148 80090938 06002285 */  lh         $v0, (0x1F800006 & 0xFFFF)($t1)
    /* 7F14C 8009093C 06006385 */  lh         $v1, (0x1F800006 & 0xFFFF)($t3)
    /* 7F150 80090940 06008485 */  lh         $a0, (0x1F800006 & 0xFFFF)($t4)
    /* 7F154 80090944 0600A584 */  lh         $a1, (0x1F800006 & 0xFFFF)($a1)
    /* 7F158 80090948 0C0042A5 */  sh         $v0, 0xC($t2)
    /* 7F15C 8009094C 140043A5 */  sh         $v1, 0x14($t2)
    /* 7F160 80090950 240044A5 */  sh         $a0, 0x24($t2)
    /* 7F164 80090954 1C0045A5 */  sh         $a1, 0x1C($t2)
    /* 7F168 80090958 1800EDE8 */  swc2       $13, 0x18($a3)
    /* 7F16C 8009095C 1800CDE8 */  swc2       $13, 0x18($a2)
    /* 7F170 80090960 801F033C */  lui        $v1, (0x1F8003EC >> 16)
    /* 7F174 80090964 EC036384 */  lh         $v1, (0x1F8003EC & 0xFFFF)($v1)
    /* 7F178 80090968 801F043C */  lui        $a0, (0x1F8003EE >> 16)
    /* 7F17C 8009096C EE038484 */  lh         $a0, (0x1F8003EE & 0xFFFF)($a0)
    /* 7F180 80090970 0E0043A5 */  sh         $v1, 0xE($t2)
    /* 7F184 80090974 160044A5 */  sh         $a0, 0x16($t2)
    /* 7F188 80090978 F8FFA28D */  lw         $v0, -0x8($t5)
    /* 7F18C 8009097C 4C00B88F */  lw         $t8, 0x4C($sp)
    /* 7F190 80090980 FCFFA58D */  lw         $a1, -0x4($t5)
    /* 7F194 80090984 21105800 */  addu       $v0, $v0, $t8
    /* 7F198 80090988 0C00C2AC */  sw         $v0, 0xC($a2)
    /* 7F19C 8009098C 1400C5AC */  sw         $a1, 0x14($a2)
    /* 7F1A0 80090990 0000A38D */  lw         $v1, 0x0($t5)
    /* 7F1A4 80090994 28000824 */  addiu      $t0, $zero, 0x28
    /* 7F1A8 80090998 2400C3A4 */  sh         $v1, 0x24($a2)
    /* 7F1AC 8009099C 021C0300 */  srl        $v1, $v1, 16
  .L800909A0:
    /* 7F1B0 800909A0 1C00C3A4 */  sh         $v1, 0x1C($a2)
    /* 7F1B4 800909A4 0000048E */  lw         $a0, 0x0($s0)
    /* 7F1B8 800909A8 00380748 */  mfc2       $a3, $7 /* handwritten instruction */
    /* 7F1BC 800909AC 83150400 */  sra        $v0, $a0, 22
    /* 7F1C0 800909B0 07004230 */  andi       $v0, $v0, 0x7
    /* 7F1C4 800909B4 21102202 */  addu       $v0, $s1, $v0
    /* 7F1C8 800909B8 00C0183C */  lui        $t8, (0xC0000000 >> 16)
    /* 7F1CC 800909BC 5800B98F */  lw         $t9, 0x58($sp)
    /* 7F1D0 800909C0 00004680 */  lb         $a2, 0x0($v0)
    /* 7F1D4 800909C4 2000A28F */  lw         $v0, 0x20($sp)
    /* 7F1D8 800909C8 831B0400 */  sra        $v1, $a0, 14
    /* 7F1DC 800909CC 07006330 */  andi       $v1, $v1, 0x7
    /* 7F1E0 800909D0 21182303 */  addu       $v1, $t9, $v1
    /* 7F1E4 800909D4 C0240400 */  sll        $a0, $a0, 19
    /* 7F1E8 800909D8 24209800 */  and        $a0, $a0, $t8
    /* 7F1EC 800909DC C3260400 */  sra        $a0, $a0, 27
    /* 7F1F0 800909E0 00006580 */  lb         $a1, 0x0($v1)
    /* 7F1F4 800909E4 4400B98F */  lw         $t9, 0x44($sp)
    /* 7F1F8 800909E8 2138E500 */  addu       $a3, $a3, $a1
    /* 7F1FC 800909EC 2138E600 */  addu       $a3, $a3, $a2
    /* 7F200 800909F0 2118E400 */  addu       $v1, $a3, $a0
    /* 7F204 800909F4 23106200 */  subu       $v0, $v1, $v0
    /* 7F208 800909F8 FF014330 */  andi       $v1, $v0, 0x1FF
    /* 7F20C 800909FC 80180300 */  sll        $v1, $v1, 2
    /* 7F210 80090A00 21182303 */  addu       $v1, $t9, $v1
    /* 7F214 80090A04 02006488 */  lwl        $a0, 0x2($v1)
    /* 7F218 80090A08 00120A00 */  sll        $v0, $t2, 8
    /* 7F21C 80090A0C 020044A9 */  swl        $a0, 0x2($t2)
    /* 7F220 80090A10 020062A8 */  swl        $v0, 0x2($v1)
    /* 7F224 80090A14 0600E011 */  beqz       $t7, .L80090A30
    /* 7F228 80090A18 21504801 */   addu      $t2, $t2, $t0
    /* 7F22C 80090A1C 02007888 */  lwl        $t8, 0x2($v1)
    /* 7F230 80090A20 00120A00 */  sll        $v0, $t2, 8
    /* 7F234 80090A24 020058A9 */  swl        $t8, 0x2($t2)
    /* 7F238 80090A28 020062A8 */  swl        $v0, 0x2($v1)
    /* 7F23C 80090A2C 21504801 */  addu       $t2, $t2, $t0
  .L80090A30:
    /* 7F240 80090A30 4800B98F */  lw         $t9, 0x48($sp)
    /* 7F244 80090A34 00000000 */  nop
    /* 7F248 80090A38 01003927 */  addiu      $t9, $t9, 0x1
    /* 7F24C 80090A3C 4800B9AF */  sw         $t9, 0x48($sp)
  .L80090A40:
    /* 7F250 80090A40 1C00AD25 */  addiu      $t5, $t5, 0x1C
    /* 7F254 80090A44 1C001026 */  addiu      $s0, $s0, 0x1C
    /* 7F258 80090A48 FFFFCE25 */  addiu      $t6, $t6, -0x1
    /* 7F25C 80090A4C 54FFC015 */  bnez       $t6, .L800907A0
    /* 7F260 80090A50 1C005226 */   addiu     $s2, $s2, 0x1C
  .L80090A54:
    /* 7F264 80090A54 FFFFD626 */  addiu      $s6, $s6, -0x1
    /* 7F268 80090A58 DDFDC106 */  bgez       $s6, .L800901D0
    /* 7F26C 80090A5C 00000000 */   nop
  .L80090A60:
    /* 7F270 80090A60 4800B88F */  lw         $t8, 0x48($sp)
    /* 7F274 80090A64 0D80013C */  lui        $at, %hi(D_800C8C70)
    /* 7F278 80090A68 708C2AAC */  sw         $t2, %lo(D_800C8C70)($at)
    /* 7F27C 80090A6C 3600D8A7 */  sh         $t8, 0x36($fp)
    /* 7F280 80090A70 2C00B98F */  lw         $t9, 0x2C($sp)
    /* 7F284 80090A74 00000000 */  nop
    /* 7F288 80090A78 00E8D948 */  ctc2       $t9, $29 /* handwritten instruction */
    /* 7F28C 80090A7C 3000B88F */  lw         $t8, 0x30($sp)
    /* 7F290 80090A80 00000000 */  nop
    /* 7F294 80090A84 00F0D848 */  ctc2       $t8, $30 /* handwritten instruction */
    /* 7F298 80090A88 8400BF8F */  lw         $ra, 0x84($sp)
    /* 7F29C 80090A8C 8000BE8F */  lw         $fp, 0x80($sp)
    /* 7F2A0 80090A90 7C00B78F */  lw         $s7, 0x7C($sp)
    /* 7F2A4 80090A94 7800B68F */  lw         $s6, 0x78($sp)
    /* 7F2A8 80090A98 7400B58F */  lw         $s5, 0x74($sp)
    /* 7F2AC 80090A9C 7000B48F */  lw         $s4, 0x70($sp)
    /* 7F2B0 80090AA0 6C00B38F */  lw         $s3, 0x6C($sp)
    /* 7F2B4 80090AA4 6800B28F */  lw         $s2, 0x68($sp)
    /* 7F2B8 80090AA8 6400B18F */  lw         $s1, 0x64($sp)
    /* 7F2BC 80090AAC 6000B08F */  lw         $s0, 0x60($sp)
    /* 7F2C0 80090AB0 0800E003 */  jr         $ra
    /* 7F2C4 80090AB4 8800BD27 */   addiu     $sp, $sp, 0x88
endlabel func_8008FD74
