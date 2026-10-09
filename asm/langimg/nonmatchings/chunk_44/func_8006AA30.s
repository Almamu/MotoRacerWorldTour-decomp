nonmatching func_8006AA30, 0x10C

glabel func_8006AA30
    /* 59240 8006AA30 C8FFBD27 */  addiu      $sp, $sp, -0x38
    /* 59244 8006AA34 1000B0AF */  sw         $s0, 0x10($sp)
    /* 59248 8006AA38 21800000 */  addu       $s0, $zero, $zero
    /* 5924C 8006AA3C 1800B2AF */  sw         $s2, 0x18($sp)
    /* 59250 8006AA40 FFFF1224 */  addiu      $s2, $zero, -0x1
    /* 59254 8006AA44 2400B5AF */  sw         $s5, 0x24($sp)
    /* 59258 8006AA48 21A88000 */  addu       $s5, $a0, $zero
    /* 5925C 8006AA4C 2800B6AF */  sw         $s6, 0x28($sp)
    /* 59260 8006AA50 21B0A000 */  addu       $s6, $a1, $zero
    /* 59264 8006AA54 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 59268 8006AA58 5000B387 */  lh         $s3, 0x50($sp)
    /* 5926C 8006AA5C 2128C000 */  addu       $a1, $a2, $zero
    /* 59270 8006AA60 2C00B7AF */  sw         $s7, 0x2C($sp)
    /* 59274 8006AA64 21B8E000 */  addu       $s7, $a3, $zero
    /* 59278 8006AA68 3000BFAF */  sw         $ra, 0x30($sp)
    /* 5927C 8006AA6C 2000B4AF */  sw         $s4, 0x20($sp)
    /* 59280 8006AA70 2200A010 */  beqz       $a1, .L8006AAFC
    /* 59284 8006AA74 1400B1AF */   sw        $s1, 0x14($sp)
    /* 59288 8006AA78 0D80043C */  lui        $a0, %hi(D_800CB480)
    /* 5928C 8006AA7C 80B48424 */  addiu      $a0, $a0, %lo(D_800CB480)
    /* 59290 8006AA80 74A9010C */  jal        func_8006A5D0
    /* 59294 8006AA84 FFFF0624 */   addiu     $a2, $zero, -0x1
    /* 59298 8006AA88 21884000 */  addu       $s1, $v0, $zero
    /* 5929C 8006AA8C 1B003212 */  beq        $s1, $s2, .L8006AAFC
    /* 592A0 8006AA90 FFFF1424 */   addiu     $s4, $zero, -0x1
    /* 592A4 8006AA94 2120A002 */  addu       $a0, $s5, $zero
    /* 592A8 8006AA98 2128C002 */  addu       $a1, $s6, $zero
    /* 592AC 8006AA9C 80101100 */  sll        $v0, $s1, 2
    /* 592B0 8006AAA0 21105100 */  addu       $v0, $v0, $s1
    /* 592B4 8006AAA4 946D838F */  lw         $v1, %gp_rel(D_800CB484)($gp)
    /* 592B8 8006AAA8 00110200 */  sll        $v0, $v0, 4
    /* 592BC 8006AAAC 21386002 */  addu       $a3, $s3, $zero
    /* 592C0 8006AAB0 21806200 */  addu       $s0, $v1, $v0
    /* 592C4 8006AAB4 65AA010C */  jal        func_8006A994
    /* 592C8 8006AAB8 21300002 */   addu      $a2, $s0, $zero
    /* 592CC 8006AABC 21904000 */  addu       $s2, $v0, $zero
    /* 592D0 8006AAC0 0A005412 */  beq        $s2, $s4, .L8006AAEC
    /* 592D4 8006AAC4 00000000 */   nop
    /* 592D8 8006AAC8 100017AE */  sw         $s7, 0x10($s0)
    /* 592DC 8006AACC 4800A28F */  lw         $v0, 0x48($sp)
    /* 592E0 8006AAD0 00000000 */  nop
    /* 592E4 8006AAD4 140002AE */  sw         $v0, 0x14($s0)
    /* 592E8 8006AAD8 4C00A38F */  lw         $v1, 0x4C($sp)
    /* 592EC 8006AADC 040014AE */  sw         $s4, 0x4($s0)
    /* 592F0 8006AAE0 480011A6 */  sh         $s1, 0x48($s0)
    /* 592F4 8006AAE4 BFAA0108 */  j          .L8006AAFC
    /* 592F8 8006AAE8 380003AE */   sw        $v1, 0x38($s0)
  .L8006AAEC:
    /* 592FC 8006AAEC 0D80043C */  lui        $a0, %hi(D_800CB480)
    /* 59300 8006AAF0 80B48424 */  addiu      $a0, $a0, %lo(D_800CB480)
    /* 59304 8006AAF4 ACA9010C */  jal        func_8006A6B0
    /* 59308 8006AAF8 21282002 */   addu      $a1, $s1, $zero
  .L8006AAFC:
    /* 5930C 8006AAFC FFFF0224 */  addiu      $v0, $zero, -0x1
    /* 59310 8006AB00 03004216 */  bne        $s2, $v0, .L8006AB10
    /* 59314 8006AB04 21100002 */   addu      $v0, $s0, $zero
    /* 59318 8006AB08 21800000 */  addu       $s0, $zero, $zero
    /* 5931C 8006AB0C 21100002 */  addu       $v0, $s0, $zero
  .L8006AB10:
    /* 59320 8006AB10 3000BF8F */  lw         $ra, 0x30($sp)
    /* 59324 8006AB14 2C00B78F */  lw         $s7, 0x2C($sp)
    /* 59328 8006AB18 2800B68F */  lw         $s6, 0x28($sp)
    /* 5932C 8006AB1C 2400B58F */  lw         $s5, 0x24($sp)
    /* 59330 8006AB20 2000B48F */  lw         $s4, 0x20($sp)
    /* 59334 8006AB24 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 59338 8006AB28 1800B28F */  lw         $s2, 0x18($sp)
    /* 5933C 8006AB2C 1400B18F */  lw         $s1, 0x14($sp)
    /* 59340 8006AB30 1000B08F */  lw         $s0, 0x10($sp)
    /* 59344 8006AB34 0800E003 */  jr         $ra
    /* 59348 8006AB38 3800BD27 */   addiu     $sp, $sp, 0x38
endlabel func_8006AA30
