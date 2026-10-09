nonmatching func_8006D3E0, 0x40

glabel func_8006D3E0
    /* 5BBF0 8006D3E0 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 5BBF4 8006D3E4 80100500 */  sll        $v0, $a1, 2
    /* 5BBF8 8006D3E8 21104500 */  addu       $v0, $v0, $a1
    /* 5BBFC 8006D3EC 80100200 */  sll        $v0, $v0, 2
    /* 5BC00 8006D3F0 23104500 */  subu       $v0, $v0, $a1
    /* 5BC04 8006D3F4 80110200 */  sll        $v0, $v0, 6
    /* 5BC08 8006D3F8 21208200 */  addu       $a0, $a0, $v0
    /* 5BC0C 8006D3FC A03885AF */  sw         $a1, %gp_rel(D_800C7F90)($gp)
    /* 5BC10 8006D400 1000BFAF */  sw         $ra, 0x10($sp)
    /* 5BC14 8006D404 4BB4010C */  jal        func_8006D12C
    /* 5BC18 8006D408 2128C000 */   addu      $a1, $a2, $zero
    /* 5BC1C 8006D40C 1000BF8F */  lw         $ra, 0x10($sp)
    /* 5BC20 8006D410 FFFF0224 */  addiu      $v0, $zero, -0x1
    /* 5BC24 8006D414 A03882AF */  sw         $v0, %gp_rel(D_800C7F90)($gp)
    /* 5BC28 8006D418 0800E003 */  jr         $ra
    /* 5BC2C 8006D41C 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_8006D3E0
