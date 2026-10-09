nonmatching func_8009E360, 0x60

glabel func_8009E360
    /* 8CB70 8009E360 6210033C */  lui        $v1, (0x10624DD3 >> 16)
    /* 8CB74 8009E364 0C00828C */  lw         $v0, 0xC($a0)
    /* 8CB78 8009E368 D34D6334 */  ori        $v1, $v1, (0x10624DD3 & 0xFFFF)
    /* 8CB7C 8009E36C C0380200 */  sll        $a3, $v0, 3
    /* 8CB80 8009E370 2338E200 */  subu       $a3, $a3, $v0
    /* 8CB84 8009E374 80380700 */  sll        $a3, $a3, 2
    /* 8CB88 8009E378 2338E200 */  subu       $a3, $a3, $v0
    /* 8CB8C 8009E37C C0380700 */  sll        $a3, $a3, 3
    /* 8CB90 8009E380 2338E200 */  subu       $a3, $a3, $v0
    /* 8CB94 8009E384 40380700 */  sll        $a3, $a3, 1
    /* 8CB98 8009E388 1800E300 */  mult       $a3, $v1
    /* 8CB9C 8009E38C E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 8CBA0 8009E390 29000524 */  addiu      $a1, $zero, 0x29
    /* 8CBA4 8009E394 BE000624 */  addiu      $a2, $zero, 0xBE
    /* 8CBA8 8009E398 1000BFAF */  sw         $ra, 0x10($sp)
    /* 8CBAC 8009E39C C33F0700 */  sra        $a3, $a3, 31
    /* 8CBB0 8009E3A0 10180000 */  mfhi       $v1
    /* 8CBB4 8009E3A4 83190300 */  sra        $v1, $v1, 6
    /* 8CBB8 8009E3A8 F078020C */  jal        func_8009E3C0
    /* 8CBBC 8009E3AC 23386700 */   subu      $a3, $v1, $a3
    /* 8CBC0 8009E3B0 1000BF8F */  lw         $ra, 0x10($sp)
    /* 8CBC4 8009E3B4 00000000 */  nop
    /* 8CBC8 8009E3B8 0800E003 */  jr         $ra
    /* 8CBCC 8009E3BC 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_8009E360
