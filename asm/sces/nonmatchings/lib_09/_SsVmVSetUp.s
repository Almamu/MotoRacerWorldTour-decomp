nonmatching _SsVmVSetUp, 0xC0

glabel _SsVmVSetUp
    /* 169B4 801494E8 21388000 */  addu       $a3, $a0, $zero
    /* 169B8 801494EC FFFFE230 */  andi       $v0, $a3, 0xFFFF
    /* 169BC 801494F0 1000422C */  sltiu      $v0, $v0, 0x10
    /* 169C0 801494F4 10004010 */  beqz       $v0, .L80149538
    /* 169C4 801494F8 2140A000 */   addu      $t0, $a1, $zero
    /* 169C8 801494FC 00140400 */  sll        $v0, $a0, 16
    /* 169CC 80149500 03240200 */  sra        $a0, $v0, 16
    /* 169D0 80149504 1D80033C */  lui        $v1, %hi(_svm_vab_used)
    /* 169D4 80149508 21186400 */  addu       $v1, $v1, $a0
    /* 169D8 8014950C D0FB6390 */  lbu        $v1, %lo(_svm_vab_used)($v1)
    /* 169DC 80149510 01000224 */  addiu      $v0, $zero, 0x1
    /* 169E0 80149514 22006214 */  bne        $v1, $v0, .L801495A0
    /* 169E4 80149518 FFFF0224 */   addiu     $v0, $zero, -0x1
    /* 169E8 8014951C 001C0500 */  sll        $v1, $a1, 16
    /* 169EC 80149520 1D80023C */  lui        $v0, %hi(kMaxPrograms)
    /* 169F0 80149524 92FB4284 */  lh         $v0, %lo(kMaxPrograms)($v0)
    /* 169F4 80149528 03340300 */  sra        $a2, $v1, 16
    /* 169F8 8014952C 2A10C200 */  slt        $v0, $a2, $v0
    /* 169FC 80149530 03004014 */  bnez       $v0, .L80149540
    /* 16A00 80149534 80100400 */   sll       $v0, $a0, 2
  .L80149538:
    /* 16A04 80149538 68250508 */  j          .L801495A0
    /* 16A08 8014953C FFFF0224 */   addiu     $v0, $zero, -0x1
  .L80149540:
    /* 16A0C 80149540 1D80033C */  lui        $v1, %hi(_svm_vab_vh)
    /* 16A10 80149544 21186200 */  addu       $v1, $v1, $v0
    /* 16A14 80149548 08FB638C */  lw         $v1, %lo(_svm_vab_vh)($v1)
    /* 16A18 8014954C 1D80053C */  lui        $a1, %hi(_svm_vab_pg)
    /* 16A1C 80149550 2128A200 */  addu       $a1, $a1, $v0
    /* 16A20 80149554 C8FAA58C */  lw         $a1, %lo(_svm_vab_pg)($a1)
    /* 16A24 80149558 1D80013C */  lui        $at, %hi(_svm_vab_tn)
    /* 16A28 8014955C 21082200 */  addu       $at, $at, $v0
    /* 16A2C 80149560 50FB228C */  lw         $v0, %lo(_svm_vab_tn)($at)
    /* 16A30 80149564 1D80043C */  lui        $a0, %hi(D_801CFBB1)
    /* 16A34 80149568 B1FB8424 */  addiu      $a0, $a0, %lo(D_801CFBB1)
    /* 16A38 8014956C 000087A0 */  sb         $a3, 0x0($a0)
    /* 16A3C 80149570 050088A0 */  sb         $t0, 0x5($a0)
    /* 16A40 80149574 1D80013C */  lui        $at, %hi(_svm_tn)
    /* 16A44 80149578 A0FB22AC */  sw         $v0, %lo(_svm_tn)($at)
    /* 16A48 8014957C 00110600 */  sll        $v0, $a2, 4
    /* 16A4C 80149580 21104500 */  addu       $v0, $v0, $a1
    /* 16A50 80149584 1D80013C */  lui        $at, %hi(_svm_vh)
    /* 16A54 80149588 9CFB23AC */  sw         $v1, %lo(_svm_vh)($at)
    /* 16A58 8014958C 1D80013C */  lui        $at, %hi(_svm_pg)
    /* 16A5C 80149590 94FB25AC */  sw         $a1, %lo(_svm_pg)($at)
    /* 16A60 80149594 08004390 */  lbu        $v1, 0x8($v0)
    /* 16A64 80149598 21100000 */  addu       $v0, $zero, $zero
    /* 16A68 8014959C 060083A0 */  sb         $v1, 0x6($a0)
  .L801495A0:
    /* 16A6C 801495A0 0800E003 */  jr         $ra
    /* 16A70 801495A4 00000000 */   nop
endlabel _SsVmVSetUp
