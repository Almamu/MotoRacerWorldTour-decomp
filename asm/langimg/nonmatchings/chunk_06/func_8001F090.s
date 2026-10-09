nonmatching func_8001F090, 0x3C

glabel func_8001F090
    /* D8A0 8001F090 E060828F */  lw         $v0, %gp_rel(D_800CA7D0)($gp)
    /* D8A4 8001F094 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* D8A8 8001F098 1000BFAF */  sw         $ra, 0x10($sp)
    /* D8AC 8001F09C FFFF4224 */  addiu      $v0, $v0, -0x1
    /* D8B0 8001F0A0 E06082AF */  sw         $v0, %gp_rel(D_800CA7D0)($gp)
    /* D8B4 8001F0A4 05004014 */  bnez       $v0, .L8001F0BC
    /* D8B8 8001F0A8 00000000 */   nop
    /* D8BC 8001F0AC 0D80043C */  lui        $a0, %hi(D_800CA7D8)
    /* D8C0 8001F0B0 D8A78424 */  addiu      $a0, $a0, %lo(D_800CA7D8)
    /* D8C4 8001F0B4 6074000C */  jal        func_8001D180
    /* D8C8 8001F0B8 02000524 */   addiu     $a1, $zero, 0x2
  .L8001F0BC:
    /* D8CC 8001F0BC 1000BF8F */  lw         $ra, 0x10($sp)
    /* D8D0 8001F0C0 00000000 */  nop
    /* D8D4 8001F0C4 0800E003 */  jr         $ra
    /* D8D8 8001F0C8 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_8001F090
