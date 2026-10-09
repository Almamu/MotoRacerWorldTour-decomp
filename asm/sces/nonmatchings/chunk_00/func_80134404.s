nonmatching func_80134404, 0x20

glabel func_80134404
    /* 18D0 80134404 0000838C */  lw         $v1, 0x0($a0)
    /* 18D4 80134408 FF000224 */  addiu      $v0, $zero, 0xFF
    /* 18D8 8013440C 03006214 */  bne        $v1, $v0, .L8013441C
    /* 18DC 80134410 1580033C */   lui       $v1, %hi(D_8014D0F4)
    /* 18E0 80134414 01000224 */  addiu      $v0, $zero, 0x1
    /* 18E4 80134418 F4D062AC */  sw         $v0, %lo(D_8014D0F4)($v1)
  .L8013441C:
    /* 18E8 8013441C 0800E003 */  jr         $ra
    /* 18EC 80134420 00000000 */   nop
endlabel func_80134404
