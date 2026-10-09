nonmatching func_8009C984, 0x20

glabel func_8009C984
    /* 8B194 8009C984 800A828C */  lw         $v0, 0xA80($a0)
    /* 8B198 8009C988 02000324 */  addiu      $v1, $zero, 0x2
    /* 8B19C 8009C98C 6000448C */  lw         $a0, 0x60($v0)
    /* 8B1A0 8009C990 0200A314 */  bne        $a1, $v1, .L8009C99C
    /* 8B1A4 8009C994 01000224 */   addiu     $v0, $zero, 0x1
    /* 8B1A8 8009C998 D42182AC */  sw         $v0, 0x21D4($a0)
  .L8009C99C:
    /* 8B1AC 8009C99C 0800E003 */  jr         $ra
    /* 8B1B0 8009C9A0 00000000 */   nop
endlabel func_8009C984
