/* Handwritten function */
nonmatching func_8001B15C, 0x1F4

glabel func_8001B15C
    /* 996C 8001B15C 21788000 */  addu       $t7, $a0, $zero
    /* 9970 8001B160 1400EC25 */  addiu      $t4, $t7, 0x14
    /* 9974 8001B164 21C8A000 */  addu       $t9, $a1, $zero
    /* 9978 8001B168 2C00E38D */  lw         $v1, 0x2C($t7)
    /* 997C 8001B16C 00000000 */  nop
    /* 9980 8001B170 00806230 */  andi       $v0, $v1, 0x8000
    /* 9984 8001B174 08004010 */  beqz       $v0, .L8001B198
    /* 9988 8001B178 3000ED25 */   addiu     $t5, $t7, 0x30
    /* 998C 8001B17C 21500000 */  addu       $t2, $zero, $zero
    /* 9990 8001B180 21480000 */  addu       $t1, $zero, $zero
    /* 9994 8001B184 21400000 */  addu       $t0, $zero, $zero
    /* 9998 8001B188 21C00000 */  addu       $t8, $zero, $zero
    /* 999C 8001B18C 21580000 */  addu       $t3, $zero, $zero
    /* 99A0 8001B190 786C0008 */  j          .L8001B1E0
    /* 99A4 8001B194 01000E24 */   addiu     $t6, $zero, 0x1
  .L8001B198:
    /* 99A8 8001B198 03C40300 */  sra        $t8, $v1, 16
    /* 99AC 8001B19C 02000E24 */  addiu      $t6, $zero, 0x2
    /* 99B0 8001B1A0 FF0F6330 */  andi       $v1, $v1, 0xFFF
    /* 99B4 8001B1A4 0C80023C */  lui        $v0, %hi(D_800BF3A0)
    /* 99B8 8001B1A8 A0F34224 */  addiu      $v0, $v0, %lo(D_800BF3A0)
    /* 99BC 8001B1AC 80180300 */  sll        $v1, $v1, 2
    /* 99C0 8001B1B0 21186200 */  addu       $v1, $v1, $v0
    /* 99C4 8001B1B4 0000648C */  lw         $a0, 0x0($v1)
    /* 99C8 8001B1B8 0600AB85 */  lh         $t3, 0x6($t5)
    /* 99CC 8001B1BC 3000E285 */  lh         $v0, 0x30($t7)
    /* 99D0 8001B1C0 0400A385 */  lh         $v1, 0x4($t5)
    /* 99D4 8001B1C4 0200A595 */  lhu        $a1, 0x2($t5)
    /* 99D8 8001B1C8 02540400 */  srl        $t2, $a0, 16
    /* 99DC 8001B1CC FFFF8430 */  andi       $a0, $a0, 0xFFFF
    /* 99E0 8001B1D0 00140200 */  sll        $v0, $v0, 16
    /* 99E4 8001B1D4 25488200 */  or         $t1, $a0, $v0
    /* 99E8 8001B1D8 001C0300 */  sll        $v1, $v1, 16
    /* 99EC 8001B1DC 2540A300 */  or         $t0, $a1, $v1
  .L8001B1E0:
    /* 99F0 8001B1E0 02008285 */  lh         $v0, 0x2($t4)
    /* 99F4 8001B1E4 00008395 */  lhu        $v1, 0x0($t4)
    /* 99F8 8001B1E8 04008485 */  lh         $a0, 0x4($t4)
    /* 99FC 8001B1EC 06008585 */  lh         $a1, 0x6($t4)
    /* 9A00 8001B1F0 00140200 */  sll        $v0, $v0, 16
    /* 9A04 8001B1F4 25186200 */  or         $v1, $v1, $v0
    /* 9A08 8001B1F8 0040CA48 */  ctc2       $t2, $8 /* handwritten instruction */
    /* 9A0C 8001B1FC 0048C948 */  ctc2       $t1, $9 /* handwritten instruction */
    /* 9A10 8001B200 0050C848 */  ctc2       $t0, $10 /* handwritten instruction */
    /* 9A14 8001B204 0058C348 */  ctc2       $v1, $11 /* handwritten instruction */
    /* 9A18 8001B208 0060C448 */  ctc2       $a0, $12 /* handwritten instruction */
    /* 9A1C 8001B20C 0068D848 */  ctc2       $t8, $13 /* handwritten instruction */
    /* 9A20 8001B210 0070CB48 */  ctc2       $t3, $14 /* handwritten instruction */
    /* 9A24 8001B214 0078C548 */  ctc2       $a1, $15 /* handwritten instruction */
    /* 9A28 8001B218 21480000 */  addu       $t1, $zero, $zero
    /* 9A2C 8001B21C 2150C001 */  addu       $t2, $t6, $zero
    /* 9A30 8001B220 0000238F */  lw         $v1, 0x0($t9)
    /* 9A34 8001B224 0000F88D */  lw         $t8, 0x0($t7)
    /* 9A38 8001B228 0800228F */  lw         $v0, 0x8($t9)
    /* 9A3C 8001B22C 0800E48D */  lw         $a0, 0x8($t7)
    /* 9A40 8001B230 23187800 */  subu       $v1, $v1, $t8
    /* 9A44 8001B234 43410300 */  sra        $t0, $v1, 5
    /* 9A48 8001B238 23104400 */  subu       $v0, $v0, $a0
    /* 9A4C 8001B23C AB6C0008 */  j          .L8001B2AC
    /* 9A50 8001B240 43590200 */   sra       $t3, $v0, 5
  .L8001B244:
    /* 9A54 8001B244 02008385 */  lh         $v1, 0x2($t4)
    /* 9A58 8001B248 23100200 */  negu       $v0, $v0
    /* 9A5C 8001B24C 1A004300 */  div        $zero, $v0, $v1
    /* 9A60 8001B250 12480000 */  mflo       $t1
    /* 9A64 8001B254 BD6C0008 */  j          .L8001B2F4
    /* 9A68 8001B258 40110800 */   sll       $v0, $t0, 5
  .L8001B25C:
    /* 9A6C 8001B25C 00008285 */  lh         $v0, 0x0($t4)
    /* 9A70 8001B260 00000000 */  nop
    /* 9A74 8001B264 1800A200 */  mult       $a1, $v0
    /* 9A78 8001B268 12100000 */  mflo       $v0
    /* 9A7C 8001B26C 02008385 */  lh         $v1, 0x2($t4)
    /* 9A80 8001B270 00000000 */  nop
    /* 9A84 8001B274 1800A300 */  mult       $a1, $v1
    /* 9A88 8001B278 12180000 */  mflo       $v1
    /* 9A8C 8001B27C 04008485 */  lh         $a0, 0x4($t4)
    /* 9A90 8001B280 00000000 */  nop
    /* 9A94 8001B284 1800A400 */  mult       $a1, $a0
    /* 9A98 8001B288 FFFF4A25 */  addiu      $t2, $t2, -0x1
    /* 9A9C 8001B28C 03140200 */  sra        $v0, $v0, 16
    /* 9AA0 8001B290 23400201 */  subu       $t0, $t0, $v0
    /* 9AA4 8001B294 031C0300 */  sra        $v1, $v1, 16
    /* 9AA8 8001B298 23482301 */  subu       $t1, $t1, $v1
    /* 9AAC 8001B29C 12200000 */  mflo       $a0
    /* 9AB0 8001B2A0 03240400 */  sra        $a0, $a0, 16
    /* 9AB4 8001B2A4 12004011 */  beqz       $t2, .L8001B2F0
    /* 9AB8 8001B2A8 23586401 */   subu      $t3, $t3, $a0
  .L8001B2AC:
    /* 9ABC 8001B2AC 00488848 */  mtc2       $t0, $9 /* handwritten instruction */
    /* 9AC0 8001B2B0 00508948 */  mtc2       $t1, $10 /* handwritten instruction */
    /* 9AC4 8001B2B4 00588B48 */  mtc2       $t3, $11 /* handwritten instruction */
    /* 9AC8 8001B2B8 00000000 */  nop
    /* 9ACC 8001B2BC 00000000 */  nop
    /* 9AD0 8001B2C0 12A04B4A */  mvmva      1, 1, 3, 1, 0
    /* 9AD4 8001B2C4 00C80248 */  mfc2       $v0, $25 /* handwritten instruction */
    /* 9AD8 8001B2C8 00D80548 */  mfc2       $a1, $27 /* handwritten instruction */
    /* 9ADC 8001B2CC 03004018 */  blez       $v0, .L8001B2DC
    /* 9AE0 8001B2D0 00000000 */   nop
    /* 9AE4 8001B2D4 2160A001 */  addu       $t4, $t5, $zero
    /* 9AE8 8001B2D8 00D00548 */  mfc2       $a1, $26 /* handwritten instruction */
  .L8001B2DC:
    /* 9AEC 8001B2DC 00000000 */  nop
    /* 9AF0 8001B2E0 DEFFA004 */  bltz       $a1, .L8001B25C
    /* 9AF4 8001B2E4 00000000 */   nop
    /* 9AF8 8001B2E8 D6FFCA11 */  beq        $t6, $t2, .L8001B244
    /* 9AFC 8001B2EC 00130500 */   sll       $v0, $a1, 12
  .L8001B2F0:
    /* 9B00 8001B2F0 40110800 */  sll        $v0, $t0, 5
  .L8001B2F4:
    /* 9B04 8001B2F4 21105800 */  addu       $v0, $v0, $t8
    /* 9B08 8001B2F8 0000C2AC */  sw         $v0, 0x0($a2)
    /* 9B0C 8001B2FC 0400E38D */  lw         $v1, 0x4($t7)
    /* 9B10 8001B300 40110900 */  sll        $v0, $t1, 5
    /* 9B14 8001B304 031A0300 */  sra        $v1, $v1, 8
    /* 9B18 8001B308 21104300 */  addu       $v0, $v0, $v1
    /* 9B1C 8001B30C 0400C2AC */  sw         $v0, 0x4($a2)
    /* 9B20 8001B310 0800E48D */  lw         $a0, 0x8($t7)
    /* 9B24 8001B314 40190B00 */  sll        $v1, $t3, 5
    /* 9B28 8001B318 21186400 */  addu       $v1, $v1, $a0
    /* 9B2C 8001B31C 0A00E010 */  beqz       $a3, .L8001B348
    /* 9B30 8001B320 0800C3AC */   sw        $v1, 0x8($a2)
    /* 9B34 8001B324 00008885 */  lh         $t0, 0x0($t4)
    /* 9B38 8001B328 02008985 */  lh         $t1, 0x2($t4)
    /* 9B3C 8001B32C 04008B85 */  lh         $t3, 0x4($t4)
    /* 9B40 8001B330 00430800 */  sll        $t0, $t0, 12
    /* 9B44 8001B334 004B0900 */  sll        $t1, $t1, 12
    /* 9B48 8001B338 005B0B00 */  sll        $t3, $t3, 12
    /* 9B4C 8001B33C 0000E8AC */  sw         $t0, 0x0($a3)
    /* 9B50 8001B340 0400E9AC */  sw         $t1, 0x4($a3)
    /* 9B54 8001B344 0800EBAC */  sw         $t3, 0x8($a3)
  .L8001B348:
    /* 9B58 8001B348 0800E003 */  jr         $ra
    /* 9B5C 8001B34C 00000000 */   nop
endlabel func_8001B15C
