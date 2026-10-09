nonmatching func_8014083C, 0x210

glabel func_8014083C
    /* DD08 8014083C D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* DD0C 80140840 1000B0AF */  sw         $s0, 0x10($sp)
    /* DD10 80140844 21808000 */  addu       $s0, $a0, $zero
    /* DD14 80140848 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* DD18 8014084C 2198A000 */  addu       $s3, $a1, $zero
    /* DD1C 80140850 2000BFAF */  sw         $ra, 0x20($sp)
    /* DD20 80140854 1800B2AF */  sw         $s2, 0x18($sp)
    /* DD24 80140858 22006106 */  bgez       $s3, .L801408E4
    /* DD28 8014085C 1400B1AF */   sw        $s1, 0x14($sp)
    /* DD2C 80140860 1C80023C */  lui        $v0, %hi(D_801BFEC0)
    /* DD30 80140864 C0FE428C */  lw         $v0, %lo(D_801BFEC0)($v0)
    /* DD34 80140868 4000038E */  lw         $v1, 0x40($s0)
    /* DD38 8014086C 00004490 */  lbu        $a0, 0x0($v0)
    /* DD3C 80140870 FF000224 */  addiu      $v0, $zero, 0xFF
    /* DD40 80140874 440002A2 */  sb         $v0, 0x44($s0)
    /* DD44 80140878 01000224 */  addiu      $v0, $zero, 0x1
    /* DD48 8014087C 450002A2 */  sb         $v0, 0x45($s0)
    /* DD4C 80140880 27101300 */  nor        $v0, $zero, $s3
    /* DD50 80140884 000062A0 */  sb         $v0, 0x0($v1)
    /* DD54 80140888 1C80033C */  lui        $v1, %hi(D_801BFEC0)
    /* DD58 8014088C C0FE638C */  lw         $v1, %lo(D_801BFEC0)($v1)
    /* DD5C 80140890 00000000 */  nop
    /* DD60 80140894 04006294 */  lhu        $v0, 0x4($v1)
    /* DD64 80140898 00000000 */  nop
    /* DD68 8014089C 01004230 */  andi       $v0, $v0, 0x1
    /* DD6C 801408A0 06004014 */  bnez       $v0, .L801408BC
    /* DD70 801408A4 FF009230 */   andi      $s2, $a0, 0xFF
  .L801408A8:
    /* DD74 801408A8 04006294 */  lhu        $v0, 0x4($v1)
    /* DD78 801408AC 00000000 */  nop
    /* DD7C 801408B0 01004230 */  andi       $v0, $v0, 0x1
    /* DD80 801408B4 FCFF4010 */  beqz       $v0, .L801408A8
    /* DD84 801408B8 00000000 */   nop
  .L801408BC:
    /* DD88 801408BC BA0A050C */  jal        func_80142AE8
    /* DD8C 801408C0 00000000 */   nop
    /* DD90 801408C4 FDFF4010 */  beqz       $v0, .L801408BC
    /* DD94 801408C8 27101300 */   nor       $v0, $zero, $s3
    /* DD98 801408CC 1C80033C */  lui        $v1, %hi(D_801BFEC0)
    /* DD9C 801408D0 C0FE638C */  lw         $v1, %lo(D_801BFEC0)($v1)
    /* DDA0 801408D4 00000000 */  nop
    /* DDA4 801408D8 000062A0 */  sb         $v0, 0x0($v1)
    /* DDA8 801408DC 8C020508 */  j          .L80140A30
    /* DDAC 801408E0 21104002 */   addu      $v0, $s2, $zero
  .L801408E4:
    /* DDB0 801408E4 3C00028E */  lw         $v0, 0x3C($s0)
    /* DDB4 801408E8 00000000 */  nop
    /* DDB8 801408EC 00004290 */  lbu        $v0, 0x0($v0)
    /* DDBC 801408F0 08000324 */  addiu      $v1, $zero, 0x8
    /* DDC0 801408F4 03110200 */  sra        $v0, $v0, 4
    /* DDC4 801408F8 07004314 */  bne        $v0, $v1, .L80140918
    /* DDC8 801408FC 88001124 */   addiu     $s1, $zero, 0x88
    /* DDCC 80140900 44000292 */  lbu        $v0, 0x44($s0)
    /* DDD0 80140904 00000000 */  nop
    /* DDD4 80140908 0900422C */  sltiu      $v0, $v0, 0x9
    /* DDD8 8014090C 03004014 */  bnez       $v0, .L8014091C
    /* DDDC 80140910 801F023C */   lui       $v0, (0x1F801120 >> 16)
    /* DDE0 80140914 22001124 */  addiu      $s1, $zero, 0x22
  .L80140918:
    /* DDE4 80140918 801F023C */  lui        $v0, (0x1F801120 >> 16)
  .L8014091C:
    /* DDE8 8014091C 20114234 */  ori        $v0, $v0, (0x1F801120 & 0xFFFF)
    /* DDEC 80140920 1C80053C */  lui        $a1, %hi(D_801BFEC0)
    /* DDF0 80140924 C0FEA58C */  lw         $a1, %lo(D_801BFEC0)($a1)
    /* DDF4 80140928 00004494 */  lhu        $a0, 0x0($v0)
    /* DDF8 8014092C 0400A394 */  lhu        $v1, 0x4($a1)
    /* DDFC 80140930 AE010224 */  addiu      $v0, $zero, 0x1AE
    /* DE00 80140934 1D80013C */  lui        $at, %hi(D_801CEA24)
    /* DE04 80140938 24EA22AC */  sw         $v0, %lo(D_801CEA24)($at)
    /* DE08 8014093C 1D80013C */  lui        $at, %hi(D_801CEA20)
    /* DE0C 80140940 20EA24AC */  sw         $a0, %lo(D_801CEA20)($at)
    /* DE10 80140944 02006330 */  andi       $v1, $v1, 0x2
    /* DE14 80140948 06006014 */  bnez       $v1, .L80140964
    /* DE18 8014094C 2118A000 */   addu      $v1, $a1, $zero
  .L80140950:
    /* DE1C 80140950 04006294 */  lhu        $v0, 0x4($v1)
    /* DE20 80140954 00000000 */  nop
    /* DE24 80140958 02004230 */  andi       $v0, $v0, 0x2
    /* DE28 8014095C FCFF4010 */  beqz       $v0, .L80140950
    /* DE2C 80140960 00000000 */   nop
  .L80140964:
    /* DE30 80140964 1C80023C */  lui        $v0, %hi(D_801BFEC0)
    /* DE34 80140968 C0FE428C */  lw         $v0, %lo(D_801BFEC0)($v0)
    /* DE38 8014096C 1C80033C */  lui        $v1, %hi(D_801BFEBC)
    /* DE3C 80140970 BCFE638C */  lw         $v1, %lo(D_801BFEBC)($v1)
    /* DE40 80140974 00004490 */  lbu        $a0, 0x0($v0)
    /* DE44 80140978 0E0051A4 */  sh         $s1, 0xE($v0)
    /* DE48 8014097C 0000628C */  lw         $v0, 0x0($v1)
    /* DE4C 80140980 00000000 */  nop
    /* DE50 80140984 80004230 */  andi       $v0, $v0, 0x80
    /* DE54 80140988 0D004014 */  bnez       $v0, .L801409C0
    /* DE58 8014098C FF009230 */   andi      $s2, $a0, 0xFF
  .L80140990:
    /* DE5C 80140990 BA0A050C */  jal        func_80142AE8
    /* DE60 80140994 00000000 */   nop
    /* DE64 80140998 25004014 */  bnez       $v0, .L80140A30
    /* DE68 8014099C ECFF0224 */   addiu     $v0, $zero, -0x14
    /* DE6C 801409A0 1C80023C */  lui        $v0, %hi(D_801BFEBC)
    /* DE70 801409A4 BCFE428C */  lw         $v0, %lo(D_801BFEBC)($v0)
    /* DE74 801409A8 00000000 */  nop
    /* DE78 801409AC 0000428C */  lw         $v0, 0x0($v0)
    /* DE7C 801409B0 00000000 */  nop
    /* DE80 801409B4 80004230 */  andi       $v0, $v0, 0x80
    /* DE84 801409B8 F5FF4010 */  beqz       $v0, .L80140990
    /* DE88 801409BC 00000000 */   nop
  .L801409C0:
    /* DE8C 801409C0 1C80023C */  lui        $v0, %hi(D_801BFEC0)
    /* DE90 801409C4 C0FE428C */  lw         $v0, %lo(D_801BFEC0)($v0)
    /* DE94 801409C8 00000000 */  nop
    /* DE98 801409CC 000053A0 */  sb         $s3, 0x0($v0)
    /* DE9C 801409D0 22000224 */  addiu      $v0, $zero, 0x22
    /* DEA0 801409D4 0A002216 */  bne        $s1, $v0, .L80140A00
    /* DEA4 801409D8 7FFF0224 */   addiu     $v0, $zero, -0x81
    /* DEA8 801409DC 1C80033C */  lui        $v1, %hi(D_801BFEBC)
    /* DEAC 801409E0 BCFE638C */  lw         $v1, %lo(D_801BFEBC)($v1)
    /* DEB0 801409E4 1C80043C */  lui        $a0, %hi(D_801BFEC0)
    /* DEB4 801409E8 C0FE848C */  lw         $a0, %lo(D_801BFEC0)($a0)
    /* DEB8 801409EC 000062AC */  sw         $v0, 0x0($v1)
    /* DEBC 801409F0 0A008294 */  lhu        $v0, 0xA($a0)
    /* DEC0 801409F4 00000000 */  nop
    /* DEC4 801409F8 10004234 */  ori        $v0, $v0, 0x10
    /* DEC8 801409FC 0A0082A4 */  sh         $v0, 0xA($a0)
  .L80140A00:
    /* DECC 80140A00 45000292 */  lbu        $v0, 0x45($s0)
    /* DED0 80140A04 44000492 */  lbu        $a0, 0x44($s0)
    /* DED4 80140A08 3C00038E */  lw         $v1, 0x3C($s0)
    /* DED8 80140A0C 01004224 */  addiu      $v0, $v0, 0x1
    /* DEDC 80140A10 21186400 */  addu       $v1, $v1, $a0
    /* DEE0 80140A14 450002A2 */  sb         $v0, 0x45($s0)
    /* DEE4 80140A18 000072A0 */  sb         $s2, 0x0($v1)
    /* DEE8 80140A1C 44000292 */  lbu        $v0, 0x44($s0)
    /* DEEC 80140A20 00000000 */  nop
    /* DEF0 80140A24 01004224 */  addiu      $v0, $v0, 0x1
    /* DEF4 80140A28 440002A2 */  sb         $v0, 0x44($s0)
    /* DEF8 80140A2C 21104002 */  addu       $v0, $s2, $zero
  .L80140A30:
    /* DEFC 80140A30 2000BF8F */  lw         $ra, 0x20($sp)
    /* DF00 80140A34 1C00B38F */  lw         $s3, 0x1C($sp)
    /* DF04 80140A38 1800B28F */  lw         $s2, 0x18($sp)
    /* DF08 80140A3C 1400B18F */  lw         $s1, 0x14($sp)
    /* DF0C 80140A40 1000B08F */  lw         $s0, 0x10($sp)
    /* DF10 80140A44 0800E003 */  jr         $ra
    /* DF14 80140A48 2800BD27 */   addiu     $sp, $sp, 0x28
endlabel func_8014083C
