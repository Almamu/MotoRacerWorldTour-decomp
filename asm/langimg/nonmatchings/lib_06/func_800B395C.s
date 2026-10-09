nonmatching func_800B395C, 0x28

glabel func_800B395C
    /* A216C 800B395C 0C80043C */  lui        $a0, %hi(D_800C3DC4)
    /* A2170 800B3960 C43D848C */  lw         $a0, %lo(D_800C3DC4)($a0)
    /* A2174 800B3964 FFF0033C */  lui        $v1, (0xF0FFFFFF >> 16)
    /* A2178 800B3968 0000828C */  lw         $v0, 0x0($a0)
    /* A217C 800B396C FFFF6334 */  ori        $v1, $v1, (0xF0FFFFFF & 0xFFFF)
    /* A2180 800B3970 24104300 */  and        $v0, $v0, $v1
    /* A2184 800B3974 0020033C */  lui        $v1, (0x20000000 >> 16)
    /* A2188 800B3978 25104300 */  or         $v0, $v0, $v1
    /* A218C 800B397C 0800E003 */  jr         $ra
    /* A2190 800B3980 000082AC */   sw        $v0, 0x0($a0)
endlabel func_800B395C
