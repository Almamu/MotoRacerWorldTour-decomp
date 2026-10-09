nonmatching func_8009C944, 0x20

glabel func_8009C944
    /* 8B154 8009C944 800A828C */  lw         $v0, 0xA80($a0)
    /* 8B158 8009C948 02000324 */  addiu      $v1, $zero, 0x2
    /* 8B15C 8009C94C 6000448C */  lw         $a0, 0x60($v0)
    /* 8B160 8009C950 0200A314 */  bne        $a1, $v1, .L8009C95C
    /* 8B164 8009C954 01000224 */   addiu     $v0, $zero, 0x1
    /* 8B168 8009C958 D82182AC */  sw         $v0, 0x21D8($a0)
  .L8009C95C:
    /* 8B16C 8009C95C 0800E003 */  jr         $ra
    /* 8B170 8009C960 00000000 */   nop
endlabel func_8009C944
