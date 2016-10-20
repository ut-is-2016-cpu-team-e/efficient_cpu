fib.11:
	li	$a2, 0
	bne	$a1, $a2, beq_else.26
	li	$v0, 0
	jr $ra
beq_else.26:
	li	$a2, 1
	bne	$a1, $a2, beq_else.27
	li	$v0, 1
	jr $ra
beq_else.27:
	subi	$a2, $a1, 1
	sw	$a1, 0($sp)
	move	$a1, $a2
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	fib.11
	subi	$sp, $sp, 8
	lw	$ra, 4($sp)
	move	$a1, $v0
	lw	$a2, 0($sp)
	subi	$a2, $a2, 2
	sw	$a1, 4($sp)
	move	$a1, $a2
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	fib.11
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	move	$a1, $v0
	lw	$a2, 4($sp)
	add	$v0, $a2, $a1
	jr $ra
exit:
	hlt
_min_caml_start: # main entry point
   # main program start
	li	$a1, 10
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	fib.11
	subi	$sp, $sp, 8
	lw	$ra, 4($sp)
	move	$a1, $v0
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	j exit
	jal	min_caml_print_int
	subi	$sp, $sp, 8
	lw	$ra, 4($sp)
	move	$a0, $v0
	j exit   # main program end

