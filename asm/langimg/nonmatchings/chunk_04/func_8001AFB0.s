nonmatching func_8001AFB0, 0x44

glabel func_8001AFB0
    /* 97C0 8001AFB0 0000A284 */  lh         $v0, 0x0($a1)
    /* 97C4 8001AFB4 0000838C */  lw         $v1, 0x0($a0)
    /* 97C8 8001AFB8 40110200 */  sll        $v0, $v0, 5
    /* 97CC 8001AFBC 21104300 */  addu       $v0, $v0, $v1
    /* 97D0 8001AFC0 0000C2AC */  sw         $v0, 0x0($a2)
    /* 97D4 8001AFC4 0400878C */  lw         $a3, 0x4($a0)
    /* 97D8 8001AFC8 0200A384 */  lh         $v1, 0x2($a1)
    /* 97DC 8001AFCC 033A0700 */  sra        $a3, $a3, 8
    /* 97E0 8001AFD0 40190300 */  sll        $v1, $v1, 5
    /* 97E4 8001AFD4 21186700 */  addu       $v1, $v1, $a3
    /* 97E8 8001AFD8 0400C3AC */  sw         $v1, 0x4($a2)
    /* 97EC 8001AFDC 0400A284 */  lh         $v0, 0x4($a1)
    /* 97F0 8001AFE0 0800878C */  lw         $a3, 0x8($a0)
    /* 97F4 8001AFE4 40110200 */  sll        $v0, $v0, 5
    /* 97F8 8001AFE8 21104700 */  addu       $v0, $v0, $a3
    /* 97FC 8001AFEC 0800E003 */  jr         $ra
    /* 9800 8001AFF0 0800C2AC */   sw        $v0, 0x8($a2)
endlabel func_8001AFB0
