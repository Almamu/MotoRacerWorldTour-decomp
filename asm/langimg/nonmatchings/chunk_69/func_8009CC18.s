nonmatching func_8009CC18, 0x20

glabel func_8009CC18
    /* 8B428 8009CC18 940A828C */  lw         $v0, 0xA94($a0)
    /* 8B42C 8009CC1C 204E0324 */  addiu      $v1, $zero, 0x4E20
    /* 8B430 8009CC20 700183AC */  sw         $v1, 0x170($a0)
    /* 8B434 8009CC24 BFFF0324 */  addiu      $v1, $zero, -0x41
    /* 8B438 8009CC28 740180AC */  sw         $zero, 0x174($a0)
    /* 8B43C 8009CC2C 24104300 */  and        $v0, $v0, $v1
    /* 8B440 8009CC30 0800E003 */  jr         $ra
    /* 8B444 8009CC34 940A82AC */   sw        $v0, 0xA94($a0)
endlabel func_8009CC18
