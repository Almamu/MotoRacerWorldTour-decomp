nonmatching func_8006EA88, 0xCC

glabel func_8006EA88
    /* 5D298 8006EA88 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 5D29C 8006EA8C 1400B1AF */  sw         $s1, 0x14($sp)
    /* 5D2A0 8006EA90 21888000 */  addu       $s1, $a0, $zero
    /* 5D2A4 8006EA94 1800BFAF */  sw         $ra, 0x18($sp)
    /* 5D2A8 8006EA98 3FB8010C */  jal        func_8006E0FC
    /* 5D2AC 8006EA9C 1000B0AF */   sw        $s0, 0x10($sp)
    /* 5D2B0 8006EAA0 1000258E */  lw         $a1, 0x10($s1)
    /* 5D2B4 8006EAA4 FFFF1024 */  addiu      $s0, $zero, -0x1
    /* 5D2B8 8006EAA8 0500B010 */  beq        $a1, $s0, .L8006EAC0
    /* 5D2BC 8006EAAC 00000000 */   nop
    /* 5D2C0 8006EAB0 0D80043C */  lui        $a0, %hi(D_800D11D0)
    /* 5D2C4 8006EAB4 DD52000C */  jal        func_80014B74
    /* 5D2C8 8006EAB8 D0118424 */   addiu     $a0, $a0, %lo(D_800D11D0)
    /* 5D2CC 8006EABC 100030AE */  sw         $s0, 0x10($s1)
  .L8006EAC0:
    /* 5D2D0 8006EAC0 1400258E */  lw         $a1, 0x14($s1)
    /* 5D2D4 8006EAC4 00000000 */  nop
    /* 5D2D8 8006EAC8 0500B010 */  beq        $a1, $s0, .L8006EAE0
    /* 5D2DC 8006EACC 00000000 */   nop
    /* 5D2E0 8006EAD0 0D80043C */  lui        $a0, %hi(D_800D11D0)
    /* 5D2E4 8006EAD4 DD52000C */  jal        func_80014B74
    /* 5D2E8 8006EAD8 D0118424 */   addiu     $a0, $a0, %lo(D_800D11D0)
    /* 5D2EC 8006EADC 140030AE */  sw         $s0, 0x14($s1)
  .L8006EAE0:
    /* 5D2F0 8006EAE0 1800258E */  lw         $a1, 0x18($s1)
    /* 5D2F4 8006EAE4 00000000 */  nop
    /* 5D2F8 8006EAE8 0500B010 */  beq        $a1, $s0, .L8006EB00
    /* 5D2FC 8006EAEC 00000000 */   nop
    /* 5D300 8006EAF0 0D80043C */  lui        $a0, %hi(D_800D11D0)
    /* 5D304 8006EAF4 DD52000C */  jal        func_80014B74
    /* 5D308 8006EAF8 D0118424 */   addiu     $a0, $a0, %lo(D_800D11D0)
    /* 5D30C 8006EAFC 180030AE */  sw         $s0, 0x18($s1)
  .L8006EB00:
    /* 5D310 8006EB00 1C00258E */  lw         $a1, 0x1C($s1)
    /* 5D314 8006EB04 00000000 */  nop
    /* 5D318 8006EB08 0500B010 */  beq        $a1, $s0, .L8006EB20
    /* 5D31C 8006EB0C 00000000 */   nop
    /* 5D320 8006EB10 0D80043C */  lui        $a0, %hi(D_800D11D0)
    /* 5D324 8006EB14 DD52000C */  jal        func_80014B74
    /* 5D328 8006EB18 D0118424 */   addiu     $a0, $a0, %lo(D_800D11D0)
    /* 5D32C 8006EB1C 1C0030AE */  sw         $s0, 0x1C($s1)
  .L8006EB20:
    /* 5D330 8006EB20 2000258E */  lw         $a1, 0x20($s1)
    /* 5D334 8006EB24 00000000 */  nop
    /* 5D338 8006EB28 0500B010 */  beq        $a1, $s0, .L8006EB40
    /* 5D33C 8006EB2C 00000000 */   nop
    /* 5D340 8006EB30 0D80043C */  lui        $a0, %hi(D_800D11D0)
    /* 5D344 8006EB34 DD52000C */  jal        func_80014B74
    /* 5D348 8006EB38 D0118424 */   addiu     $a0, $a0, %lo(D_800D11D0)
    /* 5D34C 8006EB3C 200030AE */  sw         $s0, 0x20($s1)
  .L8006EB40:
    /* 5D350 8006EB40 1800BF8F */  lw         $ra, 0x18($sp)
    /* 5D354 8006EB44 1400B18F */  lw         $s1, 0x14($sp)
    /* 5D358 8006EB48 1000B08F */  lw         $s0, 0x10($sp)
    /* 5D35C 8006EB4C 0800E003 */  jr         $ra
    /* 5D360 8006EB50 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_8006EA88
