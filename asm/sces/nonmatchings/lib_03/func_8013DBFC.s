nonmatching func_8013DBFC, 0x30

glabel func_8013DBFC
    /* B0C8 8013DBFC 0010023C */  lui        $v0, (0x10000000 >> 16)
    /* B0CC 8013DC00 1C80033C */  lui        $v1, %hi(D_801BFD40)
    /* B0D0 8013DC04 40FD638C */  lw         $v1, %lo(D_801BFD40)($v1)
    /* B0D4 8013DC08 25208200 */  or         $a0, $a0, $v0
    /* B0D8 8013DC0C 000064AC */  sw         $a0, 0x0($v1)
    /* B0DC 8013DC10 1C80023C */  lui        $v0, %hi(D_801BFD3C)
    /* B0E0 8013DC14 3CFD428C */  lw         $v0, %lo(D_801BFD3C)($v0)
    /* B0E4 8013DC18 FF00033C */  lui        $v1, (0xFFFFFF >> 16)
    /* B0E8 8013DC1C 0000428C */  lw         $v0, 0x0($v0)
    /* B0EC 8013DC20 FFFF6334 */  ori        $v1, $v1, (0xFFFFFF & 0xFFFF)
    /* B0F0 8013DC24 0800E003 */  jr         $ra
    /* B0F4 8013DC28 24104300 */   and       $v0, $v0, $v1
endlabel func_8013DBFC
