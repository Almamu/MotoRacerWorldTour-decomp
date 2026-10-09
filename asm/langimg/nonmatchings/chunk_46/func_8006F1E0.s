nonmatching func_8006F1E0, 0x3C

glabel func_8006F1E0
    /* 5D9F0 8006F1E0 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 5D9F4 8006F1E4 1000B0AF */  sw         $s0, 0x10($sp)
    /* 5D9F8 8006F1E8 1400BFAF */  sw         $ra, 0x14($sp)
    /* 5D9FC 8006F1EC 77BA010C */  jal        func_8006E9DC
    /* 5DA00 8006F1F0 21808000 */   addu      $s0, $a0, $zero
    /* 5DA04 8006F1F4 CAB8010C */  jal        func_8006E328
    /* 5DA08 8006F1F8 40000426 */   addiu     $a0, $s0, 0x40
    /* 5DA0C 8006F1FC 01000224 */  addiu      $v0, $zero, 0x1
    /* 5DA10 8006F200 1400BF8F */  lw         $ra, 0x14($sp)
    /* 5DA14 8006F204 FFFF0324 */  addiu      $v1, $zero, -0x1
    /* 5DA18 8006F208 700002A2 */  sb         $v0, 0x70($s0)
    /* 5DA1C 8006F20C 780003AE */  sw         $v1, 0x78($s0)
    /* 5DA20 8006F210 1000B08F */  lw         $s0, 0x10($sp)
    /* 5DA24 8006F214 0800E003 */  jr         $ra
    /* 5DA28 8006F218 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_8006F1E0
