nonmatching OpenArchive, 0x138

glabel OpenArchive
    /* 2FE8 80135B1C B8FFBD27 */  addiu      $sp, $sp, -0x48
    /* 2FEC 80135B20 3000B2AF */  sw         $s2, 0x30($sp)
    /* 2FF0 80135B24 21900000 */  addu       $s2, $zero, $zero
    /* 2FF4 80135B28 3C00B5AF */  sw         $s5, 0x3C($sp)
    /* 2FF8 80135B2C 1A80153C */  lui        $s5, %hi(D_8019DB70)
    /* 2FFC 80135B30 01000224 */  addiu      $v0, $zero, 0x1
    /* 3000 80135B34 3800B4AF */  sw         $s4, 0x38($sp)
    /* 3004 80135B38 21A08000 */  addu       $s4, $a0, $zero
    /* 3008 80135B3C 21200000 */  addu       $a0, $zero, $zero
    /* 300C 80135B40 4000B6AF */  sw         $s6, 0x40($sp)
    /* 3010 80135B44 21B0A000 */  addu       $s6, $a1, $zero
    /* 3014 80135B48 3400B3AF */  sw         $s3, 0x34($sp)
    /* 3018 80135B4C 1000B327 */  addiu      $s3, $sp, 0x10
    /* 301C 80135B50 4400BFAF */  sw         $ra, 0x44($sp)
    /* 3020 80135B54 2C00B1AF */  sw         $s1, 0x2C($sp)
    /* 3024 80135B58 2800B0AF */  sw         $s0, 0x28($sp)
    /* 3028 80135B5C 22EC040C */  jal        VSync
    /* 302C 80135B60 70DBA2AE */   sw        $v0, %lo(D_8019DB70)($s5)
    /* 3030 80135B64 DDD60408 */  j          .L80135B74
    /* 3034 80135B68 02001024 */   addiu     $s0, $zero, 0x2
  .L80135B6C:
    /* 3038 80135B6C 07000012 */  beqz       $s0, .L80135B8C
    /* 303C 80135B70 00000000 */   nop
  .L80135B74:
    /* 3040 80135B74 21206002 */  addu       $a0, $s3, $zero
    /* 3044 80135B78 C8E2040C */  jal        CdSearchFile
    /* 3048 80135B7C 21288002 */   addu      $a1, $s4, $zero
    /* 304C 80135B80 21884000 */  addu       $s1, $v0, $zero
    /* 3050 80135B84 F9FF2012 */  beqz       $s1, .L80135B6C
    /* 3054 80135B88 FFFF1026 */   addiu     $s0, $s0, -0x1
  .L80135B8C:
    /* 3058 80135B8C 70DBA0AE */  sw         $zero, %lo(D_8019DB70)($s5)
    /* 305C 80135B90 22EC040C */  jal        VSync
    /* 3060 80135B94 21200000 */   addu      $a0, $zero, $zero
    /* 3064 80135B98 21002012 */  beqz       $s1, .L80135C20
    /* 3068 80135B9C 1000A527 */   addiu     $a1, $sp, 0x10
    /* 306C 80135BA0 02000424 */  addiu      $a0, $zero, 0x2
    /* 3070 80135BA4 00080624 */  addiu      $a2, $zero, 0x800
    /* 3074 80135BA8 E0D5040C */  jal        func_80135780
    /* 3078 80135BAC 2138C002 */   addu      $a3, $s6, $zero
    /* 307C 80135BB0 21904000 */  addu       $s2, $v0, $zero
    /* 3080 80135BB4 21980000 */  addu       $s3, $zero, $zero
    /* 3084 80135BB8 06004012 */  beqz       $s2, .L80135BD4
    /* 3088 80135BBC 10004426 */   addiu     $a0, $s2, 0x10
    /* 308C 80135BC0 06005396 */  lhu        $s3, 0x6($s2)
    /* 3090 80135BC4 00000000 */  nop
    /* 3094 80135BC8 02006016 */  bnez       $s3, .L80135BD4
    /* 3098 80135BCC 00000000 */   nop
    /* 309C 80135BD0 30001324 */  addiu      $s3, $zero, 0x30
  .L80135BD4:
    /* 30A0 80135BD4 0000428E */  lw         $v0, 0x0($s2)
    /* 30A4 80135BD8 00000000 */  nop
    /* 30A8 80135BDC 10004010 */  beqz       $v0, .L80135C20
    /* 30AC 80135BE0 21880000 */   addu      $s1, $zero, $zero
    /* 30B0 80135BE4 08009024 */  addiu      $s0, $a0, 0x8
  .L80135BE8:
    /* 30B4 80135BE8 05DD040C */  jal        CdPosToInt
    /* 30B8 80135BEC 1000A427 */   addiu     $a0, $sp, 0x10
    /* 30BC 80135BF0 21280002 */  addu       $a1, $s0, $zero
    /* 30C0 80135BF4 0000048E */  lw         $a0, 0x0($s0)
    /* 30C4 80135BF8 21801302 */  addu       $s0, $s0, $s3
    /* 30C8 80135BFC FF078424 */  addiu      $a0, $a0, 0x7FF
    /* 30CC 80135C00 C2220400 */  srl        $a0, $a0, 11
    /* 30D0 80135C04 C4DC040C */  jal        CdIntToPos
    /* 30D4 80135C08 21204400 */   addu      $a0, $v0, $a0
    /* 30D8 80135C0C 0000438E */  lw         $v1, 0x0($s2)
    /* 30DC 80135C10 01003126 */  addiu      $s1, $s1, 0x1
    /* 30E0 80135C14 2B182302 */  sltu       $v1, $s1, $v1
    /* 30E4 80135C18 F3FF6014 */  bnez       $v1, .L80135BE8
    /* 30E8 80135C1C 00000000 */   nop
  .L80135C20:
    /* 30EC 80135C20 02004012 */  beqz       $s2, .L80135C2C
    /* 30F0 80135C24 21104002 */   addu      $v0, $s2, $zero
    /* 30F4 80135C28 080040AE */  sw         $zero, 0x8($s2)
  .L80135C2C:
    /* 30F8 80135C2C 4400BF8F */  lw         $ra, 0x44($sp)
    /* 30FC 80135C30 4000B68F */  lw         $s6, 0x40($sp)
    /* 3100 80135C34 3C00B58F */  lw         $s5, 0x3C($sp)
    /* 3104 80135C38 3800B48F */  lw         $s4, 0x38($sp)
    /* 3108 80135C3C 3400B38F */  lw         $s3, 0x34($sp)
    /* 310C 80135C40 3000B28F */  lw         $s2, 0x30($sp)
    /* 3110 80135C44 2C00B18F */  lw         $s1, 0x2C($sp)
    /* 3114 80135C48 2800B08F */  lw         $s0, 0x28($sp)
    /* 3118 80135C4C 0800E003 */  jr         $ra
    /* 311C 80135C50 4800BD27 */   addiu     $sp, $sp, 0x48
endlabel OpenArchive
