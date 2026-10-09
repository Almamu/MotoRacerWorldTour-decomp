nonmatching func_8006AF80, 0x24

glabel func_8006AF80
    /* 59790 8006AF80 21108000 */  addu       $v0, $a0, $zero
    /* 59794 8006AF84 FFFF0324 */  addiu      $v1, $zero, -0x1
    /* 59798 8006AF88 000040AC */  sw         $zero, 0x0($v0)
    /* 5979C 8006AF8C 040040AC */  sw         $zero, 0x4($v0)
    /* 597A0 8006AF90 140043AC */  sw         $v1, 0x14($v0)
    /* 597A4 8006AF94 1C0040AC */  sw         $zero, 0x1C($v0)
    /* 597A8 8006AF98 200040AC */  sw         $zero, 0x20($v0)
    /* 597AC 8006AF9C 0800E003 */  jr         $ra
    /* 597B0 8006AFA0 180040AC */   sw        $zero, 0x18($v0)
endlabel func_8006AF80
