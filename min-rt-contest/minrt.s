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
l.6742:	 # 128.000000
	li	$a25, 17152
	sll	$a25, $a25, 16
	ori	$a25, $a25, 0
	jr	$ra
l.6709:	 # 0.900000
	li	$a25, 16230
	sll	$a25, $a25, 16
	ori	$a25, $a25, 26214
	jr	$ra
l.6708:	 # 0.200000
	li	$a25, 15948
	sll	$a25, $a25, 16
	ori	$a25, $a25, 52429
	jr	$ra
l.6614:	 # 150.000000
	li	$a25, 17174
	sll	$a25, $a25, 16
	ori	$a25, $a25, 0
	jr	$ra
l.6612:	 # -150.000000
	li	$a25, -15594
	sll	$a25, $a25, 16
	ori	$a25, $a25, 0
	jr	$ra
l.6596:	 # 0.100000
	li	$a25, 15820
	sll	$a25, $a25, 16
	ori	$a25, $a25, 52429
	jr	$ra
l.6593:	 # -2.000000
	li	$a25, -16384
	sll	$a25, $a25, 16
	ori	$a25, $a25, 0
	jr	$ra
l.6591:	 # 256.000000
	li	$a25, 17280
	sll	$a25, $a25, 16
	ori	$a25, $a25, 0
	jr	$ra
l.6569:	 # 20.000000
	li	$a25, 16800
	sll	$a25, $a25, 16
	ori	$a25, $a25, 0
	jr	$ra
l.6568:	 # 0.050000
	li	$a25, 15692
	sll	$a25, $a25, 16
	ori	$a25, $a25, 52429
	jr	$ra
l.6564:	 # 0.250000
	li	$a25, 16000
	sll	$a25, $a25, 16
	ori	$a25, $a25, 0
	jr	$ra
l.6560:	 # 10.000000
	li	$a25, 16672
	sll	$a25, $a25, 16
	ori	$a25, $a25, 0
	jr	$ra
l.6556:	 # 0.300000
	li	$a25, 16025
	sll	$a25, $a25, 16
	ori	$a25, $a25, 39322
	jr	$ra
l.6555:	 # 255.000000
	li	$a25, 17279
	sll	$a25, $a25, 16
	ori	$a25, $a25, 0
	jr	$ra
l.6554:	 # 0.150000
	li	$a25, 15897
	sll	$a25, $a25, 16
	ori	$a25, $a25, 39322
	jr	$ra
l.6552:	 # 3.141593
	li	$a25, 16457
	sll	$a25, $a25, 16
	ori	$a25, $a25, 4059
	jr	$ra
l.6551:	 # 30.000000
	li	$a25, 16880
	sll	$a25, $a25, 16
	ori	$a25, $a25, 0
	jr	$ra
l.6550:	 # 15.000000
	li	$a25, 16752
	sll	$a25, $a25, 16
	ori	$a25, $a25, 0
	jr	$ra
l.6549:	 # 0.000100
	li	$a25, 14545
	sll	$a25, $a25, 16
	ori	$a25, $a25, 46871
	jr	$ra
l.6506:	 # 100000000.000000
	li	$a25, 19646
	sll	$a25, $a25, 16
	ori	$a25, $a25, 48160
	jr	$ra
l.6502:	 # 1000000000.000000
	li	$a25, 20078
	sll	$a25, $a25, 16
	ori	$a25, $a25, 27432
	jr	$ra
l.6482:	 # -0.100000
	li	$a25, -16948
	sll	$a25, $a25, 16
	ori	$a25, $a25, 52429
	jr	$ra
l.6469:	 # 0.010000
	li	$a25, 15395
	sll	$a25, $a25, 16
	ori	$a25, $a25, 55050
	jr	$ra
l.6468:	 # -0.200000
	li	$a25, -16820
	sll	$a25, $a25, 16
	ori	$a25, $a25, 52429
	jr	$ra
l.6244:	 # -200.000000
	li	$a25, -15544
	sll	$a25, $a25, 16
	ori	$a25, $a25, 0
	jr	$ra
l.6242:	 # 200.000000
	li	$a25, 17224
	sll	$a25, $a25, 16
	ori	$a25, $a25, 0
	jr	$ra
l.6238:	 # 0.017453
	li	$a25, 15502
	sll	$a25, $a25, 16
	ori	$a25, $a25, 64053
	jr	$ra
l.6155:	 # -1.000000
	li	$a25, -16512
	sll	$a25, $a25, 16
	ori	$a25, $a25, 0
	jr	$ra
l.6154:	 # 32767.000000
	li	$a25, 18175
	sll	$a25, $a25, 16
	ori	$a25, $a25, 65024
	jr	$ra
l.6153:	 # 8388608.000000
	li	$a25, 19200
	sll	$a25, $a25, 16
	ori	$a25, $a25, 0
	jr	$ra
l.6152:	 # 1.000000
	li	$a25, 16256
	sll	$a25, $a25, 16
	ori	$a25, $a25, 0
	jr	$ra
l.6151:	 # 2.000000
	li	$a25, 16384
	sll	$a25, $a25, 16
	ori	$a25, $a25, 0
	jr	$ra
l.6150:	 # 0.500000
	li	$a25, 16128
	sll	$a25, $a25, 16
	ori	$a25, $a25, 0
	jr	$ra
l.6149:	 # 0.000000
	li	$a25, 0
	sll	$a25, $a25, 16
	ori	$a25, $a25, 0
	jr	$ra
fneg.2514:
	fneg	$fv, $f0
	jr $ra
fispos.2516:
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	l.6149
	subi	$sp, $sp, 8
	lw	$ra, 4($sp)
	mtc1	$f1, $a25
	fblt	$f1, $f0, fbge_else.8817
	li	$v0, 0
	jr	$ra
fbge_else.8817:
	li	$v0, 1
	jr	$ra
fisneg.2518:
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	l.6149
	subi	$sp, $sp, 8
	lw	$ra, 4($sp)
	mtc1	$f1, $a25
	fblt	$f0, $f1, fbge_else.8818
	li	$v0, 0
	jr	$ra
fbge_else.8818:
	li	$v0, 1
	jr	$ra
fiszero.2520:
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	l.6149
	subi	$sp, $sp, 8
	lw	$ra, 4($sp)
	mtc1	$f1, $a25
	fbne	$f0, $f1, fbeq_else.8819
	li	$v0, 1
	jr	$ra
fbeq_else.8819:
	li	$v0, 0
	jr	$ra
fhalf.2522:
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	l.6150
	subi	$sp, $sp, 8
	lw	$ra, 4($sp)
	mtc1	$f1, $a25
	fmul	$fv, $f0, $f1
	jr $ra
fsqr.2524:
	fmul	$fv, $f0, $f0
	jr $ra
fabs.2526:
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	l.6149
	subi	$sp, $sp, 8
	lw	$ra, 4($sp)
	mtc1	$f1, $a25
	fblt	$f0, $f1, fbge_else.8820
	fmove	$fv, $f0
	jr $ra
fbge_else.8820:
	j	fneg.2514
fless.2528:
	fsub	$f0, $f0, $f1
	j	fisneg.2518
fflag.2531:
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	l.6149
	subi	$sp, $sp, 8
	lw	$ra, 4($sp)
	mtc1	$f1, $a25
	fblt	$f0, $f1, fbge_else.8821
	li	$v0, 1
	jr	$ra
fbge_else.8821:
	li	$v0, -1
	jr	$ra
itof_ret_sub.6027:
	sra	$a1, $a0, 1
	li	$a2, 0
	bne	$a0, $a2, beq_else.8822
	fmove	$fv, $f0
	jr $ra
beq_else.8822:
	sub	$a0, $a0, $a1
	sub	$a0, $a0, $a1
	li	$a2, 0
	blt	$a2, $a0, bge_else.8823
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	l.6151
	subi	$sp, $sp, 8
	lw	$ra, 4($sp)
	mtc1	$f2, $a25
	fmul	$f1, $f1, $f2
	move	$a0, $a1
	j	itof_ret_sub.6027
bge_else.8823:
	fadd	$f0, $f0, $f1
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	l.6151
	subi	$sp, $sp, 8
	lw	$ra, 4($sp)
	mtc1	$f2, $a25
	fmul	$f1, $f1, $f2
	move	$a0, $a1
	j	itof_ret_sub.6027
itof_ret.6009:
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	l.6149
	subi	$sp, $sp, 8
	lw	$ra, 4($sp)
	mtc1	$f0, $a25
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	l.6152
	subi	$sp, $sp, 8
	lw	$ra, 4($sp)
	mtc1	$f1, $a25
	j	itof_ret_sub.6027
itof_big.6011:
	li	$a1, 128
	sll	$a1, $a1, 16
	ori	$a1, $a1, 0
	sub	$a0, $a0, $a1
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	l.6153
	subi	$sp, $sp, 8
	lw	$ra, 4($sp)
	mtc1	$f1, $a25
	fadd	$f0, $f0, $f1
	li	$a1, 128
	sll	$a1, $a1, 16
	ori	$a1, $a1, 0
	blt	$a0, $a1, bge_else.8824
	j	itof_big.6011
bge_else.8824:
	fsw	$f0, 0($sp)
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	itof_ret.6009
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	fmove	$f0, $fv
	flw	$f1, 0($sp)
	fadd	$fv, $f1, $f0
	jr $ra
float_of_int.2533:
	li	$a1, 0
	blt	$a1, $a0, bge_else.8825
	neg	$a1, $a0
	j	bge_cont.8826
bge_else.8825:
	move	$a1, $a0
bge_cont.8826:
	li	$a2, 0
	blt	$a2, $a0, bge_else.8827
	li	$a0, -1
	j	bge_cont.8828
bge_else.8827:
	li	$a0, 1
bge_cont.8828:
	li	$a2, 1
	bne	$a0, $a2, beq_else.8829
	li	$a0, 128
	sll	$a0, $a0, 16
	ori	$a0, $a0, 0
	blt	$a0, $a1, bge_else.8830
	move	$a0, $a1
	j	itof_ret.6009
bge_else.8830:
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	l.6149
	subi	$sp, $sp, 8
	lw	$ra, 4($sp)
	mtc1	$f0, $a25
	move	$a0, $a1
	j	itof_big.6011
beq_else.8829:
	li	$a0, 128
	sll	$a0, $a0, 16
	ori	$a0, $a0, 0
	blt	$a0, $a1, bge_else.8831
	move	$a0, $a1
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	itof_ret.6009
	subi	$sp, $sp, 8
	lw	$ra, 4($sp)
	fmove	$f0, $fv
	fneg	$fv, $f0
	jr $ra
bge_else.8831:
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	l.6149
	subi	$sp, $sp, 8
	lw	$ra, 4($sp)
	mtc1	$f0, $a25
	move	$a0, $a1
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	itof_big.6011
	subi	$sp, $sp, 8
	lw	$ra, 4($sp)
	fmove	$f0, $fv
	fneg	$fv, $f0
	jr $ra
floor.2535:
	fsw	$f0, 0($sp)
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	fabs.2526
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	fmove	$f0, $fv
	flw	$f1, 0($sp)
	fsw	$f0, 8($sp)
	fmove	$f0, $f1
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	fflag.2531
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	move	$a0, $v0
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	l.6154
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	mtc1	$f0, $a25
	finv	$f0, $f0
	flw	$f1, 0($sp)
	fmul	$f0, $f1, $f0
	sw	$a0, 16($sp)
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	min_caml_int_of_float
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	move	$a0, $v0
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	float_of_int.2533
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	fmove	$f0, $fv
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	l.6154
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	mtc1	$f1, $a25
	fmul	$f1, $f1, $f0
	flw	$f2, 8($sp)
	fsub	$f1, $f2, $f1
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	l.6154
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	mtc1	$f2, $a25
	fmul	$f0, $f0, $f2
	fsw	$f0, 24($sp)
	fmove	$f0, $f1
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	min_caml_int_of_float
	subi	$sp, $sp, 40
	lw	$ra, 36($sp)
	move	$a0, $v0
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	float_of_int.2533
	subi	$sp, $sp, 40
	lw	$ra, 36($sp)
	fmove	$f0, $fv
	flw	$f1, 24($sp)
	fadd	$f0, $f1, $f0
	li	$a0, 1
	lw	$a1, 16($sp)
	bne	$a1, $a0, beq_else.8833
	fmove	$fv, $f0
	jr $ra
beq_else.8833:
	fneg	$fv, $f0
	jr $ra
xor.2544:
	li	$a2, 0
	bne	$a0, $a2, beq_else.8834
	move	$v0, $a1
	jr	$ra
beq_else.8834:
	li	$a0, 0
	bne	$a1, $a0, beq_else.8835
	li	$v0, 1
	jr	$ra
beq_else.8835:
	li	$v0, 0
	jr	$ra
sgn.2547:
	fsw	$f0, 0($sp)
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	fiszero.2520
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	move	$a0, $v0
	li	$a1, 0
	bne	$a0, $a1, beq_else.8836
	flw	$f0, 0($sp)
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	fispos.2516
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	move	$a0, $v0
	li	$a1, 0
	bne	$a0, $a1, beq_else.8837
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	l.6155
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	mtc1	$fv, $a25
	jr $ra
beq_else.8837:
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	l.6152
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	mtc1	$fv, $a25
	jr $ra
beq_else.8836:
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	l.6149
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	mtc1	$fv, $a25
	jr $ra
fneg_cond.2549:
	li	$a1, 0
	bne	$a0, $a1, beq_else.8838
	j	fneg.2514
beq_else.8838:
	fmove	$fv, $f0
	jr $ra
add_mod5.2552:
	add	$a0, $a0, $a1
	li	$a1, 5
	blt	$a0, $a1, bge_else.8839
	subi	$v0, $a0, 5
	jr	$ra
bge_else.8839:
	move	$v0, $a0
	jr	$ra
vecset.2555:
	fsw	$f0, 0($a0)
	fsw	$f1, 4($a0)
	fsw	$f2, 8($a0)
	jr	$ra
vecfill.2560:
	fsw	$f0, 0($a0)
	fsw	$f0, 4($a0)
	fsw	$f0, 8($a0)
	jr	$ra
vecbzero.2563:
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	l.6149
	subi	$sp, $sp, 8
	lw	$ra, 4($sp)
	mtc1	$f0, $a25
	j	vecfill.2560
veccpy.2565:
	flw	$f0, 0($a1)
	fsw	$f0, 0($a0)
	flw	$f0, 4($a1)
	fsw	$f0, 4($a0)
	flw	$f0, 8($a1)
	fsw	$f0, 8($a0)
	jr	$ra
vecunit_sgn.2573:
	flw	$f0, 0($a0)
	sw	$a1, 0($sp)
	sw	$a0, 4($sp)
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	fsqr.2524
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	fmove	$f0, $fv
	lw	$a0, 4($sp)
	flw	$f1, 4($a0)
	fsw	$f0, 8($sp)
	fmove	$f0, $f1
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	fsqr.2524
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	fmove	$f0, $fv
	flw	$f1, 8($sp)
	fadd	$f0, $f1, $f0
	lw	$a0, 4($sp)
	flw	$f1, 8($a0)
	fsw	$f0, 16($sp)
	fmove	$f0, $f1
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	fsqr.2524
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	fmove	$f0, $fv
	flw	$f1, 16($sp)
	fadd	$f0, $f1, $f0
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	min_caml_sqrt
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	fmove	$f0, $fv
	fsw	$f0, 24($sp)
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	fiszero.2520
	subi	$sp, $sp, 40
	lw	$ra, 36($sp)
	move	$a0, $v0
	li	$a1, 0
	bne	$a0, $a1, bne_else.8843
	li	$a0, 0
	lw	$a1, 0($sp)
	bne	$a1, $a0, bne_else.8845
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	l.6152
	subi	$sp, $sp, 40
	lw	$ra, 36($sp)
	mtc1	$f0, $a25
	flw	$f1, 24($sp)
	finv	$f1, $f1
	fmul	$f0, $f0, $f1
	j	bne_cont.8846
bne_else.8845:
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	l.6155
	subi	$sp, $sp, 40
	lw	$ra, 36($sp)
	mtc1	$f0, $a25
	flw	$f1, 24($sp)
	finv	$f1, $f1
	fmul	$f0, $f0, $f1
bne_cont.8846:
	j	bne_cont.8844
bne_else.8843:
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	l.6152
	subi	$sp, $sp, 40
	lw	$ra, 36($sp)
	mtc1	$f0, $a25
bne_cont.8844:
	lw	$a0, 4($sp)
	flw	$f1, 0($a0)
	fmul	$f1, $f1, $f0
	fsw	$f1, 0($a0)
	flw	$f1, 4($a0)
	fmul	$f1, $f1, $f0
	fsw	$f1, 4($a0)
	flw	$f1, 8($a0)
	fmul	$f0, $f1, $f0
	fsw	$f0, 8($a0)
	jr	$ra
veciprod.2576:
	flw	$f0, 0($a0)
	flw	$f1, 0($a1)
	fmul	$f0, $f0, $f1
	flw	$f1, 4($a0)
	flw	$f2, 4($a1)
	fmul	$f1, $f1, $f2
	fadd	$f0, $f0, $f1
	flw	$f1, 8($a0)
	flw	$f2, 8($a1)
	fmul	$f1, $f1, $f2
	fadd	$fv, $f0, $f1
	jr $ra
veciprod2.2579:
	flw	$f3, 0($a0)
	fmul	$f0, $f3, $f0
	flw	$f3, 4($a0)
	fmul	$f1, $f3, $f1
	fadd	$f0, $f0, $f1
	flw	$f1, 8($a0)
	fmul	$f1, $f1, $f2
	fadd	$fv, $f0, $f1
	jr $ra
vecaccum.2584:
	flw	$f1, 0($a0)
	flw	$f2, 0($a1)
	fmul	$f2, $f0, $f2
	fadd	$f1, $f1, $f2
	fsw	$f1, 0($a0)
	flw	$f1, 4($a0)
	flw	$f2, 4($a1)
	fmul	$f2, $f0, $f2
	fadd	$f1, $f1, $f2
	fsw	$f1, 4($a0)
	flw	$f1, 8($a0)
	flw	$f2, 8($a1)
	fmul	$f0, $f0, $f2
	fadd	$f0, $f1, $f0
	fsw	$f0, 8($a0)
	jr	$ra
vecadd.2588:
	flw	$f0, 0($a0)
	flw	$f1, 0($a1)
	fadd	$f0, $f0, $f1
	fsw	$f0, 0($a0)
	flw	$f0, 4($a0)
	flw	$f1, 4($a1)
	fadd	$f0, $f0, $f1
	fsw	$f0, 4($a0)
	flw	$f0, 8($a0)
	flw	$f1, 8($a1)
	fadd	$f0, $f0, $f1
	fsw	$f0, 8($a0)
	jr	$ra
vecscale.2594:
	flw	$f1, 0($a0)
	fmul	$f1, $f1, $f0
	fsw	$f1, 0($a0)
	flw	$f1, 4($a0)
	fmul	$f1, $f1, $f0
	fsw	$f1, 4($a0)
	flw	$f1, 8($a0)
	fmul	$f0, $f1, $f0
	fsw	$f0, 8($a0)
	jr	$ra
vecaccumv.2597:
	flw	$f0, 0($a0)
	flw	$f1, 0($a1)
	flw	$f2, 0($a2)
	fmul	$f1, $f1, $f2
	fadd	$f0, $f0, $f1
	fsw	$f0, 0($a0)
	flw	$f0, 4($a0)
	flw	$f1, 4($a1)
	flw	$f2, 4($a2)
	fmul	$f1, $f1, $f2
	fadd	$f0, $f0, $f1
	fsw	$f0, 4($a0)
	flw	$f0, 8($a0)
	flw	$f1, 8($a1)
	flw	$f2, 8($a2)
	fmul	$f1, $f1, $f2
	fadd	$f0, $f0, $f1
	fsw	$f0, 8($a0)
	jr	$ra
o_texturetype.2601:
	lw	$a0, 0($a0)
	move	$v0, $a0
	jr	$ra
o_form.2603:
	lw	$a0, 4($a0)
	move	$v0, $a0
	jr	$ra
o_reflectiontype.2605:
	lw	$a0, 8($a0)
	move	$v0, $a0
	jr	$ra
o_isinvert.2607:
	lw	$a0, 24($a0)
	move	$v0, $a0
	jr	$ra
o_isrot.2609:
	lw	$a0, 12($a0)
	move	$v0, $a0
	jr	$ra
o_param_a.2611:
	lw	$a0, 16($a0)
	flw	$fv, 0($a0)
	jr $ra
o_param_b.2613:
	lw	$a0, 16($a0)
	flw	$fv, 4($a0)
	jr $ra
o_param_c.2615:
	lw	$a0, 16($a0)
	flw	$fv, 8($a0)
	jr $ra
o_param_abc.2617:
	lw	$a0, 16($a0)
	move	$v0, $a0
	jr	$ra
o_param_x.2619:
	lw	$a0, 20($a0)
	flw	$fv, 0($a0)
	jr $ra
o_param_y.2621:
	lw	$a0, 20($a0)
	flw	$fv, 4($a0)
	jr $ra
o_param_z.2623:
	lw	$a0, 20($a0)
	flw	$fv, 8($a0)
	jr $ra
o_diffuse.2625:
	lw	$a0, 28($a0)
	flw	$fv, 0($a0)
	jr $ra
o_hilight.2627:
	lw	$a0, 28($a0)
	flw	$fv, 4($a0)
	jr $ra
o_color_red.2629:
	lw	$a0, 32($a0)
	flw	$fv, 0($a0)
	jr $ra
o_color_green.2631:
	lw	$a0, 32($a0)
	flw	$fv, 4($a0)
	jr $ra
o_color_blue.2633:
	lw	$a0, 32($a0)
	flw	$fv, 8($a0)
	jr $ra
o_param_r1.2635:
	lw	$a0, 36($a0)
	flw	$fv, 0($a0)
	jr $ra
o_param_r2.2637:
	lw	$a0, 36($a0)
	flw	$fv, 4($a0)
	jr $ra
o_param_r3.2639:
	lw	$a0, 36($a0)
	flw	$fv, 8($a0)
	jr $ra
o_param_ctbl.2641:
	lw	$a0, 40($a0)
	move	$v0, $a0
	jr	$ra
p_rgb.2643:
	lw	$a0, 0($a0)
	move	$v0, $a0
	jr	$ra
p_intersection_points.2645:
	lw	$a0, 4($a0)
	move	$v0, $a0
	jr	$ra
p_surface_ids.2647:
	lw	$a0, 8($a0)
	move	$v0, $a0
	jr	$ra
p_calc_diffuse.2649:
	lw	$a0, 12($a0)
	move	$v0, $a0
	jr	$ra
p_energy.2651:
	lw	$a0, 16($a0)
	move	$v0, $a0
	jr	$ra
p_received_ray_20percent.2653:
	lw	$a0, 20($a0)
	move	$v0, $a0
	jr	$ra
p_group_id.2655:
	lw	$a0, 24($a0)
	lw	$v0, 0($a0)
	jr	$ra
p_set_group_id.2657:
	lw	$a0, 24($a0)
	sw	$a1, 0($a0)
	jr	$ra
p_nvectors.2660:
	lw	$a0, 28($a0)
	move	$v0, $a0
	jr	$ra
d_vec.2662:
	lw	$a0, 0($a0)
	move	$v0, $a0
	jr	$ra
d_const.2664:
	lw	$a0, 4($a0)
	move	$v0, $a0
	jr	$ra
r_surface_id.2666:
	lw	$a0, 0($a0)
	move	$v0, $a0
	jr	$ra
r_dvec.2668:
	lw	$a0, 4($a0)
	move	$v0, $a0
	jr	$ra
r_bright.2670:
	flw	$f0, 8($a0)
	fmove	$fv, $f0
	jr $ra
rad.2672:
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	l.6238
	subi	$sp, $sp, 8
	lw	$ra, 4($sp)
	mtc1	$f1, $a25
	fmul	$fv, $f0, $f1
	jr $ra
read_screen_settings.2674:
	lw	$a0, 20($a26)
	lw	$a1, 16($a26)
	lw	$a2, 12($a26)
	lw	$a3, 8($a26)
	lw	$a4, 4($a26)
	sw	$a0, 0($sp)
	sw	$a2, 4($sp)
	sw	$a3, 8($sp)
	sw	$a1, 12($sp)
	sw	$a4, 16($sp)
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	min_caml_read_float
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	fmove	$f0, $fv
	lw	$a0, 16($sp)
	fsw	$f0, 0($a0)
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	min_caml_read_float
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	fmove	$f0, $fv
	lw	$a0, 16($sp)
	fsw	$f0, 4($a0)
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	min_caml_read_float
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	fmove	$f0, $fv
	lw	$a0, 16($sp)
	fsw	$f0, 8($a0)
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	min_caml_read_float
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	fmove	$f0, $fv
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	rad.2672
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	fmove	$f0, $fv
	fsw	$f0, 24($sp)
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	min_caml_cos
	subi	$sp, $sp, 40
	lw	$ra, 36($sp)
	fmove	$f0, $fv
	flw	$f1, 24($sp)
	fsw	$f0, 32($sp)
	fmove	$f0, $f1
	sw	$ra, 44($sp)
	addi	$sp, $sp, 48
	jal	min_caml_sin
	subi	$sp, $sp, 48
	lw	$ra, 44($sp)
	fmove	$f0, $fv
	fsw	$f0, 40($sp)
	sw	$ra, 52($sp)
	addi	$sp, $sp, 56
	jal	min_caml_read_float
	subi	$sp, $sp, 56
	lw	$ra, 52($sp)
	fmove	$f0, $fv
	sw	$ra, 52($sp)
	addi	$sp, $sp, 56
	jal	rad.2672
	subi	$sp, $sp, 56
	lw	$ra, 52($sp)
	fmove	$f0, $fv
	fsw	$f0, 48($sp)
	sw	$ra, 60($sp)
	addi	$sp, $sp, 64
	jal	min_caml_cos
	subi	$sp, $sp, 64
	lw	$ra, 60($sp)
	fmove	$f0, $fv
	flw	$f1, 48($sp)
	fsw	$f0, 56($sp)
	fmove	$f0, $f1
	sw	$ra, 68($sp)
	addi	$sp, $sp, 72
	jal	min_caml_sin
	subi	$sp, $sp, 72
	lw	$ra, 68($sp)
	fmove	$f0, $fv
	flw	$f1, 32($sp)
	fmul	$f2, $f1, $f0
	sw	$ra, 68($sp)
	addi	$sp, $sp, 72
	jal	l.6242
	subi	$sp, $sp, 72
	lw	$ra, 68($sp)
	mtc1	$f3, $a25
	fmul	$f2, $f2, $f3
	lw	$a0, 12($sp)
	fsw	$f2, 0($a0)
	sw	$ra, 68($sp)
	addi	$sp, $sp, 72
	jal	l.6244
	subi	$sp, $sp, 72
	lw	$ra, 68($sp)
	mtc1	$f2, $a25
	flw	$f3, 40($sp)
	fmul	$f2, $f3, $f2
	fsw	$f2, 4($a0)
	flw	$f2, 56($sp)
	fmul	$f4, $f1, $f2
	sw	$ra, 68($sp)
	addi	$sp, $sp, 72
	jal	l.6242
	subi	$sp, $sp, 72
	lw	$ra, 68($sp)
	mtc1	$f5, $a25
	fmul	$f4, $f4, $f5
	fsw	$f4, 8($a0)
	lw	$a1, 8($sp)
	fsw	$f2, 0($a1)
	sw	$ra, 68($sp)
	addi	$sp, $sp, 72
	jal	l.6149
	subi	$sp, $sp, 72
	lw	$ra, 68($sp)
	mtc1	$f4, $a25
	fsw	$f4, 4($a1)
	fsw	$f0, 64($sp)
	sw	$ra, 76($sp)
	addi	$sp, $sp, 80
	jal	fneg.2514
	subi	$sp, $sp, 80
	lw	$ra, 76($sp)
	fmove	$f0, $fv
	lw	$a0, 8($sp)
	fsw	$f0, 8($a0)
	flw	$f0, 40($sp)
	sw	$ra, 76($sp)
	addi	$sp, $sp, 80
	jal	fneg.2514
	subi	$sp, $sp, 80
	lw	$ra, 76($sp)
	fmove	$f0, $fv
	flw	$f1, 64($sp)
	fmul	$f0, $f0, $f1
	lw	$a0, 4($sp)
	fsw	$f0, 0($a0)
	flw	$f0, 32($sp)
	sw	$ra, 76($sp)
	addi	$sp, $sp, 80
	jal	fneg.2514
	subi	$sp, $sp, 80
	lw	$ra, 76($sp)
	fmove	$f0, $fv
	lw	$a0, 4($sp)
	fsw	$f0, 4($a0)
	flw	$f0, 40($sp)
	sw	$ra, 76($sp)
	addi	$sp, $sp, 80
	jal	fneg.2514
	subi	$sp, $sp, 80
	lw	$ra, 76($sp)
	fmove	$f0, $fv
	flw	$f1, 56($sp)
	fmul	$f0, $f0, $f1
	lw	$a0, 4($sp)
	fsw	$f0, 8($a0)
	lw	$a0, 16($sp)
	flw	$f0, 0($a0)
	lw	$a1, 12($sp)
	flw	$f1, 0($a1)
	fsub	$f0, $f0, $f1
	lw	$a2, 0($sp)
	fsw	$f0, 0($a2)
	flw	$f0, 4($a0)
	flw	$f1, 4($a1)
	fsub	$f0, $f0, $f1
	fsw	$f0, 4($a2)
	flw	$f0, 8($a0)
	flw	$f1, 8($a1)
	fsub	$f0, $f0, $f1
	fsw	$f0, 8($a2)
	jr	$ra
read_light.2676:
	lw	$a0, 8($a26)
	lw	$a1, 4($a26)
	sw	$a1, 0($sp)
	sw	$a0, 4($sp)
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	min_caml_read_int
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	move	$a0, $v0
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	min_caml_read_float
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	fmove	$f0, $fv
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	rad.2672
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	fmove	$f0, $fv
	fsw	$f0, 8($sp)
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	min_caml_sin
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	fmove	$f0, $fv
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	fneg.2514
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	fmove	$f0, $fv
	lw	$a0, 4($sp)
	fsw	$f0, 4($a0)
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	min_caml_read_float
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	fmove	$f0, $fv
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	rad.2672
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	fmove	$f0, $fv
	flw	$f1, 8($sp)
	fsw	$f0, 16($sp)
	fmove	$f0, $f1
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	min_caml_cos
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	fmove	$f0, $fv
	flw	$f1, 16($sp)
	fsw	$f0, 24($sp)
	fmove	$f0, $f1
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	min_caml_sin
	subi	$sp, $sp, 40
	lw	$ra, 36($sp)
	fmove	$f0, $fv
	flw	$f1, 24($sp)
	fmul	$f0, $f1, $f0
	lw	$a0, 4($sp)
	fsw	$f0, 0($a0)
	flw	$f0, 16($sp)
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	min_caml_cos
	subi	$sp, $sp, 40
	lw	$ra, 36($sp)
	fmove	$f0, $fv
	flw	$f1, 24($sp)
	fmul	$f0, $f1, $f0
	lw	$a0, 4($sp)
	fsw	$f0, 8($a0)
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	min_caml_read_float
	subi	$sp, $sp, 40
	lw	$ra, 36($sp)
	fmove	$f0, $fv
	lw	$a0, 0($sp)
	fsw	$f0, 0($a0)
	jr	$ra
rotate_quadratic_matrix.2678:
	flw	$f0, 0($a1)
	sw	$a0, 0($sp)
	sw	$a1, 4($sp)
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	min_caml_cos
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	fmove	$f0, $fv
	lw	$a0, 4($sp)
	flw	$f1, 0($a0)
	fsw	$f0, 8($sp)
	fmove	$f0, $f1
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	min_caml_sin
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	fmove	$f0, $fv
	lw	$a0, 4($sp)
	flw	$f1, 4($a0)
	fsw	$f0, 16($sp)
	fmove	$f0, $f1
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	min_caml_cos
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	fmove	$f0, $fv
	lw	$a0, 4($sp)
	flw	$f1, 4($a0)
	fsw	$f0, 24($sp)
	fmove	$f0, $f1
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	min_caml_sin
	subi	$sp, $sp, 40
	lw	$ra, 36($sp)
	fmove	$f0, $fv
	lw	$a0, 4($sp)
	flw	$f1, 8($a0)
	fsw	$f0, 32($sp)
	fmove	$f0, $f1
	sw	$ra, 44($sp)
	addi	$sp, $sp, 48
	jal	min_caml_cos
	subi	$sp, $sp, 48
	lw	$ra, 44($sp)
	fmove	$f0, $fv
	lw	$a0, 4($sp)
	flw	$f1, 8($a0)
	fsw	$f0, 40($sp)
	fmove	$f0, $f1
	sw	$ra, 52($sp)
	addi	$sp, $sp, 56
	jal	min_caml_sin
	subi	$sp, $sp, 56
	lw	$ra, 52($sp)
	fmove	$f0, $fv
	flw	$f1, 40($sp)
	flw	$f2, 24($sp)
	fmul	$f3, $f2, $f1
	flw	$f4, 32($sp)
	flw	$f5, 16($sp)
	fmul	$f6, $f5, $f4
	fmul	$f6, $f6, $f1
	flw	$f7, 8($sp)
	fmul	$f8, $f7, $f0
	fsub	$f6, $f6, $f8
	fmul	$f8, $f7, $f4
	fmul	$f8, $f8, $f1
	fmul	$f9, $f5, $f0
	fadd	$f8, $f8, $f9
	fmul	$f9, $f2, $f0
	fmul	$f10, $f5, $f4
	fmul	$f10, $f10, $f0
	fmul	$f11, $f7, $f1
	fadd	$f10, $f10, $f11
	fmul	$f11, $f7, $f4
	fmul	$f0, $f11, $f0
	fmul	$f1, $f5, $f1
	fsub	$f0, $f0, $f1
	fsw	$f0, 48($sp)
	fsw	$f8, 56($sp)
	fsw	$f10, 64($sp)
	fsw	$f6, 72($sp)
	fsw	$f9, 80($sp)
	fsw	$f3, 88($sp)
	fmove	$f0, $f4
	sw	$ra, 100($sp)
	addi	$sp, $sp, 104
	jal	fneg.2514
	subi	$sp, $sp, 104
	lw	$ra, 100($sp)
	fmove	$f0, $fv
	flw	$f1, 24($sp)
	flw	$f2, 16($sp)
	fmul	$f2, $f2, $f1
	flw	$f3, 8($sp)
	fmul	$f1, $f3, $f1
	lw	$a0, 0($sp)
	flw	$f3, 0($a0)
	flw	$f4, 4($a0)
	flw	$f5, 8($a0)
	flw	$f6, 88($sp)
	fsw	$f1, 96($sp)
	fsw	$f2, 104($sp)
	fsw	$f5, 112($sp)
	fsw	$f0, 120($sp)
	fsw	$f4, 128($sp)
	fsw	$f3, 136($sp)
	fmove	$f0, $f6
	sw	$ra, 148($sp)
	addi	$sp, $sp, 152
	jal	fsqr.2524
	subi	$sp, $sp, 152
	lw	$ra, 148($sp)
	fmove	$f0, $fv
	flw	$f1, 136($sp)
	fmul	$f0, $f1, $f0
	flw	$f2, 80($sp)
	fsw	$f0, 144($sp)
	fmove	$f0, $f2
	sw	$ra, 156($sp)
	addi	$sp, $sp, 160
	jal	fsqr.2524
	subi	$sp, $sp, 160
	lw	$ra, 156($sp)
	fmove	$f0, $fv
	flw	$f1, 128($sp)
	fmul	$f0, $f1, $f0
	flw	$f2, 144($sp)
	fadd	$f0, $f2, $f0
	flw	$f2, 120($sp)
	fsw	$f0, 152($sp)
	fmove	$f0, $f2
	sw	$ra, 164($sp)
	addi	$sp, $sp, 168
	jal	fsqr.2524
	subi	$sp, $sp, 168
	lw	$ra, 164($sp)
	fmove	$f0, $fv
	flw	$f1, 112($sp)
	fmul	$f0, $f1, $f0
	flw	$f2, 152($sp)
	fadd	$f0, $f2, $f0
	lw	$a0, 0($sp)
	fsw	$f0, 0($a0)
	flw	$f0, 72($sp)
	sw	$ra, 164($sp)
	addi	$sp, $sp, 168
	jal	fsqr.2524
	subi	$sp, $sp, 168
	lw	$ra, 164($sp)
	fmove	$f0, $fv
	flw	$f1, 136($sp)
	fmul	$f0, $f1, $f0
	flw	$f2, 64($sp)
	fsw	$f0, 160($sp)
	fmove	$f0, $f2
	sw	$ra, 172($sp)
	addi	$sp, $sp, 176
	jal	fsqr.2524
	subi	$sp, $sp, 176
	lw	$ra, 172($sp)
	fmove	$f0, $fv
	flw	$f1, 128($sp)
	fmul	$f0, $f1, $f0
	flw	$f2, 160($sp)
	fadd	$f0, $f2, $f0
	flw	$f2, 104($sp)
	fsw	$f0, 168($sp)
	fmove	$f0, $f2
	sw	$ra, 180($sp)
	addi	$sp, $sp, 184
	jal	fsqr.2524
	subi	$sp, $sp, 184
	lw	$ra, 180($sp)
	fmove	$f0, $fv
	flw	$f1, 112($sp)
	fmul	$f0, $f1, $f0
	flw	$f2, 168($sp)
	fadd	$f0, $f2, $f0
	lw	$a0, 0($sp)
	fsw	$f0, 4($a0)
	flw	$f0, 56($sp)
	sw	$ra, 180($sp)
	addi	$sp, $sp, 184
	jal	fsqr.2524
	subi	$sp, $sp, 184
	lw	$ra, 180($sp)
	fmove	$f0, $fv
	flw	$f1, 136($sp)
	fmul	$f0, $f1, $f0
	flw	$f2, 48($sp)
	fsw	$f0, 176($sp)
	fmove	$f0, $f2
	sw	$ra, 188($sp)
	addi	$sp, $sp, 192
	jal	fsqr.2524
	subi	$sp, $sp, 192
	lw	$ra, 188($sp)
	fmove	$f0, $fv
	flw	$f1, 128($sp)
	fmul	$f0, $f1, $f0
	flw	$f2, 176($sp)
	fadd	$f0, $f2, $f0
	flw	$f2, 96($sp)
	fsw	$f0, 184($sp)
	fmove	$f0, $f2
	sw	$ra, 196($sp)
	addi	$sp, $sp, 200
	jal	fsqr.2524
	subi	$sp, $sp, 200
	lw	$ra, 196($sp)
	fmove	$f0, $fv
	flw	$f1, 112($sp)
	fmul	$f0, $f1, $f0
	flw	$f2, 184($sp)
	fadd	$f0, $f2, $f0
	lw	$a0, 0($sp)
	fsw	$f0, 8($a0)
	sw	$ra, 196($sp)
	addi	$sp, $sp, 200
	jal	l.6151
	subi	$sp, $sp, 200
	lw	$ra, 196($sp)
	mtc1	$f0, $a25
	flw	$f2, 72($sp)
	flw	$f3, 136($sp)
	fmul	$f4, $f3, $f2
	flw	$f5, 56($sp)
	fmul	$f4, $f4, $f5
	flw	$f6, 64($sp)
	flw	$f7, 128($sp)
	fmul	$f8, $f7, $f6
	flw	$f9, 48($sp)
	fmul	$f8, $f8, $f9
	fadd	$f4, $f4, $f8
	flw	$f8, 104($sp)
	fmul	$f10, $f1, $f8
	flw	$f11, 96($sp)
	fmul	$f10, $f10, $f11
	fadd	$f4, $f4, $f10
	fmul	$f0, $f0, $f4
	lw	$a0, 4($sp)
	fsw	$f0, 0($a0)
	sw	$ra, 196($sp)
	addi	$sp, $sp, 200
	jal	l.6151
	subi	$sp, $sp, 200
	lw	$ra, 196($sp)
	mtc1	$f0, $a25
	flw	$f4, 88($sp)
	fmul	$f10, $f3, $f4
	fmul	$f5, $f10, $f5
	flw	$f10, 80($sp)
	fmul	$f12, $f7, $f10
	fmul	$f9, $f12, $f9
	fadd	$f5, $f5, $f9
	flw	$f9, 120($sp)
	fmul	$f12, $f1, $f9
	fmul	$f11, $f12, $f11
	fadd	$f5, $f5, $f11
	fmul	$f0, $f0, $f5
	fsw	$f0, 4($a0)
	sw	$ra, 196($sp)
	addi	$sp, $sp, 200
	jal	l.6151
	subi	$sp, $sp, 200
	lw	$ra, 196($sp)
	mtc1	$f0, $a25
	fmul	$f3, $f3, $f4
	fmul	$f2, $f3, $f2
	fmul	$f3, $f7, $f10
	fmul	$f3, $f3, $f6
	fadd	$f2, $f2, $f3
	fmul	$f1, $f1, $f9
	fmul	$f1, $f1, $f8
	fadd	$f1, $f2, $f1
	fmul	$f0, $f0, $f1
	fsw	$f0, 8($a0)
	jr	$ra
read_nth_object.2681:
	lw	$a1, 4($a26)
	sw	$a1, 0($sp)
	sw	$a0, 4($sp)
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	min_caml_read_int
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	move	$a0, $v0
	li	$a1, -1
	bne	$a0, $a1, beq_else.8857
	li	$v0, 0
	jr	$ra
beq_else.8857:
	sw	$a0, 8($sp)
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	min_caml_read_int
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	move	$a0, $v0
	sw	$a0, 12($sp)
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	min_caml_read_int
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	move	$a0, $v0
	sw	$a0, 16($sp)
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	min_caml_read_int
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	move	$a0, $v0
	li	$a1, 3
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	l.6149
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	mtc1	$f0, $a25
	sw	$a0, 20($sp)
	move	$a0, $a1
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	min_caml_create_float_array
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	move	$a0, $v0
	sw	$a0, 24($sp)
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	min_caml_read_float
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	fmove	$f0, $fv
	lw	$a0, 24($sp)
	fsw	$f0, 0($a0)
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	min_caml_read_float
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	fmove	$f0, $fv
	lw	$a0, 24($sp)
	fsw	$f0, 4($a0)
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	min_caml_read_float
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	fmove	$f0, $fv
	lw	$a0, 24($sp)
	fsw	$f0, 8($a0)
	li	$a1, 3
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	l.6149
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	mtc1	$f0, $a25
	move	$a0, $a1
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	min_caml_create_float_array
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	move	$a0, $v0
	sw	$a0, 28($sp)
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	min_caml_read_float
	subi	$sp, $sp, 40
	lw	$ra, 36($sp)
	fmove	$f0, $fv
	lw	$a0, 28($sp)
	fsw	$f0, 0($a0)
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	min_caml_read_float
	subi	$sp, $sp, 40
	lw	$ra, 36($sp)
	fmove	$f0, $fv
	lw	$a0, 28($sp)
	fsw	$f0, 4($a0)
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	min_caml_read_float
	subi	$sp, $sp, 40
	lw	$ra, 36($sp)
	fmove	$f0, $fv
	lw	$a0, 28($sp)
	fsw	$f0, 8($a0)
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	min_caml_read_float
	subi	$sp, $sp, 40
	lw	$ra, 36($sp)
	fmove	$f0, $fv
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	fisneg.2518
	subi	$sp, $sp, 40
	lw	$ra, 36($sp)
	move	$a0, $v0
	li	$a1, 2
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	l.6149
	subi	$sp, $sp, 40
	lw	$ra, 36($sp)
	mtc1	$f0, $a25
	sw	$a0, 32($sp)
	move	$a0, $a1
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	min_caml_create_float_array
	subi	$sp, $sp, 40
	lw	$ra, 36($sp)
	move	$a0, $v0
	sw	$a0, 36($sp)
	sw	$ra, 44($sp)
	addi	$sp, $sp, 48
	jal	min_caml_read_float
	subi	$sp, $sp, 48
	lw	$ra, 44($sp)
	fmove	$f0, $fv
	lw	$a0, 36($sp)
	fsw	$f0, 0($a0)
	sw	$ra, 44($sp)
	addi	$sp, $sp, 48
	jal	min_caml_read_float
	subi	$sp, $sp, 48
	lw	$ra, 44($sp)
	fmove	$f0, $fv
	lw	$a0, 36($sp)
	fsw	$f0, 4($a0)
	li	$a1, 3
	sw	$ra, 44($sp)
	addi	$sp, $sp, 48
	jal	l.6149
	subi	$sp, $sp, 48
	lw	$ra, 44($sp)
	mtc1	$f0, $a25
	move	$a0, $a1
	sw	$ra, 44($sp)
	addi	$sp, $sp, 48
	jal	min_caml_create_float_array
	subi	$sp, $sp, 48
	lw	$ra, 44($sp)
	move	$a0, $v0
	sw	$a0, 40($sp)
	sw	$ra, 44($sp)
	addi	$sp, $sp, 48
	jal	min_caml_read_float
	subi	$sp, $sp, 48
	lw	$ra, 44($sp)
	fmove	$f0, $fv
	lw	$a0, 40($sp)
	fsw	$f0, 0($a0)
	sw	$ra, 44($sp)
	addi	$sp, $sp, 48
	jal	min_caml_read_float
	subi	$sp, $sp, 48
	lw	$ra, 44($sp)
	fmove	$f0, $fv
	lw	$a0, 40($sp)
	fsw	$f0, 4($a0)
	sw	$ra, 44($sp)
	addi	$sp, $sp, 48
	jal	min_caml_read_float
	subi	$sp, $sp, 48
	lw	$ra, 44($sp)
	fmove	$f0, $fv
	lw	$a0, 40($sp)
	fsw	$f0, 8($a0)
	li	$a1, 3
	sw	$ra, 44($sp)
	addi	$sp, $sp, 48
	jal	l.6149
	subi	$sp, $sp, 48
	lw	$ra, 44($sp)
	mtc1	$f0, $a25
	move	$a0, $a1
	sw	$ra, 44($sp)
	addi	$sp, $sp, 48
	jal	min_caml_create_float_array
	subi	$sp, $sp, 48
	lw	$ra, 44($sp)
	move	$a0, $v0
	li	$a1, 0
	lw	$a2, 20($sp)
	bne	$a2, $a1, bne_else.8858
	j	bne_cont.8859
bne_else.8858:
	sw	$a0, 44($sp)
	sw	$ra, 52($sp)
	addi	$sp, $sp, 56
	jal	min_caml_read_float
	subi	$sp, $sp, 56
	lw	$ra, 52($sp)
	fmove	$f0, $fv
	sw	$ra, 52($sp)
	addi	$sp, $sp, 56
	jal	rad.2672
	subi	$sp, $sp, 56
	lw	$ra, 52($sp)
	fmove	$f0, $fv
	lw	$a0, 44($sp)
	fsw	$f0, 0($a0)
	sw	$ra, 52($sp)
	addi	$sp, $sp, 56
	jal	min_caml_read_float
	subi	$sp, $sp, 56
	lw	$ra, 52($sp)
	fmove	$f0, $fv
	sw	$ra, 52($sp)
	addi	$sp, $sp, 56
	jal	rad.2672
	subi	$sp, $sp, 56
	lw	$ra, 52($sp)
	fmove	$f0, $fv
	lw	$a0, 44($sp)
	fsw	$f0, 4($a0)
	sw	$ra, 52($sp)
	addi	$sp, $sp, 56
	jal	min_caml_read_float
	subi	$sp, $sp, 56
	lw	$ra, 52($sp)
	fmove	$f0, $fv
	sw	$ra, 52($sp)
	addi	$sp, $sp, 56
	jal	rad.2672
	subi	$sp, $sp, 56
	lw	$ra, 52($sp)
	fmove	$f0, $fv
	lw	$a0, 44($sp)
	fsw	$f0, 8($a0)
bne_cont.8859:
	li	$a1, 2
	lw	$a2, 12($sp)
	bne	$a2, $a1, bne_else.8860
	li	$a1, 1
	j	bne_cont.8861
bne_else.8860:
	lw	$a1, 32($sp)
bne_cont.8861:
	li	$a3, 4
	sw	$ra, 52($sp)
	addi	$sp, $sp, 56
	jal	l.6149
	subi	$sp, $sp, 56
	lw	$ra, 52($sp)
	mtc1	$f0, $a25
	sw	$a1, 48($sp)
	sw	$a0, 44($sp)
	move	$a0, $a3
	sw	$ra, 52($sp)
	addi	$sp, $sp, 56
	jal	min_caml_create_float_array
	subi	$sp, $sp, 56
	lw	$ra, 52($sp)
	move	$a0, $v0
	move	$a1, $fp
	addi	$fp, $fp, 48
	sw	$a0, 40($a1)
	lw	$a0, 44($sp)
	sw	$a0, 36($a1)
	lw	$a2, 40($sp)
	sw	$a2, 32($a1)
	lw	$a2, 36($sp)
	sw	$a2, 28($a1)
	lw	$a2, 48($sp)
	sw	$a2, 24($a1)
	lw	$a2, 28($sp)
	sw	$a2, 20($a1)
	lw	$a2, 24($sp)
	sw	$a2, 16($a1)
	lw	$a3, 20($sp)
	sw	$a3, 12($a1)
	lw	$a4, 16($sp)
	sw	$a4, 8($a1)
	lw	$a4, 12($sp)
	sw	$a4, 4($a1)
	lw	$a5, 8($sp)
	sw	$a5, 0($a1)
	lw	$a5, 4($sp)
	sll	$a5, $a5, 2
	lw	$a6, 0($sp)
	add	$a5, $a6, $a5
	sw	$a1, 0($a5)
	li	$a1, 3
	bne	$a4, $a1, bne_else.8862
	flw	$f0, 0($a2)
	fsw	$f0, 56($sp)
	sw	$ra, 68($sp)
	addi	$sp, $sp, 72
	jal	fiszero.2520
	subi	$sp, $sp, 72
	lw	$ra, 68($sp)
	move	$a0, $v0
	li	$a1, 0
	bne	$a0, $a1, bne_else.8865
	flw	$f0, 56($sp)
	sw	$ra, 68($sp)
	addi	$sp, $sp, 72
	jal	sgn.2547
	subi	$sp, $sp, 72
	lw	$ra, 68($sp)
	fmove	$f0, $fv
	flw	$f1, 56($sp)
	fsw	$f0, 64($sp)
	fmove	$f0, $f1
	sw	$ra, 76($sp)
	addi	$sp, $sp, 80
	jal	fsqr.2524
	subi	$sp, $sp, 80
	lw	$ra, 76($sp)
	fmove	$f0, $fv
	finv	$f0, $f0
	flw	$f1, 64($sp)
	fmul	$f0, $f1, $f0
	j	bne_cont.8866
bne_else.8865:
	sw	$ra, 76($sp)
	addi	$sp, $sp, 80
	jal	l.6149
	subi	$sp, $sp, 80
	lw	$ra, 76($sp)
	mtc1	$f0, $a25
bne_cont.8866:
	lw	$a0, 24($sp)
	fsw	$f0, 0($a0)
	flw	$f0, 4($a0)
	fsw	$f0, 72($sp)
	sw	$ra, 84($sp)
	addi	$sp, $sp, 88
	jal	fiszero.2520
	subi	$sp, $sp, 88
	lw	$ra, 84($sp)
	move	$a0, $v0
	li	$a1, 0
	bne	$a0, $a1, bne_else.8867
	flw	$f0, 72($sp)
	sw	$ra, 84($sp)
	addi	$sp, $sp, 88
	jal	sgn.2547
	subi	$sp, $sp, 88
	lw	$ra, 84($sp)
	fmove	$f0, $fv
	flw	$f1, 72($sp)
	fsw	$f0, 80($sp)
	fmove	$f0, $f1
	sw	$ra, 92($sp)
	addi	$sp, $sp, 96
	jal	fsqr.2524
	subi	$sp, $sp, 96
	lw	$ra, 92($sp)
	fmove	$f0, $fv
	finv	$f0, $f0
	flw	$f1, 80($sp)
	fmul	$f0, $f1, $f0
	j	bne_cont.8868
bne_else.8867:
	sw	$ra, 92($sp)
	addi	$sp, $sp, 96
	jal	l.6149
	subi	$sp, $sp, 96
	lw	$ra, 92($sp)
	mtc1	$f0, $a25
bne_cont.8868:
	lw	$a0, 24($sp)
	fsw	$f0, 4($a0)
	flw	$f0, 8($a0)
	fsw	$f0, 88($sp)
	sw	$ra, 100($sp)
	addi	$sp, $sp, 104
	jal	fiszero.2520
	subi	$sp, $sp, 104
	lw	$ra, 100($sp)
	move	$a0, $v0
	li	$a1, 0
	bne	$a0, $a1, bne_else.8869
	flw	$f0, 88($sp)
	sw	$ra, 100($sp)
	addi	$sp, $sp, 104
	jal	sgn.2547
	subi	$sp, $sp, 104
	lw	$ra, 100($sp)
	fmove	$f0, $fv
	flw	$f1, 88($sp)
	fsw	$f0, 96($sp)
	fmove	$f0, $f1
	sw	$ra, 108($sp)
	addi	$sp, $sp, 112
	jal	fsqr.2524
	subi	$sp, $sp, 112
	lw	$ra, 108($sp)
	fmove	$f0, $fv
	finv	$f0, $f0
	flw	$f1, 96($sp)
	fmul	$f0, $f1, $f0
	j	bne_cont.8870
bne_else.8869:
	sw	$ra, 108($sp)
	addi	$sp, $sp, 112
	jal	l.6149
	subi	$sp, $sp, 112
	lw	$ra, 108($sp)
	mtc1	$f0, $a25
bne_cont.8870:
	lw	$a0, 24($sp)
	fsw	$f0, 8($a0)
	j	bne_cont.8863
bne_else.8862:
	li	$a1, 2
	bne	$a4, $a1, bne_else.8871
	li	$a1, 0
	lw	$a4, 32($sp)
	bne	$a4, $a1, bne_else.8873
	li	$a1, 1
	j	bne_cont.8874
bne_else.8873:
	li	$a1, 0
bne_cont.8874:
	move	$a0, $a2
	sw	$ra, 108($sp)
	addi	$sp, $sp, 112
	jal	vecunit_sgn.2573
	subi	$sp, $sp, 112
	lw	$ra, 108($sp)
	fmove	$f30, $fv
	j	bne_cont.8872
bne_else.8871:
bne_cont.8872:
bne_cont.8863:
	li	$a0, 0
	lw	$a1, 20($sp)
	bne	$a1, $a0, bne_else.8875
	j	bne_cont.8876
bne_else.8875:
	lw	$a0, 24($sp)
	lw	$a1, 44($sp)
	sw	$ra, 108($sp)
	addi	$sp, $sp, 112
	jal	rotate_quadratic_matrix.2678
	subi	$sp, $sp, 112
	lw	$ra, 108($sp)
	fmove	$f30, $fv
bne_cont.8876:
	li	$v0, 1
	jr	$ra
read_object.2683:
	lw	$a1, 8($a26)
	lw	$a2, 4($a26)
	li	$a3, 60
	blt	$a0, $a3, bge_else.8877
	jr	$ra
bge_else.8877:
	sw	$a26, 0($sp)
	sw	$a2, 4($sp)
	sw	$a0, 8($sp)
	move	$a26, $a1
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	read_nth_object.2681
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	move	$a0, $v0
	li	$a1, 0
	bne	$a0, $a1, beq_else.8879
	lw	$a0, 4($sp)
	lw	$a1, 8($sp)
	sw	$a1, 0($a0)
	jr	$ra
beq_else.8879:
	lw	$a0, 8($sp)
	addi	$a0, $a0, 1
	lw	$a26, 0($sp)
	lw	$a25, 0($a26)
	j	read_object.2683
read_all_object.2685:
	lw	$a26, 4($a26)
	li	$a0, 0
	lw	$a25, 0($a26)
	j	read_object.2683
read_net_item.2687:
	sw	$a0, 0($sp)
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	min_caml_read_int
	subi	$sp, $sp, 8
	lw	$ra, 4($sp)
	move	$a0, $v0
	li	$a1, -1
	bne	$a0, $a1, beq_else.8881
	lw	$a0, 0($sp)
	addi	$a0, $a0, 1
	li	$a1, -1
	j	min_caml_create_array
beq_else.8881:
	lw	$a1, 0($sp)
	addi	$a2, $a1, 1
	sw	$a0, 4($sp)
	move	$a0, $a2
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	read_net_item.2687
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	move	$a0, $v0
	lw	$a1, 0($sp)
	sll	$a1, $a1, 2
	lw	$a2, 4($sp)
	add	$a1, $a0, $a1
	sw	$a2, 0($a1)
	move	$v0, $a0
	jr	$ra
read_or_network.2689:
	li	$a1, 0
	sw	$a0, 0($sp)
	move	$a0, $a1
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	read_net_item.2687
	subi	$sp, $sp, 8
	lw	$ra, 4($sp)
	move	$a1, $v0
	lw	$a0, 0($a1)
	li	$a2, -1
	bne	$a0, $a2, beq_else.8882
	lw	$a0, 0($sp)
	addi	$a0, $a0, 1
	j	min_caml_create_array
beq_else.8882:
	lw	$a0, 0($sp)
	addi	$a2, $a0, 1
	sw	$a1, 4($sp)
	move	$a0, $a2
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	read_or_network.2689
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	move	$a0, $v0
	lw	$a1, 0($sp)
	sll	$a1, $a1, 2
	lw	$a2, 4($sp)
	add	$a1, $a0, $a1
	sw	$a2, 0($a1)
	move	$v0, $a0
	jr	$ra
read_and_network.2691:
	lw	$a1, 4($a26)
	li	$a2, 0
	sw	$a26, 0($sp)
	sw	$a1, 4($sp)
	sw	$a0, 8($sp)
	move	$a0, $a2
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	read_net_item.2687
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	move	$a0, $v0
	lw	$a1, 0($a0)
	li	$a2, -1
	bne	$a1, $a2, beq_else.8883
	jr	$ra
beq_else.8883:
	lw	$a1, 8($sp)
	sll	$a2, $a1, 2
	lw	$a3, 4($sp)
	add	$a2, $a3, $a2
	sw	$a0, 0($a2)
	addi	$a0, $a1, 1
	lw	$a26, 0($sp)
	lw	$a25, 0($a26)
	j	read_and_network.2691
read_parameter.2693:
	lw	$a0, 20($a26)
	lw	$a1, 16($a26)
	lw	$a2, 12($a26)
	lw	$a3, 8($a26)
	lw	$a4, 4($a26)
	sw	$a4, 0($sp)
	sw	$a2, 4($sp)
	sw	$a3, 8($sp)
	sw	$a1, 12($sp)
	move	$a26, $a0
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	read_screen_settings.2674
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	fmove	$f30, $fv
	lw	$a26, 12($sp)
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	read_light.2676
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	fmove	$f30, $fv
	lw	$a26, 8($sp)
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	read_all_object.2685
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	fmove	$f30, $fv
	li	$a0, 0
	lw	$a26, 4($sp)
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	read_and_network.2691
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	fmove	$f30, $fv
	li	$a0, 0
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	read_or_network.2689
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	move	$a0, $v0
	lw	$a1, 0($sp)
	sw	$a0, 0($a1)
	jr	$ra
solver_rect_surface.2695:
	lw	$a5, 4($a26)
	sll	$a6, $a2, 2
	add	$a6, $a1, $a6
	flw	$f3, 0($a6)
	sw	$a5, 0($sp)
	fsw	$f2, 8($sp)
	sw	$a4, 16($sp)
	fsw	$f1, 24($sp)
	sw	$a3, 32($sp)
	fsw	$f0, 40($sp)
	sw	$a1, 48($sp)
	sw	$a2, 52($sp)
	sw	$a0, 56($sp)
	fmove	$f0, $f3
	sw	$ra, 60($sp)
	addi	$sp, $sp, 64
	jal	fiszero.2520
	subi	$sp, $sp, 64
	lw	$ra, 60($sp)
	move	$a0, $v0
	li	$a1, 0
	bne	$a0, $a1, beq_else.8889
	lw	$a0, 56($sp)
	sw	$ra, 60($sp)
	addi	$sp, $sp, 64
	jal	o_param_abc.2617
	subi	$sp, $sp, 64
	lw	$ra, 60($sp)
	move	$a0, $v0
	lw	$a1, 56($sp)
	sw	$a0, 60($sp)
	move	$a0, $a1
	sw	$ra, 68($sp)
	addi	$sp, $sp, 72
	jal	o_isinvert.2607
	subi	$sp, $sp, 72
	lw	$ra, 68($sp)
	move	$a0, $v0
	lw	$a1, 52($sp)
	sll	$a2, $a1, 2
	lw	$a3, 48($sp)
	add	$a2, $a3, $a2
	flw	$f0, 0($a2)
	sw	$a0, 64($sp)
	sw	$ra, 68($sp)
	addi	$sp, $sp, 72
	jal	fisneg.2518
	subi	$sp, $sp, 72
	lw	$ra, 68($sp)
	move	$a1, $v0
	lw	$a0, 64($sp)
	sw	$ra, 68($sp)
	addi	$sp, $sp, 72
	jal	xor.2544
	subi	$sp, $sp, 72
	lw	$ra, 68($sp)
	move	$a0, $v0
	lw	$a1, 52($sp)
	sll	$a2, $a1, 2
	lw	$a3, 60($sp)
	add	$a2, $a3, $a2
	flw	$f0, 0($a2)
	sw	$ra, 68($sp)
	addi	$sp, $sp, 72
	jal	fneg_cond.2549
	subi	$sp, $sp, 72
	lw	$ra, 68($sp)
	fmove	$f0, $fv
	flw	$f1, 40($sp)
	fsub	$f0, $f0, $f1
	lw	$a0, 52($sp)
	sll	$a0, $a0, 2
	lw	$a1, 48($sp)
	add	$a0, $a1, $a0
	flw	$f1, 0($a0)
	finv	$f1, $f1
	fmul	$f0, $f0, $f1
	lw	$a0, 32($sp)
	sll	$a2, $a0, 2
	add	$a2, $a1, $a2
	flw	$f1, 0($a2)
	fmul	$f1, $f0, $f1
	flw	$f2, 24($sp)
	fadd	$f1, $f1, $f2
	fsw	$f0, 72($sp)
	fmove	$f0, $f1
	sw	$ra, 84($sp)
	addi	$sp, $sp, 88
	jal	fabs.2526
	subi	$sp, $sp, 88
	lw	$ra, 84($sp)
	fmove	$f0, $fv
	lw	$a0, 32($sp)
	sll	$a0, $a0, 2
	lw	$a1, 60($sp)
	add	$a0, $a1, $a0
	flw	$f1, 0($a0)
	sw	$ra, 84($sp)
	addi	$sp, $sp, 88
	jal	fless.2528
	subi	$sp, $sp, 88
	lw	$ra, 84($sp)
	move	$a0, $v0
	li	$a1, 0
	bne	$a0, $a1, beq_else.8891
	li	$v0, 0
	jr	$ra
beq_else.8891:
	lw	$a0, 16($sp)
	sll	$a1, $a0, 2
	lw	$a2, 48($sp)
	add	$a1, $a2, $a1
	flw	$f0, 0($a1)
	flw	$f1, 72($sp)
	fmul	$f0, $f1, $f0
	flw	$f2, 8($sp)
	fadd	$f0, $f0, $f2
	sw	$ra, 84($sp)
	addi	$sp, $sp, 88
	jal	fabs.2526
	subi	$sp, $sp, 88
	lw	$ra, 84($sp)
	fmove	$f0, $fv
	lw	$a0, 16($sp)
	sll	$a0, $a0, 2
	lw	$a1, 60($sp)
	add	$a0, $a1, $a0
	flw	$f1, 0($a0)
	sw	$ra, 84($sp)
	addi	$sp, $sp, 88
	jal	fless.2528
	subi	$sp, $sp, 88
	lw	$ra, 84($sp)
	move	$a0, $v0
	li	$a1, 0
	bne	$a0, $a1, beq_else.8892
	li	$v0, 0
	jr	$ra
beq_else.8892:
	lw	$a0, 0($sp)
	flw	$f0, 72($sp)
	fsw	$f0, 0($a0)
	li	$v0, 1
	jr	$ra
beq_else.8889:
	li	$v0, 0
	jr	$ra
solver_rect.2704:
	lw	$a26, 4($a26)
	li	$a2, 0
	li	$a3, 1
	li	$a4, 2
	fsw	$f0, 0($sp)
	fsw	$f2, 8($sp)
	fsw	$f1, 16($sp)
	sw	$a1, 24($sp)
	sw	$a0, 28($sp)
	sw	$a26, 32($sp)
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	solver_rect_surface.2695
	subi	$sp, $sp, 40
	lw	$ra, 36($sp)
	move	$a0, $v0
	li	$a1, 0
	bne	$a0, $a1, beq_else.8893
	li	$a2, 1
	li	$a3, 2
	li	$a4, 0
	flw	$f0, 16($sp)
	flw	$f1, 8($sp)
	flw	$f2, 0($sp)
	lw	$a0, 28($sp)
	lw	$a1, 24($sp)
	lw	$a26, 32($sp)
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	solver_rect_surface.2695
	subi	$sp, $sp, 40
	lw	$ra, 36($sp)
	move	$a0, $v0
	li	$a1, 0
	bne	$a0, $a1, beq_else.8894
	li	$a2, 2
	li	$a3, 0
	li	$a4, 1
	flw	$f0, 8($sp)
	flw	$f1, 0($sp)
	flw	$f2, 16($sp)
	lw	$a0, 28($sp)
	lw	$a1, 24($sp)
	lw	$a26, 32($sp)
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	solver_rect_surface.2695
	subi	$sp, $sp, 40
	lw	$ra, 36($sp)
	move	$a0, $v0
	li	$a1, 0
	bne	$a0, $a1, beq_else.8895
	li	$v0, 0
	jr	$ra
beq_else.8895:
	li	$v0, 3
	jr	$ra
beq_else.8894:
	li	$v0, 2
	jr	$ra
beq_else.8893:
	li	$v0, 1
	jr	$ra
solver_surface.2710:
	lw	$a2, 4($a26)
	sw	$a2, 0($sp)
	fsw	$f2, 8($sp)
	fsw	$f1, 16($sp)
	fsw	$f0, 24($sp)
	sw	$a1, 32($sp)
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	o_param_abc.2617
	subi	$sp, $sp, 40
	lw	$ra, 36($sp)
	move	$a1, $v0
	lw	$a0, 32($sp)
	sw	$a1, 36($sp)
	sw	$ra, 44($sp)
	addi	$sp, $sp, 48
	jal	veciprod.2576
	subi	$sp, $sp, 48
	lw	$ra, 44($sp)
	fmove	$f0, $fv
	fsw	$f0, 40($sp)
	sw	$ra, 52($sp)
	addi	$sp, $sp, 56
	jal	fispos.2516
	subi	$sp, $sp, 56
	lw	$ra, 52($sp)
	move	$a0, $v0
	li	$a1, 0
	bne	$a0, $a1, beq_else.8897
	li	$v0, 0
	jr	$ra
beq_else.8897:
	flw	$f0, 24($sp)
	flw	$f1, 16($sp)
	flw	$f2, 8($sp)
	lw	$a0, 36($sp)
	sw	$ra, 52($sp)
	addi	$sp, $sp, 56
	jal	veciprod2.2579
	subi	$sp, $sp, 56
	lw	$ra, 52($sp)
	fmove	$f0, $fv
	sw	$ra, 52($sp)
	addi	$sp, $sp, 56
	jal	fneg.2514
	subi	$sp, $sp, 56
	lw	$ra, 52($sp)
	fmove	$f0, $fv
	flw	$f1, 40($sp)
	finv	$f1, $f1
	fmul	$f0, $f0, $f1
	lw	$a0, 0($sp)
	fsw	$f0, 0($a0)
	li	$v0, 1
	jr	$ra
quadratic.2716:
	fsw	$f0, 0($sp)
	fsw	$f2, 8($sp)
	fsw	$f1, 16($sp)
	sw	$a0, 24($sp)
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	fsqr.2524
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	fmove	$f0, $fv
	lw	$a0, 24($sp)
	fsw	$f0, 32($sp)
	sw	$ra, 44($sp)
	addi	$sp, $sp, 48
	jal	o_param_a.2611
	subi	$sp, $sp, 48
	lw	$ra, 44($sp)
	fmove	$f0, $fv
	flw	$f1, 32($sp)
	fmul	$f0, $f1, $f0
	flw	$f1, 16($sp)
	fsw	$f0, 40($sp)
	fmove	$f0, $f1
	sw	$ra, 52($sp)
	addi	$sp, $sp, 56
	jal	fsqr.2524
	subi	$sp, $sp, 56
	lw	$ra, 52($sp)
	fmove	$f0, $fv
	lw	$a0, 24($sp)
	fsw	$f0, 48($sp)
	sw	$ra, 60($sp)
	addi	$sp, $sp, 64
	jal	o_param_b.2613
	subi	$sp, $sp, 64
	lw	$ra, 60($sp)
	fmove	$f0, $fv
	flw	$f1, 48($sp)
	fmul	$f0, $f1, $f0
	flw	$f1, 40($sp)
	fadd	$f0, $f1, $f0
	flw	$f1, 8($sp)
	fsw	$f0, 56($sp)
	fmove	$f0, $f1
	sw	$ra, 68($sp)
	addi	$sp, $sp, 72
	jal	fsqr.2524
	subi	$sp, $sp, 72
	lw	$ra, 68($sp)
	fmove	$f0, $fv
	lw	$a0, 24($sp)
	fsw	$f0, 64($sp)
	sw	$ra, 76($sp)
	addi	$sp, $sp, 80
	jal	o_param_c.2615
	subi	$sp, $sp, 80
	lw	$ra, 76($sp)
	fmove	$f0, $fv
	flw	$f1, 64($sp)
	fmul	$f0, $f1, $f0
	flw	$f1, 56($sp)
	fadd	$f0, $f1, $f0
	lw	$a0, 24($sp)
	fsw	$f0, 72($sp)
	sw	$ra, 84($sp)
	addi	$sp, $sp, 88
	jal	o_isrot.2609
	subi	$sp, $sp, 88
	lw	$ra, 84($sp)
	move	$a0, $v0
	li	$a1, 0
	bne	$a0, $a1, beq_else.8899
	flw	$f0, 72($sp)
	fmove	$fv, $f0
	jr $ra
beq_else.8899:
	flw	$f0, 8($sp)
	flw	$f1, 16($sp)
	fmul	$f2, $f1, $f0
	lw	$a0, 24($sp)
	fsw	$f2, 80($sp)
	sw	$ra, 92($sp)
	addi	$sp, $sp, 96
	jal	o_param_r1.2635
	subi	$sp, $sp, 96
	lw	$ra, 92($sp)
	fmove	$f0, $fv
	flw	$f1, 80($sp)
	fmul	$f0, $f1, $f0
	flw	$f1, 72($sp)
	fadd	$f0, $f1, $f0
	flw	$f1, 0($sp)
	flw	$f2, 8($sp)
	fmul	$f2, $f2, $f1
	lw	$a0, 24($sp)
	fsw	$f0, 88($sp)
	fsw	$f2, 96($sp)
	sw	$ra, 108($sp)
	addi	$sp, $sp, 112
	jal	o_param_r2.2637
	subi	$sp, $sp, 112
	lw	$ra, 108($sp)
	fmove	$f0, $fv
	flw	$f1, 96($sp)
	fmul	$f0, $f1, $f0
	flw	$f1, 88($sp)
	fadd	$f0, $f1, $f0
	flw	$f1, 16($sp)
	flw	$f2, 0($sp)
	fmul	$f1, $f2, $f1
	lw	$a0, 24($sp)
	fsw	$f0, 104($sp)
	fsw	$f1, 112($sp)
	sw	$ra, 124($sp)
	addi	$sp, $sp, 128
	jal	o_param_r3.2639
	subi	$sp, $sp, 128
	lw	$ra, 124($sp)
	fmove	$f0, $fv
	flw	$f1, 112($sp)
	fmul	$f0, $f1, $f0
	flw	$f1, 104($sp)
	fadd	$fv, $f1, $f0
	jr $ra
bilinear.2721:
	fmul	$f6, $f0, $f3
	fsw	$f3, 0($sp)
	fsw	$f0, 8($sp)
	fsw	$f5, 16($sp)
	fsw	$f2, 24($sp)
	sw	$a0, 32($sp)
	fsw	$f4, 40($sp)
	fsw	$f1, 48($sp)
	fsw	$f6, 56($sp)
	sw	$ra, 68($sp)
	addi	$sp, $sp, 72
	jal	o_param_a.2611
	subi	$sp, $sp, 72
	lw	$ra, 68($sp)
	fmove	$f0, $fv
	flw	$f1, 56($sp)
	fmul	$f0, $f1, $f0
	flw	$f1, 40($sp)
	flw	$f2, 48($sp)
	fmul	$f3, $f2, $f1
	lw	$a0, 32($sp)
	fsw	$f0, 64($sp)
	fsw	$f3, 72($sp)
	sw	$ra, 84($sp)
	addi	$sp, $sp, 88
	jal	o_param_b.2613
	subi	$sp, $sp, 88
	lw	$ra, 84($sp)
	fmove	$f0, $fv
	flw	$f1, 72($sp)
	fmul	$f0, $f1, $f0
	flw	$f1, 64($sp)
	fadd	$f0, $f1, $f0
	flw	$f1, 16($sp)
	flw	$f2, 24($sp)
	fmul	$f3, $f2, $f1
	lw	$a0, 32($sp)
	fsw	$f0, 80($sp)
	fsw	$f3, 88($sp)
	sw	$ra, 100($sp)
	addi	$sp, $sp, 104
	jal	o_param_c.2615
	subi	$sp, $sp, 104
	lw	$ra, 100($sp)
	fmove	$f0, $fv
	flw	$f1, 88($sp)
	fmul	$f0, $f1, $f0
	flw	$f1, 80($sp)
	fadd	$f0, $f1, $f0
	lw	$a0, 32($sp)
	fsw	$f0, 96($sp)
	sw	$ra, 108($sp)
	addi	$sp, $sp, 112
	jal	o_isrot.2609
	subi	$sp, $sp, 112
	lw	$ra, 108($sp)
	move	$a0, $v0
	li	$a1, 0
	bne	$a0, $a1, beq_else.8901
	flw	$f0, 96($sp)
	fmove	$fv, $f0
	jr $ra
beq_else.8901:
	flw	$f0, 40($sp)
	flw	$f1, 24($sp)
	fmul	$f2, $f1, $f0
	flw	$f3, 16($sp)
	flw	$f4, 48($sp)
	fmul	$f5, $f4, $f3
	fadd	$f2, $f2, $f5
	lw	$a0, 32($sp)
	fsw	$f2, 104($sp)
	sw	$ra, 116($sp)
	addi	$sp, $sp, 120
	jal	o_param_r1.2635
	subi	$sp, $sp, 120
	lw	$ra, 116($sp)
	fmove	$f0, $fv
	flw	$f1, 104($sp)
	fmul	$f0, $f1, $f0
	flw	$f1, 16($sp)
	flw	$f2, 8($sp)
	fmul	$f1, $f2, $f1
	flw	$f3, 0($sp)
	flw	$f4, 24($sp)
	fmul	$f4, $f4, $f3
	fadd	$f1, $f1, $f4
	lw	$a0, 32($sp)
	fsw	$f0, 112($sp)
	fsw	$f1, 120($sp)
	sw	$ra, 132($sp)
	addi	$sp, $sp, 136
	jal	o_param_r2.2637
	subi	$sp, $sp, 136
	lw	$ra, 132($sp)
	fmove	$f0, $fv
	flw	$f1, 120($sp)
	fmul	$f0, $f1, $f0
	flw	$f1, 112($sp)
	fadd	$f0, $f1, $f0
	flw	$f1, 40($sp)
	flw	$f2, 8($sp)
	fmul	$f1, $f2, $f1
	flw	$f2, 0($sp)
	flw	$f3, 48($sp)
	fmul	$f2, $f3, $f2
	fadd	$f1, $f1, $f2
	lw	$a0, 32($sp)
	fsw	$f0, 128($sp)
	fsw	$f1, 136($sp)
	sw	$ra, 148($sp)
	addi	$sp, $sp, 152
	jal	o_param_r3.2639
	subi	$sp, $sp, 152
	lw	$ra, 148($sp)
	fmove	$f0, $fv
	flw	$f1, 136($sp)
	fmul	$f0, $f1, $f0
	flw	$f1, 128($sp)
	fadd	$f0, $f1, $f0
	sw	$ra, 148($sp)
	addi	$sp, $sp, 152
	jal	fhalf.2522
	subi	$sp, $sp, 152
	lw	$ra, 148($sp)
	fmove	$f0, $fv
	flw	$f1, 96($sp)
	fadd	$fv, $f1, $f0
	jr $ra
solver_second.2729:
	lw	$a2, 4($a26)
	flw	$f3, 0($a1)
	flw	$f4, 4($a1)
	flw	$f5, 8($a1)
	sw	$a2, 0($sp)
	fsw	$f2, 8($sp)
	fsw	$f1, 16($sp)
	fsw	$f0, 24($sp)
	sw	$a0, 32($sp)
	sw	$a1, 36($sp)
	fmove	$f2, $f5
	fmove	$f1, $f4
	fmove	$f0, $f3
	sw	$ra, 44($sp)
	addi	$sp, $sp, 48
	jal	quadratic.2716
	subi	$sp, $sp, 48
	lw	$ra, 44($sp)
	fmove	$f0, $fv
	fsw	$f0, 40($sp)
	sw	$ra, 52($sp)
	addi	$sp, $sp, 56
	jal	fiszero.2520
	subi	$sp, $sp, 56
	lw	$ra, 52($sp)
	move	$a0, $v0
	li	$a1, 0
	bne	$a0, $a1, beq_else.8903
	lw	$a0, 36($sp)
	flw	$f0, 0($a0)
	flw	$f1, 4($a0)
	flw	$f2, 8($a0)
	flw	$f3, 24($sp)
	flw	$f4, 16($sp)
	flw	$f5, 8($sp)
	lw	$a0, 32($sp)
	sw	$ra, 52($sp)
	addi	$sp, $sp, 56
	jal	bilinear.2721
	subi	$sp, $sp, 56
	lw	$ra, 52($sp)
	fmove	$f0, $fv
	flw	$f1, 24($sp)
	flw	$f2, 16($sp)
	flw	$f3, 8($sp)
	lw	$a0, 32($sp)
	fsw	$f0, 48($sp)
	fmove	$f0, $f1
	fmove	$f1, $f2
	fmove	$f2, $f3
	sw	$ra, 60($sp)
	addi	$sp, $sp, 64
	jal	quadratic.2716
	subi	$sp, $sp, 64
	lw	$ra, 60($sp)
	fmove	$f0, $fv
	lw	$a0, 32($sp)
	fsw	$f0, 56($sp)
	sw	$ra, 68($sp)
	addi	$sp, $sp, 72
	jal	o_form.2603
	subi	$sp, $sp, 72
	lw	$ra, 68($sp)
	move	$a0, $v0
	li	$a1, 3
	bne	$a0, $a1, bne_else.8904
	sw	$ra, 68($sp)
	addi	$sp, $sp, 72
	jal	l.6152
	subi	$sp, $sp, 72
	lw	$ra, 68($sp)
	mtc1	$f0, $a25
	flw	$f1, 56($sp)
	fsub	$f0, $f1, $f0
	j	bne_cont.8905
bne_else.8904:
	flw	$f0, 56($sp)
bne_cont.8905:
	flw	$f1, 48($sp)
	fsw	$f0, 64($sp)
	fmove	$f0, $f1
	sw	$ra, 76($sp)
	addi	$sp, $sp, 80
	jal	fsqr.2524
	subi	$sp, $sp, 80
	lw	$ra, 76($sp)
	fmove	$f0, $fv
	flw	$f1, 64($sp)
	flw	$f2, 40($sp)
	fmul	$f1, $f2, $f1
	fsub	$f0, $f0, $f1
	fsw	$f0, 72($sp)
	sw	$ra, 84($sp)
	addi	$sp, $sp, 88
	jal	fispos.2516
	subi	$sp, $sp, 88
	lw	$ra, 84($sp)
	move	$a0, $v0
	li	$a1, 0
	bne	$a0, $a1, beq_else.8906
	li	$v0, 0
	jr	$ra
beq_else.8906:
	flw	$f0, 72($sp)
	sw	$ra, 84($sp)
	addi	$sp, $sp, 88
	jal	min_caml_sqrt
	subi	$sp, $sp, 88
	lw	$ra, 84($sp)
	fmove	$f0, $fv
	lw	$a0, 32($sp)
	fsw	$f0, 80($sp)
	sw	$ra, 92($sp)
	addi	$sp, $sp, 96
	jal	o_isinvert.2607
	subi	$sp, $sp, 96
	lw	$ra, 92($sp)
	move	$a0, $v0
	li	$a1, 0
	bne	$a0, $a1, bne_else.8907
	flw	$f0, 80($sp)
	sw	$ra, 92($sp)
	addi	$sp, $sp, 96
	jal	fneg.2514
	subi	$sp, $sp, 96
	lw	$ra, 92($sp)
	fmove	$f0, $fv
	j	bne_cont.8908
bne_else.8907:
	flw	$f0, 80($sp)
bne_cont.8908:
	flw	$f1, 48($sp)
	fsub	$f0, $f0, $f1
	flw	$f1, 40($sp)
	finv	$f1, $f1
	fmul	$f0, $f0, $f1
	lw	$a0, 0($sp)
	fsw	$f0, 0($a0)
	li	$v0, 1
	jr	$ra
beq_else.8903:
	li	$v0, 0
	jr	$ra
solver.2735:
	lw	$a3, 16($a26)
	lw	$a4, 12($a26)
	lw	$a5, 8($a26)
	lw	$a6, 4($a26)
	sll	$a0, $a0, 2
	add	$a0, $a6, $a0
	lw	$a0, 0($a0)
	flw	$f0, 0($a2)
	sw	$a4, 0($sp)
	sw	$a3, 4($sp)
	sw	$a1, 8($sp)
	sw	$a5, 12($sp)
	sw	$a0, 16($sp)
	sw	$a2, 20($sp)
	fsw	$f0, 24($sp)
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	o_param_x.2619
	subi	$sp, $sp, 40
	lw	$ra, 36($sp)
	fmove	$f0, $fv
	flw	$f1, 24($sp)
	fsub	$f0, $f1, $f0
	lw	$a0, 20($sp)
	flw	$f1, 4($a0)
	lw	$a1, 16($sp)
	fsw	$f0, 32($sp)
	fsw	$f1, 40($sp)
	move	$a0, $a1
	sw	$ra, 52($sp)
	addi	$sp, $sp, 56
	jal	o_param_y.2621
	subi	$sp, $sp, 56
	lw	$ra, 52($sp)
	fmove	$f0, $fv
	flw	$f1, 40($sp)
	fsub	$f0, $f1, $f0
	lw	$a0, 20($sp)
	flw	$f1, 8($a0)
	lw	$a0, 16($sp)
	fsw	$f0, 48($sp)
	fsw	$f1, 56($sp)
	sw	$ra, 68($sp)
	addi	$sp, $sp, 72
	jal	o_param_z.2623
	subi	$sp, $sp, 72
	lw	$ra, 68($sp)
	fmove	$f0, $fv
	flw	$f1, 56($sp)
	fsub	$f0, $f1, $f0
	lw	$a0, 16($sp)
	fsw	$f0, 64($sp)
	sw	$ra, 76($sp)
	addi	$sp, $sp, 80
	jal	o_form.2603
	subi	$sp, $sp, 80
	lw	$ra, 76($sp)
	move	$a0, $v0
	li	$a1, 1
	bne	$a0, $a1, beq_else.8909
	flw	$f0, 32($sp)
	flw	$f1, 48($sp)
	flw	$f2, 64($sp)
	lw	$a0, 16($sp)
	lw	$a1, 8($sp)
	lw	$a26, 12($sp)
	lw	$a25, 0($a26)
	j	solver_rect.2704
beq_else.8909:
	li	$a1, 2
	bne	$a0, $a1, beq_else.8910
	flw	$f0, 32($sp)
	flw	$f1, 48($sp)
	flw	$f2, 64($sp)
	lw	$a0, 16($sp)
	lw	$a1, 8($sp)
	lw	$a26, 4($sp)
	lw	$a25, 0($a26)
	j	solver_surface.2710
beq_else.8910:
	flw	$f0, 32($sp)
	flw	$f1, 48($sp)
	flw	$f2, 64($sp)
	lw	$a0, 16($sp)
	lw	$a1, 8($sp)
	lw	$a26, 0($sp)
	lw	$a25, 0($a26)
	j	solver_second.2729
solver_rect_fast.2739:
	lw	$a3, 4($a26)
	flw	$f3, 0($a2)
	fsub	$f3, $f3, $f0
	flw	$f4, 4($a2)
	fmul	$f3, $f3, $f4
	flw	$f4, 4($a1)
	fmul	$f4, $f3, $f4
	fadd	$f4, $f4, $f1
	sw	$a3, 0($sp)
	fsw	$f0, 8($sp)
	fsw	$f1, 16($sp)
	sw	$a2, 24($sp)
	fsw	$f2, 32($sp)
	fsw	$f3, 40($sp)
	sw	$a1, 48($sp)
	sw	$a0, 52($sp)
	fmove	$f0, $f4
	sw	$ra, 60($sp)
	addi	$sp, $sp, 64
	jal	fabs.2526
	subi	$sp, $sp, 64
	lw	$ra, 60($sp)
	fmove	$f0, $fv
	lw	$a0, 52($sp)
	fsw	$f0, 56($sp)
	sw	$ra, 68($sp)
	addi	$sp, $sp, 72
	jal	o_param_b.2613
	subi	$sp, $sp, 72
	lw	$ra, 68($sp)
	fmove	$f1, $fv
	flw	$f0, 56($sp)
	sw	$ra, 68($sp)
	addi	$sp, $sp, 72
	jal	fless.2528
	subi	$sp, $sp, 72
	lw	$ra, 68($sp)
	move	$a0, $v0
	li	$a1, 0
	bne	$a0, $a1, bne_else.8913
	li	$a0, 0
	j	bne_cont.8914
bne_else.8913:
	lw	$a0, 48($sp)
	flw	$f0, 8($a0)
	flw	$f1, 40($sp)
	fmul	$f0, $f1, $f0
	flw	$f2, 32($sp)
	fadd	$f0, $f0, $f2
	sw	$ra, 68($sp)
	addi	$sp, $sp, 72
	jal	fabs.2526
	subi	$sp, $sp, 72
	lw	$ra, 68($sp)
	fmove	$f0, $fv
	lw	$a0, 52($sp)
	fsw	$f0, 64($sp)
	sw	$ra, 76($sp)
	addi	$sp, $sp, 80
	jal	o_param_c.2615
	subi	$sp, $sp, 80
	lw	$ra, 76($sp)
	fmove	$f1, $fv
	flw	$f0, 64($sp)
	sw	$ra, 76($sp)
	addi	$sp, $sp, 80
	jal	fless.2528
	subi	$sp, $sp, 80
	lw	$ra, 76($sp)
	move	$a0, $v0
	li	$a1, 0
	bne	$a0, $a1, bne_else.8915
	li	$a0, 0
	j	bne_cont.8916
bne_else.8915:
	lw	$a0, 24($sp)
	flw	$f0, 4($a0)
	sw	$ra, 76($sp)
	addi	$sp, $sp, 80
	jal	fiszero.2520
	subi	$sp, $sp, 80
	lw	$ra, 76($sp)
	move	$a0, $v0
	li	$a1, 0
	bne	$a0, $a1, bne_else.8917
	li	$a0, 1
	j	bne_cont.8918
bne_else.8917:
	li	$a0, 0
bne_cont.8918:
bne_cont.8916:
bne_cont.8914:
	li	$a1, 0
	bne	$a0, $a1, beq_else.8919
	lw	$a0, 24($sp)
	flw	$f0, 8($a0)
	flw	$f1, 16($sp)
	fsub	$f0, $f0, $f1
	flw	$f2, 12($a0)
	fmul	$f0, $f0, $f2
	lw	$a1, 48($sp)
	flw	$f2, 0($a1)
	fmul	$f2, $f0, $f2
	flw	$f3, 8($sp)
	fadd	$f2, $f2, $f3
	fsw	$f0, 72($sp)
	fmove	$f0, $f2
	sw	$ra, 84($sp)
	addi	$sp, $sp, 88
	jal	fabs.2526
	subi	$sp, $sp, 88
	lw	$ra, 84($sp)
	fmove	$f0, $fv
	lw	$a0, 52($sp)
	fsw	$f0, 80($sp)
	sw	$ra, 92($sp)
	addi	$sp, $sp, 96
	jal	o_param_a.2611
	subi	$sp, $sp, 96
	lw	$ra, 92($sp)
	fmove	$f1, $fv
	flw	$f0, 80($sp)
	sw	$ra, 92($sp)
	addi	$sp, $sp, 96
	jal	fless.2528
	subi	$sp, $sp, 96
	lw	$ra, 92($sp)
	move	$a0, $v0
	li	$a1, 0
	bne	$a0, $a1, bne_else.8920
	li	$a0, 0
	j	bne_cont.8921
bne_else.8920:
	lw	$a0, 48($sp)
	flw	$f0, 8($a0)
	flw	$f1, 72($sp)
	fmul	$f0, $f1, $f0
	flw	$f2, 32($sp)
	fadd	$f0, $f0, $f2
	sw	$ra, 92($sp)
	addi	$sp, $sp, 96
	jal	fabs.2526
	subi	$sp, $sp, 96
	lw	$ra, 92($sp)
	fmove	$f0, $fv
	lw	$a0, 52($sp)
	fsw	$f0, 88($sp)
	sw	$ra, 100($sp)
	addi	$sp, $sp, 104
	jal	o_param_c.2615
	subi	$sp, $sp, 104
	lw	$ra, 100($sp)
	fmove	$f1, $fv
	flw	$f0, 88($sp)
	sw	$ra, 100($sp)
	addi	$sp, $sp, 104
	jal	fless.2528
	subi	$sp, $sp, 104
	lw	$ra, 100($sp)
	move	$a0, $v0
	li	$a1, 0
	bne	$a0, $a1, bne_else.8922
	li	$a0, 0
	j	bne_cont.8923
bne_else.8922:
	lw	$a0, 24($sp)
	flw	$f0, 12($a0)
	sw	$ra, 100($sp)
	addi	$sp, $sp, 104
	jal	fiszero.2520
	subi	$sp, $sp, 104
	lw	$ra, 100($sp)
	move	$a0, $v0
	li	$a1, 0
	bne	$a0, $a1, bne_else.8924
	li	$a0, 1
	j	bne_cont.8925
bne_else.8924:
	li	$a0, 0
bne_cont.8925:
bne_cont.8923:
bne_cont.8921:
	li	$a1, 0
	bne	$a0, $a1, beq_else.8926
	lw	$a0, 24($sp)
	flw	$f0, 16($a0)
	flw	$f1, 32($sp)
	fsub	$f0, $f0, $f1
	flw	$f1, 20($a0)
	fmul	$f0, $f0, $f1
	lw	$a1, 48($sp)
	flw	$f1, 0($a1)
	fmul	$f1, $f0, $f1
	flw	$f2, 8($sp)
	fadd	$f1, $f1, $f2
	fsw	$f0, 96($sp)
	fmove	$f0, $f1
	sw	$ra, 108($sp)
	addi	$sp, $sp, 112
	jal	fabs.2526
	subi	$sp, $sp, 112
	lw	$ra, 108($sp)
	fmove	$f0, $fv
	lw	$a0, 52($sp)
	fsw	$f0, 104($sp)
	sw	$ra, 116($sp)
	addi	$sp, $sp, 120
	jal	o_param_a.2611
	subi	$sp, $sp, 120
	lw	$ra, 116($sp)
	fmove	$f1, $fv
	flw	$f0, 104($sp)
	sw	$ra, 116($sp)
	addi	$sp, $sp, 120
	jal	fless.2528
	subi	$sp, $sp, 120
	lw	$ra, 116($sp)
	move	$a0, $v0
	li	$a1, 0
	bne	$a0, $a1, bne_else.8927
	li	$a0, 0
	j	bne_cont.8928
bne_else.8927:
	lw	$a0, 48($sp)
	flw	$f0, 4($a0)
	flw	$f1, 96($sp)
	fmul	$f0, $f1, $f0
	flw	$f2, 16($sp)
	fadd	$f0, $f0, $f2
	sw	$ra, 116($sp)
	addi	$sp, $sp, 120
	jal	fabs.2526
	subi	$sp, $sp, 120
	lw	$ra, 116($sp)
	fmove	$f0, $fv
	lw	$a0, 52($sp)
	fsw	$f0, 112($sp)
	sw	$ra, 124($sp)
	addi	$sp, $sp, 128
	jal	o_param_b.2613
	subi	$sp, $sp, 128
	lw	$ra, 124($sp)
	fmove	$f1, $fv
	flw	$f0, 112($sp)
	sw	$ra, 124($sp)
	addi	$sp, $sp, 128
	jal	fless.2528
	subi	$sp, $sp, 128
	lw	$ra, 124($sp)
	move	$a0, $v0
	li	$a1, 0
	bne	$a0, $a1, bne_else.8929
	li	$a0, 0
	j	bne_cont.8930
bne_else.8929:
	lw	$a0, 24($sp)
	flw	$f0, 20($a0)
	sw	$ra, 124($sp)
	addi	$sp, $sp, 128
	jal	fiszero.2520
	subi	$sp, $sp, 128
	lw	$ra, 124($sp)
	move	$a0, $v0
	li	$a1, 0
	bne	$a0, $a1, bne_else.8931
	li	$a0, 1
	j	bne_cont.8932
bne_else.8931:
	li	$a0, 0
bne_cont.8932:
bne_cont.8930:
bne_cont.8928:
	li	$a1, 0
	bne	$a0, $a1, beq_else.8933
	li	$v0, 0
	jr	$ra
beq_else.8933:
	lw	$a0, 0($sp)
	flw	$f0, 96($sp)
	fsw	$f0, 0($a0)
	li	$v0, 3
	jr	$ra
beq_else.8926:
	lw	$a0, 0($sp)
	flw	$f0, 72($sp)
	fsw	$f0, 0($a0)
	li	$v0, 2
	jr	$ra
beq_else.8919:
	lw	$a0, 0($sp)
	flw	$f0, 40($sp)
	fsw	$f0, 0($a0)
	li	$v0, 1
	jr	$ra
solver_surface_fast.2746:
	lw	$a0, 4($a26)
	flw	$f3, 0($a1)
	sw	$a0, 0($sp)
	fsw	$f2, 8($sp)
	fsw	$f1, 16($sp)
	fsw	$f0, 24($sp)
	sw	$a1, 32($sp)
	fmove	$f0, $f3
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	fisneg.2518
	subi	$sp, $sp, 40
	lw	$ra, 36($sp)
	move	$a0, $v0
	li	$a1, 0
	bne	$a0, $a1, beq_else.8935
	li	$v0, 0
	jr	$ra
beq_else.8935:
	lw	$a0, 32($sp)
	flw	$f0, 4($a0)
	flw	$f1, 24($sp)
	fmul	$f0, $f0, $f1
	flw	$f1, 8($a0)
	flw	$f2, 16($sp)
	fmul	$f1, $f1, $f2
	fadd	$f0, $f0, $f1
	flw	$f1, 12($a0)
	flw	$f2, 8($sp)
	fmul	$f1, $f1, $f2
	fadd	$f0, $f0, $f1
	lw	$a0, 0($sp)
	fsw	$f0, 0($a0)
	li	$v0, 1
	jr	$ra
solver_second_fast.2752:
	lw	$a2, 4($a26)
	flw	$f3, 0($a1)
	sw	$a2, 0($sp)
	fsw	$f3, 8($sp)
	sw	$a0, 16($sp)
	fsw	$f2, 24($sp)
	fsw	$f1, 32($sp)
	fsw	$f0, 40($sp)
	sw	$a1, 48($sp)
	fmove	$f0, $f3
	sw	$ra, 52($sp)
	addi	$sp, $sp, 56
	jal	fiszero.2520
	subi	$sp, $sp, 56
	lw	$ra, 52($sp)
	move	$a0, $v0
	li	$a1, 0
	bne	$a0, $a1, beq_else.8938
	lw	$a0, 48($sp)
	flw	$f0, 4($a0)
	flw	$f1, 40($sp)
	fmul	$f0, $f0, $f1
	flw	$f2, 8($a0)
	flw	$f3, 32($sp)
	fmul	$f2, $f2, $f3
	fadd	$f0, $f0, $f2
	flw	$f2, 12($a0)
	flw	$f4, 24($sp)
	fmul	$f2, $f2, $f4
	fadd	$f0, $f0, $f2
	lw	$a1, 16($sp)
	fsw	$f0, 56($sp)
	move	$a0, $a1
	fmove	$f2, $f4
	fmove	$f0, $f1
	fmove	$f1, $f3
	sw	$ra, 68($sp)
	addi	$sp, $sp, 72
	jal	quadratic.2716
	subi	$sp, $sp, 72
	lw	$ra, 68($sp)
	fmove	$f0, $fv
	lw	$a0, 16($sp)
	fsw	$f0, 64($sp)
	sw	$ra, 76($sp)
	addi	$sp, $sp, 80
	jal	o_form.2603
	subi	$sp, $sp, 80
	lw	$ra, 76($sp)
	move	$a0, $v0
	li	$a1, 3
	bne	$a0, $a1, bne_else.8940
	sw	$ra, 76($sp)
	addi	$sp, $sp, 80
	jal	l.6152
	subi	$sp, $sp, 80
	lw	$ra, 76($sp)
	mtc1	$f0, $a25
	flw	$f1, 64($sp)
	fsub	$f0, $f1, $f0
	j	bne_cont.8941
bne_else.8940:
	flw	$f0, 64($sp)
bne_cont.8941:
	flw	$f1, 56($sp)
	fsw	$f0, 72($sp)
	fmove	$f0, $f1
	sw	$ra, 84($sp)
	addi	$sp, $sp, 88
	jal	fsqr.2524
	subi	$sp, $sp, 88
	lw	$ra, 84($sp)
	fmove	$f0, $fv
	flw	$f1, 72($sp)
	flw	$f2, 8($sp)
	fmul	$f1, $f2, $f1
	fsub	$f0, $f0, $f1
	fsw	$f0, 80($sp)
	sw	$ra, 92($sp)
	addi	$sp, $sp, 96
	jal	fispos.2516
	subi	$sp, $sp, 96
	lw	$ra, 92($sp)
	move	$a0, $v0
	li	$a1, 0
	bne	$a0, $a1, beq_else.8942
	li	$v0, 0
	jr	$ra
beq_else.8942:
	lw	$a0, 16($sp)
	sw	$ra, 92($sp)
	addi	$sp, $sp, 96
	jal	o_isinvert.2607
	subi	$sp, $sp, 96
	lw	$ra, 92($sp)
	move	$a0, $v0
	li	$a1, 0
	bne	$a0, $a1, bne_else.8943
	flw	$f0, 80($sp)
	sw	$ra, 92($sp)
	addi	$sp, $sp, 96
	jal	min_caml_sqrt
	subi	$sp, $sp, 96
	lw	$ra, 92($sp)
	fmove	$f0, $fv
	flw	$f1, 56($sp)
	fsub	$f0, $f1, $f0
	lw	$a0, 48($sp)
	flw	$f1, 16($a0)
	fmul	$f0, $f0, $f1
	lw	$a0, 0($sp)
	fsw	$f0, 0($a0)
	j	bne_cont.8944
bne_else.8943:
	flw	$f0, 80($sp)
	sw	$ra, 92($sp)
	addi	$sp, $sp, 96
	jal	min_caml_sqrt
	subi	$sp, $sp, 96
	lw	$ra, 92($sp)
	fmove	$f0, $fv
	flw	$f1, 56($sp)
	fadd	$f0, $f1, $f0
	lw	$a0, 48($sp)
	flw	$f1, 16($a0)
	fmul	$f0, $f0, $f1
	lw	$a0, 0($sp)
	fsw	$f0, 0($a0)
bne_cont.8944:
	li	$v0, 1
	jr	$ra
beq_else.8938:
	li	$v0, 0
	jr	$ra
solver_fast.2758:
	lw	$a3, 16($a26)
	lw	$a4, 12($a26)
	lw	$a5, 8($a26)
	lw	$a6, 4($a26)
	sll	$a7, $a0, 2
	add	$a7, $a6, $a7
	lw	$a6, 0($a7)
	flw	$f0, 0($a2)
	sw	$a4, 0($sp)
	sw	$a3, 4($sp)
	sw	$a5, 8($sp)
	sw	$a0, 12($sp)
	sw	$a1, 16($sp)
	sw	$a6, 20($sp)
	sw	$a2, 24($sp)
	fsw	$f0, 32($sp)
	move	$a0, $a6
	sw	$ra, 44($sp)
	addi	$sp, $sp, 48
	jal	o_param_x.2619
	subi	$sp, $sp, 48
	lw	$ra, 44($sp)
	fmove	$f0, $fv
	flw	$f1, 32($sp)
	fsub	$f0, $f1, $f0
	lw	$a0, 24($sp)
	flw	$f1, 4($a0)
	lw	$a1, 20($sp)
	fsw	$f0, 40($sp)
	fsw	$f1, 48($sp)
	move	$a0, $a1
	sw	$ra, 60($sp)
	addi	$sp, $sp, 64
	jal	o_param_y.2621
	subi	$sp, $sp, 64
	lw	$ra, 60($sp)
	fmove	$f0, $fv
	flw	$f1, 48($sp)
	fsub	$f0, $f1, $f0
	lw	$a0, 24($sp)
	flw	$f1, 8($a0)
	lw	$a0, 20($sp)
	fsw	$f0, 56($sp)
	fsw	$f1, 64($sp)
	sw	$ra, 76($sp)
	addi	$sp, $sp, 80
	jal	o_param_z.2623
	subi	$sp, $sp, 80
	lw	$ra, 76($sp)
	fmove	$f0, $fv
	flw	$f1, 64($sp)
	fsub	$f0, $f1, $f0
	lw	$a0, 16($sp)
	fsw	$f0, 72($sp)
	sw	$ra, 84($sp)
	addi	$sp, $sp, 88
	jal	d_const.2664
	subi	$sp, $sp, 88
	lw	$ra, 84($sp)
	move	$a0, $v0
	lw	$a1, 12($sp)
	sll	$a1, $a1, 2
	add	$a1, $a0, $a1
	lw	$a0, 0($a1)
	lw	$a1, 20($sp)
	sw	$a0, 80($sp)
	move	$a0, $a1
	sw	$ra, 84($sp)
	addi	$sp, $sp, 88
	jal	o_form.2603
	subi	$sp, $sp, 88
	lw	$ra, 84($sp)
	move	$a0, $v0
	li	$a1, 1
	bne	$a0, $a1, beq_else.8946
	lw	$a0, 16($sp)
	sw	$ra, 84($sp)
	addi	$sp, $sp, 88
	jal	d_vec.2662
	subi	$sp, $sp, 88
	lw	$ra, 84($sp)
	move	$a1, $v0
	flw	$f0, 40($sp)
	flw	$f1, 56($sp)
	flw	$f2, 72($sp)
	lw	$a0, 20($sp)
	lw	$a2, 80($sp)
	lw	$a26, 8($sp)
	lw	$a25, 0($a26)
	j	solver_rect_fast.2739
beq_else.8946:
	li	$a1, 2
	bne	$a0, $a1, beq_else.8947
	flw	$f0, 40($sp)
	flw	$f1, 56($sp)
	flw	$f2, 72($sp)
	lw	$a0, 20($sp)
	lw	$a1, 80($sp)
	lw	$a26, 4($sp)
	lw	$a25, 0($a26)
	j	solver_surface_fast.2746
beq_else.8947:
	flw	$f0, 40($sp)
	flw	$f1, 56($sp)
	flw	$f2, 72($sp)
	lw	$a0, 20($sp)
	lw	$a1, 80($sp)
	lw	$a26, 0($sp)
	lw	$a25, 0($a26)
	j	solver_second_fast.2752
solver_surface_fast2.2762:
	lw	$a0, 4($a26)
	flw	$f0, 0($a1)
	sw	$a0, 0($sp)
	sw	$a2, 4($sp)
	sw	$a1, 8($sp)
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	fisneg.2518
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	move	$a0, $v0
	li	$a1, 0
	bne	$a0, $a1, beq_else.8948
	li	$v0, 0
	jr	$ra
beq_else.8948:
	lw	$a0, 8($sp)
	flw	$f0, 0($a0)
	lw	$a0, 4($sp)
	flw	$f1, 12($a0)
	fmul	$f0, $f0, $f1
	lw	$a0, 0($sp)
	fsw	$f0, 0($a0)
	li	$v0, 1
	jr	$ra
solver_second_fast2.2769:
	lw	$a3, 4($a26)
	flw	$f3, 0($a1)
	sw	$a3, 0($sp)
	sw	$a0, 4($sp)
	fsw	$f3, 8($sp)
	sw	$a2, 16($sp)
	fsw	$f2, 24($sp)
	fsw	$f1, 32($sp)
	fsw	$f0, 40($sp)
	sw	$a1, 48($sp)
	fmove	$f0, $f3
	sw	$ra, 52($sp)
	addi	$sp, $sp, 56
	jal	fiszero.2520
	subi	$sp, $sp, 56
	lw	$ra, 52($sp)
	move	$a0, $v0
	li	$a1, 0
	bne	$a0, $a1, beq_else.8950
	lw	$a0, 48($sp)
	flw	$f0, 4($a0)
	flw	$f1, 40($sp)
	fmul	$f0, $f0, $f1
	flw	$f1, 8($a0)
	flw	$f2, 32($sp)
	fmul	$f1, $f1, $f2
	fadd	$f0, $f0, $f1
	flw	$f1, 12($a0)
	flw	$f2, 24($sp)
	fmul	$f1, $f1, $f2
	fadd	$f0, $f0, $f1
	lw	$a1, 16($sp)
	flw	$f1, 12($a1)
	fsw	$f0, 56($sp)
	fsw	$f1, 64($sp)
	sw	$ra, 76($sp)
	addi	$sp, $sp, 80
	jal	fsqr.2524
	subi	$sp, $sp, 80
	lw	$ra, 76($sp)
	fmove	$f0, $fv
	flw	$f1, 64($sp)
	flw	$f2, 8($sp)
	fmul	$f1, $f2, $f1
	fsub	$f0, $f0, $f1
	fsw	$f0, 72($sp)
	sw	$ra, 84($sp)
	addi	$sp, $sp, 88
	jal	fispos.2516
	subi	$sp, $sp, 88
	lw	$ra, 84($sp)
	move	$a0, $v0
	li	$a1, 0
	bne	$a0, $a1, beq_else.8952
	li	$v0, 0
	jr	$ra
beq_else.8952:
	lw	$a0, 4($sp)
	sw	$ra, 84($sp)
	addi	$sp, $sp, 88
	jal	o_isinvert.2607
	subi	$sp, $sp, 88
	lw	$ra, 84($sp)
	move	$a0, $v0
	li	$a1, 0
	bne	$a0, $a1, bne_else.8953
	flw	$f0, 72($sp)
	sw	$ra, 84($sp)
	addi	$sp, $sp, 88
	jal	min_caml_sqrt
	subi	$sp, $sp, 88
	lw	$ra, 84($sp)
	fmove	$f0, $fv
	flw	$f1, 56($sp)
	fsub	$f0, $f1, $f0
	lw	$a0, 48($sp)
	flw	$f1, 16($a0)
	fmul	$f0, $f0, $f1
	lw	$a0, 0($sp)
	fsw	$f0, 0($a0)
	j	bne_cont.8954
bne_else.8953:
	flw	$f0, 72($sp)
	sw	$ra, 84($sp)
	addi	$sp, $sp, 88
	jal	min_caml_sqrt
	subi	$sp, $sp, 88
	lw	$ra, 84($sp)
	fmove	$f0, $fv
	flw	$f1, 56($sp)
	fadd	$f0, $f1, $f0
	lw	$a0, 48($sp)
	flw	$f1, 16($a0)
	fmul	$f0, $f0, $f1
	lw	$a0, 0($sp)
	fsw	$f0, 0($a0)
bne_cont.8954:
	li	$v0, 1
	jr	$ra
beq_else.8950:
	li	$v0, 0
	jr	$ra
solver_fast2.2776:
	lw	$a2, 16($a26)
	lw	$a3, 12($a26)
	lw	$a4, 8($a26)
	lw	$a5, 4($a26)
	sll	$a6, $a0, 2
	add	$a6, $a5, $a6
	lw	$a5, 0($a6)
	sw	$a3, 0($sp)
	sw	$a2, 4($sp)
	sw	$a4, 8($sp)
	sw	$a5, 12($sp)
	sw	$a0, 16($sp)
	sw	$a1, 20($sp)
	move	$a0, $a5
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	o_param_ctbl.2641
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	move	$a0, $v0
	flw	$f0, 0($a0)
	flw	$f1, 4($a0)
	flw	$f2, 8($a0)
	lw	$a1, 20($sp)
	sw	$a0, 24($sp)
	fsw	$f2, 32($sp)
	fsw	$f1, 40($sp)
	fsw	$f0, 48($sp)
	move	$a0, $a1
	sw	$ra, 60($sp)
	addi	$sp, $sp, 64
	jal	d_const.2664
	subi	$sp, $sp, 64
	lw	$ra, 60($sp)
	move	$a0, $v0
	lw	$a1, 16($sp)
	sll	$a1, $a1, 2
	add	$a1, $a0, $a1
	lw	$a0, 0($a1)
	lw	$a1, 12($sp)
	sw	$a0, 56($sp)
	move	$a0, $a1
	sw	$ra, 60($sp)
	addi	$sp, $sp, 64
	jal	o_form.2603
	subi	$sp, $sp, 64
	lw	$ra, 60($sp)
	move	$a0, $v0
	li	$a1, 1
	bne	$a0, $a1, beq_else.8956
	lw	$a0, 20($sp)
	sw	$ra, 60($sp)
	addi	$sp, $sp, 64
	jal	d_vec.2662
	subi	$sp, $sp, 64
	lw	$ra, 60($sp)
	move	$a1, $v0
	flw	$f0, 48($sp)
	flw	$f1, 40($sp)
	flw	$f2, 32($sp)
	lw	$a0, 12($sp)
	lw	$a2, 56($sp)
	lw	$a26, 8($sp)
	lw	$a25, 0($a26)
	j	solver_rect_fast.2739
beq_else.8956:
	li	$a1, 2
	bne	$a0, $a1, beq_else.8957
	flw	$f0, 48($sp)
	flw	$f1, 40($sp)
	flw	$f2, 32($sp)
	lw	$a0, 12($sp)
	lw	$a1, 56($sp)
	lw	$a2, 24($sp)
	lw	$a26, 4($sp)
	lw	$a25, 0($a26)
	j	solver_surface_fast2.2762
beq_else.8957:
	flw	$f0, 48($sp)
	flw	$f1, 40($sp)
	flw	$f2, 32($sp)
	lw	$a0, 12($sp)
	lw	$a1, 56($sp)
	lw	$a2, 24($sp)
	lw	$a26, 0($sp)
	lw	$a25, 0($a26)
	j	solver_second_fast2.2769
setup_rect_table.2779:
	li	$a2, 6
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	l.6149
	subi	$sp, $sp, 8
	lw	$ra, 4($sp)
	mtc1	$f0, $a25
	sw	$a1, 0($sp)
	sw	$a0, 4($sp)
	move	$a0, $a2
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	min_caml_create_float_array
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	move	$a0, $v0
	lw	$a1, 4($sp)
	flw	$f0, 0($a1)
	sw	$a0, 8($sp)
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	fiszero.2520
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	move	$a0, $v0
	li	$a1, 0
	bne	$a0, $a1, bne_else.8958
	lw	$a0, 0($sp)
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	o_isinvert.2607
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	move	$a0, $v0
	lw	$a1, 4($sp)
	flw	$f0, 0($a1)
	sw	$a0, 12($sp)
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	fisneg.2518
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	move	$a1, $v0
	lw	$a0, 12($sp)
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	xor.2544
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	move	$a0, $v0
	lw	$a1, 0($sp)
	sw	$a0, 16($sp)
	move	$a0, $a1
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	o_param_a.2611
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	fmove	$f0, $fv
	lw	$a0, 16($sp)
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	fneg_cond.2549
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	fmove	$f0, $fv
	lw	$a0, 8($sp)
	fsw	$f0, 0($a0)
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	l.6152
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	mtc1	$f0, $a25
	lw	$a1, 4($sp)
	flw	$f1, 0($a1)
	finv	$f1, $f1
	fmul	$f0, $f0, $f1
	fsw	$f0, 4($a0)
	j	bne_cont.8959
bne_else.8958:
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	l.6149
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	mtc1	$f0, $a25
	lw	$a0, 8($sp)
	fsw	$f0, 4($a0)
bne_cont.8959:
	lw	$a1, 4($sp)
	flw	$f0, 4($a1)
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	fiszero.2520
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	move	$a0, $v0
	li	$a1, 0
	bne	$a0, $a1, bne_else.8960
	lw	$a0, 0($sp)
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	o_isinvert.2607
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	move	$a0, $v0
	lw	$a1, 4($sp)
	flw	$f0, 4($a1)
	sw	$a0, 20($sp)
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	fisneg.2518
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	move	$a1, $v0
	lw	$a0, 20($sp)
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	xor.2544
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	move	$a0, $v0
	lw	$a1, 0($sp)
	sw	$a0, 24($sp)
	move	$a0, $a1
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	o_param_b.2613
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	fmove	$f0, $fv
	lw	$a0, 24($sp)
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	fneg_cond.2549
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	fmove	$f0, $fv
	lw	$a0, 8($sp)
	fsw	$f0, 8($a0)
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	l.6152
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	mtc1	$f0, $a25
	lw	$a1, 4($sp)
	flw	$f1, 4($a1)
	finv	$f1, $f1
	fmul	$f0, $f0, $f1
	fsw	$f0, 12($a0)
	j	bne_cont.8961
bne_else.8960:
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	l.6149
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	mtc1	$f0, $a25
	lw	$a0, 8($sp)
	fsw	$f0, 12($a0)
bne_cont.8961:
	lw	$a1, 4($sp)
	flw	$f0, 8($a1)
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	fiszero.2520
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	move	$a0, $v0
	li	$a1, 0
	bne	$a0, $a1, bne_else.8962
	lw	$a0, 0($sp)
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	o_isinvert.2607
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	move	$a0, $v0
	lw	$a1, 4($sp)
	flw	$f0, 8($a1)
	sw	$a0, 28($sp)
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	fisneg.2518
	subi	$sp, $sp, 40
	lw	$ra, 36($sp)
	move	$a1, $v0
	lw	$a0, 28($sp)
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	xor.2544
	subi	$sp, $sp, 40
	lw	$ra, 36($sp)
	move	$a0, $v0
	lw	$a1, 0($sp)
	sw	$a0, 32($sp)
	move	$a0, $a1
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	o_param_c.2615
	subi	$sp, $sp, 40
	lw	$ra, 36($sp)
	fmove	$f0, $fv
	lw	$a0, 32($sp)
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	fneg_cond.2549
	subi	$sp, $sp, 40
	lw	$ra, 36($sp)
	fmove	$f0, $fv
	lw	$a0, 8($sp)
	fsw	$f0, 16($a0)
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	l.6152
	subi	$sp, $sp, 40
	lw	$ra, 36($sp)
	mtc1	$f0, $a25
	lw	$a1, 4($sp)
	flw	$f1, 8($a1)
	finv	$f1, $f1
	fmul	$f0, $f0, $f1
	fsw	$f0, 20($a0)
	j	bne_cont.8963
bne_else.8962:
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	l.6149
	subi	$sp, $sp, 40
	lw	$ra, 36($sp)
	mtc1	$f0, $a25
	lw	$a0, 8($sp)
	fsw	$f0, 20($a0)
bne_cont.8963:
	move	$v0, $a0
	jr	$ra
setup_surface_table.2782:
	li	$a2, 4
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	l.6149
	subi	$sp, $sp, 8
	lw	$ra, 4($sp)
	mtc1	$f0, $a25
	sw	$a1, 0($sp)
	sw	$a0, 4($sp)
	move	$a0, $a2
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	min_caml_create_float_array
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	move	$a0, $v0
	lw	$a1, 4($sp)
	flw	$f0, 0($a1)
	lw	$a2, 0($sp)
	sw	$a0, 8($sp)
	fsw	$f0, 16($sp)
	move	$a0, $a2
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	o_param_a.2611
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	fmove	$f0, $fv
	flw	$f1, 16($sp)
	fmul	$f0, $f1, $f0
	lw	$a0, 4($sp)
	flw	$f1, 4($a0)
	lw	$a1, 0($sp)
	fsw	$f0, 24($sp)
	fsw	$f1, 32($sp)
	move	$a0, $a1
	sw	$ra, 44($sp)
	addi	$sp, $sp, 48
	jal	o_param_b.2613
	subi	$sp, $sp, 48
	lw	$ra, 44($sp)
	fmove	$f0, $fv
	flw	$f1, 32($sp)
	fmul	$f0, $f1, $f0
	flw	$f1, 24($sp)
	fadd	$f0, $f1, $f0
	lw	$a0, 4($sp)
	flw	$f1, 8($a0)
	lw	$a0, 0($sp)
	fsw	$f0, 40($sp)
	fsw	$f1, 48($sp)
	sw	$ra, 60($sp)
	addi	$sp, $sp, 64
	jal	o_param_c.2615
	subi	$sp, $sp, 64
	lw	$ra, 60($sp)
	fmove	$f0, $fv
	flw	$f1, 48($sp)
	fmul	$f0, $f1, $f0
	flw	$f1, 40($sp)
	fadd	$f0, $f1, $f0
	fsw	$f0, 56($sp)
	sw	$ra, 68($sp)
	addi	$sp, $sp, 72
	jal	fispos.2516
	subi	$sp, $sp, 72
	lw	$ra, 68($sp)
	move	$a0, $v0
	li	$a1, 0
	bne	$a0, $a1, bne_else.8965
	sw	$ra, 68($sp)
	addi	$sp, $sp, 72
	jal	l.6149
	subi	$sp, $sp, 72
	lw	$ra, 68($sp)
	mtc1	$f0, $a25
	lw	$a0, 8($sp)
	fsw	$f0, 0($a0)
	j	bne_cont.8966
bne_else.8965:
	sw	$ra, 68($sp)
	addi	$sp, $sp, 72
	jal	l.6155
	subi	$sp, $sp, 72
	lw	$ra, 68($sp)
	mtc1	$f0, $a25
	flw	$f1, 56($sp)
	finv	$f2, $f1
	fmul	$f0, $f0, $f2
	lw	$a0, 8($sp)
	fsw	$f0, 0($a0)
	lw	$a1, 0($sp)
	move	$a0, $a1
	sw	$ra, 68($sp)
	addi	$sp, $sp, 72
	jal	o_param_a.2611
	subi	$sp, $sp, 72
	lw	$ra, 68($sp)
	fmove	$f0, $fv
	flw	$f1, 56($sp)
	finv	$f2, $f1
	fmul	$f0, $f0, $f2
	sw	$ra, 68($sp)
	addi	$sp, $sp, 72
	jal	fneg.2514
	subi	$sp, $sp, 72
	lw	$ra, 68($sp)
	fmove	$f0, $fv
	lw	$a0, 8($sp)
	fsw	$f0, 4($a0)
	lw	$a1, 0($sp)
	move	$a0, $a1
	sw	$ra, 68($sp)
	addi	$sp, $sp, 72
	jal	o_param_b.2613
	subi	$sp, $sp, 72
	lw	$ra, 68($sp)
	fmove	$f0, $fv
	flw	$f1, 56($sp)
	finv	$f2, $f1
	fmul	$f0, $f0, $f2
	sw	$ra, 68($sp)
	addi	$sp, $sp, 72
	jal	fneg.2514
	subi	$sp, $sp, 72
	lw	$ra, 68($sp)
	fmove	$f0, $fv
	lw	$a0, 8($sp)
	fsw	$f0, 8($a0)
	lw	$a1, 0($sp)
	move	$a0, $a1
	sw	$ra, 68($sp)
	addi	$sp, $sp, 72
	jal	o_param_c.2615
	subi	$sp, $sp, 72
	lw	$ra, 68($sp)
	fmove	$f0, $fv
	flw	$f1, 56($sp)
	finv	$f1, $f1
	fmul	$f0, $f0, $f1
	sw	$ra, 68($sp)
	addi	$sp, $sp, 72
	jal	fneg.2514
	subi	$sp, $sp, 72
	lw	$ra, 68($sp)
	fmove	$f0, $fv
	lw	$a0, 8($sp)
	fsw	$f0, 12($a0)
bne_cont.8966:
	move	$v0, $a0
	jr	$ra
setup_second_table.2785:
	li	$a2, 5
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	l.6149
	subi	$sp, $sp, 8
	lw	$ra, 4($sp)
	mtc1	$f0, $a25
	sw	$a1, 0($sp)
	sw	$a0, 4($sp)
	move	$a0, $a2
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	min_caml_create_float_array
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	move	$a0, $v0
	lw	$a1, 4($sp)
	flw	$f0, 0($a1)
	flw	$f1, 4($a1)
	flw	$f2, 8($a1)
	lw	$a2, 0($sp)
	sw	$a0, 8($sp)
	move	$a0, $a2
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	quadratic.2716
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	fmove	$f0, $fv
	lw	$a0, 4($sp)
	flw	$f1, 0($a0)
	lw	$a1, 0($sp)
	fsw	$f0, 16($sp)
	fsw	$f1, 24($sp)
	move	$a0, $a1
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	o_param_a.2611
	subi	$sp, $sp, 40
	lw	$ra, 36($sp)
	fmove	$f0, $fv
	flw	$f1, 24($sp)
	fmul	$f0, $f1, $f0
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	fneg.2514
	subi	$sp, $sp, 40
	lw	$ra, 36($sp)
	fmove	$f0, $fv
	lw	$a0, 4($sp)
	flw	$f1, 4($a0)
	lw	$a1, 0($sp)
	fsw	$f0, 32($sp)
	fsw	$f1, 40($sp)
	move	$a0, $a1
	sw	$ra, 52($sp)
	addi	$sp, $sp, 56
	jal	o_param_b.2613
	subi	$sp, $sp, 56
	lw	$ra, 52($sp)
	fmove	$f0, $fv
	flw	$f1, 40($sp)
	fmul	$f0, $f1, $f0
	sw	$ra, 52($sp)
	addi	$sp, $sp, 56
	jal	fneg.2514
	subi	$sp, $sp, 56
	lw	$ra, 52($sp)
	fmove	$f0, $fv
	lw	$a0, 4($sp)
	flw	$f1, 8($a0)
	lw	$a1, 0($sp)
	fsw	$f0, 48($sp)
	fsw	$f1, 56($sp)
	move	$a0, $a1
	sw	$ra, 68($sp)
	addi	$sp, $sp, 72
	jal	o_param_c.2615
	subi	$sp, $sp, 72
	lw	$ra, 68($sp)
	fmove	$f0, $fv
	flw	$f1, 56($sp)
	fmul	$f0, $f1, $f0
	sw	$ra, 68($sp)
	addi	$sp, $sp, 72
	jal	fneg.2514
	subi	$sp, $sp, 72
	lw	$ra, 68($sp)
	fmove	$f0, $fv
	lw	$a0, 8($sp)
	flw	$f1, 16($sp)
	fsw	$f1, 0($a0)
	lw	$a1, 0($sp)
	fsw	$f0, 64($sp)
	move	$a0, $a1
	sw	$ra, 76($sp)
	addi	$sp, $sp, 80
	jal	o_isrot.2609
	subi	$sp, $sp, 80
	lw	$ra, 76($sp)
	move	$a0, $v0
	li	$a1, 0
	bne	$a0, $a1, bne_else.8968
	lw	$a0, 8($sp)
	flw	$f0, 32($sp)
	fsw	$f0, 4($a0)
	flw	$f0, 48($sp)
	fsw	$f0, 8($a0)
	flw	$f0, 64($sp)
	fsw	$f0, 12($a0)
	j	bne_cont.8969
bne_else.8968:
	lw	$a0, 4($sp)
	flw	$f0, 8($a0)
	lw	$a1, 0($sp)
	fsw	$f0, 72($sp)
	move	$a0, $a1
	sw	$ra, 84($sp)
	addi	$sp, $sp, 88
	jal	o_param_r2.2637
	subi	$sp, $sp, 88
	lw	$ra, 84($sp)
	fmove	$f0, $fv
	flw	$f1, 72($sp)
	fmul	$f0, $f1, $f0
	lw	$a0, 4($sp)
	flw	$f1, 4($a0)
	lw	$a1, 0($sp)
	fsw	$f0, 80($sp)
	fsw	$f1, 88($sp)
	move	$a0, $a1
	sw	$ra, 100($sp)
	addi	$sp, $sp, 104
	jal	o_param_r3.2639
	subi	$sp, $sp, 104
	lw	$ra, 100($sp)
	fmove	$f0, $fv
	flw	$f1, 88($sp)
	fmul	$f0, $f1, $f0
	flw	$f1, 80($sp)
	fadd	$f0, $f1, $f0
	sw	$ra, 100($sp)
	addi	$sp, $sp, 104
	jal	fhalf.2522
	subi	$sp, $sp, 104
	lw	$ra, 100($sp)
	fmove	$f0, $fv
	flw	$f1, 32($sp)
	fsub	$f0, $f1, $f0
	lw	$a0, 8($sp)
	fsw	$f0, 4($a0)
	lw	$a1, 4($sp)
	flw	$f0, 8($a1)
	lw	$a2, 0($sp)
	fsw	$f0, 96($sp)
	move	$a0, $a2
	sw	$ra, 108($sp)
	addi	$sp, $sp, 112
	jal	o_param_r1.2635
	subi	$sp, $sp, 112
	lw	$ra, 108($sp)
	fmove	$f0, $fv
	flw	$f1, 96($sp)
	fmul	$f0, $f1, $f0
	lw	$a0, 4($sp)
	flw	$f1, 0($a0)
	lw	$a1, 0($sp)
	fsw	$f0, 104($sp)
	fsw	$f1, 112($sp)
	move	$a0, $a1
	sw	$ra, 124($sp)
	addi	$sp, $sp, 128
	jal	o_param_r3.2639
	subi	$sp, $sp, 128
	lw	$ra, 124($sp)
	fmove	$f0, $fv
	flw	$f1, 112($sp)
	fmul	$f0, $f1, $f0
	flw	$f1, 104($sp)
	fadd	$f0, $f1, $f0
	sw	$ra, 124($sp)
	addi	$sp, $sp, 128
	jal	fhalf.2522
	subi	$sp, $sp, 128
	lw	$ra, 124($sp)
	fmove	$f0, $fv
	flw	$f1, 48($sp)
	fsub	$f0, $f1, $f0
	lw	$a0, 8($sp)
	fsw	$f0, 8($a0)
	lw	$a1, 4($sp)
	flw	$f0, 4($a1)
	lw	$a2, 0($sp)
	fsw	$f0, 120($sp)
	move	$a0, $a2
	sw	$ra, 132($sp)
	addi	$sp, $sp, 136
	jal	o_param_r1.2635
	subi	$sp, $sp, 136
	lw	$ra, 132($sp)
	fmove	$f0, $fv
	flw	$f1, 120($sp)
	fmul	$f0, $f1, $f0
	lw	$a0, 4($sp)
	flw	$f1, 0($a0)
	lw	$a0, 0($sp)
	fsw	$f0, 128($sp)
	fsw	$f1, 136($sp)
	sw	$ra, 148($sp)
	addi	$sp, $sp, 152
	jal	o_param_r2.2637
	subi	$sp, $sp, 152
	lw	$ra, 148($sp)
	fmove	$f0, $fv
	flw	$f1, 136($sp)
	fmul	$f0, $f1, $f0
	flw	$f1, 128($sp)
	fadd	$f0, $f1, $f0
	sw	$ra, 148($sp)
	addi	$sp, $sp, 152
	jal	fhalf.2522
	subi	$sp, $sp, 152
	lw	$ra, 148($sp)
	fmove	$f0, $fv
	flw	$f1, 64($sp)
	fsub	$f0, $f1, $f0
	lw	$a0, 8($sp)
	fsw	$f0, 12($a0)
bne_cont.8969:
	flw	$f0, 16($sp)
	sw	$ra, 148($sp)
	addi	$sp, $sp, 152
	jal	fiszero.2520
	subi	$sp, $sp, 152
	lw	$ra, 148($sp)
	move	$a0, $v0
	li	$a1, 0
	bne	$a0, $a1, bne_else.8970
	sw	$ra, 148($sp)
	addi	$sp, $sp, 152
	jal	l.6152
	subi	$sp, $sp, 152
	lw	$ra, 148($sp)
	mtc1	$f0, $a25
	flw	$f1, 16($sp)
	finv	$f1, $f1
	fmul	$f0, $f0, $f1
	lw	$a0, 8($sp)
	fsw	$f0, 16($a0)
	j	bne_cont.8971
bne_else.8970:
bne_cont.8971:
	lw	$a0, 8($sp)
	move	$v0, $a0
	jr	$ra
iter_setup_dirvec_constants.2788:
	lw	$a2, 4($a26)
	li	$a3, 0
	blt	$a1, $a3, bge_else.8972
	sll	$a3, $a1, 2
	add	$a3, $a2, $a3
	lw	$a2, 0($a3)
	sw	$a26, 0($sp)
	sw	$a1, 4($sp)
	sw	$a2, 8($sp)
	sw	$a0, 12($sp)
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	d_const.2664
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	move	$a0, $v0
	lw	$a1, 12($sp)
	sw	$a0, 16($sp)
	move	$a0, $a1
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	d_vec.2662
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	move	$a0, $v0
	lw	$a1, 8($sp)
	sw	$a0, 20($sp)
	move	$a0, $a1
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	o_form.2603
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	move	$a0, $v0
	li	$a1, 1
	bne	$a0, $a1, bne_else.8973
	lw	$a0, 20($sp)
	lw	$a1, 8($sp)
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	setup_rect_table.2779
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	move	$a0, $v0
	lw	$a1, 4($sp)
	sll	$a2, $a1, 2
	lw	$a3, 16($sp)
	add	$a2, $a3, $a2
	sw	$a0, 0($a2)
	j	bne_cont.8974
bne_else.8973:
	li	$a1, 2
	bne	$a0, $a1, bne_else.8975
	lw	$a0, 20($sp)
	lw	$a1, 8($sp)
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	setup_surface_table.2782
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	move	$a0, $v0
	lw	$a1, 4($sp)
	sll	$a2, $a1, 2
	lw	$a3, 16($sp)
	add	$a2, $a3, $a2
	sw	$a0, 0($a2)
	j	bne_cont.8976
bne_else.8975:
	lw	$a0, 20($sp)
	lw	$a1, 8($sp)
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	setup_second_table.2785
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	move	$a0, $v0
	lw	$a1, 4($sp)
	sll	$a2, $a1, 2
	lw	$a3, 16($sp)
	add	$a2, $a3, $a2
	sw	$a0, 0($a2)
bne_cont.8976:
bne_cont.8974:
	subi	$a1, $a1, 1
	lw	$a0, 12($sp)
	lw	$a26, 0($sp)
	lw	$a25, 0($a26)
	j	iter_setup_dirvec_constants.2788
bge_else.8972:
	jr	$ra
setup_dirvec_constants.2791:
	lw	$a1, 8($a26)
	lw	$a26, 4($a26)
	lw	$a1, 0($a1)
	subi	$a1, $a1, 1
	lw	$a25, 0($a26)
	j	iter_setup_dirvec_constants.2788
setup_startp_constants.2793:
	lw	$a2, 4($a26)
	li	$a3, 0
	blt	$a1, $a3, bge_else.8978
	sll	$a3, $a1, 2
	add	$a3, $a2, $a3
	lw	$a2, 0($a3)
	sw	$a26, 0($sp)
	sw	$a1, 4($sp)
	sw	$a0, 8($sp)
	sw	$a2, 12($sp)
	move	$a0, $a2
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	o_param_ctbl.2641
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	move	$a0, $v0
	lw	$a1, 12($sp)
	sw	$a0, 16($sp)
	move	$a0, $a1
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	o_form.2603
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	move	$a0, $v0
	lw	$a1, 8($sp)
	flw	$f0, 0($a1)
	lw	$a2, 12($sp)
	sw	$a0, 20($sp)
	fsw	$f0, 24($sp)
	move	$a0, $a2
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	o_param_x.2619
	subi	$sp, $sp, 40
	lw	$ra, 36($sp)
	fmove	$f0, $fv
	flw	$f1, 24($sp)
	fsub	$f0, $f1, $f0
	lw	$a0, 16($sp)
	fsw	$f0, 0($a0)
	lw	$a1, 8($sp)
	flw	$f0, 4($a1)
	lw	$a2, 12($sp)
	fsw	$f0, 32($sp)
	move	$a0, $a2
	sw	$ra, 44($sp)
	addi	$sp, $sp, 48
	jal	o_param_y.2621
	subi	$sp, $sp, 48
	lw	$ra, 44($sp)
	fmove	$f0, $fv
	flw	$f1, 32($sp)
	fsub	$f0, $f1, $f0
	lw	$a0, 16($sp)
	fsw	$f0, 4($a0)
	lw	$a1, 8($sp)
	flw	$f0, 8($a1)
	lw	$a2, 12($sp)
	fsw	$f0, 40($sp)
	move	$a0, $a2
	sw	$ra, 52($sp)
	addi	$sp, $sp, 56
	jal	o_param_z.2623
	subi	$sp, $sp, 56
	lw	$ra, 52($sp)
	fmove	$f0, $fv
	flw	$f1, 40($sp)
	fsub	$f0, $f1, $f0
	lw	$a0, 16($sp)
	fsw	$f0, 8($a0)
	li	$a1, 2
	lw	$a2, 20($sp)
	bne	$a2, $a1, bne_else.8979
	lw	$a1, 12($sp)
	move	$a0, $a1
	sw	$ra, 52($sp)
	addi	$sp, $sp, 56
	jal	o_param_abc.2617
	subi	$sp, $sp, 56
	lw	$ra, 52($sp)
	move	$a0, $v0
	lw	$a1, 16($sp)
	flw	$f0, 0($a1)
	flw	$f1, 4($a1)
	flw	$f2, 8($a1)
	sw	$ra, 52($sp)
	addi	$sp, $sp, 56
	jal	veciprod2.2579
	subi	$sp, $sp, 56
	lw	$ra, 52($sp)
	fmove	$f0, $fv
	lw	$a0, 16($sp)
	fsw	$f0, 12($a0)
	j	bne_cont.8980
bne_else.8979:
	li	$a1, 2
	blt	$a1, $a2, bge_else.8981
	j	bge_cont.8982
bge_else.8981:
	flw	$f0, 0($a0)
	flw	$f1, 4($a0)
	flw	$f2, 8($a0)
	lw	$a1, 12($sp)
	move	$a0, $a1
	sw	$ra, 52($sp)
	addi	$sp, $sp, 56
	jal	quadratic.2716
	subi	$sp, $sp, 56
	lw	$ra, 52($sp)
	fmove	$f0, $fv
	li	$a0, 3
	lw	$a1, 20($sp)
	bne	$a1, $a0, bne_else.8983
	sw	$ra, 52($sp)
	addi	$sp, $sp, 56
	jal	l.6152
	subi	$sp, $sp, 56
	lw	$ra, 52($sp)
	mtc1	$f1, $a25
	fsub	$f0, $f0, $f1
	j	bne_cont.8984
bne_else.8983:
bne_cont.8984:
	lw	$a0, 16($sp)
	fsw	$f0, 12($a0)
bge_cont.8982:
bne_cont.8980:
	lw	$a0, 4($sp)
	subi	$a1, $a0, 1
	lw	$a0, 8($sp)
	lw	$a26, 0($sp)
	lw	$a25, 0($a26)
	j	setup_startp_constants.2793
bge_else.8978:
	jr	$ra
setup_startp.2796:
	lw	$a1, 12($a26)
	lw	$a2, 8($a26)
	lw	$a3, 4($a26)
	sw	$a0, 0($sp)
	sw	$a2, 4($sp)
	sw	$a3, 8($sp)
	move	$a25, $a1
	move	$a1, $a0
	move	$a0, $a25
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	veccpy.2565
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	fmove	$f30, $fv
	lw	$a0, 8($sp)
	lw	$a0, 0($a0)
	subi	$a1, $a0, 1
	lw	$a0, 0($sp)
	lw	$a26, 4($sp)
	lw	$a25, 0($a26)
	j	setup_startp_constants.2793
is_rect_outside.2798:
	fsw	$f2, 0($sp)
	fsw	$f1, 8($sp)
	sw	$a0, 16($sp)
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	fabs.2526
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	fmove	$f0, $fv
	lw	$a0, 16($sp)
	fsw	$f0, 24($sp)
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	o_param_a.2611
	subi	$sp, $sp, 40
	lw	$ra, 36($sp)
	fmove	$f1, $fv
	flw	$f0, 24($sp)
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	fless.2528
	subi	$sp, $sp, 40
	lw	$ra, 36($sp)
	move	$a0, $v0
	li	$a1, 0
	bne	$a0, $a1, bne_else.8987
	li	$a0, 0
	j	bne_cont.8988
bne_else.8987:
	flw	$f0, 8($sp)
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	fabs.2526
	subi	$sp, $sp, 40
	lw	$ra, 36($sp)
	fmove	$f0, $fv
	lw	$a0, 16($sp)
	fsw	$f0, 32($sp)
	sw	$ra, 44($sp)
	addi	$sp, $sp, 48
	jal	o_param_b.2613
	subi	$sp, $sp, 48
	lw	$ra, 44($sp)
	fmove	$f1, $fv
	flw	$f0, 32($sp)
	sw	$ra, 44($sp)
	addi	$sp, $sp, 48
	jal	fless.2528
	subi	$sp, $sp, 48
	lw	$ra, 44($sp)
	move	$a0, $v0
	li	$a1, 0
	bne	$a0, $a1, bne_else.8989
	li	$a0, 0
	j	bne_cont.8990
bne_else.8989:
	flw	$f0, 0($sp)
	sw	$ra, 44($sp)
	addi	$sp, $sp, 48
	jal	fabs.2526
	subi	$sp, $sp, 48
	lw	$ra, 44($sp)
	fmove	$f0, $fv
	lw	$a0, 16($sp)
	fsw	$f0, 40($sp)
	sw	$ra, 52($sp)
	addi	$sp, $sp, 56
	jal	o_param_c.2615
	subi	$sp, $sp, 56
	lw	$ra, 52($sp)
	fmove	$f1, $fv
	flw	$f0, 40($sp)
	sw	$ra, 52($sp)
	addi	$sp, $sp, 56
	jal	fless.2528
	subi	$sp, $sp, 56
	lw	$ra, 52($sp)
	move	$a0, $v0
bne_cont.8990:
bne_cont.8988:
	li	$a1, 0
	bne	$a0, $a1, beq_else.8991
	lw	$a0, 16($sp)
	sw	$ra, 52($sp)
	addi	$sp, $sp, 56
	jal	o_isinvert.2607
	subi	$sp, $sp, 56
	lw	$ra, 52($sp)
	move	$a0, $v0
	li	$a1, 0
	bne	$a0, $a1, beq_else.8992
	li	$v0, 1
	jr	$ra
beq_else.8992:
	li	$v0, 0
	jr	$ra
beq_else.8991:
	lw	$a0, 16($sp)
	j	o_isinvert.2607
is_plane_outside.2803:
	sw	$a0, 0($sp)
	fsw	$f2, 8($sp)
	fsw	$f1, 16($sp)
	fsw	$f0, 24($sp)
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	o_param_abc.2617
	subi	$sp, $sp, 40
	lw	$ra, 36($sp)
	move	$a0, $v0
	flw	$f0, 24($sp)
	flw	$f1, 16($sp)
	flw	$f2, 8($sp)
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	veciprod2.2579
	subi	$sp, $sp, 40
	lw	$ra, 36($sp)
	fmove	$f0, $fv
	lw	$a0, 0($sp)
	fsw	$f0, 32($sp)
	sw	$ra, 44($sp)
	addi	$sp, $sp, 48
	jal	o_isinvert.2607
	subi	$sp, $sp, 48
	lw	$ra, 44($sp)
	move	$a0, $v0
	flw	$f0, 32($sp)
	sw	$a0, 40($sp)
	sw	$ra, 44($sp)
	addi	$sp, $sp, 48
	jal	fisneg.2518
	subi	$sp, $sp, 48
	lw	$ra, 44($sp)
	move	$a1, $v0
	lw	$a0, 40($sp)
	sw	$ra, 44($sp)
	addi	$sp, $sp, 48
	jal	xor.2544
	subi	$sp, $sp, 48
	lw	$ra, 44($sp)
	move	$a0, $v0
	li	$a1, 0
	bne	$a0, $a1, beq_else.8994
	li	$v0, 1
	jr	$ra
beq_else.8994:
	li	$v0, 0
	jr	$ra
is_second_outside.2808:
	sw	$a0, 0($sp)
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	quadratic.2716
	subi	$sp, $sp, 8
	lw	$ra, 4($sp)
	fmove	$f0, $fv
	lw	$a0, 0($sp)
	fsw	$f0, 8($sp)
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	o_form.2603
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	move	$a0, $v0
	li	$a1, 3
	bne	$a0, $a1, bne_else.8996
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	l.6152
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	mtc1	$f0, $a25
	flw	$f1, 8($sp)
	fsub	$f0, $f1, $f0
	j	bne_cont.8997
bne_else.8996:
	flw	$f0, 8($sp)
bne_cont.8997:
	lw	$a0, 0($sp)
	fsw	$f0, 16($sp)
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	o_isinvert.2607
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	move	$a0, $v0
	flw	$f0, 16($sp)
	sw	$a0, 24($sp)
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	fisneg.2518
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	move	$a1, $v0
	lw	$a0, 24($sp)
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	xor.2544
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	move	$a0, $v0
	li	$a1, 0
	bne	$a0, $a1, beq_else.8998
	li	$v0, 1
	jr	$ra
beq_else.8998:
	li	$v0, 0
	jr	$ra
is_outside.2813:
	fsw	$f2, 0($sp)
	fsw	$f1, 8($sp)
	sw	$a0, 16($sp)
	fsw	$f0, 24($sp)
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	o_param_x.2619
	subi	$sp, $sp, 40
	lw	$ra, 36($sp)
	fmove	$f0, $fv
	flw	$f1, 24($sp)
	fsub	$f0, $f1, $f0
	lw	$a0, 16($sp)
	fsw	$f0, 32($sp)
	sw	$ra, 44($sp)
	addi	$sp, $sp, 48
	jal	o_param_y.2621
	subi	$sp, $sp, 48
	lw	$ra, 44($sp)
	fmove	$f0, $fv
	flw	$f1, 8($sp)
	fsub	$f0, $f1, $f0
	lw	$a0, 16($sp)
	fsw	$f0, 40($sp)
	sw	$ra, 52($sp)
	addi	$sp, $sp, 56
	jal	o_param_z.2623
	subi	$sp, $sp, 56
	lw	$ra, 52($sp)
	fmove	$f0, $fv
	flw	$f1, 0($sp)
	fsub	$f0, $f1, $f0
	lw	$a0, 16($sp)
	fsw	$f0, 48($sp)
	sw	$ra, 60($sp)
	addi	$sp, $sp, 64
	jal	o_form.2603
	subi	$sp, $sp, 64
	lw	$ra, 60($sp)
	move	$a0, $v0
	li	$a1, 1
	bne	$a0, $a1, beq_else.9000
	flw	$f0, 32($sp)
	flw	$f1, 40($sp)
	flw	$f2, 48($sp)
	lw	$a0, 16($sp)
	j	is_rect_outside.2798
beq_else.9000:
	li	$a1, 2
	bne	$a0, $a1, beq_else.9001
	flw	$f0, 32($sp)
	flw	$f1, 40($sp)
	flw	$f2, 48($sp)
	lw	$a0, 16($sp)
	j	is_plane_outside.2803
beq_else.9001:
	flw	$f0, 32($sp)
	flw	$f1, 40($sp)
	flw	$f2, 48($sp)
	lw	$a0, 16($sp)
	j	is_second_outside.2808
check_all_inside.2818:
	lw	$a2, 4($a26)
	sll	$a3, $a0, 2
	add	$a3, $a1, $a3
	lw	$a3, 0($a3)
	li	$a4, -1
	bne	$a3, $a4, beq_else.9002
	li	$v0, 1
	jr	$ra
beq_else.9002:
	sll	$a3, $a3, 2
	add	$a3, $a2, $a3
	lw	$a2, 0($a3)
	fsw	$f2, 0($sp)
	fsw	$f1, 8($sp)
	fsw	$f0, 16($sp)
	sw	$a1, 24($sp)
	sw	$a26, 28($sp)
	sw	$a0, 32($sp)
	move	$a0, $a2
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	is_outside.2813
	subi	$sp, $sp, 40
	lw	$ra, 36($sp)
	move	$a0, $v0
	li	$a1, 0
	bne	$a0, $a1, beq_else.9003
	lw	$a0, 32($sp)
	addi	$a0, $a0, 1
	flw	$f0, 16($sp)
	flw	$f1, 8($sp)
	flw	$f2, 0($sp)
	lw	$a1, 24($sp)
	lw	$a26, 28($sp)
	lw	$a25, 0($a26)
	j	check_all_inside.2818
beq_else.9003:
	li	$v0, 0
	jr	$ra
shadow_check_and_group.2824:
	lw	$a2, 28($a26)
	lw	$a3, 24($a26)
	lw	$a4, 20($a26)
	lw	$a5, 16($a26)
	lw	$a6, 12($a26)
	lw	$a7, 8($a26)
	lw	$a8, 4($a26)
	sll	$a9, $a0, 2
	add	$a9, $a1, $a9
	lw	$a9, 0($a9)
	li	$a10, -1
	bne	$a9, $a10, beq_else.9004
	li	$v0, 0
	jr	$ra
beq_else.9004:
	sll	$a9, $a0, 2
	add	$a9, $a1, $a9
	lw	$a9, 0($a9)
	sw	$a8, 0($sp)
	sw	$a7, 4($sp)
	sw	$a6, 8($sp)
	sw	$a1, 12($sp)
	sw	$a26, 16($sp)
	sw	$a0, 20($sp)
	sw	$a4, 24($sp)
	sw	$a9, 28($sp)
	sw	$a3, 32($sp)
	move	$a1, $a5
	move	$a0, $a9
	move	$a26, $a2
	move	$a2, $a7
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	solver_fast.2758
	subi	$sp, $sp, 40
	lw	$ra, 36($sp)
	move	$a0, $v0
	lw	$a1, 32($sp)
	flw	$f0, 0($a1)
	li	$a1, 0
	fsw	$f0, 40($sp)
	bne	$a0, $a1, bne_else.9006
	li	$a0, 0
	j	bne_cont.9007
bne_else.9006:
	sw	$ra, 52($sp)
	addi	$sp, $sp, 56
	jal	l.6468
	subi	$sp, $sp, 56
	lw	$ra, 52($sp)
	mtc1	$f1, $a25
	sw	$ra, 52($sp)
	addi	$sp, $sp, 56
	jal	fless.2528
	subi	$sp, $sp, 56
	lw	$ra, 52($sp)
	move	$a0, $v0
bne_cont.9007:
	li	$a1, 0
	bne	$a0, $a1, beq_else.9008
	lw	$a0, 28($sp)
	sll	$a0, $a0, 2
	lw	$a1, 24($sp)
	add	$a0, $a1, $a0
	lw	$a0, 0($a0)
	sw	$ra, 52($sp)
	addi	$sp, $sp, 56
	jal	o_isinvert.2607
	subi	$sp, $sp, 56
	lw	$ra, 52($sp)
	move	$a0, $v0
	li	$a1, 0
	bne	$a0, $a1, beq_else.9009
	li	$v0, 0
	jr	$ra
beq_else.9009:
	lw	$a0, 20($sp)
	addi	$a0, $a0, 1
	lw	$a1, 12($sp)
	lw	$a26, 16($sp)
	lw	$a25, 0($a26)
	j	shadow_check_and_group.2824
beq_else.9008:
	sw	$ra, 52($sp)
	addi	$sp, $sp, 56
	jal	l.6469
	subi	$sp, $sp, 56
	lw	$ra, 52($sp)
	mtc1	$f0, $a25
	flw	$f1, 40($sp)
	fadd	$f0, $f1, $f0
	lw	$a0, 8($sp)
	flw	$f1, 0($a0)
	fmul	$f1, $f1, $f0
	lw	$a1, 4($sp)
	flw	$f2, 0($a1)
	fadd	$f1, $f1, $f2
	flw	$f2, 4($a0)
	fmul	$f2, $f2, $f0
	flw	$f3, 4($a1)
	fadd	$f2, $f2, $f3
	flw	$f3, 8($a0)
	fmul	$f0, $f3, $f0
	flw	$f3, 8($a1)
	fadd	$f0, $f0, $f3
	li	$a0, 0
	lw	$a1, 12($sp)
	lw	$a26, 0($sp)
	fmove	$f30, $f2
	fmove	$f2, $f0
	fmove	$f0, $f1
	fmove	$f1, $f30
	sw	$ra, 52($sp)
	addi	$sp, $sp, 56
	jal	check_all_inside.2818
	subi	$sp, $sp, 56
	lw	$ra, 52($sp)
	move	$a0, $v0
	li	$a1, 0
	bne	$a0, $a1, beq_else.9010
	lw	$a0, 20($sp)
	addi	$a0, $a0, 1
	lw	$a1, 12($sp)
	lw	$a26, 16($sp)
	lw	$a25, 0($a26)
	j	shadow_check_and_group.2824
beq_else.9010:
	li	$v0, 1
	jr	$ra
shadow_check_one_or_group.2827:
	lw	$a2, 8($a26)
	lw	$a3, 4($a26)
	sll	$a4, $a0, 2
	add	$a4, $a1, $a4
	lw	$a4, 0($a4)
	li	$a5, -1
	bne	$a4, $a5, beq_else.9011
	li	$v0, 0
	jr	$ra
beq_else.9011:
	sll	$a4, $a4, 2
	add	$a4, $a3, $a4
	lw	$a3, 0($a4)
	li	$a4, 0
	sw	$a1, 0($sp)
	sw	$a26, 4($sp)
	sw	$a0, 8($sp)
	move	$a1, $a3
	move	$a0, $a4
	move	$a26, $a2
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	shadow_check_and_group.2824
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	move	$a0, $v0
	li	$a1, 0
	bne	$a0, $a1, beq_else.9012
	lw	$a0, 8($sp)
	addi	$a0, $a0, 1
	lw	$a1, 0($sp)
	lw	$a26, 4($sp)
	lw	$a25, 0($a26)
	j	shadow_check_one_or_group.2827
beq_else.9012:
	li	$v0, 1
	jr	$ra
shadow_check_one_or_matrix.2830:
	lw	$a2, 20($a26)
	lw	$a3, 16($a26)
	lw	$a4, 12($a26)
	lw	$a5, 8($a26)
	lw	$a6, 4($a26)
	sll	$a7, $a0, 2
	add	$a7, $a1, $a7
	lw	$a7, 0($a7)
	lw	$a8, 0($a7)
	li	$a9, -1
	bne	$a8, $a9, beq_else.9013
	li	$v0, 0
	jr	$ra
beq_else.9013:
	li	$a9, 99
	sw	$a7, 0($sp)
	sw	$a4, 4($sp)
	sw	$a1, 8($sp)
	sw	$a26, 12($sp)
	sw	$a0, 16($sp)
	bne	$a8, $a9, bne_else.9014
	li	$a0, 1
	j	bne_cont.9015
bne_else.9014:
	sw	$a3, 20($sp)
	move	$a1, $a5
	move	$a0, $a8
	move	$a26, $a2
	move	$a2, $a6
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	solver_fast.2758
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	move	$a0, $v0
	li	$a1, 0
	bne	$a0, $a1, bne_else.9016
	li	$a0, 0
	j	bne_cont.9017
bne_else.9016:
	lw	$a0, 20($sp)
	flw	$f0, 0($a0)
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	l.6482
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	mtc1	$f1, $a25
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	fless.2528
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	move	$a0, $v0
	li	$a1, 0
	bne	$a0, $a1, bne_else.9018
	li	$a0, 0
	j	bne_cont.9019
bne_else.9018:
	li	$a0, 1
	lw	$a1, 0($sp)
	lw	$a26, 4($sp)
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	shadow_check_one_or_group.2827
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	move	$a0, $v0
	li	$a1, 0
	bne	$a0, $a1, bne_else.9020
	li	$a0, 0
	j	bne_cont.9021
bne_else.9020:
	li	$a0, 1
bne_cont.9021:
bne_cont.9019:
bne_cont.9017:
bne_cont.9015:
	li	$a1, 0
	bne	$a0, $a1, beq_else.9022
	lw	$a0, 16($sp)
	addi	$a0, $a0, 1
	lw	$a1, 8($sp)
	lw	$a26, 12($sp)
	lw	$a25, 0($a26)
	j	shadow_check_one_or_matrix.2830
beq_else.9022:
	li	$a0, 1
	lw	$a1, 0($sp)
	lw	$a26, 4($sp)
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	shadow_check_one_or_group.2827
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	move	$a0, $v0
	li	$a1, 0
	bne	$a0, $a1, beq_else.9023
	lw	$a0, 16($sp)
	addi	$a0, $a0, 1
	lw	$a1, 8($sp)
	lw	$a26, 12($sp)
	lw	$a25, 0($a26)
	j	shadow_check_one_or_matrix.2830
beq_else.9023:
	li	$v0, 1
	jr	$ra
solve_each_element.2833:
	lw	$a3, 36($a26)
	lw	$a4, 32($a26)
	lw	$a5, 28($a26)
	lw	$a6, 24($a26)
	lw	$a7, 20($a26)
	lw	$a8, 16($a26)
	lw	$a9, 12($a26)
	lw	$a10, 8($a26)
	lw	$a11, 4($a26)
	sll	$a12, $a0, 2
	add	$a12, $a1, $a12
	lw	$a12, 0($a12)
	li	$a13, -1
	bne	$a12, $a13, beq_else.9024
	jr	$ra
beq_else.9024:
	sw	$a8, 0($sp)
	sw	$a10, 4($sp)
	sw	$a9, 8($sp)
	sw	$a11, 12($sp)
	sw	$a4, 16($sp)
	sw	$a3, 20($sp)
	sw	$a5, 24($sp)
	sw	$a2, 28($sp)
	sw	$a1, 32($sp)
	sw	$a26, 36($sp)
	sw	$a0, 40($sp)
	sw	$a7, 44($sp)
	sw	$a12, 48($sp)
	move	$a1, $a2
	move	$a0, $a12
	move	$a26, $a6
	move	$a2, $a4
	sw	$ra, 52($sp)
	addi	$sp, $sp, 56
	jal	solver.2735
	subi	$sp, $sp, 56
	lw	$ra, 52($sp)
	move	$a0, $v0
	li	$a1, 0
	bne	$a0, $a1, beq_else.9026
	lw	$a0, 48($sp)
	sll	$a0, $a0, 2
	lw	$a1, 44($sp)
	add	$a0, $a1, $a0
	lw	$a0, 0($a0)
	sw	$ra, 52($sp)
	addi	$sp, $sp, 56
	jal	o_isinvert.2607
	subi	$sp, $sp, 56
	lw	$ra, 52($sp)
	move	$a0, $v0
	li	$a1, 0
	bne	$a0, $a1, beq_else.9027
	jr	$ra
beq_else.9027:
	lw	$a0, 40($sp)
	addi	$a0, $a0, 1
	lw	$a1, 32($sp)
	lw	$a2, 28($sp)
	lw	$a26, 36($sp)
	lw	$a25, 0($a26)
	j	solve_each_element.2833
beq_else.9026:
	lw	$a1, 24($sp)
	flw	$f1, 0($a1)
	sw	$ra, 52($sp)
	addi	$sp, $sp, 56
	jal	l.6149
	subi	$sp, $sp, 56
	lw	$ra, 52($sp)
	mtc1	$f0, $a25
	sw	$a0, 52($sp)
	fsw	$f1, 56($sp)
	sw	$ra, 68($sp)
	addi	$sp, $sp, 72
	jal	fless.2528
	subi	$sp, $sp, 72
	lw	$ra, 68($sp)
	move	$a0, $v0
	li	$a1, 0
	bne	$a0, $a1, bne_else.9029
	j	bne_cont.9030
bne_else.9029:
	lw	$a0, 20($sp)
	flw	$f1, 0($a0)
	flw	$f0, 56($sp)
	sw	$ra, 68($sp)
	addi	$sp, $sp, 72
	jal	fless.2528
	subi	$sp, $sp, 72
	lw	$ra, 68($sp)
	move	$a0, $v0
	li	$a1, 0
	bne	$a0, $a1, bne_else.9031
	j	bne_cont.9032
bne_else.9031:
	sw	$ra, 68($sp)
	addi	$sp, $sp, 72
	jal	l.6469
	subi	$sp, $sp, 72
	lw	$ra, 68($sp)
	mtc1	$f0, $a25
	flw	$f1, 56($sp)
	fadd	$f0, $f1, $f0
	lw	$a0, 28($sp)
	flw	$f1, 0($a0)
	fmul	$f1, $f1, $f0
	lw	$a1, 16($sp)
	flw	$f2, 0($a1)
	fadd	$f1, $f1, $f2
	flw	$f2, 4($a0)
	fmul	$f2, $f2, $f0
	flw	$f3, 4($a1)
	fadd	$f2, $f2, $f3
	flw	$f3, 8($a0)
	fmul	$f3, $f3, $f0
	flw	$f4, 8($a1)
	fadd	$f3, $f3, $f4
	li	$a1, 0
	lw	$a2, 32($sp)
	lw	$a26, 12($sp)
	fsw	$f3, 64($sp)
	fsw	$f2, 72($sp)
	fsw	$f1, 80($sp)
	fsw	$f0, 88($sp)
	move	$a0, $a1
	move	$a1, $a2
	fmove	$f0, $f1
	fmove	$f1, $f2
	fmove	$f2, $f3
	sw	$ra, 100($sp)
	addi	$sp, $sp, 104
	jal	check_all_inside.2818
	subi	$sp, $sp, 104
	lw	$ra, 100($sp)
	move	$a0, $v0
	li	$a1, 0
	bne	$a0, $a1, bne_else.9033
	j	bne_cont.9034
bne_else.9033:
	lw	$a0, 20($sp)
	flw	$f0, 88($sp)
	fsw	$f0, 0($a0)
	flw	$f0, 80($sp)
	flw	$f1, 72($sp)
	flw	$f2, 64($sp)
	lw	$a0, 8($sp)
	sw	$ra, 100($sp)
	addi	$sp, $sp, 104
	jal	vecset.2555
	subi	$sp, $sp, 104
	lw	$ra, 100($sp)
	fmove	$f30, $fv
	lw	$a0, 4($sp)
	lw	$a1, 48($sp)
	sw	$a1, 0($a0)
	lw	$a0, 0($sp)
	lw	$a1, 52($sp)
	sw	$a1, 0($a0)
bne_cont.9034:
bne_cont.9032:
bne_cont.9030:
	lw	$a0, 40($sp)
	addi	$a0, $a0, 1
	lw	$a1, 32($sp)
	lw	$a2, 28($sp)
	lw	$a26, 36($sp)
	lw	$a25, 0($a26)
	j	solve_each_element.2833
solve_one_or_network.2837:
	lw	$a3, 8($a26)
	lw	$a4, 4($a26)
	sll	$a5, $a0, 2
	add	$a5, $a1, $a5
	lw	$a5, 0($a5)
	li	$a6, -1
	bne	$a5, $a6, beq_else.9035
	jr	$ra
beq_else.9035:
	sll	$a5, $a5, 2
	add	$a5, $a4, $a5
	lw	$a4, 0($a5)
	li	$a5, 0
	sw	$a2, 0($sp)
	sw	$a1, 4($sp)
	sw	$a26, 8($sp)
	sw	$a0, 12($sp)
	move	$a1, $a4
	move	$a0, $a5
	move	$a26, $a3
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	solve_each_element.2833
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	fmove	$f30, $fv
	lw	$a0, 12($sp)
	addi	$a0, $a0, 1
	lw	$a1, 4($sp)
	lw	$a2, 0($sp)
	lw	$a26, 8($sp)
	lw	$a25, 0($a26)
	j	solve_one_or_network.2837
trace_or_matrix.2841:
	lw	$a3, 20($a26)
	lw	$a4, 16($a26)
	lw	$a5, 12($a26)
	lw	$a6, 8($a26)
	lw	$a7, 4($a26)
	sll	$a8, $a0, 2
	add	$a8, $a1, $a8
	lw	$a8, 0($a8)
	lw	$a9, 0($a8)
	li	$a10, -1
	bne	$a9, $a10, beq_else.9037
	jr	$ra
beq_else.9037:
	li	$a10, 99
	sw	$a2, 0($sp)
	sw	$a1, 4($sp)
	sw	$a26, 8($sp)
	sw	$a0, 12($sp)
	bne	$a9, $a10, bne_else.9039
	li	$a3, 1
	move	$a1, $a8
	move	$a0, $a3
	move	$a26, $a7
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	solve_one_or_network.2837
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	fmove	$f30, $fv
	j	bne_cont.9040
bne_else.9039:
	sw	$a8, 16($sp)
	sw	$a7, 20($sp)
	sw	$a3, 24($sp)
	sw	$a5, 28($sp)
	move	$a1, $a2
	move	$a0, $a9
	move	$a26, $a6
	move	$a2, $a4
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	solver.2735
	subi	$sp, $sp, 40
	lw	$ra, 36($sp)
	move	$a0, $v0
	li	$a1, 0
	bne	$a0, $a1, bne_else.9041
	j	bne_cont.9042
bne_else.9041:
	lw	$a0, 28($sp)
	flw	$f0, 0($a0)
	lw	$a0, 24($sp)
	flw	$f1, 0($a0)
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	fless.2528
	subi	$sp, $sp, 40
	lw	$ra, 36($sp)
	move	$a0, $v0
	li	$a1, 0
	bne	$a0, $a1, bne_else.9043
	j	bne_cont.9044
bne_else.9043:
	li	$a0, 1
	lw	$a1, 16($sp)
	lw	$a2, 0($sp)
	lw	$a26, 20($sp)
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	solve_one_or_network.2837
	subi	$sp, $sp, 40
	lw	$ra, 36($sp)
	fmove	$f30, $fv
bne_cont.9044:
bne_cont.9042:
bne_cont.9040:
	lw	$a0, 12($sp)
	addi	$a0, $a0, 1
	lw	$a1, 4($sp)
	lw	$a2, 0($sp)
	lw	$a26, 8($sp)
	lw	$a25, 0($a26)
	j	trace_or_matrix.2841
judge_intersection.2845:
	lw	$a1, 12($a26)
	lw	$a2, 8($a26)
	lw	$a3, 4($a26)
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	l.6502
	subi	$sp, $sp, 8
	lw	$ra, 4($sp)
	mtc1	$f0, $a25
	fsw	$f0, 0($a2)
	li	$a4, 0
	lw	$a3, 0($a3)
	sw	$a2, 0($sp)
	move	$a2, $a0
	move	$a26, $a1
	move	$a1, $a3
	move	$a0, $a4
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	trace_or_matrix.2841
	subi	$sp, $sp, 8
	lw	$ra, 4($sp)
	fmove	$f30, $fv
	lw	$a0, 0($sp)
	flw	$f1, 0($a0)
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	l.6482
	subi	$sp, $sp, 8
	lw	$ra, 4($sp)
	mtc1	$f0, $a25
	fsw	$f1, 8($sp)
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	fless.2528
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	move	$a0, $v0
	li	$a1, 0
	bne	$a0, $a1, beq_else.9046
	li	$v0, 0
	jr	$ra
beq_else.9046:
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	l.6506
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	mtc1	$f1, $a25
	flw	$f0, 8($sp)
	j	fless.2528
solve_each_element_fast.2847:
	lw	$a3, 36($a26)
	lw	$a4, 32($a26)
	lw	$a5, 28($a26)
	lw	$a6, 24($a26)
	lw	$a7, 20($a26)
	lw	$a8, 16($a26)
	lw	$a9, 12($a26)
	lw	$a10, 8($a26)
	lw	$a11, 4($a26)
	sw	$a8, 0($sp)
	sw	$a10, 4($sp)
	sw	$a9, 8($sp)
	sw	$a11, 12($sp)
	sw	$a4, 16($sp)
	sw	$a3, 20($sp)
	sw	$a6, 24($sp)
	sw	$a26, 28($sp)
	sw	$a7, 32($sp)
	sw	$a2, 36($sp)
	sw	$a5, 40($sp)
	sw	$a1, 44($sp)
	sw	$a0, 48($sp)
	move	$a0, $a2
	sw	$ra, 52($sp)
	addi	$sp, $sp, 56
	jal	d_vec.2662
	subi	$sp, $sp, 56
	lw	$ra, 52($sp)
	move	$a0, $v0
	lw	$a1, 48($sp)
	sll	$a2, $a1, 2
	lw	$a3, 44($sp)
	add	$a2, $a3, $a2
	lw	$a2, 0($a2)
	li	$a4, -1
	bne	$a2, $a4, beq_else.9047
	jr	$ra
beq_else.9047:
	lw	$a4, 36($sp)
	lw	$a26, 40($sp)
	sw	$a0, 52($sp)
	sw	$a2, 56($sp)
	move	$a1, $a4
	move	$a0, $a2
	sw	$ra, 60($sp)
	addi	$sp, $sp, 64
	jal	solver_fast2.2776
	subi	$sp, $sp, 64
	lw	$ra, 60($sp)
	move	$a0, $v0
	li	$a1, 0
	bne	$a0, $a1, beq_else.9049
	lw	$a0, 56($sp)
	sll	$a0, $a0, 2
	lw	$a1, 32($sp)
	add	$a0, $a1, $a0
	lw	$a0, 0($a0)
	sw	$ra, 60($sp)
	addi	$sp, $sp, 64
	jal	o_isinvert.2607
	subi	$sp, $sp, 64
	lw	$ra, 60($sp)
	move	$a0, $v0
	li	$a1, 0
	bne	$a0, $a1, beq_else.9050
	jr	$ra
beq_else.9050:
	lw	$a0, 48($sp)
	addi	$a0, $a0, 1
	lw	$a1, 44($sp)
	lw	$a2, 36($sp)
	lw	$a26, 28($sp)
	lw	$a25, 0($a26)
	j	solve_each_element_fast.2847
beq_else.9049:
	lw	$a1, 24($sp)
	flw	$f1, 0($a1)
	sw	$ra, 60($sp)
	addi	$sp, $sp, 64
	jal	l.6149
	subi	$sp, $sp, 64
	lw	$ra, 60($sp)
	mtc1	$f0, $a25
	sw	$a0, 60($sp)
	fsw	$f1, 64($sp)
	sw	$ra, 76($sp)
	addi	$sp, $sp, 80
	jal	fless.2528
	subi	$sp, $sp, 80
	lw	$ra, 76($sp)
	move	$a0, $v0
	li	$a1, 0
	bne	$a0, $a1, bne_else.9052
	j	bne_cont.9053
bne_else.9052:
	lw	$a0, 20($sp)
	flw	$f1, 0($a0)
	flw	$f0, 64($sp)
	sw	$ra, 76($sp)
	addi	$sp, $sp, 80
	jal	fless.2528
	subi	$sp, $sp, 80
	lw	$ra, 76($sp)
	move	$a0, $v0
	li	$a1, 0
	bne	$a0, $a1, bne_else.9054
	j	bne_cont.9055
bne_else.9054:
	sw	$ra, 76($sp)
	addi	$sp, $sp, 80
	jal	l.6469
	subi	$sp, $sp, 80
	lw	$ra, 76($sp)
	mtc1	$f0, $a25
	flw	$f1, 64($sp)
	fadd	$f0, $f1, $f0
	lw	$a0, 52($sp)
	flw	$f1, 0($a0)
	fmul	$f1, $f1, $f0
	lw	$a1, 16($sp)
	flw	$f2, 0($a1)
	fadd	$f1, $f1, $f2
	flw	$f2, 4($a0)
	fmul	$f2, $f2, $f0
	flw	$f3, 4($a1)
	fadd	$f2, $f2, $f3
	flw	$f3, 8($a0)
	fmul	$f3, $f3, $f0
	flw	$f4, 8($a1)
	fadd	$f3, $f3, $f4
	li	$a0, 0
	lw	$a1, 44($sp)
	lw	$a26, 12($sp)
	fsw	$f3, 72($sp)
	fsw	$f2, 80($sp)
	fsw	$f1, 88($sp)
	fsw	$f0, 96($sp)
	fmove	$f0, $f1
	fmove	$f1, $f2
	fmove	$f2, $f3
	sw	$ra, 108($sp)
	addi	$sp, $sp, 112
	jal	check_all_inside.2818
	subi	$sp, $sp, 112
	lw	$ra, 108($sp)
	move	$a0, $v0
	li	$a1, 0
	bne	$a0, $a1, bne_else.9056
	j	bne_cont.9057
bne_else.9056:
	lw	$a0, 20($sp)
	flw	$f0, 96($sp)
	fsw	$f0, 0($a0)
	flw	$f0, 88($sp)
	flw	$f1, 80($sp)
	flw	$f2, 72($sp)
	lw	$a0, 8($sp)
	sw	$ra, 108($sp)
	addi	$sp, $sp, 112
	jal	vecset.2555
	subi	$sp, $sp, 112
	lw	$ra, 108($sp)
	fmove	$f30, $fv
	lw	$a0, 4($sp)
	lw	$a1, 56($sp)
	sw	$a1, 0($a0)
	lw	$a0, 0($sp)
	lw	$a1, 60($sp)
	sw	$a1, 0($a0)
bne_cont.9057:
bne_cont.9055:
bne_cont.9053:
	lw	$a0, 48($sp)
	addi	$a0, $a0, 1
	lw	$a1, 44($sp)
	lw	$a2, 36($sp)
	lw	$a26, 28($sp)
	lw	$a25, 0($a26)
	j	solve_each_element_fast.2847
solve_one_or_network_fast.2851:
	lw	$a3, 8($a26)
	lw	$a4, 4($a26)
	sll	$a5, $a0, 2
	add	$a5, $a1, $a5
	lw	$a5, 0($a5)
	li	$a6, -1
	bne	$a5, $a6, beq_else.9058
	jr	$ra
beq_else.9058:
	sll	$a5, $a5, 2
	add	$a5, $a4, $a5
	lw	$a4, 0($a5)
	li	$a5, 0
	sw	$a2, 0($sp)
	sw	$a1, 4($sp)
	sw	$a26, 8($sp)
	sw	$a0, 12($sp)
	move	$a1, $a4
	move	$a0, $a5
	move	$a26, $a3
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	solve_each_element_fast.2847
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	fmove	$f30, $fv
	lw	$a0, 12($sp)
	addi	$a0, $a0, 1
	lw	$a1, 4($sp)
	lw	$a2, 0($sp)
	lw	$a26, 8($sp)
	lw	$a25, 0($a26)
	j	solve_one_or_network_fast.2851
trace_or_matrix_fast.2855:
	lw	$a3, 16($a26)
	lw	$a4, 12($a26)
	lw	$a5, 8($a26)
	lw	$a6, 4($a26)
	sll	$a7, $a0, 2
	add	$a7, $a1, $a7
	lw	$a7, 0($a7)
	lw	$a8, 0($a7)
	li	$a9, -1
	bne	$a8, $a9, beq_else.9060
	jr	$ra
beq_else.9060:
	li	$a9, 99
	sw	$a2, 0($sp)
	sw	$a1, 4($sp)
	sw	$a26, 8($sp)
	sw	$a0, 12($sp)
	bne	$a8, $a9, bne_else.9062
	li	$a3, 1
	move	$a1, $a7
	move	$a0, $a3
	move	$a26, $a6
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	solve_one_or_network_fast.2851
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	fmove	$f30, $fv
	j	bne_cont.9063
bne_else.9062:
	sw	$a7, 16($sp)
	sw	$a6, 20($sp)
	sw	$a3, 24($sp)
	sw	$a5, 28($sp)
	move	$a1, $a2
	move	$a0, $a8
	move	$a26, $a4
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	solver_fast2.2776
	subi	$sp, $sp, 40
	lw	$ra, 36($sp)
	move	$a0, $v0
	li	$a1, 0
	bne	$a0, $a1, bne_else.9064
	j	bne_cont.9065
bne_else.9064:
	lw	$a0, 28($sp)
	flw	$f0, 0($a0)
	lw	$a0, 24($sp)
	flw	$f1, 0($a0)
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	fless.2528
	subi	$sp, $sp, 40
	lw	$ra, 36($sp)
	move	$a0, $v0
	li	$a1, 0
	bne	$a0, $a1, bne_else.9066
	j	bne_cont.9067
bne_else.9066:
	li	$a0, 1
	lw	$a1, 16($sp)
	lw	$a2, 0($sp)
	lw	$a26, 20($sp)
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	solve_one_or_network_fast.2851
	subi	$sp, $sp, 40
	lw	$ra, 36($sp)
	fmove	$f30, $fv
bne_cont.9067:
bne_cont.9065:
bne_cont.9063:
	lw	$a0, 12($sp)
	addi	$a0, $a0, 1
	lw	$a1, 4($sp)
	lw	$a2, 0($sp)
	lw	$a26, 8($sp)
	lw	$a25, 0($a26)
	j	trace_or_matrix_fast.2855
judge_intersection_fast.2859:
	lw	$a1, 12($a26)
	lw	$a2, 8($a26)
	lw	$a3, 4($a26)
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	l.6502
	subi	$sp, $sp, 8
	lw	$ra, 4($sp)
	mtc1	$f0, $a25
	fsw	$f0, 0($a2)
	li	$a4, 0
	lw	$a3, 0($a3)
	sw	$a2, 0($sp)
	move	$a2, $a0
	move	$a26, $a1
	move	$a1, $a3
	move	$a0, $a4
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	trace_or_matrix_fast.2855
	subi	$sp, $sp, 8
	lw	$ra, 4($sp)
	fmove	$f30, $fv
	lw	$a0, 0($sp)
	flw	$f1, 0($a0)
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	l.6482
	subi	$sp, $sp, 8
	lw	$ra, 4($sp)
	mtc1	$f0, $a25
	fsw	$f1, 8($sp)
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	fless.2528
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	move	$a0, $v0
	li	$a1, 0
	bne	$a0, $a1, beq_else.9069
	li	$v0, 0
	jr	$ra
beq_else.9069:
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	l.6506
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	mtc1	$f1, $a25
	flw	$f0, 8($sp)
	j	fless.2528
get_nvector_rect.2861:
	lw	$a1, 8($a26)
	lw	$a2, 4($a26)
	lw	$a2, 0($a2)
	sw	$a1, 0($sp)
	sw	$a0, 4($sp)
	sw	$a2, 8($sp)
	move	$a0, $a1
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	vecbzero.2563
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	fmove	$f30, $fv
	lw	$a0, 8($sp)
	subi	$a1, $a0, 1
	subi	$a0, $a0, 1
	sll	$a0, $a0, 2
	lw	$a2, 4($sp)
	add	$a0, $a2, $a0
	flw	$f0, 0($a0)
	sw	$a1, 12($sp)
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	sgn.2547
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	fmove	$f0, $fv
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	fneg.2514
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	fmove	$f0, $fv
	lw	$a0, 12($sp)
	sll	$a0, $a0, 2
	lw	$a1, 0($sp)
	add	$a0, $a1, $a0
	fsw	$f0, 0($a0)
	jr	$ra
get_nvector_plane.2863:
	lw	$a1, 4($a26)
	sw	$a0, 0($sp)
	sw	$a1, 4($sp)
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	o_param_a.2611
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	fmove	$f0, $fv
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	fneg.2514
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	fmove	$f0, $fv
	lw	$a0, 4($sp)
	fsw	$f0, 0($a0)
	lw	$a1, 0($sp)
	move	$a0, $a1
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	o_param_b.2613
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	fmove	$f0, $fv
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	fneg.2514
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	fmove	$f0, $fv
	lw	$a0, 4($sp)
	fsw	$f0, 4($a0)
	lw	$a1, 0($sp)
	move	$a0, $a1
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	o_param_c.2615
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	fmove	$f0, $fv
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	fneg.2514
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	fmove	$f0, $fv
	lw	$a0, 4($sp)
	fsw	$f0, 8($a0)
	jr	$ra
get_nvector_second.2865:
	lw	$a1, 8($a26)
	lw	$a2, 4($a26)
	flw	$f0, 0($a2)
	sw	$a1, 0($sp)
	sw	$a0, 4($sp)
	sw	$a2, 8($sp)
	fsw	$f0, 16($sp)
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	o_param_x.2619
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	fmove	$f0, $fv
	flw	$f1, 16($sp)
	fsub	$f0, $f1, $f0
	lw	$a0, 8($sp)
	flw	$f1, 4($a0)
	lw	$a1, 4($sp)
	fsw	$f0, 24($sp)
	fsw	$f1, 32($sp)
	move	$a0, $a1
	sw	$ra, 44($sp)
	addi	$sp, $sp, 48
	jal	o_param_y.2621
	subi	$sp, $sp, 48
	lw	$ra, 44($sp)
	fmove	$f0, $fv
	flw	$f1, 32($sp)
	fsub	$f0, $f1, $f0
	lw	$a0, 8($sp)
	flw	$f1, 8($a0)
	lw	$a0, 4($sp)
	fsw	$f0, 40($sp)
	fsw	$f1, 48($sp)
	sw	$ra, 60($sp)
	addi	$sp, $sp, 64
	jal	o_param_z.2623
	subi	$sp, $sp, 64
	lw	$ra, 60($sp)
	fmove	$f0, $fv
	flw	$f1, 48($sp)
	fsub	$f0, $f1, $f0
	lw	$a0, 4($sp)
	fsw	$f0, 56($sp)
	sw	$ra, 68($sp)
	addi	$sp, $sp, 72
	jal	o_param_a.2611
	subi	$sp, $sp, 72
	lw	$ra, 68($sp)
	fmove	$f0, $fv
	flw	$f1, 24($sp)
	fmul	$f0, $f1, $f0
	lw	$a0, 4($sp)
	fsw	$f0, 64($sp)
	sw	$ra, 76($sp)
	addi	$sp, $sp, 80
	jal	o_param_b.2613
	subi	$sp, $sp, 80
	lw	$ra, 76($sp)
	fmove	$f0, $fv
	flw	$f1, 40($sp)
	fmul	$f0, $f1, $f0
	lw	$a0, 4($sp)
	fsw	$f0, 72($sp)
	sw	$ra, 84($sp)
	addi	$sp, $sp, 88
	jal	o_param_c.2615
	subi	$sp, $sp, 88
	lw	$ra, 84($sp)
	fmove	$f0, $fv
	flw	$f1, 56($sp)
	fmul	$f0, $f1, $f0
	lw	$a0, 4($sp)
	fsw	$f0, 80($sp)
	sw	$ra, 92($sp)
	addi	$sp, $sp, 96
	jal	o_isrot.2609
	subi	$sp, $sp, 96
	lw	$ra, 92($sp)
	move	$a0, $v0
	li	$a1, 0
	bne	$a0, $a1, bne_else.9073
	lw	$a0, 0($sp)
	flw	$f0, 64($sp)
	fsw	$f0, 0($a0)
	flw	$f0, 72($sp)
	fsw	$f0, 4($a0)
	flw	$f0, 80($sp)
	fsw	$f0, 8($a0)
	j	bne_cont.9074
bne_else.9073:
	lw	$a0, 4($sp)
	sw	$ra, 92($sp)
	addi	$sp, $sp, 96
	jal	o_param_r3.2639
	subi	$sp, $sp, 96
	lw	$ra, 92($sp)
	fmove	$f0, $fv
	flw	$f1, 40($sp)
	fmul	$f0, $f1, $f0
	lw	$a0, 4($sp)
	fsw	$f0, 88($sp)
	sw	$ra, 100($sp)
	addi	$sp, $sp, 104
	jal	o_param_r2.2637
	subi	$sp, $sp, 104
	lw	$ra, 100($sp)
	fmove	$f0, $fv
	flw	$f1, 56($sp)
	fmul	$f0, $f1, $f0
	flw	$f2, 88($sp)
	fadd	$f0, $f2, $f0
	sw	$ra, 100($sp)
	addi	$sp, $sp, 104
	jal	fhalf.2522
	subi	$sp, $sp, 104
	lw	$ra, 100($sp)
	fmove	$f0, $fv
	flw	$f1, 64($sp)
	fadd	$f0, $f1, $f0
	lw	$a0, 0($sp)
	fsw	$f0, 0($a0)
	lw	$a1, 4($sp)
	move	$a0, $a1
	sw	$ra, 100($sp)
	addi	$sp, $sp, 104
	jal	o_param_r3.2639
	subi	$sp, $sp, 104
	lw	$ra, 100($sp)
	fmove	$f0, $fv
	flw	$f1, 24($sp)
	fmul	$f0, $f1, $f0
	lw	$a0, 4($sp)
	fsw	$f0, 96($sp)
	sw	$ra, 108($sp)
	addi	$sp, $sp, 112
	jal	o_param_r1.2635
	subi	$sp, $sp, 112
	lw	$ra, 108($sp)
	fmove	$f0, $fv
	flw	$f1, 56($sp)
	fmul	$f0, $f1, $f0
	flw	$f1, 96($sp)
	fadd	$f0, $f1, $f0
	sw	$ra, 108($sp)
	addi	$sp, $sp, 112
	jal	fhalf.2522
	subi	$sp, $sp, 112
	lw	$ra, 108($sp)
	fmove	$f0, $fv
	flw	$f1, 72($sp)
	fadd	$f0, $f1, $f0
	lw	$a0, 0($sp)
	fsw	$f0, 4($a0)
	lw	$a1, 4($sp)
	move	$a0, $a1
	sw	$ra, 108($sp)
	addi	$sp, $sp, 112
	jal	o_param_r2.2637
	subi	$sp, $sp, 112
	lw	$ra, 108($sp)
	fmove	$f0, $fv
	flw	$f1, 24($sp)
	fmul	$f0, $f1, $f0
	lw	$a0, 4($sp)
	fsw	$f0, 104($sp)
	sw	$ra, 116($sp)
	addi	$sp, $sp, 120
	jal	o_param_r1.2635
	subi	$sp, $sp, 120
	lw	$ra, 116($sp)
	fmove	$f0, $fv
	flw	$f1, 40($sp)
	fmul	$f0, $f1, $f0
	flw	$f1, 104($sp)
	fadd	$f0, $f1, $f0
	sw	$ra, 116($sp)
	addi	$sp, $sp, 120
	jal	fhalf.2522
	subi	$sp, $sp, 120
	lw	$ra, 116($sp)
	fmove	$f0, $fv
	flw	$f1, 80($sp)
	fadd	$f0, $f1, $f0
	lw	$a0, 0($sp)
	fsw	$f0, 8($a0)
bne_cont.9074:
	lw	$a1, 4($sp)
	move	$a0, $a1
	sw	$ra, 116($sp)
	addi	$sp, $sp, 120
	jal	o_isinvert.2607
	subi	$sp, $sp, 120
	lw	$ra, 116($sp)
	move	$a1, $v0
	lw	$a0, 0($sp)
	j	vecunit_sgn.2573
get_nvector.2867:
	lw	$a2, 12($a26)
	lw	$a3, 8($a26)
	lw	$a4, 4($a26)
	sw	$a2, 0($sp)
	sw	$a0, 4($sp)
	sw	$a4, 8($sp)
	sw	$a1, 12($sp)
	sw	$a3, 16($sp)
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	o_form.2603
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	move	$a0, $v0
	li	$a1, 1
	bne	$a0, $a1, beq_else.9075
	lw	$a0, 12($sp)
	lw	$a26, 16($sp)
	lw	$a25, 0($a26)
	j	get_nvector_rect.2861
beq_else.9075:
	li	$a1, 2
	bne	$a0, $a1, beq_else.9076
	lw	$a0, 4($sp)
	lw	$a26, 8($sp)
	lw	$a25, 0($a26)
	j	get_nvector_plane.2863
beq_else.9076:
	lw	$a0, 4($sp)
	lw	$a26, 0($sp)
	lw	$a25, 0($a26)
	j	get_nvector_second.2865
utexture.2870:
	lw	$a2, 4($a26)
	sw	$a1, 0($sp)
	sw	$a2, 4($sp)
	sw	$a0, 8($sp)
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	o_texturetype.2601
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	move	$a0, $v0
	lw	$a1, 8($sp)
	sw	$a0, 12($sp)
	move	$a0, $a1
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	o_color_red.2629
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	fmove	$f0, $fv
	lw	$a0, 4($sp)
	fsw	$f0, 0($a0)
	lw	$a1, 8($sp)
	move	$a0, $a1
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	o_color_green.2631
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	fmove	$f0, $fv
	lw	$a0, 4($sp)
	fsw	$f0, 4($a0)
	lw	$a1, 8($sp)
	move	$a0, $a1
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	o_color_blue.2633
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	fmove	$f0, $fv
	lw	$a0, 4($sp)
	fsw	$f0, 8($a0)
	li	$a1, 1
	lw	$a2, 12($sp)
	bne	$a2, $a1, beq_else.9077
	lw	$a1, 0($sp)
	flw	$f0, 0($a1)
	lw	$a2, 8($sp)
	fsw	$f0, 16($sp)
	move	$a0, $a2
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	o_param_x.2619
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	fmove	$f0, $fv
	flw	$f1, 16($sp)
	fsub	$f0, $f1, $f0
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	l.6568
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	mtc1	$f1, $a25
	fmul	$f1, $f0, $f1
	fsw	$f0, 24($sp)
	fmove	$f0, $f1
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	floor.2535
	subi	$sp, $sp, 40
	lw	$ra, 36($sp)
	fmove	$f0, $fv
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	l.6569
	subi	$sp, $sp, 40
	lw	$ra, 36($sp)
	mtc1	$f1, $a25
	fmul	$f0, $f0, $f1
	flw	$f1, 24($sp)
	fsub	$f0, $f1, $f0
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	l.6560
	subi	$sp, $sp, 40
	lw	$ra, 36($sp)
	mtc1	$f1, $a25
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	fless.2528
	subi	$sp, $sp, 40
	lw	$ra, 36($sp)
	move	$a0, $v0
	lw	$a1, 0($sp)
	flw	$f0, 8($a1)
	lw	$a1, 8($sp)
	sw	$a0, 32($sp)
	fsw	$f0, 40($sp)
	move	$a0, $a1
	sw	$ra, 52($sp)
	addi	$sp, $sp, 56
	jal	o_param_z.2623
	subi	$sp, $sp, 56
	lw	$ra, 52($sp)
	fmove	$f0, $fv
	flw	$f1, 40($sp)
	fsub	$f0, $f1, $f0
	sw	$ra, 52($sp)
	addi	$sp, $sp, 56
	jal	l.6568
	subi	$sp, $sp, 56
	lw	$ra, 52($sp)
	mtc1	$f1, $a25
	fmul	$f1, $f0, $f1
	fsw	$f0, 48($sp)
	fmove	$f0, $f1
	sw	$ra, 60($sp)
	addi	$sp, $sp, 64
	jal	floor.2535
	subi	$sp, $sp, 64
	lw	$ra, 60($sp)
	fmove	$f0, $fv
	sw	$ra, 60($sp)
	addi	$sp, $sp, 64
	jal	l.6569
	subi	$sp, $sp, 64
	lw	$ra, 60($sp)
	mtc1	$f1, $a25
	fmul	$f0, $f0, $f1
	flw	$f1, 48($sp)
	fsub	$f0, $f1, $f0
	sw	$ra, 60($sp)
	addi	$sp, $sp, 64
	jal	l.6560
	subi	$sp, $sp, 64
	lw	$ra, 60($sp)
	mtc1	$f1, $a25
	sw	$ra, 60($sp)
	addi	$sp, $sp, 64
	jal	fless.2528
	subi	$sp, $sp, 64
	lw	$ra, 60($sp)
	move	$a0, $v0
	li	$a1, 0
	lw	$a2, 32($sp)
	bne	$a2, $a1, bne_else.9079
	li	$a1, 0
	bne	$a0, $a1, bne_else.9081
	sw	$ra, 60($sp)
	addi	$sp, $sp, 64
	jal	l.6555
	subi	$sp, $sp, 64
	lw	$ra, 60($sp)
	mtc1	$f0, $a25
	j	bne_cont.9082
bne_else.9081:
	sw	$ra, 60($sp)
	addi	$sp, $sp, 64
	jal	l.6149
	subi	$sp, $sp, 64
	lw	$ra, 60($sp)
	mtc1	$f0, $a25
bne_cont.9082:
	j	bne_cont.9080
bne_else.9079:
	li	$a1, 0
	bne	$a0, $a1, bne_else.9083
	sw	$ra, 60($sp)
	addi	$sp, $sp, 64
	jal	l.6149
	subi	$sp, $sp, 64
	lw	$ra, 60($sp)
	mtc1	$f0, $a25
	j	bne_cont.9084
bne_else.9083:
	sw	$ra, 60($sp)
	addi	$sp, $sp, 64
	jal	l.6555
	subi	$sp, $sp, 64
	lw	$ra, 60($sp)
	mtc1	$f0, $a25
bne_cont.9084:
bne_cont.9080:
	lw	$a0, 4($sp)
	fsw	$f0, 4($a0)
	jr	$ra
beq_else.9077:
	li	$a1, 2
	bne	$a2, $a1, beq_else.9086
	lw	$a1, 0($sp)
	flw	$f0, 4($a1)
	sw	$ra, 60($sp)
	addi	$sp, $sp, 64
	jal	l.6564
	subi	$sp, $sp, 64
	lw	$ra, 60($sp)
	mtc1	$f1, $a25
	fmul	$f0, $f0, $f1
	sw	$ra, 60($sp)
	addi	$sp, $sp, 64
	jal	min_caml_sin
	subi	$sp, $sp, 64
	lw	$ra, 60($sp)
	fmove	$f0, $fv
	sw	$ra, 60($sp)
	addi	$sp, $sp, 64
	jal	fsqr.2524
	subi	$sp, $sp, 64
	lw	$ra, 60($sp)
	fmove	$f0, $fv
	sw	$ra, 60($sp)
	addi	$sp, $sp, 64
	jal	l.6555
	subi	$sp, $sp, 64
	lw	$ra, 60($sp)
	mtc1	$f1, $a25
	fmul	$f1, $f1, $f0
	lw	$a0, 4($sp)
	fsw	$f1, 0($a0)
	sw	$ra, 60($sp)
	addi	$sp, $sp, 64
	jal	l.6555
	subi	$sp, $sp, 64
	lw	$ra, 60($sp)
	mtc1	$f1, $a25
	sw	$ra, 60($sp)
	addi	$sp, $sp, 64
	jal	l.6152
	subi	$sp, $sp, 64
	lw	$ra, 60($sp)
	mtc1	$f2, $a25
	fsub	$f0, $f2, $f0
	fmul	$f0, $f1, $f0
	fsw	$f0, 4($a0)
	jr	$ra
beq_else.9086:
	li	$a1, 3
	bne	$a2, $a1, beq_else.9088
	lw	$a1, 0($sp)
	flw	$f0, 0($a1)
	lw	$a2, 8($sp)
	fsw	$f0, 56($sp)
	move	$a0, $a2
	sw	$ra, 68($sp)
	addi	$sp, $sp, 72
	jal	o_param_x.2619
	subi	$sp, $sp, 72
	lw	$ra, 68($sp)
	fmove	$f0, $fv
	flw	$f1, 56($sp)
	fsub	$f0, $f1, $f0
	lw	$a0, 0($sp)
	flw	$f1, 8($a0)
	lw	$a0, 8($sp)
	fsw	$f0, 64($sp)
	fsw	$f1, 72($sp)
	sw	$ra, 84($sp)
	addi	$sp, $sp, 88
	jal	o_param_z.2623
	subi	$sp, $sp, 88
	lw	$ra, 84($sp)
	fmove	$f0, $fv
	flw	$f1, 72($sp)
	fsub	$f0, $f1, $f0
	flw	$f1, 64($sp)
	fsw	$f0, 80($sp)
	fmove	$f0, $f1
	sw	$ra, 92($sp)
	addi	$sp, $sp, 96
	jal	fsqr.2524
	subi	$sp, $sp, 96
	lw	$ra, 92($sp)
	fmove	$f0, $fv
	flw	$f1, 80($sp)
	fsw	$f0, 88($sp)
	fmove	$f0, $f1
	sw	$ra, 100($sp)
	addi	$sp, $sp, 104
	jal	fsqr.2524
	subi	$sp, $sp, 104
	lw	$ra, 100($sp)
	fmove	$f0, $fv
	flw	$f1, 88($sp)
	fadd	$f0, $f1, $f0
	sw	$ra, 100($sp)
	addi	$sp, $sp, 104
	jal	min_caml_sqrt
	subi	$sp, $sp, 104
	lw	$ra, 100($sp)
	fmove	$f0, $fv
	sw	$ra, 100($sp)
	addi	$sp, $sp, 104
	jal	l.6560
	subi	$sp, $sp, 104
	lw	$ra, 100($sp)
	mtc1	$f1, $a25
	finv	$f1, $f1
	fmul	$f0, $f0, $f1
	fsw	$f0, 96($sp)
	sw	$ra, 108($sp)
	addi	$sp, $sp, 112
	jal	floor.2535
	subi	$sp, $sp, 112
	lw	$ra, 108($sp)
	fmove	$f0, $fv
	flw	$f1, 96($sp)
	fsub	$f0, $f1, $f0
	sw	$ra, 108($sp)
	addi	$sp, $sp, 112
	jal	l.6552
	subi	$sp, $sp, 112
	lw	$ra, 108($sp)
	mtc1	$f1, $a25
	fmul	$f0, $f0, $f1
	sw	$ra, 108($sp)
	addi	$sp, $sp, 112
	jal	min_caml_cos
	subi	$sp, $sp, 112
	lw	$ra, 108($sp)
	fmove	$f0, $fv
	sw	$ra, 108($sp)
	addi	$sp, $sp, 112
	jal	fsqr.2524
	subi	$sp, $sp, 112
	lw	$ra, 108($sp)
	fmove	$f0, $fv
	sw	$ra, 108($sp)
	addi	$sp, $sp, 112
	jal	l.6555
	subi	$sp, $sp, 112
	lw	$ra, 108($sp)
	mtc1	$f1, $a25
	fmul	$f1, $f0, $f1
	lw	$a0, 4($sp)
	fsw	$f1, 4($a0)
	sw	$ra, 108($sp)
	addi	$sp, $sp, 112
	jal	l.6152
	subi	$sp, $sp, 112
	lw	$ra, 108($sp)
	mtc1	$f1, $a25
	fsub	$f0, $f1, $f0
	sw	$ra, 108($sp)
	addi	$sp, $sp, 112
	jal	l.6555
	subi	$sp, $sp, 112
	lw	$ra, 108($sp)
	mtc1	$f1, $a25
	fmul	$f0, $f0, $f1
	fsw	$f0, 8($a0)
	jr	$ra
beq_else.9088:
	li	$a1, 4
	bne	$a2, $a1, beq_else.9090
	lw	$a1, 0($sp)
	flw	$f0, 0($a1)
	lw	$a2, 8($sp)
	fsw	$f0, 104($sp)
	move	$a0, $a2
	sw	$ra, 116($sp)
	addi	$sp, $sp, 120
	jal	o_param_x.2619
	subi	$sp, $sp, 120
	lw	$ra, 116($sp)
	fmove	$f0, $fv
	flw	$f1, 104($sp)
	fsub	$f0, $f1, $f0
	lw	$a0, 8($sp)
	fsw	$f0, 112($sp)
	sw	$ra, 124($sp)
	addi	$sp, $sp, 128
	jal	o_param_a.2611
	subi	$sp, $sp, 128
	lw	$ra, 124($sp)
	fmove	$f0, $fv
	sw	$ra, 124($sp)
	addi	$sp, $sp, 128
	jal	min_caml_sqrt
	subi	$sp, $sp, 128
	lw	$ra, 124($sp)
	fmove	$f0, $fv
	flw	$f1, 112($sp)
	fmul	$f0, $f1, $f0
	lw	$a0, 0($sp)
	flw	$f1, 8($a0)
	lw	$a1, 8($sp)
	fsw	$f0, 120($sp)
	fsw	$f1, 128($sp)
	move	$a0, $a1
	sw	$ra, 140($sp)
	addi	$sp, $sp, 144
	jal	o_param_z.2623
	subi	$sp, $sp, 144
	lw	$ra, 140($sp)
	fmove	$f0, $fv
	flw	$f1, 128($sp)
	fsub	$f0, $f1, $f0
	lw	$a0, 8($sp)
	fsw	$f0, 136($sp)
	sw	$ra, 148($sp)
	addi	$sp, $sp, 152
	jal	o_param_c.2615
	subi	$sp, $sp, 152
	lw	$ra, 148($sp)
	fmove	$f0, $fv
	sw	$ra, 148($sp)
	addi	$sp, $sp, 152
	jal	min_caml_sqrt
	subi	$sp, $sp, 152
	lw	$ra, 148($sp)
	fmove	$f0, $fv
	flw	$f1, 136($sp)
	fmul	$f0, $f1, $f0
	flw	$f1, 120($sp)
	fsw	$f0, 144($sp)
	fmove	$f0, $f1
	sw	$ra, 156($sp)
	addi	$sp, $sp, 160
	jal	fsqr.2524
	subi	$sp, $sp, 160
	lw	$ra, 156($sp)
	fmove	$f0, $fv
	flw	$f1, 144($sp)
	fsw	$f0, 152($sp)
	fmove	$f0, $f1
	sw	$ra, 164($sp)
	addi	$sp, $sp, 168
	jal	fsqr.2524
	subi	$sp, $sp, 168
	lw	$ra, 164($sp)
	fmove	$f0, $fv
	flw	$f1, 152($sp)
	fadd	$f0, $f1, $f0
	flw	$f1, 120($sp)
	fsw	$f0, 160($sp)
	fmove	$f0, $f1
	sw	$ra, 172($sp)
	addi	$sp, $sp, 176
	jal	fabs.2526
	subi	$sp, $sp, 176
	lw	$ra, 172($sp)
	fmove	$f0, $fv
	sw	$ra, 172($sp)
	addi	$sp, $sp, 176
	jal	l.6549
	subi	$sp, $sp, 176
	lw	$ra, 172($sp)
	mtc1	$f1, $a25
	sw	$ra, 172($sp)
	addi	$sp, $sp, 176
	jal	fless.2528
	subi	$sp, $sp, 176
	lw	$ra, 172($sp)
	move	$a0, $v0
	li	$a1, 0
	bne	$a0, $a1, bne_else.9091
	flw	$f0, 120($sp)
	finv	$f0, $f0
	flw	$f1, 144($sp)
	fmul	$f0, $f1, $f0
	sw	$ra, 172($sp)
	addi	$sp, $sp, 176
	jal	fabs.2526
	subi	$sp, $sp, 176
	lw	$ra, 172($sp)
	fmove	$f0, $fv
	sw	$ra, 172($sp)
	addi	$sp, $sp, 176
	jal	min_caml_atan
	subi	$sp, $sp, 176
	lw	$ra, 172($sp)
	fmove	$f0, $fv
	sw	$ra, 172($sp)
	addi	$sp, $sp, 176
	jal	l.6551
	subi	$sp, $sp, 176
	lw	$ra, 172($sp)
	mtc1	$f1, $a25
	fmul	$f0, $f0, $f1
	sw	$ra, 172($sp)
	addi	$sp, $sp, 176
	jal	l.6552
	subi	$sp, $sp, 176
	lw	$ra, 172($sp)
	mtc1	$f1, $a25
	finv	$f1, $f1
	fmul	$f0, $f0, $f1
	j	bne_cont.9092
bne_else.9091:
	sw	$ra, 172($sp)
	addi	$sp, $sp, 176
	jal	l.6550
	subi	$sp, $sp, 176
	lw	$ra, 172($sp)
	mtc1	$f0, $a25
bne_cont.9092:
	fsw	$f0, 168($sp)
	sw	$ra, 180($sp)
	addi	$sp, $sp, 184
	jal	floor.2535
	subi	$sp, $sp, 184
	lw	$ra, 180($sp)
	fmove	$f0, $fv
	flw	$f1, 168($sp)
	fsub	$f0, $f1, $f0
	lw	$a0, 0($sp)
	flw	$f1, 4($a0)
	lw	$a0, 8($sp)
	fsw	$f0, 176($sp)
	fsw	$f1, 184($sp)
	sw	$ra, 196($sp)
	addi	$sp, $sp, 200
	jal	o_param_y.2621
	subi	$sp, $sp, 200
	lw	$ra, 196($sp)
	fmove	$f0, $fv
	flw	$f1, 184($sp)
	fsub	$f0, $f1, $f0
	lw	$a0, 8($sp)
	fsw	$f0, 192($sp)
	sw	$ra, 204($sp)
	addi	$sp, $sp, 208
	jal	o_param_b.2613
	subi	$sp, $sp, 208
	lw	$ra, 204($sp)
	fmove	$f0, $fv
	sw	$ra, 204($sp)
	addi	$sp, $sp, 208
	jal	min_caml_sqrt
	subi	$sp, $sp, 208
	lw	$ra, 204($sp)
	fmove	$f0, $fv
	flw	$f1, 192($sp)
	fmul	$f0, $f1, $f0
	flw	$f1, 160($sp)
	fsw	$f0, 200($sp)
	fmove	$f0, $f1
	sw	$ra, 212($sp)
	addi	$sp, $sp, 216
	jal	fabs.2526
	subi	$sp, $sp, 216
	lw	$ra, 212($sp)
	fmove	$f0, $fv
	sw	$ra, 212($sp)
	addi	$sp, $sp, 216
	jal	l.6549
	subi	$sp, $sp, 216
	lw	$ra, 212($sp)
	mtc1	$f1, $a25
	sw	$ra, 212($sp)
	addi	$sp, $sp, 216
	jal	fless.2528
	subi	$sp, $sp, 216
	lw	$ra, 212($sp)
	move	$a0, $v0
	li	$a1, 0
	bne	$a0, $a1, bne_else.9093
	flw	$f0, 160($sp)
	finv	$f0, $f0
	flw	$f1, 200($sp)
	fmul	$f0, $f1, $f0
	sw	$ra, 212($sp)
	addi	$sp, $sp, 216
	jal	fabs.2526
	subi	$sp, $sp, 216
	lw	$ra, 212($sp)
	fmove	$f0, $fv
	sw	$ra, 212($sp)
	addi	$sp, $sp, 216
	jal	min_caml_atan
	subi	$sp, $sp, 216
	lw	$ra, 212($sp)
	fmove	$f0, $fv
	sw	$ra, 212($sp)
	addi	$sp, $sp, 216
	jal	l.6551
	subi	$sp, $sp, 216
	lw	$ra, 212($sp)
	mtc1	$f1, $a25
	fmul	$f0, $f0, $f1
	sw	$ra, 212($sp)
	addi	$sp, $sp, 216
	jal	l.6552
	subi	$sp, $sp, 216
	lw	$ra, 212($sp)
	mtc1	$f1, $a25
	finv	$f1, $f1
	fmul	$f0, $f0, $f1
	j	bne_cont.9094
bne_else.9093:
	sw	$ra, 212($sp)
	addi	$sp, $sp, 216
	jal	l.6550
	subi	$sp, $sp, 216
	lw	$ra, 212($sp)
	mtc1	$f0, $a25
bne_cont.9094:
	fsw	$f0, 208($sp)
	sw	$ra, 220($sp)
	addi	$sp, $sp, 224
	jal	floor.2535
	subi	$sp, $sp, 224
	lw	$ra, 220($sp)
	fmove	$f0, $fv
	flw	$f1, 208($sp)
	fsub	$f0, $f1, $f0
	sw	$ra, 220($sp)
	addi	$sp, $sp, 224
	jal	l.6554
	subi	$sp, $sp, 224
	lw	$ra, 220($sp)
	mtc1	$f1, $a25
	sw	$ra, 220($sp)
	addi	$sp, $sp, 224
	jal	l.6150
	subi	$sp, $sp, 224
	lw	$ra, 220($sp)
	mtc1	$f2, $a25
	flw	$f3, 176($sp)
	fsub	$f2, $f2, $f3
	fsw	$f0, 216($sp)
	fsw	$f1, 224($sp)
	fmove	$f0, $f2
	sw	$ra, 236($sp)
	addi	$sp, $sp, 240
	jal	fsqr.2524
	subi	$sp, $sp, 240
	lw	$ra, 236($sp)
	fmove	$f0, $fv
	flw	$f1, 224($sp)
	fsub	$f0, $f1, $f0
	sw	$ra, 236($sp)
	addi	$sp, $sp, 240
	jal	l.6150
	subi	$sp, $sp, 240
	lw	$ra, 236($sp)
	mtc1	$f1, $a25
	flw	$f2, 216($sp)
	fsub	$f1, $f1, $f2
	fsw	$f0, 232($sp)
	fmove	$f0, $f1
	sw	$ra, 244($sp)
	addi	$sp, $sp, 248
	jal	fsqr.2524
	subi	$sp, $sp, 248
	lw	$ra, 244($sp)
	fmove	$f0, $fv
	flw	$f1, 232($sp)
	fsub	$f0, $f1, $f0
	fsw	$f0, 240($sp)
	sw	$ra, 252($sp)
	addi	$sp, $sp, 256
	jal	fisneg.2518
	subi	$sp, $sp, 256
	lw	$ra, 252($sp)
	move	$a0, $v0
	li	$a1, 0
	bne	$a0, $a1, bne_else.9095
	flw	$f0, 240($sp)
	j	bne_cont.9096
bne_else.9095:
	sw	$ra, 252($sp)
	addi	$sp, $sp, 256
	jal	l.6149
	subi	$sp, $sp, 256
	lw	$ra, 252($sp)
	mtc1	$f0, $a25
bne_cont.9096:
	sw	$ra, 252($sp)
	addi	$sp, $sp, 256
	jal	l.6555
	subi	$sp, $sp, 256
	lw	$ra, 252($sp)
	mtc1	$f1, $a25
	fmul	$f0, $f1, $f0
	sw	$ra, 252($sp)
	addi	$sp, $sp, 256
	jal	l.6556
	subi	$sp, $sp, 256
	lw	$ra, 252($sp)
	mtc1	$f1, $a25
	finv	$f1, $f1
	fmul	$f0, $f0, $f1
	lw	$a0, 4($sp)
	fsw	$f0, 8($a0)
	jr	$ra
beq_else.9090:
	jr	$ra
add_light.2873:
	lw	$a0, 8($a26)
	lw	$a1, 4($a26)
	fsw	$f2, 0($sp)
	fsw	$f1, 8($sp)
	fsw	$f0, 16($sp)
	sw	$a0, 24($sp)
	sw	$a1, 28($sp)
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	fispos.2516
	subi	$sp, $sp, 40
	lw	$ra, 36($sp)
	move	$a0, $v0
	li	$a1, 0
	bne	$a0, $a1, bne_else.9099
	j	bne_cont.9100
bne_else.9099:
	flw	$f0, 16($sp)
	lw	$a0, 28($sp)
	lw	$a1, 24($sp)
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	vecaccum.2584
	subi	$sp, $sp, 40
	lw	$ra, 36($sp)
	fmove	$f30, $fv
bne_cont.9100:
	flw	$f0, 8($sp)
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	fispos.2516
	subi	$sp, $sp, 40
	lw	$ra, 36($sp)
	move	$a0, $v0
	li	$a1, 0
	bne	$a0, $a1, beq_else.9101
	jr	$ra
beq_else.9101:
	flw	$f0, 8($sp)
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	fsqr.2524
	subi	$sp, $sp, 40
	lw	$ra, 36($sp)
	fmove	$f0, $fv
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	fsqr.2524
	subi	$sp, $sp, 40
	lw	$ra, 36($sp)
	fmove	$f0, $fv
	flw	$f1, 0($sp)
	fmul	$f0, $f0, $f1
	lw	$a0, 28($sp)
	flw	$f1, 0($a0)
	fadd	$f1, $f1, $f0
	fsw	$f1, 0($a0)
	flw	$f1, 4($a0)
	fadd	$f1, $f1, $f0
	fsw	$f1, 4($a0)
	flw	$f1, 8($a0)
	fadd	$f0, $f1, $f0
	fsw	$f0, 8($a0)
	jr	$ra
trace_reflections.2877:
	lw	$a2, 32($a26)
	lw	$a3, 28($a26)
	lw	$a4, 24($a26)
	lw	$a5, 20($a26)
	lw	$a6, 16($a26)
	lw	$a7, 12($a26)
	lw	$a8, 8($a26)
	lw	$a9, 4($a26)
	li	$a10, 0
	blt	$a0, $a10, bge_else.9104
	sll	$a10, $a0, 2
	add	$a10, $a3, $a10
	lw	$a3, 0($a10)
	sw	$a26, 0($sp)
	sw	$a0, 4($sp)
	fsw	$f1, 8($sp)
	sw	$a9, 16($sp)
	sw	$a1, 20($sp)
	fsw	$f0, 24($sp)
	sw	$a5, 32($sp)
	sw	$a2, 36($sp)
	sw	$a4, 40($sp)
	sw	$a3, 44($sp)
	sw	$a7, 48($sp)
	sw	$a8, 52($sp)
	sw	$a6, 56($sp)
	move	$a0, $a3
	sw	$ra, 60($sp)
	addi	$sp, $sp, 64
	jal	r_dvec.2668
	subi	$sp, $sp, 64
	lw	$ra, 60($sp)
	move	$a0, $v0
	lw	$a26, 56($sp)
	sw	$a0, 60($sp)
	sw	$ra, 68($sp)
	addi	$sp, $sp, 72
	jal	judge_intersection_fast.2859
	subi	$sp, $sp, 72
	lw	$ra, 68($sp)
	move	$a0, $v0
	li	$a1, 0
	bne	$a0, $a1, bne_else.9105
	j	bne_cont.9106
bne_else.9105:
	lw	$a0, 52($sp)
	lw	$a0, 0($a0)
	sla	$a0, $a0, 2
	lw	$a1, 48($sp)
	lw	$a1, 0($a1)
	add	$a0, $a0, $a1
	lw	$a1, 44($sp)
	sw	$a0, 64($sp)
	move	$a0, $a1
	sw	$ra, 68($sp)
	addi	$sp, $sp, 72
	jal	r_surface_id.2666
	subi	$sp, $sp, 72
	lw	$ra, 68($sp)
	move	$a0, $v0
	lw	$a1, 64($sp)
	bne	$a1, $a0, bne_else.9107
	li	$a0, 0
	lw	$a1, 40($sp)
	lw	$a1, 0($a1)
	lw	$a26, 36($sp)
	sw	$ra, 68($sp)
	addi	$sp, $sp, 72
	jal	shadow_check_one_or_matrix.2830
	subi	$sp, $sp, 72
	lw	$ra, 68($sp)
	move	$a0, $v0
	li	$a1, 0
	bne	$a0, $a1, bne_else.9109
	lw	$a0, 60($sp)
	sw	$ra, 68($sp)
	addi	$sp, $sp, 72
	jal	d_vec.2662
	subi	$sp, $sp, 72
	lw	$ra, 68($sp)
	move	$a1, $v0
	lw	$a0, 32($sp)
	sw	$ra, 68($sp)
	addi	$sp, $sp, 72
	jal	veciprod.2576
	subi	$sp, $sp, 72
	lw	$ra, 68($sp)
	fmove	$f0, $fv
	lw	$a0, 44($sp)
	fsw	$f0, 72($sp)
	sw	$ra, 84($sp)
	addi	$sp, $sp, 88
	jal	r_bright.2670
	subi	$sp, $sp, 88
	lw	$ra, 84($sp)
	fmove	$f0, $fv
	flw	$f1, 24($sp)
	fmul	$f2, $f0, $f1
	flw	$f3, 72($sp)
	fmul	$f2, $f2, $f3
	lw	$a0, 60($sp)
	fsw	$f2, 80($sp)
	fsw	$f0, 88($sp)
	sw	$ra, 100($sp)
	addi	$sp, $sp, 104
	jal	d_vec.2662
	subi	$sp, $sp, 104
	lw	$ra, 100($sp)
	move	$a1, $v0
	lw	$a0, 20($sp)
	sw	$ra, 100($sp)
	addi	$sp, $sp, 104
	jal	veciprod.2576
	subi	$sp, $sp, 104
	lw	$ra, 100($sp)
	fmove	$f0, $fv
	flw	$f1, 88($sp)
	fmul	$f1, $f1, $f0
	flw	$f0, 80($sp)
	flw	$f2, 8($sp)
	lw	$a26, 16($sp)
	sw	$ra, 100($sp)
	addi	$sp, $sp, 104
	jal	add_light.2873
	subi	$sp, $sp, 104
	lw	$ra, 100($sp)
	fmove	$f30, $fv
	j	bne_cont.9110
bne_else.9109:
bne_cont.9110:
	j	bne_cont.9108
bne_else.9107:
bne_cont.9108:
bne_cont.9106:
	lw	$a0, 4($sp)
	subi	$a0, $a0, 1
	flw	$f0, 24($sp)
	flw	$f1, 8($sp)
	lw	$a1, 20($sp)
	lw	$a26, 0($sp)
	lw	$a25, 0($a26)
	j	trace_reflections.2877
bge_else.9104:
	jr	$ra
trace_ray.2882:
	lw	$a3, 80($a26)
	lw	$a4, 76($a26)
	lw	$a5, 72($a26)
	lw	$a6, 68($a26)
	lw	$a7, 64($a26)
	lw	$a8, 60($a26)
	lw	$a9, 56($a26)
	lw	$a10, 52($a26)
	lw	$a11, 48($a26)
	lw	$a12, 44($a26)
	lw	$a13, 40($a26)
	lw	$a14, 36($a26)
	lw	$a15, 32($a26)
	lw	$a16, 28($a26)
	lw	$a17, 24($a26)
	lw	$a18, 20($a26)
	lw	$a19, 16($a26)
	lw	$a20, 12($a26)
	lw	$a21, 8($a26)
	lw	$a22, 4($a26)
	li	$a23, 4
	blt	$a23, $a0, bge_else.9113
	sw	$a26, 0($sp)
	fsw	$f1, 8($sp)
	sw	$a5, 16($sp)
	sw	$a4, 20($sp)
	sw	$a14, 24($sp)
	sw	$a9, 28($sp)
	sw	$a22, 32($sp)
	sw	$a8, 36($sp)
	sw	$a11, 40($sp)
	sw	$a13, 44($sp)
	sw	$a6, 48($sp)
	sw	$a2, 52($sp)
	sw	$a17, 56($sp)
	sw	$a3, 60($sp)
	sw	$a18, 64($sp)
	sw	$a7, 68($sp)
	sw	$a20, 72($sp)
	sw	$a12, 76($sp)
	sw	$a19, 80($sp)
	sw	$a10, 84($sp)
	sw	$a21, 88($sp)
	fsw	$f0, 96($sp)
	sw	$a15, 104($sp)
	sw	$a0, 108($sp)
	sw	$a1, 112($sp)
	sw	$a16, 116($sp)
	move	$a0, $a2
	sw	$ra, 124($sp)
	addi	$sp, $sp, 128
	jal	p_surface_ids.2647
	subi	$sp, $sp, 128
	lw	$ra, 124($sp)
	move	$a0, $v0
	lw	$a1, 112($sp)
	lw	$a26, 116($sp)
	sw	$a0, 120($sp)
	move	$a0, $a1
	sw	$ra, 124($sp)
	addi	$sp, $sp, 128
	jal	judge_intersection.2845
	subi	$sp, $sp, 128
	lw	$ra, 124($sp)
	move	$a0, $v0
	li	$a1, 0
	bne	$a0, $a1, beq_else.9116
	li	$a0, -1
	lw	$a1, 108($sp)
	sll	$a2, $a1, 2
	lw	$a3, 120($sp)
	add	$a2, $a3, $a2
	sw	$a0, 0($a2)
	li	$a0, 0
	bne	$a1, $a0, beq_else.9117
	jr	$ra
beq_else.9117:
	lw	$a0, 112($sp)
	lw	$a1, 104($sp)
	sw	$ra, 124($sp)
	addi	$sp, $sp, 128
	jal	veciprod.2576
	subi	$sp, $sp, 128
	lw	$ra, 124($sp)
	fmove	$f0, $fv
	sw	$ra, 124($sp)
	addi	$sp, $sp, 128
	jal	fneg.2514
	subi	$sp, $sp, 128
	lw	$ra, 124($sp)
	fmove	$f0, $fv
	fsw	$f0, 128($sp)
	sw	$ra, 140($sp)
	addi	$sp, $sp, 144
	jal	fispos.2516
	subi	$sp, $sp, 144
	lw	$ra, 140($sp)
	move	$a0, $v0
	li	$a1, 0
	bne	$a0, $a1, beq_else.9120
	jr	$ra
beq_else.9120:
	flw	$f0, 128($sp)
	sw	$ra, 140($sp)
	addi	$sp, $sp, 144
	jal	fsqr.2524
	subi	$sp, $sp, 144
	lw	$ra, 140($sp)
	fmove	$f0, $fv
	flw	$f1, 128($sp)
	fmul	$f0, $f0, $f1
	flw	$f1, 96($sp)
	fmul	$f0, $f0, $f1
	lw	$a0, 88($sp)
	flw	$f1, 0($a0)
	fmul	$f0, $f0, $f1
	lw	$a0, 84($sp)
	flw	$f1, 0($a0)
	fadd	$f1, $f1, $f0
	fsw	$f1, 0($a0)
	flw	$f1, 4($a0)
	fadd	$f1, $f1, $f0
	fsw	$f1, 4($a0)
	flw	$f1, 8($a0)
	fadd	$f0, $f1, $f0
	fsw	$f0, 8($a0)
	jr	$ra
beq_else.9116:
	lw	$a0, 80($sp)
	lw	$a0, 0($a0)
	sll	$a1, $a0, 2
	lw	$a2, 76($sp)
	add	$a1, $a2, $a1
	lw	$a1, 0($a1)
	sw	$a0, 136($sp)
	sw	$a1, 140($sp)
	move	$a0, $a1
	sw	$ra, 148($sp)
	addi	$sp, $sp, 152
	jal	o_reflectiontype.2605
	subi	$sp, $sp, 152
	lw	$ra, 148($sp)
	move	$a0, $v0
	lw	$a1, 140($sp)
	sw	$a0, 144($sp)
	move	$a0, $a1
	sw	$ra, 148($sp)
	addi	$sp, $sp, 152
	jal	o_diffuse.2625
	subi	$sp, $sp, 152
	lw	$ra, 148($sp)
	fmove	$f0, $fv
	flw	$f1, 96($sp)
	fmul	$f0, $f0, $f1
	lw	$a0, 140($sp)
	lw	$a1, 112($sp)
	lw	$a26, 72($sp)
	fsw	$f0, 152($sp)
	sw	$ra, 164($sp)
	addi	$sp, $sp, 168
	jal	get_nvector.2867
	subi	$sp, $sp, 168
	lw	$ra, 164($sp)
	fmove	$f30, $fv
	lw	$a0, 68($sp)
	lw	$a1, 64($sp)
	sw	$ra, 164($sp)
	addi	$sp, $sp, 168
	jal	veccpy.2565
	subi	$sp, $sp, 168
	lw	$ra, 164($sp)
	fmove	$f30, $fv
	lw	$a0, 140($sp)
	lw	$a1, 64($sp)
	lw	$a26, 60($sp)
	sw	$ra, 164($sp)
	addi	$sp, $sp, 168
	jal	utexture.2870
	subi	$sp, $sp, 168
	lw	$ra, 164($sp)
	fmove	$f30, $fv
	lw	$a0, 136($sp)
	sla	$a0, $a0, 2
	lw	$a1, 56($sp)
	lw	$a1, 0($a1)
	add	$a0, $a0, $a1
	lw	$a1, 108($sp)
	sll	$a2, $a1, 2
	lw	$a3, 120($sp)
	add	$a2, $a3, $a2
	sw	$a0, 0($a2)
	lw	$a0, 52($sp)
	sw	$ra, 164($sp)
	addi	$sp, $sp, 168
	jal	p_intersection_points.2645
	subi	$sp, $sp, 168
	lw	$ra, 164($sp)
	move	$a0, $v0
	lw	$a1, 108($sp)
	sll	$a2, $a1, 2
	add	$a2, $a0, $a2
	lw	$a0, 0($a2)
	lw	$a2, 64($sp)
	move	$a1, $a2
	sw	$ra, 164($sp)
	addi	$sp, $sp, 168
	jal	veccpy.2565
	subi	$sp, $sp, 168
	lw	$ra, 164($sp)
	fmove	$f30, $fv
	lw	$a0, 52($sp)
	sw	$ra, 164($sp)
	addi	$sp, $sp, 168
	jal	p_calc_diffuse.2649
	subi	$sp, $sp, 168
	lw	$ra, 164($sp)
	move	$a0, $v0
	lw	$a1, 140($sp)
	sw	$a0, 160($sp)
	move	$a0, $a1
	sw	$ra, 164($sp)
	addi	$sp, $sp, 168
	jal	o_diffuse.2625
	subi	$sp, $sp, 168
	lw	$ra, 164($sp)
	fmove	$f0, $fv
	sw	$ra, 164($sp)
	addi	$sp, $sp, 168
	jal	l.6150
	subi	$sp, $sp, 168
	lw	$ra, 164($sp)
	mtc1	$f1, $a25
	sw	$ra, 164($sp)
	addi	$sp, $sp, 168
	jal	fless.2528
	subi	$sp, $sp, 168
	lw	$ra, 164($sp)
	move	$a0, $v0
	li	$a1, 0
	bne	$a0, $a1, bne_else.9124
	li	$a0, 1
	lw	$a1, 108($sp)
	sll	$a2, $a1, 2
	lw	$a3, 160($sp)
	add	$a2, $a3, $a2
	sw	$a0, 0($a2)
	lw	$a0, 52($sp)
	sw	$ra, 164($sp)
	addi	$sp, $sp, 168
	jal	p_energy.2651
	subi	$sp, $sp, 168
	lw	$ra, 164($sp)
	move	$a0, $v0
	lw	$a1, 108($sp)
	sll	$a2, $a1, 2
	add	$a2, $a0, $a2
	lw	$a2, 0($a2)
	lw	$a3, 48($sp)
	sw	$a0, 164($sp)
	move	$a1, $a3
	move	$a0, $a2
	sw	$ra, 172($sp)
	addi	$sp, $sp, 176
	jal	veccpy.2565
	subi	$sp, $sp, 176
	lw	$ra, 172($sp)
	fmove	$f30, $fv
	lw	$a0, 108($sp)
	sll	$a1, $a0, 2
	lw	$a2, 164($sp)
	add	$a1, $a2, $a1
	lw	$a1, 0($a1)
	sw	$ra, 172($sp)
	addi	$sp, $sp, 176
	jal	l.6152
	subi	$sp, $sp, 176
	lw	$ra, 172($sp)
	mtc1	$f0, $a25
	sw	$ra, 172($sp)
	addi	$sp, $sp, 176
	jal	l.6591
	subi	$sp, $sp, 176
	lw	$ra, 172($sp)
	mtc1	$f1, $a25
	finv	$f1, $f1
	fmul	$f0, $f0, $f1
	flw	$f1, 152($sp)
	fmul	$f0, $f0, $f1
	move	$a0, $a1
	sw	$ra, 172($sp)
	addi	$sp, $sp, 176
	jal	vecscale.2594
	subi	$sp, $sp, 176
	lw	$ra, 172($sp)
	fmove	$f30, $fv
	lw	$a0, 52($sp)
	sw	$ra, 172($sp)
	addi	$sp, $sp, 176
	jal	p_nvectors.2660
	subi	$sp, $sp, 176
	lw	$ra, 172($sp)
	move	$a0, $v0
	lw	$a1, 108($sp)
	sll	$a2, $a1, 2
	add	$a2, $a0, $a2
	lw	$a0, 0($a2)
	lw	$a2, 44($sp)
	move	$a1, $a2
	sw	$ra, 172($sp)
	addi	$sp, $sp, 176
	jal	veccpy.2565
	subi	$sp, $sp, 176
	lw	$ra, 172($sp)
	fmove	$f30, $fv
	j	bne_cont.9125
bne_else.9124:
	li	$a0, 0
	lw	$a1, 108($sp)
	sll	$a2, $a1, 2
	lw	$a3, 160($sp)
	add	$a2, $a3, $a2
	sw	$a0, 0($a2)
bne_cont.9125:
	sw	$ra, 172($sp)
	addi	$sp, $sp, 176
	jal	l.6593
	subi	$sp, $sp, 176
	lw	$ra, 172($sp)
	mtc1	$f0, $a25
	lw	$a0, 112($sp)
	lw	$a1, 44($sp)
	fsw	$f0, 168($sp)
	sw	$ra, 180($sp)
	addi	$sp, $sp, 184
	jal	veciprod.2576
	subi	$sp, $sp, 184
	lw	$ra, 180($sp)
	fmove	$f0, $fv
	flw	$f1, 168($sp)
	fmul	$f0, $f1, $f0
	lw	$a0, 112($sp)
	lw	$a1, 44($sp)
	sw	$ra, 180($sp)
	addi	$sp, $sp, 184
	jal	vecaccum.2584
	subi	$sp, $sp, 184
	lw	$ra, 180($sp)
	fmove	$f30, $fv
	lw	$a0, 140($sp)
	sw	$ra, 180($sp)
	addi	$sp, $sp, 184
	jal	o_hilight.2627
	subi	$sp, $sp, 184
	lw	$ra, 180($sp)
	fmove	$f0, $fv
	flw	$f1, 96($sp)
	fmul	$f0, $f1, $f0
	li	$a0, 0
	lw	$a1, 40($sp)
	lw	$a1, 0($a1)
	lw	$a26, 36($sp)
	fsw	$f0, 176($sp)
	sw	$ra, 188($sp)
	addi	$sp, $sp, 192
	jal	shadow_check_one_or_matrix.2830
	subi	$sp, $sp, 192
	lw	$ra, 188($sp)
	move	$a0, $v0
	li	$a1, 0
	bne	$a0, $a1, bne_else.9126
	lw	$a0, 44($sp)
	lw	$a1, 104($sp)
	sw	$ra, 188($sp)
	addi	$sp, $sp, 192
	jal	veciprod.2576
	subi	$sp, $sp, 192
	lw	$ra, 188($sp)
	fmove	$f0, $fv
	sw	$ra, 188($sp)
	addi	$sp, $sp, 192
	jal	fneg.2514
	subi	$sp, $sp, 192
	lw	$ra, 188($sp)
	fmove	$f0, $fv
	flw	$f1, 152($sp)
	fmul	$f0, $f0, $f1
	lw	$a0, 112($sp)
	lw	$a1, 104($sp)
	fsw	$f0, 184($sp)
	sw	$ra, 196($sp)
	addi	$sp, $sp, 200
	jal	veciprod.2576
	subi	$sp, $sp, 200
	lw	$ra, 196($sp)
	fmove	$f0, $fv
	sw	$ra, 196($sp)
	addi	$sp, $sp, 200
	jal	fneg.2514
	subi	$sp, $sp, 200
	lw	$ra, 196($sp)
	fmove	$f1, $fv
	flw	$f0, 184($sp)
	flw	$f2, 176($sp)
	lw	$a26, 32($sp)
	sw	$ra, 196($sp)
	addi	$sp, $sp, 200
	jal	add_light.2873
	subi	$sp, $sp, 200
	lw	$ra, 196($sp)
	fmove	$f30, $fv
	j	bne_cont.9127
bne_else.9126:
bne_cont.9127:
	lw	$a0, 64($sp)
	lw	$a26, 28($sp)
	sw	$ra, 196($sp)
	addi	$sp, $sp, 200
	jal	setup_startp.2796
	subi	$sp, $sp, 200
	lw	$ra, 196($sp)
	fmove	$f30, $fv
	lw	$a0, 24($sp)
	lw	$a0, 0($a0)
	subi	$a0, $a0, 1
	flw	$f0, 152($sp)
	flw	$f1, 176($sp)
	lw	$a1, 112($sp)
	lw	$a26, 20($sp)
	sw	$ra, 196($sp)
	addi	$sp, $sp, 200
	jal	trace_reflections.2877
	subi	$sp, $sp, 200
	lw	$ra, 196($sp)
	fmove	$f30, $fv
	sw	$ra, 196($sp)
	addi	$sp, $sp, 200
	jal	l.6596
	subi	$sp, $sp, 200
	lw	$ra, 196($sp)
	mtc1	$f0, $a25
	flw	$f1, 96($sp)
	sw	$ra, 196($sp)
	addi	$sp, $sp, 200
	jal	fless.2528
	subi	$sp, $sp, 200
	lw	$ra, 196($sp)
	move	$a0, $v0
	li	$a1, 0
	bne	$a0, $a1, beq_else.9128
	jr	$ra
beq_else.9128:
	li	$a0, 4
	lw	$a1, 108($sp)
	blt	$a1, $a0, bge_else.9130
	j	bge_cont.9131
bge_else.9130:
	addi	$a0, $a1, 1
	li	$a2, -1
	sll	$a0, $a0, 2
	lw	$a3, 120($sp)
	add	$a0, $a3, $a0
	sw	$a2, 0($a0)
bge_cont.9131:
	li	$a0, 2
	lw	$a2, 144($sp)
	bne	$a2, $a0, beq_else.9132
	sw	$ra, 196($sp)
	addi	$sp, $sp, 200
	jal	l.6152
	subi	$sp, $sp, 200
	lw	$ra, 196($sp)
	mtc1	$f0, $a25
	lw	$a0, 140($sp)
	fsw	$f0, 192($sp)
	sw	$ra, 204($sp)
	addi	$sp, $sp, 208
	jal	o_diffuse.2625
	subi	$sp, $sp, 208
	lw	$ra, 204($sp)
	fmove	$f0, $fv
	flw	$f1, 192($sp)
	fsub	$f0, $f1, $f0
	flw	$f1, 96($sp)
	fmul	$f0, $f1, $f0
	lw	$a0, 108($sp)
	addi	$a0, $a0, 1
	lw	$a1, 16($sp)
	flw	$f1, 0($a1)
	flw	$f2, 8($sp)
	fadd	$f1, $f2, $f1
	lw	$a1, 112($sp)
	lw	$a2, 52($sp)
	lw	$a26, 0($sp)
	lw	$a25, 0($a26)
	j	trace_ray.2882
beq_else.9132:
	jr	$ra
bge_else.9113:
	jr	$ra
trace_diffuse_ray.2888:
	lw	$a1, 48($a26)
	lw	$a2, 44($a26)
	lw	$a3, 40($a26)
	lw	$a4, 36($a26)
	lw	$a5, 32($a26)
	lw	$a6, 28($a26)
	lw	$a7, 24($a26)
	lw	$a8, 20($a26)
	lw	$a9, 16($a26)
	lw	$a10, 12($a26)
	lw	$a11, 8($a26)
	lw	$a12, 4($a26)
	sw	$a2, 0($sp)
	sw	$a12, 4($sp)
	fsw	$f0, 8($sp)
	sw	$a7, 16($sp)
	sw	$a6, 20($sp)
	sw	$a3, 24($sp)
	sw	$a4, 28($sp)
	sw	$a9, 32($sp)
	sw	$a1, 36($sp)
	sw	$a11, 40($sp)
	sw	$a0, 44($sp)
	sw	$a5, 48($sp)
	sw	$a10, 52($sp)
	move	$a26, $a8
	sw	$ra, 60($sp)
	addi	$sp, $sp, 64
	jal	judge_intersection_fast.2859
	subi	$sp, $sp, 64
	lw	$ra, 60($sp)
	move	$a0, $v0
	li	$a1, 0
	bne	$a0, $a1, beq_else.9135
	jr	$ra
beq_else.9135:
	lw	$a0, 52($sp)
	lw	$a0, 0($a0)
	sll	$a0, $a0, 2
	lw	$a1, 48($sp)
	add	$a0, $a1, $a0
	lw	$a0, 0($a0)
	lw	$a1, 44($sp)
	sw	$a0, 56($sp)
	move	$a0, $a1
	sw	$ra, 60($sp)
	addi	$sp, $sp, 64
	jal	d_vec.2662
	subi	$sp, $sp, 64
	lw	$ra, 60($sp)
	move	$a1, $v0
	lw	$a0, 56($sp)
	lw	$a26, 40($sp)
	sw	$ra, 60($sp)
	addi	$sp, $sp, 64
	jal	get_nvector.2867
	subi	$sp, $sp, 64
	lw	$ra, 60($sp)
	fmove	$f30, $fv
	lw	$a0, 56($sp)
	lw	$a1, 32($sp)
	lw	$a26, 36($sp)
	sw	$ra, 60($sp)
	addi	$sp, $sp, 64
	jal	utexture.2870
	subi	$sp, $sp, 64
	lw	$ra, 60($sp)
	fmove	$f30, $fv
	li	$a0, 0
	lw	$a1, 28($sp)
	lw	$a1, 0($a1)
	lw	$a26, 24($sp)
	sw	$ra, 60($sp)
	addi	$sp, $sp, 64
	jal	shadow_check_one_or_matrix.2830
	subi	$sp, $sp, 64
	lw	$ra, 60($sp)
	move	$a0, $v0
	li	$a1, 0
	bne	$a0, $a1, beq_else.9137
	lw	$a0, 20($sp)
	lw	$a1, 16($sp)
	sw	$ra, 60($sp)
	addi	$sp, $sp, 64
	jal	veciprod.2576
	subi	$sp, $sp, 64
	lw	$ra, 60($sp)
	fmove	$f0, $fv
	sw	$ra, 60($sp)
	addi	$sp, $sp, 64
	jal	fneg.2514
	subi	$sp, $sp, 64
	lw	$ra, 60($sp)
	fmove	$f0, $fv
	fsw	$f0, 64($sp)
	sw	$ra, 76($sp)
	addi	$sp, $sp, 80
	jal	fispos.2516
	subi	$sp, $sp, 80
	lw	$ra, 76($sp)
	move	$a0, $v0
	li	$a1, 0
	bne	$a0, $a1, bne_else.9139
	sw	$ra, 76($sp)
	addi	$sp, $sp, 80
	jal	l.6149
	subi	$sp, $sp, 80
	lw	$ra, 76($sp)
	mtc1	$f0, $a25
	j	bne_cont.9140
bne_else.9139:
	flw	$f0, 64($sp)
bne_cont.9140:
	flw	$f1, 8($sp)
	fmul	$f0, $f1, $f0
	lw	$a0, 56($sp)
	fsw	$f0, 72($sp)
	sw	$ra, 84($sp)
	addi	$sp, $sp, 88
	jal	o_diffuse.2625
	subi	$sp, $sp, 88
	lw	$ra, 84($sp)
	fmove	$f0, $fv
	flw	$f1, 72($sp)
	fmul	$f0, $f1, $f0
	lw	$a0, 4($sp)
	lw	$a1, 0($sp)
	j	vecaccum.2584
beq_else.9137:
	jr	$ra
iter_trace_diffuse_rays.2891:
	lw	$a4, 4($a26)
	li	$a5, 0
	blt	$a3, $a5, bge_else.9142
	sll	$a5, $a3, 2
	add	$a5, $a0, $a5
	lw	$a5, 0($a5)
	sw	$a2, 0($sp)
	sw	$a26, 4($sp)
	sw	$a4, 8($sp)
	sw	$a0, 12($sp)
	sw	$a3, 16($sp)
	sw	$a1, 20($sp)
	move	$a0, $a5
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	d_vec.2662
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	move	$a0, $v0
	lw	$a1, 20($sp)
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	veciprod.2576
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	fmove	$f0, $fv
	fsw	$f0, 24($sp)
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	fisneg.2518
	subi	$sp, $sp, 40
	lw	$ra, 36($sp)
	move	$a0, $v0
	li	$a1, 0
	bne	$a0, $a1, bne_else.9143
	lw	$a0, 16($sp)
	sll	$a1, $a0, 2
	lw	$a2, 12($sp)
	add	$a1, $a2, $a1
	lw	$a1, 0($a1)
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	l.6614
	subi	$sp, $sp, 40
	lw	$ra, 36($sp)
	mtc1	$f0, $a25
	finv	$f0, $f0
	flw	$f1, 24($sp)
	fmul	$f0, $f1, $f0
	lw	$a26, 8($sp)
	move	$a0, $a1
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	trace_diffuse_ray.2888
	subi	$sp, $sp, 40
	lw	$ra, 36($sp)
	fmove	$f30, $fv
	j	bne_cont.9144
bne_else.9143:
	lw	$a0, 16($sp)
	addi	$a1, $a0, 1
	sll	$a1, $a1, 2
	lw	$a2, 12($sp)
	add	$a1, $a2, $a1
	lw	$a1, 0($a1)
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	l.6612
	subi	$sp, $sp, 40
	lw	$ra, 36($sp)
	mtc1	$f0, $a25
	finv	$f0, $f0
	flw	$f1, 24($sp)
	fmul	$f0, $f1, $f0
	lw	$a26, 8($sp)
	move	$a0, $a1
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	trace_diffuse_ray.2888
	subi	$sp, $sp, 40
	lw	$ra, 36($sp)
	fmove	$f30, $fv
bne_cont.9144:
	lw	$a0, 16($sp)
	subi	$a3, $a0, 2
	lw	$a0, 12($sp)
	lw	$a1, 20($sp)
	lw	$a2, 0($sp)
	lw	$a26, 4($sp)
	lw	$a25, 0($a26)
	j	iter_trace_diffuse_rays.2891
bge_else.9142:
	jr	$ra
trace_diffuse_rays.2896:
	lw	$a3, 8($a26)
	lw	$a4, 4($a26)
	sw	$a2, 0($sp)
	sw	$a1, 4($sp)
	sw	$a0, 8($sp)
	sw	$a4, 12($sp)
	move	$a0, $a2
	move	$a26, $a3
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	setup_startp.2796
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	fmove	$f30, $fv
	li	$a3, 118
	lw	$a0, 8($sp)
	lw	$a1, 4($sp)
	lw	$a2, 0($sp)
	lw	$a26, 12($sp)
	lw	$a25, 0($a26)
	j	iter_trace_diffuse_rays.2891
trace_diffuse_ray_80percent.2900:
	lw	$a3, 8($a26)
	lw	$a4, 4($a26)
	li	$a5, 0
	sw	$a2, 0($sp)
	sw	$a1, 4($sp)
	sw	$a3, 8($sp)
	sw	$a4, 12($sp)
	sw	$a0, 16($sp)
	bne	$a0, $a5, bne_else.9146
	j	bne_cont.9147
bne_else.9146:
	lw	$a5, 0($a4)
	move	$a0, $a5
	move	$a26, $a3
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	trace_diffuse_rays.2896
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	fmove	$f30, $fv
bne_cont.9147:
	li	$a0, 1
	lw	$a1, 16($sp)
	bne	$a1, $a0, bne_else.9148
	j	bne_cont.9149
bne_else.9148:
	lw	$a0, 12($sp)
	lw	$a2, 4($a0)
	lw	$a3, 4($sp)
	lw	$a4, 0($sp)
	lw	$a26, 8($sp)
	move	$a1, $a3
	move	$a0, $a2
	move	$a2, $a4
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	trace_diffuse_rays.2896
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	fmove	$f30, $fv
bne_cont.9149:
	li	$a0, 2
	lw	$a1, 16($sp)
	bne	$a1, $a0, bne_else.9150
	j	bne_cont.9151
bne_else.9150:
	lw	$a0, 12($sp)
	lw	$a2, 8($a0)
	lw	$a3, 4($sp)
	lw	$a4, 0($sp)
	lw	$a26, 8($sp)
	move	$a1, $a3
	move	$a0, $a2
	move	$a2, $a4
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	trace_diffuse_rays.2896
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	fmove	$f30, $fv
bne_cont.9151:
	li	$a0, 3
	lw	$a1, 16($sp)
	bne	$a1, $a0, bne_else.9152
	j	bne_cont.9153
bne_else.9152:
	lw	$a0, 12($sp)
	lw	$a2, 12($a0)
	lw	$a3, 4($sp)
	lw	$a4, 0($sp)
	lw	$a26, 8($sp)
	move	$a1, $a3
	move	$a0, $a2
	move	$a2, $a4
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	trace_diffuse_rays.2896
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	fmove	$f30, $fv
bne_cont.9153:
	li	$a0, 4
	lw	$a1, 16($sp)
	bne	$a1, $a0, beq_else.9154
	jr	$ra
beq_else.9154:
	lw	$a0, 12($sp)
	lw	$a0, 16($a0)
	lw	$a1, 4($sp)
	lw	$a2, 0($sp)
	lw	$a26, 8($sp)
	lw	$a25, 0($a26)
	j	trace_diffuse_rays.2896
calc_diffuse_using_1point.2904:
	lw	$a2, 12($a26)
	lw	$a3, 8($a26)
	lw	$a4, 4($a26)
	sw	$a3, 0($sp)
	sw	$a2, 4($sp)
	sw	$a4, 8($sp)
	sw	$a1, 12($sp)
	sw	$a0, 16($sp)
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	p_received_ray_20percent.2653
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	move	$a0, $v0
	lw	$a1, 16($sp)
	sw	$a0, 20($sp)
	move	$a0, $a1
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	p_nvectors.2660
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	move	$a0, $v0
	lw	$a1, 16($sp)
	sw	$a0, 24($sp)
	move	$a0, $a1
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	p_intersection_points.2645
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	move	$a0, $v0
	lw	$a1, 16($sp)
	sw	$a0, 28($sp)
	move	$a0, $a1
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	p_energy.2651
	subi	$sp, $sp, 40
	lw	$ra, 36($sp)
	move	$a0, $v0
	lw	$a1, 12($sp)
	sll	$a2, $a1, 2
	lw	$a3, 20($sp)
	add	$a2, $a3, $a2
	lw	$a2, 0($a2)
	lw	$a3, 8($sp)
	sw	$a0, 32($sp)
	move	$a1, $a2
	move	$a0, $a3
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	veccpy.2565
	subi	$sp, $sp, 40
	lw	$ra, 36($sp)
	fmove	$f30, $fv
	lw	$a0, 16($sp)
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	p_group_id.2655
	subi	$sp, $sp, 40
	lw	$ra, 36($sp)
	move	$a0, $v0
	lw	$a1, 12($sp)
	sll	$a2, $a1, 2
	lw	$a3, 24($sp)
	add	$a2, $a3, $a2
	lw	$a2, 0($a2)
	sll	$a3, $a1, 2
	lw	$a4, 28($sp)
	add	$a3, $a4, $a3
	lw	$a3, 0($a3)
	lw	$a26, 4($sp)
	move	$a1, $a2
	move	$a2, $a3
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	trace_diffuse_ray_80percent.2900
	subi	$sp, $sp, 40
	lw	$ra, 36($sp)
	fmove	$f30, $fv
	lw	$a0, 12($sp)
	sll	$a0, $a0, 2
	lw	$a1, 32($sp)
	add	$a0, $a1, $a0
	lw	$a1, 0($a0)
	lw	$a0, 0($sp)
	lw	$a2, 8($sp)
	j	vecaccumv.2597
calc_diffuse_using_5points.2907:
	lw	$a5, 8($a26)
	lw	$a6, 4($a26)
	sll	$a7, $a0, 2
	add	$a7, $a1, $a7
	lw	$a1, 0($a7)
	sw	$a5, 0($sp)
	sw	$a6, 4($sp)
	sw	$a4, 8($sp)
	sw	$a3, 12($sp)
	sw	$a2, 16($sp)
	sw	$a0, 20($sp)
	move	$a0, $a1
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	p_received_ray_20percent.2653
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	move	$a0, $v0
	lw	$a1, 20($sp)
	subi	$a2, $a1, 1
	sll	$a2, $a2, 2
	lw	$a3, 16($sp)
	add	$a2, $a3, $a2
	lw	$a2, 0($a2)
	sw	$a0, 24($sp)
	move	$a0, $a2
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	p_received_ray_20percent.2653
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	move	$a0, $v0
	lw	$a1, 20($sp)
	sll	$a2, $a1, 2
	lw	$a3, 16($sp)
	add	$a2, $a3, $a2
	lw	$a2, 0($a2)
	sw	$a0, 28($sp)
	move	$a0, $a2
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	p_received_ray_20percent.2653
	subi	$sp, $sp, 40
	lw	$ra, 36($sp)
	move	$a0, $v0
	lw	$a1, 20($sp)
	addi	$a2, $a1, 1
	sll	$a2, $a2, 2
	lw	$a3, 16($sp)
	add	$a2, $a3, $a2
	lw	$a2, 0($a2)
	sw	$a0, 32($sp)
	move	$a0, $a2
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	p_received_ray_20percent.2653
	subi	$sp, $sp, 40
	lw	$ra, 36($sp)
	move	$a0, $v0
	lw	$a1, 20($sp)
	sll	$a2, $a1, 2
	lw	$a3, 12($sp)
	add	$a2, $a3, $a2
	lw	$a2, 0($a2)
	sw	$a0, 36($sp)
	move	$a0, $a2
	sw	$ra, 44($sp)
	addi	$sp, $sp, 48
	jal	p_received_ray_20percent.2653
	subi	$sp, $sp, 48
	lw	$ra, 44($sp)
	move	$a0, $v0
	lw	$a1, 8($sp)
	sll	$a2, $a1, 2
	lw	$a3, 24($sp)
	add	$a2, $a3, $a2
	lw	$a2, 0($a2)
	lw	$a3, 4($sp)
	sw	$a0, 40($sp)
	move	$a1, $a2
	move	$a0, $a3
	sw	$ra, 44($sp)
	addi	$sp, $sp, 48
	jal	veccpy.2565
	subi	$sp, $sp, 48
	lw	$ra, 44($sp)
	fmove	$f30, $fv
	lw	$a0, 8($sp)
	sll	$a1, $a0, 2
	lw	$a2, 28($sp)
	add	$a1, $a2, $a1
	lw	$a1, 0($a1)
	lw	$a2, 4($sp)
	move	$a0, $a2
	sw	$ra, 44($sp)
	addi	$sp, $sp, 48
	jal	vecadd.2588
	subi	$sp, $sp, 48
	lw	$ra, 44($sp)
	fmove	$f30, $fv
	lw	$a0, 8($sp)
	sll	$a1, $a0, 2
	lw	$a2, 32($sp)
	add	$a1, $a2, $a1
	lw	$a1, 0($a1)
	lw	$a2, 4($sp)
	move	$a0, $a2
	sw	$ra, 44($sp)
	addi	$sp, $sp, 48
	jal	vecadd.2588
	subi	$sp, $sp, 48
	lw	$ra, 44($sp)
	fmove	$f30, $fv
	lw	$a0, 8($sp)
	sll	$a1, $a0, 2
	lw	$a2, 36($sp)
	add	$a1, $a2, $a1
	lw	$a1, 0($a1)
	lw	$a2, 4($sp)
	move	$a0, $a2
	sw	$ra, 44($sp)
	addi	$sp, $sp, 48
	jal	vecadd.2588
	subi	$sp, $sp, 48
	lw	$ra, 44($sp)
	fmove	$f30, $fv
	lw	$a0, 8($sp)
	sll	$a1, $a0, 2
	lw	$a2, 40($sp)
	add	$a1, $a2, $a1
	lw	$a1, 0($a1)
	lw	$a2, 4($sp)
	move	$a0, $a2
	sw	$ra, 44($sp)
	addi	$sp, $sp, 48
	jal	vecadd.2588
	subi	$sp, $sp, 48
	lw	$ra, 44($sp)
	fmove	$f30, $fv
	lw	$a0, 20($sp)
	sll	$a0, $a0, 2
	lw	$a1, 16($sp)
	add	$a0, $a1, $a0
	lw	$a0, 0($a0)
	sw	$ra, 44($sp)
	addi	$sp, $sp, 48
	jal	p_energy.2651
	subi	$sp, $sp, 48
	lw	$ra, 44($sp)
	move	$a0, $v0
	lw	$a1, 8($sp)
	sll	$a1, $a1, 2
	add	$a1, $a0, $a1
	lw	$a1, 0($a1)
	lw	$a0, 0($sp)
	lw	$a2, 4($sp)
	j	vecaccumv.2597
do_without_neighbors.2913:
	lw	$a2, 4($a26)
	li	$a3, 4
	blt	$a3, $a1, bge_else.9156
	sw	$a26, 0($sp)
	sw	$a2, 4($sp)
	sw	$a0, 8($sp)
	sw	$a1, 12($sp)
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	p_surface_ids.2647
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	move	$a0, $v0
	li	$a1, 0
	lw	$a2, 12($sp)
	sll	$a3, $a2, 2
	add	$a3, $a0, $a3
	lw	$a0, 0($a3)
	blt	$a0, $a1, bge_else.9157
	lw	$a0, 8($sp)
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	p_calc_diffuse.2649
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	move	$a0, $v0
	lw	$a1, 12($sp)
	sll	$a2, $a1, 2
	add	$a2, $a0, $a2
	lw	$a0, 0($a2)
	li	$a2, 0
	bne	$a0, $a2, bne_else.9158
	j	bne_cont.9159
bne_else.9158:
	lw	$a0, 8($sp)
	lw	$a26, 4($sp)
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	calc_diffuse_using_1point.2904
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	fmove	$f30, $fv
bne_cont.9159:
	lw	$a0, 12($sp)
	addi	$a1, $a0, 1
	lw	$a0, 8($sp)
	lw	$a26, 0($sp)
	lw	$a25, 0($a26)
	j	do_without_neighbors.2913
bge_else.9157:
	jr	$ra
bge_else.9156:
	jr	$ra
neighbors_exist.2916:
	lw	$a2, 4($a26)
	lw	$a3, 4($a2)
	addi	$a4, $a1, 1
	blt	$a4, $a3, bge_else.9162
	li	$v0, 0
	jr	$ra
bge_else.9162:
	li	$a3, 0
	blt	$a3, $a1, bge_else.9163
	li	$v0, 0
	jr	$ra
bge_else.9163:
	lw	$a1, 0($a2)
	addi	$a2, $a0, 1
	blt	$a2, $a1, bge_else.9164
	li	$v0, 0
	jr	$ra
bge_else.9164:
	li	$a1, 0
	blt	$a1, $a0, bge_else.9165
	li	$v0, 0
	jr	$ra
bge_else.9165:
	li	$v0, 1
	jr	$ra
get_surface_id.2920:
	sw	$a1, 0($sp)
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	p_surface_ids.2647
	subi	$sp, $sp, 8
	lw	$ra, 4($sp)
	move	$a0, $v0
	lw	$a1, 0($sp)
	sll	$a1, $a1, 2
	add	$a1, $a0, $a1
	lw	$v0, 0($a1)
	jr	$ra
neighbors_are_available.2923:
	sll	$a5, $a0, 2
	add	$a5, $a2, $a5
	lw	$a5, 0($a5)
	sw	$a2, 0($sp)
	sw	$a3, 4($sp)
	sw	$a4, 8($sp)
	sw	$a1, 12($sp)
	sw	$a0, 16($sp)
	move	$a1, $a4
	move	$a0, $a5
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	get_surface_id.2920
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	move	$a0, $v0
	lw	$a1, 16($sp)
	sll	$a2, $a1, 2
	lw	$a3, 12($sp)
	add	$a2, $a3, $a2
	lw	$a2, 0($a2)
	lw	$a3, 8($sp)
	sw	$a0, 20($sp)
	move	$a1, $a3
	move	$a0, $a2
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	get_surface_id.2920
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	move	$a0, $v0
	lw	$a1, 20($sp)
	bne	$a0, $a1, beq_else.9166
	lw	$a0, 16($sp)
	sll	$a2, $a0, 2
	lw	$a3, 4($sp)
	add	$a2, $a3, $a2
	lw	$a2, 0($a2)
	lw	$a3, 8($sp)
	move	$a1, $a3
	move	$a0, $a2
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	get_surface_id.2920
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	move	$a0, $v0
	lw	$a1, 20($sp)
	bne	$a0, $a1, beq_else.9167
	lw	$a0, 16($sp)
	subi	$a2, $a0, 1
	sll	$a2, $a2, 2
	lw	$a3, 0($sp)
	add	$a2, $a3, $a2
	lw	$a2, 0($a2)
	lw	$a4, 8($sp)
	move	$a1, $a4
	move	$a0, $a2
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	get_surface_id.2920
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	move	$a0, $v0
	lw	$a1, 20($sp)
	bne	$a0, $a1, beq_else.9168
	lw	$a0, 16($sp)
	addi	$a0, $a0, 1
	sll	$a0, $a0, 2
	lw	$a2, 0($sp)
	add	$a0, $a2, $a0
	lw	$a0, 0($a0)
	lw	$a2, 8($sp)
	move	$a1, $a2
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	get_surface_id.2920
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	move	$a0, $v0
	lw	$a1, 20($sp)
	bne	$a0, $a1, beq_else.9169
	li	$v0, 1
	jr	$ra
beq_else.9169:
	li	$v0, 0
	jr	$ra
beq_else.9168:
	li	$v0, 0
	jr	$ra
beq_else.9167:
	li	$v0, 0
	jr	$ra
beq_else.9166:
	li	$v0, 0
	jr	$ra
try_exploit_neighbors.2929:
	lw	$a6, 8($a26)
	lw	$a7, 4($a26)
	sll	$a8, $a0, 2
	add	$a8, $a3, $a8
	lw	$a8, 0($a8)
	li	$a9, 4
	blt	$a9, $a5, bge_else.9170
	li	$a9, 0
	sw	$a1, 0($sp)
	sw	$a26, 4($sp)
	sw	$a7, 8($sp)
	sw	$a8, 12($sp)
	sw	$a6, 16($sp)
	sw	$a5, 20($sp)
	sw	$a4, 24($sp)
	sw	$a3, 28($sp)
	sw	$a2, 32($sp)
	sw	$a0, 36($sp)
	sw	$a9, 40($sp)
	move	$a1, $a5
	move	$a0, $a8
	sw	$ra, 44($sp)
	addi	$sp, $sp, 48
	jal	get_surface_id.2920
	subi	$sp, $sp, 48
	lw	$ra, 44($sp)
	move	$a0, $v0
	lw	$a1, 40($sp)
	blt	$a0, $a1, bge_else.9171
	lw	$a0, 36($sp)
	lw	$a1, 32($sp)
	lw	$a2, 28($sp)
	lw	$a3, 24($sp)
	lw	$a4, 20($sp)
	sw	$ra, 44($sp)
	addi	$sp, $sp, 48
	jal	neighbors_are_available.2923
	subi	$sp, $sp, 48
	lw	$ra, 44($sp)
	move	$a0, $v0
	li	$a1, 0
	bne	$a0, $a1, beq_else.9172
	lw	$a0, 36($sp)
	sll	$a0, $a0, 2
	lw	$a1, 28($sp)
	add	$a0, $a1, $a0
	lw	$a0, 0($a0)
	lw	$a1, 20($sp)
	lw	$a26, 16($sp)
	lw	$a25, 0($a26)
	j	do_without_neighbors.2913
beq_else.9172:
	lw	$a0, 12($sp)
	sw	$ra, 44($sp)
	addi	$sp, $sp, 48
	jal	p_calc_diffuse.2649
	subi	$sp, $sp, 48
	lw	$ra, 44($sp)
	move	$a0, $v0
	lw	$a4, 20($sp)
	sll	$a1, $a4, 2
	add	$a1, $a0, $a1
	lw	$a0, 0($a1)
	li	$a1, 0
	bne	$a0, $a1, bne_else.9173
	j	bne_cont.9174
bne_else.9173:
	lw	$a0, 36($sp)
	lw	$a1, 32($sp)
	lw	$a2, 28($sp)
	lw	$a3, 24($sp)
	lw	$a26, 8($sp)
	sw	$ra, 44($sp)
	addi	$sp, $sp, 48
	jal	calc_diffuse_using_5points.2907
	subi	$sp, $sp, 48
	lw	$ra, 44($sp)
	fmove	$f30, $fv
bne_cont.9174:
	lw	$a0, 20($sp)
	addi	$a5, $a0, 1
	lw	$a0, 36($sp)
	lw	$a1, 0($sp)
	lw	$a2, 32($sp)
	lw	$a3, 28($sp)
	lw	$a4, 24($sp)
	lw	$a26, 4($sp)
	lw	$a25, 0($a26)
	j	try_exploit_neighbors.2929
bge_else.9171:
	jr	$ra
bge_else.9170:
	jr	$ra
write_ppm_header.2936:
	lw	$a0, 4($a26)
	lw	$a1, 0($a0)
	sw	$a0, 0($sp)
	move	$a0, $a1
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	min_caml_print_int
	subi	$sp, $sp, 8
	lw	$ra, 4($sp)
	fmove	$f30, $fv
	lw	$a0, 0($sp)
	lw	$a0, 4($a0)
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	min_caml_print_int
	subi	$sp, $sp, 8
	lw	$ra, 4($sp)
	fmove	$f30, $fv
	li	$a0, 255
	j	min_caml_print_int
write_rgb_element.2938:
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	min_caml_int_of_float
	subi	$sp, $sp, 8
	lw	$ra, 4($sp)
	move	$a0, $v0
	li	$a1, 255
	blt	$a1, $a0, bge_else.9177
	li	$a1, 0
	blt	$a0, $a1, bge_else.9179
	j	bge_cont.9180
bge_else.9179:
	li	$a0, 0
bge_cont.9180:
	j	bge_cont.9178
bge_else.9177:
	li	$a0, 255
bge_cont.9178:
	j	min_caml_print_int
write_rgb.2940:
	lw	$a0, 4($a26)
	flw	$f0, 0($a0)
	sw	$a0, 0($sp)
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	write_rgb_element.2938
	subi	$sp, $sp, 8
	lw	$ra, 4($sp)
	fmove	$f30, $fv
	lw	$a0, 0($sp)
	flw	$f0, 4($a0)
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	write_rgb_element.2938
	subi	$sp, $sp, 8
	lw	$ra, 4($sp)
	fmove	$f30, $fv
	lw	$a0, 0($sp)
	flw	$f0, 8($a0)
	j	write_rgb_element.2938
pretrace_diffuse_rays.2942:
	lw	$a2, 12($a26)
	lw	$a3, 8($a26)
	lw	$a4, 4($a26)
	li	$a5, 4
	blt	$a5, $a1, bge_else.9181
	sw	$a26, 0($sp)
	sw	$a2, 4($sp)
	sw	$a3, 8($sp)
	sw	$a4, 12($sp)
	sw	$a1, 16($sp)
	sw	$a0, 20($sp)
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	get_surface_id.2920
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	move	$a0, $v0
	li	$a1, 0
	blt	$a0, $a1, bge_else.9182
	lw	$a0, 20($sp)
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	p_calc_diffuse.2649
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	move	$a0, $v0
	lw	$a1, 16($sp)
	sll	$a2, $a1, 2
	add	$a2, $a0, $a2
	lw	$a0, 0($a2)
	li	$a2, 0
	bne	$a0, $a2, bne_else.9183
	j	bne_cont.9184
bne_else.9183:
	lw	$a0, 20($sp)
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	p_group_id.2655
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	move	$a0, $v0
	lw	$a1, 12($sp)
	sw	$a0, 24($sp)
	move	$a0, $a1
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	vecbzero.2563
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	fmove	$f30, $fv
	lw	$a0, 20($sp)
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	p_nvectors.2660
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	move	$a0, $v0
	lw	$a1, 20($sp)
	sw	$a0, 28($sp)
	move	$a0, $a1
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	p_intersection_points.2645
	subi	$sp, $sp, 40
	lw	$ra, 36($sp)
	move	$a0, $v0
	lw	$a1, 24($sp)
	sll	$a1, $a1, 2
	lw	$a2, 8($sp)
	add	$a1, $a2, $a1
	lw	$a1, 0($a1)
	lw	$a2, 16($sp)
	sll	$a3, $a2, 2
	lw	$a4, 28($sp)
	add	$a3, $a4, $a3
	lw	$a3, 0($a3)
	sll	$a4, $a2, 2
	add	$a4, $a0, $a4
	lw	$a0, 0($a4)
	lw	$a26, 4($sp)
	move	$a2, $a0
	move	$a0, $a1
	move	$a1, $a3
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	trace_diffuse_rays.2896
	subi	$sp, $sp, 40
	lw	$ra, 36($sp)
	fmove	$f30, $fv
	lw	$a0, 20($sp)
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	p_received_ray_20percent.2653
	subi	$sp, $sp, 40
	lw	$ra, 36($sp)
	move	$a0, $v0
	lw	$a1, 16($sp)
	sll	$a2, $a1, 2
	add	$a2, $a0, $a2
	lw	$a0, 0($a2)
	lw	$a2, 12($sp)
	move	$a1, $a2
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	veccpy.2565
	subi	$sp, $sp, 40
	lw	$ra, 36($sp)
	fmove	$f30, $fv
bne_cont.9184:
	lw	$a0, 16($sp)
	addi	$a1, $a0, 1
	lw	$a0, 20($sp)
	lw	$a26, 0($sp)
	lw	$a25, 0($a26)
	j	pretrace_diffuse_rays.2942
bge_else.9182:
	jr	$ra
bge_else.9181:
	jr	$ra
pretrace_pixels.2945:
	lw	$a3, 36($a26)
	lw	$a4, 32($a26)
	lw	$a5, 28($a26)
	lw	$a6, 24($a26)
	lw	$a7, 20($a26)
	lw	$a8, 16($a26)
	lw	$a9, 12($a26)
	lw	$a10, 8($a26)
	lw	$a11, 4($a26)
	li	$a12, 0
	blt	$a1, $a12, bge_else.9187
	flw	$f3, 0($a7)
	lw	$a7, 0($a11)
	sub	$a7, $a1, $a7
	sw	$a26, 0($sp)
	sw	$a10, 4($sp)
	sw	$a2, 8($sp)
	sw	$a4, 12($sp)
	sw	$a0, 16($sp)
	sw	$a1, 20($sp)
	sw	$a3, 24($sp)
	sw	$a5, 28($sp)
	sw	$a8, 32($sp)
	fsw	$f2, 40($sp)
	fsw	$f1, 48($sp)
	sw	$a9, 56($sp)
	fsw	$f0, 64($sp)
	sw	$a6, 72($sp)
	fsw	$f3, 80($sp)
	move	$a0, $a7
	sw	$ra, 92($sp)
	addi	$sp, $sp, 96
	jal	float_of_int.2533
	subi	$sp, $sp, 96
	lw	$ra, 92($sp)
	fmove	$f0, $fv
	flw	$f1, 80($sp)
	fmul	$f0, $f1, $f0
	lw	$a0, 72($sp)
	flw	$f1, 0($a0)
	fmul	$f1, $f0, $f1
	flw	$f2, 64($sp)
	fadd	$f1, $f1, $f2
	lw	$a1, 56($sp)
	fsw	$f1, 0($a1)
	flw	$f1, 4($a0)
	fmul	$f1, $f0, $f1
	flw	$f3, 48($sp)
	fadd	$f1, $f1, $f3
	fsw	$f1, 4($a1)
	flw	$f1, 8($a0)
	fmul	$f0, $f0, $f1
	flw	$f1, 40($sp)
	fadd	$f0, $f0, $f1
	fsw	$f0, 8($a1)
	li	$a0, 0
	move	$a25, $a1
	move	$a1, $a0
	move	$a0, $a25
	sw	$ra, 92($sp)
	addi	$sp, $sp, 96
	jal	vecunit_sgn.2573
	subi	$sp, $sp, 96
	lw	$ra, 92($sp)
	fmove	$f30, $fv
	lw	$a0, 32($sp)
	sw	$ra, 92($sp)
	addi	$sp, $sp, 96
	jal	vecbzero.2563
	subi	$sp, $sp, 96
	lw	$ra, 92($sp)
	fmove	$f30, $fv
	lw	$a0, 28($sp)
	lw	$a1, 24($sp)
	sw	$ra, 92($sp)
	addi	$sp, $sp, 96
	jal	veccpy.2565
	subi	$sp, $sp, 96
	lw	$ra, 92($sp)
	fmove	$f30, $fv
	li	$a0, 0
	sw	$ra, 92($sp)
	addi	$sp, $sp, 96
	jal	l.6152
	subi	$sp, $sp, 96
	lw	$ra, 92($sp)
	mtc1	$f0, $a25
	lw	$a1, 20($sp)
	sll	$a2, $a1, 2
	lw	$a3, 16($sp)
	add	$a2, $a3, $a2
	lw	$a2, 0($a2)
	sw	$ra, 92($sp)
	addi	$sp, $sp, 96
	jal	l.6149
	subi	$sp, $sp, 96
	lw	$ra, 92($sp)
	mtc1	$f1, $a25
	lw	$a4, 56($sp)
	lw	$a26, 12($sp)
	move	$a1, $a4
	sw	$ra, 92($sp)
	addi	$sp, $sp, 96
	jal	trace_ray.2882
	subi	$sp, $sp, 96
	lw	$ra, 92($sp)
	fmove	$f30, $fv
	lw	$a0, 20($sp)
	sll	$a1, $a0, 2
	lw	$a2, 16($sp)
	add	$a1, $a2, $a1
	lw	$a1, 0($a1)
	move	$a0, $a1
	sw	$ra, 92($sp)
	addi	$sp, $sp, 96
	jal	p_rgb.2643
	subi	$sp, $sp, 96
	lw	$ra, 92($sp)
	move	$a0, $v0
	lw	$a1, 32($sp)
	sw	$ra, 92($sp)
	addi	$sp, $sp, 96
	jal	veccpy.2565
	subi	$sp, $sp, 96
	lw	$ra, 92($sp)
	fmove	$f30, $fv
	lw	$a0, 20($sp)
	sll	$a1, $a0, 2
	lw	$a2, 16($sp)
	add	$a1, $a2, $a1
	lw	$a1, 0($a1)
	lw	$a3, 8($sp)
	move	$a0, $a1
	move	$a1, $a3
	sw	$ra, 92($sp)
	addi	$sp, $sp, 96
	jal	p_set_group_id.2657
	subi	$sp, $sp, 96
	lw	$ra, 92($sp)
	fmove	$f30, $fv
	lw	$a0, 20($sp)
	sll	$a1, $a0, 2
	lw	$a2, 16($sp)
	add	$a1, $a2, $a1
	lw	$a1, 0($a1)
	li	$a3, 0
	lw	$a26, 4($sp)
	move	$a0, $a1
	move	$a1, $a3
	sw	$ra, 92($sp)
	addi	$sp, $sp, 96
	jal	pretrace_diffuse_rays.2942
	subi	$sp, $sp, 96
	lw	$ra, 92($sp)
	fmove	$f30, $fv
	lw	$a0, 20($sp)
	subi	$a0, $a0, 1
	li	$a1, 1
	lw	$a2, 8($sp)
	sw	$a0, 88($sp)
	move	$a0, $a2
	sw	$ra, 92($sp)
	addi	$sp, $sp, 96
	jal	add_mod5.2552
	subi	$sp, $sp, 96
	lw	$ra, 92($sp)
	move	$a2, $v0
	flw	$f0, 64($sp)
	flw	$f1, 48($sp)
	flw	$f2, 40($sp)
	lw	$a0, 16($sp)
	lw	$a1, 88($sp)
	lw	$a26, 0($sp)
	lw	$a25, 0($a26)
	j	pretrace_pixels.2945
bge_else.9187:
	jr	$ra
pretrace_line.2952:
	lw	$a3, 24($a26)
	lw	$a4, 20($a26)
	lw	$a5, 16($a26)
	lw	$a6, 12($a26)
	lw	$a7, 8($a26)
	lw	$a8, 4($a26)
	flw	$f0, 0($a5)
	lw	$a5, 4($a8)
	sub	$a1, $a1, $a5
	sw	$a2, 0($sp)
	sw	$a0, 4($sp)
	sw	$a6, 8($sp)
	sw	$a7, 12($sp)
	sw	$a3, 16($sp)
	sw	$a4, 20($sp)
	fsw	$f0, 24($sp)
	move	$a0, $a1
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	float_of_int.2533
	subi	$sp, $sp, 40
	lw	$ra, 36($sp)
	fmove	$f0, $fv
	flw	$f1, 24($sp)
	fmul	$f0, $f1, $f0
	lw	$a0, 20($sp)
	flw	$f1, 0($a0)
	fmul	$f1, $f0, $f1
	lw	$a1, 16($sp)
	flw	$f2, 0($a1)
	fadd	$f1, $f1, $f2
	flw	$f2, 4($a0)
	fmul	$f2, $f0, $f2
	flw	$f3, 4($a1)
	fadd	$f2, $f2, $f3
	flw	$f3, 8($a0)
	fmul	$f0, $f0, $f3
	flw	$f3, 8($a1)
	fadd	$f0, $f0, $f3
	lw	$a0, 12($sp)
	lw	$a0, 0($a0)
	subi	$a1, $a0, 1
	lw	$a0, 4($sp)
	lw	$a2, 0($sp)
	lw	$a26, 8($sp)
	fmove	$f30, $f2
	fmove	$f2, $f0
	fmove	$f0, $f1
	fmove	$f1, $f30
	lw	$a25, 0($a26)
	j	pretrace_pixels.2945
scan_pixel.2956:
	lw	$a5, 24($a26)
	lw	$a6, 20($a26)
	lw	$a7, 16($a26)
	lw	$a8, 12($a26)
	lw	$a9, 8($a26)
	lw	$a10, 4($a26)
	lw	$a9, 0($a9)
	blt	$a0, $a9, bge_else.9192
	jr	$ra
bge_else.9192:
	sll	$a9, $a0, 2
	add	$a9, $a3, $a9
	lw	$a9, 0($a9)
	sw	$a26, 0($sp)
	sw	$a5, 4($sp)
	sw	$a2, 8($sp)
	sw	$a6, 12($sp)
	sw	$a10, 16($sp)
	sw	$a3, 20($sp)
	sw	$a4, 24($sp)
	sw	$a1, 28($sp)
	sw	$a0, 32($sp)
	sw	$a8, 36($sp)
	sw	$a7, 40($sp)
	move	$a0, $a9
	sw	$ra, 44($sp)
	addi	$sp, $sp, 48
	jal	p_rgb.2643
	subi	$sp, $sp, 48
	lw	$ra, 44($sp)
	move	$a1, $v0
	lw	$a0, 40($sp)
	sw	$ra, 44($sp)
	addi	$sp, $sp, 48
	jal	veccpy.2565
	subi	$sp, $sp, 48
	lw	$ra, 44($sp)
	fmove	$f30, $fv
	lw	$a0, 32($sp)
	lw	$a1, 28($sp)
	lw	$a2, 24($sp)
	lw	$a26, 36($sp)
	sw	$ra, 44($sp)
	addi	$sp, $sp, 48
	jal	neighbors_exist.2916
	subi	$sp, $sp, 48
	lw	$ra, 44($sp)
	move	$a0, $v0
	li	$a1, 0
	bne	$a0, $a1, bne_else.9194
	lw	$a0, 32($sp)
	sll	$a1, $a0, 2
	lw	$a2, 20($sp)
	add	$a1, $a2, $a1
	lw	$a1, 0($a1)
	li	$a3, 0
	lw	$a26, 16($sp)
	move	$a0, $a1
	move	$a1, $a3
	sw	$ra, 44($sp)
	addi	$sp, $sp, 48
	jal	do_without_neighbors.2913
	subi	$sp, $sp, 48
	lw	$ra, 44($sp)
	fmove	$f30, $fv
	j	bne_cont.9195
bne_else.9194:
	li	$a5, 0
	lw	$a0, 32($sp)
	lw	$a1, 28($sp)
	lw	$a2, 8($sp)
	lw	$a3, 20($sp)
	lw	$a4, 24($sp)
	lw	$a26, 12($sp)
	sw	$ra, 44($sp)
	addi	$sp, $sp, 48
	jal	try_exploit_neighbors.2929
	subi	$sp, $sp, 48
	lw	$ra, 44($sp)
	fmove	$f30, $fv
bne_cont.9195:
	lw	$a26, 4($sp)
	sw	$ra, 44($sp)
	addi	$sp, $sp, 48
	jal	write_rgb.2940
	subi	$sp, $sp, 48
	lw	$ra, 44($sp)
	fmove	$f30, $fv
	lw	$a0, 32($sp)
	addi	$a0, $a0, 1
	lw	$a1, 28($sp)
	lw	$a2, 8($sp)
	lw	$a3, 20($sp)
	lw	$a4, 24($sp)
	lw	$a26, 0($sp)
	lw	$a25, 0($a26)
	j	scan_pixel.2956
scan_line.2962:
	lw	$a5, 12($a26)
	lw	$a6, 8($a26)
	lw	$a7, 4($a26)
	lw	$a8, 4($a7)
	blt	$a0, $a8, bge_else.9196
	jr	$ra
bge_else.9196:
	lw	$a7, 4($a7)
	subi	$a7, $a7, 1
	sw	$a26, 0($sp)
	sw	$a4, 4($sp)
	sw	$a3, 8($sp)
	sw	$a2, 12($sp)
	sw	$a1, 16($sp)
	sw	$a0, 20($sp)
	sw	$a5, 24($sp)
	blt	$a0, $a7, bge_else.9198
	j	bge_cont.9199
bge_else.9198:
	addi	$a7, $a0, 1
	move	$a2, $a4
	move	$a1, $a7
	move	$a0, $a3
	move	$a26, $a6
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	pretrace_line.2952
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	fmove	$f30, $fv
bge_cont.9199:
	li	$a0, 0
	lw	$a1, 20($sp)
	lw	$a2, 16($sp)
	lw	$a3, 12($sp)
	lw	$a4, 8($sp)
	lw	$a26, 24($sp)
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	scan_pixel.2956
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	fmove	$f30, $fv
	lw	$a0, 20($sp)
	addi	$a0, $a0, 1
	li	$a1, 2
	lw	$a2, 4($sp)
	sw	$a0, 28($sp)
	move	$a0, $a2
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	add_mod5.2552
	subi	$sp, $sp, 40
	lw	$ra, 36($sp)
	move	$a4, $v0
	lw	$a0, 28($sp)
	lw	$a1, 12($sp)
	lw	$a2, 8($sp)
	lw	$a3, 16($sp)
	lw	$a26, 0($sp)
	lw	$a25, 0($a26)
	j	scan_line.2962
create_float5x3array.2968:
	li	$a0, 3
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	l.6149
	subi	$sp, $sp, 8
	lw	$ra, 4($sp)
	mtc1	$f0, $a25
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	min_caml_create_float_array
	subi	$sp, $sp, 8
	lw	$ra, 4($sp)
	move	$a1, $v0
	li	$a0, 5
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	min_caml_create_array
	subi	$sp, $sp, 8
	lw	$ra, 4($sp)
	move	$a0, $v0
	li	$a1, 3
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	l.6149
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
	lw	$a1, 0($sp)
	sw	$a0, 4($a1)
	li	$a0, 3
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	l.6149
	subi	$sp, $sp, 8
	lw	$ra, 4($sp)
	mtc1	$f0, $a25
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	min_caml_create_float_array
	subi	$sp, $sp, 8
	lw	$ra, 4($sp)
	move	$a0, $v0
	lw	$a1, 0($sp)
	sw	$a0, 8($a1)
	li	$a0, 3
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	l.6149
	subi	$sp, $sp, 8
	lw	$ra, 4($sp)
	mtc1	$f0, $a25
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	min_caml_create_float_array
	subi	$sp, $sp, 8
	lw	$ra, 4($sp)
	move	$a0, $v0
	lw	$a1, 0($sp)
	sw	$a0, 12($a1)
	li	$a0, 3
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	l.6149
	subi	$sp, $sp, 8
	lw	$ra, 4($sp)
	mtc1	$f0, $a25
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	min_caml_create_float_array
	subi	$sp, $sp, 8
	lw	$ra, 4($sp)
	move	$a0, $v0
	lw	$a1, 0($sp)
	sw	$a0, 16($a1)
	move	$v0, $a1
	jr	$ra
create_pixel.2970:
	li	$a0, 3
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	l.6149
	subi	$sp, $sp, 8
	lw	$ra, 4($sp)
	mtc1	$f0, $a25
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	min_caml_create_float_array
	subi	$sp, $sp, 8
	lw	$ra, 4($sp)
	move	$a0, $v0
	sw	$a0, 0($sp)
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	create_float5x3array.2968
	subi	$sp, $sp, 8
	lw	$ra, 4($sp)
	move	$a0, $v0
	li	$a1, 5
	li	$a2, 0
	sw	$a0, 4($sp)
	move	$a0, $a1
	move	$a1, $a2
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	min_caml_create_array
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	move	$a0, $v0
	li	$a1, 5
	li	$a2, 0
	sw	$a0, 8($sp)
	move	$a0, $a1
	move	$a1, $a2
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	min_caml_create_array
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	move	$a0, $v0
	sw	$a0, 12($sp)
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	create_float5x3array.2968
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	move	$a0, $v0
	sw	$a0, 16($sp)
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	create_float5x3array.2968
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	move	$a0, $v0
	li	$a1, 1
	li	$a2, 0
	sw	$a0, 20($sp)
	move	$a0, $a1
	move	$a1, $a2
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	min_caml_create_array
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	move	$a0, $v0
	sw	$a0, 24($sp)
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	create_float5x3array.2968
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	move	$a0, $v0
	move	$a1, $fp
	addi	$fp, $fp, 32
	sw	$a0, 28($a1)
	lw	$a0, 24($sp)
	sw	$a0, 24($a1)
	lw	$a0, 20($sp)
	sw	$a0, 20($a1)
	lw	$a0, 16($sp)
	sw	$a0, 16($a1)
	lw	$a0, 12($sp)
	sw	$a0, 12($a1)
	lw	$a0, 8($sp)
	sw	$a0, 8($a1)
	lw	$a0, 4($sp)
	sw	$a0, 4($a1)
	lw	$a0, 0($sp)
	sw	$a0, 0($a1)
	move	$v0, $a1
	jr	$ra
init_line_elements.2972:
	li	$a2, 0
	blt	$a1, $a2, bge_else.9200
	sw	$a0, 0($sp)
	sw	$a1, 4($sp)
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	create_pixel.2970
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	move	$a0, $v0
	lw	$a1, 4($sp)
	sll	$a2, $a1, 2
	lw	$a3, 0($sp)
	add	$a2, $a3, $a2
	sw	$a0, 0($a2)
	subi	$a1, $a1, 1
	move	$a0, $a3
	j	init_line_elements.2972
bge_else.9200:
	move	$v0, $a0
	jr	$ra
create_pixelline.2975:
	lw	$a0, 4($a26)
	lw	$a1, 0($a0)
	sw	$a0, 0($sp)
	sw	$a1, 4($sp)
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	create_pixel.2970
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
	lw	$a1, 0($sp)
	lw	$a1, 0($a1)
	subi	$a1, $a1, 2
	j	init_line_elements.2972
tan.2977:
	fsw	$f0, 0($sp)
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	min_caml_sin
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	fmove	$f0, $fv
	flw	$f1, 0($sp)
	fsw	$f0, 8($sp)
	fmove	$f0, $f1
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	min_caml_cos
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	fmove	$f0, $fv
	finv	$f0, $f0
	flw	$f1, 8($sp)
	fmul	$fv, $f1, $f0
	jr $ra
adjust_position.2979:
	fmul	$f0, $f0, $f0
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	l.6596
	subi	$sp, $sp, 8
	lw	$ra, 4($sp)
	mtc1	$f2, $a25
	fadd	$f0, $f0, $f2
	fsw	$f1, 0($sp)
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	min_caml_sqrt
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	fmove	$f0, $fv
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	l.6152
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	mtc1	$f1, $a25
	finv	$f2, $f0
	fmul	$f1, $f1, $f2
	fsw	$f0, 8($sp)
	fmove	$f0, $f1
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	min_caml_atan
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	fmove	$f0, $fv
	flw	$f1, 0($sp)
	fmul	$f0, $f0, $f1
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	tan.2977
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	fmove	$f0, $fv
	flw	$f1, 8($sp)
	fmul	$fv, $f0, $f1
	jr $ra
calc_dirvec.2982:
	lw	$a3, 4($a26)
	li	$a4, 5
	blt	$a0, $a4, bge_else.9201
	sw	$a2, 0($sp)
	sw	$a3, 4($sp)
	sw	$a1, 8($sp)
	fsw	$f0, 16($sp)
	fsw	$f1, 24($sp)
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	fsqr.2524
	subi	$sp, $sp, 40
	lw	$ra, 36($sp)
	fmove	$f0, $fv
	flw	$f1, 24($sp)
	fsw	$f0, 32($sp)
	fmove	$f0, $f1
	sw	$ra, 44($sp)
	addi	$sp, $sp, 48
	jal	fsqr.2524
	subi	$sp, $sp, 48
	lw	$ra, 44($sp)
	fmove	$f0, $fv
	flw	$f1, 32($sp)
	fadd	$f0, $f1, $f0
	sw	$ra, 44($sp)
	addi	$sp, $sp, 48
	jal	l.6152
	subi	$sp, $sp, 48
	lw	$ra, 44($sp)
	mtc1	$f1, $a25
	fadd	$f0, $f0, $f1
	sw	$ra, 44($sp)
	addi	$sp, $sp, 48
	jal	min_caml_sqrt
	subi	$sp, $sp, 48
	lw	$ra, 44($sp)
	fmove	$f0, $fv
	finv	$f1, $f0
	flw	$f2, 16($sp)
	fmul	$f1, $f2, $f1
	finv	$f2, $f0
	flw	$f3, 24($sp)
	fmul	$f2, $f3, $f2
	sw	$ra, 44($sp)
	addi	$sp, $sp, 48
	jal	l.6152
	subi	$sp, $sp, 48
	lw	$ra, 44($sp)
	mtc1	$f3, $a25
	finv	$f0, $f0
	fmul	$f0, $f3, $f0
	lw	$a0, 8($sp)
	sll	$a0, $a0, 2
	lw	$a1, 4($sp)
	add	$a0, $a1, $a0
	lw	$a0, 0($a0)
	lw	$a1, 0($sp)
	sll	$a2, $a1, 2
	add	$a2, $a0, $a2
	lw	$a2, 0($a2)
	sw	$a0, 40($sp)
	fsw	$f0, 48($sp)
	fsw	$f2, 56($sp)
	fsw	$f1, 64($sp)
	move	$a0, $a2
	sw	$ra, 76($sp)
	addi	$sp, $sp, 80
	jal	d_vec.2662
	subi	$sp, $sp, 80
	lw	$ra, 76($sp)
	move	$a0, $v0
	flw	$f0, 64($sp)
	flw	$f1, 56($sp)
	flw	$f2, 48($sp)
	sw	$ra, 76($sp)
	addi	$sp, $sp, 80
	jal	vecset.2555
	subi	$sp, $sp, 80
	lw	$ra, 76($sp)
	fmove	$f30, $fv
	lw	$a0, 0($sp)
	addi	$a1, $a0, 40
	sll	$a1, $a1, 2
	lw	$a2, 40($sp)
	add	$a1, $a2, $a1
	lw	$a1, 0($a1)
	move	$a0, $a1
	sw	$ra, 76($sp)
	addi	$sp, $sp, 80
	jal	d_vec.2662
	subi	$sp, $sp, 80
	lw	$ra, 76($sp)
	move	$a0, $v0
	flw	$f0, 56($sp)
	sw	$a0, 72($sp)
	sw	$ra, 76($sp)
	addi	$sp, $sp, 80
	jal	fneg.2514
	subi	$sp, $sp, 80
	lw	$ra, 76($sp)
	fmove	$f2, $fv
	flw	$f0, 64($sp)
	flw	$f1, 48($sp)
	lw	$a0, 72($sp)
	sw	$ra, 76($sp)
	addi	$sp, $sp, 80
	jal	vecset.2555
	subi	$sp, $sp, 80
	lw	$ra, 76($sp)
	fmove	$f30, $fv
	lw	$a0, 0($sp)
	addi	$a1, $a0, 80
	sll	$a1, $a1, 2
	lw	$a2, 40($sp)
	add	$a1, $a2, $a1
	lw	$a1, 0($a1)
	move	$a0, $a1
	sw	$ra, 76($sp)
	addi	$sp, $sp, 80
	jal	d_vec.2662
	subi	$sp, $sp, 80
	lw	$ra, 76($sp)
	move	$a0, $v0
	flw	$f0, 64($sp)
	sw	$a0, 76($sp)
	sw	$ra, 84($sp)
	addi	$sp, $sp, 88
	jal	fneg.2514
	subi	$sp, $sp, 88
	lw	$ra, 84($sp)
	fmove	$f0, $fv
	flw	$f1, 56($sp)
	fsw	$f0, 80($sp)
	fmove	$f0, $f1
	sw	$ra, 92($sp)
	addi	$sp, $sp, 96
	jal	fneg.2514
	subi	$sp, $sp, 96
	lw	$ra, 92($sp)
	fmove	$f2, $fv
	flw	$f0, 48($sp)
	flw	$f1, 80($sp)
	lw	$a0, 76($sp)
	sw	$ra, 92($sp)
	addi	$sp, $sp, 96
	jal	vecset.2555
	subi	$sp, $sp, 96
	lw	$ra, 92($sp)
	fmove	$f30, $fv
	lw	$a0, 0($sp)
	addi	$a1, $a0, 1
	sll	$a1, $a1, 2
	lw	$a2, 40($sp)
	add	$a1, $a2, $a1
	lw	$a1, 0($a1)
	move	$a0, $a1
	sw	$ra, 92($sp)
	addi	$sp, $sp, 96
	jal	d_vec.2662
	subi	$sp, $sp, 96
	lw	$ra, 92($sp)
	move	$a0, $v0
	flw	$f0, 64($sp)
	sw	$a0, 88($sp)
	sw	$ra, 92($sp)
	addi	$sp, $sp, 96
	jal	fneg.2514
	subi	$sp, $sp, 96
	lw	$ra, 92($sp)
	fmove	$f0, $fv
	flw	$f1, 56($sp)
	fsw	$f0, 96($sp)
	fmove	$f0, $f1
	sw	$ra, 108($sp)
	addi	$sp, $sp, 112
	jal	fneg.2514
	subi	$sp, $sp, 112
	lw	$ra, 108($sp)
	fmove	$f0, $fv
	flw	$f1, 48($sp)
	fsw	$f0, 104($sp)
	fmove	$f0, $f1
	sw	$ra, 116($sp)
	addi	$sp, $sp, 120
	jal	fneg.2514
	subi	$sp, $sp, 120
	lw	$ra, 116($sp)
	fmove	$f2, $fv
	flw	$f0, 96($sp)
	flw	$f1, 104($sp)
	lw	$a0, 88($sp)
	sw	$ra, 116($sp)
	addi	$sp, $sp, 120
	jal	vecset.2555
	subi	$sp, $sp, 120
	lw	$ra, 116($sp)
	fmove	$f30, $fv
	lw	$a0, 0($sp)
	addi	$a1, $a0, 41
	sll	$a1, $a1, 2
	lw	$a2, 40($sp)
	add	$a1, $a2, $a1
	lw	$a1, 0($a1)
	move	$a0, $a1
	sw	$ra, 116($sp)
	addi	$sp, $sp, 120
	jal	d_vec.2662
	subi	$sp, $sp, 120
	lw	$ra, 116($sp)
	move	$a0, $v0
	flw	$f0, 64($sp)
	sw	$a0, 112($sp)
	sw	$ra, 116($sp)
	addi	$sp, $sp, 120
	jal	fneg.2514
	subi	$sp, $sp, 120
	lw	$ra, 116($sp)
	fmove	$f0, $fv
	flw	$f1, 48($sp)
	fsw	$f0, 120($sp)
	fmove	$f0, $f1
	sw	$ra, 132($sp)
	addi	$sp, $sp, 136
	jal	fneg.2514
	subi	$sp, $sp, 136
	lw	$ra, 132($sp)
	fmove	$f1, $fv
	flw	$f0, 120($sp)
	flw	$f2, 56($sp)
	lw	$a0, 112($sp)
	sw	$ra, 132($sp)
	addi	$sp, $sp, 136
	jal	vecset.2555
	subi	$sp, $sp, 136
	lw	$ra, 132($sp)
	fmove	$f30, $fv
	lw	$a0, 0($sp)
	addi	$a0, $a0, 81
	sll	$a0, $a0, 2
	lw	$a1, 40($sp)
	add	$a0, $a1, $a0
	lw	$a0, 0($a0)
	sw	$ra, 132($sp)
	addi	$sp, $sp, 136
	jal	d_vec.2662
	subi	$sp, $sp, 136
	lw	$ra, 132($sp)
	move	$a0, $v0
	flw	$f0, 48($sp)
	sw	$a0, 128($sp)
	sw	$ra, 132($sp)
	addi	$sp, $sp, 136
	jal	fneg.2514
	subi	$sp, $sp, 136
	lw	$ra, 132($sp)
	fmove	$f0, $fv
	flw	$f1, 64($sp)
	flw	$f2, 56($sp)
	lw	$a0, 128($sp)
	j	vecset.2555
bge_else.9201:
	fsw	$f2, 136($sp)
	sw	$a2, 0($sp)
	sw	$a1, 8($sp)
	sw	$a26, 144($sp)
	fsw	$f3, 152($sp)
	sw	$a0, 160($sp)
	fmove	$f0, $f1
	fmove	$f1, $f2
	sw	$ra, 164($sp)
	addi	$sp, $sp, 168
	jal	adjust_position.2979
	subi	$sp, $sp, 168
	lw	$ra, 164($sp)
	fmove	$f0, $fv
	lw	$a0, 160($sp)
	addi	$a0, $a0, 1
	flw	$f1, 152($sp)
	fsw	$f0, 168($sp)
	sw	$a0, 176($sp)
	sw	$ra, 180($sp)
	addi	$sp, $sp, 184
	jal	adjust_position.2979
	subi	$sp, $sp, 184
	lw	$ra, 180($sp)
	fmove	$f1, $fv
	flw	$f0, 168($sp)
	flw	$f2, 136($sp)
	flw	$f3, 152($sp)
	lw	$a0, 176($sp)
	lw	$a1, 8($sp)
	lw	$a2, 0($sp)
	lw	$a26, 144($sp)
	lw	$a25, 0($a26)
	j	calc_dirvec.2982
calc_dirvecs.2990:
	lw	$a3, 4($a26)
	li	$a4, 0
	blt	$a0, $a4, bge_else.9209
	sw	$a26, 0($sp)
	sw	$a0, 4($sp)
	fsw	$f0, 8($sp)
	sw	$a2, 16($sp)
	sw	$a1, 20($sp)
	sw	$a3, 24($sp)
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	float_of_int.2533
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	fmove	$f0, $fv
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	l.6708
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	mtc1	$f1, $a25
	fmul	$f0, $f0, $f1
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	l.6709
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	mtc1	$f1, $a25
	fsub	$f2, $f0, $f1
	li	$a0, 0
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	l.6149
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	mtc1	$f0, $a25
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	l.6149
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	mtc1	$f1, $a25
	flw	$f3, 8($sp)
	lw	$a1, 20($sp)
	lw	$a2, 16($sp)
	lw	$a26, 24($sp)
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	calc_dirvec.2982
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	fmove	$f30, $fv
	lw	$a0, 4($sp)
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	float_of_int.2533
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	fmove	$f0, $fv
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	l.6708
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	mtc1	$f1, $a25
	fmul	$f0, $f0, $f1
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	l.6596
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	mtc1	$f1, $a25
	fadd	$f2, $f0, $f1
	li	$a0, 0
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	l.6149
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	mtc1	$f0, $a25
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	l.6149
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	mtc1	$f1, $a25
	lw	$a1, 16($sp)
	addi	$a2, $a1, 2
	flw	$f3, 8($sp)
	lw	$a3, 20($sp)
	lw	$a26, 24($sp)
	move	$a1, $a3
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	calc_dirvec.2982
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	fmove	$f30, $fv
	lw	$a0, 4($sp)
	subi	$a0, $a0, 1
	li	$a1, 1
	lw	$a2, 20($sp)
	sw	$a0, 28($sp)
	move	$a0, $a2
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	add_mod5.2552
	subi	$sp, $sp, 40
	lw	$ra, 36($sp)
	move	$a1, $v0
	flw	$f0, 8($sp)
	lw	$a0, 28($sp)
	lw	$a2, 16($sp)
	lw	$a26, 0($sp)
	lw	$a25, 0($a26)
	j	calc_dirvecs.2990
bge_else.9209:
	jr	$ra
calc_dirvec_rows.2995:
	lw	$a3, 4($a26)
	li	$a4, 0
	blt	$a0, $a4, bge_else.9211
	sw	$a26, 0($sp)
	sw	$a0, 4($sp)
	sw	$a2, 8($sp)
	sw	$a1, 12($sp)
	sw	$a3, 16($sp)
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	float_of_int.2533
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	fmove	$f0, $fv
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	l.6708
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	mtc1	$f1, $a25
	fmul	$f0, $f0, $f1
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	l.6709
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	mtc1	$f1, $a25
	fsub	$f0, $f0, $f1
	li	$a0, 4
	lw	$a1, 12($sp)
	lw	$a2, 8($sp)
	lw	$a26, 16($sp)
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	calc_dirvecs.2990
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	fmove	$f30, $fv
	lw	$a0, 4($sp)
	subi	$a0, $a0, 1
	li	$a1, 2
	lw	$a2, 12($sp)
	sw	$a0, 20($sp)
	move	$a0, $a2
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	add_mod5.2552
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	move	$a1, $v0
	lw	$a0, 8($sp)
	addi	$a2, $a0, 4
	lw	$a0, 20($sp)
	lw	$a26, 0($sp)
	lw	$a25, 0($a26)
	j	calc_dirvec_rows.2995
bge_else.9211:
	jr	$ra
create_dirvec.2999:
	lw	$a0, 4($a26)
	li	$a1, 3
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	l.6149
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
	move	$a1, $v0
	lw	$a0, 0($sp)
	lw	$a0, 0($a0)
	sw	$a1, 4($sp)
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	min_caml_create_array
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	move	$a0, $v0
	move	$a1, $fp
	addi	$fp, $fp, 8
	sw	$a0, 4($a1)
	lw	$a0, 4($sp)
	sw	$a0, 0($a1)
	move	$v0, $a1
	jr	$ra
create_dirvec_elements.3001:
	lw	$a2, 4($a26)
	li	$a3, 0
	blt	$a1, $a3, bge_else.9213
	sw	$a26, 0($sp)
	sw	$a0, 4($sp)
	sw	$a1, 8($sp)
	move	$a26, $a2
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	create_dirvec.2999
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	move	$a0, $v0
	lw	$a1, 8($sp)
	sll	$a2, $a1, 2
	lw	$a3, 4($sp)
	add	$a2, $a3, $a2
	sw	$a0, 0($a2)
	subi	$a1, $a1, 1
	lw	$a26, 0($sp)
	move	$a0, $a3
	lw	$a25, 0($a26)
	j	create_dirvec_elements.3001
bge_else.9213:
	jr	$ra
create_dirvecs.3004:
	lw	$a1, 12($a26)
	lw	$a2, 8($a26)
	lw	$a3, 4($a26)
	li	$a4, 0
	blt	$a0, $a4, bge_else.9215
	li	$a4, 120
	sw	$a26, 0($sp)
	sw	$a2, 4($sp)
	sw	$a1, 8($sp)
	sw	$a0, 12($sp)
	sw	$a4, 16($sp)
	move	$a26, $a3
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	create_dirvec.2999
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	move	$a1, $v0
	lw	$a0, 16($sp)
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	min_caml_create_array
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	move	$a0, $v0
	lw	$a1, 12($sp)
	sll	$a2, $a1, 2
	lw	$a3, 8($sp)
	add	$a2, $a3, $a2
	sw	$a0, 0($a2)
	sll	$a0, $a1, 2
	add	$a0, $a3, $a0
	lw	$a0, 0($a0)
	li	$a2, 118
	lw	$a26, 4($sp)
	move	$a1, $a2
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	create_dirvec_elements.3001
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	fmove	$f30, $fv
	lw	$a0, 12($sp)
	subi	$a0, $a0, 1
	lw	$a26, 0($sp)
	lw	$a25, 0($a26)
	j	create_dirvecs.3004
bge_else.9215:
	jr	$ra
init_dirvec_constants.3006:
	lw	$a2, 4($a26)
	li	$a3, 0
	blt	$a1, $a3, bge_else.9217
	sll	$a3, $a1, 2
	add	$a3, $a0, $a3
	lw	$a3, 0($a3)
	sw	$a0, 0($sp)
	sw	$a26, 4($sp)
	sw	$a1, 8($sp)
	move	$a0, $a3
	move	$a26, $a2
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	setup_dirvec_constants.2791
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	fmove	$f30, $fv
	lw	$a0, 8($sp)
	subi	$a1, $a0, 1
	lw	$a0, 0($sp)
	lw	$a26, 4($sp)
	lw	$a25, 0($a26)
	j	init_dirvec_constants.3006
bge_else.9217:
	jr	$ra
init_vecset_constants.3009:
	lw	$a1, 8($a26)
	lw	$a2, 4($a26)
	li	$a3, 0
	blt	$a0, $a3, bge_else.9219
	sll	$a3, $a0, 2
	add	$a3, $a2, $a3
	lw	$a2, 0($a3)
	li	$a3, 119
	sw	$a26, 0($sp)
	sw	$a0, 4($sp)
	move	$a0, $a2
	move	$a26, $a1
	move	$a1, $a3
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	init_dirvec_constants.3006
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	fmove	$f30, $fv
	lw	$a0, 4($sp)
	subi	$a0, $a0, 1
	lw	$a26, 0($sp)
	lw	$a25, 0($a26)
	j	init_vecset_constants.3009
bge_else.9219:
	jr	$ra
init_dirvecs.3011:
	lw	$a0, 12($a26)
	lw	$a1, 8($a26)
	lw	$a2, 4($a26)
	li	$a3, 4
	sw	$a0, 0($sp)
	sw	$a2, 4($sp)
	move	$a0, $a3
	move	$a26, $a1
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	create_dirvecs.3004
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	fmove	$f30, $fv
	li	$a0, 9
	li	$a1, 0
	li	$a2, 0
	lw	$a26, 4($sp)
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	calc_dirvec_rows.2995
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	fmove	$f30, $fv
	li	$a0, 4
	lw	$a26, 0($sp)
	lw	$a25, 0($a26)
	j	init_vecset_constants.3009
add_reflection.3013:
	lw	$a2, 12($a26)
	lw	$a3, 8($a26)
	lw	$a26, 4($a26)
	sw	$a3, 0($sp)
	sw	$a0, 4($sp)
	sw	$a1, 8($sp)
	fsw	$f0, 16($sp)
	sw	$a2, 24($sp)
	fsw	$f3, 32($sp)
	fsw	$f2, 40($sp)
	fsw	$f1, 48($sp)
	sw	$ra, 60($sp)
	addi	$sp, $sp, 64
	jal	create_dirvec.2999
	subi	$sp, $sp, 64
	lw	$ra, 60($sp)
	move	$a0, $v0
	sw	$a0, 56($sp)
	sw	$ra, 60($sp)
	addi	$sp, $sp, 64
	jal	d_vec.2662
	subi	$sp, $sp, 64
	lw	$ra, 60($sp)
	move	$a0, $v0
	flw	$f0, 48($sp)
	flw	$f1, 40($sp)
	flw	$f2, 32($sp)
	sw	$ra, 60($sp)
	addi	$sp, $sp, 64
	jal	vecset.2555
	subi	$sp, $sp, 64
	lw	$ra, 60($sp)
	fmove	$f30, $fv
	lw	$a0, 56($sp)
	lw	$a26, 24($sp)
	sw	$ra, 60($sp)
	addi	$sp, $sp, 64
	jal	setup_dirvec_constants.2791
	subi	$sp, $sp, 64
	lw	$ra, 60($sp)
	fmove	$f30, $fv
	move	$a0, $fp
	addi	$fp, $fp, 16
	flw	$f0, 16($sp)
	fsw	$f0, 8($a0)
	lw	$a1, 56($sp)
	sw	$a1, 4($a0)
	lw	$a1, 8($sp)
	sw	$a1, 0($a0)
	lw	$a1, 4($sp)
	sll	$a1, $a1, 2
	lw	$a2, 0($sp)
	add	$a1, $a2, $a1
	sw	$a0, 0($a1)
	jr	$ra
setup_rect_reflection.3020:
	lw	$a2, 12($a26)
	lw	$a3, 8($a26)
	lw	$a4, 4($a26)
	sla	$a0, $a0, 2
	lw	$a5, 0($a2)
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	l.6152
	subi	$sp, $sp, 8
	lw	$ra, 4($sp)
	mtc1	$f0, $a25
	sw	$a2, 0($sp)
	sw	$a5, 4($sp)
	sw	$a4, 8($sp)
	sw	$a0, 12($sp)
	sw	$a3, 16($sp)
	fsw	$f0, 24($sp)
	move	$a0, $a1
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	o_diffuse.2625
	subi	$sp, $sp, 40
	lw	$ra, 36($sp)
	fmove	$f0, $fv
	flw	$f1, 24($sp)
	fsub	$f0, $f1, $f0
	lw	$a0, 16($sp)
	flw	$f1, 0($a0)
	fsw	$f0, 32($sp)
	fmove	$f0, $f1
	sw	$ra, 44($sp)
	addi	$sp, $sp, 48
	jal	fneg.2514
	subi	$sp, $sp, 48
	lw	$ra, 44($sp)
	fmove	$f0, $fv
	lw	$a0, 16($sp)
	flw	$f1, 4($a0)
	fsw	$f0, 40($sp)
	fmove	$f0, $f1
	sw	$ra, 52($sp)
	addi	$sp, $sp, 56
	jal	fneg.2514
	subi	$sp, $sp, 56
	lw	$ra, 52($sp)
	fmove	$f0, $fv
	lw	$a0, 16($sp)
	flw	$f1, 8($a0)
	fsw	$f0, 48($sp)
	fmove	$f0, $f1
	sw	$ra, 60($sp)
	addi	$sp, $sp, 64
	jal	fneg.2514
	subi	$sp, $sp, 64
	lw	$ra, 60($sp)
	fmove	$f3, $fv
	lw	$a0, 12($sp)
	addi	$a1, $a0, 1
	lw	$a2, 16($sp)
	flw	$f1, 0($a2)
	flw	$f0, 32($sp)
	flw	$f2, 48($sp)
	lw	$a3, 4($sp)
	lw	$a26, 8($sp)
	fsw	$f3, 56($sp)
	move	$a0, $a3
	sw	$ra, 68($sp)
	addi	$sp, $sp, 72
	jal	add_reflection.3013
	subi	$sp, $sp, 72
	lw	$ra, 68($sp)
	fmove	$f30, $fv
	lw	$a0, 4($sp)
	addi	$a1, $a0, 1
	lw	$a2, 12($sp)
	addi	$a3, $a2, 2
	lw	$a4, 16($sp)
	flw	$f2, 4($a4)
	flw	$f0, 32($sp)
	flw	$f1, 40($sp)
	flw	$f3, 56($sp)
	lw	$a26, 8($sp)
	move	$a0, $a1
	move	$a1, $a3
	sw	$ra, 68($sp)
	addi	$sp, $sp, 72
	jal	add_reflection.3013
	subi	$sp, $sp, 72
	lw	$ra, 68($sp)
	fmove	$f30, $fv
	lw	$a0, 4($sp)
	addi	$a1, $a0, 2
	lw	$a2, 12($sp)
	addi	$a2, $a2, 3
	lw	$a3, 16($sp)
	flw	$f3, 8($a3)
	flw	$f0, 32($sp)
	flw	$f1, 40($sp)
	flw	$f2, 48($sp)
	lw	$a26, 8($sp)
	move	$a0, $a1
	move	$a1, $a2
	sw	$ra, 68($sp)
	addi	$sp, $sp, 72
	jal	add_reflection.3013
	subi	$sp, $sp, 72
	lw	$ra, 68($sp)
	fmove	$f30, $fv
	lw	$a0, 4($sp)
	addi	$a0, $a0, 3
	lw	$a1, 0($sp)
	sw	$a0, 0($a1)
	jr	$ra
setup_surface_reflection.3023:
	lw	$a2, 12($a26)
	lw	$a3, 8($a26)
	lw	$a4, 4($a26)
	sla	$a0, $a0, 2
	addi	$a0, $a0, 1
	lw	$a5, 0($a2)
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	l.6152
	subi	$sp, $sp, 8
	lw	$ra, 4($sp)
	mtc1	$f0, $a25
	sw	$a2, 0($sp)
	sw	$a0, 4($sp)
	sw	$a5, 8($sp)
	sw	$a4, 12($sp)
	sw	$a3, 16($sp)
	sw	$a1, 20($sp)
	fsw	$f0, 24($sp)
	move	$a0, $a1
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	o_diffuse.2625
	subi	$sp, $sp, 40
	lw	$ra, 36($sp)
	fmove	$f0, $fv
	flw	$f1, 24($sp)
	fsub	$f0, $f1, $f0
	lw	$a0, 20($sp)
	fsw	$f0, 32($sp)
	sw	$ra, 44($sp)
	addi	$sp, $sp, 48
	jal	o_param_abc.2617
	subi	$sp, $sp, 48
	lw	$ra, 44($sp)
	move	$a1, $v0
	lw	$a0, 16($sp)
	sw	$ra, 44($sp)
	addi	$sp, $sp, 48
	jal	veciprod.2576
	subi	$sp, $sp, 48
	lw	$ra, 44($sp)
	fmove	$f0, $fv
	sw	$ra, 44($sp)
	addi	$sp, $sp, 48
	jal	l.6151
	subi	$sp, $sp, 48
	lw	$ra, 44($sp)
	mtc1	$f1, $a25
	lw	$a0, 20($sp)
	fsw	$f0, 40($sp)
	fsw	$f1, 48($sp)
	sw	$ra, 60($sp)
	addi	$sp, $sp, 64
	jal	o_param_a.2611
	subi	$sp, $sp, 64
	lw	$ra, 60($sp)
	fmove	$f0, $fv
	flw	$f1, 48($sp)
	fmul	$f0, $f1, $f0
	flw	$f1, 40($sp)
	fmul	$f0, $f0, $f1
	lw	$a0, 16($sp)
	flw	$f2, 0($a0)
	fsub	$f0, $f0, $f2
	sw	$ra, 60($sp)
	addi	$sp, $sp, 64
	jal	l.6151
	subi	$sp, $sp, 64
	lw	$ra, 60($sp)
	mtc1	$f2, $a25
	lw	$a1, 20($sp)
	fsw	$f0, 56($sp)
	fsw	$f2, 64($sp)
	move	$a0, $a1
	sw	$ra, 76($sp)
	addi	$sp, $sp, 80
	jal	o_param_b.2613
	subi	$sp, $sp, 80
	lw	$ra, 76($sp)
	fmove	$f0, $fv
	flw	$f1, 64($sp)
	fmul	$f0, $f1, $f0
	flw	$f1, 40($sp)
	fmul	$f0, $f0, $f1
	lw	$a0, 16($sp)
	flw	$f2, 4($a0)
	fsub	$f0, $f0, $f2
	sw	$ra, 76($sp)
	addi	$sp, $sp, 80
	jal	l.6151
	subi	$sp, $sp, 80
	lw	$ra, 76($sp)
	mtc1	$f2, $a25
	lw	$a1, 20($sp)
	fsw	$f0, 72($sp)
	fsw	$f2, 80($sp)
	move	$a0, $a1
	sw	$ra, 92($sp)
	addi	$sp, $sp, 96
	jal	o_param_c.2615
	subi	$sp, $sp, 96
	lw	$ra, 92($sp)
	fmove	$f0, $fv
	flw	$f1, 80($sp)
	fmul	$f0, $f1, $f0
	flw	$f1, 40($sp)
	fmul	$f0, $f0, $f1
	lw	$a0, 16($sp)
	flw	$f1, 8($a0)
	fsub	$f3, $f0, $f1
	flw	$f0, 32($sp)
	flw	$f1, 56($sp)
	flw	$f2, 72($sp)
	lw	$a0, 8($sp)
	lw	$a1, 4($sp)
	lw	$a26, 12($sp)
	sw	$ra, 92($sp)
	addi	$sp, $sp, 96
	jal	add_reflection.3013
	subi	$sp, $sp, 96
	lw	$ra, 92($sp)
	fmove	$f30, $fv
	lw	$a0, 8($sp)
	addi	$a0, $a0, 1
	lw	$a1, 0($sp)
	sw	$a0, 0($a1)
	jr	$ra
setup_reflections.3026:
	lw	$a1, 12($a26)
	lw	$a2, 8($a26)
	lw	$a3, 4($a26)
	li	$a4, 0
	blt	$a0, $a4, bge_else.9227
	sll	$a4, $a0, 2
	add	$a4, $a3, $a4
	lw	$a3, 0($a4)
	sw	$a1, 0($sp)
	sw	$a0, 4($sp)
	sw	$a2, 8($sp)
	sw	$a3, 12($sp)
	move	$a0, $a3
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	o_reflectiontype.2605
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	move	$a0, $v0
	li	$a1, 2
	bne	$a0, $a1, beq_else.9228
	lw	$a0, 12($sp)
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	o_diffuse.2625
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	fmove	$f0, $fv
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	l.6152
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	mtc1	$f1, $a25
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	fless.2528
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	move	$a0, $v0
	li	$a1, 0
	bne	$a0, $a1, beq_else.9229
	jr	$ra
beq_else.9229:
	lw	$a0, 12($sp)
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	o_form.2603
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	move	$a0, $v0
	li	$a1, 1
	bne	$a0, $a1, beq_else.9231
	lw	$a0, 4($sp)
	lw	$a1, 12($sp)
	lw	$a26, 8($sp)
	lw	$a25, 0($a26)
	j	setup_rect_reflection.3020
beq_else.9231:
	li	$a1, 2
	bne	$a0, $a1, beq_else.9232
	lw	$a0, 4($sp)
	lw	$a1, 12($sp)
	lw	$a26, 0($sp)
	lw	$a25, 0($a26)
	j	setup_surface_reflection.3023
beq_else.9232:
	jr	$ra
beq_else.9228:
	jr	$ra
bge_else.9227:
	jr	$ra
rt.3028:
	lw	$a2, 56($a26)
	lw	$a3, 52($a26)
	lw	$a4, 48($a26)
	lw	$a5, 44($a26)
	lw	$a6, 40($a26)
	lw	$a7, 36($a26)
	lw	$a8, 32($a26)
	lw	$a9, 28($a26)
	lw	$a10, 24($a26)
	lw	$a11, 20($a26)
	lw	$a12, 16($a26)
	lw	$a13, 12($a26)
	lw	$a14, 8($a26)
	lw	$a15, 4($a26)
	sw	$a0, 0($a13)
	sw	$a1, 4($a13)
	sra	$a13, $a0, 1
	sw	$a13, 0($a14)
	sra	$a1, $a1, 1
	sw	$a1, 4($a14)
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	l.6742
	subi	$sp, $sp, 8
	lw	$ra, 4($sp)
	mtc1	$f0, $a25
	sw	$a6, 0($sp)
	sw	$a8, 4($sp)
	sw	$a3, 8($sp)
	sw	$a9, 12($sp)
	sw	$a4, 16($sp)
	sw	$a11, 20($sp)
	sw	$a10, 24($sp)
	sw	$a12, 28($sp)
	sw	$a2, 32($sp)
	sw	$a7, 36($sp)
	sw	$a15, 40($sp)
	sw	$a5, 44($sp)
	fsw	$f0, 48($sp)
	sw	$ra, 60($sp)
	addi	$sp, $sp, 64
	jal	float_of_int.2533
	subi	$sp, $sp, 64
	lw	$ra, 60($sp)
	fmove	$f0, $fv
	finv	$f0, $f0
	flw	$f1, 48($sp)
	fmul	$f0, $f1, $f0
	lw	$a0, 44($sp)
	fsw	$f0, 0($a0)
	lw	$a26, 40($sp)
	sw	$ra, 60($sp)
	addi	$sp, $sp, 64
	jal	create_pixelline.2975
	subi	$sp, $sp, 64
	lw	$ra, 60($sp)
	move	$a0, $v0
	lw	$a26, 40($sp)
	sw	$a0, 56($sp)
	sw	$ra, 60($sp)
	addi	$sp, $sp, 64
	jal	create_pixelline.2975
	subi	$sp, $sp, 64
	lw	$ra, 60($sp)
	move	$a0, $v0
	lw	$a26, 40($sp)
	sw	$a0, 60($sp)
	sw	$ra, 68($sp)
	addi	$sp, $sp, 72
	jal	create_pixelline.2975
	subi	$sp, $sp, 72
	lw	$ra, 68($sp)
	move	$a0, $v0
	lw	$a26, 36($sp)
	sw	$a0, 64($sp)
	sw	$ra, 68($sp)
	addi	$sp, $sp, 72
	jal	read_parameter.2693
	subi	$sp, $sp, 72
	lw	$ra, 68($sp)
	fmove	$f30, $fv
	lw	$a26, 32($sp)
	sw	$ra, 68($sp)
	addi	$sp, $sp, 72
	jal	write_ppm_header.2936
	subi	$sp, $sp, 72
	lw	$ra, 68($sp)
	fmove	$f30, $fv
	lw	$a26, 28($sp)
	sw	$ra, 68($sp)
	addi	$sp, $sp, 72
	jal	init_dirvecs.3011
	subi	$sp, $sp, 72
	lw	$ra, 68($sp)
	fmove	$f30, $fv
	lw	$a0, 24($sp)
	sw	$ra, 68($sp)
	addi	$sp, $sp, 72
	jal	d_vec.2662
	subi	$sp, $sp, 72
	lw	$ra, 68($sp)
	move	$a0, $v0
	lw	$a1, 20($sp)
	sw	$ra, 68($sp)
	addi	$sp, $sp, 72
	jal	veccpy.2565
	subi	$sp, $sp, 72
	lw	$ra, 68($sp)
	fmove	$f30, $fv
	lw	$a0, 24($sp)
	lw	$a26, 16($sp)
	sw	$ra, 68($sp)
	addi	$sp, $sp, 72
	jal	setup_dirvec_constants.2791
	subi	$sp, $sp, 72
	lw	$ra, 68($sp)
	fmove	$f30, $fv
	lw	$a0, 12($sp)
	lw	$a0, 0($a0)
	subi	$a0, $a0, 1
	lw	$a26, 8($sp)
	sw	$ra, 68($sp)
	addi	$sp, $sp, 72
	jal	setup_reflections.3026
	subi	$sp, $sp, 72
	lw	$ra, 68($sp)
	fmove	$f30, $fv
	li	$a1, 0
	li	$a2, 0
	lw	$a0, 60($sp)
	lw	$a26, 4($sp)
	sw	$ra, 68($sp)
	addi	$sp, $sp, 72
	jal	pretrace_line.2952
	subi	$sp, $sp, 72
	lw	$ra, 68($sp)
	fmove	$f30, $fv
	li	$a0, 0
	li	$a4, 2
	lw	$a1, 56($sp)
	lw	$a2, 60($sp)
	lw	$a3, 64($sp)
	lw	$a26, 0($sp)
	lw	$a25, 0($a26)
	j	scan_line.2962
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
	li	$a1, 0
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	l.6149
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
	li	$a1, 3
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	l.6149
	subi	$sp, $sp, 8
	lw	$ra, 4($sp)
	mtc1	$f0, $a25
	sw	$a0, 4($sp)
	move	$a0, $a1
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	min_caml_create_float_array
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	move	$a0, $v0
	li	$a1, 3
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	l.6149
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	mtc1	$f0, $a25
	sw	$a0, 8($sp)
	move	$a0, $a1
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	min_caml_create_float_array
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	move	$a0, $v0
	li	$a1, 3
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	l.6149
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
	li	$a1, 1
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	l.6555
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	mtc1	$f0, $a25
	sw	$a0, 16($sp)
	move	$a0, $a1
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	min_caml_create_float_array
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	move	$a0, $v0
	li	$a1, 50
	li	$a2, 1
	li	$a3, -1
	sw	$a0, 20($sp)
	sw	$a1, 24($sp)
	move	$a1, $a3
	move	$a0, $a2
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	min_caml_create_array
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	move	$a1, $v0
	lw	$a0, 24($sp)
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	min_caml_create_array
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	move	$a0, $v0
	li	$a1, 1
	li	$a2, 1
	lw	$a3, 0($a0)
	sw	$a0, 28($sp)
	sw	$a1, 32($sp)
	move	$a1, $a3
	move	$a0, $a2
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	min_caml_create_array
	subi	$sp, $sp, 40
	lw	$ra, 36($sp)
	move	$a1, $v0
	lw	$a0, 32($sp)
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	min_caml_create_array
	subi	$sp, $sp, 40
	lw	$ra, 36($sp)
	move	$a0, $v0
	li	$a1, 1
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	l.6149
	subi	$sp, $sp, 40
	lw	$ra, 36($sp)
	mtc1	$f0, $a25
	sw	$a0, 36($sp)
	move	$a0, $a1
	sw	$ra, 44($sp)
	addi	$sp, $sp, 48
	jal	min_caml_create_float_array
	subi	$sp, $sp, 48
	lw	$ra, 44($sp)
	move	$a0, $v0
	li	$a1, 1
	li	$a2, 0
	sw	$a0, 40($sp)
	move	$a0, $a1
	move	$a1, $a2
	sw	$ra, 44($sp)
	addi	$sp, $sp, 48
	jal	min_caml_create_array
	subi	$sp, $sp, 48
	lw	$ra, 44($sp)
	move	$a0, $v0
	li	$a1, 1
	sw	$ra, 44($sp)
	addi	$sp, $sp, 48
	jal	l.6502
	subi	$sp, $sp, 48
	lw	$ra, 44($sp)
	mtc1	$f0, $a25
	sw	$a0, 44($sp)
	move	$a0, $a1
	sw	$ra, 52($sp)
	addi	$sp, $sp, 56
	jal	min_caml_create_float_array
	subi	$sp, $sp, 56
	lw	$ra, 52($sp)
	move	$a0, $v0
	li	$a1, 3
	sw	$ra, 52($sp)
	addi	$sp, $sp, 56
	jal	l.6149
	subi	$sp, $sp, 56
	lw	$ra, 52($sp)
	mtc1	$f0, $a25
	sw	$a0, 48($sp)
	move	$a0, $a1
	sw	$ra, 52($sp)
	addi	$sp, $sp, 56
	jal	min_caml_create_float_array
	subi	$sp, $sp, 56
	lw	$ra, 52($sp)
	move	$a0, $v0
	li	$a1, 1
	li	$a2, 0
	sw	$a0, 52($sp)
	move	$a0, $a1
	move	$a1, $a2
	sw	$ra, 60($sp)
	addi	$sp, $sp, 64
	jal	min_caml_create_array
	subi	$sp, $sp, 64
	lw	$ra, 60($sp)
	move	$a0, $v0
	li	$a1, 3
	sw	$ra, 60($sp)
	addi	$sp, $sp, 64
	jal	l.6149
	subi	$sp, $sp, 64
	lw	$ra, 60($sp)
	mtc1	$f0, $a25
	sw	$a0, 56($sp)
	move	$a0, $a1
	sw	$ra, 60($sp)
	addi	$sp, $sp, 64
	jal	min_caml_create_float_array
	subi	$sp, $sp, 64
	lw	$ra, 60($sp)
	move	$a0, $v0
	li	$a1, 3
	sw	$ra, 60($sp)
	addi	$sp, $sp, 64
	jal	l.6149
	subi	$sp, $sp, 64
	lw	$ra, 60($sp)
	mtc1	$f0, $a25
	sw	$a0, 60($sp)
	move	$a0, $a1
	sw	$ra, 68($sp)
	addi	$sp, $sp, 72
	jal	min_caml_create_float_array
	subi	$sp, $sp, 72
	lw	$ra, 68($sp)
	move	$a0, $v0
	li	$a1, 3
	sw	$ra, 68($sp)
	addi	$sp, $sp, 72
	jal	l.6149
	subi	$sp, $sp, 72
	lw	$ra, 68($sp)
	mtc1	$f0, $a25
	sw	$a0, 64($sp)
	move	$a0, $a1
	sw	$ra, 68($sp)
	addi	$sp, $sp, 72
	jal	min_caml_create_float_array
	subi	$sp, $sp, 72
	lw	$ra, 68($sp)
	move	$a0, $v0
	li	$a1, 3
	sw	$ra, 68($sp)
	addi	$sp, $sp, 72
	jal	l.6149
	subi	$sp, $sp, 72
	lw	$ra, 68($sp)
	mtc1	$f0, $a25
	sw	$a0, 68($sp)
	move	$a0, $a1
	sw	$ra, 76($sp)
	addi	$sp, $sp, 80
	jal	min_caml_create_float_array
	subi	$sp, $sp, 80
	lw	$ra, 76($sp)
	move	$a0, $v0
	li	$a1, 2
	li	$a2, 0
	sw	$a0, 72($sp)
	move	$a0, $a1
	move	$a1, $a2
	sw	$ra, 76($sp)
	addi	$sp, $sp, 80
	jal	min_caml_create_array
	subi	$sp, $sp, 80
	lw	$ra, 76($sp)
	move	$a0, $v0
	li	$a1, 2
	li	$a2, 0
	sw	$a0, 76($sp)
	move	$a0, $a1
	move	$a1, $a2
	sw	$ra, 84($sp)
	addi	$sp, $sp, 88
	jal	min_caml_create_array
	subi	$sp, $sp, 88
	lw	$ra, 84($sp)
	move	$a0, $v0
	li	$a1, 1
	sw	$ra, 84($sp)
	addi	$sp, $sp, 88
	jal	l.6149
	subi	$sp, $sp, 88
	lw	$ra, 84($sp)
	mtc1	$f0, $a25
	sw	$a0, 80($sp)
	move	$a0, $a1
	sw	$ra, 84($sp)
	addi	$sp, $sp, 88
	jal	min_caml_create_float_array
	subi	$sp, $sp, 88
	lw	$ra, 84($sp)
	move	$a0, $v0
	li	$a1, 3
	sw	$ra, 84($sp)
	addi	$sp, $sp, 88
	jal	l.6149
	subi	$sp, $sp, 88
	lw	$ra, 84($sp)
	mtc1	$f0, $a25
	sw	$a0, 84($sp)
	move	$a0, $a1
	sw	$ra, 92($sp)
	addi	$sp, $sp, 96
	jal	min_caml_create_float_array
	subi	$sp, $sp, 96
	lw	$ra, 92($sp)
	move	$a0, $v0
	li	$a1, 3
	sw	$ra, 92($sp)
	addi	$sp, $sp, 96
	jal	l.6149
	subi	$sp, $sp, 96
	lw	$ra, 92($sp)
	mtc1	$f0, $a25
	sw	$a0, 88($sp)
	move	$a0, $a1
	sw	$ra, 92($sp)
	addi	$sp, $sp, 96
	jal	min_caml_create_float_array
	subi	$sp, $sp, 96
	lw	$ra, 92($sp)
	move	$a0, $v0
	li	$a1, 3
	sw	$ra, 92($sp)
	addi	$sp, $sp, 96
	jal	l.6149
	subi	$sp, $sp, 96
	lw	$ra, 92($sp)
	mtc1	$f0, $a25
	sw	$a0, 92($sp)
	move	$a0, $a1
	sw	$ra, 100($sp)
	addi	$sp, $sp, 104
	jal	min_caml_create_float_array
	subi	$sp, $sp, 104
	lw	$ra, 100($sp)
	move	$a0, $v0
	li	$a1, 3
	sw	$ra, 100($sp)
	addi	$sp, $sp, 104
	jal	l.6149
	subi	$sp, $sp, 104
	lw	$ra, 100($sp)
	mtc1	$f0, $a25
	sw	$a0, 96($sp)
	move	$a0, $a1
	sw	$ra, 100($sp)
	addi	$sp, $sp, 104
	jal	min_caml_create_float_array
	subi	$sp, $sp, 104
	lw	$ra, 100($sp)
	move	$a0, $v0
	li	$a1, 3
	sw	$ra, 100($sp)
	addi	$sp, $sp, 104
	jal	l.6149
	subi	$sp, $sp, 104
	lw	$ra, 100($sp)
	mtc1	$f0, $a25
	sw	$a0, 100($sp)
	move	$a0, $a1
	sw	$ra, 108($sp)
	addi	$sp, $sp, 112
	jal	min_caml_create_float_array
	subi	$sp, $sp, 112
	lw	$ra, 108($sp)
	move	$a0, $v0
	li	$a1, 3
	sw	$ra, 108($sp)
	addi	$sp, $sp, 112
	jal	l.6149
	subi	$sp, $sp, 112
	lw	$ra, 108($sp)
	mtc1	$f0, $a25
	sw	$a0, 104($sp)
	move	$a0, $a1
	sw	$ra, 108($sp)
	addi	$sp, $sp, 112
	jal	min_caml_create_float_array
	subi	$sp, $sp, 112
	lw	$ra, 108($sp)
	move	$a0, $v0
	li	$a1, 0
	sw	$ra, 108($sp)
	addi	$sp, $sp, 112
	jal	l.6149
	subi	$sp, $sp, 112
	lw	$ra, 108($sp)
	mtc1	$f0, $a25
	sw	$a0, 108($sp)
	move	$a0, $a1
	sw	$ra, 116($sp)
	addi	$sp, $sp, 120
	jal	min_caml_create_float_array
	subi	$sp, $sp, 120
	lw	$ra, 116($sp)
	move	$a1, $v0
	li	$a0, 0
	sw	$a1, 112($sp)
	sw	$ra, 116($sp)
	addi	$sp, $sp, 120
	jal	min_caml_create_array
	subi	$sp, $sp, 120
	lw	$ra, 116($sp)
	move	$a0, $v0
	li	$a1, 0
	move	$a2, $fp
	addi	$fp, $fp, 8
	sw	$a0, 4($a2)
	lw	$a0, 112($sp)
	sw	$a0, 0($a2)
	move	$a0, $a2
	move	$a25, $a1
	move	$a1, $a0
	move	$a0, $a25
	sw	$ra, 116($sp)
	addi	$sp, $sp, 120
	jal	min_caml_create_array
	subi	$sp, $sp, 120
	lw	$ra, 116($sp)
	move	$a1, $v0
	li	$a0, 5
	sw	$ra, 116($sp)
	addi	$sp, $sp, 120
	jal	min_caml_create_array
	subi	$sp, $sp, 120
	lw	$ra, 116($sp)
	move	$a0, $v0
	li	$a1, 0
	sw	$ra, 116($sp)
	addi	$sp, $sp, 120
	jal	l.6149
	subi	$sp, $sp, 120
	lw	$ra, 116($sp)
	mtc1	$f0, $a25
	sw	$a0, 116($sp)
	move	$a0, $a1
	sw	$ra, 124($sp)
	addi	$sp, $sp, 128
	jal	min_caml_create_float_array
	subi	$sp, $sp, 128
	lw	$ra, 124($sp)
	move	$a0, $v0
	li	$a1, 3
	sw	$ra, 124($sp)
	addi	$sp, $sp, 128
	jal	l.6149
	subi	$sp, $sp, 128
	lw	$ra, 124($sp)
	mtc1	$f0, $a25
	sw	$a0, 120($sp)
	move	$a0, $a1
	sw	$ra, 124($sp)
	addi	$sp, $sp, 128
	jal	min_caml_create_float_array
	subi	$sp, $sp, 128
	lw	$ra, 124($sp)
	move	$a0, $v0
	li	$a1, 60
	lw	$a2, 120($sp)
	sw	$a0, 124($sp)
	move	$a0, $a1
	move	$a1, $a2
	sw	$ra, 132($sp)
	addi	$sp, $sp, 136
	jal	min_caml_create_array
	subi	$sp, $sp, 136
	lw	$ra, 132($sp)
	move	$a0, $v0
	move	$a1, $fp
	addi	$fp, $fp, 8
	sw	$a0, 4($a1)
	lw	$a0, 124($sp)
	sw	$a0, 0($a1)
	move	$a0, $a1
	li	$a1, 0
	sw	$ra, 132($sp)
	addi	$sp, $sp, 136
	jal	l.6149
	subi	$sp, $sp, 136
	lw	$ra, 132($sp)
	mtc1	$f0, $a25
	sw	$a0, 128($sp)
	move	$a0, $a1
	sw	$ra, 132($sp)
	addi	$sp, $sp, 136
	jal	min_caml_create_float_array
	subi	$sp, $sp, 136
	lw	$ra, 132($sp)
	move	$a1, $v0
	li	$a0, 0
	sw	$a1, 132($sp)
	sw	$ra, 140($sp)
	addi	$sp, $sp, 144
	jal	min_caml_create_array
	subi	$sp, $sp, 144
	lw	$ra, 140($sp)
	move	$a0, $v0
	move	$a1, $fp
	addi	$fp, $fp, 8
	sw	$a0, 4($a1)
	lw	$a0, 132($sp)
	sw	$a0, 0($a1)
	move	$a0, $a1
	li	$a1, 180
	li	$a2, 0
	sw	$ra, 140($sp)
	addi	$sp, $sp, 144
	jal	l.6149
	subi	$sp, $sp, 144
	lw	$ra, 140($sp)
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
	sw	$ra, 140($sp)
	addi	$sp, $sp, 144
	jal	min_caml_create_array
	subi	$sp, $sp, 144
	lw	$ra, 140($sp)
	move	$a0, $v0
	li	$a1, 1
	li	$a2, 0
	sw	$a0, 136($sp)
	move	$a0, $a1
	move	$a1, $a2
	sw	$ra, 140($sp)
	addi	$sp, $sp, 144
	jal	min_caml_create_array
	subi	$sp, $sp, 144
	lw	$ra, 140($sp)
	move	$a0, $v0
	move	$a1, $fp
	addi	$fp, $fp, 24
	lil	$a2, read_screen_settings.2674
	sw	$a2, 0($a1)
	lw	$a2, 12($sp)
	sw	$a2, 20($a1)
	lw	$a3, 104($sp)
	sw	$a3, 16($a1)
	lw	$a4, 100($sp)
	sw	$a4, 12($a1)
	lw	$a5, 96($sp)
	sw	$a5, 8($a1)
	lw	$a6, 8($sp)
	sw	$a6, 4($a1)
	move	$a6, $fp
	addi	$fp, $fp, 16
	lil	$a7, read_light.2676
	sw	$a7, 0($a6)
	lw	$a7, 16($sp)
	sw	$a7, 8($a6)
	lw	$a8, 20($sp)
	sw	$a8, 4($a6)
	move	$a9, $fp
	addi	$fp, $fp, 8
	lil	$a10, read_nth_object.2681
	sw	$a10, 0($a9)
	lw	$a10, 4($sp)
	sw	$a10, 4($a9)
	move	$a11, $fp
	addi	$fp, $fp, 16
	lil	$a12, read_object.2683
	sw	$a12, 0($a11)
	sw	$a9, 8($a11)
	lw	$a9, 0($sp)
	sw	$a9, 4($a11)
	move	$a12, $fp
	addi	$fp, $fp, 8
	lil	$a13, read_all_object.2685
	sw	$a13, 0($a12)
	sw	$a11, 4($a12)
	move	$a11, $fp
	addi	$fp, $fp, 8
	lil	$a13, read_and_network.2691
	sw	$a13, 0($a11)
	lw	$a13, 28($sp)
	sw	$a13, 4($a11)
	move	$a14, $fp
	addi	$fp, $fp, 24
	lil	$a15, read_parameter.2693
	sw	$a15, 0($a14)
	sw	$a1, 20($a14)
	sw	$a6, 16($a14)
	sw	$a11, 12($a14)
	sw	$a12, 8($a14)
	lw	$a1, 36($sp)
	sw	$a1, 4($a14)
	move	$a6, $fp
	addi	$fp, $fp, 8
	lil	$a11, solver_rect_surface.2695
	sw	$a11, 0($a6)
	lw	$a11, 40($sp)
	sw	$a11, 4($a6)
	move	$a12, $fp
	addi	$fp, $fp, 8
	lil	$a15, solver_rect.2704
	sw	$a15, 0($a12)
	sw	$a6, 4($a12)
	move	$a6, $fp
	addi	$fp, $fp, 8
	lil	$a15, solver_surface.2710
	sw	$a15, 0($a6)
	sw	$a11, 4($a6)
	move	$a15, $fp
	addi	$fp, $fp, 8
	lil	$a16, solver_second.2729
	sw	$a16, 0($a15)
	sw	$a11, 4($a15)
	move	$a16, $fp
	addi	$fp, $fp, 24
	lil	$a17, solver.2735
	sw	$a17, 0($a16)
	sw	$a6, 16($a16)
	sw	$a15, 12($a16)
	sw	$a12, 8($a16)
	sw	$a10, 4($a16)
	move	$a6, $fp
	addi	$fp, $fp, 8
	lil	$a12, solver_rect_fast.2739
	sw	$a12, 0($a6)
	sw	$a11, 4($a6)
	move	$a12, $fp
	addi	$fp, $fp, 8
	lil	$a15, solver_surface_fast.2746
	sw	$a15, 0($a12)
	sw	$a11, 4($a12)
	move	$a15, $fp
	addi	$fp, $fp, 8
	lil	$a17, solver_second_fast.2752
	sw	$a17, 0($a15)
	sw	$a11, 4($a15)
	move	$a17, $fp
	addi	$fp, $fp, 24
	lil	$a18, solver_fast.2758
	sw	$a18, 0($a17)
	sw	$a12, 16($a17)
	sw	$a15, 12($a17)
	sw	$a6, 8($a17)
	sw	$a10, 4($a17)
	move	$a12, $fp
	addi	$fp, $fp, 8
	lil	$a15, solver_surface_fast2.2762
	sw	$a15, 0($a12)
	sw	$a11, 4($a12)
	move	$a15, $fp
	addi	$fp, $fp, 8
	lil	$a18, solver_second_fast2.2769
	sw	$a18, 0($a15)
	sw	$a11, 4($a15)
	move	$a18, $fp
	addi	$fp, $fp, 24
	lil	$a19, solver_fast2.2776
	sw	$a19, 0($a18)
	sw	$a12, 16($a18)
	sw	$a15, 12($a18)
	sw	$a6, 8($a18)
	sw	$a10, 4($a18)
	move	$a6, $fp
	addi	$fp, $fp, 8
	lil	$a12, iter_setup_dirvec_constants.2788
	sw	$a12, 0($a6)
	sw	$a10, 4($a6)
	move	$a12, $fp
	addi	$fp, $fp, 16
	lil	$a15, setup_dirvec_constants.2791
	sw	$a15, 0($a12)
	sw	$a9, 8($a12)
	sw	$a6, 4($a12)
	move	$a6, $fp
	addi	$fp, $fp, 8
	lil	$a15, setup_startp_constants.2793
	sw	$a15, 0($a6)
	sw	$a10, 4($a6)
	move	$a15, $fp
	addi	$fp, $fp, 16
	lil	$a19, setup_startp.2796
	sw	$a19, 0($a15)
	lw	$a19, 92($sp)
	sw	$a19, 12($a15)
	sw	$a6, 8($a15)
	sw	$a9, 4($a15)
	move	$a6, $fp
	addi	$fp, $fp, 8
	lil	$a20, check_all_inside.2818
	sw	$a20, 0($a6)
	sw	$a10, 4($a6)
	move	$a20, $fp
	addi	$fp, $fp, 32
	lil	$a21, shadow_check_and_group.2824
	sw	$a21, 0($a20)
	sw	$a17, 28($a20)
	sw	$a11, 24($a20)
	sw	$a10, 20($a20)
	lw	$a21, 128($sp)
	sw	$a21, 16($a20)
	sw	$a7, 12($a20)
	lw	$a22, 52($sp)
	sw	$a22, 8($a20)
	sw	$a6, 4($a20)
	move	$a23, $fp
	addi	$fp, $fp, 16
	lil	$a24, shadow_check_one_or_group.2827
	sw	$a24, 0($a23)
	sw	$a20, 8($a23)
	sw	$a13, 4($a23)
	move	$a20, $fp
	addi	$fp, $fp, 24
	lil	$a24, shadow_check_one_or_matrix.2830
	sw	$a24, 0($a20)
	sw	$a17, 20($a20)
	sw	$a11, 16($a20)
	sw	$a23, 12($a20)
	sw	$a21, 8($a20)
	sw	$a22, 4($a20)
	move	$a17, $fp
	addi	$fp, $fp, 40
	lil	$a23, solve_each_element.2833
	sw	$a23, 0($a17)
	lw	$a23, 48($sp)
	sw	$a23, 36($a17)
	lw	$a24, 88($sp)
	sw	$a24, 32($a17)
	sw	$a11, 28($a17)
	sw	$a16, 24($a17)
	sw	$a10, 20($a17)
	lw	$a25, 44($sp)
	sw	$a25, 16($a17)
	sw	$a22, 12($a17)
	lw	$a26, 56($sp)
	sw	$a26, 8($a17)
	sw	$a6, 4($a17)
	move	$a21, $fp
	addi	$fp, $fp, 16
	sw	$a14, 140($sp)
	lil	$a14, solve_one_or_network.2837
	sw	$a14, 0($a21)
	sw	$a17, 8($a21)
	sw	$a13, 4($a21)
	move	$a14, $fp
	addi	$fp, $fp, 24
	lil	$a17, trace_or_matrix.2841
	sw	$a17, 0($a14)
	sw	$a23, 20($a14)
	sw	$a24, 16($a14)
	sw	$a11, 12($a14)
	sw	$a16, 8($a14)
	sw	$a21, 4($a14)
	move	$a16, $fp
	addi	$fp, $fp, 16
	lil	$a17, judge_intersection.2845
	sw	$a17, 0($a16)
	sw	$a14, 12($a16)
	sw	$a23, 8($a16)
	sw	$a1, 4($a16)
	move	$a14, $fp
	addi	$fp, $fp, 40
	lil	$a17, solve_each_element_fast.2847
	sw	$a17, 0($a14)
	sw	$a23, 36($a14)
	sw	$a19, 32($a14)
	sw	$a18, 28($a14)
	sw	$a11, 24($a14)
	sw	$a10, 20($a14)
	sw	$a25, 16($a14)
	sw	$a22, 12($a14)
	sw	$a26, 8($a14)
	sw	$a6, 4($a14)
	move	$a6, $fp
	addi	$fp, $fp, 16
	lil	$a17, solve_one_or_network_fast.2851
	sw	$a17, 0($a6)
	sw	$a14, 8($a6)
	sw	$a13, 4($a6)
	move	$a13, $fp
	addi	$fp, $fp, 24
	lil	$a14, trace_or_matrix_fast.2855
	sw	$a14, 0($a13)
	sw	$a23, 16($a13)
	sw	$a18, 12($a13)
	sw	$a11, 8($a13)
	sw	$a6, 4($a13)
	move	$a6, $fp
	addi	$fp, $fp, 16
	lil	$a11, judge_intersection_fast.2859
	sw	$a11, 0($a6)
	sw	$a13, 12($a6)
	sw	$a23, 8($a6)
	sw	$a1, 4($a6)
	move	$a11, $fp
	addi	$fp, $fp, 16
	lil	$a13, get_nvector_rect.2861
	sw	$a13, 0($a11)
	lw	$a13, 60($sp)
	sw	$a13, 8($a11)
	sw	$a25, 4($a11)
	move	$a14, $fp
	addi	$fp, $fp, 8
	lil	$a17, get_nvector_plane.2863
	sw	$a17, 0($a14)
	sw	$a13, 4($a14)
	move	$a17, $fp
	addi	$fp, $fp, 16
	lil	$a18, get_nvector_second.2865
	sw	$a18, 0($a17)
	sw	$a13, 8($a17)
	sw	$a22, 4($a17)
	move	$a18, $fp
	addi	$fp, $fp, 16
	lil	$a19, get_nvector.2867
	sw	$a19, 0($a18)
	sw	$a17, 12($a18)
	sw	$a11, 8($a18)
	sw	$a14, 4($a18)
	move	$a11, $fp
	addi	$fp, $fp, 8
	lil	$a14, utexture.2870
	sw	$a14, 0($a11)
	lw	$a14, 64($sp)
	sw	$a14, 4($a11)
	move	$a17, $fp
	addi	$fp, $fp, 16
	lil	$a19, add_light.2873
	sw	$a19, 0($a17)
	sw	$a14, 8($a17)
	lw	$a19, 72($sp)
	sw	$a19, 4($a17)
	move	$a21, $fp
	addi	$fp, $fp, 40
	sw	$a12, 144($sp)
	lil	$a12, trace_reflections.2877
	sw	$a12, 0($a21)
	sw	$a20, 32($a21)
	lw	$a12, 136($sp)
	sw	$a12, 28($a21)
	sw	$a1, 24($a21)
	sw	$a13, 20($a21)
	sw	$a6, 16($a21)
	sw	$a25, 12($a21)
	sw	$a26, 8($a21)
	sw	$a17, 4($a21)
	move	$a12, $fp
	addi	$fp, $fp, 88
	lil	$a9, trace_ray.2882
	sw	$a9, 0($a12)
	sw	$a11, 80($a12)
	sw	$a21, 76($a12)
	sw	$a23, 72($a12)
	sw	$a14, 68($a12)
	sw	$a24, 64($a12)
	sw	$a20, 60($a12)
	sw	$a15, 56($a12)
	sw	$a19, 52($a12)
	sw	$a1, 48($a12)
	sw	$a10, 44($a12)
	sw	$a13, 40($a12)
	sw	$a0, 36($a12)
	sw	$a7, 32($a12)
	sw	$a16, 28($a12)
	sw	$a25, 24($a12)
	sw	$a22, 20($a12)
	sw	$a26, 16($a12)
	sw	$a18, 12($a12)
	sw	$a8, 8($a12)
	sw	$a17, 4($a12)
	move	$a8, $fp
	addi	$fp, $fp, 56
	lil	$a9, trace_diffuse_ray.2888
	sw	$a9, 0($a8)
	sw	$a11, 48($a8)
	sw	$a14, 44($a8)
	sw	$a20, 40($a8)
	sw	$a1, 36($a8)
	sw	$a10, 32($a8)
	sw	$a13, 28($a8)
	sw	$a7, 24($a8)
	sw	$a6, 20($a8)
	sw	$a22, 16($a8)
	sw	$a26, 12($a8)
	sw	$a18, 8($a8)
	lw	$a1, 68($sp)
	sw	$a1, 4($a8)
	move	$a6, $fp
	addi	$fp, $fp, 8
	lil	$a9, iter_trace_diffuse_rays.2891
	sw	$a9, 0($a6)
	sw	$a8, 4($a6)
	move	$a8, $fp
	addi	$fp, $fp, 16
	lil	$a9, trace_diffuse_rays.2896
	sw	$a9, 0($a8)
	sw	$a15, 8($a8)
	sw	$a6, 4($a8)
	move	$a6, $fp
	addi	$fp, $fp, 16
	lil	$a9, trace_diffuse_ray_80percent.2900
	sw	$a9, 0($a6)
	sw	$a8, 8($a6)
	lw	$a9, 116($sp)
	sw	$a9, 4($a6)
	move	$a11, $fp
	addi	$fp, $fp, 16
	lil	$a13, calc_diffuse_using_1point.2904
	sw	$a13, 0($a11)
	sw	$a6, 12($a11)
	sw	$a19, 8($a11)
	sw	$a1, 4($a11)
	move	$a6, $fp
	addi	$fp, $fp, 16
	lil	$a13, calc_diffuse_using_5points.2907
	sw	$a13, 0($a6)
	sw	$a19, 8($a6)
	sw	$a1, 4($a6)
	move	$a13, $fp
	addi	$fp, $fp, 8
	lil	$a14, do_without_neighbors.2913
	sw	$a14, 0($a13)
	sw	$a11, 4($a13)
	move	$a11, $fp
	addi	$fp, $fp, 8
	lil	$a14, neighbors_exist.2916
	sw	$a14, 0($a11)
	lw	$a14, 76($sp)
	sw	$a14, 4($a11)
	move	$a15, $fp
	addi	$fp, $fp, 16
	lil	$a16, try_exploit_neighbors.2929
	sw	$a16, 0($a15)
	sw	$a13, 8($a15)
	sw	$a6, 4($a15)
	move	$a6, $fp
	addi	$fp, $fp, 8
	lil	$a16, write_ppm_header.2936
	sw	$a16, 0($a6)
	sw	$a14, 4($a6)
	move	$a16, $fp
	addi	$fp, $fp, 8
	lil	$a17, write_rgb.2940
	sw	$a17, 0($a16)
	sw	$a19, 4($a16)
	move	$a17, $fp
	addi	$fp, $fp, 16
	lil	$a18, pretrace_diffuse_rays.2942
	sw	$a18, 0($a17)
	sw	$a8, 12($a17)
	sw	$a9, 8($a17)
	sw	$a1, 4($a17)
	move	$a1, $fp
	addi	$fp, $fp, 40
	lil	$a8, pretrace_pixels.2945
	sw	$a8, 0($a1)
	sw	$a2, 36($a1)
	sw	$a12, 32($a1)
	sw	$a24, 28($a1)
	sw	$a5, 24($a1)
	lw	$a2, 84($sp)
	sw	$a2, 20($a1)
	sw	$a19, 16($a1)
	lw	$a5, 108($sp)
	sw	$a5, 12($a1)
	sw	$a17, 8($a1)
	lw	$a5, 80($sp)
	sw	$a5, 4($a1)
	move	$a8, $fp
	addi	$fp, $fp, 32
	lil	$a12, pretrace_line.2952
	sw	$a12, 0($a8)
	sw	$a3, 24($a8)
	sw	$a4, 20($a8)
	sw	$a2, 16($a8)
	sw	$a1, 12($a8)
	sw	$a14, 8($a8)
	sw	$a5, 4($a8)
	move	$a1, $fp
	addi	$fp, $fp, 32
	lil	$a3, scan_pixel.2956
	sw	$a3, 0($a1)
	sw	$a16, 24($a1)
	sw	$a15, 20($a1)
	sw	$a19, 16($a1)
	sw	$a11, 12($a1)
	sw	$a14, 8($a1)
	sw	$a13, 4($a1)
	move	$a3, $fp
	addi	$fp, $fp, 16
	lil	$a4, scan_line.2962
	sw	$a4, 0($a3)
	sw	$a1, 12($a3)
	sw	$a8, 8($a3)
	sw	$a14, 4($a3)
	move	$a1, $fp
	addi	$fp, $fp, 8
	lil	$a4, create_pixelline.2975
	sw	$a4, 0($a1)
	sw	$a14, 4($a1)
	move	$a4, $fp
	addi	$fp, $fp, 8
	lil	$a11, calc_dirvec.2982
	sw	$a11, 0($a4)
	sw	$a9, 4($a4)
	move	$a11, $fp
	addi	$fp, $fp, 8
	lil	$a12, calc_dirvecs.2990
	sw	$a12, 0($a11)
	sw	$a4, 4($a11)
	move	$a4, $fp
	addi	$fp, $fp, 8
	lil	$a12, calc_dirvec_rows.2995
	sw	$a12, 0($a4)
	sw	$a11, 4($a4)
	move	$a11, $fp
	addi	$fp, $fp, 8
	lil	$a12, create_dirvec.2999
	sw	$a12, 0($a11)
	lw	$a12, 0($sp)
	sw	$a12, 4($a11)
	move	$a13, $fp
	addi	$fp, $fp, 8
	lil	$a15, create_dirvec_elements.3001
	sw	$a15, 0($a13)
	sw	$a11, 4($a13)
	move	$a15, $fp
	addi	$fp, $fp, 16
	lil	$a16, create_dirvecs.3004
	sw	$a16, 0($a15)
	sw	$a9, 12($a15)
	sw	$a13, 8($a15)
	sw	$a11, 4($a15)
	move	$a13, $fp
	addi	$fp, $fp, 8
	lil	$a16, init_dirvec_constants.3006
	sw	$a16, 0($a13)
	lw	$a16, 144($sp)
	sw	$a16, 4($a13)
	move	$a17, $fp
	addi	$fp, $fp, 16
	lil	$a18, init_vecset_constants.3009
	sw	$a18, 0($a17)
	sw	$a13, 8($a17)
	sw	$a9, 4($a17)
	move	$a9, $fp
	addi	$fp, $fp, 16
	lil	$a13, init_dirvecs.3011
	sw	$a13, 0($a9)
	sw	$a17, 12($a9)
	sw	$a15, 8($a9)
	sw	$a4, 4($a9)
	move	$a4, $fp
	addi	$fp, $fp, 16
	lil	$a13, add_reflection.3013
	sw	$a13, 0($a4)
	sw	$a16, 12($a4)
	lw	$a13, 136($sp)
	sw	$a13, 8($a4)
	sw	$a11, 4($a4)
	move	$a11, $fp
	addi	$fp, $fp, 16
	lil	$a13, setup_rect_reflection.3020
	sw	$a13, 0($a11)
	sw	$a0, 12($a11)
	sw	$a7, 8($a11)
	sw	$a4, 4($a11)
	move	$a13, $fp
	addi	$fp, $fp, 16
	lil	$a15, setup_surface_reflection.3023
	sw	$a15, 0($a13)
	sw	$a0, 12($a13)
	sw	$a7, 8($a13)
	sw	$a4, 4($a13)
	move	$a0, $fp
	addi	$fp, $fp, 16
	lil	$a4, setup_reflections.3026
	sw	$a4, 0($a0)
	sw	$a13, 12($a0)
	sw	$a11, 8($a0)
	sw	$a10, 4($a0)
	move	$a26, $fp
	addi	$fp, $fp, 64
	lil	$a4, rt.3028
	sw	$a4, 0($a26)
	sw	$a6, 56($a26)
	sw	$a0, 52($a26)
	sw	$a16, 48($a26)
	sw	$a2, 44($a26)
	sw	$a3, 40($a26)
	lw	$a0, 140($sp)
	sw	$a0, 36($a26)
	sw	$a8, 32($a26)
	sw	$a12, 28($a26)
	lw	$a0, 128($sp)
	sw	$a0, 24($a26)
	sw	$a7, 20($a26)
	sw	$a9, 16($a26)
	sw	$a14, 12($a26)
	sw	$a5, 8($a26)
	sw	$a1, 4($a26)
	li	$a0, 128
	li	$a1, 128
	sw	$ra, 148($sp)
	addi	$sp, $sp, 152
	jal	rt.3028
	subi	$sp, $sp, 152
	lw	$ra, 148($sp)
	fmove	$f30, $fv
	li	$a0, 0
	sw	$ra, 148($sp)
	addi	$sp, $sp, 152
	jal	min_caml_print_int
	subi	$sp, $sp, 152
	lw	$ra, 148($sp)
	move	$a0, $v0
	j exit   # main program end
