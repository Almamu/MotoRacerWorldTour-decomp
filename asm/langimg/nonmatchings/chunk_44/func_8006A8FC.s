nonmatching func_8006A8FC, 0x18

glabel func_8006A8FC
    /* 5910C 8006A8FC 21108000 */  addu       $v0, $a0, $zero
    /* 59110 8006A900 FFFF0324 */  addiu      $v1, $zero, -0x1
    /* 59114 8006A904 000040AC */  sw         $zero, 0x0($v0)
    /* 59118 8006A908 040040AC */  sw         $zero, 0x4($v0)
    /* 5911C 8006A90C 0800E003 */  jr         $ra
    /* 59120 8006A910 080043AC */   sw        $v1, 0x8($v0)
endlabel func_8006A8FC
