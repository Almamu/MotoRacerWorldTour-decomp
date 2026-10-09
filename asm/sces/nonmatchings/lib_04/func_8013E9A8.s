nonmatching func_8013E9A8, 0x138

glabel func_8013E9A8
    /* BE74 8013E9A8 D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* BE78 8013E9AC 2000B4AF */  sw         $s4, 0x20($sp)
    /* BE7C 8013E9B0 21A08000 */  addu       $s4, $a0, $zero
    /* BE80 8013E9B4 2400B5AF */  sw         $s5, 0x24($sp)
    /* BE84 8013E9B8 21A8A000 */  addu       $s5, $a1, $zero
    /* BE88 8013E9BC 2800BFAF */  sw         $ra, 0x28($sp)
    /* BE8C 8013E9C0 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* BE90 8013E9C4 1800B2AF */  sw         $s2, 0x18($sp)
    /* BE94 8013E9C8 1400B1AF */  sw         $s1, 0x14($sp)
    /* BE98 8013E9CC 03008012 */  beqz       $s4, .L8013E9DC
    /* BE9C 8013E9D0 1000B0AF */   sw        $s0, 0x10($sp)
    /* BEA0 8013E9D4 AFFA0408 */  j          .L8013EABC
    /* BEA4 8013E9D8 21100000 */   addu      $v0, $zero, $zero
  .L8013E9DC:
    /* BEA8 8013E9DC 1D80043C */  lui        $a0, %hi(D_801CE678)
    /* BEAC 8013E9E0 78E68424 */  addiu      $a0, $a0, %lo(D_801CE678)
    /* BEB0 8013E9E4 EA07050C */  jal        func_80141FA8
    /* BEB4 8013E9E8 22008524 */   addiu     $a1, $a0, 0x22
    /* BEB8 8013E9EC 1D80033C */  lui        $v1, %hi(D_801CE6D8)
    /* BEBC 8013E9F0 1C80023C */  lui        $v0, %hi(D_801BFE0C)
    /* BEC0 8013E9F4 0CFE4B24 */  addiu      $t3, $v0, %lo(D_801BFE0C)
    /* BEC4 8013E9F8 D8E66A24 */  addiu      $t2, $v1, %lo(D_801CE6D8)
    /* BEC8 8013E9FC 0000688D */  lw         $t0, 0x0($t3)
    /* BECC 8013EA00 0400698D */  lw         $t1, 0x4($t3)
    /* BED0 8013EA04 000048AD */  sw         $t0, 0x0($t2)
    /* BED4 8013EA08 040049AD */  sw         $t1, 0x4($t2)
    /* BED8 8013EA0C 02001324 */  addiu      $s3, $zero, 0x2
    /* BEDC 8013EA10 21900000 */  addu       $s2, $zero, $zero
    /* BEE0 8013EA14 D8E67124 */  addiu      $s1, $v1, %lo(D_801CE6D8)
    /* BEE4 8013EA18 1D80023C */  lui        $v0, %hi(D_801CE6D0)
    /* BEE8 8013EA1C D0E65024 */  addiu      $s0, $v0, %lo(D_801CE6D0)
  .L8013EA20:
    /* BEEC 8013EA20 0000248E */  lw         $a0, 0x0($s1)
    /* BEF0 8013EA24 21280002 */  addu       $a1, $s0, $zero
    /* BEF4 8013EA28 02000624 */  addiu      $a2, $zero, 0x2
    /* BEF8 8013EA2C 04003126 */  addiu      $s1, $s1, 0x4
    /* BEFC 8013EA30 21800602 */  addu       $s0, $s0, $a2
    /* BF00 8013EA34 2400050C */  jal        func_80140090
    /* BF04 8013EA38 01005226 */   addiu     $s2, $s2, 0x1
    /* BF08 8013EA3C 2A105302 */  slt        $v0, $s2, $s3
    /* BF0C 8013EA40 F7FF4014 */  bnez       $v0, .L8013EA20
    /* BF10 8013EA44 00000000 */   nop
    /* BF14 8013EA48 4EFF040C */  jal        func_8013FD38
    /* BF18 8013EA4C 00000000 */   nop
    /* BF1C 8013EA50 80000424 */  addiu      $a0, $zero, 0x80
    /* BF20 8013EA54 21288000 */  addu       $a1, $a0, $zero
    /* BF24 8013EA58 21308000 */  addu       $a2, $a0, $zero
    /* BF28 8013EA5C 21388000 */  addu       $a3, $a0, $zero
    /* BF2C 8013EA60 1D80023C */  lui        $v0, %hi(D_801CE6E0)
    /* BF30 8013EA64 1D80033C */  lui        $v1, %hi(D_801CE6BC)
    /* BF34 8013EA68 E0E655AC */  sw         $s5, %lo(D_801CE6E0)($v0)
    /* BF38 8013EA6C 1D80023C */  lui        $v0, %hi(D_801CE678)
    /* BF3C 8013EA70 78E64224 */  addiu      $v0, $v0, %lo(D_801CE678)
    /* BF40 8013EA74 BCE662AC */  sw         $v0, %lo(D_801CE6BC)($v1)
    /* BF44 8013EA78 1C80023C */  lui        $v0, %hi(D_801BFD9C)
    /* BF48 8013EA7C 1C80033C */  lui        $v1, %hi(D_801BFD98)
    /* BF4C 8013EA80 9CFD54AC */  sw         $s4, %lo(D_801BFD9C)($v0)
    /* BF50 8013EA84 01000224 */  addiu      $v0, $zero, 0x1
    /* BF54 8013EA88 8BFB040C */  jal        func_8013EE2C
    /* BF58 8013EA8C 98FD62AC */   sw        $v0, %lo(D_801BFD98)($v1)
    /* BF5C 8013EA90 1E000424 */  addiu      $a0, $zero, 0x1E
    /* BF60 8013EA94 21288000 */  addu       $a1, $a0, $zero
    /* BF64 8013EA98 21308000 */  addu       $a2, $a0, $zero
    /* BF68 8013EA9C 9DFB040C */  jal        func_8013EE74
    /* BF6C 8013EAA0 21388000 */   addu      $a3, $a0, $zero
    /* BF70 8013EAA4 00010424 */  addiu      $a0, $zero, 0x100
    /* BF74 8013EAA8 21288000 */  addu       $a1, $a0, $zero
    /* BF78 8013EAAC 21308000 */  addu       $a2, $a0, $zero
    /* BF7C 8013EAB0 79FB040C */  jal        func_8013EDE4
    /* BF80 8013EAB4 21388000 */   addu      $a3, $a0, $zero
    /* BF84 8013EAB8 0300A22A */  slti       $v0, $s5, 0x3
  .L8013EABC:
    /* BF88 8013EABC 2800BF8F */  lw         $ra, 0x28($sp)
    /* BF8C 8013EAC0 2400B58F */  lw         $s5, 0x24($sp)
    /* BF90 8013EAC4 2000B48F */  lw         $s4, 0x20($sp)
    /* BF94 8013EAC8 1C00B38F */  lw         $s3, 0x1C($sp)
    /* BF98 8013EACC 1800B28F */  lw         $s2, 0x18($sp)
    /* BF9C 8013EAD0 1400B18F */  lw         $s1, 0x14($sp)
    /* BFA0 8013EAD4 1000B08F */  lw         $s0, 0x10($sp)
    /* BFA4 8013EAD8 0800E003 */  jr         $ra
    /* BFA8 8013EADC 3000BD27 */   addiu     $sp, $sp, 0x30
endlabel func_8013E9A8
