nonmatching func_8004C9D0, 0x18C

glabel func_8004C9D0
    /* 3B1E0 8004C9D0 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 3B1E4 8004C9D4 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 3B1E8 8004C9D8 01001324 */  addiu      $s3, $zero, 0x1
    /* 3B1EC 8004C9DC 1800B2AF */  sw         $s2, 0x18($sp)
    /* 3B1F0 8004C9E0 1000B0AF */  sw         $s0, 0x10($sp)
    /* 3B1F4 8004C9E4 21808000 */  addu       $s0, $a0, $zero
    /* 3B1F8 8004C9E8 1400B1AF */  sw         $s1, 0x14($sp)
    /* 3B1FC 8004C9EC 2188A000 */  addu       $s1, $a1, $zero
    /* 3B200 8004C9F0 21101102 */  addu       $v0, $s0, $s1
    /* 3B204 8004C9F4 2000BFAF */  sw         $ra, 0x20($sp)
    /* 3B208 8004C9F8 70044380 */  lb         $v1, 0x470($v0)
    /* 3B20C 8004C9FC 7803048E */  lw         $a0, 0x378($s0)
    /* 3B210 8004CA00 0C006004 */  bltz       $v1, .L8004CA34
    /* 3B214 8004CA04 21900000 */   addu      $s2, $zero, $zero
    /* 3B218 8004CA08 40100300 */  sll        $v0, $v1, 1
    /* 3B21C 8004CA0C 21104300 */  addu       $v0, $v0, $v1
    /* 3B220 8004CA10 80100200 */  sll        $v0, $v0, 2
    /* 3B224 8004CA14 23104300 */  subu       $v0, $v0, $v1
    /* 3B228 8004CA18 80100200 */  sll        $v0, $v0, 2
    /* 3B22C 8004CA1C 23104300 */  subu       $v0, $v0, $v1
    /* 3B230 8004CA20 80100200 */  sll        $v0, $v0, 2
    /* 3B234 8004CA24 21104300 */  addu       $v0, $v0, $v1
    /* 3B238 8004CA28 C0100200 */  sll        $v0, $v0, 3
    /* 3B23C 8004CA2C E8024224 */  addiu      $v0, $v0, 0x2E8
    /* 3B240 8004CA30 21908200 */  addu       $s2, $a0, $v0
  .L8004CA34:
    /* 3B244 8004CA34 9404048E */  lw         $a0, 0x494($s0)
    /* 3B248 8004CA38 4848010C */  jal        func_80052120
    /* 3B24C 8004CA3C 00000000 */   nop
    /* 3B250 8004CA40 2E002016 */  bnez       $s1, .L8004CAFC
    /* 3B254 8004CA44 21284000 */   addu      $a1, $v0, $zero
    /* 3B258 8004CA48 6404028E */  lw         $v0, 0x464($s0)
    /* 3B25C 8004CA4C 00000000 */  nop
    /* 3B260 8004CA50 0000448C */  lw         $a0, 0x0($v0)
    /* 3B264 8004CA54 00000000 */  nop
    /* 3B268 8004CA58 0E008010 */  beqz       $a0, .L8004CA94
    /* 3B26C 8004CA5C 00000000 */   nop
    /* 3B270 8004CA60 7803028E */  lw         $v0, 0x378($s0)
    /* 3B274 8004CA64 00000000 */  nop
    /* 3B278 8004CA68 081E438C */  lw         $v1, 0x1E08($v0)
    /* 3B27C 8004CA6C 00000000 */  nop
    /* 3B280 8004CA70 06007310 */  beq        $v1, $s3, .L8004CA8C
    /* 3B284 8004CA74 03000224 */   addiu     $v0, $zero, 0x3
    /* 3B288 8004CA78 0400828C */  lw         $v0, 0x4($a0)
    /* 3B28C 8004CA7C 00000000 */  nop
    /* 3B290 8004CA80 00024230 */  andi       $v0, $v0, 0x200
    /* 3B294 8004CA84 03004010 */  beqz       $v0, .L8004CA94
    /* 3B298 8004CA88 03000224 */   addiu     $v0, $zero, 0x3
  .L8004CA8C:
    /* 3B29C 8004CA8C CF320108 */  j          .L8004CB3C
    /* 3B2A0 8004CA90 300402AE */   sw        $v0, 0x430($s0)
  .L8004CA94:
    /* 3B2A4 8004CA94 19002016 */  bnez       $s1, .L8004CAFC
    /* 3B2A8 8004CA98 00000000 */   nop
    /* 3B2AC 8004CA9C 0403028E */  lw         $v0, 0x304($s0)
    /* 3B2B0 8004CAA0 00000000 */  nop
    /* 3B2B4 8004CAA4 11004014 */  bnez       $v0, .L8004CAEC
    /* 3B2B8 8004CAA8 80101100 */   sll       $v0, $s1, 2
    /* 3B2BC 8004CAAC 0D80023C */  lui        $v0, %hi(D_800CB3BC)
    /* 3B2C0 8004CAB0 BCB3428C */  lw         $v0, %lo(D_800CB3BC)($v0)
    /* 3B2C4 8004CAB4 00000000 */  nop
    /* 3B2C8 8004CAB8 03004014 */  bnez       $v0, .L8004CAC8
    /* 3B2CC 8004CABC 00000000 */   nop
    /* 3B2D0 8004CAC0 0E00A010 */  beqz       $a1, .L8004CAFC
    /* 3B2D4 8004CAC4 00000000 */   nop
  .L8004CAC8:
    /* 3B2D8 8004CAC8 7803028E */  lw         $v0, 0x378($s0)
    /* 3B2DC 8004CACC 00000000 */  nop
    /* 3B2E0 8004CAD0 0000448C */  lw         $a0, 0x0($v0)
    /* 3B2E4 8004CAD4 00000000 */  nop
    /* 3B2E8 8004CAD8 A8008330 */  andi       $v1, $a0, 0xA8
    /* 3B2EC 8004CADC 10006014 */  bnez       $v1, .L8004CB20
    /* 3B2F0 8004CAE0 02000224 */   addiu     $v0, $zero, 0x2
    /* 3B2F4 8004CAE4 05008210 */  beq        $a0, $v0, .L8004CAFC
    /* 3B2F8 8004CAE8 80101100 */   sll       $v0, $s1, 2
  .L8004CAEC:
    /* 3B2FC 8004CAEC 21100202 */  addu       $v0, $s0, $v0
    /* 3B300 8004CAF0 05000324 */  addiu      $v1, $zero, 0x5
    /* 3B304 8004CAF4 CF320108 */  j          .L8004CB3C
    /* 3B308 8004CAF8 300443AC */   sw        $v1, 0x430($v0)
  .L8004CAFC:
    /* 3B30C 8004CAFC 7803038E */  lw         $v1, 0x378($s0)
    /* 3B310 8004CB00 00000000 */  nop
    /* 3B314 8004CB04 0000628C */  lw         $v0, 0x0($v1)
    /* 3B318 8004CB08 00000000 */  nop
    /* 3B31C 8004CB0C A8004230 */  andi       $v0, $v0, 0xA8
    /* 3B320 8004CB10 04004014 */  bnez       $v0, .L8004CB24
    /* 3B324 8004CB14 21200002 */   addu      $a0, $s0, $zero
    /* 3B328 8004CB18 07002016 */  bnez       $s1, .L8004CB38
    /* 3B32C 8004CB1C 00000000 */   nop
  .L8004CB20:
    /* 3B330 8004CB20 21200002 */  addu       $a0, $s0, $zero
  .L8004CB24:
    /* 3B334 8004CB24 21282002 */  addu       $a1, $s1, $zero
    /* 3B338 8004CB28 1C32010C */  jal        func_8004C870
    /* 3B33C 8004CB2C 21304002 */   addu      $a2, $s2, $zero
    /* 3B340 8004CB30 D0320108 */  j          .L8004CB40
    /* 3B344 8004CB34 21106002 */   addu      $v0, $s3, $zero
  .L8004CB38:
    /* 3B348 8004CB38 21980000 */  addu       $s3, $zero, $zero
  .L8004CB3C:
    /* 3B34C 8004CB3C 21106002 */  addu       $v0, $s3, $zero
  .L8004CB40:
    /* 3B350 8004CB40 2000BF8F */  lw         $ra, 0x20($sp)
    /* 3B354 8004CB44 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 3B358 8004CB48 1800B28F */  lw         $s2, 0x18($sp)
    /* 3B35C 8004CB4C 1400B18F */  lw         $s1, 0x14($sp)
    /* 3B360 8004CB50 1000B08F */  lw         $s0, 0x10($sp)
    /* 3B364 8004CB54 0800E003 */  jr         $ra
    /* 3B368 8004CB58 2800BD27 */   addiu     $sp, $sp, 0x28
endlabel func_8004C9D0
