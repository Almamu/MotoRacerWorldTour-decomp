nonmatching SetDrawEnv, 0x1F8

glabel SetDrawEnv
    /* 9B148 800AC938 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 9B14C 800AC93C 1800B0AF */  sw         $s0, 0x18($sp)
    /* 9B150 800AC940 2180A000 */  addu       $s0, $a1, $zero
    /* 9B154 800AC944 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 9B158 800AC948 21888000 */  addu       $s1, $a0, $zero
    /* 9B15C 800AC94C 2000BFAF */  sw         $ra, 0x20($sp)
    /* 9B160 800AC950 00000486 */  lh         $a0, 0x0($s0)
    /* 9B164 800AC954 02000586 */  lh         $a1, 0x2($s0)
    /* 9B168 800AC958 70B3020C */  jal        func_800ACDC0
    /* 9B16C 800AC95C 00000000 */   nop
    /* 9B170 800AC960 040022AE */  sw         $v0, 0x4($s1)
    /* 9B174 800AC964 04000496 */  lhu        $a0, 0x4($s0)
    /* 9B178 800AC968 00000296 */  lhu        $v0, 0x0($s0)
    /* 9B17C 800AC96C 02000596 */  lhu        $a1, 0x2($s0)
    /* 9B180 800AC970 21208200 */  addu       $a0, $a0, $v0
    /* 9B184 800AC974 FFFF8424 */  addiu      $a0, $a0, -0x1
    /* 9B188 800AC978 00240400 */  sll        $a0, $a0, 16
    /* 9B18C 800AC97C 06000296 */  lhu        $v0, 0x6($s0)
    /* 9B190 800AC980 03240400 */  sra        $a0, $a0, 16
    /* 9B194 800AC984 2128A200 */  addu       $a1, $a1, $v0
    /* 9B198 800AC988 FFFFA524 */  addiu      $a1, $a1, -0x1
    /* 9B19C 800AC98C 002C0500 */  sll        $a1, $a1, 16
    /* 9B1A0 800AC990 96B3020C */  jal        func_800ACE58
    /* 9B1A4 800AC994 032C0500 */   sra       $a1, $a1, 16
    /* 9B1A8 800AC998 080022AE */  sw         $v0, 0x8($s1)
    /* 9B1AC 800AC99C 08000486 */  lh         $a0, 0x8($s0)
    /* 9B1B0 800AC9A0 0A000586 */  lh         $a1, 0xA($s0)
    /* 9B1B4 800AC9A4 BCB3020C */  jal        func_800ACEF0
    /* 9B1B8 800AC9A8 00000000 */   nop
    /* 9B1BC 800AC9AC 0C0022AE */  sw         $v0, 0xC($s1)
    /* 9B1C0 800AC9B0 17000492 */  lbu        $a0, 0x17($s0)
    /* 9B1C4 800AC9B4 16000592 */  lbu        $a1, 0x16($s0)
    /* 9B1C8 800AC9B8 14000696 */  lhu        $a2, 0x14($s0)
    /* 9B1CC 800AC9BC 68B3020C */  jal        func_800ACDA0
    /* 9B1D0 800AC9C0 00000000 */   nop
    /* 9B1D4 800AC9C4 0C000426 */  addiu      $a0, $s0, 0xC
    /* 9B1D8 800AC9C8 C3B3020C */  jal        func_800ACF0C
    /* 9B1DC 800AC9CC 100022AE */   sw        $v0, 0x10($s1)
    /* 9B1E0 800AC9D0 140022AE */  sw         $v0, 0x14($s1)
    /* 9B1E4 800AC9D4 00E6023C */  lui        $v0, (0xE6000000 >> 16)
    /* 9B1E8 800AC9D8 180022AE */  sw         $v0, 0x18($s1)
    /* 9B1EC 800AC9DC 18000292 */  lbu        $v0, 0x18($s0)
    /* 9B1F0 800AC9E0 00000000 */  nop
    /* 9B1F4 800AC9E4 4B004010 */  beqz       $v0, .L800ACB14
    /* 9B1F8 800AC9E8 07000824 */   addiu     $t0, $zero, 0x7
    /* 9B1FC 800AC9EC 00000296 */  lhu        $v0, 0x0($s0)
    /* 9B200 800AC9F0 00000000 */  nop
    /* 9B204 800AC9F4 1000A2A7 */  sh         $v0, 0x10($sp)
    /* 9B208 800AC9F8 02000296 */  lhu        $v0, 0x2($s0)
    /* 9B20C 800AC9FC 00000000 */  nop
    /* 9B210 800ACA00 1200A2A7 */  sh         $v0, 0x12($sp)
    /* 9B214 800ACA04 04000496 */  lhu        $a0, 0x4($s0)
    /* 9B218 800ACA08 00000000 */  nop
    /* 9B21C 800ACA0C 1400A4A7 */  sh         $a0, 0x14($sp)
    /* 9B220 800ACA10 06000296 */  lhu        $v0, 0x6($s0)
    /* 9B224 800ACA14 00000000 */  nop
    /* 9B228 800ACA18 1600A2A7 */  sh         $v0, 0x16($sp)
    /* 9B22C 800ACA1C 00140400 */  sll        $v0, $a0, 16
    /* 9B230 800ACA20 031C0200 */  sra        $v1, $v0, 16
    /* 9B234 800ACA24 0B006004 */  bltz       $v1, .L800ACA54
    /* 9B238 800ACA28 21100000 */   addu      $v0, $zero, $zero
    /* 9B23C 800ACA2C 0C80023C */  lui        $v0, %hi(D_800BF244)
    /* 9B240 800ACA30 44F24284 */  lh         $v0, %lo(D_800BF244)($v0)
    /* 9B244 800ACA34 00000000 */  nop
    /* 9B248 800ACA38 FFFF4224 */  addiu      $v0, $v0, -0x1
    /* 9B24C 800ACA3C 2A104300 */  slt        $v0, $v0, $v1
    /* 9B250 800ACA40 0C80033C */  lui        $v1, %hi(D_800BF244)
    /* 9B254 800ACA44 44F26394 */  lhu        $v1, %lo(D_800BF244)($v1)
    /* 9B258 800ACA48 02004014 */  bnez       $v0, .L800ACA54
    /* 9B25C 800ACA4C FFFF6224 */   addiu     $v0, $v1, -0x1
    /* 9B260 800ACA50 21108000 */  addu       $v0, $a0, $zero
  .L800ACA54:
    /* 9B264 800ACA54 1600A387 */  lh         $v1, 0x16($sp)
    /* 9B268 800ACA58 1600A497 */  lhu        $a0, 0x16($sp)
    /* 9B26C 800ACA5C 0C006004 */  bltz       $v1, .L800ACA90
    /* 9B270 800ACA60 1400A2A7 */   sh        $v0, 0x14($sp)
    /* 9B274 800ACA64 0C80023C */  lui        $v0, %hi(D_800BF246)
    /* 9B278 800ACA68 46F24284 */  lh         $v0, %lo(D_800BF246)($v0)
    /* 9B27C 800ACA6C 00000000 */  nop
    /* 9B280 800ACA70 FFFF4224 */  addiu      $v0, $v0, -0x1
    /* 9B284 800ACA74 2A104300 */  slt        $v0, $v0, $v1
    /* 9B288 800ACA78 0C80033C */  lui        $v1, %hi(D_800BF246)
    /* 9B28C 800ACA7C 46F26394 */  lhu        $v1, %lo(D_800BF246)($v1)
    /* 9B290 800ACA80 04004014 */  bnez       $v0, .L800ACA94
    /* 9B294 800ACA84 FFFF6224 */   addiu     $v0, $v1, -0x1
    /* 9B298 800ACA88 A5B20208 */  j          .L800ACA94
    /* 9B29C 800ACA8C 21108000 */   addu      $v0, $a0, $zero
  .L800ACA90:
    /* 9B2A0 800ACA90 21100000 */  addu       $v0, $zero, $zero
  .L800ACA94:
    /* 9B2A4 800ACA94 80300800 */  sll        $a2, $t0, 2
    /* 9B2A8 800ACA98 01000825 */  addiu      $t0, $t0, 0x1
    /* 9B2AC 800ACA9C 80380800 */  sll        $a3, $t0, 2
    /* 9B2B0 800ACAA0 01000825 */  addiu      $t0, $t0, 0x1
    /* 9B2B4 800ACAA4 80280800 */  sll        $a1, $t0, 2
    /* 9B2B8 800ACAA8 01000825 */  addiu      $t0, $t0, 0x1
    /* 9B2BC 800ACAAC 1600A2A7 */  sh         $v0, 0x16($sp)
    /* 9B2C0 800ACAB0 1000A297 */  lhu        $v0, 0x10($sp)
    /* 9B2C4 800ACAB4 08000396 */  lhu        $v1, 0x8($s0)
    /* 9B2C8 800ACAB8 2130D100 */  addu       $a2, $a2, $s1
    /* 9B2CC 800ACABC 23104300 */  subu       $v0, $v0, $v1
    /* 9B2D0 800ACAC0 1000A2A7 */  sh         $v0, 0x10($sp)
    /* 9B2D4 800ACAC4 1200A297 */  lhu        $v0, 0x12($sp)
    /* 9B2D8 800ACAC8 0A000396 */  lhu        $v1, 0xA($s0)
    /* 9B2DC 800ACACC 0060043C */  lui        $a0, (0x60000000 >> 16)
    /* 9B2E0 800ACAD0 23104300 */  subu       $v0, $v0, $v1
    /* 9B2E4 800ACAD4 1200A2A7 */  sh         $v0, 0x12($sp)
    /* 9B2E8 800ACAD8 1B000292 */  lbu        $v0, 0x1B($s0)
    /* 9B2EC 800ACADC 1A000392 */  lbu        $v1, 0x1A($s0)
    /* 9B2F0 800ACAE0 00140200 */  sll        $v0, $v0, 16
    /* 9B2F4 800ACAE4 001A0300 */  sll        $v1, $v1, 8
    /* 9B2F8 800ACAE8 25186400 */  or         $v1, $v1, $a0
    /* 9B2FC 800ACAEC 19000492 */  lbu        $a0, 0x19($s0)
    /* 9B300 800ACAF0 25104300 */  or         $v0, $v0, $v1
    /* 9B304 800ACAF4 25104400 */  or         $v0, $v0, $a0
    /* 9B308 800ACAF8 0000C2AC */  sw         $v0, 0x0($a2)
    /* 9B30C 800ACAFC 1000A28F */  lw         $v0, 0x10($sp)
    /* 9B310 800ACB00 2138F100 */  addu       $a3, $a3, $s1
    /* 9B314 800ACB04 0000E2AC */  sw         $v0, 0x0($a3)
    /* 9B318 800ACB08 1400A28F */  lw         $v0, 0x14($sp)
    /* 9B31C 800ACB0C 2128B100 */  addu       $a1, $a1, $s1
    /* 9B320 800ACB10 0000A2AC */  sw         $v0, 0x0($a1)
  .L800ACB14:
    /* 9B324 800ACB14 FFFF0225 */  addiu      $v0, $t0, -0x1
    /* 9B328 800ACB18 030022A2 */  sb         $v0, 0x3($s1)
    /* 9B32C 800ACB1C 2000BF8F */  lw         $ra, 0x20($sp)
    /* 9B330 800ACB20 1C00B18F */  lw         $s1, 0x1C($sp)
    /* 9B334 800ACB24 1800B08F */  lw         $s0, 0x18($sp)
    /* 9B338 800ACB28 0800E003 */  jr         $ra
    /* 9B33C 800ACB2C 2800BD27 */   addiu     $sp, $sp, 0x28
endlabel SetDrawEnv
