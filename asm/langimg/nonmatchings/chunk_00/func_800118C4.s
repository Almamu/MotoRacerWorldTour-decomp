nonmatching func_800118C4, 0x60

glabel func_800118C4
    /* D4 800118C4 0D80073C */  lui        $a3, %hi(D_800C9F70)
    /* D8 800118C8 709FE724 */  addiu      $a3, $a3, %lo(D_800C9F70)
    /* DC 800118CC 21300000 */  addu       $a2, $zero, $zero
    /* E0 800118D0 0D80053C */  lui        $a1, %hi(D_800C9F7C)
    /* E4 800118D4 7C9FA524 */  addiu      $a1, $a1, %lo(D_800C9F7C)
    /* E8 800118D8 0D80033C */  lui        $v1, %hi(D_800C9F7A)
    /* EC 800118DC 7A9F6324 */  addiu      $v1, $v1, %lo(D_800C9F7A)
    /* F0 800118E0 18000224 */  addiu      $v0, $zero, 0x18
    /* F4 800118E4 23104400 */  subu       $v0, $v0, $a0
    /* F8 800118E8 645880AF */  sw         $zero, %gp_rel(D_800C9F54)($gp)
    /* FC 800118EC 585880AF */  sw         $zero, %gp_rel(D_800C9F48)($gp)
    /* 100 800118F0 580082AF */  sw         $v0, %gp_rel(D_800C4748)($gp)
  .L800118F4:
    /* 104 800118F4 0000E0AC */  sw         $zero, 0x0($a3)
    /* 108 800118F8 FAFF60AC */  sw         $zero, -0x6($v1)
    /* 10C 800118FC 000060A4 */  sh         $zero, 0x0($v1)
    /* 110 80011900 10006324 */  addiu      $v1, $v1, 0x10
    /* 114 80011904 0000A0AC */  sw         $zero, 0x0($a1)
    /* 118 80011908 1000A524 */  addiu      $a1, $a1, 0x10
    /* 11C 8001190C 0100C624 */  addiu      $a2, $a2, 0x1
    /* 120 80011910 1800C228 */  slti       $v0, $a2, 0x18
    /* 124 80011914 F7FF4014 */  bnez       $v0, .L800118F4
    /* 128 80011918 1000E724 */   addiu     $a3, $a3, 0x10
    /* 12C 8001191C 0800E003 */  jr         $ra
    /* 130 80011920 00000000 */   nop
endlabel func_800118C4
