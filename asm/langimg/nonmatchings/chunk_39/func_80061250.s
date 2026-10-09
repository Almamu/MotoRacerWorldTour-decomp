nonmatching func_80061250, 0x34

glabel func_80061250
    /* 4FA60 80061250 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 4FA64 80061254 1000B0AF */  sw         $s0, 0x10($sp)
    /* 4FA68 80061258 1400BFAF */  sw         $ra, 0x14($sp)
    /* 4FA6C 8006125C A184010C */  jal        func_80061284
    /* 4FA70 80061260 21808000 */   addu      $s0, $a0, $zero
    /* 4FA74 80061264 1400BF8F */  lw         $ra, 0x14($sp)
    /* 4FA78 80061268 1A000224 */  addiu      $v0, $zero, 0x1A
    /* 4FA7C 8006126C 850100A2 */  sb         $zero, 0x185($s0)
    /* 4FA80 80061270 E40300AE */  sw         $zero, 0x3E4($s0)
    /* 4FA84 80061274 DD0302A2 */  sb         $v0, 0x3DD($s0)
    /* 4FA88 80061278 1000B08F */  lw         $s0, 0x10($sp)
    /* 4FA8C 8006127C 0800E003 */  jr         $ra
    /* 4FA90 80061280 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_80061250
