nonmatching PadSetActAlign, 0x38

glabel PadSetActAlign
    /* D4DC 80140010 1C80023C */  lui        $v0, %hi(D_801BFE70)
    /* D4E0 80140014 70FE428C */  lw         $v0, %lo(D_801BFE70)($v0)
    /* D4E4 80140018 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* D4E8 8014001C 1000B0AF */  sw         $s0, 0x10($sp)
    /* D4EC 80140020 1400BFAF */  sw         $ra, 0x14($sp)
    /* D4F0 80140024 09F84000 */  jalr       $v0
    /* D4F4 80140028 2180A000 */   addu      $s0, $a1, $zero
    /* D4F8 8014002C 21204000 */  addu       $a0, $v0, $zero
    /* D4FC 80140030 8D05050C */  jal        _padSetActAlign
    /* D500 80140034 21280002 */   addu      $a1, $s0, $zero
    /* D504 80140038 1400BF8F */  lw         $ra, 0x14($sp)
    /* D508 8014003C 1000B08F */  lw         $s0, 0x10($sp)
    /* D50C 80140040 0800E003 */  jr         $ra
    /* D510 80140044 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel PadSetActAlign
