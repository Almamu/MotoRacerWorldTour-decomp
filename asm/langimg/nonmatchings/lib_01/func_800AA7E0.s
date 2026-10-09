nonmatching func_800AA7E0, 0x8C

glabel func_800AA7E0
    /* 98FF0 800AA7E0 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 98FF4 800AA7E4 1400B1AF */  sw         $s1, 0x14($sp)
    /* 98FF8 800AA7E8 21888000 */  addu       $s1, $a0, $zero
    /* 98FFC 800AA7EC 1000B0AF */  sw         $s0, 0x10($sp)
    /* 99000 800AA7F0 1800BFAF */  sw         $ra, 0x18($sp)
    /* 99004 800AA7F4 40AA020C */  jal        func_800AA900
    /* 99008 800AA7F8 2180A000 */   addu      $s0, $a1, $zero
    /* 9900C 800AA7FC 0C80033C */  lui        $v1, %hi(D_800BD4C8)
    /* 99010 800AA800 C8D4638C */  lw         $v1, %lo(D_800BD4C8)($v1)
    /* 99014 800AA804 00000000 */  nop
    /* 99018 800AA808 0000628C */  lw         $v0, 0x0($v1)
    /* 9901C 800AA80C 42811000 */  srl        $s0, $s0, 5
    /* 99020 800AA810 88004234 */  ori        $v0, $v0, 0x88
    /* 99024 800AA814 000062AC */  sw         $v0, 0x0($v1)
    /* 99028 800AA818 0C80023C */  lui        $v0, %hi(D_800BD4A4)
    /* 9902C 800AA81C A4D4428C */  lw         $v0, %lo(D_800BD4A4)($v0)
    /* 99030 800AA820 00841000 */  sll        $s0, $s0, 16
    /* 99034 800AA824 000040AC */  sw         $zero, 0x0($v0)
    /* 99038 800AA828 0C80023C */  lui        $v0, %hi(D_800BD49C)
    /* 9903C 800AA82C 9CD4428C */  lw         $v0, %lo(D_800BD49C)($v0)
    /* 99040 800AA830 20001036 */  ori        $s0, $s0, 0x20
    /* 99044 800AA834 000051AC */  sw         $s1, 0x0($v0)
    /* 99048 800AA838 0C80023C */  lui        $v0, %hi(D_800BD4A0)
    /* 9904C 800AA83C A0D4428C */  lw         $v0, %lo(D_800BD4A0)($v0)
    /* 99050 800AA840 0001033C */  lui        $v1, (0x1000200 >> 16)
    /* 99054 800AA844 000050AC */  sw         $s0, 0x0($v0)
    /* 99058 800AA848 0C80023C */  lui        $v0, %hi(D_800BD4A4)
    /* 9905C 800AA84C A4D4428C */  lw         $v0, %lo(D_800BD4A4)($v0)
    /* 99060 800AA850 00026334 */  ori        $v1, $v1, (0x1000200 & 0xFFFF)
    /* 99064 800AA854 000043AC */  sw         $v1, 0x0($v0)
    /* 99068 800AA858 1800BF8F */  lw         $ra, 0x18($sp)
    /* 9906C 800AA85C 1400B18F */  lw         $s1, 0x14($sp)
    /* 99070 800AA860 1000B08F */  lw         $s0, 0x10($sp)
    /* 99074 800AA864 0800E003 */  jr         $ra
    /* 99078 800AA868 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_800AA7E0
