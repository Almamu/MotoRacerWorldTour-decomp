nonmatching func_8006BE7C, 0x50

glabel func_8006BE7C
    /* 5A68C 8006BE7C D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 5A690 8006BE80 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 5A694 8006BE84 2C049124 */  addiu      $s1, $a0, 0x42C
    /* 5A698 8006BE88 3800A28F */  lw         $v0, 0x38($sp)
    /* 5A69C 8006BE8C 3C00A38F */  lw         $v1, 0x3C($sp)
    /* 5A6A0 8006BE90 21202002 */  addu       $a0, $s1, $zero
    /* 5A6A4 8006BE94 2000BFAF */  sw         $ra, 0x20($sp)
    /* 5A6A8 8006BE98 1800B0AF */  sw         $s0, 0x18($sp)
    /* 5A6AC 8006BE9C 1000A2AF */  sw         $v0, 0x10($sp)
    /* 5A6B0 8006BEA0 D359020C */  jal        func_8009674C
    /* 5A6B4 8006BEA4 1400A3AF */   sw        $v1, 0x14($sp)
    /* 5A6B8 8006BEA8 21202002 */  addu       $a0, $s1, $zero
    /* 5A6BC 8006BEAC C959020C */  jal        func_80096724
    /* 5A6C0 8006BEB0 21804000 */   addu      $s0, $v0, $zero
    /* 5A6C4 8006BEB4 21100002 */  addu       $v0, $s0, $zero
    /* 5A6C8 8006BEB8 2000BF8F */  lw         $ra, 0x20($sp)
    /* 5A6CC 8006BEBC 1C00B18F */  lw         $s1, 0x1C($sp)
    /* 5A6D0 8006BEC0 1800B08F */  lw         $s0, 0x18($sp)
    /* 5A6D4 8006BEC4 0800E003 */  jr         $ra
    /* 5A6D8 8006BEC8 2800BD27 */   addiu     $sp, $sp, 0x28
endlabel func_8006BE7C
