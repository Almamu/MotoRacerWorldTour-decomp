nonmatching func_8006C8EC, 0x164

glabel func_8006C8EC
    /* 5B0FC 8006C8EC D8FEBD27 */  addiu      $sp, $sp, -0x128
    /* 5B100 8006C8F0 1C01B3AF */  sw         $s3, 0x11C($sp)
    /* 5B104 8006C8F4 21988000 */  addu       $s3, $a0, $zero
    /* 5B108 8006C8F8 2001B4AF */  sw         $s4, 0x120($sp)
    /* 5B10C 8006C8FC 21A0A000 */  addu       $s4, $a1, $zero
    /* 5B110 8006C900 1801B2AF */  sw         $s2, 0x118($sp)
    /* 5B114 8006C904 2190C000 */  addu       $s2, $a2, $zero
    /* 5B118 8006C908 2401BFAF */  sw         $ra, 0x124($sp)
    /* 5B11C 8006C90C 1401B1AF */  sw         $s1, 0x114($sp)
    /* 5B120 8006C910 17B2010C */  jal        func_8006C85C
    /* 5B124 8006C914 1001B0AF */   sw        $s0, 0x110($sp)
    /* 5B128 8006C918 21804000 */  addu       $s0, $v0, $zero
    /* 5B12C 8006C91C 15000012 */  beqz       $s0, .L8006C974
    /* 5B130 8006C920 1000A427 */   addiu     $a0, $sp, 0x10
    /* 5B134 8006C924 0000068E */  lw         $a2, 0x0($s0)
    /* 5B138 8006C928 0C80053C */  lui        $a1, %hi(D_800C7F48)
    /* 5B13C 8006C92C 96D9020C */  jal        func_800B6658
    /* 5B140 8006C930 487FA524 */   addiu     $a1, $a1, %lo(D_800C7F48)
    /* 5B144 8006C934 0D80033C */  lui        $v1, %hi(D_800D11D0)
    /* 5B148 8006C938 D0117124 */  addiu      $s1, $v1, %lo(D_800D11D0)
    /* 5B14C 8006C93C 21202002 */  addu       $a0, $s1, $zero
    /* 5B150 8006C940 C951000C */  jal        func_80014724
    /* 5B154 8006C944 1000A527 */   addiu     $a1, $sp, 0x10
    /* 5B158 8006C948 0B004010 */  beqz       $v0, .L8006C978
    /* 5B15C 8006C94C 21200000 */   addu      $a0, $zero, $zero
    /* 5B160 8006C950 07000592 */  lbu        $a1, 0x7($s0)
    /* 5B164 8006C954 0800068E */  lw         $a2, 0x8($s0)
    /* 5B168 8006C958 784F000C */  jal        func_80013DE0
    /* 5B16C 8006C95C 21202002 */   addu      $a0, $s1, $zero
    /* 5B170 8006C960 21202002 */  addu       $a0, $s1, $zero
    /* 5B174 8006C964 0C80063C */  lui        $a2, %hi(D_800C79F8)
    /* 5B178 8006C968 F879C624 */  addiu      $a2, $a2, %lo(D_800C79F8)
    /* 5B17C 8006C96C 784F000C */  jal        func_80013DE0
    /* 5B180 8006C970 5E000524 */   addiu     $a1, $zero, 0x5E
  .L8006C974:
    /* 5B184 8006C974 21200000 */  addu       $a0, $zero, $zero
  .L8006C978:
    /* 5B188 8006C978 BEBE010C */  jal        func_8006FAF8
    /* 5B18C 8006C97C 21280000 */   addu      $a1, $zero, $zero
    /* 5B190 8006C980 21380000 */  addu       $a3, $zero, $zero
    /* 5B194 8006C984 0C80093C */  lui        $t1, %hi(D_800C7F60)
    /* 5B198 8006C988 607F2925 */  addiu      $t1, $t1, %lo(D_800C7F60)
    /* 5B19C 8006C98C 0C80063C */  lui        $a2, %hi(D_800C7F5F)
    /* 5B1A0 8006C990 5F7FC624 */  addiu      $a2, $a2, %lo(D_800C7F5F)
    /* 5B1A4 8006C994 0C80083C */  lui        $t0, %hi(D_800C7F5C)
    /* 5B1A8 8006C998 5C7F0825 */  addiu      $t0, $t0, %lo(D_800C7F5C)
    /* 5B1AC 8006C99C 0C80053C */  lui        $a1, %hi(D_800C7F5D)
    /* 5B1B0 8006C9A0 5D7FA524 */  addiu      $a1, $a1, %lo(D_800C7F5D)
    /* 5B1B4 8006C9A4 0C80043C */  lui        $a0, %hi(D_800C7F5E)
    /* 5B1B8 8006C9A8 5E7F8424 */  addiu      $a0, $a0, %lo(D_800C7F5E)
    /* 5B1BC 8006C9AC 0D80033C */  lui        $v1, %hi(D_800D13D8)
    /* 5B1C0 8006C9B0 02000224 */  addiu      $v0, $zero, 0x2
    /* 5B1C4 8006C9B4 D81362AC */  sw         $v0, %lo(D_800D13D8)($v1)
    /* 5B1C8 8006C9B8 3E3880A3 */  sb         $zero, %gp_rel(D_800C7F2E)($gp)
  .L8006C9BC:
    /* 5B1CC 8006C9BC 00008280 */  lb         $v0, 0x0($a0)
    /* 5B1D0 8006C9C0 00000000 */  nop
    /* 5B1D4 8006C9C4 05004212 */  beq        $s2, $v0, .L8006C9DC
    /* 5B1D8 8006C9C8 00000000 */   nop
    /* 5B1DC 8006C9CC 0000A280 */  lb         $v0, 0x0($a1)
    /* 5B1E0 8006C9D0 00000000 */  nop
    /* 5B1E4 8006C9D4 09006216 */  bne        $s3, $v0, .L8006C9FC
    /* 5B1E8 8006C9D8 0500A524 */   addiu     $a1, $a1, 0x5
  .L8006C9DC:
    /* 5B1EC 8006C9DC 00000291 */  lbu        $v0, 0x0($t0)
    /* 5B1F0 8006C9E0 0000C480 */  lb         $a0, 0x0($a2)
    /* 5B1F4 8006C9E4 00002581 */  lb         $a1, 0x0($t1)
    /* 5B1F8 8006C9E8 3E3882A3 */  sb         $v0, %gp_rel(D_800C7F2E)($gp)
    /* 5B1FC 8006C9EC 6A47000C */  jal        func_80011DA8
    /* 5B200 8006C9F0 00000000 */   nop
    /* 5B204 8006C9F4 86B20108 */  j          .L8006CA18
    /* 5B208 8006C9F8 00000000 */   nop
  .L8006C9FC:
    /* 5B20C 8006C9FC 05002925 */  addiu      $t1, $t1, 0x5
    /* 5B210 8006CA00 0500C624 */  addiu      $a2, $a2, 0x5
    /* 5B214 8006CA04 05000825 */  addiu      $t0, $t0, 0x5
    /* 5B218 8006CA08 0100E724 */  addiu      $a3, $a3, 0x1
    /* 5B21C 8006CA0C 0A00E22C */  sltiu      $v0, $a3, 0xA
    /* 5B220 8006CA10 EAFF4014 */  bnez       $v0, .L8006C9BC
    /* 5B224 8006CA14 05008424 */   addiu     $a0, $a0, 0x5
  .L8006CA18:
    /* 5B228 8006CA18 2401BF8F */  lw         $ra, 0x124($sp)
    /* 5B22C 8006CA1C 5C7194AF */  sw         $s4, %gp_rel(D_800CB84C)($gp)
    /* 5B230 8006CA20 2001B48F */  lw         $s4, 0x120($sp)
    /* 5B234 8006CA24 E06E93AF */  sw         $s3, %gp_rel(D_800CB5D0)($gp)
    /* 5B238 8006CA28 1C01B38F */  lw         $s3, 0x11C($sp)
    /* 5B23C 8006CA2C F2FF4226 */  addiu      $v0, $s2, -0xE
    /* 5B240 8006CA30 E46E92AF */  sw         $s2, %gp_rel(D_800CB5D4)($gp)
    /* 5B244 8006CA34 1801B28F */  lw         $s2, 0x118($sp)
    /* 5B248 8006CA38 1401B18F */  lw         $s1, 0x114($sp)
    /* 5B24C 8006CA3C 1001B08F */  lw         $s0, 0x110($sp)
    /* 5B250 8006CA40 0200422C */  sltiu      $v0, $v0, 0x2
    /* 5B254 8006CA44 3C3882A3 */  sb         $v0, %gp_rel(D_800C7F2C)($gp)
    /* 5B258 8006CA48 0800E003 */  jr         $ra
    /* 5B25C 8006CA4C 2801BD27 */   addiu     $sp, $sp, 0x128
endlabel func_8006C8EC
