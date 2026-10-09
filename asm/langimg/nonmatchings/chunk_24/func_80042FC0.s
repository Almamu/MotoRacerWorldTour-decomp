nonmatching func_80042FC0, 0x30

glabel func_80042FC0
    /* 317D0 80042FC0 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 317D4 80042FC4 1000B0AF */  sw         $s0, 0x10($sp)
    /* 317D8 80042FC8 1400BFAF */  sw         $ra, 0x14($sp)
    /* 317DC 80042FCC 3D0B010C */  jal        func_80042CF4
    /* 317E0 80042FD0 21808000 */   addu      $s0, $a0, $zero
    /* 317E4 80042FD4 01000224 */  addiu      $v0, $zero, 0x1
    /* 317E8 80042FD8 F5BD010C */  jal        func_8006F7D4
    /* 317EC 80042FDC 3C0102AE */   sw        $v0, 0x13C($s0)
    /* 317F0 80042FE0 1400BF8F */  lw         $ra, 0x14($sp)
    /* 317F4 80042FE4 1000B08F */  lw         $s0, 0x10($sp)
    /* 317F8 80042FE8 0800E003 */  jr         $ra
    /* 317FC 80042FEC 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_80042FC0
