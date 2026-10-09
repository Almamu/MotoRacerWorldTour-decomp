nonmatching func_80011DA8, 0x60

glabel func_80011DA8
    /* 5B8 80011DA8 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 5BC 80011DAC 1400B1AF */  sw         $s1, 0x14($sp)
    /* 5C0 80011DB0 21888000 */  addu       $s1, $a0, $zero
    /* 5C4 80011DB4 1000B0AF */  sw         $s0, 0x10($sp)
    /* 5C8 80011DB8 1800BFAF */  sw         $ra, 0x18($sp)
    /* 5CC 80011DBC C5CF020C */  jal        func_800B3F14
    /* 5D0 80011DC0 2180A000 */   addu      $s0, $a1, $zero
    /* 5D4 80011DC4 FCD2020C */  jal        func_800B4BF0
    /* 5D8 80011DC8 21202002 */   addu      $a0, $s1, $zero
    /* 5DC 80011DCC 00861000 */  sll        $s0, $s0, 24
    /* 5E0 80011DD0 03841000 */  sra        $s0, $s0, 16
    /* 5E4 80011DD4 21200002 */  addu       $a0, $s0, $zero
    /* 5E8 80011DD8 A4D4020C */  jal        func_800B5290
    /* 5EC 80011DDC 21288000 */   addu      $a1, $a0, $zero
    /* 5F0 80011DE0 B1CE020C */  jal        func_800B3AC4
    /* 5F4 80011DE4 01000424 */   addiu     $a0, $zero, 0x1
    /* 5F8 80011DE8 1800BF8F */  lw         $ra, 0x18($sp)
    /* 5FC 80011DEC 1400B18F */  lw         $s1, 0x14($sp)
    /* 600 80011DF0 1000B08F */  lw         $s0, 0x10($sp)
    /* 604 80011DF4 4D0080A3 */  sb         $zero, %gp_rel(D_800C473D)($gp)
    /* 608 80011DF8 4E0080A3 */  sb         $zero, %gp_rel(D_800C473E)($gp)
    /* 60C 80011DFC 500080AF */  sw         $zero, %gp_rel(D_800C4740)($gp)
    /* 610 80011E00 0800E003 */  jr         $ra
    /* 614 80011E04 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_80011DA8
