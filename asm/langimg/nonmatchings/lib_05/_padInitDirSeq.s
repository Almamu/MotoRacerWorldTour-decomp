nonmatching _padInitDirSeq, 0x34

glabel _padInitDirSeq
    /* A115C 800B294C 0B80023C */  lui        $v0, %hi(func_800B2980)
    /* A1160 800B2950 80294224 */  addiu      $v0, $v0, %lo(func_800B2980)
    /* A1164 800B2954 0C80013C */  lui        $at, %hi(_padFuncSendAuto)
    /* A1168 800B2958 A03C22AC */  sw         $v0, %lo(_padFuncSendAuto)($at)
    /* A116C 800B295C 0B80023C */  lui        $v0, %hi(func_800B2DAC)
    /* A1170 800B2960 AC2D4224 */  addiu      $v0, $v0, %lo(func_800B2DAC)
    /* A1174 800B2964 0C80013C */  lui        $at, %hi(_padFuncChkEng)
    /* A1178 800B2968 A43C22AC */  sw         $v0, %lo(_padFuncChkEng)($at)
    /* A117C 800B296C 0B80023C */  lui        $v0, %hi(func_800B2A80)
    /* A1180 800B2970 802A4224 */  addiu      $v0, $v0, %lo(func_800B2A80)
    /* A1184 800B2974 0C80013C */  lui        $at, %hi(_padFuncRecvAuto)
    /* A1188 800B2978 0800E003 */  jr         $ra
    /* A118C 800B297C A83C22AC */   sw        $v0, %lo(_padFuncRecvAuto)($at)
endlabel _padInitDirSeq
