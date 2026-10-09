nonmatching _SsVmSeqKeyOff, 0xB0

glabel _SsVmSeqKeyOff
    /* 16904 80149438 1D80023C */  lui        $v0, %hi(_SsVmMaxVoice)
    /* 16908 8014943C A4FB4280 */  lb         $v0, %lo(_SsVmMaxVoice)($v0)
    /* 1690C 80149440 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 16910 80149444 1000B0AF */  sw         $s0, 0x10($sp)
    /* 16914 80149448 21800000 */  addu       $s0, $zero, $zero
    /* 16918 8014944C 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* 1691C 80149450 1800B2AF */  sw         $s2, 0x18($sp)
    /* 16920 80149454 1E004018 */  blez       $v0, .L801494D0
    /* 16924 80149458 1400B1AF */   sw        $s1, 0x14($sp)
    /* 16928 8014945C 01001224 */  addiu      $s2, $zero, 0x1
    /* 1692C 80149460 00140400 */  sll        $v0, $a0, 16
    /* 16930 80149464 038C0200 */  sra        $s1, $v0, 16
    /* 16934 80149468 FF000432 */  andi       $a0, $s0, 0xFF
  .L8014946C:
    /* 16938 8014946C 1C80023C */  lui        $v0, %hi(_snd_vmask)
    /* 1693C 80149470 3404428C */  lw         $v0, %lo(_snd_vmask)($v0)
    /* 16940 80149474 04189200 */  sllv       $v1, $s2, $a0
    /* 16944 80149478 24104300 */  and        $v0, $v0, $v1
    /* 16948 8014947C 0D004014 */  bnez       $v0, .L801494B4
    /* 1694C 80149480 C0100400 */   sll       $v0, $a0, 3
    /* 16950 80149484 23104400 */  subu       $v0, $v0, $a0
    /* 16954 80149488 C0100200 */  sll        $v0, $v0, 3
    /* 16958 8014948C 1D80013C */  lui        $at, %hi(D_801CF390)
    /* 1695C 80149490 21082200 */  addu       $at, $at, $v0
    /* 16960 80149494 90F32284 */  lh         $v0, %lo(D_801CF390)($at)
    /* 16964 80149498 00000000 */  nop
    /* 16968 8014949C 05005114 */  bne        $v0, $s1, .L801494B4
    /* 1696C 801494A0 FF000232 */   andi      $v0, $s0, 0xFF
    /* 16970 801494A4 1D80013C */  lui        $at, %hi(D_801CFBC8)
    /* 16974 801494A8 C8FB22A4 */  sh         $v0, %lo(D_801CFBC8)($at)
    /* 16978 801494AC 3622050C */  jal        _SsVmKeyOffNow
    /* 1697C 801494B0 21200000 */   addu      $a0, $zero, $zero
  .L801494B4:
    /* 16980 801494B4 01001026 */  addiu      $s0, $s0, 0x1
    /* 16984 801494B8 1D80033C */  lui        $v1, %hi(_SsVmMaxVoice)
    /* 16988 801494BC A4FB6380 */  lb         $v1, %lo(_SsVmMaxVoice)($v1)
    /* 1698C 801494C0 FF000232 */  andi       $v0, $s0, 0xFF
    /* 16990 801494C4 2A104300 */  slt        $v0, $v0, $v1
    /* 16994 801494C8 E8FF4014 */  bnez       $v0, .L8014946C
    /* 16998 801494CC FF000432 */   andi      $a0, $s0, 0xFF
  .L801494D0:
    /* 1699C 801494D0 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* 169A0 801494D4 1800B28F */  lw         $s2, 0x18($sp)
    /* 169A4 801494D8 1400B18F */  lw         $s1, 0x14($sp)
    /* 169A8 801494DC 1000B08F */  lw         $s0, 0x10($sp)
    /* 169AC 801494E0 0800E003 */  jr         $ra
    /* 169B0 801494E4 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel _SsVmSeqKeyOff
