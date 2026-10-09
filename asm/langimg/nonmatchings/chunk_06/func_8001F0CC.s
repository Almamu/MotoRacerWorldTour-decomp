nonmatching func_8001F0CC, 0x40

glabel func_8001F0CC
    /* D8DC 8001F0CC E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* D8E0 8001F0D0 E060828F */  lw         $v0, %gp_rel(D_800CA7D0)($gp)
    /* D8E4 8001F0D4 01000324 */  addiu      $v1, $zero, 0x1
    /* D8E8 8001F0D8 1000BFAF */  sw         $ra, 0x10($sp)
    /* D8EC 8001F0DC 01004224 */  addiu      $v0, $v0, 0x1
    /* D8F0 8001F0E0 E06082AF */  sw         $v0, %gp_rel(D_800CA7D0)($gp)
    /* D8F4 8001F0E4 05004314 */  bne        $v0, $v1, .L8001F0FC
    /* D8F8 8001F0E8 00000000 */   nop
    /* D8FC 8001F0EC 0D80043C */  lui        $a0, %hi(D_800CA7D8)
    /* D900 8001F0F0 D8A78424 */  addiu      $a0, $a0, %lo(D_800CA7D8)
    /* D904 8001F0F4 4274000C */  jal        func_8001D108
    /* D908 8001F0F8 00000000 */   nop
  .L8001F0FC:
    /* D90C 8001F0FC 1000BF8F */  lw         $ra, 0x10($sp)
    /* D910 8001F100 00000000 */  nop
    /* D914 8001F104 0800E003 */  jr         $ra
    /* D918 8001F108 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_8001F0CC
