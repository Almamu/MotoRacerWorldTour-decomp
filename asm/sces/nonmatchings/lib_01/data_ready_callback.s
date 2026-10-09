nonmatching data_ready_callback, 0x8C

glabel data_ready_callback
    /* 726C 80139DA0 1C80023C */  lui        $v0, %hi(D_801C6488)
    /* 7270 80139DA4 8864428C */  lw         $v0, %lo(D_801C6488)($v0)
    /* 7274 80139DA8 1C80033C */  lui        $v1, %hi(D_801C64A0)
    /* 7278 80139DAC A064638C */  lw         $v1, %lo(D_801C64A0)($v1)
    /* 727C 80139DB0 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 7280 80139DB4 1000BFAF */  sw         $ra, 0x10($sp)
    /* 7284 80139DB8 40110200 */  sll        $v0, $v0, 5
    /* 7288 80139DBC 21186200 */  addu       $v1, $v1, $v0
    /* 728C 80139DC0 02000224 */  addiu      $v0, $zero, 0x2
    /* 7290 80139DC4 000062A4 */  sh         $v0, 0x0($v1)
    /* 7294 80139DC8 1D80063C */  lui        $a2, %hi(D_801C88E0)
    /* 7298 80139DCC E088C624 */  addiu      $a2, $a2, %lo(D_801C88E0)
    /* 729C 80139DD0 1F006288 */  lwl        $v0, 0x1F($v1)
    /* 72A0 80139DD4 1C006298 */  lwr        $v0, 0x1C($v1)
    /* 72A4 80139DD8 00000000 */  nop
    /* 72A8 80139DDC 0300C2A8 */  swl        $v0, 0x3($a2)
    /* 72AC 80139DE0 0000C2B8 */  swr        $v0, 0x0($a2)
    /* 72B0 80139DE4 0800628C */  lw         $v0, 0x8($v1)
    /* 72B4 80139DE8 1C80033C */  lui        $v1, %hi(D_801C6484)
    /* 72B8 80139DEC 8464638C */  lw         $v1, %lo(D_801C6484)($v1)
    /* 72BC 80139DF0 1D80043C */  lui        $a0, %hi(D_801C88F0)
    /* 72C0 80139DF4 F088848C */  lw         $a0, %lo(D_801C88F0)($a0)
    /* 72C4 80139DF8 1D80013C */  lui        $at, %hi(D_801C88E4)
    /* 72C8 80139DFC E48822AC */  sw         $v0, %lo(D_801C88E4)($at)
    /* 72CC 80139E00 1C80013C */  lui        $at, %hi(D_801C6488)
    /* 72D0 80139E04 03008010 */  beqz       $a0, .L80139E14
    /* 72D4 80139E08 886423AC */   sw        $v1, %lo(D_801C6488)($at)
    /* 72D8 80139E0C 09F88000 */  jalr       $a0
    /* 72DC 80139E10 00000000 */   nop
  .L80139E14:
    /* 72E0 80139E14 1C80013C */  lui        $at, %hi(D_801C647C)
    /* 72E4 80139E18 7C6420AC */  sw         $zero, %lo(D_801C647C)($at)
    /* 72E8 80139E1C 1000BF8F */  lw         $ra, 0x10($sp)
    /* 72EC 80139E20 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 72F0 80139E24 0800E003 */  jr         $ra
    /* 72F4 80139E28 00000000 */   nop
endlabel data_ready_callback
