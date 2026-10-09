nonmatching func_8013FA3C, 0x2FC

glabel func_8013FA3C
    /* CF08 8013FA3C 1C80023C */  lui        $v0, %hi(D_801BFE3C)
    /* CF0C 8013FA40 3CFE428C */  lw         $v0, %lo(D_801BFE3C)($v0)
    /* CF10 8013FA44 B0FFBD27 */  addiu      $sp, $sp, -0x50
    /* CF14 8013FA48 2C00B1AF */  sw         $s1, 0x2C($sp)
    /* CF18 8013FA4C 21888000 */  addu       $s1, $a0, $zero
    /* CF1C 8013FA50 4C00BFAF */  sw         $ra, 0x4C($sp)
    /* CF20 8013FA54 4800BEAF */  sw         $fp, 0x48($sp)
    /* CF24 8013FA58 4400B7AF */  sw         $s7, 0x44($sp)
    /* CF28 8013FA5C 4000B6AF */  sw         $s6, 0x40($sp)
    /* CF2C 8013FA60 3C00B5AF */  sw         $s5, 0x3C($sp)
    /* CF30 8013FA64 3800B4AF */  sw         $s4, 0x38($sp)
    /* CF34 8013FA68 3400B3AF */  sw         $s3, 0x34($sp)
    /* CF38 8013FA6C 3000B2AF */  sw         $s2, 0x30($sp)
    /* CF3C 8013FA70 2800B0AF */  sw         $s0, 0x28($sp)
    /* CF40 8013FA74 5400A5AF */  sw         $a1, 0x54($sp)
    /* CF44 8013FA78 03004014 */  bnez       $v0, .L8013FA88
    /* CF48 8013FA7C 2000A0AF */   sw        $zero, 0x20($sp)
    /* CF4C 8013FA80 42FF0408 */  j          .L8013FD08
    /* CF50 8013FA84 21100000 */   addu      $v0, $zero, $zero
  .L8013FA88:
    /* CF54 8013FA88 1C80123C */  lui        $s2, %hi(D_801BFE50)
    /* CF58 8013FA8C 50FE448E */  lw         $a0, %lo(D_801BFE50)($s2)
    /* CF5C 8013FA90 00000000 */  nop
    /* CF60 8013FA94 0A008010 */  beqz       $a0, .L8013FAC0
    /* CF64 8013FA98 1D80023C */   lui       $v0, %hi(D_801CE6E0)
    /* CF68 8013FA9C 08009110 */  beq        $a0, $s1, .L8013FAC0
    /* CF6C 8013FAA0 1D80103C */   lui       $s0, %hi(D_801CE77C)
    /* CF70 8013FAA4 7CE7058E */  lw         $a1, %lo(D_801CE77C)($s0)
    /* CF74 8013FAA8 45FE040C */  jal        func_8013F914
    /* CF78 8013FAAC 00000000 */   nop
    /* CF7C 8013FAB0 5400A78F */  lw         $a3, 0x54($sp)
    /* CF80 8013FAB4 50FE51AE */  sw         $s1, %lo(D_801BFE50)($s2)
    /* CF84 8013FAB8 7CE707AE */  sw         $a3, %lo(D_801CE77C)($s0)
    /* CF88 8013FABC 1D80023C */  lui        $v0, %hi(D_801CE6E0)
  .L8013FAC0:
    /* CF8C 8013FAC0 E0E6428C */  lw         $v0, %lo(D_801CE6E0)($v0)
    /* CF90 8013FAC4 00000000 */  nop
    /* CF94 8013FAC8 8E004018 */  blez       $v0, .L8013FD04
    /* CF98 8013FACC 21980000 */   addu      $s3, $zero, $zero
    /* CF9C 8013FAD0 21A82002 */  addu       $s5, $s1, $zero
    /* CFA0 8013FAD4 21B86002 */  addu       $s7, $s3, $zero
    /* CFA4 8013FAD8 1D80023C */  lui        $v0, %hi(D_801CE6C0)
    /* CFA8 8013FADC C0E65624 */  addiu      $s6, $v0, %lo(D_801CE6C0)
    /* CFAC 8013FAE0 2190C002 */  addu       $s2, $s6, $zero
    /* CFB0 8013FAE4 1D80023C */  lui        $v0, %hi(D_801CE6E8)
    /* CFB4 8013FAE8 E8E65E24 */  addiu      $fp, $v0, %lo(D_801CE6E8)
  .L8013FAEC:
    /* CFB8 8013FAEC 1C80023C */  lui        $v0, %hi(D_801BFE48)
    /* CFBC 8013FAF0 48FE4290 */  lbu        $v0, %lo(D_801BFE48)($v0)
    /* CFC0 8013FAF4 00000000 */  nop
    /* CFC4 8013FAF8 07106202 */  srav       $v0, $v0, $s3
    /* CFC8 8013FAFC 01004230 */  andi       $v0, $v0, 0x1
    /* CFCC 8013FB00 76004010 */  beqz       $v0, .L8013FCDC
    /* CFD0 8013FB04 00000000 */   nop
    /* CFD4 8013FB08 04004382 */  lb         $v1, 0x4($s2)
    /* CFD8 8013FB0C 0400C283 */  lb         $v0, 0x4($fp)
    /* CFDC 8013FB10 00000000 */  nop
    /* CFE0 8013FB14 23006210 */  beq        $v1, $v0, .L8013FBA4
    /* CFE4 8013FB18 00000000 */   nop
    /* CFE8 8013FB1C 0400A28E */  lw         $v0, 0x4($s5)
    /* CFEC 8013FB20 00000000 */  nop
    /* CFF0 8013FB24 1C004010 */  beqz       $v0, .L8013FB98
    /* CFF4 8013FB28 1C80073C */   lui       $a3, %hi(D_801BFE4C)
    /* CFF8 8013FB2C 4CFEE28C */  lw         $v0, %lo(D_801BFE4C)($a3)
    /* CFFC 8013FB30 00000000 */  nop
    /* D000 8013FB34 04004230 */  andi       $v0, $v0, 0x4
    /* D004 8013FB38 04004014 */  bnez       $v0, .L8013FB4C
    /* D008 8013FB3C 04000224 */   addiu     $v0, $zero, 0x4
    /* D00C 8013FB40 02006214 */  bne        $v1, $v0, .L8013FB4C
    /* D010 8013FB44 00000000 */   nop
    /* D014 8013FB48 040040A2 */  sb         $zero, 0x4($s2)
  .L8013FB4C:
    /* D018 8013FB4C 4CFEE28C */  lw         $v0, %lo(D_801BFE4C)($a3)
    /* D01C 8013FB50 00000000 */  nop
    /* D020 8013FB54 10004230 */  andi       $v0, $v0, 0x10
    /* D024 8013FB58 06004014 */  bnez       $v0, .L8013FB74
    /* D028 8013FB5C 07000224 */   addiu     $v0, $zero, 0x7
    /* D02C 8013FB60 04004382 */  lb         $v1, 0x4($s2)
    /* D030 8013FB64 00000000 */  nop
    /* D034 8013FB68 02006214 */  bne        $v1, $v0, .L8013FB74
    /* D038 8013FB6C 00000000 */   nop
    /* D03C 8013FB70 040040A2 */  sb         $zero, 0x4($s2)
  .L8013FB74:
    /* D040 8013FB74 0800C0AE */  sw         $zero, 0x8($s6)
    /* D044 8013FB78 04004282 */  lb         $v0, 0x4($s2)
    /* D048 8013FB7C 5400A58F */  lw         $a1, 0x54($sp)
    /* D04C 8013FB80 1000A2AF */  sw         $v0, 0x10($sp)
    /* D050 8013FB84 0000A68E */  lw         $a2, 0x0($s5)
    /* D054 8013FB88 0400A28E */  lw         $v0, 0x4($s5)
    /* D058 8013FB8C 00000000 */  nop
    /* D05C 8013FB90 09F84000 */  jalr       $v0
    /* D060 8013FB94 1000A427 */   addiu     $a0, $sp, 0x10
  .L8013FB98:
    /* D064 8013FB98 04004292 */  lbu        $v0, 0x4($s2)
    /* D068 8013FB9C 00000000 */  nop
    /* D06C 8013FBA0 0400C2A3 */  sb         $v0, 0x4($fp)
  .L8013FBA4:
    /* D070 8013FBA4 0800C28E */  lw         $v0, 0x8($s6)
    /* D074 8013FBA8 00000000 */  nop
    /* D078 8013FBAC 26004014 */  bnez       $v0, .L8013FC48
    /* D07C 8013FBB0 1D80023C */   lui       $v0, %hi(D_801CE6D8)
    /* D080 8013FBB4 D8E64224 */  addiu      $v0, $v0, %lo(D_801CE6D8)
    /* D084 8013FBB8 2180E202 */  addu       $s0, $s7, $v0
    /* D088 8013FBBC 0000048E */  lw         $a0, 0x0($s0)
    /* D08C 8013FBC0 5EFF040C */  jal        func_8013FD78
    /* D090 8013FBC4 00000000 */   nop
    /* D094 8013FBC8 21184000 */  addu       $v1, $v0, $zero
    /* D098 8013FBCC 02000224 */  addiu      $v0, $zero, 0x2
    /* D09C 8013FBD0 1B006210 */  beq        $v1, $v0, .L8013FC40
    /* D0A0 8013FBD4 06000224 */   addiu     $v0, $zero, 0x6
    /* D0A4 8013FBD8 1B006214 */  bne        $v1, $v0, .L8013FC48
    /* D0A8 8013FBDC 1C80053C */   lui       $a1, %hi(D_801BFDA4)
    /* D0AC 8013FBE0 0000048E */  lw         $a0, 0x0($s0)
    /* D0B0 8013FBE4 0400050C */  jal        func_80140010
    /* D0B4 8013FBE8 A4FDA524 */   addiu     $a1, $a1, %lo(D_801BFDA4)
    /* D0B8 8013FBEC 21206002 */  addu       $a0, $s3, $zero
    /* D0BC 8013FBF0 35FA040C */  jal        func_8013E8D4
    /* D0C0 8013FBF4 2BA00200 */   sltu      $s4, $zero, $v0
    /* D0C4 8013FBF8 1C80033C */  lui        $v1, %hi(D_801BFE2C)
    /* D0C8 8013FBFC 2CFE6324 */  addiu      $v1, $v1, %lo(D_801BFE2C)
    /* D0CC 8013FC00 2118E302 */  addu       $v1, $s7, $v1
    /* D0D0 8013FC04 000062AC */  sw         $v0, 0x0($v1)
    /* D0D4 8013FC08 1C80023C */  lui        $v0, %hi(D_801BFE34)
    /* D0D8 8013FC0C 34FE4224 */  addiu      $v0, $v0, %lo(D_801BFE34)
    /* D0DC 8013FC10 2188E202 */  addu       $s1, $s7, $v0
    /* D0E0 8013FC14 0000258E */  lw         $a1, 0x0($s1)
    /* D0E4 8013FC18 FFFF1024 */  addiu      $s0, $zero, -0x1
    /* D0E8 8013FC1C 0600B010 */  beq        $a1, $s0, .L8013FC38
    /* D0EC 8013FC20 00000000 */   nop
    /* D0F0 8013FC24 43FA040C */  jal        func_8013E90C
    /* D0F4 8013FC28 21206002 */   addu      $a0, $s3, $zero
    /* D0F8 8013FC2C 02005010 */  beq        $v0, $s0, .L8013FC38
    /* D0FC 8013FC30 00000000 */   nop
    /* D100 8013FC34 000030AE */  sw         $s0, 0x0($s1)
  .L8013FC38:
    /* D104 8013FC38 03008012 */  beqz       $s4, .L8013FC48
    /* D108 8013FC3C 00000000 */   nop
  .L8013FC40:
    /* D10C 8013FC40 01000224 */  addiu      $v0, $zero, 0x1
    /* D110 8013FC44 0800C2AE */  sw         $v0, 0x8($s6)
  .L8013FC48:
    /* D114 8013FC48 04004382 */  lb         $v1, 0x4($s2)
    /* D118 8013FC4C 04000224 */  addiu      $v0, $zero, 0x4
    /* D11C 8013FC50 05006210 */  beq        $v1, $v0, .L8013FC68
    /* D120 8013FC54 07000224 */   addiu     $v0, $zero, 0x7
    /* D124 8013FC58 0F006210 */  beq        $v1, $v0, .L8013FC98
    /* D128 8013FC5C 1C80073C */   lui       $a3, %hi(D_801BFE4C)
    /* D12C 8013FC60 33FF0408 */  j          .L8013FCCC
    /* D130 8013FC64 00000000 */   nop
  .L8013FC68:
    /* D134 8013FC68 1C80073C */  lui        $a3, %hi(D_801BFE4C)
    /* D138 8013FC6C 4CFEE28C */  lw         $v0, %lo(D_801BFE4C)($a3)
    /* D13C 8013FC70 00000000 */  nop
    /* D140 8013FC74 04004230 */  andi       $v0, $v0, 0x4
    /* D144 8013FC78 18004010 */  beqz       $v0, .L8013FCDC
    /* D148 8013FC7C 00000000 */   nop
    /* D14C 8013FC80 21206002 */  addu       $a0, $s3, $zero
    /* D150 8013FC84 5400A68F */  lw         $a2, 0x54($sp)
    /* D154 8013FC88 81FC040C */  jal        func_8013F204
    /* D158 8013FC8C 2128A002 */   addu      $a1, $s5, $zero
    /* D15C 8013FC90 2FFF0408 */  j          .L8013FCBC
    /* D160 8013FC94 00000000 */   nop
  .L8013FC98:
    /* D164 8013FC98 4CFEE28C */  lw         $v0, %lo(D_801BFE4C)($a3)
    /* D168 8013FC9C 00000000 */  nop
    /* D16C 8013FCA0 10004230 */  andi       $v0, $v0, 0x10
    /* D170 8013FCA4 0D004010 */  beqz       $v0, .L8013FCDC
    /* D174 8013FCA8 00000000 */   nop
    /* D178 8013FCAC 21206002 */  addu       $a0, $s3, $zero
    /* D17C 8013FCB0 5400A68F */  lw         $a2, 0x54($sp)
    /* D180 8013FCB4 38FD040C */  jal        func_8013F4E0
    /* D184 8013FCB8 2128A002 */   addu      $a1, $s5, $zero
  .L8013FCBC:
    /* D188 8013FCBC 07004010 */  beqz       $v0, .L8013FCDC
    /* D18C 8013FCC0 01000724 */   addiu     $a3, $zero, 0x1
    /* D190 8013FCC4 37FF0408 */  j          .L8013FCDC
    /* D194 8013FCC8 2000A7AF */   sw        $a3, 0x20($sp)
  .L8013FCCC:
    /* D198 8013FCCC FDFA040C */  jal        func_8013EBF4
    /* D19C 8013FCD0 21206002 */   addu      $a0, $s3, $zero
    /* D1A0 8013FCD4 1D80033C */  lui        $v1, %hi(D_801CE778)
    /* D1A4 8013FCD8 78E762AC */  sw         $v0, %lo(D_801CE778)($v1)
  .L8013FCDC:
    /* D1A8 8013FCDC 9800B526 */  addiu      $s5, $s5, 0x98
    /* D1AC 8013FCE0 0400F726 */  addiu      $s7, $s7, 0x4
    /* D1B0 8013FCE4 01005226 */  addiu      $s2, $s2, 0x1
    /* D1B4 8013FCE8 0400D626 */  addiu      $s6, $s6, 0x4
    /* D1B8 8013FCEC 1D80023C */  lui        $v0, %hi(D_801CE6E0)
    /* D1BC 8013FCF0 E0E6428C */  lw         $v0, %lo(D_801CE6E0)($v0)
    /* D1C0 8013FCF4 01007326 */  addiu      $s3, $s3, 0x1
    /* D1C4 8013FCF8 2A106202 */  slt        $v0, $s3, $v0
    /* D1C8 8013FCFC 7BFF4014 */  bnez       $v0, .L8013FAEC
    /* D1CC 8013FD00 0100DE27 */   addiu     $fp, $fp, 0x1
  .L8013FD04:
    /* D1D0 8013FD04 2000A28F */  lw         $v0, 0x20($sp)
  .L8013FD08:
    /* D1D4 8013FD08 4C00BF8F */  lw         $ra, 0x4C($sp)
    /* D1D8 8013FD0C 4800BE8F */  lw         $fp, 0x48($sp)
    /* D1DC 8013FD10 4400B78F */  lw         $s7, 0x44($sp)
    /* D1E0 8013FD14 4000B68F */  lw         $s6, 0x40($sp)
    /* D1E4 8013FD18 3C00B58F */  lw         $s5, 0x3C($sp)
    /* D1E8 8013FD1C 3800B48F */  lw         $s4, 0x38($sp)
    /* D1EC 8013FD20 3400B38F */  lw         $s3, 0x34($sp)
    /* D1F0 8013FD24 3000B28F */  lw         $s2, 0x30($sp)
    /* D1F4 8013FD28 2C00B18F */  lw         $s1, 0x2C($sp)
    /* D1F8 8013FD2C 2800B08F */  lw         $s0, 0x28($sp)
    /* D1FC 8013FD30 0800E003 */  jr         $ra
    /* D200 8013FD34 5000BD27 */   addiu     $sp, $sp, 0x50
endlabel func_8013FA3C
