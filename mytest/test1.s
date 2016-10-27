l.9:	 # 4.000000
	li	$a25, 16512
	sll	$a25, $a25, 16
	ori	$a25, 0
	ja $ra
l.8:	 # 3.000000
	li	$a25, 16448
	sll	$a25, $a25, 16
	ori	$a25, 0
	ja $ra
f.4:
	flw	$f1, 8($a26)
	fadd	$fv, $f1, $f0
	jr $ra
exit:
	hlt
_min_caml_start: # main entry point
   # main program start
	jal l.8
	mtc1	$f0, $a25
	move	$a26, $a0
	addi	$a0, $a0, 16
	lil	$a1, f.4
	sw	$a1, 0($a26)
	fsw	$f0, 8($a26)
	jal l.9
	mtc1	$f0, $a25
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	lw	$a24, 0($a26)
	jal	f.4
	subi	$sp, $sp, 8
	lw	$ra, 4($sp)
	move	$f0, $v0
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	min_caml_print_float
	subi	$sp, $sp, 8
	lw	$ra, 4($sp)
	move	$a0, $v0
	j exit   # main program end
