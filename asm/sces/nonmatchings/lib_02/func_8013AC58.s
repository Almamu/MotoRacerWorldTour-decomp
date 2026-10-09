nonmatching func_8013AC58, 0x3C

glabel func_8013AC58
    /* 8124 8013AC58 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 8128 8013AC5C 05008014 */  bnez       $a0, .L8013AC74
    /* 812C 8013AC60 1000BFAF */   sw        $ra, 0x10($sp)
    /* 8130 8013AC64 D6EB040C */  jal        func_8013AF58
    /* 8134 8013AC68 00000000 */   nop
    /* 8138 8013AC6C 21EB0408 */  j          .L8013AC84
    /* 813C 8013AC70 00000000 */   nop
  .L8013AC74:
    /* 8140 8013AC74 FBEB040C */  jal        func_8013AFEC
    /* 8144 8013AC78 00000000 */   nop
    /* 8148 8013AC7C 02160200 */  srl        $v0, $v0, 24
    /* 814C 8013AC80 01004230 */  andi       $v0, $v0, 0x1
  .L8013AC84:
    /* 8150 8013AC84 1000BF8F */  lw         $ra, 0x10($sp)
    /* 8154 8013AC88 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 8158 8013AC8C 0800E003 */  jr         $ra
    /* 815C 8013AC90 00000000 */   nop
endlabel func_8013AC58
