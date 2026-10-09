nonmatching func_8009F580, 0x28

glabel func_8009F580
    /* 8DD90 8009F580 4800C28C */  lw         $v0, 0x48($a2)
    /* 8DD94 8009F584 00000000 */  nop
    /* 8DD98 8009F588 00004394 */  lhu        $v1, 0x0($v0)
    /* 8DD9C 8009F58C 03000424 */  addiu      $a0, $zero, 0x3
    /* 8DDA0 8009F590 287883A7 */  sh         $v1, %gp_rel(D_800CBF18)($gp)
    /* 8DDA4 8009F594 0200A414 */  bne        $a1, $a0, .L8009F5A0
    /* 8DDA8 8009F598 01000224 */   addiu     $v0, $zero, 0x1
    /* 8DDAC 8009F59C F85582A3 */  sb         $v0, %gp_rel(D_800C9CE8)($gp)
  .L8009F5A0:
    /* 8DDB0 8009F5A0 0800E003 */  jr         $ra
    /* 8DDB4 8009F5A4 00000000 */   nop
endlabel func_8009F580
