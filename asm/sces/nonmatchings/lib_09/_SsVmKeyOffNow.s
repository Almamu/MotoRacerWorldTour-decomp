nonmatching _SsVmKeyOffNow, 0xC0

glabel _SsVmKeyOffNow
    /* 15DA4 801488D8 1D80043C */  lui        $a0, %hi(D_801CFBC8)
    /* 15DA8 801488DC C8FB8494 */  lhu        $a0, %lo(D_801CFBC8)($a0)
    /* 15DAC 801488E0 00000000 */  nop
    /* 15DB0 801488E4 FFFF8330 */  andi       $v1, $a0, 0xFFFF
    /* 15DB4 801488E8 1000622C */  sltiu      $v0, $v1, 0x10
    /* 15DB8 801488EC 04004010 */  beqz       $v0, .L80148900
    /* 15DBC 801488F0 01000224 */   addiu     $v0, $zero, 0x1
    /* 15DC0 801488F4 04306200 */  sllv       $a2, $v0, $v1
    /* 15DC4 801488F8 43220508 */  j          .L8014890C
    /* 15DC8 801488FC 21280000 */   addu      $a1, $zero, $zero
  .L80148900:
    /* 15DCC 80148900 21300000 */  addu       $a2, $zero, $zero
    /* 15DD0 80148904 F0FF6324 */  addiu      $v1, $v1, -0x10
    /* 15DD4 80148908 04286200 */  sllv       $a1, $v0, $v1
  .L8014890C:
    /* 15DD8 8014890C C0100400 */  sll        $v0, $a0, 3
    /* 15DDC 80148910 23104400 */  subu       $v0, $v0, $a0
    /* 15DE0 80148914 C0100200 */  sll        $v0, $v0, 3
    /* 15DE4 80148918 1D80013C */  lui        $at, %hi(D_801CF39D)
    /* 15DE8 8014891C 21082200 */  addu       $at, $at, $v0
    /* 15DEC 80148920 9DF320A0 */  sb         $zero, %lo(D_801CF39D)($at)
    /* 15DF0 80148924 1D80033C */  lui        $v1, %hi(D_801CFAA8)
    /* 15DF4 80148928 A8FA6394 */  lhu        $v1, %lo(D_801CFAA8)($v1)
    /* 15DF8 8014892C 1D80043C */  lui        $a0, %hi(D_801CFAAA)
    /* 15DFC 80148930 AAFA8494 */  lhu        $a0, %lo(D_801CFAAA)($a0)
    /* 15E00 80148934 1D80013C */  lui        $at, %hi(D_801CF384)
    /* 15E04 80148938 21082200 */  addu       $at, $at, $v0
    /* 15E08 8014893C 84F320A4 */  sh         $zero, %lo(D_801CF384)($at)
    /* 15E0C 80148940 1D80013C */  lui        $at, %hi(D_801CF380)
    /* 15E10 80148944 21082200 */  addu       $at, $at, $v0
    /* 15E14 80148948 80F320A4 */  sh         $zero, %lo(D_801CF380)($at)
    /* 15E18 8014894C 1D80023C */  lui        $v0, %hi(D_801CF370)
    /* 15E1C 80148950 70F34294 */  lhu        $v0, %lo(D_801CF370)($v0)
    /* 15E20 80148954 25186600 */  or         $v1, $v1, $a2
    /* 15E24 80148958 1D80013C */  lui        $at, %hi(D_801CFAA8)
    /* 15E28 8014895C A8FA23A4 */  sh         $v1, %lo(D_801CFAA8)($at)
    /* 15E2C 80148960 27180300 */  nor        $v1, $zero, $v1
    /* 15E30 80148964 24104300 */  and        $v0, $v0, $v1
    /* 15E34 80148968 1D80013C */  lui        $at, %hi(D_801CF370)
    /* 15E38 8014896C 70F322A4 */  sh         $v0, %lo(D_801CF370)($at)
    /* 15E3C 80148970 1D80023C */  lui        $v0, %hi(D_801CF372)
    /* 15E40 80148974 72F34294 */  lhu        $v0, %lo(D_801CF372)($v0)
    /* 15E44 80148978 25208500 */  or         $a0, $a0, $a1
    /* 15E48 8014897C 1D80013C */  lui        $at, %hi(D_801CFAAA)
    /* 15E4C 80148980 AAFA24A4 */  sh         $a0, %lo(D_801CFAAA)($at)
    /* 15E50 80148984 27200400 */  nor        $a0, $zero, $a0
    /* 15E54 80148988 24104400 */  and        $v0, $v0, $a0
    /* 15E58 8014898C 1D80013C */  lui        $at, %hi(D_801CF372)
    /* 15E5C 80148990 0800E003 */  jr         $ra
    /* 15E60 80148994 72F322A4 */   sh        $v0, %lo(D_801CF372)($at)
endlabel _SsVmKeyOffNow
