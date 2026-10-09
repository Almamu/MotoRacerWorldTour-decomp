/* Handwritten function */
nonmatching func_8002E984, 0x23C

glabel func_8002E984
    /* 1D194 8002E984 C0FFBD27 */  addiu      $sp, $sp, -0x40
    /* 1D198 8002E988 21188000 */  addu       $v1, $a0, $zero
    /* 1D19C 8002E98C 3000B0AF */  sw         $s0, 0x30($sp)
    /* 1D1A0 8002E990 2000B027 */  addiu      $s0, $sp, 0x20
    /* 1D1A4 8002E994 21200002 */  addu       $a0, $s0, $zero
    /* 1D1A8 8002E998 3400B1AF */  sw         $s1, 0x34($sp)
    /* 1D1AC 8002E99C 2188A000 */  addu       $s1, $a1, $zero
    /* 1D1B0 8002E9A0 54026524 */  addiu      $a1, $v1, 0x254
    /* 1D1B4 8002E9A4 3800B2AF */  sw         $s2, 0x38($sp)
    /* 1D1B8 8002E9A8 2190C000 */  addu       $s2, $a2, $zero
    /* 1D1BC 8002E9AC 3C00BFAF */  sw         $ra, 0x3C($sp)
    /* 1D1C0 8002E9B0 3803678C */  lw         $a3, 0x338($v1)
    /* 1D1C4 8002E9B4 3003628C */  lw         $v0, 0x330($v1)
    /* 1D1C8 8002E9B8 60026624 */  addiu      $a2, $v1, 0x260
    /* 1D1CC 8002E9BC 1400A0AF */  sw         $zero, 0x14($sp)
    /* 1D1D0 8002E9C0 23100200 */  negu       $v0, $v0
    /* 1D1D4 8002E9C4 1000A7AF */  sw         $a3, 0x10($sp)
    /* 1D1D8 8002E9C8 2666020C */  jal        func_80099898
    /* 1D1DC 8002E9CC 1800A2AF */   sw        $v0, 0x18($sp)
    /* 1D1E0 8002E9D0 21200002 */  addu       $a0, $s0, $zero
    /* 1D1E4 8002E9D4 E563020C */  jal        func_80098F94
    /* 1D1E8 8002E9D8 0C000524 */   addiu     $a1, $zero, 0xC
    /* 1D1EC 8002E9DC 1000A427 */  addiu      $a0, $sp, 0x10
    /* 1D1F0 8002E9E0 21280002 */  addu       $a1, $s0, $zero
    /* 1D1F4 8002E9E4 0867020C */  jal        func_80099C20
    /* 1D1F8 8002E9E8 1A000624 */   addiu     $a2, $zero, 0x1A
    /* 1D1FC 8002E9EC 0000278E */  lw         $a3, 0x0($s1)
    /* 1D200 8002E9F0 00000000 */  nop
    /* 1D204 8002E9F4 3600E018 */  blez       $a3, .L8002EAD0
    /* 1D208 8002E9F8 21184000 */   addu      $v1, $v0, $zero
    /* 1D20C 8002E9FC 16006004 */  bltz       $v1, .L8002EA58
    /* 1D210 8002EA00 C2270300 */   srl       $a0, $v1, 31
    /* 1D214 8002EA04 02004106 */  bgez       $s2, .L8002EA10
    /* 1D218 8002EA08 21284002 */   addu      $a1, $s2, $zero
    /* 1D21C 8002EA0C 23280500 */  negu       $a1, $a1
  .L8002EA10:
    /* 1D220 8002EA10 21206400 */  addu       $a0, $v1, $a0
    /* 1D224 8002EA14 43200400 */  sra        $a0, $a0, 1
    /* 1D228 8002EA18 00100224 */  addiu      $v0, $zero, 0x1000
    /* 1D22C 8002EA1C 23104400 */  subu       $v0, $v0, $a0
    /* 1D230 8002EA20 0C000824 */  addiu      $t0, $zero, 0xC
    /* 1D234 8002EA24 1800A200 */  mult       $a1, $v0
    /* 1D238 8002EA28 20000634 */  ori        $a2, $zero, 0x20
    /* 1D23C 8002EA2C 2230C800 */  sub        $a2, $a2, $t0 /* handwritten instruction */
    /* 1D240 8002EA30 10180000 */  mfhi       $v1
    /* 1D244 8002EA34 0418C300 */  sllv       $v1, $v1, $a2
    /* 1D248 8002EA38 12300000 */  mflo       $a2
    /* 1D24C 8002EA3C 06300601 */  srlv       $a2, $a2, $t0
    /* 1D250 8002EA40 25186600 */  or         $v1, $v1, $a2
    /* 1D254 8002EA44 2318E300 */  subu       $v1, $a3, $v1
    /* 1D258 8002EA48 57006104 */  bgez       $v1, .L8002EBA8
    /* 1D25C 8002EA4C 000023AE */   sw        $v1, 0x0($s1)
    /* 1D260 8002EA50 EABA0008 */  j          .L8002EBA8
    /* 1D264 8002EA54 000020AE */   sw        $zero, 0x0($s1)
  .L8002EA58:
    /* 1D268 8002EA58 02004106 */  bgez       $s2, .L8002EA64
    /* 1D26C 8002EA5C 21104002 */   addu      $v0, $s2, $zero
    /* 1D270 8002EA60 23100200 */  negu       $v0, $v0
  .L8002EA64:
    /* 1D274 8002EA64 2310E200 */  subu       $v0, $a3, $v0
    /* 1D278 8002EA68 02004104 */  bgez       $v0, .L8002EA74
    /* 1D27C 8002EA6C 000022AE */   sw        $v0, 0x0($s1)
    /* 1D280 8002EA70 000020AE */  sw         $zero, 0x0($s1)
  .L8002EA74:
    /* 1D284 8002EA74 0000258E */  lw         $a1, 0x0($s1)
    /* 1D288 8002EA78 00000000 */  nop
    /* 1D28C 8002EA7C 4A00A010 */  beqz       $a1, .L8002EBA8
    /* 1D290 8002EA80 00000000 */   nop
    /* 1D294 8002EA84 18006300 */  mult       $v1, $v1
    /* 1D298 8002EA88 12100000 */  mflo       $v0
    /* 1D29C 8002EA8C 02004104 */  bgez       $v0, .L8002EA98
    /* 1D2A0 8002EA90 00000000 */   nop
    /* 1D2A4 8002EA94 FF0F4224 */  addiu      $v0, $v0, 0xFFF
  .L8002EA98:
    /* 1D2A8 8002EA98 03130200 */  sra        $v0, $v0, 12
    /* 1D2AC 8002EA9C 0C000924 */  addiu      $t1, $zero, 0xC
    /* 1D2B0 8002EAA0 0000288E */  lw         $t0, 0x0($s1)
    /* 1D2B4 8002EAA4 00000000 */  nop
    /* 1D2B8 8002EAA8 18000201 */  mult       $t0, $v0
    /* 1D2BC 8002EAAC 20000434 */  ori        $a0, $zero, 0x20
    /* 1D2C0 8002EAB0 22208900 */  sub        $a0, $a0, $t1 /* handwritten instruction */
    /* 1D2C4 8002EAB4 10180000 */  mfhi       $v1
    /* 1D2C8 8002EAB8 04188300 */  sllv       $v1, $v1, $a0
    /* 1D2CC 8002EABC 12200000 */  mflo       $a0
    /* 1D2D0 8002EAC0 06202401 */  srlv       $a0, $a0, $t1
    /* 1D2D4 8002EAC4 25186400 */  or         $v1, $v1, $a0
    /* 1D2D8 8002EAC8 E9BA0008 */  j          .L8002EBA4
    /* 1D2DC 8002EACC 2318A300 */   subu      $v1, $a1, $v1
  .L8002EAD0:
    /* 1D2E0 8002EAD0 3500E104 */  bgez       $a3, .L8002EBA8
    /* 1D2E4 8002EAD4 00000000 */   nop
    /* 1D2E8 8002EAD8 1500601C */  bgtz       $v1, .L8002EB30
    /* 1D2EC 8002EADC C2170300 */   srl       $v0, $v1, 31
    /* 1D2F0 8002EAE0 02004106 */  bgez       $s2, .L8002EAEC
    /* 1D2F4 8002EAE4 21204002 */   addu      $a0, $s2, $zero
    /* 1D2F8 8002EAE8 23200400 */  negu       $a0, $a0
  .L8002EAEC:
    /* 1D2FC 8002EAEC 21106200 */  addu       $v0, $v1, $v0
    /* 1D300 8002EAF0 43100200 */  sra        $v0, $v0, 1
    /* 1D304 8002EAF4 00104224 */  addiu      $v0, $v0, 0x1000
    /* 1D308 8002EAF8 0C000824 */  addiu      $t0, $zero, 0xC
    /* 1D30C 8002EAFC 18008200 */  mult       $a0, $v0
    /* 1D310 8002EB00 20000534 */  ori        $a1, $zero, 0x20
    /* 1D314 8002EB04 2228A800 */  sub        $a1, $a1, $t0 /* handwritten instruction */
    /* 1D318 8002EB08 10180000 */  mfhi       $v1
    /* 1D31C 8002EB0C 0418A300 */  sllv       $v1, $v1, $a1
    /* 1D320 8002EB10 12280000 */  mflo       $a1
    /* 1D324 8002EB14 06280501 */  srlv       $a1, $a1, $t0
    /* 1D328 8002EB18 25186500 */  or         $v1, $v1, $a1
    /* 1D32C 8002EB1C 2118E300 */  addu       $v1, $a3, $v1
    /* 1D330 8002EB20 21006018 */  blez       $v1, .L8002EBA8
    /* 1D334 8002EB24 000023AE */   sw        $v1, 0x0($s1)
    /* 1D338 8002EB28 EABA0008 */  j          .L8002EBA8
    /* 1D33C 8002EB2C 000020AE */   sw        $zero, 0x0($s1)
  .L8002EB30:
    /* 1D340 8002EB30 02004106 */  bgez       $s2, .L8002EB3C
    /* 1D344 8002EB34 21104002 */   addu      $v0, $s2, $zero
    /* 1D348 8002EB38 23100200 */  negu       $v0, $v0
  .L8002EB3C:
    /* 1D34C 8002EB3C 2110E200 */  addu       $v0, $a3, $v0
    /* 1D350 8002EB40 02004018 */  blez       $v0, .L8002EB4C
    /* 1D354 8002EB44 000022AE */   sw        $v0, 0x0($s1)
    /* 1D358 8002EB48 000020AE */  sw         $zero, 0x0($s1)
  .L8002EB4C:
    /* 1D35C 8002EB4C 0000258E */  lw         $a1, 0x0($s1)
    /* 1D360 8002EB50 00000000 */  nop
    /* 1D364 8002EB54 1400A010 */  beqz       $a1, .L8002EBA8
    /* 1D368 8002EB58 00000000 */   nop
    /* 1D36C 8002EB5C 18006300 */  mult       $v1, $v1
    /* 1D370 8002EB60 12100000 */  mflo       $v0
    /* 1D374 8002EB64 02004104 */  bgez       $v0, .L8002EB70
    /* 1D378 8002EB68 00000000 */   nop
    /* 1D37C 8002EB6C FF0F4224 */  addiu      $v0, $v0, 0xFFF
  .L8002EB70:
    /* 1D380 8002EB70 03130200 */  sra        $v0, $v0, 12
    /* 1D384 8002EB74 0C000924 */  addiu      $t1, $zero, 0xC
    /* 1D388 8002EB78 0000288E */  lw         $t0, 0x0($s1)
    /* 1D38C 8002EB7C 00000000 */  nop
    /* 1D390 8002EB80 18000201 */  mult       $t0, $v0
    /* 1D394 8002EB84 20000434 */  ori        $a0, $zero, 0x20
    /* 1D398 8002EB88 22208900 */  sub        $a0, $a0, $t1 /* handwritten instruction */
    /* 1D39C 8002EB8C 10180000 */  mfhi       $v1
    /* 1D3A0 8002EB90 04188300 */  sllv       $v1, $v1, $a0
    /* 1D3A4 8002EB94 12200000 */  mflo       $a0
    /* 1D3A8 8002EB98 06202401 */  srlv       $a0, $a0, $t1
    /* 1D3AC 8002EB9C 25186400 */  or         $v1, $v1, $a0
    /* 1D3B0 8002EBA0 2318A300 */  subu       $v1, $a1, $v1
  .L8002EBA4:
    /* 1D3B4 8002EBA4 000023AE */  sw         $v1, 0x0($s1)
  .L8002EBA8:
    /* 1D3B8 8002EBA8 3C00BF8F */  lw         $ra, 0x3C($sp)
    /* 1D3BC 8002EBAC 3800B28F */  lw         $s2, 0x38($sp)
    /* 1D3C0 8002EBB0 3400B18F */  lw         $s1, 0x34($sp)
    /* 1D3C4 8002EBB4 3000B08F */  lw         $s0, 0x30($sp)
    /* 1D3C8 8002EBB8 0800E003 */  jr         $ra
    /* 1D3CC 8002EBBC 4000BD27 */   addiu     $sp, $sp, 0x40
endlabel func_8002E984
