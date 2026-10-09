nonmatching func_80140090, 0x48

glabel func_80140090
    /* D55C 80140090 1C80023C */  lui        $v0, %hi(D_801BFE70)
    /* D560 80140094 70FE428C */  lw         $v0, %lo(D_801BFE70)($v0)
    /* D564 80140098 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* D568 8014009C 1000B0AF */  sw         $s0, 0x10($sp)
    /* D56C 801400A0 2180A000 */  addu       $s0, $a1, $zero
    /* D570 801400A4 1400B1AF */  sw         $s1, 0x14($sp)
    /* D574 801400A8 1800BFAF */  sw         $ra, 0x18($sp)
    /* D578 801400AC 09F84000 */  jalr       $v0
    /* D57C 801400B0 2188C000 */   addu      $s1, $a2, $zero
    /* D580 801400B4 21204000 */  addu       $a0, $v0, $zero
    /* D584 801400B8 21280002 */  addu       $a1, $s0, $zero
    /* D588 801400BC 6203050C */  jal        func_80140D88
    /* D58C 801400C0 21302002 */   addu      $a2, $s1, $zero
    /* D590 801400C4 1800BF8F */  lw         $ra, 0x18($sp)
    /* D594 801400C8 1400B18F */  lw         $s1, 0x14($sp)
    /* D598 801400CC 1000B08F */  lw         $s0, 0x10($sp)
    /* D59C 801400D0 0800E003 */  jr         $ra
    /* D5A0 801400D4 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_80140090
    /* D5A4 801400D8 00000000 */  nop
    /* D5A8 801400DC 00000000 */  nop
    /* D5AC 801400E0 00000000 */  nop
