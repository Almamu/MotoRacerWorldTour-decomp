nonmatching func_8013EC5C, 0x6C

glabel func_8013EC5C
    /* C128 8013EC5C 1C80023C */  lui        $v0, %hi(D_801BFD98)
    /* C12C 8013EC60 98FD428C */  lw         $v0, %lo(D_801BFD98)($v0)
    /* C130 8013EC64 00000000 */  nop
    /* C134 8013EC68 03004014 */  bnez       $v0, .L8013EC78
    /* C138 8013EC6C 1D80023C */   lui       $v0, %hi(D_801CE6E0)
  .L8013EC70:
    /* C13C 8013EC70 0800E003 */  jr         $ra
    /* C140 8013EC74 21100000 */   addu      $v0, $zero, $zero
  .L8013EC78:
    /* C144 8013EC78 E0E6428C */  lw         $v0, %lo(D_801CE6E0)($v0)
    /* C148 8013EC7C 00000000 */  nop
    /* C14C 8013EC80 FFFF4224 */  addiu      $v0, $v0, -0x1
    /* C150 8013EC84 2A104400 */  slt        $v0, $v0, $a0
    /* C154 8013EC88 F9FF4014 */  bnez       $v0, .L8013EC70
    /* C158 8013EC8C 00000000 */   nop
    /* C15C 8013EC90 F7FF8004 */  bltz       $a0, .L8013EC70
    /* C160 8013EC94 1D80033C */   lui       $v1, %hi(D_801CE6BC)
    /* C164 8013EC98 00110400 */  sll        $v0, $a0, 4
    /* C168 8013EC9C 21104400 */  addu       $v0, $v0, $a0
    /* C16C 8013ECA0 BCE6638C */  lw         $v1, %lo(D_801CE6BC)($v1)
    /* C170 8013ECA4 40100200 */  sll        $v0, $v0, 1
    /* C174 8013ECA8 21104300 */  addu       $v0, $v0, $v1
    /* C178 8013ECAC 00004380 */  lb         $v1, 0x0($v0)
    /* C17C 8013ECB0 00000000 */  nop
    /* C180 8013ECB4 02006010 */  beqz       $v1, .L8013ECC0
    /* C184 8013ECB8 00000000 */   nop
    /* C188 8013ECBC 21100000 */  addu       $v0, $zero, $zero
  .L8013ECC0:
    /* C18C 8013ECC0 0800E003 */  jr         $ra
    /* C190 8013ECC4 00000000 */   nop
endlabel func_8013EC5C
