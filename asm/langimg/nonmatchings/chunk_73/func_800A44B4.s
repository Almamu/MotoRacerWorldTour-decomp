nonmatching func_800A44B4, 0x44

glabel func_800A44B4
    /* 92CC4 800A44B4 0D80023C */  lui        $v0, %hi(D_800D6098)
    /* 92CC8 800A44B8 C0180400 */  sll        $v1, $a0, 3
    /* 92CCC 800A44BC 21186400 */  addu       $v1, $v1, $a0
    /* 92CD0 800A44C0 C0180300 */  sll        $v1, $v1, 3
    /* 92CD4 800A44C4 23186400 */  subu       $v1, $v1, $a0
    /* 92CD8 800A44C8 80180300 */  sll        $v1, $v1, 2
    /* 92CDC 800A44CC 23186400 */  subu       $v1, $v1, $a0
    /* 92CE0 800A44D0 80180300 */  sll        $v1, $v1, 2
    /* 92CE4 800A44D4 21186400 */  addu       $v1, $v1, $a0
    /* 92CE8 800A44D8 80180300 */  sll        $v1, $v1, 2
    /* 92CEC 800A44DC 23186400 */  subu       $v1, $v1, $a0
    /* 92CF0 800A44E0 9860458C */  lw         $a1, %lo(D_800D6098)($v0)
    /* 92CF4 800A44E4 80180300 */  sll        $v1, $v1, 2
    /* 92CF8 800A44E8 21186500 */  addu       $v1, $v1, $a1
    /* 92CFC 800A44EC BC46628C */  lw         $v0, 0x46BC($v1)
    /* 92D00 800A44F0 0800E003 */  jr         $ra
    /* 92D04 800A44F4 00000000 */   nop
endlabel func_800A44B4
