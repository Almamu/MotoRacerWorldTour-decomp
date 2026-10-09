nonmatching func_8009F3EC, 0x64

glabel func_8009F3EC
    /* 8DBFC 8009F3EC E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 8DC00 8009F3F0 0400C38C */  lw         $v1, 0x4($a2)
    /* 8DC04 8009F3F4 FE000224 */  addiu      $v0, $zero, 0xFE
    /* 8DC08 8009F3F8 1000BFAF */  sw         $ra, 0x10($sp)
    /* 8DC0C 8009F3FC 0000858C */  lw         $a1, 0x0($a0)
    /* 8DC10 8009F400 0D80043C */  lui        $a0, %hi(D_800C886C)
    /* 8DC14 8009F404 6C88848C */  lw         $a0, %lo(D_800C886C)($a0)
    /* 8DC18 8009F408 980A638C */  lw         $v1, 0xA98($v1)
    /* 8DC1C 8009F40C 0C00A214 */  bne        $a1, $v0, .L8009F440
    /* 8DC20 8009F410 00000000 */   nop
    /* 8DC24 8009F414 0001628C */  lw         $v0, 0x100($v1)
    /* 8DC28 8009F418 00000000 */  nop
    /* 8DC2C 8009F41C 01004224 */  addiu      $v0, $v0, 0x1
    /* 8DC30 8009F420 000162AC */  sw         $v0, 0x100($v1)
    /* 8DC34 8009F424 29004228 */  slti       $v0, $v0, 0x29
    /* 8DC38 8009F428 02004014 */  bnez       $v0, .L8009F434
    /* 8DC3C 8009F42C 28000224 */   addiu     $v0, $zero, 0x28
    /* 8DC40 8009F430 000162AC */  sw         $v0, 0x100($v1)
  .L8009F434:
    /* 8DC44 8009F434 0001628C */  lw         $v0, 0x100($v1)
    /* 8DC48 8009F438 B7E4010C */  jal        func_800792DC
    /* 8DC4C 8009F43C 640182AC */   sw        $v0, 0x164($a0)
  .L8009F440:
    /* 8DC50 8009F440 1000BF8F */  lw         $ra, 0x10($sp)
    /* 8DC54 8009F444 00000000 */  nop
    /* 8DC58 8009F448 0800E003 */  jr         $ra
    /* 8DC5C 8009F44C 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_8009F3EC
