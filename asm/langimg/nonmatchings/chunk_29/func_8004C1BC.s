nonmatching func_8004C1BC, 0x1D0

glabel func_8004C1BC
    /* 3A9CC 8004C1BC C0FFBD27 */  addiu      $sp, $sp, -0x40
    /* 3A9D0 8004C1C0 3000B2AF */  sw         $s2, 0x30($sp)
    /* 3A9D4 8004C1C4 21908000 */  addu       $s2, $a0, $zero
    /* 3A9D8 8004C1C8 0D80043C */  lui        $a0, %hi(D_800CBC94)
    /* 3A9DC 8004C1CC 94BC8424 */  addiu      $a0, $a0, %lo(D_800CBC94)
    /* 3A9E0 8004C1D0 3800B4AF */  sw         $s4, 0x38($sp)
    /* 3A9E4 8004C1D4 21A0A000 */  addu       $s4, $a1, $zero
    /* 3A9E8 8004C1D8 3C00BFAF */  sw         $ra, 0x3C($sp)
    /* 3A9EC 8004C1DC 3400B3AF */  sw         $s3, 0x34($sp)
    /* 3A9F0 8004C1E0 2C00B1AF */  sw         $s1, 0x2C($sp)
    /* 3A9F4 8004C1E4 2800B0AF */  sw         $s0, 0x28($sp)
    /* 3A9F8 8004C1E8 1800458E */  lw         $a1, 0x18($s2)
    /* 3A9FC 8004C1EC F1E3010C */  jal        func_80078FC4
    /* 3AA00 8004C1F0 2198C000 */   addu      $s3, $a2, $zero
    /* 3AA04 8004C1F4 70044326 */  addiu      $v1, $s2, 0x470
    /* 3AA08 8004C1F8 21307400 */  addu       $a2, $v1, $s4
    /* 3AA0C 8004C1FC 0000C380 */  lb         $v1, 0x0($a2)
    /* 3AA10 8004C200 FFFF0524 */  addiu      $a1, $zero, -0x1
    /* 3AA14 8004C204 10006510 */  beq        $v1, $a1, .L8004C248
    /* 3AA18 8004C208 21384000 */   addu      $a3, $v0, $zero
    /* 3AA1C 8004C20C 40100300 */  sll        $v0, $v1, 1
    /* 3AA20 8004C210 21104300 */  addu       $v0, $v0, $v1
    /* 3AA24 8004C214 80100200 */  sll        $v0, $v0, 2
    /* 3AA28 8004C218 23104300 */  subu       $v0, $v0, $v1
    /* 3AA2C 8004C21C 80100200 */  sll        $v0, $v0, 2
    /* 3AA30 8004C220 23104300 */  subu       $v0, $v0, $v1
    /* 3AA34 8004C224 80100200 */  sll        $v0, $v0, 2
    /* 3AA38 8004C228 21104300 */  addu       $v0, $v0, $v1
    /* 3AA3C 8004C22C C0100200 */  sll        $v0, $v0, 3
    /* 3AA40 8004C230 E8024224 */  addiu      $v0, $v0, 0x2E8
    /* 3AA44 8004C234 7803448E */  lw         $a0, 0x378($s2)
    /* 3AA48 8004C238 10010324 */  addiu      $v1, $zero, 0x110
    /* 3AA4C 8004C23C 21808200 */  addu       $s0, $a0, $v0
    /* 3AA50 8004C240 430005A2 */  sb         $a1, 0x43($s0)
    /* 3AA54 8004C244 380003AE */  sw         $v1, 0x38($s0)
  .L8004C248:
    /* 3AA58 8004C248 80881400 */  sll        $s1, $s4, 2
    /* 3AA5C 8004C24C 21105102 */  addu       $v0, $s2, $s1
    /* 3AA60 8004C250 0000D3A0 */  sb         $s3, 0x0($a2)
    /* 3AA64 8004C254 1D006006 */  bltz       $s3, .L8004C2CC
    /* 3AA68 8004C258 680445AC */   sw        $a1, 0x468($v0)
    /* 3AA6C 8004C25C 3000E424 */  addiu      $a0, $a3, 0x30
    /* 3AA70 8004C260 40181300 */  sll        $v1, $s3, 1
    /* 3AA74 8004C264 21187300 */  addu       $v1, $v1, $s3
    /* 3AA78 8004C268 80180300 */  sll        $v1, $v1, 2
    /* 3AA7C 8004C26C 23187300 */  subu       $v1, $v1, $s3
    /* 3AA80 8004C270 80180300 */  sll        $v1, $v1, 2
    /* 3AA84 8004C274 23187300 */  subu       $v1, $v1, $s3
    /* 3AA88 8004C278 80180300 */  sll        $v1, $v1, 2
    /* 3AA8C 8004C27C 21187300 */  addu       $v1, $v1, $s3
    /* 3AA90 8004C280 C0180300 */  sll        $v1, $v1, 3
    /* 3AA94 8004C284 E8026324 */  addiu      $v1, $v1, 0x2E8
    /* 3AA98 8004C288 7803468E */  lw         $a2, 0x378($s2)
    /* 3AA9C 8004C28C BC00458C */  lw         $a1, 0xBC($v0)
    /* 3AAA0 8004C290 7A24020C */  jal        func_800891E8
    /* 3AAA4 8004C294 2180C300 */   addu      $s0, $a2, $v1
    /* 3AAA8 8004C298 21184000 */  addu       $v1, $v0, $zero
    /* 3AAAC 8004C29C 09006010 */  beqz       $v1, .L8004C2C4
    /* 3AAB0 8004C2A0 10010224 */   addiu     $v0, $zero, 0x110
    /* 3AAB4 8004C2A4 4800628C */  lw         $v0, 0x48($v1)
    /* 3AAB8 8004C2A8 00000000 */  nop
    /* 3AABC 8004C2AC 05004010 */  beqz       $v0, .L8004C2C4
    /* 3AAC0 8004C2B0 10010224 */   addiu     $v0, $zero, 0x110
    /* 3AAC4 8004C2B4 430014A2 */  sb         $s4, 0x43($s0)
    /* 3AAC8 8004C2B8 4C00628C */  lw         $v0, 0x4C($v1)
    /* 3AACC 8004C2BC B4300108 */  j          .L8004C2D0
    /* 3AAD0 8004C2C0 380002AE */   sw        $v0, 0x38($s0)
  .L8004C2C4:
    /* 3AAD4 8004C2C4 B4300108 */  j          .L8004C2D0
    /* 3AAD8 8004C2C8 380002AE */   sw        $v0, 0x38($s0)
  .L8004C2CC:
    /* 3AADC 8004C2CC 21800000 */  addu       $s0, $zero, $zero
  .L8004C2D0:
    /* 3AAE0 8004C2D0 25000012 */  beqz       $s0, .L8004C368
    /* 3AAE4 8004C2D4 FFFF0224 */   addiu     $v0, $zero, -0x1
    /* 3AAE8 8004C2D8 3400048E */  lw         $a0, 0x34($s0)
    /* 3AAEC 8004C2DC 00000000 */  nop
    /* 3AAF0 8004C2E0 06008210 */  beq        $a0, $v0, .L8004C2FC
    /* 3AAF4 8004C2E4 00000000 */   nop
    /* 3AAF8 8004C2E8 7803428E */  lw         $v0, 0x378($s2)
    /* 3AAFC 8004C2EC 00000000 */  nop
    /* 3AB00 8004C2F0 21105100 */  addu       $v0, $v0, $s1
    /* 3AB04 8004C2F4 C3300108 */  j          .L8004C30C
    /* 3AB08 8004C2F8 141E40AC */   sw        $zero, 0x1E14($v0)
  .L8004C2FC:
    /* 3AB0C 8004C2FC 7803428E */  lw         $v0, 0x378($s2)
    /* 3AB10 8004C300 00000000 */  nop
    /* 3AB14 8004C304 21105100 */  addu       $v0, $v0, $s1
    /* 3AB18 8004C308 141E44AC */  sw         $a0, 0x1E14($v0)
  .L8004C30C:
    /* 3AB1C 8004C30C 7803438E */  lw         $v1, 0x378($s2)
    /* 3AB20 8004C310 FFFF0424 */  addiu      $a0, $zero, -0x1
    /* 3AB24 8004C314 21187100 */  addu       $v1, $v1, $s1
    /* 3AB28 8004C318 1C1E64AC */  sw         $a0, 0x1E1C($v1)
    /* 3AB2C 8004C31C 7803458E */  lw         $a1, 0x378($s2)
    /* 3AB30 8004C320 00000000 */  nop
    /* 3AB34 8004C324 0000A28C */  lw         $v0, 0x0($a1)
    /* 3AB38 8004C328 00000000 */  nop
    /* 3AB3C 8004C32C A8004230 */  andi       $v0, $v0, 0xA8
    /* 3AB40 8004C330 0D004010 */  beqz       $v0, .L8004C368
    /* 3AB44 8004C334 21204002 */   addu      $a0, $s2, $zero
    /* 3AB48 8004C338 2000A527 */  addiu      $a1, $sp, 0x20
    /* 3AB4C 8004C33C 31006226 */  addiu      $v0, $s3, 0x31
    /* 3AB50 8004C340 04000324 */  addiu      $v1, $zero, 0x4
    /* 3AB54 8004C344 2000A2A3 */  sb         $v0, 0x20($sp)
    /* 3AB58 8004C348 FFFF0234 */  ori        $v0, $zero, 0xFFFF
    /* 3AB5C 8004C34C B80B0624 */  addiu      $a2, $zero, 0xBB8
    /* 3AB60 8004C350 21388002 */  addu       $a3, $s4, $zero
    /* 3AB64 8004C354 2100A0A3 */  sb         $zero, 0x21($sp)
    /* 3AB68 8004C358 1000A3AF */  sw         $v1, 0x10($sp)
    /* 3AB6C 8004C35C 1400A2AF */  sw         $v0, 0x14($sp)
    /* 3AB70 8004C360 D151010C */  jal        func_80054744
    /* 3AB74 8004C364 1800A3AF */   sw        $v1, 0x18($sp)
  .L8004C368:
    /* 3AB78 8004C368 3C00BF8F */  lw         $ra, 0x3C($sp)
    /* 3AB7C 8004C36C 3800B48F */  lw         $s4, 0x38($sp)
    /* 3AB80 8004C370 3400B38F */  lw         $s3, 0x34($sp)
    /* 3AB84 8004C374 3000B28F */  lw         $s2, 0x30($sp)
    /* 3AB88 8004C378 2C00B18F */  lw         $s1, 0x2C($sp)
    /* 3AB8C 8004C37C 2800B08F */  lw         $s0, 0x28($sp)
    /* 3AB90 8004C380 01000224 */  addiu      $v0, $zero, 0x1
    /* 3AB94 8004C384 0800E003 */  jr         $ra
    /* 3AB98 8004C388 4000BD27 */   addiu     $sp, $sp, 0x40
endlabel func_8004C1BC
