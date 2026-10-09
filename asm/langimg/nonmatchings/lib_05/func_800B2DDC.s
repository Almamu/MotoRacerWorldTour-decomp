nonmatching func_800B2DDC, 0x20

glabel func_800B2DDC
    /* A15EC 800B2DDC 801F023C */  lui        $v0, (0x1F801120 >> 16)
    /* A15F0 800B2DE0 20114234 */  ori        $v0, $v0, (0x1F801120 & 0xFFFF)
    /* A15F4 800B2DE4 00004294 */  lhu        $v0, 0x0($v0)
    /* A15F8 800B2DE8 0E80013C */  lui        $at, %hi(D_800DE6C4)
    /* A15FC 800B2DEC C4E624AC */  sw         $a0, %lo(D_800DE6C4)($at)
    /* A1600 800B2DF0 0E80013C */  lui        $at, %hi(D_800DE6C0)
    /* A1604 800B2DF4 0800E003 */  jr         $ra
    /* A1608 800B2DF8 C0E622AC */   sw        $v0, %lo(D_800DE6C0)($at)
endlabel func_800B2DDC
