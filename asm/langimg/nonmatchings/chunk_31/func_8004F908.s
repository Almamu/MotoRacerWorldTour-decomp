nonmatching func_8004F908, 0x530

glabel func_8004F908
    /* 3E118 8004F908 50FEBD27 */  addiu      $sp, $sp, -0x1B0
    /* 3E11C 8004F90C 04000224 */  addiu      $v0, $zero, 0x4
    /* 3E120 8004F910 FFFF0324 */  addiu      $v1, $zero, -0x1
    /* 3E124 8004F914 AC01BFAF */  sw         $ra, 0x1AC($sp)
    /* 3E128 8004F918 A801BEAF */  sw         $fp, 0x1A8($sp)
    /* 3E12C 8004F91C A401B7AF */  sw         $s7, 0x1A4($sp)
    /* 3E130 8004F920 A001B6AF */  sw         $s6, 0x1A0($sp)
    /* 3E134 8004F924 9C01B5AF */  sw         $s5, 0x19C($sp)
    /* 3E138 8004F928 9801B4AF */  sw         $s4, 0x198($sp)
    /* 3E13C 8004F92C 9401B3AF */  sw         $s3, 0x194($sp)
    /* 3E140 8004F930 9001B2AF */  sw         $s2, 0x190($sp)
    /* 3E144 8004F934 8C01B1AF */  sw         $s1, 0x18C($sp)
    /* 3E148 8004F938 8801B0AF */  sw         $s0, 0x188($sp)
    /* 3E14C 8004F93C B401A5AF */  sw         $a1, 0x1B4($sp)
    /* 3E150 8004F940 B801A6AF */  sw         $a2, 0x1B8($sp)
    /* 3E154 8004F944 BC01A7AF */  sw         $a3, 0x1BC($sp)
    /* 3E158 8004F948 FFFF4224 */  addiu      $v0, $v0, -0x1
  .L8004F94C:
    /* 3E15C 8004F94C FFFF4314 */  bne        $v0, $v1, .L8004F94C
    /* 3E160 8004F950 FFFF4224 */   addiu     $v0, $v0, -0x1
    /* 3E164 8004F954 6800B127 */  addiu      $s1, $sp, 0x68
    /* 3E168 8004F958 04001024 */  addiu      $s0, $zero, 0x4
    /* 3E16C 8004F95C FFFF1224 */  addiu      $s2, $zero, -0x1
  .L8004F960:
    /* 3E170 8004F960 8B69000C */  jal        func_8001A62C
    /* 3E174 8004F964 21202002 */   addu      $a0, $s1, $zero
    /* 3E178 8004F968 FFFF1026 */  addiu      $s0, $s0, -0x1
    /* 3E17C 8004F96C FCFF1216 */  bne        $s0, $s2, .L8004F960
    /* 3E180 8004F970 20003126 */   addiu     $s1, $s1, 0x20
    /* 3E184 8004F974 6800B327 */  addiu      $s3, $sp, 0x68
    /* 3E188 8004F978 3000B227 */  addiu      $s2, $sp, 0x30
    /* 3E18C 8004F97C 2C00B127 */  addiu      $s1, $sp, 0x2C
    /* 3E190 8004F980 0C801E3C */  lui        $fp, %hi(D_800C66ED)
    /* 3E194 8004F984 ED66DE27 */  addiu      $fp, $fp, %lo(D_800C66ED)
    /* 3E198 8004F988 2800B027 */  addiu      $s0, $sp, 0x28
    /* 3E19C 8004F98C 0C80173C */  lui        $s7, %hi(D_800C66EC)
    /* 3E1A0 8004F990 EC66F726 */  addiu      $s7, $s7, %lo(D_800C66EC)
    /* 3E1A4 8004F994 21B04002 */  addu       $s6, $s2, $zero
    /* 3E1A8 8004F998 21A82002 */  addu       $s5, $s1, $zero
    /* 3E1AC 8004F99C 21A00002 */  addu       $s4, $s0, $zero
    /* 3E1B0 8004F9A0 B801AE8F */  lw         $t6, 0x1B8($sp)
    /* 3E1B4 8004F9A4 0D80023C */  lui        $v0, %hi(D_800D5F38)
    /* 3E1B8 8004F9A8 385F428C */  lw         $v0, %lo(D_800D5F38)($v0)
    /* 3E1BC 8004F9AC 0C80033C */  lui        $v1, %hi(D_800C66FC)
    /* 3E1C0 8004F9B0 FC666324 */  addiu      $v1, $v1, %lo(D_800C66FC)
    /* 3E1C4 8004F9B4 3C01A0AF */  sw         $zero, 0x13C($sp)
    /* 3E1C8 8004F9B8 4001A0AF */  sw         $zero, 0x140($sp)
    /* 3E1CC 8004F9BC 0800CE25 */  addiu      $t6, $t6, 0x8
    /* 3E1D0 8004F9C0 21104300 */  addu       $v0, $v0, $v1
    /* 3E1D4 8004F9C4 5801AEAF */  sw         $t6, 0x158($sp)
    /* 3E1D8 8004F9C8 4401AEAF */  sw         $t6, 0x144($sp)
    /* 3E1DC 8004F9CC B801AE8F */  lw         $t6, 0x1B8($sp)
    /* 3E1E0 8004F9D0 00004280 */  lb         $v0, 0x0($v0)
    /* 3E1E4 8004F9D4 1400CE25 */  addiu      $t6, $t6, 0x14
    /* 3E1E8 8004F9D8 4801AEAF */  sw         $t6, 0x148($sp)
    /* 3E1EC 8004F9DC 7C00AE27 */  addiu      $t6, $sp, 0x7C
    /* 3E1F0 8004F9E0 5C01AEAF */  sw         $t6, 0x15C($sp)
    /* 3E1F4 8004F9E4 1000AE27 */  addiu      $t6, $sp, 0x10
    /* 3E1F8 8004F9E8 6001AEAF */  sw         $t6, 0x160($sp)
    /* 3E1FC 8004F9EC 8400AE27 */  addiu      $t6, $sp, 0x84
    /* 3E200 8004F9F0 6401AEAF */  sw         $t6, 0x164($sp)
    /* 3E204 8004F9F4 8000AE27 */  addiu      $t6, $sp, 0x80
    /* 3E208 8004F9F8 6801AEAF */  sw         $t6, 0x168($sp)
    /* 3E20C 8004F9FC 7C00AE27 */  addiu      $t6, $sp, 0x7C
    /* 3E210 8004FA00 6C01AEAF */  sw         $t6, 0x16C($sp)
    /* 3E214 8004FA04 7800AE27 */  addiu      $t6, $sp, 0x78
    /* 3E218 8004FA08 7001AEAF */  sw         $t6, 0x170($sp)
    /* 3E21C 8004FA0C 7400AE27 */  addiu      $t6, $sp, 0x74
    /* 3E220 8004FA10 7401AEAF */  sw         $t6, 0x174($sp)
    /* 3E224 8004FA14 7000AE27 */  addiu      $t6, $sp, 0x70
    /* 3E228 8004FA18 7801AEAF */  sw         $t6, 0x178($sp)
    /* 3E22C 8004FA1C 6C00AE27 */  addiu      $t6, $sp, 0x6C
    /* 3E230 8004FA20 7C01AEAF */  sw         $t6, 0x17C($sp)
    /* 3E234 8004FA24 21706002 */  addu       $t6, $s3, $zero
    /* 3E238 8004FA28 8001AEAF */  sw         $t6, 0x180($sp)
    /* 3E23C 8004FA2C 0C800E3C */  lui        $t6, %hi(D_800C66EE)
    /* 3E240 8004FA30 EE66CE25 */  addiu      $t6, $t6, %lo(D_800C66EE)
    /* 3E244 8004FA34 8401AEAF */  sw         $t6, 0x184($sp)
    /* 3E248 8004FA38 3801A2AF */  sw         $v0, 0x138($sp)
  .L8004FA3C:
    /* 3E24C 8004FA3C B401AE8F */  lw         $t6, 0x1B4($sp)
    /* 3E250 8004FA40 0000E382 */  lb         $v1, 0x0($s7)
    /* 3E254 8004FA44 0000C28D */  lw         $v0, 0x0($t6)
    /* 3E258 8004FA48 0400C68D */  lw         $a2, 0x4($t6)
    /* 3E25C 8004FA4C 0800C78D */  lw         $a3, 0x8($t6)
    /* 3E260 8004FA50 001A0300 */  sll        $v1, $v1, 8
    /* 3E264 8004FA54 000082AE */  sw         $v0, 0x0($s4)
    /* 3E268 8004FA58 0000A6AE */  sw         $a2, 0x0($s5)
    /* 3E26C 8004FA5C 0000C7AE */  sw         $a3, 0x0($s6)
    /* 3E270 8004FA60 0000028E */  lw         $v0, 0x0($s0)
    /* 3E274 8004FA64 0000C683 */  lb         $a2, 0x0($fp)
    /* 3E278 8004FA68 21104300 */  addu       $v0, $v0, $v1
    /* 3E27C 8004FA6C 00320600 */  sll        $a2, $a2, 8
    /* 3E280 8004FA70 000002AE */  sw         $v0, 0x0($s0)
    /* 3E284 8004FA74 8401AE8F */  lw         $t6, 0x184($sp)
    /* 3E288 8004FA78 0000238E */  lw         $v1, 0x0($s1)
    /* 3E28C 8004FA7C 0000C781 */  lb         $a3, 0x0($t6)
    /* 3E290 8004FA80 21186600 */  addu       $v1, $v1, $a2
    /* 3E294 8004FA84 000023AE */  sw         $v1, 0x0($s1)
    /* 3E298 8004FA88 B801AE8F */  lw         $t6, 0x1B8($sp)
    /* 3E29C 8004FA8C 00000000 */  nop
    /* 3E2A0 8004FA90 0000C38D */  lw         $v1, 0x0($t6)
    /* 3E2A4 8004FA94 0400C68D */  lw         $a2, 0x4($t6)
    /* 3E2A8 8004FA98 0800C88D */  lw         $t0, 0x8($t6)
    /* 3E2AC 8004FA9C 4401AE8F */  lw         $t6, 0x144($sp)
    /* 3E2B0 8004FAA0 00000000 */  nop
    /* 3E2B4 8004FAA4 0400C98D */  lw         $t1, 0x4($t6)
    /* 3E2B8 8004FAA8 0800CA8D */  lw         $t2, 0x8($t6)
    /* 3E2BC 8004FAAC B801AE8F */  lw         $t6, 0x1B8($sp)
    /* 3E2C0 8004FAB0 0000428E */  lw         $v0, 0x0($s2)
    /* 3E2C4 8004FAB4 1400CB8D */  lw         $t3, 0x14($t6)
    /* 3E2C8 8004FAB8 4801AE8F */  lw         $t6, 0x148($sp)
    /* 3E2CC 8004FABC 003A0700 */  sll        $a3, $a3, 8
    /* 3E2D0 8004FAC0 0400CC8D */  lw         $t4, 0x4($t6)
    /* 3E2D4 8004FAC4 0800CD8D */  lw         $t5, 0x8($t6)
    /* 3E2D8 8004FAC8 21104700 */  addu       $v0, $v0, $a3
    /* 3E2DC 8004FACC 000042AE */  sw         $v0, 0x0($s2)
    /* 3E2E0 8004FAD0 8001AE8F */  lw         $t6, 0x180($sp)
    /* 3E2E4 8004FAD4 00000000 */  nop
    /* 3E2E8 8004FAD8 0000C3AD */  sw         $v1, 0x0($t6)
    /* 3E2EC 8004FADC 7C01AE8F */  lw         $t6, 0x17C($sp)
    /* 3E2F0 8004FAE0 00000000 */  nop
    /* 3E2F4 8004FAE4 0000C6AD */  sw         $a2, 0x0($t6)
    /* 3E2F8 8004FAE8 7801AE8F */  lw         $t6, 0x178($sp)
    /* 3E2FC 8004FAEC 00000000 */  nop
    /* 3E300 8004FAF0 0000C8AD */  sw         $t0, 0x0($t6)
    /* 3E304 8004FAF4 7401AE8F */  lw         $t6, 0x174($sp)
    /* 3E308 8004FAF8 00000000 */  nop
    /* 3E30C 8004FAFC 0000C9AD */  sw         $t1, 0x0($t6)
    /* 3E310 8004FB00 7001AE8F */  lw         $t6, 0x170($sp)
    /* 3E314 8004FB04 00000000 */  nop
    /* 3E318 8004FB08 0000CAAD */  sw         $t2, 0x0($t6)
    /* 3E31C 8004FB0C 6C01AE8F */  lw         $t6, 0x16C($sp)
    /* 3E320 8004FB10 00000000 */  nop
    /* 3E324 8004FB14 0000CBAD */  sw         $t3, 0x0($t6)
    /* 3E328 8004FB18 6801AE8F */  lw         $t6, 0x168($sp)
    /* 3E32C 8004FB1C 21206002 */  addu       $a0, $s3, $zero
    /* 3E330 8004FB20 0000CCAD */  sw         $t4, 0x0($t6)
    /* 3E334 8004FB24 6401AE8F */  lw         $t6, 0x164($sp)
    /* 3E338 8004FB28 21280002 */  addu       $a1, $s0, $zero
    /* 3E33C 8004FB2C D46C000C */  jal        func_8001B350
    /* 3E340 8004FB30 0000CDAD */   sw        $t5, 0x0($t6)
    /* 3E344 8004FB34 27180200 */  nor        $v1, $zero, $v0
    /* 3E348 8004FB38 6001AE8F */  lw         $t6, 0x160($sp)
    /* 3E34C 8004FB3C C21F0300 */  srl        $v1, $v1, 31
    /* 3E350 8004FB40 08004004 */  bltz       $v0, .L8004FB64
    /* 3E354 8004FB44 0000C3AD */   sw        $v1, 0x0($t6)
    /* 3E358 8004FB48 0C000624 */  addiu      $a2, $zero, 0xC
    /* 3E35C 8004FB4C 80200200 */  sll        $a0, $v0, 2
    /* 3E360 8004FB50 1C008424 */  addiu      $a0, $a0, 0x1C
    /* 3E364 8004FB54 0000628E */  lw         $v0, 0x0($s3)
    /* 3E368 8004FB58 5C01A58F */  lw         $a1, 0x15C($sp)
    /* 3E36C 8004FB5C 8A5B020C */  jal        func_80096E28
    /* 3E370 8004FB60 21204400 */   addu      $a0, $v0, $a0
  .L8004FB64:
    /* 3E374 8004FB64 5C01AE8F */  lw         $t6, 0x15C($sp)
    /* 3E378 8004FB68 00000000 */  nop
    /* 3E37C 8004FB6C 2000CE25 */  addiu      $t6, $t6, 0x20
    /* 3E380 8004FB70 5C01AEAF */  sw         $t6, 0x15C($sp)
    /* 3E384 8004FB74 6001AE8F */  lw         $t6, 0x160($sp)
    /* 3E388 8004FB78 00000000 */  nop
    /* 3E38C 8004FB7C 0400CE25 */  addiu      $t6, $t6, 0x4
    /* 3E390 8004FB80 6001AEAF */  sw         $t6, 0x160($sp)
    /* 3E394 8004FB84 6401AE8F */  lw         $t6, 0x164($sp)
    /* 3E398 8004FB88 00000000 */  nop
    /* 3E39C 8004FB8C 2000CE25 */  addiu      $t6, $t6, 0x20
    /* 3E3A0 8004FB90 6401AEAF */  sw         $t6, 0x164($sp)
    /* 3E3A4 8004FB94 6801AE8F */  lw         $t6, 0x168($sp)
    /* 3E3A8 8004FB98 20007326 */  addiu      $s3, $s3, 0x20
    /* 3E3AC 8004FB9C 2000CE25 */  addiu      $t6, $t6, 0x20
    /* 3E3B0 8004FBA0 6801AEAF */  sw         $t6, 0x168($sp)
    /* 3E3B4 8004FBA4 6C01AE8F */  lw         $t6, 0x16C($sp)
    /* 3E3B8 8004FBA8 0C005226 */  addiu      $s2, $s2, 0xC
    /* 3E3BC 8004FBAC 2000CE25 */  addiu      $t6, $t6, 0x20
    /* 3E3C0 8004FBB0 6C01AEAF */  sw         $t6, 0x16C($sp)
    /* 3E3C4 8004FBB4 7001AE8F */  lw         $t6, 0x170($sp)
    /* 3E3C8 8004FBB8 0C003126 */  addiu      $s1, $s1, 0xC
    /* 3E3CC 8004FBBC 2000CE25 */  addiu      $t6, $t6, 0x20
    /* 3E3D0 8004FBC0 7001AEAF */  sw         $t6, 0x170($sp)
    /* 3E3D4 8004FBC4 7401AE8F */  lw         $t6, 0x174($sp)
    /* 3E3D8 8004FBC8 0300DE27 */  addiu      $fp, $fp, 0x3
    /* 3E3DC 8004FBCC 2000CE25 */  addiu      $t6, $t6, 0x20
    /* 3E3E0 8004FBD0 7401AEAF */  sw         $t6, 0x174($sp)
    /* 3E3E4 8004FBD4 7801AE8F */  lw         $t6, 0x178($sp)
    /* 3E3E8 8004FBD8 0C001026 */  addiu      $s0, $s0, 0xC
    /* 3E3EC 8004FBDC 2000CE25 */  addiu      $t6, $t6, 0x20
    /* 3E3F0 8004FBE0 7801AEAF */  sw         $t6, 0x178($sp)
    /* 3E3F4 8004FBE4 7C01AE8F */  lw         $t6, 0x17C($sp)
    /* 3E3F8 8004FBE8 0300F726 */  addiu      $s7, $s7, 0x3
    /* 3E3FC 8004FBEC 2000CE25 */  addiu      $t6, $t6, 0x20
    /* 3E400 8004FBF0 7C01AEAF */  sw         $t6, 0x17C($sp)
    /* 3E404 8004FBF4 8001AE8F */  lw         $t6, 0x180($sp)
    /* 3E408 8004FBF8 0C00D626 */  addiu      $s6, $s6, 0xC
    /* 3E40C 8004FBFC 2000CE25 */  addiu      $t6, $t6, 0x20
    /* 3E410 8004FC00 8001AEAF */  sw         $t6, 0x180($sp)
    /* 3E414 8004FC04 8401AE8F */  lw         $t6, 0x184($sp)
    /* 3E418 8004FC08 0C00B526 */  addiu      $s5, $s5, 0xC
    /* 3E41C 8004FC0C 0300CE25 */  addiu      $t6, $t6, 0x3
    /* 3E420 8004FC10 8401AEAF */  sw         $t6, 0x184($sp)
    /* 3E424 8004FC14 4001AE8F */  lw         $t6, 0x140($sp)
    /* 3E428 8004FC18 0C009426 */  addiu      $s4, $s4, 0xC
    /* 3E42C 8004FC1C 0100CE25 */  addiu      $t6, $t6, 0x1
    /* 3E430 8004FC20 0500C229 */  slti       $v0, $t6, 0x5
    /* 3E434 8004FC24 85FF4014 */  bnez       $v0, .L8004FA3C
    /* 3E438 8004FC28 4001AEAF */   sw        $t6, 0x140($sp)
    /* 3E43C 8004FC2C 01000E24 */  addiu      $t6, $zero, 0x1
    /* 3E440 8004FC30 1000C011 */  beqz       $t6, .L8004FC74
    /* 3E444 8004FC34 7000A527 */   addiu     $a1, $sp, 0x70
    /* 3E448 8004FC38 6800A48F */  lw         $a0, 0x68($sp)
    /* 3E44C 8004FC3C 2C00B08F */  lw         $s0, 0x2C($sp)
    /* 3E450 8004FC40 FD6B000C */  jal        func_8001AFF4
    /* 3E454 8004FC44 21300000 */   addu      $a2, $zero, $zero
    /* 3E458 8004FC48 21204000 */  addu       $a0, $v0, $zero
    /* 3E45C 8004FC4C 2A180402 */  slt        $v1, $s0, $a0
    /* 3E460 8004FC50 08006010 */  beqz       $v1, .L8004FC74
    /* 3E464 8004FC54 01000E24 */   addiu     $t6, $zero, 0x1
    /* 3E468 8004FC58 3C01AEAF */  sw         $t6, 0x13C($sp)
    /* 3E46C 8004FC5C B401AE8F */  lw         $t6, 0x1B4($sp)
    /* 3E470 8004FC60 00000000 */  nop
    /* 3E474 8004FC64 0400C28D */  lw         $v0, 0x4($t6)
    /* 3E478 8004FC68 23189000 */  subu       $v1, $a0, $s0
    /* 3E47C 8004FC6C 21104300 */  addu       $v0, $v0, $v1
    /* 3E480 8004FC70 0400C2AD */  sw         $v0, 0x4($t6)
  .L8004FC74:
    /* 3E484 8004FC74 3801AE8F */  lw         $t6, 0x138($sp)
    /* 3E488 8004FC78 00000000 */  nop
    /* 3E48C 8004FC7C 5700C011 */  beqz       $t6, .L8004FDDC
    /* 3E490 8004FC80 FFFF0E24 */   addiu     $t6, $zero, -0x1
    /* 3E494 8004FC84 01001E24 */  addiu      $fp, $zero, 0x1
    /* 3E498 8004FC88 4C01AEAF */  sw         $t6, 0x14C($sp)
    /* 3E49C 8004FC8C 2801AE27 */  addiu      $t6, $sp, 0x128
    /* 3E4A0 8004FC90 A400B727 */  addiu      $s7, $sp, 0xA4
    /* 3E4A4 8004FC94 A000B627 */  addiu      $s6, $sp, 0xA0
    /* 3E4A8 8004FC98 9C00B527 */  addiu      $s5, $sp, 0x9C
    /* 3E4AC 8004FC9C 9800B427 */  addiu      $s4, $sp, 0x98
    /* 3E4B0 8004FCA0 9000B327 */  addiu      $s3, $sp, 0x90
    /* 3E4B4 8004FCA4 5401AEAF */  sw         $t6, 0x154($sp)
    /* 3E4B8 8004FCA8 0C800E3C */  lui        $t6, %hi(D_800C66EE)
    /* 3E4BC 8004FCAC EE66CE25 */  addiu      $t6, $t6, %lo(D_800C66EE)
    /* 3E4C0 8004FCB0 0300D225 */  addiu      $s2, $t6, 0x3
    /* 3E4C4 8004FCB4 0C800E3C */  lui        $t6, %hi(D_800C66EC)
    /* 3E4C8 8004FCB8 EC66CE25 */  addiu      $t6, $t6, %lo(D_800C66EC)
    /* 3E4CC 8004FCBC 0300D125 */  addiu      $s1, $t6, 0x3
    /* 3E4D0 8004FCC0 1400B027 */  addiu      $s0, $sp, 0x14
    /* 3E4D4 8004FCC4 5001A0AF */  sw         $zero, 0x150($sp)
  .L8004FCC8:
    /* 3E4D8 8004FCC8 0000028E */  lw         $v0, 0x0($s0)
    /* 3E4DC 8004FCCC 00000000 */  nop
    /* 3E4E0 8004FCD0 2A004010 */  beqz       $v0, .L8004FD7C
    /* 3E4E4 8004FCD4 01000E24 */   addiu     $t6, $zero, 0x1
    /* 3E4E8 8004FCD8 5401A48F */  lw         $a0, 0x154($sp)
    /* 3E4EC 8004FCDC 00002382 */  lb         $v1, 0x0($s1)
    /* 3E4F0 8004FCE0 5801A68F */  lw         $a2, 0x158($sp)
    /* 3E4F4 8004FCE4 5001AEAF */  sw         $t6, 0x150($sp)
    /* 3E4F8 8004FCE8 0000628E */  lw         $v0, 0x0($s3)
    /* 3E4FC 8004FCEC B401AE8F */  lw         $t6, 0x1B4($sp)
    /* 3E500 8004FCF0 001A0300 */  sll        $v1, $v1, 8
    /* 3E504 8004FCF4 23104300 */  subu       $v0, $v0, $v1
    /* 3E508 8004FCF8 0400C78D */  lw         $a3, 0x4($t6)
    /* 3E50C 8004FCFC 00004382 */  lb         $v1, 0x0($s2)
    /* 3E510 8004FD00 1801A527 */  addiu      $a1, $sp, 0x118
    /* 3E514 8004FD04 1801A2AF */  sw         $v0, 0x118($sp)
    /* 3E518 8004FD08 1C01A7AF */  sw         $a3, 0x11C($sp)
    /* 3E51C 8004FD0C 0000828E */  lw         $v0, 0x0($s4)
    /* 3E520 8004FD10 001A0300 */  sll        $v1, $v1, 8
    /* 3E524 8004FD14 23104300 */  subu       $v0, $v0, $v1
    /* 3E528 8004FD18 3466020C */  jal        func_800998D0
    /* 3E52C 8004FD1C 2001A2AF */   sw        $v0, 0x120($sp)
    /* 3E530 8004FD20 5401A48F */  lw         $a0, 0x154($sp)
    /* 3E534 8004FD24 C764020C */  jal        func_8009931C
    /* 3E538 8004FD28 00000000 */   nop
    /* 3E53C 8004FD2C 4C01AE8F */  lw         $t6, 0x14C($sp)
    /* 3E540 8004FD30 21284000 */  addu       $a1, $v0, $zero
    /* 3E544 8004FD34 2B18AE00 */  sltu       $v1, $a1, $t6
    /* 3E548 8004FD38 10006010 */  beqz       $v1, .L8004FD7C
    /* 3E54C 8004FD3C 00000000 */   nop
    /* 3E550 8004FD40 1801A28F */  lw         $v0, 0x118($sp)
    /* 3E554 8004FD44 1C01A38F */  lw         $v1, 0x11C($sp)
    /* 3E558 8004FD48 2001A48F */  lw         $a0, 0x120($sp)
    /* 3E55C 8004FD4C BC01AE8F */  lw         $t6, 0x1BC($sp)
    /* 3E560 8004FD50 4C01A5AF */  sw         $a1, 0x14C($sp)
    /* 3E564 8004FD54 0801A2AF */  sw         $v0, 0x108($sp)
    /* 3E568 8004FD58 0C01A3AF */  sw         $v1, 0x10C($sp)
    /* 3E56C 8004FD5C 0700C011 */  beqz       $t6, .L8004FD7C
    /* 3E570 8004FD60 1001A4AF */   sw        $a0, 0x110($sp)
    /* 3E574 8004FD64 0000A28E */  lw         $v0, 0x0($s5)
    /* 3E578 8004FD68 0000C38E */  lw         $v1, 0x0($s6)
    /* 3E57C 8004FD6C 0000E48E */  lw         $a0, 0x0($s7)
    /* 3E580 8004FD70 0000C2AD */  sw         $v0, 0x0($t6)
    /* 3E584 8004FD74 0400C3AD */  sw         $v1, 0x4($t6)
    /* 3E588 8004FD78 0800C4AD */  sw         $a0, 0x8($t6)
  .L8004FD7C:
    /* 3E58C 8004FD7C 2000F726 */  addiu      $s7, $s7, 0x20
    /* 3E590 8004FD80 2000D626 */  addiu      $s6, $s6, 0x20
    /* 3E594 8004FD84 2000B526 */  addiu      $s5, $s5, 0x20
    /* 3E598 8004FD88 20009426 */  addiu      $s4, $s4, 0x20
    /* 3E59C 8004FD8C 20007326 */  addiu      $s3, $s3, 0x20
    /* 3E5A0 8004FD90 03005226 */  addiu      $s2, $s2, 0x3
    /* 3E5A4 8004FD94 03003126 */  addiu      $s1, $s1, 0x3
    /* 3E5A8 8004FD98 0100DE27 */  addiu      $fp, $fp, 0x1
    /* 3E5AC 8004FD9C 0500C22B */  slti       $v0, $fp, 0x5
    /* 3E5B0 8004FDA0 C9FF4014 */  bnez       $v0, .L8004FCC8
    /* 3E5B4 8004FDA4 04001026 */   addiu     $s0, $s0, 0x4
    /* 3E5B8 8004FDA8 5001AE8F */  lw         $t6, 0x150($sp)
    /* 3E5BC 8004FDAC 00000000 */  nop
    /* 3E5C0 8004FDB0 0B00C011 */  beqz       $t6, .L8004FDE0
    /* 3E5C4 8004FDB4 0801B027 */   addiu     $s0, $sp, 0x108
    /* 3E5C8 8004FDB8 0801A28F */  lw         $v0, 0x108($sp)
    /* 3E5CC 8004FDBC 3C01AE8F */  lw         $t6, 0x13C($sp)
    /* 3E5D0 8004FDC0 1001A38F */  lw         $v1, 0x110($sp)
    /* 3E5D4 8004FDC4 0200CE35 */  ori        $t6, $t6, 0x2
    /* 3E5D8 8004FDC8 3C01AEAF */  sw         $t6, 0x13C($sp)
    /* 3E5DC 8004FDCC B401AE8F */  lw         $t6, 0x1B4($sp)
    /* 3E5E0 8004FDD0 00000000 */  nop
    /* 3E5E4 8004FDD4 0000C2AD */  sw         $v0, 0x0($t6)
    /* 3E5E8 8004FDD8 0800C3AD */  sw         $v1, 0x8($t6)
  .L8004FDDC:
    /* 3E5EC 8004FDDC 0801B027 */  addiu      $s0, $sp, 0x108
  .L8004FDE0:
    /* 3E5F0 8004FDE0 6800A227 */  addiu      $v0, $sp, 0x68
    /* 3E5F4 8004FDE4 07005010 */  beq        $v0, $s0, .L8004FE04
    /* 3E5F8 8004FDE8 21884000 */   addu      $s1, $v0, $zero
    /* 3E5FC 8004FDEC E0FF1026 */  addiu      $s0, $s0, -0x20
  .L8004FDF0:
    /* 3E600 8004FDF0 21200002 */  addu       $a0, $s0, $zero
    /* 3E604 8004FDF4 8F69000C */  jal        func_8001A63C
    /* 3E608 8004FDF8 02000524 */   addiu     $a1, $zero, 0x2
    /* 3E60C 8004FDFC FCFF3016 */  bne        $s1, $s0, .L8004FDF0
    /* 3E610 8004FE00 E0FF1026 */   addiu     $s0, $s0, -0x20
  .L8004FE04:
    /* 3E614 8004FE04 3C01A28F */  lw         $v0, 0x13C($sp)
    /* 3E618 8004FE08 AC01BF8F */  lw         $ra, 0x1AC($sp)
    /* 3E61C 8004FE0C A801BE8F */  lw         $fp, 0x1A8($sp)
    /* 3E620 8004FE10 A401B78F */  lw         $s7, 0x1A4($sp)
    /* 3E624 8004FE14 A001B68F */  lw         $s6, 0x1A0($sp)
    /* 3E628 8004FE18 9C01B58F */  lw         $s5, 0x19C($sp)
    /* 3E62C 8004FE1C 9801B48F */  lw         $s4, 0x198($sp)
    /* 3E630 8004FE20 9401B38F */  lw         $s3, 0x194($sp)
    /* 3E634 8004FE24 9001B28F */  lw         $s2, 0x190($sp)
    /* 3E638 8004FE28 8C01B18F */  lw         $s1, 0x18C($sp)
    /* 3E63C 8004FE2C 8801B08F */  lw         $s0, 0x188($sp)
    /* 3E640 8004FE30 0800E003 */  jr         $ra
    /* 3E644 8004FE34 B001BD27 */   addiu     $sp, $sp, 0x1B0
endlabel func_8004F908
