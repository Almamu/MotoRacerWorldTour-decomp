nonmatching func_80143808, 0x70

glabel func_80143808
    /* 10CD4 80143808 1C80023C */  lui        $v0, %hi(D_801BFFE4)
    /* 10CD8 8014380C E4FF428C */  lw         $v0, %lo(D_801BFFE4)($v0)
    /* 10CDC 80143810 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 10CE0 80143814 14004014 */  bnez       $v0, .L80143868
    /* 10CE4 80143818 1000BFAF */   sw        $ra, 0x10($sp)
    /* 10CE8 8014381C 01000224 */  addiu      $v0, $zero, 0x1
    /* 10CEC 80143820 1C80013C */  lui        $at, %hi(D_801BFFE4)
    /* 10CF0 80143824 FF2A050C */  jal        func_8014ABFC
    /* 10CF4 80143828 E4FF22AC */   sw        $v0, %lo(D_801BFFE4)($at)
    /* 10CF8 8014382C 1480043C */  lui        $a0, %hi(func_80143168)
    /* 10CFC 80143830 200E050C */  jal        func_80143880
    /* 10D00 80143834 68318424 */   addiu     $a0, $a0, %lo(func_80143168)
    /* 10D04 80143838 00F0043C */  lui        $a0, (0xF0000009 >> 16)
    /* 10D08 8014383C 09008434 */  ori        $a0, $a0, (0xF0000009 & 0xFFFF)
    /* 10D0C 80143840 20000524 */  addiu      $a1, $zero, 0x20
    /* 10D10 80143844 00200624 */  addiu      $a2, $zero, 0x2000
    /* 10D14 80143848 DB2A050C */  jal        func_8014AB6C
    /* 10D18 8014384C 21380000 */   addu      $a3, $zero, $zero
    /* 10D1C 80143850 21204000 */  addu       $a0, $v0, $zero
    /* 10D20 80143854 1C80013C */  lui        $at, %hi(D_801BFF7C)
    /* 10D24 80143858 EB2A050C */  jal        func_8014ABAC
    /* 10D28 8014385C 7CFF24AC */   sw        $a0, %lo(D_801BFF7C)($at)
    /* 10D2C 80143860 032B050C */  jal        func_8014AC0C
    /* 10D30 80143864 00000000 */   nop
  .L80143868:
    /* 10D34 80143868 1000BF8F */  lw         $ra, 0x10($sp)
    /* 10D38 8014386C 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 10D3C 80143870 0800E003 */  jr         $ra
    /* 10D40 80143874 00000000 */   nop
endlabel func_80143808
    /* 10D44 80143878 00000000 */  nop
    /* 10D48 8014387C 00000000 */  nop
