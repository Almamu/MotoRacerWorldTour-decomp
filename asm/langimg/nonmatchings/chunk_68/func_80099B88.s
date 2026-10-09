/* Handwritten function */
nonmatching func_80099B88, 0x98

glabel func_80099B88
    /* 88398 80099B88 0C000C24 */  addiu      $t4, $zero, 0xC
    /* 8839C 80099B8C 00008A8C */  lw         $t2, 0x0($a0)
    /* 883A0 80099B90 0000AB8C */  lw         $t3, 0x0($a1)
    /* 883A4 80099B94 00000000 */  nop
    /* 883A8 80099B98 18004B01 */  mult       $t2, $t3
    /* 883AC 80099B9C 20000734 */  ori        $a3, $zero, 0x20
    /* 883B0 80099BA0 2238EC00 */  sub        $a3, $a3, $t4 /* handwritten instruction */
    /* 883B4 80099BA4 10100000 */  mfhi       $v0
    /* 883B8 80099BA8 0410E200 */  sllv       $v0, $v0, $a3
    /* 883BC 80099BAC 12380000 */  mflo       $a3
    /* 883C0 80099BB0 06388701 */  srlv       $a3, $a3, $t4
    /* 883C4 80099BB4 25104700 */  or         $v0, $v0, $a3
    /* 883C8 80099BB8 04008A8C */  lw         $t2, 0x4($a0)
    /* 883CC 80099BBC 0400AB8C */  lw         $t3, 0x4($a1)
    /* 883D0 80099BC0 00000000 */  nop
    /* 883D4 80099BC4 18004B01 */  mult       $t2, $t3
    /* 883D8 80099BC8 20000834 */  ori        $t0, $zero, 0x20
    /* 883DC 80099BCC 22400C01 */  sub        $t0, $t0, $t4 /* handwritten instruction */
    /* 883E0 80099BD0 10180000 */  mfhi       $v1
    /* 883E4 80099BD4 04180301 */  sllv       $v1, $v1, $t0
    /* 883E8 80099BD8 12400000 */  mflo       $t0
    /* 883EC 80099BDC 06408801 */  srlv       $t0, $t0, $t4
    /* 883F0 80099BE0 25186800 */  or         $v1, $v1, $t0
    /* 883F4 80099BE4 21104300 */  addu       $v0, $v0, $v1
    /* 883F8 80099BE8 0C000A24 */  addiu      $t2, $zero, 0xC
    /* 883FC 80099BEC 0800848C */  lw         $a0, 0x8($a0)
    /* 88400 80099BF0 0800A58C */  lw         $a1, 0x8($a1)
    /* 88404 80099BF4 00000000 */  nop
    /* 88408 80099BF8 18008500 */  mult       $a0, $a1
    /* 8840C 80099BFC 20000934 */  ori        $t1, $zero, 0x20
    /* 88410 80099C00 22482A01 */  sub        $t1, $t1, $t2 /* handwritten instruction */
    /* 88414 80099C04 10300000 */  mfhi       $a2
    /* 88418 80099C08 04302601 */  sllv       $a2, $a2, $t1
    /* 8841C 80099C0C 12480000 */  mflo       $t1
    /* 88420 80099C10 06484901 */  srlv       $t1, $t1, $t2
    /* 88424 80099C14 2530C900 */  or         $a2, $a2, $t1
    /* 88428 80099C18 0800E003 */  jr         $ra
    /* 8842C 80099C1C 21104600 */   addu      $v0, $v0, $a2
endlabel func_80099B88
