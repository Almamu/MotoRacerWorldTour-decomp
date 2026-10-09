nonmatching func_800A8CAC, 0xF0

glabel func_800A8CAC
    /* 974BC 800A8CAC 0C80033C */  lui        $v1, %hi(D_800BD2F0)
    /* 974C0 800A8CB0 F0D2638C */  lw         $v1, %lo(D_800BD2F0)($v1)
    /* 974C4 800A8CB4 00000000 */  nop
    /* 974C8 800A8CB8 B8016294 */  lhu        $v0, 0x1B8($v1)
    /* 974CC 800A8CBC 00000000 */  nop
    /* 974D0 800A8CC0 09004014 */  bnez       $v0, .L800A8CE8
    /* 974D4 800A8CC4 F8FFBD27 */   addiu     $sp, $sp, -0x8
    /* 974D8 800A8CC8 BA016294 */  lhu        $v0, 0x1BA($v1)
    /* 974DC 800A8CCC 00000000 */  nop
    /* 974E0 800A8CD0 06004014 */  bnez       $v0, .L800A8CEC
    /* 974E4 800A8CD4 FF3F0224 */   addiu     $v0, $zero, 0x3FFF
    /* 974E8 800A8CD8 800162A4 */  sh         $v0, 0x180($v1)
    /* 974EC 800A8CDC 820162A4 */  sh         $v0, 0x182($v1)
    /* 974F0 800A8CE0 0C80033C */  lui        $v1, %hi(D_800BD2F0)
    /* 974F4 800A8CE4 F0D2638C */  lw         $v1, %lo(D_800BD2F0)($v1)
  .L800A8CE8:
    /* 974F8 800A8CE8 FF3F0224 */  addiu      $v0, $zero, 0x3FFF
  .L800A8CEC:
    /* 974FC 800A8CEC B00162A4 */  sh         $v0, 0x1B0($v1)
    /* 97500 800A8CF0 B20162A4 */  sh         $v0, 0x1B2($v1)
    /* 97504 800A8CF4 01C00234 */  ori        $v0, $zero, 0xC001
    /* 97508 800A8CF8 AA0162A4 */  sh         $v0, 0x1AA($v1)
    /* 9750C 800A8CFC 0C80033C */  lui        $v1, %hi(D_800BD2DC)
    /* 97510 800A8D00 DCD2638C */  lw         $v1, %lo(D_800BD2DC)($v1)
    /* 97514 800A8D04 80000224 */  addiu      $v0, $zero, 0x80
    /* 97518 800A8D08 0200A2A3 */  sb         $v0, 0x2($sp)
    /* 9751C 800A8D0C 0000A2A3 */  sb         $v0, 0x0($sp)
    /* 97520 800A8D10 02000224 */  addiu      $v0, $zero, 0x2
    /* 97524 800A8D14 0300A0A3 */  sb         $zero, 0x3($sp)
    /* 97528 800A8D18 0100A0A3 */  sb         $zero, 0x1($sp)
    /* 9752C 800A8D1C 000062A0 */  sb         $v0, 0x0($v1)
    /* 97530 800A8D20 0C80033C */  lui        $v1, %hi(D_800BD2E4)
    /* 97534 800A8D24 E4D2638C */  lw         $v1, %lo(D_800BD2E4)($v1)
    /* 97538 800A8D28 0000A293 */  lbu        $v0, 0x0($sp)
    /* 9753C 800A8D2C 00000000 */  nop
    /* 97540 800A8D30 000062A0 */  sb         $v0, 0x0($v1)
    /* 97544 800A8D34 0C80033C */  lui        $v1, %hi(D_800BD2E8)
    /* 97548 800A8D38 E8D2638C */  lw         $v1, %lo(D_800BD2E8)($v1)
    /* 9754C 800A8D3C 0100A293 */  lbu        $v0, 0x1($sp)
    /* 97550 800A8D40 00000000 */  nop
    /* 97554 800A8D44 000062A0 */  sb         $v0, 0x0($v1)
    /* 97558 800A8D48 0C80033C */  lui        $v1, %hi(D_800BD2DC)
    /* 9755C 800A8D4C DCD2638C */  lw         $v1, %lo(D_800BD2DC)($v1)
    /* 97560 800A8D50 03000224 */  addiu      $v0, $zero, 0x3
    /* 97564 800A8D54 000062A0 */  sb         $v0, 0x0($v1)
    /* 97568 800A8D58 0C80033C */  lui        $v1, %hi(D_800BD2E0)
    /* 9756C 800A8D5C E0D2638C */  lw         $v1, %lo(D_800BD2E0)($v1)
    /* 97570 800A8D60 0200A293 */  lbu        $v0, 0x2($sp)
    /* 97574 800A8D64 00000000 */  nop
    /* 97578 800A8D68 000062A0 */  sb         $v0, 0x0($v1)
    /* 9757C 800A8D6C 0C80033C */  lui        $v1, %hi(D_800BD2E4)
    /* 97580 800A8D70 E4D2638C */  lw         $v1, %lo(D_800BD2E4)($v1)
    /* 97584 800A8D74 0300A293 */  lbu        $v0, 0x3($sp)
    /* 97588 800A8D78 00000000 */  nop
    /* 9758C 800A8D7C 000062A0 */  sb         $v0, 0x0($v1)
    /* 97590 800A8D80 0C80033C */  lui        $v1, %hi(D_800BD2E8)
    /* 97594 800A8D84 E8D2638C */  lw         $v1, %lo(D_800BD2E8)($v1)
    /* 97598 800A8D88 20000224 */  addiu      $v0, $zero, 0x20
    /* 9759C 800A8D8C 000062A0 */  sb         $v0, 0x0($v1)
    /* 975A0 800A8D90 21100000 */  addu       $v0, $zero, $zero
    /* 975A4 800A8D94 0800E003 */  jr         $ra
    /* 975A8 800A8D98 0800BD27 */   addiu     $sp, $sp, 0x8
endlabel func_800A8CAC
