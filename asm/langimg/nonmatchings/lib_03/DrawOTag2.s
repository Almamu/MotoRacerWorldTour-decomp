nonmatching DrawOTag2, 0xFC

glabel DrawOTag2
    /* 9CA48 800AE238 0C80023C */  lui        $v0, %hi(D_800BF242)
    /* 9CA4C 800AE23C 42F24290 */  lbu        $v0, %lo(D_800BF242)($v0)
    /* 9CA50 800AE240 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 9CA54 800AE244 1000B0AF */  sw         $s0, 0x10($sp)
    /* 9CA58 800AE248 21808000 */  addu       $s0, $a0, $zero
    /* 9CA5C 800AE24C 0200422C */  sltiu      $v0, $v0, 0x2
    /* 9CA60 800AE250 08004014 */  bnez       $v0, .L800AE274
    /* 9CA64 800AE254 1400BFAF */   sw        $ra, 0x14($sp)
    /* 9CA68 800AE258 0C80043C */  lui        $a0, %hi(D_800B84F4)
    /* 9CA6C 800AE25C F4848424 */  addiu      $a0, $a0, %lo(D_800B84F4)
    /* 9CA70 800AE260 0C80023C */  lui        $v0, %hi(D_800BF23C)
    /* 9CA74 800AE264 3CF2428C */  lw         $v0, %lo(D_800BF23C)($v0)
    /* 9CA78 800AE268 00000000 */  nop
    /* 9CA7C 800AE26C 09F84000 */  jalr       $v0
    /* 9CA80 800AE270 21280002 */   addu      $a1, $s0, $zero
  .L800AE274:
    /* 9CA84 800AE274 B4AA020C */  jal        VSync
    /* 9CA88 800AE278 FFFF0424 */   addiu     $a0, $zero, -0x1
    /* 9CA8C 800AE27C 0C80033C */  lui        $v1, %hi(D_800BF354)
    /* 9CA90 800AE280 54F3638C */  lw         $v1, %lo(D_800BF354)($v1)
    /* 9CA94 800AE284 F0004224 */  addiu      $v0, $v0, 0xF0
    /* 9CA98 800AE288 0C80013C */  lui        $at, %hi(D_800BF37C)
    /* 9CA9C 800AE28C 7CF322AC */  sw         $v0, %lo(D_800BF37C)($at)
    /* 9CAA0 800AE290 0C80013C */  lui        $at, %hi(D_800BF380)
    /* 9CAA4 800AE294 80F320AC */  sw         $zero, %lo(D_800BF380)($at)
    /* 9CAA8 800AE298 0000628C */  lw         $v0, 0x0($v1)
    /* 9CAAC 800AE29C B2B80208 */  j          .L800AE2C8
    /* 9CAB0 800AE2A0 0001033C */   lui       $v1, (0x1000000 >> 16)
  .L800AE2A4:
    /* 9CAB4 800AE2A4 15B8020C */  jal        func_800AE054
    /* 9CAB8 800AE2A8 00000000 */   nop
    /* 9CABC 800AE2AC 1D004014 */  bnez       $v0, .L800AE324
    /* 9CAC0 800AE2B0 FFFF0224 */   addiu     $v0, $zero, -0x1
    /* 9CAC4 800AE2B4 0C80023C */  lui        $v0, %hi(D_800BF354)
    /* 9CAC8 800AE2B8 54F3428C */  lw         $v0, %lo(D_800BF354)($v0)
    /* 9CACC 800AE2BC 00000000 */  nop
    /* 9CAD0 800AE2C0 0000428C */  lw         $v0, 0x0($v0)
    /* 9CAD4 800AE2C4 0001033C */  lui        $v1, (0x1000000 >> 16)
  .L800AE2C8:
    /* 9CAD8 800AE2C8 24104300 */  and        $v0, $v0, $v1
    /* 9CADC 800AE2CC F5FF4014 */  bnez       $v0, .L800AE2A4
    /* 9CAE0 800AE2D0 00000000 */   nop
    /* 9CAE4 800AE2D4 0C80023C */  lui        $v0, %hi(D_800BF348)
    /* 9CAE8 800AE2D8 48F3428C */  lw         $v0, %lo(D_800BF348)($v0)
    /* 9CAEC 800AE2DC 00000000 */  nop
    /* 9CAF0 800AE2E0 0000428C */  lw         $v0, 0x0($v0)
    /* 9CAF4 800AE2E4 0004033C */  lui        $v1, (0x4000000 >> 16)
    /* 9CAF8 800AE2E8 24104300 */  and        $v0, $v0, $v1
    /* 9CAFC 800AE2EC EDFF4010 */  beqz       $v0, .L800AE2A4
    /* 9CB00 800AE2F0 00000000 */   nop
    /* 9CB04 800AE2F4 0B80053C */  lui        $a1, %hi(func_800AE334)
    /* 9CB08 800AE2F8 34E3A524 */  addiu      $a1, $a1, %lo(func_800AE334)
    /* 9CB0C 800AE2FC 50AB020C */  jal        DMACallback
    /* 9CB10 800AE300 02000424 */   addiu     $a0, $zero, 0x2
    /* 9CB14 800AE304 0C80023C */  lui        $v0, %hi(D_800BF238)
    /* 9CB18 800AE308 38F2428C */  lw         $v0, %lo(D_800BF238)($v0)
    /* 9CB1C 800AE30C 00000000 */  nop
    /* 9CB20 800AE310 1800428C */  lw         $v0, 0x18($v0)
    /* 9CB24 800AE314 00000000 */  nop
    /* 9CB28 800AE318 09F84000 */  jalr       $v0
    /* 9CB2C 800AE31C 21200002 */   addu      $a0, $s0, $zero
    /* 9CB30 800AE320 21100000 */  addu       $v0, $zero, $zero
  .L800AE324:
    /* 9CB34 800AE324 1400BF8F */  lw         $ra, 0x14($sp)
    /* 9CB38 800AE328 1000B08F */  lw         $s0, 0x10($sp)
    /* 9CB3C 800AE32C 0800E003 */  jr         $ra
    /* 9CB40 800AE330 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel DrawOTag2
