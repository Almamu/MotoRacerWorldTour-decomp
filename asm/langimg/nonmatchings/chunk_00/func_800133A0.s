nonmatching func_800133A0, 0xA0

glabel func_800133A0
    /* 1BB0 800133A0 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 1BB4 800133A4 FFFF0524 */  addiu      $a1, $zero, -0x1
    /* 1BB8 800133A8 1000B0AF */  sw         $s0, 0x10($sp)
    /* 1BBC 800133AC 21808000 */  addu       $s0, $a0, $zero
    /* 1BC0 800133B0 1400B1AF */  sw         $s1, 0x14($sp)
    /* 1BC4 800133B4 FFFF1124 */  addiu      $s1, $zero, -0x1
    /* 1BC8 800133B8 1B000512 */  beq        $s0, $a1, .L80013428
    /* 1BCC 800133BC 1800BFAF */   sw        $ra, 0x18($sp)
    /* 1BD0 800133C0 424C000C */  jal        func_80013108
    /* 1BD4 800133C4 00000000 */   nop
    /* 1BD8 800133C8 21284000 */  addu       $a1, $v0, $zero
    /* 1BDC 800133CC 1600B110 */  beq        $a1, $s1, .L80013428
    /* 1BE0 800133D0 80180500 */   sll       $v1, $a1, 2
    /* 1BE4 800133D4 21186500 */  addu       $v1, $v1, $a1
    /* 1BE8 800133D8 80180300 */  sll        $v1, $v1, 2
    /* 1BEC 800133DC 0D80023C */  lui        $v0, %hi(D_800CA0F8)
    /* 1BF0 800133E0 F8A04224 */  addiu      $v0, $v0, %lo(D_800CA0F8)
    /* 1BF4 800133E4 21186200 */  addu       $v1, $v1, $v0
    /* 1BF8 800133E8 1F00A530 */  andi       $a1, $a1, 0x1F
    /* 1BFC 800133EC FF030232 */  andi       $v0, $s0, 0x3FF
    /* 1C00 800133F0 40110200 */  sll        $v0, $v0, 5
    /* 1C04 800133F4 2528A200 */  or         $a1, $a1, $v0
    /* 1C08 800133F8 5C58868F */  lw         $a2, %gp_rel(D_800C9F4C)($gp)
    /* 1C0C 800133FC 06006294 */  lhu        $v0, 0x6($v1)
    /* 1C10 80013400 000070A4 */  sh         $s0, 0x0($v1)
    /* 1C14 80013404 040060A4 */  sh         $zero, 0x4($v1)
    /* 1C18 80013408 00240600 */  sll        $a0, $a2, 16
    /* 1C1C 8001340C 2528A400 */  or         $a1, $a1, $a0
    /* 1C20 80013410 020066A4 */  sh         $a2, 0x2($v1)
    /* 1C24 80013414 0100C624 */  addiu      $a2, $a2, 0x1
    /* 1C28 80013418 FFFFC630 */  andi       $a2, $a2, 0xFFFF
    /* 1C2C 8001341C 01004234 */  ori        $v0, $v0, 0x1
    /* 1C30 80013420 060062A4 */  sh         $v0, 0x6($v1)
    /* 1C34 80013424 5C5886AF */  sw         $a2, %gp_rel(D_800C9F4C)($gp)
  .L80013428:
    /* 1C38 80013428 1800BF8F */  lw         $ra, 0x18($sp)
    /* 1C3C 8001342C 1400B18F */  lw         $s1, 0x14($sp)
    /* 1C40 80013430 1000B08F */  lw         $s0, 0x10($sp)
    /* 1C44 80013434 2110A000 */  addu       $v0, $a1, $zero
    /* 1C48 80013438 0800E003 */  jr         $ra
    /* 1C4C 8001343C 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_800133A0
