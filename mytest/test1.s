_min_caml_start: #entry_point
	sub	$zero, $zero, $zero
	li	$fp, 0
	j _min_caml_start2
countn.23:
	blt	$a0, $a1, bge_else.67
	sub	$a0, $a0, $a1
	addi	$a2, $a2, 1
	j	countn.23
bge_else.67:
	move	$v0, $a2
	jr	$ra
mymul.27:
	li	$a3, 0
	bne	$a0, $a3, beq_else.68
	move	$v0, $a2
	jr	$ra
beq_else.68:
	subi	$a0, $a0, 1
	add	$a2, $a2, $a1
	j	mymul.27
print_int.31:
	li	$a2, 0
	blt	$a0, $a2, bge_else.69
	j	bge_cont.70
bge_else.69:
	li	$a23, 45
	print_byte	$a23
	neg	$a0, $a0
bge_cont.70:
	li	$a1, 10
	sw	$a0, 0($sp)
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	countn.23
	subi	$sp, $sp, 8
	lw	$ra, 4($sp)
	move	$a0, $v0
	li	$a1, 10
	li	$a2, 0
	sw	$a0, 4($sp)
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	mymul.27
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	move	$a0, $v0
	lw	$a1, 0($sp)
	sub	$a0, $a1, $a0
	li	$a1, 0
	lw	$a2, 4($sp)
	blt	$a1, $a2, bge_else.71
	li	$a1, 0
	j	bge_cont.72
bge_else.71:
	addi	$a1, $a2, 48
	print_byte	$a1
	li	$a1, 1
bge_cont.72:
	addi	$a0, $a0, 48
	print_byte	$a0
	jr	$ra
exit:
	hlt
_min_caml_start2: # main entry point
   # main program start
	li	$a0, 18
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	print_int.31
	subi	$sp, $sp, 8
	lw	$ra, 4($sp)
	move	$a0, $v0
	j exit   # main program end
