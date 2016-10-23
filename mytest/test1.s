f.3:
	sll	$v0, $a1, 2
	jr $ra
exit:
	hlt
_min_caml_start: # main entry point
   # main program start
	li	$a1, 5
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	f.3
	subi	$sp, $sp, 8
	lw	$ra, 4($sp)
	move	$a1, $v0
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	min_caml_print_int
	subi	$sp, $sp, 8
	lw	$ra, 4($sp)
	move	$a0, $v0
	j exit   # main program end
