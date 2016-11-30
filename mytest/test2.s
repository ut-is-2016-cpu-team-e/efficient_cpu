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
l.126:	 # 4.000000
	li	$a25, 16512
	sll	$a25, $a25, 16
	ori	$a25, $a25, 0
	jr	$ra
l.123:	 # 3.000000
	li	$a25, 16448
	sll	$a25, $a25, 16
	ori	$a25, $a25, 0
	jr	$ra
l.120:	 # 2.000000
	li	$a25, 16384
	sll	$a25, $a25, 16
	ori	$a25, $a25, 0
	jr	$ra
l.117:	 # 1.000000
	li	$a25, 16256
	sll	$a25, $a25, 16
	ori	$a25, $a25, 0
	jr	$ra
l.110:	 # 0.000000
	li	$a25, 0
	sll	$a25, $a25, 16
	ori	$a25, $a25, 0
	jr	$ra
init.97:
	lw	$a1, 8($a26)
	lw	$a2, 4($a26)
	li	$a3, 0
	blt	$a0, $a3, blt_else.147
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	l.110
	subi	$sp, $sp, 8
	lw	$ra, 4($sp)
	mtc1	$f0, $a25
	sw	$a26, 0($sp)
	sw	$a2, 4($sp)
	sw	$a0, 8($sp)
	move	$a0, $a1
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	min_caml_create_float_array
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	move	$a0, $v0
	lw	$a1, 8($sp)
	sll	$a2, $a1, 2
	lw	$a3, 4($sp)
	add	$a3, $a3, $a2
	sw	$a0, 0($a3)
	subi	$a0, $a1, 1
	lw	$a26, 0($sp)
	lw	$a25, 0($a26)
	j	init.97
blt_else.147:
	jr	$ra
make.51:
	lw	$a2, 4($a26)
	sw	$a0, 0($sp)
	sw	$a1, 4($sp)
	move	$a1, $a2
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	min_caml_create_array
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	move	$a0, $v0
	move	$a26, $fp
	addi	$fp, $fp, 16
	lil	$a1, init.97
	sw	$a1, 0($a26)
	lw	$a1, 4($sp)
	sw	$a1, 8($a26)
	sw	$a0, 4($a26)
	lw	$a1, 0($sp)
	subi	$a1, $a1, 1
	sw	$a0, 8($sp)
	move	$a0, $a1
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	init.97
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	fmove	$f30, $fv
	lw	$a0, 8($sp)
	move	$v0, $a0
	jr	$ra
exit:
	hlt
_min_caml_start: # main entry point
   # main program start
	li	$a0, 0
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	l.110
	subi	$sp, $sp, 8
	lw	$ra, 4($sp)
	mtc1	$f0, $a25
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	min_caml_create_float_array
	subi	$sp, $sp, 8
	lw	$ra, 4($sp)
	move	$a0, $v0
	move	$a26, $fp
	addi	$fp, $fp, 8
	lil	$a1, make.51
	sw	$a1, 0($a26)
	sw	$a0, 4($a26)
	li	$a0, 2
	li	$a1, 2
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	make.51
	subi	$sp, $sp, 8
	lw	$ra, 4($sp)
	move	$a0, $v0
	lw	$a1, 0($a0)
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	l.117
	subi	$sp, $sp, 8
	lw	$ra, 4($sp)
	mtc1	$f0, $a25
	fsw	$f0, 0($a1)
	lw	$a1, 0($a0)
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	l.120
	subi	$sp, $sp, 8
	lw	$ra, 4($sp)
	mtc1	$f0, $a25
	fsw	$f0, 4($a1)
	lw	$a1, 4($a0)
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	l.123
	subi	$sp, $sp, 8
	lw	$ra, 4($sp)
	mtc1	$f0, $a25
	fsw	$f0, 0($a1)
	lw	$a1, 4($a0)
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	l.126
	subi	$sp, $sp, 8
	lw	$ra, 4($sp)
	mtc1	$f0, $a25
	fsw	$f0, 4($a1)
	lw	$a1, 0($a0)
	flw	$f0, 0($a1)
	lw	$a1, 0($a0)
	flw	$f1, 4($a1)
	fadd	$f0, $f0, $f1
	lw	$a1, 4($a0)
	flw	$f1, 0($a1)
	lw	$a0, 4($a0)
	flw	$f2, 4($a0)
	fadd	$f1, $f1, $f2
	fadd	$f0, $f0, $f1
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	min_caml_print_float
	subi	$sp, $sp, 8
	lw	$ra, 4($sp)
	move	$a0, $v0
	j exit   # main program end
