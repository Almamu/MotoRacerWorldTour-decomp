nonmatching func_800AADFC, 0xD8

glabel func_800AADFC
    /* 9960C 800AADFC E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 99610 800AAE00 1000B0AF */  sw         $s0, 0x10($sp)
    /* 99614 800AAE04 0C80103C */  lui        $s0, %hi(D_800BD548)
    /* 99618 800AAE08 48D51026 */  addiu      $s0, $s0, %lo(D_800BD548)
    /* 9961C 800AAE0C 1400BFAF */  sw         $ra, 0x14($sp)
    /* 99620 800AAE10 00000296 */  lhu        $v0, 0x0($s0)
    /* 99624 800AAE14 00000000 */  nop
    /* 99628 800AAE18 2A004014 */  bnez       $v0, .L800AAEC4
    /* 9962C 800AAE1C 21100000 */   addu      $v0, $zero, $zero
    /* 99630 800AAE20 0C80033C */  lui        $v1, %hi(D_800BE5D4)
    /* 99634 800AAE24 D4E5638C */  lw         $v1, %lo(D_800BE5D4)($v1)
    /* 99638 800AAE28 0C80023C */  lui        $v0, %hi(D_800BE5D8)
    /* 9963C 800AAE2C D8E5428C */  lw         $v0, %lo(D_800BE5D8)($v0)
    /* 99640 800AAE30 3333053C */  lui        $a1, (0x33333333 >> 16)
    /* 99644 800AAE34 000040A4 */  sh         $zero, 0x0($v0)
    /* 99648 800AAE38 00004294 */  lhu        $v0, 0x0($v0)
    /* 9964C 800AAE3C 3333A534 */  ori        $a1, $a1, (0x33333333 & 0xFFFF)
    /* 99650 800AAE40 000062A4 */  sh         $v0, 0x0($v1)
    /* 99654 800AAE44 0C80023C */  lui        $v0, %hi(D_800BE5DC)
    /* 99658 800AAE48 DCE5428C */  lw         $v0, %lo(D_800BE5DC)($v0)
    /* 9965C 800AAE4C 21200002 */  addu       $a0, $s0, $zero
    /* 99660 800AAE50 000045AC */  sw         $a1, 0x0($v0)
    /* 99664 800AAE54 C1AC020C */  jal        func_800AB304
    /* 99668 800AAE58 1A040524 */   addiu     $a1, $zero, 0x41A
    /* 9966C 800AAE5C 4CDC020C */  jal        func_800B7130
    /* 99670 800AAE60 38000426 */   addiu     $a0, $s0, 0x38
    /* 99674 800AAE64 03004010 */  beqz       $v0, .L800AAE74
    /* 99678 800AAE68 00000000 */   nop
    /* 9967C 800AAE6C B5AB020C */  jal        func_800AAED4
    /* 99680 800AAE70 00000000 */   nop
  .L800AAE74:
    /* 99684 800AAE74 0C80103C */  lui        $s0, %hi(D_800BD584)
    /* 99688 800AAE78 84D51026 */  addiu      $s0, $s0, %lo(D_800BD584)
    /* 9968C 800AAE7C FCFF0426 */  addiu      $a0, $s0, -0x4
    /* 99690 800AAE80 DC0F0226 */  addiu      $v0, $s0, 0xFDC
    /* 99694 800AAE84 DCD6020C */  jal        HookEntryInt
    /* 99698 800AAE88 000002AE */   sw        $v0, 0x0($s0)
    /* 9969C 800AAE8C 01000224 */  addiu      $v0, $zero, 0x1
    /* 996A0 800AAE90 CAAC020C */  jal        startIntrVSync
    /* 996A4 800AAE94 C4FF02A6 */   sh        $v0, -0x3C($s0)
    /* 996A8 800AAE98 0C80033C */  lui        $v1, %hi(D_800BE5D0)
    /* 996AC 800AAE9C D0E5638C */  lw         $v1, %lo(D_800BE5D0)($v1)
    /* 996B0 800AAEA0 12AD020C */  jal        startIntrDMA
    /* 996B4 800AAEA4 140062AC */   sw        $v0, 0x14($v1)
    /* 996B8 800AAEA8 0C80043C */  lui        $a0, %hi(D_800BE5D0)
    /* 996BC 800AAEAC D0E5848C */  lw         $a0, %lo(D_800BE5D0)($a0)
    /* 996C0 800AAEB0 B2D6020C */  jal        _96_remove
    /* 996C4 800AAEB4 040082AC */   sw        $v0, 0x4($a0)
    /* 996C8 800AAEB8 E4D6020C */  jal        ExitCriticalSection
    /* 996CC 800AAEBC C4FF1026 */   addiu     $s0, $s0, -0x3C
    /* 996D0 800AAEC0 21100002 */  addu       $v0, $s0, $zero
  .L800AAEC4:
    /* 996D4 800AAEC4 1400BF8F */  lw         $ra, 0x14($sp)
    /* 996D8 800AAEC8 1000B08F */  lw         $s0, 0x10($sp)
    /* 996DC 800AAECC 0800E003 */  jr         $ra
    /* 996E0 800AAED0 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_800AADFC
