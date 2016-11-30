        li      $a10     10000 
        li      $a11    500
loop:
        addi    $a1     $a1     1
        beq     $a1     $a10     loopCount1
        j       loop
loopCount1: # until 100 million
        addi    $a2     $a2     1
        li      $a1     0
        beq     $a2     $a10   loopCount2 
        j       loop
loopCount2: # until 50 billion
        addi    $a3     $a3     1
        li      $a2     0
        beq     $a3     $a11   exit
        j       loop
exit: 
        hlt
