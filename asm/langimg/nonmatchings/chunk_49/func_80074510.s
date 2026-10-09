nonmatching func_80074510, 0x24

glabel func_80074510
    /* 62D20 80074510 21108000 */  addu       $v0, $a0, $zero
    /* 62D24 80074514 01000324 */  addiu      $v1, $zero, 0x1
    /* 62D28 80074518 FFFF0424 */  addiu      $a0, $zero, -0x1
    /* 62D2C 8007451C 000040AC */  sw         $zero, 0x0($v0)
    /* 62D30 80074520 040040AC */  sw         $zero, 0x4($v0)
    /* 62D34 80074524 080043AC */  sw         $v1, 0x8($v0)
    /* 62D38 80074528 0C0044AC */  sw         $a0, 0xC($v0)
    /* 62D3C 8007452C 0800E003 */  jr         $ra
    /* 62D40 80074530 100044AC */   sw        $a0, 0x10($v0)
endlabel func_80074510
