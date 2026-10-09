nonmatching func_80011898, 0x2C

glabel func_80011898
    /* A8 80011898 00008290 */  lbu        $v0, 0x0($a0)
    /* AC 8001189C 4400858F */  lw         $a1, %gp_rel(D_800C4734)($gp)
    /* B0 800118A0 02008390 */  lbu        $v1, 0x2($a0)
    /* B4 800118A4 40120200 */  sll        $v0, $v0, 9
    /* B8 800118A8 20084224 */  addiu      $v0, $v0, 0x820
    /* BC 800118AC 2128A200 */  addu       $a1, $a1, $v0
    /* C0 800118B0 40190300 */  sll        $v1, $v1, 5
    /* C4 800118B4 2128A300 */  addu       $a1, $a1, $v1
    /* C8 800118B8 0C00A294 */  lhu        $v0, 0xC($a1)
    /* CC 800118BC 0800E003 */  jr         $ra
    /* D0 800118C0 00000000 */   nop
endlabel func_80011898
