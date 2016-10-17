	.data
	.literal8
	.align 3
l.363:	 # 12.000000
	.long	0
	.long	1076363264
	.align 3
l.360:	 # 11.000000
	.long	0
	.long	1076232192
	.align 3
l.357:	 # 10.000000
	.long	0
	.long	1076101120
	.align 3
l.354:	 # 9.000000
	.long	0
	.long	1075970048
	.align 3
l.351:	 # 8.000000
	.long	0
	.long	1075838976
	.align 3
l.348:	 # 7.000000
	.long	0
	.long	1075576832
	.align 3
l.345:	 # 6.000000
	.long	0
	.long	1075314688
	.align 3
l.342:	 # 5.000000
	.long	0
	.long	1075052544
	.align 3
l.339:	 # 4.000000
	.long	0
	.long	1074790400
	.align 3
l.336:	 # 3.000000
	.long	0
	.long	1074266112
	.align 3
l.333:	 # 2.000000
	.long	0
	.long	1073741824
	.align 3
l.330:	 # 1.000000
	.long	0
	.long	1072693248
	.align 3
l.325:	 # 0.000000
	.long	0
	.long	0
loop3.282:
	lw	$a2, 16($a26)
	lw	$a3, 12($a26)
	lw	$a4, 8($a26)
	lw	$a5, 4($a26)
	lw	$a6, 0($a26)
	li	$a7, 0
	bgt	$a7, $a1, ble_else.397
	slwi	$a7, $a3, 2
	lwzx	$a7, $a4, $a7
	slwi	$a8, $a3, 2
	lwzx	$a4, $a4, $a8
	slwi	$a8, $a2, 3
	lfdx	$f0, $a4, $a8
	slwi	$a3, $a3, 2
	lwzx	$a3, $a6, $a3
	slwi	$a4, $a1, 3
	lfdx	$f1, $a3, $a4
	slwi	$a3, $a1, 2
	lwzx	$a3, $a5, $a3
	slwi	$a4, $a2, 3
	lfdx	$f2, $a3, $a4
	fmul	$f1, $f1, $f2
	fadd	$f0, $f0, $f1
	slwi	$a2, $a2, 3
	stfdx	$f0, $a7, $a2
	subi	$a1, $a1, 1
	move	$a26, $loop3.282
	lw	$a25, 0($a26)
	mtctr	$a25
	bctr
ble_else.397:
	jr $ra
loop2.274:
	lw	$a2, 16($a26)
	lw	$a3, 12($a26)
	lw	$a4, 8($a26)
	lw	$a5, 4($a26)
	lw	$a6, 0($a26)
	li	$a7, 0
	bgt	$a7, $a1, ble_else.399
	move	$a7, $a0
	addi	$a0, $a0, 24
	sw	$a1, 16($a7)
	sw	$a3, 12($a7)
	sw	$a4, 8($a7)
	sw	$a5, 4($a7)
	sw	$a6, 0($a7)
	subi	$a2, $a2, 1
	sw	$a26, 0($sp)
	sw	$a1, 4($sp)
	move	$a1, $a2
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	loop3.282
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	move	$zero, $v0
	lw	$a1, 4($sp)
	subi	$a1, $a1, 1
	move	$a26, $loop2.274
	lw	$a25, 0($a26)
	mtctr	$a25
	bctr
ble_else.399:
	jr $ra
loop1.269:
	lw	$a2, 16($a26)
	lw	$a3, 12($a26)
	lw	$a4, 8($a26)
	lw	$a5, 4($a26)
	lw	$a6, 0($a26)
	li	$a7, 0
	bgt	$a7, $a1, ble_else.401
	move	$a7, $a0
	addi	$a0, $a0, 24
	sw	$a3, 16($a7)
	sw	$a1, 12($a7)
	sw	$a4, 8($a7)
	sw	$a5, 4($a7)
	sw	$a6, 0($a7)
	subi	$a2, $a2, 1
	sw	$a26, 0($sp)
	sw	$a1, 4($sp)
	move	$a1, $a2
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	loop2.274
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	move	$zero, $v0
	lw	$a1, 4($sp)
	subi	$a1, $a1, 1
	move	$a26, $loop1.269
	lw	$a25, 0($a26)
	mtctr	$a25
	bctr
ble_else.401:
	jr $ra
mul.140:
	move	$a26, $a0
	addi	$a0, $a0, 24
	sw	$a3, 16($a26)
	sw	$a2, 12($a26)
	sw	$a6, 8($a26)
	sw	$a5, 4($a26)
	sw	$a4, 0($a26)
	subi	$a1, $a1, 1
	move	$a26, $loop1.269
	lw	$a25, 0($a26)
	mtctr	$a25
	bctr
init.256:
	lw	$a2, 4($a26)
	lw	$a3, 0($a26)
	li	$a4, 0
	bgt	$a4, $a1, ble_else.403
	lis	$f31, ha16(l.325)
	addi	$f31, $f31, lo16(l.325)
	lfd	$f0, 0($f31)
	sw	$a26, 0($sp)
	sw	$a3, 4($sp)
	sw	$a1, 8($sp)
	move	$a1, $a2
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	min_caml_create_float_array
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	move	$a1, $v0
	lw	$a2, 8($sp)
	slwi	$a3, $a2, 2
	lw	$a4, 4($sp)
	sw	$a1, $a4, $a3
	subi	$a1, $a2, 1
	move	$a26, $init.256
	lw	$a25, 0($a26)
	mtctr	$a25
	bctr
ble_else.403:
	jr $ra
