/* Handwritten function */
nonmatching func_800A6BD8, 0x17C

glabel func_800A6BD8
    /* 953E8 800A6BD8 0000A8A4 */  sh         $t0, 0x0($a1)
    /* 953EC 800A6BDC 0200A520 */  addi       $a1, $a1, 0x2 /* handwritten instruction */
    /* 953F0 800A6BE0 04102201 */  sllv       $v0, $v0, $t1
    /* 953F4 800A6BE4 22080900 */  neg        $at, $t1 /* handwritten instruction */
    /* 953F8 800A6BE8 06082300 */  srlv       $at, $v1, $at
    /* 953FC 800A6BEC 25104100 */  or         $v0, $v0, $at
    /* 95400 800A6BF0 20504901 */  add        $t2, $t2, $t1 /* handwritten instruction */
    /* 95404 800A6BF4 E0FF4121 */  addi       $at, $t2, -0x20 /* handwritten instruction */
    /* 95408 800A6BF8 EAFF2004 */  bltz       $at, .L800A6BA4
    /* 9540C 800A6BFC 04182301 */   sllv      $v1, $v1, $t1
    /* 95410 800A6C00 E0FF4A21 */  addi       $t2, $t2, -0x20 /* handwritten instruction */
    /* 95414 800A6C04 22080A00 */  neg        $at, $t2 /* handwritten instruction */
    /* 95418 800A6C08 00440600 */  sll        $t0, $a2, 16
    /* 9541C 800A6C0C 02340600 */  srl        $a2, $a2, 16
    /* 95420 800A6C10 2530C800 */  or         $a2, $a2, $t0
    /* 95424 800A6C14 02002014 */  bnez       $at, .L800A6C20
    /* 95428 800A6C18 06082600 */   srlv      $at, $a2, $at
    /* 9542C 800A6C1C 25080000 */  or         $at, $zero, $zero
  .L800A6C20:
    /* 95430 800A6C20 04184601 */  sllv       $v1, $a2, $t2
    /* 95434 800A6C24 0000868C */  lw         $a2, 0x0($a0)
    /* 95438 800A6C28 25104100 */  or         $v0, $v0, $at
    /* 9543C 800A6C2C DDFF0104 */  bgez       $zero, .L800A6BA4
    /* 95440 800A6C30 04008420 */   addi      $a0, $a0, 0x4 /* handwritten instruction */
  .L800A6C34:
    /* 95444 800A6C34 13002104 */  bgez       $at, .L800A6C84
    /* 95448 800A6C38 80080200 */   sll       $at, $v0, 2
    /* 9544C 800A6C3C 06002104 */  bgez       $at, .L800A6C58
    /* 95450 800A6C40 C0080200 */   sll       $at, $v0, 3
    /* 95454 800A6C44 04000934 */  ori        $t1, $zero, 0x4
    /* 95458 800A6C48 E3FF2104 */  bgez       $at, func_800A6BD8
    /* 9545C 800A6C4C 01040834 */   ori       $t0, $zero, 0x401
    /* 95460 800A6C50 E1FF0104 */  bgez       $zero, func_800A6BD8
    /* 95464 800A6C54 FF070834 */   ori       $t0, $zero, 0x7FF
  .L800A6C58:
    /* 95468 800A6C58 05000934 */  ori        $t1, $zero, 0x5
    /* 9546C 800A6C5C 05002004 */  bltz       $at, .L800A6C74
    /* 95470 800A6C60 00090200 */   sll       $at, $v0, 4
    /* 95474 800A6C64 DCFF2104 */  bgez       $at, func_800A6BD8
    /* 95478 800A6C68 02000834 */   ori       $t0, $zero, 0x2
    /* 9547C 800A6C6C DAFF0104 */  bgez       $zero, func_800A6BD8
    /* 95480 800A6C70 FE030834 */   ori       $t0, $zero, 0x3FE
  .L800A6C74:
    /* 95484 800A6C74 D8FF2104 */  bgez       $at, func_800A6BD8
    /* 95488 800A6C78 01080834 */   ori       $t0, $zero, 0x801
    /* 9548C 800A6C7C D6FF0104 */  bgez       $zero, func_800A6BD8
    /* 95490 800A6C80 FF0B0834 */   ori       $t0, $zero, 0xBFF
  .L800A6C84:
    /* 95494 800A6C84 0F002104 */  bgez       $at, .L800A6CC4
    /* 95498 800A6C88 C0080200 */   sll       $at, $v0, 3
    /* 9549C 800A6C8C 820F0100 */  srl        $at, $at, 30
    /* 954A0 800A6C90 06002010 */  beqz       $at, .L800A6CAC
    /* 954A4 800A6C94 420E0200 */   srl       $at, $v0, 25
    /* 954A8 800A6C98 0E002130 */  andi       $at, $at, 0xE
    /* 954AC 800A6C9C 20082700 */  add        $at, $at, $a3 /* handwritten instruction */
    /* 954B0 800A6CA0 9C012884 */  lh         $t0, 0x19C($at)
    /* 954B4 800A6CA4 CCFF0104 */  bgez       $zero, func_800A6BD8
    /* 954B8 800A6CA8 06000934 */   ori       $t1, $zero, 0x6
  .L800A6CAC:
    /* 954BC 800A6CAC 820D0200 */  srl        $at, $v0, 22
    /* 954C0 800A6CB0 1E002130 */  andi       $at, $at, 0x1E
    /* 954C4 800A6CB4 20082700 */  add        $at, $at, $a3 /* handwritten instruction */
    /* 954C8 800A6CB8 80012884 */  lh         $t0, 0x180($at)
    /* 954CC 800A6CBC C6FF0104 */  bgez       $zero, func_800A6BD8
    /* 954D0 800A6CC0 09000934 */   ori       $t1, $zero, 0x9
  .L800A6CC4:
    /* 954D4 800A6CC4 00F08248 */  mtc2       $v0, $30 /* handwritten instruction */
    /* 954D8 800A6CC8 820E0200 */  srl        $at, $v0, 26
    /* 954DC 800A6CCC FFFF2120 */  addi       $at, $at, -0x1 /* handwritten instruction */
    /* 954E0 800A6CD0 1C002010 */  beqz       $at, .L800A6D44
    /* 954E4 800A6CD4 00F80948 */   mfc2      $t1, $31 /* handwritten instruction */
    /* 954E8 800A6CD8 0A002004 */  bltz       $at, .L800A6D04
    /* 954EC 800A6CDC 04082201 */   sllv      $at, $v0, $t1
    /* 954F0 800A6CE0 C20E0100 */  srl        $at, $at, 27
    /* 954F4 800A6CE4 0E002130 */  andi       $at, $at, 0xE
    /* 954F8 800A6CE8 FDFF2821 */  addi       $t0, $t1, -0x3 /* handwritten instruction */
    /* 954FC 800A6CEC 00410800 */  sll        $t0, $t0, 4
    /* 95500 800A6CF0 20082800 */  add        $at, $at, $t0 /* handwritten instruction */
    /* 95504 800A6CF4 20082700 */  add        $at, $at, $a3 /* handwritten instruction */
    /* 95508 800A6CF8 00002884 */  lh         $t0, 0x0($at)
    /* 9550C 800A6CFC B6FF0104 */  bgez       $zero, func_800A6BD8
    /* 95510 800A6D00 04002921 */   addi      $t1, $t1, 0x4 /* handwritten instruction */
  .L800A6D04:
    /* 95514 800A6D04 FAFF2821 */  addi       $t0, $t1, -0x6 /* handwritten instruction */
    /* 95518 800A6D08 08000019 */  blez       $t0, .L800A6D2C
    /* 9551C 800A6D0C 80410800 */   sll       $t0, $t0, 6
    /* 95520 800A6D10 420E0100 */  srl        $at, $at, 25
    /* 95524 800A6D14 3E002130 */  andi       $at, $at, 0x3E
    /* 95528 800A6D18 20082800 */  add        $at, $at, $t0 /* handwritten instruction */
    /* 9552C 800A6D1C 20082700 */  add        $at, $at, $a3 /* handwritten instruction */
    /* 95530 800A6D20 00002884 */  lh         $t0, 0x0($at)
    /* 95534 800A6D24 ACFF0104 */  bgez       $zero, func_800A6BD8
    /* 95538 800A6D28 06002921 */   addi      $t1, $t1, 0x6 /* handwritten instruction */
  .L800A6D2C:
    /* 9553C 800A6D2C 820E0100 */  srl        $at, $at, 26
    /* 95540 800A6D30 1E002130 */  andi       $at, $at, 0x1E
    /* 95544 800A6D34 20082700 */  add        $at, $at, $a3 /* handwritten instruction */
    /* 95548 800A6D38 20002884 */  lh         $t0, 0x20($at)
    /* 9554C 800A6D3C A6FF0104 */  bgez       $zero, func_800A6BD8
    /* 95550 800A6D40 0B000920 */   addi      $t1, $zero, 0xB /* handwritten instruction */
  .L800A6D44:
    /* 95554 800A6D44 82420200 */  srl        $t0, $v0, 10
    /* 95558 800A6D48 FFFF0831 */  andi       $t0, $t0, 0xFFFF
    /* 9555C 800A6D4C A2FF0104 */  bgez       $zero, func_800A6BD8
    /* 95560 800A6D50 16000920 */   addi      $t1, $zero, 0x16 /* handwritten instruction */
endlabel func_800A6BD8
