nonmatching func_80013098, 0x34

glabel func_80013098
    /* 18A8 80013098 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 18AC 8001309C 1000BFAF */  sw         $ra, 0x10($sp)
    /* 18B0 800130A0 D24C000C */  jal        func_80013348
    /* 18B4 800130A4 00000000 */   nop
    /* 18B8 800130A8 04004010 */  beqz       $v0, .L800130BC
    /* 18BC 800130AC 00000000 */   nop
    /* 18C0 800130B0 0A004280 */  lb         $v0, 0xA($v0)
    /* 18C4 800130B4 00000000 */  nop
    /* 18C8 800130B8 340082AF */  sw         $v0, %gp_rel(D_800C4724)($gp)
  .L800130BC:
    /* 18CC 800130BC 1000BF8F */  lw         $ra, 0x10($sp)
    /* 18D0 800130C0 00000000 */  nop
    /* 18D4 800130C4 0800E003 */  jr         $ra
    /* 18D8 800130C8 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_80013098
