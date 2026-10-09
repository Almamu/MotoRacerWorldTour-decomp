nonmatching func_800A594C, 0x88

glabel func_800A594C
    /* 9415C 800A594C E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 94160 800A5950 1000B0AF */  sw         $s0, 0x10($sp)
    /* 94164 800A5954 1400BFAF */  sw         $ra, 0x14($sp)
    /* 94168 800A5958 2C96020C */  jal        func_800A58B0
    /* 9416C 800A595C 21808000 */   addu      $s0, $a0, $zero
    /* 94170 800A5960 FF3F053C */  lui        $a1, (0x3FFFFFFF >> 16)
    /* 94174 800A5964 FFFFA534 */  ori        $a1, $a1, (0x3FFFFFFF & 0xFFFF)
    /* 94178 800A5968 00C0043C */  lui        $a0, (0xC0000000 >> 16)
    /* 9417C 800A596C 3C00038E */  lw         $v1, 0x3C($s0)
    /* 94180 800A5970 24104500 */  and        $v0, $v0, $a1
    /* 94184 800A5974 24186400 */  and        $v1, $v1, $a0
    /* 94188 800A5978 25186200 */  or         $v1, $v1, $v0
    /* 9418C 800A597C 3C0003AE */  sw         $v1, 0x3C($s0)
    /* 94190 800A5980 80180300 */  sll        $v1, $v1, 2
    /* 94194 800A5984 83180300 */  sra        $v1, $v1, 2
    /* 94198 800A5988 DDFF6224 */  addiu      $v0, $v1, -0x23
    /* 9419C 800A598C 23186200 */  subu       $v1, $v1, $v0
    /* 941A0 800A5990 09006018 */  blez       $v1, .L800A59B8
    /* 941A4 800A5994 000002AE */   sw        $v0, 0x0($s0)
    /* 941A8 800A5998 FF7F023C */  lui        $v0, (0x7FFFFFFF >> 16)
    /* 941AC 800A599C FFFF4234 */  ori        $v0, $v0, (0x7FFFFFFF & 0xFFFF)
    /* 941B0 800A59A0 FF7F043C */  lui        $a0, (0x7FFFFFFF >> 16)
    /* 941B4 800A59A4 2A104300 */  slt        $v0, $v0, $v1
    /* 941B8 800A59A8 04004014 */  bnez       $v0, .L800A59BC
    /* 941BC 800A59AC FFFF8434 */   ori       $a0, $a0, (0x7FFFFFFF & 0xFFFF)
    /* 941C0 800A59B0 6F960208 */  j          .L800A59BC
    /* 941C4 800A59B4 21206000 */   addu      $a0, $v1, $zero
  .L800A59B8:
    /* 941C8 800A59B8 01000424 */  addiu      $a0, $zero, 0x1
  .L800A59BC:
    /* 941CC 800A59BC 1400BF8F */  lw         $ra, 0x14($sp)
    /* 941D0 800A59C0 400004AE */  sw         $a0, 0x40($s0)
    /* 941D4 800A59C4 040000AE */  sw         $zero, 0x4($s0)
    /* 941D8 800A59C8 1000B08F */  lw         $s0, 0x10($sp)
    /* 941DC 800A59CC 0800E003 */  jr         $ra
    /* 941E0 800A59D0 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_800A594C
