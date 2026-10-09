nonmatching func_801351D4, 0x54

glabel func_801351D4
    /* 26A0 801351D4 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 26A4 801351D8 2000BFAF */  sw         $ra, 0x20($sp)
    /* 26A8 801351DC 0000838C */  lw         $v1, 0x0($a0)
    /* 26AC 801351E0 FF000224 */  addiu      $v0, $zero, 0xFF
    /* 26B0 801351E4 0C006214 */  bne        $v1, $v0, .L80135218
    /* 26B4 801351E8 01000224 */   addiu     $v0, $zero, 0x1
    /* 26B8 801351EC 1A80033C */  lui        $v1, %hi(D_8019D990)
    /* 26BC 801351F0 0000A2AC */  sw         $v0, 0x0($a1)
    /* 26C0 801351F4 7F000224 */  addiu      $v0, $zero, 0x7F
    /* 26C4 801351F8 21280000 */  addu       $a1, $zero, $zero
    /* 26C8 801351FC 21300000 */  addu       $a2, $zero, $zero
    /* 26CC 80135200 90D96484 */  lh         $a0, %lo(D_8019D990)($v1)
    /* 26D0 80135204 71000724 */  addiu      $a3, $zero, 0x71
    /* 26D4 80135208 1000A0AF */  sw         $zero, 0x10($sp)
    /* 26D8 8013520C 1400A2AF */  sw         $v0, 0x14($sp)
    /* 26DC 80135210 6816050C */  jal        func_801459A0
    /* 26E0 80135214 1800A2AF */   sw        $v0, 0x18($sp)
  .L80135218:
    /* 26E4 80135218 2000BF8F */  lw         $ra, 0x20($sp)
    /* 26E8 8013521C 00000000 */  nop
    /* 26EC 80135220 0800E003 */  jr         $ra
    /* 26F0 80135224 2800BD27 */   addiu     $sp, $sp, 0x28
endlabel func_801351D4