make.148:
	lw	$a3, 0($a26)
	sw	$a1, 0($sp)
	sw	$a2, 4($sp)
	move	$a2, $a3
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	min_caml_create_array
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	move	$a1, $v0
	move	$a26, $a0
	addi	$a0, $a0, 8
	lw	$a2, 4($sp)
	sw	$a2, 4($a26)
	sw	$a1, 0($a26)
	lw	$a2, 0($sp)
	subi	$a2, $a2, 1
	sw	$a1, 8($sp)
	move	$a1, $a2
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	init.256
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	move	$zero, $v0
	lw	$a1, 8($sp)
	move	$v0, $a1
	jr $ra
exit:
	hlt
_min_caml_start: # main entry point
   # main program start
	li	$a1, 0
	lis	$f31, ha16(l.325)
	addi	$f31, $f31, lo16(l.325)
	lfd	$f0, 0($f31)
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	min_caml_create_float_array
	subi	$sp, $sp, 8
	lw	$ra, 4($sp)
	move	$a1, $v0
	move	$a26, $a0
	addi	$a0, $a0, 8
	sw	$a1, 0($a26)
	li	$a1, 2
	li	$a2, 3
	sw	$a26, 0($sp)
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	make.148
	subi	$sp, $sp, 8
	lw	$ra, 4($sp)
	move	$a1, $v0
	li	$a2, 3
	li	$a3, 2
	sw	$a1, 4($sp)
	move	$a1, $a2
	move	$a2, $a3
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	make.148
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	move	$a1, $v0
	li	$a2, 2
	li	$a3, 2
	sw	$a1, 8($sp)
	move	$a1, $a2
	move	$a2, $a3
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	make.148
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	move	$a6, $v0
	move	$a6, $a1
	lw	$a4, 4($sp)
	lw	$a1, 0($a4)
	lis	$f31, ha16(l.330)
	addi	$f31, $f31, lo16(l.330)
	lfd	$f0, 0($f31)
	stfd	$f0, 0($a1)
	lw	$a1, 0($a4)
	lis	$f31, ha16(l.333)
	addi	$f31, $f31, lo16(l.333)
	lfd	$f0, 0($f31)
	stfd	$f0, 8($a1)
	lw	$a1, 0($a4)
	lis	$f31, ha16(l.336)
	addi	$f31, $f31, lo16(l.336)
	lfd	$f0, 0($f31)
	stfd	$f0, 16($a1)
	lw	$a1, 4($a4)
	lis	$f31, ha16(l.339)
	addi	$f31, $f31, lo16(l.339)
	lfd	$f0, 0($f31)
	stfd	$f0, 0($a1)
	lw	$a1, 4($a4)
	lis	$f31, ha16(l.342)
	addi	$f31, $f31, lo16(l.342)
	lfd	$f0, 0($f31)
	stfd	$f0, 8($a1)
	lw	$a1, 4($a4)
	lis	$f31, ha16(l.345)
	addi	$f31, $f31, lo16(l.345)
	lfd	$f0, 0($f31)
	stfd	$f0, 16($a1)
	lw	$a5, 8($sp)
	lw	$a1, 0($a5)
	lis	$f31, ha16(l.348)
	addi	$f31, $f31, lo16(l.348)
	lfd	$f0, 0($f31)
	stfd	$f0, 0($a1)
	lw	$a1, 0($a5)
	lis	$f31, ha16(l.351)
	addi	$f31, $f31, lo16(l.351)
	lfd	$f0, 0($f31)
	stfd	$f0, 8($a1)
	lw	$a1, 4($a5)
	lis	$f31, ha16(l.354)
	addi	$f31, $f31, lo16(l.354)
	lfd	$f0, 0($f31)
	stfd	$f0, 0($a1)
	lw	$a1, 4($a5)
	lis	$f31, ha16(l.357)
	addi	$f31, $f31, lo16(l.357)
	lfd	$f0, 0($f31)
	stfd	$f0, 8($a1)
	lw	$a1, 8($a5)
	lis	$f31, ha16(l.360)
	addi	$f31, $f31, lo16(l.360)
	lfd	$f0, 0($f31)
	stfd	$f0, 0($a1)
	lw	$a1, 8($a5)
	lis	$f31, ha16(l.363)
	addi	$f31, $f31, lo16(l.363)
	lfd	$f0, 0($f31)
	stfd	$f0, 8($a1)
	li	$a1, 2
	li	$a2, 3
	li	$a3, 2
	sw	$a6, 12($sp)
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	mul.140
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	move	$zero, $v0
	lw	$a1, 12($sp)
	lw	$a2, 0($a1)
	lfd	$f0, 0($a2)
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	min_caml_truncate
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	move	$a1, $v0
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	min_caml_print_int
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	move	$zero, $v0
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	min_caml_print_newline
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	move	$zero, $v0
	lw	$a1, 12($sp)
	lw	$a2, 0($a1)
	lfd	$f0, 8($a2)
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	min_caml_truncate
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	move	$a1, $v0
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	min_caml_print_int
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	move	$zero, $v0
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	min_caml_print_newline
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	move	$zero, $v0
	lw	$a1, 12($sp)
	lw	$a2, 4($a1)
	lfd	$f0, 0($a2)
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	min_caml_truncate
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	move	$a1, $v0
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	min_caml_print_int
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	move	$zero, $v0
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	min_caml_print_newline
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	move	$zero, $v0
	lw	$a1, 12($sp)
	lw	$a1, 4($a1)
	lfd	$f0, 8($a1)
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	min_caml_truncate
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	move	$a1, $v0
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	min_caml_print_int
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	move	$zero, $v0
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	min_caml_print_newline
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	move	$a0, $v0
	j exit   # main program end
