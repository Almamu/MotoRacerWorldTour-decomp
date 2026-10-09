nonmatching func_8009D350, 0x68

glabel func_8009D350
    /* 8BB60 8009D350 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 8BB64 8009D354 1000BFAF */  sw         $ra, 0x10($sp)
    /* 8BB68 8009D358 709C020C */  jal        __builtin_new
    /* 8BB6C 8009D35C 20000424 */   addiu     $a0, $zero, 0x20
    /* 8BB70 8009D360 0D80033C */  lui        $v1, %hi(D_800C9B30)
    /* 8BB74 8009D364 309B6324 */  addiu      $v1, $v1, %lo(D_800C9B30)
    /* 8BB78 8009D368 01000524 */  addiu      $a1, $zero, 0x1
    /* 8BB7C 8009D36C 000043AC */  sw         $v1, 0x0($v0)
    /* 8BB80 8009D370 0D80033C */  lui        $v1, %hi(D_800C9B38)
    /* 8BB84 8009D374 389B6324 */  addiu      $v1, $v1, %lo(D_800C9B38)
    /* 8BB88 8009D378 02000424 */  addiu      $a0, $zero, 0x2
    /* 8BB8C 8009D37C 080043AC */  sw         $v1, 0x8($v0)
    /* 8BB90 8009D380 0D80033C */  lui        $v1, %hi(D_800C9B58)
    /* 8BB94 8009D384 589B6324 */  addiu      $v1, $v1, %lo(D_800C9B58)
    /* 8BB98 8009D388 0C0044AC */  sw         $a0, 0xC($v0)
    /* 8BB9C 8009D38C 0D80043C */  lui        $a0, %hi(D_800C9B64)
    /* 8BBA0 8009D390 1000BF8F */  lw         $ra, 0x10($sp)
    /* 8BBA4 8009D394 649B8424 */  addiu      $a0, $a0, %lo(D_800C9B64)
    /* 8BBA8 8009D398 040045AC */  sw         $a1, 0x4($v0)
    /* 8BBAC 8009D39C 100043AC */  sw         $v1, 0x10($v0)
    /* 8BBB0 8009D3A0 140045AC */  sw         $a1, 0x14($v0)
    /* 8BBB4 8009D3A4 180044AC */  sw         $a0, 0x18($v0)
    /* 8BBB8 8009D3A8 1C0045AC */  sw         $a1, 0x1C($v0)
    /* 8BBBC 8009D3AC 704C82AF */  sw         $v0, %gp_rel(D_800C9360)($gp)
    /* 8BBC0 8009D3B0 0800E003 */  jr         $ra
    /* 8BBC4 8009D3B4 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_8009D350
