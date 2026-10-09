nonmatching func_800A45B4, 0x54

glabel func_800A45B4
    /* 92DC4 800A45B4 0D80063C */  lui        $a2, %hi(D_800D6098)
    /* 92DC8 800A45B8 C0100400 */  sll        $v0, $a0, 3
    /* 92DCC 800A45BC 21104400 */  addu       $v0, $v0, $a0
    /* 92DD0 800A45C0 C0100200 */  sll        $v0, $v0, 3
    /* 92DD4 800A45C4 23104400 */  subu       $v0, $v0, $a0
    /* 92DD8 800A45C8 80100200 */  sll        $v0, $v0, 2
    /* 92DDC 800A45CC 23104400 */  subu       $v0, $v0, $a0
    /* 92DE0 800A45D0 80100200 */  sll        $v0, $v0, 2
    /* 92DE4 800A45D4 21104400 */  addu       $v0, $v0, $a0
    /* 92DE8 800A45D8 80100200 */  sll        $v0, $v0, 2
    /* 92DEC 800A45DC 23104400 */  subu       $v0, $v0, $a0
    /* 92DF0 800A45E0 80100200 */  sll        $v0, $v0, 2
    /* 92DF4 800A45E4 9860C38C */  lw         $v1, %lo(D_800D6098)($a2)
    /* 92DF8 800A45E8 01000424 */  addiu      $a0, $zero, 0x1
    /* 92DFC 800A45EC 21184300 */  addu       $v1, $v0, $v1
    /* 92E00 800A45F0 040064AC */  sw         $a0, 0x4($v1)
    /* 92E04 800A45F4 9860C58C */  lw         $a1, %lo(D_800D6098)($a2)
    /* 92E08 800A45F8 12000324 */  addiu      $v1, $zero, 0x12
    /* 92E0C 800A45FC 21104500 */  addu       $v0, $v0, $a1
    /* 92E10 800A4600 0800E003 */  jr         $ra
    /* 92E14 800A4604 000043AC */   sw        $v1, 0x0($v0)
endlabel func_800A45B4
