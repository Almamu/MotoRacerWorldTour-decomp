nonmatching func_8009F1F8, 0x60

glabel func_8009F1F8
    /* 8DA08 8009F1F8 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 8DA0C 8009F1FC 21288000 */  addu       $a1, $a0, $zero
    /* 8DA10 8009F200 1000BFAF */  sw         $ra, 0x10($sp)
    /* 8DA14 8009F204 900AA38C */  lw         $v1, 0xA90($a1)
    /* 8DA18 8009F208 01000224 */  addiu      $v0, $zero, 0x1
    /* 8DA1C 8009F20C 03006210 */  beq        $v1, $v0, .L8009F21C
    /* 8DA20 8009F210 04000224 */   addiu     $v0, $zero, 0x4
    /* 8DA24 8009F214 04006214 */  bne        $v1, $v0, .L8009F228
    /* 8DA28 8009F218 FFFD0224 */   addiu     $v0, $zero, -0x201
  .L8009F21C:
    /* 8DA2C 8009F21C 840AA48C */  lw         $a0, 0xA84($a1)
    /* 8DA30 8009F220 8B7C0208 */  j          .L8009F22C
    /* 8DA34 8009F224 FFFD0224 */   addiu     $v0, $zero, -0x201
  .L8009F228:
    /* 8DA38 8009F228 800AA48C */  lw         $a0, 0xA80($a1)
  .L8009F22C:
    /* 8DA3C 8009F22C 940AA38C */  lw         $v1, 0xA94($a1)
    /* 8DA40 8009F230 6000848C */  lw         $a0, 0x60($a0)
    /* 8DA44 8009F234 24186200 */  and        $v1, $v1, $v0
    /* 8DA48 8009F238 2B78020C */  jal        func_8009E0AC
    /* 8DA4C 8009F23C 940AA3AC */   sw        $v1, 0xA94($a1)
    /* 8DA50 8009F240 9190020C */  jal        func_800A4244
    /* 8DA54 8009F244 00000000 */   nop
    /* 8DA58 8009F248 1000BF8F */  lw         $ra, 0x10($sp)
    /* 8DA5C 8009F24C 00000000 */  nop
    /* 8DA60 8009F250 0800E003 */  jr         $ra
    /* 8DA64 8009F254 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_8009F1F8
