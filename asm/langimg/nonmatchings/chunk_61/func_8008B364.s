/* Handwritten function */
nonmatching func_8008B364, 0x19C

glabel func_8008B364
    /* 79B74 8008B364 2158A000 */  addu       $t3, $a1, $zero
    /* 79B78 8008B368 801F0D3C */  lui        $t5, (0x1F800000 >> 16)
    /* 79B7C 8008B36C F0F01834 */  ori        $t8, $zero, 0xF0F0
    /* 79B80 8008B370 0D80023C */  lui        $v0, %hi(D_800CBDC4)
    /* 79B84 8008B374 C4BD428C */  lw         $v0, %lo(D_800CBDC4)($v0)
    /* 79B88 8008B378 0D80033C */  lui        $v1, %hi(D_800CBDC0)
    /* 79B8C 8008B37C C0BD638C */  lw         $v1, %lo(D_800CBDC0)($v1)
    /* 79B90 8008B380 0400448C */  lw         $a0, 0x4($v0)
    /* 79B94 8008B384 04006F24 */  addiu      $t7, $v1, 0x4
    /* 79B98 8008B388 FEFF8E24 */  addiu      $t6, $a0, -0x2
  .L8008B38C:
    /* 79B9C 8008B38C 0C00628D */  lw         $v0, 0xC($t3)
    /* 79BA0 8008B390 00000000 */  nop
    /* 79BA4 8008B394 C0280200 */  sll        $a1, $v0, 3
    /* 79BA8 8008B398 FC03A530 */  andi       $a1, $a1, 0x3FC
    /* 79BAC 8008B39C 2128A501 */  addu       $a1, $t5, $a1
    /* 79BB0 8008B3A0 42210200 */  srl        $a0, $v0, 5
    /* 79BB4 8008B3A4 FC038430 */  andi       $a0, $a0, 0x3FC
    /* 79BB8 8008B3A8 2120A401 */  addu       $a0, $t5, $a0
    /* 79BBC 8008B3AC 421B0200 */  srl        $v1, $v0, 13
    /* 79BC0 8008B3B0 FC036330 */  andi       $v1, $v1, 0x3FC
    /* 79BC4 8008B3B4 2118A301 */  addu       $v1, $t5, $v1
    /* 79BC8 8008B3B8 42150200 */  srl        $v0, $v0, 21
    /* 79BCC 8008B3BC FC034230 */  andi       $v0, $v0, 0x3FC
    /* 79BD0 8008B3C0 2110A201 */  addu       $v0, $t5, $v0
    /* 79BD4 8008B3C4 0400B0C8 */  lwc2       $16, (0x1F800004 & 0xFFFF)($a1)
    /* 79BD8 8008B3C8 040091C8 */  lwc2       $17, (0x1F800004 & 0xFFFF)($a0)
    /* 79BDC 8008B3CC 040072C8 */  lwc2       $18, (0x1F800004 & 0xFFFF)($v1)
    /* 79BE0 8008B3D0 040053C8 */  lwc2       $19, (0x1F800004 & 0xFFFF)($v0)
    /* 79BE4 8008B3D4 0000A58C */  lw         $a1, (0x1F800000 & 0xFFFF)($a1)
    /* 79BE8 8008B3D8 0000848C */  lw         $a0, (0x1F800000 & 0xFFFF)($a0)
    /* 79BEC 8008B3DC 2E00684B */  avsz4
    /* 79BF0 8008B3E0 0000638C */  lw         $v1, (0x1F800000 & 0xFFFF)($v1)
    /* 79BF4 8008B3E4 0000478C */  lw         $a3, (0x1F800000 & 0xFFFF)($v0)
    /* 79BF8 8008B3E8 00608548 */  mtc2       $a1, $12 /* handwritten instruction */
    /* 79BFC 8008B3EC 00688448 */  mtc2       $a0, $13 /* handwritten instruction */
    /* 79C00 8008B3F0 00708748 */  mtc2       $a3, $14 /* handwritten instruction */
    /* 79C04 8008B3F4 00380848 */  mfc2       $t0, $7 /* handwritten instruction */
    /* 79C08 8008B3F8 00000000 */  nop
    /* 79C0C 8008B3FC 0600404B */  nclip
    /* 79C10 8008B400 10006925 */  addiu      $t1, $t3, 0x10
    /* 79C14 8008B404 08006A8D */  lw         $t2, 0x8($t3)
    /* 79C18 8008B408 00C00248 */  mfc2       $v0, $24 /* handwritten instruction */
    /* 79C1C 8008B40C 00608348 */  mtc2       $v1, $12 /* handwritten instruction */
    /* 79C20 8008B410 00000000 */  nop
    /* 79C24 8008B414 00000000 */  nop
    /* 79C28 8008B418 0600404B */  nclip
    /* 79C2C 8008B41C 04006C8D */  lw         $t4, 0x4($t3)
    /* 79C30 8008B420 08004104 */  bgez       $v0, .L8008B444
    /* 79C34 8008B424 03140A00 */   sra       $v0, $t2, 16
    /* 79C38 8008B428 10004231 */  andi       $v0, $t2, 0x10
    /* 79C3C 8008B42C 05004014 */  bnez       $v0, .L8008B444
    /* 79C40 8008B430 03140A00 */   sra       $v0, $t2, 16
    /* 79C44 8008B434 00C00248 */  mfc2       $v0, $24 /* handwritten instruction */
    /* 79C48 8008B438 00000000 */  nop
    /* 79C4C 8008B43C 2B00401C */  bgtz       $v0, .L8008B4EC
    /* 79C50 8008B440 03140A00 */   sra       $v0, $t2, 16
  .L8008B444:
    /* 79C54 8008B444 21300201 */  addu       $a2, $t0, $v0
    /* 79C58 8008B448 2A10C601 */  slt        $v0, $t6, $a2
    /* 79C5C 8008B44C 080025AD */  sw         $a1, 0x8($t1)
    /* 79C60 8008B450 140024AD */  sw         $a0, 0x14($t1)
    /* 79C64 8008B454 2C0023AD */  sw         $v1, 0x2C($t1)
    /* 79C68 8008B458 02004010 */  beqz       $v0, .L8008B464
    /* 79C6C 8008B45C 200027AD */   sw        $a3, 0x20($t1)
    /* 79C70 8008B460 2130C001 */  addu       $a2, $t6, $zero
  .L8008B464:
    /* 79C74 8008B464 80100600 */  sll        $v0, $a2, 2
    /* 79C78 8008B468 2110E201 */  addu       $v0, $t7, $v0
    /* 79C7C 8008B46C 02004588 */  lwl        $a1, 0x2($v0)
    /* 79C80 8008B470 00220900 */  sll        $a0, $t1, 8
    /* 79C84 8008B474 020025A9 */  swl        $a1, 0x2($t1)
    /* 79C88 8008B478 020044A8 */  swl        $a0, 0x2($v0)
    /* 79C8C 8008B47C 20004331 */  andi       $v1, $t2, 0x20
    /* 79C90 8008B480 1A006010 */  beqz       $v1, .L8008B4EC
    /* 79C94 8008B484 433A0800 */   sra       $a3, $t0, 9
    /* 79C98 8008B488 0F004231 */  andi       $v0, $t2, 0xF
    /* 79C9C 8008B48C 17004710 */  beq        $v0, $a3, .L8008B4EC
    /* 79CA0 8008B490 00000000 */   nop
    /* 79CA4 8008B494 F0FF0820 */  addi       $t0, $zero, -0x10 /* handwritten instruction */
    /* 79CA8 8008B498 24104801 */  and        $v0, $t2, $t0
    /* 79CAC 8008B49C 25504700 */  or         $t2, $v0, $a3
    /* 79CB0 8008B4A0 0720F800 */  srav       $a0, $t8, $a3
    /* 79CB4 8008B4A4 0000638D */  lw         $v1, 0x0($t3)
    /* 79CB8 8008B4A8 0F0F8834 */  ori        $t0, $a0, 0xF0F
    /* 79CBC 8008B4AC 00006594 */  lhu        $a1, 0x0($v1)
    /* 79CC0 8008B4B0 04006694 */  lhu        $a2, 0x4($v1)
    /* 79CC4 8008B4B4 0800648C */  lw         $a0, 0x8($v1)
    /* 79CC8 8008B4B8 0628E500 */  srlv       $a1, $a1, $a3
    /* 79CCC 8008B4BC 0630E600 */  srlv       $a2, $a2, $a3
    /* 79CD0 8008B4C0 0620E400 */  srlv       $a0, $a0, $a3
    /* 79CD4 8008B4C4 2428A800 */  and        $a1, $a1, $t0
    /* 79CD8 8008B4C8 2430C800 */  and        $a2, $a2, $t0
    /* 79CDC 8008B4CC 02140400 */  srl        $v0, $a0, 16
    /* 79CE0 8008B4D0 24384800 */  and        $a3, $v0, $t0
    /* 79CE4 8008B4D4 24208800 */  and        $a0, $a0, $t0
    /* 79CE8 8008B4D8 0C0025A5 */  sh         $a1, 0xC($t1)
    /* 79CEC 8008B4DC 180026A5 */  sh         $a2, 0x18($t1)
    /* 79CF0 8008B4E0 240027A5 */  sh         $a3, 0x24($t1)
    /* 79CF4 8008B4E4 300024A5 */  sh         $a0, 0x30($t1)
    /* 79CF8 8008B4E8 08006AAD */  sw         $t2, 0x8($t3)
  .L8008B4EC:
    /* 79CFC 8008B4EC 21588001 */  addu       $t3, $t4, $zero
    /* 79D00 8008B4F0 A6FF6015 */  bnez       $t3, .L8008B38C
    /* 79D04 8008B4F4 00000000 */   nop
    /* 79D08 8008B4F8 0800E003 */  jr         $ra
    /* 79D0C 8008B4FC 00000000 */   nop
endlabel func_8008B364
