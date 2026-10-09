nonmatching func_8001C8C0, 0x2E0

glabel func_8001C8C0
    /* B0D0 8001C8C0 98FFBD27 */  addiu      $sp, $sp, -0x68
    /* B0D4 8001C8C4 2140C000 */  addu       $t0, $a2, $zero
    /* B0D8 8001C8C8 2148E000 */  addu       $t1, $a3, $zero
    /* B0DC 8001C8CC 01002D25 */  addiu      $t5, $t1, 0x1
    /* B0E0 8001C8D0 80100800 */  sll        $v0, $t0, 2
    /* B0E4 8001C8D4 21104800 */  addu       $v0, $v0, $t0
    /* B0E8 8001C8D8 80100200 */  sll        $v0, $v0, 2
    /* B0EC 8001C8DC 4C00B3AF */  sw         $s3, 0x4C($sp)
    /* B0F0 8001C8E0 6400BFAF */  sw         $ra, 0x64($sp)
    /* B0F4 8001C8E4 6000BEAF */  sw         $fp, 0x60($sp)
    /* B0F8 8001C8E8 5C00B7AF */  sw         $s7, 0x5C($sp)
    /* B0FC 8001C8EC 5800B6AF */  sw         $s6, 0x58($sp)
    /* B100 8001C8F0 5400B5AF */  sw         $s5, 0x54($sp)
    /* B104 8001C8F4 5000B4AF */  sw         $s4, 0x50($sp)
    /* B108 8001C8F8 4800B2AF */  sw         $s2, 0x48($sp)
    /* B10C 8001C8FC 4400B1AF */  sw         $s1, 0x44($sp)
    /* B110 8001C900 4000B0AF */  sw         $s0, 0x40($sp)
    /* B114 8001C904 6800A4AF */  sw         $a0, 0x68($sp)
    /* B118 8001C908 2800848C */  lw         $a0, 0x28($a0)
    /* B11C 8001C90C 7C00B68F */  lw         $s6, 0x7C($sp)
    /* B120 8001C910 21104400 */  addu       $v0, $v0, $a0
    /* B124 8001C914 0000438C */  lw         $v1, 0x0($v0)
    /* B128 8001C918 8000B58F */  lw         $s5, 0x80($sp)
    /* B12C 8001C91C 2A18A301 */  slt        $v1, $t5, $v1
    /* B130 8001C920 05006014 */  bnez       $v1, .L8001C938
    /* B134 8001C924 2198A000 */   addu      $s3, $a1, $zero
    /* B138 8001C928 03000011 */  beqz       $t0, .L8001C938
    /* B13C 8001C92C 21680000 */   addu      $t5, $zero, $zero
    /* B140 8001C930 10004D8C */  lw         $t5, 0x10($v0)
    /* B144 8001C934 21400000 */  addu       $t0, $zero, $zero
  .L8001C938:
    /* B148 8001C938 80100600 */  sll        $v0, $a2, 2
    /* B14C 8001C93C 21104600 */  addu       $v0, $v0, $a2
    /* B150 8001C940 80F00200 */  sll        $fp, $v0, 2
    /* B154 8001C944 2150C403 */  addu       $t2, $fp, $a0
    /* B158 8001C948 40390900 */  sll        $a3, $t1, 5
    /* B15C 8001C94C 80100800 */  sll        $v0, $t0, 2
    /* B160 8001C950 21104800 */  addu       $v0, $v0, $t0
    /* B164 8001C954 80B80200 */  sll        $s7, $v0, 2
    /* B168 8001C958 2158E402 */  addu       $t3, $s7, $a0
    /* B16C 8001C95C 40310D00 */  sll        $a2, $t5, 5
    /* B170 8001C960 0C80083C */  lui        $t0, %hi(D_800BF3A0)
    /* B174 8001C964 A0F30825 */  addiu      $t0, $t0, %lo(D_800BF3A0)
    /* B178 8001C968 02000C25 */  addiu      $t4, $t0, 0x2
    /* B17C 8001C96C 2000B027 */  addiu      $s0, $sp, 0x20
    /* B180 8001C970 0800458D */  lw         $a1, 0x8($t2)
    /* B184 8001C974 7800A38F */  lw         $v1, 0x78($sp)
    /* B188 8001C978 0800628D */  lw         $v0, 0x8($t3)
    /* B18C 8001C97C 80180300 */  sll        $v1, $v1, 2
    /* B190 8001C980 21286500 */  addu       $a1, $v1, $a1
    /* B194 8001C984 21186200 */  addu       $v1, $v1, $v0
    /* B198 8001C988 0000A48C */  lw         $a0, 0x0($a1)
    /* B19C 8001C98C 0000658C */  lw         $a1, 0x0($v1)
    /* B1A0 8001C990 80180900 */  sll        $v1, $t1, 2
    /* B1A4 8001C994 21186900 */  addu       $v1, $v1, $t1
    /* B1A8 8001C998 80A00300 */  sll        $s4, $v1, 2
    /* B1AC 8001C99C 2138E400 */  addu       $a3, $a3, $a0
    /* B1B0 8001C9A0 2130C500 */  addu       $a2, $a2, $a1
    /* B1B4 8001C9A4 0400448D */  lw         $a0, 0x4($t2)
    /* B1B8 8001C9A8 0700E980 */  lb         $t1, 0x7($a3)
    /* B1BC 8001C9AC 21208402 */  addu       $a0, $s4, $a0
    /* B1C0 8001C9B0 10008294 */  lhu        $v0, 0x10($a0)
    /* B1C4 8001C9B4 0700C580 */  lb         $a1, 0x7($a2)
    /* B1C8 8001C9B8 FF0F4230 */  andi       $v0, $v0, 0xFFF
    /* B1CC 8001C9BC 80100200 */  sll        $v0, $v0, 2
    /* B1D0 8001C9C0 21104C00 */  addu       $v0, $v0, $t4
    /* B1D4 8001C9C4 00004484 */  lh         $a0, 0x0($v0)
    /* B1D8 8001C9C8 408A0500 */  sll        $s1, $a1, 9
    /* B1DC 8001C9CC 1400A0AF */  sw         $zero, 0x14($sp)
    /* B1E0 8001C9D0 1000A4AF */  sw         $a0, 0x10($sp)
    /* B1E4 8001C9D4 0400438D */  lw         $v1, 0x4($t2)
    /* B1E8 8001C9D8 404A0900 */  sll        $t1, $t1, 9
    /* B1EC 8001C9DC 21188302 */  addu       $v1, $s4, $v1
    /* B1F0 8001C9E0 10006294 */  lhu        $v0, 0x10($v1)
    /* B1F4 8001C9E4 80180D00 */  sll        $v1, $t5, 2
    /* B1F8 8001C9E8 FF0F4230 */  andi       $v0, $v0, 0xFFF
    /* B1FC 8001C9EC 80100200 */  sll        $v0, $v0, 2
    /* B200 8001C9F0 21104800 */  addu       $v0, $v0, $t0
    /* B204 8001C9F4 00004484 */  lh         $a0, 0x0($v0)
    /* B208 8001C9F8 21186D00 */  addu       $v1, $v1, $t5
    /* B20C 8001C9FC 1800A4AF */  sw         $a0, 0x18($sp)
    /* B210 8001CA00 0400648D */  lw         $a0, 0x4($t3)
    /* B214 8001CA04 80900300 */  sll        $s2, $v1, 2
    /* B218 8001CA08 21204402 */  addu       $a0, $s2, $a0
    /* B21C 8001CA0C 10008294 */  lhu        $v0, 0x10($a0)
    /* B220 8001CA10 23882902 */  subu       $s1, $s1, $t1
    /* B224 8001CA14 FF0F4230 */  andi       $v0, $v0, 0xFFF
    /* B228 8001CA18 80100200 */  sll        $v0, $v0, 2
    /* B22C 8001CA1C 21104C00 */  addu       $v0, $v0, $t4
    /* B230 8001CA20 00004484 */  lh         $a0, 0x0($v0)
    /* B234 8001CA24 18003602 */  mult       $s1, $s6
    /* B238 8001CA28 2400A0AF */  sw         $zero, 0x24($sp)
    /* B23C 8001CA2C 2000A4AF */  sw         $a0, 0x20($sp)
    /* B240 8001CA30 0400638D */  lw         $v1, 0x4($t3)
    /* B244 8001CA34 1000A527 */  addiu      $a1, $sp, 0x10
    /* B248 8001CA38 21184302 */  addu       $v1, $s2, $v1
    /* B24C 8001CA3C 10006294 */  lhu        $v0, 0x10($v1)
    /* B250 8001CA40 21200002 */  addu       $a0, $s0, $zero
    /* B254 8001CA44 FF0F4230 */  andi       $v0, $v0, 0xFFF
    /* B258 8001CA48 80100200 */  sll        $v0, $v0, 2
    /* B25C 8001CA4C 21104800 */  addu       $v0, $v0, $t0
    /* B260 8001CA50 00004384 */  lh         $v1, 0x0($v0)
    /* B264 8001CA54 12880000 */  mflo       $s1
    /* B268 8001CA58 038B1100 */  sra        $s1, $s1, 12
    /* B26C 8001CA5C 21882902 */  addu       $s1, $s1, $t1
    /* B270 8001CA60 0D66020C */  jal        func_80099834
    /* B274 8001CA64 2800A3AF */   sw        $v1, 0x28($sp)
    /* B278 8001CA68 21200002 */  addu       $a0, $s0, $zero
    /* B27C 8001CA6C 9365020C */  jal        func_8009964C
    /* B280 8001CA70 2128C002 */   addu      $a1, $s6, $zero
    /* B284 8001CA74 21200002 */  addu       $a0, $s0, $zero
    /* B288 8001CA78 5267020C */  jal        func_80099D48
    /* B28C 8001CA7C 0C000524 */   addiu     $a1, $zero, 0xC
    /* B290 8001CA80 21200002 */  addu       $a0, $s0, $zero
    /* B294 8001CA84 F465020C */  jal        func_800997D0
    /* B298 8001CA88 1000A527 */   addiu     $a1, $sp, 0x10
    /* B29C 8001CA8C A763020C */  jal        func_80098E9C
    /* B2A0 8001CA90 21200002 */   addu      $a0, $s0, $zero
    /* B2A4 8001CA94 2000A28F */  lw         $v0, 0x20($sp)
    /* B2A8 8001CA98 2800A58F */  lw         $a1, 0x28($sp)
    /* B2AC 8001CA9C 23100200 */  negu       $v0, $v0
    /* B2B0 8001CAA0 1000A5AF */  sw         $a1, 0x10($sp)
    /* B2B4 8001CAA4 0700A012 */  beqz       $s5, .L8001CAC4
    /* B2B8 8001CAA8 1800A2AF */   sw        $v0, 0x18($sp)
    /* B2BC 8001CAAC 1000A227 */  addiu      $v0, $sp, 0x10
    /* B2C0 8001CAB0 0400438C */  lw         $v1, 0x4($v0)
    /* B2C4 8001CAB4 0800448C */  lw         $a0, 0x8($v0)
    /* B2C8 8001CAB8 0000A5AE */  sw         $a1, 0x0($s5)
    /* B2CC 8001CABC 0400A3AE */  sw         $v1, 0x4($s5)
    /* B2D0 8001CAC0 0800A4AE */  sw         $a0, 0x8($s5)
  .L8001CAC4:
    /* B2D4 8001CAC4 1000A427 */  addiu      $a0, $sp, 0x10
    /* B2D8 8001CAC8 9365020C */  jal        func_8009964C
    /* B2DC 8001CACC 21282002 */   addu      $a1, $s1, $zero
    /* B2E0 8001CAD0 1000A427 */  addiu      $a0, $sp, 0x10
    /* B2E4 8001CAD4 5267020C */  jal        func_80099D48
    /* B2E8 8001CAD8 0C000524 */   addiu     $a1, $zero, 0xC
    /* B2EC 8001CADC 6800AE8F */  lw         $t6, 0x68($sp)
    /* B2F0 8001CAE0 00000000 */  nop
    /* B2F4 8001CAE4 2800C68D */  lw         $a2, 0x28($t6)
    /* B2F8 8001CAE8 21206002 */  addu       $a0, $s3, $zero
    /* B2FC 8001CAEC 2118C603 */  addu       $v1, $fp, $a2
    /* B300 8001CAF0 0400628C */  lw         $v0, 0x4($v1)
    /* B304 8001CAF4 2130E602 */  addu       $a2, $s7, $a2
    /* B308 8001CAF8 21108202 */  addu       $v0, $s4, $v0
    /* B30C 8001CAFC 00004F8C */  lw         $t7, 0x0($v0)
    /* B310 8001CB00 0400588C */  lw         $t8, 0x4($v0)
    /* B314 8001CB04 0800598C */  lw         $t9, 0x8($v0)
    /* B318 8001CB08 3000AFAF */  sw         $t7, 0x30($sp)
    /* B31C 8001CB0C 3400B8AF */  sw         $t8, 0x34($sp)
    /* B320 8001CB10 3800B9AF */  sw         $t9, 0x38($sp)
    /* B324 8001CB14 0400C38C */  lw         $v1, 0x4($a2)
    /* B328 8001CB18 3000B027 */  addiu      $s0, $sp, 0x30
    /* B32C 8001CB1C 21184302 */  addu       $v1, $s2, $v1
    /* B330 8001CB20 0000628C */  lw         $v0, 0x0($v1)
    /* B334 8001CB24 0400668C */  lw         $a2, 0x4($v1)
    /* B338 8001CB28 0800678C */  lw         $a3, 0x8($v1)
    /* B33C 8001CB2C 21280002 */  addu       $a1, $s0, $zero
    /* B340 8001CB30 000062AE */  sw         $v0, 0x0($s3)
    /* B344 8001CB34 040066AE */  sw         $a2, 0x4($s3)
    /* B348 8001CB38 0D66020C */  jal        func_80099834
    /* B34C 8001CB3C 080067AE */   sw        $a3, 0x8($s3)
    /* B350 8001CB40 21206002 */  addu       $a0, $s3, $zero
    /* B354 8001CB44 9365020C */  jal        func_8009964C
    /* B358 8001CB48 2128C002 */   addu      $a1, $s6, $zero
    /* B35C 8001CB4C 21206002 */  addu       $a0, $s3, $zero
    /* B360 8001CB50 5267020C */  jal        func_80099D48
    /* B364 8001CB54 0C000524 */   addiu     $a1, $zero, 0xC
    /* B368 8001CB58 21206002 */  addu       $a0, $s3, $zero
    /* B36C 8001CB5C F465020C */  jal        func_800997D0
    /* B370 8001CB60 21280002 */   addu      $a1, $s0, $zero
    /* B374 8001CB64 21206002 */  addu       $a0, $s3, $zero
    /* B378 8001CB68 F465020C */  jal        func_800997D0
    /* B37C 8001CB6C 1000A527 */   addiu     $a1, $sp, 0x10
    /* B380 8001CB70 6400BF8F */  lw         $ra, 0x64($sp)
    /* B384 8001CB74 6000BE8F */  lw         $fp, 0x60($sp)
    /* B388 8001CB78 5C00B78F */  lw         $s7, 0x5C($sp)
    /* B38C 8001CB7C 5800B68F */  lw         $s6, 0x58($sp)
    /* B390 8001CB80 5400B58F */  lw         $s5, 0x54($sp)
    /* B394 8001CB84 5000B48F */  lw         $s4, 0x50($sp)
    /* B398 8001CB88 4C00B38F */  lw         $s3, 0x4C($sp)
    /* B39C 8001CB8C 4800B28F */  lw         $s2, 0x48($sp)
    /* B3A0 8001CB90 4400B18F */  lw         $s1, 0x44($sp)
    /* B3A4 8001CB94 4000B08F */  lw         $s0, 0x40($sp)
    /* B3A8 8001CB98 0800E003 */  jr         $ra
    /* B3AC 8001CB9C 6800BD27 */   addiu     $sp, $sp, 0x68
endlabel func_8001C8C0
