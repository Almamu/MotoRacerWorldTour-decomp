nonmatching func_80074688, 0x20

glabel func_80074688
    /* 62E98 80074688 0D80023C */  lui        $v0, %hi(D_800D60FC)
    /* 62E9C 8007468C FC60428C */  lw         $v0, %lo(D_800D60FC)($v0)
    /* 62EA0 80074690 0D80033C */  lui        $v1, %hi(D_800D6100)
    /* 62EA4 80074694 0061638C */  lw         $v1, %lo(D_800D6100)($v1)
    /* 62EA8 80074698 987182AF */  sw         $v0, %gp_rel(D_800CB888)($gp)
    /* 62EAC 8007469C 887183AF */  sw         $v1, %gp_rel(D_800CB878)($gp)
    /* 62EB0 800746A0 0800E003 */  jr         $ra
    /* 62EB4 800746A4 00000000 */   nop
endlabel func_80074688
