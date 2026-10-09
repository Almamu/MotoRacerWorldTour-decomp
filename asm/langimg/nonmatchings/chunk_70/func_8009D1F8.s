nonmatching func_8009D1F8, 0x64

glabel func_8009D1F8
    /* 8BA08 8009D1F8 0D80023C */  lui        $v0, %hi(D_800D5FD4)
    /* 8BA0C 8009D1FC D45F428C */  lw         $v0, %lo(D_800D5FD4)($v0)
    /* 8BA10 8009D200 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 8BA14 8009D204 1400BFAF */  sw         $ra, 0x14($sp)
    /* 8BA18 8009D208 02004230 */  andi       $v0, $v0, 0x2
    /* 8BA1C 8009D20C 0F004010 */  beqz       $v0, .L8009D24C
    /* 8BA20 8009D210 1000B0AF */   sw        $s0, 0x10($sp)
    /* 8BA24 8009D214 01000524 */  addiu      $a1, $zero, 0x1
    /* 8BA28 8009D218 0D80103C */  lui        $s0, %hi(D_800C94DC)
    /* 8BA2C 8009D21C 0D80043C */  lui        $a0, %hi(D_800C89E8)
    /* 8BA30 8009D220 E889848C */  lw         $a0, %lo(D_800C89E8)($a0)
    /* 8BA34 8009D224 C604020C */  jal        func_80081318
    /* 8BA38 8009D228 DC941026 */   addiu     $s0, $s0, %lo(D_800C94DC)
    /* 8BA3C 8009D22C 21204000 */  addu       $a0, $v0, $zero
    /* 8BA40 8009D230 21280002 */  addu       $a1, $s0, $zero
    /* 8BA44 8009D234 10020224 */  addiu      $v0, $zero, 0x210
    /* 8BA48 8009D238 00010624 */  addiu      $a2, $zero, 0x100
    /* 8BA4C 8009D23C 0D80013C */  lui        $at, %hi(D_800C89D0)
    /* 8BA50 8009D240 D08922AC */  sw         $v0, %lo(D_800C89D0)($at)
    /* 8BA54 8009D244 CC03020C */  jal        func_80080F30
    /* 8BA58 8009D248 00010724 */   addiu     $a3, $zero, 0x100
  .L8009D24C:
    /* 8BA5C 8009D24C 1400BF8F */  lw         $ra, 0x14($sp)
    /* 8BA60 8009D250 1000B08F */  lw         $s0, 0x10($sp)
    /* 8BA64 8009D254 0800E003 */  jr         $ra
    /* 8BA68 8009D258 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_8009D1F8
