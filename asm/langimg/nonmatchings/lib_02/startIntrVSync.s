nonmatching startIntrVSync, 0x58

glabel startIntrVSync
    /* 99B38 800AB328 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 99B3C 800AB32C 0C80043C */  lui        $a0, %hi(D_800BE5F0)
    /* 99B40 800AB330 F0E58424 */  addiu      $a0, $a0, %lo(D_800BE5F0)
    /* 99B44 800AB334 0C80033C */  lui        $v1, %hi(D_800BE614)
    /* 99B48 800AB338 14E6638C */  lw         $v1, %lo(D_800BE614)($v1)
    /* 99B4C 800AB33C 00010224 */  addiu      $v0, $zero, 0x100
    /* 99B50 800AB340 1000BFAF */  sw         $ra, 0x10($sp)
    /* 99B54 800AB344 000062AC */  sw         $v0, 0x0($v1)
    /* 99B58 800AB348 0C80013C */  lui        $at, %hi(D_800BE610)
    /* 99B5C 800AB34C 10E620AC */  sw         $zero, %lo(D_800BE610)($at)
    /* 99B60 800AB350 06AD020C */  jal        func_800AB418
    /* 99B64 800AB354 08000524 */   addiu     $a1, $zero, 0x8
    /* 99B68 800AB358 0B80053C */  lui        $a1, %hi(func_800AB380)
    /* 99B6C 800AB35C 80B3A524 */  addiu      $a1, $a1, %lo(func_800AB380)
    /* 99B70 800AB360 44AB020C */  jal        InterruptCallback
    /* 99B74 800AB364 21200000 */   addu      $a0, $zero, $zero
    /* 99B78 800AB368 0B80023C */  lui        $v0, %hi(func_800AB3EC)
    /* 99B7C 800AB36C ECB34224 */  addiu      $v0, $v0, %lo(func_800AB3EC)
    /* 99B80 800AB370 1000BF8F */  lw         $ra, 0x10($sp)
    /* 99B84 800AB374 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 99B88 800AB378 0800E003 */  jr         $ra
    /* 99B8C 800AB37C 00000000 */   nop
endlabel startIntrVSync
