nonmatching func_8004C184, 0x38

glabel func_8004C184
    /* 3A994 8004C184 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 3A998 8004C188 0C80033C */  lui        $v1, %hi(D_800C6508)
    /* 3A99C 8004C18C 08656324 */  addiu      $v1, $v1, %lo(D_800C6508)
    /* 3A9A0 8004C190 0400828C */  lw         $v0, 0x4($a0)
    /* 3A9A4 8004C194 00F80624 */  addiu      $a2, $zero, -0x800
    /* 3A9A8 8004C198 1000BFAF */  sw         $ra, 0x10($sp)
    /* 3A9AC 8004C19C 080083AC */  sw         $v1, 0x8($a0)
    /* 3A9B0 8004C1A0 24104600 */  and        $v0, $v0, $a2
    /* 3A9B4 8004C1A4 AE57000C */  jal        _._5CName
    /* 3A9B8 8004C1A8 040082AC */   sw        $v0, 0x4($a0)
    /* 3A9BC 8004C1AC 1000BF8F */  lw         $ra, 0x10($sp)
    /* 3A9C0 8004C1B0 00000000 */  nop
    /* 3A9C4 8004C1B4 0800E003 */  jr         $ra
    /* 3A9C8 8004C1B8 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_8004C184
