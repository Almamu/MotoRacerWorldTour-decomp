nonmatching func_8009E2FC, 0x1C

glabel func_8009E2FC
    /* 8CB0C 8009E2FC 2400838C */  lw         $v1, 0x24($a0)
    /* 8CB10 8009E300 00000000 */  nop
    /* 8CB14 8009E304 0400628C */  lw         $v0, 0x4($v1)
    /* 8CB18 8009E308 00000000 */  nop
    /* 8CB1C 8009E30C 02004234 */  ori        $v0, $v0, 0x2
    /* 8CB20 8009E310 0800E003 */  jr         $ra
    /* 8CB24 8009E314 040062AC */   sw        $v0, 0x4($v1)
endlabel func_8009E2FC
