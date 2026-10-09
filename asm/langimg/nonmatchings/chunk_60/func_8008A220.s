nonmatching func_8008A220, 0x30

glabel func_8008A220
    /* 78A30 8008A220 08008294 */  lhu        $v0, 0x8($a0)
    /* 78A34 8008A224 5C0080A4 */  sh         $zero, 0x5C($a0)
    /* 78A38 8008A228 5E0080A4 */  sh         $zero, 0x5E($a0)
    /* 78A3C 8008A22C 600080A4 */  sh         $zero, 0x60($a0)
    /* 78A40 8008A230 620080A4 */  sh         $zero, 0x62($a0)
    /* 78A44 8008A234 640080A4 */  sh         $zero, 0x64($a0)
    /* 78A48 8008A238 660080A4 */  sh         $zero, 0x66($a0)
    /* 78A4C 8008A23C 680080A4 */  sh         $zero, 0x68($a0)
    /* 78A50 8008A240 6A0080A4 */  sh         $zero, 0x6A($a0)
    /* 78A54 8008A244 01004224 */  addiu      $v0, $v0, 0x1
    /* 78A58 8008A248 0800E003 */  jr         $ra
    /* 78A5C 8008A24C 080082A4 */   sh        $v0, 0x8($a0)
endlabel func_8008A220
