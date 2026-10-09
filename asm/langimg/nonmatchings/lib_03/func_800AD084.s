nonmatching func_800AD084, 0x230

glabel func_800AD084
    /* 9B894 800AD084 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 9B898 800AD088 21408000 */  addu       $t0, $a0, $zero
    /* 9B89C 800AD08C 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* 9B8A0 800AD090 1800B2AF */  sw         $s2, 0x18($sp)
    /* 9B8A4 800AD094 1400B1AF */  sw         $s1, 0x14($sp)
    /* 9B8A8 800AD098 1000B0AF */  sw         $s0, 0x10($sp)
    /* 9B8AC 800AD09C 04000385 */  lh         $v1, 0x4($t0)
    /* 9B8B0 800AD0A0 04000495 */  lhu        $a0, 0x4($t0)
    /* 9B8B4 800AD0A4 0C006004 */  bltz       $v1, .L800AD0D8
    /* 9B8B8 800AD0A8 2148A000 */   addu      $t1, $a1, $zero
    /* 9B8BC 800AD0AC 0C80023C */  lui        $v0, %hi(D_800BF244)
    /* 9B8C0 800AD0B0 44F24284 */  lh         $v0, %lo(D_800BF244)($v0)
    /* 9B8C4 800AD0B4 00000000 */  nop
    /* 9B8C8 800AD0B8 FFFF4224 */  addiu      $v0, $v0, -0x1
    /* 9B8CC 800AD0BC 2A104300 */  slt        $v0, $v0, $v1
    /* 9B8D0 800AD0C0 0C80033C */  lui        $v1, %hi(D_800BF244)
    /* 9B8D4 800AD0C4 44F26394 */  lhu        $v1, %lo(D_800BF244)($v1)
    /* 9B8D8 800AD0C8 04004014 */  bnez       $v0, .L800AD0DC
    /* 9B8DC 800AD0CC FFFF6224 */   addiu     $v0, $v1, -0x1
    /* 9B8E0 800AD0D0 37B40208 */  j          .L800AD0DC
    /* 9B8E4 800AD0D4 21108000 */   addu      $v0, $a0, $zero
  .L800AD0D8:
    /* 9B8E8 800AD0D8 21100000 */  addu       $v0, $zero, $zero
  .L800AD0DC:
    /* 9B8EC 800AD0DC 06000385 */  lh         $v1, 0x6($t0)
    /* 9B8F0 800AD0E0 06000495 */  lhu        $a0, 0x6($t0)
    /* 9B8F4 800AD0E4 0C006004 */  bltz       $v1, .L800AD118
    /* 9B8F8 800AD0E8 040002A5 */   sh        $v0, 0x4($t0)
    /* 9B8FC 800AD0EC 0C80023C */  lui        $v0, %hi(D_800BF246)
    /* 9B900 800AD0F0 46F24284 */  lh         $v0, %lo(D_800BF246)($v0)
    /* 9B904 800AD0F4 00000000 */  nop
    /* 9B908 800AD0F8 FFFF4224 */  addiu      $v0, $v0, -0x1
    /* 9B90C 800AD0FC 2A104300 */  slt        $v0, $v0, $v1
    /* 9B910 800AD100 0C80033C */  lui        $v1, %hi(D_800BF246)
    /* 9B914 800AD104 46F26394 */  lhu        $v1, %lo(D_800BF246)($v1)
    /* 9B918 800AD108 04004014 */  bnez       $v0, .L800AD11C
    /* 9B91C 800AD10C FFFF6324 */   addiu     $v1, $v1, -0x1
    /* 9B920 800AD110 47B40208 */  j          .L800AD11C
    /* 9B924 800AD114 21188000 */   addu      $v1, $a0, $zero
  .L800AD118:
    /* 9B928 800AD118 21180000 */  addu       $v1, $zero, $zero
  .L800AD11C:
    /* 9B92C 800AD11C 00000295 */  lhu        $v0, 0x0($t0)
    /* 9B930 800AD120 00000000 */  nop
    /* 9B934 800AD124 3F004230 */  andi       $v0, $v0, 0x3F
    /* 9B938 800AD128 06004014 */  bnez       $v0, .L800AD144
    /* 9B93C 800AD12C 060003A5 */   sh        $v1, 0x6($t0)
    /* 9B940 800AD130 04000295 */  lhu        $v0, 0x4($t0)
    /* 9B944 800AD134 00000000 */  nop
    /* 9B948 800AD138 3F004230 */  andi       $v0, $v0, 0x3F
    /* 9B94C 800AD13C 37004010 */  beqz       $v0, .L800AD21C
    /* 9B950 800AD140 FF05023C */   lui       $v0, (0x5FFFFFF >> 16)
  .L800AD144:
    /* 9B954 800AD144 FF00063C */  lui        $a2, (0xFFFFFF >> 16)
    /* 9B958 800AD148 FFFFC634 */  ori        $a2, $a2, (0xFFFFFF & 0xFFFF)
    /* 9B95C 800AD14C FFE4043C */  lui        $a0, (0xE4FFFFFF >> 16)
    /* 9B960 800AD150 FFFF8434 */  ori        $a0, $a0, (0xE4FFFFFF & 0xFFFF)
    /* 9B964 800AD154 FF03073C */  lui        $a3, (0x3FFFFFF >> 16)
    /* 9B968 800AD158 0E80053C */  lui        $a1, %hi(D_800DC998)
    /* 9B96C 800AD15C 98C9A524 */  addiu      $a1, $a1, %lo(D_800DC998)
    /* 9B970 800AD160 0E80103C */  lui        $s0, %hi(D_800DC9C0)
    /* 9B974 800AD164 C0C91026 */  addiu      $s0, $s0, %lo(D_800DC9C0)
    /* 9B978 800AD168 24100602 */  and        $v0, $s0, $a2
    /* 9B97C 800AD16C 0008033C */  lui        $v1, (0x8000000 >> 16)
    /* 9B980 800AD170 25104300 */  or         $v0, $v0, $v1
    /* 9B984 800AD174 00E3113C */  lui        $s1, (0xE3000000 >> 16)
    /* 9B988 800AD178 00E5123C */  lui        $s2, (0xE5000000 >> 16)
    /* 9B98C 800AD17C 0000A2AC */  sw         $v0, 0x0($a1)
    /* 9B990 800AD180 00E6023C */  lui        $v0, (0xE6000000 >> 16)
    /* 9B994 800AD184 24302601 */  and        $a2, $t1, $a2
    /* 9B998 800AD188 0060033C */  lui        $v1, (0x60000000 >> 16)
    /* 9B99C 800AD18C 2530C300 */  or         $a2, $a2, $v1
    /* 9B9A0 800AD190 1000A2AC */  sw         $v0, 0x10($a1)
    /* 9B9A4 800AD194 0C80023C */  lui        $v0, %hi(D_800BF348)
    /* 9B9A8 800AD198 48F3428C */  lw         $v0, %lo(D_800BF348)($v0)
    /* 9B9AC 800AD19C 00E1033C */  lui        $v1, (0xE1000000 >> 16)
    /* 9B9B0 800AD1A0 0400B1AC */  sw         $s1, 0x4($a1)
    /* 9B9B4 800AD1A4 0800A4AC */  sw         $a0, 0x8($a1)
    /* 9B9B8 800AD1A8 0C00B2AC */  sw         $s2, 0xC($a1)
    /* 9B9BC 800AD1AC 0000448C */  lw         $a0, 0x0($v0)
    /* 9B9C0 800AD1B0 C2170900 */  srl        $v0, $t1, 31
    /* 9B9C4 800AD1B4 80120200 */  sll        $v0, $v0, 10
    /* 9B9C8 800AD1B8 25104300 */  or         $v0, $v0, $v1
    /* 9B9CC 800AD1BC 1800A6AC */  sw         $a2, 0x18($a1)
    /* 9B9D0 800AD1C0 FF078430 */  andi       $a0, $a0, 0x7FF
    /* 9B9D4 800AD1C4 25208200 */  or         $a0, $a0, $v0
    /* 9B9D8 800AD1C8 1400A4AC */  sw         $a0, 0x14($a1)
    /* 9B9DC 800AD1CC 0000028D */  lw         $v0, 0x0($t0)
    /* 9B9E0 800AD1D0 FFFFE734 */  ori        $a3, $a3, (0x3FFFFFF & 0xFFFF)
    /* 9B9E4 800AD1D4 1C00A2AC */  sw         $v0, 0x1C($a1)
    /* 9B9E8 800AD1D8 0400028D */  lw         $v0, 0x4($t0)
    /* 9B9EC 800AD1DC 03000424 */  addiu      $a0, $zero, 0x3
    /* 9B9F0 800AD1E0 000007AE */  sw         $a3, 0x0($s0)
    /* 9B9F4 800AD1E4 0CB6020C */  jal        func_800AD830
    /* 9B9F8 800AD1E8 2000A2AC */   sw        $v0, 0x20($a1)
    /* 9B9FC 800AD1EC 04000424 */  addiu      $a0, $zero, 0x4
    /* 9BA00 800AD1F0 25105100 */  or         $v0, $v0, $s1
    /* 9BA04 800AD1F4 0CB6020C */  jal        func_800AD830
    /* 9BA08 800AD1F8 040002AE */   sw        $v0, 0x4($s0)
    /* 9BA0C 800AD1FC 05000424 */  addiu      $a0, $zero, 0x5
    /* 9BA10 800AD200 00E4033C */  lui        $v1, (0xE4000000 >> 16)
    /* 9BA14 800AD204 25104300 */  or         $v0, $v0, $v1
    /* 9BA18 800AD208 0CB6020C */  jal        func_800AD830
    /* 9BA1C 800AD20C 080002AE */   sw        $v0, 0x8($s0)
    /* 9BA20 800AD210 25105200 */  or         $v0, $v0, $s2
    /* 9BA24 800AD214 A3B40208 */  j          .L800AD28C
    /* 9BA28 800AD218 0C0002AE */   sw        $v0, 0xC($s0)
  .L800AD21C:
    /* 9BA2C 800AD21C FFFF4234 */  ori        $v0, $v0, (0x5FFFFFF & 0xFFFF)
    /* 9BA30 800AD220 FF00033C */  lui        $v1, (0xFFFFFF >> 16)
    /* 9BA34 800AD224 FFFF6334 */  ori        $v1, $v1, (0xFFFFFF & 0xFFFF)
    /* 9BA38 800AD228 0E80063C */  lui        $a2, %hi(D_800DC998)
    /* 9BA3C 800AD22C 98C9C624 */  addiu      $a2, $a2, %lo(D_800DC998)
    /* 9BA40 800AD230 0000C2AC */  sw         $v0, 0x0($a2)
    /* 9BA44 800AD234 00E6023C */  lui        $v0, (0xE6000000 >> 16)
    /* 9BA48 800AD238 24182301 */  and        $v1, $t1, $v1
    /* 9BA4C 800AD23C 0002053C */  lui        $a1, (0x2000000 >> 16)
    /* 9BA50 800AD240 0400C2AC */  sw         $v0, 0x4($a2)
    /* 9BA54 800AD244 0C80023C */  lui        $v0, %hi(D_800BF348)
    /* 9BA58 800AD248 48F3428C */  lw         $v0, %lo(D_800BF348)($v0)
    /* 9BA5C 800AD24C 25186500 */  or         $v1, $v1, $a1
    /* 9BA60 800AD250 0000448C */  lw         $a0, 0x0($v0)
    /* 9BA64 800AD254 C2170900 */  srl        $v0, $t1, 31
    /* 9BA68 800AD258 80120200 */  sll        $v0, $v0, 10
    /* 9BA6C 800AD25C 0C00C3AC */  sw         $v1, 0xC($a2)
    /* 9BA70 800AD260 00E1033C */  lui        $v1, (0xE1000000 >> 16)
    /* 9BA74 800AD264 25104300 */  or         $v0, $v0, $v1
    /* 9BA78 800AD268 FF078430 */  andi       $a0, $a0, 0x7FF
    /* 9BA7C 800AD26C 25208200 */  or         $a0, $a0, $v0
    /* 9BA80 800AD270 0800C4AC */  sw         $a0, 0x8($a2)
    /* 9BA84 800AD274 0000028D */  lw         $v0, 0x0($t0)
    /* 9BA88 800AD278 00000000 */  nop
    /* 9BA8C 800AD27C 1000C2AC */  sw         $v0, 0x10($a2)
    /* 9BA90 800AD280 0400028D */  lw         $v0, 0x4($t0)
    /* 9BA94 800AD284 00000000 */  nop
    /* 9BA98 800AD288 1400C2AC */  sw         $v0, 0x14($a2)
  .L800AD28C:
    /* 9BA9C 800AD28C 0E80043C */  lui        $a0, %hi(D_800DC998)
    /* 9BAA0 800AD290 FAB5020C */  jal        func_800AD7E8
    /* 9BAA4 800AD294 98C98424 */   addiu     $a0, $a0, %lo(D_800DC998)
    /* 9BAA8 800AD298 21100000 */  addu       $v0, $zero, $zero
    /* 9BAAC 800AD29C 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* 9BAB0 800AD2A0 1800B28F */  lw         $s2, 0x18($sp)
    /* 9BAB4 800AD2A4 1400B18F */  lw         $s1, 0x14($sp)
    /* 9BAB8 800AD2A8 1000B08F */  lw         $s0, 0x10($sp)
    /* 9BABC 800AD2AC 0800E003 */  jr         $ra
    /* 9BAC0 800AD2B0 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_800AD084
