nonmatching func_80099DA0, 0x2C

glabel func_80099DA0
    /* 885B0 80099DA0 21108000 */  addu       $v0, $a0, $zero
    /* 885B4 80099DA4 0000A38C */  lw         $v1, 0x0($a1)
    /* 885B8 80099DA8 0400A78C */  lw         $a3, 0x4($a1)
    /* 885BC 80099DAC 0800A88C */  lw         $t0, 0x8($a1)
    /* 885C0 80099DB0 0418C300 */  sllv       $v1, $v1, $a2
    /* 885C4 80099DB4 0438C700 */  sllv       $a3, $a3, $a2
    /* 885C8 80099DB8 0440C800 */  sllv       $t0, $t0, $a2
    /* 885CC 80099DBC 000043AC */  sw         $v1, 0x0($v0)
    /* 885D0 80099DC0 040047AC */  sw         $a3, 0x4($v0)
    /* 885D4 80099DC4 0800E003 */  jr         $ra
    /* 885D8 80099DC8 080048AC */   sw        $t0, 0x8($v0)
endlabel func_80099DA0
