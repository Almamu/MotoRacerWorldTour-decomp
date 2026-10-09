nonmatching func_80044F9C, 0x2C

glabel func_80044F9C
    /* 337AC 80044F9C 0800A6AF */  sw         $a2, 0x8($sp)
    /* 337B0 80044FA0 0C00A7AF */  sw         $a3, 0xC($sp)
    /* 337B4 80044FA4 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 337B8 80044FA8 2400A727 */  addiu      $a3, $sp, 0x24
    /* 337BC 80044FAC 1000BFAF */  sw         $ra, 0x10($sp)
    /* 337C0 80044FB0 CF13010C */  jal        func_80044F3C
    /* 337C4 80044FB4 2000A6AF */   sw        $a2, 0x20($sp)
    /* 337C8 80044FB8 1000BF8F */  lw         $ra, 0x10($sp)
    /* 337CC 80044FBC 00000000 */  nop
    /* 337D0 80044FC0 0800E003 */  jr         $ra
    /* 337D4 80044FC4 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_80044F9C
