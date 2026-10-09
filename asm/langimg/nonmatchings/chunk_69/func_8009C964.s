nonmatching func_8009C964, 0x20

glabel func_8009C964
    /* 8B174 8009C964 800A828C */  lw         $v0, 0xA80($a0)
    /* 8B178 8009C968 02000324 */  addiu      $v1, $zero, 0x2
    /* 8B17C 8009C96C 6000448C */  lw         $a0, 0x60($v0)
    /* 8B180 8009C970 0200A314 */  bne        $a1, $v1, .L8009C97C
    /* 8B184 8009C974 01000224 */   addiu     $v0, $zero, 0x1
    /* 8B188 8009C978 DC2182AC */  sw         $v0, 0x21DC($a0)
  .L8009C97C:
    /* 8B18C 8009C97C 0800E003 */  jr         $ra
    /* 8B190 8009C980 00000000 */   nop
endlabel func_8009C964
