nonmatching func_80099DCC, 0x2C

glabel func_80099DCC
    /* 885DC 80099DCC 21108000 */  addu       $v0, $a0, $zero
    /* 885E0 80099DD0 0000A38C */  lw         $v1, 0x0($a1)
    /* 885E4 80099DD4 0400A78C */  lw         $a3, 0x4($a1)
    /* 885E8 80099DD8 0800A88C */  lw         $t0, 0x8($a1)
    /* 885EC 80099DDC 0718C300 */  srav       $v1, $v1, $a2
    /* 885F0 80099DE0 0738C700 */  srav       $a3, $a3, $a2
    /* 885F4 80099DE4 0740C800 */  srav       $t0, $t0, $a2
    /* 885F8 80099DE8 000043AC */  sw         $v1, 0x0($v0)
    /* 885FC 80099DEC 040047AC */  sw         $a3, 0x4($v0)
    /* 88600 80099DF0 0800E003 */  jr         $ra
    /* 88604 80099DF4 080048AC */   sw        $t0, 0x8($v0)
endlabel func_80099DCC
