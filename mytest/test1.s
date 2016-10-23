l.17:	 # 4.000000
	li	$fv, 16512
	sll	$fv, $fv, 16
	ori	$fv, $fv, 0
l.16:	 # 2.000000
	li	$fv, 16384
	sll	$fv, $fv, 16
	ori	$fv, $fv, 0
l.15:	 # 3.000000
	li	$fv, 16448
	sll	$fv, $fv, 16
	ori	$fv, $fv, 0
f.6:
	lw	$f1, 8($a26)
	fadd	$fv, $f1, $f0
	jr $ra
g.8:
	lw	$f1, 8($a26)
	fmul	$fv, $f1, $f0
	jr $ra
exit:
	hlt
_min_caml_start: # main entry point
   # main program start
	jal l.15
	move	$f0, $fv
	move	$a26, $a0
	addi	$a0, $a0, 16
	lis	$a1, ha16(f.6)
	addi	$a1, $a1, lo16(f.6)
	sw	$a1, 0($a26)
	sw	$f0, 8($a26)
	move	$a1, $a0
	addi	$a0, $a0, 16
	lis	$a2, ha16(g.8)
	addi	$a2, $a2, lo16(g.8)
	sw	$a2, 0($a1)
	sw	$f0, 8($a1)
	jal l.16
	move	$f0, $fv
	sw	$a1, 0($sp)
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	lw	$a24, 0($a26)
	jal	f.6
	subi	$sp, $sp, 8
	lw	$ra, 4($sp)
	move	$f0, $v0
	jal l.17
	move	$f1, $fv
	lw	$a26, 0($sp)
	sw	$f0, 8($sp)
	fmove	$f0, $f1
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	lw	$a24, 0($a26)
	jal	g.8
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	move	$f0, $v0
	lw	$f1, 8($sp)
	fadd	$f0, $f1, $f0
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	min_caml_print_float
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	move	$a0, $v0
	j exit   # main program end
