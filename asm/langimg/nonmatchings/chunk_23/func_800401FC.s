nonmatching func_800401FC, 0x38

glabel func_800401FC
    /* 2EA0C 800401FC 0C00A7AF */  sw         $a3, 0xC($sp)
    /* 2EA10 80040200 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 2EA14 80040204 3000A227 */  addiu      $v0, $sp, 0x30
    /* 2EA18 80040208 1800B0AF */  sw         $s0, 0x18($sp)
    /* 2EA1C 8004020C 2180C000 */  addu       $s0, $a2, $zero
    /* 2EA20 80040210 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* 2EA24 80040214 2C00A7AF */  sw         $a3, 0x2C($sp)
    /* 2EA28 80040218 2700010C */  jal        func_8004009C
    /* 2EA2C 8004021C 1000A2AF */   sw        $v0, 0x10($sp)
    /* 2EA30 80040220 21100002 */  addu       $v0, $s0, $zero
    /* 2EA34 80040224 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* 2EA38 80040228 1800B08F */  lw         $s0, 0x18($sp)
    /* 2EA3C 8004022C 0800E003 */  jr         $ra
    /* 2EA40 80040230 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_800401FC
