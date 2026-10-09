nonmatching func_800AD2B4, 0x23C

glabel func_800AD2B4
    /* 9BAC4 800AD2B4 D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* 9BAC8 800AD2B8 1400B1AF */  sw         $s1, 0x14($sp)
    /* 9BACC 800AD2BC 21888000 */  addu       $s1, $a0, $zero
    /* 9BAD0 800AD2C0 1800B2AF */  sw         $s2, 0x18($sp)
    /* 9BAD4 800AD2C4 2190A000 */  addu       $s2, $a1, $zero
    /* 9BAD8 800AD2C8 2800BFAF */  sw         $ra, 0x28($sp)
    /* 9BADC 800AD2CC 2400B5AF */  sw         $s5, 0x24($sp)
    /* 9BAE0 800AD2D0 2000B4AF */  sw         $s4, 0x20($sp)
    /* 9BAE4 800AD2D4 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 9BAE8 800AD2D8 08B8020C */  jal        func_800AE020
    /* 9BAEC 800AD2DC 1000B0AF */   sw        $s0, 0x10($sp)
    /* 9BAF0 800AD2E0 04002586 */  lh         $a1, 0x4($s1)
    /* 9BAF4 800AD2E4 04002396 */  lhu        $v1, 0x4($s1)
    /* 9BAF8 800AD2E8 0B00A004 */  bltz       $a1, .L800AD318
    /* 9BAFC 800AD2EC 21A80000 */   addu      $s5, $zero, $zero
    /* 9BB00 800AD2F0 21206000 */  addu       $a0, $v1, $zero
    /* 9BB04 800AD2F4 0C80023C */  lui        $v0, %hi(D_800BF244)
    /* 9BB08 800AD2F8 44F24284 */  lh         $v0, %lo(D_800BF244)($v0)
    /* 9BB0C 800AD2FC 0C80033C */  lui        $v1, %hi(D_800BF244)
    /* 9BB10 800AD300 44F26394 */  lhu        $v1, %lo(D_800BF244)($v1)
    /* 9BB14 800AD304 2A104500 */  slt        $v0, $v0, $a1
    /* 9BB18 800AD308 04004010 */  beqz       $v0, .L800AD31C
    /* 9BB1C 800AD30C 00000000 */   nop
    /* 9BB20 800AD310 C7B40208 */  j          .L800AD31C
    /* 9BB24 800AD314 21206000 */   addu      $a0, $v1, $zero
  .L800AD318:
    /* 9BB28 800AD318 21200000 */  addu       $a0, $zero, $zero
  .L800AD31C:
    /* 9BB2C 800AD31C 06002586 */  lh         $a1, 0x6($s1)
    /* 9BB30 800AD320 06002396 */  lhu        $v1, 0x6($s1)
    /* 9BB34 800AD324 0B00A004 */  bltz       $a1, .L800AD354
    /* 9BB38 800AD328 040024A6 */   sh        $a0, 0x4($s1)
    /* 9BB3C 800AD32C 21206000 */  addu       $a0, $v1, $zero
    /* 9BB40 800AD330 0C80023C */  lui        $v0, %hi(D_800BF246)
    /* 9BB44 800AD334 46F24284 */  lh         $v0, %lo(D_800BF246)($v0)
    /* 9BB48 800AD338 0C80033C */  lui        $v1, %hi(D_800BF246)
    /* 9BB4C 800AD33C 46F26394 */  lhu        $v1, %lo(D_800BF246)($v1)
    /* 9BB50 800AD340 2A104500 */  slt        $v0, $v0, $a1
    /* 9BB54 800AD344 05004010 */  beqz       $v0, .L800AD35C
    /* 9BB58 800AD348 00140400 */   sll       $v0, $a0, 16
    /* 9BB5C 800AD34C D6B40208 */  j          .L800AD358
    /* 9BB60 800AD350 21206000 */   addu      $a0, $v1, $zero
  .L800AD354:
    /* 9BB64 800AD354 21200000 */  addu       $a0, $zero, $zero
  .L800AD358:
    /* 9BB68 800AD358 00140400 */  sll        $v0, $a0, 16
  .L800AD35C:
    /* 9BB6C 800AD35C 04002386 */  lh         $v1, 0x4($s1)
    /* 9BB70 800AD360 03140200 */  sra        $v0, $v0, 16
    /* 9BB74 800AD364 18006200 */  mult       $v1, $v0
    /* 9BB78 800AD368 060024A6 */  sh         $a0, 0x6($s1)
    /* 9BB7C 800AD36C 12300000 */  mflo       $a2
    /* 9BB80 800AD370 0100C324 */  addiu      $v1, $a2, 0x1
    /* 9BB84 800AD374 C2170300 */  srl        $v0, $v1, 31
    /* 9BB88 800AD378 21186200 */  addu       $v1, $v1, $v0
    /* 9BB8C 800AD37C 43200300 */  sra        $a0, $v1, 1
    /* 9BB90 800AD380 0300801C */  bgtz       $a0, .L800AD390
    /* 9BB94 800AD384 43810300 */   sra       $s0, $v1, 5
    /* 9BB98 800AD388 33B50208 */  j          .L800AD4CC
    /* 9BB9C 800AD38C FFFF0224 */   addiu     $v0, $zero, -0x1
  .L800AD390:
    /* 9BBA0 800AD390 21180002 */  addu       $v1, $s0, $zero
    /* 9BBA4 800AD394 00110300 */  sll        $v0, $v1, 4
    /* 9BBA8 800AD398 23808200 */  subu       $s0, $a0, $v0
    /* 9BBAC 800AD39C 0C80023C */  lui        $v0, %hi(D_800BF348)
    /* 9BBB0 800AD3A0 48F3428C */  lw         $v0, %lo(D_800BF348)($v0)
    /* 9BBB4 800AD3A4 21A06000 */  addu       $s4, $v1, $zero
    /* 9BBB8 800AD3A8 0000428C */  lw         $v0, 0x0($v0)
    /* 9BBBC 800AD3AC 0004033C */  lui        $v1, (0x4000000 >> 16)
    /* 9BBC0 800AD3B0 24104300 */  and        $v0, $v0, $v1
    /* 9BBC4 800AD3B4 0E004014 */  bnez       $v0, .L800AD3F0
    /* 9BBC8 800AD3B8 00A0043C */   lui       $a0, (0xA0000000 >> 16)
    /* 9BBCC 800AD3BC 0004133C */  lui        $s3, (0x4000000 >> 16)
  .L800AD3C0:
    /* 9BBD0 800AD3C0 15B8020C */  jal        func_800AE054
    /* 9BBD4 800AD3C4 00000000 */   nop
    /* 9BBD8 800AD3C8 40004014 */  bnez       $v0, .L800AD4CC
    /* 9BBDC 800AD3CC FFFF0224 */   addiu     $v0, $zero, -0x1
    /* 9BBE0 800AD3D0 0C80023C */  lui        $v0, %hi(D_800BF348)
    /* 9BBE4 800AD3D4 48F3428C */  lw         $v0, %lo(D_800BF348)($v0)
    /* 9BBE8 800AD3D8 00000000 */  nop
    /* 9BBEC 800AD3DC 0000428C */  lw         $v0, 0x0($v0)
    /* 9BBF0 800AD3E0 00000000 */  nop
    /* 9BBF4 800AD3E4 24105300 */  and        $v0, $v0, $s3
    /* 9BBF8 800AD3E8 F5FF4010 */  beqz       $v0, .L800AD3C0
    /* 9BBFC 800AD3EC 00A0043C */   lui       $a0, (0xA0000000 >> 16)
  .L800AD3F0:
    /* 9BC00 800AD3F0 0C80033C */  lui        $v1, %hi(D_800BF348)
    /* 9BC04 800AD3F4 48F3638C */  lw         $v1, %lo(D_800BF348)($v1)
    /* 9BC08 800AD3F8 0004023C */  lui        $v0, (0x4000000 >> 16)
    /* 9BC0C 800AD3FC 000062AC */  sw         $v0, 0x0($v1)
    /* 9BC10 800AD400 0C80033C */  lui        $v1, %hi(D_800BF344)
    /* 9BC14 800AD404 44F3638C */  lw         $v1, %lo(D_800BF344)($v1)
    /* 9BC18 800AD408 0001023C */  lui        $v0, (0x1000000 >> 16)
    /* 9BC1C 800AD40C 000062AC */  sw         $v0, 0x0($v1)
    /* 9BC20 800AD410 0C80023C */  lui        $v0, %hi(D_800BF344)
    /* 9BC24 800AD414 44F3428C */  lw         $v0, %lo(D_800BF344)($v0)
    /* 9BC28 800AD418 0200A012 */  beqz       $s5, .L800AD424
    /* 9BC2C 800AD41C 00000000 */   nop
    /* 9BC30 800AD420 00B0043C */  lui        $a0, (0xB0000000 >> 16)
  .L800AD424:
    /* 9BC34 800AD424 000044AC */  sw         $a0, 0x0($v0)
    /* 9BC38 800AD428 0C80033C */  lui        $v1, %hi(D_800BF344)
    /* 9BC3C 800AD42C 44F3638C */  lw         $v1, %lo(D_800BF344)($v1)
    /* 9BC40 800AD430 0000228E */  lw         $v0, 0x0($s1)
    /* 9BC44 800AD434 00000000 */  nop
    /* 9BC48 800AD438 000062AC */  sw         $v0, 0x0($v1)
    /* 9BC4C 800AD43C 0C80033C */  lui        $v1, %hi(D_800BF344)
    /* 9BC50 800AD440 44F3638C */  lw         $v1, %lo(D_800BF344)($v1)
    /* 9BC54 800AD444 0400228E */  lw         $v0, 0x4($s1)
    /* 9BC58 800AD448 FFFF1026 */  addiu      $s0, $s0, -0x1
    /* 9BC5C 800AD44C 000062AC */  sw         $v0, 0x0($v1)
    /* 9BC60 800AD450 FFFF0224 */  addiu      $v0, $zero, -0x1
    /* 9BC64 800AD454 09000212 */  beq        $s0, $v0, .L800AD47C
    /* 9BC68 800AD458 00000000 */   nop
    /* 9BC6C 800AD45C FFFF0424 */  addiu      $a0, $zero, -0x1
  .L800AD460:
    /* 9BC70 800AD460 0000438E */  lw         $v1, 0x0($s2)
    /* 9BC74 800AD464 04005226 */  addiu      $s2, $s2, 0x4
    /* 9BC78 800AD468 0C80023C */  lui        $v0, %hi(D_800BF344)
    /* 9BC7C 800AD46C 44F3428C */  lw         $v0, %lo(D_800BF344)($v0)
    /* 9BC80 800AD470 FFFF1026 */  addiu      $s0, $s0, -0x1
    /* 9BC84 800AD474 FAFF0416 */  bne        $s0, $a0, .L800AD460
    /* 9BC88 800AD478 000043AC */   sw        $v1, 0x0($v0)
  .L800AD47C:
    /* 9BC8C 800AD47C 12008012 */  beqz       $s4, .L800AD4C8
    /* 9BC90 800AD480 0004033C */   lui       $v1, (0x4000002 >> 16)
    /* 9BC94 800AD484 0C80023C */  lui        $v0, %hi(D_800BF348)
    /* 9BC98 800AD488 48F3428C */  lw         $v0, %lo(D_800BF348)($v0)
    /* 9BC9C 800AD48C 02006334 */  ori        $v1, $v1, (0x4000002 & 0xFFFF)
    /* 9BCA0 800AD490 000043AC */  sw         $v1, 0x0($v0)
    /* 9BCA4 800AD494 0C80023C */  lui        $v0, %hi(D_800BF34C)
    /* 9BCA8 800AD498 4CF3428C */  lw         $v0, %lo(D_800BF34C)($v0)
    /* 9BCAC 800AD49C 0001043C */  lui        $a0, (0x1000201 >> 16)
    /* 9BCB0 800AD4A0 000052AC */  sw         $s2, 0x0($v0)
    /* 9BCB4 800AD4A4 00141400 */  sll        $v0, $s4, 16
    /* 9BCB8 800AD4A8 0C80033C */  lui        $v1, %hi(D_800BF350)
    /* 9BCBC 800AD4AC 50F3638C */  lw         $v1, %lo(D_800BF350)($v1)
    /* 9BCC0 800AD4B0 10004234 */  ori        $v0, $v0, 0x10
    /* 9BCC4 800AD4B4 000062AC */  sw         $v0, 0x0($v1)
    /* 9BCC8 800AD4B8 0C80023C */  lui        $v0, %hi(D_800BF354)
    /* 9BCCC 800AD4BC 54F3428C */  lw         $v0, %lo(D_800BF354)($v0)
    /* 9BCD0 800AD4C0 01028434 */  ori        $a0, $a0, (0x1000201 & 0xFFFF)
    /* 9BCD4 800AD4C4 000044AC */  sw         $a0, 0x0($v0)
  .L800AD4C8:
    /* 9BCD8 800AD4C8 21100000 */  addu       $v0, $zero, $zero
  .L800AD4CC:
    /* 9BCDC 800AD4CC 2800BF8F */  lw         $ra, 0x28($sp)
    /* 9BCE0 800AD4D0 2400B58F */  lw         $s5, 0x24($sp)
    /* 9BCE4 800AD4D4 2000B48F */  lw         $s4, 0x20($sp)
    /* 9BCE8 800AD4D8 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 9BCEC 800AD4DC 1800B28F */  lw         $s2, 0x18($sp)
    /* 9BCF0 800AD4E0 1400B18F */  lw         $s1, 0x14($sp)
    /* 9BCF4 800AD4E4 1000B08F */  lw         $s0, 0x10($sp)
    /* 9BCF8 800AD4E8 0800E003 */  jr         $ra
    /* 9BCFC 800AD4EC 3000BD27 */   addiu     $sp, $sp, 0x30
endlabel func_800AD2B4
