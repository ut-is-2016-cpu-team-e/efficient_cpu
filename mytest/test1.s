f.14:
	lw	$a2, 4($a26)
	li	$a3, 0
	bne	$a1, $a3, beq_else.43
	li	$v0, 0
	jr $ra
beq_else.43:
	subi	$a1, $a1, 1
	sw	$a2, 0($sp)
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	lw	$a24, 0($a26)
	jal	f.14
	subi	$sp, $sp, 8
	lw	$ra, 4($sp)
	move	$a1, $v0
	lw	$a2, 0($sp)
	add	$v0, $a2, $a1
	jr $ra
g.17:
	lw	$a2, 4($a26)
	li	$a3, 0
	bne	$a1, $a3, beq_else.44
	li	$v0, 0
	jr $ra
beq_else.44:
	subi	$a1, $a1, 1
	sw	$a2, 0($sp)
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	lw	$a24, 0($a26)
	jal	g.17
	subi	$sp, $sp, 8
	lw	$ra, 4($sp)
	move	$a1, $v0
	lw	$a2, 0($sp)
	sub	$v0, $a2, $a1
	jr $ra
exit:
	hlt
_min_caml_start: # main entry point
   # main program start
	li	$a1, 10
	move	$a26, $a0
	addi	$a0, $a0, 8
	lis	$a2, ha16(f.14)
	addi	$a2, $a2, lo16(f.14)
	sw	$a2, 0($a26)
	sw	$a1, 4($a26)
	li	$a1, 20
	move	$a2, $a0
	addi	$a0, $a0, 8
	lis	$a3, ha16(g.17)
	addi	$a3, $a3, lo16(g.17)
	sw	$a3, 0($a2)
	sw	$a1, 4($a2)
	li	$a1, 3
	sw	$a2, 0($sp)
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	lw	$a24, 0($a26)
	jal	f.14
	subi	$sp, $sp, 8
	lw	$ra, 4($sp)
	move	$a1, $v0
	li	$a2, 1
	lw	$a26, 0($sp)
	sw	$a1, 4($sp)
	move	$a1, $a2
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	lw	$a24, 0($a26)
	jal	g.17
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	move	$a1, $v0
	lw	$a2, 4($sp)
	add	$a1, $a2, $a1
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	min_caml_print_int
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	move	$a0, $v0
	j exit   # main program end
