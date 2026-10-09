nonmatching func_80136540, 0x80

glabel func_80136540
    /* 3A0C 80136540 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 3A10 80136544 21200000 */  addu       $a0, $zero, $zero
    /* 3A14 80136548 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* 3A18 8013654C D9F0040C */  jal        func_8013C364
    /* 3A1C 80136550 1800B0AF */   sw        $s0, 0x18($sp)
    /* 3A20 80136554 1000A427 */  addiu      $a0, $sp, 0x10
    /* 3A24 80136558 21280000 */  addu       $a1, $zero, $zero
    /* 3A28 8013655C 21300000 */  addu       $a2, $zero, $zero
    /* 3A2C 80136560 80021024 */  addiu      $s0, $zero, 0x280
    /* 3A30 80136564 00020224 */  addiu      $v0, $zero, 0x200
    /* 3A34 80136568 21380000 */  addu       $a3, $zero, $zero
    /* 3A38 8013656C 1000A0A7 */  sh         $zero, 0x10($sp)
    /* 3A3C 80136570 1200A0A7 */  sh         $zero, 0x12($sp)
    /* 3A40 80136574 1400B0A7 */  sh         $s0, 0x14($sp)
    /* 3A44 80136578 3AF1040C */  jal        func_8013C4E8
    /* 3A48 8013657C 1600A2A7 */   sh        $v0, 0x16($sp)
    /* 3A4C 80136580 1000A427 */  addiu      $a0, $sp, 0x10
    /* 3A50 80136584 21280000 */  addu       $a1, $zero, $zero
    /* 3A54 80136588 FF010624 */  addiu      $a2, $zero, 0x1FF
    /* 3A58 8013658C FE010224 */  addiu      $v0, $zero, 0x1FE
    /* 3A5C 80136590 01000324 */  addiu      $v1, $zero, 0x1
    /* 3A60 80136594 1000A0A7 */  sh         $zero, 0x10($sp)
    /* 3A64 80136598 1200A2A7 */  sh         $v0, 0x12($sp)
    /* 3A68 8013659C 1400B0A7 */  sh         $s0, 0x14($sp)
    /* 3A6C 801365A0 8EF1040C */  jal        func_8013C638
    /* 3A70 801365A4 1600A3A7 */   sh        $v1, 0x16($sp)
    /* 3A74 801365A8 D9F0040C */  jal        func_8013C364
    /* 3A78 801365AC 21200000 */   addu      $a0, $zero, $zero
    /* 3A7C 801365B0 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* 3A80 801365B4 1800B08F */  lw         $s0, 0x18($sp)
    /* 3A84 801365B8 0800E003 */  jr         $ra
    /* 3A88 801365BC 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_80136540
