nonmatching func_800B22EC, 0x160

glabel func_800B22EC
    /* A0AFC 800B22EC E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* A0B00 800B22F0 1400B1AF */  sw         $s1, 0x14($sp)
    /* A0B04 800B22F4 21888000 */  addu       $s1, $a0, $zero
    /* A0B08 800B22F8 1800B2AF */  sw         $s2, 0x18($sp)
    /* A0B0C 800B22FC 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* A0B10 800B2300 1000B0AF */  sw         $s0, 0x10($sp)
    /* A0B14 800B2304 0C80013C */  lui        $at, %hi(D_800C3CC0)
    /* A0B18 800B2308 C03C20AC */  sw         $zero, %lo(D_800C3CC0)($at)
    /* A0B1C 800B230C 0C80013C */  lui        $at, %hi(D_800C3CD4)
    /* A0B20 800B2310 D43C20AC */  sw         $zero, %lo(D_800C3CD4)($at)
    /* A0B24 800B2314 53CA020C */  jal        func_800B294C
    /* A0B28 800B2318 2190A000 */   addu      $s2, $a1, $zero
    /* A0B2C 800B231C 0E80103C */  lui        $s0, %hi(D_800DE4E0)
    /* A0B30 800B2320 E0E41026 */  addiu      $s0, $s0, %lo(D_800DE4E0)
    /* A0B34 800B2324 0B80023C */  lui        $v0, %hi(func_800B24B4)
    /* A0B38 800B2328 B4244224 */  addiu      $v0, $v0, %lo(func_800B24B4)
    /* A0B3C 800B232C 0C80013C */  lui        $at, %hi(D_800C3C88)
    /* A0B40 800B2330 883C22AC */  sw         $v0, %lo(D_800C3C88)($at)
    /* A0B44 800B2334 0B80023C */  lui        $v0, %hi(func_800B244C)
    /* A0B48 800B2338 4C244224 */  addiu      $v0, $v0, %lo(func_800B244C)
    /* A0B4C 800B233C 0C80013C */  lui        $at, %hi(D_800C3C8C)
    /* A0B50 800B2340 8C3C22AC */  sw         $v0, %lo(D_800C3C8C)($at)
    /* A0B54 800B2344 0B80023C */  lui        $v0, %hi(func_800B25B8)
    /* A0B58 800B2348 B8254224 */  addiu      $v0, $v0, %lo(func_800B25B8)
    /* A0B5C 800B234C 0C80013C */  lui        $at, %hi(D_800C3C90)
    /* A0B60 800B2350 903C22AC */  sw         $v0, %lo(D_800C3C90)($at)
    /* A0B64 800B2354 0B80023C */  lui        $v0, %hi(func_800B2674)
    /* A0B68 800B2358 74264224 */  addiu      $v0, $v0, %lo(func_800B2674)
    /* A0B6C 800B235C 0C80013C */  lui        $at, %hi(D_800C3C94)
    /* A0B70 800B2360 943C22AC */  sw         $v0, %lo(D_800C3C94)($at)
    /* A0B74 800B2364 0B80023C */  lui        $v0, %hi(func_800B28F0)
    /* A0B78 800B2368 F0284224 */  addiu      $v0, $v0, %lo(func_800B28F0)
    /* A0B7C 800B236C 0C80013C */  lui        $at, %hi(D_800C3C98)
    /* A0B80 800B2370 983C22AC */  sw         $v0, %lo(D_800C3C98)($at)
    /* A0B84 800B2374 0B80023C */  lui        $v0, %hi(func_800B2928)
    /* A0B88 800B2378 28294224 */  addiu      $v0, $v0, %lo(func_800B2928)
    /* A0B8C 800B237C 0C80013C */  lui        $at, %hi(D_800C3C9C)
    /* A0B90 800B2380 9C3C22AC */  sw         $v0, %lo(D_800C3C9C)($at)
    /* A0B94 800B2384 0B80023C */  lui        $v0, %hi(func_800B25A8)
    /* A0B98 800B2388 A8254224 */  addiu      $v0, $v0, %lo(func_800B25A8)
    /* A0B9C 800B238C 21200002 */  addu       $a0, $s0, $zero
    /* A0BA0 800B2390 0C80013C */  lui        $at, %hi(D_800C3CBC)
    /* A0BA4 800B2394 BC3C30AC */  sw         $s0, %lo(D_800C3CBC)($at)
    /* A0BA8 800B2398 0C80013C */  lui        $at, %hi(D_800C3CAC)
    /* A0BAC 800B239C AC3C22AC */  sw         $v0, %lo(D_800C3CAC)($at)
    /* A0BB0 800B23A0 17D8020C */  jal        func_800B605C
    /* A0BB4 800B23A4 E0010524 */   addiu     $a1, $zero, 0x1E0
    /* A0BB8 800B23A8 21400000 */  addu       $t0, $zero, $zero
    /* A0BBC 800B23AC FF000924 */  addiu      $t1, $zero, 0xFF
    /* A0BC0 800B23B0 40000426 */  addiu      $a0, $s0, 0x40
    /* A0BC4 800B23B4 0E80073C */  lui        $a3, %hi(D_800DE498)
    /* A0BC8 800B23B8 98E4E724 */  addiu      $a3, $a3, %lo(D_800DE498)
    /* A0BCC 800B23BC 0E80063C */  lui        $a2, %hi(D_800DE450)
    /* A0BD0 800B23C0 50E4C624 */  addiu      $a2, $a2, %lo(D_800DE450)
    /* A0BD4 800B23C4 300011AE */  sw         $s1, 0x30($s0)
    /* A0BD8 800B23C8 200112AE */  sw         $s2, 0x120($s0)
  .L800B23CC:
    /* A0BDC 800B23CC F0FF828C */  lw         $v0, -0x10($a0)
    /* A0BE0 800B23D0 5D000526 */  addiu      $a1, $s0, 0x5D
    /* A0BE4 800B23D4 CCFF80AC */  sw         $zero, -0x34($a0)
    /* A0BE8 800B23D8 D0FF90AC */  sw         $s0, -0x30($a0)
    /* A0BEC 800B23DC 000049A0 */  sb         $t1, 0x0($v0)
    /* A0BF0 800B23E0 F0FF828C */  lw         $v0, -0x10($a0)
    /* A0BF4 800B23E4 05000324 */  addiu      $v1, $zero, 0x5
    /* A0BF8 800B23E8 010040A0 */  sb         $zero, 0x1($v0)
    /* A0BFC 800B23EC FCFF86AC */  sw         $a2, -0x4($a0)
    /* A0C00 800B23F0 000087AC */  sw         $a3, 0x0($a0)
  .L800B23F4:
    /* A0C04 800B23F4 0000A9A0 */  sb         $t1, 0x0($a1)
    /* A0C08 800B23F8 FFFF6324 */  addiu      $v1, $v1, -0x1
    /* A0C0C 800B23FC FDFF6104 */  bgez       $v1, .L800B23F4
    /* A0C10 800B2400 0100A524 */   addiu     $a1, $a1, 0x1
    /* A0C14 800B2404 2300E724 */  addiu      $a3, $a3, 0x23
    /* A0C18 800B2408 2300C624 */  addiu      $a2, $a2, 0x23
    /* A0C1C 800B240C 01000825 */  addiu      $t0, $t0, 0x1
    /* A0C20 800B2410 F0008424 */  addiu      $a0, $a0, 0xF0
    /* A0C24 800B2414 02000229 */  slti       $v0, $t0, 0x2
    /* A0C28 800B2418 ECFF4014 */  bnez       $v0, .L800B23CC
    /* A0C2C 800B241C F0001026 */   addiu     $s0, $s0, 0xF0
    /* A0C30 800B2420 F6C1020C */  jal        func_800B07D8
    /* A0C34 800B2424 00000000 */   nop
    /* A0C38 800B2428 01000224 */  addiu      $v0, $zero, 0x1
    /* A0C3C 800B242C 0C80013C */  lui        $at, %hi(D_800C3CC0)
    /* A0C40 800B2430 C03C22AC */  sw         $v0, %lo(D_800C3CC0)($at)
    /* A0C44 800B2434 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* A0C48 800B2438 1800B28F */  lw         $s2, 0x18($sp)
    /* A0C4C 800B243C 1400B18F */  lw         $s1, 0x14($sp)
    /* A0C50 800B2440 1000B08F */  lw         $s0, 0x10($sp)
    /* A0C54 800B2444 0800E003 */  jr         $ra
    /* A0C58 800B2448 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_800B22EC
