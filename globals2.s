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
l.228:	 # 1000000000.000000
	li	$a25, 20078
	sll	$a25, $a25, 16
	ori	$a25, $a25, 27432
	jr	$ra
l.226:	 # 255.000000
	li	$a25, 17279
	sll	$a25, $a25, 16
	ori	$a25, $a25, 0
	jr	$ra
l.213:	 # 0.000000
	li	$a25, 0
	sll	$a25, $a25, 16
	ori	$a25, $a25, 0
	jr	$ra
exit:
	hlt
_min_caml_start: # main entry point
   # main program start
	li	$a0, 1
	li	$a1, 0
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	min_caml_create_array
	subi	$sp, $sp, 8
	lw	$ra, 4($sp)
	move	$a0, $v0
	li	$a0, 0
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	l.213
	subi	$sp, $sp, 8
	lw	$ra, 4($sp)
	mtc1	$f0, $a25
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	min_caml_create_float_array
	subi	$sp, $sp, 8
	lw	$ra, 4($sp)
	move	$a0, $v0
	li	$a1, 60
	li	$a2, 0
	li	$a3, 0
	li	$a4, 0
	li	$a5, 0
	li	$a6, 0
	move	$a7, $fp
	addi	$fp, $fp, 48
	sw	$a0, 40($a7)
	sw	$a0, 36($a7)
	sw	$a0, 32($a7)
	sw	$a0, 28($a7)
	sw	$a6, 24($a7)
	sw	$a0, 20($a7)
	sw	$a0, 16($a7)
	sw	$a5, 12($a7)
	sw	$a4, 8($a7)
	sw	$a3, 4($a7)
	sw	$a2, 0($a7)
	move	$a0, $a7
	move	$a25, $a1
	move	$a1, $a0
	move	$a0, $a25
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	min_caml_create_array
	subi	$sp, $sp, 8
	lw	$ra, 4($sp)
	move	$a0, $v0
	li	$a0, 3
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	l.213
	subi	$sp, $sp, 8
	lw	$ra, 4($sp)
	mtc1	$f0, $a25
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	min_caml_create_float_array
	subi	$sp, $sp, 8
	lw	$ra, 4($sp)
	move	$a0, $v0
	li	$a0, 3
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	l.213
	subi	$sp, $sp, 8
	lw	$ra, 4($sp)
	mtc1	$f0, $a25
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	min_caml_create_float_array
	subi	$sp, $sp, 8
	lw	$ra, 4($sp)
	move	$a0, $v0
	li	$a0, 3
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	l.213
	subi	$sp, $sp, 8
	lw	$ra, 4($sp)
	mtc1	$f0, $a25
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	min_caml_create_float_array
	subi	$sp, $sp, 8
	lw	$ra, 4($sp)
	move	$a0, $v0
	li	$a0, 1
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	l.226
	subi	$sp, $sp, 8
	lw	$ra, 4($sp)
	mtc1	$f0, $a25
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	min_caml_create_float_array
	subi	$sp, $sp, 8
	lw	$ra, 4($sp)
	move	$a0, $v0
	li	$a0, 50
	li	$a1, 1
	li	$a2, -1
	sw	$a0, 0($sp)
	move	$a0, $a1
	move	$a1, $a2
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	min_caml_create_array
	subi	$sp, $sp, 8
	lw	$ra, 4($sp)
	move	$a1, $v0
	lw	$a0, 0($sp)
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	min_caml_create_array
	subi	$sp, $sp, 8
	lw	$ra, 4($sp)
	move	$a0, $v0
	li	$a1, 1
	li	$a2, 1
	lw	$a0, 0($a0)
	sw	$a1, 4($sp)
	move	$a1, $a0
	move	$a0, $a2
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	min_caml_create_array
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	move	$a1, $v0
	lw	$a0, 4($sp)
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	min_caml_create_array
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	move	$a0, $v0
	li	$a0, 1
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	l.213
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	mtc1	$f0, $a25
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	min_caml_create_float_array
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	move	$a0, $v0
	li	$a0, 1
	li	$a1, 0
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	min_caml_create_array
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	move	$a0, $v0
	li	$a0, 1
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	l.228
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	mtc1	$f0, $a25
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	min_caml_create_float_array
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	move	$a0, $v0
	li	$a0, 3
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	l.213
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	mtc1	$f0, $a25
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	min_caml_create_float_array
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	move	$a0, $v0
	li	$a0, 1
	li	$a1, 0
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	min_caml_create_array
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	move	$a0, $v0
	li	$a0, 3
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	l.213
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	mtc1	$f0, $a25
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	min_caml_create_float_array
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	move	$a0, $v0
	li	$a0, 3
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	l.213
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	mtc1	$f0, $a25
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	min_caml_create_float_array
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	move	$a0, $v0
	li	$a0, 3
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	l.213
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	mtc1	$f0, $a25
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	min_caml_create_float_array
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	move	$a0, $v0
	li	$a0, 3
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	l.213
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	mtc1	$f0, $a25
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	min_caml_create_float_array
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	move	$a0, $v0
	li	$a0, 2
	li	$a1, 0
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	min_caml_create_array
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	move	$a0, $v0
	li	$a0, 2
	li	$a1, 0
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	min_caml_create_array
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	move	$a0, $v0
	li	$a0, 1
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	l.213
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	mtc1	$f0, $a25
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	min_caml_create_float_array
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	move	$a0, $v0
	li	$a0, 3
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	l.213
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	mtc1	$f0, $a25
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	min_caml_create_float_array
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	move	$a0, $v0
	li	$a0, 3
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	l.213
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	mtc1	$f0, $a25
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	min_caml_create_float_array
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	move	$a0, $v0
	li	$a0, 3
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	l.213
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	mtc1	$f0, $a25
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	min_caml_create_float_array
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	move	$a0, $v0
	li	$a0, 3
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	l.213
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	mtc1	$f0, $a25
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	min_caml_create_float_array
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	move	$a0, $v0
	li	$a0, 3
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	l.213
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	mtc1	$f0, $a25
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	min_caml_create_float_array
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	move	$a0, $v0
	li	$a0, 3
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	l.213
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	mtc1	$f0, $a25
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	min_caml_create_float_array
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	move	$a0, $v0
	li	$a0, 0
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	l.213
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	mtc1	$f0, $a25
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	min_caml_create_float_array
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	move	$a1, $v0
	li	$a0, 0
	sw	$a1, 8($sp)
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	min_caml_create_array
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	move	$a0, $v0
	li	$a1, 0
	move	$a2, $fp
	addi	$fp, $fp, 8
	sw	$a0, 4($a2)
	lw	$a0, 8($sp)
	sw	$a0, 0($a2)
	move	$a0, $a2
	move	$a25, $a1
	move	$a1, $a0
	move	$a0, $a25
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	min_caml_create_array
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	move	$a1, $v0
	li	$a0, 5
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	min_caml_create_array
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	move	$a0, $v0
	li	$a0, 0
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	l.213
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	mtc1	$f0, $a25
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	min_caml_create_float_array
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	move	$a0, $v0
	li	$a1, 3
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	l.213
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	mtc1	$f0, $a25
	sw	$a0, 12($sp)
	move	$a0, $a1
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	min_caml_create_float_array
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	move	$a0, $v0
	li	$a0, 60
	lw	$a1, 12($sp)
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	min_caml_create_array
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	move	$a0, $v0
	li	$a0, 0
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	l.213
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	mtc1	$f0, $a25
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	min_caml_create_float_array
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	move	$a1, $v0
	li	$a0, 0
	sw	$a1, 16($sp)
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	min_caml_create_array
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	move	$a0, $v0
	move	$a1, $fp
	addi	$fp, $fp, 8
	sw	$a0, 4($a1)
	lw	$a0, 16($sp)
	sw	$a0, 0($a1)
	move	$a0, $a1
	li	$a1, 180
	li	$a2, 0
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	l.213
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	mtc1	$f0, $a25
	move	$a3, $fp
	addi	$fp, $fp, 16
	fsw	$f0, 8($a3)
	sw	$a0, 4($a3)
	sw	$a2, 0($a3)
	move	$a0, $a3
	move	$a25, $a1
	move	$a1, $a0
	move	$a0, $a25
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	min_caml_create_array
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	move	$a0, $v0
	li	$a0, 1
	li	$a1, 0
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	min_caml_create_array
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	move	$a0, $v0
	li	$a0, 0
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	min_caml_prirnt_int
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	move	$a0, $v0
	j exit   # main program end
