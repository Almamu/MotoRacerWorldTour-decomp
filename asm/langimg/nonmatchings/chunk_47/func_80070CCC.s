/* Handwritten function */
nonmatching func_80070CCC, 0x88

glabel func_80070CCC
    /* 5F4DC 80070CCC 0C80033C */  lui        $v1, %hi(D_800BF3A0)
    /* 5F4E0 80070CD0 A0F36324 */  addiu      $v1, $v1, %lo(D_800BF3A0)
    /* 5F4E4 80070CD4 0C000A24 */  addiu      $t2, $zero, 0xC
    /* 5F4E8 80070CD8 0000A88C */  lw         $t0, 0x0($a1)
    /* 5F4EC 80070CDC 0000828C */  lw         $v0, 0x0($a0)
    /* 5F4F0 80070CE0 0800A78C */  lw         $a3, 0x8($a1)
    /* 5F4F4 80070CE4 0400868C */  lw         $a2, 0x4($a0)
    /* 5F4F8 80070CE8 23400201 */  subu       $t0, $t0, $v0
    /* 5F4FC 80070CEC 08008294 */  lhu        $v0, 0x8($a0)
    /* 5F500 80070CF0 2338E600 */  subu       $a3, $a3, $a2
    /* 5F504 80070CF4 FF0F4230 */  andi       $v0, $v0, 0xFFF
    /* 5F508 80070CF8 80100200 */  sll        $v0, $v0, 2
    /* 5F50C 80070CFC 21306200 */  addu       $a2, $v1, $v0
    /* 5F510 80070D00 21104300 */  addu       $v0, $v0, $v1
    /* 5F514 80070D04 0200C484 */  lh         $a0, 0x2($a2)
    /* 5F518 80070D08 00004584 */  lh         $a1, 0x0($v0)
    /* 5F51C 80070D0C 18000401 */  mult       $t0, $a0
    /* 5F520 80070D10 20000934 */  ori        $t1, $zero, 0x20
    /* 5F524 80070D14 22482A01 */  sub        $t1, $t1, $t2 /* handwritten instruction */
    /* 5F528 80070D18 10180000 */  mfhi       $v1
    /* 5F52C 80070D1C 04182301 */  sllv       $v1, $v1, $t1
    /* 5F530 80070D20 12480000 */  mflo       $t1
    /* 5F534 80070D24 06484901 */  srlv       $t1, $t1, $t2
    /* 5F538 80070D28 25186900 */  or         $v1, $v1, $t1
    /* 5F53C 80070D2C 1800E500 */  mult       $a3, $a1
    /* 5F540 80070D30 20000634 */  ori        $a2, $zero, 0x20
    /* 5F544 80070D34 2230CA00 */  sub        $a2, $a2, $t2 /* handwritten instruction */
    /* 5F548 80070D38 10100000 */  mfhi       $v0
    /* 5F54C 80070D3C 0410C200 */  sllv       $v0, $v0, $a2
    /* 5F550 80070D40 12300000 */  mflo       $a2
    /* 5F554 80070D44 06304601 */  srlv       $a2, $a2, $t2
    /* 5F558 80070D48 25104600 */  or         $v0, $v0, $a2
    /* 5F55C 80070D4C 0800E003 */  jr         $ra
    /* 5F560 80070D50 21106200 */   addu      $v0, $v1, $v0
endlabel func_80070CCC
