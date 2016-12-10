        nop
        li      $a2     15000
loop:
        li      $a0     15
        nop
        jal     min_caml_print_int
        nop
        li      $a0     65
        nop
        jal     min_caml_print_byte
        nop 
        addi    $a1     $a1     1
        bne     $a1     $a2   loop  
        nop
        hlt
