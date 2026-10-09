nonmatching func_8009C9A4, 0x160

glabel func_8009C9A4
    /* 8B1B4 8009C9A4 C8FFBD27 */  addiu      $sp, $sp, -0x38
    /* 8B1B8 8009C9A8 21108000 */  addu       $v0, $a0, $zero
    /* 8B1BC 8009C9AC 3400BFAF */  sw         $ra, 0x34($sp)
    /* 8B1C0 8009C9B0 3000B4AF */  sw         $s4, 0x30($sp)
    /* 8B1C4 8009C9B4 2C00B3AF */  sw         $s3, 0x2C($sp)
    /* 8B1C8 8009C9B8 2800B2AF */  sw         $s2, 0x28($sp)
    /* 8B1CC 8009C9BC 2400B1AF */  sw         $s1, 0x24($sp)
    /* 8B1D0 8009C9C0 2000B0AF */  sw         $s0, 0x20($sp)
    /* 8B1D4 8009C9C4 9C0A438C */  lw         $v1, 0xA9C($v0)
    /* 8B1D8 8009C9C8 800A548C */  lw         $s4, 0xA80($v0)
    /* 8B1DC 8009C9CC 980A508C */  lw         $s0, 0xA98($v0)
    /* 8B1E0 8009C9D0 6000918E */  lw         $s1, 0x60($s4)
    /* 8B1E4 8009C9D4 ECED000C */  jal        func_8003B7B0
    /* 8B1E8 8009C9D8 08007324 */   addiu     $s3, $v1, 0x8
    /* 8B1EC 8009C9DC 5001038E */  lw         $v1, 0x150($s0)
    /* 8B1F0 8009C9E0 05000224 */  addiu      $v0, $zero, 0x5
    /* 8B1F4 8009C9E4 03006210 */  beq        $v1, $v0, .L8009C9F4
    /* 8B1F8 8009C9E8 00000000 */   nop
    /* 8B1FC 8009C9EC 6C2B010C */  jal        func_8004ADB0
    /* 8B200 8009C9F0 00000000 */   nop
  .L8009C9F4:
    /* 8B204 8009C9F4 EF2B010C */  jal        func_8004AFBC
    /* 8B208 8009C9F8 00000000 */   nop
    /* 8B20C 8009C9FC 39002012 */  beqz       $s1, .L8009CAE4
    /* 8B210 8009CA00 0D80023C */   lui       $v0, %hi(D_800C933C)
    /* 8B214 8009CA04 0D80043C */  lui        $a0, %hi(D_800D5F38)
    /* 8B218 8009CA08 385F848C */  lw         $a0, %lo(D_800D5F38)($a0)
    /* 8B21C 8009CA0C FFFF0324 */  addiu      $v1, $zero, -0x1
    /* 8B220 8009CA10 3C934B24 */  addiu      $t3, $v0, %lo(D_800C933C)
    /* 8B224 8009CA14 0000688D */  lw         $t0, 0x0($t3)
    /* 8B228 8009CA18 0400698D */  lw         $t1, 0x4($t3)
    /* 8B22C 8009CA1C 08006A8D */  lw         $t2, 0x8($t3)
    /* 8B230 8009CA20 1000A8AF */  sw         $t0, 0x10($sp)
    /* 8B234 8009CA24 1400A9AF */  sw         $t1, 0x14($sp)
    /* 8B238 8009CA28 1800AAAF */  sw         $t2, 0x18($sp)
    /* 8B23C 8009CA2C 400124AE */  sw         $a0, 0x140($s1)
    /* 8B240 8009CA30 000064AE */  sw         $a0, 0x0($s3)
    /* 8B244 8009CA34 3C0123AE */  sw         $v1, 0x13C($s1)
    /* 8B248 8009CA38 0D80043C */  lui        $a0, %hi(D_800D5F38)
    /* 8B24C 8009CA3C 385F848C */  lw         $a0, %lo(D_800D5F38)($a0)
    /* 8B250 8009CA40 0C80033C */  lui        $v1, %hi(D_800C6710)
    /* 8B254 8009CA44 1067638C */  lw         $v1, %lo(D_800C6710)($v1)
    /* 8B258 8009CA48 C0100400 */  sll        $v0, $a0, 3
    /* 8B25C 8009CA4C 23104400 */  subu       $v0, $v0, $a0
    /* 8B260 8009CA50 0400658C */  lw         $a1, 0x4($v1)
    /* 8B264 8009CA54 80100200 */  sll        $v0, $v0, 2
    /* 8B268 8009CA58 21104500 */  addu       $v0, $v0, $a1
    /* 8B26C 8009CA5C 1800438C */  lw         $v1, 0x18($v0)
    /* 8B270 8009CA60 00000000 */  nop
    /* 8B274 8009CA64 FFFF6324 */  addiu      $v1, $v1, -0x1
    /* 8B278 8009CA68 80180300 */  sll        $v1, $v1, 2
    /* 8B27C 8009CA6C 2110A303 */  addu       $v0, $sp, $v1
    /* 8B280 8009CA70 1000448C */  lw         $a0, 0x10($v0)
    /* 8B284 8009CA74 3385020C */  jal        func_800A14CC
    /* 8B288 8009CA78 0C0064AE */   sw        $a0, 0xC($s3)
    /* 8B28C 8009CA7C 4185020C */  jal        func_800A1504
    /* 8B290 8009CA80 21904000 */   addu      $s2, $v0, $zero
    /* 8B294 8009CA84 21208002 */  addu       $a0, $s4, $zero
    /* 8B298 8009CA88 21884000 */  addu       $s1, $v0, $zero
    /* 8B29C 8009CA8C 0D80053C */  lui        $a1, %hi(D_800C9348)
    /* 8B2A0 8009CA90 4893A524 */  addiu      $a1, $a1, %lo(D_800C9348)
    /* 8B2A4 8009CA94 0000228E */  lw         $v0, 0x0($s1)
    /* 8B2A8 8009CA98 0000508E */  lw         $s0, 0x0($s2)
    /* 8B2AC 8009CA9C 40180200 */  sll        $v1, $v0, 1
    /* 8B2B0 8009CAA0 21186200 */  addu       $v1, $v1, $v0
    /* 8B2B4 8009CAA4 C0180300 */  sll        $v1, $v1, 3
    /* 8B2B8 8009CAA8 39E7000C */  jal        func_80039CE4
    /* 8B2BC 8009CAAC 21800302 */   addu      $s0, $s0, $v1
    /* 8B2C0 8009CAB0 0D80053C */  lui        $a1, %hi(D_800C9354)
    /* 8B2C4 8009CAB4 5493A524 */  addiu      $a1, $a1, %lo(D_800C9354)
    /* 8B2C8 8009CAB8 0C00448C */  lw         $a0, 0xC($v0)
    /* 8B2CC 8009CABC 0400268E */  lw         $a2, 0x4($s1)
    /* 8B2D0 8009CAC0 1000078E */  lw         $a3, 0x10($s0)
    /* 8B2D4 8009CAC4 96D9020C */  jal        func_800B6658
    /* 8B2D8 8009CAC8 0100C624 */   addiu     $a2, $a2, 0x1
    /* 8B2DC 8009CACC 0C00638E */  lw         $v1, 0xC($s3)
    /* 8B2E0 8009CAD0 0D80023C */  lui        $v0, %hi(D_800D5F34)
    /* 8B2E4 8009CAD4 345F428C */  lw         $v0, %lo(D_800D5F34)($v0)
    /* 8B2E8 8009CAD8 40180300 */  sll        $v1, $v1, 1
    /* 8B2EC 8009CADC 21104300 */  addu       $v0, $v0, $v1
    /* 8B2F0 8009CAE0 100062AE */  sw         $v0, 0x10($s3)
  .L8009CAE4:
    /* 8B2F4 8009CAE4 3400BF8F */  lw         $ra, 0x34($sp)
    /* 8B2F8 8009CAE8 3000B48F */  lw         $s4, 0x30($sp)
    /* 8B2FC 8009CAEC 2C00B38F */  lw         $s3, 0x2C($sp)
    /* 8B300 8009CAF0 2800B28F */  lw         $s2, 0x28($sp)
    /* 8B304 8009CAF4 2400B18F */  lw         $s1, 0x24($sp)
    /* 8B308 8009CAF8 2000B08F */  lw         $s0, 0x20($sp)
    /* 8B30C 8009CAFC 0800E003 */  jr         $ra
    /* 8B310 8009CB00 3800BD27 */   addiu     $sp, $sp, 0x38
endlabel func_8009C9A4
