nonmatching func_800156DC, 0x54

glabel func_800156DC
    /* 3EEC 800156DC E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 3EF0 800156E0 09000424 */  addiu      $a0, $zero, 0x9
    /* 3EF4 800156E4 21280000 */  addu       $a1, $zero, $zero
    /* 3EF8 800156E8 0C80023C */  lui        $v0, %hi(D_800B8784)
    /* 3EFC 800156EC 0D80033C */  lui        $v1, %hi(D_800CC4E8)
    /* 3F00 800156F0 21300000 */  addu       $a2, $zero, $zero
    /* 3F04 800156F4 1000BFAF */  sw         $ra, 0x10($sp)
    /* 3F08 800156F8 848740AC */  sw         $zero, %lo(D_800B8784)($v0)
    /* 3F0C 800156FC 4B9E020C */  jal        CdControlB
    /* 3F10 80015700 E8C460AC */   sw        $zero, %lo(D_800CC4E8)($v1)
    /* 3F14 80015704 E0D6020C */  jal        EnterCriticalSection
    /* 3F18 80015708 00000000 */   nop
    /* 3F1C 8001570C 02000424 */  addiu      $a0, $zero, 0x2
    /* 3F20 80015710 44AB020C */  jal        InterruptCallback
    /* 3F24 80015714 21280000 */   addu      $a1, $zero, $zero
    /* 3F28 80015718 E4D6020C */  jal        ExitCriticalSection
    /* 3F2C 8001571C 00000000 */   nop
    /* 3F30 80015720 1000BF8F */  lw         $ra, 0x10($sp)
    /* 3F34 80015724 00000000 */  nop
    /* 3F38 80015728 0800E003 */  jr         $ra
    /* 3F3C 8001572C 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_800156DC
