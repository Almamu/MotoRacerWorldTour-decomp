nonmatching startIntrDMA, 0x4C

glabel startIntrDMA
    /* 99C58 800AB448 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 99C5C 800AB44C 0C80043C */  lui        $a0, %hi(D_800BE624)
    /* 99C60 800AB450 24E68424 */  addiu      $a0, $a0, %lo(D_800BE624)
    /* 99C64 800AB454 1000BFAF */  sw         $ra, 0x10($sp)
    /* 99C68 800AB458 B0AD020C */  jal        func_800AB6C0
    /* 99C6C 800AB45C 08000524 */   addiu     $a1, $zero, 0x8
    /* 99C70 800AB460 03000424 */  addiu      $a0, $zero, 0x3
    /* 99C74 800AB464 0C80023C */  lui        $v0, %hi(D_800BE620)
    /* 99C78 800AB468 20E6428C */  lw         $v0, %lo(D_800BE620)($v0)
    /* 99C7C 800AB46C 0B80053C */  lui        $a1, %hi(func_800AB494)
    /* 99C80 800AB470 94B4A524 */  addiu      $a1, $a1, %lo(func_800AB494)
    /* 99C84 800AB474 44AB020C */  jal        InterruptCallback
    /* 99C88 800AB478 000040AC */   sw        $zero, 0x0($v0)
    /* 99C8C 800AB47C 0B80023C */  lui        $v0, %hi(func_800AB614)
    /* 99C90 800AB480 14B64224 */  addiu      $v0, $v0, %lo(func_800AB614)
    /* 99C94 800AB484 1000BF8F */  lw         $ra, 0x10($sp)
    /* 99C98 800AB488 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 99C9C 800AB48C 0800E003 */  jr         $ra
    /* 99CA0 800AB490 00000000 */   nop
endlabel startIntrDMA
