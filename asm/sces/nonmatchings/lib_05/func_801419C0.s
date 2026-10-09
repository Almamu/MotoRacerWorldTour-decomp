nonmatching func_801419C0, 0xD8

glabel func_801419C0
    /* EE8C 801419C0 1C80033C */  lui        $v1, %hi(D_801BFE9C)
    /* EE90 801419C4 9CFE638C */  lw         $v1, %lo(D_801BFE9C)($v1)
    /* EE94 801419C8 1C80023C */  lui        $v0, %hi(D_801BFEAC)
    /* EE98 801419CC ACFE428C */  lw         $v0, %lo(D_801BFEAC)($v0)
    /* EE9C 801419D0 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* EEA0 801419D4 1000B0AF */  sw         $s0, 0x10($sp)
    /* EEA4 801419D8 21808000 */  addu       $s0, $a0, $zero
    /* EEA8 801419DC 10006214 */  bne        $v1, $v0, .L80141A20
    /* EEAC 801419E0 1400BFAF */   sw        $ra, 0x14($sp)
    /* EEB0 801419E4 1C80023C */  lui        $v0, %hi(D_801BFE98)
    /* EEB4 801419E8 98FE428C */  lw         $v0, %lo(D_801BFE98)($v0)
    /* EEB8 801419EC 00000000 */  nop
    /* EEBC 801419F0 0B004010 */  beqz       $v0, .L80141A20
    /* EEC0 801419F4 00000000 */   nop
    /* EEC4 801419F8 1C80023C */  lui        $v0, %hi(D_801BFE8C)
    /* EEC8 801419FC 8CFE428C */  lw         $v0, %lo(D_801BFE8C)($v0)
    /* EECC 80141A00 00000000 */  nop
    /* EED0 80141A04 09F84000 */  jalr       $v0
    /* EED4 80141A08 00000000 */   nop
    /* EED8 80141A0C 1C80023C */  lui        $v0, %hi(D_801BFE88)
    /* EEDC 80141A10 88FE428C */  lw         $v0, %lo(D_801BFE88)($v0)
    /* EEE0 80141A14 00000000 */  nop
    /* EEE4 80141A18 09F84000 */  jalr       $v0
    /* EEE8 80141A1C 00000000 */   nop
  .L80141A20:
    /* EEEC 80141A20 1C80023C */  lui        $v0, %hi(D_801BFEDC)
    /* EEF0 80141A24 DCFE428C */  lw         $v0, %lo(D_801BFEDC)($v0)
    /* EEF4 80141A28 00000000 */  nop
    /* EEF8 80141A2C 0D004010 */  beqz       $v0, .L80141A64
    /* EEFC 80141A30 00000000 */   nop
    /* EF00 80141A34 0C00048E */  lw         $a0, 0xC($s0)
    /* EF04 80141A38 1C80023C */  lui        $v0, %hi(D_801BFE74)
    /* EF08 80141A3C 74FE428C */  lw         $v0, %lo(D_801BFE74)($v0)
    /* EF0C 80141A40 00000000 */  nop
    /* EF10 80141A44 09F84000 */  jalr       $v0
    /* EF14 80141A48 00000000 */   nop
    /* EF18 80141A4C 0C00048E */  lw         $a0, 0xC($s0)
    /* EF1C 80141A50 1C80023C */  lui        $v0, %hi(D_801BFE74)
    /* EF20 80141A54 74FE428C */  lw         $v0, %lo(D_801BFE74)($v0)
    /* EF24 80141A58 00000000 */  nop
    /* EF28 80141A5C 09F84000 */  jalr       $v0
    /* EF2C 80141A60 F0008424 */   addiu     $a0, $a0, 0xF0
  .L80141A64:
    /* EF30 80141A64 37000292 */  lbu        $v0, 0x37($s0)
    /* EF34 80141A68 00000000 */  nop
    /* EF38 80141A6C 03004014 */  bnez       $v0, .L80141A7C
    /* EF3C 80141A70 21200002 */   addu      $a0, $s0, $zero
    /* EF40 80141A74 A0060508 */  j          .L80141A80
    /* EF44 80141A78 42000524 */   addiu     $a1, $zero, 0x42
  .L80141A7C:
    /* EF48 80141A7C 37000592 */  lbu        $a1, 0x37($s0)
  .L80141A80:
    /* EF4C 80141A80 9302050C */  jal        _padSioRW2
    /* EF50 80141A84 00000000 */   nop
    /* EF54 80141A88 1400BF8F */  lw         $ra, 0x14($sp)
    /* EF58 80141A8C 1000B08F */  lw         $s0, 0x10($sp)
    /* EF5C 80141A90 0800E003 */  jr         $ra
    /* EF60 80141A94 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_801419C0
