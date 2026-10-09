nonmatching func_800627C0, 0x18

glabel func_800627C0
    /* 50FD0 800627C0 01000224 */  addiu      $v0, $zero, 0x1
    /* 50FD4 800627C4 E803838C */  lw         $v1, 0x3E8($a0)
    /* 50FD8 800627C8 0410A200 */  sllv       $v0, $v0, $a1
    /* 50FDC 800627CC 25186200 */  or         $v1, $v1, $v0
    /* 50FE0 800627D0 0800E003 */  jr         $ra
    /* 50FE4 800627D4 E80383AC */   sw        $v1, 0x3E8($a0)
endlabel func_800627C0
