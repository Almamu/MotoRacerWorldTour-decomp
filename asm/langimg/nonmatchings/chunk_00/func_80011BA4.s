nonmatching func_80011BA4, 0xB8

glabel func_80011BA4
    /* 3B4 80011BA4 D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* 3B8 80011BA8 2800BFAF */  sw         $ra, 0x28($sp)
    /* 3BC 80011BAC 11D1020C */  jal        SpuGetAllKeysStatus
    /* 3C0 80011BB0 1000A427 */   addiu     $a0, $sp, 0x10
    /* 3C4 80011BB4 21380000 */  addu       $a3, $zero, $zero
    /* 3C8 80011BB8 21400000 */  addu       $t0, $zero, $zero
    /* 3CC 80011BBC 21280000 */  addu       $a1, $zero, $zero
    /* 3D0 80011BC0 1000AB27 */  addiu      $t3, $sp, 0x10
    /* 3D4 80011BC4 03000A24 */  addiu      $t2, $zero, 0x3
    /* 3D8 80011BC8 01000924 */  addiu      $t1, $zero, 0x1
    /* 3DC 80011BCC 0D80063C */  lui        $a2, %hi(D_800C9F58)
    /* 3E0 80011BD0 589FC624 */  addiu      $a2, $a2, %lo(D_800C9F58)
  .L80011BD4:
    /* 3E4 80011BD4 21106501 */  addu       $v0, $t3, $a1
    /* 3E8 80011BD8 00004480 */  lb         $a0, 0x0($v0)
    /* 3EC 80011BDC 00000000 */  nop
    /* 3F0 80011BE0 04008A14 */  bne        $a0, $t2, .L80011BF4
    /* 3F4 80011BE4 21180000 */   addu      $v1, $zero, $zero
    /* 3F8 80011BE8 0000C280 */  lb         $v0, 0x0($a2)
    /* 3FC 80011BEC 00000000 */  nop
    /* 400 80011BF0 0100432C */  sltiu      $v1, $v0, 0x1
  .L80011BF4:
    /* 404 80011BF4 FFFF8224 */  addiu      $v0, $a0, -0x1
    /* 408 80011BF8 0200422C */  sltiu      $v0, $v0, 0x2
    /* 40C 80011BFC 03004014 */  bnez       $v0, .L80011C0C
    /* 410 80011C00 0410A900 */   sllv      $v0, $t1, $a1
    /* 414 80011C04 04006010 */  beqz       $v1, .L80011C18
    /* 418 80011C08 00000000 */   nop
  .L80011C0C:
    /* 41C 80011C0C 2538E200 */  or         $a3, $a3, $v0
    /* 420 80011C10 08006014 */  bnez       $v1, .L80011C34
    /* 424 80011C14 01000825 */   addiu     $t0, $t0, 0x1
  .L80011C18:
    /* 428 80011C18 05008A14 */  bne        $a0, $t2, .L80011C30
    /* 42C 80011C1C 0418A900 */   sllv      $v1, $t1, $a1
    /* 430 80011C20 6458828F */  lw         $v0, %gp_rel(D_800C9F54)($gp)
    /* 434 80011C24 00000000 */  nop
    /* 438 80011C28 25104300 */  or         $v0, $v0, $v1
    /* 43C 80011C2C 645882AF */  sw         $v0, %gp_rel(D_800C9F54)($gp)
  .L80011C30:
    /* 440 80011C30 0000C4A0 */  sb         $a0, 0x0($a2)
  .L80011C34:
    /* 444 80011C34 0100A524 */  addiu      $a1, $a1, 0x1
    /* 448 80011C38 1800A228 */  slti       $v0, $a1, 0x18
    /* 44C 80011C3C E5FF4014 */  bnez       $v0, .L80011BD4
    /* 450 80011C40 0100C624 */   addiu     $a2, $a2, 0x1
    /* 454 80011C44 2800BF8F */  lw         $ra, 0x28($sp)
    /* 458 80011C48 2110E000 */  addu       $v0, $a3, $zero
    /* 45C 80011C4C 585887AF */  sw         $a3, %gp_rel(D_800C9F48)($gp)
    /* 460 80011C50 005A88AF */  sw         $t0, %gp_rel(D_800CA0F0)($gp)
    /* 464 80011C54 0800E003 */  jr         $ra
    /* 468 80011C58 3000BD27 */   addiu     $sp, $sp, 0x30
endlabel func_80011BA4
