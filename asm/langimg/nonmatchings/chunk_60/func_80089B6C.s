nonmatching func_80089B6C, 0x8C

glabel func_80089B6C
    /* 7837C 80089B6C E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 78380 80089B70 1400B1AF */  sw         $s1, 0x14($sp)
    /* 78384 80089B74 21888000 */  addu       $s1, $a0, $zero
    /* 78388 80089B78 80200600 */  sll        $a0, $a2, 2
    /* 7838C 80089B7C 1800BFAF */  sw         $ra, 0x18($sp)
    /* 78390 80089B80 1000B0AF */  sw         $s0, 0x10($sp)
    /* 78394 80089B84 040027AE */  sw         $a3, 0x4($s1)
    /* 78398 80089B88 3000A38F */  lw         $v1, 0x30($sp)
    /* 7839C 80089B8C 2180A000 */  addu       $s0, $a1, $zero
    /* 783A0 80089B90 180030A6 */  sh         $s0, 0x18($s1)
    /* 783A4 80089B94 1C0026A6 */  sh         $a2, 0x1C($s1)
    /* 783A8 80089B98 959C020C */  jal        __builtin_vec_new
    /* 783AC 80089B9C 000023AE */   sw        $v1, 0x0($s1)
    /* 783B0 80089BA0 40201000 */  sll        $a0, $s0, 1
    /* 783B4 80089BA4 959C020C */  jal        __builtin_vec_new
    /* 783B8 80089BA8 080022AE */   sw        $v0, 0x8($s1)
    /* 783BC 80089BAC C0201000 */  sll        $a0, $s0, 3
    /* 783C0 80089BB0 21209000 */  addu       $a0, $a0, $s0
    /* 783C4 80089BB4 80200400 */  sll        $a0, $a0, 2
    /* 783C8 80089BB8 959C020C */  jal        __builtin_vec_new
    /* 783CC 80089BBC 140022AE */   sw        $v0, 0x14($s1)
    /* 783D0 80089BC0 FFFF1026 */  addiu      $s0, $s0, -0x1
    /* 783D4 80089BC4 04000006 */  bltz       $s0, .L80089BD8
    /* 783D8 80089BC8 FFFF0324 */   addiu     $v1, $zero, -0x1
    /* 783DC 80089BCC FFFF1026 */  addiu      $s0, $s0, -0x1
  .L80089BD0:
    /* 783E0 80089BD0 FFFF0316 */  bne        $s0, $v1, .L80089BD0
    /* 783E4 80089BD4 FFFF1026 */   addiu     $s0, $s0, -0x1
  .L80089BD8:
    /* 783E8 80089BD8 21202002 */  addu       $a0, $s1, $zero
    /* 783EC 80089BDC 1F27020C */  jal        func_80089C7C
    /* 783F0 80089BE0 0C0022AE */   sw        $v0, 0xC($s1)
    /* 783F4 80089BE4 1800BF8F */  lw         $ra, 0x18($sp)
    /* 783F8 80089BE8 1400B18F */  lw         $s1, 0x14($sp)
    /* 783FC 80089BEC 1000B08F */  lw         $s0, 0x10($sp)
    /* 78400 80089BF0 0800E003 */  jr         $ra
    /* 78404 80089BF4 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_80089B6C
