nonmatching func_800121C0, 0x34

glabel func_800121C0
    /* 9D0 800121C0 080084AF */  sw         $a0, %gp_rel(D_800C46F8)($gp)
    /* 9D4 800121C4 06008014 */  bnez       $a0, .L800121E0
    /* 9D8 800121C8 00000000 */   nop
    /* 9DC 800121CC 0C80023C */  lui        $v0, %hi(D_800C4750)
    /* 9E0 800121D0 50474224 */  addiu      $v0, $v0, %lo(D_800C4750)
    /* 9E4 800121D4 040082AF */  sw         $v0, %gp_rel(D_800C46F4)($gp)
    /* 9E8 800121D8 0800E003 */  jr         $ra
    /* 9EC 800121DC 00000000 */   nop
  .L800121E0:
    /* 9F0 800121E0 0C80023C */  lui        $v0, %hi(D_800C47D0)
    /* 9F4 800121E4 D0474224 */  addiu      $v0, $v0, %lo(D_800C47D0)
    /* 9F8 800121E8 040082AF */  sw         $v0, %gp_rel(D_800C46F4)($gp)
    /* 9FC 800121EC 0800E003 */  jr         $ra
    /* A00 800121F0 00000000 */   nop
endlabel func_800121C0
