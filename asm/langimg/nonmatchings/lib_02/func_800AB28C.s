nonmatching func_800AB28C, 0x78

glabel func_800AB28C
    /* 99A9C 800AB28C E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 99AA0 800AB290 1000B0AF */  sw         $s0, 0x10($sp)
    /* 99AA4 800AB294 0C80103C */  lui        $s0, %hi(D_800BD548)
    /* 99AA8 800AB298 48D51026 */  addiu      $s0, $s0, %lo(D_800BD548)
    /* 99AAC 800AB29C 1400BFAF */  sw         $ra, 0x14($sp)
    /* 99AB0 800AB2A0 00000296 */  lhu        $v0, 0x0($s0)
    /* 99AB4 800AB2A4 00000000 */  nop
    /* 99AB8 800AB2A8 11004014 */  bnez       $v0, .L800AB2F0
    /* 99ABC 800AB2AC 00000000 */   nop
    /* 99AC0 800AB2B0 DCD6020C */  jal        func_800B5B70
    /* 99AC4 800AB2B4 38000426 */   addiu     $a0, $s0, 0x38
    /* 99AC8 800AB2B8 0C80043C */  lui        $a0, %hi(D_800BE5D8)
    /* 99ACC 800AB2BC D8E5848C */  lw         $a0, %lo(D_800BE5D8)($a0)
    /* 99AD0 800AB2C0 32000396 */  lhu        $v1, 0x32($s0)
    /* 99AD4 800AB2C4 01000224 */  addiu      $v0, $zero, 0x1
    /* 99AD8 800AB2C8 000002A6 */  sh         $v0, 0x0($s0)
    /* 99ADC 800AB2CC 000083A4 */  sh         $v1, 0x0($a0)
    /* 99AE0 800AB2D0 0C80033C */  lui        $v1, %hi(D_800BE5DC)
    /* 99AE4 800AB2D4 DCE5638C */  lw         $v1, %lo(D_800BE5DC)($v1)
    /* 99AE8 800AB2D8 3400028E */  lw         $v0, 0x34($s0)
    /* 99AEC 800AB2DC 00000000 */  nop
    /* 99AF0 800AB2E0 E4D6020C */  jal        func_800B5B90
    /* 99AF4 800AB2E4 000062AC */   sw        $v0, 0x0($v1)
    /* 99AF8 800AB2E8 BDAC0208 */  j          .L800AB2F4
    /* 99AFC 800AB2EC 21100002 */   addu      $v0, $s0, $zero
  .L800AB2F0:
    /* 99B00 800AB2F0 21100000 */  addu       $v0, $zero, $zero
  .L800AB2F4:
    /* 99B04 800AB2F4 1400BF8F */  lw         $ra, 0x14($sp)
    /* 99B08 800AB2F8 1000B08F */  lw         $s0, 0x10($sp)
    /* 99B0C 800AB2FC 0800E003 */  jr         $ra
    /* 99B10 800AB300 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_800AB28C
