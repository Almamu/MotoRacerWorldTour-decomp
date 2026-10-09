nonmatching func_8006CEAC, 0x2C

glabel func_8006CEAC
    /* 5B6BC 8006CEAC 0800828C */  lw         $v0, 0x8($a0)
    /* 5B6C0 8006CEB0 00000000 */  nop
    /* 5B6C4 8006CEB4 06004010 */  beqz       $v0, .L8006CED0
    /* 5B6C8 8006CEB8 02000324 */   addiu     $v1, $zero, 0x2
  .L8006CEBC:
    /* 5B6CC 8006CEBC 280043A0 */  sb         $v1, 0x28($v0)
    /* 5B6D0 8006CEC0 0800428C */  lw         $v0, 0x8($v0)
    /* 5B6D4 8006CEC4 00000000 */  nop
    /* 5B6D8 8006CEC8 FCFF4014 */  bnez       $v0, .L8006CEBC
    /* 5B6DC 8006CECC 00000000 */   nop
  .L8006CED0:
    /* 5B6E0 8006CED0 0800E003 */  jr         $ra
    /* 5B6E4 8006CED4 00000000 */   nop
endlabel func_8006CEAC
