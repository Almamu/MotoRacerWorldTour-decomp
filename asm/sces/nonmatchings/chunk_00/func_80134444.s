/* Handwritten function */
nonmatching func_80134444, 0x504

glabel func_80134444
    /* 1910 80134444 2178A000 */  addu       $t7, $a1, $zero
    /* 1914 80134448 21C0E001 */  addu       $t8, $t7, $zero
    /* 1918 8013444C 0300E724 */  addiu      $a3, $a3, 0x3
    /* 191C 80134450 83380700 */  sra        $a3, $a3, 2
    /* 1920 80134454 0300C624 */  addiu      $a2, $a2, 0x3
    /* 1924 80134458 83300600 */  sra        $a2, $a2, 2
    /* 1928 8013445C 40C80600 */  sll        $t9, $a2, 1
    /* 192C 80134460 801F0E3C */  lui        $t6, (0x1F800200 >> 16)
  .L80134464:
    /* 1930 80134464 0002CE35 */  ori        $t6, $t6, (0x1F800200 & 0xFFFF)
    /* 1934 80134468 801F0B3C */  lui        $t3, (0x1F800200 >> 16)
    /* 1938 8013446C 00026B35 */  ori        $t3, $t3, (0x1F800200 & 0xFFFF)
    /* 193C 80134470 21682603 */  addu       $t5, $t9, $a2
    /* 1940 80134474 801F0A3C */  lui        $t2, (0x1F80020C >> 16)
    /* 1944 80134478 0C024A35 */  ori        $t2, $t2, (0x1F80020C & 0xFFFF)
    /* 1948 8013447C 0C000C27 */  addiu      $t4, $t8, 0xC
    /* 194C 80134480 801F083C */  lui        $t0, (0x1F800208 >> 16)
    /* 1950 80134484 08020835 */  ori        $t0, $t0, (0x1F800208 & 0xFFFF)
    /* 1954 80134488 08000927 */  addiu      $t1, $t8, 0x8
  .L8013448C:
    /* 1958 8013448C FCFF238D */  lw         $v1, -0x4($t1)
    /* 195C 80134490 0000248D */  lw         $a0, 0x0($t1)
    /* 1960 80134494 10002925 */  addiu      $t1, $t1, 0x10
    /* 1964 80134498 0000858D */  lw         $a1, 0x0($t4)
    /* 1968 8013449C 10008C25 */  addiu      $t4, $t4, 0x10
    /* 196C 801344A0 0000028F */  lw         $v0, 0x0($t8)
    /* 1970 801344A4 10001827 */  addiu      $t8, $t8, 0x10
    /* 1974 801344A8 FFFFAD25 */  addiu      $t5, $t5, -0x1
    /* 1978 801344AC 000062AD */  sw         $v0, 0x0($t3)
    /* 197C 801344B0 FCFF03AD */  sw         $v1, -0x4($t0)
    /* 1980 801344B4 000004AD */  sw         $a0, 0x0($t0)
    /* 1984 801344B8 10000825 */  addiu      $t0, $t0, 0x10
    /* 1988 801344BC 000045AD */  sw         $a1, 0x0($t2)
    /* 198C 801344C0 10004A25 */  addiu      $t2, $t2, 0x10
    /* 1990 801344C4 F1FFA015 */  bnez       $t5, .L8013448C
    /* 1994 801344C8 10006B25 */   addiu     $t3, $t3, 0x10
    /* 1998 801344CC 2148C000 */  addu       $t1, $a2, $zero
    /* 199C 801344D0 0600EC25 */  addiu      $t4, $t7, 0x6
    /* 19A0 801344D4 0B00CB25 */  addiu      $t3, $t6, 0xB
    /* 19A4 801344D8 0400EA25 */  addiu      $t2, $t7, 0x4
    /* 19A8 801344DC 0A00C825 */  addiu      $t0, $t6, 0xA
  .L801344E0:
    /* 19AC 801344E0 0000C391 */  lbu        $v1, 0x0($t6)
    /* 19B0 801344E4 F7FF0491 */  lbu        $a0, -0x9($t0)
    /* 19B4 801344E8 F8FF0591 */  lbu        $a1, -0x8($t0)
    /* 19B8 801344EC FCFF6324 */  addiu      $v1, $v1, -0x4
    /* 19BC 801344F0 FCFF8424 */  addiu      $a0, $a0, -0x4
    /* 19C0 801344F4 FCFFA524 */  addiu      $a1, $a1, -0x4
    /* 19C4 801344F8 00190300 */  sll        $v1, $v1, 4
    /* 19C8 801344FC 00210400 */  sll        $a0, $a0, 4
    /* 19CC 80134500 00290500 */  sll        $a1, $a1, 4
    /* 19D0 80134504 00488348 */  mtc2       $v1, $9 /* handwritten instruction */
    /* 19D4 80134508 00508448 */  mtc2       $a0, $10 /* handwritten instruction */
    /* 19D8 8013450C 00588548 */  mtc2       $a1, $11 /* handwritten instruction */
    /* 19DC 80134510 F9FF0391 */  lbu        $v1, -0x7($t0)
    /* 19E0 80134514 FAFF0491 */  lbu        $a0, -0x6($t0)
    /* 19E4 80134518 FBFF0591 */  lbu        $a1, -0x5($t0)
    /* 19E8 8013451C 00E80248 */  mfc2       $v0, $29 /* handwritten instruction */
    /* 19EC 80134520 00000000 */  nop
    /* 19F0 80134524 0000E2A5 */  sh         $v0, 0x0($t7)
    /* 19F4 80134528 00190300 */  sll        $v1, $v1, 4
    /* 19F8 8013452C 00210400 */  sll        $a0, $a0, 4
    /* 19FC 80134530 00290500 */  sll        $a1, $a1, 4
    /* 1A00 80134534 00488348 */  mtc2       $v1, $9 /* handwritten instruction */
    /* 1A04 80134538 00508448 */  mtc2       $a0, $10 /* handwritten instruction */
    /* 1A08 8013453C 00588548 */  mtc2       $a1, $11 /* handwritten instruction */
    /* 1A0C 80134540 FCFF0391 */  lbu        $v1, -0x4($t0)
    /* 1A10 80134544 FDFF0491 */  lbu        $a0, -0x3($t0)
    /* 1A14 80134548 FEFF0591 */  lbu        $a1, -0x2($t0)
    /* 1A18 8013454C 00E80248 */  mfc2       $v0, $29 /* handwritten instruction */
    /* 1A1C 80134550 00000000 */  nop
    /* 1A20 80134554 FEFF42A5 */  sh         $v0, -0x2($t2)
    /* 1A24 80134558 FDFF6324 */  addiu      $v1, $v1, -0x3
    /* 1A28 8013455C FDFF8424 */  addiu      $a0, $a0, -0x3
    /* 1A2C 80134560 FDFFA524 */  addiu      $a1, $a1, -0x3
    /* 1A30 80134564 00190300 */  sll        $v1, $v1, 4
    /* 1A34 80134568 00210400 */  sll        $a0, $a0, 4
    /* 1A38 8013456C 00290500 */  sll        $a1, $a1, 4
    /* 1A3C 80134570 00488348 */  mtc2       $v1, $9 /* handwritten instruction */
    /* 1A40 80134574 00508448 */  mtc2       $a0, $10 /* handwritten instruction */
    /* 1A44 80134578 00588548 */  mtc2       $a1, $11 /* handwritten instruction */
    /* 1A48 8013457C FFFF0391 */  lbu        $v1, -0x1($t0)
    /* 1A4C 80134580 00000491 */  lbu        $a0, 0x0($t0)
    /* 1A50 80134584 00006591 */  lbu        $a1, 0x0($t3)
    /* 1A54 80134588 00E80248 */  mfc2       $v0, $29 /* handwritten instruction */
    /* 1A58 8013458C 00000000 */  nop
    /* 1A5C 80134590 000042A5 */  sh         $v0, 0x0($t2)
    /* 1A60 80134594 01006324 */  addiu      $v1, $v1, 0x1
    /* 1A64 80134598 01008424 */  addiu      $a0, $a0, 0x1
    /* 1A68 8013459C 0100A524 */  addiu      $a1, $a1, 0x1
    /* 1A6C 801345A0 00190300 */  sll        $v1, $v1, 4
    /* 1A70 801345A4 00210400 */  sll        $a0, $a0, 4
    /* 1A74 801345A8 00290500 */  sll        $a1, $a1, 4
    /* 1A78 801345AC 00488348 */  mtc2       $v1, $9 /* handwritten instruction */
    /* 1A7C 801345B0 00508448 */  mtc2       $a0, $10 /* handwritten instruction */
    /* 1A80 801345B4 00588548 */  mtc2       $a1, $11 /* handwritten instruction */
    /* 1A84 801345B8 FFFF2925 */  addiu      $t1, $t1, -0x1
    /* 1A88 801345BC 0C000825 */  addiu      $t0, $t0, 0xC
    /* 1A8C 801345C0 0C006B25 */  addiu      $t3, $t3, 0xC
    /* 1A90 801345C4 0C00CE25 */  addiu      $t6, $t6, 0xC
    /* 1A94 801345C8 00E80248 */  mfc2       $v0, $29 /* handwritten instruction */
    /* 1A98 801345CC 08004A25 */  addiu      $t2, $t2, 0x8
    /* 1A9C 801345D0 000082A5 */  sh         $v0, 0x0($t4)
    /* 1AA0 801345D4 08008C25 */  addiu      $t4, $t4, 0x8
    /* 1AA4 801345D8 C1FF2015 */  bnez       $t1, .L801344E0
    /* 1AA8 801345DC 0800EF25 */   addiu     $t7, $t7, 0x8
    /* 1AAC 801345E0 2148C000 */  addu       $t1, $a2, $zero
    /* 1AB0 801345E4 0600EC25 */  addiu      $t4, $t7, 0x6
    /* 1AB4 801345E8 0B00CB25 */  addiu      $t3, $t6, 0xB
    /* 1AB8 801345EC 0400EA25 */  addiu      $t2, $t7, 0x4
    /* 1ABC 801345F0 0A00C825 */  addiu      $t0, $t6, 0xA
  .L801345F4:
    /* 1AC0 801345F4 0000C391 */  lbu        $v1, 0x0($t6)
    /* 1AC4 801345F8 F7FF0491 */  lbu        $a0, -0x9($t0)
    /* 1AC8 801345FC F8FF0591 */  lbu        $a1, -0x8($t0)
    /* 1ACC 80134600 02006324 */  addiu      $v1, $v1, 0x2
    /* 1AD0 80134604 02008424 */  addiu      $a0, $a0, 0x2
    /* 1AD4 80134608 0200A524 */  addiu      $a1, $a1, 0x2
    /* 1AD8 8013460C 00190300 */  sll        $v1, $v1, 4
    /* 1ADC 80134610 00210400 */  sll        $a0, $a0, 4
    /* 1AE0 80134614 00290500 */  sll        $a1, $a1, 4
    /* 1AE4 80134618 00488348 */  mtc2       $v1, $9 /* handwritten instruction */
    /* 1AE8 8013461C 00508448 */  mtc2       $a0, $10 /* handwritten instruction */
    /* 1AEC 80134620 00588548 */  mtc2       $a1, $11 /* handwritten instruction */
    /* 1AF0 80134624 F9FF0391 */  lbu        $v1, -0x7($t0)
    /* 1AF4 80134628 FAFF0491 */  lbu        $a0, -0x6($t0)
    /* 1AF8 8013462C FBFF0591 */  lbu        $a1, -0x5($t0)
    /* 1AFC 80134630 00E80248 */  mfc2       $v0, $29 /* handwritten instruction */
    /* 1B00 80134634 00000000 */  nop
    /* 1B04 80134638 0000E2A5 */  sh         $v0, 0x0($t7)
    /* 1B08 8013463C FEFF6324 */  addiu      $v1, $v1, -0x2
    /* 1B0C 80134640 FEFF8424 */  addiu      $a0, $a0, -0x2
    /* 1B10 80134644 FEFFA524 */  addiu      $a1, $a1, -0x2
    /* 1B14 80134648 00190300 */  sll        $v1, $v1, 4
    /* 1B18 8013464C 00210400 */  sll        $a0, $a0, 4
    /* 1B1C 80134650 00290500 */  sll        $a1, $a1, 4
    /* 1B20 80134654 00488348 */  mtc2       $v1, $9 /* handwritten instruction */
    /* 1B24 80134658 00508448 */  mtc2       $a0, $10 /* handwritten instruction */
    /* 1B28 8013465C 00588548 */  mtc2       $a1, $11 /* handwritten instruction */
    /* 1B2C 80134660 FCFF0391 */  lbu        $v1, -0x4($t0)
    /* 1B30 80134664 FDFF0491 */  lbu        $a0, -0x3($t0)
    /* 1B34 80134668 FEFF0591 */  lbu        $a1, -0x2($t0)
    /* 1B38 8013466C 00E80248 */  mfc2       $v0, $29 /* handwritten instruction */
    /* 1B3C 80134670 00000000 */  nop
    /* 1B40 80134674 FEFF42A5 */  sh         $v0, -0x2($t2)
    /* 1B44 80134678 03006324 */  addiu      $v1, $v1, 0x3
    /* 1B48 8013467C 03008424 */  addiu      $a0, $a0, 0x3
    /* 1B4C 80134680 0300A524 */  addiu      $a1, $a1, 0x3
    /* 1B50 80134684 00190300 */  sll        $v1, $v1, 4
    /* 1B54 80134688 00210400 */  sll        $a0, $a0, 4
    /* 1B58 8013468C 00290500 */  sll        $a1, $a1, 4
    /* 1B5C 80134690 00488348 */  mtc2       $v1, $9 /* handwritten instruction */
    /* 1B60 80134694 00508448 */  mtc2       $a0, $10 /* handwritten instruction */
    /* 1B64 80134698 00588548 */  mtc2       $a1, $11 /* handwritten instruction */
    /* 1B68 8013469C FFFF0391 */  lbu        $v1, -0x1($t0)
    /* 1B6C 801346A0 00000491 */  lbu        $a0, 0x0($t0)
    /* 1B70 801346A4 00006591 */  lbu        $a1, 0x0($t3)
    /* 1B74 801346A8 00E80248 */  mfc2       $v0, $29 /* handwritten instruction */
    /* 1B78 801346AC 00000000 */  nop
    /* 1B7C 801346B0 000042A5 */  sh         $v0, 0x0($t2)
    /* 1B80 801346B4 FFFF6324 */  addiu      $v1, $v1, -0x1
    /* 1B84 801346B8 FFFF8424 */  addiu      $a0, $a0, -0x1
    /* 1B88 801346BC FFFFA524 */  addiu      $a1, $a1, -0x1
    /* 1B8C 801346C0 00190300 */  sll        $v1, $v1, 4
    /* 1B90 801346C4 00210400 */  sll        $a0, $a0, 4
    /* 1B94 801346C8 00290500 */  sll        $a1, $a1, 4
    /* 1B98 801346CC 00488348 */  mtc2       $v1, $9 /* handwritten instruction */
    /* 1B9C 801346D0 00508448 */  mtc2       $a0, $10 /* handwritten instruction */
    /* 1BA0 801346D4 00588548 */  mtc2       $a1, $11 /* handwritten instruction */
    /* 1BA4 801346D8 FFFF2925 */  addiu      $t1, $t1, -0x1
    /* 1BA8 801346DC 0C000825 */  addiu      $t0, $t0, 0xC
    /* 1BAC 801346E0 0C006B25 */  addiu      $t3, $t3, 0xC
    /* 1BB0 801346E4 0C00CE25 */  addiu      $t6, $t6, 0xC
    /* 1BB4 801346E8 00E80248 */  mfc2       $v0, $29 /* handwritten instruction */
    /* 1BB8 801346EC 08004A25 */  addiu      $t2, $t2, 0x8
    /* 1BBC 801346F0 000082A5 */  sh         $v0, 0x0($t4)
    /* 1BC0 801346F4 08008C25 */  addiu      $t4, $t4, 0x8
    /* 1BC4 801346F8 BEFF2015 */  bnez       $t1, .L801345F4
    /* 1BC8 801346FC 0800EF25 */   addiu     $t7, $t7, 0x8
    /* 1BCC 80134700 2148C000 */  addu       $t1, $a2, $zero
    /* 1BD0 80134704 0600EC25 */  addiu      $t4, $t7, 0x6
    /* 1BD4 80134708 0B00CB25 */  addiu      $t3, $t6, 0xB
    /* 1BD8 8013470C 0400EA25 */  addiu      $t2, $t7, 0x4
    /* 1BDC 80134710 0A00C825 */  addiu      $t0, $t6, 0xA
  .L80134714:
    /* 1BE0 80134714 0000C391 */  lbu        $v1, 0x0($t6)
    /* 1BE4 80134718 F7FF0491 */  lbu        $a0, -0x9($t0)
    /* 1BE8 8013471C F8FF0591 */  lbu        $a1, -0x8($t0)
    /* 1BEC 80134720 FDFF6324 */  addiu      $v1, $v1, -0x3
    /* 1BF0 80134724 FDFF8424 */  addiu      $a0, $a0, -0x3
    /* 1BF4 80134728 FDFFA524 */  addiu      $a1, $a1, -0x3
    /* 1BF8 8013472C 00190300 */  sll        $v1, $v1, 4
    /* 1BFC 80134730 00210400 */  sll        $a0, $a0, 4
    /* 1C00 80134734 00290500 */  sll        $a1, $a1, 4
    /* 1C04 80134738 00488348 */  mtc2       $v1, $9 /* handwritten instruction */
    /* 1C08 8013473C 00508448 */  mtc2       $a0, $10 /* handwritten instruction */
    /* 1C0C 80134740 00588548 */  mtc2       $a1, $11 /* handwritten instruction */
    /* 1C10 80134744 F9FF0391 */  lbu        $v1, -0x7($t0)
    /* 1C14 80134748 FAFF0491 */  lbu        $a0, -0x6($t0)
    /* 1C18 8013474C FBFF0591 */  lbu        $a1, -0x5($t0)
    /* 1C1C 80134750 00E80248 */  mfc2       $v0, $29 /* handwritten instruction */
    /* 1C20 80134754 00000000 */  nop
    /* 1C24 80134758 0000E2A5 */  sh         $v0, 0x0($t7)
    /* 1C28 8013475C 01006324 */  addiu      $v1, $v1, 0x1
    /* 1C2C 80134760 01008424 */  addiu      $a0, $a0, 0x1
    /* 1C30 80134764 0100A524 */  addiu      $a1, $a1, 0x1
    /* 1C34 80134768 00190300 */  sll        $v1, $v1, 4
    /* 1C38 8013476C 00210400 */  sll        $a0, $a0, 4
    /* 1C3C 80134770 00290500 */  sll        $a1, $a1, 4
    /* 1C40 80134774 00488348 */  mtc2       $v1, $9 /* handwritten instruction */
    /* 1C44 80134778 00508448 */  mtc2       $a0, $10 /* handwritten instruction */
    /* 1C48 8013477C 00588548 */  mtc2       $a1, $11 /* handwritten instruction */
    /* 1C4C 80134780 FCFF0391 */  lbu        $v1, -0x4($t0)
    /* 1C50 80134784 FDFF0491 */  lbu        $a0, -0x3($t0)
    /* 1C54 80134788 FEFF0591 */  lbu        $a1, -0x2($t0)
    /* 1C58 8013478C 00E80248 */  mfc2       $v0, $29 /* handwritten instruction */
    /* 1C5C 80134790 00000000 */  nop
    /* 1C60 80134794 FEFF42A5 */  sh         $v0, -0x2($t2)
    /* 1C64 80134798 FCFF6324 */  addiu      $v1, $v1, -0x4
    /* 1C68 8013479C FCFF8424 */  addiu      $a0, $a0, -0x4
    /* 1C6C 801347A0 FCFFA524 */  addiu      $a1, $a1, -0x4
    /* 1C70 801347A4 00190300 */  sll        $v1, $v1, 4
    /* 1C74 801347A8 00210400 */  sll        $a0, $a0, 4
    /* 1C78 801347AC 00290500 */  sll        $a1, $a1, 4
    /* 1C7C 801347B0 00488348 */  mtc2       $v1, $9 /* handwritten instruction */
    /* 1C80 801347B4 00508448 */  mtc2       $a0, $10 /* handwritten instruction */
    /* 1C84 801347B8 00588548 */  mtc2       $a1, $11 /* handwritten instruction */
    /* 1C88 801347BC FFFF0391 */  lbu        $v1, -0x1($t0)
    /* 1C8C 801347C0 00000491 */  lbu        $a0, 0x0($t0)
    /* 1C90 801347C4 00006591 */  lbu        $a1, 0x0($t3)
    /* 1C94 801347C8 00E80248 */  mfc2       $v0, $29 /* handwritten instruction */
    /* 1C98 801347CC 00000000 */  nop
    /* 1C9C 801347D0 000042A5 */  sh         $v0, 0x0($t2)
    /* 1CA0 801347D4 00190300 */  sll        $v1, $v1, 4
    /* 1CA4 801347D8 00210400 */  sll        $a0, $a0, 4
    /* 1CA8 801347DC 00290500 */  sll        $a1, $a1, 4
    /* 1CAC 801347E0 00488348 */  mtc2       $v1, $9 /* handwritten instruction */
    /* 1CB0 801347E4 00508448 */  mtc2       $a0, $10 /* handwritten instruction */
    /* 1CB4 801347E8 00588548 */  mtc2       $a1, $11 /* handwritten instruction */
    /* 1CB8 801347EC FFFF2925 */  addiu      $t1, $t1, -0x1
    /* 1CBC 801347F0 0C000825 */  addiu      $t0, $t0, 0xC
    /* 1CC0 801347F4 0C006B25 */  addiu      $t3, $t3, 0xC
    /* 1CC4 801347F8 0C00CE25 */  addiu      $t6, $t6, 0xC
    /* 1CC8 801347FC 00E80248 */  mfc2       $v0, $29 /* handwritten instruction */
    /* 1CCC 80134800 08004A25 */  addiu      $t2, $t2, 0x8
    /* 1CD0 80134804 000082A5 */  sh         $v0, 0x0($t4)
    /* 1CD4 80134808 08008C25 */  addiu      $t4, $t4, 0x8
    /* 1CD8 8013480C C1FF2015 */  bnez       $t1, .L80134714
    /* 1CDC 80134810 0800EF25 */   addiu     $t7, $t7, 0x8
    /* 1CE0 80134814 2148C000 */  addu       $t1, $a2, $zero
    /* 1CE4 80134818 0600EC25 */  addiu      $t4, $t7, 0x6
    /* 1CE8 8013481C 0B00CB25 */  addiu      $t3, $t6, 0xB
    /* 1CEC 80134820 0400EA25 */  addiu      $t2, $t7, 0x4
    /* 1CF0 80134824 0A00C825 */  addiu      $t0, $t6, 0xA
  .L80134828:
    /* 1CF4 80134828 0000C391 */  lbu        $v1, 0x0($t6)
    /* 1CF8 8013482C F7FF0491 */  lbu        $a0, -0x9($t0)
    /* 1CFC 80134830 F8FF0591 */  lbu        $a1, -0x8($t0)
    /* 1D00 80134834 03006324 */  addiu      $v1, $v1, 0x3
    /* 1D04 80134838 03008424 */  addiu      $a0, $a0, 0x3
    /* 1D08 8013483C 0300A524 */  addiu      $a1, $a1, 0x3
    /* 1D0C 80134840 00190300 */  sll        $v1, $v1, 4
    /* 1D10 80134844 00210400 */  sll        $a0, $a0, 4
    /* 1D14 80134848 00290500 */  sll        $a1, $a1, 4
    /* 1D18 8013484C 00488348 */  mtc2       $v1, $9 /* handwritten instruction */
    /* 1D1C 80134850 00508448 */  mtc2       $a0, $10 /* handwritten instruction */
    /* 1D20 80134854 00588548 */  mtc2       $a1, $11 /* handwritten instruction */
    /* 1D24 80134858 F9FF0391 */  lbu        $v1, -0x7($t0)
    /* 1D28 8013485C FAFF0491 */  lbu        $a0, -0x6($t0)
    /* 1D2C 80134860 FBFF0591 */  lbu        $a1, -0x5($t0)
    /* 1D30 80134864 00E80248 */  mfc2       $v0, $29 /* handwritten instruction */
    /* 1D34 80134868 00000000 */  nop
    /* 1D38 8013486C 0000E2A5 */  sh         $v0, 0x0($t7)
    /* 1D3C 80134870 FFFF6324 */  addiu      $v1, $v1, -0x1
    /* 1D40 80134874 FFFF8424 */  addiu      $a0, $a0, -0x1
    /* 1D44 80134878 FFFFA524 */  addiu      $a1, $a1, -0x1
    /* 1D48 8013487C 00190300 */  sll        $v1, $v1, 4
    /* 1D4C 80134880 00210400 */  sll        $a0, $a0, 4
    /* 1D50 80134884 00290500 */  sll        $a1, $a1, 4
    /* 1D54 80134888 00488348 */  mtc2       $v1, $9 /* handwritten instruction */
    /* 1D58 8013488C 00508448 */  mtc2       $a0, $10 /* handwritten instruction */
    /* 1D5C 80134890 00588548 */  mtc2       $a1, $11 /* handwritten instruction */
    /* 1D60 80134894 FCFF0391 */  lbu        $v1, -0x4($t0)
    /* 1D64 80134898 FDFF0491 */  lbu        $a0, -0x3($t0)
    /* 1D68 8013489C FEFF0591 */  lbu        $a1, -0x2($t0)
    /* 1D6C 801348A0 00E80248 */  mfc2       $v0, $29 /* handwritten instruction */
    /* 1D70 801348A4 00000000 */  nop
    /* 1D74 801348A8 FEFF42A5 */  sh         $v0, -0x2($t2)
    /* 1D78 801348AC 02006324 */  addiu      $v1, $v1, 0x2
    /* 1D7C 801348B0 02008424 */  addiu      $a0, $a0, 0x2
    /* 1D80 801348B4 0200A524 */  addiu      $a1, $a1, 0x2
    /* 1D84 801348B8 00190300 */  sll        $v1, $v1, 4
    /* 1D88 801348BC 00210400 */  sll        $a0, $a0, 4
    /* 1D8C 801348C0 00290500 */  sll        $a1, $a1, 4
    /* 1D90 801348C4 00488348 */  mtc2       $v1, $9 /* handwritten instruction */
    /* 1D94 801348C8 00508448 */  mtc2       $a0, $10 /* handwritten instruction */
    /* 1D98 801348CC 00588548 */  mtc2       $a1, $11 /* handwritten instruction */
    /* 1D9C 801348D0 FFFF0391 */  lbu        $v1, -0x1($t0)
    /* 1DA0 801348D4 00000491 */  lbu        $a0, 0x0($t0)
    /* 1DA4 801348D8 00006591 */  lbu        $a1, 0x0($t3)
    /* 1DA8 801348DC 00E80248 */  mfc2       $v0, $29 /* handwritten instruction */
    /* 1DAC 801348E0 00000000 */  nop
    /* 1DB0 801348E4 000042A5 */  sh         $v0, 0x0($t2)
    /* 1DB4 801348E8 FEFF6324 */  addiu      $v1, $v1, -0x2
    /* 1DB8 801348EC FEFF8424 */  addiu      $a0, $a0, -0x2
    /* 1DBC 801348F0 FEFFA524 */  addiu      $a1, $a1, -0x2
    /* 1DC0 801348F4 00190300 */  sll        $v1, $v1, 4
    /* 1DC4 801348F8 00210400 */  sll        $a0, $a0, 4
    /* 1DC8 801348FC 00290500 */  sll        $a1, $a1, 4
    /* 1DCC 80134900 00488348 */  mtc2       $v1, $9 /* handwritten instruction */
    /* 1DD0 80134904 00508448 */  mtc2       $a0, $10 /* handwritten instruction */
    /* 1DD4 80134908 00588548 */  mtc2       $a1, $11 /* handwritten instruction */
    /* 1DD8 8013490C FFFF2925 */  addiu      $t1, $t1, -0x1
    /* 1DDC 80134910 0C000825 */  addiu      $t0, $t0, 0xC
    /* 1DE0 80134914 0C006B25 */  addiu      $t3, $t3, 0xC
    /* 1DE4 80134918 0C00CE25 */  addiu      $t6, $t6, 0xC
    /* 1DE8 8013491C 00E80248 */  mfc2       $v0, $29 /* handwritten instruction */
    /* 1DEC 80134920 08004A25 */  addiu      $t2, $t2, 0x8
    /* 1DF0 80134924 000082A5 */  sh         $v0, 0x0($t4)
    /* 1DF4 80134928 08008C25 */  addiu      $t4, $t4, 0x8
    /* 1DF8 8013492C BEFF2015 */  bnez       $t1, .L80134828
    /* 1DFC 80134930 0800EF25 */   addiu     $t7, $t7, 0x8
    /* 1E00 80134934 FFFFE724 */  addiu      $a3, $a3, -0x1
    /* 1E04 80134938 CAFEE014 */  bnez       $a3, .L80134464
    /* 1E08 8013493C 801F0E3C */   lui       $t6, (0x1F800200 >> 16)
    /* 1E0C 80134940 0800E003 */  jr         $ra
    /* 1E10 80134944 00000000 */   nop
endlabel func_80134444
