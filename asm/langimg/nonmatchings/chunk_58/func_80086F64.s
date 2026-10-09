/* Handwritten function */
nonmatching func_80086F64, 0x504

glabel func_80086F64
    /* 75774 80086F64 2178A000 */  addu       $t7, $a1, $zero
    /* 75778 80086F68 21C0E001 */  addu       $t8, $t7, $zero
    /* 7577C 80086F6C 0300E724 */  addiu      $a3, $a3, 0x3
    /* 75780 80086F70 83380700 */  sra        $a3, $a3, 2
    /* 75784 80086F74 0300C624 */  addiu      $a2, $a2, 0x3
    /* 75788 80086F78 83300600 */  sra        $a2, $a2, 2
    /* 7578C 80086F7C 40C80600 */  sll        $t9, $a2, 1
    /* 75790 80086F80 801F0E3C */  lui        $t6, (0x1F800200 >> 16)
  .L80086F84:
    /* 75794 80086F84 0002CE35 */  ori        $t6, $t6, (0x1F800200 & 0xFFFF)
    /* 75798 80086F88 801F0B3C */  lui        $t3, (0x1F800200 >> 16)
    /* 7579C 80086F8C 00026B35 */  ori        $t3, $t3, (0x1F800200 & 0xFFFF)
    /* 757A0 80086F90 21682603 */  addu       $t5, $t9, $a2
    /* 757A4 80086F94 801F0A3C */  lui        $t2, (0x1F80020C >> 16)
    /* 757A8 80086F98 0C024A35 */  ori        $t2, $t2, (0x1F80020C & 0xFFFF)
    /* 757AC 80086F9C 0C000C27 */  addiu      $t4, $t8, 0xC
    /* 757B0 80086FA0 801F083C */  lui        $t0, (0x1F800208 >> 16)
    /* 757B4 80086FA4 08020835 */  ori        $t0, $t0, (0x1F800208 & 0xFFFF)
    /* 757B8 80086FA8 08000927 */  addiu      $t1, $t8, 0x8
  .L80086FAC:
    /* 757BC 80086FAC FCFF238D */  lw         $v1, -0x4($t1)
    /* 757C0 80086FB0 0000248D */  lw         $a0, 0x0($t1)
    /* 757C4 80086FB4 10002925 */  addiu      $t1, $t1, 0x10
    /* 757C8 80086FB8 0000858D */  lw         $a1, 0x0($t4)
    /* 757CC 80086FBC 10008C25 */  addiu      $t4, $t4, 0x10
    /* 757D0 80086FC0 0000028F */  lw         $v0, 0x0($t8)
    /* 757D4 80086FC4 10001827 */  addiu      $t8, $t8, 0x10
    /* 757D8 80086FC8 FFFFAD25 */  addiu      $t5, $t5, -0x1
    /* 757DC 80086FCC 000062AD */  sw         $v0, 0x0($t3)
    /* 757E0 80086FD0 FCFF03AD */  sw         $v1, -0x4($t0)
    /* 757E4 80086FD4 000004AD */  sw         $a0, 0x0($t0)
    /* 757E8 80086FD8 10000825 */  addiu      $t0, $t0, 0x10
    /* 757EC 80086FDC 000045AD */  sw         $a1, 0x0($t2)
    /* 757F0 80086FE0 10004A25 */  addiu      $t2, $t2, 0x10
    /* 757F4 80086FE4 F1FFA015 */  bnez       $t5, .L80086FAC
    /* 757F8 80086FE8 10006B25 */   addiu     $t3, $t3, 0x10
    /* 757FC 80086FEC 2148C000 */  addu       $t1, $a2, $zero
    /* 75800 80086FF0 0600EC25 */  addiu      $t4, $t7, 0x6
    /* 75804 80086FF4 0B00CB25 */  addiu      $t3, $t6, 0xB
    /* 75808 80086FF8 0400EA25 */  addiu      $t2, $t7, 0x4
    /* 7580C 80086FFC 0A00C825 */  addiu      $t0, $t6, 0xA
  .L80087000:
    /* 75810 80087000 0000C391 */  lbu        $v1, 0x0($t6)
    /* 75814 80087004 F7FF0491 */  lbu        $a0, -0x9($t0)
    /* 75818 80087008 F8FF0591 */  lbu        $a1, -0x8($t0)
    /* 7581C 8008700C FCFF6324 */  addiu      $v1, $v1, -0x4
    /* 75820 80087010 FCFF8424 */  addiu      $a0, $a0, -0x4
    /* 75824 80087014 FCFFA524 */  addiu      $a1, $a1, -0x4
    /* 75828 80087018 00190300 */  sll        $v1, $v1, 4
    /* 7582C 8008701C 00210400 */  sll        $a0, $a0, 4
    /* 75830 80087020 00290500 */  sll        $a1, $a1, 4
    /* 75834 80087024 00488348 */  mtc2       $v1, $9 /* handwritten instruction */
    /* 75838 80087028 00508448 */  mtc2       $a0, $10 /* handwritten instruction */
    /* 7583C 8008702C 00588548 */  mtc2       $a1, $11 /* handwritten instruction */
    /* 75840 80087030 F9FF0391 */  lbu        $v1, -0x7($t0)
    /* 75844 80087034 FAFF0491 */  lbu        $a0, -0x6($t0)
    /* 75848 80087038 FBFF0591 */  lbu        $a1, -0x5($t0)
    /* 7584C 8008703C 00E80248 */  mfc2       $v0, $29 /* handwritten instruction */
    /* 75850 80087040 00000000 */  nop
    /* 75854 80087044 0000E2A5 */  sh         $v0, 0x0($t7)
    /* 75858 80087048 00190300 */  sll        $v1, $v1, 4
    /* 7585C 8008704C 00210400 */  sll        $a0, $a0, 4
    /* 75860 80087050 00290500 */  sll        $a1, $a1, 4
    /* 75864 80087054 00488348 */  mtc2       $v1, $9 /* handwritten instruction */
    /* 75868 80087058 00508448 */  mtc2       $a0, $10 /* handwritten instruction */
    /* 7586C 8008705C 00588548 */  mtc2       $a1, $11 /* handwritten instruction */
    /* 75870 80087060 FCFF0391 */  lbu        $v1, -0x4($t0)
    /* 75874 80087064 FDFF0491 */  lbu        $a0, -0x3($t0)
    /* 75878 80087068 FEFF0591 */  lbu        $a1, -0x2($t0)
    /* 7587C 8008706C 00E80248 */  mfc2       $v0, $29 /* handwritten instruction */
    /* 75880 80087070 00000000 */  nop
    /* 75884 80087074 FEFF42A5 */  sh         $v0, -0x2($t2)
    /* 75888 80087078 FDFF6324 */  addiu      $v1, $v1, -0x3
    /* 7588C 8008707C FDFF8424 */  addiu      $a0, $a0, -0x3
    /* 75890 80087080 FDFFA524 */  addiu      $a1, $a1, -0x3
    /* 75894 80087084 00190300 */  sll        $v1, $v1, 4
    /* 75898 80087088 00210400 */  sll        $a0, $a0, 4
    /* 7589C 8008708C 00290500 */  sll        $a1, $a1, 4
    /* 758A0 80087090 00488348 */  mtc2       $v1, $9 /* handwritten instruction */
    /* 758A4 80087094 00508448 */  mtc2       $a0, $10 /* handwritten instruction */
    /* 758A8 80087098 00588548 */  mtc2       $a1, $11 /* handwritten instruction */
    /* 758AC 8008709C FFFF0391 */  lbu        $v1, -0x1($t0)
    /* 758B0 800870A0 00000491 */  lbu        $a0, 0x0($t0)
    /* 758B4 800870A4 00006591 */  lbu        $a1, 0x0($t3)
    /* 758B8 800870A8 00E80248 */  mfc2       $v0, $29 /* handwritten instruction */
    /* 758BC 800870AC 00000000 */  nop
    /* 758C0 800870B0 000042A5 */  sh         $v0, 0x0($t2)
    /* 758C4 800870B4 01006324 */  addiu      $v1, $v1, 0x1
    /* 758C8 800870B8 01008424 */  addiu      $a0, $a0, 0x1
    /* 758CC 800870BC 0100A524 */  addiu      $a1, $a1, 0x1
    /* 758D0 800870C0 00190300 */  sll        $v1, $v1, 4
    /* 758D4 800870C4 00210400 */  sll        $a0, $a0, 4
    /* 758D8 800870C8 00290500 */  sll        $a1, $a1, 4
    /* 758DC 800870CC 00488348 */  mtc2       $v1, $9 /* handwritten instruction */
    /* 758E0 800870D0 00508448 */  mtc2       $a0, $10 /* handwritten instruction */
    /* 758E4 800870D4 00588548 */  mtc2       $a1, $11 /* handwritten instruction */
    /* 758E8 800870D8 FFFF2925 */  addiu      $t1, $t1, -0x1
    /* 758EC 800870DC 0C000825 */  addiu      $t0, $t0, 0xC
    /* 758F0 800870E0 0C006B25 */  addiu      $t3, $t3, 0xC
    /* 758F4 800870E4 0C00CE25 */  addiu      $t6, $t6, 0xC
    /* 758F8 800870E8 00E80248 */  mfc2       $v0, $29 /* handwritten instruction */
    /* 758FC 800870EC 08004A25 */  addiu      $t2, $t2, 0x8
    /* 75900 800870F0 000082A5 */  sh         $v0, 0x0($t4)
    /* 75904 800870F4 08008C25 */  addiu      $t4, $t4, 0x8
    /* 75908 800870F8 C1FF2015 */  bnez       $t1, .L80087000
    /* 7590C 800870FC 0800EF25 */   addiu     $t7, $t7, 0x8
    /* 75910 80087100 2148C000 */  addu       $t1, $a2, $zero
    /* 75914 80087104 0600EC25 */  addiu      $t4, $t7, 0x6
    /* 75918 80087108 0B00CB25 */  addiu      $t3, $t6, 0xB
    /* 7591C 8008710C 0400EA25 */  addiu      $t2, $t7, 0x4
    /* 75920 80087110 0A00C825 */  addiu      $t0, $t6, 0xA
  .L80087114:
    /* 75924 80087114 0000C391 */  lbu        $v1, 0x0($t6)
    /* 75928 80087118 F7FF0491 */  lbu        $a0, -0x9($t0)
    /* 7592C 8008711C F8FF0591 */  lbu        $a1, -0x8($t0)
    /* 75930 80087120 02006324 */  addiu      $v1, $v1, 0x2
    /* 75934 80087124 02008424 */  addiu      $a0, $a0, 0x2
    /* 75938 80087128 0200A524 */  addiu      $a1, $a1, 0x2
    /* 7593C 8008712C 00190300 */  sll        $v1, $v1, 4
    /* 75940 80087130 00210400 */  sll        $a0, $a0, 4
    /* 75944 80087134 00290500 */  sll        $a1, $a1, 4
    /* 75948 80087138 00488348 */  mtc2       $v1, $9 /* handwritten instruction */
    /* 7594C 8008713C 00508448 */  mtc2       $a0, $10 /* handwritten instruction */
    /* 75950 80087140 00588548 */  mtc2       $a1, $11 /* handwritten instruction */
    /* 75954 80087144 F9FF0391 */  lbu        $v1, -0x7($t0)
    /* 75958 80087148 FAFF0491 */  lbu        $a0, -0x6($t0)
    /* 7595C 8008714C FBFF0591 */  lbu        $a1, -0x5($t0)
    /* 75960 80087150 00E80248 */  mfc2       $v0, $29 /* handwritten instruction */
    /* 75964 80087154 00000000 */  nop
    /* 75968 80087158 0000E2A5 */  sh         $v0, 0x0($t7)
    /* 7596C 8008715C FEFF6324 */  addiu      $v1, $v1, -0x2
    /* 75970 80087160 FEFF8424 */  addiu      $a0, $a0, -0x2
    /* 75974 80087164 FEFFA524 */  addiu      $a1, $a1, -0x2
    /* 75978 80087168 00190300 */  sll        $v1, $v1, 4
    /* 7597C 8008716C 00210400 */  sll        $a0, $a0, 4
    /* 75980 80087170 00290500 */  sll        $a1, $a1, 4
    /* 75984 80087174 00488348 */  mtc2       $v1, $9 /* handwritten instruction */
    /* 75988 80087178 00508448 */  mtc2       $a0, $10 /* handwritten instruction */
    /* 7598C 8008717C 00588548 */  mtc2       $a1, $11 /* handwritten instruction */
    /* 75990 80087180 FCFF0391 */  lbu        $v1, -0x4($t0)
    /* 75994 80087184 FDFF0491 */  lbu        $a0, -0x3($t0)
    /* 75998 80087188 FEFF0591 */  lbu        $a1, -0x2($t0)
    /* 7599C 8008718C 00E80248 */  mfc2       $v0, $29 /* handwritten instruction */
    /* 759A0 80087190 00000000 */  nop
    /* 759A4 80087194 FEFF42A5 */  sh         $v0, -0x2($t2)
    /* 759A8 80087198 03006324 */  addiu      $v1, $v1, 0x3
    /* 759AC 8008719C 03008424 */  addiu      $a0, $a0, 0x3
    /* 759B0 800871A0 0300A524 */  addiu      $a1, $a1, 0x3
    /* 759B4 800871A4 00190300 */  sll        $v1, $v1, 4
    /* 759B8 800871A8 00210400 */  sll        $a0, $a0, 4
    /* 759BC 800871AC 00290500 */  sll        $a1, $a1, 4
    /* 759C0 800871B0 00488348 */  mtc2       $v1, $9 /* handwritten instruction */
    /* 759C4 800871B4 00508448 */  mtc2       $a0, $10 /* handwritten instruction */
    /* 759C8 800871B8 00588548 */  mtc2       $a1, $11 /* handwritten instruction */
    /* 759CC 800871BC FFFF0391 */  lbu        $v1, -0x1($t0)
    /* 759D0 800871C0 00000491 */  lbu        $a0, 0x0($t0)
    /* 759D4 800871C4 00006591 */  lbu        $a1, 0x0($t3)
    /* 759D8 800871C8 00E80248 */  mfc2       $v0, $29 /* handwritten instruction */
    /* 759DC 800871CC 00000000 */  nop
    /* 759E0 800871D0 000042A5 */  sh         $v0, 0x0($t2)
    /* 759E4 800871D4 FFFF6324 */  addiu      $v1, $v1, -0x1
    /* 759E8 800871D8 FFFF8424 */  addiu      $a0, $a0, -0x1
    /* 759EC 800871DC FFFFA524 */  addiu      $a1, $a1, -0x1
    /* 759F0 800871E0 00190300 */  sll        $v1, $v1, 4
    /* 759F4 800871E4 00210400 */  sll        $a0, $a0, 4
    /* 759F8 800871E8 00290500 */  sll        $a1, $a1, 4
    /* 759FC 800871EC 00488348 */  mtc2       $v1, $9 /* handwritten instruction */
    /* 75A00 800871F0 00508448 */  mtc2       $a0, $10 /* handwritten instruction */
    /* 75A04 800871F4 00588548 */  mtc2       $a1, $11 /* handwritten instruction */
    /* 75A08 800871F8 FFFF2925 */  addiu      $t1, $t1, -0x1
    /* 75A0C 800871FC 0C000825 */  addiu      $t0, $t0, 0xC
    /* 75A10 80087200 0C006B25 */  addiu      $t3, $t3, 0xC
    /* 75A14 80087204 0C00CE25 */  addiu      $t6, $t6, 0xC
    /* 75A18 80087208 00E80248 */  mfc2       $v0, $29 /* handwritten instruction */
    /* 75A1C 8008720C 08004A25 */  addiu      $t2, $t2, 0x8
    /* 75A20 80087210 000082A5 */  sh         $v0, 0x0($t4)
    /* 75A24 80087214 08008C25 */  addiu      $t4, $t4, 0x8
    /* 75A28 80087218 BEFF2015 */  bnez       $t1, .L80087114
    /* 75A2C 8008721C 0800EF25 */   addiu     $t7, $t7, 0x8
    /* 75A30 80087220 2148C000 */  addu       $t1, $a2, $zero
    /* 75A34 80087224 0600EC25 */  addiu      $t4, $t7, 0x6
    /* 75A38 80087228 0B00CB25 */  addiu      $t3, $t6, 0xB
    /* 75A3C 8008722C 0400EA25 */  addiu      $t2, $t7, 0x4
    /* 75A40 80087230 0A00C825 */  addiu      $t0, $t6, 0xA
  .L80087234:
    /* 75A44 80087234 0000C391 */  lbu        $v1, 0x0($t6)
    /* 75A48 80087238 F7FF0491 */  lbu        $a0, -0x9($t0)
    /* 75A4C 8008723C F8FF0591 */  lbu        $a1, -0x8($t0)
    /* 75A50 80087240 FDFF6324 */  addiu      $v1, $v1, -0x3
    /* 75A54 80087244 FDFF8424 */  addiu      $a0, $a0, -0x3
    /* 75A58 80087248 FDFFA524 */  addiu      $a1, $a1, -0x3
    /* 75A5C 8008724C 00190300 */  sll        $v1, $v1, 4
    /* 75A60 80087250 00210400 */  sll        $a0, $a0, 4
    /* 75A64 80087254 00290500 */  sll        $a1, $a1, 4
    /* 75A68 80087258 00488348 */  mtc2       $v1, $9 /* handwritten instruction */
    /* 75A6C 8008725C 00508448 */  mtc2       $a0, $10 /* handwritten instruction */
    /* 75A70 80087260 00588548 */  mtc2       $a1, $11 /* handwritten instruction */
    /* 75A74 80087264 F9FF0391 */  lbu        $v1, -0x7($t0)
    /* 75A78 80087268 FAFF0491 */  lbu        $a0, -0x6($t0)
    /* 75A7C 8008726C FBFF0591 */  lbu        $a1, -0x5($t0)
    /* 75A80 80087270 00E80248 */  mfc2       $v0, $29 /* handwritten instruction */
    /* 75A84 80087274 00000000 */  nop
    /* 75A88 80087278 0000E2A5 */  sh         $v0, 0x0($t7)
    /* 75A8C 8008727C 01006324 */  addiu      $v1, $v1, 0x1
    /* 75A90 80087280 01008424 */  addiu      $a0, $a0, 0x1
    /* 75A94 80087284 0100A524 */  addiu      $a1, $a1, 0x1
    /* 75A98 80087288 00190300 */  sll        $v1, $v1, 4
    /* 75A9C 8008728C 00210400 */  sll        $a0, $a0, 4
    /* 75AA0 80087290 00290500 */  sll        $a1, $a1, 4
    /* 75AA4 80087294 00488348 */  mtc2       $v1, $9 /* handwritten instruction */
    /* 75AA8 80087298 00508448 */  mtc2       $a0, $10 /* handwritten instruction */
    /* 75AAC 8008729C 00588548 */  mtc2       $a1, $11 /* handwritten instruction */
    /* 75AB0 800872A0 FCFF0391 */  lbu        $v1, -0x4($t0)
    /* 75AB4 800872A4 FDFF0491 */  lbu        $a0, -0x3($t0)
    /* 75AB8 800872A8 FEFF0591 */  lbu        $a1, -0x2($t0)
    /* 75ABC 800872AC 00E80248 */  mfc2       $v0, $29 /* handwritten instruction */
    /* 75AC0 800872B0 00000000 */  nop
    /* 75AC4 800872B4 FEFF42A5 */  sh         $v0, -0x2($t2)
    /* 75AC8 800872B8 FCFF6324 */  addiu      $v1, $v1, -0x4
    /* 75ACC 800872BC FCFF8424 */  addiu      $a0, $a0, -0x4
    /* 75AD0 800872C0 FCFFA524 */  addiu      $a1, $a1, -0x4
    /* 75AD4 800872C4 00190300 */  sll        $v1, $v1, 4
    /* 75AD8 800872C8 00210400 */  sll        $a0, $a0, 4
    /* 75ADC 800872CC 00290500 */  sll        $a1, $a1, 4
    /* 75AE0 800872D0 00488348 */  mtc2       $v1, $9 /* handwritten instruction */
    /* 75AE4 800872D4 00508448 */  mtc2       $a0, $10 /* handwritten instruction */
    /* 75AE8 800872D8 00588548 */  mtc2       $a1, $11 /* handwritten instruction */
    /* 75AEC 800872DC FFFF0391 */  lbu        $v1, -0x1($t0)
    /* 75AF0 800872E0 00000491 */  lbu        $a0, 0x0($t0)
    /* 75AF4 800872E4 00006591 */  lbu        $a1, 0x0($t3)
    /* 75AF8 800872E8 00E80248 */  mfc2       $v0, $29 /* handwritten instruction */
    /* 75AFC 800872EC 00000000 */  nop
    /* 75B00 800872F0 000042A5 */  sh         $v0, 0x0($t2)
    /* 75B04 800872F4 00190300 */  sll        $v1, $v1, 4
    /* 75B08 800872F8 00210400 */  sll        $a0, $a0, 4
    /* 75B0C 800872FC 00290500 */  sll        $a1, $a1, 4
    /* 75B10 80087300 00488348 */  mtc2       $v1, $9 /* handwritten instruction */
    /* 75B14 80087304 00508448 */  mtc2       $a0, $10 /* handwritten instruction */
    /* 75B18 80087308 00588548 */  mtc2       $a1, $11 /* handwritten instruction */
    /* 75B1C 8008730C FFFF2925 */  addiu      $t1, $t1, -0x1
    /* 75B20 80087310 0C000825 */  addiu      $t0, $t0, 0xC
    /* 75B24 80087314 0C006B25 */  addiu      $t3, $t3, 0xC
    /* 75B28 80087318 0C00CE25 */  addiu      $t6, $t6, 0xC
    /* 75B2C 8008731C 00E80248 */  mfc2       $v0, $29 /* handwritten instruction */
    /* 75B30 80087320 08004A25 */  addiu      $t2, $t2, 0x8
    /* 75B34 80087324 000082A5 */  sh         $v0, 0x0($t4)
    /* 75B38 80087328 08008C25 */  addiu      $t4, $t4, 0x8
    /* 75B3C 8008732C C1FF2015 */  bnez       $t1, .L80087234
    /* 75B40 80087330 0800EF25 */   addiu     $t7, $t7, 0x8
    /* 75B44 80087334 2148C000 */  addu       $t1, $a2, $zero
    /* 75B48 80087338 0600EC25 */  addiu      $t4, $t7, 0x6
    /* 75B4C 8008733C 0B00CB25 */  addiu      $t3, $t6, 0xB
    /* 75B50 80087340 0400EA25 */  addiu      $t2, $t7, 0x4
    /* 75B54 80087344 0A00C825 */  addiu      $t0, $t6, 0xA
  .L80087348:
    /* 75B58 80087348 0000C391 */  lbu        $v1, 0x0($t6)
    /* 75B5C 8008734C F7FF0491 */  lbu        $a0, -0x9($t0)
    /* 75B60 80087350 F8FF0591 */  lbu        $a1, -0x8($t0)
    /* 75B64 80087354 03006324 */  addiu      $v1, $v1, 0x3
    /* 75B68 80087358 03008424 */  addiu      $a0, $a0, 0x3
    /* 75B6C 8008735C 0300A524 */  addiu      $a1, $a1, 0x3
    /* 75B70 80087360 00190300 */  sll        $v1, $v1, 4
    /* 75B74 80087364 00210400 */  sll        $a0, $a0, 4
    /* 75B78 80087368 00290500 */  sll        $a1, $a1, 4
    /* 75B7C 8008736C 00488348 */  mtc2       $v1, $9 /* handwritten instruction */
    /* 75B80 80087370 00508448 */  mtc2       $a0, $10 /* handwritten instruction */
    /* 75B84 80087374 00588548 */  mtc2       $a1, $11 /* handwritten instruction */
    /* 75B88 80087378 F9FF0391 */  lbu        $v1, -0x7($t0)
    /* 75B8C 8008737C FAFF0491 */  lbu        $a0, -0x6($t0)
    /* 75B90 80087380 FBFF0591 */  lbu        $a1, -0x5($t0)
    /* 75B94 80087384 00E80248 */  mfc2       $v0, $29 /* handwritten instruction */
    /* 75B98 80087388 00000000 */  nop
    /* 75B9C 8008738C 0000E2A5 */  sh         $v0, 0x0($t7)
    /* 75BA0 80087390 FFFF6324 */  addiu      $v1, $v1, -0x1
    /* 75BA4 80087394 FFFF8424 */  addiu      $a0, $a0, -0x1
    /* 75BA8 80087398 FFFFA524 */  addiu      $a1, $a1, -0x1
    /* 75BAC 8008739C 00190300 */  sll        $v1, $v1, 4
    /* 75BB0 800873A0 00210400 */  sll        $a0, $a0, 4
    /* 75BB4 800873A4 00290500 */  sll        $a1, $a1, 4
    /* 75BB8 800873A8 00488348 */  mtc2       $v1, $9 /* handwritten instruction */
    /* 75BBC 800873AC 00508448 */  mtc2       $a0, $10 /* handwritten instruction */
    /* 75BC0 800873B0 00588548 */  mtc2       $a1, $11 /* handwritten instruction */
    /* 75BC4 800873B4 FCFF0391 */  lbu        $v1, -0x4($t0)
    /* 75BC8 800873B8 FDFF0491 */  lbu        $a0, -0x3($t0)
    /* 75BCC 800873BC FEFF0591 */  lbu        $a1, -0x2($t0)
    /* 75BD0 800873C0 00E80248 */  mfc2       $v0, $29 /* handwritten instruction */
    /* 75BD4 800873C4 00000000 */  nop
    /* 75BD8 800873C8 FEFF42A5 */  sh         $v0, -0x2($t2)
    /* 75BDC 800873CC 02006324 */  addiu      $v1, $v1, 0x2
    /* 75BE0 800873D0 02008424 */  addiu      $a0, $a0, 0x2
    /* 75BE4 800873D4 0200A524 */  addiu      $a1, $a1, 0x2
    /* 75BE8 800873D8 00190300 */  sll        $v1, $v1, 4
    /* 75BEC 800873DC 00210400 */  sll        $a0, $a0, 4
    /* 75BF0 800873E0 00290500 */  sll        $a1, $a1, 4
    /* 75BF4 800873E4 00488348 */  mtc2       $v1, $9 /* handwritten instruction */
    /* 75BF8 800873E8 00508448 */  mtc2       $a0, $10 /* handwritten instruction */
    /* 75BFC 800873EC 00588548 */  mtc2       $a1, $11 /* handwritten instruction */
    /* 75C00 800873F0 FFFF0391 */  lbu        $v1, -0x1($t0)
    /* 75C04 800873F4 00000491 */  lbu        $a0, 0x0($t0)
    /* 75C08 800873F8 00006591 */  lbu        $a1, 0x0($t3)
    /* 75C0C 800873FC 00E80248 */  mfc2       $v0, $29 /* handwritten instruction */
    /* 75C10 80087400 00000000 */  nop
    /* 75C14 80087404 000042A5 */  sh         $v0, 0x0($t2)
    /* 75C18 80087408 FEFF6324 */  addiu      $v1, $v1, -0x2
    /* 75C1C 8008740C FEFF8424 */  addiu      $a0, $a0, -0x2
    /* 75C20 80087410 FEFFA524 */  addiu      $a1, $a1, -0x2
    /* 75C24 80087414 00190300 */  sll        $v1, $v1, 4
    /* 75C28 80087418 00210400 */  sll        $a0, $a0, 4
    /* 75C2C 8008741C 00290500 */  sll        $a1, $a1, 4
    /* 75C30 80087420 00488348 */  mtc2       $v1, $9 /* handwritten instruction */
    /* 75C34 80087424 00508448 */  mtc2       $a0, $10 /* handwritten instruction */
    /* 75C38 80087428 00588548 */  mtc2       $a1, $11 /* handwritten instruction */
    /* 75C3C 8008742C FFFF2925 */  addiu      $t1, $t1, -0x1
    /* 75C40 80087430 0C000825 */  addiu      $t0, $t0, 0xC
    /* 75C44 80087434 0C006B25 */  addiu      $t3, $t3, 0xC
    /* 75C48 80087438 0C00CE25 */  addiu      $t6, $t6, 0xC
    /* 75C4C 8008743C 00E80248 */  mfc2       $v0, $29 /* handwritten instruction */
    /* 75C50 80087440 08004A25 */  addiu      $t2, $t2, 0x8
    /* 75C54 80087444 000082A5 */  sh         $v0, 0x0($t4)
    /* 75C58 80087448 08008C25 */  addiu      $t4, $t4, 0x8
    /* 75C5C 8008744C BEFF2015 */  bnez       $t1, .L80087348
    /* 75C60 80087450 0800EF25 */   addiu     $t7, $t7, 0x8
    /* 75C64 80087454 FFFFE724 */  addiu      $a3, $a3, -0x1
    /* 75C68 80087458 CAFEE014 */  bnez       $a3, .L80086F84
    /* 75C6C 8008745C 801F0E3C */   lui       $t6, (0x1F800200 >> 16)
    /* 75C70 80087460 0800E003 */  jr         $ra
    /* 75C74 80087464 00000000 */   nop
endlabel func_80086F64
