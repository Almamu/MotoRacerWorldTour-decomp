nonmatching func_800AA284, 0x19C

glabel func_800AA284
    /* 98A94 800AA284 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 98A98 800AA288 2000B4AF */  sw         $s4, 0x20($sp)
    /* 98A9C 800AA28C 21A08000 */  addu       $s4, $a0, $zero
    /* 98AA0 800AA290 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 98AA4 800AA294 2198A000 */  addu       $s3, $a1, $zero
    /* 98AA8 800AA298 1000B0AF */  sw         $s0, 0x10($sp)
    /* 98AAC 800AA29C 0C80103C */  lui        $s0, %hi(D_800BD364)
    /* 98AB0 800AA2A0 64D31026 */  addiu      $s0, $s0, %lo(D_800BD364)
    /* 98AB4 800AA2A4 2400BFAF */  sw         $ra, 0x24($sp)
    /* 98AB8 800AA2A8 1800B2AF */  sw         $s2, 0x18($sp)
    /* 98ABC 800AA2AC 1400B1AF */  sw         $s1, 0x14($sp)
    /* 98AC0 800AA2B0 0000028E */  lw         $v0, 0x0($s0)
    /* 98AC4 800AA2B4 00000000 */  nop
    /* 98AC8 800AA2B8 11004010 */  beqz       $v0, .L800AA300
    /* 98ACC 800AA2BC 2190C000 */   addu      $s2, $a2, $zero
    /* 98AD0 800AA2C0 B4AA020C */  jal        func_800AAAD0
    /* 98AD4 800AA2C4 FFFF0424 */   addiu     $a0, $zero, -0x1
    /* 98AD8 800AA2C8 0000038E */  lw         $v1, 0x0($s0)
    /* 98ADC 800AA2CC 00000000 */  nop
    /* 98AE0 800AA2D0 0B006010 */  beqz       $v1, .L800AA300
    /* 98AE4 800AA2D4 21884000 */   addu      $s1, $v0, $zero
  .L800AA2D8:
    /* 98AE8 800AA2D8 B4AA020C */  jal        func_800AAAD0
    /* 98AEC 800AA2DC FFFF0424 */   addiu     $a0, $zero, -0x1
    /* 98AF0 800AA2E0 23105100 */  subu       $v0, $v0, $s1
    /* 98AF4 800AA2E4 7900422C */  sltiu      $v0, $v0, 0x79
    /* 98AF8 800AA2E8 11004010 */  beqz       $v0, .L800AA330
    /* 98AFC 800AA2EC 00000000 */   nop
    /* 98B00 800AA2F0 0000028E */  lw         $v0, 0x0($s0)
    /* 98B04 800AA2F4 00000000 */  nop
    /* 98B08 800AA2F8 F7FF4014 */  bnez       $v0, .L800AA2D8
    /* 98B0C 800AA2FC 00000000 */   nop
  .L800AA300:
    /* 98B10 800AA300 0C80043C */  lui        $a0, %hi(D_800BD340)
    /* 98B14 800AA304 40D38424 */  addiu      $a0, $a0, %lo(D_800BD340)
    /* 98B18 800AA308 0C0092AC */  sw         $s2, 0xC($a0)
    /* 98B1C 800AA30C 0C00828C */  lw         $v0, 0xC($a0)
    /* 98B20 800AA310 00000000 */  nop
    /* 98B24 800AA314 30004330 */  andi       $v1, $v0, 0x30
    /* 98B28 800AA318 0D006010 */  beqz       $v1, .L800AA350
    /* 98B2C 800AA31C 20000224 */   addiu     $v0, $zero, 0x20
    /* 98B30 800AA320 0E006210 */  beq        $v1, $v0, .L800AA35C
    /* 98B34 800AA324 46020224 */   addiu     $v0, $zero, 0x246
    /* 98B38 800AA328 DAA80208 */  j          .L800AA368
    /* 98B3C 800AA32C 00000000 */   nop
  .L800AA330:
    /* 98B40 800AA330 0C80103C */  lui        $s0, %hi(D_800BD368)
    /* 98B44 800AA334 68D31026 */  addiu      $s0, $s0, %lo(D_800BD368)
    /* 98B48 800AA338 0000048E */  lw         $a0, 0x0($s0)
    /* 98B4C 800AA33C A59D020C */  jal        func_800A7694
    /* 98B50 800AA340 D8FF1026 */   addiu     $s0, $s0, -0x28
    /* 98B54 800AA344 240000AE */  sw         $zero, 0x24($s0)
    /* 98B58 800AA348 C0A80208 */  j          .L800AA300
    /* 98B5C 800AA34C 00000000 */   nop
  .L800AA350:
    /* 98B60 800AA350 00020224 */  addiu      $v0, $zero, 0x200
    /* 98B64 800AA354 DDA80208 */  j          .L800AA374
    /* 98B68 800AA358 100082AC */   sw        $v0, 0x10($a0)
  .L800AA35C:
    /* 98B6C 800AA35C 49020224 */  addiu      $v0, $zero, 0x249
    /* 98B70 800AA360 DDA80208 */  j          .L800AA374
    /* 98B74 800AA364 100082AC */   sw        $v0, 0x10($a0)
  .L800AA368:
    /* 98B78 800AA368 0C80033C */  lui        $v1, %hi(D_800BD340)
    /* 98B7C 800AA36C 40D36324 */  addiu      $v1, $v1, %lo(D_800BD340)
    /* 98B80 800AA370 100062AC */  sw         $v0, 0x10($v1)
  .L800AA374:
    /* 98B84 800AA374 0C80103C */  lui        $s0, %hi(D_800BD340)
    /* 98B88 800AA378 40D31026 */  addiu      $s0, $s0, %lo(D_800BD340)
    /* 98B8C 800AA37C 0C00028E */  lw         $v0, 0xC($s0)
    /* 98B90 800AA380 21200000 */  addu       $a0, $zero, $zero
    /* 98B94 800AA384 20004234 */  ori        $v0, $v0, 0x20
    /* 98B98 800AA388 0C0002AE */  sw         $v0, 0xC($s0)
    /* 98B9C 800AA38C 040013AE */  sw         $s3, 0x4($s0)
    /* 98BA0 800AA390 A59D020C */  jal        func_800A7694
    /* 98BA4 800AA394 000014AE */   sw        $s4, 0x0($s0)
    /* 98BA8 800AA398 21200000 */  addu       $a0, $zero, $zero
    /* 98BAC 800AA39C AA9D020C */  jal        func_800A76A8
    /* 98BB0 800AA3A0 280002AE */   sw        $v0, 0x28($s0)
    /* 98BB4 800AA3A4 0C80033C */  lui        $v1, %hi(D_800BCF84)
    /* 98BB8 800AA3A8 84CF638C */  lw         $v1, %lo(D_800BCF84)($v1)
    /* 98BBC 800AA3AC 2C0002AE */  sw         $v0, 0x2C($s0)
    /* 98BC0 800AA3B0 01006330 */  andi       $v1, $v1, 0x1
    /* 98BC4 800AA3B4 04006010 */  beqz       $v1, .L800AA3C8
    /* 98BC8 800AA3B8 00000000 */   nop
    /* 98BCC 800AA3BC B69E020C */  jal        func_800A7AD8
    /* 98BD0 800AA3C0 21200000 */   addu      $a0, $zero, $zero
    /* 98BD4 800AA3C4 300002AE */  sw         $v0, 0x30($s0)
  .L800AA3C8:
    /* 98BD8 800AA3C8 B4AA020C */  jal        func_800AAAD0
    /* 98BDC 800AA3CC FFFF0424 */   addiu     $a0, $zero, -0x1
    /* 98BE0 800AA3D0 1C0002AE */  sw         $v0, 0x1C($s0)
    /* 98BE4 800AA3D4 859D020C */  jal        func_800A7614
    /* 98BE8 800AA3D8 00000000 */   nop
    /* 98BEC 800AA3DC E0004230 */  andi       $v0, $v0, 0xE0
    /* 98BF0 800AA3E0 04004010 */  beqz       $v0, .L800AA3F4
    /* 98BF4 800AA3E4 09000424 */   addiu     $a0, $zero, 0x9
    /* 98BF8 800AA3E8 21280000 */  addu       $a1, $zero, $zero
    /* 98BFC 800AA3EC 4B9E020C */  jal        func_800A792C
    /* 98C00 800AA3F0 21300000 */   addu      $a2, $zero, $zero
  .L800AA3F4:
    /* 98C04 800AA3F4 27A8020C */  jal        func_800AA09C
    /* 98C08 800AA3F8 21200000 */   addu      $a0, $zero, $zero
    /* 98C0C 800AA3FC 2A100200 */  slt        $v0, $zero, $v0
    /* 98C10 800AA400 2400BF8F */  lw         $ra, 0x24($sp)
    /* 98C14 800AA404 2000B48F */  lw         $s4, 0x20($sp)
    /* 98C18 800AA408 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 98C1C 800AA40C 1800B28F */  lw         $s2, 0x18($sp)
    /* 98C20 800AA410 1400B18F */  lw         $s1, 0x14($sp)
    /* 98C24 800AA414 1000B08F */  lw         $s0, 0x10($sp)
    /* 98C28 800AA418 0800E003 */  jr         $ra
    /* 98C2C 800AA41C 2800BD27 */   addiu     $sp, $sp, 0x28
endlabel func_800AA284
