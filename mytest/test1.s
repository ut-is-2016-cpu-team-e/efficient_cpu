	.data
	.literal8
	.align 3
l.11:	 # 4.000000
	li	$fv, 16512
	sll	$fv, $fv, 16
	ori	$fv, $fv, 0
	.align 3
l.10:	 # 3.000000
	li	$fv, 16448
	sll	$fv, $fv, 16
	ori	$fv, $fv, 0
fadd.4:
	fadd	$f0, $f0, $f1
	jr $ra
exit:
	hlt
_min_caml_start: # main entry point
   # main program start
	jal l.10
	move	$f0, $fv
	jal l.11
	move	$f1, $fv
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	fadd.4
	subi	$sp, $sp, 8
	lw	$ra, 4($sp)
	fmove	$f0, $fv
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	min_caml_print_float
	subi	$sp, $sp, 8
	lw	$ra, 4($sp)
	move	$a0, $v0
	j exit   # main program end
