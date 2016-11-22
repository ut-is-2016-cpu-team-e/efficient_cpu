gcd.7:
	li	$a2, 0
	blt	$a2, $a0, bge_else.17
	move	$v0, $a1
	jr	$ra
bge_else.17:
	blt	$a1, $a0, bge_else.18
	sub	$a1, $a1, $a0
	j	gcd.7
bge_else.18:
	sub	$a0, $a0, $a1
	move	$a25, $a1
	move	$a1, $a0
	move	$a0, $a25
	j	gcd.7
exit:
	hlt
_min_caml_start: # main entry point
   # main program start
	li	$a0, 21600
	li	$a1, 5
	sll	$a1, $a1, 16
	ori	$a1, $a1, 9820
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	gcd.7
	subi	$sp, $sp, 8
	lw	$ra, 4($sp)
	move	$a0, $v0
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	min_caml_print_int
	subi	$sp, $sp, 8
	lw	$ra, 4($sp)
	move	$a0, $v0
	j exit   # main program end
