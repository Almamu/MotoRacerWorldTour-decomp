nonmatching func_8007F948, 0x6F8

glabel func_8007F948
    /* 6E158 8007F948 78FFBD27 */  addiu      $sp, $sp, -0x88
    /* 6E15C 8007F94C 7800B6AF */  sw         $s6, 0x78($sp)
    /* 6E160 8007F950 21B00000 */  addu       $s6, $zero, $zero
    /* 6E164 8007F954 8000BEAF */  sw         $fp, 0x80($sp)
    /* 6E168 8007F958 21F00000 */  addu       $fp, $zero, $zero
    /* 6E16C 8007F95C 6C00B3AF */  sw         $s3, 0x6C($sp)
    /* 6E170 8007F960 21988000 */  addu       $s3, $a0, $zero
    /* 6E174 8007F964 7400B5AF */  sw         $s5, 0x74($sp)
    /* 6E178 8007F968 21A8A000 */  addu       $s5, $a1, $zero
    /* 6E17C 8007F96C 6400B1AF */  sw         $s1, 0x64($sp)
    /* 6E180 8007F970 2188E000 */  addu       $s1, $a3, $zero
    /* 6E184 8007F974 F4428387 */  lh         $v1, %gp_rel(D_800C89E4)($gp)
    /* 6E188 8007F978 FFFF0224 */  addiu      $v0, $zero, -0x1
    /* 6E18C 8007F97C 8400BFAF */  sw         $ra, 0x84($sp)
    /* 6E190 8007F980 7C00B7AF */  sw         $s7, 0x7C($sp)
    /* 6E194 8007F984 7000B4AF */  sw         $s4, 0x70($sp)
    /* 6E198 8007F988 6800B2AF */  sw         $s2, 0x68($sp)
    /* 6E19C 8007F98C 6000B0AF */  sw         $s0, 0x60($sp)
    /* 6E1A0 8007F990 3000A0AF */  sw         $zero, 0x30($sp)
    /* 6E1A4 8007F994 3400A0AF */  sw         $zero, 0x34($sp)
    /* 6E1A8 8007F998 1000A0A7 */  sh         $zero, 0x10($sp)
    /* 6E1AC 8007F99C 04006210 */  beq        $v1, $v0, .L8007F9B0
    /* 6E1B0 8007F9A0 9000A6AF */   sw        $a2, 0x90($sp)
    /* 6E1B4 8007F9A4 001C0300 */  sll        $v1, $v1, 16
    /* 6E1B8 8007F9A8 70FE0108 */  j          .L8007F9C0
    /* 6E1BC 8007F9AC 3C00A3AF */   sw        $v1, 0x3C($sp)
  .L8007F9B0:
    /* 6E1C0 8007F9B0 14006296 */  lhu        $v0, 0x14($s3)
    /* 6E1C4 8007F9B4 00000000 */  nop
    /* 6E1C8 8007F9B8 00140200 */  sll        $v0, $v0, 16
    /* 6E1CC 8007F9BC 3C00A2AF */  sw         $v0, 0x3C($sp)
  .L8007F9C0:
    /* 6E1D0 8007F9C0 EC42978F */  lw         $s7, %gp_rel(D_800C89DC)($gp)
    /* 6E1D4 8007F9C4 E042888F */  lw         $t0, %gp_rel(D_800C89D0)($gp)
    /* 6E1D8 8007F9C8 E4428993 */  lbu        $t1, %gp_rel(D_800C89D4)($gp)
    /* 6E1DC 8007F9CC F042948F */  lw         $s4, %gp_rel(D_800C89E0)($gp)
    /* 6E1E0 8007F9D0 1800B5AF */  sw         $s5, 0x18($sp)
    /* 6E1E4 8007F9D4 4000A8AF */  sw         $t0, 0x40($sp)
    /* 6E1E8 8007F9D8 04000015 */  bnez       $t0, .L8007F9EC
    /* 6E1EC 8007F9DC 4400A9AF */   sw        $t1, 0x44($sp)
    /* 6E1F0 8007F9E0 9000B08F */  lw         $s0, 0x90($sp)
    /* 6E1F4 8007F9E4 B6FE0108 */  j          .L8007FAD8
    /* 6E1F8 8007F9E8 1C00B1AF */   sw        $s1, 0x1C($sp)
  .L8007F9EC:
    /* 6E1FC 8007F9EC 21206002 */  addu       $a0, $s3, $zero
    /* 6E200 8007F9F0 1400A627 */  addiu      $a2, $sp, 0x14
    /* 6E204 8007F9F4 1800A58F */  lw         $a1, 0x18($sp)
    /* 6E208 8007F9F8 7AFD010C */  jal        func_8007F5E8
    /* 6E20C 8007F9FC 1000A727 */   addiu     $a3, $sp, 0x10
    /* 6E210 8007FA00 1400A38F */  lw         $v1, 0x14($sp)
    /* 6E214 8007FA04 4000A98F */  lw         $t1, 0x40($sp)
    /* 6E218 8007FA08 01000224 */  addiu      $v0, $zero, 0x1
    /* 6E21C 8007FA0C 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 6E220 8007FA10 02440300 */  srl        $t0, $v1, 16
    /* 6E224 8007FA14 FFFF6330 */  andi       $v1, $v1, 0xFFFF
    /* 6E228 8007FA18 2400A3AF */  sw         $v1, 0x24($sp)
    /* 6E22C 8007FA1C 0F002331 */  andi       $v1, $t1, 0xF
    /* 6E230 8007FA20 0A006210 */  beq        $v1, $v0, .L8007FA4C
    /* 6E234 8007FA24 2000A8AF */   sw        $t0, 0x20($sp)
    /* 6E238 8007FA28 05006010 */  beqz       $v1, .L8007FA40
    /* 6E23C 8007FA2C 02000224 */   addiu     $v0, $zero, 0x2
    /* 6E240 8007FA30 0F006210 */  beq        $v1, $v0, .L8007FA70
    /* 6E244 8007FA34 00000000 */   nop
    /* 6E248 8007FA38 A1FE0108 */  j          .L8007FA84
    /* 6E24C 8007FA3C 00000000 */   nop
  .L8007FA40:
    /* 6E250 8007FA40 9000B08F */  lw         $s0, 0x90($sp)
    /* 6E254 8007FA44 A1FE0108 */  j          .L8007FA84
    /* 6E258 8007FA48 00000000 */   nop
  .L8007FA4C:
    /* 6E25C 8007FA4C 2000A88F */  lw         $t0, 0x20($sp)
    /* 6E260 8007FA50 1000A297 */  lhu        $v0, 0x10($sp)
    /* 6E264 8007FA54 9000A98F */  lw         $t1, 0x90($sp)
    /* 6E268 8007FA58 43180800 */  sra        $v1, $t0, 1
    /* 6E26C 8007FA5C 21182301 */  addu       $v1, $t1, $v1
    /* 6E270 8007FA60 00140200 */  sll        $v0, $v0, 16
    /* 6E274 8007FA64 43140200 */  sra        $v0, $v0, 17
    /* 6E278 8007FA68 A1FE0108 */  j          .L8007FA84
    /* 6E27C 8007FA6C 23806200 */   subu      $s0, $v1, $v0
  .L8007FA70:
    /* 6E280 8007FA70 1000A287 */  lh         $v0, 0x10($sp)
    /* 6E284 8007FA74 2000A88F */  lw         $t0, 0x20($sp)
    /* 6E288 8007FA78 9000A98F */  lw         $t1, 0x90($sp)
    /* 6E28C 8007FA7C 23100201 */  subu       $v0, $t0, $v0
    /* 6E290 8007FA80 21802201 */  addu       $s0, $t1, $v0
  .L8007FA84:
    /* 6E294 8007FA84 4000A88F */  lw         $t0, 0x40($sp)
    /* 6E298 8007FA88 00000000 */  nop
    /* 6E29C 8007FA8C 30000231 */  andi       $v0, $t0, 0x30
    /* 6E2A0 8007FA90 06004010 */  beqz       $v0, .L8007FAAC
    /* 6E2A4 8007FA94 10000231 */   andi      $v0, $t0, 0x10
    /* 6E2A8 8007FA98 2000A38F */  lw         $v1, 0x20($sp)
    /* 6E2AC 8007FA9C 02004010 */  beqz       $v0, .L8007FAA8
    /* 6E2B0 8007FAA0 00000000 */   nop
    /* 6E2B4 8007FAA4 43180300 */  sra        $v1, $v1, 1
  .L8007FAA8:
    /* 6E2B8 8007FAA8 23800302 */  subu       $s0, $s0, $v1
  .L8007FAAC:
    /* 6E2BC 8007FAAC 4000A98F */  lw         $t1, 0x40($sp)
    /* 6E2C0 8007FAB0 00000000 */  nop
    /* 6E2C4 8007FAB4 00032231 */  andi       $v0, $t1, 0x300
    /* 6E2C8 8007FAB8 07004010 */  beqz       $v0, .L8007FAD8
    /* 6E2CC 8007FABC 00012231 */   andi      $v0, $t1, 0x100
    /* 6E2D0 8007FAC0 2400A38F */  lw         $v1, 0x24($sp)
    /* 6E2D4 8007FAC4 02004010 */  beqz       $v0, .L8007FAD0
    /* 6E2D8 8007FAC8 00000000 */   nop
    /* 6E2DC 8007FACC 43180300 */  sra        $v1, $v1, 1
  .L8007FAD0:
    /* 6E2E0 8007FAD0 23882302 */  subu       $s1, $s1, $v1
    /* 6E2E4 8007FAD4 1C00B1AF */  sw         $s1, 0x1C($sp)
  .L8007FAD8:
    /* 6E2E8 8007FAD8 0D80123C */  lui        $s2, %hi(D_800C8C70)
    /* 6E2EC 8007FADC 708C528E */  lw         $s2, %lo(D_800C8C70)($s2)
    /* 6E2F0 8007FAE0 2800B0AF */  sw         $s0, 0x28($sp)
    /* 6E2F4 8007FAE4 00006292 */  lbu        $v0, 0x0($s3)
    /* 6E2F8 8007FAE8 05006382 */  lb         $v1, 0x5($s3)
    /* 6E2FC 8007FAEC 1C00A88F */  lw         $t0, 0x1C($sp)
    /* 6E300 8007FAF0 21104300 */  addu       $v0, $v0, $v1
    /* 6E304 8007FAF4 3800A2AF */  sw         $v0, 0x38($sp)
    /* 6E308 8007FAF8 0D80023C */  lui        $v0, %hi(D_800CBDC0)
    /* 6E30C 8007FAFC C0BD428C */  lw         $v0, %lo(D_800CBDC0)($v0)
    /* 6E310 8007FB00 FFFF0424 */  addiu      $a0, $zero, -0x1
    /* 6E314 8007FB04 03008412 */  beq        $s4, $a0, .L8007FB14
    /* 6E318 8007FB08 2C00A8AF */   sw        $t0, 0x2C($sp)
    /* 6E31C 8007FB0C C8FE0108 */  j          .L8007FB20
    /* 6E320 8007FB10 4800B4AF */   sw        $s4, 0x48($sp)
  .L8007FB14:
    /* 6E324 8007FB14 04006982 */  lb         $t1, 0x4($s3)
    /* 6E328 8007FB18 00000000 */  nop
    /* 6E32C 8007FB1C 4800A9AF */  sw         $t1, 0x48($sp)
  .L8007FB20:
    /* 6E330 8007FB20 0000B492 */  lbu        $s4, 0x0($s5)
    /* 6E334 8007FB24 0100B526 */  addiu      $s5, $s5, 0x1
    /* 6E338 8007FB28 04004224 */  addiu      $v0, $v0, 0x4
    /* 6E33C 8007FB2C 1800B5AF */  sw         $s5, 0x18($sp)
    /* 6E340 8007FB30 F2008012 */  beqz       $s4, .L8007FEFC
    /* 6E344 8007FB34 5800A2AF */   sw        $v0, 0x58($sp)
    /* 6E348 8007FB38 0064023C */  lui        $v0, (0x64000000 >> 16)
    /* 6E34C 8007FB3C 25B8E202 */  or         $s7, $s7, $v0
    /* 6E350 8007FB40 18006926 */  addiu      $t1, $s3, 0x18
    /* 6E354 8007FB44 2000A88F */  lw         $t0, 0x20($sp)
    /* 6E358 8007FB48 10005526 */  addiu      $s5, $s2, 0x10
    /* 6E35C 8007FB4C 5000B7AF */  sw         $s7, 0x50($sp)
    /* 6E360 8007FB50 5400A9AF */  sw         $t1, 0x54($sp)
    /* 6E364 8007FB54 43400800 */  sra        $t0, $t0, 1
    /* 6E368 8007FB58 4C00A8AF */  sw         $t0, 0x4C($sp)
    /* 6E36C 8007FB5C 08004826 */  addiu      $t0, $s2, 0x8
    /* 6E370 8007FB60 5C00A8AF */  sw         $t0, 0x5C($sp)
  .L8007FB64:
    /* 6E374 8007FB64 20000924 */  addiu      $t1, $zero, 0x20
    /* 6E378 8007FB68 3F008912 */  beq        $s4, $t1, .L8007FC68
    /* 6E37C 8007FB6C 2100822A */   slti      $v0, $s4, 0x21
    /* 6E380 8007FB70 69004010 */  beqz       $v0, .L8007FD18
    /* 6E384 8007FB74 09000824 */   addiu     $t0, $zero, 0x9
    /* 6E388 8007FB78 38008812 */  beq        $s4, $t0, .L8007FC5C
    /* 6E38C 8007FB7C 0A000924 */   addiu     $t1, $zero, 0xA
    /* 6E390 8007FB80 65008916 */  bne        $s4, $t1, .L8007FD18
    /* 6E394 8007FB84 00000000 */   nop
    /* 6E398 8007FB88 1C00A88F */  lw         $t0, 0x1C($sp)
    /* 6E39C 8007FB8C 3800A98F */  lw         $t1, 0x38($sp)
    /* 6E3A0 8007FB90 00000000 */  nop
    /* 6E3A4 8007FB94 21400901 */  addu       $t0, $t0, $t1
    /* 6E3A8 8007FB98 1C00A8AF */  sw         $t0, 0x1C($sp)
    /* 6E3AC 8007FB9C 4000A88F */  lw         $t0, 0x40($sp)
    /* 6E3B0 8007FBA0 01000924 */  addiu      $t1, $zero, 0x1
    /* 6E3B4 8007FBA4 0F000231 */  andi       $v0, $t0, 0xF
    /* 6E3B8 8007FBA8 0A004910 */  beq        $v0, $t1, .L8007FBD4
    /* 6E3BC 8007FBAC F0001131 */   andi      $s1, $t0, 0xF0
    /* 6E3C0 8007FBB0 05004010 */  beqz       $v0, .L8007FBC8
    /* 6E3C4 8007FBB4 02000824 */   addiu     $t0, $zero, 0x2
    /* 6E3C8 8007FBB8 0C004810 */  beq        $v0, $t0, .L8007FBEC
    /* 6E3CC 8007FBBC 10000924 */   addiu     $t1, $zero, 0x10
    /* 6E3D0 8007FBC0 03FF0108 */  j          .L8007FC0C
    /* 6E3D4 8007FBC4 00000000 */   nop
  .L8007FBC8:
    /* 6E3D8 8007FBC8 9000B08F */  lw         $s0, 0x90($sp)
    /* 6E3DC 8007FBCC 03FF0108 */  j          .L8007FC0C
    /* 6E3E0 8007FBD0 10000924 */   addiu     $t1, $zero, 0x10
  .L8007FBD4:
    /* 6E3E4 8007FBD4 1800A58F */  lw         $a1, 0x18($sp)
    /* 6E3E8 8007FBD8 CFFC010C */  jal        func_8007F33C
    /* 6E3EC 8007FBDC 21206002 */   addu      $a0, $s3, $zero
    /* 6E3F0 8007FBE0 4C00A98F */  lw         $t1, 0x4C($sp)
    /* 6E3F4 8007FBE4 FFFE0108 */  j          .L8007FBFC
    /* 6E3F8 8007FBE8 43100200 */   sra       $v0, $v0, 1
  .L8007FBEC:
    /* 6E3FC 8007FBEC 1800A58F */  lw         $a1, 0x18($sp)
    /* 6E400 8007FBF0 CFFC010C */  jal        func_8007F33C
    /* 6E404 8007FBF4 21206002 */   addu      $a0, $s3, $zero
    /* 6E408 8007FBF8 2000A98F */  lw         $t1, 0x20($sp)
  .L8007FBFC:
    /* 6E40C 8007FBFC 9000A88F */  lw         $t0, 0x90($sp)
    /* 6E410 8007FC00 23102201 */  subu       $v0, $t1, $v0
    /* 6E414 8007FC04 21800201 */  addu       $s0, $t0, $v0
    /* 6E418 8007FC08 10000924 */  addiu      $t1, $zero, 0x10
  .L8007FC0C:
    /* 6E41C 8007FC0C 05002912 */  beq        $s1, $t1, .L8007FC24
    /* 6E420 8007FC10 20000824 */   addiu     $t0, $zero, 0x20
    /* 6E424 8007FC14 06002812 */  beq        $s1, $t0, .L8007FC30
    /* 6E428 8007FC18 00000000 */   nop
    /* 6E42C 8007FC1C 0FFF0108 */  j          .L8007FC3C
    /* 6E430 8007FC20 00000000 */   nop
  .L8007FC24:
    /* 6E434 8007FC24 4C00A98F */  lw         $t1, 0x4C($sp)
    /* 6E438 8007FC28 0FFF0108 */  j          .L8007FC3C
    /* 6E43C 8007FC2C 23800902 */   subu      $s0, $s0, $t1
  .L8007FC30:
    /* 6E440 8007FC30 2000A88F */  lw         $t0, 0x20($sp)
    /* 6E444 8007FC34 00000000 */  nop
    /* 6E448 8007FC38 23800802 */  subu       $s0, $s0, $t0
  .L8007FC3C:
    /* 6E44C 8007FC3C 3000A98F */  lw         $t1, 0x30($sp)
    /* 6E450 8007FC40 00000000 */  nop
    /* 6E454 8007FC44 2A103E01 */  slt        $v0, $t1, $fp
    /* 6E458 8007FC48 02004010 */  beqz       $v0, .L8007FC54
    /* 6E45C 8007FC4C 00000000 */   nop
    /* 6E460 8007FC50 3000BEAF */  sw         $fp, 0x30($sp)
  .L8007FC54:
    /* 6E464 8007FC54 B9FF0108 */  j          .L8007FEE4
    /* 6E468 8007FC58 21F00000 */   addu      $fp, $zero, $zero
  .L8007FC5C:
    /* 6E46C 8007FC5C 06006292 */  lbu        $v0, 0x6($s3)
    /* 6E470 8007FC60 B7FF0108 */  j          .L8007FEDC
    /* 6E474 8007FC64 40100200 */   sll       $v0, $v0, 1
  .L8007FC68:
    /* 6E478 8007FC68 02006292 */  lbu        $v0, 0x2($s3)
    /* 6E47C 8007FC6C 00000000 */  nop
    /* 6E480 8007FC70 2100422C */  sltiu      $v0, $v0, 0x21
    /* 6E484 8007FC74 24004010 */  beqz       $v0, .L8007FD08
    /* 6E488 8007FC78 0004083C */   lui       $t0, (0x4000000 >> 16)
    /* 6E48C 8007FC7C 02006292 */  lbu        $v0, 0x2($s3)
    /* 6E490 8007FC80 000048AE */  sw         $t0, 0x0($s2)
    /* 6E494 8007FC84 5000A98F */  lw         $t1, 0x50($sp)
    /* 6E498 8007FC88 23108202 */  subu       $v0, $s4, $v0
    /* 6E49C 8007FC8C 80100200 */  sll        $v0, $v0, 2
    /* 6E4A0 8007FC90 18004224 */  addiu      $v0, $v0, 0x18
    /* 6E4A4 8007FC94 21306202 */  addu       $a2, $s3, $v0
    /* 6E4A8 8007FC98 FFFF0232 */  andi       $v0, $s0, 0xFFFF
    /* 6E4AC 8007FC9C F4FFA9AE */  sw         $t1, -0xC($s5)
    /* 6E4B0 8007FCA0 0000C394 */  lhu        $v1, 0x0($a2)
    /* 6E4B4 8007FCA4 1C00A88F */  lw         $t0, 0x1C($sp)
    /* 6E4B8 8007FCA8 3C00A98F */  lw         $t1, 0x3C($sp)
    /* 6E4BC 8007FCAC 00BC0800 */  sll        $s7, $t0, 16
    /* 6E4C0 8007FCB0 25186900 */  or         $v1, $v1, $t1
    /* 6E4C4 8007FCB4 FCFFA3AE */  sw         $v1, -0x4($s5)
    /* 6E4C8 8007FCB8 00006492 */  lbu        $a0, 0x0($s3)
    /* 6E4CC 8007FCBC 0200C590 */  lbu        $a1, 0x2($a2)
    /* 6E4D0 8007FCC0 00240400 */  sll        $a0, $a0, 16
    /* 6E4D4 8007FCC4 2528A400 */  or         $a1, $a1, $a0
    /* 6E4D8 8007FCC8 0000A5AE */  sw         $a1, 0x0($s5)
    /* 6E4DC 8007FCCC 5C00A88F */  lw         $t0, 0x5C($sp)
    /* 6E4E0 8007FCD0 25105700 */  or         $v0, $v0, $s7
    /* 6E4E4 8007FCD4 000002AD */  sw         $v0, 0x0($t0)
    /* 6E4E8 8007FCD8 5800A98F */  lw         $t1, 0x58($sp)
    /* 6E4EC 8007FCDC 00000000 */  nop
    /* 6E4F0 8007FCE0 02002489 */  lwl        $a0, 0x2($t1)
    /* 6E4F4 8007FCE4 001A1200 */  sll        $v1, $s2, 8
    /* 6E4F8 8007FCE8 020044AA */  swl        $a0, 0x2($s2)
    /* 6E4FC 8007FCEC 020023A9 */  swl        $v1, 0x2($t1)
    /* 6E500 8007FCF0 1400B526 */  addiu      $s5, $s5, 0x14
    /* 6E504 8007FCF4 14000825 */  addiu      $t0, $t0, 0x14
    /* 6E508 8007FCF8 5C00A8AF */  sw         $t0, 0x5C($sp)
    /* 6E50C 8007FCFC 0200C290 */  lbu        $v0, 0x2($a2)
    /* 6E510 8007FD00 43FF0108 */  j          .L8007FD0C
    /* 6E514 8007FD04 14005226 */   addiu     $s2, $s2, 0x14
  .L8007FD08:
    /* 6E518 8007FD08 06006292 */  lbu        $v0, 0x6($s3)
  .L8007FD0C:
    /* 6E51C 8007FD0C 4800A88F */  lw         $t0, 0x48($sp)
    /* 6E520 8007FD10 B7FF0108 */  j          .L8007FEDC
    /* 6E524 8007FD14 21104800 */   addu      $v0, $v0, $t0
  .L8007FD18:
    /* 6E528 8007FD18 02006292 */  lbu        $v0, 0x2($s3)
    /* 6E52C 8007FD1C 01006392 */  lbu        $v1, 0x1($s3)
    /* 6E530 8007FD20 23108202 */  subu       $v0, $s4, $v0
    /* 6E534 8007FD24 FF005130 */  andi       $s1, $v0, 0xFF
    /* 6E538 8007FD28 2B182302 */  sltu       $v1, $s1, $v1
    /* 6E53C 8007FD2C 6D006010 */  beqz       $v1, .L8007FEE4
    /* 6E540 8007FD30 00000000 */   nop
    /* 6E544 8007FD34 1C00A98F */  lw         $t1, 0x1C($sp)
    /* 6E548 8007FD38 08006296 */  lhu        $v0, 0x8($s3)
    /* 6E54C 8007FD3C 00000000 */  nop
    /* 6E550 8007FD40 28004010 */  beqz       $v0, .L8007FDE4
    /* 6E554 8007FD44 00BC0900 */   sll       $s7, $t1, 16
    /* 6E558 8007FD48 07006292 */  lbu        $v0, 0x7($s3)
    /* 6E55C 8007FD4C 00000000 */  nop
    /* 6E560 8007FD50 17004010 */  beqz       $v0, .L8007FDB0
    /* 6E564 8007FD54 FCFF0824 */   addiu     $t0, $zero, -0x4
    /* 6E568 8007FD58 01006492 */  lbu        $a0, 0x1($s3)
    /* 6E56C 8007FD5C 00000000 */  nop
    /* 6E570 8007FD60 18008400 */  mult       $a0, $a0
    /* 6E574 8007FD64 12100000 */  mflo       $v0
    /* 6E578 8007FD68 24104800 */  and        $v0, $v0, $t0
    /* 6E57C 8007FD6C 0B00C012 */  beqz       $s6, .L8007FD9C
    /* 6E580 8007FD70 04004524 */   addiu     $a1, $v0, 0x4
    /* 6E584 8007FD74 18009100 */  mult       $a0, $s1
    /* 6E588 8007FD78 02006292 */  lbu        $v0, 0x2($s3)
    /* 6E58C 8007FD7C 5400A88F */  lw         $t0, 0x54($sp)
    /* 6E590 8007FD80 2310C202 */  subu       $v0, $s6, $v0
    /* 6E594 8007FD84 12200000 */  mflo       $a0
    /* 6E598 8007FD88 21104400 */  addu       $v0, $v0, $a0
    /* 6E59C 8007FD8C 21100201 */  addu       $v0, $t0, $v0
    /* 6E5A0 8007FD90 00004380 */  lb         $v1, 0x0($v0)
    /* 6E5A4 8007FD94 00000000 */  nop
    /* 6E5A8 8007FD98 21800302 */  addu       $s0, $s0, $v1
  .L8007FD9C:
    /* 6E5AC 8007FD9C 80101100 */  sll        $v0, $s1, 2
    /* 6E5B0 8007FDA0 18004224 */  addiu      $v0, $v0, 0x18
    /* 6E5B4 8007FDA4 21106202 */  addu       $v0, $s3, $v0
    /* 6E5B8 8007FDA8 97FF0108 */  j          .L8007FE5C
    /* 6E5BC 8007FDAC 21304500 */   addu      $a2, $v0, $a1
  .L8007FDB0:
    /* 6E5C0 8007FDB0 0500C012 */  beqz       $s6, .L8007FDC8
    /* 6E5C4 8007FDB4 21206002 */   addu      $a0, $s3, $zero
    /* 6E5C8 8007FDB8 2128C002 */  addu       $a1, $s6, $zero
    /* 6E5CC 8007FDBC B2FC010C */  jal        func_8007F2C8
    /* 6E5D0 8007FDC0 21308002 */   addu      $a2, $s4, $zero
    /* 6E5D4 8007FDC4 21800202 */  addu       $s0, $s0, $v0
  .L8007FDC8:
    /* 6E5D8 8007FDC8 80181100 */  sll        $v1, $s1, 2
    /* 6E5DC 8007FDCC 18006324 */  addiu      $v1, $v1, 0x18
    /* 6E5E0 8007FDD0 08006296 */  lhu        $v0, 0x8($s3)
    /* 6E5E4 8007FDD4 21186302 */  addu       $v1, $s3, $v1
    /* 6E5E8 8007FDD8 80100200 */  sll        $v0, $v0, 2
    /* 6E5EC 8007FDDC 97FF0108 */  j          .L8007FE5C
    /* 6E5F0 8007FDE0 21306200 */   addu      $a2, $v1, $v0
  .L8007FDE4:
    /* 6E5F4 8007FDE4 0A006296 */  lhu        $v0, 0xA($s3)
    /* 6E5F8 8007FDE8 FFFF0934 */  ori        $t1, $zero, 0xFFFF
    /* 6E5FC 8007FDEC 19004910 */  beq        $v0, $t1, .L8007FE54
    /* 6E600 8007FDF0 80101100 */   sll       $v0, $s1, 2
    /* 6E604 8007FDF4 1700C012 */  beqz       $s6, .L8007FE54
    /* 6E608 8007FDF8 2128C002 */   addu      $a1, $s6, $zero
    /* 6E60C 8007FDFC 0D80023C */  lui        $v0, %hi(D_800C8D8C)
    /* 6E610 8007FE00 8C8D428C */  lw         $v0, %lo(D_800C8D8C)($v0)
    /* 6E614 8007FE04 07006392 */  lbu        $v1, 0x7($s3)
    /* 6E618 8007FE08 0000468C */  lw         $a2, 0x0($v0)
    /* 6E61C 8007FE0C 80180300 */  sll        $v1, $v1, 2
    /* 6E620 8007FE10 21186600 */  addu       $v1, $v1, $a2
    /* 6E624 8007FE14 0000648C */  lw         $a0, 0x0($v1)
    /* 6E628 8007FE18 CC04020C */  jal        func_80081330
    /* 6E62C 8007FE1C 21308002 */   addu      $a2, $s4, $zero
    /* 6E630 8007FE20 0B004010 */  beqz       $v0, .L8007FE50
    /* 6E634 8007FE24 00000000 */   nop
    /* 6E638 8007FE28 00006392 */  lbu        $v1, 0x0($s3)
    /* 6E63C 8007FE2C 00000000 */  nop
    /* 6E640 8007FE30 18004300 */  mult       $v0, $v1
    /* 6E644 8007FE34 12180000 */  mflo       $v1
    /* 6E648 8007FE38 0A006296 */  lhu        $v0, 0xA($s3)
    /* 6E64C 8007FE3C 00000000 */  nop
    /* 6E650 8007FE40 1A006200 */  div        $zero, $v1, $v0
    /* 6E654 8007FE44 12180000 */  mflo       $v1
    /* 6E658 8007FE48 00000000 */  nop
    /* 6E65C 8007FE4C 21800302 */  addu       $s0, $s0, $v1
  .L8007FE50:
    /* 6E660 8007FE50 80101100 */  sll        $v0, $s1, 2
  .L8007FE54:
    /* 6E664 8007FE54 18004224 */  addiu      $v0, $v0, 0x18
    /* 6E668 8007FE58 21306202 */  addu       $a2, $s3, $v0
  .L8007FE5C:
    /* 6E66C 8007FE5C 0004083C */  lui        $t0, (0x4000000 >> 16)
    /* 6E670 8007FE60 000048AE */  sw         $t0, 0x0($s2)
    /* 6E674 8007FE64 5000A98F */  lw         $t1, 0x50($sp)
    /* 6E678 8007FE68 00000000 */  nop
    /* 6E67C 8007FE6C F4FFA9AE */  sw         $t1, -0xC($s5)
    /* 6E680 8007FE70 0000C294 */  lhu        $v0, 0x0($a2)
    /* 6E684 8007FE74 3C00A88F */  lw         $t0, 0x3C($sp)
    /* 6E688 8007FE78 00000000 */  nop
    /* 6E68C 8007FE7C 25104800 */  or         $v0, $v0, $t0
    /* 6E690 8007FE80 FCFFA2AE */  sw         $v0, -0x4($s5)
    /* 6E694 8007FE84 FFFF0232 */  andi       $v0, $s0, 0xFFFF
    /* 6E698 8007FE88 00006392 */  lbu        $v1, 0x0($s3)
    /* 6E69C 8007FE8C 0200C490 */  lbu        $a0, 0x2($a2)
    /* 6E6A0 8007FE90 001C0300 */  sll        $v1, $v1, 16
    /* 6E6A4 8007FE94 25208300 */  or         $a0, $a0, $v1
    /* 6E6A8 8007FE98 0000A4AE */  sw         $a0, 0x0($s5)
    /* 6E6AC 8007FE9C 5C00A98F */  lw         $t1, 0x5C($sp)
    /* 6E6B0 8007FEA0 25105700 */  or         $v0, $v0, $s7
    /* 6E6B4 8007FEA4 000022AD */  sw         $v0, 0x0($t1)
    /* 6E6B8 8007FEA8 5800A88F */  lw         $t0, 0x58($sp)
    /* 6E6BC 8007FEAC 00000000 */  nop
    /* 6E6C0 8007FEB0 02000489 */  lwl        $a0, 0x2($t0)
    /* 6E6C4 8007FEB4 001A1200 */  sll        $v1, $s2, 8
    /* 6E6C8 8007FEB8 020044AA */  swl        $a0, 0x2($s2)
    /* 6E6CC 8007FEBC 020003A9 */  swl        $v1, 0x2($t0)
    /* 6E6D0 8007FEC0 1400B526 */  addiu      $s5, $s5, 0x14
    /* 6E6D4 8007FEC4 14002925 */  addiu      $t1, $t1, 0x14
    /* 6E6D8 8007FEC8 5C00A9AF */  sw         $t1, 0x5C($sp)
    /* 6E6DC 8007FECC 0200C290 */  lbu        $v0, 0x2($a2)
    /* 6E6E0 8007FED0 4800A98F */  lw         $t1, 0x48($sp)
    /* 6E6E4 8007FED4 14005226 */  addiu      $s2, $s2, 0x14
    /* 6E6E8 8007FED8 21104900 */  addu       $v0, $v0, $t1
  .L8007FEDC:
    /* 6E6EC 8007FEDC 21800202 */  addu       $s0, $s0, $v0
    /* 6E6F0 8007FEE0 21F0C203 */  addu       $fp, $fp, $v0
  .L8007FEE4:
    /* 6E6F4 8007FEE4 1800A88F */  lw         $t0, 0x18($sp)
    /* 6E6F8 8007FEE8 21B08002 */  addu       $s6, $s4, $zero
    /* 6E6FC 8007FEEC 00001491 */  lbu        $s4, 0x0($t0)
    /* 6E700 8007FEF0 01000825 */  addiu      $t0, $t0, 0x1
    /* 6E704 8007FEF4 1BFF8016 */  bnez       $s4, .L8007FB64
    /* 6E708 8007FEF8 1800A8AF */   sw        $t0, 0x18($sp)
  .L8007FEFC:
    /* 6E70C 8007FEFC 00E1053C */  lui        $a1, (0xE1000200 >> 16)
    /* 6E710 8007FF00 16006296 */  lhu        $v0, 0x16($s3)
    /* 6E714 8007FF04 0001033C */  lui        $v1, (0x1000000 >> 16)
    /* 6E718 8007FF08 000043AE */  sw         $v1, 0x0($s2)
    /* 6E71C 8007FF0C 4400A98F */  lw         $t1, 0x44($sp)
    /* 6E720 8007FF10 0002A534 */  ori        $a1, $a1, (0xE1000200 & 0xFFFF)
    /* 6E724 8007FF14 03002631 */  andi       $a2, $t1, 0x3
    /* 6E728 8007FF18 40210600 */  sll        $a0, $a2, 5
    /* 6E72C 8007FF1C 9F014230 */  andi       $v0, $v0, 0x19F
    /* 6E730 8007FF20 25104400 */  or         $v0, $v0, $a0
    /* 6E734 8007FF24 25104500 */  or         $v0, $v0, $a1
    /* 6E738 8007FF28 040042AE */  sw         $v0, 0x4($s2)
    /* 6E73C 8007FF2C 5800A88F */  lw         $t0, 0x58($sp)
    /* 6E740 8007FF30 00000000 */  nop
    /* 6E744 8007FF34 02000489 */  lwl        $a0, 0x2($t0)
    /* 6E748 8007FF38 001A1200 */  sll        $v1, $s2, 8
    /* 6E74C 8007FF3C 020044AA */  swl        $a0, 0x2($s2)
    /* 6E750 8007FF40 020003A9 */  swl        $v1, 0x2($t0)
    /* 6E754 8007FF44 4000A98F */  lw         $t1, 0x40($sp)
    /* 6E758 8007FF48 00000000 */  nop
    /* 6E75C 8007FF4C 10002015 */  bnez       $t1, .L8007FF90
    /* 6E760 8007FF50 08005226 */   addiu     $s2, $s2, 0x8
    /* 6E764 8007FF54 3000A88F */  lw         $t0, 0x30($sp)
    /* 6E768 8007FF58 00000000 */  nop
    /* 6E76C 8007FF5C 2A101E01 */  slt        $v0, $t0, $fp
    /* 6E770 8007FF60 02004010 */  beqz       $v0, .L8007FF6C
    /* 6E774 8007FF64 00000000 */   nop
    /* 6E778 8007FF68 3000BEAF */  sw         $fp, 0x30($sp)
  .L8007FF6C:
    /* 6E77C 8007FF6C 3800A98F */  lw         $t1, 0x38($sp)
    /* 6E780 8007FF70 00000000 */  nop
    /* 6E784 8007FF74 02002019 */  blez       $t1, .L8007FF80
    /* 6E788 8007FF78 00000000 */   nop
    /* 6E78C 8007FF7C 3400A9AF */  sw         $t1, 0x34($sp)
  .L8007FF80:
    /* 6E790 8007FF80 3000A88F */  lw         $t0, 0x30($sp)
    /* 6E794 8007FF84 3400A98F */  lw         $t1, 0x34($sp)
    /* 6E798 8007FF88 2000A8AF */  sw         $t0, 0x20($sp)
    /* 6E79C 8007FF8C 2400A9AF */  sw         $t1, 0x24($sp)
  .L8007FF90:
    /* 6E7A0 8007FF90 00E1043C */  lui        $a0, (0xE1000200 >> 16)
    /* 6E7A4 8007FF94 00028434 */  ori        $a0, $a0, (0xE1000200 & 0xFFFF)
    /* 6E7A8 8007FF98 0001033C */  lui        $v1, (0x1000000 >> 16)
    /* 6E7AC 8007FF9C 40110600 */  sll        $v0, $a2, 5
    /* 6E7B0 8007FFA0 25104400 */  or         $v0, $v0, $a0
    /* 6E7B4 8007FFA4 000043AE */  sw         $v1, 0x0($s2)
    /* 6E7B8 8007FFA8 040042AE */  sw         $v0, 0x4($s2)
    /* 6E7BC 8007FFAC 0D80033C */  lui        $v1, %hi(D_800CBDC0)
    /* 6E7C0 8007FFB0 C0BD638C */  lw         $v1, %lo(D_800CBDC0)($v1)
    /* 6E7C4 8007FFB4 0D80013C */  lui        $at, %hi(D_800C8C70)
    /* 6E7C8 8007FFB8 708C32AC */  sw         $s2, %lo(D_800C8C70)($at)
    /* 6E7CC 8007FFBC 04006324 */  addiu      $v1, $v1, 0x4
    /* 6E7D0 8007FFC0 02006688 */  lwl        $a2, 0x2($v1)
    /* 6E7D4 8007FFC4 002A1200 */  sll        $a1, $s2, 8
    /* 6E7D8 8007FFC8 020046AA */  swl        $a2, 0x2($s2)
    /* 6E7DC 8007FFCC 020065A8 */  swl        $a1, 0x2($v1)
    /* 6E7E0 8007FFD0 21204002 */  addu       $a0, $s2, $zero
    /* 6E7E4 8007FFD4 2400A88F */  lw         $t0, 0x24($sp)
    /* 6E7E8 8007FFD8 2000A98F */  lw         $t1, 0x20($sp)
    /* 6E7EC 8007FFDC 8400BF8F */  lw         $ra, 0x84($sp)
    /* 6E7F0 8007FFE0 8000BE8F */  lw         $fp, 0x80($sp)
    /* 6E7F4 8007FFE4 7C00B78F */  lw         $s7, 0x7C($sp)
    /* 6E7F8 8007FFE8 7800B68F */  lw         $s6, 0x78($sp)
    /* 6E7FC 8007FFEC 7400B58F */  lw         $s5, 0x74($sp)
    /* 6E800 8007FFF0 7000B48F */  lw         $s4, 0x70($sp)
    /* 6E804 8007FFF4 6C00B38F */  lw         $s3, 0x6C($sp)
    /* 6E808 8007FFF8 6800B28F */  lw         $s2, 0x68($sp)
    /* 6E80C 8007FFFC 6400B18F */  lw         $s1, 0x64($sp)
    /* 6E810 80080000 6000B08F */  lw         $s0, 0x60($sp)
    /* 6E814 80080004 00140800 */  sll        $v0, $t0, 16
    /* 6E818 80080008 25102201 */  or         $v0, $t1, $v0
    /* 6E81C 8008000C 2800A88F */  lw         $t0, 0x28($sp)
    /* 6E820 80080010 2C00A98F */  lw         $t1, 0x2C($sp)
    /* 6E824 80080014 E87588A7 */  sh         $t0, %gp_rel(D_800CBCD8)($gp)
    /* 6E828 80080018 2000A88F */  lw         $t0, 0x20($sp)
    /* 6E82C 8008001C EA7589A7 */  sh         $t1, %gp_rel(D_800CBCDA)($gp)
    /* 6E830 80080020 2400A98F */  lw         $t1, 0x24($sp)
    /* 6E834 80080024 08008424 */  addiu      $a0, $a0, 0x8
    /* 6E838 80080028 0D80013C */  lui        $at, %hi(D_800C8C70)
    /* 6E83C 8008002C 708C24AC */  sw         $a0, %lo(D_800C8C70)($at)
    /* 6E840 80080030 EC7588A7 */  sh         $t0, %gp_rel(D_800CBCDC)($gp)
    /* 6E844 80080034 EE7589A7 */  sh         $t1, %gp_rel(D_800CBCDE)($gp)
    /* 6E848 80080038 0800E003 */  jr         $ra
    /* 6E84C 8008003C 8800BD27 */   addiu     $sp, $sp, 0x88
endlabel func_8007F948
