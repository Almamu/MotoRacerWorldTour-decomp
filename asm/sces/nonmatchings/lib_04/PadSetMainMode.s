nonmatching PadSetMainMode, 0x48

glabel PadSetMainMode
    /* D514 80140048 1C80023C */  lui        $v0, %hi(D_801BFE70)
    /* D518 8014004C 70FE428C */  lw         $v0, %lo(D_801BFE70)($v0)
    /* D51C 80140050 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* D520 80140054 1000B0AF */  sw         $s0, 0x10($sp)
    /* D524 80140058 2180A000 */  addu       $s0, $a1, $zero
    /* D528 8014005C 1400B1AF */  sw         $s1, 0x14($sp)
    /* D52C 80140060 1800BFAF */  sw         $ra, 0x18($sp)
    /* D530 80140064 09F84000 */  jalr       $v0
    /* D534 80140068 2188C000 */   addu      $s1, $a2, $zero
    /* D538 8014006C 21204000 */  addu       $a0, $v0, $zero
    /* D53C 80140070 FF000532 */  andi       $a1, $s0, 0xFF
    /* D540 80140074 E005050C */  jal        _padSetMainMode
    /* D544 80140078 FF002632 */   andi      $a2, $s1, 0xFF
    /* D548 8014007C 1800BF8F */  lw         $ra, 0x18($sp)
    /* D54C 80140080 1400B18F */  lw         $s1, 0x14($sp)
    /* D550 80140084 1000B08F */  lw         $s0, 0x10($sp)
    /* D554 80140088 0800E003 */  jr         $ra
    /* D558 8014008C 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel PadSetMainMode
