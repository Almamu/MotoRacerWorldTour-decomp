nonmatching func_80135F10, 0x74

glabel func_80135F10
    /* 33DC 80135F10 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 33E0 80135F14 1000BFAF */  sw         $ra, 0x10($sp)
    /* 33E4 80135F18 291A050C */  jal        func_801468A4
    /* 33E8 80135F1C 00000000 */   nop
    /* 33EC 80135F20 E20A050C */  jal        func_80142B88
    /* 33F0 80135F24 05000424 */   addiu     $a0, $zero, 0x5
    /* 33F4 80135F28 CE19050C */  jal        func_80146738
    /* 33F8 80135F2C 21200000 */   addu      $a0, $zero, $zero
    /* 33FC 80135F30 21200000 */  addu       $a0, $zero, $zero
    /* 3400 80135F34 3E17050C */  jal        func_80145CF8
    /* 3404 80135F38 21280000 */   addu      $a1, $zero, $zero
    /* 3408 80135F3C 21200000 */  addu       $a0, $zero, $zero
    /* 340C 80135F40 F40F050C */  jal        func_80143FD0
    /* 3410 80135F44 21280000 */   addu      $a1, $zero, $zero
    /* 3414 80135F48 1A80023C */  lui        $v0, %hi(D_8019D990)
    /* 3418 80135F4C 90D94484 */  lh         $a0, %lo(D_8019D990)($v0)
    /* 341C 80135F50 FFFF0324 */  addiu      $v1, $zero, -0x1
    /* 3420 80135F54 03008310 */  beq        $a0, $v1, .L80135F64
    /* 3424 80135F58 00000000 */   nop
    /* 3428 80135F5C 6A25050C */  jal        func_801495A8
    /* 342C 80135F60 00000000 */   nop
  .L80135F64:
    /* 3430 80135F64 500E050C */  jal        func_80143940
    /* 3434 80135F68 00000000 */   nop
    /* 3438 80135F6C BC0E050C */  jal        func_80143AF0
    /* 343C 80135F70 00000000 */   nop
    /* 3440 80135F74 1000BF8F */  lw         $ra, 0x10($sp)
    /* 3444 80135F78 00000000 */  nop
    /* 3448 80135F7C 0800E003 */  jr         $ra
    /* 344C 80135F80 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_80135F10
