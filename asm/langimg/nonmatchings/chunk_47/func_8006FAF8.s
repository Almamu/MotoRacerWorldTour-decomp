nonmatching func_8006FAF8, 0x44

glabel func_8006FAF8
    /* 5E308 8006FAF8 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 5E30C 8006FAFC 1000B0AF */  sw         $s0, 0x10($sp)
    /* 5E310 8006FB00 21808000 */  addu       $s0, $a0, $zero
    /* 5E314 8006FB04 1400B1AF */  sw         $s1, 0x14($sp)
    /* 5E318 8006FB08 1800BFAF */  sw         $ra, 0x18($sp)
    /* 5E31C 8006FB0C B7BE010C */  jal        func_8006FADC
    /* 5E320 8006FB10 2188A000 */   addu      $s1, $a1, $zero
    /* 5E324 8006FB14 21200002 */  addu       $a0, $s0, $zero
    /* 5E328 8006FB18 8CBE010C */  jal        func_8006FA30
    /* 5E32C 8006FB1C 21285100 */   addu      $a1, $v0, $s1
    /* 5E330 8006FB20 B7BE010C */  jal        func_8006FADC
    /* 5E334 8006FB24 21200002 */   addu      $a0, $s0, $zero
    /* 5E338 8006FB28 1800BF8F */  lw         $ra, 0x18($sp)
    /* 5E33C 8006FB2C 1400B18F */  lw         $s1, 0x14($sp)
    /* 5E340 8006FB30 1000B08F */  lw         $s0, 0x10($sp)
    /* 5E344 8006FB34 0800E003 */  jr         $ra
    /* 5E348 8006FB38 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_8006FAF8
