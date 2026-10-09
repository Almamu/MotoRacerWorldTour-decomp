nonmatching func_8003425C, 0x1D0

glabel func_8003425C
    /* 22A6C 8003425C 40FFBD27 */  addiu      $sp, $sp, -0xC0
    /* 22A70 80034260 B800B6AF */  sw         $s6, 0xB8($sp)
    /* 22A74 80034264 21B08000 */  addu       $s6, $a0, $zero
    /* 22A78 80034268 BC00BFAF */  sw         $ra, 0xBC($sp)
    /* 22A7C 8003426C B400B5AF */  sw         $s5, 0xB4($sp)
    /* 22A80 80034270 B000B4AF */  sw         $s4, 0xB0($sp)
    /* 22A84 80034274 AC00B3AF */  sw         $s3, 0xAC($sp)
    /* 22A88 80034278 A800B2AF */  sw         $s2, 0xA8($sp)
    /* 22A8C 8003427C A400B1AF */  sw         $s1, 0xA4($sp)
    /* 22A90 80034280 A000B0AF */  sw         $s0, 0xA0($sp)
    /* 22A94 80034284 0000C28E */  lw         $v0, 0x0($s6)
    /* 22A98 80034288 00000000 */  nop
    /* 22A9C 8003428C 5D004010 */  beqz       $v0, .L80034404
    /* 22AA0 80034290 21A8C000 */   addu      $s5, $a2, $zero
    /* 22AA4 80034294 1000B027 */  addiu      $s0, $sp, 0x10
    /* 22AA8 80034298 21200002 */  addu       $a0, $s0, $zero
    /* 22AAC 8003429C 9401D426 */  addiu      $s4, $s6, 0x194
    /* 22AB0 800342A0 3000B18C */  lw         $s1, 0x30($a1)
    /* 22AB4 800342A4 21288002 */  addu       $a1, $s4, $zero
    /* 22AB8 800342A8 7300288A */  lwl        $t0, 0x73($s1)
    /* 22ABC 800342AC 7000289A */  lwr        $t0, 0x70($s1)
    /* 22AC0 800342B0 7700298A */  lwl        $t1, 0x77($s1)
    /* 22AC4 800342B4 7400299A */  lwr        $t1, 0x74($s1)
    /* 22AC8 800342B8 1300A8AB */  swl        $t0, 0x13($sp)
    /* 22ACC 800342BC 1000A8BB */  swr        $t0, 0x10($sp)
    /* 22AD0 800342C0 1700A9AB */  swl        $t1, 0x17($sp)
    /* 22AD4 800342C4 1400A9BB */  swr        $t1, 0x14($sp)
    /* 22AD8 800342C8 64D0000C */  jal        func_80034190
    /* 22ADC 800342CC 5A012626 */   addiu     $a2, $s1, 0x15A
    /* 22AE0 800342D0 1800B227 */  addiu      $s2, $sp, 0x18
    /* 22AE4 800342D4 21204002 */  addu       $a0, $s2, $zero
    /* 22AE8 800342D8 DA5F020C */  jal        func_80097F68
    /* 22AEC 800342DC 21280002 */   addu      $a1, $s0, $zero
    /* 22AF0 800342E0 5800A427 */  addiu      $a0, $sp, 0x58
    /* 22AF4 800342E4 0C00C28E */  lw         $v0, 0xC($s6)
    /* 22AF8 800342E8 7800A527 */  addiu      $a1, $sp, 0x78
    /* 22AFC 800342EC 7A00A0A7 */  sh         $zero, 0x7A($sp)
    /* 22B00 800342F0 7C00A0A7 */  sh         $zero, 0x7C($sp)
    /* 22B04 800342F4 82D2000C */  jal        func_80034A08
    /* 22B08 800342F8 7800A2A7 */   sh        $v0, 0x78($sp)
    /* 22B0C 800342FC 8000A427 */  addiu      $a0, $sp, 0x80
    /* 22B10 80034300 21284002 */  addu       $a1, $s2, $zero
    /* 22B14 80034304 7400A0AF */  sw         $zero, 0x74($sp)
    /* 22B18 80034308 7000A0AF */  sw         $zero, 0x70($sp)
    /* 22B1C 8003430C 5E60020C */  jal        func_80098178
    /* 22B20 80034310 6C00A0AF */   sw        $zero, 0x6C($sp)
    /* 22B24 80034314 5800A427 */  addiu      $a0, $sp, 0x58
    /* 22B28 80034318 8000A527 */  addiu      $a1, $sp, 0x80
    /* 22B2C 8003431C 9D61020C */  jal        func_80098674
    /* 22B30 80034320 3800A627 */   addiu     $a2, $sp, 0x38
    /* 22B34 80034324 9400A427 */  addiu      $a0, $sp, 0x94
    /* 22B38 80034328 1F62020C */  jal        func_8009887C
    /* 22B3C 8003432C 4C00A527 */   addiu     $a1, $sp, 0x4C
    /* 22B40 80034330 4C00B327 */  addiu      $s3, $sp, 0x4C
    /* 22B44 80034334 21206002 */  addu       $a0, $s3, $zero
    /* 22B48 80034338 F465020C */  jal        func_800997D0
    /* 22B4C 8003433C 6C00A527 */   addiu     $a1, $sp, 0x6C
    /* 22B50 80034340 3800B227 */  addiu      $s2, $sp, 0x38
    /* 22B54 80034344 21204002 */  addu       $a0, $s2, $zero
    /* 22B58 80034348 64002226 */  addiu      $v0, $s1, 0x64
    /* 22B5C 8003434C 21288002 */  addu       $a1, $s4, $zero
    /* 22B60 80034350 3800A88F */  lw         $t0, 0x38($sp)
    /* 22B64 80034354 3C00A98F */  lw         $t1, 0x3C($sp)
    /* 22B68 80034358 4000AA8F */  lw         $t2, 0x40($sp)
    /* 22B6C 8003435C 4400AB8F */  lw         $t3, 0x44($sp)
    /* 22B70 80034360 0000A8AE */  sw         $t0, 0x0($s5)
    /* 22B74 80034364 0400A9AE */  sw         $t1, 0x4($s5)
    /* 22B78 80034368 0800AAAE */  sw         $t2, 0x8($s5)
    /* 22B7C 8003436C 0C00ABAE */  sw         $t3, 0xC($s5)
    /* 22B80 80034370 4800A88F */  lw         $t0, 0x48($sp)
    /* 22B84 80034374 4C00A98F */  lw         $t1, 0x4C($sp)
    /* 22B88 80034378 5000AA8F */  lw         $t2, 0x50($sp)
    /* 22B8C 8003437C 5400AB8F */  lw         $t3, 0x54($sp)
    /* 22B90 80034380 1000A8AE */  sw         $t0, 0x10($s5)
    /* 22B94 80034384 1400A9AE */  sw         $t1, 0x14($s5)
    /* 22B98 80034388 1800AAAE */  sw         $t2, 0x18($s5)
    /* 22B9C 8003438C 1C00ABAE */  sw         $t3, 0x1C($s5)
    /* 22BA0 80034390 1C00A0AE */  sw         $zero, 0x1C($s5)
    /* 22BA4 80034394 1800A0AE */  sw         $zero, 0x18($s5)
    /* 22BA8 80034398 1400A0AE */  sw         $zero, 0x14($s5)
    /* 22BAC 8003439C 6400238E */  lw         $v1, 0x64($s1)
    /* 22BB0 800343A0 0400468C */  lw         $a2, 0x4($v0)
    /* 22BB4 800343A4 0800478C */  lw         $a3, 0x8($v0)
    /* 22BB8 800343A8 F800B026 */  addiu      $s0, $s5, 0xF8
    /* 22BBC 800343AC F800A3AE */  sw         $v1, 0xF8($s5)
    /* 22BC0 800343B0 040006AE */  sw         $a2, 0x4($s0)
    /* 22BC4 800343B4 DA5F020C */  jal        func_80097F68
    /* 22BC8 800343B8 080007AE */   sw        $a3, 0x8($s0)
    /* 22BCC 800343BC 21204002 */  addu       $a0, $s2, $zero
    /* 22BD0 800343C0 6800A527 */  addiu      $a1, $sp, 0x68
    /* 22BD4 800343C4 0400C28E */  lw         $v0, 0x4($s6)
    /* 22BD8 800343C8 0800C38E */  lw         $v1, 0x8($s6)
    /* 22BDC 800343CC 5800A627 */  addiu      $a2, $sp, 0x58
    /* 22BE0 800343D0 5400A0AF */  sw         $zero, 0x54($sp)
    /* 22BE4 800343D4 5000A0AF */  sw         $zero, 0x50($sp)
    /* 22BE8 800343D8 4C00A0AF */  sw         $zero, 0x4C($sp)
    /* 22BEC 800343DC 6800A0AF */  sw         $zero, 0x68($sp)
    /* 22BF0 800343E0 6C00A2AF */  sw         $v0, 0x6C($sp)
    /* 22BF4 800343E4 DA61020C */  jal        func_80098768
    /* 22BF8 800343E8 7000A3AF */   sw        $v1, 0x70($sp)
    /* 22BFC 800343EC 5800A427 */  addiu      $a0, $sp, 0x58
    /* 22C00 800343F0 F465020C */  jal        func_800997D0
    /* 22C04 800343F4 21286002 */   addu      $a1, $s3, $zero
    /* 22C08 800343F8 21200002 */  addu       $a0, $s0, $zero
    /* 22C0C 800343FC F465020C */  jal        func_800997D0
    /* 22C10 80034400 5800A527 */   addiu     $a1, $sp, 0x58
  .L80034404:
    /* 22C14 80034404 BC00BF8F */  lw         $ra, 0xBC($sp)
    /* 22C18 80034408 B800B68F */  lw         $s6, 0xB8($sp)
    /* 22C1C 8003440C B400B58F */  lw         $s5, 0xB4($sp)
    /* 22C20 80034410 B000B48F */  lw         $s4, 0xB0($sp)
    /* 22C24 80034414 AC00B38F */  lw         $s3, 0xAC($sp)
    /* 22C28 80034418 A800B28F */  lw         $s2, 0xA8($sp)
    /* 22C2C 8003441C A400B18F */  lw         $s1, 0xA4($sp)
    /* 22C30 80034420 A000B08F */  lw         $s0, 0xA0($sp)
    /* 22C34 80034424 0800E003 */  jr         $ra
    /* 22C38 80034428 C000BD27 */   addiu     $sp, $sp, 0xC0
endlabel func_8003425C
