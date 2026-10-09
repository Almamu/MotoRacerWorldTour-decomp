/* Handwritten function */
nonmatching func_8002D1EC, 0x1D4

glabel func_8002D1EC
    /* 1B9FC 8002D1EC D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 1BA00 8002D1F0 1400B1AF */  sw         $s1, 0x14($sp)
    /* 1BA04 8002D1F4 21880000 */  addu       $s1, $zero, $zero
    /* 1BA08 8002D1F8 1800B2AF */  sw         $s2, 0x18($sp)
    /* 1BA0C 8002D1FC 21908000 */  addu       $s2, $a0, $zero
    /* 1BA10 8002D200 1000B0AF */  sw         $s0, 0x10($sp)
    /* 1BA14 8002D204 2180A000 */  addu       $s0, $a1, $zero
    /* 1BA18 8002D208 21200002 */  addu       $a0, $s0, $zero
    /* 1BA1C 8002D20C 3000A527 */  addiu      $a1, $sp, 0x30
    /* 1BA20 8002D210 3000A6AF */  sw         $a2, 0x30($sp)
    /* 1BA24 8002D214 11000624 */  addiu      $a2, $zero, 0x11
    /* 1BA28 8002D218 2000BFAF */  sw         $ra, 0x20($sp)
    /* 1BA2C 8002D21C 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 1BA30 8002D220 0867020C */  jal        func_80099C20
    /* 1BA34 8002D224 3400A7AF */   sw        $a3, 0x34($sp)
    /* 1BA38 8002D228 5E004010 */  beqz       $v0, .L8002D3A4
    /* 1BA3C 8002D22C 21102002 */   addu      $v0, $s1, $zero
    /* 1BA40 8002D230 C764020C */  jal        func_8009931C
    /* 1BA44 8002D234 21200002 */   addu      $a0, $s0, $zero
    /* 1BA48 8002D238 21180000 */  addu       $v1, $zero, $zero
    /* 1BA4C 8002D23C 3400A68F */  lw         $a2, 0x34($sp)
    /* 1BA50 8002D240 00000000 */  nop
    /* 1BA54 8002D244 1C00C010 */  beqz       $a2, .L8002D2B8
    /* 1BA58 8002D248 21984000 */   addu      $s3, $v0, $zero
    /* 1BA5C 8002D24C 0C000A24 */  addiu      $t2, $zero, 0xC
    /* 1BA60 8002D250 0000088E */  lw         $t0, 0x0($s0)
    /* 1BA64 8002D254 3000A98F */  lw         $t1, 0x30($sp)
    /* 1BA68 8002D258 00000000 */  nop
    /* 1BA6C 8002D25C 18000901 */  mult       $t0, $t1
    /* 1BA70 8002D260 20000334 */  ori        $v1, $zero, 0x20
    /* 1BA74 8002D264 22186A00 */  sub        $v1, $v1, $t2 /* handwritten instruction */
    /* 1BA78 8002D268 10100000 */  mfhi       $v0
    /* 1BA7C 8002D26C 04106200 */  sllv       $v0, $v0, $v1
    /* 1BA80 8002D270 12180000 */  mflo       $v1
    /* 1BA84 8002D274 06184301 */  srlv       $v1, $v1, $t2
    /* 1BA88 8002D278 25104300 */  or         $v0, $v0, $v1
    /* 1BA8C 8002D27C 0800088E */  lw         $t0, 0x8($s0)
    /* 1BA90 8002D280 3800A98F */  lw         $t1, 0x38($sp)
    /* 1BA94 8002D284 00000000 */  nop
    /* 1BA98 8002D288 18000901 */  mult       $t0, $t1
    /* 1BA9C 8002D28C 20000534 */  ori        $a1, $zero, 0x20
    /* 1BAA0 8002D290 2228AA00 */  sub        $a1, $a1, $t2 /* handwritten instruction */
    /* 1BAA4 8002D294 10200000 */  mfhi       $a0
    /* 1BAA8 8002D298 0420A400 */  sllv       $a0, $a0, $a1
    /* 1BAAC 8002D29C 12280000 */  mflo       $a1
    /* 1BAB0 8002D2A0 06284501 */  srlv       $a1, $a1, $t2
    /* 1BAB4 8002D2A4 25208500 */  or         $a0, $a0, $a1
    /* 1BAB8 8002D2A8 21204400 */  addu       $a0, $v0, $a0
    /* 1BABC 8002D2AC 9A5E020C */  jal        func_80097A68
    /* 1BAC0 8002D2B0 0C000524 */   addiu     $a1, $zero, 0xC
    /* 1BAC4 8002D2B4 23180200 */  negu       $v1, $v0
  .L8002D2B8:
    /* 1BAC8 8002D2B8 0400058E */  lw         $a1, 0x4($s0)
    /* 1BACC 8002D2BC 4F014282 */  lb         $v0, 0x14F($s2)
    /* 1BAD0 8002D2C0 00000000 */  nop
    /* 1BAD4 8002D2C4 06004010 */  beqz       $v0, .L8002D2E0
    /* 1BAD8 8002D2C8 23186500 */   subu      $v1, $v1, $a1
    /* 1BADC 8002D2CC 02006104 */  bgez       $v1, .L8002D2D8
    /* 1BAE0 8002D2D0 21106000 */   addu      $v0, $v1, $zero
    /* 1BAE4 8002D2D4 0F006224 */  addiu      $v0, $v1, 0xF
  .L8002D2D8:
    /* 1BAE8 8002D2D8 DBB40008 */  j          .L8002D36C
    /* 1BAEC 8002D2DC 03190200 */   sra       $v1, $v0, 4
  .L8002D2E0:
    /* 1BAF0 8002D2E0 12006018 */  blez       $v1, .L8002D32C
    /* 1BAF4 8002D2E4 1000043C */   lui       $a0, (0x100000 >> 16)
    /* 1BAF8 8002D2E8 2A108300 */  slt        $v0, $a0, $v1
    /* 1BAFC 8002D2EC 03004010 */  beqz       $v0, .L8002D2FC
    /* 1BB00 8002D2F0 0100023C */   lui       $v0, (0x10000 >> 16)
    /* 1BB04 8002D2F4 DBB40008 */  j          .L8002D36C
    /* 1BB08 8002D2F8 23186400 */   subu      $v1, $v1, $a0
  .L8002D2FC:
    /* 1BB0C 8002D2FC 2A104300 */  slt        $v0, $v0, $v1
    /* 1BB10 8002D300 08004010 */  beqz       $v0, .L8002D324
    /* 1BB14 8002D304 6666023C */   lui       $v0, (0x66666667 >> 16)
    /* 1BB18 8002D308 67664234 */  ori        $v0, $v0, (0x66666667 & 0xFFFF)
    /* 1BB1C 8002D30C 18006200 */  mult       $v1, $v0
    /* 1BB20 8002D310 C31F0300 */  sra        $v1, $v1, 31
    /* 1BB24 8002D314 10100000 */  mfhi       $v0
    /* 1BB28 8002D318 43100200 */  sra        $v0, $v0, 1
    /* 1BB2C 8002D31C DBB40008 */  j          .L8002D36C
    /* 1BB30 8002D320 23184300 */   subu      $v1, $v0, $v1
  .L8002D324:
    /* 1BB34 8002D324 DBB40008 */  j          .L8002D36C
    /* 1BB38 8002D328 83190300 */   sra       $v1, $v1, 6
  .L8002D32C:
    /* 1BB3C 8002D32C FAFF023C */  lui        $v0, (0xFFFA0000 >> 16)
    /* 1BB40 8002D330 2A106200 */  slt        $v0, $v1, $v0
    /* 1BB44 8002D334 03004010 */  beqz       $v0, .L8002D344
    /* 1BB48 8002D338 FFFF023C */   lui       $v0, (0xFFFF0000 >> 16)
    /* 1BB4C 8002D33C DBB40008 */  j          .L8002D36C
    /* 1BB50 8002D340 FAFF033C */   lui       $v1, (0xFFFA0000 >> 16)
  .L8002D344:
    /* 1BB54 8002D344 2A106200 */  slt        $v0, $v1, $v0
    /* 1BB58 8002D348 04004010 */  beqz       $v0, .L8002D35C
    /* 1BB5C 8002D34C C2170300 */   srl       $v0, $v1, 31
    /* 1BB60 8002D350 21106200 */  addu       $v0, $v1, $v0
    /* 1BB64 8002D354 DBB40008 */  j          .L8002D36C
    /* 1BB68 8002D358 43180200 */   sra       $v1, $v0, 1
  .L8002D35C:
    /* 1BB6C 8002D35C 02006104 */  bgez       $v1, .L8002D368
    /* 1BB70 8002D360 21106000 */   addu      $v0, $v1, $zero
    /* 1BB74 8002D364 3F006224 */  addiu      $v0, $v1, 0x3F
  .L8002D368:
    /* 1BB78 8002D368 83190200 */  sra        $v1, $v0, 6
  .L8002D36C:
    /* 1BB7C 8002D36C 0C006010 */  beqz       $v1, .L8002D3A0
    /* 1BB80 8002D370 2110A300 */   addu      $v0, $a1, $v1
    /* 1BB84 8002D374 040002AE */  sw         $v0, 0x4($s0)
    /* 1BB88 8002D378 C764020C */  jal        func_8009931C
    /* 1BB8C 8002D37C 21200002 */   addu      $a0, $s0, $zero
    /* 1BB90 8002D380 0200033C */  lui        $v1, (0x20000 >> 16)
    /* 1BB94 8002D384 2A186200 */  slt        $v1, $v1, $v0
    /* 1BB98 8002D388 04006010 */  beqz       $v1, .L8002D39C
    /* 1BB9C 8002D38C 21200002 */   addu      $a0, $s0, $zero
    /* 1BBA0 8002D390 21286002 */  addu       $a1, $s3, $zero
    /* 1BBA4 8002D394 508C000C */  jal        func_80023140
    /* 1BBA8 8002D398 19000624 */   addiu     $a2, $zero, 0x19
  .L8002D39C:
    /* 1BBAC 8002D39C 01001124 */  addiu      $s1, $zero, 0x1
  .L8002D3A0:
    /* 1BBB0 8002D3A0 21102002 */  addu       $v0, $s1, $zero
  .L8002D3A4:
    /* 1BBB4 8002D3A4 2000BF8F */  lw         $ra, 0x20($sp)
    /* 1BBB8 8002D3A8 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 1BBBC 8002D3AC 1800B28F */  lw         $s2, 0x18($sp)
    /* 1BBC0 8002D3B0 1400B18F */  lw         $s1, 0x14($sp)
    /* 1BBC4 8002D3B4 1000B08F */  lw         $s0, 0x10($sp)
    /* 1BBC8 8002D3B8 0800E003 */  jr         $ra
    /* 1BBCC 8002D3BC 2800BD27 */   addiu     $sp, $sp, 0x28
endlabel func_8002D1EC
