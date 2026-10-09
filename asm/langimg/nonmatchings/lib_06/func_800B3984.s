nonmatching func_800B3984, 0x28

glabel func_800B3984
    /* A2194 800B3984 0C80043C */  lui        $a0, %hi(D_800C3DC4)
    /* A2198 800B3988 C43D848C */  lw         $a0, %lo(D_800C3DC4)($a0)
    /* A219C 800B398C FFF0033C */  lui        $v1, (0xF0FFFFFF >> 16)
    /* A21A0 800B3990 0000828C */  lw         $v0, 0x0($a0)
    /* A21A4 800B3994 FFFF6334 */  ori        $v1, $v1, (0xF0FFFFFF & 0xFFFF)
    /* A21A8 800B3998 24104300 */  and        $v0, $v0, $v1
    /* A21AC 800B399C 0022033C */  lui        $v1, (0x22000000 >> 16)
    /* A21B0 800B39A0 25104300 */  or         $v0, $v0, $v1
    /* A21B4 800B39A4 0800E003 */  jr         $ra
    /* A21B8 800B39A8 000082AC */   sw        $v0, 0x0($a0)
endlabel func_800B3984
