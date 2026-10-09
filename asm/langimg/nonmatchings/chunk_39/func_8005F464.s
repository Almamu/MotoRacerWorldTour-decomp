nonmatching func_8005F464, 0x1C

glabel func_8005F464
    /* 4DC74 8005F464 A4018294 */  lhu        $v0, 0x1A4($a0)
    /* 4DC78 8005F468 A40180A4 */  sh         $zero, 0x1A4($a0)
    /* 4DC7C 8005F46C A60180A4 */  sh         $zero, 0x1A6($a0)
    /* 4DC80 8005F470 A80180A4 */  sh         $zero, 0x1A8($a0)
    /* 4DC84 8005F474 9C0180AC */  sw         $zero, 0x19C($a0)
    /* 4DC88 8005F478 0800E003 */  jr         $ra
    /* 4DC8C 8005F47C AA0182A4 */   sh        $v0, 0x1AA($a0)
endlabel func_8005F464
