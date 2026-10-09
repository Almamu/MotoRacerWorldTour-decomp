nonmatching _spu_FsetPCR, 0x58

glabel _spu_FsetPCR
    /* A2114 800B3904 0C80053C */  lui        $a1, %hi(D_800C3DC0)
    /* A2118 800B3908 C03DA58C */  lw         $a1, %lo(D_800C3DC0)($a1)
    /* A211C 800B390C F8FF033C */  lui        $v1, (0xFFF8FFFF >> 16)
    /* A2120 800B3910 0000A28C */  lw         $v0, 0x0($a1)
    /* A2124 800B3914 FFFF6334 */  ori        $v1, $v1, (0xFFF8FFFF & 0xFFFF)
    /* A2128 800B3918 24104300 */  and        $v0, $v0, $v1
    /* A212C 800B391C 07008010 */  beqz       $a0, .L800B393C
    /* A2130 800B3920 0000A2AC */   sw        $v0, 0x0($a1)
    /* A2134 800B3924 0C80023C */  lui        $v0, %hi(D_800C3DC0)
    /* A2138 800B3928 C03D428C */  lw         $v0, %lo(D_800C3DC0)($v0)
    /* A213C 800B392C 00000000 */  nop
    /* A2140 800B3930 0000438C */  lw         $v1, 0x0($v0)
    /* A2144 800B3934 54CE0208 */  j          .L800B3950
    /* A2148 800B3938 0300043C */   lui       $a0, (0x30000 >> 16)
  .L800B393C:
    /* A214C 800B393C 0C80023C */  lui        $v0, %hi(D_800C3DC0)
    /* A2150 800B3940 C03D428C */  lw         $v0, %lo(D_800C3DC0)($v0)
    /* A2154 800B3944 00000000 */  nop
    /* A2158 800B3948 0000438C */  lw         $v1, 0x0($v0)
    /* A215C 800B394C 0500043C */  lui        $a0, (0x50000 >> 16)
  .L800B3950:
    /* A2160 800B3950 25186400 */  or         $v1, $v1, $a0
    /* A2164 800B3954 0800E003 */  jr         $ra
    /* A2168 800B3958 000043AC */   sw        $v1, 0x0($v0)
endlabel _spu_FsetPCR
