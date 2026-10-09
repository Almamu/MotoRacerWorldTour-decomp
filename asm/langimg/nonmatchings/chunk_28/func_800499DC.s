nonmatching func_800499DC, 0x48

glabel func_800499DC
    /* 381EC 800499DC E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 381F0 800499E0 0C80053C */  lui        $a1, %hi(D_800C5E3C)
    /* 381F4 800499E4 80100400 */  sll        $v0, $a0, 2
    /* 381F8 800499E8 0D80033C */  lui        $v1, %hi(D_800C9E94)
    /* 381FC 800499EC 949E6324 */  addiu      $v1, $v1, %lo(D_800C9E94)
    /* 38200 800499F0 21104300 */  addu       $v0, $v0, $v1
    /* 38204 800499F4 0D80043C */  lui        $a0, %hi(D_800D4798)
    /* 38208 800499F8 98478424 */  addiu      $a0, $a0, %lo(D_800D4798)
    /* 3820C 800499FC 1000BFAF */  sw         $ra, 0x10($sp)
    /* 38210 80049A00 0000468C */  lw         $a2, 0x0($v0)
    /* 38214 80049A04 3C17878F */  lw         $a3, %gp_rel(D_800C5E2C)($gp)
    /* 38218 80049A08 96D9020C */  jal        sprintf
    /* 3821C 80049A0C 3C5EA524 */   addiu     $a1, $a1, %lo(D_800C5E3C)
    /* 38220 80049A10 1000BF8F */  lw         $ra, 0x10($sp)
    /* 38224 80049A14 0D80023C */  lui        $v0, %hi(D_800D4798)
    /* 38228 80049A18 98474224 */  addiu      $v0, $v0, %lo(D_800D4798)
    /* 3822C 80049A1C 0800E003 */  jr         $ra
    /* 38230 80049A20 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_800499DC
