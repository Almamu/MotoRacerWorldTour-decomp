nonmatching func_800A8BD8, 0xD4

glabel func_800A8BD8
    /* 973E8 800A8BD8 0C80033C */  lui        $v1, %hi(D_800BD2DC)
    /* 973EC 800A8BDC DCD2638C */  lw         $v1, %lo(D_800BD2DC)($v1)
    /* 973F0 800A8BE0 01000224 */  addiu      $v0, $zero, 0x1
    /* 973F4 800A8BE4 000062A0 */  sb         $v0, 0x0($v1)
    /* 973F8 800A8BE8 0C80023C */  lui        $v0, %hi(D_800BD2E8)
    /* 973FC 800A8BEC E8D2428C */  lw         $v0, %lo(D_800BD2E8)($v0)
    /* 97400 800A8BF0 00000000 */  nop
    /* 97404 800A8BF4 00004290 */  lbu        $v0, 0x0($v0)
    /* 97408 800A8BF8 00000000 */  nop
    /* 9740C 800A8BFC 07004230 */  andi       $v0, $v0, 0x7
    /* 97410 800A8C00 16004010 */  beqz       $v0, .L800A8C5C
    /* 97414 800A8C04 01000424 */   addiu     $a0, $zero, 0x1
    /* 97418 800A8C08 07000324 */  addiu      $v1, $zero, 0x7
  .L800A8C0C:
    /* 9741C 800A8C0C 0C80023C */  lui        $v0, %hi(D_800BD2DC)
    /* 97420 800A8C10 DCD2428C */  lw         $v0, %lo(D_800BD2DC)($v0)
    /* 97424 800A8C14 00000000 */  nop
    /* 97428 800A8C18 000044A0 */  sb         $a0, 0x0($v0)
    /* 9742C 800A8C1C 0C80023C */  lui        $v0, %hi(D_800BD2E8)
    /* 97430 800A8C20 E8D2428C */  lw         $v0, %lo(D_800BD2E8)($v0)
    /* 97434 800A8C24 00000000 */  nop
    /* 97438 800A8C28 000043A0 */  sb         $v1, 0x0($v0)
    /* 9743C 800A8C2C 0C80023C */  lui        $v0, %hi(D_800BD2E4)
    /* 97440 800A8C30 E4D2428C */  lw         $v0, %lo(D_800BD2E4)($v0)
    /* 97444 800A8C34 00000000 */  nop
    /* 97448 800A8C38 000043A0 */  sb         $v1, 0x0($v0)
    /* 9744C 800A8C3C 0C80023C */  lui        $v0, %hi(D_800BD2E8)
    /* 97450 800A8C40 E8D2428C */  lw         $v0, %lo(D_800BD2E8)($v0)
    /* 97454 800A8C44 00000000 */  nop
    /* 97458 800A8C48 00004290 */  lbu        $v0, 0x0($v0)
    /* 9745C 800A8C4C 00000000 */  nop
    /* 97460 800A8C50 07004230 */  andi       $v0, $v0, 0x7
    /* 97464 800A8C54 EDFF4014 */  bnez       $v0, .L800A8C0C
    /* 97468 800A8C58 00000000 */   nop
  .L800A8C5C:
    /* 9746C 800A8C5C 0C80033C */  lui        $v1, %hi(D_800BD2F4)
    /* 97470 800A8C60 F4D26324 */  addiu      $v1, $v1, %lo(D_800BD2F4)
    /* 97474 800A8C64 020060A0 */  sb         $zero, 0x2($v1)
    /* 97478 800A8C68 02006290 */  lbu        $v0, 0x2($v1)
    /* 9747C 800A8C6C 00000000 */  nop
    /* 97480 800A8C70 010062A0 */  sb         $v0, 0x1($v1)
    /* 97484 800A8C74 0C80043C */  lui        $a0, %hi(D_800BD2DC)
    /* 97488 800A8C78 DCD2848C */  lw         $a0, %lo(D_800BD2DC)($a0)
    /* 9748C 800A8C7C 02000224 */  addiu      $v0, $zero, 0x2
    /* 97490 800A8C80 000062A0 */  sb         $v0, 0x0($v1)
    /* 97494 800A8C84 000080A0 */  sb         $zero, 0x0($a0)
    /* 97498 800A8C88 0C80023C */  lui        $v0, %hi(D_800BD2E8)
    /* 9749C 800A8C8C E8D2428C */  lw         $v0, %lo(D_800BD2E8)($v0)
    /* 974A0 800A8C90 00000000 */  nop
    /* 974A4 800A8C94 000040A0 */  sb         $zero, 0x0($v0)
    /* 974A8 800A8C98 0C80033C */  lui        $v1, %hi(D_800BD2EC)
    /* 974AC 800A8C9C ECD2638C */  lw         $v1, %lo(D_800BD2EC)($v1)
    /* 974B0 800A8CA0 25130224 */  addiu      $v0, $zero, 0x1325
    /* 974B4 800A8CA4 0800E003 */  jr         $ra
    /* 974B8 800A8CA8 000062AC */   sw        $v0, 0x0($v1)
endlabel func_800A8BD8
