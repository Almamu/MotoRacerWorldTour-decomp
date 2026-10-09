nonmatching func_80044D0C, 0x64

glabel func_80044D0C
    /* 3351C 80044D0C E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 33520 80044D10 1000B0AF */  sw         $s0, 0x10($sp)
    /* 33524 80044D14 21808000 */  addu       $s0, $a0, $zero
    /* 33528 80044D18 1400B1AF */  sw         $s1, 0x14($sp)
    /* 3352C 80044D1C 1800BFAF */  sw         $ra, 0x18($sp)
    /* 33530 80044D20 0D80013C */  lui        $at, %hi(D_800C873C)
    /* 33534 80044D24 3C8720AC */  sw         $zero, %lo(D_800C873C)($at)
    /* 33538 80044D28 0C80013C */  lui        $at, %hi(D_800C4938)
    /* 3353C 80044D2C 384920AC */  sw         $zero, %lo(D_800C4938)($at)
    /* 33540 80044D30 0D80013C */  lui        $at, %hi(D_800C8C68)
    /* 33544 80044D34 688C20AC */  sw         $zero, %lo(D_800C8C68)($at)
    /* 33548 80044D38 0D80013C */  lui        $at, %hi(D_800CBE90)
    /* 3354C 80044D3C 90BE20AC */  sw         $zero, %lo(D_800CBE90)($at)
    /* 33550 80044D40 0D80013C */  lui        $at, %hi(D_800CBE94)
    /* 33554 80044D44 94BE20AC */  sw         $zero, %lo(D_800CBE94)($at)
    /* 33558 80044D48 1F5A000C */  jal        func_8001687C
    /* 3355C 80044D4C 2188A000 */   addu      $s1, $a1, $zero
    /* 33560 80044D50 21200002 */  addu       $a0, $s0, $zero
    /* 33564 80044D54 53FF000C */  jal        func_8003FD4C
    /* 33568 80044D58 21282002 */   addu      $a1, $s1, $zero
    /* 3356C 80044D5C 1800BF8F */  lw         $ra, 0x18($sp)
    /* 33570 80044D60 1400B18F */  lw         $s1, 0x14($sp)
    /* 33574 80044D64 1000B08F */  lw         $s0, 0x10($sp)
    /* 33578 80044D68 0800E003 */  jr         $ra
    /* 3357C 80044D6C 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_80044D0C
