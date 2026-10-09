/* Handwritten function */
nonmatching func_8001F7E4, 0x4E4

glabel func_8001F7E4
    /* DFF4 8001F7E4 A8FFBD27 */  addiu      $sp, $sp, -0x58
    /* DFF8 8001F7E8 5000BEAF */  sw         $fp, 0x50($sp)
    /* DFFC 8001F7EC 21F08000 */  addu       $fp, $a0, $zero
    /* E000 8001F7F0 5400BFAF */  sw         $ra, 0x54($sp)
    /* E004 8001F7F4 4C00B7AF */  sw         $s7, 0x4C($sp)
    /* E008 8001F7F8 4800B6AF */  sw         $s6, 0x48($sp)
    /* E00C 8001F7FC 4400B5AF */  sw         $s5, 0x44($sp)
    /* E010 8001F800 4000B4AF */  sw         $s4, 0x40($sp)
    /* E014 8001F804 3C00B3AF */  sw         $s3, 0x3C($sp)
    /* E018 8001F808 3800B2AF */  sw         $s2, 0x38($sp)
    /* E01C 8001F80C 3400B1AF */  sw         $s1, 0x34($sp)
    /* E020 8001F810 B97F000C */  jal        func_8001FEE4
    /* E024 8001F814 3000B0AF */   sw        $s0, 0x30($sp)
    /* E028 8001F818 084BC28F */  lw         $v0, 0x4B08($fp)
    /* E02C 8001F81C 00000000 */  nop
    /* E030 8001F820 05004010 */  beqz       $v0, .L8001F838
    /* E034 8001F824 64001324 */   addiu     $s3, $zero, 0x64
    /* E038 8001F828 327F000C */  jal        func_8001FCC8
    /* E03C 8001F82C 2120C003 */   addu      $a0, $fp, $zero
    /* E040 8001F830 267F0008 */  j          .L8001FC98
    /* E044 8001F834 00000000 */   nop
  .L8001F838:
    /* E048 8001F838 0D80063C */  lui        $a2, %hi(D_800C8864)
    /* E04C 8001F83C 6488C68C */  lw         $a2, %lo(D_800C8864)($a2)
    /* E050 8001F840 8425D227 */  addiu      $s2, $fp, 0x2584
    /* E054 8001F844 6000C224 */  addiu      $v0, $a2, 0x60
    /* E058 8001F848 0000438C */  lw         $v1, 0x0($v0)
    /* E05C 8001F84C 0400448C */  lw         $a0, 0x4($v0)
    /* E060 8001F850 0000C348 */  ctc2       $v1, $0 /* handwritten instruction */
    /* E064 8001F854 0008C448 */  ctc2       $a0, $1 /* handwritten instruction */
    /* E068 8001F858 0800438C */  lw         $v1, 0x8($v0)
    /* E06C 8001F85C 0C00448C */  lw         $a0, 0xC($v0)
    /* E070 8001F860 0010C348 */  ctc2       $v1, $2 /* handwritten instruction */
    /* E074 8001F864 1000438C */  lw         $v1, 0x10($v0)
    /* E078 8001F868 0018C448 */  ctc2       $a0, $3 /* handwritten instruction */
    /* E07C 8001F86C 0020C348 */  ctc2       $v1, $4 /* handwritten instruction */
    /* E080 8001F870 3C01C28C */  lw         $v0, 0x13C($a2)
    /* E084 8001F874 00000000 */  nop
    /* E088 8001F878 1C00438C */  lw         $v1, 0x1C($v0)
    /* E08C 8001F87C 1400448C */  lw         $a0, 0x14($v0)
    /* E090 8001F880 001C0300 */  sll        $v1, $v1, 16
    /* E094 8001F884 C02A0400 */  sll        $a1, $a0, 11
    /* E098 8001F888 00130400 */  sll        $v0, $a0, 12
    /* E09C 8001F88C 21104500 */  addu       $v0, $v0, $a1
    /* E0A0 8001F890 1A006200 */  div        $zero, $v1, $v0
    /* E0A4 8001F894 12100000 */  mflo       $v0
    /* E0A8 8001F898 40230400 */  sll        $a0, $a0, 13
    /* E0AC 8001F89C 00000000 */  nop
    /* E0B0 8001F8A0 1A006400 */  div        $zero, $v1, $a0
    /* E0B4 8001F8A4 12180000 */  mflo       $v1
    /* E0B8 8001F8A8 00E8C248 */  ctc2       $v0, $29 /* handwritten instruction */
    /* E0BC 8001F8AC 00F0C348 */  ctc2       $v1, $30 /* handwritten instruction */
    /* E0C0 8001F8B0 0D80023C */  lui        $v0, %hi(D_800CBDC4)
    /* E0C4 8001F8B4 C4BD428C */  lw         $v0, %lo(D_800CBDC4)($v0)
    /* E0C8 8001F8B8 F800CF8C */  lw         $t7, 0xF8($a2)
    /* E0CC 8001F8BC 0D80193C */  lui        $t9, %hi(D_800CBDC0)
    /* E0D0 8001F8C0 C0BD398F */  lw         $t9, %lo(D_800CBDC0)($t9)
    /* E0D4 8001F8C4 0D80093C */  lui        $t1, %hi(D_800C8C70)
    /* E0D8 8001F8C8 708C298D */  lw         $t1, %lo(D_800C8C70)($t1)
    /* E0DC 8001F8CC 0400588C */  lw         $t8, 0x4($v0)
    /* E0E0 8001F8D0 1000AFAF */  sw         $t7, 0x10($sp)
    /* E0E4 8001F8D4 FC00D18C */  lw         $s1, 0xFC($a2)
    /* E0E8 8001F8D8 21A00000 */  addu       $s4, $zero, $zero
    /* E0EC 8001F8DC 1400B1AF */  sw         $s1, 0x14($sp)
    /* E0F0 8001F8E0 0001C68C */  lw         $a2, 0x100($a2)
    /* E0F4 8001F8E4 38FF3927 */  addiu      $t9, $t9, -0xC8
    /* E0F8 8001F8E8 1800A6AF */  sw         $a2, 0x18($sp)
    /* E0FC 8001F8EC 0028D448 */  ctc2       $s4, $5 /* handwritten instruction */
    /* E100 8001F8F0 21780000 */  addu       $t7, $zero, $zero
    /* E104 8001F8F4 0030CF48 */  ctc2       $t7, $6 /* handwritten instruction */
    /* E108 8001F8F8 21880000 */  addu       $s1, $zero, $zero
    /* E10C 8001F8FC 0038D148 */  ctc2       $s1, $7 /* handwritten instruction */
    /* E110 8001F900 00E0D448 */  ctc2       $s4, $28 /* handwritten instruction */
    /* E114 8001F904 CC25CE27 */  addiu      $t6, $fp, 0x25CC
    /* E118 8001F908 C425C827 */  addiu      $t0, $fp, 0x25C4
    /* E11C 8001F90C 2800A0AF */  sw         $zero, 0x28($sp)
    /* E120 8001F910 2400A0AF */  sw         $zero, 0x24($sp)
  .L8001F914:
    /* E124 8001F914 EAFF0285 */  lh         $v0, -0x16($t0)
    /* E128 8001F918 00000000 */  nop
    /* E12C 8001F91C D5004010 */  beqz       $v0, .L8001FC74
    /* E130 8001F920 21282001 */   addu      $a1, $t1, $zero
    /* E134 8001F924 28002C25 */  addiu      $t4, $t1, 0x28
    /* E138 8001F928 21588001 */  addu       $t3, $t4, $zero
    /* E13C 8001F92C C4FF028D */  lw         $v0, -0x3C($t0)
    /* E140 8001F930 C8FF038D */  lw         $v1, -0x38($t0)
    /* E144 8001F934 CCFF048D */  lw         $a0, -0x34($t0)
    /* E148 8001F938 1000AF8F */  lw         $t7, 0x10($sp)
    /* E14C 8001F93C 1400B18F */  lw         $s1, 0x14($sp)
    /* E150 8001F940 1800B48F */  lw         $s4, 0x18($sp)
    /* E154 8001F944 23104F00 */  subu       $v0, $v0, $t7
    /* E158 8001F948 23187100 */  subu       $v1, $v1, $s1
    /* E15C 8001F94C 23209400 */  subu       $a0, $a0, $s4
    /* E160 8001F950 43110200 */  sra        $v0, $v0, 5
    /* E164 8001F954 43190300 */  sra        $v1, $v1, 5
    /* E168 8001F958 43210400 */  sra        $a0, $a0, 5
    /* E16C 8001F95C FFFF4230 */  andi       $v0, $v0, 0xFFFF
    /* E170 8001F960 001C0300 */  sll        $v1, $v1, 16
    /* E174 8001F964 25104300 */  or         $v0, $v0, $v1
    /* E178 8001F968 00008248 */  mtc2       $v0, $0 /* handwritten instruction */
    /* E17C 8001F96C 00088448 */  mtc2       $a0, $1 /* handwritten instruction */
    /* E180 8001F970 18000F95 */  lhu        $t7, 0x18($t0)
    /* E184 8001F974 00000000 */  nop
    /* E188 8001F978 00D8CF48 */  ctc2       $t7, $27 /* handwritten instruction */
    /* E18C 8001F97C 00000000 */  nop
    /* E190 8001F980 00000000 */  nop
    /* E194 8001F984 0100184A */  rtps
    /* E198 8001F988 0000468E */  lw         $a2, 0x0($s2)
    /* E19C 8001F98C E8FF0485 */  lh         $a0, -0x18($t0)
    /* E1A0 8001F990 2400B18F */  lw         $s1, 0x24($sp)
    /* E1A4 8001F994 0500CD80 */  lb         $t5, 0x5($a2)
    /* E1A8 8001F998 0E002412 */  beq        $s1, $a0, .L8001F9D4
    /* E1AC 8001F99C 80100400 */   sll       $v0, $a0, 2
    /* E1B0 8001F9A0 0D80143C */  lui        $s4, %hi(D_800CC030)
    /* E1B4 8001F9A4 30C09426 */  addiu      $s4, $s4, %lo(D_800CC030)
    /* E1B8 8001F9A8 21105400 */  addu       $v0, $v0, $s4
    /* E1BC 8001F9AC 0000438C */  lw         $v1, 0x0($v0)
    /* E1C0 8001F9B0 2400A4AF */  sw         $a0, 0x24($sp)
    /* E1C4 8001F9B4 0400C280 */  lb         $v0, 0x4($a2)
    /* E1C8 8001F9B8 00000000 */  nop
    /* E1CC 8001F9BC 40150200 */  sll        $v0, $v0, 21
    /* E1D0 8001F9C0 0000778C */  lw         $s7, 0x0($v1)
    /* E1D4 8001F9C4 0400708C */  lw         $s0, 0x4($v1)
    /* E1D8 8001F9C8 08007694 */  lhu        $s6, 0x8($v1)
    /* E1DC 8001F9CC 0A007594 */  lhu        $s5, 0xA($v1)
    /* E1E0 8001F9D0 25800202 */  or         $s0, $s0, $v0
  .L8001F9D4:
    /* E1E4 8001F9D4 0009023C */  lui        $v0, (0x9000000 >> 16)
    /* E1E8 8001F9D8 000022AD */  sw         $v0, 0x0($t1)
    /* E1EC 8001F9DC 0C0037AD */  sw         $s7, 0xC($t1)
    /* E1F0 8001F9E0 140030AD */  sw         $s0, 0x14($t1)
    /* E1F4 8001F9E4 1C0036AD */  sw         $s6, 0x1C($t1)
    /* E1F8 8001F9E8 0800A011 */  beqz       $t5, .L8001FA0C
    /* E1FC 8001F9EC 240035AD */   sw        $s5, 0x24($t1)
    /* E200 8001F9F0 20000F3C */  lui        $t7, (0x200000 >> 16)
    /* E204 8001F9F4 280022AD */  sw         $v0, 0x28($t1)
    /* E208 8001F9F8 21100F02 */  addu       $v0, $s0, $t7
    /* E20C 8001F9FC 0C0097AD */  sw         $s7, 0xC($t4)
    /* E210 8001FA00 140082AD */  sw         $v0, 0x14($t4)
    /* E214 8001FA04 1C0096AD */  sw         $s6, 0x1C($t4)
    /* E218 8001FA08 240095AD */  sw         $s5, 0x24($t4)
  .L8001FA0C:
    /* E21C 8001FA0C 00F84248 */  cfc2       $v0, $31 /* handwritten instruction */
    /* E220 8001FA10 00000000 */  nop
    /* E224 8001FA14 97004014 */  bnez       $v0, .L8001FC74
    /* E228 8001FA18 00000000 */   nop
    /* E22C 8001FA1C 00400A48 */  mfc2       $t2, $8 /* handwritten instruction */
    /* E230 8001FA20 3800C38C */  lw         $v1, 0x38($a2)
    /* E234 8001FA24 3400C6C8 */  lwc2       $6, 0x34($a2)
    /* E238 8001FA28 03230300 */  sra        $a0, $v1, 12
    /* E23C 8001FA2C F00F8430 */  andi       $a0, $a0, 0xFF0
    /* E240 8001FA30 03110300 */  sra        $v0, $v1, 4
    /* E244 8001FA34 00190300 */  sll        $v1, $v1, 4
    /* E248 8001FA38 F00F6330 */  andi       $v1, $v1, 0xFF0
    /* E24C 8001FA3C F00F4230 */  andi       $v0, $v0, 0xFF0
    /* E250 8001FA40 00A8C348 */  ctc2       $v1, $21 /* handwritten instruction */
    /* E254 8001FA44 00B0C248 */  ctc2       $v0, $22 /* handwritten instruction */
    /* E258 8001FA48 00B8C448 */  ctc2       $a0, $23 /* handwritten instruction */
    /* E25C 8001FA4C 0C001195 */  lhu        $s1, 0xC($t0)
    /* E260 8001FA50 00000000 */  nop
    /* E264 8001FA54 00409148 */  mtc2       $s1, $8 /* handwritten instruction */
    /* E268 8001FA58 00000000 */  nop
    /* E26C 8001FA5C 00000000 */  nop
    /* E270 8001FA60 1000784A */  dpcs
    /* E274 8001FA64 0400B6E8 */  swc2       $22, 0x4($a1)
    /* E278 8001FA68 FBFF1427 */  addiu      $s4, $t8, -0x5
    /* E27C 8001FA6C 0200A011 */  beqz       $t5, .L8001FA78
    /* E280 8001FA70 2000B4AF */   sw        $s4, 0x20($sp)
    /* E284 8001FA74 040076E9 */  swc2       $22, 0x4($t3)
  .L8001FA78:
    /* E288 8001FA78 0C000585 */  lh         $a1, 0xC($t0)
    /* E28C 8001FA7C 2800C384 */  lh         $v1, 0x28($a2)
    /* E290 8001FA80 00000000 */  nop
    /* E294 8001FA84 2A10A300 */  slt        $v0, $a1, $v1
    /* E298 8001FA88 1F004010 */  beqz       $v0, .L8001FB08
    /* E29C 8001FA8C 00000000 */   nop
    /* E2A0 8001FA90 ECFF0F8D */  lw         $t7, -0x14($t0)
    /* E2A4 8001FA94 F4FF118D */  lw         $s1, -0xC($t0)
    /* E2A8 8001FA98 1800E501 */  mult       $t7, $a1
    /* E2AC 8001FA9C 20000334 */  ori        $v1, $zero, 0x20
    /* E2B0 8001FAA0 22187100 */  sub        $v1, $v1, $s1 /* handwritten instruction */
    /* E2B4 8001FAA4 10380000 */  mfhi       $a3
    /* E2B8 8001FAA8 04386700 */  sllv       $a3, $a3, $v1
    /* E2BC 8001FAAC 12180000 */  mflo       $v1
    /* E2C0 8001FAB0 06182302 */  srlv       $v1, $v1, $s1
    /* E2C4 8001FAB4 2538E300 */  or         $a3, $a3, $v1
    /* E2C8 8001FAB8 1C00C284 */  lh         $v0, 0x1C($a2)
    /* E2CC 8001FABC 00000000 */  nop
    /* E2D0 8001FAC0 21104700 */  addu       $v0, $v0, $a3
    /* E2D4 8001FAC4 18004201 */  mult       $t2, $v0
    /* E2D8 8001FAC8 2200C384 */  lh         $v1, 0x22($a2)
    /* E2DC 8001FACC FCFF118D */  lw         $s1, -0x4($t0)
    /* E2E0 8001FAD0 0400148D */  lw         $s4, 0x4($t0)
    /* E2E4 8001FAD4 12100000 */  mflo       $v0
    /* E2E8 8001FAD8 C33B0200 */  sra        $a3, $v0, 15
    /* E2EC 8001FADC 00000000 */  nop
    /* E2F0 8001FAE0 18002502 */  mult       $s1, $a1
    /* E2F4 8001FAE4 20000F34 */  ori        $t7, $zero, 0x20
    /* E2F8 8001FAE8 2278F401 */  sub        $t7, $t7, $s4 /* handwritten instruction */
    /* E2FC 8001FAEC 10200000 */  mfhi       $a0
    /* E300 8001FAF0 0420E401 */  sllv       $a0, $a0, $t7
    /* E304 8001FAF4 12780000 */  mflo       $t7
    /* E308 8001FAF8 06788F02 */  srlv       $t7, $t7, $s4
    /* E30C 8001FAFC 25208F00 */  or         $a0, $a0, $t7
    /* E310 8001FB00 E07E0008 */  j          .L8001FB80
    /* E314 8001FB04 21186400 */   addu      $v1, $v1, $a0
  .L8001FB08:
    /* E318 8001FB08 2328A300 */  subu       $a1, $a1, $v1
    /* E31C 8001FB0C F0FF0F8D */  lw         $t7, -0x10($t0)
    /* E320 8001FB10 F8FF118D */  lw         $s1, -0x8($t0)
    /* E324 8001FB14 1800E501 */  mult       $t7, $a1
    /* E328 8001FB18 20000334 */  ori        $v1, $zero, 0x20
    /* E32C 8001FB1C 22187100 */  sub        $v1, $v1, $s1 /* handwritten instruction */
    /* E330 8001FB20 10380000 */  mfhi       $a3
    /* E334 8001FB24 04386700 */  sllv       $a3, $a3, $v1
    /* E338 8001FB28 12180000 */  mflo       $v1
    /* E33C 8001FB2C 06182302 */  srlv       $v1, $v1, $s1
    /* E340 8001FB30 2538E300 */  or         $a3, $a3, $v1
    /* E344 8001FB34 1E00C284 */  lh         $v0, 0x1E($a2)
    /* E348 8001FB38 00000000 */  nop
    /* E34C 8001FB3C 21104700 */  addu       $v0, $v0, $a3
    /* E350 8001FB40 18004201 */  mult       $t2, $v0
    /* E354 8001FB44 2400C384 */  lh         $v1, 0x24($a2)
    /* E358 8001FB48 00000F8D */  lw         $t7, 0x0($t0)
    /* E35C 8001FB4C 0000D18D */  lw         $s1, 0x0($t6)
    /* E360 8001FB50 12100000 */  mflo       $v0
    /* E364 8001FB54 C33B0200 */  sra        $a3, $v0, 15
    /* E368 8001FB58 00000000 */  nop
    /* E36C 8001FB5C 1800E501 */  mult       $t7, $a1
    /* E370 8001FB60 20000634 */  ori        $a2, $zero, 0x20
    /* E374 8001FB64 2230D100 */  sub        $a2, $a2, $s1 /* handwritten instruction */
    /* E378 8001FB68 10200000 */  mfhi       $a0
    /* E37C 8001FB6C 0420C400 */  sllv       $a0, $a0, $a2
    /* E380 8001FB70 12300000 */  mflo       $a2
    /* E384 8001FB74 06302602 */  srlv       $a2, $a2, $s1
    /* E388 8001FB78 25208600 */  or         $a0, $a0, $a2
    /* E38C 8001FB7C 21186400 */  addu       $v1, $v1, $a0
  .L8001FB80:
    /* E390 8001FB80 18004301 */  mult       $t2, $v1
    /* E394 8001FB84 12180000 */  mflo       $v1
    /* E398 8001FB88 C3530300 */  sra        $t2, $v1, 15
    /* E39C 8001FB8C 43180700 */  sra        $v1, $a3, 1
    /* E3A0 8001FB90 00700748 */  mfc2       $a3, $14 /* handwritten instruction */
    /* E3A4 8001FB94 00980648 */  mfc2       $a2, $19 /* handwritten instruction */
    /* E3A8 8001FB98 032C0700 */  sra        $a1, $a3, 16
    /* E3AC 8001FB9C 00888648 */  mtc2       $a2, $17 /* handwritten instruction */
    /* E3B0 8001FBA0 00908648 */  mtc2       $a2, $18 /* handwritten instruction */
    /* E3B4 8001FBA4 00140700 */  sll        $v0, $a3, 16
    /* E3B8 8001FBA8 033C0200 */  sra        $a3, $v0, 16
    /* E3BC 8001FBAC 2D00584B */  avsz3
    /* E3C0 8001FBB0 2320E300 */  subu       $a0, $a3, $v1
    /* E3C4 8001FBB4 FFFF8430 */  andi       $a0, $a0, 0xFFFF
    /* E3C8 8001FBB8 2310AA00 */  subu       $v0, $a1, $t2
    /* E3CC 8001FBBC 00140200 */  sll        $v0, $v0, 16
    /* E3D0 8001FBC0 25308200 */  or         $a2, $a0, $v0
    /* E3D4 8001FBC4 2118E300 */  addu       $v1, $a3, $v1
    /* E3D8 8001FBC8 FFFF6330 */  andi       $v1, $v1, 0xFFFF
    /* E3DC 8001FBCC 25106200 */  or         $v0, $v1, $v0
    /* E3E0 8001FBD0 002C0500 */  sll        $a1, $a1, 16
    /* E3E4 8001FBD4 25186500 */  or         $v1, $v1, $a1
    /* E3E8 8001FBD8 25208500 */  or         $a0, $a0, $a1
    /* E3EC 8001FBDC 080026AD */  sw         $a2, 0x8($t1)
    /* E3F0 8001FBE0 100022AD */  sw         $v0, 0x10($t1)
    /* E3F4 8001FBE4 200023AD */  sw         $v1, 0x20($t1)
    /* E3F8 8001FBE8 0500A011 */  beqz       $t5, .L8001FC00
    /* E3FC 8001FBEC 180024AD */   sw        $a0, 0x18($t1)
    /* E400 8001FBF0 080066AD */  sw         $a2, 0x8($t3)
    /* E404 8001FBF4 100062AD */  sw         $v0, 0x10($t3)
    /* E408 8001FBF8 200063AD */  sw         $v1, 0x20($t3)
    /* E40C 8001FBFC 180064AD */  sw         $a0, 0x18($t3)
  .L8001FC00:
    /* E410 8001FC00 00380648 */  mfc2       $a2, $7 /* handwritten instruction */
    /* E414 8001FC04 2000AF8F */  lw         $t7, 0x20($sp)
    /* E418 8001FC08 00000000 */  nop
    /* E41C 8001FC0C 2A28CF00 */  slt        $a1, $a2, $t7
    /* E420 8001FC10 0200A014 */  bnez       $a1, .L8001FC1C
    /* E424 8001FC14 2110C000 */   addu      $v0, $a2, $zero
    /* E428 8001FC18 FAFF0227 */  addiu      $v0, $t8, -0x6
  .L8001FC1C:
    /* E42C 8001FC1C 80100200 */  sll        $v0, $v0, 2
    /* E430 8001FC20 21102203 */  addu       $v0, $t9, $v0
    /* E434 8001FC24 02004488 */  lwl        $a0, 0x2($v0)
    /* E438 8001FC28 001A0900 */  sll        $v1, $t1, 8
    /* E43C 8001FC2C 020024A9 */  swl        $a0, 0x2($t1)
    /* E440 8001FC30 020043A8 */  swl        $v1, 0x2($v0)
    /* E444 8001FC34 0B00A011 */  beqz       $t5, .L8001FC64
    /* E448 8001FC38 21486001 */   addu      $t1, $t3, $zero
    /* E44C 8001FC3C 0200A014 */  bnez       $a1, .L8001FC48
    /* E450 8001FC40 2110C000 */   addu      $v0, $a2, $zero
    /* E454 8001FC44 FAFF0227 */  addiu      $v0, $t8, -0x6
  .L8001FC48:
    /* E458 8001FC48 80100200 */  sll        $v0, $v0, 2
    /* E45C 8001FC4C 21102203 */  addu       $v0, $t9, $v0
    /* E460 8001FC50 02004488 */  lwl        $a0, 0x2($v0)
    /* E464 8001FC54 001A0900 */  sll        $v1, $t1, 8
    /* E468 8001FC58 020024A9 */  swl        $a0, 0x2($t1)
    /* E46C 8001FC5C 020043A8 */  swl        $v1, 0x2($v0)
    /* E470 8001FC60 28008925 */  addiu      $t1, $t4, 0x28
  .L8001FC64:
    /* E474 8001FC64 2800B18F */  lw         $s1, 0x28($sp)
    /* E478 8001FC68 00000000 */  nop
    /* E47C 8001FC6C 01003126 */  addiu      $s1, $s1, 0x1
    /* E480 8001FC70 2800B1AF */  sw         $s1, 0x28($sp)
  .L8001FC74:
    /* E484 8001FC74 60000825 */  addiu      $t0, $t0, 0x60
    /* E488 8001FC78 6000CE25 */  addiu      $t6, $t6, 0x60
    /* E48C 8001FC7C FFFF7326 */  addiu      $s3, $s3, -0x1
    /* E490 8001FC80 24FF6016 */  bnez       $s3, .L8001F914
    /* E494 8001FC84 60005226 */   addiu     $s2, $s2, 0x60
    /* E498 8001FC88 2800B48F */  lw         $s4, 0x28($sp)
    /* E49C 8001FC8C 0D80013C */  lui        $at, %hi(D_800C8C70)
    /* E4A0 8001FC90 708C29AC */  sw         $t1, %lo(D_800C8C70)($at)
    /* E4A4 8001FC94 0E4BD4A7 */  sh         $s4, 0x4B0E($fp)
  .L8001FC98:
    /* E4A8 8001FC98 5400BF8F */  lw         $ra, 0x54($sp)
    /* E4AC 8001FC9C 5000BE8F */  lw         $fp, 0x50($sp)
    /* E4B0 8001FCA0 4C00B78F */  lw         $s7, 0x4C($sp)
    /* E4B4 8001FCA4 4800B68F */  lw         $s6, 0x48($sp)
    /* E4B8 8001FCA8 4400B58F */  lw         $s5, 0x44($sp)
    /* E4BC 8001FCAC 4000B48F */  lw         $s4, 0x40($sp)
    /* E4C0 8001FCB0 3C00B38F */  lw         $s3, 0x3C($sp)
    /* E4C4 8001FCB4 3800B28F */  lw         $s2, 0x38($sp)
    /* E4C8 8001FCB8 3400B18F */  lw         $s1, 0x34($sp)
    /* E4CC 8001FCBC 3000B08F */  lw         $s0, 0x30($sp)
    /* E4D0 8001FCC0 0800E003 */  jr         $ra
    /* E4D4 8001FCC4 5800BD27 */   addiu     $sp, $sp, 0x58
endlabel func_8001F7E4
