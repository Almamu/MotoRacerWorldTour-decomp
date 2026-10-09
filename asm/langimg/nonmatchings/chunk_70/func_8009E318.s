nonmatching func_8009E318, 0x48

glabel func_8009E318
    /* 8CB28 8009E318 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 8CB2C 8009E31C 1400B1AF */  sw         $s1, 0x14($sp)
    /* 8CB30 8009E320 21888000 */  addu       $s1, $a0, $zero
    /* 8CB34 8009E324 1000B0AF */  sw         $s0, 0x10($sp)
    /* 8CB38 8009E328 1800BFAF */  sw         $ra, 0x18($sp)
    /* 8CB3C 8009E32C BF78020C */  jal        func_8009E2FC
    /* 8CB40 8009E330 2180A000 */   addu      $s0, $a1, $zero
    /* 8CB44 8009E334 80801000 */  sll        $s0, $s0, 2
    /* 8CB48 8009E338 5000238E */  lw         $v1, 0x50($s1)
    /* 8CB4C 8009E33C 1800248E */  lw         $a0, 0x18($s1)
    /* 8CB50 8009E340 1800BF8F */  lw         $ra, 0x18($sp)
    /* 8CB54 8009E344 1400B18F */  lw         $s1, 0x14($sp)
    /* 8CB58 8009E348 21800302 */  addu       $s0, $s0, $v1
    /* 8CB5C 8009E34C 00000296 */  lhu        $v0, 0x0($s0)
    /* 8CB60 8009E350 1000B08F */  lw         $s0, 0x10($sp)
    /* 8CB64 8009E354 080082A4 */  sh         $v0, 0x8($a0)
    /* 8CB68 8009E358 0800E003 */  jr         $ra
    /* 8CB6C 8009E35C 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_8009E318
