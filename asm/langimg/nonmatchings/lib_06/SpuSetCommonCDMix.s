nonmatching SpuSetCommonCDMix, 0x40

glabel SpuSetCommonCDMix
    /* A33C0 800B4BB0 07008014 */  bnez       $a0, .L800B4BD0
    /* A33C4 800B4BB4 00000000 */   nop
    /* A33C8 800B4BB8 0C80033C */  lui        $v1, %hi(_spu_RXX)
    /* A33CC 800B4BBC B03D638C */  lw         $v1, %lo(_spu_RXX)($v1)
    /* A33D0 800B4BC0 00000000 */  nop
    /* A33D4 800B4BC4 AA016294 */  lhu        $v0, 0x1AA($v1)
    /* A33D8 800B4BC8 FAD20208 */  j          .L800B4BE8
    /* A33DC 800B4BCC FEFF4230 */   andi      $v0, $v0, 0xFFFE
  .L800B4BD0:
    /* A33E0 800B4BD0 0C80033C */  lui        $v1, %hi(_spu_RXX)
    /* A33E4 800B4BD4 B03D638C */  lw         $v1, %lo(_spu_RXX)($v1)
    /* A33E8 800B4BD8 00000000 */  nop
    /* A33EC 800B4BDC AA016294 */  lhu        $v0, 0x1AA($v1)
    /* A33F0 800B4BE0 00000000 */  nop
    /* A33F4 800B4BE4 01004234 */  ori        $v0, $v0, 0x1
  .L800B4BE8:
    /* A33F8 800B4BE8 0800E003 */  jr         $ra
    /* A33FC 800B4BEC AA0162A4 */   sh        $v0, 0x1AA($v1)
endlabel SpuSetCommonCDMix
