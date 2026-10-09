nonmatching func_80140CC4, 0x90

glabel func_80140CC4
    /* E190 80140CC4 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* E194 80140CC8 1C80033C */  lui        $v1, %hi(D_801BFEBC)
    /* E198 80140CCC BCFE638C */  lw         $v1, %lo(D_801BFEBC)($v1)
    /* E19C 80140CD0 1C80043C */  lui        $a0, %hi(D_801BFEC0)
    /* E1A0 80140CD4 C0FE848C */  lw         $a0, %lo(D_801BFEC0)($a0)
    /* E1A4 80140CD8 7FFF0224 */  addiu      $v0, $zero, -0x81
    /* E1A8 80140CDC 1000BFAF */  sw         $ra, 0x10($sp)
    /* E1AC 80140CE0 000062AC */  sw         $v0, 0x0($v1)
    /* E1B0 80140CE4 04008294 */  lhu        $v0, 0x4($a0)
    /* E1B4 80140CE8 00000000 */  nop
    /* E1B8 80140CEC 80004230 */  andi       $v0, $v0, 0x80
    /* E1BC 80140CF0 0D004010 */  beqz       $v0, .L80140D28
    /* E1C0 80140CF4 00000000 */   nop
  .L80140CF8:
    /* E1C4 80140CF8 BA0A050C */  jal        func_80142AE8
    /* E1C8 80140CFC 00000000 */   nop
    /* E1CC 80140D00 10004014 */  bnez       $v0, .L80140D44
    /* E1D0 80140D04 21100000 */   addu      $v0, $zero, $zero
    /* E1D4 80140D08 1C80023C */  lui        $v0, %hi(D_801BFEC0)
    /* E1D8 80140D0C C0FE428C */  lw         $v0, %lo(D_801BFEC0)($v0)
    /* E1DC 80140D10 00000000 */  nop
    /* E1E0 80140D14 04004294 */  lhu        $v0, 0x4($v0)
    /* E1E4 80140D18 00000000 */  nop
    /* E1E8 80140D1C 80004230 */  andi       $v0, $v0, 0x80
    /* E1EC 80140D20 F5FF4014 */  bnez       $v0, .L80140CF8
    /* E1F0 80140D24 00000000 */   nop
  .L80140D28:
    /* E1F4 80140D28 1C80043C */  lui        $a0, %hi(D_801BFEC0)
    /* E1F8 80140D2C C0FE848C */  lw         $a0, %lo(D_801BFEC0)($a0)
    /* E1FC 80140D30 00000000 */  nop
    /* E200 80140D34 0A008394 */  lhu        $v1, 0xA($a0)
    /* E204 80140D38 01000224 */  addiu      $v0, $zero, 0x1
    /* E208 80140D3C 10006334 */  ori        $v1, $v1, 0x10
    /* E20C 80140D40 0A0083A4 */  sh         $v1, 0xA($a0)
  .L80140D44:
    /* E210 80140D44 1000BF8F */  lw         $ra, 0x10($sp)
    /* E214 80140D48 1800BD27 */  addiu      $sp, $sp, 0x18
    /* E218 80140D4C 0800E003 */  jr         $ra
    /* E21C 80140D50 00000000 */   nop
endlabel func_80140CC4
