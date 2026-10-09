nonmatching SpuGetVoiceEnvelope, 0x20

glabel SpuGetVoiceEnvelope
    /* 15240 80147D74 1C80023C */  lui        $v0, %hi(_spu_RXX)
    /* 15244 80147D78 14FF428C */  lw         $v0, %lo(_spu_RXX)($v0)
    /* 15248 80147D7C 00210400 */  sll        $a0, $a0, 4
    /* 1524C 80147D80 21208200 */  addu       $a0, $a0, $v0
    /* 15250 80147D84 0C008294 */  lhu        $v0, 0xC($a0)
    /* 15254 80147D88 0800E003 */  jr         $ra
    /* 15258 80147D8C 0000A2A4 */   sh        $v0, 0x0($a1)
    /* 1525C 80147D90 00000000 */  nop
endlabel SpuGetVoiceEnvelope
