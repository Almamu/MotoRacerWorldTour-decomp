nonmatching func_8006F968, 0x54

glabel func_8006F968
    /* 5E178 8006F968 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 5E17C 8006F96C 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 5E180 8006F970 0D80113C */  lui        $s1, %hi(D_800D11D0)
    /* 5E184 8006F974 D0113126 */  addiu      $s1, $s1, %lo(D_800D11D0)
    /* 5E188 8006F978 1800B0AF */  sw         $s0, 0x18($sp)
    /* 5E18C 8006F97C 00810400 */  sll        $s0, $a0, 4
    /* 5E190 8006F980 23800402 */  subu       $s0, $s0, $a0
    /* 5E194 8006F984 80801000 */  sll        $s0, $s0, 2
    /* 5E198 8006F988 0C1C1026 */  addiu      $s0, $s0, 0x1C0C
    /* 5E19C 8006F98C 21801102 */  addu       $s0, $s0, $s1
    /* 5E1A0 8006F990 3800A28F */  lw         $v0, 0x38($sp)
    /* 5E1A4 8006F994 21200002 */  addu       $a0, $s0, $zero
    /* 5E1A8 8006F998 2000BFAF */  sw         $ra, 0x20($sp)
    /* 5E1AC 8006F99C 144D000C */  jal        func_80013450
    /* 5E1B0 8006F9A0 1000A2AF */   sw        $v0, 0x10($sp)
    /* 5E1B4 8006F9A4 2000BF8F */  lw         $ra, 0x20($sp)
    /* 5E1B8 8006F9A8 D01C30AE */  sw         $s0, 0x1CD0($s1)
    /* 5E1BC 8006F9AC 1C00B18F */  lw         $s1, 0x1C($sp)
    /* 5E1C0 8006F9B0 1800B08F */  lw         $s0, 0x18($sp)
    /* 5E1C4 8006F9B4 0800E003 */  jr         $ra
    /* 5E1C8 8006F9B8 2800BD27 */   addiu     $sp, $sp, 0x28
endlabel func_8006F968
