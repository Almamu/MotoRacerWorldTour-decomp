nonmatching _spu_Fw, 0x84

glabel _spu_Fw
    /* 10970 801434A4 1C80023C */  lui        $v0, %hi(D_801BFF30)
    /* 10974 801434A8 30FF428C */  lw         $v0, %lo(D_801BFF30)($v0)
    /* 10978 801434AC E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 1097C 801434B0 1400B1AF */  sw         $s1, 0x14($sp)
    /* 10980 801434B4 21888000 */  addu       $s1, $a0, $zero
    /* 10984 801434B8 1000B0AF */  sw         $s0, 0x10($sp)
    /* 10988 801434BC 2180A000 */  addu       $s0, $a1, $zero
    /* 1098C 801434C0 10004014 */  bnez       $v0, .L80143504
    /* 10990 801434C4 1800BFAF */   sw        $ra, 0x18($sp)
    /* 10994 801434C8 1C80023C */  lui        $v0, %hi(D_801BFF2C)
    /* 10998 801434CC 2CFF4294 */  lhu        $v0, %lo(D_801BFF2C)($v0)
    /* 1099C 801434D0 1C80053C */  lui        $a1, %hi(D_801BFF3C)
    /* 109A0 801434D4 3CFFA58C */  lw         $a1, %lo(D_801BFF3C)($a1)
    /* 109A4 801434D8 02000424 */  addiu      $a0, $zero, 0x2
    /* 109A8 801434DC 890C050C */  jal        _spu_t
    /* 109AC 801434E0 0428A200 */   sllv      $a1, $v0, $a1
    /* 109B0 801434E4 890C050C */  jal        _spu_t
    /* 109B4 801434E8 01000424 */   addiu     $a0, $zero, 0x1
    /* 109B8 801434EC 03000424 */  addiu      $a0, $zero, 0x3
    /* 109BC 801434F0 21282002 */  addu       $a1, $s1, $zero
    /* 109C0 801434F4 890C050C */  jal        _spu_t
    /* 109C4 801434F8 21300002 */   addu      $a2, $s0, $zero
    /* 109C8 801434FC 450D0508 */  j          .L80143514
    /* 109CC 80143500 21100002 */   addu      $v0, $s0, $zero
  .L80143504:
    /* 109D0 80143504 21202002 */  addu       $a0, $s1, $zero
    /* 109D4 80143508 EA0B050C */  jal        func_80142FA8
    /* 109D8 8014350C 21280002 */   addu      $a1, $s0, $zero
    /* 109DC 80143510 21100002 */  addu       $v0, $s0, $zero
  .L80143514:
    /* 109E0 80143514 1800BF8F */  lw         $ra, 0x18($sp)
    /* 109E4 80143518 1400B18F */  lw         $s1, 0x14($sp)
    /* 109E8 8014351C 1000B08F */  lw         $s0, 0x10($sp)
    /* 109EC 80143520 0800E003 */  jr         $ra
    /* 109F0 80143524 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel _spu_Fw
