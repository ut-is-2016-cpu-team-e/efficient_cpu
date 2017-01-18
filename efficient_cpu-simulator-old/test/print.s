        nop
        li	$a8 16384 # 2.000000
        li  $a10 65 # 'A'
        mtc1 $fv $a8
        mfc1 $a11 $fv
        sll	$a11 $a11 16
        ori	$a11 $a11 0
        mtc1 $f10 $a11
        
        sqrt $f1 $f10
        sin $f2 $f10
        cos $f3 $f10
        floor $f4 $f10
        atan $f5 $f10
        itof $f6 $a8
        ftoi $a9 $f6

        print_int $a9
        print_char $a10
        read_int $a12
        read_float $f7

        
