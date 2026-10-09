nonmatching func_8013ADA8, 0x90

glabel func_8013ADA8
    /* 8274 8013ADA8 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 8278 8013ADAC 1400B1AF */  sw         $s1, 0x14($sp)
    /* 827C 8013ADB0 21888000 */  addu       $s1, $a0, $zero
    /* 8280 8013ADB4 1000B0AF */  sw         $s0, 0x10($sp)
    /* 8284 8013ADB8 1800BFAF */  sw         $ra, 0x18($sp)
    /* 8288 8013ADBC B1EB040C */  jal        func_8013AEC4
    /* 828C 8013ADC0 2180A000 */   addu      $s0, $a1, $zero
    /* 8290 8013ADC4 1C80033C */  lui        $v1, %hi(D_801BDEC0)
    /* 8294 8013ADC8 C0DE638C */  lw         $v1, %lo(D_801BDEC0)($v1)
    /* 8298 8013ADCC 42811000 */  srl        $s0, $s0, 5
    /* 829C 8013ADD0 0000628C */  lw         $v0, 0x0($v1)
    /* 82A0 8013ADD4 00841000 */  sll        $s0, $s0, 16
    /* 82A4 8013ADD8 88004234 */  ori        $v0, $v0, 0x88
    /* 82A8 8013ADDC 000062AC */  sw         $v0, 0x0($v1)
    /* 82AC 8013ADE0 1C80033C */  lui        $v1, %hi(D_801BDE88)
    /* 82B0 8013ADE4 88DE638C */  lw         $v1, %lo(D_801BDE88)($v1)
    /* 82B4 8013ADE8 04002226 */  addiu      $v0, $s1, 0x4
    /* 82B8 8013ADEC 000062AC */  sw         $v0, 0x0($v1)
    /* 82BC 8013ADF0 1C80023C */  lui        $v0, %hi(D_801BDE8C)
    /* 82C0 8013ADF4 8CDE428C */  lw         $v0, %lo(D_801BDE8C)($v0)
    /* 82C4 8013ADF8 20001036 */  ori        $s0, $s0, 0x20
    /* 82C8 8013ADFC 000050AC */  sw         $s0, 0x0($v0)
    /* 82CC 8013AE00 1C80033C */  lui        $v1, %hi(D_801BDEB8)
    /* 82D0 8013AE04 B8DE638C */  lw         $v1, %lo(D_801BDEB8)($v1)
    /* 82D4 8013AE08 0000228E */  lw         $v0, 0x0($s1)
    /* 82D8 8013AE0C 0001043C */  lui        $a0, (0x1000201 >> 16)
    /* 82DC 8013AE10 000062AC */  sw         $v0, 0x0($v1)
    /* 82E0 8013AE14 1C80023C */  lui        $v0, %hi(D_801BDE90)
    /* 82E4 8013AE18 90DE428C */  lw         $v0, %lo(D_801BDE90)($v0)
    /* 82E8 8013AE1C 01028434 */  ori        $a0, $a0, (0x1000201 & 0xFFFF)
    /* 82EC 8013AE20 000044AC */  sw         $a0, 0x0($v0)
    /* 82F0 8013AE24 1800BF8F */  lw         $ra, 0x18($sp)
    /* 82F4 8013AE28 1400B18F */  lw         $s1, 0x14($sp)
    /* 82F8 8013AE2C 1000B08F */  lw         $s0, 0x10($sp)
    /* 82FC 8013AE30 0800E003 */  jr         $ra
    /* 8300 8013AE34 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_8013ADA8
