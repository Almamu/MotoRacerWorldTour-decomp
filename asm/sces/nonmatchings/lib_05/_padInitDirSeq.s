nonmatching _padInitDirSeq, 0x34

glabel _padInitDirSeq
    /* FAD4 80142608 1480023C */  lui        $v0, %hi(func_8014263C)
    /* FAD8 8014260C 3C264224 */  addiu      $v0, $v0, %lo(func_8014263C)
    /* FADC 80142610 1C80013C */  lui        $at, %hi(D_801BFE74)
    /* FAE0 80142614 74FE22AC */  sw         $v0, %lo(D_801BFE74)($at)
    /* FAE4 80142618 1480023C */  lui        $v0, %hi(func_80142A90)
    /* FAE8 8014261C 902A4224 */  addiu      $v0, $v0, %lo(func_80142A90)
    /* FAEC 80142620 1C80013C */  lui        $at, %hi(D_801BFE78)
    /* FAF0 80142624 78FE22AC */  sw         $v0, %lo(D_801BFE78)($at)
    /* FAF4 80142628 1480023C */  lui        $v0, %hi(func_8014274C)
    /* FAF8 8014262C 4C274224 */  addiu      $v0, $v0, %lo(func_8014274C)
    /* FAFC 80142630 1C80013C */  lui        $at, %hi(D_801BFE7C)
    /* FB00 80142634 0800E003 */  jr         $ra
    /* FB04 80142638 7CFE22AC */   sw        $v0, %lo(D_801BFE7C)($at)
endlabel _padInitDirSeq
