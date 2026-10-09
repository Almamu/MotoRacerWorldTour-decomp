nonmatching func_8009E954, 0x17C

glabel func_8009E954
    /* 8D164 8009E954 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 8D168 8009E958 01000324 */  addiu      $v1, $zero, 0x1
    /* 8D16C 8009E95C 2400BFAF */  sw         $ra, 0x24($sp)
    /* 8D170 8009E960 2000B2AF */  sw         $s2, 0x20($sp)
    /* 8D174 8009E964 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 8D178 8009E968 1800B0AF */  sw         $s0, 0x18($sp)
    /* 8D17C 8009E96C 980A868C */  lw         $a2, 0xA98($a0)
    /* 8D180 8009E970 9C0A828C */  lw         $v0, 0xA9C($a0)
    /* 8D184 8009E974 800A858C */  lw         $a1, 0xA80($a0)
    /* 8D188 8009E978 D000D28C */  lw         $s2, 0xD0($a2)
    /* 8D18C 8009E97C 0800C78C */  lw         $a3, 0x8($a2)
    /* 8D190 8009E980 6000B08C */  lw         $s0, 0x60($a1)
    /* 8D194 8009E984 0E00E314 */  bne        $a3, $v1, .L8009E9C0
    /* 8D198 8009E988 08004224 */   addiu     $v0, $v0, 0x8
    /* 8D19C 8009E98C 0800428C */  lw         $v0, 0x8($v0)
    /* 8D1A0 8009E990 00000000 */  nop
    /* 8D1A4 8009E994 05004714 */  bne        $v0, $a3, .L8009E9AC
    /* 8D1A8 8009E998 00000000 */   nop
    /* 8D1AC 8009E99C 7400038E */  lw         $v1, 0x74($s0)
    /* 8D1B0 8009E9A0 00000296 */  lhu        $v0, 0x0($s0)
    /* 8D1B4 8009E9A4 727A0208 */  j          .L8009E9C8
    /* 8D1B8 8009E9A8 00000000 */   nop
  .L8009E9AC:
    /* 8D1BC 8009E9AC 7400038E */  lw         $v1, 0x74($s0)
    /* 8D1C0 8009E9B0 04000296 */  lhu        $v0, 0x4($s0)
    /* 8D1C4 8009E9B4 D400D28C */  lw         $s2, 0xD4($a2)
    /* 8D1C8 8009E9B8 727A0208 */  j          .L8009E9C8
    /* 8D1CC 8009E9BC 00000000 */   nop
  .L8009E9C0:
    /* 8D1D0 8009E9C0 7400038E */  lw         $v1, 0x74($s0)
    /* 8D1D4 8009E9C4 08000296 */  lhu        $v0, 0x8($s0)
  .L8009E9C8:
    /* 8D1D8 8009E9C8 CB79020C */  jal        func_8009E72C
    /* 8D1DC 8009E9CC 080062A4 */   sh        $v0, 0x8($v1)
    /* 8D1E0 8009E9D0 21884000 */  addu       $s1, $v0, $zero
    /* 8D1E4 8009E9D4 38002006 */  bltz       $s1, .L8009EAB8
    /* 8D1E8 8009E9D8 00000000 */   nop
    /* 8D1EC 8009E9DC 2C00048E */  lw         $a0, 0x2C($s0)
    /* 8D1F0 8009E9E0 56DF000C */  jal        func_80037D58
    /* 8D1F4 8009E9E4 21284002 */   addu      $a1, $s2, $zero
    /* 8D1F8 8009E9E8 3000068E */  lw         $a2, 0x30($s0)
    /* 8D1FC 8009E9EC 00000000 */  nop
    /* 8D200 8009E9F0 2000C58C */  lw         $a1, 0x20($a2)
    /* 8D204 8009E9F4 1000A427 */  addiu      $a0, $sp, 0x10
    /* 8D208 8009E9F8 21380000 */  addu       $a3, $zero, $zero
    /* 8D20C 8009E9FC 80581100 */  sll        $t3, $s1, 2
    /* 8D210 8009EA00 C0501100 */  sll        $t2, $s1, 3
    /* 8D214 8009EA04 40121200 */  sll        $v0, $s2, 9
    /* 8D218 8009EA08 1000A0A7 */  sh         $zero, 0x10($sp)
    /* 8D21C 8009EA0C 020082A4 */  sh         $v0, 0x2($a0)
    /* 8D220 8009EA10 040080A4 */  sh         $zero, 0x4($a0)
    /* 8D224 8009EA14 1800A38C */  lw         $v1, 0x18($a1)
    /* 8D228 8009EA18 54000926 */  addiu      $t1, $s0, 0x54
    /* 8D22C 8009EA1C 1300AC8B */  lwl        $t4, 0x13($sp)
    /* 8D230 8009EA20 1000AC9B */  lwr        $t4, 0x10($sp)
    /* 8D234 8009EA24 1700AD8B */  lwl        $t5, 0x17($sp)
    /* 8D238 8009EA28 1400AD9B */  lwr        $t5, 0x14($sp)
    /* 8D23C 8009EA2C 03006CA8 */  swl        $t4, 0x3($v1)
    /* 8D240 8009EA30 00006CB8 */  swr        $t4, 0x0($v1)
    /* 8D244 8009EA34 07006DA8 */  swl        $t5, 0x7($v1)
    /* 8D248 8009EA38 04006DB8 */  swr        $t5, 0x4($v1)
    /* 8D24C 8009EA3C 1200A297 */  lhu        $v0, 0x12($sp)
    /* 8D250 8009EA40 34000826 */  addiu      $t0, $s0, 0x34
    /* 8D254 8009EA44 FFFF4224 */  addiu      $v0, $v0, -0x1
    /* 8D258 8009EA48 1200A2A7 */  sh         $v0, 0x12($sp)
    /* 8D25C 8009EA4C 1300AC8B */  lwl        $t4, 0x13($sp)
    /* 8D260 8009EA50 1000AC9B */  lwr        $t4, 0x10($sp)
    /* 8D264 8009EA54 1700AD8B */  lwl        $t5, 0x17($sp)
    /* 8D268 8009EA58 1400AD9B */  lwr        $t5, 0x14($sp)
    /* 8D26C 8009EA5C 7F00CCA8 */  swl        $t4, 0x7F($a2)
    /* 8D270 8009EA60 7C00CCB8 */  swr        $t4, 0x7C($a2)
    /* 8D274 8009EA64 8300CDA8 */  swl        $t5, 0x83($a2)
    /* 8D278 8009EA68 8000CDB8 */  swr        $t5, 0x80($a2)
  .L8009EA6C:
    /* 8D27C 8009EA6C 0000038D */  lw         $v1, 0x0($t0)
    /* 8D280 8009EA70 04000825 */  addiu      $t0, $t0, 0x4
    /* 8D284 8009EA74 21204701 */  addu       $a0, $t2, $a3
    /* 8D288 8009EA78 8800028E */  lw         $v0, 0x88($s0)
    /* 8D28C 8009EA7C 0100E724 */  addiu      $a3, $a3, 0x1
    /* 8D290 8009EA80 21106201 */  addu       $v0, $t3, $v0
    /* 8D294 8009EA84 3800658C */  lw         $a1, 0x38($v1)
    /* 8D298 8009EA88 00004394 */  lhu        $v1, 0x0($v0)
    /* 8D29C 8009EA8C 80200400 */  sll        $a0, $a0, 2
    /* 8D2A0 8009EA90 0000A3A4 */  sh         $v1, 0x0($a1)
    /* 8D2A4 8009EA94 0000238D */  lw         $v1, 0x0($t1)
    /* 8D2A8 8009EA98 8C00028E */  lw         $v0, 0x8C($s0)
    /* 8D2AC 8009EA9C 04002925 */  addiu      $t1, $t1, 0x4
    /* 8D2B0 8009EAA0 21208200 */  addu       $a0, $a0, $v0
    /* 8D2B4 8009EAA4 3800658C */  lw         $a1, 0x38($v1)
    /* 8D2B8 8009EAA8 00008394 */  lhu        $v1, 0x0($a0)
    /* 8D2BC 8009EAAC 0800E228 */  slti       $v0, $a3, 0x8
    /* 8D2C0 8009EAB0 EEFF4014 */  bnez       $v0, .L8009EA6C
    /* 8D2C4 8009EAB4 0000A3A4 */   sh        $v1, 0x0($a1)
  .L8009EAB8:
    /* 8D2C8 8009EAB8 2400BF8F */  lw         $ra, 0x24($sp)
    /* 8D2CC 8009EABC 2000B28F */  lw         $s2, 0x20($sp)
    /* 8D2D0 8009EAC0 1C00B18F */  lw         $s1, 0x1C($sp)
    /* 8D2D4 8009EAC4 1800B08F */  lw         $s0, 0x18($sp)
    /* 8D2D8 8009EAC8 0800E003 */  jr         $ra
    /* 8D2DC 8009EACC 2800BD27 */   addiu     $sp, $sp, 0x28
endlabel func_8009E954
