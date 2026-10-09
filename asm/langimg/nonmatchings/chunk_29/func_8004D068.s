nonmatching func_8004D068, 0x298

glabel func_8004D068
    /* 3B878 8004D068 18FFBD27 */  addiu      $sp, $sp, -0xE8
    /* 3B87C 8004D06C DC00B3AF */  sw         $s3, 0xDC($sp)
    /* 3B880 8004D070 21988000 */  addu       $s3, $a0, $zero
    /* 3B884 8004D074 D000B0AF */  sw         $s0, 0xD0($sp)
    /* 3B888 8004D078 80800500 */  sll        $s0, $a1, 2
    /* 3B88C 8004D07C 74046226 */  addiu      $v0, $s3, 0x474
    /* 3B890 8004D080 E000B4AF */  sw         $s4, 0xE0($sp)
    /* 3B894 8004D084 21A05000 */  addu       $s4, $v0, $s0
    /* 3B898 8004D088 E400BFAF */  sw         $ra, 0xE4($sp)
    /* 3B89C 8004D08C D800B2AF */  sw         $s2, 0xD8($sp)
    /* 3B8A0 8004D090 D400B1AF */  sw         $s1, 0xD4($sp)
    /* 3B8A4 8004D094 0000828E */  lw         $v0, 0x0($s4)
    /* 3B8A8 8004D098 00000000 */  nop
    /* 3B8AC 8004D09C 7F004010 */  beqz       $v0, .L8004D29C
    /* 3B8B0 8004D0A0 4000B227 */   addiu     $s2, $sp, 0x40
    /* 3B8B4 8004D0A4 3400458C */  lw         $a1, 0x34($v0)
    /* 3B8B8 8004D0A8 D560020C */  jal        func_80098354
    /* 3B8BC 8004D0AC 21204002 */   addu      $a0, $s2, $zero
    /* 3B8C0 8004D0B0 21107002 */  addu       $v0, $s3, $s0
    /* 3B8C4 8004D0B4 21184000 */  addu       $v1, $v0, $zero
    /* 3B8C8 8004D0B8 3C04518C */  lw         $s1, 0x43C($v0)
    /* 3B8CC 8004D0BC 0004648C */  lw         $a0, 0x400($v1)
    /* 3B8D0 8004D0C0 A000A527 */  addiu      $a1, $sp, 0xA0
    /* 3B8D4 8004D0C4 4000A98F */  lw         $t1, 0x40($sp)
    /* 3B8D8 8004D0C8 4400AA8F */  lw         $t2, 0x44($sp)
    /* 3B8DC 8004D0CC 4800AB8F */  lw         $t3, 0x48($sp)
    /* 3B8E0 8004D0D0 4C00AC8F */  lw         $t4, 0x4C($sp)
    /* 3B8E4 8004D0D4 2000A9AF */  sw         $t1, 0x20($sp)
    /* 3B8E8 8004D0D8 2400AAAF */  sw         $t2, 0x24($sp)
    /* 3B8EC 8004D0DC 2800ABAF */  sw         $t3, 0x28($sp)
    /* 3B8F0 8004D0E0 2C00ACAF */  sw         $t4, 0x2C($sp)
    /* 3B8F4 8004D0E4 5000A98F */  lw         $t1, 0x50($sp)
    /* 3B8F8 8004D0E8 5400AA8F */  lw         $t2, 0x54($sp)
    /* 3B8FC 8004D0EC 5800AB8F */  lw         $t3, 0x58($sp)
    /* 3B900 8004D0F0 5C00AC8F */  lw         $t4, 0x5C($sp)
    /* 3B904 8004D0F4 3000A9AF */  sw         $t1, 0x30($sp)
    /* 3B908 8004D0F8 3400AAAF */  sw         $t2, 0x34($sp)
    /* 3B90C 8004D0FC 3800ABAF */  sw         $t3, 0x38($sp)
    /* 3B910 8004D100 3C00ACAF */  sw         $t4, 0x3C($sp)
    /* 3B914 8004D104 400124AE */  sw         $a0, 0x140($s1)
    /* 3B918 8004D108 0804468C */  lw         $a2, 0x408($v0)
    /* 3B91C 8004D10C 2000B027 */  addiu      $s0, $sp, 0x20
    /* 3B920 8004D110 440126AE */  sw         $a2, 0x144($s1)
    /* 3B924 8004D114 F803628C */  lw         $v0, 0x3F8($v1)
    /* 3B928 8004D118 8000A427 */  addiu      $a0, $sp, 0x80
    /* 3B92C 8004D11C 23100200 */  negu       $v0, $v0
    /* 3B930 8004D120 500122AE */  sw         $v0, 0x150($s1)
    /* 3B934 8004D124 A000A0A7 */  sh         $zero, 0xA0($sp)
    /* 3B938 8004D128 A200A6A7 */  sh         $a2, 0xA2($sp)
    /* 3B93C 8004D12C 963F010C */  jal        func_8004FE58
    /* 3B940 8004D130 A400A0A7 */   sh        $zero, 0xA4($sp)
    /* 3B944 8004D134 21200002 */  addu       $a0, $s0, $zero
    /* 3B948 8004D138 8000A527 */  addiu      $a1, $sp, 0x80
    /* 3B94C 8004D13C 6000A627 */  addiu      $a2, $sp, 0x60
    /* 3B950 8004D140 9C00A0AF */  sw         $zero, 0x9C($sp)
    /* 3B954 8004D144 9800A0AF */  sw         $zero, 0x98($sp)
    /* 3B958 8004D148 9D61020C */  jal        func_80098674
    /* 3B95C 8004D14C 9400A0AF */   sw        $zero, 0x94($sp)
    /* 3B960 8004D150 9400A427 */  addiu      $a0, $sp, 0x94
    /* 3B964 8004D154 1F62020C */  jal        func_8009887C
    /* 3B968 8004D158 7400A527 */   addiu     $a1, $sp, 0x74
    /* 3B96C 8004D15C 7400B327 */  addiu      $s3, $sp, 0x74
    /* 3B970 8004D160 21206002 */  addu       $a0, $s3, $zero
    /* 3B974 8004D164 F465020C */  jal        func_800997D0
    /* 3B978 8004D168 3400A527 */   addiu     $a1, $sp, 0x34
    /* 3B97C 8004D16C A800A427 */  addiu      $a0, $sp, 0xA8
    /* 3B980 8004D170 4001228E */  lw         $v0, 0x140($s1)
    /* 3B984 8004D174 C800A527 */  addiu      $a1, $sp, 0xC8
    /* 3B988 8004D178 CA00A0A7 */  sh         $zero, 0xCA($sp)
    /* 3B98C 8004D17C CC00A0A7 */  sh         $zero, 0xCC($sp)
    /* 3B990 8004D180 963F010C */  jal        func_8004FE58
    /* 3B994 8004D184 C800A2A7 */   sh        $v0, 0xC8($sp)
    /* 3B998 8004D188 6000A427 */  addiu      $a0, $sp, 0x60
    /* 3B99C 8004D18C A800A527 */  addiu      $a1, $sp, 0xA8
    /* 3B9A0 8004D190 21304002 */  addu       $a2, $s2, $zero
    /* 3B9A4 8004D194 C400A0AF */  sw         $zero, 0xC4($sp)
    /* 3B9A8 8004D198 C000A0AF */  sw         $zero, 0xC0($sp)
    /* 3B9AC 8004D19C 9D61020C */  jal        func_80098674
    /* 3B9B0 8004D1A0 BC00A0AF */   sw        $zero, 0xBC($sp)
    /* 3B9B4 8004D1A4 BC00A427 */  addiu      $a0, $sp, 0xBC
    /* 3B9B8 8004D1A8 1F62020C */  jal        func_8009887C
    /* 3B9BC 8004D1AC 5400A527 */   addiu     $a1, $sp, 0x54
    /* 3B9C0 8004D1B0 5400B027 */  addiu      $s0, $sp, 0x54
    /* 3B9C4 8004D1B4 21200002 */  addu       $a0, $s0, $zero
    /* 3B9C8 8004D1B8 F465020C */  jal        func_800997D0
    /* 3B9CC 8004D1BC 21286002 */   addu      $a1, $s3, $zero
    /* 3B9D0 8004D1C0 21204002 */  addu       $a0, $s2, $zero
    /* 3B9D4 8004D1C4 0000838E */  lw         $v1, 0x0($s4)
    /* 3B9D8 8004D1C8 48012526 */  addiu      $a1, $s1, 0x148
    /* 3B9DC 8004D1CC 3400628C */  lw         $v0, 0x34($v1)
    /* 3B9E0 8004D1D0 8000A627 */  addiu      $a2, $sp, 0x80
    /* 3B9E4 8004D1D4 1400478C */  lw         $a3, 0x14($v0)
    /* 3B9E8 8004D1D8 1800438C */  lw         $v1, 0x18($v0)
    /* 3B9EC 8004D1DC 1C00488C */  lw         $t0, 0x1C($v0)
    /* 3B9F0 8004D1E0 7000B327 */  addiu      $s3, $sp, 0x70
    /* 3B9F4 8004D1E4 7000A7AF */  sw         $a3, 0x70($sp)
    /* 3B9F8 8004D1E8 7400A3AF */  sw         $v1, 0x74($sp)
    /* 3B9FC 8004D1EC 7800A8AF */  sw         $t0, 0x78($sp)
    /* 3BA00 8004D1F0 6000A7AF */  sw         $a3, 0x60($sp)
    /* 3BA04 8004D1F4 6400A3AF */  sw         $v1, 0x64($sp)
    /* 3BA08 8004D1F8 DA61020C */  jal        func_80098768
    /* 3BA0C 8004D1FC 6800A8AF */   sw        $t0, 0x68($sp)
    /* 3BA10 8004D200 8000A427 */  addiu      $a0, $sp, 0x80
    /* 3BA14 8004D204 F465020C */  jal        func_800997D0
    /* 3BA18 8004D208 21280002 */   addu      $a1, $s0, $zero
    /* 3BA1C 8004D20C 21206002 */  addu       $a0, $s3, $zero
    /* 3BA20 8004D210 8000B027 */  addiu      $s0, $sp, 0x80
    /* 3BA24 8004D214 21280002 */  addu       $a1, $s0, $zero
    /* 3BA28 8004D218 6000B227 */  addiu      $s2, $sp, 0x60
    /* 3BA2C 8004D21C 2666020C */  jal        func_80099898
    /* 3BA30 8004D220 21304002 */   addu      $a2, $s2, $zero
    /* 3BA34 8004D224 21200002 */  addu       $a0, $s0, $zero
    /* 3BA38 8004D228 21284002 */  addu       $a1, $s2, $zero
    /* 3BA3C 8004D22C 7000A38F */  lw         $v1, 0x70($sp)
    /* 3BA40 8004D230 7400A68F */  lw         $a2, 0x74($sp)
    /* 3BA44 8004D234 7800A78F */  lw         $a3, 0x78($sp)
    /* 3BA48 8004D238 F8002226 */  addiu      $v0, $s1, 0xF8
    /* 3BA4C 8004D23C F80023AE */  sw         $v1, 0xF8($s1)
    /* 3BA50 8004D240 040046AC */  sw         $a2, 0x4($v0)
    /* 3BA54 8004D244 080047AC */  sw         $a3, 0x8($v0)
    /* 3BA58 8004D248 9001238E */  lw         $v1, 0x190($s1)
    /* 3BA5C 8004D24C 9000A627 */  addiu      $a2, $sp, 0x90
    /* 3BA60 8004D250 9000A0AF */  sw         $zero, 0x90($sp)
    /* 3BA64 8004D254 9800A0AF */  sw         $zero, 0x98($sp)
    /* 3BA68 8004D258 2666020C */  jal        func_80099898
    /* 3BA6C 8004D25C 9400A3AF */   sw        $v1, 0x94($sp)
    /* 3BA70 8004D260 21202002 */  addu       $a0, $s1, $zero
    /* 3BA74 8004D264 8000A28F */  lw         $v0, 0x80($sp)
    /* 3BA78 8004D268 8400A38F */  lw         $v1, 0x84($sp)
    /* 3BA7C 8004D26C 8800A68F */  lw         $a2, 0x88($sp)
    /* 3BA80 8004D270 21286002 */  addu       $a1, $s3, $zero
    /* 3BA84 8004D274 7000A2AF */  sw         $v0, 0x70($sp)
    /* 3BA88 8004D278 7400A3AF */  sw         $v1, 0x74($sp)
    /* 3BA8C 8004D27C 7800A6AF */  sw         $a2, 0x78($sp)
    /* 3BA90 8004D280 1C0122AE */  sw         $v0, 0x11C($s1)
    /* 3BA94 8004D284 1C013126 */  addiu      $s1, $s1, 0x11C
    /* 3BA98 8004D288 040023AE */  sw         $v1, 0x4($s1)
    /* 3BA9C 8004D28C 16E1010C */  jal        func_80078458
    /* 3BAA0 8004D290 080026AE */   sw        $a2, 0x8($s1)
    /* 3BAA4 8004D294 B8340108 */  j          .L8004D2E0
    /* 3BAA8 8004D298 00000000 */   nop
  .L8004D29C:
    /* 3BAAC 8004D29C 0C80063C */  lui        $a2, %hi(D_800C66D8)
    /* 3BAB0 8004D2A0 D866C624 */  addiu      $a2, $a2, %lo(D_800C66D8)
    /* 3BAB4 8004D2A4 21107002 */  addu       $v0, $s3, $s0
    /* 3BAB8 8004D2A8 8000033C */  lui        $v1, (0x800000 >> 16)
    /* 3BABC 8004D2AC C400458C */  lw         $a1, 0xC4($v0)
    /* 3BAC0 8004D2B0 FFFF0234 */  ori        $v0, $zero, 0xFFFF
    /* 3BAC4 8004D2B4 0D80043C */  lui        $a0, %hi(D_800CB478)
    /* 3BAC8 8004D2B8 78B4848C */  lw         $a0, %lo(D_800CB478)($a0)
    /* 3BACC 8004D2BC 8000073C */  lui        $a3, (0x800000 >> 16)
    /* 3BAD0 8004D2C0 1000A3AF */  sw         $v1, 0x10($sp)
    /* 3BAD4 8004D2C4 1400A2AF */  sw         $v0, 0x14($sp)
    /* 3BAD8 8004D2C8 8CAA010C */  jal        func_8006AA30
    /* 3BADC 8004D2CC 1800A0AF */   sw        $zero, 0x18($sp)
    /* 3BAE0 8004D2D0 21184000 */  addu       $v1, $v0, $zero
    /* 3BAE4 8004D2D4 02006010 */  beqz       $v1, .L8004D2E0
    /* 3BAE8 8004D2D8 10010224 */   addiu     $v0, $zero, 0x110
    /* 3BAEC 8004D2DC 3C0062AC */  sw         $v0, 0x3C($v1)
  .L8004D2E0:
    /* 3BAF0 8004D2E0 E400BF8F */  lw         $ra, 0xE4($sp)
    /* 3BAF4 8004D2E4 E000B48F */  lw         $s4, 0xE0($sp)
    /* 3BAF8 8004D2E8 DC00B38F */  lw         $s3, 0xDC($sp)
    /* 3BAFC 8004D2EC D800B28F */  lw         $s2, 0xD8($sp)
    /* 3BB00 8004D2F0 D400B18F */  lw         $s1, 0xD4($sp)
    /* 3BB04 8004D2F4 D000B08F */  lw         $s0, 0xD0($sp)
    /* 3BB08 8004D2F8 0800E003 */  jr         $ra
    /* 3BB0C 8004D2FC E800BD27 */   addiu     $sp, $sp, 0xE8
endlabel func_8004D068
