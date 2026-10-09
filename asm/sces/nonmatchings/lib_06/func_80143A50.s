nonmatching func_80143A50, 0xA0

glabel func_80143A50
    /* 10F1C 80143A50 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 10F20 80143A54 1000BFAF */  sw         $ra, 0x10($sp)
    /* 10F24 80143A58 801F053C */  lui        $a1, (0x1F801D80 >> 16)
    /* 10F28 80143A5C 801DA534 */  ori        $a1, $a1, (0x1F801D80 & 0xFFFF)
    /* 10F2C 80143A60 21180000 */  addu       $v1, $zero, $zero
    /* 10F30 80143A64 1C80043C */  lui        $a0, %hi(D_801C0440)
    /* 10F34 80143A68 40048424 */  addiu      $a0, $a0, %lo(D_801C0440)
  .L80143A6C:
    /* 10F38 80143A6C 00008294 */  lhu        $v0, 0x0($a0)
    /* 10F3C 80143A70 02008424 */  addiu      $a0, $a0, 0x2
    /* 10F40 80143A74 01006324 */  addiu      $v1, $v1, 0x1
    /* 10F44 80143A78 0000A2A4 */  sh         $v0, 0x0($a1)
    /* 10F48 80143A7C 10006228 */  slti       $v0, $v1, 0x10
    /* 10F4C 80143A80 FAFF4014 */  bnez       $v0, .L80143A6C
    /* 10F50 80143A84 0200A524 */   addiu     $a1, $a1, 0x2
    /* 10F54 80143A88 651F050C */  jal        func_80147D94
    /* 10F58 80143A8C 18000424 */   addiu     $a0, $zero, 0x18
    /* 10F5C 80143A90 21280000 */  addu       $a1, $zero, $zero
    /* 10F60 80143A94 1D80043C */  lui        $a0, %hi(D_801CEB60)
    /* 10F64 80143A98 60EB8424 */  addiu      $a0, $a0, %lo(D_801CEB60)
  .L80143A9C:
    /* 10F68 80143A9C 0F000324 */  addiu      $v1, $zero, 0xF
    /* 10F6C 80143AA0 3C008224 */  addiu      $v0, $a0, 0x3C
  .L80143AA4:
    /* 10F70 80143AA4 000040AC */  sw         $zero, 0x0($v0)
    /* 10F74 80143AA8 FFFF6324 */  addiu      $v1, $v1, -0x1
    /* 10F78 80143AAC FDFF6104 */  bgez       $v1, .L80143AA4
    /* 10F7C 80143AB0 FCFF4224 */   addiu     $v0, $v0, -0x4
    /* 10F80 80143AB4 0100A524 */  addiu      $a1, $a1, 0x1
    /* 10F84 80143AB8 2000A228 */  slti       $v0, $a1, 0x20
    /* 10F88 80143ABC F7FF4014 */  bnez       $v0, .L80143A9C
    /* 10F8C 80143AC0 40008424 */   addiu     $a0, $a0, 0x40
    /* 10F90 80143AC4 3C000224 */  addiu      $v0, $zero, 0x3C
    /* 10F94 80143AC8 1D80013C */  lui        $at, %hi(D_801CEADC)
    /* 10F98 80143ACC DCEA22AC */  sw         $v0, %lo(D_801CEADC)($at)
    /* 10F9C 80143AD0 1D80013C */  lui        $at, %hi(D_801CEAD8)
    /* 10FA0 80143AD4 D8EA20AC */  sw         $zero, %lo(D_801CEAD8)($at)
    /* 10FA4 80143AD8 1D80013C */  lui        $at, %hi(D_801CEAD4)
    /* 10FA8 80143ADC D4EA20AC */  sw         $zero, %lo(D_801CEAD4)($at)
    /* 10FAC 80143AE0 1000BF8F */  lw         $ra, 0x10($sp)
    /* 10FB0 80143AE4 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 10FB4 80143AE8 0800E003 */  jr         $ra
    /* 10FB8 80143AEC 00000000 */   nop
endlabel func_80143A50
