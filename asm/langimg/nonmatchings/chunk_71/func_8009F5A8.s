nonmatching func_8009F5A8, 0xE8

glabel func_8009F5A8
    /* 8DDB8 8009F5A8 0D80023C */  lui        $v0, %hi(D_800D6124)
    /* 8DDBC 8009F5AC 2461428C */  lw         $v0, %lo(D_800D6124)($v0)
    /* 8DDC0 8009F5B0 F8558383 */  lb         $v1, %gp_rel(D_800C9CE8)($gp)
    /* 8DDC4 8009F5B4 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 8DDC8 8009F5B8 1400BFAF */  sw         $ra, 0x14($sp)
    /* 8DDCC 8009F5BC 1000B0AF */  sw         $s0, 0x10($sp)
    /* 8DDD0 8009F5C0 80800200 */  sll        $s0, $v0, 2
    /* 8DDD4 8009F5C4 26006010 */  beqz       $v1, .L8009F660
    /* 8DDD8 8009F5C8 83801000 */   sra       $s0, $s0, 2
    /* 8DDDC 8009F5CC F455828F */  lw         $v0, %gp_rel(D_800C9CE4)($gp)
    /* 8DDE0 8009F5D0 00000000 */  nop
    /* 8DDE4 8009F5D4 23100202 */  subu       $v0, $s0, $v0
    /* 8DDE8 8009F5D8 6500422C */  sltiu      $v0, $v0, 0x65
    /* 8DDEC 8009F5DC 26004014 */  bnez       $v0, .L8009F678
    /* 8DDF0 8009F5E0 00000000 */   nop
    /* 8DDF4 8009F5E4 F9558283 */  lb         $v0, %gp_rel(D_800C9CE9)($gp)
    /* 8DDF8 8009F5E8 00000000 */  nop
    /* 8DDFC 8009F5EC 0B004014 */  bnez       $v0, .L8009F61C
    /* 8DE00 8009F5F0 3F000524 */   addiu     $a1, $zero, 0x3F
    /* 8DE04 8009F5F4 EB51023C */  lui        $v0, (0x51EB851F >> 16)
    /* 8DE08 8009F5F8 28788487 */  lh         $a0, %gp_rel(D_800CBF18)($gp)
    /* 8DE0C 8009F5FC 1F854234 */  ori        $v0, $v0, (0x51EB851F & 0xFFFF)
    /* 8DE10 8009F600 80190400 */  sll        $v1, $a0, 6
    /* 8DE14 8009F604 23186400 */  subu       $v1, $v1, $a0
    /* 8DE18 8009F608 18006200 */  mult       $v1, $v0
    /* 8DE1C 8009F60C C31F0300 */  sra        $v1, $v1, 31
    /* 8DE20 8009F610 10100000 */  mfhi       $v0
    /* 8DE24 8009F614 43110200 */  sra        $v0, $v0, 5
    /* 8DE28 8009F618 23284300 */  subu       $a1, $v0, $v1
  .L8009F61C:
    /* 8DE2C 8009F61C 8CBE010C */  jal        func_8006FA30
    /* 8DE30 8009F620 04000424 */   addiu     $a0, $zero, 0x4
    /* 8DE34 8009F624 F055858F */  lw         $a1, %gp_rel(D_800C9CE0)($gp)
    /* 8DE38 8009F628 FFFF0224 */  addiu      $v0, $zero, -0x1
    /* 8DE3C 8009F62C 0700A214 */  bne        $a1, $v0, .L8009F64C
    /* 8DE40 8009F630 0D80043C */   lui       $a0, %hi(D_800D11D0)
    /* 8DE44 8009F634 0A000424 */  addiu      $a0, $zero, 0xA
    /* 8DE48 8009F638 A1B2010C */  jal        func_8006CA84
    /* 8DE4C 8009F63C 7F000524 */   addiu     $a1, $zero, 0x7F
    /* 8DE50 8009F640 F05582AF */  sw         $v0, %gp_rel(D_800C9CE0)($gp)
    /* 8DE54 8009F644 21284000 */  addu       $a1, $v0, $zero
    /* 8DE58 8009F648 0D80043C */  lui        $a0, %hi(D_800D11D0)
  .L8009F64C:
    /* 8DE5C 8009F64C D0118424 */  addiu      $a0, $a0, %lo(D_800D11D0)
    /* 8DE60 8009F650 DA50000C */  jal        func_80014368
    /* 8DE64 8009F654 7F000624 */   addiu     $a2, $zero, 0x7F
    /* 8DE68 8009F658 9E7D0208 */  j          .L8009F678
    /* 8DE6C 8009F65C 00000000 */   nop
  .L8009F660:
    /* 8DE70 8009F660 F055848F */  lw         $a0, %gp_rel(D_800C9CE0)($gp)
    /* 8DE74 8009F664 CEB2010C */  jal        func_8006CB38
    /* 8DE78 8009F668 00000000 */   nop
    /* 8DE7C 8009F66C FFFF0224 */  addiu      $v0, $zero, -0x1
    /* 8DE80 8009F670 F05582AF */  sw         $v0, %gp_rel(D_800C9CE0)($gp)
    /* 8DE84 8009F674 F45590AF */  sw         $s0, %gp_rel(D_800C9CE4)($gp)
  .L8009F678:
    /* 8DE88 8009F678 1400BF8F */  lw         $ra, 0x14($sp)
    /* 8DE8C 8009F67C 1000B08F */  lw         $s0, 0x10($sp)
    /* 8DE90 8009F680 F85580A3 */  sb         $zero, %gp_rel(D_800C9CE8)($gp)
    /* 8DE94 8009F684 F95580A3 */  sb         $zero, %gp_rel(D_800C9CE9)($gp)
    /* 8DE98 8009F688 0800E003 */  jr         $ra
    /* 8DE9C 8009F68C 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_8009F5A8
