nonmatching func_800A0CC4, 0x84

glabel func_800A0CC4
    /* 8F4D4 800A0CC4 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 8F4D8 800A0CC8 0080063C */  lui        $a2, (0x8000001F >> 16)
    /* 8F4DC 800A0CCC 1F00C634 */  ori        $a2, $a2, (0x8000001F & 0xFFFF)
    /* 8F4E0 800A0CD0 1000B0AF */  sw         $s0, 0x10($sp)
    /* 8F4E4 800A0CD4 21808000 */  addu       $s0, $a0, $zero
    /* 8F4E8 800A0CD8 04000426 */  addiu      $a0, $s0, 0x4
    /* 8F4EC 800A0CDC FBFF0324 */  addiu      $v1, $zero, -0x5
    /* 8F4F0 800A0CE0 1400BFAF */  sw         $ra, 0x14($sp)
    /* 8F4F4 800A0CE4 5801028E */  lw         $v0, 0x158($s0)
    /* 8F4F8 800A0CE8 FEFF0524 */  addiu      $a1, $zero, -0x2
    /* 8F4FC 800A0CEC 24104300 */  and        $v0, $v0, $v1
    /* 8F500 800A0CF0 02004234 */  ori        $v0, $v0, 0x2
    /* 8F504 800A0CF4 24104500 */  and        $v0, $v0, $a1
    /* 8F508 800A0CF8 F7FF0324 */  addiu      $v1, $zero, -0x9
    /* 8F50C 800A0CFC 24104300 */  and        $v0, $v0, $v1
    /* 8F510 800A0D00 24104600 */  and        $v0, $v0, $a2
    /* 8F514 800A0D04 EFFF0524 */  addiu      $a1, $zero, -0x11
    /* 8F518 800A0D08 24104500 */  and        $v0, $v0, $a1
    /* 8F51C 800A0D0C BA82020C */  jal        func_800A0AE8
    /* 8F520 800A0D10 580102AE */   sw        $v0, 0x158($s0)
    /* 8F524 800A0D14 8780020C */  jal        func_800A021C
    /* 8F528 800A0D18 D8150426 */   addiu     $a0, $s0, 0x15D8
    /* 8F52C 800A0D1C 1400BF8F */  lw         $ra, 0x14($sp)
    /* 8F530 800A0D20 18000224 */  addiu      $v0, $zero, 0x18
    /* 8F534 800A0D24 000002AE */  sw         $v0, 0x0($s0)
    /* 8F538 800A0D28 CC1600AE */  sw         $zero, 0x16CC($s0)
    /* 8F53C 800A0D2C D41600AE */  sw         $zero, 0x16D4($s0)
    /* 8F540 800A0D30 AC1500AE */  sw         $zero, 0x15AC($s0)
    /* 8F544 800A0D34 3C1700AE */  sw         $zero, 0x173C($s0)
    /* 8F548 800A0D38 401700AE */  sw         $zero, 0x1740($s0)
    /* 8F54C 800A0D3C 1000B08F */  lw         $s0, 0x10($sp)
    /* 8F550 800A0D40 0800E003 */  jr         $ra
    /* 8F554 800A0D44 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_800A0CC4
