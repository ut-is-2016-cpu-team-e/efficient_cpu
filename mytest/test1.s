min_caml_create_array:
  move  $a2, $a0
  move  $v0, $fp
create_array_loop:
  li $a3, 0
  bne $a2, $a3, create_array_cont
  j create_array_exit
create_array_exit:
  jr  $ra
create_array_cont:
  sw  $a1, 0($fp)
  subi  $a2, $a2, 1
  addi  $fp, $fp, 4
  j create_array_loop
min_caml_create_float_array:
  move  $a1, $a0
  move  $v0, $fp
create_float_array_loop:
  li  $a3, 0
  bne $a1, $a3, create_float_array_cont
  jr  $ra
create_float_array_cont:
  fsw  $f0, 0($fp)
  subi  $a1, $a1, 1
  addi  $fp, $fp, 4
  j create_float_array_loop
l.38:	 # 3.000000
	li	$a25, 16448
	sll	$a25, $a25, 16
	ori	$a25, $a25, 0
	jr	$ra
l.37:	 # 4.560000
	li	$a25, 16529
	sll	$a25, $a25, 16
	ori	$a25, $a25, 60293
	jr	$ra
l.36:	 # 1.230000
	li	$a25, 16285
	sll	$a25, $a25, 16
	ori	$a25, $a25, 28836
	jr	$ra
f.17:
	lw	$a0, 12($a26)
	lw	$a1, 8($a26)
	lw	$a2, 4($a26)
	sll	$a3, $a2, 2
	add	$a3, $a1, $a3
	flw	$f1, 0($a3)
	flw	$f2, 4($a1)
	fadd	$f1, $f1, $f2
	sll	$a1, $a2, 2
	add	$a1, $a0, $a1
	flw	$f2, 0($a1)
	fadd	$f1, $f1, $f2
	fadd	$fv, $f1, $f0
	jr $ra
exit:
	hlt
_min_caml_start: # main entry point
   # main program start
	li	$a0, 3
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	l.36
	subi	$sp, $sp, 8
	lw	$ra, 4($sp)
	mtc1	$f0, $a25
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	min_caml_create_float_array
	subi	$sp, $sp, 8
	lw	$ra, 4($sp)
	move	$a0, $v0
	li	$a1, 3
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	l.37
	subi	$sp, $sp, 8
	lw	$ra, 4($sp)
	mtc1	$f0, $a25
	sw	$a0, 0($sp)
	move	$a0, $a1
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	min_caml_create_float_array
	subi	$sp, $sp, 8
	lw	$ra, 4($sp)
	move	$a0, $v0
	li	$a1, 2
	move	$a26, $fp
	addi	$fp, $fp, 16
	lil	$a2, f.17
	sw	$a2, 0($a26)
	sw	$a0, 12($a26)
	lw	$a0, 0($sp)
	sw	$a0, 8($a26)
	sw	$a1, 4($a26)
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	l.38
	subi	$sp, $sp, 8
	lw	$ra, 4($sp)
	mtc1	$f0, $a25
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	f.17
	subi	$sp, $sp, 8
	lw	$ra, 4($sp)
	fmove	$f0, $fv
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	min_caml_int_of_float
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
