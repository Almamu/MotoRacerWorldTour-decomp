nonmatching func_80099B60, 0x28

glabel func_80099B60
    /* 88370 80099B60 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 88374 80099B64 1000B0AF */  sw         $s0, 0x10($sp)
    /* 88378 80099B68 1400BFAF */  sw         $ra, 0x14($sp)
    /* 8837C 80099B6C 8E66020C */  jal        func_80099A38
    /* 88380 80099B70 21808000 */   addu      $s0, $a0, $zero
    /* 88384 80099B74 21100002 */  addu       $v0, $s0, $zero
    /* 88388 80099B78 1400BF8F */  lw         $ra, 0x14($sp)
    /* 8838C 80099B7C 1000B08F */  lw         $s0, 0x10($sp)
    /* 88390 80099B80 0800E003 */  jr         $ra
    /* 88394 80099B84 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_80099B60
