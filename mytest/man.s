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
write_header.188:
	li	$a0, 80
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	min_caml_print_byte
	subi	$sp, $sp, 8
	lw	$ra, 4($sp)
	fmove	$f30, $fv
	li	$a0, 51
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	min_caml_print_byte
	subi	$sp, $sp, 8
	lw	$ra, 4($sp)
	fmove	$f30, $fv
	li	$a0, 10
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	min_caml_print_byte
	subi	$sp, $sp, 8
	lw	$ra, 4($sp)
	fmove	$f30, $fv
	li	$a0, 100
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	min_caml_print_int
	subi	$sp, $sp, 8
	lw	$ra, 4($sp)
	fmove	$f30, $fv
	li	$a0, 32
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	min_caml_print_byte
	subi	$sp, $sp, 8
	lw	$ra, 4($sp)
	fmove	$f30, $fv
	li	$a0, 100
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	min_caml_print_int
	subi	$sp, $sp, 8
	lw	$ra, 4($sp)
	fmove	$f30, $fv
	li	$a0, 32
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	min_caml_print_byte
	subi	$sp, $sp, 8
	lw	$ra, 4($sp)
	fmove	$f30, $fv
	li	$a0, 255
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	min_caml_print_int
	subi	$sp, $sp, 8
	lw	$ra, 4($sp)
	fmove	$f30, $fv
	li	$a0, 10
	j	min_caml_print_byte
write.251:
	fsw	$f2, 0($sp)
	fsw	$f1, 8($sp)
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	min_caml_int_of_float
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	move	$a0, $v0
	flw	$f0, 8($sp)
	sw	$a0, 16($sp)
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	min_caml_int_of_float
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	move	$a0, $v0
	flw	$f0, 0($sp)
	sw	$a0, 20($sp)
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	min_caml_int_of_float
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	move	$a0, $v0
	li	$a1, 32
	sw	$a0, 24($sp)
	move	$a0, $a1
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	min_caml_print_byte
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	fmove	$f30, $fv
	lw	$a0, 16($sp)
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	min_caml_print_int
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	fmove	$f30, $fv
	li	$a0, 32
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	min_caml_print_byte
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	fmove	$f30, $fv
	lw	$a0, 20($sp)
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	min_caml_print_int
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	fmove	$f30, $fv
	li	$a0, 32
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	min_caml_print_byte
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	fmove	$f30, $fv
	lw	$a0, 24($sp)
	j	min_caml_print_int
write_rgb.191:
	lw	$a1, 4($a4)
	sw	$a0, 0($sp)
	sw	$a1, 4($sp)
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	min_caml_float_of_int
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	fmove	$f0, $fv
	lw	$a0, 4($sp)
	lw	$a1, 0($a0)
	lw	$a2, 0($sp)
	blt	$a1, $a2, bge_else.564
	li	$v0, 17279
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f0, $v0
	li	$v0, 0
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	li	$v0, 0
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	j	write.251
bge_else.564:
	lw	$a1, 4($a0)
	blt	$a1, $a2, bge_else.565
	li	$v0, 17279
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f0, $v0
	li	$v0, 17279
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	lw	$a1, 0($a0)
	sub	$a1, $a2, $a1
	fsw	$f0, 8($sp)
	fsw	$f1, 16($sp)
	move	$a0, $a1
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	min_caml_float_of_int
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	fmove	$f0, $fv
	flw	$f1, 16($sp)
	fmul	$f0, $f1, $f0
	lw	$a0, 4($sp)
	lw	$a1, 4($a0)
	lw	$a0, 0($a0)
	sub	$a0, $a1, $a0
	fsw	$f0, 24($sp)
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	min_caml_float_of_int
	subi	$sp, $sp, 40
	lw	$ra, 36($sp)
	fmove	$f0, $fv
	finv	$f0, $f0
	flw	$f1, 24($sp)
	fmul	$f1, $f1, $f0
	li	$v0, 0
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	flw	$f0, 8($sp)
	j	write.251
