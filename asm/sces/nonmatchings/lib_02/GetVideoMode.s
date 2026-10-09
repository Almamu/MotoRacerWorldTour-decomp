nonmatching GetVideoMode, 0x10

glabel GetVideoMode
    /* 9180 8013BCB4 1C80023C */  lui        $v0, %hi(D_801BF048)
    /* 9184 8013BCB8 48F0428C */  lw         $v0, %lo(D_801BF048)($v0)
    /* 9188 8013BCBC 0800E003 */  jr         $ra
    /* 918C 8013BCC0 00000000 */   nop
endlabel GetVideoMode
    /* 9190 8013BCC4 00000000 */  nop
    /* 9194 8013BCC8 00000000 */  nop
    /* 9198 8013BCCC 00000000 */  nop
