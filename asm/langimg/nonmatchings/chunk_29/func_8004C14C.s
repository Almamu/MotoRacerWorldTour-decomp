nonmatching func_8004C14C, 0x38

glabel func_8004C14C
    /* 3A95C 8004C14C E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 3A960 8004C150 0C80033C */  lui        $v1, %hi(D_800C6508)
    /* 3A964 8004C154 08656324 */  addiu      $v1, $v1, %lo(D_800C6508)
    /* 3A968 8004C158 0400828C */  lw         $v0, 0x4($a0)
    /* 3A96C 8004C15C 00F80624 */  addiu      $a2, $zero, -0x800
    /* 3A970 8004C160 1000BFAF */  sw         $ra, 0x10($sp)
    /* 3A974 8004C164 080083AC */  sw         $v1, 0x8($a0)
    /* 3A978 8004C168 24104600 */  and        $v0, $v0, $a2
    /* 3A97C 8004C16C AE57000C */  jal        _._5CName
    /* 3A980 8004C170 040082AC */   sw        $v0, 0x4($a0)
    /* 3A984 8004C174 1000BF8F */  lw         $ra, 0x10($sp)
    /* 3A988 8004C178 00000000 */  nop
    /* 3A98C 8004C17C 0800E003 */  jr         $ra
    /* 3A990 8004C180 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_8004C14C
