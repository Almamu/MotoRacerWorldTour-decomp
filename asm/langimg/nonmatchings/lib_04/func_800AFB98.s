nonmatching func_800AFB98, 0x74

glabel func_800AFB98
    /* 9E3A8 800AFB98 0C80023C */  lui        $v0, %hi(D_800C3BB0)
    /* 9E3AC 800AFB9C B03B438C */  lw         $v1, %lo(D_800C3BB0)($v0)
    /* 9E3B0 800AFBA0 00000000 */  nop
    /* 9E3B4 800AFBA4 03006010 */  beqz       $v1, .L800AFBB4
    /* 9E3B8 800AFBA8 03008228 */   slti      $v0, $a0, 0x3
    /* 9E3BC 800AFBAC 03004014 */  bnez       $v0, .L800AFBBC
    /* 9E3C0 800AFBB0 0E80023C */   lui       $v0, %hi(D_800DE360)
  .L800AFBB4:
    /* 9E3C4 800AFBB4 0800E003 */  jr         $ra
    /* 9E3C8 800AFBB8 21100000 */   addu      $v0, $zero, $zero
  .L800AFBBC:
    /* 9E3CC 800AFBBC 21288000 */  addu       $a1, $a0, $zero
    /* 9E3D0 800AFBC0 0200A328 */  slti       $v1, $a1, 0x2
    /* 9E3D4 800AFBC4 0F006010 */  beqz       $v1, .L800AFC04
    /* 9E3D8 800AFBC8 60E344AC */   sw        $a0, %lo(D_800DE360)($v0)
    /* 9E3DC 800AFBCC 0C80023C */  lui        $v0, %hi(D_800C3C6C)
    /* 9E3E0 800AFBD0 6C3C4224 */  addiu      $v0, $v0, %lo(D_800C3C6C)
    /* 9E3E4 800AFBD4 40200500 */  sll        $a0, $a1, 1
    /* 9E3E8 800AFBD8 21308200 */  addu       $a2, $a0, $v0
    /* 9E3EC 800AFBDC 0C80033C */  lui        $v1, %hi(D_800C3C68)
    /* 9E3F0 800AFBE0 683C6324 */  addiu      $v1, $v1, %lo(D_800C3C68)
    /* 9E3F4 800AFBE4 21208300 */  addu       $a0, $a0, $v1
  .L800AFBE8:
    /* 9E3F8 800AFBE8 0000C0A4 */  sh         $zero, 0x0($a2)
    /* 9E3FC 800AFBEC 0200C624 */  addiu      $a2, $a2, 0x2
    /* 9E400 800AFBF0 000080A4 */  sh         $zero, 0x0($a0)
    /* 9E404 800AFBF4 0100A524 */  addiu      $a1, $a1, 0x1
    /* 9E408 800AFBF8 0200A228 */  slti       $v0, $a1, 0x2
    /* 9E40C 800AFBFC FAFF4014 */  bnez       $v0, .L800AFBE8
    /* 9E410 800AFC00 02008424 */   addiu     $a0, $a0, 0x2
  .L800AFC04:
    /* 9E414 800AFC04 0800E003 */  jr         $ra
    /* 9E418 800AFC08 01000224 */   addiu     $v0, $zero, 0x1
endlabel func_800AFB98
