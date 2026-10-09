nonmatching func_80096508, 0x30

glabel func_80096508
    /* 84D18 80096508 C8FFBD27 */  addiu      $sp, $sp, -0x38
    /* 84D1C 8009650C 01000424 */  addiu      $a0, $zero, 0x1
    /* 84D20 80096510 21280000 */  addu       $a1, $zero, $zero
    /* 84D24 80096514 3000BFAF */  sw         $ra, 0x30($sp)
    /* 84D28 80096518 4B9E020C */  jal        CdControlB
    /* 84D2C 8009651C 1000A627 */   addiu     $a2, $sp, 0x10
    /* 84D30 80096520 1000A28F */  lw         $v0, 0x10($sp)
    /* 84D34 80096524 3000BF8F */  lw         $ra, 0x30($sp)
    /* 84D38 80096528 02110200 */  srl        $v0, $v0, 4
    /* 84D3C 8009652C 01004230 */  andi       $v0, $v0, 0x1
    /* 84D40 80096530 0800E003 */  jr         $ra
    /* 84D44 80096534 3800BD27 */   addiu     $sp, $sp, 0x38
endlabel func_80096508
