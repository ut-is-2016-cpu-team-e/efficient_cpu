# <test>2.0 + 3.6
l.11:	 # 3.600000
    li  $a9, 16486
    mtc1 $fv, $a9
    mfc1 $a10, $fv
	sll	$a10, $a10, 16
	ori	$a10, $a10, 26214
    mtc1 $fv, $a10
    jr $ra
l.10:	 # 2.000000
	li	$a8, 16384
    mtc1 $fv, $a8
    mfc1 $a11, $fv
	sll	$a11, $a11, 16
	ori	$a11, $a11, 0
    mtc1 $fv, $a11
    jr $ra
fadd.4:
	fadd	$fv, $f0, $f1
	jr $ra
exit:
	hlt
_min_caml_start: # main entry point
   # main program start
	jal l.10
	fmove	$f0, $fv
	jal l.11
	fmove	$f1, $fv
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	fadd.4
	subi	$sp, $sp, 8
	lw	$ra, 4($sp)
	fmove	$f0, $fv
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
    print_int $a0
	subi	$sp, $sp, 8
	lw	$ra, 4($sp)
	move	$a0, $v0
	j exit   # main program end
