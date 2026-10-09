nonmatching func_800A13C0, 0x60

glabel func_800A13C0
    /* 8FBD0 800A13C0 0C80053C */  lui        $a1, %hi(D_800BC88C)
    /* 8FBD4 800A13C4 8CC8A524 */  addiu      $a1, $a1, %lo(D_800BC88C)
    /* 8FBD8 800A13C8 CC008224 */  addiu      $v0, $a0, 0xCC
    /* 8FBDC 800A13CC C4008324 */  addiu      $v1, $a0, 0xC4
    /* 8FBE0 800A13D0 341682AC */  sw         $v0, 0x1634($a0)
    /* 8FBE4 800A13D4 D0008224 */  addiu      $v0, $a0, 0xD0
    /* 8FBE8 800A13D8 381683AC */  sw         $v1, 0x1638($a0)
    /* 8FBEC 800A13DC B8008324 */  addiu      $v1, $a0, 0xB8
    /* 8FBF0 800A13E0 401682AC */  sw         $v0, 0x1640($a0)
    /* 8FBF4 800A13E4 BC008224 */  addiu      $v0, $a0, 0xBC
    /* 8FBF8 800A13E8 441683AC */  sw         $v1, 0x1644($a0)
    /* 8FBFC 800A13EC B0008324 */  addiu      $v1, $a0, 0xB0
    /* 8FC00 800A13F0 301685AC */  sw         $a1, 0x1630($a0)
    /* 8FC04 800A13F4 3C1685AC */  sw         $a1, 0x163C($a0)
    /* 8FC08 800A13F8 C8008524 */  addiu      $a1, $a0, 0xC8
    /* 8FC0C 800A13FC 481682AC */  sw         $v0, 0x1648($a0)
    /* 8FC10 800A1400 0D80023C */  lui        $v0, %hi(D_800D4958)
    /* 8FC14 800A1404 58494224 */  addiu      $v0, $v0, %lo(D_800D4958)
    /* 8FC18 800A1408 541682AC */  sw         $v0, 0x1654($a0)
    /* 8FC1C 800A140C F4FF4224 */  addiu      $v0, $v0, -0xC
    /* 8FC20 800A1410 4C1683AC */  sw         $v1, 0x164C($a0)
    /* 8FC24 800A1414 501685AC */  sw         $a1, 0x1650($a0)
    /* 8FC28 800A1418 0800E003 */  jr         $ra
    /* 8FC2C 800A141C 581682AC */   sw        $v0, 0x1658($a0)
endlabel func_800A13C0
