nonmatching func_8005114C, 0x340

glabel func_8005114C
    /* 3F95C 8005114C C8FEBD27 */  addiu      $sp, $sp, -0x138
    /* 3F960 80051150 2001B4AF */  sw         $s4, 0x120($sp)
    /* 3F964 80051154 21A08000 */  addu       $s4, $a0, $zero
    /* 3F968 80051158 1001B0AF */  sw         $s0, 0x110($sp)
    /* 3F96C 8005115C 7000B027 */  addiu      $s0, $sp, 0x70
    /* 3F970 80051160 21200002 */  addu       $a0, $s0, $zero
    /* 3F974 80051164 2801B6AF */  sw         $s6, 0x128($sp)
    /* 3F978 80051168 21B00000 */  addu       $s6, $zero, $zero
    /* 3F97C 8005116C 2401B5AF */  sw         $s5, 0x124($sp)
    /* 3F980 80051170 0C80153C */  lui        $s5, %hi(D_800C6724)
    /* 3F984 80051174 2467B526 */  addiu      $s5, $s5, %lo(D_800C6724)
    /* 3F988 80051178 3001BEAF */  sw         $fp, 0x130($sp)
    /* 3F98C 8005117C 21F0A000 */  addu       $fp, $a1, $zero
    /* 3F990 80051180 2C01B7AF */  sw         $s7, 0x12C($sp)
    /* 3F994 80051184 21B8C000 */  addu       $s7, $a2, $zero
    /* 3F998 80051188 3401BFAF */  sw         $ra, 0x134($sp)
    /* 3F99C 8005118C 1C01B3AF */  sw         $s3, 0x11C($sp)
    /* 3F9A0 80051190 1801B2AF */  sw         $s2, 0x118($sp)
    /* 3F9A4 80051194 1401B1AF */  sw         $s1, 0x114($sp)
    /* 3F9A8 80051198 A4028D8E */  lw         $t5, 0x2A4($s4)
    /* 3F9AC 8005119C A8028E8E */  lw         $t6, 0x2A8($s4)
    /* 3F9B0 800511A0 AC028F8E */  lw         $t7, 0x2AC($s4)
    /* 3F9B4 800511A4 B002988E */  lw         $t8, 0x2B0($s4)
    /* 3F9B8 800511A8 5000ADAF */  sw         $t5, 0x50($sp)
    /* 3F9BC 800511AC 5400AEAF */  sw         $t6, 0x54($sp)
    /* 3F9C0 800511B0 5800AFAF */  sw         $t7, 0x58($sp)
    /* 3F9C4 800511B4 5C00B8AF */  sw         $t8, 0x5C($sp)
    /* 3F9C8 800511B8 B4028D8E */  lw         $t5, 0x2B4($s4)
    /* 3F9CC 800511BC B8028E8E */  lw         $t6, 0x2B8($s4)
    /* 3F9D0 800511C0 BC028F8E */  lw         $t7, 0x2BC($s4)
    /* 3F9D4 800511C4 C002988E */  lw         $t8, 0x2C0($s4)
    /* 3F9D8 800511C8 6000ADAF */  sw         $t5, 0x60($sp)
    /* 3F9DC 800511CC 6400AEAF */  sw         $t6, 0x64($sp)
    /* 3F9E0 800511D0 6800AFAF */  sw         $t7, 0x68($sp)
    /* 3F9E4 800511D4 6C00B8AF */  sw         $t8, 0x6C($sp)
    /* 3F9E8 800511D8 6C00A0AF */  sw         $zero, 0x6C($sp)
    /* 3F9EC 800511DC 6800A0AF */  sw         $zero, 0x68($sp)
    /* 3F9F0 800511E0 6400A0AF */  sw         $zero, 0x64($sp)
    /* 3F9F4 800511E4 3003828E */  lw         $v0, 0x330($s4)
    /* 3F9F8 800511E8 5000B327 */  addiu      $s3, $sp, 0x50
    /* 3F9FC 800511EC 1C054524 */  addiu      $a1, $v0, 0x51C
    /* 3FA00 800511F0 3466020C */  jal        func_800998D0
    /* 3FA04 800511F4 9C014624 */   addiu     $a2, $v0, 0x19C
    /* 3FA08 800511F8 21206002 */  addu       $a0, $s3, $zero
    /* 3FA0C 800511FC 21280002 */  addu       $a1, $s0, $zero
    /* 3FA10 80051200 DA61020C */  jal        func_80098768
    /* 3FA14 80051204 8000A627 */   addiu     $a2, $sp, 0x80
    /* 3FA18 80051208 8000A427 */  addiu      $a0, $sp, 0x80
    /* 3FA1C 8005120C 6400B227 */  addiu      $s2, $sp, 0x64
    /* 3FA20 80051210 F465020C */  jal        func_800997D0
    /* 3FA24 80051214 21284002 */   addu      $a1, $s2, $zero
    /* 3FA28 80051218 8000A38F */  lw         $v1, 0x80($sp)
    /* 3FA2C 8005121C 8400A28F */  lw         $v0, 0x84($sp)
    /* 3FA30 80051220 8800A58F */  lw         $a1, 0x88($sp)
    /* 3FA34 80051224 21200002 */  addu       $a0, $s0, $zero
    /* 3FA38 80051228 7000A3AF */  sw         $v1, 0x70($sp)
    /* 3FA3C 8005122C 7400A2AF */  sw         $v0, 0x74($sp)
    /* 3FA40 80051230 7800A5AF */  sw         $a1, 0x78($sp)
    /* 3FA44 80051234 A763020C */  jal        func_80098E9C
    /* 3FA48 80051238 7400A0AF */   sw        $zero, 0x74($sp)
    /* 3FA4C 8005123C A000B127 */  addiu      $s1, $sp, 0xA0
    /* 3FA50 80051240 21202002 */  addu       $a0, $s1, $zero
    /* 3FA54 80051244 21280002 */  addu       $a1, $s0, $zero
    /* 3FA58 80051248 8000A327 */  addiu      $v1, $sp, 0x80
    /* 3FA5C 8005124C 21306000 */  addu       $a2, $v1, $zero
    /* 3FA60 80051250 00100224 */  addiu      $v0, $zero, 0x1000
    /* 3FA64 80051254 9000B027 */  addiu      $s0, $sp, 0x90
    /* 3FA68 80051258 8000A0AF */  sw         $zero, 0x80($sp)
    /* 3FA6C 8005125C 040062AC */  sw         $v0, 0x4($v1)
    /* 3FA70 80051260 2C67020C */  jal        func_80099CB0
    /* 3FA74 80051264 8800A0AF */   sw        $zero, 0x88($sp)
    /* 3FA78 80051268 21200002 */  addu       $a0, $s0, $zero
    /* 3FA7C 8005126C 21282002 */  addu       $a1, $s1, $zero
    /* 3FA80 80051270 7367020C */  jal        func_80099DCC
    /* 3FA84 80051274 0C000624 */   addiu     $a2, $zero, 0xC
    /* 3FA88 80051278 F000A427 */  addiu      $a0, $sp, 0xF0
    /* 3FA8C 8005127C 9000A297 */  lhu        $v0, 0x90($sp)
    /* 3FA90 80051280 8000A397 */  lhu        $v1, 0x80($sp)
    /* 3FA94 80051284 7000A697 */  lhu        $a2, 0x70($sp)
    /* 3FA98 80051288 9400A797 */  lhu        $a3, 0x94($sp)
    /* 3FA9C 8005128C 8400A897 */  lhu        $t0, 0x84($sp)
    /* 3FAA0 80051290 7400A997 */  lhu        $t1, 0x74($sp)
    /* 3FAA4 80051294 9800AA97 */  lhu        $t2, 0x98($sp)
    /* 3FAA8 80051298 8800AB97 */  lhu        $t3, 0x88($sp)
    /* 3FAAC 8005129C 7800AC97 */  lhu        $t4, 0x78($sp)
    /* 3FAB0 800512A0 B000A527 */  addiu      $a1, $sp, 0xB0
    /* 3FAB4 800512A4 C400A0AF */  sw         $zero, 0xC4($sp)
    /* 3FAB8 800512A8 C800A0AF */  sw         $zero, 0xC8($sp)
    /* 3FABC 800512AC CC00A0AF */  sw         $zero, 0xCC($sp)
    /* 3FAC0 800512B0 B000A2A7 */  sh         $v0, 0xB0($sp)
    /* 3FAC4 800512B4 B200A3A7 */  sh         $v1, 0xB2($sp)
    /* 3FAC8 800512B8 B400A6A7 */  sh         $a2, 0xB4($sp)
    /* 3FACC 800512BC B600A7A7 */  sh         $a3, 0xB6($sp)
    /* 3FAD0 800512C0 B800A8A7 */  sh         $t0, 0xB8($sp)
    /* 3FAD4 800512C4 BA00A9A7 */  sh         $t1, 0xBA($sp)
    /* 3FAD8 800512C8 BC00AAA7 */  sh         $t2, 0xBC($sp)
    /* 3FADC 800512CC BE00ABA7 */  sh         $t3, 0xBE($sp)
    /* 3FAE0 800512D0 5E60020C */  jal        func_80098178
    /* 3FAE4 800512D4 C000ACA7 */   sh        $t4, 0xC0($sp)
    /* 3FAE8 800512D8 F000A427 */  addiu      $a0, $sp, 0xF0
    /* 3FAEC 800512DC 21286002 */  addu       $a1, $s3, $zero
    /* 3FAF0 800512E0 9D61020C */  jal        func_80098674
    /* 3FAF4 800512E4 D000A627 */   addiu     $a2, $sp, 0xD0
    /* 3FAF8 800512E8 21204002 */  addu       $a0, $s2, $zero
    /* 3FAFC 800512EC 1F62020C */  jal        func_8009887C
    /* 3FB00 800512F0 E400A527 */   addiu     $a1, $sp, 0xE4
    /* 3FB04 800512F4 E400A427 */  addiu      $a0, $sp, 0xE4
    /* 3FB08 800512F8 F465020C */  jal        func_800997D0
    /* 3FB0C 800512FC 0401A527 */   addiu     $a1, $sp, 0x104
    /* 3FB10 80051300 FF7F033C */  lui        $v1, (0x7FFFFFFF >> 16)
    /* 3FB14 80051304 FFFF6334 */  ori        $v1, $v1, (0x7FFFFFFF & 0xFFFF)
    /* 3FB18 80051308 3C019026 */  addiu      $s0, $s4, 0x13C
    /* 3FB1C 8005130C 48019126 */  addiu      $s1, $s4, 0x148
    /* 3FB20 80051310 0080023C */  lui        $v0, (0x80000000 >> 16)
    /* 3FB24 80051314 080003AE */  sw         $v1, 0x8($s0)
    /* 3FB28 80051318 040003AE */  sw         $v1, 0x4($s0)
    /* 3FB2C 8005131C 3C0183AE */  sw         $v1, 0x13C($s4)
    /* 3FB30 80051320 080022AE */  sw         $v0, 0x8($s1)
    /* 3FB34 80051324 040022AE */  sw         $v0, 0x4($s1)
    /* 3FB38 80051328 480182AE */  sw         $v0, 0x148($s4)
    /* 3FB3C 8005132C D000A427 */  addiu      $a0, $sp, 0xD0
  .L80051330:
    /* 3FB40 80051330 A000A627 */  addiu      $a2, $sp, 0xA0
    /* 3FB44 80051334 0000A586 */  lh         $a1, 0x0($s5)
    /* 3FB48 80051338 0200B526 */  addiu      $s5, $s5, 0x2
    /* 3FB4C 8005133C 0100D626 */  addiu      $s6, $s6, 0x1
    /* 3FB50 80051340 3003828E */  lw         $v0, 0x330($s4)
    /* 3FB54 80051344 C0290500 */  sll        $a1, $a1, 7
    /* 3FB58 80051348 2128A200 */  addu       $a1, $a1, $v0
    /* 3FB5C 8005134C DA61020C */  jal        func_80098768
    /* 3FB60 80051350 1C00A524 */   addiu     $a1, $a1, 0x1C
    /* 3FB64 80051354 A000A427 */  addiu      $a0, $sp, 0xA0
    /* 3FB68 80051358 F465020C */  jal        func_800997D0
    /* 3FB6C 8005135C E400A527 */   addiu     $a1, $sp, 0xE4
    /* 3FB70 80051360 21200002 */  addu       $a0, $s0, $zero
    /* 3FB74 80051364 7563020C */  jal        func_80098DD4
    /* 3FB78 80051368 A000A527 */   addiu     $a1, $sp, 0xA0
    /* 3FB7C 8005136C 21202002 */  addu       $a0, $s1, $zero
    /* 3FB80 80051370 8E63020C */  jal        func_80098E38
    /* 3FB84 80051374 A000A527 */   addiu     $a1, $sp, 0xA0
    /* 3FB88 80051378 0800C22A */  slti       $v0, $s6, 0x8
    /* 3FB8C 8005137C ECFF4014 */  bnez       $v0, .L80051330
    /* 3FB90 80051380 D000A427 */   addiu     $a0, $sp, 0xD0
    /* 3FB94 80051384 A4028226 */  addiu      $v0, $s4, 0x2A4
    /* 3FB98 80051388 B000AD8F */  lw         $t5, 0xB0($sp)
    /* 3FB9C 8005138C B400AE8F */  lw         $t6, 0xB4($sp)
    /* 3FBA0 80051390 B800AF8F */  lw         $t7, 0xB8($sp)
    /* 3FBA4 80051394 BC00B88F */  lw         $t8, 0xBC($sp)
    /* 3FBA8 80051398 0000CDAF */  sw         $t5, 0x0($fp)
    /* 3FBAC 8005139C 0400CEAF */  sw         $t6, 0x4($fp)
    /* 3FBB0 800513A0 0800CFAF */  sw         $t7, 0x8($fp)
    /* 3FBB4 800513A4 0C00D8AF */  sw         $t8, 0xC($fp)
    /* 3FBB8 800513A8 C000AD8F */  lw         $t5, 0xC0($sp)
    /* 3FBBC 800513AC C400AE8F */  lw         $t6, 0xC4($sp)
    /* 3FBC0 800513B0 C800AF8F */  lw         $t7, 0xC8($sp)
    /* 3FBC4 800513B4 CC00B88F */  lw         $t8, 0xCC($sp)
    /* 3FBC8 800513B8 1000CDAF */  sw         $t5, 0x10($fp)
    /* 3FBCC 800513BC 1400CEAF */  sw         $t6, 0x14($fp)
    /* 3FBD0 800513C0 1800CFAF */  sw         $t7, 0x18($fp)
    /* 3FBD4 800513C4 1C00D8AF */  sw         $t8, 0x1C($fp)
    /* 3FBD8 800513C8 1400458C */  lw         $a1, 0x14($v0)
    /* 3FBDC 800513CC 1800468C */  lw         $a2, 0x18($v0)
    /* 3FBE0 800513D0 1C00478C */  lw         $a3, 0x1C($v0)
    /* 3FBE4 800513D4 1400C5AF */  sw         $a1, 0x14($fp)
    /* 3FBE8 800513D8 1800C6AF */  sw         $a2, 0x18($fp)
    /* 3FBEC 800513DC 1C00C7AF */  sw         $a3, 0x1C($fp)
    /* 3FBF0 800513E0 2C03838E */  lw         $v1, 0x32C($s4)
    /* 3FBF4 800513E4 21200002 */  addu       $a0, $s0, $zero
    /* 3FBF8 800513E8 A000A5AF */  sw         $a1, 0xA0($sp)
    /* 3FBFC 800513EC A400A6AF */  sw         $a2, 0xA4($sp)
    /* 3FC00 800513F0 A800A7AF */  sw         $a3, 0xA8($sp)
    /* 3FC04 800513F4 1C006284 */  lh         $v0, 0x1C($v1)
    /* 3FC08 800513F8 0C001024 */  addiu      $s0, $zero, 0xC
    /* 3FC0C 800513FC 23800202 */  subu       $s0, $s0, $v0
    /* 3FC10 80051400 5D67020C */  jal        func_80099D74
    /* 3FC14 80051404 21280002 */   addu      $a1, $s0, $zero
    /* 3FC18 80051408 21202002 */  addu       $a0, $s1, $zero
    /* 3FC1C 8005140C 5D67020C */  jal        func_80099D74
    /* 3FC20 80051410 21280002 */   addu      $a1, $s0, $zero
    /* 3FC24 80051414 3C01838E */  lw         $v1, 0x13C($s4)
    /* 3FC28 80051418 4001848E */  lw         $a0, 0x140($s4)
    /* 3FC2C 8005141C 4401828E */  lw         $v0, 0x144($s4)
    /* 3FC30 80051420 3401BF8F */  lw         $ra, 0x134($sp)
    /* 3FC34 80051424 3001BE8F */  lw         $fp, 0x130($sp)
    /* 3FC38 80051428 2801B68F */  lw         $s6, 0x128($sp)
    /* 3FC3C 8005142C 2401B58F */  lw         $s5, 0x124($sp)
    /* 3FC40 80051430 1C01B38F */  lw         $s3, 0x11C($sp)
    /* 3FC44 80051434 1801B28F */  lw         $s2, 0x118($sp)
    /* 3FC48 80051438 1401B18F */  lw         $s1, 0x114($sp)
    /* 3FC4C 8005143C 1001B08F */  lw         $s0, 0x110($sp)
    /* 3FC50 80051440 23187700 */  subu       $v1, $v1, $s7
    /* 3FC54 80051444 3C0183AE */  sw         $v1, 0x13C($s4)
    /* 3FC58 80051448 4801838E */  lw         $v1, 0x148($s4)
    /* 3FC5C 8005144C 23105700 */  subu       $v0, $v0, $s7
    /* 3FC60 80051450 440182AE */  sw         $v0, 0x144($s4)
    /* 3FC64 80051454 4C01828E */  lw         $v0, 0x14C($s4)
    /* 3FC68 80051458 23209700 */  subu       $a0, $a0, $s7
    /* 3FC6C 8005145C 400184AE */  sw         $a0, 0x140($s4)
    /* 3FC70 80051460 5001848E */  lw         $a0, 0x150($s4)
    /* 3FC74 80051464 21187700 */  addu       $v1, $v1, $s7
    /* 3FC78 80051468 21105700 */  addu       $v0, $v0, $s7
    /* 3FC7C 8005146C 21209700 */  addu       $a0, $a0, $s7
    /* 3FC80 80051470 2C01B78F */  lw         $s7, 0x12C($sp)
    /* 3FC84 80051474 480183AE */  sw         $v1, 0x148($s4)
    /* 3FC88 80051478 4C0182AE */  sw         $v0, 0x14C($s4)
    /* 3FC8C 8005147C 500184AE */  sw         $a0, 0x150($s4)
    /* 3FC90 80051480 2001B48F */  lw         $s4, 0x120($sp)
    /* 3FC94 80051484 0800E003 */  jr         $ra
    /* 3FC98 80051488 3801BD27 */   addiu     $sp, $sp, 0x138
endlabel func_8005114C
