nonmatching func_800B6318, 0x30

glabel func_800B6318
    /* A4B28 800B6318 C641033C */  lui        $v1, (0x41C64E6D >> 16)
    /* A4B2C 800B631C 0E80023C */  lui        $v0, %hi(D_800DE780)
    /* A4B30 800B6320 80E7428C */  lw         $v0, %lo(D_800DE780)($v0)
    /* A4B34 800B6324 6D4E6334 */  ori        $v1, $v1, (0x41C64E6D & 0xFFFF)
    /* A4B38 800B6328 18004300 */  mult       $v0, $v1
    /* A4B3C 800B632C 12200000 */  mflo       $a0
    /* A4B40 800B6330 39308224 */  addiu      $v0, $a0, 0x3039
    /* A4B44 800B6334 0E80013C */  lui        $at, %hi(D_800DE780)
    /* A4B48 800B6338 80E722AC */  sw         $v0, %lo(D_800DE780)($at)
    /* A4B4C 800B633C 02140200 */  srl        $v0, $v0, 16
    /* A4B50 800B6340 0800E003 */  jr         $ra
    /* A4B54 800B6344 FF7F4230 */   andi      $v0, $v0, 0x7FFF
endlabel func_800B6318
