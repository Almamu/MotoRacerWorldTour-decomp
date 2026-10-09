nonmatching func_800A195C, 0x1F0

glabel func_800A195C
    /* 9016C 800A195C 18FFBD27 */  addiu      $sp, $sp, -0xE8
    /* 90170 800A1960 E000BFAF */  sw         $ra, 0xE0($sp)
    /* 90174 800A1964 DC00B1AF */  sw         $s1, 0xDC($sp)
    /* 90178 800A1968 4F5E020C */  jal        func_8009793C
    /* 9017C 800A196C D800B0AF */   sw        $s0, 0xD8($sp)
    /* 90180 800A1970 0D80043C */  lui        $a0, %hi(D_800D4898)
    /* 90184 800A1974 98488424 */  addiu      $a0, $a0, %lo(D_800D4898)
    /* 90188 800A1978 3183020C */  jal        func_800A0CC4
    /* 9018C 800A197C 01001024 */   addiu     $s0, $zero, 0x1
    /* 90190 800A1980 38AB020C */  jal        ResetCallback
    /* 90194 800A1984 00000000 */   nop
    /* 90198 800A1988 E4B8020C */  jal        InitGeom
    /* 9019C 800A198C 00000000 */   nop
    /* 901A0 800A1990 21200000 */  addu       $a0, $zero, $zero
    /* 901A4 800A1994 FCBA020C */  jal        func_800AEBF0
    /* 901A8 800A1998 02000524 */   addiu     $a1, $zero, 0x2
    /* 901AC 800A199C E3BE020C */  jal        func_800AFB8C
    /* 901B0 800A19A0 16000424 */   addiu     $a0, $zero, 0x16
    /* 901B4 800A19A4 96C0020C */  jal        func_800B0258
    /* 901B8 800A19A8 01000424 */   addiu     $a0, $zero, 0x1
    /* 901BC 800A19AC 0487020C */  jal        func_800A1C10
    /* 901C0 800A19B0 21200000 */   addu      $a0, $zero, $zero
    /* 901C4 800A19B4 0A80043C */  lui        $a0, %hi(func_800A1654)
    /* 901C8 800A19B8 9E55000C */  jal        func_80015678
    /* 901CC 800A19BC 54168424 */   addiu     $a0, $a0, %lo(func_800A1654)
    /* 901D0 800A19C0 0D80043C */  lui        $a0, %hi(D_800CABC0)
    /* 901D4 800A19C4 C0AB8424 */  addiu      $a0, $a0, %lo(D_800CABC0)
    /* 901D8 800A19C8 0D80013C */  lui        $at, %hi(D_800C9D3C)
    /* 901DC 800A19CC 3C9D30A0 */  sb         $s0, %lo(D_800C9D3C)($at)
    /* 901E0 800A19D0 3014010C */  jal        func_800450C0
    /* 901E4 800A19D4 01000524 */   addiu     $a1, $zero, 0x1
    /* 901E8 800A19D8 709C020C */  jal        __builtin_new
    /* 901EC 800A19DC 20000424 */   addiu     $a0, $zero, 0x20
    /* 901F0 800A19E0 21204000 */  addu       $a0, $v0, $zero
    /* 901F4 800A19E4 FFFF0524 */  addiu      $a1, $zero, -0x1
    /* 901F8 800A19E8 FFFF0624 */  addiu      $a2, $zero, -0x1
    /* 901FC 800A19EC 00020724 */  addiu      $a3, $zero, 0x200
    /* 90200 800A19F0 00010224 */  addiu      $v0, $zero, 0x100
    /* 90204 800A19F4 06000324 */  addiu      $v1, $zero, 0x6
    /* 90208 800A19F8 1000A2AF */  sw         $v0, 0x10($sp)
    /* 9020C 800A19FC 6AE3010C */  jal        func_80078DA8
    /* 90210 800A1A00 1400A3AF */   sw        $v1, 0x14($sp)
    /* 90214 800A1A04 0D80043C */  lui        $a0, %hi(D_800CBC94)
    /* 90218 800A1A08 94BC8424 */  addiu      $a0, $a0, %lo(D_800CBC94)
    /* 9021C 800A1A0C 21884000 */  addu       $s1, $v0, $zero
    /* 90220 800A1A10 D7E3010C */  jal        func_80078F5C
    /* 90224 800A1A14 21282002 */   addu      $a1, $s1, $zero
    /* 90228 800A1A18 04000324 */  addiu      $v1, $zero, 0x4
    /* 9022C 800A1A1C 1000A3AF */  sw         $v1, 0x10($sp)
    /* 90230 800A1A20 0400228E */  lw         $v0, 0x4($s1)
    /* 90234 800A1A24 0E000524 */  addiu      $a1, $zero, 0xE
    /* 90238 800A1A28 0C00448C */  lw         $a0, 0xC($v0)
    /* 9023C 800A1A2C 02000624 */  addiu      $a2, $zero, 0x2
    /* 90240 800A1A30 1400A4AF */  sw         $a0, 0x14($sp)
    /* 90244 800A1A34 0400238E */  lw         $v1, 0x4($s1)
    /* 90248 800A1A38 44000224 */  addiu      $v0, $zero, 0x44
    /* 9024C 800A1A3C 1000648C */  lw         $a0, 0x10($v1)
    /* 90250 800A1A40 02000324 */  addiu      $v1, $zero, 0x2
    /* 90254 800A1A44 2000A2AF */  sw         $v0, 0x20($sp)
    /* 90258 800A1A48 07000224 */  addiu      $v0, $zero, 0x7
    /* 9025C 800A1A4C 1C00B0AF */  sw         $s0, 0x1C($sp)
    /* 90260 800A1A50 2400A3AF */  sw         $v1, 0x24($sp)
    /* 90264 800A1A54 2800A0AF */  sw         $zero, 0x28($sp)
    /* 90268 800A1A58 2C00A3AF */  sw         $v1, 0x2C($sp)
    /* 9026C 800A1A5C 3000A0AF */  sw         $zero, 0x30($sp)
    /* 90270 800A1A60 3400A2AF */  sw         $v0, 0x34($sp)
    /* 90274 800A1A64 3800B0AF */  sw         $s0, 0x38($sp)
    /* 90278 800A1A68 3C00A3AF */  sw         $v1, 0x3C($sp)
    /* 9027C 800A1A6C 4000B0AF */  sw         $s0, 0x40($sp)
    /* 90280 800A1A70 4400A3AF */  sw         $v1, 0x44($sp)
    /* 90284 800A1A74 4800B0AF */  sw         $s0, 0x48($sp)
    /* 90288 800A1A78 4C00A3AF */  sw         $v1, 0x4C($sp)
    /* 9028C 800A1A7C 5000B0AF */  sw         $s0, 0x50($sp)
    /* 90290 800A1A80 5400A3AF */  sw         $v1, 0x54($sp)
    /* 90294 800A1A84 5800B0AF */  sw         $s0, 0x58($sp)
    /* 90298 800A1A88 5C00A3AF */  sw         $v1, 0x5C($sp)
    /* 9029C 800A1A8C 6000B0AF */  sw         $s0, 0x60($sp)
    /* 902A0 800A1A90 6400A3AF */  sw         $v1, 0x64($sp)
    /* 902A4 800A1A94 6800B0AF */  sw         $s0, 0x68($sp)
    /* 902A8 800A1A98 6C00A2AF */  sw         $v0, 0x6C($sp)
    /* 902AC 800A1A9C 7000B0AF */  sw         $s0, 0x70($sp)
    /* 902B0 800A1AA0 7400A3AF */  sw         $v1, 0x74($sp)
    /* 902B4 800A1AA4 7800A0AF */  sw         $zero, 0x78($sp)
    /* 902B8 800A1AA8 7C00A3AF */  sw         $v1, 0x7C($sp)
    /* 902BC 800A1AAC 8000A0AF */  sw         $zero, 0x80($sp)
    /* 902C0 800A1AB0 1800A4AF */  sw         $a0, 0x18($sp)
    /* 902C4 800A1AB4 8400A3AF */  sw         $v1, 0x84($sp)
    /* 902C8 800A1AB8 AC00A2AF */  sw         $v0, 0xAC($sp)
    /* 902CC 800A1ABC 00080224 */  addiu      $v0, $zero, 0x800
    /* 902D0 800A1AC0 8C00A3AF */  sw         $v1, 0x8C($sp)
    /* 902D4 800A1AC4 9400A3AF */  sw         $v1, 0x94($sp)
    /* 902D8 800A1AC8 9C00A3AF */  sw         $v1, 0x9C($sp)
    /* 902DC 800A1ACC A400A3AF */  sw         $v1, 0xA4($sp)
    /* 902E0 800A1AD0 B400A3AF */  sw         $v1, 0xB4($sp)
    /* 902E4 800A1AD4 BC00A3AF */  sw         $v1, 0xBC($sp)
    /* 902E8 800A1AD8 C400A3AF */  sw         $v1, 0xC4($sp)
    /* 902EC 800A1ADC C0000324 */  addiu      $v1, $zero, 0xC0
    /* 902F0 800A1AE0 8800A0AF */  sw         $zero, 0x88($sp)
    /* 902F4 800A1AE4 9000A0AF */  sw         $zero, 0x90($sp)
    /* 902F8 800A1AE8 9800A0AF */  sw         $zero, 0x98($sp)
    /* 902FC 800A1AEC A000A0AF */  sw         $zero, 0xA0($sp)
    /* 90300 800A1AF0 A800A0AF */  sw         $zero, 0xA8($sp)
    /* 90304 800A1AF4 B000B0AF */  sw         $s0, 0xB0($sp)
    /* 90308 800A1AF8 B800A0AF */  sw         $zero, 0xB8($sp)
    /* 9030C 800A1AFC C000A0AF */  sw         $zero, 0xC0($sp)
    /* 90310 800A1B00 C800A0AF */  sw         $zero, 0xC8($sp)
    /* 90314 800A1B04 CC00A2AF */  sw         $v0, 0xCC($sp)
    /* 90318 800A1B08 D000A3AF */  sw         $v1, 0xD0($sp)
    /* 9031C 800A1B0C 0400248E */  lw         $a0, 0x4($s1)
    /* 90320 800A1B10 1EE3010C */  jal        func_80078C78
    /* 90324 800A1B14 08000724 */   addiu     $a3, $zero, 0x8
    /* 90328 800A1B18 0400238E */  lw         $v1, 0x4($s1)
    /* 9032C 800A1B1C 0D80013C */  lui        $at, %hi(D_800C886C)
    /* 90330 800A1B20 6C8823AC */  sw         $v1, %lo(D_800C886C)($at)
    /* 90334 800A1B24 56B9020C */  jal        SetGeomScreen
    /* 90338 800A1B28 00010424 */   addiu     $a0, $zero, 0x100
    /* 9033C 800A1B2C A081020C */  jal        func_800A0680
    /* 90340 800A1B30 00000000 */   nop
    /* 90344 800A1B34 E000BF8F */  lw         $ra, 0xE0($sp)
    /* 90348 800A1B38 DC00B18F */  lw         $s1, 0xDC($sp)
    /* 9034C 800A1B3C D800B08F */  lw         $s0, 0xD8($sp)
    /* 90350 800A1B40 01000224 */  addiu      $v0, $zero, 0x1
    /* 90354 800A1B44 0800E003 */  jr         $ra
    /* 90358 800A1B48 E800BD27 */   addiu     $sp, $sp, 0xE8
endlabel func_800A195C
