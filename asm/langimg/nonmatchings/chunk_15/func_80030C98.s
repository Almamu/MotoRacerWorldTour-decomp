nonmatching func_80030C98, 0x58

glabel func_80030C98
    /* 1F4A8 80030C98 6210033C */  lui        $v1, (0x10624DD3 >> 16)
    /* 1F4AC 80030C9C D34D6334 */  ori        $v1, $v1, (0x10624DD3 & 0xFFFF)
    /* 1F4B0 80030CA0 002C0500 */  sll        $a1, $a1, 16
    /* 1F4B4 80030CA4 032C0500 */  sra        $a1, $a1, 16
    /* 1F4B8 80030CA8 2110A000 */  addu       $v0, $a1, $zero
    /* 1F4BC 80030CAC 003B0200 */  sll        $a3, $v0, 12
    /* 1F4C0 80030CB0 1800E300 */  mult       $a3, $v1
    /* 1F4C4 80030CB4 10300000 */  mfhi       $a2
    /* 1F4C8 80030CB8 40130200 */  sll        $v0, $v0, 13
    /* 1F4CC 80030CBC 00000000 */  nop
    /* 1F4D0 80030CC0 18004300 */  mult       $v0, $v1
    /* 1F4D4 80030CC4 C33F0700 */  sra        $a3, $a3, 31
    /* 1F4D8 80030CC8 980285A4 */  sh         $a1, 0x298($a0)
    /* 1F4DC 80030CCC 83310600 */  sra        $a2, $a2, 6
    /* 1F4E0 80030CD0 2330C700 */  subu       $a2, $a2, $a3
    /* 1F4E4 80030CD4 C3170200 */  sra        $v0, $v0, 31
    /* 1F4E8 80030CD8 900286AC */  sw         $a2, 0x290($a0)
    /* 1F4EC 80030CDC 10180000 */  mfhi       $v1
    /* 1F4F0 80030CE0 83190300 */  sra        $v1, $v1, 6
    /* 1F4F4 80030CE4 23186200 */  subu       $v1, $v1, $v0
    /* 1F4F8 80030CE8 0800E003 */  jr         $ra
    /* 1F4FC 80030CEC 940283AC */   sw        $v1, 0x294($a0)
endlabel func_80030C98
