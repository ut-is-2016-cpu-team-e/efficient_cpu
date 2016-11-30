# <test>neg, sla, sra, fneg, flw, fsw
start:
        li      $a0,    24
        neg     $a1,    $a0 # $a1 = -24
        sla     $a0,    $a0,    1 # $a0 = 48
        sra     $a1,    $a1,    2 # $a1 = -6
        sla     $a1,    $a1,    4 # $a1 = -96
        j       next2
next1:
        nop
next2:
        li      $a2,    16486
        sll     $a2,    $a2,    16  
        ori     $a3,    $a2,    26214
        li      $a4,    4
        mtc1    $f0,    $a3 # $f0 = 3.6
        fsw     $f0,    6($a4)
        flw     $f1,    6($a4)
        fneg    $f2,    $f1
        hlt
