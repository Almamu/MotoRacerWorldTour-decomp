nonmatching func_8006F88C, 0xDC

glabel func_8006F88C
    /* 5E09C 8006F88C E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 5E0A0 8006F890 3D388283 */  lb         $v0, %gp_rel(D_800C7F2D)($gp)
    /* 5E0A4 8006F894 40000324 */  addiu      $v1, $zero, 0x40
    /* 5E0A8 8006F898 1000B0AF */  sw         $s0, 0x10($sp)
    /* 5E0AC 8006F89C 21808000 */  addu       $s0, $a0, $zero
    /* 5E0B0 8006F8A0 1400B1AF */  sw         $s1, 0x14($sp)
    /* 5E0B4 8006F8A4 2188A000 */  addu       $s1, $a1, $zero
    /* 5E0B8 8006F8A8 1800B2AF */  sw         $s2, 0x18($sp)
    /* 5E0BC 8006F8AC 2190C000 */  addu       $s2, $a2, $zero
    /* 5E0C0 8006F8B0 06004010 */  beqz       $v0, .L8006F8CC
    /* 5E0C4 8006F8B4 1C00BFAF */   sw        $ra, 0x1C($sp)
    /* 5E0C8 8006F8B8 80101000 */  sll        $v0, $s0, 2
    /* 5E0CC 8006F8BC 0D80033C */  lui        $v1, %hi(D_800C838C)
    /* 5E0D0 8006F8C0 8C836324 */  addiu      $v1, $v1, %lo(D_800C838C)
    /* 5E0D4 8006F8C4 21104300 */  addu       $v0, $v0, $v1
    /* 5E0D8 8006F8C8 0000438C */  lw         $v1, 0x0($v0)
  .L8006F8CC:
    /* 5E0DC 8006F8CC 0D80023C */  lui        $v0, %hi(D_800D2EC4)
    /* 5E0E0 8006F8D0 C42E43A4 */  sh         $v1, %lo(D_800D2EC4)($v0)
    /* 5E0E4 8006F8D4 85012382 */  lb         $v1, 0x185($s1)
    /* 5E0E8 8006F8D8 00000000 */  nop
    /* 5E0EC 8006F8DC 03006010 */  beqz       $v1, .L8006F8EC
    /* 5E0F0 8006F8E0 21200002 */   addu      $a0, $s0, $zero
    /* 5E0F4 8006F8E4 16BE010C */  jal        func_8006F858
    /* 5E0F8 8006F8E8 21282002 */   addu      $a1, $s1, $zero
  .L8006F8EC:
    /* 5E0FC 8006F8EC 0900023C */  lui        $v0, (0x95FFF >> 16)
    /* 5E100 8006F8F0 FF5F4234 */  ori        $v0, $v0, (0x95FFF & 0xFFFF)
    /* 5E104 8006F8F4 2A105200 */  slt        $v0, $v0, $s2
    /* 5E108 8006F8F8 0F004014 */  bnez       $v0, .L8006F938
    /* 5E10C 8006F8FC 40211000 */   sll       $a0, $s0, 5
    /* 5E110 8006F900 983C8283 */  lb         $v0, %gp_rel(D_800C8388)($gp)
    /* 5E114 8006F904 00000000 */  nop
    /* 5E118 8006F908 0C004014 */  bnez       $v0, .L8006F93C
    /* 5E11C 8006F90C 23209000 */   subu      $a0, $a0, $s0
    /* 5E120 8006F910 40211000 */  sll        $a0, $s0, 5
    /* 5E124 8006F914 23209000 */  subu       $a0, $a0, $s0
    /* 5E128 8006F918 80200400 */  sll        $a0, $a0, 2
    /* 5E12C 8006F91C 0D80023C */  lui        $v0, %hi(D_800CB5E0)
    /* 5E130 8006F920 E0B54224 */  addiu      $v0, $v0, %lo(D_800CB5E0)
    /* 5E134 8006F924 21208200 */  addu       $a0, $a0, $v0
    /* 5E138 8006F928 A7BC010C */  jal        func_8006F29C
    /* 5E13C 8006F92C 21282002 */   addu      $a1, $s1, $zero
    /* 5E140 8006F930 54BE0108 */  j          .L8006F950
    /* 5E144 8006F934 00000000 */   nop
  .L8006F938:
    /* 5E148 8006F938 23209000 */  subu       $a0, $a0, $s0
  .L8006F93C:
    /* 5E14C 8006F93C 80200400 */  sll        $a0, $a0, 2
    /* 5E150 8006F940 0D80023C */  lui        $v0, %hi(D_800CB5E0)
    /* 5E154 8006F944 E0B54224 */  addiu      $v0, $v0, %lo(D_800CB5E0)
    /* 5E158 8006F948 87BC010C */  jal        func_8006F21C
    /* 5E15C 8006F94C 21208200 */   addu      $a0, $a0, $v0
  .L8006F950:
    /* 5E160 8006F950 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* 5E164 8006F954 1800B28F */  lw         $s2, 0x18($sp)
    /* 5E168 8006F958 1400B18F */  lw         $s1, 0x14($sp)
    /* 5E16C 8006F95C 1000B08F */  lw         $s0, 0x10($sp)
    /* 5E170 8006F960 0800E003 */  jr         $ra
    /* 5E174 8006F964 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_8006F88C
