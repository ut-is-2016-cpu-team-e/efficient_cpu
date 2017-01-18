# <test>sqrt, sin, cos, atan, floor, itof, ftoi, print_int, read_int, read_float
        li  $a9, 16384
        sll $a9, $a9, 16
        ori $a9, $a9, 0
        mtc1 $fv, $a9
        fmove $f0, $fv
        nop
        jal min_caml_sqrt
        nop
        jal min_caml_sin
        nop
        jal min_caml_cos
        nop
        jal min_caml_atan
        nop
        jal min_caml_floor
        nop
        jal min_caml_float_of_int
        nop
        jal min_caml_int_of_float
        nop
        jal min_caml_read_int
        nop
        move $a0, $v0
        nop
        jal min_caml_print_int
        nop
        jal min_caml_read_float
        hlt
