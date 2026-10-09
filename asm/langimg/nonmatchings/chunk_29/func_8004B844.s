nonmatching func_8004B844, 0xBC

glabel func_8004B844
    /* 3A054 8004B844 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 3A058 8004B848 1000A4AF */  sw         $a0, 0x10($sp)
    /* 3A05C 8004B84C 0D80043C */  lui        $a0, %hi(D_800CABC0)
    /* 3A060 8004B850 C0AB8424 */  addiu      $a0, $a0, %lo(D_800CABC0)
    /* 3A064 8004B854 2000B0AF */  sw         $s0, 0x20($sp)
    /* 3A068 8004B858 2180A000 */  addu       $s0, $a1, $zero
    /* 3A06C 8004B85C 21280000 */  addu       $a1, $zero, $zero
    /* 3A070 8004B860 FFFF0624 */  addiu      $a2, $zero, -0x1
    /* 3A074 8004B864 2400BFAF */  sw         $ra, 0x24($sp)
    /* 3A078 8004B868 5A14010C */  jal        func_80045168
    /* 3A07C 8004B86C 01000724 */   addiu     $a3, $zero, 0x1
    /* 3A080 8004B870 0D80043C */  lui        $a0, %hi(D_800CABC0)
    /* 3A084 8004B874 C0AB8424 */  addiu      $a0, $a0, %lo(D_800CABC0)
    /* 3A088 8004B878 21280000 */  addu       $a1, $zero, $zero
    /* 3A08C 8004B87C FFFF0624 */  addiu      $a2, $zero, -0x1
    /* 3A090 8004B880 01000724 */  addiu      $a3, $zero, 0x1
    /* 3A094 8004B884 5A14010C */  jal        func_80045168
    /* 3A098 8004B888 1000B0AF */   sw        $s0, 0x10($sp)
    /* 3A09C 8004B88C 0D80043C */  lui        $a0, %hi(D_800CABC0)
    /* 3A0A0 8004B890 C0AB8424 */  addiu      $a0, $a0, %lo(D_800CABC0)
    /* 3A0A4 8004B894 01000524 */  addiu      $a1, $zero, 0x1
    /* 3A0A8 8004B898 FFFF0624 */  addiu      $a2, $zero, -0x1
    /* 3A0AC 8004B89C 08000724 */  addiu      $a3, $zero, 0x8
    /* 3A0B0 8004B8A0 5A14010C */  jal        func_80045168
    /* 3A0B4 8004B8A4 1000A0AF */   sw        $zero, 0x10($sp)
    /* 3A0B8 8004B8A8 0D80043C */  lui        $a0, %hi(D_800CABC0)
    /* 3A0BC 8004B8AC C0AB8424 */  addiu      $a0, $a0, %lo(D_800CABC0)
    /* 3A0C0 8004B8B0 02000524 */  addiu      $a1, $zero, 0x2
    /* 3A0C4 8004B8B4 FFFF0624 */  addiu      $a2, $zero, -0x1
    /* 3A0C8 8004B8B8 02000724 */  addiu      $a3, $zero, 0x2
    /* 3A0CC 8004B8BC 11000224 */  addiu      $v0, $zero, 0x11
    /* 3A0D0 8004B8C0 02000324 */  addiu      $v1, $zero, 0x2
    /* 3A0D4 8004B8C4 1000A2AF */  sw         $v0, 0x10($sp)
    /* 3A0D8 8004B8C8 0D80023C */  lui        $v0, %hi(D_800CB2C0)
    /* 3A0DC 8004B8CC C0B24224 */  addiu      $v0, $v0, %lo(D_800CB2C0)
    /* 3A0E0 8004B8D0 1400A3AF */  sw         $v1, 0x14($sp)
    /* 3A0E4 8004B8D4 07000324 */  addiu      $v1, $zero, 0x7
    /* 3A0E8 8004B8D8 1800A2AF */  sw         $v0, 0x18($sp)
    /* 3A0EC 8004B8DC 5A14010C */  jal        func_80045168
    /* 3A0F0 8004B8E0 1C00A3AF */   sw        $v1, 0x1C($sp)
    /* 3A0F4 8004B8E4 2400BF8F */  lw         $ra, 0x24($sp)
    /* 3A0F8 8004B8E8 2000B08F */  lw         $s0, 0x20($sp)
    /* 3A0FC 8004B8EC 01000224 */  addiu      $v0, $zero, 0x1
    /* 3A100 8004B8F0 0D80013C */  lui        $at, %hi(D_800D5FCC)
    /* 3A104 8004B8F4 CC5F20AC */  sw         $zero, %lo(D_800D5FCC)($at)
    /* 3A108 8004B8F8 0800E003 */  jr         $ra
    /* 3A10C 8004B8FC 2800BD27 */   addiu     $sp, $sp, 0x28
endlabel func_8004B844
