nonmatching func_800153FC, 0x3C

glabel func_800153FC
    /* 3C0C 800153FC E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 3C10 80015400 1000B0AF */  sw         $s0, 0x10($sp)
    /* 3C14 80015404 21808000 */  addu       $s0, $a0, $zero
    /* 3C18 80015408 002C1000 */  sll        $a1, $s0, 16
    /* 3C1C 8001540C 032C0500 */  sra        $a1, $a1, 16
    /* 3C20 80015410 21200000 */  addu       $a0, $zero, $zero
    /* 3C24 80015414 1400BFAF */  sw         $ra, 0x14($sp)
    /* 3C28 80015418 0846000C */  jal        func_80011820
    /* 3C2C 8001541C 2130A000 */   addu      $a2, $a1, $zero
    /* 3C30 80015420 1400BF8F */  lw         $ra, 0x14($sp)
    /* 3C34 80015424 0C80023C */  lui        $v0, %hi(D_800B8780)
    /* 3C38 80015428 808750AC */  sw         $s0, %lo(D_800B8780)($v0)
    /* 3C3C 8001542C 1000B08F */  lw         $s0, 0x10($sp)
    /* 3C40 80015430 0800E003 */  jr         $ra
    /* 3C44 80015434 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_800153FC
