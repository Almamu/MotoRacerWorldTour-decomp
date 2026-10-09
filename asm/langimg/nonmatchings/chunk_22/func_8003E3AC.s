nonmatching func_8003E3AC, 0x204

glabel func_8003E3AC
    /* 2CBBC 8003E3AC C8FFBD27 */  addiu      $sp, $sp, -0x38
    /* 2CBC0 8003E3B0 1000B0AF */  sw         $s0, 0x10($sp)
    /* 2CBC4 8003E3B4 21808000 */  addu       $s0, $a0, $zero
    /* 2CBC8 8003E3B8 21280000 */  addu       $a1, $zero, $zero
    /* 2CBCC 8003E3BC 21300000 */  addu       $a2, $zero, $zero
    /* 2CBD0 8003E3C0 21380000 */  addu       $a3, $zero, $zero
    /* 2CBD4 8003E3C4 3000BFAF */  sw         $ra, 0x30($sp)
    /* 2CBD8 8003E3C8 2C00B7AF */  sw         $s7, 0x2C($sp)
    /* 2CBDC 8003E3CC 2800B6AF */  sw         $s6, 0x28($sp)
    /* 2CBE0 8003E3D0 2400B5AF */  sw         $s5, 0x24($sp)
    /* 2CBE4 8003E3D4 2000B4AF */  sw         $s4, 0x20($sp)
    /* 2CBE8 8003E3D8 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 2CBEC 8003E3DC 1800B2AF */  sw         $s2, 0x18($sp)
    /* 2CBF0 8003E3E0 24FB000C */  jal        func_8003EC90
    /* 2CBF4 8003E3E4 1400B1AF */   sw        $s1, 0x14($sp)
    /* 2CBF8 8003E3E8 21200002 */  addu       $a0, $s0, $zero
    /* 2CBFC 8003E3EC 01000524 */  addiu      $a1, $zero, 0x1
    /* 2CC00 8003E3F0 21300000 */  addu       $a2, $zero, $zero
    /* 2CC04 8003E3F4 0480173C */  lui        $s7, %hi(func_8003DF7C)
    /* 2CC08 8003E3F8 7CDFF726 */  addiu      $s7, $s7, %lo(func_8003DF7C)
    /* 2CC0C 8003E3FC 2138E002 */  addu       $a3, $s7, $zero
    /* 2CC10 8003E400 BC0A038E */  lw         $v1, 0xABC($s0)
    /* 2CC14 8003E404 01000224 */  addiu      $v0, $zero, 0x1
    /* 2CC18 8003E408 3C0002AE */  sw         $v0, 0x3C($s0)
    /* 2CC1C 8003E40C 3C000226 */  addiu      $v0, $s0, 0x3C
    /* 2CC20 8003E410 400010AE */  sw         $s0, 0x40($s0)
    /* 2CC24 8003E414 24FB000C */  jal        func_8003EC90
    /* 2CC28 8003E418 000062AC */   sw        $v0, 0x0($v1)
    /* 2CC2C 8003E41C 21200002 */  addu       $a0, $s0, $zero
    /* 2CC30 8003E420 02000524 */  addiu      $a1, $zero, 0x2
    /* 2CC34 8003E424 21300000 */  addu       $a2, $zero, $zero
    /* 2CC38 8003E428 0480163C */  lui        $s6, %hi(func_8003E194)
    /* 2CC3C 8003E42C 94E1D626 */  addiu      $s6, $s6, %lo(func_8003E194)
    /* 2CC40 8003E430 24FB000C */  jal        func_8003EC90
    /* 2CC44 8003E434 2138C002 */   addu      $a3, $s6, $zero
    /* 2CC48 8003E438 21200002 */  addu       $a0, $s0, $zero
    /* 2CC4C 8003E43C 04000524 */  addiu      $a1, $zero, 0x4
    /* 2CC50 8003E440 21300000 */  addu       $a2, $zero, $zero
    /* 2CC54 8003E444 0480153C */  lui        $s5, %hi(func_8003DD8C)
    /* 2CC58 8003E448 8CDDB526 */  addiu      $s5, $s5, %lo(func_8003DD8C)
    /* 2CC5C 8003E44C 24FB000C */  jal        func_8003EC90
    /* 2CC60 8003E450 2138A002 */   addu      $a3, $s5, $zero
    /* 2CC64 8003E454 21200002 */  addu       $a0, $s0, $zero
    /* 2CC68 8003E458 03000524 */  addiu      $a1, $zero, 0x3
    /* 2CC6C 8003E45C 21300000 */  addu       $a2, $zero, $zero
    /* 2CC70 8003E460 0480143C */  lui        $s4, %hi(func_8003DE84)
    /* 2CC74 8003E464 84DE9426 */  addiu      $s4, $s4, %lo(func_8003DE84)
    /* 2CC78 8003E468 24FB000C */  jal        func_8003EC90
    /* 2CC7C 8003E46C 21388002 */   addu      $a3, $s4, $zero
    /* 2CC80 8003E470 21200002 */  addu       $a0, $s0, $zero
    /* 2CC84 8003E474 05000524 */  addiu      $a1, $zero, 0x5
    /* 2CC88 8003E478 21300000 */  addu       $a2, $zero, $zero
    /* 2CC8C 8003E47C 0480133C */  lui        $s3, %hi(func_8003D9EC)
    /* 2CC90 8003E480 ECD97326 */  addiu      $s3, $s3, %lo(func_8003D9EC)
    /* 2CC94 8003E484 24FB000C */  jal        func_8003EC90
    /* 2CC98 8003E488 21386002 */   addu      $a3, $s3, $zero
    /* 2CC9C 8003E48C 21200002 */  addu       $a0, $s0, $zero
    /* 2CCA0 8003E490 06000524 */  addiu      $a1, $zero, 0x6
    /* 2CCA4 8003E494 21300000 */  addu       $a2, $zero, $zero
    /* 2CCA8 8003E498 0480123C */  lui        $s2, %hi(func_8003DB9C)
    /* 2CCAC 8003E49C 9CDB5226 */  addiu      $s2, $s2, %lo(func_8003DB9C)
    /* 2CCB0 8003E4A0 24FB000C */  jal        func_8003EC90
    /* 2CCB4 8003E4A4 21384002 */   addu      $a3, $s2, $zero
    /* 2CCB8 8003E4A8 21200002 */  addu       $a0, $s0, $zero
    /* 2CCBC 8003E4AC 15000524 */  addiu      $a1, $zero, 0x15
    /* 2CCC0 8003E4B0 21300000 */  addu       $a2, $zero, $zero
    /* 2CCC4 8003E4B4 0480113C */  lui        $s1, %hi(func_8003D9CC)
    /* 2CCC8 8003E4B8 CCD93126 */  addiu      $s1, $s1, %lo(func_8003D9CC)
    /* 2CCCC 8003E4BC 24FB000C */  jal        func_8003EC90
    /* 2CCD0 8003E4C0 21382002 */   addu      $a3, $s1, $zero
    /* 2CCD4 8003E4C4 21200002 */  addu       $a0, $s0, $zero
    /* 2CCD8 8003E4C8 21280000 */  addu       $a1, $zero, $zero
    /* 2CCDC 8003E4CC 01000624 */  addiu      $a2, $zero, 0x1
    /* 2CCE0 8003E4D0 24FB000C */  jal        func_8003EC90
    /* 2CCE4 8003E4D4 21380000 */   addu      $a3, $zero, $zero
    /* 2CCE8 8003E4D8 21200002 */  addu       $a0, $s0, $zero
    /* 2CCEC 8003E4DC 01000524 */  addiu      $a1, $zero, 0x1
    /* 2CCF0 8003E4E0 01000624 */  addiu      $a2, $zero, 0x1
    /* 2CCF4 8003E4E4 2138E002 */  addu       $a3, $s7, $zero
    /* 2CCF8 8003E4E8 BC0A038E */  lw         $v1, 0xABC($s0)
    /* 2CCFC 8003E4EC 02000224 */  addiu      $v0, $zero, 0x2
    /* 2CD00 8003E4F0 440002AE */  sw         $v0, 0x44($s0)
    /* 2CD04 8003E4F4 44000226 */  addiu      $v0, $s0, 0x44
    /* 2CD08 8003E4F8 480010AE */  sw         $s0, 0x48($s0)
    /* 2CD0C 8003E4FC 24FB000C */  jal        func_8003EC90
    /* 2CD10 8003E500 980062AC */   sw        $v0, 0x98($v1)
    /* 2CD14 8003E504 21200002 */  addu       $a0, $s0, $zero
    /* 2CD18 8003E508 02000524 */  addiu      $a1, $zero, 0x2
    /* 2CD1C 8003E50C 01000624 */  addiu      $a2, $zero, 0x1
    /* 2CD20 8003E510 24FB000C */  jal        func_8003EC90
    /* 2CD24 8003E514 2138C002 */   addu      $a3, $s6, $zero
    /* 2CD28 8003E518 21200002 */  addu       $a0, $s0, $zero
    /* 2CD2C 8003E51C 04000524 */  addiu      $a1, $zero, 0x4
    /* 2CD30 8003E520 01000624 */  addiu      $a2, $zero, 0x1
    /* 2CD34 8003E524 24FB000C */  jal        func_8003EC90
    /* 2CD38 8003E528 2138A002 */   addu      $a3, $s5, $zero
    /* 2CD3C 8003E52C 21200002 */  addu       $a0, $s0, $zero
    /* 2CD40 8003E530 03000524 */  addiu      $a1, $zero, 0x3
    /* 2CD44 8003E534 01000624 */  addiu      $a2, $zero, 0x1
    /* 2CD48 8003E538 24FB000C */  jal        func_8003EC90
    /* 2CD4C 8003E53C 21388002 */   addu      $a3, $s4, $zero
    /* 2CD50 8003E540 21200002 */  addu       $a0, $s0, $zero
    /* 2CD54 8003E544 05000524 */  addiu      $a1, $zero, 0x5
    /* 2CD58 8003E548 01000624 */  addiu      $a2, $zero, 0x1
    /* 2CD5C 8003E54C 24FB000C */  jal        func_8003EC90
    /* 2CD60 8003E550 21386002 */   addu      $a3, $s3, $zero
    /* 2CD64 8003E554 21200002 */  addu       $a0, $s0, $zero
    /* 2CD68 8003E558 06000524 */  addiu      $a1, $zero, 0x6
    /* 2CD6C 8003E55C 01000624 */  addiu      $a2, $zero, 0x1
    /* 2CD70 8003E560 24FB000C */  jal        func_8003EC90
    /* 2CD74 8003E564 21384002 */   addu      $a3, $s2, $zero
    /* 2CD78 8003E568 21200002 */  addu       $a0, $s0, $zero
    /* 2CD7C 8003E56C 15000524 */  addiu      $a1, $zero, 0x15
    /* 2CD80 8003E570 01000624 */  addiu      $a2, $zero, 0x1
    /* 2CD84 8003E574 24FB000C */  jal        func_8003EC90
    /* 2CD88 8003E578 21382002 */   addu      $a3, $s1, $zero
    /* 2CD8C 8003E57C 6CF9000C */  jal        func_8003E5B0
    /* 2CD90 8003E580 21200002 */   addu      $a0, $s0, $zero
    /* 2CD94 8003E584 3000BF8F */  lw         $ra, 0x30($sp)
    /* 2CD98 8003E588 2C00B78F */  lw         $s7, 0x2C($sp)
    /* 2CD9C 8003E58C 2800B68F */  lw         $s6, 0x28($sp)
    /* 2CDA0 8003E590 2400B58F */  lw         $s5, 0x24($sp)
    /* 2CDA4 8003E594 2000B48F */  lw         $s4, 0x20($sp)
    /* 2CDA8 8003E598 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 2CDAC 8003E59C 1800B28F */  lw         $s2, 0x18($sp)
    /* 2CDB0 8003E5A0 1400B18F */  lw         $s1, 0x14($sp)
    /* 2CDB4 8003E5A4 1000B08F */  lw         $s0, 0x10($sp)
    /* 2CDB8 8003E5A8 0800E003 */  jr         $ra
    /* 2CDBC 8003E5AC 3800BD27 */   addiu     $sp, $sp, 0x38
endlabel func_8003E3AC
