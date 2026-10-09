nonmatching _spu_FiDMA, 0xBC

glabel _spu_FiDMA
    /* A1C6C 800B345C 0C80023C */  lui        $v0, %hi(D_800C3E00)
    /* A1C70 800B3460 003E428C */  lw         $v0, %lo(D_800C3E00)($v0)
    /* A1C74 800B3464 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* A1C78 800B3468 03004014 */  bnez       $v0, .L800B3478
    /* A1C7C 800B346C 1000BFAF */   sw        $ra, 0x10($sp)
    /* A1C80 800B3470 6BCE020C */  jal        _spu_Fw1ts
    /* A1C84 800B3474 00000000 */   nop
  .L800B3478:
    /* A1C88 800B3478 0C80043C */  lui        $a0, %hi(_spu_RXX)
    /* A1C8C 800B347C B03D848C */  lw         $a0, %lo(_spu_RXX)($a0)
    /* A1C90 800B3480 00000000 */  nop
    /* A1C94 800B3484 AA018294 */  lhu        $v0, 0x1AA($a0)
    /* A1C98 800B3488 00000000 */  nop
    /* A1C9C 800B348C CFFF4230 */  andi       $v0, $v0, 0xFFCF
    /* A1CA0 800B3490 AA0182A4 */  sh         $v0, 0x1AA($a0)
    /* A1CA4 800B3494 AA018294 */  lhu        $v0, 0x1AA($a0)
    /* A1CA8 800B3498 00000000 */  nop
    /* A1CAC 800B349C 30004230 */  andi       $v0, $v0, 0x30
    /* A1CB0 800B34A0 0A004010 */  beqz       $v0, .L800B34CC
    /* A1CB4 800B34A4 21180000 */   addu      $v1, $zero, $zero
    /* A1CB8 800B34A8 01006324 */  addiu      $v1, $v1, 0x1
  .L800B34AC:
    /* A1CBC 800B34AC 010F622C */  sltiu      $v0, $v1, 0xF01
    /* A1CC0 800B34B0 06004010 */  beqz       $v0, .L800B34CC
    /* A1CC4 800B34B4 00000000 */   nop
    /* A1CC8 800B34B8 AA018294 */  lhu        $v0, 0x1AA($a0)
    /* A1CCC 800B34BC 00000000 */  nop
    /* A1CD0 800B34C0 30004230 */  andi       $v0, $v0, 0x30
    /* A1CD4 800B34C4 F9FF4014 */  bnez       $v0, .L800B34AC
    /* A1CD8 800B34C8 01006324 */   addiu     $v1, $v1, 0x1
  .L800B34CC:
    /* A1CDC 800B34CC 0C80023C */  lui        $v0, %hi(_spu_transferCallback)
    /* A1CE0 800B34D0 E83D428C */  lw         $v0, %lo(_spu_transferCallback)($v0)
    /* A1CE4 800B34D4 00000000 */  nop
    /* A1CE8 800B34D8 08004010 */  beqz       $v0, .L800B34FC
    /* A1CEC 800B34DC 00F0043C */   lui       $a0, (0xF0000009 >> 16)
    /* A1CF0 800B34E0 0C80023C */  lui        $v0, %hi(_spu_transferCallback)
    /* A1CF4 800B34E4 E83D428C */  lw         $v0, %lo(_spu_transferCallback)($v0)
    /* A1CF8 800B34E8 00000000 */  nop
    /* A1CFC 800B34EC 09F84000 */  jalr       $v0
    /* A1D00 800B34F0 00000000 */   nop
    /* A1D04 800B34F4 42CD0208 */  j          .L800B3508
    /* A1D08 800B34F8 00000000 */   nop
  .L800B34FC:
    /* A1D0C 800B34FC 09008434 */  ori        $a0, $a0, (0xF0000009 & 0xFFFF)
    /* A1D10 800B3500 B8D6020C */  jal        DeliverEvent
    /* A1D14 800B3504 20000524 */   addiu     $a1, $zero, 0x20
  .L800B3508:
    /* A1D18 800B3508 1000BF8F */  lw         $ra, 0x10($sp)
    /* A1D1C 800B350C 1800BD27 */  addiu      $sp, $sp, 0x18
    /* A1D20 800B3510 0800E003 */  jr         $ra
    /* A1D24 800B3514 00000000 */   nop
endlabel _spu_FiDMA
