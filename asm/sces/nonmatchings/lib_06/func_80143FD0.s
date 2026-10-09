nonmatching func_80143FD0, 0x50

glabel func_80143FD0
    /* 1149C 80143FD0 C0FFBD27 */  addiu      $sp, $sp, -0x40
    /* 114A0 80143FD4 03000224 */  addiu      $v0, $zero, 0x3
    /* 114A4 80143FD8 00240400 */  sll        $a0, $a0, 16
    /* 114A8 80143FDC 03240400 */  sra        $a0, $a0, 16
    /* 114AC 80143FE0 1000A2AF */  sw         $v0, 0x10($sp)
    /* 114B0 80143FE4 C0110400 */  sll        $v0, $a0, 7
    /* 114B4 80143FE8 21104400 */  addu       $v0, $v0, $a0
    /* 114B8 80143FEC 002C0500 */  sll        $a1, $a1, 16
    /* 114BC 80143FF0 032C0500 */  sra        $a1, $a1, 16
    /* 114C0 80143FF4 1400A2A7 */  sh         $v0, 0x14($sp)
    /* 114C4 80143FF8 C0110500 */  sll        $v0, $a1, 7
    /* 114C8 80143FFC 21104500 */  addu       $v0, $v0, $a1
    /* 114CC 80144000 1000A427 */  addiu      $a0, $sp, 0x10
    /* 114D0 80144004 3800BFAF */  sw         $ra, 0x38($sp)
    /* 114D4 80144008 140F050C */  jal        func_80143C50
    /* 114D8 8014400C 1600A2A7 */   sh        $v0, 0x16($sp)
    /* 114DC 80144010 3800BF8F */  lw         $ra, 0x38($sp)
    /* 114E0 80144014 4000BD27 */  addiu      $sp, $sp, 0x40
    /* 114E4 80144018 0800E003 */  jr         $ra
    /* 114E8 8014401C 00000000 */   nop
endlabel func_80143FD0
