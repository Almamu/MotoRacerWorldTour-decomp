nonmatching func_8006C330, 0x170

glabel func_8006C330
    /* 5AB40 8006C330 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 5AB44 8006C334 1000B0AF */  sw         $s0, 0x10($sp)
    /* 5AB48 8006C338 21808000 */  addu       $s0, $a0, $zero
    /* 5AB4C 8006C33C 1400B1AF */  sw         $s1, 0x14($sp)
    /* 5AB50 8006C340 2C041126 */  addiu      $s1, $s0, 0x42C
    /* 5AB54 8006C344 21202002 */  addu       $a0, $s1, $zero
    /* 5AB58 8006C348 01000524 */  addiu      $a1, $zero, 0x1
    /* 5AB5C 8006C34C 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* 5AB60 8006C350 DD5A020C */  jal        func_80096B74
    /* 5AB64 8006C354 1800B2AF */   sw        $s2, 0x18($sp)
    /* 5AB68 8006C358 21202002 */  addu       $a0, $s1, $zero
    /* 5AB6C 8006C35C 01000524 */  addiu      $a1, $zero, 0x1
    /* 5AB70 8006C360 DD5A020C */  jal        func_80096B74
    /* 5AB74 8006C364 1B0402A2 */   sb        $v0, 0x41B($s0)
    /* 5AB78 8006C368 21202002 */  addu       $a0, $s1, $zero
    /* 5AB7C 8006C36C 01000524 */  addiu      $a1, $zero, 0x1
    /* 5AB80 8006C370 DD5A020C */  jal        func_80096B74
    /* 5AB84 8006C374 1C0402A2 */   sb        $v0, 0x41C($s0)
    /* 5AB88 8006C378 21202002 */  addu       $a0, $s1, $zero
    /* 5AB8C 8006C37C 01000524 */  addiu      $a1, $zero, 0x1
    /* 5AB90 8006C380 DD5A020C */  jal        func_80096B74
    /* 5AB94 8006C384 1D0402A2 */   sb        $v0, 0x41D($s0)
    /* 5AB98 8006C388 21202002 */  addu       $a0, $s1, $zero
    /* 5AB9C 8006C38C 01000524 */  addiu      $a1, $zero, 0x1
    /* 5ABA0 8006C390 21902002 */  addu       $s2, $s1, $zero
    /* 5ABA4 8006C394 DD5A020C */  jal        func_80096B74
    /* 5ABA8 8006C398 1E0402A2 */   sb        $v0, 0x41E($s0)
    /* 5ABAC 8006C39C 04004010 */  beqz       $v0, .L8006C3B0
    /* 5ABB0 8006C3A0 21202002 */   addu      $a0, $s1, $zero
    /* 5ABB4 8006C3A4 DD5A020C */  jal        func_80096B74
    /* 5ABB8 8006C3A8 08000524 */   addiu     $a1, $zero, 0x8
    /* 5ABBC 8006C3AC 160402A2 */  sb         $v0, 0x416($s0)
  .L8006C3B0:
    /* 5ABC0 8006C3B0 21202002 */  addu       $a0, $s1, $zero
    /* 5ABC4 8006C3B4 DD5A020C */  jal        func_80096B74
    /* 5ABC8 8006C3B8 01000524 */   addiu     $a1, $zero, 0x1
    /* 5ABCC 8006C3BC 04004010 */  beqz       $v0, .L8006C3D0
    /* 5ABD0 8006C3C0 21202002 */   addu      $a0, $s1, $zero
    /* 5ABD4 8006C3C4 20040296 */  lhu        $v0, 0x420($s0)
    /* 5ABD8 8006C3C8 F8B00108 */  j          .L8006C3E0
    /* 5ABDC 8006C3CC 140402A6 */   sh        $v0, 0x414($s0)
  .L8006C3D0:
    /* 5ABE0 8006C3D0 DD5A020C */  jal        func_80096B74
    /* 5ABE4 8006C3D4 10000524 */   addiu     $a1, $zero, 0x10
    /* 5ABE8 8006C3D8 140402A6 */  sh         $v0, 0x414($s0)
    /* 5ABEC 8006C3DC 21202002 */  addu       $a0, $s1, $zero
  .L8006C3E0:
    /* 5ABF0 8006C3E0 DD5A020C */  jal        func_80096B74
    /* 5ABF4 8006C3E4 01000524 */   addiu     $a1, $zero, 0x1
    /* 5ABF8 8006C3E8 04004010 */  beqz       $v0, .L8006C3FC
    /* 5ABFC 8006C3EC 21204002 */   addu      $a0, $s2, $zero
    /* 5AC00 8006C3F0 23040292 */  lbu        $v0, 0x423($s0)
    /* 5AC04 8006C3F4 02B10108 */  j          .L8006C408
    /* 5AC08 8006C3F8 170402A2 */   sb        $v0, 0x417($s0)
  .L8006C3FC:
    /* 5AC0C 8006C3FC DD5A020C */  jal        func_80096B74
    /* 5AC10 8006C400 08000524 */   addiu     $a1, $zero, 0x8
    /* 5AC14 8006C404 170402A2 */  sb         $v0, 0x417($s0)
  .L8006C408:
    /* 5AC18 8006C408 21202002 */  addu       $a0, $s1, $zero
    /* 5AC1C 8006C40C DD5A020C */  jal        func_80096B74
    /* 5AC20 8006C410 01000524 */   addiu     $a1, $zero, 0x1
    /* 5AC24 8006C414 08004010 */  beqz       $v0, .L8006C438
    /* 5AC28 8006C418 21204002 */   addu      $a0, $s2, $zero
    /* 5AC2C 8006C41C 24040292 */  lbu        $v0, 0x424($s0)
    /* 5AC30 8006C420 25040392 */  lbu        $v1, 0x425($s0)
    /* 5AC34 8006C424 26040492 */  lbu        $a0, 0x426($s0)
    /* 5AC38 8006C428 180402A2 */  sb         $v0, 0x418($s0)
    /* 5AC3C 8006C42C 190403A2 */  sb         $v1, 0x419($s0)
    /* 5AC40 8006C430 19B10108 */  j          .L8006C464
    /* 5AC44 8006C434 1A0404A2 */   sb        $a0, 0x41A($s0)
  .L8006C438:
    /* 5AC48 8006C438 DD5A020C */  jal        func_80096B74
    /* 5AC4C 8006C43C 08000524 */   addiu     $a1, $zero, 0x8
    /* 5AC50 8006C440 21204002 */  addu       $a0, $s2, $zero
    /* 5AC54 8006C444 08000524 */  addiu      $a1, $zero, 0x8
    /* 5AC58 8006C448 DD5A020C */  jal        func_80096B74
    /* 5AC5C 8006C44C 180402A2 */   sb        $v0, 0x418($s0)
    /* 5AC60 8006C450 21204002 */  addu       $a0, $s2, $zero
    /* 5AC64 8006C454 08000524 */  addiu      $a1, $zero, 0x8
    /* 5AC68 8006C458 DD5A020C */  jal        func_80096B74
    /* 5AC6C 8006C45C 190402A2 */   sb        $v0, 0x419($s0)
    /* 5AC70 8006C460 1A0402A2 */  sb         $v0, 0x41A($s0)
  .L8006C464:
    /* 5AC74 8006C464 1404068E */  lw         $a2, 0x414($s0)
    /* 5AC78 8006C468 1804078E */  lw         $a3, 0x418($s0)
    /* 5AC7C 8006C46C 1C04088E */  lw         $t0, 0x41C($s0)
    /* 5AC80 8006C470 200406AE */  sw         $a2, 0x420($s0)
    /* 5AC84 8006C474 240407AE */  sw         $a3, 0x424($s0)
    /* 5AC88 8006C478 280408AE */  sw         $t0, 0x428($s0)
    /* 5AC8C 8006C47C 2C5A020C */  jal        func_800968B0
    /* 5AC90 8006C480 21202002 */   addu      $a0, $s1, $zero
    /* 5AC94 8006C484 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* 5AC98 8006C488 1800B28F */  lw         $s2, 0x18($sp)
    /* 5AC9C 8006C48C 1400B18F */  lw         $s1, 0x14($sp)
    /* 5ACA0 8006C490 1000B08F */  lw         $s0, 0x10($sp)
    /* 5ACA4 8006C494 0100422C */  sltiu      $v0, $v0, 0x1
    /* 5ACA8 8006C498 0800E003 */  jr         $ra
    /* 5ACAC 8006C49C 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_8006C330
