nonmatching func_8006C140, 0x1F0

glabel func_8006C140
    /* 5A950 8006C140 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 5A954 8006C144 1800B2AF */  sw         $s2, 0x18($sp)
    /* 5A958 8006C148 21900000 */  addu       $s2, $zero, $zero
    /* 5A95C 8006C14C 1400B1AF */  sw         $s1, 0x14($sp)
    /* 5A960 8006C150 21888000 */  addu       $s1, $a0, $zero
    /* 5A964 8006C154 1000B0AF */  sw         $s0, 0x10($sp)
    /* 5A968 8006C158 2C043026 */  addiu      $s0, $s1, 0x42C
    /* 5A96C 8006C15C 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* 5A970 8006C160 2C5A020C */  jal        func_800968B0
    /* 5A974 8006C164 21200002 */   addu      $a0, $s0, $zero
    /* 5A978 8006C168 6B004014 */  bnez       $v0, .L8006C318
    /* 5A97C 8006C16C 21104002 */   addu      $v0, $s2, $zero
    /* 5A980 8006C170 21200002 */  addu       $a0, $s0, $zero
    /* 5A984 8006C174 1B042682 */  lb         $a2, 0x41B($s1)
    /* 5A988 8006C178 B35A020C */  jal        func_80096ACC
    /* 5A98C 8006C17C 01000524 */   addiu     $a1, $zero, 0x1
    /* 5A990 8006C180 21200002 */  addu       $a0, $s0, $zero
    /* 5A994 8006C184 1C042682 */  lb         $a2, 0x41C($s1)
    /* 5A998 8006C188 B35A020C */  jal        func_80096ACC
    /* 5A99C 8006C18C 01000524 */   addiu     $a1, $zero, 0x1
    /* 5A9A0 8006C190 21200002 */  addu       $a0, $s0, $zero
    /* 5A9A4 8006C194 1D042682 */  lb         $a2, 0x41D($s1)
    /* 5A9A8 8006C198 B35A020C */  jal        func_80096ACC
    /* 5A9AC 8006C19C 01000524 */   addiu     $a1, $zero, 0x1
    /* 5A9B0 8006C1A0 21200002 */  addu       $a0, $s0, $zero
    /* 5A9B4 8006C1A4 1E042682 */  lb         $a2, 0x41E($s1)
    /* 5A9B8 8006C1A8 B35A020C */  jal        func_80096ACC
    /* 5A9BC 8006C1AC 01000524 */   addiu     $a1, $zero, 0x1
    /* 5A9C0 8006C1B0 16042392 */  lbu        $v1, 0x416($s1)
    /* 5A9C4 8006C1B4 22042292 */  lbu        $v0, 0x422($s1)
    /* 5A9C8 8006C1B8 00000000 */  nop
    /* 5A9CC 8006C1BC 04006214 */  bne        $v1, $v0, .L8006C1D0
    /* 5A9D0 8006C1C0 21200002 */   addu      $a0, $s0, $zero
    /* 5A9D4 8006C1C4 01000524 */  addiu      $a1, $zero, 0x1
    /* 5A9D8 8006C1C8 7AB00108 */  j          .L8006C1E8
    /* 5A9DC 8006C1CC 21300000 */   addu      $a2, $zero, $zero
  .L8006C1D0:
    /* 5A9E0 8006C1D0 01000524 */  addiu      $a1, $zero, 0x1
    /* 5A9E4 8006C1D4 B35A020C */  jal        func_80096ACC
    /* 5A9E8 8006C1D8 01000624 */   addiu     $a2, $zero, 0x1
    /* 5A9EC 8006C1DC 21200002 */  addu       $a0, $s0, $zero
    /* 5A9F0 8006C1E0 16042692 */  lbu        $a2, 0x416($s1)
    /* 5A9F4 8006C1E4 08000524 */  addiu      $a1, $zero, 0x8
  .L8006C1E8:
    /* 5A9F8 8006C1E8 B35A020C */  jal        func_80096ACC
    /* 5A9FC 8006C1EC 00000000 */   nop
    /* 5AA00 8006C1F0 14042396 */  lhu        $v1, 0x414($s1)
    /* 5AA04 8006C1F4 20042296 */  lhu        $v0, 0x420($s1)
    /* 5AA08 8006C1F8 00000000 */  nop
    /* 5AA0C 8006C1FC 04006214 */  bne        $v1, $v0, .L8006C210
    /* 5AA10 8006C200 21200002 */   addu      $a0, $s0, $zero
    /* 5AA14 8006C204 01000524 */  addiu      $a1, $zero, 0x1
    /* 5AA18 8006C208 8AB00108 */  j          .L8006C228
    /* 5AA1C 8006C20C 01000624 */   addiu     $a2, $zero, 0x1
  .L8006C210:
    /* 5AA20 8006C210 01000524 */  addiu      $a1, $zero, 0x1
    /* 5AA24 8006C214 B35A020C */  jal        func_80096ACC
    /* 5AA28 8006C218 21300000 */   addu      $a2, $zero, $zero
    /* 5AA2C 8006C21C 21200002 */  addu       $a0, $s0, $zero
    /* 5AA30 8006C220 14042696 */  lhu        $a2, 0x414($s1)
    /* 5AA34 8006C224 10000524 */  addiu      $a1, $zero, 0x10
  .L8006C228:
    /* 5AA38 8006C228 B35A020C */  jal        func_80096ACC
    /* 5AA3C 8006C22C 00000000 */   nop
    /* 5AA40 8006C230 17042382 */  lb         $v1, 0x417($s1)
    /* 5AA44 8006C234 23042282 */  lb         $v0, 0x423($s1)
    /* 5AA48 8006C238 00000000 */  nop
    /* 5AA4C 8006C23C 04006214 */  bne        $v1, $v0, .L8006C250
    /* 5AA50 8006C240 21200002 */   addu      $a0, $s0, $zero
    /* 5AA54 8006C244 01000524 */  addiu      $a1, $zero, 0x1
    /* 5AA58 8006C248 9AB00108 */  j          .L8006C268
    /* 5AA5C 8006C24C 01000624 */   addiu     $a2, $zero, 0x1
  .L8006C250:
    /* 5AA60 8006C250 01000524 */  addiu      $a1, $zero, 0x1
    /* 5AA64 8006C254 B35A020C */  jal        func_80096ACC
    /* 5AA68 8006C258 21300000 */   addu      $a2, $zero, $zero
    /* 5AA6C 8006C25C 21200002 */  addu       $a0, $s0, $zero
    /* 5AA70 8006C260 17042682 */  lb         $a2, 0x417($s1)
    /* 5AA74 8006C264 08000524 */  addiu      $a1, $zero, 0x8
  .L8006C268:
    /* 5AA78 8006C268 B35A020C */  jal        func_80096ACC
    /* 5AA7C 8006C26C 00000000 */   nop
    /* 5AA80 8006C270 FF00023C */  lui        $v0, (0xFFFFFF >> 16)
    /* 5AA84 8006C274 FFFF4234 */  ori        $v0, $v0, (0xFFFFFF & 0xFFFF)
    /* 5AA88 8006C278 1804248E */  lw         $a0, 0x418($s1)
    /* 5AA8C 8006C27C 2404238E */  lw         $v1, 0x424($s1)
    /* 5AA90 8006C280 24208200 */  and        $a0, $a0, $v0
    /* 5AA94 8006C284 24186200 */  and        $v1, $v1, $v0
    /* 5AA98 8006C288 04008314 */  bne        $a0, $v1, .L8006C29C
    /* 5AA9C 8006C28C 01000524 */   addiu     $a1, $zero, 0x1
    /* 5AAA0 8006C290 21200002 */  addu       $a0, $s0, $zero
    /* 5AAA4 8006C294 B5B00108 */  j          .L8006C2D4
    /* 5AAA8 8006C298 01000624 */   addiu     $a2, $zero, 0x1
  .L8006C29C:
    /* 5AAAC 8006C29C 21200002 */  addu       $a0, $s0, $zero
    /* 5AAB0 8006C2A0 B35A020C */  jal        func_80096ACC
    /* 5AAB4 8006C2A4 21300000 */   addu      $a2, $zero, $zero
    /* 5AAB8 8006C2A8 21200002 */  addu       $a0, $s0, $zero
    /* 5AABC 8006C2AC 18042682 */  lb         $a2, 0x418($s1)
    /* 5AAC0 8006C2B0 B35A020C */  jal        func_80096ACC
    /* 5AAC4 8006C2B4 08000524 */   addiu     $a1, $zero, 0x8
    /* 5AAC8 8006C2B8 21200002 */  addu       $a0, $s0, $zero
    /* 5AACC 8006C2BC 19042682 */  lb         $a2, 0x419($s1)
    /* 5AAD0 8006C2C0 B35A020C */  jal        func_80096ACC
    /* 5AAD4 8006C2C4 08000524 */   addiu     $a1, $zero, 0x8
    /* 5AAD8 8006C2C8 21200002 */  addu       $a0, $s0, $zero
    /* 5AADC 8006C2CC 1A042682 */  lb         $a2, 0x41A($s1)
    /* 5AAE0 8006C2D0 08000524 */  addiu      $a1, $zero, 0x8
  .L8006C2D4:
    /* 5AAE4 8006C2D4 B35A020C */  jal        func_80096ACC
    /* 5AAE8 8006C2D8 00000000 */   nop
    /* 5AAEC 8006C2DC 1404278E */  lw         $a3, 0x414($s1)
    /* 5AAF0 8006C2E0 1804288E */  lw         $t0, 0x418($s1)
    /* 5AAF4 8006C2E4 1C04298E */  lw         $t1, 0x41C($s1)
    /* 5AAF8 8006C2E8 200427AE */  sw         $a3, 0x420($s1)
    /* 5AAFC 8006C2EC 240428AE */  sw         $t0, 0x424($s1)
    /* 5AB00 8006C2F0 280429AE */  sw         $t1, 0x428($s1)
    /* 5AB04 8006C2F4 355A020C */  jal        func_800968D4
    /* 5AB08 8006C2F8 21200002 */   addu      $a0, $s0, $zero
    /* 5AB0C 8006C2FC 21200002 */  addu       $a0, $s0, $zero
    /* 5AB10 8006C300 2C5A020C */  jal        func_800968B0
    /* 5AB14 8006C304 540422AE */   sw        $v0, 0x454($s1)
    /* 5AB18 8006C308 03004014 */  bnez       $v0, .L8006C318
    /* 5AB1C 8006C30C 21104002 */   addu      $v0, $s2, $zero
    /* 5AB20 8006C310 01001224 */  addiu      $s2, $zero, 0x1
    /* 5AB24 8006C314 21104002 */  addu       $v0, $s2, $zero
  .L8006C318:
    /* 5AB28 8006C318 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* 5AB2C 8006C31C 1800B28F */  lw         $s2, 0x18($sp)
    /* 5AB30 8006C320 1400B18F */  lw         $s1, 0x14($sp)
    /* 5AB34 8006C324 1000B08F */  lw         $s0, 0x10($sp)
    /* 5AB38 8006C328 0800E003 */  jr         $ra
    /* 5AB3C 8006C32C 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_8006C140
