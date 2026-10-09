nonmatching func_800A17EC, 0x170

glabel func_800A17EC
    /* 8FFFC 800A17EC C0FFBD27 */  addiu      $sp, $sp, -0x40
    /* 90000 800A17F0 1800A427 */  addiu      $a0, $sp, 0x18
    /* 90004 800A17F4 3000B0AF */  sw         $s0, 0x30($sp)
    /* 90008 800A17F8 2180A000 */  addu       $s0, $a1, $zero
    /* 9000C 800A17FC 3C00BFAF */  sw         $ra, 0x3C($sp)
    /* 90010 800A1800 3800B2AF */  sw         $s2, 0x38($sp)
    /* 90014 800A1804 9A1B020C */  jal        func_80086E68
    /* 90018 800A1808 3400B1AF */   sw        $s1, 0x34($sp)
    /* 9001C 800A180C A7AF020C */  jal        DrawSync
    /* 90020 800A1810 21200000 */   addu      $a0, $zero, $zero
    /* 90024 800A1814 B4AA020C */  jal        VSync
    /* 90028 800A1818 21200000 */   addu      $a0, $zero, $zero
    /* 9002C 800A181C D3D4020C */  jal        malloc
    /* 90030 800A1820 00700424 */   addiu     $a0, $zero, 0x7000
    /* 90034 800A1824 21904000 */  addu       $s2, $v0, $zero
    /* 90038 800A1828 44004012 */  beqz       $s2, .L800A193C
    /* 9003C 800A182C 1800A427 */   addiu     $a0, $sp, 0x18
    /* 90040 800A1830 06000012 */  beqz       $s0, .L800A184C
    /* 90044 800A1834 21200002 */   addu      $a0, $s0, $zero
    /* 90048 800A1838 21280000 */  addu       $a1, $zero, $zero
    /* 9004C 800A183C AB81020C */  jal        func_800A06AC
    /* 90050 800A1840 21300000 */   addu      $a2, $zero, $zero
    /* 90054 800A1844 14860208 */  j          .L800A1850
    /* 90058 800A1848 21884000 */   addu      $s1, $v0, $zero
  .L800A184C:
    /* 9005C 800A184C 21880000 */  addu       $s1, $zero, $zero
  .L800A1850:
    /* 90060 800A1850 06002016 */  bnez       $s1, .L800A186C
    /* 90064 800A1854 21280000 */   addu      $a1, $zero, $zero
    /* 90068 800A1858 0D80043C */  lui        $a0, %hi(D_800C9F1C)
    /* 9006C 800A185C 1C9F8424 */  addiu      $a0, $a0, %lo(D_800C9F1C)
    /* 90070 800A1860 AB81020C */  jal        func_800A06AC
    /* 90074 800A1864 21300000 */   addu      $a2, $zero, $zero
    /* 90078 800A1868 21884000 */  addu       $s1, $v0, $zero
  .L800A186C:
    /* 9007C 800A186C 2800A427 */  addiu      $a0, $sp, 0x28
    /* 90080 800A1870 21280000 */  addu       $a1, $zero, $zero
    /* 90084 800A1874 21300000 */  addu       $a2, $zero, $zero
    /* 90088 800A1878 21380000 */  addu       $a3, $zero, $zero
    /* 9008C 800A187C 00020224 */  addiu      $v0, $zero, 0x200
    /* 90090 800A1880 2C00A2A7 */  sh         $v0, 0x2C($sp)
    /* 90094 800A1884 2E00A2A7 */  sh         $v0, 0x2E($sp)
    /* 90098 800A1888 2800A0A7 */  sh         $zero, 0x28($sp)
    /* 9009C 800A188C 08B0020C */  jal        ClearImage
    /* 900A0 800A1890 2A00A0A7 */   sh        $zero, 0x2A($sp)
    /* 900A4 800A1894 A7AF020C */  jal        DrawSync
    /* 900A8 800A1898 21200000 */   addu      $a0, $zero, $zero
    /* 900AC 800A189C 81AF020C */  jal        SetDispMask
    /* 900B0 800A18A0 21200000 */   addu      $a0, $zero, $zero
    /* 900B4 800A18A4 1800A427 */  addiu      $a0, $sp, 0x18
    /* 900B8 800A18A8 21284002 */  addu       $a1, $s2, $zero
    /* 900BC 800A18AC C51B020C */  jal        func_80086F14
    /* 900C0 800A18B0 00700624 */   addiu     $a2, $zero, 0x7000
    /* 900C4 800A18B4 1800A427 */  addiu      $a0, $sp, 0x18
    /* 900C8 800A18B8 04003026 */  addiu      $s0, $s1, 0x4
    /* 900CC 800A18BC 21280002 */  addu       $a1, $s0, $zero
    /* 900D0 800A18C0 01000624 */  addiu      $a2, $zero, 0x1
    /* 900D4 800A18C4 21380000 */  addu       $a3, $zero, $zero
    /* 900D8 800A18C8 1000A0AF */  sw         $zero, 0x10($sp)
    /* 900DC 800A18CC 1A1D020C */  jal        func_80087468
    /* 900E0 800A18D0 1400A0AF */   sw        $zero, 0x14($sp)
    /* 900E4 800A18D4 A7AF020C */  jal        DrawSync
    /* 900E8 800A18D8 21200000 */   addu      $a0, $zero, $zero
    /* 900EC 800A18DC 1800A427 */  addiu      $a0, $sp, 0x18
    /* 900F0 800A18E0 21280002 */  addu       $a1, $s0, $zero
    /* 900F4 800A18E4 01000624 */  addiu      $a2, $zero, 0x1
    /* 900F8 800A18E8 21380000 */  addu       $a3, $zero, $zero
    /* 900FC 800A18EC 00010224 */  addiu      $v0, $zero, 0x100
    /* 90100 800A18F0 1000A2AF */  sw         $v0, 0x10($sp)
    /* 90104 800A18F4 1A1D020C */  jal        func_80087468
    /* 90108 800A18F8 1400A0AF */   sw        $zero, 0x14($sp)
    /* 9010C 800A18FC A7AF020C */  jal        DrawSync
    /* 90110 800A1900 21200000 */   addu      $a0, $zero, $zero
    /* 90114 800A1904 81AF020C */  jal        SetDispMask
    /* 90118 800A1908 01000424 */   addiu     $a0, $zero, 0x1
    /* 9011C 800A190C 03002012 */  beqz       $s1, .L800A191C
    /* 90120 800A1910 00000000 */   nop
    /* 90124 800A1914 59D5020C */  jal        free
    /* 90128 800A1918 21202002 */   addu      $a0, $s1, $zero
  .L800A191C:
    /* 9012C 800A191C 0A80043C */  lui        $a0, %hi(func_800A1654)
    /* 90130 800A1920 9E55000C */  jal        func_80015678
    /* 90134 800A1924 54168424 */   addiu     $a0, $a0, %lo(func_800A1654)
    /* 90138 800A1928 04004012 */  beqz       $s2, .L800A193C
    /* 9013C 800A192C 1800A427 */   addiu     $a0, $sp, 0x18
    /* 90140 800A1930 59D5020C */  jal        free
    /* 90144 800A1934 21204002 */   addu      $a0, $s2, $zero
    /* 90148 800A1938 1800A427 */  addiu      $a0, $sp, 0x18
  .L800A193C:
    /* 9014C 800A193C 9F1B020C */  jal        func_80086E7C
    /* 90150 800A1940 02000524 */   addiu     $a1, $zero, 0x2
    /* 90154 800A1944 3C00BF8F */  lw         $ra, 0x3C($sp)
    /* 90158 800A1948 3800B28F */  lw         $s2, 0x38($sp)
    /* 9015C 800A194C 3400B18F */  lw         $s1, 0x34($sp)
    /* 90160 800A1950 3000B08F */  lw         $s0, 0x30($sp)
    /* 90164 800A1954 0800E003 */  jr         $ra
    /* 90168 800A1958 4000BD27 */   addiu     $sp, $sp, 0x40
endlabel func_800A17EC
