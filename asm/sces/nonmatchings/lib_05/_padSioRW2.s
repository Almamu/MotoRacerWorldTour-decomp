nonmatching _padSioRW2, 0x278

glabel _padSioRW2
    /* DF18 80140A4C D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* DF1C 80140A50 1000B0AF */  sw         $s0, 0x10($sp)
    /* DF20 80140A54 21808000 */  addu       $s0, $a0, $zero
    /* DF24 80140A58 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* DF28 80140A5C 2198A000 */  addu       $s3, $a1, $zero
    /* DF2C 80140A60 2000BFAF */  sw         $ra, 0x20($sp)
    /* DF30 80140A64 1800B2AF */  sw         $s2, 0x18($sp)
    /* DF34 80140A68 1400B1AF */  sw         $s1, 0x14($sp)
    /* DF38 80140A6C 3C00028E */  lw         $v0, 0x3C($s0)
    /* DF3C 80140A70 00000000 */  nop
    /* DF40 80140A74 00004290 */  lbu        $v0, 0x0($v0)
    /* DF44 80140A78 08000324 */  addiu      $v1, $zero, 0x8
    /* DF48 80140A7C 03110200 */  sra        $v0, $v0, 4
    /* DF4C 80140A80 07004314 */  bne        $v0, $v1, .L80140AA0
    /* DF50 80140A84 88001124 */   addiu     $s1, $zero, 0x88
    /* DF54 80140A88 44000292 */  lbu        $v0, 0x44($s0)
    /* DF58 80140A8C 00000000 */  nop
    /* DF5C 80140A90 0900422C */  sltiu      $v0, $v0, 0x9
    /* DF60 80140A94 02004014 */  bnez       $v0, .L80140AA0
    /* DF64 80140A98 00000000 */   nop
    /* DF68 80140A9C 22001124 */  addiu      $s1, $zero, 0x22
  .L80140AA0:
    /* DF6C 80140AA0 1C80033C */  lui        $v1, %hi(D_801BFEC0)
    /* DF70 80140AA4 C0FE638C */  lw         $v1, %lo(D_801BFEC0)($v1)
    /* DF74 80140AA8 00000000 */  nop
  .L80140AAC:
    /* DF78 80140AAC 04006294 */  lhu        $v0, 0x4($v1)
    /* DF7C 80140AB0 00000000 */  nop
    /* DF80 80140AB4 02004230 */  andi       $v0, $v0, 0x2
    /* DF84 80140AB8 FCFF4010 */  beqz       $v0, .L80140AAC
    /* DF88 80140ABC 00000000 */   nop
    /* DF8C 80140AC0 B20A050C */  jal        setRC2wait
    /* DF90 80140AC4 90010424 */   addiu     $a0, $zero, 0x190
    /* DF94 80140AC8 1C80043C */  lui        $a0, %hi(D_801BFEC0)
    /* DF98 80140ACC C0FE848C */  lw         $a0, %lo(D_801BFEC0)($a0)
    /* DF9C 80140AD0 00000000 */  nop
    /* DFA0 80140AD4 00008290 */  lbu        $v0, 0x0($a0)
    /* DFA4 80140AD8 44000392 */  lbu        $v1, 0x44($s0)
    /* DFA8 80140ADC 00000000 */  nop
    /* DFAC 80140AE0 05006014 */  bnez       $v1, .L80140AF8
    /* DFB0 80140AE4 FF005230 */   andi      $s2, $v0, 0xFF
    /* DFB4 80140AE8 03191200 */  sra        $v1, $s2, 4
    /* DFB8 80140AEC 08000224 */  addiu      $v0, $zero, 0x8
    /* DFBC 80140AF0 04006210 */  beq        $v1, $v0, .L80140B04
    /* DFC0 80140AF4 22000224 */   addiu     $v0, $zero, 0x22
  .L80140AF8:
    /* DFC4 80140AF8 0E0091A4 */  sh         $s1, 0xE($a0)
    /* DFC8 80140AFC C2020508 */  j          .L80140B08
    /* DFCC 80140B00 00000000 */   nop
  .L80140B04:
    /* DFD0 80140B04 0E0082A4 */  sh         $v0, 0xE($a0)
  .L80140B08:
    /* DFD4 80140B08 1C80033C */  lui        $v1, %hi(D_801BFEBC)
    /* DFD8 80140B0C BCFE638C */  lw         $v1, %lo(D_801BFEBC)($v1)
    /* DFDC 80140B10 00000000 */  nop
    /* DFE0 80140B14 0000628C */  lw         $v0, 0x0($v1)
    /* DFE4 80140B18 00000000 */  nop
    /* DFE8 80140B1C 80004230 */  andi       $v0, $v0, 0x80
    /* DFEC 80140B20 2E004014 */  bnez       $v0, .L80140BDC
    /* DFF0 80140B24 00000000 */   nop
    /* DFF4 80140B28 801F093C */  lui        $t1, (0x1F801120 >> 16)
    /* DFF8 80140B2C 20112935 */  ori        $t1, $t1, (0x1F801120 & 0xFFFF)
    /* DFFC 80140B30 801F063C */  lui        $a2, (0x1F801128 >> 16)
    /* E000 80140B34 2811C634 */  ori        $a2, $a2, (0x1F801128 & 0xFFFF)
    /* E004 80140B38 01000A3C */  lui        $t2, (0x10000 >> 16)
    /* E008 80140B3C 801F083C */  lui        $t0, (0x1F801124 >> 16)
    /* E00C 80140B40 24110835 */  ori        $t0, $t0, (0x1F801124 & 0xFFFF)
    /* E010 80140B44 21386000 */  addu       $a3, $v1, $zero
    /* E014 80140B48 1D80043C */  lui        $a0, %hi(D_801CEA20)
    /* E018 80140B4C 20EA848C */  lw         $a0, %lo(D_801CEA20)($a0)
    /* E01C 80140B50 1D80053C */  lui        $a1, %hi(D_801CEA24)
    /* E020 80140B54 24EAA58C */  lw         $a1, %lo(D_801CEA24)($a1)
  .L80140B58:
    /* E024 80140B58 00002295 */  lhu        $v0, 0x0($t1)
    /* E028 80140B5C 00000000 */  nop
    /* E02C 80140B60 FFFF4330 */  andi       $v1, $v0, 0xFFFF
    /* E030 80140B64 2B106400 */  sltu       $v0, $v1, $a0
    /* E034 80140B68 09004010 */  beqz       $v0, .L80140B90
    /* E038 80140B6C 00000000 */   nop
    /* E03C 80140B70 0000C294 */  lhu        $v0, 0x0($a2)
    /* E040 80140B74 00000000 */  nop
    /* E044 80140B78 04004010 */  beqz       $v0, .L80140B8C
    /* E048 80140B7C 00000000 */   nop
    /* E04C 80140B80 0000C294 */  lhu        $v0, 0x0($a2)
    /* E050 80140B84 E4020508 */  j          .L80140B90
    /* E054 80140B88 21184300 */   addu      $v1, $v0, $v1
  .L80140B8C:
    /* E058 80140B8C 21186A00 */  addu       $v1, $v1, $t2
  .L80140B90:
    /* E05C 80140B90 00000295 */  lhu        $v0, 0x0($t0)
    /* E060 80140B94 00000000 */  nop
    /* E064 80140B98 00024230 */  andi       $v0, $v0, 0x200
    /* E068 80140B9C 06004010 */  beqz       $v0, .L80140BB8
    /* E06C 80140BA0 23106400 */   subu      $v0, $v1, $a0
    /* E070 80140BA4 2B104500 */  sltu       $v0, $v0, $a1
    /* E074 80140BA8 07004014 */  bnez       $v0, .L80140BC8
    /* E078 80140BAC FEFF0224 */   addiu     $v0, $zero, -0x2
    /* E07C 80140BB0 2A030508 */  j          .L80140CA8
    /* E080 80140BB4 00000000 */   nop
  .L80140BB8:
    /* E084 80140BB8 C2100200 */  srl        $v0, $v0, 3
    /* E088 80140BBC 2B104500 */  sltu       $v0, $v0, $a1
    /* E08C 80140BC0 39004010 */  beqz       $v0, .L80140CA8
    /* E090 80140BC4 FEFF0224 */   addiu     $v0, $zero, -0x2
  .L80140BC8:
    /* E094 80140BC8 0000E28C */  lw         $v0, 0x0($a3)
    /* E098 80140BCC 00000000 */  nop
    /* E09C 80140BD0 80004230 */  andi       $v0, $v0, 0x80
    /* E0A0 80140BD4 E0FF4010 */  beqz       $v0, .L80140B58
    /* E0A4 80140BD8 00000000 */   nop
  .L80140BDC:
    /* E0A8 80140BDC E8000392 */  lbu        $v1, 0xE8($s0)
    /* E0AC 80140BE0 08000224 */  addiu      $v0, $zero, 0x8
    /* E0B0 80140BE4 0C006210 */  beq        $v1, $v0, .L80140C18
    /* E0B4 80140BE8 02000224 */   addiu     $v0, $zero, 0x2
    /* E0B8 80140BEC 1C80033C */  lui        $v1, %hi(D_801BFEA0)
    /* E0BC 80140BF0 A0FE638C */  lw         $v1, %lo(D_801BFEA0)($v1)
    /* E0C0 80140BF4 00000000 */  nop
    /* E0C4 80140BF8 07006214 */  bne        $v1, $v0, .L80140C18
    /* E0C8 80140BFC 00000000 */   nop
    /* E0CC 80140C00 B20A050C */  jal        setRC2wait
    /* E0D0 80140C04 3C000424 */   addiu     $a0, $zero, 0x3C
  .L80140C08:
    /* E0D4 80140C08 BA0A050C */  jal        chkRC2wait
    /* E0D8 80140C0C 00000000 */   nop
    /* E0DC 80140C10 FDFF4010 */  beqz       $v0, .L80140C08
    /* E0E0 80140C14 00000000 */   nop
  .L80140C18:
    /* E0E4 80140C18 1C80023C */  lui        $v0, %hi(D_801BFEC0)
    /* E0E8 80140C1C C0FE428C */  lw         $v0, %lo(D_801BFEC0)($v0)
    /* E0EC 80140C20 00000000 */  nop
    /* E0F0 80140C24 000053A0 */  sb         $s3, 0x0($v0)
    /* E0F4 80140C28 1C80033C */  lui        $v1, %hi(D_801BFEA0)
    /* E0F8 80140C2C A0FE638C */  lw         $v1, %lo(D_801BFEA0)($v1)
    /* E0FC 80140C30 03000224 */  addiu      $v0, $zero, 0x3
    /* E100 80140C34 0C006214 */  bne        $v1, $v0, .L80140C68
    /* E104 80140C38 80000224 */   addiu     $v0, $zero, 0x80
    /* E108 80140C3C 0A004216 */  bne        $s2, $v0, .L80140C68
    /* E10C 80140C40 7FFF0224 */   addiu     $v0, $zero, -0x81
    /* E110 80140C44 1C80033C */  lui        $v1, %hi(D_801BFEBC)
    /* E114 80140C48 BCFE638C */  lw         $v1, %lo(D_801BFEBC)($v1)
    /* E118 80140C4C 1C80043C */  lui        $a0, %hi(D_801BFEC0)
    /* E11C 80140C50 C0FE848C */  lw         $a0, %lo(D_801BFEC0)($a0)
    /* E120 80140C54 000062AC */  sw         $v0, 0x0($v1)
    /* E124 80140C58 0A008294 */  lhu        $v0, 0xA($a0)
    /* E128 80140C5C 00000000 */  nop
    /* E12C 80140C60 10004234 */  ori        $v0, $v0, 0x10
    /* E130 80140C64 0A0082A4 */  sh         $v0, 0xA($a0)
  .L80140C68:
    /* E134 80140C68 45000292 */  lbu        $v0, 0x45($s0)
    /* E138 80140C6C 44000392 */  lbu        $v1, 0x44($s0)
    /* E13C 80140C70 01004224 */  addiu      $v0, $v0, 0x1
    /* E140 80140C74 450002A2 */  sb         $v0, 0x45($s0)
    /* E144 80140C78 FF000224 */  addiu      $v0, $zero, 0xFF
    /* E148 80140C7C 06006210 */  beq        $v1, $v0, .L80140C98
    /* E14C 80140C80 00000000 */   nop
    /* E150 80140C84 44000392 */  lbu        $v1, 0x44($s0)
    /* E154 80140C88 3C00028E */  lw         $v0, 0x3C($s0)
    /* E158 80140C8C 00000000 */  nop
    /* E15C 80140C90 21104300 */  addu       $v0, $v0, $v1
    /* E160 80140C94 000052A0 */  sb         $s2, 0x0($v0)
  .L80140C98:
    /* E164 80140C98 44000392 */  lbu        $v1, 0x44($s0)
    /* E168 80140C9C 21104002 */  addu       $v0, $s2, $zero
    /* E16C 80140CA0 01006324 */  addiu      $v1, $v1, 0x1
    /* E170 80140CA4 440003A2 */  sb         $v1, 0x44($s0)
  .L80140CA8:
    /* E174 80140CA8 2000BF8F */  lw         $ra, 0x20($sp)
    /* E178 80140CAC 1C00B38F */  lw         $s3, 0x1C($sp)
    /* E17C 80140CB0 1800B28F */  lw         $s2, 0x18($sp)
    /* E180 80140CB4 1400B18F */  lw         $s1, 0x14($sp)
    /* E184 80140CB8 1000B08F */  lw         $s0, 0x10($sp)
    /* E188 80140CBC 0800E003 */  jr         $ra
    /* E18C 80140CC0 2800BD27 */   addiu     $sp, $sp, 0x28
endlabel _padSioRW2
