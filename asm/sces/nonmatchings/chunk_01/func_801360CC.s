nonmatching func_801360CC, 0x64

glabel func_801360CC
    /* 3598 801360CC 68FFBD27 */  addiu      $sp, $sp, -0x98
    /* 359C 801360D0 9000B0AF */  sw         $s0, 0x90($sp)
    /* 35A0 801360D4 1A80103C */  lui        $s0, %hi(D_8019D990)
    /* 35A4 801360D8 90D90586 */  lh         $a1, %lo(D_8019D990)($s0)
    /* 35A8 801360DC FFFF0224 */  addiu      $v0, $zero, -0x1
    /* 35AC 801360E0 0F00A210 */  beq        $a1, $v0, .L80136120
    /* 35B0 801360E4 9400BFAF */   sw        $ra, 0x94($sp)
    /* 35B4 801360E8 1A80043C */  lui        $a0, %hi(D_8019E8AC)
    /* 35B8 801360EC 4E28050C */  jal        func_8014A138
    /* 35BC 801360F0 ACE88424 */   addiu     $a0, $a0, %lo(D_8019E8AC)
    /* 35C0 801360F4 90D90386 */  lh         $v1, %lo(D_8019D990)($s0)
    /* 35C4 801360F8 00000000 */  nop
    /* 35C8 801360FC 05004310 */  beq        $v0, $v1, .L80136114
    /* 35CC 80136100 1580043C */   lui       $a0, %hi(D_8014C3C0)
    /* 35D0 80136104 082C050C */  jal        func_8014B020
    /* 35D4 80136108 C0C38424 */   addiu     $a0, $a0, %lo(D_8014C3C0)
    /* 35D8 8013610C 48D80408 */  j          .L80136120
    /* 35DC 80136110 FFFF0224 */   addiu     $v0, $zero, -0x1
  .L80136114:
    /* 35E0 80136114 BA28050C */  jal        func_8014A2E8
    /* 35E4 80136118 01000424 */   addiu     $a0, $zero, 0x1
    /* 35E8 8013611C 21100000 */  addu       $v0, $zero, $zero
  .L80136120:
    /* 35EC 80136120 9400BF8F */  lw         $ra, 0x94($sp)
    /* 35F0 80136124 9000B08F */  lw         $s0, 0x90($sp)
    /* 35F4 80136128 0800E003 */  jr         $ra
    /* 35F8 8013612C 9800BD27 */   addiu     $sp, $sp, 0x98
endlabel func_801360CC
