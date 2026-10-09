nonmatching func_8001E240, 0x218

glabel func_8001E240
    /* CA50 8001E240 F0FEBD27 */  addiu      $sp, $sp, -0x110
    /* CA54 8001E244 21C08000 */  addu       $t8, $a0, $zero
    /* CA58 8001E248 21C8A000 */  addu       $t9, $a1, $zero
    /* CA5C 8001E24C 0001B0AF */  sw         $s0, 0x100($sp)
    /* CA60 8001E250 2180C000 */  addu       $s0, $a2, $zero
    /* CA64 8001E254 0401B1AF */  sw         $s1, 0x104($sp)
    /* CA68 8001E258 2188E000 */  addu       $s1, $a3, $zero
    /* CA6C 8001E25C 11000224 */  addiu      $v0, $zero, 0x11
    /* CA70 8001E260 FFFF0324 */  addiu      $v1, $zero, -0x1
    /* CA74 8001E264 0801BFAF */  sw         $ra, 0x108($sp)
    /* CA78 8001E268 FFFF4224 */  addiu      $v0, $v0, -0x1
  .L8001E26C:
    /* CA7C 8001E26C FFFF4314 */  bne        $v0, $v1, .L8001E26C
    /* CA80 8001E270 FFFF4224 */   addiu     $v0, $v0, -0x1
    /* CA84 8001E274 FC000C8F */  lw         $t4, 0xFC($t8)
    /* CA88 8001E278 6401028F */  lw         $v0, 0x164($t8)
    /* CA8C 8001E27C 00000000 */  nop
    /* CA90 8001E280 1A008201 */  div        $zero, $t4, $v0
    /* CA94 8001E284 12600000 */  mflo       $t4
    /* CA98 8001E288 04010A8F */  lw         $t2, 0x104($t8)
    /* CA9C 8001E28C 00000000 */  nop
    /* CAA0 8001E290 1A004201 */  div        $zero, $t2, $v0
    /* CAA4 8001E294 12500000 */  mflo       $t2
    /* CAA8 8001E298 2C010B8F */  lw         $t3, 0x12C($t8)
    /* CAAC 8001E29C 00000000 */  nop
    /* CAB0 8001E2A0 1A006201 */  div        $zero, $t3, $v0
    /* CAB4 8001E2A4 12580000 */  mflo       $t3
    /* CAB8 8001E2A8 3401098F */  lw         $t1, 0x134($t8)
    /* CABC 8001E2AC 00000000 */  nop
    /* CAC0 8001E2B0 1A002201 */  div        $zero, $t1, $v0
    /* CAC4 8001E2B4 12480000 */  mflo       $t1
    /* CAC8 8001E2B8 0801068F */  lw         $a2, 0x108($t8)
    /* CACC 8001E2BC 00000000 */  nop
    /* CAD0 8001E2C0 1A00C200 */  div        $zero, $a2, $v0
    /* CAD4 8001E2C4 12300000 */  mflo       $a2
    /* CAD8 8001E2C8 1001038F */  lw         $v1, 0x110($t8)
    /* CADC 8001E2CC 00000000 */  nop
    /* CAE0 8001E2D0 1A006200 */  div        $zero, $v1, $v0
    /* CAE4 8001E2D4 12180000 */  mflo       $v1
    /* CAE8 8001E2D8 2001088F */  lw         $t0, 0x120($t8)
    /* CAEC 8001E2DC 00000000 */  nop
    /* CAF0 8001E2E0 1A000201 */  div        $zero, $t0, $v0
    /* CAF4 8001E2E4 12400000 */  mflo       $t0
    /* CAF8 8001E2E8 2801078F */  lw         $a3, 0x128($t8)
    /* CAFC 8001E2EC 00000000 */  nop
    /* CB00 8001E2F0 1A00E200 */  div        $zero, $a3, $v0
    /* CB04 8001E2F4 12380000 */  mflo       $a3
    /* CB08 8001E2F8 D800058F */  lw         $a1, 0xD8($t8)
    /* CB0C 8001E2FC 00000000 */  nop
    /* CB10 8001E300 1A00A200 */  div        $zero, $a1, $v0
    /* CB14 8001E304 12280000 */  mflo       $a1
    /* CB18 8001E308 E000048F */  lw         $a0, 0xE0($t8)
    /* CB1C 8001E30C 00000000 */  nop
    /* CB20 8001E310 1A008200 */  div        $zero, $a0, $v0
    /* CB24 8001E314 12200000 */  mflo       $a0
    /* CB28 8001E318 CC000D8F */  lw         $t5, 0xCC($t8)
    /* CB2C 8001E31C 00000000 */  nop
    /* CB30 8001E320 1A00A201 */  div        $zero, $t5, $v0
    /* CB34 8001E324 12680000 */  mflo       $t5
    /* CB38 8001E328 2800ACAF */  sw         $t4, 0x28($sp)
    /* CB3C 8001E32C 3000AAAF */  sw         $t2, 0x30($sp)
    /* CB40 8001E330 3400ABAF */  sw         $t3, 0x34($sp)
    /* CB44 8001E334 3C00A9AF */  sw         $t1, 0x3C($sp)
    /* CB48 8001E338 4000A6AF */  sw         $a2, 0x40($sp)
    /* CB4C 8001E33C 4C00ACAF */  sw         $t4, 0x4C($sp)
    /* CB50 8001E340 5400AAAF */  sw         $t2, 0x54($sp)
    /* CB54 8001E344 6400ABAF */  sw         $t3, 0x64($sp)
    /* CB58 8001E348 6C00A9AF */  sw         $t1, 0x6C($sp)
    /* CB5C 8001E34C 7C00ABAF */  sw         $t3, 0x7C($sp)
    /* CB60 8001E350 8400A9AF */  sw         $t1, 0x84($sp)
    /* CB64 8001E354 4800A3AF */  sw         $v1, 0x48($sp)
    /* CB68 8001E358 5800A8AF */  sw         $t0, 0x58($sp)
    /* CB6C 8001E35C 6000A7AF */  sw         $a3, 0x60($sp)
    /* CB70 8001E360 7000A5AF */  sw         $a1, 0x70($sp)
    /* CB74 8001E364 8800A8AF */  sw         $t0, 0x88($sp)
    /* CB78 8001E368 9000A7AF */  sw         $a3, 0x90($sp)
    /* CB7C 8001E36C 9400A5AF */  sw         $a1, 0x94($sp)
    /* CB80 8001E370 A000A8AF */  sw         $t0, 0xA0($sp)
    /* CB84 8001E374 7800A4AF */  sw         $a0, 0x78($sp)
    /* CB88 8001E378 9C00A4AF */  sw         $a0, 0x9C($sp)
    /* CB8C 8001E37C A800A7AF */  sw         $a3, 0xA8($sp)
    /* CB90 8001E380 AC00ADAF */  sw         $t5, 0xAC($sp)
    /* CB94 8001E384 D400068F */  lw         $a2, 0xD4($t8)
    /* CB98 8001E388 00000000 */  nop
    /* CB9C 8001E38C 1A00C200 */  div        $zero, $a2, $v0
    /* CBA0 8001E390 12300000 */  mflo       $a2
    /* CBA4 8001E394 E400088F */  lw         $t0, 0xE4($t8)
    /* CBA8 8001E398 00000000 */  nop
    /* CBAC 8001E39C 1A000201 */  div        $zero, $t0, $v0
    /* CBB0 8001E3A0 12400000 */  mflo       $t0
    /* CBB4 8001E3A4 EC00078F */  lw         $a3, 0xEC($t8)
    /* CBB8 8001E3A8 00000000 */  nop
    /* CBBC 8001E3AC 1A00E200 */  div        $zero, $a3, $v0
    /* CBC0 8001E3B0 12380000 */  mflo       $a3
    /* CBC4 8001E3B4 F0000A8F */  lw         $t2, 0xF0($t8)
    /* CBC8 8001E3B8 00000000 */  nop
    /* CBCC 8001E3BC 1A004201 */  div        $zero, $t2, $v0
    /* CBD0 8001E3C0 12500000 */  mflo       $t2
    /* CBD4 8001E3C4 F800098F */  lw         $t1, 0xF8($t8)
    /* CBD8 8001E3C8 00000000 */  nop
    /* CBDC 8001E3CC 1A002201 */  div        $zero, $t1, $v0
    /* CBE0 8001E3D0 12480000 */  mflo       $t1
    /* CBE4 8001E3D4 C000A4AF */  sw         $a0, 0xC0($sp)
    /* CBE8 8001E3D8 E400A4AF */  sw         $a0, 0xE4($sp)
    /* CBEC 8001E3DC 2001A28F */  lw         $v0, 0x120($sp)
    /* CBF0 8001E3E0 2401A38F */  lw         $v1, 0x124($sp)
    /* CBF4 8001E3E4 21200003 */  addu       $a0, $t8, $zero
    /* CBF8 8001E3E8 B800A5AF */  sw         $a1, 0xB8($sp)
    /* CBFC 8001E3EC DC00A5AF */  sw         $a1, 0xDC($sp)
    /* CC00 8001E3F0 1000A2AF */  sw         $v0, 0x10($sp)
    /* CC04 8001E3F4 2801A28F */  lw         $v0, 0x128($sp)
    /* CC08 8001E3F8 21282003 */  addu       $a1, $t9, $zero
    /* CC0C 8001E3FC C400ADAF */  sw         $t5, 0xC4($sp)
    /* CC10 8001E400 1400A3AF */  sw         $v1, 0x14($sp)
    /* CC14 8001E404 2800A327 */  addiu      $v1, $sp, 0x28
    /* CC18 8001E408 1C00A3AF */  sw         $v1, 0x1C($sp)
    /* CC1C 8001E40C 1800A2AF */  sw         $v0, 0x18($sp)
    /* CC20 8001E410 06000224 */  addiu      $v0, $zero, 0x6
    /* CC24 8001E414 2000A2AF */  sw         $v0, 0x20($sp)
    /* CC28 8001E418 B400A6AF */  sw         $a2, 0xB4($sp)
    /* CC2C 8001E41C CC00A6AF */  sw         $a2, 0xCC($sp)
    /* CC30 8001E420 21300002 */  addu       $a2, $s0, $zero
    /* CC34 8001E424 D800A7AF */  sw         $a3, 0xD8($sp)
    /* CC38 8001E428 F000A7AF */  sw         $a3, 0xF0($sp)
    /* CC3C 8001E42C 21382002 */  addu       $a3, $s1, $zero
    /* CC40 8001E430 D000A8AF */  sw         $t0, 0xD0($sp)
    /* CC44 8001E434 E800A8AF */  sw         $t0, 0xE8($sp)
    /* CC48 8001E438 F400AAAF */  sw         $t2, 0xF4($sp)
    /* CC4C 8001E43C 1679000C */  jal        func_8001E458
    /* CC50 8001E440 FC00A9AF */   sw        $t1, 0xFC($sp)
    /* CC54 8001E444 0801BF8F */  lw         $ra, 0x108($sp)
    /* CC58 8001E448 0401B18F */  lw         $s1, 0x104($sp)
    /* CC5C 8001E44C 0001B08F */  lw         $s0, 0x100($sp)
    /* CC60 8001E450 0800E003 */  jr         $ra
    /* CC64 8001E454 1001BD27 */   addiu     $sp, $sp, 0x110
endlabel func_8001E240
