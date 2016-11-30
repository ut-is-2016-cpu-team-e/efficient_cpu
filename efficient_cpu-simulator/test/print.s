        nop
        jal     min_caml_read_int
        move    $a0     $v0
        nop
        jal     min_caml_print_int
        nop
        jal     min_caml_read_int
        move    $a0     $v0
        nop
        jal     min_caml_print_byte
        nop 
        jal     min_caml_read_int
        move    $a0     $v0
        nop
        jal     min_caml_print_int
        nop
        hlt
