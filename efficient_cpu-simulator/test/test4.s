# <test>xor, fdiv, fabs
    li  $a0  5
    li  $a1  3
    xor $a2 $a0 $a1

    li  $a9 16486 # 3.600000
    mtc1 $fv $a9
    mfc1 $a10 $fv
	sll	$a10 $a10 16
	ori	$a10 $a10 26214
    mtc1 $f0 $a10
	 
	li	$a8 16384 # 2.000000
    mtc1 $fv $a8
    mfc1 $a11 $fv
	sll	$a11 $a11 16
	ori	$a11 $a11 0
    mtc1 $f1 $a11

    fdiv  $f3 $f0 $f1
    fneg  $f3   $f3
    fabs  $f4 $f3

    hlt
