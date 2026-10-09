nonmatching func_8008C78C, 0x5C

glabel func_8008C78C
    /* 7AF9C 8008C78C E476828F */  lw         $v0, %gp_rel(D_800CBDD4)($gp)
    /* 7AFA0 8008C790 0477838F */  lw         $v1, %gp_rel(D_800CBDF4)($gp)
    /* 7AFA4 8008C794 DC76848F */  lw         $a0, %gp_rel(D_800CBDCC)($gp)
    /* 7AFA8 8008C798 01004224 */  addiu      $v0, $v0, 0x1
    /* 7AFAC 8008C79C E47682AF */  sw         $v0, %gp_rel(D_800CBDD4)($gp)
    /* 7AFB0 8008C7A0 F476828F */  lw         $v0, %gp_rel(D_800CBDE4)($gp)
    /* 7AFB4 8008C7A4 01006324 */  addiu      $v1, $v1, 0x1
    /* 7AFB8 8008C7A8 047783AF */  sw         $v1, %gp_rel(D_800CBDF4)($gp)
    /* 7AFBC 8008C7AC F876838F */  lw         $v1, %gp_rel(D_800CBDE8)($gp)
    /* 7AFC0 8008C7B0 01008424 */  addiu      $a0, $a0, 0x1
    /* 7AFC4 8008C7B4 DC7684AF */  sw         $a0, %gp_rel(D_800CBDCC)($gp)
    /* 7AFC8 8008C7B8 0077848F */  lw         $a0, %gp_rel(D_800CBDF0)($gp)
    /* 7AFCC 8008C7BC 01004224 */  addiu      $v0, $v0, 0x1
    /* 7AFD0 8008C7C0 01006324 */  addiu      $v1, $v1, 0x1
    /* 7AFD4 8008C7C4 F47682AF */  sw         $v0, %gp_rel(D_800CBDE4)($gp)
    /* 7AFD8 8008C7C8 FC76828F */  lw         $v0, %gp_rel(D_800CBDEC)($gp)
    /* 7AFDC 8008C7CC 01008424 */  addiu      $a0, $a0, 0x1
    /* 7AFE0 8008C7D0 F87683AF */  sw         $v1, %gp_rel(D_800CBDE8)($gp)
    /* 7AFE4 8008C7D4 007784AF */  sw         $a0, %gp_rel(D_800CBDF0)($gp)
    /* 7AFE8 8008C7D8 01004224 */  addiu      $v0, $v0, 0x1
    /* 7AFEC 8008C7DC FC7682AF */  sw         $v0, %gp_rel(D_800CBDEC)($gp)
    /* 7AFF0 8008C7E0 0800E003 */  jr         $ra
    /* 7AFF4 8008C7E4 00000000 */   nop
endlabel func_8008C78C
