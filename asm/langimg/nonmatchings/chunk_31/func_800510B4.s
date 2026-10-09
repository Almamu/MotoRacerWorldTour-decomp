nonmatching func_800510B4, 0x60

glabel func_800510B4
    /* 3F8C4 800510B4 21308000 */  addu       $a2, $a0, $zero
    /* 3F8C8 800510B8 2118A000 */  addu       $v1, $a1, $zero
    /* 3F8CC 800510BC FFFF0224 */  addiu      $v0, $zero, -0x1
    /* 3F8D0 800510C0 04006214 */  bne        $v1, $v0, .L800510D4
    /* 3F8D4 800510C4 5000C3AC */   sw        $v1, 0x50($a2)
    /* 3F8D8 800510C8 4800C0AC */  sw         $zero, 0x48($a2)
    /* 3F8DC 800510CC 0800E003 */  jr         $ra
    /* 3F8E0 800510D0 4C00C0AC */   sw        $zero, 0x4C($a2)
  .L800510D4:
    /* 3F8E4 800510D4 80280300 */  sll        $a1, $v1, 2
    /* 3F8E8 800510D8 2128A300 */  addu       $a1, $a1, $v1
    /* 3F8EC 800510DC 0D80033C */  lui        $v1, %hi(D_800C9EE0)
    /* 3F8F0 800510E0 E09E638C */  lw         $v1, %lo(D_800C9EE0)($v1)
    /* 3F8F4 800510E4 80280500 */  sll        $a1, $a1, 2
    /* 3F8F8 800510E8 2118A300 */  addu       $v1, $a1, $v1
    /* 3F8FC 800510EC 0000648C */  lw         $a0, 0x0($v1)
    /* 3F900 800510F0 00000000 */  nop
    /* 3F904 800510F4 4800C4AC */  sw         $a0, 0x48($a2)
    /* 3F908 800510F8 0D80023C */  lui        $v0, %hi(D_800C9EE0)
    /* 3F90C 800510FC E09E428C */  lw         $v0, %lo(D_800C9EE0)($v0)
    /* 3F910 80051100 00000000 */  nop
    /* 3F914 80051104 21104500 */  addu       $v0, $v0, $a1
    /* 3F918 80051108 08004224 */  addiu      $v0, $v0, 0x8
    /* 3F91C 8005110C 0800E003 */  jr         $ra
    /* 3F920 80051110 4C00C2AC */   sw        $v0, 0x4C($a2)
endlabel func_800510B4
