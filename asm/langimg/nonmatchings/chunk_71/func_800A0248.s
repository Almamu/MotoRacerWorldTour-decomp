nonmatching func_800A0248, 0x54

glabel func_800A0248
    /* 8EA58 800A0248 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 8EA5C 800A024C 1400B1AF */  sw         $s1, 0x14($sp)
    /* 8EA60 800A0250 05001124 */  addiu      $s1, $zero, 0x5
    /* 8EA64 800A0254 1800B2AF */  sw         $s2, 0x18($sp)
    /* 8EA68 800A0258 21908000 */  addu       $s2, $a0, $zero
    /* 8EA6C 800A025C 1000B0AF */  sw         $s0, 0x10($sp)
    /* 8EA70 800A0260 04005026 */  addiu      $s0, $s2, 0x4
    /* 8EA74 800A0264 1C00BFAF */  sw         $ra, 0x1C($sp)
  .L800A0268:
    /* 8EA78 800A0268 4F80020C */  jal        func_800A013C
    /* 8EA7C 800A026C 21200002 */   addu      $a0, $s0, $zero
    /* 8EA80 800A0270 FFFF3126 */  addiu      $s1, $s1, -0x1
    /* 8EA84 800A0274 FCFF2016 */  bnez       $s1, .L800A0268
    /* 8EA88 800A0278 0C001026 */   addiu     $s0, $s0, 0xC
    /* 8EA8C 800A027C 4F80020C */  jal        func_800A013C
    /* 8EA90 800A0280 40004426 */   addiu     $a0, $s2, 0x40
    /* 8EA94 800A0284 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* 8EA98 800A0288 1800B28F */  lw         $s2, 0x18($sp)
    /* 8EA9C 800A028C 1400B18F */  lw         $s1, 0x14($sp)
    /* 8EAA0 800A0290 1000B08F */  lw         $s0, 0x10($sp)
    /* 8EAA4 800A0294 0800E003 */  jr         $ra
    /* 8EAA8 800A0298 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_800A0248
