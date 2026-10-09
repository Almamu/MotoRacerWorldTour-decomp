nonmatching func_80142AC8, 0x20

glabel func_80142AC8
    /* FF94 80142AC8 801F023C */  lui        $v0, (0x1F801120 >> 16)
    /* FF98 80142ACC 20114234 */  ori        $v0, $v0, (0x1F801120 & 0xFFFF)
    /* FF9C 80142AD0 00004294 */  lhu        $v0, 0x0($v0)
    /* FFA0 80142AD4 1D80013C */  lui        $at, %hi(D_801CEA24)
    /* FFA4 80142AD8 24EA24AC */  sw         $a0, %lo(D_801CEA24)($at)
    /* FFA8 80142ADC 1D80013C */  lui        $at, %hi(D_801CEA20)
    /* FFAC 80142AE0 0800E003 */  jr         $ra
    /* FFB0 80142AE4 20EA22AC */   sw        $v0, %lo(D_801CEA20)($at)
endlabel func_80142AC8
