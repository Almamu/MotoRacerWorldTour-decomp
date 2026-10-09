/* Handwritten function */
nonmatching func_8008E70C, 0xC5C

glabel func_8008E70C
    /* 7CF1C 8008E70C 80FFBD27 */  addiu      $sp, $sp, -0x80
    /* 7CF20 8008E710 7C00BFAF */  sw         $ra, 0x7C($sp)
    /* 7CF24 8008E714 7800BEAF */  sw         $fp, 0x78($sp)
    /* 7CF28 8008E718 7400B7AF */  sw         $s7, 0x74($sp)
    /* 7CF2C 8008E71C 7000B6AF */  sw         $s6, 0x70($sp)
    /* 7CF30 8008E720 6C00B5AF */  sw         $s5, 0x6C($sp)
    /* 7CF34 8008E724 6800B4AF */  sw         $s4, 0x68($sp)
    /* 7CF38 8008E728 6400B3AF */  sw         $s3, 0x64($sp)
    /* 7CF3C 8008E72C 6000B2AF */  sw         $s2, 0x60($sp)
    /* 7CF40 8008E730 5C00B1AF */  sw         $s1, 0x5C($sp)
    /* 7CF44 8008E734 5800B0AF */  sw         $s0, 0x58($sp)
    /* 7CF48 8008E738 8000A4AF */  sw         $a0, 0x80($sp)
    /* 7CF4C 8008E73C 00E85748 */  cfc2       $s7, $29 /* handwritten instruction */
    /* 7CF50 8008E740 00000000 */  nop
    /* 7CF54 8008E744 2800B7AF */  sw         $s7, 0x28($sp)
    /* 7CF58 8008E748 00F05948 */  cfc2       $t9, $30 /* handwritten instruction */
    /* 7CF5C 8008E74C 21B80000 */  addu       $s7, $zero, $zero
    /* 7CF60 8008E750 2C00B9AF */  sw         $t9, 0x2C($sp)
    /* 7CF64 8008E754 00D8D748 */  ctc2       $s7, $27 /* handwritten instruction */
    /* 7CF68 8008E758 21C80000 */  addu       $t9, $zero, $zero
    /* 7CF6C 8008E75C 00E0D948 */  ctc2       $t9, $28 /* handwritten instruction */
    /* 7CF70 8008E760 0500A014 */  bnez       $a1, .L8008E778
    /* 7CF74 8008E764 00000000 */   nop
    /* 7CF78 8008E768 0D80023C */  lui        $v0, %hi(D_800C8864)
    /* 7CF7C 8008E76C 6488428C */  lw         $v0, %lo(D_800C8864)($v0)
    /* 7CF80 8008E770 00000000 */  nop
    /* 7CF84 8008E774 40004524 */  addiu      $a1, $v0, 0x40
  .L8008E778:
    /* 7CF88 8008E778 0000A28C */  lw         $v0, 0x0($a1)
    /* 7CF8C 8008E77C 0400A38C */  lw         $v1, 0x4($a1)
    /* 7CF90 8008E780 0040C248 */  ctc2       $v0, $8 /* handwritten instruction */
    /* 7CF94 8008E784 0048C348 */  ctc2       $v1, $9 /* handwritten instruction */
    /* 7CF98 8008E788 0800A28C */  lw         $v0, 0x8($a1)
    /* 7CF9C 8008E78C 0C00A38C */  lw         $v1, 0xC($a1)
    /* 7CFA0 8008E790 0050C248 */  ctc2       $v0, $10 /* handwritten instruction */
    /* 7CFA4 8008E794 1000A28C */  lw         $v0, 0x10($a1)
    /* 7CFA8 8008E798 0058C348 */  ctc2       $v1, $11 /* handwritten instruction */
    /* 7CFAC 8008E79C 0060C248 */  ctc2       $v0, $12 /* handwritten instruction */
    /* 7CFB0 8008E7A0 1400B78C */  lw         $s7, 0x14($a1)
    /* 7CFB4 8008E7A4 00000000 */  nop
    /* 7CFB8 8008E7A8 0068D748 */  ctc2       $s7, $13 /* handwritten instruction */
    /* 7CFBC 8008E7AC 1800B98C */  lw         $t9, 0x18($a1)
    /* 7CFC0 8008E7B0 00000000 */  nop
    /* 7CFC4 8008E7B4 0070D948 */  ctc2       $t9, $14 /* handwritten instruction */
    /* 7CFC8 8008E7B8 1C00A58C */  lw         $a1, 0x1C($a1)
    /* 7CFCC 8008E7BC 00000000 */  nop
    /* 7CFD0 8008E7C0 0078C548 */  ctc2       $a1, $15 /* handwritten instruction */
    /* 7CFD4 8008E7C4 8000B78F */  lw         $s7, 0x80($sp)
    /* 7CFD8 8008E7C8 00000000 */  nop
    /* 7CFDC 8008E7CC 0400E38E */  lw         $v1, 0x4($s7)
    /* 7CFE0 8008E7D0 0000F482 */  lb         $s4, 0x0($s7)
    /* 7CFE4 8008E7D4 2400798C */  lw         $t9, 0x24($v1)
    /* 7CFE8 8008E7D8 00100524 */  addiu      $a1, $zero, 0x1000
    /* 7CFEC 8008E7DC 3400B9AF */  sw         $t9, 0x34($sp)
    /* 7CFF0 8008E7E0 1C006284 */  lh         $v0, 0x1C($v1)
    /* 7CFF4 8008E7E4 00002783 */  lb         $a3, 0x0($t9)
    /* 7CFF8 8008E7E8 0800F78E */  lw         $s7, 0x8($s7)
    /* 7CFFC 8008E7EC 8000B98F */  lw         $t9, 0x80($sp)
    /* 7D000 8008E7F0 04284500 */  sllv       $a1, $a1, $v0
    /* 7D004 8008E7F4 C0390700 */  sll        $a3, $a3, 7
    /* 7D008 8008E7F8 2138F700 */  addu       $a3, $a3, $s7
    /* 7D00C 8008E7FC 3000B7AF */  sw         $s7, 0x30($sp)
    /* 7D010 8008E800 99111724 */  addiu      $s7, $zero, 0x1199
    /* 7D014 8008E804 24002887 */  lh         $t0, 0x24($t9)
    /* 7D018 8008E808 0C001924 */  addiu      $t9, $zero, 0xC
    /* 7D01C 8008E80C 1400758C */  lw         $s5, 0x14($v1)
    /* 7D020 8008E810 0C00738C */  lw         $s3, 0xC($v1)
    /* 7D024 8008E814 2000638C */  lw         $v1, 0x20($v1)
    /* 7D028 8008E818 23400800 */  negu       $t0, $t0
    /* 7D02C 8008E81C 18007700 */  mult       $v1, $s7
    /* 7D030 8008E820 20000434 */  ori        $a0, $zero, 0x20
    /* 7D034 8008E824 22209900 */  sub        $a0, $a0, $t9 /* handwritten instruction */
    /* 7D038 8008E828 10480000 */  mfhi       $t1
    /* 7D03C 8008E82C 04488900 */  sllv       $t1, $t1, $a0
    /* 7D040 8008E830 12200000 */  mflo       $a0
    /* 7D044 8008E834 06202403 */  srlv       $a0, $a0, $t9
    /* 7D048 8008E838 25482401 */  or         $t1, $t1, $a0
    /* 7D04C 8008E83C 0D80023C */  lui        $v0, %hi(D_800C8864)
    /* 7D050 8008E840 6488428C */  lw         $v0, %lo(D_800C8864)($v0)
    /* 7D054 8008E844 00000000 */  nop
    /* 7D058 8008E848 3C01468C */  lw         $a2, 0x13C($v0)
    /* 7D05C 8008E84C 2150A000 */  addu       $t2, $a1, $zero
    /* 7D060 8008E850 1400C48C */  lw         $a0, 0x14($a2)
    /* 7D064 8008E854 03120A00 */  sra        $v0, $t2, 8
    /* 7D068 8008E858 18004400 */  mult       $v0, $a0
    /* 7D06C 8008E85C 1C00C38C */  lw         $v1, 0x1C($a2)
    /* 7D070 8008E860 00000000 */  nop
    /* 7D074 8008E864 001C0300 */  sll        $v1, $v1, 16
    /* 7D078 8008E868 12100000 */  mflo       $v0
    /* 7D07C 8008E86C 40280200 */  sll        $a1, $v0, 1
    /* 7D080 8008E870 2128A200 */  addu       $a1, $a1, $v0
    /* 7D084 8008E874 1A006500 */  div        $zero, $v1, $a1
    /* 7D088 8008E878 12280000 */  mflo       $a1
    /* 7D08C 8008E87C 1000B127 */  addiu      $s1, $sp, 0x10
    /* 7D090 8008E880 F0FF0825 */  addiu      $t0, $t0, -0x10
    /* 7D094 8008E884 80100200 */  sll        $v0, $v0, 2
    /* 7D098 8008E888 1A006200 */  div        $zero, $v1, $v0
    /* 7D09C 8008E88C 12180000 */  mflo       $v1
    /* 7D0A0 8008E890 1000E48C */  lw         $a0, 0x10($a3)
    /* 7D0A4 8008E894 00E8C548 */  ctc2       $a1, $29 /* handwritten instruction */
    /* 7D0A8 8008E898 00F0C348 */  ctc2       $v1, $30 /* handwritten instruction */
    /* 7D0AC 8008E89C 0000828C */  lw         $v0, 0x0($a0)
    /* 7D0B0 8008E8A0 0400838C */  lw         $v1, 0x4($a0)
    /* 7D0B4 8008E8A4 0000C248 */  ctc2       $v0, $0 /* handwritten instruction */
    /* 7D0B8 8008E8A8 0008C348 */  ctc2       $v1, $1 /* handwritten instruction */
    /* 7D0BC 8008E8AC 0800828C */  lw         $v0, 0x8($a0)
    /* 7D0C0 8008E8B0 0C00838C */  lw         $v1, 0xC($a0)
    /* 7D0C4 8008E8B4 0010C248 */  ctc2       $v0, $2 /* handwritten instruction */
    /* 7D0C8 8008E8B8 1000828C */  lw         $v0, 0x10($a0)
    /* 7D0CC 8008E8BC 0018C348 */  ctc2       $v1, $3 /* handwritten instruction */
    /* 7D0D0 8008E8C0 0020C248 */  ctc2       $v0, $4 /* handwritten instruction */
    /* 7D0D4 8008E8C4 1400838C */  lw         $v1, 0x14($a0)
    /* 7D0D8 8008E8C8 1800828C */  lw         $v0, 0x18($a0)
    /* 7D0DC 8008E8CC 0028C348 */  ctc2       $v1, $5 /* handwritten instruction */
    /* 7D0E0 8008E8D0 1C00838C */  lw         $v1, 0x1C($a0)
    /* 7D0E4 8008E8D4 0030C248 */  ctc2       $v0, $6 /* handwritten instruction */
    /* 7D0E8 8008E8D8 0038C348 */  ctc2       $v1, $7 /* handwritten instruction */
    /* 7D0EC 8008E8DC 21B80000 */  addu       $s7, $zero, $zero
    /* 7D0F0 8008E8E0 00009748 */  mtc2       $s7, $0 /* handwritten instruction */
    /* 7D0F4 8008E8E4 21C80000 */  addu       $t9, $zero, $zero
    /* 7D0F8 8008E8E8 00089948 */  mtc2       $t9, $1 /* handwritten instruction */
    /* 7D0FC 8008E8EC 00000000 */  nop
    /* 7D100 8008E8F0 00000000 */  nop
    /* 7D104 8008E8F4 0100184A */  rtps
    /* 7D108 8008E8F8 00981048 */  mfc2       $s0, $19 /* handwritten instruction */
    /* 7D10C 8008E8FC 00000000 */  nop
    /* 7D110 8008E900 00889048 */  mtc2       $s0, $17 /* handwritten instruction */
    /* 7D114 8008E904 00909048 */  mtc2       $s0, $18 /* handwritten instruction */
    /* 7D118 8008E908 00000000 */  nop
    /* 7D11C 8008E90C 00000000 */  nop
    /* 7D120 8008E910 2D00584B */  avsz3
    /* 7D124 8008E914 00380248 */  mfc2       $v0, $7 /* handwritten instruction */
    /* 7D128 8008E918 00000000 */  nop
    /* 7D12C 8008E91C 21204800 */  addu       $a0, $v0, $t0
    /* 7D130 8008E920 41FF8328 */  slti       $v1, $a0, -0xBF
    /* 7D134 8008E924 05006014 */  bnez       $v1, .L8008E93C
    /* 7D138 8008E928 41FF1224 */   addiu     $s2, $zero, -0xBF
    /* 7D13C 8008E92C FB078228 */  slti       $v0, $a0, 0x7FB
    /* 7D140 8008E930 02004010 */  beqz       $v0, .L8008E93C
    /* 7D144 8008E934 FA071224 */   addiu     $s2, $zero, 0x7FA
    /* 7D148 8008E938 21908000 */  addu       $s2, $a0, $zero
  .L8008E93C:
    /* 7D14C 8008E93C 18001724 */  addiu      $s7, $zero, 0x18
    /* 7D150 8008E940 18002A01 */  mult       $t1, $t2
    /* 7D154 8008E944 20000234 */  ori        $v0, $zero, 0x20
    /* 7D158 8008E948 22105700 */  sub        $v0, $v0, $s7 /* handwritten instruction */
    /* 7D15C 8008E94C 10380000 */  mfhi       $a3
    /* 7D160 8008E950 04384700 */  sllv       $a3, $a3, $v0
    /* 7D164 8008E954 12100000 */  mflo       $v0
    /* 7D168 8008E958 0610E202 */  srlv       $v0, $v0, $s7
    /* 7D16C 8008E95C 2538E200 */  or         $a3, $a3, $v0
    /* 7D170 8008E960 1000043C */  lui        $a0, (0x100000 >> 16)
    /* 7D174 8008E964 40180700 */  sll        $v1, $a3, 1
    /* 7D178 8008E968 1A008300 */  div        $zero, $a0, $v1
    /* 7D17C 8008E96C 12300000 */  mflo       $a2
    /* 7D180 8008E970 FF07023C */  lui        $v0, (0x7FFF000 >> 16)
    /* 7D184 8008E974 00F04234 */  ori        $v0, $v0, (0x7FFF000 & 0xFFFF)
    /* 7D188 8008E978 21180702 */  addu       $v1, $s0, $a3
    /* 7D18C 8008E97C 1A004300 */  div        $zero, $v0, $v1
    /* 7D190 8008E980 12100000 */  mflo       $v0
    /* 7D194 8008E984 00000000 */  nop
    /* 7D198 8008E988 2A20C200 */  slt        $a0, $a2, $v0
    /* 7D19C 8008E98C 02008010 */  beqz       $a0, .L8008E998
    /* 7D1A0 8008E990 00000000 */   nop
    /* 7D1A4 8008E994 2110C000 */  addu       $v0, $a2, $zero
  .L8008E998:
    /* 7D1A8 8008E998 21304000 */  addu       $a2, $v0, $zero
    /* 7D1AC 8008E99C 5555023C */  lui        $v0, (0x55555556 >> 16)
    /* 7D1B0 8008E9A0 56554234 */  ori        $v0, $v0, (0x55555556 & 0xFFFF)
    /* 7D1B4 8008E9A4 1800C200 */  mult       $a2, $v0
    /* 7D1B8 8008E9A8 2120C000 */  addu       $a0, $a2, $zero
    /* 7D1BC 8008E9AC C31F0600 */  sra        $v1, $a2, 31
    /* 7D1C0 8008E9B0 10100000 */  mfhi       $v0
    /* 7D1C4 8008E9B4 0200C104 */  bgez       $a2, .L8008E9C0
    /* 7D1C8 8008E9B8 23184300 */   subu      $v1, $v0, $v1
    /* 7D1CC 8008E9BC 0300C424 */  addiu      $a0, $a2, 0x3
  .L8008E9C0:
    /* 7D1D0 8008E9C0 83100400 */  sra        $v0, $a0, 2
    /* 7D1D4 8008E9C4 00E8C348 */  ctc2       $v1, $29 /* handwritten instruction */
    /* 7D1D8 8008E9C8 00F0C248 */  ctc2       $v0, $30 /* handwritten instruction */
    /* 7D1DC 8008E9CC 23800702 */  subu       $s0, $s0, $a3
    /* 7D1E0 8008E9D0 18000602 */  mult       $s0, $a2
    /* 7D1E4 8008E9D4 00010224 */  addiu      $v0, $zero, 0x100
    /* 7D1E8 8008E9D8 80000324 */  addiu      $v1, $zero, 0x80
    /* 7D1EC 8008E9DC 0D80043C */  lui        $a0, %hi(D_800C8C70)
    /* 7D1F0 8008E9E0 708C848C */  lw         $a0, %lo(D_800C8C70)($a0)
    /* 7D1F4 8008E9E4 00020524 */  addiu      $a1, $zero, 0x200
    /* 7D1F8 8008E9E8 080022AE */  sw         $v0, 0x8($s1)
    /* 7D1FC 8008E9EC 0C0023AE */  sw         $v1, 0xC($s1)
    /* 7D200 8008E9F0 00088224 */  addiu      $v0, $a0, 0x800
    /* 7D204 8008E9F4 000024AE */  sw         $a0, 0x0($s1)
    /* 7D208 8008E9F8 0D80013C */  lui        $at, %hi(D_800C8C70)
    /* 7D20C 8008E9FC 708C22AC */  sw         $v0, %lo(D_800C8C70)($at)
    /* 7D210 8008EA00 12800000 */  mflo       $s0
    /* 7D214 8008EA04 72B0020C */  jal        ClearOTagR
    /* 7D218 8008EA08 03831000 */   sra       $s0, $s0, 12
    /* 7D21C 8008EA0C FF00063C */  lui        $a2, (0xFFFFFF >> 16)
    /* 7D220 8008EA10 80101200 */  sll        $v0, $s2, 2
    /* 7D224 8008EA14 0D80043C */  lui        $a0, %hi(D_800CBDC0)
    /* 7D228 8008EA18 C0BD848C */  lw         $a0, %lo(D_800CBDC0)($a0)
    /* 7D22C 8008EA1C 0000258E */  lw         $a1, 0x0($s1)
    /* 7D230 8008EA20 21208200 */  addu       $a0, $a0, $v0
    /* 7D234 8008EA24 0000838C */  lw         $v1, 0x0($a0)
    /* 7D238 8008EA28 FFFFC634 */  ori        $a2, $a2, (0xFFFFFF & 0xFFFF)
    /* 7D23C 8008EA2C 0000A3AC */  sw         $v1, 0x0($a1)
    /* 7D240 8008EA30 0000228E */  lw         $v0, 0x0($s1)
    /* 7D244 8008EA34 8000B78F */  lw         $s7, 0x80($sp)
    /* 7D248 8008EA38 FC074224 */  addiu      $v0, $v0, 0x7FC
    /* 7D24C 8008EA3C 24104600 */  and        $v0, $v0, $a2
    /* 7D250 8008EA40 000082AC */  sw         $v0, 0x0($a0)
    /* 7D254 8008EA44 0D800B3C */  lui        $t3, %hi(D_800C8C70)
    /* 7D258 8008EA48 708C6B8D */  lw         $t3, %lo(D_800C8C70)($t3)
    /* 7D25C 8008EA4C 0000258E */  lw         $a1, 0x0($s1)
    /* 7D260 8008EA50 80FF1026 */  addiu      $s0, $s0, -0x80
    /* 7D264 8008EA54 100030AE */  sw         $s0, 0x10($s1)
    /* 7D268 8008EA58 040025AE */  sw         $a1, 0x4($s1)
    /* 7D26C 8008EA5C 2700E282 */  lb         $v0, 0x27($s7)
    /* 7D270 8008EA60 0D80033C */  lui        $v1, %hi(D_800CBDC4)
    /* 7D274 8008EA64 C4BD638C */  lw         $v1, %lo(D_800CBDC4)($v1)
    /* 7D278 8008EA68 1400B98F */  lw         $t9, 0x14($sp)
    /* 7D27C 8008EA6C 00160200 */  sll        $v0, $v0, 24
    /* 7D280 8008EA70 4000A2AF */  sw         $v0, 0x40($sp)
    /* 7D284 8008EA74 0400768C */  lw         $s6, 0x4($v1)
    /* 7D288 8008EA78 3800B9AF */  sw         $t9, 0x38($sp)
    /* 7D28C 8008EA7C 2800F78E */  lw         $s7, 0x28($s7)
    /* 7D290 8008EA80 21C00000 */  addu       $t8, $zero, $zero
    /* 7D294 8008EA84 8F018012 */  beqz       $s4, .L8008F0C4
    /* 7D298 8008EA88 3C00B7AF */   sw        $s7, 0x3C($sp)
  .L8008EA8C:
    /* 7D29C 8008EA8C 3400B98F */  lw         $t9, 0x34($sp)
    /* 7D2A0 8008EA90 00000000 */  nop
    /* 7D2A4 8008EA94 00002283 */  lb         $v0, 0x0($t9)
    /* 7D2A8 8008EA98 3000B78F */  lw         $s7, 0x30($sp)
    /* 7D2AC 8008EA9C C0110200 */  sll        $v0, $v0, 7
    /* 7D2B0 8008EAA0 2110E202 */  addu       $v0, $s7, $v0
    /* 7D2B4 8008EAA4 5000A2AF */  sw         $v0, 0x50($sp)
    /* 7D2B8 8008EAA8 36004494 */  lhu        $a0, 0x36($v0)
    /* 7D2BC 8008EAAC 01003927 */  addiu      $t9, $t9, 0x1
    /* 7D2C0 8008EAB0 30008230 */  andi       $v0, $a0, 0x30
    /* 7D2C4 8008EAB4 80014014 */  bnez       $v0, .L8008F0B8
    /* 7D2C8 8008EAB8 3400B9AF */   sw        $t9, 0x34($sp)
    /* 7D2CC 8008EABC 8000B98F */  lw         $t9, 0x80($sp)
    /* 7D2D0 8008EAC0 00000000 */  nop
    /* 7D2D4 8008EAC4 02002397 */  lhu        $v1, 0x2($t9)
    /* 7D2D8 8008EAC8 00000000 */  nop
    /* 7D2DC 8008EACC 24108300 */  and        $v0, $a0, $v1
    /* 7D2E0 8008EAD0 79014314 */  bne        $v0, $v1, .L8008F0B8
    /* 7D2E4 8008EAD4 00000000 */   nop
    /* 7D2E8 8008EAD8 5000B78F */  lw         $s7, 0x50($sp)
    /* 7D2EC 8008EADC 00000000 */  nop
    /* 7D2F0 8008EAE0 1000E68E */  lw         $a2, 0x10($s7)
    /* 7D2F4 8008EAE4 00000000 */  nop
    /* 7D2F8 8008EAE8 0000C78C */  lw         $a3, 0x0($a2)
    /* 7D2FC 8008EAEC 0400C98C */  lw         $t1, 0x4($a2)
    /* 7D300 8008EAF0 0C00CA8C */  lw         $t2, 0xC($a2)
    /* 7D304 8008EAF4 00488748 */  mtc2       $a3, $9 /* handwritten instruction */
    /* 7D308 8008EAF8 03140900 */  sra        $v0, $t1, 16
    /* 7D30C 8008EAFC 00508248 */  mtc2       $v0, $10 /* handwritten instruction */
    /* 7D310 8008EB00 00588A48 */  mtc2       $t2, $11 /* handwritten instruction */
    /* 7D314 8008EB04 023C0700 */  srl        $a3, $a3, 16
    /* 7D318 8008EB08 02540A00 */  srl        $t2, $t2, 16
    /* 7D31C 8008EB0C 12E04B4A */  mvmva      1, 1, 3, 3, 0
    /* 7D320 8008EB10 0800C88C */  lw         $t0, 0x8($a2)
    /* 7D324 8008EB14 00088A48 */  mtc2       $t2, $1 /* handwritten instruction */
    /* 7D328 8008EB18 00140800 */  sll        $v0, $t0, 16
    /* 7D32C 8008EB1C 2538E200 */  or         $a3, $a3, $v0
    /* 7D330 8008EB20 00008748 */  mtc2       $a3, $0 /* handwritten instruction */
    /* 7D334 8008EB24 00480748 */  mfc2       $a3, $9 /* handwritten instruction */
    /* 7D338 8008EB28 00500A48 */  mfc2       $t2, $10 /* handwritten instruction */
    /* 7D33C 8008EB2C 00580548 */  mfc2       $a1, $11 /* handwritten instruction */
    /* 7D340 8008EB30 12604A4A */  mvmva      1, 1, 0, 3, 0
    /* 7D344 8008EB34 FFFF2331 */  andi       $v1, $t1, 0xFFFF
    /* 7D348 8008EB38 FFFF193C */  lui        $t9, (0xFFFF0000 >> 16)
    /* 7D34C 8008EB3C 24101901 */  and        $v0, $t0, $t9
    /* 7D350 8008EB40 25406200 */  or         $t0, $v1, $v0
    /* 7D354 8008EB44 00108848 */  mtc2       $t0, $2 /* handwritten instruction */
    /* 7D358 8008EB48 1000C3C8 */  lwc2       $3, 0x10($a2)
    /* 7D35C 8008EB4C 00480948 */  mfc2       $t1, $9 /* handwritten instruction */
    /* 7D360 8008EB50 00500848 */  mfc2       $t0, $10 /* handwritten instruction */
    /* 7D364 8008EB54 00580448 */  mfc2       $a0, $11 /* handwritten instruction */
    /* 7D368 8008EB58 12E04A4A */  mvmva      1, 1, 1, 3, 0
    /* 7D36C 8008EB5C FFFFE230 */  andi       $v0, $a3, 0xFFFF
    /* 7D370 8008EB60 001C0900 */  sll        $v1, $t1, 16
    /* 7D374 8008EB64 25104300 */  or         $v0, $v0, $v1
    /* 7D378 8008EB68 0000C248 */  ctc2       $v0, $0 /* handwritten instruction */
    /* 7D37C 8008EB6C FFFFA530 */  andi       $a1, $a1, 0xFFFF
    /* 7D380 8008EB70 00240400 */  sll        $a0, $a0, 16
    /* 7D384 8008EB74 2528A400 */  or         $a1, $a1, $a0
    /* 7D388 8008EB78 0018C548 */  ctc2       $a1, $3 /* handwritten instruction */
    /* 7D38C 8008EB7C 00480748 */  mfc2       $a3, $9 /* handwritten instruction */
    /* 7D390 8008EB80 00500948 */  mfc2       $t1, $10 /* handwritten instruction */
    /* 7D394 8008EB84 FFFFE230 */  andi       $v0, $a3, 0xFFFF
    /* 7D398 8008EB88 001C0A00 */  sll        $v1, $t2, 16
    /* 7D39C 8008EB8C 25104300 */  or         $v0, $v0, $v1
    /* 7D3A0 8008EB90 0008C248 */  ctc2       $v0, $1 /* handwritten instruction */
    /* 7D3A4 8008EB94 00580748 */  mfc2       $a3, $11 /* handwritten instruction */
    /* 7D3A8 8008EB98 FFFF0331 */  andi       $v1, $t0, 0xFFFF
    /* 7D3AC 8008EB9C 00140900 */  sll        $v0, $t1, 16
    /* 7D3B0 8008EBA0 25186200 */  or         $v1, $v1, $v0
    /* 7D3B4 8008EBA4 0010C348 */  ctc2       $v1, $2 /* handwritten instruction */
    /* 7D3B8 8008EBA8 0020C748 */  ctc2       $a3, $4 /* handwritten instruction */
    /* 7D3BC 8008EBAC 1400C58C */  lw         $a1, 0x14($a2)
    /* 7D3C0 8008EBB0 1400C624 */  addiu      $a2, $a2, 0x14
    /* 7D3C4 8008EBB4 0400C48C */  lw         $a0, 0x4($a2)
    /* 7D3C8 8008EBB8 0800C68C */  lw         $a2, 0x8($a2)
    /* 7D3CC 8008EBBC 0700A104 */  bgez       $a1, .L8008EBDC
    /* 7D3D0 8008EBC0 C3430500 */   sra       $t0, $a1, 15
    /* 7D3D4 8008EBC4 23280500 */  negu       $a1, $a1
    /* 7D3D8 8008EBC8 C3130500 */  sra        $v0, $a1, 15
    /* 7D3DC 8008EBCC 23400200 */  negu       $t0, $v0
    /* 7D3E0 8008EBD0 FF7FA330 */  andi       $v1, $a1, 0x7FFF
    /* 7D3E4 8008EBD4 F83A0208 */  j          .L8008EBE0
    /* 7D3E8 8008EBD8 23280300 */   negu      $a1, $v1
  .L8008EBDC:
    /* 7D3EC 8008EBDC FF7FA530 */  andi       $a1, $a1, 0x7FFF
  .L8008EBE0:
    /* 7D3F0 8008EBE0 07008104 */  bgez       $a0, .L8008EC00
    /* 7D3F4 8008EBE4 C33B0400 */   sra       $a3, $a0, 15
    /* 7D3F8 8008EBE8 23200400 */  negu       $a0, $a0
    /* 7D3FC 8008EBEC C3130400 */  sra        $v0, $a0, 15
    /* 7D400 8008EBF0 23380200 */  negu       $a3, $v0
    /* 7D404 8008EBF4 FF7F8330 */  andi       $v1, $a0, 0x7FFF
    /* 7D408 8008EBF8 013B0208 */  j          .L8008EC04
    /* 7D40C 8008EBFC 23200300 */   negu      $a0, $v1
  .L8008EC00:
    /* 7D410 8008EC00 FF7F8430 */  andi       $a0, $a0, 0x7FFF
  .L8008EC04:
    /* 7D414 8008EC04 0700C104 */  bgez       $a2, .L8008EC24
    /* 7D418 8008EC08 C3130600 */   sra       $v0, $a2, 15
    /* 7D41C 8008EC0C 23300600 */  negu       $a2, $a2
    /* 7D420 8008EC10 C3130600 */  sra        $v0, $a2, 15
    /* 7D424 8008EC14 23100200 */  negu       $v0, $v0
    /* 7D428 8008EC18 FF7FC330 */  andi       $v1, $a2, 0x7FFF
    /* 7D42C 8008EC1C 0A3B0208 */  j          .L8008EC28
    /* 7D430 8008EC20 23300300 */   negu      $a2, $v1
  .L8008EC24:
    /* 7D434 8008EC24 FF7FC630 */  andi       $a2, $a2, 0x7FFF
  .L8008EC28:
    /* 7D438 8008EC28 00488848 */  mtc2       $t0, $9 /* handwritten instruction */
    /* 7D43C 8008EC2C 00508748 */  mtc2       $a3, $10 /* handwritten instruction */
    /* 7D440 8008EC30 00588248 */  mtc2       $v0, $11 /* handwritten instruction */
    /* 7D444 8008EC34 00000000 */  nop
    /* 7D448 8008EC38 00000000 */  nop
    /* 7D44C 8008EC3C 12E0434A */  mvmva      0, 1, 3, 3, 0
    /* 7D450 8008EC40 FFFFA230 */  andi       $v0, $a1, 0xFFFF
    /* 7D454 8008EC44 001C0400 */  sll        $v1, $a0, 16
    /* 7D458 8008EC48 25104300 */  or         $v0, $v0, $v1
    /* 7D45C 8008EC4C 00008248 */  mtc2       $v0, $0 /* handwritten instruction */
    /* 7D460 8008EC50 00088648 */  mtc2       $a2, $1 /* handwritten instruction */
    /* 7D464 8008EC54 00C80848 */  mfc2       $t0, $25 /* handwritten instruction */
    /* 7D468 8008EC58 00D00748 */  mfc2       $a3, $26 /* handwritten instruction */
    /* 7D46C 8008EC5C 00D80248 */  mfc2       $v0, $27 /* handwritten instruction */
    /* 7D470 8008EC60 12204A4A */  mvmva      1, 1, 0, 1, 0
    /* 7D474 8008EC64 C0400800 */  sll        $t0, $t0, 3
    /* 7D478 8008EC68 C0380700 */  sll        $a3, $a3, 3
    /* 7D47C 8008EC6C C0100200 */  sll        $v0, $v0, 3
    /* 7D480 8008EC70 00C80548 */  mfc2       $a1, $25 /* handwritten instruction */
    /* 7D484 8008EC74 00D00448 */  mfc2       $a0, $26 /* handwritten instruction */
    /* 7D488 8008EC78 00D80648 */  mfc2       $a2, $27 /* handwritten instruction */
    /* 7D48C 8008EC7C 2128A800 */  addu       $a1, $a1, $t0
    /* 7D490 8008EC80 21208700 */  addu       $a0, $a0, $a3
    /* 7D494 8008EC84 2130C200 */  addu       $a2, $a2, $v0
    /* 7D498 8008EC88 0028C548 */  ctc2       $a1, $5 /* handwritten instruction */
    /* 7D49C 8008EC8C 0030C448 */  ctc2       $a0, $6 /* handwritten instruction */
    /* 7D4A0 8008EC90 0038C648 */  ctc2       $a2, $7 /* handwritten instruction */
    /* 7D4A4 8008EC94 5000B78F */  lw         $s7, 0x50($sp)
    /* 7D4A8 8008EC98 00000000 */  nop
    /* 7D4AC 8008EC9C 3C00E28E */  lw         $v0, 0x3C($s7)
    /* 7D4B0 8008ECA0 00000000 */  nop
    /* 7D4B4 8008ECA4 2000488C */  lw         $t0, 0x20($v0)
    /* 7D4B8 8008ECA8 14004C94 */  lhu        $t4, 0x14($v0)
    /* 7D4BC 8008ECAC 0000108D */  lw         $s0, 0x0($t0)
    /* 7D4C0 8008ECB0 0400118D */  lw         $s1, 0x4($t0)
    /* 7D4C4 8008ECB4 C3008011 */  beqz       $t4, .L8008EFC4
    /* 7D4C8 8008ECB8 00000000 */   nop
    /* 7D4CC 8008ECBC 037E0F3C */  lui        $t7, (0x7E038000 >> 16)
    /* 7D4D0 8008ECC0 0080EF35 */  ori        $t7, $t7, (0x7E038000 & 0xFFFF)
    /* 7D4D4 8008ECC4 0024173C */  lui        $s7, (0x24000000 >> 16)
    /* 7D4D8 8008ECC8 00C01E3C */  lui        $fp, (0xC0000000 >> 16)
    /* 7D4DC 8008ECCC FBFFD226 */  addiu      $s2, $s6, -0x5
    /* 7D4E0 8008ECD0 14000E25 */  addiu      $t6, $t0, 0x14
    /* 7D4E4 8008ECD4 1C006D25 */  addiu      $t5, $t3, 0x1C
    /* 7D4E8 8008ECD8 10000925 */  addiu      $t1, $t0, 0x10
    /* 7D4EC 8008ECDC 3C00B98F */  lw         $t9, 0x3C($sp)
    /* 7D4F0 8008ECE0 24006625 */  addiu      $a2, $t3, 0x24
    /* 7D4F4 8008ECE4 25B83703 */  or         $s7, $t9, $s7
    /* 7D4F8 8008ECE8 4400B7AF */  sw         $s7, 0x44($sp)
    /* 7D4FC 8008ECEC 002C173C */  lui        $s7, (0x2C000000 >> 16)
    /* 7D500 8008ECF0 25B83703 */  or         $s7, $t9, $s7
    /* 7D504 8008ECF4 4800B7AF */  sw         $s7, 0x48($sp)
  .L8008ECF8:
    /* 7D508 8008ECF8 FFFF0432 */  andi       $a0, $s0, 0xFFFF
    /* 7D50C 8008ECFC 022C1000 */  srl        $a1, $s0, 16
    /* 7D510 8008ED00 FFFF2832 */  andi       $t0, $s1, 0xFFFF
    /* 7D514 8008ED04 2110A402 */  addu       $v0, $s5, $a0
    /* 7D518 8008ED08 000040C8 */  lwc2       $0, 0x0($v0)
    /* 7D51C 8008ED0C 040041C8 */  lwc2       $1, 0x4($v0)
    /* 7D520 8008ED10 2118A502 */  addu       $v1, $s5, $a1
    /* 7D524 8008ED14 000062C8 */  lwc2       $2, 0x0($v1)
    /* 7D528 8008ED18 040063C8 */  lwc2       $3, 0x4($v1)
    /* 7D52C 8008ED1C 2110A802 */  addu       $v0, $s5, $t0
    /* 7D530 8008ED20 000044C8 */  lwc2       $4, 0x0($v0)
    /* 7D534 8008ED24 040045C8 */  lwc2       $5, 0x4($v0)
    /* 7D538 8008ED28 02541100 */  srl        $t2, $s1, 16
    /* 7D53C 8008ED2C 00000000 */  nop
    /* 7D540 8008ED30 3000284A */  rtpt
    /* 7D544 8008ED34 0400193C */  lui        $t9, (0x40000 >> 16)
    /* 7D548 8008ED38 0C00308D */  lw         $s0, 0xC($t1)
    /* 7D54C 8008ED3C 0800278D */  lw         $a3, 0x8($t1)
    /* 7D550 8008ED40 1000318D */  lw         $s1, 0x10($t1)
    /* 7D554 8008ED44 2410F900 */  and        $v0, $a3, $t9
    /* 7D558 8008ED48 03004010 */  beqz       $v0, .L8008ED58
    /* 7D55C 8008ED4C 21106402 */   addu      $v0, $s3, $a0
    /* 7D560 8008ED50 00004CE8 */  swc2       $12, 0x0($v0)
    /* 7D564 8008ED54 040051E8 */  swc2       $17, 0x4($v0)
  .L8008ED58:
    /* 7D568 8008ED58 0800173C */  lui        $s7, (0x80000 >> 16)
    /* 7D56C 8008ED5C 2410F700 */  and        $v0, $a3, $s7
    /* 7D570 8008ED60 03004010 */  beqz       $v0, .L8008ED70
    /* 7D574 8008ED64 21106502 */   addu      $v0, $s3, $a1
    /* 7D578 8008ED68 00004DE8 */  swc2       $13, 0x0($v0)
    /* 7D57C 8008ED6C 040052E8 */  swc2       $18, 0x4($v0)
  .L8008ED70:
    /* 7D580 8008ED70 1000193C */  lui        $t9, (0x100000 >> 16)
    /* 7D584 8008ED74 2410F900 */  and        $v0, $a3, $t9
    /* 7D588 8008ED78 03004010 */  beqz       $v0, .L8008ED88
    /* 7D58C 8008ED7C 21106802 */   addu      $v0, $s3, $t0
    /* 7D590 8008ED80 00004EE8 */  swc2       $14, 0x0($v0)
    /* 7D594 8008ED84 040053E8 */  swc2       $19, 0x4($v0)
  .L8008ED88:
    /* 7D598 8008ED88 00F84548 */  cfc2       $a1, $31 /* handwritten instruction */
    /* 7D59C 8008ED8C FFFF1734 */  ori        $s7, $zero, 0xFFFF
    /* 7D5A0 8008ED90 38005715 */  bne        $t2, $s7, .L8008EE74
    /* 7D5A4 8008ED94 2410AF00 */   and       $v0, $a1, $t7
    /* 7D5A8 8008ED98 86004014 */  bnez       $v0, .L8008EFB4
    /* 7D5AC 8008ED9C 00000000 */   nop
    /* 7D5B0 8008EDA0 0600404B */  nclip
    /* 7D5B4 8008EDA4 4400B98F */  lw         $t9, 0x44($sp)
    /* 7D5B8 8008EDA8 21186001 */  addu       $v1, $t3, $zero
    /* 7D5BC 8008EDAC E0FFD9AC */  sw         $t9, -0x20($a2)
    /* 7D5C0 8008EDB0 00C00248 */  mfc2       $v0, $24 /* handwritten instruction */
    /* 7D5C4 8008EDB4 00000000 */  nop
    /* 7D5C8 8008EDB8 7E004018 */  blez       $v0, .L8008EFB4
    /* 7D5CC 8008EDBC 00000000 */   nop
    /* 7D5D0 8008EDC0 08006CE8 */  swc2       $12, 0x8($v1)
    /* 7D5D4 8008EDC4 10006DE8 */  swc2       $13, 0x10($v1)
    /* 7D5D8 8008EDC8 18006EE8 */  swc2       $14, 0x18($v1)
    /* 7D5DC 8008EDCC 0007173C */  lui        $s7, (0x7000000 >> 16)
    /* 7D5E0 8008EDD0 000077AD */  sw         $s7, 0x0($t3)
    /* 7D5E4 8008EDD4 2D00584B */  avsz3
    /* 7D5E8 8008EDD8 FCFF228D */  lw         $v0, -0x4($t1)
    /* 7D5EC 8008EDDC 0000238D */  lw         $v1, 0x0($t1)
    /* 7D5F0 8008EDE0 4000B98F */  lw         $t9, 0x40($sp)
    /* 7D5F4 8008EDE4 0000C495 */  lhu        $a0, 0x0($t6)
    /* 7D5F8 8008EDE8 21105900 */  addu       $v0, $v0, $t9
    /* 7D5FC 8008EDEC E8FFC2AC */  sw         $v0, -0x18($a2)
    /* 7D600 8008EDF0 F0FFC3AC */  sw         $v1, -0x10($a2)
    /* 7D604 8008EDF4 0000A4A5 */  sh         $a0, 0x0($t5)
    /* 7D608 8008EDF8 00380548 */  mfc2       $a1, $7 /* handwritten instruction */
    /* 7D60C 8008EDFC C0140700 */  sll        $v0, $a3, 19
    /* 7D610 8008EE00 24105E00 */  and        $v0, $v0, $fp
    /* 7D614 8008EE04 C3160200 */  sra        $v0, $v0, 27
    /* 7D618 8008EE08 2128A200 */  addu       $a1, $a1, $v0
    /* 7D61C 8008EE0C 00F84348 */  cfc2       $v1, $31 /* handwritten instruction */
    /* 7D620 8008EE10 00000000 */  nop
    /* 7D624 8008EE14 12006330 */  andi       $v1, $v1, 0x12
    /* 7D628 8008EE18 65006014 */  bnez       $v1, .L8008EFB0
    /* 7D62C 8008EE1C 00000000 */   nop
    /* 7D630 8008EE20 2000A28F */  lw         $v0, 0x20($sp)
    /* 7D634 8008EE24 00000000 */  nop
    /* 7D638 8008EE28 2328A200 */  subu       $a1, $a1, $v0
    /* 7D63C 8008EE2C 0002A330 */  andi       $v1, $a1, 0x200
    /* 7D640 8008EE30 5F006014 */  bnez       $v1, .L8008EFB0
    /* 7D644 8008EE34 2118A000 */   addu      $v1, $a1, $zero
    /* 7D648 8008EE38 2A107200 */  slt        $v0, $v1, $s2
    /* 7D64C 8008EE3C 02004014 */  bnez       $v0, .L8008EE48
    /* 7D650 8008EE40 00000000 */   nop
    /* 7D654 8008EE44 FAFFC326 */  addiu      $v1, $s6, -0x6
  .L8008EE48:
    /* 7D658 8008EE48 3800B78F */  lw         $s7, 0x38($sp)
    /* 7D65C 8008EE4C 80100300 */  sll        $v0, $v1, 2
    /* 7D660 8008EE50 2110E202 */  addu       $v0, $s7, $v0
    /* 7D664 8008EE54 02004488 */  lwl        $a0, 0x2($v0)
    /* 7D668 8008EE58 001A0B00 */  sll        $v1, $t3, 8
    /* 7D66C 8008EE5C 020064A9 */  swl        $a0, 0x2($t3)
    /* 7D670 8008EE60 020043A8 */  swl        $v1, 0x2($v0)
    /* 7D674 8008EE64 2000C624 */  addiu      $a2, $a2, 0x20
    /* 7D678 8008EE68 2000AD25 */  addiu      $t5, $t5, 0x20
    /* 7D67C 8008EE6C EC3B0208 */  j          .L8008EFB0
    /* 7D680 8008EE70 20006B25 */   addiu     $t3, $t3, 0x20
  .L8008EE74:
    /* 7D684 8008EE74 0600404B */  nclip
    /* 7D688 8008EE78 4800B98F */  lw         $t9, 0x48($sp)
    /* 7D68C 8008EE7C 21206001 */  addu       $a0, $t3, $zero
    /* 7D690 8008EE80 E0FFD9AC */  sw         $t9, -0x20($a2)
    /* 7D694 8008EE84 00C00848 */  mfc2       $t0, $24 /* handwritten instruction */
    /* 7D698 8008EE88 00000000 */  nop
    /* 7D69C 8008EE8C 0400001D */  bgtz       $t0, .L8008EEA0
    /* 7D6A0 8008EE90 2000173C */   lui       $s7, (0x200000 >> 16)
    /* 7D6A4 8008EE94 2410F700 */  and        $v0, $a3, $s7
    /* 7D6A8 8008EE98 46004010 */  beqz       $v0, .L8008EFB4
    /* 7D6AC 8008EE9C 00000000 */   nop
  .L8008EEA0:
    /* 7D6B0 8008EEA0 08008CE8 */  swc2       $12, 0x8($a0)
    /* 7D6B4 8008EEA4 10008DE8 */  swc2       $13, 0x10($a0)
    /* 7D6B8 8008EEA8 20008EE8 */  swc2       $14, 0x20($a0)
    /* 7D6BC 8008EEAC 2110AA02 */  addu       $v0, $s5, $t2
    /* 7D6C0 8008EEB0 000040C8 */  lwc2       $0, 0x0($v0)
    /* 7D6C4 8008EEB4 040041C8 */  lwc2       $1, 0x4($v0)
    /* 7D6C8 8008EEB8 00000000 */  nop
    /* 7D6CC 8008EEBC 00000000 */  nop
    /* 7D6D0 8008EEC0 0100184A */  rtps
    /* 7D6D4 8008EEC4 0009193C */  lui        $t9, (0x9000000 >> 16)
    /* 7D6D8 8008EEC8 000079AD */  sw         $t9, 0x0($t3)
    /* 7D6DC 8008EECC FCFF228D */  lw         $v0, -0x4($t1)
    /* 7D6E0 8008EED0 4000B78F */  lw         $s7, 0x40($sp)
    /* 7D6E4 8008EED4 0000238D */  lw         $v1, 0x0($t1)
    /* 7D6E8 8008EED8 21105700 */  addu       $v0, $v0, $s7
    /* 7D6EC 8008EEDC E8FFC2AC */  sw         $v0, -0x18($a2)
    /* 7D6F0 8008EEE0 F0FFC3AC */  sw         $v1, -0x10($a2)
    /* 7D6F4 8008EEE4 18008EE8 */  swc2       $14, 0x18($a0)
    /* 7D6F8 8008EEE8 2000193C */  lui        $t9, (0x200000 >> 16)
    /* 7D6FC 8008EEEC 2410F900 */  and        $v0, $a3, $t9
    /* 7D700 8008EEF0 03004010 */  beqz       $v0, .L8008EF00
    /* 7D704 8008EEF4 21106A02 */   addu      $v0, $s3, $t2
    /* 7D708 8008EEF8 00004EE8 */  swc2       $14, 0x0($v0)
    /* 7D70C 8008EEFC 040053E8 */  swc2       $19, 0x4($v0)
  .L8008EF00:
    /* 7D710 8008EF00 00F84248 */  cfc2       $v0, $31 /* handwritten instruction */
    /* 7D714 8008EF04 00000000 */  nop
    /* 7D718 8008EF08 2528A200 */  or         $a1, $a1, $v0
    /* 7D71C 8008EF0C 2418AF00 */  and        $v1, $a1, $t7
    /* 7D720 8008EF10 28006014 */  bnez       $v1, .L8008EFB4
    /* 7D724 8008EF14 00000000 */   nop
    /* 7D728 8008EF18 26000019 */  blez       $t0, .L8008EFB4
    /* 7D72C 8008EF1C 00000000 */   nop
    /* 7D730 8008EF20 2E00684B */  avsz4
    /* 7D734 8008EF24 0000C38D */  lw         $v1, 0x0($t6)
    /* 7D738 8008EF28 00000000 */  nop
    /* 7D73C 8008EF2C 0000C3A4 */  sh         $v1, 0x0($a2)
    /* 7D740 8008EF30 021C0300 */  srl        $v1, $v1, 16
    /* 7D744 8008EF34 0000A3A5 */  sh         $v1, 0x0($t5)
    /* 7D748 8008EF38 00380448 */  mfc2       $a0, $7 /* handwritten instruction */
    /* 7D74C 8008EF3C C0140700 */  sll        $v0, $a3, 19
    /* 7D750 8008EF40 24105E00 */  and        $v0, $v0, $fp
    /* 7D754 8008EF44 C3160200 */  sra        $v0, $v0, 27
    /* 7D758 8008EF48 21208200 */  addu       $a0, $a0, $v0
    /* 7D75C 8008EF4C 00F84348 */  cfc2       $v1, $31 /* handwritten instruction */
    /* 7D760 8008EF50 00000000 */  nop
    /* 7D764 8008EF54 12006330 */  andi       $v1, $v1, 0x12
    /* 7D768 8008EF58 15006014 */  bnez       $v1, .L8008EFB0
    /* 7D76C 8008EF5C 00000000 */   nop
    /* 7D770 8008EF60 2000A28F */  lw         $v0, 0x20($sp)
    /* 7D774 8008EF64 00000000 */  nop
    /* 7D778 8008EF68 23208200 */  subu       $a0, $a0, $v0
    /* 7D77C 8008EF6C 00028330 */  andi       $v1, $a0, 0x200
    /* 7D780 8008EF70 0F006014 */  bnez       $v1, .L8008EFB0
    /* 7D784 8008EF74 21188000 */   addu      $v1, $a0, $zero
    /* 7D788 8008EF78 2A107200 */  slt        $v0, $v1, $s2
    /* 7D78C 8008EF7C 02004014 */  bnez       $v0, .L8008EF88
    /* 7D790 8008EF80 00000000 */   nop
    /* 7D794 8008EF84 FAFFC326 */  addiu      $v1, $s6, -0x6
  .L8008EF88:
    /* 7D798 8008EF88 3800B78F */  lw         $s7, 0x38($sp)
    /* 7D79C 8008EF8C 80100300 */  sll        $v0, $v1, 2
    /* 7D7A0 8008EF90 2110E202 */  addu       $v0, $s7, $v0
    /* 7D7A4 8008EF94 02004488 */  lwl        $a0, 0x2($v0)
    /* 7D7A8 8008EF98 001A0B00 */  sll        $v1, $t3, 8
    /* 7D7AC 8008EF9C 020064A9 */  swl        $a0, 0x2($t3)
    /* 7D7B0 8008EFA0 020043A8 */  swl        $v1, 0x2($v0)
    /* 7D7B4 8008EFA4 2800C624 */  addiu      $a2, $a2, 0x28
    /* 7D7B8 8008EFA8 2800AD25 */  addiu      $t5, $t5, 0x28
    /* 7D7BC 8008EFAC 28006B25 */  addiu      $t3, $t3, 0x28
  .L8008EFB0:
    /* 7D7C0 8008EFB0 01001827 */  addiu      $t8, $t8, 0x1
  .L8008EFB4:
    /* 7D7C4 8008EFB4 1C002925 */  addiu      $t1, $t1, 0x1C
    /* 7D7C8 8008EFB8 FFFF8C25 */  addiu      $t4, $t4, -0x1
    /* 7D7CC 8008EFBC 4EFF8015 */  bnez       $t4, .L8008ECF8
    /* 7D7D0 8008EFC0 1C00CE25 */   addiu     $t6, $t6, 0x1C
  .L8008EFC4:
    /* 7D7D4 8008EFC4 5000B98F */  lw         $t9, 0x50($sp)
    /* 7D7D8 8008EFC8 00000000 */  nop
    /* 7D7DC 8008EFCC 3C00228F */  lw         $v0, 0x3C($t9)
    /* 7D7E0 8008EFD0 00000000 */  nop
    /* 7D7E4 8008EFD4 18004C94 */  lhu        $t4, 0x18($v0)
    /* 7D7E8 8008EFD8 00000000 */  nop
    /* 7D7EC 8008EFDC 36008011 */  beqz       $t4, .L8008F0B8
    /* 7D7F0 8008EFE0 00000000 */   nop
    /* 7D7F4 8008EFE4 FF008A31 */  andi       $t2, $t4, 0xFF
    /* 7D7F8 8008EFE8 1E004284 */  lh         $v0, 0x1E($v0)
    /* 7D7FC 8008EFEC 03620C00 */  sra        $t4, $t4, 8
    /* 7D800 8008EFF0 C0100200 */  sll        $v0, $v0, 3
    /* 7D804 8008EFF4 2118A202 */  addu       $v1, $s5, $v0
    /* 7D808 8008EFF8 0000688C */  lw         $t0, 0x0($v1)
    /* 7D80C 8008EFFC 0400668C */  lw         $a2, 0x4($v1)
    /* 7D810 8008F000 1E004011 */  beqz       $t2, .L8008F07C
    /* 7D814 8008F004 21106202 */   addu      $v0, $s3, $v0
    /* 7D818 8008F008 0C006924 */  addiu      $t1, $v1, 0xC
    /* 7D81C 8008F00C 08006724 */  addiu      $a3, $v1, 0x8
    /* 7D820 8008F010 0800658C */  lw         $a1, 0x8($v1)
    /* 7D824 8008F014 0C00648C */  lw         $a0, 0xC($v1)
  .L8008F018:
    /* 7D828 8008F018 00008848 */  mtc2       $t0, $0 /* handwritten instruction */
    /* 7D82C 8008F01C 00088648 */  mtc2       $a2, $1 /* handwritten instruction */
    /* 7D830 8008F020 00108548 */  mtc2       $a1, $2 /* handwritten instruction */
    /* 7D834 8008F024 00188448 */  mtc2       $a0, $3 /* handwritten instruction */
    /* 7D838 8008F028 100064C8 */  lwc2       $4, 0x10($v1)
    /* 7D83C 8008F02C 140065C8 */  lwc2       $5, 0x14($v1)
    /* 7D840 8008F030 00000000 */  nop
    /* 7D844 8008F034 00000000 */  nop
    /* 7D848 8008F038 3000284A */  rtpt
    /* 7D84C 8008F03C 1800E724 */  addiu      $a3, $a3, 0x18
    /* 7D850 8008F040 18002925 */  addiu      $t1, $t1, 0x18
    /* 7D854 8008F044 18006324 */  addiu      $v1, $v1, 0x18
    /* 7D858 8008F048 FFFF4A25 */  addiu      $t2, $t2, -0x1
    /* 7D85C 8008F04C 0000688C */  lw         $t0, 0x0($v1)
    /* 7D860 8008F050 FCFFE68C */  lw         $a2, -0x4($a3)
    /* 7D864 8008F054 0000E58C */  lw         $a1, 0x0($a3)
    /* 7D868 8008F058 0000248D */  lw         $a0, 0x0($t1)
    /* 7D86C 8008F05C 00004CE8 */  swc2       $12, 0x0($v0)
    /* 7D870 8008F060 040051E8 */  swc2       $17, 0x4($v0)
    /* 7D874 8008F064 08004DE8 */  swc2       $13, 0x8($v0)
    /* 7D878 8008F068 0C0052E8 */  swc2       $18, 0xC($v0)
    /* 7D87C 8008F06C 10004EE8 */  swc2       $14, 0x10($v0)
    /* 7D880 8008F070 140053E8 */  swc2       $19, 0x14($v0)
    /* 7D884 8008F074 E8FF4015 */  bnez       $t2, .L8008F018
    /* 7D888 8008F078 18004224 */   addiu     $v0, $v0, 0x18
  .L8008F07C:
    /* 7D88C 8008F07C 0E008011 */  beqz       $t4, .L8008F0B8
    /* 7D890 8008F080 00000000 */   nop
  .L8008F084:
    /* 7D894 8008F084 00008848 */  mtc2       $t0, $0 /* handwritten instruction */
    /* 7D898 8008F088 00088648 */  mtc2       $a2, $1 /* handwritten instruction */
    /* 7D89C 8008F08C 00000000 */  nop
    /* 7D8A0 8008F090 00000000 */  nop
    /* 7D8A4 8008F094 0100184A */  rtps
    /* 7D8A8 8008F098 08006324 */  addiu      $v1, $v1, 0x8
    /* 7D8AC 8008F09C FFFF8C25 */  addiu      $t4, $t4, -0x1
    /* 7D8B0 8008F0A0 0000688C */  lw         $t0, 0x0($v1)
    /* 7D8B4 8008F0A4 0400668C */  lw         $a2, 0x4($v1)
    /* 7D8B8 8008F0A8 00004EE8 */  swc2       $14, 0x0($v0)
    /* 7D8BC 8008F0AC 040053E8 */  swc2       $19, 0x4($v0)
    /* 7D8C0 8008F0B0 F4FF8015 */  bnez       $t4, .L8008F084
    /* 7D8C4 8008F0B4 08004224 */   addiu     $v0, $v0, 0x8
  .L8008F0B8:
    /* 7D8C8 8008F0B8 FFFF9426 */  addiu      $s4, $s4, -0x1
    /* 7D8CC 8008F0BC 73FE8016 */  bnez       $s4, .L8008EA8C
    /* 7D8D0 8008F0C0 00000000 */   nop
  .L8008F0C4:
    /* 7D8D4 8008F0C4 8000B78F */  lw         $s7, 0x80($sp)
    /* 7D8D8 8008F0C8 00000000 */  nop
    /* 7D8DC 8008F0CC 0400E28E */  lw         $v0, 0x4($s7)
    /* 7D8E0 8008F0D0 00000000 */  nop
    /* 7D8E4 8008F0D4 40005494 */  lhu        $s4, 0x40($v0)
    /* 7D8E8 8008F0D8 4C00488C */  lw         $t0, 0x4C($v0)
    /* 7D8EC 8008F0DC 8D008012 */  beqz       $s4, .L8008F314
    /* 7D8F0 8008F0E0 FFFF1234 */   ori       $s2, $zero, 0xFFFF
    /* 7D8F4 8008F0E4 0024023C */  lui        $v0, (0x24000000 >> 16)
    /* 7D8F8 8008F0E8 3C00B98F */  lw         $t9, 0x3C($sp)
    /* 7D8FC 8008F0EC 0007113C */  lui        $s1, (0x7000000 >> 16)
    /* 7D900 8008F0F0 00C00D3C */  lui        $t5, (0xC0000000 >> 16)
    /* 7D904 8008F0F4 FBFFCC26 */  addiu      $t4, $s6, -0x5
    /* 7D908 8008F0F8 0009103C */  lui        $s0, (0x9000000 >> 16)
    /* 7D90C 8008F0FC 18000A25 */  addiu      $t2, $t0, 0x18
    /* 7D910 8008F100 1C006925 */  addiu      $t1, $t3, 0x1C
    /* 7D914 8008F104 14000725 */  addiu      $a3, $t0, 0x14
    /* 7D918 8008F108 24006625 */  addiu      $a2, $t3, 0x24
    /* 7D91C 8008F10C 25782203 */  or         $t7, $t9, $v0
    /* 7D920 8008F110 002C023C */  lui        $v0, (0x2C000000 >> 16)
    /* 7D924 8008F114 25702203 */  or         $t6, $t9, $v0
  .L8008F118:
    /* 7D928 8008F118 0000028D */  lw         $v0, 0x0($t0)
    /* 7D92C 8008F11C F0FFE48C */  lw         $a0, -0x10($a3)
    /* 7D930 8008F120 FFFF4330 */  andi       $v1, $v0, 0xFFFF
    /* 7D934 8008F124 02140200 */  srl        $v0, $v0, 16
    /* 7D938 8008F128 FFFF8530 */  andi       $a1, $a0, 0xFFFF
    /* 7D93C 8008F12C 02240400 */  srl        $a0, $a0, 16
    /* 7D940 8008F130 21186302 */  addu       $v1, $s3, $v1
    /* 7D944 8008F134 00006CC8 */  lwc2       $12, 0x0($v1)
    /* 7D948 8008F138 040071C8 */  lwc2       $17, 0x4($v1)
    /* 7D94C 8008F13C 21106202 */  addu       $v0, $s3, $v0
    /* 7D950 8008F140 00004DC8 */  lwc2       $13, 0x0($v0)
    /* 7D954 8008F144 040052C8 */  lwc2       $18, 0x4($v0)
    /* 7D958 8008F148 21286502 */  addu       $a1, $s3, $a1
    /* 7D95C 8008F14C 0000AEC8 */  lwc2       $14, 0x0($a1)
    /* 7D960 8008F150 0400B3C8 */  lwc2       $19, 0x4($a1)
    /* 7D964 8008F154 2F009214 */  bne        $a0, $s2, .L8008F214
    /* 7D968 8008F158 00000000 */   nop
    /* 7D96C 8008F15C 0600404B */  nclip
    /* 7D970 8008F160 E0FFCFAC */  sw         $t7, -0x20($a2)
    /* 7D974 8008F164 21186001 */  addu       $v1, $t3, $zero
    /* 7D978 8008F168 00C00248 */  mfc2       $v0, $24 /* handwritten instruction */
    /* 7D97C 8008F16C 00000000 */  nop
    /* 7D980 8008F170 62004018 */  blez       $v0, .L8008F2FC
    /* 7D984 8008F174 00000000 */   nop
    /* 7D988 8008F178 08006CE8 */  swc2       $12, 0x8($v1)
    /* 7D98C 8008F17C 10006DE8 */  swc2       $13, 0x10($v1)
    /* 7D990 8008F180 18006EE8 */  swc2       $14, 0x18($v1)
    /* 7D994 8008F184 000071AD */  sw         $s1, 0x0($t3)
    /* 7D998 8008F188 2D00584B */  avsz3
    /* 7D99C 8008F18C F8FFE28C */  lw         $v0, -0x8($a3)
    /* 7D9A0 8008F190 FCFFE38C */  lw         $v1, -0x4($a3)
    /* 7D9A4 8008F194 4000B78F */  lw         $s7, 0x40($sp)
    /* 7D9A8 8008F198 0000E494 */  lhu        $a0, 0x0($a3)
    /* 7D9AC 8008F19C 21105700 */  addu       $v0, $v0, $s7
    /* 7D9B0 8008F1A0 E8FFC2AC */  sw         $v0, -0x18($a2)
    /* 7D9B4 8008F1A4 F0FFC3AC */  sw         $v1, -0x10($a2)
    /* 7D9B8 8008F1A8 000024A5 */  sh         $a0, 0x0($t1)
    /* 7D9BC 8008F1AC 0000428D */  lw         $v0, 0x0($t2)
    /* 7D9C0 8008F1B0 00380548 */  mfc2       $a1, $7 /* handwritten instruction */
    /* 7D9C4 8008F1B4 2000A48F */  lw         $a0, 0x20($sp)
    /* 7D9C8 8008F1B8 C0140200 */  sll        $v0, $v0, 19
    /* 7D9CC 8008F1BC 24104D00 */  and        $v0, $v0, $t5
    /* 7D9D0 8008F1C0 C3160200 */  sra        $v0, $v0, 27
    /* 7D9D4 8008F1C4 2110A200 */  addu       $v0, $a1, $v0
    /* 7D9D8 8008F1C8 23104400 */  subu       $v0, $v0, $a0
    /* 7D9DC 8008F1CC 00024330 */  andi       $v1, $v0, 0x200
    /* 7D9E0 8008F1D0 49006014 */  bnez       $v1, .L8008F2F8
    /* 7D9E4 8008F1D4 21184000 */   addu      $v1, $v0, $zero
    /* 7D9E8 8008F1D8 2A106C00 */  slt        $v0, $v1, $t4
    /* 7D9EC 8008F1DC 02004014 */  bnez       $v0, .L8008F1E8
    /* 7D9F0 8008F1E0 00000000 */   nop
    /* 7D9F4 8008F1E4 FAFFC326 */  addiu      $v1, $s6, -0x6
  .L8008F1E8:
    /* 7D9F8 8008F1E8 3800B98F */  lw         $t9, 0x38($sp)
    /* 7D9FC 8008F1EC 80100300 */  sll        $v0, $v1, 2
    /* 7DA00 8008F1F0 21102203 */  addu       $v0, $t9, $v0
    /* 7DA04 8008F1F4 02004488 */  lwl        $a0, 0x2($v0)
    /* 7DA08 8008F1F8 001A0B00 */  sll        $v1, $t3, 8
    /* 7DA0C 8008F1FC 020064A9 */  swl        $a0, 0x2($t3)
    /* 7DA10 8008F200 020043A8 */  swl        $v1, 0x2($v0)
    /* 7DA14 8008F204 2000C624 */  addiu      $a2, $a2, 0x20
    /* 7DA18 8008F208 20002925 */  addiu      $t1, $t1, 0x20
    /* 7DA1C 8008F20C BE3C0208 */  j          .L8008F2F8
    /* 7DA20 8008F210 20006B25 */   addiu     $t3, $t3, 0x20
  .L8008F214:
    /* 7DA24 8008F214 0600404B */  nclip
    /* 7DA28 8008F218 21286001 */  addu       $a1, $t3, $zero
    /* 7DA2C 8008F21C 0800ACE8 */  swc2       $12, 0x8($a1)
    /* 7DA30 8008F220 1000ADE8 */  swc2       $13, 0x10($a1)
    /* 7DA34 8008F224 2000AEE8 */  swc2       $14, 0x20($a1)
    /* 7DA38 8008F228 00C00248 */  mfc2       $v0, $24 /* handwritten instruction */
    /* 7DA3C 8008F22C 21206402 */  addu       $a0, $s3, $a0
    /* 7DA40 8008F230 00008EC8 */  lwc2       $14, 0x0($a0)
    /* 7DA44 8008F234 00000000 */  nop
    /* 7DA48 8008F238 00000000 */  nop
    /* 7DA4C 8008F23C 0600404B */  nclip
    /* 7DA50 8008F240 0500401C */  bgtz       $v0, .L8008F258
    /* 7DA54 8008F244 E0FFCEAC */   sw        $t6, -0x20($a2)
    /* 7DA58 8008F248 00C00248 */  mfc2       $v0, $24 /* handwritten instruction */
    /* 7DA5C 8008F24C 00000000 */  nop
    /* 7DA60 8008F250 2A004104 */  bgez       $v0, .L8008F2FC
    /* 7DA64 8008F254 00000000 */   nop
  .L8008F258:
    /* 7DA68 8008F258 040090C8 */  lwc2       $16, 0x4($a0)
    /* 7DA6C 8008F25C 000070AD */  sw         $s0, 0x0($t3)
    /* 7DA70 8008F260 F8FFE28C */  lw         $v0, -0x8($a3)
    /* 7DA74 8008F264 4000B78F */  lw         $s7, 0x40($sp)
    /* 7DA78 8008F268 FCFFE38C */  lw         $v1, -0x4($a3)
    /* 7DA7C 8008F26C 21105700 */  addu       $v0, $v0, $s7
    /* 7DA80 8008F270 E8FFC2AC */  sw         $v0, -0x18($a2)
    /* 7DA84 8008F274 F0FFC3AC */  sw         $v1, -0x10($a2)
    /* 7DA88 8008F278 1800AEE8 */  swc2       $14, 0x18($a1)
    /* 7DA8C 8008F27C 2E00684B */  avsz4
    /* 7DA90 8008F280 0000E38C */  lw         $v1, 0x0($a3)
    /* 7DA94 8008F284 00000000 */  nop
    /* 7DA98 8008F288 0000C3A4 */  sh         $v1, 0x0($a2)
    /* 7DA9C 8008F28C 021C0300 */  srl        $v1, $v1, 16
    /* 7DAA0 8008F290 000023A5 */  sh         $v1, 0x0($t1)
    /* 7DAA4 8008F294 0000428D */  lw         $v0, 0x0($t2)
    /* 7DAA8 8008F298 00380548 */  mfc2       $a1, $7 /* handwritten instruction */
    /* 7DAAC 8008F29C 2000A48F */  lw         $a0, 0x20($sp)
    /* 7DAB0 8008F2A0 C0140200 */  sll        $v0, $v0, 19
    /* 7DAB4 8008F2A4 24104D00 */  and        $v0, $v0, $t5
    /* 7DAB8 8008F2A8 C3160200 */  sra        $v0, $v0, 27
    /* 7DABC 8008F2AC 2110A200 */  addu       $v0, $a1, $v0
    /* 7DAC0 8008F2B0 23104400 */  subu       $v0, $v0, $a0
    /* 7DAC4 8008F2B4 00024330 */  andi       $v1, $v0, 0x200
    /* 7DAC8 8008F2B8 0F006014 */  bnez       $v1, .L8008F2F8
    /* 7DACC 8008F2BC 21184000 */   addu      $v1, $v0, $zero
    /* 7DAD0 8008F2C0 2A106C00 */  slt        $v0, $v1, $t4
    /* 7DAD4 8008F2C4 02004014 */  bnez       $v0, .L8008F2D0
    /* 7DAD8 8008F2C8 00000000 */   nop
    /* 7DADC 8008F2CC FAFFC326 */  addiu      $v1, $s6, -0x6
  .L8008F2D0:
    /* 7DAE0 8008F2D0 3800B98F */  lw         $t9, 0x38($sp)
    /* 7DAE4 8008F2D4 80100300 */  sll        $v0, $v1, 2
    /* 7DAE8 8008F2D8 21102203 */  addu       $v0, $t9, $v0
    /* 7DAEC 8008F2DC 02004488 */  lwl        $a0, 0x2($v0)
    /* 7DAF0 8008F2E0 001A0B00 */  sll        $v1, $t3, 8
    /* 7DAF4 8008F2E4 020064A9 */  swl        $a0, 0x2($t3)
    /* 7DAF8 8008F2E8 020043A8 */  swl        $v1, 0x2($v0)
    /* 7DAFC 8008F2EC 2800C624 */  addiu      $a2, $a2, 0x28
    /* 7DB00 8008F2F0 28002925 */  addiu      $t1, $t1, 0x28
    /* 7DB04 8008F2F4 28006B25 */  addiu      $t3, $t3, 0x28
  .L8008F2F8:
    /* 7DB08 8008F2F8 01001827 */  addiu      $t8, $t8, 0x1
  .L8008F2FC:
    /* 7DB0C 8008F2FC 1C00E724 */  addiu      $a3, $a3, 0x1C
    /* 7DB10 8008F300 1C004A25 */  addiu      $t2, $t2, 0x1C
    /* 7DB14 8008F304 FFFF9426 */  addiu      $s4, $s4, -0x1
    /* 7DB18 8008F308 83FF8016 */  bnez       $s4, .L8008F118
    /* 7DB1C 8008F30C 1C000825 */   addiu     $t0, $t0, 0x1C
    /* 7DB20 8008F310 8000B78F */  lw         $s7, 0x80($sp)
  .L8008F314:
    /* 7DB24 8008F314 0D80013C */  lui        $at, %hi(D_800C8C70)
    /* 7DB28 8008F318 708C2BAC */  sw         $t3, %lo(D_800C8C70)($at)
    /* 7DB2C 8008F31C 3600F8A6 */  sh         $t8, 0x36($s7)
    /* 7DB30 8008F320 2800B98F */  lw         $t9, 0x28($sp)
    /* 7DB34 8008F324 00000000 */  nop
    /* 7DB38 8008F328 00E8D948 */  ctc2       $t9, $29 /* handwritten instruction */
    /* 7DB3C 8008F32C 2C00B78F */  lw         $s7, 0x2C($sp)
    /* 7DB40 8008F330 00000000 */  nop
    /* 7DB44 8008F334 00F0D748 */  ctc2       $s7, $30 /* handwritten instruction */
    /* 7DB48 8008F338 7C00BF8F */  lw         $ra, 0x7C($sp)
    /* 7DB4C 8008F33C 7800BE8F */  lw         $fp, 0x78($sp)
    /* 7DB50 8008F340 7400B78F */  lw         $s7, 0x74($sp)
    /* 7DB54 8008F344 7000B68F */  lw         $s6, 0x70($sp)
    /* 7DB58 8008F348 6C00B58F */  lw         $s5, 0x6C($sp)
    /* 7DB5C 8008F34C 6800B48F */  lw         $s4, 0x68($sp)
    /* 7DB60 8008F350 6400B38F */  lw         $s3, 0x64($sp)
    /* 7DB64 8008F354 6000B28F */  lw         $s2, 0x60($sp)
    /* 7DB68 8008F358 5C00B18F */  lw         $s1, 0x5C($sp)
    /* 7DB6C 8008F35C 5800B08F */  lw         $s0, 0x58($sp)
    /* 7DB70 8008F360 0800E003 */  jr         $ra
    /* 7DB74 8008F364 8000BD27 */   addiu     $sp, $sp, 0x80
endlabel func_8008E70C
