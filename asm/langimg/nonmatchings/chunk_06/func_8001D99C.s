nonmatching func_8001D99C, 0x74

glabel func_8001D99C
    /* C1AC 8001D99C E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* C1B0 8001D9A0 1000B0AF */  sw         $s0, 0x10($sp)
    /* C1B4 8001D9A4 21808000 */  addu       $s0, $a0, $zero
    /* C1B8 8001D9A8 1400BFAF */  sw         $ra, 0x14($sp)
    /* C1BC 8001D9AC 0000048E */  lw         $a0, 0x0($s0)
    /* C1C0 8001D9B0 00000000 */  nop
    /* C1C4 8001D9B4 04008010 */  beqz       $a0, .L8001D9C8
    /* C1C8 8001D9B8 00000000 */   nop
    /* C1CC 8001D9BC 8D9C020C */  jal        __builtin_vec_delete
    /* C1D0 8001D9C0 00000000 */   nop
    /* C1D4 8001D9C4 000000AE */  sw         $zero, 0x0($s0)
  .L8001D9C8:
    /* C1D8 8001D9C8 0400048E */  lw         $a0, 0x4($s0)
    /* C1DC 8001D9CC 00000000 */  nop
    /* C1E0 8001D9D0 04008010 */  beqz       $a0, .L8001D9E4
    /* C1E4 8001D9D4 00000000 */   nop
    /* C1E8 8001D9D8 8D9C020C */  jal        __builtin_vec_delete
    /* C1EC 8001D9DC 00000000 */   nop
    /* C1F0 8001D9E0 040000AE */  sw         $zero, 0x4($s0)
  .L8001D9E4:
    /* C1F4 8001D9E4 B800048E */  lw         $a0, 0xB8($s0)
    /* C1F8 8001D9E8 00000000 */  nop
    /* C1FC 8001D9EC 04008010 */  beqz       $a0, .L8001DA00
    /* C200 8001D9F0 00000000 */   nop
    /* C204 8001D9F4 8D9C020C */  jal        __builtin_vec_delete
    /* C208 8001D9F8 00000000 */   nop
    /* C20C 8001D9FC B80000AE */  sw         $zero, 0xB8($s0)
  .L8001DA00:
    /* C210 8001DA00 1400BF8F */  lw         $ra, 0x14($sp)
    /* C214 8001DA04 1000B08F */  lw         $s0, 0x10($sp)
    /* C218 8001DA08 0800E003 */  jr         $ra
    /* C21C 8001DA0C 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_8001D99C
