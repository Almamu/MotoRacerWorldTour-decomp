nonmatching func_800B031C, 0x120

glabel func_800B031C
    /* 9EB2C 800B031C 0C80023C */  lui        $v0, %hi(D_800C3BB0)
    /* 9EB30 800B0320 B03B438C */  lw         $v1, %lo(D_800C3BB0)($v0)
    /* 9EB34 800B0324 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 9EB38 800B0328 1400B1AF */  sw         $s1, 0x14($sp)
    /* 9EB3C 800B032C 21888000 */  addu       $s1, $a0, $zero
    /* 9EB40 800B0330 1800B2AF */  sw         $s2, 0x18($sp)
    /* 9EB44 800B0334 2190A000 */  addu       $s2, $a1, $zero
    /* 9EB48 800B0338 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* 9EB4C 800B033C 1000B0AF */  sw         $s0, 0x10($sp)
    /* 9EB50 800B0340 38006010 */  beqz       $v1, .L800B0424
    /* 9EB54 800B0344 21100000 */   addu      $v0, $zero, $zero
    /* 9EB58 800B0348 0E80023C */  lui        $v0, %hi(D_800DE2F8)
    /* 9EB5C 800B034C F8E24224 */  addiu      $v0, $v0, %lo(D_800DE2F8)
    /* 9EB60 800B0350 00191100 */  sll        $v1, $s1, 4
    /* 9EB64 800B0354 21187100 */  addu       $v1, $v1, $s1
    /* 9EB68 800B0358 40180300 */  sll        $v1, $v1, 1
    /* 9EB6C 800B035C 21806200 */  addu       $s0, $v1, $v0
    /* 9EB70 800B0360 00000482 */  lb         $a0, 0x0($s0)
    /* 9EB74 800B0364 00000000 */  nop
    /* 9EB78 800B0368 2E008014 */  bnez       $a0, .L800B0424
    /* 9EB7C 800B036C 21100000 */   addu      $v0, $zero, $zero
    /* 9EB80 800B0370 0E80033C */  lui        $v1, %hi(D_800DE358)
    /* 9EB84 800B0374 58E36324 */  addiu      $v1, $v1, %lo(D_800DE358)
    /* 9EB88 800B0378 80101100 */  sll        $v0, $s1, 2
    /* 9EB8C 800B037C 21104300 */  addu       $v0, $v0, $v1
    /* 9EB90 800B0380 0000448C */  lw         $a0, 0x0($v0)
    /* 9EB94 800B0384 02000524 */  addiu      $a1, $zero, 0x2
    /* 9EB98 800B0388 4FC1020C */  jal        func_800B053C
    /* 9EB9C 800B038C 21300000 */   addu      $a2, $zero, $zero
    /* 9EBA0 800B0390 0B004010 */  beqz       $v0, .L800B03C0
    /* 9EBA4 800B0394 0C80033C */   lui       $v1, %hi(D_800C3C7C)
    /* 9EBA8 800B0398 7C3C628C */  lw         $v0, %lo(D_800C3C7C)($v1)
    /* 9EBAC 800B039C 00000000 */  nop
    /* 9EBB0 800B03A0 01004230 */  andi       $v0, $v0, 0x1
    /* 9EBB4 800B03A4 18004010 */  beqz       $v0, .L800B0408
    /* 9EBB8 800B03A8 0E80033C */   lui       $v1, %hi(D_800DE350)
    /* 9EBBC 800B03AC 50E36324 */  addiu      $v1, $v1, %lo(D_800DE350)
    /* 9EBC0 800B03B0 40101100 */  sll        $v0, $s1, 1
    /* 9EBC4 800B03B4 21104300 */  addu       $v0, $v0, $v1
    /* 9EBC8 800B03B8 02C10208 */  j          .L800B0408
    /* 9EBCC 800B03BC 000052A4 */   sh        $s2, 0x0($v0)
  .L800B03C0:
    /* 9EBD0 800B03C0 01000292 */  lbu        $v0, 0x1($s0)
    /* 9EBD4 800B03C4 07000324 */  addiu      $v1, $zero, 0x7
    /* 9EBD8 800B03C8 02110200 */  srl        $v0, $v0, 4
    /* 9EBDC 800B03CC 10004314 */  bne        $v0, $v1, .L800B0410
    /* 9EBE0 800B03D0 0E80023C */   lui       $v0, %hi(D_800DE350)
    /* 9EBE4 800B03D4 0C80033C */  lui        $v1, %hi(D_800C3C7C)
    /* 9EBE8 800B03D8 7C3C628C */  lw         $v0, %lo(D_800C3C7C)($v1)
    /* 9EBEC 800B03DC 00000000 */  nop
    /* 9EBF0 800B03E0 02004230 */  andi       $v0, $v0, 0x2
    /* 9EBF4 800B03E4 08004010 */  beqz       $v0, .L800B0408
    /* 9EBF8 800B03E8 0E80023C */   lui       $v0, %hi(D_800DE350)
    /* 9EBFC 800B03EC 50E34224 */  addiu      $v0, $v0, %lo(D_800DE350)
    /* 9EC00 800B03F0 40201100 */  sll        $a0, $s1, 1
    /* 9EC04 800B03F4 21208200 */  addu       $a0, $a0, $v0
    /* 9EC08 800B03F8 01004332 */  andi       $v1, $s2, 0x1
    /* 9EC0C 800B03FC 001A0300 */  sll        $v1, $v1, 8
    /* 9EC10 800B0400 40006334 */  ori        $v1, $v1, 0x40
    /* 9EC14 800B0404 000083A4 */  sh         $v1, 0x0($a0)
  .L800B0408:
    /* 9EC18 800B0408 09C10208 */  j          .L800B0424
    /* 9EC1C 800B040C 01000224 */   addiu     $v0, $zero, 0x1
  .L800B0410:
    /* 9EC20 800B0410 50E34224 */  addiu      $v0, $v0, %lo(D_800DE350)
    /* 9EC24 800B0414 40181100 */  sll        $v1, $s1, 1
    /* 9EC28 800B0418 21186200 */  addu       $v1, $v1, $v0
    /* 9EC2C 800B041C 000060A4 */  sh         $zero, 0x0($v1)
    /* 9EC30 800B0420 21100000 */  addu       $v0, $zero, $zero
  .L800B0424:
    /* 9EC34 800B0424 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* 9EC38 800B0428 1800B28F */  lw         $s2, 0x18($sp)
    /* 9EC3C 800B042C 1400B18F */  lw         $s1, 0x14($sp)
    /* 9EC40 800B0430 1000B08F */  lw         $s0, 0x10($sp)
    /* 9EC44 800B0434 0800E003 */  jr         $ra
    /* 9EC48 800B0438 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_800B031C
