nonmatching func_80049B9C, 0x78

glabel func_80049B9C
    /* 383AC 80049B9C E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 383B0 80049BA0 0C80023C */  lui        $v0, %hi(D_800C5F2C)
    /* 383B4 80049BA4 2C5F4524 */  addiu      $a1, $v0, %lo(D_800C5F2C)
    /* 383B8 80049BA8 80200400 */  sll        $a0, $a0, 2
    /* 383BC 80049BAC 0D80033C */  lui        $v1, %hi(D_800C9E94)
    /* 383C0 80049BB0 949E6324 */  addiu      $v1, $v1, %lo(D_800C9E94)
    /* 383C4 80049BB4 21188300 */  addu       $v1, $a0, $v1
    /* 383C8 80049BB8 0C80073C */  lui        $a3, %hi(D_800C5E2C)
    /* 383CC 80049BBC 2C5EE78C */  lw         $a3, %lo(D_800C5E2C)($a3)
    /* 383D0 80049BC0 01000224 */  addiu      $v0, $zero, 0x1
    /* 383D4 80049BC4 0400C214 */  bne        $a2, $v0, .L80049BD8
    /* 383D8 80049BC8 1800BFAF */   sw        $ra, 0x18($sp)
    /* 383DC 80049BCC 0C80023C */  lui        $v0, %hi(D_800C5F48)
    /* 383E0 80049BD0 F8260108 */  j          .L80049BE0
    /* 383E4 80049BD4 485F4224 */   addiu     $v0, $v0, %lo(D_800C5F48)
  .L80049BD8:
    /* 383E8 80049BD8 0C80023C */  lui        $v0, %hi(D_800C5F4C)
    /* 383EC 80049BDC 4C5F4224 */  addiu      $v0, $v0, %lo(D_800C5F4C)
  .L80049BE0:
    /* 383F0 80049BE0 1000A2AF */  sw         $v0, 0x10($sp)
    /* 383F4 80049BE4 73000224 */  addiu      $v0, $zero, 0x73
    /* 383F8 80049BE8 1400A2AF */  sw         $v0, 0x14($sp)
    /* 383FC 80049BEC 0000668C */  lw         $a2, 0x0($v1)
    /* 38400 80049BF0 0D80043C */  lui        $a0, %hi(D_800CB1C0)
    /* 38404 80049BF4 C0B18424 */  addiu      $a0, $a0, %lo(D_800CB1C0)
    /* 38408 80049BF8 96D9020C */  jal        sprintf
    /* 3840C 80049BFC 00000000 */   nop
    /* 38410 80049C00 1800BF8F */  lw         $ra, 0x18($sp)
    /* 38414 80049C04 0D80023C */  lui        $v0, %hi(D_800CB1C0)
    /* 38418 80049C08 C0B14224 */  addiu      $v0, $v0, %lo(D_800CB1C0)
    /* 3841C 80049C0C 0800E003 */  jr         $ra
    /* 38420 80049C10 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_80049B9C