bge_else.565:
	lw	$a1, 8($a0)
	blt	$a1, $a2, bge_else.566
	li	$v0, 17279
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f0, $v0
	lw	$a1, 8($a0)
	sub	$a1, $a1, $a2
	fsw	$f0, 32($sp)
	move	$a0, $a1
	sw	$ra, 44($sp)
	addi	$sp, $sp, 48
	jal	min_caml_float_of_int
	subi	$sp, $sp, 48
	lw	$ra, 44($sp)
	fmove	$f0, $fv
	flw	$f1, 32($sp)
	fmul	$f0, $f1, $f0
	lw	$a0, 4($sp)
	lw	$a1, 8($a0)
	lw	$a0, 4($a0)
	sub	$a0, $a1, $a0
	fsw	$f0, 40($sp)
	sw	$ra, 52($sp)
	addi	$sp, $sp, 56
	jal	min_caml_float_of_int
	subi	$sp, $sp, 56
	lw	$ra, 52($sp)
	fmove	$f0, $fv
	finv	$f0, $f0
	flw	$f1, 40($sp)
	fmul	$f0, $f1, $f0
	li	$v0, 17279
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	li	$v0, 0
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	j	write.251
bge_else.566:
	lw	$a1, 12($a0)
	blt	$a1, $a2, bge_else.567
	li	$v0, 0
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f0, $v0
	li	$v0, 17279
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	li	$v0, 17279
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	lw	$a1, 8($a0)
	sub	$a1, $a2, $a1
	fsw	$f1, 48($sp)
	fsw	$f0, 56($sp)
	fsw	$f2, 64($sp)
	move	$a0, $a1
	sw	$ra, 76($sp)
	addi	$sp, $sp, 80
	jal	min_caml_float_of_int
	subi	$sp, $sp, 80
	lw	$ra, 76($sp)
	fmove	$f0, $fv
	flw	$f1, 64($sp)
	fmul	$f0, $f1, $f0
	lw	$a0, 4($sp)
	lw	$a1, 12($a0)
	lw	$a0, 8($a0)
	sub	$a0, $a1, $a0
	fsw	$f0, 72($sp)
	sw	$ra, 84($sp)
	addi	$sp, $sp, 88
	jal	min_caml_float_of_int
	subi	$sp, $sp, 88
	lw	$ra, 84($sp)
	fmove	$f0, $fv
	finv	$f0, $f0
	flw	$f1, 72($sp)
	fmul	$f2, $f1, $f0
	flw	$f0, 56($sp)
	flw	$f1, 48($sp)
	j	write.251
bge_else.567:
	lw	$a1, 16($a0)
	blt	$a1, $a2, bge_else.568
	li	$v0, 0
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f0, $v0
	li	$v0, 17279
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	lw	$a1, 16($a0)
	sub	$a1, $a1, $a2
	fsw	$f0, 80($sp)
	fsw	$f1, 88($sp)
	move	$a0, $a1
	sw	$ra, 100($sp)
	addi	$sp, $sp, 104
	jal	min_caml_float_of_int
	subi	$sp, $sp, 104
	lw	$ra, 100($sp)
	fmove	$f0, $fv
	flw	$f1, 88($sp)
	fmul	$f0, $f1, $f0
	lw	$a0, 4($sp)
	lw	$a1, 16($a0)
	lw	$a0, 12($a0)
	sub	$a0, $a1, $a0
	fsw	$f0, 96($sp)
	sw	$ra, 108($sp)
	addi	$sp, $sp, 112
	jal	min_caml_float_of_int
	subi	$sp, $sp, 112
	lw	$ra, 108($sp)
	fmove	$f0, $fv
	finv	$f0, $f0
	flw	$f1, 96($sp)
	fmul	$f1, $f1, $f0
	li	$v0, 17279
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	flw	$f0, 80($sp)
	j	write.251
bge_else.568:
	lw	$a1, 20($a0)
	blt	$a1, $a2, bge_else.569
	li	$v0, 17279
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f0, $v0
	lw	$a1, 16($a0)
	sub	$a1, $a2, $a1
	fsw	$f0, 104($sp)
	move	$a0, $a1
	sw	$ra, 116($sp)
	addi	$sp, $sp, 120
	jal	min_caml_float_of_int
	subi	$sp, $sp, 120
	lw	$ra, 116($sp)
	fmove	$f0, $fv
	flw	$f1, 104($sp)
	fmul	$f0, $f1, $f0
	lw	$a0, 4($sp)
	lw	$a1, 20($a0)
	lw	$a0, 16($a0)
	sub	$a0, $a1, $a0
	fsw	$f0, 112($sp)
	sw	$ra, 124($sp)
	addi	$sp, $sp, 128
	jal	min_caml_float_of_int
	subi	$sp, $sp, 128
	lw	$ra, 124($sp)
	fmove	$f0, $fv
	finv	$f0, $f0
	flw	$f1, 112($sp)
	fmul	$f0, $f1, $f0
	li	$v0, 0
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	li	$v0, 17279
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	j	write.251
bge_else.569:
	li	$v0, 0
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f0, $v0
	li	$v0, 0
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	li	$v0, 0
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	j	write.251
iloop.213:
	lw	$a1, 4($a4)
	li	$a2, 256
	blt	$a0, $a2, bge_else.570
	li	$a0, 256
	move	$a4, $a1
	lw	$a3, 0($a4)
	j	write_rgb.191
