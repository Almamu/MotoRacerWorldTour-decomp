nonmatching func_8001816C, 0x60

glabel func_8001816C
    /* 697C 8001816C E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 6980 80018170 1000B0AF */  sw         $s0, 0x10($sp)
    /* 6984 80018174 1400BFAF */  sw         $ra, 0x14($sp)
    /* 6988 80018178 0058000C */  jal        __6Cobjet
    /* 698C 8001817C 21808000 */   addu      $s0, $a0, $zero
    /* 6990 80018180 08000424 */  addiu      $a0, $zero, 0x8
    /* 6994 80018184 0C80023C */  lui        $v0, %hi(D_800C4948)
    /* 6998 80018188 48494224 */  addiu      $v0, $v0, %lo(D_800C4948)
    /* 699C 8001818C 500002AE */  sw         $v0, 0x50($s0)
    /* 69A0 80018190 600000AE */  sw         $zero, 0x60($s0)
    /* 69A4 80018194 709C020C */  jal        __builtin_new
    /* 69A8 80018198 640000AE */   sw        $zero, 0x64($s0)
    /* 69AC 8001819C 21184000 */  addu       $v1, $v0, $zero
    /* 69B0 800181A0 1400BF8F */  lw         $ra, 0x14($sp)
    /* 69B4 800181A4 21100002 */  addu       $v0, $s0, $zero
    /* 69B8 800181A8 000060AC */  sw         $zero, 0x0($v1)
    /* 69BC 800181AC 040060AC */  sw         $zero, 0x4($v1)
    /* 69C0 800181B0 400003AE */  sw         $v1, 0x40($s0)
    /* 69C4 800181B4 580000AE */  sw         $zero, 0x58($s0)
    /* 69C8 800181B8 540000AE */  sw         $zero, 0x54($s0)
    /* 69CC 800181BC 5C0000AE */  sw         $zero, 0x5C($s0)
    /* 69D0 800181C0 1000B08F */  lw         $s0, 0x10($sp)
    /* 69D4 800181C4 0800E003 */  jr         $ra
    /* 69D8 800181C8 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_8001816C
