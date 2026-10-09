nonmatching init_ring_status, 0x40

glabel init_ring_status
    /* 7438 80139F6C 0A00A010 */  beqz       $a1, .L80139F98
    /* 743C 80139F70 21300000 */   addu      $a2, $zero, $zero
  .L80139F74:
    /* 7440 80139F74 2110C400 */  addu       $v0, $a2, $a0
    /* 7444 80139F78 0100C624 */  addiu      $a2, $a2, 0x1
    /* 7448 80139F7C 1C80033C */  lui        $v1, %hi(D_801C64A0)
    /* 744C 80139F80 A064638C */  lw         $v1, %lo(D_801C64A0)($v1)
    /* 7450 80139F84 40110200 */  sll        $v0, $v0, 5
    /* 7454 80139F88 21186200 */  addu       $v1, $v1, $v0
    /* 7458 80139F8C 2B10C500 */  sltu       $v0, $a2, $a1
    /* 745C 80139F90 F8FF4014 */  bnez       $v0, .L80139F74
    /* 7460 80139F94 000060AC */   sw        $zero, 0x0($v1)
  .L80139F98:
    /* 7464 80139F98 0800E003 */  jr         $ra
    /* 7468 80139F9C 00000000 */   nop
    /* 746C 80139FA0 00000000 */  nop
    /* 7470 80139FA4 00000000 */  nop
    /* 7474 80139FA8 00000000 */  nop
endlabel init_ring_status
