nonmatching _padSetVsyncParam, 0x2C

glabel _padSetVsyncParam
    /* D5B0 801400E4 1D80023C */  lui        $v0, %hi(D_801CE784)
    /* D5B4 801400E8 84E74224 */  addiu      $v0, $v0, %lo(D_801CE784)
    /* D5B8 801400EC 1480033C */  lui        $v1, %hi(func_80140178)
    /* D5BC 801400F0 78016324 */  addiu      $v1, $v1, %lo(func_80140178)
    /* D5C0 801400F4 000043AC */  sw         $v1, 0x0($v0)
    /* D5C4 801400F8 1480033C */  lui        $v1, %hi(func_80140110)
    /* D5C8 801400FC 10016324 */  addiu      $v1, $v1, %lo(func_80140110)
    /* D5CC 80140100 040043AC */  sw         $v1, 0x4($v0)
    /* D5D0 80140104 FCFF40AC */  sw         $zero, -0x4($v0)
    /* D5D4 80140108 0800E003 */  jr         $ra
    /* D5D8 8014010C 080040AC */   sw        $zero, 0x8($v0)
endlabel _padSetVsyncParam
