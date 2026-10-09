nonmatching func_8002659C, 0xAC

glabel func_8002659C
    /* 14DAC 8002659C E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 14DB0 800265A0 1000B0AF */  sw         $s0, 0x10($sp)
    /* 14DB4 800265A4 21808000 */  addu       $s0, $a0, $zero
    /* 14DB8 800265A8 1800BFAF */  sw         $ra, 0x18($sp)
    /* 14DBC 800265AC 1400B1AF */  sw         $s1, 0x14($sp)
    /* 14DC0 800265B0 6191000C */  jal        func_80024584
    /* 14DC4 800265B4 E80000AE */   sw        $zero, 0xE8($s0)
    /* 14DC8 800265B8 52B9000C */  jal        func_8002E548
    /* 14DCC 800265BC 21200002 */   addu      $a0, $s0, $zero
    /* 14DD0 800265C0 21200002 */  addu       $a0, $s0, $zero
    /* 14DD4 800265C4 A005028E */  lw         $v0, 0x5A0($s0)
    /* 14DD8 800265C8 01001124 */  addiu      $s1, $zero, 0x1
    /* 14DDC 800265CC 26004394 */  lhu        $v1, 0x26($v0)
    /* 14DE0 800265D0 02000224 */  addiu      $v0, $zero, 0x2
    /* 14DE4 800265D4 FA0300A6 */  sh         $zero, 0x3FA($s0)
    /* 14DE8 800265D8 CC0202AE */  sw         $v0, 0x2CC($s0)
    /* 14DEC 800265DC F00000A6 */  sh         $zero, 0xF0($s0)
    /* 14DF0 800265E0 F20000A6 */  sh         $zero, 0xF2($s0)
    /* 14DF4 800265E4 F40311A2 */  sb         $s1, 0x3F4($s0)
    /* 14DF8 800265E8 F50300A2 */  sb         $zero, 0x3F5($s0)
    /* 14DFC 800265EC 100100AE */  sw         $zero, 0x110($s0)
    /* 14E00 800265F0 F40000AE */  sw         $zero, 0xF4($s0)
    /* 14E04 800265F4 368C010C */  jal        func_800630D8
    /* 14E08 800265F8 BC0203A6 */   sh        $v1, 0x2BC($s0)
    /* 14E0C 800265FC 5400038E */  lw         $v1, 0x54($s0)
    /* 14E10 80026600 1800BF8F */  lw         $ra, 0x18($sp)
    /* 14E14 80026604 0C0411A2 */  sb         $s1, 0x40C($s0)
    /* 14E18 80026608 1400B18F */  lw         $s1, 0x14($sp)
    /* 14E1C 8002660C 00100224 */  addiu      $v0, $zero, 0x1000
    /* 14E20 80026610 C00200AE */  sw         $zero, 0x2C0($s0)
    /* 14E24 80026614 F00202AE */  sw         $v0, 0x2F0($s0)
    /* 14E28 80026618 D90400A2 */  sb         $zero, 0x4D9($s0)
    /* 14E2C 8002661C D80400A2 */  sb         $zero, 0x4D8($s0)
    /* 14E30 80026620 DA0400A2 */  sb         $zero, 0x4DA($s0)
    /* 14E34 80026624 2C0500A2 */  sb         $zero, 0x52C($s0)
    /* 14E38 80026628 2D0500A2 */  sb         $zero, 0x52D($s0)
    /* 14E3C 8002662C 2E0500A2 */  sb         $zero, 0x52E($s0)
    /* 14E40 80026630 2F0500A2 */  sb         $zero, 0x52F($s0)
    /* 14E44 80026634 1000B08F */  lw         $s0, 0x10($sp)
    /* 14E48 80026638 01000224 */  addiu      $v0, $zero, 0x1
    /* 14E4C 8002663C 640562AC */  sw         $v0, 0x564($v1)
    /* 14E50 80026640 0800E003 */  jr         $ra
    /* 14E54 80026644 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_8002659C
