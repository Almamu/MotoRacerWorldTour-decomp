nonmatching func_800A1420, 0x98

glabel func_800A1420
    /* 8FC30 800A1420 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 8FC34 800A1424 1400B1AF */  sw         $s1, 0x14($sp)
    /* 8FC38 800A1428 1800B2AF */  sw         $s2, 0x18($sp)
    /* 8FC3C 800A142C 21908000 */  addu       $s2, $a0, $zero
    /* 8FC40 800A1430 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* 8FC44 800A1434 1000B0AF */  sw         $s0, 0x10($sp)
    /* 8FC48 800A1438 A816438E */  lw         $v1, 0x16A8($s2)
    /* 8FC4C 800A143C 08000224 */  addiu      $v0, $zero, 0x8
    /* 8FC50 800A1440 16006214 */  bne        $v1, $v0, .L800A149C
    /* 8FC54 800A1444 FFFF1124 */   addiu     $s1, $zero, -0x1
    /* 8FC58 800A1448 3385020C */  jal        func_800A14CC
    /* 8FC5C 800A144C 00000000 */   nop
    /* 8FC60 800A1450 4185020C */  jal        func_800A1504
    /* 8FC64 800A1454 21804000 */   addu      $s0, $v0, $zero
    /* 8FC68 800A1458 0000478C */  lw         $a3, 0x0($v0)
    /* 8FC6C 800A145C 0000068E */  lw         $a2, 0x0($s0)
    /* 8FC70 800A1460 40180700 */  sll        $v1, $a3, 1
    /* 8FC74 800A1464 21186700 */  addu       $v1, $v1, $a3
    /* 8FC78 800A1468 C0180300 */  sll        $v1, $v1, 3
    /* 8FC7C 800A146C 21186600 */  addu       $v1, $v1, $a2
    /* 8FC80 800A1470 1000648C */  lw         $a0, 0x10($v1)
    /* 8FC84 800A1474 0400458C */  lw         $a1, 0x4($v0)
    /* 8FC88 800A1478 FFFF8424 */  addiu      $a0, $a0, -0x1
    /* 8FC8C 800A147C 2A28A400 */  slt        $a1, $a1, $a0
    /* 8FC90 800A1480 0700A014 */  bnez       $a1, .L800A14A0
    /* 8FC94 800A1484 21102002 */   addu      $v0, $s1, $zero
    /* 8FC98 800A1488 7C00438E */  lw         $v1, 0x7C($s2)
    /* 8FC9C 800A148C 00000000 */  nop
    /* 8FCA0 800A1490 40100300 */  sll        $v0, $v1, 1
    /* 8FCA4 800A1494 21104300 */  addu       $v0, $v0, $v1
    /* 8FCA8 800A1498 21884700 */  addu       $s1, $v0, $a3
  .L800A149C:
    /* 8FCAC 800A149C 21102002 */  addu       $v0, $s1, $zero
  .L800A14A0:
    /* 8FCB0 800A14A0 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* 8FCB4 800A14A4 1800B28F */  lw         $s2, 0x18($sp)
    /* 8FCB8 800A14A8 1400B18F */  lw         $s1, 0x14($sp)
    /* 8FCBC 800A14AC 1000B08F */  lw         $s0, 0x10($sp)
    /* 8FCC0 800A14B0 0800E003 */  jr         $ra
    /* 8FCC4 800A14B4 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_800A1420
