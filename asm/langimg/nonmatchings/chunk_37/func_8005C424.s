nonmatching func_8005C424, 0x48

glabel func_8005C424
    /* 4AC34 8005C424 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 4AC38 8005C428 1000BFAF */  sw         $ra, 0x10($sp)
    /* 4AC3C 8005C42C FFFF0224 */  addiu      $v0, $zero, -0x1
    /* 4AC40 8005C430 0A00A210 */  beq        $a1, $v0, .L8005C45C
    /* 4AC44 8005C434 21300000 */   addu      $a2, $zero, $zero
    /* 4AC48 8005C438 40180500 */  sll        $v1, $a1, 1
    /* 4AC4C 8005C43C 7C03828C */  lw         $v0, 0x37C($a0)
    /* 4AC50 8005C440 0D80043C */  lui        $a0, %hi(D_800C8C0C)
    /* 4AC54 8005C444 0C8C848C */  lw         $a0, %lo(D_800C8C0C)($a0)
    /* 4AC58 8005C448 21186200 */  addu       $v1, $v1, $v0
    /* 4AC5C 8005C44C 00006594 */  lhu        $a1, 0x0($v1)
    /* 4AC60 8005C450 8E1A020C */  jal        func_80086A38
    /* 4AC64 8005C454 00000000 */   nop
    /* 4AC68 8005C458 21304000 */  addu       $a2, $v0, $zero
  .L8005C45C:
    /* 4AC6C 8005C45C 1000BF8F */  lw         $ra, 0x10($sp)
    /* 4AC70 8005C460 2110C000 */  addu       $v0, $a2, $zero
    /* 4AC74 8005C464 0800E003 */  jr         $ra
    /* 4AC78 8005C468 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_8005C424
