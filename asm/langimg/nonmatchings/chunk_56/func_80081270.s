nonmatching func_80081270, 0x54

glabel func_80081270
    /* 6FA80 80081270 0000828C */  lw         $v0, 0x0($a0)
    /* 6FA84 80081274 00000000 */  nop
    /* 6FA88 80081278 10004010 */  beqz       $v0, .L800812BC
    /* 6FA8C 8008127C FFFF0724 */   addiu     $a3, $zero, -0x1
    /* 6FA90 80081280 21180000 */  addu       $v1, $zero, $zero
    /* 6FA94 80081284 0800848C */  lw         $a0, 0x8($a0)
    /* 6FA98 80081288 FFFF0824 */  addiu      $t0, $zero, -0x1
    /* 6FA9C 8008128C 21304000 */  addu       $a2, $v0, $zero
  .L80081290:
    /* 6FAA0 80081290 2A106400 */  slt        $v0, $v1, $a0
    /* 6FAA4 80081294 09004010 */  beqz       $v0, .L800812BC
    /* 6FAA8 80081298 00000000 */   nop
    /* 6FAAC 8008129C 0000C28C */  lw         $v0, 0x0($a2)
    /* 6FAB0 800812A0 00000000 */  nop
    /* 6FAB4 800812A4 02004514 */  bne        $v0, $a1, .L800812B0
    /* 6FAB8 800812A8 00000000 */   nop
    /* 6FABC 800812AC 21386000 */  addu       $a3, $v1, $zero
  .L800812B0:
    /* 6FAC0 800812B0 0400C624 */  addiu      $a2, $a2, 0x4
    /* 6FAC4 800812B4 F6FFE810 */  beq        $a3, $t0, .L80081290
    /* 6FAC8 800812B8 01006324 */   addiu     $v1, $v1, 0x1
  .L800812BC:
    /* 6FACC 800812BC 0800E003 */  jr         $ra
    /* 6FAD0 800812C0 2110E000 */   addu      $v0, $a3, $zero
endlabel func_80081270
