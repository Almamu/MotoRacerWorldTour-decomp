nonmatching func_8013E160, 0x150

glabel func_8013E160
    /* B62C 8013E160 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* B630 8013E164 1000B0AF */  sw         $s0, 0x10($sp)
    /* B634 8013E168 21808000 */  addu       $s0, $a0, $zero
    /* B638 8013E16C 1400BFAF */  sw         $ra, 0x14($sp)
    /* B63C 8013E170 E7EC040C */  jal        func_8013B39C
    /* B640 8013E174 21200000 */   addu      $a0, $zero, $zero
    /* B644 8013E178 1C80013C */  lui        $at, %hi(D_801BFD64)
    /* B648 8013E17C 64FD20AC */  sw         $zero, %lo(D_801BFD64)($at)
    /* B64C 8013E180 1C80033C */  lui        $v1, %hi(D_801BFD64)
    /* B650 8013E184 64FD638C */  lw         $v1, %lo(D_801BFD64)($v1)
    /* B654 8013E188 1C80013C */  lui        $at, %hi(D_801BFD70)
    /* B658 8013E18C 70FD22AC */  sw         $v0, %lo(D_801BFD70)($at)
    /* B65C 8013E190 01000224 */  addiu      $v0, $zero, 0x1
    /* B660 8013E194 1C80013C */  lui        $at, %hi(D_801BFD60)
    /* B664 8013E198 60FD23AC */  sw         $v1, %lo(D_801BFD60)($at)
    /* B668 8013E19C 07000332 */  andi       $v1, $s0, 0x7
    /* B66C 8013E1A0 23006210 */  beq        $v1, $v0, .L8013E230
    /* B670 8013E1A4 02006228 */   slti      $v0, $v1, 0x2
    /* B674 8013E1A8 05004010 */  beqz       $v0, .L8013E1C0
    /* B678 8013E1AC 03000224 */   addiu     $v0, $zero, 0x3
    /* B67C 8013E1B0 07006010 */  beqz       $v1, .L8013E1D0
    /* B680 8013E1B4 00000000 */   nop
    /* B684 8013E1B8 9FF80408 */  j          .L8013E27C
    /* B688 8013E1BC 00000000 */   nop
  .L8013E1C0:
    /* B68C 8013E1C0 1B006210 */  beq        $v1, $v0, .L8013E230
    /* B690 8013E1C4 05000224 */   addiu     $v0, $zero, 0x5
    /* B694 8013E1C8 2C006214 */  bne        $v1, $v0, .L8013E27C
    /* B698 8013E1CC 00000000 */   nop
  .L8013E1D0:
    /* B69C 8013E1D0 1C80033C */  lui        $v1, %hi(D_801BFD4C)
    /* B6A0 8013E1D4 4CFD638C */  lw         $v1, %lo(D_801BFD4C)($v1)
    /* B6A4 8013E1D8 01040224 */  addiu      $v0, $zero, 0x401
    /* B6A8 8013E1DC 000062AC */  sw         $v0, 0x0($v1)
    /* B6AC 8013E1E0 1C80033C */  lui        $v1, %hi(D_801BFD5C)
    /* B6B0 8013E1E4 5CFD638C */  lw         $v1, %lo(D_801BFD5C)($v1)
    /* B6B4 8013E1E8 1D80043C */  lui        $a0, %hi(D_801CCD60)
    /* B6B8 8013E1EC 60CD8424 */  addiu      $a0, $a0, %lo(D_801CCD60)
    /* B6BC 8013E1F0 0000628C */  lw         $v0, 0x0($v1)
    /* B6C0 8013E1F4 21280000 */  addu       $a1, $zero, $zero
    /* B6C4 8013E1F8 00084234 */  ori        $v0, $v0, 0x800
    /* B6C8 8013E1FC 000062AC */  sw         $v0, 0x0($v1)
    /* B6CC 8013E200 1C80023C */  lui        $v0, %hi(D_801BFD40)
    /* B6D0 8013E204 40FD428C */  lw         $v0, %lo(D_801BFD40)($v0)
    /* B6D4 8013E208 00010624 */  addiu      $a2, $zero, 0x100
    /* B6D8 8013E20C 8BF9040C */  jal        func_8013E62C
    /* B6DC 8013E210 000040AC */   sw        $zero, 0x0($v0)
    /* B6E0 8013E214 1D80043C */  lui        $a0, %hi(D_801CCE68)
    /* B6E4 8013E218 68CE8424 */  addiu      $a0, $a0, %lo(D_801CCE68)
    /* B6E8 8013E21C 21280000 */  addu       $a1, $zero, $zero
    /* B6EC 8013E220 8BF9040C */  jal        func_8013E62C
    /* B6F0 8013E224 00180624 */   addiu     $a2, $zero, 0x1800
    /* B6F4 8013E228 9FF80408 */  j          .L8013E27C
    /* B6F8 8013E22C 00000000 */   nop
  .L8013E230:
    /* B6FC 8013E230 1C80033C */  lui        $v1, %hi(D_801BFD4C)
    /* B700 8013E234 4CFD638C */  lw         $v1, %lo(D_801BFD4C)($v1)
    /* B704 8013E238 01040224 */  addiu      $v0, $zero, 0x401
    /* B708 8013E23C 000062AC */  sw         $v0, 0x0($v1)
    /* B70C 8013E240 1C80033C */  lui        $v1, %hi(D_801BFD5C)
    /* B710 8013E244 5CFD638C */  lw         $v1, %lo(D_801BFD5C)($v1)
    /* B714 8013E248 00000000 */  nop
    /* B718 8013E24C 0000628C */  lw         $v0, 0x0($v1)
    /* B71C 8013E250 00000000 */  nop
    /* B720 8013E254 00084234 */  ori        $v0, $v0, 0x800
    /* B724 8013E258 000062AC */  sw         $v0, 0x0($v1)
    /* B728 8013E25C 1C80033C */  lui        $v1, %hi(D_801BFD40)
    /* B72C 8013E260 40FD638C */  lw         $v1, %lo(D_801BFD40)($v1)
    /* B730 8013E264 0002023C */  lui        $v0, (0x2000000 >> 16)
    /* B734 8013E268 000062AC */  sw         $v0, 0x0($v1)
    /* B738 8013E26C 1C80033C */  lui        $v1, %hi(D_801BFD40)
    /* B73C 8013E270 40FD638C */  lw         $v1, %lo(D_801BFD40)($v1)
    /* B740 8013E274 0001023C */  lui        $v0, (0x1000000 >> 16)
    /* B744 8013E278 000062AC */  sw         $v0, 0x0($v1)
  .L8013E27C:
    /* B748 8013E27C 1C80043C */  lui        $a0, %hi(D_801BFD70)
    /* B74C 8013E280 70FD848C */  lw         $a0, %lo(D_801BFD70)($a0)
    /* B750 8013E284 E7EC040C */  jal        func_8013B39C
    /* B754 8013E288 00000000 */   nop
    /* B758 8013E28C 07000232 */  andi       $v0, $s0, 0x7
    /* B75C 8013E290 03004014 */  bnez       $v0, .L8013E2A0
    /* B760 8013E294 21100000 */   addu      $v0, $zero, $zero
    /* B764 8013E298 59F9040C */  jal        func_8013E564
    /* B768 8013E29C 21200002 */   addu      $a0, $s0, $zero
  .L8013E2A0:
    /* B76C 8013E2A0 1400BF8F */  lw         $ra, 0x14($sp)
    /* B770 8013E2A4 1000B08F */  lw         $s0, 0x10($sp)
    /* B774 8013E2A8 0800E003 */  jr         $ra
    /* B778 8013E2AC 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_8013E160
