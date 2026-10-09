nonmatching func_800B534C, 0x218

glabel func_800B534C
    /* A3B5C 800B534C E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* A3B60 800B5350 1000B0AF */  sw         $s0, 0x10($sp)
    /* A3B64 800B5354 21800000 */  addu       $s0, $zero, $zero
    /* A3B68 800B5358 58008010 */  beqz       $a0, .L800B54BC
    /* A3B6C 800B535C 1400BFAF */   sw        $ra, 0x14($sp)
    /* A3B70 800B5360 07008224 */  addiu      $v0, $a0, 0x7
    /* A3B74 800B5364 F8FF0324 */  addiu      $v1, $zero, -0x8
    /* A3B78 800B5368 24104300 */  and        $v0, $v0, $v1
    /* A3B7C 800B536C 08004424 */  addiu      $a0, $v0, 0x8
    /* A3B80 800B5370 0E80033C */  lui        $v1, %hi(D_800DE6F0)
    /* A3B84 800B5374 0E80023C */  lui        $v0, %hi(D_800DE6E8)
    /* A3B88 800B5378 E8E6428C */  lw         $v0, %lo(D_800DE6E8)($v0)
    /* A3B8C 800B537C F0E6678C */  lw         $a3, %lo(D_800DE6F0)($v1)
    /* A3B90 800B5380 FFFF4224 */  addiu      $v0, $v0, -0x1
    /* A3B94 800B5384 0200422C */  sltiu      $v0, $v0, 0x2
    /* A3B98 800B5388 0E004010 */  beqz       $v0, .L800B53C4
    /* A3B9C 800B538C 21500002 */   addu      $t2, $s0, $zero
    /* A3BA0 800B5390 0400E88C */  lw         $t0, 0x4($a3)
    /* A3BA4 800B5394 00000000 */  nop
    /* A3BA8 800B5398 02000231 */  andi       $v0, $t0, 0x2
    /* A3BAC 800B539C 08004010 */  beqz       $v0, .L800B53C0
    /* A3BB0 800B53A0 FCFF0324 */   addiu     $v1, $zero, -0x4
    /* A3BB4 800B53A4 24300301 */  and        $a2, $t0, $v1
  .L800B53A8:
    /* A3BB8 800B53A8 2138E600 */  addu       $a3, $a3, $a2
    /* A3BBC 800B53AC 0400E88C */  lw         $t0, 0x4($a3)
    /* A3BC0 800B53B0 00000000 */  nop
    /* A3BC4 800B53B4 02000231 */  andi       $v0, $t0, 0x2
    /* A3BC8 800B53B8 FBFF4014 */  bnez       $v0, .L800B53A8
    /* A3BCC 800B53BC 24300301 */   and       $a2, $t0, $v1
  .L800B53C0:
    /* A3BD0 800B53C0 01000A24 */  addiu      $t2, $zero, 0x1
  .L800B53C4:
    /* A3BD4 800B53C4 FCFF0324 */  addiu      $v1, $zero, -0x4
    /* A3BD8 800B53C8 0E80023C */  lui        $v0, %hi(D_800DE6F8)
    /* A3BDC 800B53CC F8E64524 */  addiu      $a1, $v0, %lo(D_800DE6F8)
  .L800B53D0:
    /* A3BE0 800B53D0 0400E88C */  lw         $t0, 0x4($a3)
    /* A3BE4 800B53D4 00000000 */  nop
    /* A3BE8 800B53D8 24300301 */  and        $a2, $t0, $v1
    /* A3BEC 800B53DC 01000231 */  andi       $v0, $t0, 0x1
    /* A3BF0 800B53E0 2D004014 */  bnez       $v0, .L800B5498
    /* A3BF4 800B53E4 2148E600 */   addu      $t1, $a3, $a2
    /* A3BF8 800B53E8 2B10C400 */  sltu       $v0, $a2, $a0
    /* A3BFC 800B53EC 2A004014 */  bnez       $v0, .L800B5498
    /* A3C00 800B53F0 00000000 */   nop
    /* A3C04 800B53F4 0C00A28C */  lw         $v0, 0xC($a1)
    /* A3C08 800B53F8 1000A38C */  lw         $v1, 0x10($a1)
    /* A3C0C 800B53FC 23104400 */  subu       $v0, $v0, $a0
    /* A3C10 800B5400 0C00A2AC */  sw         $v0, 0xC($a1)
    /* A3C14 800B5404 0800A28C */  lw         $v0, 0x8($a1)
    /* A3C18 800B5408 01006324 */  addiu      $v1, $v1, 0x1
    /* A3C1C 800B540C 1000A3AC */  sw         $v1, 0x10($a1)
    /* A3C20 800B5410 21104400 */  addu       $v0, $v0, $a0
    /* A3C24 800B5414 08008614 */  bne        $a0, $a2, .L800B5438
    /* A3C28 800B5418 0800A2AC */   sw        $v0, 0x8($a1)
    /* A3C2C 800B541C 01000235 */  ori        $v0, $t0, 0x1
    /* A3C30 800B5420 0400E2AC */  sw         $v0, 0x4($a3)
    /* A3C34 800B5424 1400A28C */  lw         $v0, 0x14($a1)
    /* A3C38 800B5428 00000000 */  nop
    /* A3C3C 800B542C FFFF4224 */  addiu      $v0, $v0, -0x1
    /* A3C40 800B5430 24D50208 */  j          .L800B5490
    /* A3C44 800B5434 1400A2AC */   sw        $v0, 0x14($a1)
  .L800B5438:
    /* A3C48 800B5438 0C004011 */  beqz       $t2, .L800B546C
    /* A3C4C 800B543C 2330C400 */   subu      $a2, $a2, $a0
    /* A3C50 800B5440 2128E600 */  addu       $a1, $a3, $a2
    /* A3C54 800B5444 02000331 */  andi       $v1, $t0, 0x2
    /* A3C58 800B5448 01006234 */  ori        $v0, $v1, 0x1
    /* A3C5C 800B544C 25108200 */  or         $v0, $a0, $v0
    /* A3C60 800B5450 0400E6AC */  sw         $a2, 0x4($a3)
    /* A3C64 800B5454 0000A7AC */  sw         $a3, 0x0($a1)
    /* A3C68 800B5458 02006014 */  bnez       $v1, .L800B5464
    /* A3C6C 800B545C 0400A2AC */   sw        $v0, 0x4($a1)
    /* A3C70 800B5460 000025AD */  sw         $a1, 0x0($t1)
  .L800B5464:
    /* A3C74 800B5464 24D50208 */  j          .L800B5490
    /* A3C78 800B5468 2138A000 */   addu      $a3, $a1, $zero
  .L800B546C:
    /* A3C7C 800B546C 2128E400 */  addu       $a1, $a3, $a0
    /* A3C80 800B5470 01008234 */  ori        $v0, $a0, 0x1
    /* A3C84 800B5474 0400E2AC */  sw         $v0, 0x4($a3)
    /* A3C88 800B5478 23100401 */  subu       $v0, $t0, $a0
    /* A3C8C 800B547C 0400A2AC */  sw         $v0, 0x4($a1)
    /* A3C90 800B5480 02000231 */  andi       $v0, $t0, 0x2
    /* A3C94 800B5484 02004014 */  bnez       $v0, .L800B5490
    /* A3C98 800B5488 0000A7AC */   sw        $a3, 0x0($a1)
    /* A3C9C 800B548C 000025AD */  sw         $a1, 0x0($t1)
  .L800B5490:
    /* A3CA0 800B5490 2FD50208 */  j          .L800B54BC
    /* A3CA4 800B5494 0800F024 */   addiu     $s0, $a3, 0x8
  .L800B5498:
    /* A3CA8 800B5498 06004011 */  beqz       $t2, .L800B54B4
    /* A3CAC 800B549C 02000231 */   andi      $v0, $t0, 0x2
    /* A3CB0 800B54A0 0000E78C */  lw         $a3, 0x0($a3)
    /* A3CB4 800B54A4 00000000 */  nop
    /* A3CB8 800B54A8 0200E014 */  bnez       $a3, .L800B54B4
    /* A3CBC 800B54AC 01000824 */   addiu     $t0, $zero, 0x1
    /* A3CC0 800B54B0 02000231 */  andi       $v0, $t0, 0x2
  .L800B54B4:
    /* A3CC4 800B54B4 C6FF4010 */  beqz       $v0, .L800B53D0
    /* A3CC8 800B54B8 21382001 */   addu      $a3, $t1, $zero
  .L800B54BC:
    /* A3CCC 800B54BC 0E80043C */  lui        $a0, %hi(D_800DE6E8)
    /* A3CD0 800B54C0 E8E6838C */  lw         $v1, %lo(D_800DE6E8)($a0)
    /* A3CD4 800B54C4 01000224 */  addiu      $v0, $zero, 0x1
    /* A3CD8 800B54C8 02006214 */  bne        $v1, $v0, .L800B54D4
    /* A3CDC 800B54CC 0E80023C */   lui       $v0, %hi(D_800DE6F8)
    /* A3CE0 800B54D0 E8E680AC */  sw         $zero, %lo(D_800DE6E8)($a0)
  .L800B54D4:
    /* A3CE4 800B54D4 F8E64524 */  addiu      $a1, $v0, %lo(D_800DE6F8)
    /* A3CE8 800B54D8 0800A38C */  lw         $v1, 0x8($a1)
    /* A3CEC 800B54DC 1800A48C */  lw         $a0, 0x18($a1)
    /* A3CF0 800B54E0 00000000 */  nop
    /* A3CF4 800B54E4 2B106400 */  sltu       $v0, $v1, $a0
    /* A3CF8 800B54E8 02004010 */  beqz       $v0, .L800B54F4
    /* A3CFC 800B54EC 00000000 */   nop
    /* A3D00 800B54F0 21188000 */  addu       $v1, $a0, $zero
  .L800B54F4:
    /* A3D04 800B54F4 1400A48C */  lw         $a0, 0x14($a1)
    /* A3D08 800B54F8 1C00A68C */  lw         $a2, 0x1C($a1)
    /* A3D0C 800B54FC 00000000 */  nop
    /* A3D10 800B5500 2B108600 */  sltu       $v0, $a0, $a2
    /* A3D14 800B5504 02004010 */  beqz       $v0, .L800B5510
    /* A3D18 800B5508 1800A3AC */   sw        $v1, 0x18($a1)
    /* A3D1C 800B550C 2120C000 */  addu       $a0, $a2, $zero
  .L800B5510:
    /* A3D20 800B5510 1000A38C */  lw         $v1, 0x10($a1)
    /* A3D24 800B5514 2000A68C */  lw         $a2, 0x20($a1)
    /* A3D28 800B5518 00000000 */  nop
    /* A3D2C 800B551C 2B106600 */  sltu       $v0, $v1, $a2
    /* A3D30 800B5520 02004010 */  beqz       $v0, .L800B552C
    /* A3D34 800B5524 1C00A4AC */   sw        $a0, 0x1C($a1)
    /* A3D38 800B5528 2118C000 */  addu       $v1, $a2, $zero
  .L800B552C:
    /* A3D3C 800B552C 08000016 */  bnez       $s0, .L800B5550
    /* A3D40 800B5530 2000A3AC */   sw        $v1, 0x20($a1)
    /* A3D44 800B5534 0E80023C */  lui        $v0, %hi(D_800DE6EC)
    /* A3D48 800B5538 ECE6428C */  lw         $v0, %lo(D_800DE6EC)($v0)
    /* A3D4C 800B553C 00000000 */  nop
    /* A3D50 800B5540 03004010 */  beqz       $v0, .L800B5550
    /* A3D54 800B5544 00000000 */   nop
    /* A3D58 800B5548 09F84000 */  jalr       $v0
    /* A3D5C 800B554C 00000000 */   nop
  .L800B5550:
    /* A3D60 800B5550 21100002 */  addu       $v0, $s0, $zero
    /* A3D64 800B5554 1400BF8F */  lw         $ra, 0x14($sp)
    /* A3D68 800B5558 1000B08F */  lw         $s0, 0x10($sp)
    /* A3D6C 800B555C 0800E003 */  jr         $ra
    /* A3D70 800B5560 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_800B534C
