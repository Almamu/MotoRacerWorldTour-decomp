/* Handwritten function */
nonmatching func_80079DC0, 0x3D8

glabel func_80079DC0
    /* 685D0 80079DC0 78FFBD27 */  addiu      $sp, $sp, -0x88
    /* 685D4 80079DC4 8000B4AF */  sw         $s4, 0x80($sp)
    /* 685D8 80079DC8 21A08000 */  addu       $s4, $a0, $zero
    /* 685DC 80079DCC 7400B1AF */  sw         $s1, 0x74($sp)
    /* 685E0 80079DD0 2188A000 */  addu       $s1, $a1, $zero
    /* 685E4 80079DD4 8400BFAF */  sw         $ra, 0x84($sp)
    /* 685E8 80079DD8 7C00B3AF */  sw         $s3, 0x7C($sp)
    /* 685EC 80079DDC 7800B2AF */  sw         $s2, 0x78($sp)
    /* 685F0 80079DE0 7000B0AF */  sw         $s0, 0x70($sp)
    /* 685F4 80079DE4 00E85248 */  cfc2       $s2, $29 /* handwritten instruction */
    /* 685F8 80079DE8 00F05348 */  cfc2       $s3, $30 /* handwritten instruction */
    /* 685FC 80079DEC 0D80103C */  lui        $s0, %hi(D_800C8864)
    /* 68600 80079DF0 6488108E */  lw         $s0, %lo(D_800C8864)($s0)
    /* 68604 80079DF4 1400258E */  lw         $a1, 0x14($s1)
    /* 68608 80079DF8 F800028E */  lw         $v0, 0xF8($s0)
    /* 6860C 80079DFC 1800A427 */  addiu      $a0, $sp, 0x18
    /* 68610 80079E00 2328A200 */  subu       $a1, $a1, $v0
    /* 68614 80079E04 43290500 */  sra        $a1, $a1, 5
    /* 68618 80079E08 1000A5A7 */  sh         $a1, 0x10($sp)
    /* 6861C 80079E0C 002C0500 */  sll        $a1, $a1, 16
    /* 68620 80079E10 1800238E */  lw         $v1, 0x18($s1)
    /* 68624 80079E14 FC00028E */  lw         $v0, 0xFC($s0)
    /* 68628 80079E18 032C0500 */  sra        $a1, $a1, 16
    /* 6862C 80079E1C 23186200 */  subu       $v1, $v1, $v0
    /* 68630 80079E20 43190300 */  sra        $v1, $v1, 5
    /* 68634 80079E24 1200A3A7 */  sh         $v1, 0x12($sp)
    /* 68638 80079E28 001C0300 */  sll        $v1, $v1, 16
    /* 6863C 80079E2C 0001068E */  lw         $a2, 0x100($s0)
    /* 68640 80079E30 031C0300 */  sra        $v1, $v1, 16
    /* 68644 80079E34 1800A5AF */  sw         $a1, 0x18($sp)
    /* 68648 80079E38 1C00228E */  lw         $v0, 0x1C($s1)
    /* 6864C 80079E3C 20001026 */  addiu      $s0, $s0, 0x20
    /* 68650 80079E40 1C00A3AF */  sw         $v1, 0x1C($sp)
    /* 68654 80079E44 23104600 */  subu       $v0, $v0, $a2
    /* 68658 80079E48 43110200 */  sra        $v0, $v0, 5
    /* 6865C 80079E4C 1400A2A7 */  sh         $v0, 0x14($sp)
    /* 68660 80079E50 00140200 */  sll        $v0, $v0, 16
    /* 68664 80079E54 03140200 */  sra        $v0, $v0, 16
    /* 68668 80079E58 A763020C */  jal        func_80098E9C
    /* 6866C 80079E5C 2000A2AF */   sw        $v0, 0x20($sp)
    /* 68670 80079E60 04002886 */  lh         $t0, 0x4($s1)
    /* 68674 80079E64 1800A28F */  lw         $v0, 0x18($sp)
    /* 68678 80079E68 00000000 */  nop
    /* 6867C 80079E6C 18004800 */  mult       $v0, $t0
    /* 68680 80079E70 0A002586 */  lh         $a1, 0xA($s1)
    /* 68684 80079E74 12100000 */  mflo       $v0
    /* 68688 80079E78 1C00A78F */  lw         $a3, 0x1C($sp)
    /* 6868C 80079E7C 00000000 */  nop
    /* 68690 80079E80 1800E500 */  mult       $a3, $a1
    /* 68694 80079E84 10002686 */  lh         $a2, 0x10($s1)
    /* 68698 80079E88 12380000 */  mflo       $a3
    /* 6869C 80079E8C 2000A38F */  lw         $v1, 0x20($sp)
    /* 686A0 80079E90 00000000 */  nop
    /* 686A4 80079E94 18006600 */  mult       $v1, $a2
    /* 686A8 80079E98 2800A8AF */  sw         $t0, 0x28($sp)
    /* 686AC 80079E9C 2C00A5AF */  sw         $a1, 0x2C($sp)
    /* 686B0 80079EA0 3000A6AF */  sw         $a2, 0x30($sp)
    /* 686B4 80079EA4 04000486 */  lh         $a0, 0x4($s0)
    /* 686B8 80079EA8 0A000586 */  lh         $a1, 0xA($s0)
    /* 686BC 80079EAC 10000686 */  lh         $a2, 0x10($s0)
    /* 686C0 80079EB0 21104700 */  addu       $v0, $v0, $a3
    /* 686C4 80079EB4 3800A4AF */  sw         $a0, 0x38($sp)
    /* 686C8 80079EB8 3C00A5AF */  sw         $a1, 0x3C($sp)
    /* 686CC 80079EBC 12180000 */  mflo       $v1
    /* 686D0 80079EC0 21104300 */  addu       $v0, $v0, $v1
    /* 686D4 80079EC4 03140200 */  sra        $v0, $v0, 16
    /* 686D8 80079EC8 D8FF4924 */  addiu      $t1, $v0, -0x28
    /* 686DC 80079ECC 05002105 */  bgez       $t1, .L80079EE4
    /* 686E0 80079ED0 4000A6AF */   sw        $a2, 0x40($sp)
    /* 686E4 80079ED4 00E8D248 */  ctc2       $s2, $29 /* handwritten instruction */
    /* 686E8 80079ED8 00F0D348 */  ctc2       $s3, $30 /* handwritten instruction */
    /* 686EC 80079EDC 5EE80108 */  j          .L8007A178
    /* 686F0 80079EE0 00000000 */   nop
  .L80079EE4:
    /* 686F4 80079EE4 00012229 */  slti       $v0, $t1, 0x100
    /* 686F8 80079EE8 02004014 */  bnez       $v0, .L80079EF4
    /* 686FC 80079EEC 00000000 */   nop
    /* 68700 80079EF0 FF000924 */  addiu      $t1, $zero, 0xFF
  .L80079EF4:
    /* 68704 80079EF4 0D80053C */  lui        $a1, %hi(D_800C8864)
    /* 68708 80079EF8 6488A58C */  lw         $a1, %lo(D_800C8864)($a1)
    /* 6870C 80079EFC 00000000 */  nop
    /* 68710 80079F00 3C01A88C */  lw         $t0, 0x13C($a1)
    /* 68714 80079F04 00000000 */  nop
    /* 68718 80079F08 1C00038D */  lw         $v1, 0x1C($t0)
    /* 6871C 80079F0C 1400048D */  lw         $a0, 0x14($t0)
    /* 68720 80079F10 001C0300 */  sll        $v1, $v1, 16
    /* 68724 80079F14 C0320400 */  sll        $a2, $a0, 11
    /* 68728 80079F18 00130400 */  sll        $v0, $a0, 12
    /* 6872C 80079F1C 21104600 */  addu       $v0, $v0, $a2
    /* 68730 80079F20 1A006200 */  div        $zero, $v1, $v0
    /* 68734 80079F24 12100000 */  mflo       $v0
    /* 68738 80079F28 40230400 */  sll        $a0, $a0, 13
    /* 6873C 80079F2C 00000000 */  nop
    /* 68740 80079F30 1A006400 */  div        $zero, $v1, $a0
    /* 68744 80079F34 12180000 */  mflo       $v1
    /* 68748 80079F38 00E8C248 */  ctc2       $v0, $29 /* handwritten instruction */
    /* 6874C 80079F3C 00F0C348 */  ctc2       $v1, $30 /* handwritten instruction */
    /* 68750 80079F40 4000A524 */  addiu      $a1, $a1, 0x40
    /* 68754 80079F44 0000A28C */  lw         $v0, 0x0($a1)
    /* 68758 80079F48 0400A38C */  lw         $v1, 0x4($a1)
    /* 6875C 80079F4C 0000C248 */  ctc2       $v0, $0 /* handwritten instruction */
    /* 68760 80079F50 0008C348 */  ctc2       $v1, $1 /* handwritten instruction */
    /* 68764 80079F54 0800A28C */  lw         $v0, 0x8($a1)
    /* 68768 80079F58 0C00A38C */  lw         $v1, 0xC($a1)
    /* 6876C 80079F5C 0010C248 */  ctc2       $v0, $2 /* handwritten instruction */
    /* 68770 80079F60 1000A28C */  lw         $v0, 0x10($a1)
    /* 68774 80079F64 0018C348 */  ctc2       $v1, $3 /* handwritten instruction */
    /* 68778 80079F68 0020C248 */  ctc2       $v0, $4 /* handwritten instruction */
    /* 6877C 80079F6C 21500000 */  addu       $t2, $zero, $zero
    /* 68780 80079F70 0028CA48 */  ctc2       $t2, $5 /* handwritten instruction */
    /* 68784 80079F74 21580000 */  addu       $t3, $zero, $zero
    /* 68788 80079F78 0030CB48 */  ctc2       $t3, $6 /* handwritten instruction */
    /* 6878C 80079F7C 21600000 */  addu       $t4, $zero, $zero
    /* 68790 80079F80 0038CC48 */  ctc2       $t4, $7 /* handwritten instruction */
    /* 68794 80079F84 1000A227 */  addiu      $v0, $sp, 0x10
    /* 68798 80079F88 000040C8 */  lwc2       $0, 0x0($v0)
    /* 6879C 80079F8C 040041C8 */  lwc2       $1, 0x4($v0)
    /* 687A0 80079F90 00000000 */  nop
    /* 687A4 80079F94 00000000 */  nop
    /* 687A8 80079F98 0100184A */  rtps
    /* 687AC 80079F9C 00F84348 */  cfc2       $v1, $31 /* handwritten instruction */
    /* 687B0 80079FA0 C77F023C */  lui        $v0, (0x7FC7E000 >> 16)
    /* 687B4 80079FA4 00E04234 */  ori        $v0, $v0, (0x7FC7E000 & 0xFFFF)
    /* 687B8 80079FA8 24386200 */  and        $a3, $v1, $v0
    /* 687BC 80079FAC 0500E010 */  beqz       $a3, .L80079FC4
    /* 687C0 80079FB0 00000000 */   nop
    /* 687C4 80079FB4 00E8D248 */  ctc2       $s2, $29 /* handwritten instruction */
    /* 687C8 80079FB8 00F0D348 */  ctc2       $s3, $30 /* handwritten instruction */
    /* 687CC 80079FBC 5EE80108 */  j          .L8007A178
    /* 687D0 80079FC0 00000000 */   nop
  .L80079FC4:
    /* 687D4 80079FC4 00700548 */  mfc2       $a1, $14 /* handwritten instruction */
    /* 687D8 80079FC8 00C04248 */  cfc2       $v0, $24 /* handwritten instruction */
    /* 687DC 80079FCC 00000000 */  nop
    /* 687E0 80079FD0 03140200 */  sra        $v0, $v0, 16
    /* 687E4 80079FD4 001C0500 */  sll        $v1, $a1, 16
    /* 687E8 80079FD8 032C0300 */  sra        $a1, $v1, 16
    /* 687EC 80079FDC 2310A200 */  subu       $v0, $a1, $v0
    /* 687F0 80079FE0 80100200 */  sll        $v0, $v0, 2
    /* 687F4 80079FE4 FF0F4530 */  andi       $a1, $v0, 0xFFF
    /* 687F8 80079FE8 00C80348 */  mfc2       $v1, $25 /* handwritten instruction */
    /* 687FC 80079FEC 00D00448 */  mfc2       $a0, $26 /* handwritten instruction */
    /* 68800 80079FF0 00D80248 */  mfc2       $v0, $27 /* handwritten instruction */
    /* 68804 80079FF4 0028C348 */  ctc2       $v1, $5 /* handwritten instruction */
    /* 68808 80079FF8 0030C448 */  ctc2       $a0, $6 /* handwritten instruction */
    /* 6880C 80079FFC 0038C248 */  ctc2       $v0, $7 /* handwritten instruction */
    /* 68810 8007A000 0C80033C */  lui        $v1, %hi(D_800BF3A0)
    /* 68814 8007A004 A0F36324 */  addiu      $v1, $v1, %lo(D_800BF3A0)
    /* 68818 8007A008 80200500 */  sll        $a0, $a1, 2
    /* 6881C 8007A00C 21306400 */  addu       $a2, $v1, $a0
    /* 68820 8007A010 21208300 */  addu       $a0, $a0, $v1
    /* 68824 8007A014 00100324 */  addiu      $v1, $zero, 0x1000
    /* 68828 8007A018 4C00A0A7 */  sh         $zero, 0x4C($sp)
    /* 6882C 8007A01C 5200A0A7 */  sh         $zero, 0x52($sp)
    /* 68830 8007A020 5400A0A7 */  sh         $zero, 0x54($sp)
    /* 68834 8007A024 5600A0A7 */  sh         $zero, 0x56($sp)
    /* 68838 8007A028 0200C284 */  lh         $v0, 0x2($a2)
    /* 6883C 8007A02C 00008584 */  lh         $a1, 0x0($a0)
    /* 68840 8007A030 0C000B24 */  addiu      $t3, $zero, 0xC
    /* 68844 8007A034 5800A3A7 */  sh         $v1, 0x58($sp)
    /* 68848 8007A038 4800A2A7 */  sh         $v0, 0x48($sp)
    /* 6884C 8007A03C 23100200 */  negu       $v0, $v0
    /* 68850 8007A040 4A00A5A7 */  sh         $a1, 0x4A($sp)
    /* 68854 8007A044 4E00A5A7 */  sh         $a1, 0x4E($sp)
    /* 68858 8007A048 5000A2A7 */  sh         $v0, 0x50($sp)
    /* 6885C 8007A04C 40000A8D */  lw         $t2, 0x40($t0)
    /* 68860 8007A050 00000000 */  nop
    /* 68864 8007A054 1800AA00 */  mult       $a1, $t2
    /* 68868 8007A058 20000434 */  ori        $a0, $zero, 0x20
    /* 6886C 8007A05C 22208B00 */  sub        $a0, $a0, $t3 /* handwritten instruction */
    /* 68870 8007A060 10180000 */  mfhi       $v1
    /* 68874 8007A064 04188300 */  sllv       $v1, $v1, $a0
    /* 68878 8007A068 12200000 */  mflo       $a0
    /* 6887C 8007A06C 06206401 */  srlv       $a0, $a0, $t3
    /* 68880 8007A070 25186400 */  or         $v1, $v1, $a0
    /* 68884 8007A074 00140200 */  sll        $v0, $v0, 16
    /* 68888 8007A078 03140200 */  sra        $v0, $v0, 16
    /* 6888C 8007A07C 0C000A24 */  addiu      $t2, $zero, 0xC
    /* 68890 8007A080 4E00A3A7 */  sh         $v1, 0x4E($sp)
    /* 68894 8007A084 40000C8D */  lw         $t4, 0x40($t0)
    /* 68898 8007A088 00000000 */  nop
    /* 6889C 8007A08C 18004C00 */  mult       $v0, $t4
    /* 688A0 8007A090 20000534 */  ori        $a1, $zero, 0x20
    /* 688A4 8007A094 2228AA00 */  sub        $a1, $a1, $t2 /* handwritten instruction */
    /* 688A8 8007A098 10180000 */  mfhi       $v1
    /* 688AC 8007A09C 0418A300 */  sllv       $v1, $v1, $a1
    /* 688B0 8007A0A0 12280000 */  mflo       $a1
    /* 688B4 8007A0A4 06284501 */  srlv       $a1, $a1, $t2
    /* 688B8 8007A0A8 25186500 */  or         $v1, $v1, $a1
    /* 688BC 8007A0AC 0C000C24 */  addiu      $t4, $zero, 0xC
    /* 688C0 8007A0B0 5000A3A7 */  sh         $v1, 0x50($sp)
    /* 688C4 8007A0B4 40000B8D */  lw         $t3, 0x40($t0)
    /* 688C8 8007A0B8 00000000 */  nop
    /* 688CC 8007A0BC 1800EB00 */  mult       $a3, $t3
    /* 688D0 8007A0C0 20000634 */  ori        $a2, $zero, 0x20
    /* 688D4 8007A0C4 2230CC00 */  sub        $a2, $a2, $t4 /* handwritten instruction */
    /* 688D8 8007A0C8 10200000 */  mfhi       $a0
    /* 688DC 8007A0CC 0420C400 */  sllv       $a0, $a0, $a2
    /* 688E0 8007A0D0 12300000 */  mflo       $a2
    /* 688E4 8007A0D4 06308601 */  srlv       $a2, $a2, $t4
    /* 688E8 8007A0D8 25208600 */  or         $a0, $a0, $a2
    /* 688EC 8007A0DC 6000AB8F */  lw         $t3, 0x60($sp)
    /* 688F0 8007A0E0 5200A4A7 */  sh         $a0, 0x52($sp)
    /* 688F4 8007A0E4 4000088D */  lw         $t0, 0x40($t0)
    /* 688F8 8007A0E8 00000000 */  nop
    /* 688FC 8007A0EC 18006801 */  mult       $t3, $t0
    /* 68900 8007A0F0 20000334 */  ori        $v1, $zero, 0x20
    /* 68904 8007A0F4 22186C00 */  sub        $v1, $v1, $t4 /* handwritten instruction */
    /* 68908 8007A0F8 10500000 */  mfhi       $t2
    /* 6890C 8007A0FC 04506A00 */  sllv       $t2, $t2, $v1
    /* 68910 8007A100 12180000 */  mflo       $v1
    /* 68914 8007A104 06188301 */  srlv       $v1, $v1, $t4
    /* 68918 8007A108 25504301 */  or         $t2, $t2, $v1
    /* 6891C 8007A10C 4800A227 */  addiu      $v0, $sp, 0x48
    /* 68920 8007A110 6000AAAF */  sw         $t2, 0x60($sp)
    /* 68924 8007A114 0000438C */  lw         $v1, 0x0($v0)
    /* 68928 8007A118 0400448C */  lw         $a0, 0x4($v0)
    /* 6892C 8007A11C 0000C348 */  ctc2       $v1, $0 /* handwritten instruction */
    /* 68930 8007A120 0008C448 */  ctc2       $a0, $1 /* handwritten instruction */
    /* 68934 8007A124 0800438C */  lw         $v1, 0x8($v0)
    /* 68938 8007A128 0C00448C */  lw         $a0, 0xC($v0)
    /* 6893C 8007A12C 0010C348 */  ctc2       $v1, $2 /* handwritten instruction */
    /* 68940 8007A130 1000438C */  lw         $v1, 0x10($v0)
    /* 68944 8007A134 0018C448 */  ctc2       $a0, $3 /* handwritten instruction */
    /* 68948 8007A138 0020C348 */  ctc2       $v1, $4 /* handwritten instruction */
    /* 6894C 8007A13C 6800A527 */  addiu      $a1, $sp, 0x68
    /* 68950 8007A140 2E000324 */  addiu      $v1, $zero, 0x2E
    /* 68954 8007A144 0300A3A0 */  sb         $v1, 0x3($a1)
    /* 68958 8007A148 0400878E */  lw         $a3, 0x4($s4)
    /* 6895C 8007A14C FF002231 */  andi       $v0, $t1, 0xFF
    /* 68960 8007A150 6800A2A3 */  sb         $v0, 0x68($sp)
    /* 68964 8007A154 0100A2A0 */  sb         $v0, 0x1($a1)
    /* 68968 8007A158 0200A2A0 */  sb         $v0, 0x2($a1)
    /* 6896C 8007A15C 6800A68F */  lw         $a2, 0x68($sp)
    /* 68970 8007A160 1C00E48C */  lw         $a0, 0x1C($a3)
    /* 68974 8007A164 1800E58C */  lw         $a1, 0x18($a3)
    /* 68978 8007A168 14E7010C */  jal        func_80079C50
    /* 6897C 8007A16C 00000000 */   nop
    /* 68980 8007A170 00E8D248 */  ctc2       $s2, $29 /* handwritten instruction */
    /* 68984 8007A174 00F0D348 */  ctc2       $s3, $30 /* handwritten instruction */
  .L8007A178:
    /* 68988 8007A178 8400BF8F */  lw         $ra, 0x84($sp)
    /* 6898C 8007A17C 8000B48F */  lw         $s4, 0x80($sp)
    /* 68990 8007A180 7C00B38F */  lw         $s3, 0x7C($sp)
    /* 68994 8007A184 7800B28F */  lw         $s2, 0x78($sp)
    /* 68998 8007A188 7400B18F */  lw         $s1, 0x74($sp)
    /* 6899C 8007A18C 7000B08F */  lw         $s0, 0x70($sp)
    /* 689A0 8007A190 0800E003 */  jr         $ra
    /* 689A4 8007A194 8800BD27 */   addiu     $sp, $sp, 0x88
endlabel func_80079DC0