bge_else.570:
	fmul	$f4, $f0, $f0
	fmul	$f5, $f1, $f1
	fsub	$f4, $f4, $f5
	fadd	$f4, $f4, $f2
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f5, $v0
	fmul	$f5, $f5, $f0
	fmul	$f5, $f5, $f1
	fadd	$f5, $f5, $f3
	fmul	$f0, $f0, $f0
	fmul	$f1, $f1, $f1
	fadd	$f0, $f0, $f1
	li	$v0, 16512
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	fblt	$f1, $f0, fbge_else.571
	addi	$a0, $a0, 1
	fmove	$f1, $f5
	fmove	$f0, $f4
	lw	$a3, 0($a4)
	j	iloop.213
fbge_else.571:
	move	$a4, $a1
	lw	$a3, 0($a4)
	j	write_rgb.191
xloop.201:
	lw	$a2, 4($a4)
	li	$a3, 100
	blt	$a0, $a3, bge_else.572
	jr	$ra
bge_else.572:
	sw	$a4, 0($sp)
	sw	$a0, 4($sp)
	sw	$a2, 8($sp)
	sw	$a1, 12($sp)
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	min_caml_float_of_int
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	fmove	$f0, $fv
	lw	$a0, 12($sp)
	fsw	$f0, 16($sp)
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	min_caml_float_of_int
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	fmove	$f0, $fv
	li	$v0, 16968
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	finv	$f1, $f1
	flw	$f2, 16($sp)
	fmul	$f1, $f2, $f1
	li	$v0, 16320
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fsub	$f2, $f1, $f2
	li	$v0, 16968
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	finv	$f1, $f1
	fmul	$f0, $f0, $f1
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	fsub	$f3, $f0, $f1
	move	$a4, $fp
	addi	$fp, $fp, 8
	lil	$a0, iloop.213
	sw	$a0, 0($a4)
	lw	$a0, 8($sp)
	sw	$a0, 4($a4)
	li	$a0, 0
	li	$v0, 0
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f0, $v0
	li	$v0, 0
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	iloop.213
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	fmove	$f30, $fv
	lw	$a0, 4($sp)
	addi	$a0, $a0, 1
	lw	$a1, 12($sp)
	lw	$a4, 0($sp)
	lw	$a3, 0($a4)
	j	xloop.201
yloop.193:
	lw	$a1, 4($a4)
	li	$a2, 100
	blt	$a0, $a2, bge_else.574
	jr	$ra
bge_else.574:
	move	$a2, $fp
	addi	$fp, $fp, 8
	lil	$a3, xloop.201
	sw	$a3, 0($a2)
	sw	$a1, 4($a2)
	li	$a1, 0
	sw	$a4, 0($sp)
	sw	$a0, 4($sp)
	move	$a4, $a2
	move	$a3, $a1
	move	$a1, $a0
	move	$a0, $a3
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	xloop.201
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	fmove	$f30, $fv
	lw	$a0, 4($sp)
	addi	$a0, $a0, 1
	lw	$a4, 0($sp)
	lw	$a3, 0($a4)
	j	yloop.193
exit:
	hlt
_min_caml_start: # main entry point
   # main program start
	li	$a0, 6
	li	$a1, 0
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	min_caml_create_array
	subi	$sp, $sp, 8
	lw	$ra, 4($sp)
	move	$a0, $v0
	li	$a1, 3
	sw	$a1, 0($a0)
	li	$a1, 8
	sw	$a1, 4($a0)
	li	$a1, 12
	sw	$a1, 8($a0)
	li	$a1, 16
	sw	$a1, 12($a0)
	li	$a1, 25
	sw	$a1, 16($a0)
	li	$a1, 100
	sw	$a1, 20($a0)
	move	$a1, $fp
	addi	$fp, $fp, 8
	lil	$a2, write_rgb.191
	sw	$a2, 0($a1)
	sw	$a0, 4($a1)
	move	$a0, $fp
	addi	$fp, $fp, 8
	lil	$a2, yloop.193
	sw	$a2, 0($a0)
	sw	$a1, 4($a0)
	sw	$a0, 0($sp)
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	write_header.188
	subi	$sp, $sp, 8
	lw	$ra, 4($sp)
	fmove	$f30, $fv
	li	$a0, 0
	lw	$a4, 0($sp)
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	yloop.193
	subi	$sp, $sp, 8
	lw	$ra, 4($sp)
	fmove	$f30, $fv
	li	$a0, 0
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	min_caml_print_int
	subi	$sp, $sp, 8
	lw	$ra, 4($sp)
	move	$a0, $v0
	j exit   # main program end
