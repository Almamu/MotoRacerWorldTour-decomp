nonmatching func_80141A98, 0xAC

glabel func_80141A98
    /* EF64 80141A98 1C80023C */  lui        $v0, %hi(D_801BFEDC)
    /* EF68 80141A9C DCFE428C */  lw         $v0, %lo(D_801BFEDC)($v0)
    /* EF6C 80141AA0 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* EF70 80141AA4 1000B0AF */  sw         $s0, 0x10($sp)
    /* EF74 80141AA8 21808000 */  addu       $s0, $a0, $zero
    /* EF78 80141AAC 0D004010 */  beqz       $v0, .L80141AE4
    /* EF7C 80141AB0 1400BFAF */   sw        $ra, 0x14($sp)
    /* EF80 80141AB4 0C00048E */  lw         $a0, 0xC($s0)
    /* EF84 80141AB8 1C80023C */  lui        $v0, %hi(D_801BFE74)
    /* EF88 80141ABC 74FE428C */  lw         $v0, %lo(D_801BFE74)($v0)
    /* EF8C 80141AC0 00000000 */  nop
    /* EF90 80141AC4 09F84000 */  jalr       $v0
    /* EF94 80141AC8 E0018424 */   addiu     $a0, $a0, 0x1E0
    /* EF98 80141ACC 0C00048E */  lw         $a0, 0xC($s0)
    /* EF9C 80141AD0 1C80023C */  lui        $v0, %hi(D_801BFE74)
    /* EFA0 80141AD4 74FE428C */  lw         $v0, %lo(D_801BFE74)($v0)
    /* EFA4 80141AD8 00000000 */  nop
    /* EFA8 80141ADC 09F84000 */  jalr       $v0
    /* EFAC 80141AE0 D0028424 */   addiu     $a0, $a0, 0x2D0
  .L80141AE4:
    /* EFB0 80141AE4 37000292 */  lbu        $v0, 0x37($s0)
    /* EFB4 80141AE8 00000000 */  nop
    /* EFB8 80141AEC 03004014 */  bnez       $v0, .L80141AFC
    /* EFBC 80141AF0 21280000 */   addu      $a1, $zero, $zero
    /* EFC0 80141AF4 1C80053C */  lui        $a1, %hi(D_801BFEA8)
    /* EFC4 80141AF8 A8FEA58C */  lw         $a1, %lo(D_801BFEA8)($a1)
  .L80141AFC:
    /* EFC8 80141AFC 9302050C */  jal        _padSioRW2
    /* EFCC 80141B00 21200002 */   addu      $a0, $s0, $zero
    /* EFD0 80141B04 0B004004 */  bltz       $v0, .L80141B34
    /* EFD4 80141B08 00000000 */   nop
    /* EFD8 80141B0C 0F004230 */  andi       $v0, $v0, 0xF
    /* EFDC 80141B10 40100200 */  sll        $v0, $v0, 1
    /* EFE0 80141B14 1C80013C */  lui        $at, %hi(D_801BFED4)
    /* EFE4 80141B18 D4FE22AC */  sw         $v0, %lo(D_801BFED4)($at)
    /* EFE8 80141B1C 05004014 */  bnez       $v0, .L80141B34
    /* EFEC 80141B20 21100000 */   addu      $v0, $zero, $zero
    /* EFF0 80141B24 20000224 */  addiu      $v0, $zero, 0x20
    /* EFF4 80141B28 1C80013C */  lui        $at, %hi(D_801BFED4)
    /* EFF8 80141B2C D4FE22AC */  sw         $v0, %lo(D_801BFED4)($at)
    /* EFFC 80141B30 21100000 */  addu       $v0, $zero, $zero
  .L80141B34:
    /* F000 80141B34 1400BF8F */  lw         $ra, 0x14($sp)
    /* F004 80141B38 1000B08F */  lw         $s0, 0x10($sp)
    /* F008 80141B3C 0800E003 */  jr         $ra
    /* F00C 80141B40 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_80141A98
