nonmatching SpuRead, 0x60

glabel SpuRead
    /* 176C4 8014A1F8 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 176C8 8014A1FC 1000B0AF */  sw         $s0, 0x10($sp)
    /* 176CC 8014A200 2180A000 */  addu       $s0, $a1, $zero
    /* 176D0 8014A204 0700023C */  lui        $v0, (0x7EFF0 >> 16)
    /* 176D4 8014A208 F0EF4234 */  ori        $v0, $v0, (0x7EFF0 & 0xFFFF)
    /* 176D8 8014A20C 2B105000 */  sltu       $v0, $v0, $s0
    /* 176DC 8014A210 03004010 */  beqz       $v0, .L8014A220
    /* 176E0 8014A214 1400BFAF */   sw        $ra, 0x14($sp)
    /* 176E4 8014A218 0700103C */  lui        $s0, (0x7EFF0 >> 16)
    /* 176E8 8014A21C F0EF1036 */  ori        $s0, $s0, (0x7EFF0 & 0xFFFF)
  .L8014A220:
    /* 176EC 8014A220 290D050C */  jal        _spu_Fw
    /* 176F0 8014A224 21280002 */   addu      $a1, $s0, $zero
    /* 176F4 8014A228 1C80023C */  lui        $v0, %hi(D_801BFF4C)
    /* 176F8 8014A22C 4CFF428C */  lw         $v0, %lo(D_801BFF4C)($v0)
    /* 176FC 8014A230 00000000 */  nop
    /* 17700 8014A234 03004014 */  bnez       $v0, .L8014A244
    /* 17704 8014A238 21100002 */   addu      $v0, $s0, $zero
    /* 17708 8014A23C 1C80013C */  lui        $at, %hi(D_801BFF48)
    /* 1770C 8014A240 48FF20AC */  sw         $zero, %lo(D_801BFF48)($at)
  .L8014A244:
    /* 17710 8014A244 1400BF8F */  lw         $ra, 0x14($sp)
    /* 17714 8014A248 1000B08F */  lw         $s0, 0x10($sp)
    /* 17718 8014A24C 0800E003 */  jr         $ra
    /* 1771C 8014A250 1800BD27 */   addiu     $sp, $sp, 0x18
    /* 17720 8014A254 00000000 */  nop
endlabel SpuRead
