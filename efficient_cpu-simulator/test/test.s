# <test>sll, srl, and, or, andi, ori
start:
        li      $a0,    8   # $a0 = 8 
        addi    $a1,    $zero,  4  # $a1 = 4
        subi    $a2,    $a0,    6  # $a2 = 2
        sll     $a3,    $a2,    2  # $a3 = 8
        and     $a4,    $a0,    $a3  # $a4 = 8
        or      $a5,    $a0,    $a1  # $a5 = 12
        beq     $a5,    $a0,    next2  # if ($a5 == $a0)  
        beq     $a4,    $a0,    next1  # if ($a4 == $a0)
next1:
        add     $a6,    $a0,    $a2  # $a6 = 10
        ori     $a7,    $a6,    4   # $a7 = 14
        andi    $a8,    $a6,    12  # $a8 = 8
        li      $a9,    28
        srl     $a10,   $a9,    1
        beq     $a6,    $a0,    end2  # if ($a6 == $a0)
        beq     $a7,    $a10,   end1  # if ($a7 == $a1)
next2:
        j       end2 
end1:
        nop
        hlt 
end2:
        hlt

