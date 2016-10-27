l.6936:	 # 128.000000
	li	$a25, 17152
	sll	$a25, $a25, 16
	ori	$a25, 0
	ja $ra
l.6903:	 # 0.900000
	li	$a25, 16230
	sll	$a25, $a25, 16
	ori	$a25, 26214
	ja $ra
l.6902:	 # 0.200000
	li	$a25, 15948
	sll	$a25, $a25, 16
	ori	$a25, 52429
	ja $ra
l.6808:	 # 150.000000
	li	$a25, 17174
	sll	$a25, $a25, 16
	ori	$a25, 0
	ja $ra
l.6806:	 # -150.000000
	li	$a25, -15594
	sll	$a25, $a25, 16
	ori	$a25, 0
	ja $ra
l.6790:	 # 0.100000
	li	$a25, 15820
	sll	$a25, $a25, 16
	ori	$a25, 52429
	ja $ra
l.6787:	 # -2.000000
	li	$a25, -16384
	sll	$a25, $a25, 16
	ori	$a25, 0
	ja $ra
l.6785:	 # 256.000000
	li	$a25, 17280
	sll	$a25, $a25, 16
	ori	$a25, 0
	ja $ra
l.6763:	 # 20.000000
	li	$a25, 16800
	sll	$a25, $a25, 16
	ori	$a25, 0
	ja $ra
l.6762:	 # 0.050000
	li	$a25, 15692
	sll	$a25, $a25, 16
	ori	$a25, 52429
	ja $ra
l.6758:	 # 0.250000
	li	$a25, 16000
	sll	$a25, $a25, 16
	ori	$a25, 0
	ja $ra
l.6754:	 # 10.000000
	li	$a25, 16672
	sll	$a25, $a25, 16
	ori	$a25, 0
	ja $ra
l.6750:	 # 0.300000
	li	$a25, 16025
	sll	$a25, $a25, 16
	ori	$a25, 39322
	ja $ra
l.6749:	 # 255.000000
	li	$a25, 17279
	sll	$a25, $a25, 16
	ori	$a25, 0
	ja $ra
l.6748:	 # 0.500000
	li	$a25, 16128
	sll	$a25, $a25, 16
	ori	$a25, 0
	ja $ra
l.6747:	 # 0.150000
	li	$a25, 15897
	sll	$a25, $a25, 16
	ori	$a25, 39322
	ja $ra
l.6745:	 # 3.141593
	li	$a25, 16457
	sll	$a25, $a25, 16
	ori	$a25, 4059
	ja $ra
l.6744:	 # 30.000000
	li	$a25, 16880
	sll	$a25, $a25, 16
	ori	$a25, 0
	ja $ra
l.6743:	 # 15.000000
	li	$a25, 16752
	sll	$a25, $a25, 16
	ori	$a25, 0
	ja $ra
l.6742:	 # 0.000100
	li	$a25, 14545
	sll	$a25, $a25, 16
	ori	$a25, 46871
	ja $ra
l.6699:	 # 100000000.000000
	li	$a25, 19646
	sll	$a25, $a25, 16
	ori	$a25, 48160
	ja $ra
l.6695:	 # 1000000000.000000
	li	$a25, 20078
	sll	$a25, $a25, 16
	ori	$a25, 27432
	ja $ra
l.6675:	 # -0.100000
	li	$a25, -16948
	sll	$a25, $a25, 16
	ori	$a25, 52429
	ja $ra
l.6662:	 # 0.010000
	li	$a25, 15395
	sll	$a25, $a25, 16
	ori	$a25, 55050
	ja $ra
l.6661:	 # -0.200000
	li	$a25, -16820
	sll	$a25, $a25, 16
	ori	$a25, 52429
	ja $ra
l.6470:	 # 2.000000
	li	$a25, 16384
	sll	$a25, $a25, 16
	ori	$a25, 0
	ja $ra
l.6436:	 # -200.000000
	li	$a25, -15544
	sll	$a25, $a25, 16
	ori	$a25, 0
	ja $ra
l.6434:	 # 200.000000
	li	$a25, 17224
	sll	$a25, $a25, 16
	ori	$a25, 0
	ja $ra
l.6430:	 # 0.017453
	li	$a25, 15502
	sll	$a25, $a25, 16
	ori	$a25, 64053
	ja $ra
l.6347:	 # -1.000000
	li	$a25, -16512
	sll	$a25, $a25, 16
	ori	$a25, 0
	ja $ra
l.6346:	 # 1.000000
	li	$a25, 16256
	sll	$a25, $a25, 16
	ori	$a25, 0
	ja $ra
l.6345:	 # 0.000000
	li	$a25, 0
	sll	$a25, $a25, 16
	ori	$a25, 0
	ja $ra
xor.2627:
	li	$a3, 0
	bne	$a1, $a3, beq_else.8294
	move	$v0, $a2
	jr $ra
beq_else.8294:
	li	$a1, 0
	bne	$a2, $a1, beq_else.8295
	li	$v0, 1
	jr $ra
beq_else.8295:
	li	$v0, 0
	jr $ra
sgn.2630:
	sw	$f0, 0($sp)
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	min_caml_fiszero
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	move	$a1, $v0
	li	$a2, 0
	bne	$a1, $a2, beq_else.8296
	lw	$f0, 0($sp)
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	min_caml_fispos
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	move	$a1, $v0
	li	$a2, 0
	bne	$a1, $a2, beq_else.8297
	jal l.6347
	mtc1	$fv, $a25
	jr $ra
beq_else.8297:
	jal l.6346
	mtc1	$fv, $a25
	jr $ra
beq_else.8296:
	jal l.6345
	mtc1	$fv, $a25
	jr $ra
fneg_cond.2632:
	li	$a2, 0
	bne	$a1, $a2, beq_else.8298
	b	min_caml_fneg
beq_else.8298:
	fmove	$fv, $f0
	jr $ra
add_mod5.2635:
	add	$a1, $a1, $a2
	li	$a2, 5
	ble	$a1, $a2, ble_else.8299
	subi	$v0, $a1, 5
	jr $ra
ble_else.8299:
	move	$v0, $a1
	jr $ra
vecset.2638:
	fsw	$f0, 0($a1)
	fsw	$f1, 8($a1)
	fsw	$f2, 16($a1)
	jr $ra
vecfill.2643:
	fsw	$f0, 0($a1)
	fsw	$f0, 8($a1)
	fsw	$f0, 16($a1)
	jr $ra
vecbzero.2646:
	jal l.6345
	mtc1	$f0, $a25
	b	vecfill.2643
veccpy.2648:
	flw	$f0, 0($a2)
	fsw	$f0, 0($a1)
	flw	$f0, 8($a2)
	fsw	$f0, 8($a1)
	flw	$f0, 16($a2)
	fsw	$f0, 16($a1)
	jr $ra
vecunit_sgn.2656:
	flw	$f0, 0($a1)
	sw	$a2, 0($sp)
	sw	$a1, 4($sp)
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	min_caml_fsqr
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	fmove	$f0, $fv
	lw	$a1, 4($sp)
	flw	$f1, 8($a1)
	sw	$f0, 8($sp)
	fmove	$f0, $f1
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	min_caml_fsqr
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	fmove	$f0, $fv
	lw	$f1, 8($sp)
	fadd	$f0, $f1, $f0
	lw	$a1, 4($sp)
	flw	$f1, 16($a1)
	sw	$f0, 16($sp)
	fmove	$f0, $f1
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	min_caml_fsqr
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	fmove	$f0, $fv
	lw	$f1, 16($sp)
	fadd	$f0, $f1, $f0
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	min_caml_sqrt
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	fmove	$f0, $fv
	sw	$f0, 24($sp)
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	min_caml_fiszero
	subi	$sp, $sp, 40
	lw	$ra, 36($sp)
	move	$a1, $v0
	li	$a2, 0
	bne	$a1, $a2, beq_else.8303
	li	$a1, 0
	lw	$a2, 0($sp)
	bne	$a2, $a1, beq_else.8305
	jal l.6346
	mtc1	$f0, $a25
	lw	$f1, 24($sp)
	finv	$f1, $f1
	fmul	$f0, $f0, $f1
	j	beq_cont.8306
beq_else.8305:
	jal l.6347
	mtc1	$f0, $a25
	lw	$f1, 24($sp)
	finv	$f1, $f1
	fmul	$f0, $f0, $f1
beq_cont.8306:
	j	beq_cont.8304
beq_else.8303:
	jal l.6346
	mtc1	$f0, $a25
beq_cont.8304:
	lw	$a1, 4($sp)
	flw	$f1, 0($a1)
	fmul	$f1, $f1, $f0
	fsw	$f1, 0($a1)
	flw	$f1, 8($a1)
	fmul	$f1, $f1, $f0
	fsw	$f1, 8($a1)
	flw	$f1, 16($a1)
	fmul	$f0, $f1, $f0
	fsw	$f0, 16($a1)
	jr $ra
veciprod.2659:
	flw	$f0, 0($a1)
	flw	$f1, 0($a2)
	fmul	$f0, $f0, $f1
	flw	$f1, 8($a1)
	flw	$f2, 8($a2)
	fmul	$f1, $f1, $f2
	fadd	$f0, $f0, $f1
	flw	$f1, 16($a1)
	flw	$f2, 16($a2)
	fmul	$f1, $f1, $f2
	fadd	$fv, $f0, $f1
	jr $ra
veciprod2.2662:
	flw	$f3, 0($a1)
	fmul	$f0, $f3, $f0
	flw	$f3, 8($a1)
	fmul	$f1, $f3, $f1
	fadd	$f0, $f0, $f1
	flw	$f1, 16($a1)
	fmul	$f1, $f1, $f2
	fadd	$fv, $f0, $f1
	jr $ra
vecaccum.2667:
	flw	$f1, 0($a1)
	flw	$f2, 0($a2)
	fmul	$f2, $f0, $f2
	fadd	$f1, $f1, $f2
	fsw	$f1, 0($a1)
	flw	$f1, 8($a1)
	flw	$f2, 8($a2)
	fmul	$f2, $f0, $f2
	fadd	$f1, $f1, $f2
	fsw	$f1, 8($a1)
	flw	$f1, 16($a1)
	flw	$f2, 16($a2)
	fmul	$f0, $f0, $f2
	fadd	$f0, $f1, $f0
	fsw	$f0, 16($a1)
	jr $ra
vecadd.2671:
	flw	$f0, 0($a1)
	flw	$f1, 0($a2)
	fadd	$f0, $f0, $f1
	fsw	$f0, 0($a1)
	flw	$f0, 8($a1)
	flw	$f1, 8($a2)
	fadd	$f0, $f0, $f1
	fsw	$f0, 8($a1)
	flw	$f0, 16($a1)
	flw	$f1, 16($a2)
	fadd	$f0, $f0, $f1
	fsw	$f0, 16($a1)
	jr $ra
vecscale.2677:
	flw	$f1, 0($a1)
	fmul	$f1, $f1, $f0
	fsw	$f1, 0($a1)
	flw	$f1, 8($a1)
	fmul	$f1, $f1, $f0
	fsw	$f1, 8($a1)
	flw	$f1, 16($a1)
	fmul	$f0, $f1, $f0
	fsw	$f0, 16($a1)
	jr $ra
vecaccumv.2680:
	flw	$f0, 0($a1)
	flw	$f1, 0($a2)
	flw	$f2, 0($a3)
	fmul	$f1, $f1, $f2
	fadd	$f0, $f0, $f1
	fsw	$f0, 0($a1)
	flw	$f0, 8($a1)
	flw	$f1, 8($a2)
	flw	$f2, 8($a3)
	fmul	$f1, $f1, $f2
	fadd	$f0, $f0, $f1
	fsw	$f0, 8($a1)
	flw	$f0, 16($a1)
	flw	$f1, 16($a2)
	flw	$f2, 16($a3)
	fmul	$f1, $f1, $f2
	fadd	$f0, $f0, $f1
	fsw	$f0, 16($a1)
	jr $ra
o_texturetype.2684:
	lw	$a1, 0($a1)
	move	$v0, $a1
	jr $ra
o_form.2686:
	lw	$a1, 4($a1)
	move	$v0, $a1
	jr $ra
o_reflectiontype.2688:
	lw	$a1, 8($a1)
	move	$v0, $a1
	jr $ra
o_isinvert.2690:
	lw	$a1, 24($a1)
	move	$v0, $a1
	jr $ra
o_isrot.2692:
	lw	$a1, 12($a1)
	move	$v0, $a1
	jr $ra
o_param_a.2694:
	lw	$a1, 16($a1)
	flw	$fv, 0($a1)
	jr $ra
o_param_b.2696:
	lw	$a1, 16($a1)
	flw	$fv, 8($a1)
	jr $ra
o_param_c.2698:
	lw	$a1, 16($a1)
	flw	$fv, 16($a1)
	jr $ra
o_param_abc.2700:
	lw	$a1, 16($a1)
	move	$v0, $a1
	jr $ra
o_param_x.2702:
	lw	$a1, 20($a1)
	flw	$fv, 0($a1)
	jr $ra
o_param_y.2704:
	lw	$a1, 20($a1)
	flw	$fv, 8($a1)
	jr $ra
o_param_z.2706:
	lw	$a1, 20($a1)
	flw	$fv, 16($a1)
	jr $ra
o_diffuse.2708:
	lw	$a1, 28($a1)
	flw	$fv, 0($a1)
	jr $ra
o_hilight.2710:
	lw	$a1, 28($a1)
	flw	$fv, 8($a1)
	jr $ra
o_color_red.2712:
	lw	$a1, 32($a1)
	flw	$fv, 0($a1)
	jr $ra
o_color_green.2714:
	lw	$a1, 32($a1)
	flw	$fv, 8($a1)
	jr $ra
o_color_blue.2716:
	lw	$a1, 32($a1)
	flw	$fv, 16($a1)
	jr $ra
o_param_r1.2718:
	lw	$a1, 36($a1)
	flw	$fv, 0($a1)
	jr $ra
o_param_r2.2720:
	lw	$a1, 36($a1)
	flw	$fv, 8($a1)
	jr $ra
o_param_r3.2722:
	lw	$a1, 36($a1)
	flw	$fv, 16($a1)
	jr $ra
o_param_ctbl.2724:
	lw	$a1, 40($a1)
	move	$v0, $a1
	jr $ra
p_rgb.2726:
	lw	$a1, 0($a1)
	move	$v0, $a1
	jr $ra
p_intersection_points.2728:
	lw	$a1, 4($a1)
	move	$v0, $a1
	jr $ra
p_surface_ids.2730:
	lw	$a1, 8($a1)
	move	$v0, $a1
	jr $ra
p_calc_diffuse.2732:
	lw	$a1, 12($a1)
	move	$v0, $a1
	jr $ra
p_energy.2734:
	lw	$a1, 16($a1)
	move	$v0, $a1
	jr $ra
p_received_ray_20percent.2736:
	lw	$a1, 20($a1)
	move	$v0, $a1
	jr $ra
p_group_id.2738:
	lw	$a1, 24($a1)
	lw	$v0, 0($a1)
	jr $ra
p_set_group_id.2740:
	lw	$a1, 24($a1)
	sw	$a2, 0($a1)
	jr $ra
p_nvectors.2743:
	lw	$a1, 28($a1)
	move	$v0, $a1
	jr $ra
d_vec.2745:
	lw	$a1, 0($a1)
	move	$v0, $a1
	jr $ra
d_const.2747:
	lw	$a1, 4($a1)
	move	$v0, $a1
	jr $ra
r_surface_id.2749:
	lw	$a1, 0($a1)
	move	$v0, $a1
	jr $ra
r_dvec.2751:
	lw	$a1, 4($a1)
	move	$v0, $a1
	jr $ra
r_bright.2753:
	flw	$f0, 8($a1)
	fmove	$fv, $f0
	jr $ra
rad.2755:
	jal l.6430
	mtc1	$f1, $a25
	fmul	$fv, $f0, $f1
	jr $ra
read_screen_settings.2757:
	lil	$a1, min_caml_screen
	sw	$a1, 0($sp)
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	min_caml_read_float
	subi	$sp, $sp, 8
	lw	$ra, 4($sp)
	fmove	$f0, $fv
	lw	$a1, 0($sp)
	fsw	$f0, 0($a1)
	lil	$a1, min_caml_screen
	sw	$a1, 4($sp)
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	min_caml_read_float
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	fmove	$f0, $fv
	lw	$a1, 4($sp)
	fsw	$f0, 8($a1)
	lil	$a1, min_caml_screen
	sw	$a1, 8($sp)
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	min_caml_read_float
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	fmove	$f0, $fv
	lw	$a1, 8($sp)
	fsw	$f0, 16($a1)
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	min_caml_read_float
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	fmove	$f0, $fv
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	rad.2755
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	fmove	$f0, $fv
	sw	$f0, 16($sp)
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	min_caml_cos
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	fmove	$f0, $fv
	lw	$f1, 16($sp)
	sw	$f0, 24($sp)
	fmove	$f0, $f1
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	min_caml_sin
	subi	$sp, $sp, 40
	lw	$ra, 36($sp)
	fmove	$f0, $fv
	sw	$f0, 32($sp)
	sw	$ra, 44($sp)
	addi	$sp, $sp, 48
	jal	min_caml_read_float
	subi	$sp, $sp, 48
	lw	$ra, 44($sp)
	fmove	$f0, $fv
	sw	$ra, 44($sp)
	addi	$sp, $sp, 48
	jal	rad.2755
	subi	$sp, $sp, 48
	lw	$ra, 44($sp)
	fmove	$f0, $fv
	sw	$f0, 40($sp)
	sw	$ra, 52($sp)
	addi	$sp, $sp, 56
	jal	min_caml_cos
	subi	$sp, $sp, 56
	lw	$ra, 52($sp)
	fmove	$f0, $fv
	lw	$f1, 40($sp)
	sw	$f0, 48($sp)
	fmove	$f0, $f1
	sw	$ra, 60($sp)
	addi	$sp, $sp, 64
	jal	min_caml_sin
	subi	$sp, $sp, 64
	lw	$ra, 60($sp)
	fmove	$f0, $fv
	lil	$a1, min_caml_screenz_dir
	lw	$f1, 24($sp)
	fmul	$f2, $f1, $f0
	jal l.6434
	mtc1	$f3, $a25
	fmul	$f2, $f2, $f3
	fsw	$f2, 0($a1)
	lil	$a1, min_caml_screenz_dir
	jal l.6436
	mtc1	$f2, $a25
	lw	$f3, 32($sp)
	fmul	$f2, $f3, $f2
	fsw	$f2, 8($a1)
	lil	$a1, min_caml_screenz_dir
	lw	$f2, 48($sp)
	fmul	$f4, $f1, $f2
	jal l.6434
	mtc1	$f5, $a25
	fmul	$f4, $f4, $f5
	fsw	$f4, 16($a1)
	lil	$a1, min_caml_screenx_dir
	fsw	$f2, 0($a1)
	lil	$a1, min_caml_screenx_dir
	jal l.6345
	mtc1	$f4, $a25
	fsw	$f4, 8($a1)
	lil	$a1, min_caml_screenx_dir
	sw	$f0, 56($sp)
	sw	$a1, 64($sp)
	sw	$ra, 68($sp)
	addi	$sp, $sp, 72
	jal	min_caml_fneg
	subi	$sp, $sp, 72
	lw	$ra, 68($sp)
	fmove	$f0, $fv
	lw	$a1, 64($sp)
	fsw	$f0, 16($a1)
	lil	$a1, min_caml_screeny_dir
	lw	$f0, 32($sp)
	sw	$a1, 68($sp)
	sw	$ra, 76($sp)
	addi	$sp, $sp, 80
	jal	min_caml_fneg
	subi	$sp, $sp, 80
	lw	$ra, 76($sp)
	fmove	$f0, $fv
	lw	$f1, 56($sp)
	fmul	$f0, $f0, $f1
	lw	$a1, 68($sp)
	fsw	$f0, 0($a1)
	lil	$a1, min_caml_screeny_dir
	lw	$f0, 24($sp)
	sw	$a1, 72($sp)
	sw	$ra, 76($sp)
	addi	$sp, $sp, 80
	jal	min_caml_fneg
	subi	$sp, $sp, 80
	lw	$ra, 76($sp)
	fmove	$f0, $fv
	lw	$a1, 72($sp)
	fsw	$f0, 8($a1)
	lil	$a1, min_caml_screeny_dir
	lw	$f0, 32($sp)
	sw	$a1, 76($sp)
	sw	$ra, 84($sp)
	addi	$sp, $sp, 88
	jal	min_caml_fneg
	subi	$sp, $sp, 88
	lw	$ra, 84($sp)
	fmove	$f0, $fv
	lw	$f1, 48($sp)
	fmul	$f0, $f0, $f1
	lw	$a1, 76($sp)
	fsw	$f0, 16($a1)
	lil	$a1, min_caml_viewpoint
	lil	$a2, min_caml_screen
	flw	$f0, 0($a2)
	lil	$a2, min_caml_screenz_dir
	flw	$f1, 0($a2)
	fsub	$f0, $f0, $f1
	fsw	$f0, 0($a1)
	lil	$a1, min_caml_viewpoint
	lil	$a2, min_caml_screen
	flw	$f0, 8($a2)
	lil	$a2, min_caml_screenz_dir
	flw	$f1, 8($a2)
	fsub	$f0, $f0, $f1
	fsw	$f0, 8($a1)
	lil	$a1, min_caml_viewpoint
	lil	$a2, min_caml_screen
	flw	$f0, 16($a2)
	lil	$a2, min_caml_screenz_dir
	flw	$f1, 16($a2)
	fsub	$f0, $f0, $f1
	fsw	$f0, 16($a1)
	jr $ra
read_light.2759:
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	min_caml_read_int
	subi	$sp, $sp, 8
	lw	$ra, 4($sp)
	move	$a1, $v0
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	min_caml_read_float
	subi	$sp, $sp, 8
	lw	$ra, 4($sp)
	fmove	$f0, $fv
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	rad.2755
	subi	$sp, $sp, 8
	lw	$ra, 4($sp)
	fmove	$f0, $fv
	sw	$f0, 0($sp)
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	min_caml_sin
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	fmove	$f0, $fv
	lil	$a1, min_caml_light
	sw	$a1, 8($sp)
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	min_caml_fneg
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	fmove	$f0, $fv
	lw	$a1, 8($sp)
	fsw	$f0, 8($a1)
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	min_caml_read_float
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	fmove	$f0, $fv
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	rad.2755
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	fmove	$f0, $fv
	lw	$f1, 0($sp)
	sw	$f0, 16($sp)
	fmove	$f0, $f1
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	min_caml_cos
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	fmove	$f0, $fv
	lw	$f1, 16($sp)
	sw	$f0, 24($sp)
	fmove	$f0, $f1
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	min_caml_sin
	subi	$sp, $sp, 40
	lw	$ra, 36($sp)
	fmove	$f0, $fv
	lil	$a1, min_caml_light
	lw	$f1, 24($sp)
	fmul	$f0, $f1, $f0
	fsw	$f0, 0($a1)
	lw	$f0, 16($sp)
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	min_caml_cos
	subi	$sp, $sp, 40
	lw	$ra, 36($sp)
	fmove	$f0, $fv
	lil	$a1, min_caml_light
	lw	$f1, 24($sp)
	fmul	$f0, $f1, $f0
	fsw	$f0, 16($a1)
	lil	$a1, min_caml_beam
	sw	$a1, 32($sp)
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	min_caml_read_float
	subi	$sp, $sp, 40
	lw	$ra, 36($sp)
	fmove	$f0, $fv
	lw	$a1, 32($sp)
	fsw	$f0, 0($a1)
	jr $ra
rotate_quadratic_matrix.2761:
	flw	$f0, 0($a2)
	sw	$a1, 0($sp)
	sw	$a2, 4($sp)
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	min_caml_cos
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	fmove	$f0, $fv
	lw	$a1, 4($sp)
	flw	$f1, 0($a1)
	sw	$f0, 8($sp)
	fmove	$f0, $f1
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	min_caml_sin
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	fmove	$f0, $fv
	lw	$a1, 4($sp)
	flw	$f1, 8($a1)
	sw	$f0, 16($sp)
	fmove	$f0, $f1
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	min_caml_cos
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	fmove	$f0, $fv
	lw	$a1, 4($sp)
	flw	$f1, 8($a1)
	sw	$f0, 24($sp)
	fmove	$f0, $f1
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	min_caml_sin
	subi	$sp, $sp, 40
	lw	$ra, 36($sp)
	fmove	$f0, $fv
	lw	$a1, 4($sp)
	flw	$f1, 16($a1)
	sw	$f0, 32($sp)
	fmove	$f0, $f1
	sw	$ra, 44($sp)
	addi	$sp, $sp, 48
	jal	min_caml_cos
	subi	$sp, $sp, 48
	lw	$ra, 44($sp)
	fmove	$f0, $fv
	lw	$a1, 4($sp)
	flw	$f1, 16($a1)
	sw	$f0, 40($sp)
	fmove	$f0, $f1
	sw	$ra, 52($sp)
	addi	$sp, $sp, 56
	jal	min_caml_sin
	subi	$sp, $sp, 56
	lw	$ra, 52($sp)
	fmove	$f0, $fv
	lw	$f1, 40($sp)
	lw	$f2, 24($sp)
	fmul	$f3, $f2, $f1
	lw	$f4, 32($sp)
	lw	$f5, 16($sp)
	fmul	$f6, $f5, $f4
	fmul	$f6, $f6, $f1
	lw	$f7, 8($sp)
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
	sw	$f0, 48($sp)
	sw	$f8, 56($sp)
	sw	$f10, 64($sp)
	sw	$f6, 72($sp)
	sw	$f9, 80($sp)
	sw	$f3, 88($sp)
	fmove	$f0, $f4
	sw	$ra, 100($sp)
	addi	$sp, $sp, 104
	jal	min_caml_fneg
	subi	$sp, $sp, 104
	lw	$ra, 100($sp)
	fmove	$f0, $fv
	lw	$f1, 24($sp)
	lw	$f2, 16($sp)
	fmul	$f2, $f2, $f1
	lw	$f3, 8($sp)
	fmul	$f1, $f3, $f1
	lw	$a1, 0($sp)
	flw	$f3, 0($a1)
	flw	$f4, 8($a1)
	flw	$f5, 16($a1)
	lw	$f6, 88($sp)
	sw	$f1, 96($sp)
	sw	$f2, 104($sp)
	sw	$f5, 112($sp)
	sw	$f0, 120($sp)
	sw	$f4, 128($sp)
	sw	$f3, 136($sp)
	fmove	$f0, $f6
	sw	$ra, 148($sp)
	addi	$sp, $sp, 152
	jal	min_caml_fsqr
	subi	$sp, $sp, 152
	lw	$ra, 148($sp)
	fmove	$f0, $fv
	lw	$f1, 136($sp)
	fmul	$f0, $f1, $f0
	lw	$f2, 80($sp)
	sw	$f0, 144($sp)
	fmove	$f0, $f2
	sw	$ra, 156($sp)
	addi	$sp, $sp, 160
	jal	min_caml_fsqr
	subi	$sp, $sp, 160
	lw	$ra, 156($sp)
	fmove	$f0, $fv
	lw	$f1, 128($sp)
	fmul	$f0, $f1, $f0
	lw	$f2, 144($sp)
	fadd	$f0, $f2, $f0
	lw	$f2, 120($sp)
	sw	$f0, 152($sp)
	fmove	$f0, $f2
	sw	$ra, 164($sp)
	addi	$sp, $sp, 168
	jal	min_caml_fsqr
	subi	$sp, $sp, 168
	lw	$ra, 164($sp)
	fmove	$f0, $fv
	lw	$f1, 112($sp)
	fmul	$f0, $f1, $f0
	lw	$f2, 152($sp)
	fadd	$f0, $f2, $f0
	lw	$a1, 0($sp)
	fsw	$f0, 0($a1)
	lw	$f0, 72($sp)
	sw	$ra, 164($sp)
	addi	$sp, $sp, 168
	jal	min_caml_fsqr
	subi	$sp, $sp, 168
	lw	$ra, 164($sp)
	fmove	$f0, $fv
	lw	$f1, 136($sp)
	fmul	$f0, $f1, $f0
	lw	$f2, 64($sp)
	sw	$f0, 160($sp)
	fmove	$f0, $f2
	sw	$ra, 172($sp)
	addi	$sp, $sp, 176
	jal	min_caml_fsqr
	subi	$sp, $sp, 176
	lw	$ra, 172($sp)
	fmove	$f0, $fv
	lw	$f1, 128($sp)
	fmul	$f0, $f1, $f0
	lw	$f2, 160($sp)
	fadd	$f0, $f2, $f0
	lw	$f2, 104($sp)
	sw	$f0, 168($sp)
	fmove	$f0, $f2
	sw	$ra, 180($sp)
	addi	$sp, $sp, 184
	jal	min_caml_fsqr
	subi	$sp, $sp, 184
	lw	$ra, 180($sp)
	fmove	$f0, $fv
	lw	$f1, 112($sp)
	fmul	$f0, $f1, $f0
	lw	$f2, 168($sp)
	fadd	$f0, $f2, $f0
	lw	$a1, 0($sp)
	fsw	$f0, 8($a1)
	lw	$f0, 56($sp)
	sw	$ra, 180($sp)
	addi	$sp, $sp, 184
	jal	min_caml_fsqr
	subi	$sp, $sp, 184
	lw	$ra, 180($sp)
	fmove	$f0, $fv
	lw	$f1, 136($sp)
	fmul	$f0, $f1, $f0
	lw	$f2, 48($sp)
	sw	$f0, 176($sp)
	fmove	$f0, $f2
	sw	$ra, 188($sp)
	addi	$sp, $sp, 192
	jal	min_caml_fsqr
	subi	$sp, $sp, 192
	lw	$ra, 188($sp)
	fmove	$f0, $fv
	lw	$f1, 128($sp)
	fmul	$f0, $f1, $f0
	lw	$f2, 176($sp)
	fadd	$f0, $f2, $f0
	lw	$f2, 96($sp)
	sw	$f0, 184($sp)
	fmove	$f0, $f2
	sw	$ra, 196($sp)
	addi	$sp, $sp, 200
	jal	min_caml_fsqr
	subi	$sp, $sp, 200
	lw	$ra, 196($sp)
	fmove	$f0, $fv
	lw	$f1, 112($sp)
	fmul	$f0, $f1, $f0
	lw	$f2, 184($sp)
	fadd	$f0, $f2, $f0
	lw	$a1, 0($sp)
	fsw	$f0, 16($a1)
	jal l.6470
	mtc1	$f0, $a25
	lw	$f2, 72($sp)
	lw	$f3, 136($sp)
	fmul	$f4, $f3, $f2
	lw	$f5, 56($sp)
	fmul	$f4, $f4, $f5
	lw	$f6, 64($sp)
	lw	$f7, 128($sp)
	fmul	$f8, $f7, $f6
	lw	$f9, 48($sp)
	fmul	$f8, $f8, $f9
	fadd	$f4, $f4, $f8
	lw	$f8, 104($sp)
	fmul	$f10, $f1, $f8
	lw	$f11, 96($sp)
	fmul	$f10, $f10, $f11
	fadd	$f4, $f4, $f10
	fmul	$f0, $f0, $f4
	lw	$a1, 4($sp)
	fsw	$f0, 0($a1)
	jal l.6470
	mtc1	$f0, $a25
	lw	$f4, 88($sp)
	fmul	$f10, $f3, $f4
	fmul	$f5, $f10, $f5
	lw	$f10, 80($sp)
	fmul	$f12, $f7, $f10
	fmul	$f9, $f12, $f9
	fadd	$f5, $f5, $f9
	lw	$f9, 120($sp)
	fmul	$f12, $f1, $f9
	fmul	$f11, $f12, $f11
	fadd	$f5, $f5, $f11
	fmul	$f0, $f0, $f5
	fsw	$f0, 8($a1)
	jal l.6470
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
	fsw	$f0, 16($a1)
	jr $ra
read_nth_object.2764:
	sw	$a1, 0($sp)
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	min_caml_read_int
	subi	$sp, $sp, 8
	lw	$ra, 4($sp)
	move	$a1, $v0
	li	$a2, -1
	bne	$a1, $a2, beq_else.8318
	li	$v0, 0
	jr $ra
beq_else.8318:
	sw	$a1, 4($sp)
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	min_caml_read_int
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	move	$a1, $v0
	sw	$a1, 8($sp)
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	min_caml_read_int
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	move	$a1, $v0
	sw	$a1, 12($sp)
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	min_caml_read_int
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	move	$a1, $v0
	li	$a2, 3
	jal l.6345
	mtc1	$f0, $a25
	sw	$a1, 16($sp)
	move	$a1, $a2
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	min_caml_create_float_array
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	move	$a1, $v0
	sw	$a1, 20($sp)
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	min_caml_read_float
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	fmove	$f0, $fv
	lw	$a1, 20($sp)
	fsw	$f0, 0($a1)
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	min_caml_read_float
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	fmove	$f0, $fv
	lw	$a1, 20($sp)
	fsw	$f0, 8($a1)
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	min_caml_read_float
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	fmove	$f0, $fv
	lw	$a1, 20($sp)
	fsw	$f0, 16($a1)
	li	$a2, 3
	jal l.6345
	mtc1	$f0, $a25
	move	$a1, $a2
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	min_caml_create_float_array
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	move	$a1, $v0
	sw	$a1, 24($sp)
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	min_caml_read_float
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	fmove	$f0, $fv
	lw	$a1, 24($sp)
	fsw	$f0, 0($a1)
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	min_caml_read_float
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	fmove	$f0, $fv
	lw	$a1, 24($sp)
	fsw	$f0, 8($a1)
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	min_caml_read_float
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	fmove	$f0, $fv
	lw	$a1, 24($sp)
	fsw	$f0, 16($a1)
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	min_caml_read_float
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	fmove	$f0, $fv
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	min_caml_fisneg
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	move	$a1, $v0
	li	$a2, 2
	jal l.6345
	mtc1	$f0, $a25
	sw	$a1, 28($sp)
	move	$a1, $a2
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	min_caml_create_float_array
	subi	$sp, $sp, 40
	lw	$ra, 36($sp)
	move	$a1, $v0
	sw	$a1, 32($sp)
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	min_caml_read_float
	subi	$sp, $sp, 40
	lw	$ra, 36($sp)
	fmove	$f0, $fv
	lw	$a1, 32($sp)
	fsw	$f0, 0($a1)
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	min_caml_read_float
	subi	$sp, $sp, 40
	lw	$ra, 36($sp)
	fmove	$f0, $fv
	lw	$a1, 32($sp)
	fsw	$f0, 8($a1)
	li	$a2, 3
	jal l.6345
	mtc1	$f0, $a25
	move	$a1, $a2
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	min_caml_create_float_array
	subi	$sp, $sp, 40
	lw	$ra, 36($sp)
	move	$a1, $v0
	sw	$a1, 36($sp)
	sw	$ra, 44($sp)
	addi	$sp, $sp, 48
	jal	min_caml_read_float
	subi	$sp, $sp, 48
	lw	$ra, 44($sp)
	fmove	$f0, $fv
	lw	$a1, 36($sp)
	fsw	$f0, 0($a1)
	sw	$ra, 44($sp)
	addi	$sp, $sp, 48
	jal	min_caml_read_float
	subi	$sp, $sp, 48
	lw	$ra, 44($sp)
	fmove	$f0, $fv
	lw	$a1, 36($sp)
	fsw	$f0, 8($a1)
	sw	$ra, 44($sp)
	addi	$sp, $sp, 48
	jal	min_caml_read_float
	subi	$sp, $sp, 48
	lw	$ra, 44($sp)
	fmove	$f0, $fv
	lw	$a1, 36($sp)
	fsw	$f0, 16($a1)
	li	$a2, 3
	jal l.6345
	mtc1	$f0, $a25
	move	$a1, $a2
	sw	$ra, 44($sp)
	addi	$sp, $sp, 48
	jal	min_caml_create_float_array
	subi	$sp, $sp, 48
	lw	$ra, 44($sp)
	move	$a1, $v0
	li	$a2, 0
	lw	$a3, 16($sp)
	bne	$a3, $a2, beq_else.8319
	j	beq_cont.8320
beq_else.8319:
	sw	$a1, 40($sp)
	sw	$ra, 44($sp)
	addi	$sp, $sp, 48
	jal	min_caml_read_float
	subi	$sp, $sp, 48
	lw	$ra, 44($sp)
	fmove	$f0, $fv
	sw	$ra, 44($sp)
	addi	$sp, $sp, 48
	jal	rad.2755
	subi	$sp, $sp, 48
	lw	$ra, 44($sp)
	fmove	$f0, $fv
	lw	$a1, 40($sp)
	fsw	$f0, 0($a1)
	sw	$ra, 44($sp)
	addi	$sp, $sp, 48
	jal	min_caml_read_float
	subi	$sp, $sp, 48
	lw	$ra, 44($sp)
	fmove	$f0, $fv
	sw	$ra, 44($sp)
	addi	$sp, $sp, 48
	jal	rad.2755
	subi	$sp, $sp, 48
	lw	$ra, 44($sp)
	fmove	$f0, $fv
	lw	$a1, 40($sp)
	fsw	$f0, 8($a1)
	sw	$ra, 44($sp)
	addi	$sp, $sp, 48
	jal	min_caml_read_float
	subi	$sp, $sp, 48
	lw	$ra, 44($sp)
	fmove	$f0, $fv
	sw	$ra, 44($sp)
	addi	$sp, $sp, 48
	jal	rad.2755
	subi	$sp, $sp, 48
	lw	$ra, 44($sp)
	fmove	$f0, $fv
	lw	$a1, 40($sp)
	fsw	$f0, 16($a1)
beq_cont.8320:
	li	$a2, 2
	lw	$a3, 8($sp)
	bne	$a3, $a2, beq_else.8321
	li	$a2, 1
	j	beq_cont.8322
beq_else.8321:
	lw	$a2, 28($sp)
beq_cont.8322:
	li	$a4, 4
	jal l.6345
	mtc1	$f0, $a25
	sw	$a2, 44($sp)
	sw	$a1, 40($sp)
	move	$a1, $a4
	sw	$ra, 52($sp)
	addi	$sp, $sp, 56
	jal	min_caml_create_float_array
	subi	$sp, $sp, 56
	lw	$ra, 52($sp)
	move	$a1, $v0
	move	$a2, $a0
	addi	$a0, $a0, 48
	sw	$a1, 40($a2)
	lw	$a1, 40($sp)
	sw	$a1, 36($a2)
	lw	$a3, 36($sp)
	sw	$a3, 32($a2)
	lw	$a3, 32($sp)
	sw	$a3, 28($a2)
	lw	$a3, 44($sp)
	sw	$a3, 24($a2)
	lw	$a3, 24($sp)
	sw	$a3, 20($a2)
	lw	$a3, 20($sp)
	sw	$a3, 16($a2)
	lw	$a4, 16($sp)
	sw	$a4, 12($a2)
	lw	$a5, 12($sp)
	sw	$a5, 8($a2)
	lw	$a5, 8($sp)
	sw	$a5, 4($a2)
	lw	$a6, 4($sp)
	sw	$a6, 0($a2)
	lil	$a6, min_caml_objects
	lw	$a7, 0($sp)
	sll	$a7, $a7, 2
	add	$a6, $a6, $a7
	sw	$a2, 0($a6)
	li	$a2, 3
	bne	$a5, $a2, beq_else.8323
	flw	$f0, 0($a3)
	sw	$f0, 48($sp)
	sw	$ra, 60($sp)
	addi	$sp, $sp, 64
	jal	min_caml_fiszero
	subi	$sp, $sp, 64
	lw	$ra, 60($sp)
	move	$a1, $v0
	li	$a2, 0
	bne	$a1, $a2, beq_else.8325
	lw	$f0, 48($sp)
	sw	$ra, 60($sp)
	addi	$sp, $sp, 64
	jal	sgn.2630
	subi	$sp, $sp, 64
	lw	$ra, 60($sp)
	fmove	$f0, $fv
	lw	$f1, 48($sp)
	sw	$f0, 56($sp)
	fmove	$f0, $f1
	sw	$ra, 68($sp)
	addi	$sp, $sp, 72
	jal	min_caml_fsqr
	subi	$sp, $sp, 72
	lw	$ra, 68($sp)
	fmove	$f0, $fv
	finv	$f0, $f0
	lw	$f1, 56($sp)
	fmul	$f0, $f1, $f0
	j	beq_cont.8326
beq_else.8325:
	jal l.6345
	mtc1	$f0, $a25
beq_cont.8326:
	lw	$a1, 20($sp)
	fsw	$f0, 0($a1)
	flw	$f0, 8($a1)
	sw	$f0, 64($sp)
	sw	$ra, 76($sp)
	addi	$sp, $sp, 80
	jal	min_caml_fiszero
	subi	$sp, $sp, 80
	lw	$ra, 76($sp)
	move	$a1, $v0
	li	$a2, 0
	bne	$a1, $a2, beq_else.8327
	lw	$f0, 64($sp)
	sw	$ra, 76($sp)
	addi	$sp, $sp, 80
	jal	sgn.2630
	subi	$sp, $sp, 80
	lw	$ra, 76($sp)
	fmove	$f0, $fv
	lw	$f1, 64($sp)
	sw	$f0, 72($sp)
	fmove	$f0, $f1
	sw	$ra, 84($sp)
	addi	$sp, $sp, 88
	jal	min_caml_fsqr
	subi	$sp, $sp, 88
	lw	$ra, 84($sp)
	fmove	$f0, $fv
	finv	$f0, $f0
	lw	$f1, 72($sp)
	fmul	$f0, $f1, $f0
	j	beq_cont.8328
beq_else.8327:
	jal l.6345
	mtc1	$f0, $a25
beq_cont.8328:
	lw	$a1, 20($sp)
	fsw	$f0, 8($a1)
	flw	$f0, 16($a1)
	sw	$f0, 80($sp)
	sw	$ra, 92($sp)
	addi	$sp, $sp, 96
	jal	min_caml_fiszero
	subi	$sp, $sp, 96
	lw	$ra, 92($sp)
	move	$a1, $v0
	li	$a2, 0
	bne	$a1, $a2, beq_else.8329
	lw	$f0, 80($sp)
	sw	$ra, 92($sp)
	addi	$sp, $sp, 96
	jal	sgn.2630
	subi	$sp, $sp, 96
	lw	$ra, 92($sp)
	fmove	$f0, $fv
	lw	$f1, 80($sp)
	sw	$f0, 88($sp)
	fmove	$f0, $f1
	sw	$ra, 100($sp)
	addi	$sp, $sp, 104
	jal	min_caml_fsqr
	subi	$sp, $sp, 104
	lw	$ra, 100($sp)
	fmove	$f0, $fv
	finv	$f0, $f0
	lw	$f1, 88($sp)
	fmul	$f0, $f1, $f0
	j	beq_cont.8330
beq_else.8329:
	jal l.6345
	mtc1	$f0, $a25
beq_cont.8330:
	lw	$a1, 20($sp)
	fsw	$f0, 16($a1)
	j	beq_cont.8324
beq_else.8323:
	li	$a2, 2
	bne	$a5, $a2, beq_else.8331
	li	$a2, 0
	lw	$a5, 28($sp)
	bne	$a5, $a2, beq_else.8333
	li	$a2, 1
	j	beq_cont.8334
beq_else.8333:
	li	$a2, 0
beq_cont.8334:
	move	$a1, $a3
	sw	$ra, 100($sp)
	addi	$sp, $sp, 104
	jal	vecunit_sgn.2656
	subi	$sp, $sp, 104
	lw	$ra, 100($sp)
	fmove	$f30, $fv
	fmove	$f30, $f0
	j	beq_cont.8332
beq_else.8331:
beq_cont.8332:
beq_cont.8324:
	li	$a1, 0
	lw	$a2, 16($sp)
	bne	$a2, $a1, beq_else.8335
	j	beq_cont.8336
beq_else.8335:
	lw	$a1, 20($sp)
	lw	$a2, 40($sp)
	sw	$ra, 100($sp)
	addi	$sp, $sp, 104
	jal	rotate_quadratic_matrix.2761
	subi	$sp, $sp, 104
	lw	$ra, 100($sp)
	fmove	$f30, $fv
	fmove	$f30, $f0
beq_cont.8336:
	li	$v0, 1
	jr $ra
read_object.2766:
	li	$a2, 60
	ble	$a1, $a2, ble_else.8337
	jr $ra
ble_else.8337:
	sw	$a1, 0($sp)
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	read_nth_object.2764
	subi	$sp, $sp, 8
	lw	$ra, 4($sp)
	move	$a1, $v0
	li	$a2, 0
	bne	$a1, $a2, beq_else.8339
	lil	$a1, min_caml_n_objects
	lw	$a2, 0($sp)
	sw	$a2, 0($a1)
	jr $ra
beq_else.8339:
	lw	$a1, 0($sp)
	addi	$a1, $a1, 1
	b	read_object.2766
read_all_object.2768:
	li	$a1, 0
	b	read_object.2766
read_net_item.2770:
	sw	$a1, 0($sp)
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	min_caml_read_int
	subi	$sp, $sp, 8
	lw	$ra, 4($sp)
	move	$a1, $v0
	li	$a2, -1
	bne	$a1, $a2, beq_else.8341
	lw	$a1, 0($sp)
	addi	$a1, $a1, 1
	li	$a2, -1
	b	min_caml_create_array
beq_else.8341:
	lw	$a2, 0($sp)
	addi	$a3, $a2, 1
	sw	$a1, 4($sp)
	move	$a1, $a3
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	read_net_item.2770
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	move	$a1, $v0
	lw	$a2, 0($sp)
	sll	$a2, $a2, 2
	lw	$a3, 4($sp)
	add	$a1, $a1, $a2
	sw	$a3, 0($a1)
	move	$v0, $a1
	jr $ra
read_or_network.2772:
	li	$a2, 0
	sw	$a1, 0($sp)
	move	$a1, $a2
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	read_net_item.2770
	subi	$sp, $sp, 8
	lw	$ra, 4($sp)
	move	$a2, $v0
	move	$a2, $a1
	lw	$a1, 0($a2)
	li	$a3, -1
	bne	$a1, $a3, beq_else.8342
	lw	$a1, 0($sp)
	addi	$a1, $a1, 1
	b	min_caml_create_array
beq_else.8342:
	lw	$a1, 0($sp)
	addi	$a3, $a1, 1
	sw	$a2, 4($sp)
	move	$a1, $a3
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	read_or_network.2772
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	move	$a1, $v0
	lw	$a2, 0($sp)
	sll	$a2, $a2, 2
	lw	$a3, 4($sp)
	add	$a1, $a1, $a2
	sw	$a3, 0($a1)
	move	$v0, $a1
	jr $ra
read_and_network.2774:
	li	$a2, 0
	sw	$a1, 0($sp)
	move	$a1, $a2
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	read_net_item.2770
	subi	$sp, $sp, 8
	lw	$ra, 4($sp)
	move	$a1, $v0
	lw	$a2, 0($a1)
	li	$a3, -1
	bne	$a2, $a3, beq_else.8343
	jr $ra
beq_else.8343:
	lil	$a2, min_caml_and_net
	lw	$a3, 0($sp)
	sll	$a4, $a3, 2
	add	$a2, $a2, $a4
	sw	$a1, 0($a2)
	addi	$a1, $a3, 1
	b	read_and_network.2774
read_parameter.2776:
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	read_screen_settings.2757
	subi	$sp, $sp, 8
	lw	$ra, 4($sp)
	fmove	$f30, $fv
	fmove	$f30, $f0
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	read_light.2759
	subi	$sp, $sp, 8
	lw	$ra, 4($sp)
	fmove	$f30, $fv
	fmove	$f30, $f0
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	read_all_object.2768
	subi	$sp, $sp, 8
	lw	$ra, 4($sp)
	fmove	$f30, $fv
	fmove	$f30, $f0
	li	$a1, 0
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	read_and_network.2774
	subi	$sp, $sp, 8
	lw	$ra, 4($sp)
	fmove	$f30, $fv
	fmove	$f30, $f0
	lil	$a1, min_caml_or_net
	li	$a2, 0
	sw	$a1, 0($sp)
	move	$a1, $a2
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	read_or_network.2772
	subi	$sp, $sp, 8
	lw	$ra, 4($sp)
	move	$a1, $v0
	lw	$a2, 0($sp)
	sw	$a1, 0($a2)
	jr $ra
solver_rect_surface.2778:
	sll	$a6, $a3, 3
	add	$a2, $a2, $a6	flw	$f3, 0($a2)
	sw	$f2, 0($sp)
	sw	$a5, 8($sp)
	sw	$f1, 16($sp)
	sw	$a4, 24($sp)
	sw	$f0, 32($sp)
	sw	$a2, 40($sp)
	sw	$a3, 44($sp)
	sw	$a1, 48($sp)
	fmove	$f0, $f3
	sw	$ra, 52($sp)
	addi	$sp, $sp, 56
	jal	min_caml_fiszero
	subi	$sp, $sp, 56
	lw	$ra, 52($sp)
	move	$a1, $v0
	li	$a2, 0
	bne	$a1, $a2, beq_else.8348
	lw	$a1, 48($sp)
	sw	$ra, 52($sp)
	addi	$sp, $sp, 56
	jal	o_param_abc.2700
	subi	$sp, $sp, 56
	lw	$ra, 52($sp)
	move	$a1, $v0
	lw	$a2, 48($sp)
	sw	$a1, 52($sp)
	move	$a1, $a2
	sw	$ra, 60($sp)
	addi	$sp, $sp, 64
	jal	o_isinvert.2690
	subi	$sp, $sp, 64
	lw	$ra, 60($sp)
	move	$a1, $v0
	lw	$a2, 44($sp)
	sll	$a3, $a2, 3
	lw	$a4, 40($sp)
	add	$a4, $a4, $a3	flw	$f0, 0($a4)
	sw	$a1, 56($sp)
	sw	$ra, 60($sp)
	addi	$sp, $sp, 64
	jal	min_caml_fisneg
	subi	$sp, $sp, 64
	lw	$ra, 60($sp)
	move	$a2, $v0
	move	$a2, $a1
	lw	$a1, 56($sp)
	sw	$ra, 60($sp)
	addi	$sp, $sp, 64
	jal	xor.2627
	subi	$sp, $sp, 64
	lw	$ra, 60($sp)
	move	$a1, $v0
	lw	$a2, 44($sp)
	sll	$a3, $a2, 3
	lw	$a4, 52($sp)
	add	$a4, $a4, $a3	flw	$f0, 0($a4)
	sw	$ra, 60($sp)
	addi	$sp, $sp, 64
	jal	fneg_cond.2632
	subi	$sp, $sp, 64
	lw	$ra, 60($sp)
	fmove	$f0, $fv
	lw	$f1, 32($sp)
	fsub	$f0, $f0, $f1
	lw	$a1, 44($sp)
	sll	$a1, $a1, 3
	lw	$a2, 40($sp)
	add	$a2, $a2, $a1	flw	$f1, 0($a2)
	finv	$f1, $f1
	fmul	$f0, $f0, $f1
	lw	$a1, 24($sp)
	sll	$a3, $a1, 3
	add	$a2, $a2, $a3	flw	$f1, 0($a2)
	fmul	$f1, $f0, $f1
	lw	$f2, 16($sp)
	fadd	$f1, $f1, $f2
	sw	$f0, 64($sp)
	fmove	$f0, $f1
	sw	$ra, 76($sp)
	addi	$sp, $sp, 80
	jal	min_caml_fabs
	subi	$sp, $sp, 80
	lw	$ra, 76($sp)
	fmove	$f0, $fv
	lw	$a1, 24($sp)
	sll	$a1, $a1, 3
	lw	$a2, 52($sp)
	add	$a2, $a2, $a1	flw	$f1, 0($a2)
	sw	$ra, 76($sp)
	addi	$sp, $sp, 80
	jal	min_caml_fless
	subi	$sp, $sp, 80
	lw	$ra, 76($sp)
	move	$a1, $v0
	li	$a2, 0
	bne	$a1, $a2, beq_else.8350
	li	$v0, 0
	jr $ra
beq_else.8350:
	lw	$a1, 8($sp)
	sll	$a2, $a1, 3
	lw	$a3, 40($sp)
	add	$a3, $a3, $a2	flw	$f0, 0($a3)
	lw	$f1, 64($sp)
	fmul	$f0, $f1, $f0
	lw	$f2, 0($sp)
	fadd	$f0, $f0, $f2
	sw	$ra, 76($sp)
	addi	$sp, $sp, 80
	jal	min_caml_fabs
	subi	$sp, $sp, 80
	lw	$ra, 76($sp)
	fmove	$f0, $fv
	lw	$a1, 8($sp)
	sll	$a1, $a1, 3
	lw	$a2, 52($sp)
	add	$a2, $a2, $a1	flw	$f1, 0($a2)
	sw	$ra, 76($sp)
	addi	$sp, $sp, 80
	jal	min_caml_fless
	subi	$sp, $sp, 80
	lw	$ra, 76($sp)
	move	$a1, $v0
	li	$a2, 0
	bne	$a1, $a2, beq_else.8351
	li	$v0, 0
	jr $ra
beq_else.8351:
	lil	$a1, min_caml_solver_dist
	lw	$f0, 64($sp)
	fsw	$f0, 0($a1)
	li	$v0, 1
	jr $ra
beq_else.8348:
	li	$v0, 0
	jr $ra
solver_rect.2787:
	li	$a3, 0
	li	$a4, 1
	li	$a5, 2
	sw	$f0, 0($sp)
	sw	$f2, 8($sp)
	sw	$f1, 16($sp)
	sw	$a2, 24($sp)
	sw	$a1, 28($sp)
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	solver_rect_surface.2778
	subi	$sp, $sp, 40
	lw	$ra, 36($sp)
	move	$a1, $v0
	li	$a2, 0
	bne	$a1, $a2, beq_else.8352
	li	$a3, 1
	li	$a4, 2
	li	$a5, 0
	lw	$f0, 16($sp)
	lw	$f1, 8($sp)
	lw	$f2, 0($sp)
	lw	$a1, 28($sp)
	lw	$a2, 24($sp)
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	solver_rect_surface.2778
	subi	$sp, $sp, 40
	lw	$ra, 36($sp)
	move	$a1, $v0
	li	$a2, 0
	bne	$a1, $a2, beq_else.8353
	li	$a3, 2
	li	$a4, 0
	li	$a5, 1
	lw	$f0, 8($sp)
	lw	$f1, 0($sp)
	lw	$f2, 16($sp)
	lw	$a1, 28($sp)
	lw	$a2, 24($sp)
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	solver_rect_surface.2778
	subi	$sp, $sp, 40
	lw	$ra, 36($sp)
	move	$a1, $v0
	li	$a2, 0
	bne	$a1, $a2, beq_else.8354
	li	$v0, 0
	jr $ra
beq_else.8354:
	li	$v0, 3
	jr $ra
beq_else.8353:
	li	$v0, 2
	jr $ra
beq_else.8352:
	li	$v0, 1
	jr $ra
solver_surface.2793:
	sw	$f2, 0($sp)
	sw	$f1, 8($sp)
	sw	$f0, 16($sp)
	sw	$a2, 24($sp)
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	o_param_abc.2700
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	move	$a2, $v0
	move	$a2, $a1
	lw	$a1, 24($sp)
	sw	$a2, 28($sp)
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	veciprod.2659
	subi	$sp, $sp, 40
	lw	$ra, 36($sp)
	fmove	$f0, $fv
	sw	$f0, 32($sp)
	sw	$ra, 44($sp)
	addi	$sp, $sp, 48
	jal	min_caml_fispos
	subi	$sp, $sp, 48
	lw	$ra, 44($sp)
	move	$a1, $v0
	li	$a2, 0
	bne	$a1, $a2, beq_else.8355
	li	$v0, 0
	jr $ra
beq_else.8355:
	lil	$a1, min_caml_solver_dist
	lw	$f0, 16($sp)
	lw	$f1, 8($sp)
	lw	$f2, 0($sp)
	lw	$a2, 28($sp)
	sw	$a1, 40($sp)
	move	$a1, $a2
	sw	$ra, 44($sp)
	addi	$sp, $sp, 48
	jal	veciprod2.2662
	subi	$sp, $sp, 48
	lw	$ra, 44($sp)
	fmove	$f0, $fv
	sw	$ra, 44($sp)
	addi	$sp, $sp, 48
	jal	min_caml_fneg
	subi	$sp, $sp, 48
	lw	$ra, 44($sp)
	fmove	$f0, $fv
	lw	$f1, 32($sp)
	finv	$f1, $f1
	fmul	$f0, $f0, $f1
	lw	$a1, 40($sp)
	fsw	$f0, 0($a1)
	li	$v0, 1
	jr $ra
quadratic.2799:
	sw	$f0, 0($sp)
	sw	$f2, 8($sp)
	sw	$f1, 16($sp)
	sw	$a1, 24($sp)
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	min_caml_fsqr
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	fmove	$f0, $fv
	lw	$a1, 24($sp)
	sw	$f0, 32($sp)
	sw	$ra, 44($sp)
	addi	$sp, $sp, 48
	jal	o_param_a.2694
	subi	$sp, $sp, 48
	lw	$ra, 44($sp)
	fmove	$f0, $fv
	lw	$f1, 32($sp)
	fmul	$f0, $f1, $f0
	lw	$f1, 16($sp)
	sw	$f0, 40($sp)
	fmove	$f0, $f1
	sw	$ra, 52($sp)
	addi	$sp, $sp, 56
	jal	min_caml_fsqr
	subi	$sp, $sp, 56
	lw	$ra, 52($sp)
	fmove	$f0, $fv
	lw	$a1, 24($sp)
	sw	$f0, 48($sp)
	sw	$ra, 60($sp)
	addi	$sp, $sp, 64
	jal	o_param_b.2696
	subi	$sp, $sp, 64
	lw	$ra, 60($sp)
	fmove	$f0, $fv
	lw	$f1, 48($sp)
	fmul	$f0, $f1, $f0
	lw	$f1, 40($sp)
	fadd	$f0, $f1, $f0
	lw	$f1, 8($sp)
	sw	$f0, 56($sp)
	fmove	$f0, $f1
	sw	$ra, 68($sp)
	addi	$sp, $sp, 72
	jal	min_caml_fsqr
	subi	$sp, $sp, 72
	lw	$ra, 68($sp)
	fmove	$f0, $fv
	lw	$a1, 24($sp)
	sw	$f0, 64($sp)
	sw	$ra, 76($sp)
	addi	$sp, $sp, 80
	jal	o_param_c.2698
	subi	$sp, $sp, 80
	lw	$ra, 76($sp)
	fmove	$f0, $fv
	lw	$f1, 64($sp)
	fmul	$f0, $f1, $f0
	lw	$f1, 56($sp)
	fadd	$f0, $f1, $f0
	lw	$a1, 24($sp)
	sw	$f0, 72($sp)
	sw	$ra, 84($sp)
	addi	$sp, $sp, 88
	jal	o_isrot.2692
	subi	$sp, $sp, 88
	lw	$ra, 84($sp)
	move	$a1, $v0
	li	$a2, 0
	bne	$a1, $a2, beq_else.8357
	lw	$f0, 72($sp)
	fmove	$fv, $f0
	jr $ra
beq_else.8357:
	lw	$f0, 8($sp)
	lw	$f1, 16($sp)
	fmul	$f2, $f1, $f0
	lw	$a1, 24($sp)
	sw	$f2, 80($sp)
	sw	$ra, 92($sp)
	addi	$sp, $sp, 96
	jal	o_param_r1.2718
	subi	$sp, $sp, 96
	lw	$ra, 92($sp)
	fmove	$f0, $fv
	lw	$f1, 80($sp)
	fmul	$f0, $f1, $f0
	lw	$f1, 72($sp)
	fadd	$f0, $f1, $f0
	lw	$f1, 0($sp)
	lw	$f2, 8($sp)
	fmul	$f2, $f2, $f1
	lw	$a1, 24($sp)
	sw	$f0, 88($sp)
	sw	$f2, 96($sp)
	sw	$ra, 108($sp)
	addi	$sp, $sp, 112
	jal	o_param_r2.2720
	subi	$sp, $sp, 112
	lw	$ra, 108($sp)
	fmove	$f0, $fv
	lw	$f1, 96($sp)
	fmul	$f0, $f1, $f0
	lw	$f1, 88($sp)
	fadd	$f0, $f1, $f0
	lw	$f1, 16($sp)
	lw	$f2, 0($sp)
	fmul	$f1, $f2, $f1
	lw	$a1, 24($sp)
	sw	$f0, 104($sp)
	sw	$f1, 112($sp)
	sw	$ra, 124($sp)
	addi	$sp, $sp, 128
	jal	o_param_r3.2722
	subi	$sp, $sp, 128
	lw	$ra, 124($sp)
	fmove	$f0, $fv
	lw	$f1, 112($sp)
	fmul	$f0, $f1, $f0
	lw	$f1, 104($sp)
	fadd	$fv, $f1, $f0
	jr $ra
bilinear.2804:
	fmul	$f6, $f0, $f3
	sw	$f3, 0($sp)
	sw	$f0, 8($sp)
	sw	$f5, 16($sp)
	sw	$f2, 24($sp)
	sw	$a1, 32($sp)
	sw	$f4, 40($sp)
	sw	$f1, 48($sp)
	sw	$f6, 56($sp)
	sw	$ra, 68($sp)
	addi	$sp, $sp, 72
	jal	o_param_a.2694
	subi	$sp, $sp, 72
	lw	$ra, 68($sp)
	fmove	$f0, $fv
	lw	$f1, 56($sp)
	fmul	$f0, $f1, $f0
	lw	$f1, 40($sp)
	lw	$f2, 48($sp)
	fmul	$f3, $f2, $f1
	lw	$a1, 32($sp)
	sw	$f0, 64($sp)
	sw	$f3, 72($sp)
	sw	$ra, 84($sp)
	addi	$sp, $sp, 88
	jal	o_param_b.2696
	subi	$sp, $sp, 88
	lw	$ra, 84($sp)
	fmove	$f0, $fv
	lw	$f1, 72($sp)
	fmul	$f0, $f1, $f0
	lw	$f1, 64($sp)
	fadd	$f0, $f1, $f0
	lw	$f1, 16($sp)
	lw	$f2, 24($sp)
	fmul	$f3, $f2, $f1
	lw	$a1, 32($sp)
	sw	$f0, 80($sp)
	sw	$f3, 88($sp)
	sw	$ra, 100($sp)
	addi	$sp, $sp, 104
	jal	o_param_c.2698
	subi	$sp, $sp, 104
	lw	$ra, 100($sp)
	fmove	$f0, $fv
	lw	$f1, 88($sp)
	fmul	$f0, $f1, $f0
	lw	$f1, 80($sp)
	fadd	$f0, $f1, $f0
	lw	$a1, 32($sp)
	sw	$f0, 96($sp)
	sw	$ra, 108($sp)
	addi	$sp, $sp, 112
	jal	o_isrot.2692
	subi	$sp, $sp, 112
	lw	$ra, 108($sp)
	move	$a1, $v0
	li	$a2, 0
	bne	$a1, $a2, beq_else.8359
	lw	$f0, 96($sp)
	fmove	$fv, $f0
	jr $ra
beq_else.8359:
	lw	$f0, 40($sp)
	lw	$f1, 24($sp)
	fmul	$f2, $f1, $f0
	lw	$f3, 16($sp)
	lw	$f4, 48($sp)
	fmul	$f5, $f4, $f3
	fadd	$f2, $f2, $f5
	lw	$a1, 32($sp)
	sw	$f2, 104($sp)
	sw	$ra, 116($sp)
	addi	$sp, $sp, 120
	jal	o_param_r1.2718
	subi	$sp, $sp, 120
	lw	$ra, 116($sp)
	fmove	$f0, $fv
	lw	$f1, 104($sp)
	fmul	$f0, $f1, $f0
	lw	$f1, 16($sp)
	lw	$f2, 8($sp)
	fmul	$f1, $f2, $f1
	lw	$f3, 0($sp)
	lw	$f4, 24($sp)
	fmul	$f4, $f4, $f3
	fadd	$f1, $f1, $f4
	lw	$a1, 32($sp)
	sw	$f0, 112($sp)
	sw	$f1, 120($sp)
	sw	$ra, 132($sp)
	addi	$sp, $sp, 136
	jal	o_param_r2.2720
	subi	$sp, $sp, 136
	lw	$ra, 132($sp)
	fmove	$f0, $fv
	lw	$f1, 120($sp)
	fmul	$f0, $f1, $f0
	lw	$f1, 112($sp)
	fadd	$f0, $f1, $f0
	lw	$f1, 40($sp)
	lw	$f2, 8($sp)
	fmul	$f1, $f2, $f1
	lw	$f2, 0($sp)
	lw	$f3, 48($sp)
	fmul	$f2, $f3, $f2
	fadd	$f1, $f1, $f2
	lw	$a1, 32($sp)
	sw	$f0, 128($sp)
	sw	$f1, 136($sp)
	sw	$ra, 148($sp)
	addi	$sp, $sp, 152
	jal	o_param_r3.2722
	subi	$sp, $sp, 152
	lw	$ra, 148($sp)
	fmove	$f0, $fv
	lw	$f1, 136($sp)
	fmul	$f0, $f1, $f0
	lw	$f1, 128($sp)
	fadd	$f0, $f1, $f0
	sw	$ra, 148($sp)
	addi	$sp, $sp, 152
	jal	min_caml_fhalf
	subi	$sp, $sp, 152
	lw	$ra, 148($sp)
	fmove	$f0, $fv
	lw	$f1, 96($sp)
	fadd	$fv, $f1, $f0
	jr $ra
solver_second.2812:
	flw	$f3, 0($a2)
	flw	$f4, 8($a2)
	flw	$f5, 16($a2)
	sw	$f2, 0($sp)
	sw	$f1, 8($sp)
	sw	$f0, 16($sp)
	sw	$a1, 24($sp)
	sw	$a2, 28($sp)
	fmove	$f2, $f5
	fmove	$f1, $f4
	fmove	$f0, $f3
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	quadratic.2799
	subi	$sp, $sp, 40
	lw	$ra, 36($sp)
	fmove	$f0, $fv
	sw	$f0, 32($sp)
	sw	$ra, 44($sp)
	addi	$sp, $sp, 48
	jal	min_caml_fiszero
	subi	$sp, $sp, 48
	lw	$ra, 44($sp)
	move	$a1, $v0
	li	$a2, 0
	bne	$a1, $a2, beq_else.8360
	lw	$a1, 28($sp)
	flw	$f0, 0($a1)
	flw	$f1, 8($a1)
	flw	$f2, 16($a1)
	lw	$f3, 16($sp)
	lw	$f4, 8($sp)
	lw	$f5, 0($sp)
	lw	$a1, 24($sp)
	sw	$ra, 44($sp)
	addi	$sp, $sp, 48
	jal	bilinear.2804
	subi	$sp, $sp, 48
	lw	$ra, 44($sp)
	fmove	$f0, $fv
	lw	$f1, 16($sp)
	lw	$f2, 8($sp)
	lw	$f3, 0($sp)
	lw	$a1, 24($sp)
	sw	$f0, 40($sp)
	fmove	$f0, $f1
	fmove	$f1, $f2
	fmove	$f2, $f3
	sw	$ra, 52($sp)
	addi	$sp, $sp, 56
	jal	quadratic.2799
	subi	$sp, $sp, 56
	lw	$ra, 52($sp)
	fmove	$f0, $fv
	lw	$a1, 24($sp)
	sw	$f0, 48($sp)
	sw	$ra, 60($sp)
	addi	$sp, $sp, 64
	jal	o_form.2686
	subi	$sp, $sp, 64
	lw	$ra, 60($sp)
	move	$a1, $v0
	li	$a2, 3
	bne	$a1, $a2, beq_else.8361
	jal l.6346
	mtc1	$f0, $a25
	lw	$f1, 48($sp)
	fsub	$f0, $f1, $f0
	j	beq_cont.8362
beq_else.8361:
	lw	$f0, 48($sp)
beq_cont.8362:
	lw	$f1, 40($sp)
	sw	$f0, 56($sp)
	fmove	$f0, $f1
	sw	$ra, 68($sp)
	addi	$sp, $sp, 72
	jal	min_caml_fsqr
	subi	$sp, $sp, 72
	lw	$ra, 68($sp)
	fmove	$f0, $fv
	lw	$f1, 56($sp)
	lw	$f2, 32($sp)
	fmul	$f1, $f2, $f1
	fsub	$f0, $f0, $f1
	sw	$f0, 64($sp)
	sw	$ra, 76($sp)
	addi	$sp, $sp, 80
	jal	min_caml_fispos
	subi	$sp, $sp, 80
	lw	$ra, 76($sp)
	move	$a1, $v0
	li	$a2, 0
	bne	$a1, $a2, beq_else.8363
	li	$v0, 0
	jr $ra
beq_else.8363:
	lw	$f0, 64($sp)
	sw	$ra, 76($sp)
	addi	$sp, $sp, 80
	jal	min_caml_sqrt
	subi	$sp, $sp, 80
	lw	$ra, 76($sp)
	fmove	$f0, $fv
	lw	$a1, 24($sp)
	sw	$f0, 72($sp)
	sw	$ra, 84($sp)
	addi	$sp, $sp, 88
	jal	o_isinvert.2690
	subi	$sp, $sp, 88
	lw	$ra, 84($sp)
	move	$a1, $v0
	li	$a2, 0
	bne	$a1, $a2, beq_else.8364
	lw	$f0, 72($sp)
	sw	$ra, 84($sp)
	addi	$sp, $sp, 88
	jal	min_caml_fneg
	subi	$sp, $sp, 88
	lw	$ra, 84($sp)
	fmove	$f0, $fv
	j	beq_cont.8365
beq_else.8364:
	lw	$f0, 72($sp)
beq_cont.8365:
	lil	$a1, min_caml_solver_dist
	lw	$f1, 40($sp)
	fsub	$f0, $f0, $f1
	lw	$f1, 32($sp)
	finv	$f1, $f1
	fmul	$f0, $f0, $f1
	fsw	$f0, 0($a1)
	li	$v0, 1
	jr $ra
beq_else.8360:
	li	$v0, 0
	jr $ra
solver.2818:
	lil	$a4, min_caml_objects
	sll	$a1, $a1, 2
	add	$a4, $a4, $a1
	lw	$a1, 0($a4)
	flw	$f0, 0($a3)
	sw	$a2, 0($sp)
	sw	$a1, 4($sp)
	sw	$a3, 8($sp)
	sw	$f0, 16($sp)
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	o_param_x.2702
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	fmove	$f0, $fv
	lw	$f1, 16($sp)
	fsub	$f0, $f1, $f0
	lw	$a1, 8($sp)
	flw	$f1, 8($a1)
	lw	$a2, 4($sp)
	sw	$f0, 24($sp)
	sw	$f1, 32($sp)
	move	$a1, $a2
	sw	$ra, 44($sp)
	addi	$sp, $sp, 48
	jal	o_param_y.2704
	subi	$sp, $sp, 48
	lw	$ra, 44($sp)
	fmove	$f0, $fv
	lw	$f1, 32($sp)
	fsub	$f0, $f1, $f0
	lw	$a1, 8($sp)
	flw	$f1, 16($a1)
	lw	$a1, 4($sp)
	sw	$f0, 40($sp)
	sw	$f1, 48($sp)
	sw	$ra, 60($sp)
	addi	$sp, $sp, 64
	jal	o_param_z.2706
	subi	$sp, $sp, 64
	lw	$ra, 60($sp)
	fmove	$f0, $fv
	lw	$f1, 48($sp)
	fsub	$f0, $f1, $f0
	lw	$a1, 4($sp)
	sw	$f0, 56($sp)
	sw	$ra, 68($sp)
	addi	$sp, $sp, 72
	jal	o_form.2686
	subi	$sp, $sp, 72
	lw	$ra, 68($sp)
	move	$a1, $v0
	li	$a2, 1
	bne	$a1, $a2, beq_else.8367
	lw	$f0, 24($sp)
	lw	$f1, 40($sp)
	lw	$f2, 56($sp)
	lw	$a1, 4($sp)
	lw	$a2, 0($sp)
	b	solver_rect.2787
beq_else.8367:
	li	$a2, 2
	bne	$a1, $a2, beq_else.8368
	lw	$f0, 24($sp)
	lw	$f1, 40($sp)
	lw	$f2, 56($sp)
	lw	$a1, 4($sp)
	lw	$a2, 0($sp)
	b	solver_surface.2793
beq_else.8368:
	lw	$f0, 24($sp)
	lw	$f1, 40($sp)
	lw	$f2, 56($sp)
	lw	$a1, 4($sp)
	lw	$a2, 0($sp)
	b	solver_second.2812
solver_rect_fast.2822:
	flw	$f3, 0($a3)
	fsub	$f3, $f3, $f0
	flw	$f4, 8($a3)
	fmul	$f3, $f3, $f4
	flw	$f4, 8($a2)
	fmul	$f4, $f3, $f4
	fadd	$f4, $f4, $f1
	sw	$f0, 0($sp)
	sw	$f1, 8($sp)
	sw	$a3, 16($sp)
	sw	$f2, 24($sp)
	sw	$f3, 32($sp)
	sw	$a2, 40($sp)
	sw	$a1, 44($sp)
	fmove	$f0, $f4
	sw	$ra, 52($sp)
	addi	$sp, $sp, 56
	jal	min_caml_fabs
	subi	$sp, $sp, 56
	lw	$ra, 52($sp)
	fmove	$f0, $fv
	lw	$a1, 44($sp)
	sw	$f0, 48($sp)
	sw	$ra, 60($sp)
	addi	$sp, $sp, 64
	jal	o_param_b.2696
	subi	$sp, $sp, 64
	lw	$ra, 60($sp)
	fmove	$f1, $fv
	fmove	$f1, $f0
	lw	$f0, 48($sp)
	sw	$ra, 60($sp)
	addi	$sp, $sp, 64
	jal	min_caml_fless
	subi	$sp, $sp, 64
	lw	$ra, 60($sp)
	move	$a1, $v0
	li	$a2, 0
	bne	$a1, $a2, beq_else.8370
	li	$a1, 0
	j	beq_cont.8371
beq_else.8370:
	lw	$a1, 40($sp)
	flw	$f0, 16($a1)
	lw	$f1, 32($sp)
	fmul	$f0, $f1, $f0
	lw	$f2, 24($sp)
	fadd	$f0, $f0, $f2
	sw	$ra, 60($sp)
	addi	$sp, $sp, 64
	jal	min_caml_fabs
	subi	$sp, $sp, 64
	lw	$ra, 60($sp)
	fmove	$f0, $fv
	lw	$a1, 44($sp)
	sw	$f0, 56($sp)
	sw	$ra, 68($sp)
	addi	$sp, $sp, 72
	jal	o_param_c.2698
	subi	$sp, $sp, 72
	lw	$ra, 68($sp)
	fmove	$f1, $fv
	fmove	$f1, $f0
	lw	$f0, 56($sp)
	sw	$ra, 68($sp)
	addi	$sp, $sp, 72
	jal	min_caml_fless
	subi	$sp, $sp, 72
	lw	$ra, 68($sp)
	move	$a1, $v0
	li	$a2, 0
	bne	$a1, $a2, beq_else.8372
	li	$a1, 0
	j	beq_cont.8373
beq_else.8372:
	lw	$a1, 16($sp)
	flw	$f0, 8($a1)
	sw	$ra, 68($sp)
	addi	$sp, $sp, 72
	jal	min_caml_fiszero
	subi	$sp, $sp, 72
	lw	$ra, 68($sp)
	move	$a1, $v0
	li	$a2, 0
	bne	$a1, $a2, beq_else.8374
	li	$a1, 1
	j	beq_cont.8375
beq_else.8374:
	li	$a1, 0
beq_cont.8375:
beq_cont.8373:
beq_cont.8371:
	li	$a2, 0
	bne	$a1, $a2, beq_else.8376
	lw	$a1, 16($sp)
	flw	$f0, 16($a1)
	lw	$f1, 8($sp)
	fsub	$f0, $f0, $f1
	flw	$f2, 24($a1)
	fmul	$f0, $f0, $f2
	lw	$a2, 40($sp)
	flw	$f2, 0($a2)
	fmul	$f2, $f0, $f2
	lw	$f3, 0($sp)
	fadd	$f2, $f2, $f3
	sw	$f0, 64($sp)
	fmove	$f0, $f2
	sw	$ra, 76($sp)
	addi	$sp, $sp, 80
	jal	min_caml_fabs
	subi	$sp, $sp, 80
	lw	$ra, 76($sp)
	fmove	$f0, $fv
	lw	$a1, 44($sp)
	sw	$f0, 72($sp)
	sw	$ra, 84($sp)
	addi	$sp, $sp, 88
	jal	o_param_a.2694
	subi	$sp, $sp, 88
	lw	$ra, 84($sp)
	fmove	$f1, $fv
	fmove	$f1, $f0
	lw	$f0, 72($sp)
	sw	$ra, 84($sp)
	addi	$sp, $sp, 88
	jal	min_caml_fless
	subi	$sp, $sp, 88
	lw	$ra, 84($sp)
	move	$a1, $v0
	li	$a2, 0
	bne	$a1, $a2, beq_else.8377
	li	$a1, 0
	j	beq_cont.8378
beq_else.8377:
	lw	$a1, 40($sp)
	flw	$f0, 16($a1)
	lw	$f1, 64($sp)
	fmul	$f0, $f1, $f0
	lw	$f2, 24($sp)
	fadd	$f0, $f0, $f2
	sw	$ra, 84($sp)
	addi	$sp, $sp, 88
	jal	min_caml_fabs
	subi	$sp, $sp, 88
	lw	$ra, 84($sp)
	fmove	$f0, $fv
	lw	$a1, 44($sp)
	sw	$f0, 80($sp)
	sw	$ra, 92($sp)
	addi	$sp, $sp, 96
	jal	o_param_c.2698
	subi	$sp, $sp, 96
	lw	$ra, 92($sp)
	fmove	$f1, $fv
	fmove	$f1, $f0
	lw	$f0, 80($sp)
	sw	$ra, 92($sp)
	addi	$sp, $sp, 96
	jal	min_caml_fless
	subi	$sp, $sp, 96
	lw	$ra, 92($sp)
	move	$a1, $v0
	li	$a2, 0
	bne	$a1, $a2, beq_else.8379
	li	$a1, 0
	j	beq_cont.8380
beq_else.8379:
	lw	$a1, 16($sp)
	flw	$f0, 24($a1)
	sw	$ra, 92($sp)
	addi	$sp, $sp, 96
	jal	min_caml_fiszero
	subi	$sp, $sp, 96
	lw	$ra, 92($sp)
	move	$a1, $v0
	li	$a2, 0
	bne	$a1, $a2, beq_else.8381
	li	$a1, 1
	j	beq_cont.8382
beq_else.8381:
	li	$a1, 0
beq_cont.8382:
beq_cont.8380:
beq_cont.8378:
	li	$a2, 0
	bne	$a1, $a2, beq_else.8383
	lw	$a1, 16($sp)
	flw	$f0, 32($a1)
	lw	$f1, 24($sp)
	fsub	$f0, $f0, $f1
	flw	$f1, 40($a1)
	fmul	$f0, $f0, $f1
	lw	$a2, 40($sp)
	flw	$f1, 0($a2)
	fmul	$f1, $f0, $f1
	lw	$f2, 0($sp)
	fadd	$f1, $f1, $f2
	sw	$f0, 88($sp)
	fmove	$f0, $f1
	sw	$ra, 100($sp)
	addi	$sp, $sp, 104
	jal	min_caml_fabs
	subi	$sp, $sp, 104
	lw	$ra, 100($sp)
	fmove	$f0, $fv
	lw	$a1, 44($sp)
	sw	$f0, 96($sp)
	sw	$ra, 108($sp)
	addi	$sp, $sp, 112
	jal	o_param_a.2694
	subi	$sp, $sp, 112
	lw	$ra, 108($sp)
	fmove	$f1, $fv
	fmove	$f1, $f0
	lw	$f0, 96($sp)
	sw	$ra, 108($sp)
	addi	$sp, $sp, 112
	jal	min_caml_fless
	subi	$sp, $sp, 112
	lw	$ra, 108($sp)
	move	$a1, $v0
	li	$a2, 0
	bne	$a1, $a2, beq_else.8384
	li	$a1, 0
	j	beq_cont.8385
beq_else.8384:
	lw	$a1, 40($sp)
	flw	$f0, 8($a1)
	lw	$f1, 88($sp)
	fmul	$f0, $f1, $f0
	lw	$f2, 8($sp)
	fadd	$f0, $f0, $f2
	sw	$ra, 108($sp)
	addi	$sp, $sp, 112
	jal	min_caml_fabs
	subi	$sp, $sp, 112
	lw	$ra, 108($sp)
	fmove	$f0, $fv
	lw	$a1, 44($sp)
	sw	$f0, 104($sp)
	sw	$ra, 116($sp)
	addi	$sp, $sp, 120
	jal	o_param_b.2696
	subi	$sp, $sp, 120
	lw	$ra, 116($sp)
	fmove	$f1, $fv
	fmove	$f1, $f0
	lw	$f0, 104($sp)
	sw	$ra, 116($sp)
	addi	$sp, $sp, 120
	jal	min_caml_fless
	subi	$sp, $sp, 120
	lw	$ra, 116($sp)
	move	$a1, $v0
	li	$a2, 0
	bne	$a1, $a2, beq_else.8386
	li	$a1, 0
	j	beq_cont.8387
beq_else.8386:
	lw	$a1, 16($sp)
	flw	$f0, 40($a1)
	sw	$ra, 116($sp)
	addi	$sp, $sp, 120
	jal	min_caml_fiszero
	subi	$sp, $sp, 120
	lw	$ra, 116($sp)
	move	$a1, $v0
	li	$a2, 0
	bne	$a1, $a2, beq_else.8388
	li	$a1, 1
	j	beq_cont.8389
beq_else.8388:
	li	$a1, 0
beq_cont.8389:
beq_cont.8387:
beq_cont.8385:
	li	$a2, 0
	bne	$a1, $a2, beq_else.8390
	li	$v0, 0
	jr $ra
beq_else.8390:
	lil	$a1, min_caml_solver_dist
	lw	$f0, 88($sp)
	fsw	$f0, 0($a1)
	li	$v0, 3
	jr $ra
beq_else.8383:
	lil	$a1, min_caml_solver_dist
	lw	$f0, 64($sp)
	fsw	$f0, 0($a1)
	li	$v0, 2
	jr $ra
beq_else.8376:
	lil	$a1, min_caml_solver_dist
	lw	$f0, 32($sp)
	fsw	$f0, 0($a1)
	li	$v0, 1
	jr $ra
solver_surface_fast.2829:
	flw	$f3, 0($a2)
	sw	$f2, 0($sp)
	sw	$f1, 8($sp)
	sw	$f0, 16($sp)
	sw	$a2, 24($sp)
	fmove	$f0, $f3
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	min_caml_fisneg
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	move	$a1, $v0
	li	$a2, 0
	bne	$a1, $a2, beq_else.8391
	li	$v0, 0
	jr $ra
beq_else.8391:
	lil	$a1, min_caml_solver_dist
	lw	$a2, 24($sp)
	flw	$f0, 8($a2)
	lw	$f1, 16($sp)
	fmul	$f0, $f0, $f1
	flw	$f1, 16($a2)
	lw	$f2, 8($sp)
	fmul	$f1, $f1, $f2
	fadd	$f0, $f0, $f1
	flw	$f1, 24($a2)
	lw	$f2, 0($sp)
	fmul	$f1, $f1, $f2
	fadd	$f0, $f0, $f1
	fsw	$f0, 0($a1)
	li	$v0, 1
	jr $ra
solver_second_fast.2835:
	flw	$f3, 0($a2)
	sw	$f3, 0($sp)
	sw	$a1, 8($sp)
	sw	$f2, 16($sp)
	sw	$f1, 24($sp)
	sw	$f0, 32($sp)
	sw	$a2, 40($sp)
	fmove	$f0, $f3
	sw	$ra, 44($sp)
	addi	$sp, $sp, 48
	jal	min_caml_fiszero
	subi	$sp, $sp, 48
	lw	$ra, 44($sp)
	move	$a1, $v0
	li	$a2, 0
	bne	$a1, $a2, beq_else.8393
	lw	$a1, 40($sp)
	flw	$f0, 8($a1)
	lw	$f1, 32($sp)
	fmul	$f0, $f0, $f1
	flw	$f2, 16($a1)
	lw	$f3, 24($sp)
	fmul	$f2, $f2, $f3
	fadd	$f0, $f0, $f2
	flw	$f2, 24($a1)
	lw	$f4, 16($sp)
	fmul	$f2, $f2, $f4
	fadd	$f0, $f0, $f2
	lw	$a2, 8($sp)
	sw	$f0, 48($sp)
	move	$a1, $a2
	fmove	$f2, $f4
	fmove	$f0, $f1
	fmove	$f1, $f3
	sw	$ra, 60($sp)
	addi	$sp, $sp, 64
	jal	quadratic.2799
	subi	$sp, $sp, 64
	lw	$ra, 60($sp)
	fmove	$f0, $fv
	lw	$a1, 8($sp)
	sw	$f0, 56($sp)
	sw	$ra, 68($sp)
	addi	$sp, $sp, 72
	jal	o_form.2686
	subi	$sp, $sp, 72
	lw	$ra, 68($sp)
	move	$a1, $v0
	li	$a2, 3
	bne	$a1, $a2, beq_else.8395
	jal l.6346
	mtc1	$f0, $a25
	lw	$f1, 56($sp)
	fsub	$f0, $f1, $f0
	j	beq_cont.8396
beq_else.8395:
	lw	$f0, 56($sp)
beq_cont.8396:
	lw	$f1, 48($sp)
	sw	$f0, 64($sp)
	fmove	$f0, $f1
	sw	$ra, 76($sp)
	addi	$sp, $sp, 80
	jal	min_caml_fsqr
	subi	$sp, $sp, 80
	lw	$ra, 76($sp)
	fmove	$f0, $fv
	lw	$f1, 64($sp)
	lw	$f2, 0($sp)
	fmul	$f1, $f2, $f1
	fsub	$f0, $f0, $f1
	sw	$f0, 72($sp)
	sw	$ra, 84($sp)
	addi	$sp, $sp, 88
	jal	min_caml_fispos
	subi	$sp, $sp, 88
	lw	$ra, 84($sp)
	move	$a1, $v0
	li	$a2, 0
	bne	$a1, $a2, beq_else.8397
	li	$v0, 0
	jr $ra
beq_else.8397:
	lw	$a1, 8($sp)
	sw	$ra, 84($sp)
	addi	$sp, $sp, 88
	jal	o_isinvert.2690
	subi	$sp, $sp, 88
	lw	$ra, 84($sp)
	move	$a1, $v0
	li	$a2, 0
	bne	$a1, $a2, beq_else.8398
	lil	$a1, min_caml_solver_dist
	lw	$f0, 72($sp)
	sw	$a1, 80($sp)
	sw	$ra, 84($sp)
	addi	$sp, $sp, 88
	jal	min_caml_sqrt
	subi	$sp, $sp, 88
	lw	$ra, 84($sp)
	fmove	$f0, $fv
	lw	$f1, 48($sp)
	fsub	$f0, $f1, $f0
	lw	$a1, 40($sp)
	flw	$f1, 32($a1)
	fmul	$f0, $f0, $f1
	lw	$a1, 80($sp)
	fsw	$f0, 0($a1)
	j	beq_cont.8399
beq_else.8398:
	lil	$a1, min_caml_solver_dist
	lw	$f0, 72($sp)
	sw	$a1, 84($sp)
	sw	$ra, 92($sp)
	addi	$sp, $sp, 96
	jal	min_caml_sqrt
	subi	$sp, $sp, 96
	lw	$ra, 92($sp)
	fmove	$f0, $fv
	lw	$f1, 48($sp)
	fadd	$f0, $f1, $f0
	lw	$a1, 40($sp)
	flw	$f1, 32($a1)
	fmul	$f0, $f0, $f1
	lw	$a1, 84($sp)
	fsw	$f0, 0($a1)
beq_cont.8399:
	li	$v0, 1
	jr $ra
beq_else.8393:
	li	$v0, 0
	jr $ra
solver_fast.2841:
	lil	$a4, min_caml_objects
	sll	$a5, $a1, 2
	add	$a4, $a4, $a5
	lw	$a4, 0($a4)
	flw	$f0, 0($a3)
	sw	$a1, 0($sp)
	sw	$a2, 4($sp)
	sw	$a4, 8($sp)
	sw	$a3, 12($sp)
	sw	$f0, 16($sp)
	move	$a1, $a4
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	o_param_x.2702
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	fmove	$f0, $fv
	lw	$f1, 16($sp)
	fsub	$f0, $f1, $f0
	lw	$a1, 12($sp)
	flw	$f1, 8($a1)
	lw	$a2, 8($sp)
	sw	$f0, 24($sp)
	sw	$f1, 32($sp)
	move	$a1, $a2
	sw	$ra, 44($sp)
	addi	$sp, $sp, 48
	jal	o_param_y.2704
	subi	$sp, $sp, 48
	lw	$ra, 44($sp)
	fmove	$f0, $fv
	lw	$f1, 32($sp)
	fsub	$f0, $f1, $f0
	lw	$a1, 12($sp)
	flw	$f1, 16($a1)
	lw	$a1, 8($sp)
	sw	$f0, 40($sp)
	sw	$f1, 48($sp)
	sw	$ra, 60($sp)
	addi	$sp, $sp, 64
	jal	o_param_z.2706
	subi	$sp, $sp, 64
	lw	$ra, 60($sp)
	fmove	$f0, $fv
	lw	$f1, 48($sp)
	fsub	$f0, $f1, $f0
	lw	$a1, 4($sp)
	sw	$f0, 56($sp)
	sw	$ra, 68($sp)
	addi	$sp, $sp, 72
	jal	d_const.2747
	subi	$sp, $sp, 72
	lw	$ra, 68($sp)
	move	$a1, $v0
	lw	$a2, 0($sp)
	sll	$a2, $a2, 2
	add	$a1, $a1, $a2
	lw	$a1, 0($a1)
	lw	$a2, 8($sp)
	sw	$a1, 64($sp)
	move	$a1, $a2
	sw	$ra, 68($sp)
	addi	$sp, $sp, 72
	jal	o_form.2686
	subi	$sp, $sp, 72
	lw	$ra, 68($sp)
	move	$a1, $v0
	li	$a2, 1
	bne	$a1, $a2, beq_else.8400
	lw	$a1, 4($sp)
	sw	$ra, 68($sp)
	addi	$sp, $sp, 72
	jal	d_vec.2745
	subi	$sp, $sp, 72
	lw	$ra, 68($sp)
	move	$a2, $v0
	move	$a2, $a1
	lw	$f0, 24($sp)
	lw	$f1, 40($sp)
	lw	$f2, 56($sp)
	lw	$a1, 8($sp)
	lw	$a3, 64($sp)
	b	solver_rect_fast.2822
beq_else.8400:
	li	$a2, 2
	bne	$a1, $a2, beq_else.8401
	lw	$f0, 24($sp)
	lw	$f1, 40($sp)
	lw	$f2, 56($sp)
	lw	$a1, 8($sp)
	lw	$a2, 64($sp)
	b	solver_surface_fast.2829
beq_else.8401:
	lw	$f0, 24($sp)
	lw	$f1, 40($sp)
	lw	$f2, 56($sp)
	lw	$a1, 8($sp)
	lw	$a2, 64($sp)
	b	solver_second_fast.2835
solver_surface_fast2.2845:
	flw	$f0, 0($a2)
	sw	$a3, 0($sp)
	sw	$a2, 4($sp)
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	min_caml_fisneg
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	move	$a1, $v0
	li	$a2, 0
	bne	$a1, $a2, beq_else.8402
	li	$v0, 0
	jr $ra
beq_else.8402:
	lil	$a1, min_caml_solver_dist
	lw	$a2, 4($sp)
	flw	$f0, 0($a2)
	lw	$a2, 0($sp)
	flw	$f1, 24($a2)
	fmul	$f0, $f0, $f1
	fsw	$f0, 0($a1)
	li	$v0, 1
	jr $ra
solver_second_fast2.2852:
	flw	$f3, 0($a2)
	sw	$a1, 0($sp)
	sw	$f3, 8($sp)
	sw	$a3, 16($sp)
	sw	$f2, 24($sp)
	sw	$f1, 32($sp)
	sw	$f0, 40($sp)
	sw	$a2, 48($sp)
	fmove	$f0, $f3
	sw	$ra, 52($sp)
	addi	$sp, $sp, 56
	jal	min_caml_fiszero
	subi	$sp, $sp, 56
	lw	$ra, 52($sp)
	move	$a1, $v0
	li	$a2, 0
	bne	$a1, $a2, beq_else.8405
	lw	$a1, 48($sp)
	flw	$f0, 8($a1)
	lw	$f1, 40($sp)
	fmul	$f0, $f0, $f1
	flw	$f1, 16($a1)
	lw	$f2, 32($sp)
	fmul	$f1, $f1, $f2
	fadd	$f0, $f0, $f1
	flw	$f1, 24($a1)
	lw	$f2, 24($sp)
	fmul	$f1, $f1, $f2
	fadd	$f0, $f0, $f1
	lw	$a2, 16($sp)
	flw	$f1, 24($a2)
	sw	$f0, 56($sp)
	sw	$f1, 64($sp)
	sw	$ra, 76($sp)
	addi	$sp, $sp, 80
	jal	min_caml_fsqr
	subi	$sp, $sp, 80
	lw	$ra, 76($sp)
	fmove	$f0, $fv
	lw	$f1, 64($sp)
	lw	$f2, 8($sp)
	fmul	$f1, $f2, $f1
	fsub	$f0, $f0, $f1
	sw	$f0, 72($sp)
	sw	$ra, 84($sp)
	addi	$sp, $sp, 88
	jal	min_caml_fispos
	subi	$sp, $sp, 88
	lw	$ra, 84($sp)
	move	$a1, $v0
	li	$a2, 0
	bne	$a1, $a2, beq_else.8407
	li	$v0, 0
	jr $ra
beq_else.8407:
	lw	$a1, 0($sp)
	sw	$ra, 84($sp)
	addi	$sp, $sp, 88
	jal	o_isinvert.2690
	subi	$sp, $sp, 88
	lw	$ra, 84($sp)
	move	$a1, $v0
	li	$a2, 0
	bne	$a1, $a2, beq_else.8408
	lil	$a1, min_caml_solver_dist
	lw	$f0, 72($sp)
	sw	$a1, 80($sp)
	sw	$ra, 84($sp)
	addi	$sp, $sp, 88
	jal	min_caml_sqrt
	subi	$sp, $sp, 88
	lw	$ra, 84($sp)
	fmove	$f0, $fv
	lw	$f1, 56($sp)
	fsub	$f0, $f1, $f0
	lw	$a1, 48($sp)
	flw	$f1, 32($a1)
	fmul	$f0, $f0, $f1
	lw	$a1, 80($sp)
	fsw	$f0, 0($a1)
	j	beq_cont.8409
beq_else.8408:
	lil	$a1, min_caml_solver_dist
	lw	$f0, 72($sp)
	sw	$a1, 84($sp)
	sw	$ra, 92($sp)
	addi	$sp, $sp, 96
	jal	min_caml_sqrt
	subi	$sp, $sp, 96
	lw	$ra, 92($sp)
	fmove	$f0, $fv
	lw	$f1, 56($sp)
	fadd	$f0, $f1, $f0
	lw	$a1, 48($sp)
	flw	$f1, 32($a1)
	fmul	$f0, $f0, $f1
	lw	$a1, 84($sp)
	fsw	$f0, 0($a1)
beq_cont.8409:
	li	$v0, 1
	jr $ra
beq_else.8405:
	li	$v0, 0
	jr $ra
solver_fast2.2859:
	lil	$a3, min_caml_objects
	sll	$a4, $a1, 2
	add	$a3, $a3, $a4
	lw	$a3, 0($a3)
	sw	$a3, 0($sp)
	sw	$a1, 4($sp)
	sw	$a2, 8($sp)
	move	$a1, $a3
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	o_param_ctbl.2724
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	move	$a1, $v0
	flw	$f0, 0($a1)
	flw	$f1, 8($a1)
	flw	$f2, 16($a1)
	lw	$a2, 8($sp)
	sw	$a1, 12($sp)
	sw	$f2, 16($sp)
	sw	$f1, 24($sp)
	sw	$f0, 32($sp)
	move	$a1, $a2
	sw	$ra, 44($sp)
	addi	$sp, $sp, 48
	jal	d_const.2747
	subi	$sp, $sp, 48
	lw	$ra, 44($sp)
	move	$a1, $v0
	lw	$a2, 4($sp)
	sll	$a2, $a2, 2
	add	$a1, $a1, $a2
	lw	$a1, 0($a1)
	lw	$a2, 0($sp)
	sw	$a1, 40($sp)
	move	$a1, $a2
	sw	$ra, 44($sp)
	addi	$sp, $sp, 48
	jal	o_form.2686
	subi	$sp, $sp, 48
	lw	$ra, 44($sp)
	move	$a1, $v0
	li	$a2, 1
	bne	$a1, $a2, beq_else.8410
	lw	$a1, 8($sp)
	sw	$ra, 44($sp)
	addi	$sp, $sp, 48
	jal	d_vec.2745
	subi	$sp, $sp, 48
	lw	$ra, 44($sp)
	move	$a2, $v0
	move	$a2, $a1
	lw	$f0, 32($sp)
	lw	$f1, 24($sp)
	lw	$f2, 16($sp)
	lw	$a1, 0($sp)
	lw	$a3, 40($sp)
	b	solver_rect_fast.2822
beq_else.8410:
	li	$a2, 2
	bne	$a1, $a2, beq_else.8411
	lw	$f0, 32($sp)
	lw	$f1, 24($sp)
	lw	$f2, 16($sp)
	lw	$a1, 0($sp)
	lw	$a2, 40($sp)
	lw	$a3, 12($sp)
	b	solver_surface_fast2.2845
beq_else.8411:
	lw	$f0, 32($sp)
	lw	$f1, 24($sp)
	lw	$f2, 16($sp)
	lw	$a1, 0($sp)
	lw	$a2, 40($sp)
	lw	$a3, 12($sp)
	b	solver_second_fast2.2852
setup_rect_table.2862:
	li	$a3, 6
	jal l.6345
	mtc1	$f0, $a25
	sw	$a2, 0($sp)
	sw	$a1, 4($sp)
	move	$a1, $a3
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	min_caml_create_float_array
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	move	$a1, $v0
	lw	$a2, 4($sp)
	flw	$f0, 0($a2)
	sw	$a1, 8($sp)
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	min_caml_fiszero
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	move	$a1, $v0
	li	$a2, 0
	bne	$a1, $a2, beq_else.8412
	lw	$a1, 0($sp)
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	o_isinvert.2690
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	move	$a1, $v0
	lw	$a2, 4($sp)
	flw	$f0, 0($a2)
	sw	$a1, 12($sp)
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	min_caml_fisneg
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	move	$a2, $v0
	move	$a2, $a1
	lw	$a1, 12($sp)
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	xor.2627
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	move	$a1, $v0
	lw	$a2, 0($sp)
	sw	$a1, 16($sp)
	move	$a1, $a2
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	o_param_a.2694
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	fmove	$f0, $fv
	lw	$a1, 16($sp)
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	fneg_cond.2632
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	fmove	$f0, $fv
	lw	$a1, 8($sp)
	fsw	$f0, 0($a1)
	jal l.6346
	mtc1	$f0, $a25
	lw	$a2, 4($sp)
	flw	$f1, 0($a2)
	finv	$f1, $f1
	fmul	$f0, $f0, $f1
	fsw	$f0, 8($a1)
	j	beq_cont.8413
beq_else.8412:
	jal l.6345
	mtc1	$f0, $a25
	lw	$a1, 8($sp)
	fsw	$f0, 8($a1)
beq_cont.8413:
	lw	$a2, 4($sp)
	flw	$f0, 8($a2)
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	min_caml_fiszero
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	move	$a1, $v0
	li	$a2, 0
	bne	$a1, $a2, beq_else.8414
	lw	$a1, 0($sp)
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	o_isinvert.2690
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	move	$a1, $v0
	lw	$a2, 4($sp)
	flw	$f0, 8($a2)
	sw	$a1, 20($sp)
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	min_caml_fisneg
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	move	$a2, $v0
	move	$a2, $a1
	lw	$a1, 20($sp)
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	xor.2627
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	move	$a1, $v0
	lw	$a2, 0($sp)
	sw	$a1, 24($sp)
	move	$a1, $a2
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	o_param_b.2696
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	fmove	$f0, $fv
	lw	$a1, 24($sp)
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	fneg_cond.2632
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	fmove	$f0, $fv
	lw	$a1, 8($sp)
	fsw	$f0, 16($a1)
	jal l.6346
	mtc1	$f0, $a25
	lw	$a2, 4($sp)
	flw	$f1, 8($a2)
	finv	$f1, $f1
	fmul	$f0, $f0, $f1
	fsw	$f0, 24($a1)
	j	beq_cont.8415
beq_else.8414:
	jal l.6345
	mtc1	$f0, $a25
	lw	$a1, 8($sp)
	fsw	$f0, 24($a1)
beq_cont.8415:
	lw	$a2, 4($sp)
	flw	$f0, 16($a2)
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	min_caml_fiszero
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	move	$a1, $v0
	li	$a2, 0
	bne	$a1, $a2, beq_else.8416
	lw	$a1, 0($sp)
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	o_isinvert.2690
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	move	$a1, $v0
	lw	$a2, 4($sp)
	flw	$f0, 16($a2)
	sw	$a1, 28($sp)
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	min_caml_fisneg
	subi	$sp, $sp, 40
	lw	$ra, 36($sp)
	move	$a2, $v0
	move	$a2, $a1
	lw	$a1, 28($sp)
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	xor.2627
	subi	$sp, $sp, 40
	lw	$ra, 36($sp)
	move	$a1, $v0
	lw	$a2, 0($sp)
	sw	$a1, 32($sp)
	move	$a1, $a2
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	o_param_c.2698
	subi	$sp, $sp, 40
	lw	$ra, 36($sp)
	fmove	$f0, $fv
	lw	$a1, 32($sp)
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	fneg_cond.2632
	subi	$sp, $sp, 40
	lw	$ra, 36($sp)
	fmove	$f0, $fv
	lw	$a1, 8($sp)
	fsw	$f0, 32($a1)
	jal l.6346
	mtc1	$f0, $a25
	lw	$a2, 4($sp)
	flw	$f1, 16($a2)
	finv	$f1, $f1
	fmul	$f0, $f0, $f1
	fsw	$f0, 40($a1)
	j	beq_cont.8417
beq_else.8416:
	jal l.6345
	mtc1	$f0, $a25
	lw	$a1, 8($sp)
	fsw	$f0, 40($a1)
beq_cont.8417:
	move	$v0, $a1
	jr $ra
setup_surface_table.2865:
	li	$a3, 4
	jal l.6345
	mtc1	$f0, $a25
	sw	$a2, 0($sp)
	sw	$a1, 4($sp)
	move	$a1, $a3
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	min_caml_create_float_array
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	move	$a1, $v0
	lw	$a2, 4($sp)
	flw	$f0, 0($a2)
	lw	$a3, 0($sp)
	sw	$a1, 8($sp)
	sw	$f0, 16($sp)
	move	$a1, $a3
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	o_param_a.2694
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	fmove	$f0, $fv
	lw	$f1, 16($sp)
	fmul	$f0, $f1, $f0
	lw	$a1, 4($sp)
	flw	$f1, 8($a1)
	lw	$a2, 0($sp)
	sw	$f0, 24($sp)
	sw	$f1, 32($sp)
	move	$a1, $a2
	sw	$ra, 44($sp)
	addi	$sp, $sp, 48
	jal	o_param_b.2696
	subi	$sp, $sp, 48
	lw	$ra, 44($sp)
	fmove	$f0, $fv
	lw	$f1, 32($sp)
	fmul	$f0, $f1, $f0
	lw	$f1, 24($sp)
	fadd	$f0, $f1, $f0
	lw	$a1, 4($sp)
	flw	$f1, 16($a1)
	lw	$a1, 0($sp)
	sw	$f0, 40($sp)
	sw	$f1, 48($sp)
	sw	$ra, 60($sp)
	addi	$sp, $sp, 64
	jal	o_param_c.2698
	subi	$sp, $sp, 64
	lw	$ra, 60($sp)
	fmove	$f0, $fv
	lw	$f1, 48($sp)
	fmul	$f0, $f1, $f0
	lw	$f1, 40($sp)
	fadd	$f0, $f1, $f0
	sw	$f0, 56($sp)
	sw	$ra, 68($sp)
	addi	$sp, $sp, 72
	jal	min_caml_fispos
	subi	$sp, $sp, 72
	lw	$ra, 68($sp)
	move	$a1, $v0
	li	$a2, 0
	bne	$a1, $a2, beq_else.8419
	jal l.6345
	mtc1	$f0, $a25
	lw	$a1, 8($sp)
	fsw	$f0, 0($a1)
	j	beq_cont.8420
beq_else.8419:
	jal l.6347
	mtc1	$f0, $a25
	lw	$f1, 56($sp)
	finv	$f2, $f1
	fmul	$f0, $f0, $f2
	lw	$a1, 8($sp)
	fsw	$f0, 0($a1)
	lw	$a2, 0($sp)
	move	$a1, $a2
	sw	$ra, 68($sp)
	addi	$sp, $sp, 72
	jal	o_param_a.2694
	subi	$sp, $sp, 72
	lw	$ra, 68($sp)
	fmove	$f0, $fv
	lw	$f1, 56($sp)
	finv	$f2, $f1
	fmul	$f0, $f0, $f2
	sw	$ra, 68($sp)
	addi	$sp, $sp, 72
	jal	min_caml_fneg
	subi	$sp, $sp, 72
	lw	$ra, 68($sp)
	fmove	$f0, $fv
	lw	$a1, 8($sp)
	fsw	$f0, 8($a1)
	lw	$a2, 0($sp)
	move	$a1, $a2
	sw	$ra, 68($sp)
	addi	$sp, $sp, 72
	jal	o_param_b.2696
	subi	$sp, $sp, 72
	lw	$ra, 68($sp)
	fmove	$f0, $fv
	lw	$f1, 56($sp)
	finv	$f2, $f1
	fmul	$f0, $f0, $f2
	sw	$ra, 68($sp)
	addi	$sp, $sp, 72
	jal	min_caml_fneg
	subi	$sp, $sp, 72
	lw	$ra, 68($sp)
	fmove	$f0, $fv
	lw	$a1, 8($sp)
	fsw	$f0, 16($a1)
	lw	$a2, 0($sp)
	move	$a1, $a2
	sw	$ra, 68($sp)
	addi	$sp, $sp, 72
	jal	o_param_c.2698
	subi	$sp, $sp, 72
	lw	$ra, 68($sp)
	fmove	$f0, $fv
	lw	$f1, 56($sp)
	finv	$f1, $f1
	fmul	$f0, $f0, $f1
	sw	$ra, 68($sp)
	addi	$sp, $sp, 72
	jal	min_caml_fneg
	subi	$sp, $sp, 72
	lw	$ra, 68($sp)
	fmove	$f0, $fv
	lw	$a1, 8($sp)
	fsw	$f0, 24($a1)
beq_cont.8420:
	move	$v0, $a1
	jr $ra
setup_second_table.2868:
	li	$a3, 5
	jal l.6345
	mtc1	$f0, $a25
	sw	$a2, 0($sp)
	sw	$a1, 4($sp)
	move	$a1, $a3
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	min_caml_create_float_array
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	move	$a1, $v0
	lw	$a2, 4($sp)
	flw	$f0, 0($a2)
	flw	$f1, 8($a2)
	flw	$f2, 16($a2)
	lw	$a3, 0($sp)
	sw	$a1, 8($sp)
	move	$a1, $a3
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	quadratic.2799
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	fmove	$f0, $fv
	lw	$a1, 4($sp)
	flw	$f1, 0($a1)
	lw	$a2, 0($sp)
	sw	$f0, 16($sp)
	sw	$f1, 24($sp)
	move	$a1, $a2
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	o_param_a.2694
	subi	$sp, $sp, 40
	lw	$ra, 36($sp)
	fmove	$f0, $fv
	lw	$f1, 24($sp)
	fmul	$f0, $f1, $f0
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	min_caml_fneg
	subi	$sp, $sp, 40
	lw	$ra, 36($sp)
	fmove	$f0, $fv
	lw	$a1, 4($sp)
	flw	$f1, 8($a1)
	lw	$a2, 0($sp)
	sw	$f0, 32($sp)
	sw	$f1, 40($sp)
	move	$a1, $a2
	sw	$ra, 52($sp)
	addi	$sp, $sp, 56
	jal	o_param_b.2696
	subi	$sp, $sp, 56
	lw	$ra, 52($sp)
	fmove	$f0, $fv
	lw	$f1, 40($sp)
	fmul	$f0, $f1, $f0
	sw	$ra, 52($sp)
	addi	$sp, $sp, 56
	jal	min_caml_fneg
	subi	$sp, $sp, 56
	lw	$ra, 52($sp)
	fmove	$f0, $fv
	lw	$a1, 4($sp)
	flw	$f1, 16($a1)
	lw	$a2, 0($sp)
	sw	$f0, 48($sp)
	sw	$f1, 56($sp)
	move	$a1, $a2
	sw	$ra, 68($sp)
	addi	$sp, $sp, 72
	jal	o_param_c.2698
	subi	$sp, $sp, 72
	lw	$ra, 68($sp)
	fmove	$f0, $fv
	lw	$f1, 56($sp)
	fmul	$f0, $f1, $f0
	sw	$ra, 68($sp)
	addi	$sp, $sp, 72
	jal	min_caml_fneg
	subi	$sp, $sp, 72
	lw	$ra, 68($sp)
	fmove	$f0, $fv
	lw	$a1, 8($sp)
	lw	$f1, 16($sp)
	fsw	$f1, 0($a1)
	lw	$a2, 0($sp)
	sw	$f0, 64($sp)
	move	$a1, $a2
	sw	$ra, 76($sp)
	addi	$sp, $sp, 80
	jal	o_isrot.2692
	subi	$sp, $sp, 80
	lw	$ra, 76($sp)
	move	$a1, $v0
	li	$a2, 0
	bne	$a1, $a2, beq_else.8422
	lw	$a1, 8($sp)
	lw	$f0, 32($sp)
	fsw	$f0, 8($a1)
	lw	$f0, 48($sp)
	fsw	$f0, 16($a1)
	lw	$f0, 64($sp)
	fsw	$f0, 24($a1)
	j	beq_cont.8423
beq_else.8422:
	lw	$a1, 4($sp)
	flw	$f0, 16($a1)
	lw	$a2, 0($sp)
	sw	$f0, 72($sp)
	move	$a1, $a2
	sw	$ra, 84($sp)
	addi	$sp, $sp, 88
	jal	o_param_r2.2720
	subi	$sp, $sp, 88
	lw	$ra, 84($sp)
	fmove	$f0, $fv
	lw	$f1, 72($sp)
	fmul	$f0, $f1, $f0
	lw	$a1, 4($sp)
	flw	$f1, 8($a1)
	lw	$a2, 0($sp)
	sw	$f0, 80($sp)
	sw	$f1, 88($sp)
	move	$a1, $a2
	sw	$ra, 100($sp)
	addi	$sp, $sp, 104
	jal	o_param_r3.2722
	subi	$sp, $sp, 104
	lw	$ra, 100($sp)
	fmove	$f0, $fv
	lw	$f1, 88($sp)
	fmul	$f0, $f1, $f0
	lw	$f1, 80($sp)
	fadd	$f0, $f1, $f0
	sw	$ra, 100($sp)
	addi	$sp, $sp, 104
	jal	min_caml_fhalf
	subi	$sp, $sp, 104
	lw	$ra, 100($sp)
	fmove	$f0, $fv
	lw	$f1, 32($sp)
	fsub	$f0, $f1, $f0
	lw	$a1, 8($sp)
	fsw	$f0, 8($a1)
	lw	$a2, 4($sp)
	flw	$f0, 16($a2)
	lw	$a3, 0($sp)
	sw	$f0, 96($sp)
	move	$a1, $a3
	sw	$ra, 108($sp)
	addi	$sp, $sp, 112
	jal	o_param_r1.2718
	subi	$sp, $sp, 112
	lw	$ra, 108($sp)
	fmove	$f0, $fv
	lw	$f1, 96($sp)
	fmul	$f0, $f1, $f0
	lw	$a1, 4($sp)
	flw	$f1, 0($a1)
	lw	$a2, 0($sp)
	sw	$f0, 104($sp)
	sw	$f1, 112($sp)
	move	$a1, $a2
	sw	$ra, 124($sp)
	addi	$sp, $sp, 128
	jal	o_param_r3.2722
	subi	$sp, $sp, 128
	lw	$ra, 124($sp)
	fmove	$f0, $fv
	lw	$f1, 112($sp)
	fmul	$f0, $f1, $f0
	lw	$f1, 104($sp)
	fadd	$f0, $f1, $f0
	sw	$ra, 124($sp)
	addi	$sp, $sp, 128
	jal	min_caml_fhalf
	subi	$sp, $sp, 128
	lw	$ra, 124($sp)
	fmove	$f0, $fv
	lw	$f1, 48($sp)
	fsub	$f0, $f1, $f0
	lw	$a1, 8($sp)
	fsw	$f0, 16($a1)
	lw	$a2, 4($sp)
	flw	$f0, 8($a2)
	lw	$a3, 0($sp)
	sw	$f0, 120($sp)
	move	$a1, $a3
	sw	$ra, 132($sp)
	addi	$sp, $sp, 136
	jal	o_param_r1.2718
	subi	$sp, $sp, 136
	lw	$ra, 132($sp)
	fmove	$f0, $fv
	lw	$f1, 120($sp)
	fmul	$f0, $f1, $f0
	lw	$a1, 4($sp)
	flw	$f1, 0($a1)
	lw	$a1, 0($sp)
	sw	$f0, 128($sp)
	sw	$f1, 136($sp)
	sw	$ra, 148($sp)
	addi	$sp, $sp, 152
	jal	o_param_r2.2720
	subi	$sp, $sp, 152
	lw	$ra, 148($sp)
	fmove	$f0, $fv
	lw	$f1, 136($sp)
	fmul	$f0, $f1, $f0
	lw	$f1, 128($sp)
	fadd	$f0, $f1, $f0
	sw	$ra, 148($sp)
	addi	$sp, $sp, 152
	jal	min_caml_fhalf
	subi	$sp, $sp, 152
	lw	$ra, 148($sp)
	fmove	$f0, $fv
	lw	$f1, 64($sp)
	fsub	$f0, $f1, $f0
	lw	$a1, 8($sp)
	fsw	$f0, 24($a1)
beq_cont.8423:
	lw	$f0, 16($sp)
	sw	$ra, 148($sp)
	addi	$sp, $sp, 152
	jal	min_caml_fiszero
	subi	$sp, $sp, 152
	lw	$ra, 148($sp)
	move	$a1, $v0
	li	$a2, 0
	bne	$a1, $a2, beq_else.8424
	jal l.6346
	mtc1	$f0, $a25
	lw	$f1, 16($sp)
	finv	$f1, $f1
	fmul	$f0, $f0, $f1
	lw	$a1, 8($sp)
	fsw	$f0, 32($a1)
	j	beq_cont.8425
beq_else.8424:
beq_cont.8425:
	lw	$a1, 8($sp)
	move	$v0, $a1
	jr $ra
iter_setup_dirvec_constants.2871:
	li	$a3, 0
	ble	$a2, $a3, ble_else.8426
	lil	$a3, min_caml_objects
	sll	$a4, $a2, 2
	add	$a3, $a3, $a4
	lw	$a3, 0($a3)
	sw	$a2, 0($sp)
	sw	$a3, 4($sp)
	sw	$a1, 8($sp)
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	d_const.2747
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	move	$a1, $v0
	lw	$a2, 8($sp)
	sw	$a1, 12($sp)
	move	$a1, $a2
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	d_vec.2745
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	move	$a1, $v0
	lw	$a2, 4($sp)
	sw	$a1, 16($sp)
	move	$a1, $a2
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	o_form.2686
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	move	$a1, $v0
	li	$a2, 1
	bne	$a1, $a2, beq_else.8427
	lw	$a1, 16($sp)
	lw	$a2, 4($sp)
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	setup_rect_table.2862
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	move	$a1, $v0
	lw	$a2, 0($sp)
	sll	$a3, $a2, 2
	lw	$a4, 12($sp)
	add	$a4, $a4, $a3
	sw	$a1, 0($a4)
	j	beq_cont.8428
beq_else.8427:
	li	$a2, 2
	bne	$a1, $a2, beq_else.8429
	lw	$a1, 16($sp)
	lw	$a2, 4($sp)
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	setup_surface_table.2865
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	move	$a1, $v0
	lw	$a2, 0($sp)
	sll	$a3, $a2, 2
	lw	$a4, 12($sp)
	add	$a4, $a4, $a3
	sw	$a1, 0($a4)
	j	beq_cont.8430
beq_else.8429:
	lw	$a1, 16($sp)
	lw	$a2, 4($sp)
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	setup_second_table.2868
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	move	$a1, $v0
	lw	$a2, 0($sp)
	sll	$a3, $a2, 2
	lw	$a4, 12($sp)
	add	$a4, $a4, $a3
	sw	$a1, 0($a4)
beq_cont.8430:
beq_cont.8428:
	subi	$a2, $a2, 1
	lw	$a1, 8($sp)
	b	iter_setup_dirvec_constants.2871
ble_else.8426:
	jr $ra
setup_dirvec_constants.2874:
	lil	$a2, min_caml_n_objects
	lw	$a2, 0($a2)
	subi	$a2, $a2, 1
	b	iter_setup_dirvec_constants.2871
setup_startp_constants.2876:
	li	$a3, 0
	ble	$a2, $a3, ble_else.8432
	lil	$a3, min_caml_objects
	sll	$a4, $a2, 2
	add	$a3, $a3, $a4
	lw	$a3, 0($a3)
	sw	$a2, 0($sp)
	sw	$a1, 4($sp)
	sw	$a3, 8($sp)
	move	$a1, $a3
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	o_param_ctbl.2724
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	move	$a1, $v0
	lw	$a2, 8($sp)
	sw	$a1, 12($sp)
	move	$a1, $a2
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	o_form.2686
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	move	$a1, $v0
	lw	$a2, 4($sp)
	flw	$f0, 0($a2)
	lw	$a3, 8($sp)
	sw	$a1, 16($sp)
	sw	$f0, 24($sp)
	move	$a1, $a3
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	o_param_x.2702
	subi	$sp, $sp, 40
	lw	$ra, 36($sp)
	fmove	$f0, $fv
	lw	$f1, 24($sp)
	fsub	$f0, $f1, $f0
	lw	$a1, 12($sp)
	fsw	$f0, 0($a1)
	lw	$a2, 4($sp)
	flw	$f0, 8($a2)
	lw	$a3, 8($sp)
	sw	$f0, 32($sp)
	move	$a1, $a3
	sw	$ra, 44($sp)
	addi	$sp, $sp, 48
	jal	o_param_y.2704
	subi	$sp, $sp, 48
	lw	$ra, 44($sp)
	fmove	$f0, $fv
	lw	$f1, 32($sp)
	fsub	$f0, $f1, $f0
	lw	$a1, 12($sp)
	fsw	$f0, 8($a1)
	lw	$a2, 4($sp)
	flw	$f0, 16($a2)
	lw	$a3, 8($sp)
	sw	$f0, 40($sp)
	move	$a1, $a3
	sw	$ra, 52($sp)
	addi	$sp, $sp, 56
	jal	o_param_z.2706
	subi	$sp, $sp, 56
	lw	$ra, 52($sp)
	fmove	$f0, $fv
	lw	$f1, 40($sp)
	fsub	$f0, $f1, $f0
	lw	$a1, 12($sp)
	fsw	$f0, 16($a1)
	li	$a2, 2
	lw	$a3, 16($sp)
	bne	$a3, $a2, beq_else.8434
	lw	$a2, 8($sp)
	move	$a1, $a2
	sw	$ra, 52($sp)
	addi	$sp, $sp, 56
	jal	o_param_abc.2700
	subi	$sp, $sp, 56
	lw	$ra, 52($sp)
	move	$a1, $v0
	lw	$a2, 12($sp)
	flw	$f0, 0($a2)
	flw	$f1, 8($a2)
	flw	$f2, 16($a2)
	sw	$ra, 52($sp)
	addi	$sp, $sp, 56
	jal	veciprod2.2662
	subi	$sp, $sp, 56
	lw	$ra, 52($sp)
	fmove	$f0, $fv
	lw	$a1, 12($sp)
	fsw	$f0, 24($a1)
	j	beq_cont.8435
beq_else.8434:
	li	$a2, 2
	bgt	$a3, $a2, ble_else.8436
	j	ble_cont.8437
ble_else.8436:
	flw	$f0, 0($a1)
	flw	$f1, 8($a1)
	flw	$f2, 16($a1)
	lw	$a2, 8($sp)
	move	$a1, $a2
	sw	$ra, 52($sp)
	addi	$sp, $sp, 56
	jal	quadratic.2799
	subi	$sp, $sp, 56
	lw	$ra, 52($sp)
	fmove	$f0, $fv
	li	$a1, 3
	lw	$a2, 16($sp)
	bne	$a2, $a1, beq_else.8438
	jal l.6346
	mtc1	$f1, $a25
	fsub	$f0, $f0, $f1
	j	beq_cont.8439
beq_else.8438:
beq_cont.8439:
	lw	$a1, 12($sp)
	fsw	$f0, 24($a1)
ble_cont.8437:
beq_cont.8435:
	lw	$a1, 0($sp)
	subi	$a2, $a1, 1
	lw	$a1, 4($sp)
	b	setup_startp_constants.2876
ble_else.8432:
	jr $ra
setup_startp.2879:
	lil	$a2, min_caml_startp_fast
	sw	$a1, 0($sp)
	move	$a25, $a2
	move	$a2, $a1
	move	$a1, $a25
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	veccpy.2648
	subi	$sp, $sp, 8
	lw	$ra, 4($sp)
	fmove	$f30, $fv
	fmove	$f30, $f0
	lil	$a1, min_caml_n_objects
	lw	$a1, 0($a1)
	subi	$a2, $a1, 1
	lw	$a1, 0($sp)
	b	setup_startp_constants.2876
is_rect_outside.2881:
	sw	$f2, 0($sp)
	sw	$f1, 8($sp)
	sw	$a1, 16($sp)
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	min_caml_fabs
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	fmove	$f0, $fv
	lw	$a1, 16($sp)
	sw	$f0, 24($sp)
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	o_param_a.2694
	subi	$sp, $sp, 40
	lw	$ra, 36($sp)
	fmove	$f1, $fv
	fmove	$f1, $f0
	lw	$f0, 24($sp)
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	min_caml_fless
	subi	$sp, $sp, 40
	lw	$ra, 36($sp)
	move	$a1, $v0
	li	$a2, 0
	bne	$a1, $a2, beq_else.8442
	li	$a1, 0
	j	beq_cont.8443
beq_else.8442:
	lw	$f0, 8($sp)
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	min_caml_fabs
	subi	$sp, $sp, 40
	lw	$ra, 36($sp)
	fmove	$f0, $fv
	lw	$a1, 16($sp)
	sw	$f0, 32($sp)
	sw	$ra, 44($sp)
	addi	$sp, $sp, 48
	jal	o_param_b.2696
	subi	$sp, $sp, 48
	lw	$ra, 44($sp)
	fmove	$f1, $fv
	fmove	$f1, $f0
	lw	$f0, 32($sp)
	sw	$ra, 44($sp)
	addi	$sp, $sp, 48
	jal	min_caml_fless
	subi	$sp, $sp, 48
	lw	$ra, 44($sp)
	move	$a1, $v0
	li	$a2, 0
	bne	$a1, $a2, beq_else.8444
	li	$a1, 0
	j	beq_cont.8445
beq_else.8444:
	lw	$f0, 0($sp)
	sw	$ra, 44($sp)
	addi	$sp, $sp, 48
	jal	min_caml_fabs
	subi	$sp, $sp, 48
	lw	$ra, 44($sp)
	fmove	$f0, $fv
	lw	$a1, 16($sp)
	sw	$f0, 40($sp)
	sw	$ra, 52($sp)
	addi	$sp, $sp, 56
	jal	o_param_c.2698
	subi	$sp, $sp, 56
	lw	$ra, 52($sp)
	fmove	$f1, $fv
	fmove	$f1, $f0
	lw	$f0, 40($sp)
	sw	$ra, 52($sp)
	addi	$sp, $sp, 56
	jal	min_caml_fless
	subi	$sp, $sp, 56
	lw	$ra, 52($sp)
	move	$a1, $v0
beq_cont.8445:
beq_cont.8443:
	li	$a2, 0
	bne	$a1, $a2, beq_else.8446
	lw	$a1, 16($sp)
	sw	$ra, 52($sp)
	addi	$sp, $sp, 56
	jal	o_isinvert.2690
	subi	$sp, $sp, 56
	lw	$ra, 52($sp)
	move	$a1, $v0
	li	$a2, 0
	bne	$a1, $a2, beq_else.8447
	li	$v0, 1
	jr $ra
beq_else.8447:
	li	$v0, 0
	jr $ra
beq_else.8446:
	lw	$a1, 16($sp)
	b	o_isinvert.2690
is_plane_outside.2886:
	sw	$a1, 0($sp)
	sw	$f2, 8($sp)
	sw	$f1, 16($sp)
	sw	$f0, 24($sp)
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	o_param_abc.2700
	subi	$sp, $sp, 40
	lw	$ra, 36($sp)
	move	$a1, $v0
	lw	$f0, 24($sp)
	lw	$f1, 16($sp)
	lw	$f2, 8($sp)
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	veciprod2.2662
	subi	$sp, $sp, 40
	lw	$ra, 36($sp)
	fmove	$f0, $fv
	lw	$a1, 0($sp)
	sw	$f0, 32($sp)
	sw	$ra, 44($sp)
	addi	$sp, $sp, 48
	jal	o_isinvert.2690
	subi	$sp, $sp, 48
	lw	$ra, 44($sp)
	move	$a1, $v0
	lw	$f0, 32($sp)
	sw	$a1, 40($sp)
	sw	$ra, 44($sp)
	addi	$sp, $sp, 48
	jal	min_caml_fisneg
	subi	$sp, $sp, 48
	lw	$ra, 44($sp)
	move	$a2, $v0
	move	$a2, $a1
	lw	$a1, 40($sp)
	sw	$ra, 44($sp)
	addi	$sp, $sp, 48
	jal	xor.2627
	subi	$sp, $sp, 48
	lw	$ra, 44($sp)
	move	$a1, $v0
	li	$a2, 0
	bne	$a1, $a2, beq_else.8449
	li	$v0, 1
	jr $ra
beq_else.8449:
	li	$v0, 0
	jr $ra
is_second_outside.2891:
	sw	$a1, 0($sp)
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	quadratic.2799
	subi	$sp, $sp, 8
	lw	$ra, 4($sp)
	fmove	$f0, $fv
	lw	$a1, 0($sp)
	sw	$f0, 8($sp)
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	o_form.2686
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	move	$a1, $v0
	li	$a2, 3
	bne	$a1, $a2, beq_else.8451
	jal l.6346
	mtc1	$f0, $a25
	lw	$f1, 8($sp)
	fsub	$f0, $f1, $f0
	j	beq_cont.8452
beq_else.8451:
	lw	$f0, 8($sp)
beq_cont.8452:
	lw	$a1, 0($sp)
	sw	$f0, 16($sp)
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	o_isinvert.2690
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	move	$a1, $v0
	lw	$f0, 16($sp)
	sw	$a1, 24($sp)
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	min_caml_fisneg
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	move	$a2, $v0
	move	$a2, $a1
	lw	$a1, 24($sp)
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	xor.2627
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	move	$a1, $v0
	li	$a2, 0
	bne	$a1, $a2, beq_else.8453
	li	$v0, 1
	jr $ra
beq_else.8453:
	li	$v0, 0
	jr $ra
is_outside.2896:
	sw	$f2, 0($sp)
	sw	$f1, 8($sp)
	sw	$a1, 16($sp)
	sw	$f0, 24($sp)
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	o_param_x.2702
	subi	$sp, $sp, 40
	lw	$ra, 36($sp)
	fmove	$f0, $fv
	lw	$f1, 24($sp)
	fsub	$f0, $f1, $f0
	lw	$a1, 16($sp)
	sw	$f0, 32($sp)
	sw	$ra, 44($sp)
	addi	$sp, $sp, 48
	jal	o_param_y.2704
	subi	$sp, $sp, 48
	lw	$ra, 44($sp)
	fmove	$f0, $fv
	lw	$f1, 8($sp)
	fsub	$f0, $f1, $f0
	lw	$a1, 16($sp)
	sw	$f0, 40($sp)
	sw	$ra, 52($sp)
	addi	$sp, $sp, 56
	jal	o_param_z.2706
	subi	$sp, $sp, 56
	lw	$ra, 52($sp)
	fmove	$f0, $fv
	lw	$f1, 0($sp)
	fsub	$f0, $f1, $f0
	lw	$a1, 16($sp)
	sw	$f0, 48($sp)
	sw	$ra, 60($sp)
	addi	$sp, $sp, 64
	jal	o_form.2686
	subi	$sp, $sp, 64
	lw	$ra, 60($sp)
	move	$a1, $v0
	li	$a2, 1
	bne	$a1, $a2, beq_else.8455
	lw	$f0, 32($sp)
	lw	$f1, 40($sp)
	lw	$f2, 48($sp)
	lw	$a1, 16($sp)
	b	is_rect_outside.2881
beq_else.8455:
	li	$a2, 2
	bne	$a1, $a2, beq_else.8456
	lw	$f0, 32($sp)
	lw	$f1, 40($sp)
	lw	$f2, 48($sp)
	lw	$a1, 16($sp)
	b	is_plane_outside.2886
beq_else.8456:
	lw	$f0, 32($sp)
	lw	$f1, 40($sp)
	lw	$f2, 48($sp)
	lw	$a1, 16($sp)
	b	is_second_outside.2891
check_all_inside.2901:
	sll	$a3, $a1, 2
	add	$a2, $a2, $a3
	lw	$a3, 0($a2)
	li	$a4, -1
	bne	$a3, $a4, beq_else.8457
	li	$v0, 1
	jr $ra
beq_else.8457:
	lil	$a4, min_caml_objects
	sll	$a3, $a3, 2
	add	$a4, $a4, $a3
	lw	$a3, 0($a4)
	sw	$f2, 0($sp)
	sw	$f1, 8($sp)
	sw	$f0, 16($sp)
	sw	$a2, 24($sp)
	sw	$a1, 28($sp)
	move	$a1, $a3
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	is_outside.2896
	subi	$sp, $sp, 40
	lw	$ra, 36($sp)
	move	$a1, $v0
	li	$a2, 0
	bne	$a1, $a2, beq_else.8458
	lw	$a1, 28($sp)
	addi	$a1, $a1, 1
	lw	$f0, 16($sp)
	lw	$f1, 8($sp)
	lw	$f2, 0($sp)
	lw	$a2, 24($sp)
	b	check_all_inside.2901
beq_else.8458:
	li	$v0, 0
	jr $ra
shadow_check_and_group.2907:
	sll	$a3, $a1, 2
	add	$a2, $a2, $a3
	lw	$a3, 0($a2)
	li	$a4, -1
	bne	$a3, $a4, beq_else.8459
	li	$v0, 0
	jr $ra
beq_else.8459:
	sll	$a3, $a1, 2
	add	$a2, $a2, $a3
	lw	$a3, 0($a2)
	lil	$a4, min_caml_light_dirvec
	lil	$a5, min_caml_intersection_point
	sw	$a2, 0($sp)
	sw	$a1, 4($sp)
	sw	$a3, 8($sp)
	move	$a2, $a4
	move	$a1, $a3
	move	$a3, $a5
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	solver_fast.2841
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	move	$a1, $v0
	lil	$a2, min_caml_solver_dist
	flw	$f0, 0($a2)
	li	$a2, 0
	sw	$f0, 16($sp)
	bne	$a1, $a2, beq_else.8461
	li	$a1, 0
	j	beq_cont.8462
beq_else.8461:
	jal l.6661
	mtc1	$f1, $a25
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	min_caml_fless
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	move	$a1, $v0
beq_cont.8462:
	li	$a2, 0
	bne	$a1, $a2, beq_else.8463
	lil	$a1, min_caml_objects
	lw	$a2, 8($sp)
	sll	$a2, $a2, 2
	add	$a1, $a1, $a2
	lw	$a1, 0($a1)
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	o_isinvert.2690
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	move	$a1, $v0
	li	$a2, 0
	bne	$a1, $a2, beq_else.8464
	li	$v0, 0
	jr $ra
beq_else.8464:
	lw	$a1, 4($sp)
	addi	$a1, $a1, 1
	lw	$a2, 0($sp)
	b	shadow_check_and_group.2907
beq_else.8463:
	jal l.6662
	mtc1	$f0, $a25
	lw	$f1, 16($sp)
	fadd	$f0, $f1, $f0
	lil	$a1, min_caml_light
	flw	$f1, 0($a1)
	fmul	$f1, $f1, $f0
	lil	$a1, min_caml_intersection_point
	flw	$f2, 0($a1)
	fadd	$f1, $f1, $f2
	lil	$a1, min_caml_light
	flw	$f2, 8($a1)
	fmul	$f2, $f2, $f0
	lil	$a1, min_caml_intersection_point
	flw	$f3, 8($a1)
	fadd	$f2, $f2, $f3
	lil	$a1, min_caml_light
	flw	$f3, 16($a1)
	fmul	$f0, $f3, $f0
	lil	$a1, min_caml_intersection_point
	flw	$f3, 16($a1)
	fadd	$f0, $f0, $f3
	li	$a1, 0
	lw	$a2, 0($sp)
	fmove	$f30, $f2
	fmove	$f2, $f0
	fmove	$f0, $f1
	fmove	$f1, $f30
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	check_all_inside.2901
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	move	$a1, $v0
	li	$a2, 0
	bne	$a1, $a2, beq_else.8465
	lw	$a1, 4($sp)
	addi	$a1, $a1, 1
	lw	$a2, 0($sp)
	b	shadow_check_and_group.2907
beq_else.8465:
	li	$v0, 1
	jr $ra
shadow_check_one_or_group.2910:
	sll	$a3, $a1, 2
	add	$a2, $a2, $a3
	lw	$a3, 0($a2)
	li	$a4, -1
	bne	$a3, $a4, beq_else.8466
	li	$v0, 0
	jr $ra
beq_else.8466:
	lil	$a4, min_caml_and_net
	sll	$a3, $a3, 2
	add	$a4, $a4, $a3
	lw	$a3, 0($a4)
	li	$a4, 0
	sw	$a2, 0($sp)
	sw	$a1, 4($sp)
	move	$a2, $a3
	move	$a1, $a4
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	shadow_check_and_group.2907
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	move	$a1, $v0
	li	$a2, 0
	bne	$a1, $a2, beq_else.8467
	lw	$a1, 4($sp)
	addi	$a1, $a1, 1
	lw	$a2, 0($sp)
	b	shadow_check_one_or_group.2910
beq_else.8467:
	li	$v0, 1
	jr $ra
shadow_check_one_or_matrix.2913:
	sll	$a3, $a1, 2
	add	$a2, $a2, $a3
	lw	$a3, 0($a2)
	lw	$a4, 0($a3)
	li	$a5, -1
	bne	$a4, $a5, beq_else.8468
	li	$v0, 0
	jr $ra
beq_else.8468:
	li	$a5, 99
	sw	$a3, 0($sp)
	sw	$a2, 4($sp)
	sw	$a1, 8($sp)
	bne	$a4, $a5, beq_else.8469
	li	$a1, 1
	j	beq_cont.8470
beq_else.8469:
	lil	$a5, min_caml_light_dirvec
	lil	$a6, min_caml_intersection_point
	move	$a3, $a6
	move	$a2, $a5
	move	$a1, $a4
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	solver_fast.2841
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	move	$a1, $v0
	li	$a2, 0
	bne	$a1, $a2, beq_else.8471
	li	$a1, 0
	j	beq_cont.8472
beq_else.8471:
	lil	$a1, min_caml_solver_dist
	flw	$f0, 0($a1)
	jal l.6675
	mtc1	$f1, $a25
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	min_caml_fless
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	move	$a1, $v0
	li	$a2, 0
	bne	$a1, $a2, beq_else.8473
	li	$a1, 0
	j	beq_cont.8474
beq_else.8473:
	li	$a1, 1
	lw	$a2, 0($sp)
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	shadow_check_one_or_group.2910
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	move	$a1, $v0
	li	$a2, 0
	bne	$a1, $a2, beq_else.8475
	li	$a1, 0
	j	beq_cont.8476
beq_else.8475:
	li	$a1, 1
beq_cont.8476:
beq_cont.8474:
beq_cont.8472:
beq_cont.8470:
	li	$a2, 0
	bne	$a1, $a2, beq_else.8477
	lw	$a1, 8($sp)
	addi	$a1, $a1, 1
	lw	$a2, 4($sp)
	b	shadow_check_one_or_matrix.2913
beq_else.8477:
	li	$a1, 1
	lw	$a2, 0($sp)
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	shadow_check_one_or_group.2910
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	move	$a1, $v0
	li	$a2, 0
	bne	$a1, $a2, beq_else.8478
	lw	$a1, 8($sp)
	addi	$a1, $a1, 1
	lw	$a2, 4($sp)
	b	shadow_check_one_or_matrix.2913
beq_else.8478:
	li	$v0, 1
	jr $ra
solve_each_element.2916:
	sll	$a4, $a1, 2
	add	$a2, $a2, $a4
	lw	$a4, 0($a2)
	li	$a5, -1
	bne	$a4, $a5, beq_else.8479
	jr $ra
beq_else.8479:
	lil	$a5, min_caml_startp
	sw	$a3, 0($sp)
	sw	$a2, 4($sp)
	sw	$a1, 8($sp)
	sw	$a4, 12($sp)
	move	$a2, $a3
	move	$a1, $a4
	move	$a3, $a5
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	solver.2818
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	move	$a1, $v0
	li	$a2, 0
	bne	$a1, $a2, beq_else.8481
	lil	$a1, min_caml_objects
	lw	$a2, 12($sp)
	sll	$a2, $a2, 2
	add	$a1, $a1, $a2
	lw	$a1, 0($a1)
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	o_isinvert.2690
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	move	$a1, $v0
	li	$a2, 0
	bne	$a1, $a2, beq_else.8482
	jr $ra
beq_else.8482:
	lw	$a1, 8($sp)
	addi	$a1, $a1, 1
	lw	$a2, 4($sp)
	lw	$a3, 0($sp)
	b	solve_each_element.2916
beq_else.8481:
	lil	$a2, min_caml_solver_dist
	flw	$f1, 0($a2)
	jal l.6345
	mtc1	$f0, $a25
	sw	$a1, 16($sp)
	sw	$f1, 24($sp)
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	min_caml_fless
	subi	$sp, $sp, 40
	lw	$ra, 36($sp)
	move	$a1, $v0
	li	$a2, 0
	bne	$a1, $a2, beq_else.8485
	j	beq_cont.8486
beq_else.8485:
	lil	$a1, min_caml_tmin
	flw	$f1, 0($a1)
	lw	$f0, 24($sp)
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	min_caml_fless
	subi	$sp, $sp, 40
	lw	$ra, 36($sp)
	move	$a1, $v0
	li	$a2, 0
	bne	$a1, $a2, beq_else.8487
	j	beq_cont.8488
beq_else.8487:
	jal l.6662
	mtc1	$f0, $a25
	lw	$f1, 24($sp)
	fadd	$f0, $f1, $f0
	lw	$a1, 0($sp)
	flw	$f1, 0($a1)
	fmul	$f1, $f1, $f0
	lil	$a2, min_caml_startp
	flw	$f2, 0($a2)
	fadd	$f1, $f1, $f2
	flw	$f2, 8($a1)
	fmul	$f2, $f2, $f0
	lil	$a2, min_caml_startp
	flw	$f3, 8($a2)
	fadd	$f2, $f2, $f3
	flw	$f3, 16($a1)
	fmul	$f3, $f3, $f0
	lil	$a2, min_caml_startp
	flw	$f4, 16($a2)
	fadd	$f3, $f3, $f4
	li	$a2, 0
	lw	$a3, 4($sp)
	sw	$f3, 32($sp)
	sw	$f2, 40($sp)
	sw	$f1, 48($sp)
	sw	$f0, 56($sp)
	move	$a1, $a2
	move	$a2, $a3
	fmove	$f0, $f1
	fmove	$f1, $f2
	fmove	$f2, $f3
	sw	$ra, 68($sp)
	addi	$sp, $sp, 72
	jal	check_all_inside.2901
	subi	$sp, $sp, 72
	lw	$ra, 68($sp)
	move	$a1, $v0
	li	$a2, 0
	bne	$a1, $a2, beq_else.8489
	j	beq_cont.8490
beq_else.8489:
	lil	$a1, min_caml_tmin
	lw	$f0, 56($sp)
	fsw	$f0, 0($a1)
	lil	$a1, min_caml_intersection_point
	lw	$f0, 48($sp)
	lw	$f1, 40($sp)
	lw	$f2, 32($sp)
	sw	$ra, 68($sp)
	addi	$sp, $sp, 72
	jal	vecset.2638
	subi	$sp, $sp, 72
	lw	$ra, 68($sp)
	fmove	$f30, $fv
	fmove	$f30, $f0
	lil	$a1, min_caml_intersected_object_id
	lw	$a2, 12($sp)
	sw	$a2, 0($a1)
	lil	$a1, min_caml_intsec_rectside
	lw	$a2, 16($sp)
	sw	$a2, 0($a1)
beq_cont.8490:
beq_cont.8488:
beq_cont.8486:
	lw	$a1, 8($sp)
	addi	$a1, $a1, 1
	lw	$a2, 4($sp)
	lw	$a3, 0($sp)
	b	solve_each_element.2916
solve_one_or_network.2920:
	sll	$a4, $a1, 2
	add	$a2, $a2, $a4
	lw	$a4, 0($a2)
	li	$a5, -1
	bne	$a4, $a5, beq_else.8491
	jr $ra
beq_else.8491:
	lil	$a5, min_caml_and_net
	sll	$a4, $a4, 2
	add	$a5, $a5, $a4
	lw	$a4, 0($a5)
	li	$a5, 0
	sw	$a3, 0($sp)
	sw	$a2, 4($sp)
	sw	$a1, 8($sp)
	move	$a2, $a4
	move	$a1, $a5
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	solve_each_element.2916
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	fmove	$f30, $fv
	fmove	$f30, $f0
	lw	$a1, 8($sp)
	addi	$a1, $a1, 1
	lw	$a2, 4($sp)
	lw	$a3, 0($sp)
	b	solve_one_or_network.2920
trace_or_matrix.2924:
	sll	$a4, $a1, 2
	add	$a2, $a2, $a4
	lw	$a4, 0($a2)
	lw	$a5, 0($a4)
	li	$a6, -1
	bne	$a5, $a6, beq_else.8493
	jr $ra
beq_else.8493:
	li	$a6, 99
	sw	$a3, 0($sp)
	sw	$a2, 4($sp)
	sw	$a1, 8($sp)
	bne	$a5, $a6, beq_else.8495
	li	$a5, 1
	move	$a2, $a4
	move	$a1, $a5
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	solve_one_or_network.2920
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	fmove	$f30, $fv
	fmove	$f30, $f0
	j	beq_cont.8496
beq_else.8495:
	lil	$a6, min_caml_startp
	sw	$a4, 12($sp)
	move	$a2, $a3
	move	$a1, $a5
	move	$a3, $a6
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	solver.2818
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	move	$a1, $v0
	li	$a2, 0
	bne	$a1, $a2, beq_else.8497
	j	beq_cont.8498
beq_else.8497:
	lil	$a1, min_caml_solver_dist
	flw	$f0, 0($a1)
	lil	$a1, min_caml_tmin
	flw	$f1, 0($a1)
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	min_caml_fless
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	move	$a1, $v0
	li	$a2, 0
	bne	$a1, $a2, beq_else.8499
	j	beq_cont.8500
beq_else.8499:
	li	$a1, 1
	lw	$a2, 12($sp)
	lw	$a3, 0($sp)
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	solve_one_or_network.2920
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	fmove	$f30, $fv
	fmove	$f30, $f0
beq_cont.8500:
beq_cont.8498:
beq_cont.8496:
	lw	$a1, 8($sp)
	addi	$a1, $a1, 1
	lw	$a2, 4($sp)
	lw	$a3, 0($sp)
	b	trace_or_matrix.2924
judge_intersection.2928:
	lil	$a2, min_caml_tmin
	jal l.6695
	mtc1	$f0, $a25
	fsw	$f0, 0($a2)
	li	$a2, 0
	lil	$a3, min_caml_or_net
	lw	$a3, 0($a3)
	move	$a25, $a3
	move	$a3, $a1
	move	$a1, $a2
	move	$a2, $a25
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	trace_or_matrix.2924
	subi	$sp, $sp, 8
	lw	$ra, 4($sp)
	fmove	$f30, $fv
	fmove	$f30, $f0
	lil	$a1, min_caml_tmin
	flw	$f1, 0($a1)
	jal l.6675
	mtc1	$f0, $a25
	sw	$f1, 0($sp)
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	min_caml_fless
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	move	$a1, $v0
	li	$a2, 0
	bne	$a1, $a2, beq_else.8501
	li	$v0, 0
	jr $ra
beq_else.8501:
	jal l.6699
	mtc1	$f1, $a25
	lw	$f0, 0($sp)
	b	min_caml_fless
solve_each_element_fast.2930:
	sw	$a3, 0($sp)
	sw	$a2, 4($sp)
	sw	$a1, 8($sp)
	move	$a1, $a3
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	d_vec.2745
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	move	$a1, $v0
	lw	$a2, 8($sp)
	sll	$a3, $a2, 2
	lw	$a4, 4($sp)
	add	$a4, $a4, $a3
	lw	$a3, 0($a4)
	li	$a5, -1
	bne	$a3, $a5, beq_else.8502
	jr $ra
beq_else.8502:
	lw	$a5, 0($sp)
	sw	$a1, 12($sp)
	sw	$a3, 16($sp)
	move	$a2, $a5
	move	$a1, $a3
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	solver_fast2.2859
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	move	$a1, $v0
	li	$a2, 0
	bne	$a1, $a2, beq_else.8504
	lil	$a1, min_caml_objects
	lw	$a2, 16($sp)
	sll	$a2, $a2, 2
	add	$a1, $a1, $a2
	lw	$a1, 0($a1)
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	o_isinvert.2690
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	move	$a1, $v0
	li	$a2, 0
	bne	$a1, $a2, beq_else.8505
	jr $ra
beq_else.8505:
	lw	$a1, 8($sp)
	addi	$a1, $a1, 1
	lw	$a2, 4($sp)
	lw	$a3, 0($sp)
	b	solve_each_element_fast.2930
beq_else.8504:
	lil	$a2, min_caml_solver_dist
	flw	$f1, 0($a2)
	jal l.6345
	mtc1	$f0, $a25
	sw	$a1, 20($sp)
	sw	$f1, 24($sp)
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	min_caml_fless
	subi	$sp, $sp, 40
	lw	$ra, 36($sp)
	move	$a1, $v0
	li	$a2, 0
	bne	$a1, $a2, beq_else.8507
	j	beq_cont.8508
beq_else.8507:
	lil	$a1, min_caml_tmin
	flw	$f1, 0($a1)
	lw	$f0, 24($sp)
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	min_caml_fless
	subi	$sp, $sp, 40
	lw	$ra, 36($sp)
	move	$a1, $v0
	li	$a2, 0
	bne	$a1, $a2, beq_else.8509
	j	beq_cont.8510
beq_else.8509:
	jal l.6662
	mtc1	$f0, $a25
	lw	$f1, 24($sp)
	fadd	$f0, $f1, $f0
	lw	$a1, 12($sp)
	flw	$f1, 0($a1)
	fmul	$f1, $f1, $f0
	lil	$a2, min_caml_startp_fast
	flw	$f2, 0($a2)
	fadd	$f1, $f1, $f2
	flw	$f2, 8($a1)
	fmul	$f2, $f2, $f0
	lil	$a2, min_caml_startp_fast
	flw	$f3, 8($a2)
	fadd	$f2, $f2, $f3
	flw	$f3, 16($a1)
	fmul	$f3, $f3, $f0
	lil	$a1, min_caml_startp_fast
	flw	$f4, 16($a1)
	fadd	$f3, $f3, $f4
	li	$a1, 0
	lw	$a2, 4($sp)
	sw	$f3, 32($sp)
	sw	$f2, 40($sp)
	sw	$f1, 48($sp)
	sw	$f0, 56($sp)
	fmove	$f0, $f1
	fmove	$f1, $f2
	fmove	$f2, $f3
	sw	$ra, 68($sp)
	addi	$sp, $sp, 72
	jal	check_all_inside.2901
	subi	$sp, $sp, 72
	lw	$ra, 68($sp)
	move	$a1, $v0
	li	$a2, 0
	bne	$a1, $a2, beq_else.8511
	j	beq_cont.8512
beq_else.8511:
	lil	$a1, min_caml_tmin
	lw	$f0, 56($sp)
	fsw	$f0, 0($a1)
	lil	$a1, min_caml_intersection_point
	lw	$f0, 48($sp)
	lw	$f1, 40($sp)
	lw	$f2, 32($sp)
	sw	$ra, 68($sp)
	addi	$sp, $sp, 72
	jal	vecset.2638
	subi	$sp, $sp, 72
	lw	$ra, 68($sp)
	fmove	$f30, $fv
	fmove	$f30, $f0
	lil	$a1, min_caml_intersected_object_id
	lw	$a2, 16($sp)
	sw	$a2, 0($a1)
	lil	$a1, min_caml_intsec_rectside
	lw	$a2, 20($sp)
	sw	$a2, 0($a1)
beq_cont.8512:
beq_cont.8510:
beq_cont.8508:
	lw	$a1, 8($sp)
	addi	$a1, $a1, 1
	lw	$a2, 4($sp)
	lw	$a3, 0($sp)
	b	solve_each_element_fast.2930
solve_one_or_network_fast.2934:
	sll	$a4, $a1, 2
	add	$a2, $a2, $a4
	lw	$a4, 0($a2)
	li	$a5, -1
	bne	$a4, $a5, beq_else.8513
	jr $ra
beq_else.8513:
	lil	$a5, min_caml_and_net
	sll	$a4, $a4, 2
	add	$a5, $a5, $a4
	lw	$a4, 0($a5)
	li	$a5, 0
	sw	$a3, 0($sp)
	sw	$a2, 4($sp)
	sw	$a1, 8($sp)
	move	$a2, $a4
	move	$a1, $a5
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	solve_each_element_fast.2930
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	fmove	$f30, $fv
	fmove	$f30, $f0
	lw	$a1, 8($sp)
	addi	$a1, $a1, 1
	lw	$a2, 4($sp)
	lw	$a3, 0($sp)
	b	solve_one_or_network_fast.2934
trace_or_matrix_fast.2938:
	sll	$a4, $a1, 2
	add	$a2, $a2, $a4
	lw	$a4, 0($a2)
	lw	$a5, 0($a4)
	li	$a6, -1
	bne	$a5, $a6, beq_else.8515
	jr $ra
beq_else.8515:
	li	$a6, 99
	sw	$a3, 0($sp)
	sw	$a2, 4($sp)
	sw	$a1, 8($sp)
	bne	$a5, $a6, beq_else.8517
	li	$a5, 1
	move	$a2, $a4
	move	$a1, $a5
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	solve_one_or_network_fast.2934
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	fmove	$f30, $fv
	fmove	$f30, $f0
	j	beq_cont.8518
beq_else.8517:
	sw	$a4, 12($sp)
	move	$a2, $a3
	move	$a1, $a5
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	solver_fast2.2859
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	move	$a1, $v0
	li	$a2, 0
	bne	$a1, $a2, beq_else.8519
	j	beq_cont.8520
beq_else.8519:
	lil	$a1, min_caml_solver_dist
	flw	$f0, 0($a1)
	lil	$a1, min_caml_tmin
	flw	$f1, 0($a1)
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	min_caml_fless
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	move	$a1, $v0
	li	$a2, 0
	bne	$a1, $a2, beq_else.8521
	j	beq_cont.8522
beq_else.8521:
	li	$a1, 1
	lw	$a2, 12($sp)
	lw	$a3, 0($sp)
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	solve_one_or_network_fast.2934
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	fmove	$f30, $fv
	fmove	$f30, $f0
beq_cont.8522:
beq_cont.8520:
beq_cont.8518:
	lw	$a1, 8($sp)
	addi	$a1, $a1, 1
	lw	$a2, 4($sp)
	lw	$a3, 0($sp)
	b	trace_or_matrix_fast.2938
judge_intersection_fast.2942:
	lil	$a2, min_caml_tmin
	jal l.6695
	mtc1	$f0, $a25
	fsw	$f0, 0($a2)
	li	$a2, 0
	lil	$a3, min_caml_or_net
	lw	$a3, 0($a3)
	move	$a25, $a3
	move	$a3, $a1
	move	$a1, $a2
	move	$a2, $a25
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	trace_or_matrix_fast.2938
	subi	$sp, $sp, 8
	lw	$ra, 4($sp)
	fmove	$f30, $fv
	fmove	$f30, $f0
	lil	$a1, min_caml_tmin
	flw	$f1, 0($a1)
	jal l.6675
	mtc1	$f0, $a25
	sw	$f1, 0($sp)
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	min_caml_fless
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	move	$a1, $v0
	li	$a2, 0
	bne	$a1, $a2, beq_else.8523
	li	$v0, 0
	jr $ra
beq_else.8523:
	jal l.6699
	mtc1	$f1, $a25
	lw	$f0, 0($sp)
	b	min_caml_fless
get_nvector_rect.2944:
	lil	$a2, min_caml_intsec_rectside
	lw	$a2, 0($a2)
	lil	$a3, min_caml_nvector
	sw	$a1, 0($sp)
	sw	$a2, 4($sp)
	move	$a1, $a3
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	vecbzero.2646
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	fmove	$f30, $fv
	fmove	$f30, $f0
	lil	$a1, min_caml_nvector
	lw	$a2, 4($sp)
	subi	$a3, $a2, 1
	subi	$a2, $a2, 1
	sll	$a2, $a2, 3
	lw	$a4, 0($sp)
	add	$a4, $a4, $a2	flw	$f0, 0($a4)
	sw	$a1, 8($sp)
	sw	$a3, 12($sp)
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	sgn.2630
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	fmove	$f0, $fv
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	min_caml_fneg
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	fmove	$f0, $fv
	lw	$a1, 12($sp)
	sll	$a1, $a1, 3
	lw	$a2, 8($sp)
	add	$a2, $a2, $a1
	fsw	$f0, 0($a2)
	jr $ra
get_nvector_plane.2946:
	lil	$a2, min_caml_nvector
	sw	$a1, 0($sp)
	sw	$a2, 4($sp)
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	o_param_a.2694
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	fmove	$f0, $fv
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	min_caml_fneg
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	fmove	$f0, $fv
	lw	$a1, 4($sp)
	fsw	$f0, 0($a1)
	lil	$a1, min_caml_nvector
	lw	$a2, 0($sp)
	sw	$a1, 8($sp)
	move	$a1, $a2
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	o_param_b.2696
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	fmove	$f0, $fv
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	min_caml_fneg
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	fmove	$f0, $fv
	lw	$a1, 8($sp)
	fsw	$f0, 8($a1)
	lil	$a1, min_caml_nvector
	lw	$a2, 0($sp)
	sw	$a1, 12($sp)
	move	$a1, $a2
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	o_param_c.2698
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	fmove	$f0, $fv
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	min_caml_fneg
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	fmove	$f0, $fv
	lw	$a1, 12($sp)
	fsw	$f0, 16($a1)
	jr $ra
get_nvector_second.2948:
	lil	$a2, min_caml_intersection_point
	flw	$f0, 0($a2)
	sw	$a1, 0($sp)
	sw	$f0, 8($sp)
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	o_param_x.2702
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	fmove	$f0, $fv
	lw	$f1, 8($sp)
	fsub	$f0, $f1, $f0
	lil	$a1, min_caml_intersection_point
	flw	$f1, 8($a1)
	lw	$a1, 0($sp)
	sw	$f0, 16($sp)
	sw	$f1, 24($sp)
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	o_param_y.2704
	subi	$sp, $sp, 40
	lw	$ra, 36($sp)
	fmove	$f0, $fv
	lw	$f1, 24($sp)
	fsub	$f0, $f1, $f0
	lil	$a1, min_caml_intersection_point
	flw	$f1, 16($a1)
	lw	$a1, 0($sp)
	sw	$f0, 32($sp)
	sw	$f1, 40($sp)
	sw	$ra, 52($sp)
	addi	$sp, $sp, 56
	jal	o_param_z.2706
	subi	$sp, $sp, 56
	lw	$ra, 52($sp)
	fmove	$f0, $fv
	lw	$f1, 40($sp)
	fsub	$f0, $f1, $f0
	lw	$a1, 0($sp)
	sw	$f0, 48($sp)
	sw	$ra, 60($sp)
	addi	$sp, $sp, 64
	jal	o_param_a.2694
	subi	$sp, $sp, 64
	lw	$ra, 60($sp)
	fmove	$f0, $fv
	lw	$f1, 16($sp)
	fmul	$f0, $f1, $f0
	lw	$a1, 0($sp)
	sw	$f0, 56($sp)
	sw	$ra, 68($sp)
	addi	$sp, $sp, 72
	jal	o_param_b.2696
	subi	$sp, $sp, 72
	lw	$ra, 68($sp)
	fmove	$f0, $fv
	lw	$f1, 32($sp)
	fmul	$f0, $f1, $f0
	lw	$a1, 0($sp)
	sw	$f0, 64($sp)
	sw	$ra, 76($sp)
	addi	$sp, $sp, 80
	jal	o_param_c.2698
	subi	$sp, $sp, 80
	lw	$ra, 76($sp)
	fmove	$f0, $fv
	lw	$f1, 48($sp)
	fmul	$f0, $f1, $f0
	lw	$a1, 0($sp)
	sw	$f0, 72($sp)
	sw	$ra, 84($sp)
	addi	$sp, $sp, 88
	jal	o_isrot.2692
	subi	$sp, $sp, 88
	lw	$ra, 84($sp)
	move	$a1, $v0
	li	$a2, 0
	bne	$a1, $a2, beq_else.8527
	lil	$a1, min_caml_nvector
	lw	$f0, 56($sp)
	fsw	$f0, 0($a1)
	lil	$a1, min_caml_nvector
	lw	$f0, 64($sp)
	fsw	$f0, 8($a1)
	lil	$a1, min_caml_nvector
	lw	$f0, 72($sp)
	fsw	$f0, 16($a1)
	j	beq_cont.8528
beq_else.8527:
	lil	$a1, min_caml_nvector
	lw	$a2, 0($sp)
	sw	$a1, 80($sp)
	move	$a1, $a2
	sw	$ra, 84($sp)
	addi	$sp, $sp, 88
	jal	o_param_r3.2722
	subi	$sp, $sp, 88
	lw	$ra, 84($sp)
	fmove	$f0, $fv
	lw	$f1, 32($sp)
	fmul	$f0, $f1, $f0
	lw	$a1, 0($sp)
	sw	$f0, 88($sp)
	sw	$ra, 100($sp)
	addi	$sp, $sp, 104
	jal	o_param_r2.2720
	subi	$sp, $sp, 104
	lw	$ra, 100($sp)
	fmove	$f0, $fv
	lw	$f1, 48($sp)
	fmul	$f0, $f1, $f0
	lw	$f2, 88($sp)
	fadd	$f0, $f2, $f0
	sw	$ra, 100($sp)
	addi	$sp, $sp, 104
	jal	min_caml_fhalf
	subi	$sp, $sp, 104
	lw	$ra, 100($sp)
	fmove	$f0, $fv
	lw	$f1, 56($sp)
	fadd	$f0, $f1, $f0
	lw	$a1, 80($sp)
	fsw	$f0, 0($a1)
	lil	$a1, min_caml_nvector
	lw	$a2, 0($sp)
	sw	$a1, 96($sp)
	move	$a1, $a2
	sw	$ra, 100($sp)
	addi	$sp, $sp, 104
	jal	o_param_r3.2722
	subi	$sp, $sp, 104
	lw	$ra, 100($sp)
	fmove	$f0, $fv
	lw	$f1, 16($sp)
	fmul	$f0, $f1, $f0
	lw	$a1, 0($sp)
	sw	$f0, 104($sp)
	sw	$ra, 116($sp)
	addi	$sp, $sp, 120
	jal	o_param_r1.2718
	subi	$sp, $sp, 120
	lw	$ra, 116($sp)
	fmove	$f0, $fv
	lw	$f1, 48($sp)
	fmul	$f0, $f1, $f0
	lw	$f1, 104($sp)
	fadd	$f0, $f1, $f0
	sw	$ra, 116($sp)
	addi	$sp, $sp, 120
	jal	min_caml_fhalf
	subi	$sp, $sp, 120
	lw	$ra, 116($sp)
	fmove	$f0, $fv
	lw	$f1, 64($sp)
	fadd	$f0, $f1, $f0
	lw	$a1, 96($sp)
	fsw	$f0, 8($a1)
	lil	$a1, min_caml_nvector
	lw	$a2, 0($sp)
	sw	$a1, 112($sp)
	move	$a1, $a2
	sw	$ra, 116($sp)
	addi	$sp, $sp, 120
	jal	o_param_r2.2720
	subi	$sp, $sp, 120
	lw	$ra, 116($sp)
	fmove	$f0, $fv
	lw	$f1, 16($sp)
	fmul	$f0, $f1, $f0
	lw	$a1, 0($sp)
	sw	$f0, 120($sp)
	sw	$ra, 132($sp)
	addi	$sp, $sp, 136
	jal	o_param_r1.2718
	subi	$sp, $sp, 136
	lw	$ra, 132($sp)
	fmove	$f0, $fv
	lw	$f1, 32($sp)
	fmul	$f0, $f1, $f0
	lw	$f1, 120($sp)
	fadd	$f0, $f1, $f0
	sw	$ra, 132($sp)
	addi	$sp, $sp, 136
	jal	min_caml_fhalf
	subi	$sp, $sp, 136
	lw	$ra, 132($sp)
	fmove	$f0, $fv
	lw	$f1, 72($sp)
	fadd	$f0, $f1, $f0
	lw	$a1, 112($sp)
	fsw	$f0, 16($a1)
beq_cont.8528:
	lil	$a1, min_caml_nvector
	lw	$a2, 0($sp)
	sw	$a1, 128($sp)
	move	$a1, $a2
	sw	$ra, 132($sp)
	addi	$sp, $sp, 136
	jal	o_isinvert.2690
	subi	$sp, $sp, 136
	lw	$ra, 132($sp)
	move	$a2, $v0
	move	$a2, $a1
	lw	$a1, 128($sp)
	b	vecunit_sgn.2656
get_nvector.2950:
	sw	$a1, 0($sp)
	sw	$a2, 4($sp)
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	o_form.2686
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	move	$a1, $v0
	li	$a2, 1
	bne	$a1, $a2, beq_else.8532
	lw	$a1, 4($sp)
	b	get_nvector_rect.2944
beq_else.8532:
	li	$a2, 2
	bne	$a1, $a2, beq_else.8533
	lw	$a1, 0($sp)
	b	get_nvector_plane.2946
beq_else.8533:
	lw	$a1, 0($sp)
	b	get_nvector_second.2948
utexture.2953:
	sw	$a2, 0($sp)
	sw	$a1, 4($sp)
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	o_texturetype.2684
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	move	$a1, $v0
	lil	$a2, min_caml_texture_color
	lw	$a3, 4($sp)
	sw	$a1, 8($sp)
	sw	$a2, 12($sp)
	move	$a1, $a3
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	o_color_red.2712
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	fmove	$f0, $fv
	lw	$a1, 12($sp)
	fsw	$f0, 0($a1)
	lil	$a1, min_caml_texture_color
	lw	$a2, 4($sp)
	sw	$a1, 16($sp)
	move	$a1, $a2
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	o_color_green.2714
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	fmove	$f0, $fv
	lw	$a1, 16($sp)
	fsw	$f0, 8($a1)
	lil	$a1, min_caml_texture_color
	lw	$a2, 4($sp)
	sw	$a1, 20($sp)
	move	$a1, $a2
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	o_color_blue.2716
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	fmove	$f0, $fv
	lw	$a1, 20($sp)
	fsw	$f0, 16($a1)
	li	$a1, 1
	lw	$a2, 8($sp)
	bne	$a2, $a1, beq_else.8534
	lw	$a1, 0($sp)
	flw	$f0, 0($a1)
	lw	$a2, 4($sp)
	sw	$f0, 24($sp)
	move	$a1, $a2
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	o_param_x.2702
	subi	$sp, $sp, 40
	lw	$ra, 36($sp)
	fmove	$f0, $fv
	lw	$f1, 24($sp)
	fsub	$f0, $f1, $f0
	jal l.6762
	mtc1	$f1, $a25
	fmul	$f1, $f0, $f1
	sw	$f0, 32($sp)
	fmove	$f0, $f1
	sw	$ra, 44($sp)
	addi	$sp, $sp, 48
	jal	min_caml_floor
	subi	$sp, $sp, 48
	lw	$ra, 44($sp)
	fmove	$f0, $fv
	jal l.6763
	mtc1	$f1, $a25
	fmul	$f0, $f0, $f1
	lw	$f1, 32($sp)
	fsub	$f0, $f1, $f0
	jal l.6754
	mtc1	$f1, $a25
	sw	$ra, 44($sp)
	addi	$sp, $sp, 48
	jal	min_caml_fless
	subi	$sp, $sp, 48
	lw	$ra, 44($sp)
	move	$a1, $v0
	lw	$a2, 0($sp)
	flw	$f0, 16($a2)
	lw	$a2, 4($sp)
	sw	$a1, 40($sp)
	sw	$f0, 48($sp)
	move	$a1, $a2
	sw	$ra, 60($sp)
	addi	$sp, $sp, 64
	jal	o_param_z.2706
	subi	$sp, $sp, 64
	lw	$ra, 60($sp)
	fmove	$f0, $fv
	lw	$f1, 48($sp)
	fsub	$f0, $f1, $f0
	jal l.6762
	mtc1	$f1, $a25
	fmul	$f1, $f0, $f1
	sw	$f0, 56($sp)
	fmove	$f0, $f1
	sw	$ra, 68($sp)
	addi	$sp, $sp, 72
	jal	min_caml_floor
	subi	$sp, $sp, 72
	lw	$ra, 68($sp)
	fmove	$f0, $fv
	jal l.6763
	mtc1	$f1, $a25
	fmul	$f0, $f0, $f1
	lw	$f1, 56($sp)
	fsub	$f0, $f1, $f0
	jal l.6754
	mtc1	$f1, $a25
	sw	$ra, 68($sp)
	addi	$sp, $sp, 72
	jal	min_caml_fless
	subi	$sp, $sp, 72
	lw	$ra, 68($sp)
	move	$a1, $v0
	lil	$a2, min_caml_texture_color
	li	$a3, 0
	lw	$a4, 40($sp)
	bne	$a4, $a3, beq_else.8536
	li	$a3, 0
	bne	$a1, $a3, beq_else.8538
	jal l.6749
	mtc1	$f0, $a25
	j	beq_cont.8539
beq_else.8538:
	jal l.6345
	mtc1	$f0, $a25
beq_cont.8539:
	j	beq_cont.8537
beq_else.8536:
	li	$a3, 0
	bne	$a1, $a3, beq_else.8540
	jal l.6345
	mtc1	$f0, $a25
	j	beq_cont.8541
beq_else.8540:
	jal l.6749
	mtc1	$f0, $a25
beq_cont.8541:
beq_cont.8537:
	fsw	$f0, 8($a2)
	jr $ra
beq_else.8534:
	li	$a1, 2
	bne	$a2, $a1, beq_else.8543
	lw	$a1, 0($sp)
	flw	$f0, 8($a1)
	jal l.6758
	mtc1	$f1, $a25
	fmul	$f0, $f0, $f1
	sw	$ra, 68($sp)
	addi	$sp, $sp, 72
	jal	min_caml_sin
	subi	$sp, $sp, 72
	lw	$ra, 68($sp)
	fmove	$f0, $fv
	sw	$ra, 68($sp)
	addi	$sp, $sp, 72
	jal	min_caml_fsqr
	subi	$sp, $sp, 72
	lw	$ra, 68($sp)
	fmove	$f0, $fv
	lil	$a1, min_caml_texture_color
	jal l.6749
	mtc1	$f1, $a25
	fmul	$f1, $f1, $f0
	fsw	$f1, 0($a1)
	lil	$a1, min_caml_texture_color
	jal l.6749
	mtc1	$f1, $a25
	jal l.6346
	mtc1	$f2, $a25
	fsub	$f0, $f2, $f0
	fmul	$f0, $f1, $f0
	fsw	$f0, 8($a1)
	jr $ra
beq_else.8543:
	li	$a1, 3
	bne	$a2, $a1, beq_else.8545
	lw	$a1, 0($sp)
	flw	$f0, 0($a1)
	lw	$a2, 4($sp)
	sw	$f0, 64($sp)
	move	$a1, $a2
	sw	$ra, 76($sp)
	addi	$sp, $sp, 80
	jal	o_param_x.2702
	subi	$sp, $sp, 80
	lw	$ra, 76($sp)
	fmove	$f0, $fv
	lw	$f1, 64($sp)
	fsub	$f0, $f1, $f0
	lw	$a1, 0($sp)
	flw	$f1, 16($a1)
	lw	$a1, 4($sp)
	sw	$f0, 72($sp)
	sw	$f1, 80($sp)
	sw	$ra, 92($sp)
	addi	$sp, $sp, 96
	jal	o_param_z.2706
	subi	$sp, $sp, 96
	lw	$ra, 92($sp)
	fmove	$f0, $fv
	lw	$f1, 80($sp)
	fsub	$f0, $f1, $f0
	lw	$f1, 72($sp)
	sw	$f0, 88($sp)
	fmove	$f0, $f1
	sw	$ra, 100($sp)
	addi	$sp, $sp, 104
	jal	min_caml_fsqr
	subi	$sp, $sp, 104
	lw	$ra, 100($sp)
	fmove	$f0, $fv
	lw	$f1, 88($sp)
	sw	$f0, 96($sp)
	fmove	$f0, $f1
	sw	$ra, 108($sp)
	addi	$sp, $sp, 112
	jal	min_caml_fsqr
	subi	$sp, $sp, 112
	lw	$ra, 108($sp)
	fmove	$f0, $fv
	lw	$f1, 96($sp)
	fadd	$f0, $f1, $f0
	sw	$ra, 108($sp)
	addi	$sp, $sp, 112
	jal	min_caml_sqrt
	subi	$sp, $sp, 112
	lw	$ra, 108($sp)
	fmove	$f0, $fv
	jal l.6754
	mtc1	$f1, $a25
	finv	$f1, $f1
	fmul	$f0, $f0, $f1
	sw	$f0, 104($sp)
	sw	$ra, 116($sp)
	addi	$sp, $sp, 120
	jal	min_caml_floor
	subi	$sp, $sp, 120
	lw	$ra, 116($sp)
	fmove	$f0, $fv
	lw	$f1, 104($sp)
	fsub	$f0, $f1, $f0
	jal l.6745
	mtc1	$f1, $a25
	fmul	$f0, $f0, $f1
	sw	$ra, 116($sp)
	addi	$sp, $sp, 120
	jal	min_caml_cos
	subi	$sp, $sp, 120
	lw	$ra, 116($sp)
	fmove	$f0, $fv
	sw	$ra, 116($sp)
	addi	$sp, $sp, 120
	jal	min_caml_fsqr
	subi	$sp, $sp, 120
	lw	$ra, 116($sp)
	fmove	$f0, $fv
	lil	$a1, min_caml_texture_color
	jal l.6749
	mtc1	$f1, $a25
	fmul	$f1, $f0, $f1
	fsw	$f1, 8($a1)
	lil	$a1, min_caml_texture_color
	jal l.6346
	mtc1	$f1, $a25
	fsub	$f0, $f1, $f0
	jal l.6749
	mtc1	$f1, $a25
	fmul	$f0, $f0, $f1
	fsw	$f0, 16($a1)
	jr $ra
beq_else.8545:
	li	$a1, 4
	bne	$a2, $a1, beq_else.8547
	lw	$a1, 0($sp)
	flw	$f0, 0($a1)
	lw	$a2, 4($sp)
	sw	$f0, 112($sp)
	move	$a1, $a2
	sw	$ra, 124($sp)
	addi	$sp, $sp, 128
	jal	o_param_x.2702
	subi	$sp, $sp, 128
	lw	$ra, 124($sp)
	fmove	$f0, $fv
	lw	$f1, 112($sp)
	fsub	$f0, $f1, $f0
	lw	$a1, 4($sp)
	sw	$f0, 120($sp)
	sw	$ra, 132($sp)
	addi	$sp, $sp, 136
	jal	o_param_a.2694
	subi	$sp, $sp, 136
	lw	$ra, 132($sp)
	fmove	$f0, $fv
	sw	$ra, 132($sp)
	addi	$sp, $sp, 136
	jal	min_caml_sqrt
	subi	$sp, $sp, 136
	lw	$ra, 132($sp)
	fmove	$f0, $fv
	lw	$f1, 120($sp)
	fmul	$f0, $f1, $f0
	lw	$a1, 0($sp)
	flw	$f1, 16($a1)
	lw	$a2, 4($sp)
	sw	$f0, 128($sp)
	sw	$f1, 136($sp)
	move	$a1, $a2
	sw	$ra, 148($sp)
	addi	$sp, $sp, 152
	jal	o_param_z.2706
	subi	$sp, $sp, 152
	lw	$ra, 148($sp)
	fmove	$f0, $fv
	lw	$f1, 136($sp)
	fsub	$f0, $f1, $f0
	lw	$a1, 4($sp)
	sw	$f0, 144($sp)
	sw	$ra, 156($sp)
	addi	$sp, $sp, 160
	jal	o_param_c.2698
	subi	$sp, $sp, 160
	lw	$ra, 156($sp)
	fmove	$f0, $fv
	sw	$ra, 156($sp)
	addi	$sp, $sp, 160
	jal	min_caml_sqrt
	subi	$sp, $sp, 160
	lw	$ra, 156($sp)
	fmove	$f0, $fv
	lw	$f1, 144($sp)
	fmul	$f0, $f1, $f0
	lw	$f1, 128($sp)
	sw	$f0, 152($sp)
	fmove	$f0, $f1
	sw	$ra, 164($sp)
	addi	$sp, $sp, 168
	jal	min_caml_fsqr
	subi	$sp, $sp, 168
	lw	$ra, 164($sp)
	fmove	$f0, $fv
	lw	$f1, 152($sp)
	sw	$f0, 160($sp)
	fmove	$f0, $f1
	sw	$ra, 172($sp)
	addi	$sp, $sp, 176
	jal	min_caml_fsqr
	subi	$sp, $sp, 176
	lw	$ra, 172($sp)
	fmove	$f0, $fv
	lw	$f1, 160($sp)
	fadd	$f0, $f1, $f0
	lw	$f1, 128($sp)
	sw	$f0, 168($sp)
	fmove	$f0, $f1
	sw	$ra, 180($sp)
	addi	$sp, $sp, 184
	jal	min_caml_fabs
	subi	$sp, $sp, 184
	lw	$ra, 180($sp)
	fmove	$f0, $fv
	jal l.6742
	mtc1	$f1, $a25
	sw	$ra, 180($sp)
	addi	$sp, $sp, 184
	jal	min_caml_fless
	subi	$sp, $sp, 184
	lw	$ra, 180($sp)
	move	$a1, $v0
	li	$a2, 0
	bne	$a1, $a2, beq_else.8548
	lw	$f0, 128($sp)
	finv	$f0, $f0
	lw	$f1, 152($sp)
	fmul	$f0, $f1, $f0
	sw	$ra, 180($sp)
	addi	$sp, $sp, 184
	jal	min_caml_fabs
	subi	$sp, $sp, 184
	lw	$ra, 180($sp)
	fmove	$f0, $fv
	sw	$ra, 180($sp)
	addi	$sp, $sp, 184
	jal	min_caml_atan
	subi	$sp, $sp, 184
	lw	$ra, 180($sp)
	fmove	$f0, $fv
	jal l.6744
	mtc1	$f1, $a25
	fmul	$f0, $f0, $f1
	jal l.6745
	mtc1	$f1, $a25
	finv	$f1, $f1
	fmul	$f0, $f0, $f1
	j	beq_cont.8549
beq_else.8548:
	jal l.6743
	mtc1	$f0, $a25
beq_cont.8549:
	sw	$f0, 176($sp)
	sw	$ra, 188($sp)
	addi	$sp, $sp, 192
	jal	min_caml_floor
	subi	$sp, $sp, 192
	lw	$ra, 188($sp)
	fmove	$f0, $fv
	lw	$f1, 176($sp)
	fsub	$f0, $f1, $f0
	lw	$a1, 0($sp)
	flw	$f1, 8($a1)
	lw	$a1, 4($sp)
	sw	$f0, 184($sp)
	sw	$f1, 192($sp)
	sw	$ra, 204($sp)
	addi	$sp, $sp, 208
	jal	o_param_y.2704
	subi	$sp, $sp, 208
	lw	$ra, 204($sp)
	fmove	$f0, $fv
	lw	$f1, 192($sp)
	fsub	$f0, $f1, $f0
	lw	$a1, 4($sp)
	sw	$f0, 200($sp)
	sw	$ra, 212($sp)
	addi	$sp, $sp, 216
	jal	o_param_b.2696
	subi	$sp, $sp, 216
	lw	$ra, 212($sp)
	fmove	$f0, $fv
	sw	$ra, 212($sp)
	addi	$sp, $sp, 216
	jal	min_caml_sqrt
	subi	$sp, $sp, 216
	lw	$ra, 212($sp)
	fmove	$f0, $fv
	lw	$f1, 200($sp)
	fmul	$f0, $f1, $f0
	lw	$f1, 168($sp)
	sw	$f0, 208($sp)
	fmove	$f0, $f1
	sw	$ra, 220($sp)
	addi	$sp, $sp, 224
	jal	min_caml_fabs
	subi	$sp, $sp, 224
	lw	$ra, 220($sp)
	fmove	$f0, $fv
	jal l.6742
	mtc1	$f1, $a25
	sw	$ra, 220($sp)
	addi	$sp, $sp, 224
	jal	min_caml_fless
	subi	$sp, $sp, 224
	lw	$ra, 220($sp)
	move	$a1, $v0
	li	$a2, 0
	bne	$a1, $a2, beq_else.8550
	lw	$f0, 168($sp)
	finv	$f0, $f0
	lw	$f1, 208($sp)
	fmul	$f0, $f1, $f0
	sw	$ra, 220($sp)
	addi	$sp, $sp, 224
	jal	min_caml_fabs
	subi	$sp, $sp, 224
	lw	$ra, 220($sp)
	fmove	$f0, $fv
	sw	$ra, 220($sp)
	addi	$sp, $sp, 224
	jal	min_caml_atan
	subi	$sp, $sp, 224
	lw	$ra, 220($sp)
	fmove	$f0, $fv
	jal l.6744
	mtc1	$f1, $a25
	fmul	$f0, $f0, $f1
	jal l.6745
	mtc1	$f1, $a25
	finv	$f1, $f1
	fmul	$f0, $f0, $f1
	j	beq_cont.8551
beq_else.8550:
	jal l.6743
	mtc1	$f0, $a25
beq_cont.8551:
	sw	$f0, 216($sp)
	sw	$ra, 228($sp)
	addi	$sp, $sp, 232
	jal	min_caml_floor
	subi	$sp, $sp, 232
	lw	$ra, 228($sp)
	fmove	$f0, $fv
	lw	$f1, 216($sp)
	fsub	$f0, $f1, $f0
	jal l.6747
	mtc1	$f1, $a25
	jal l.6748
	mtc1	$f2, $a25
	lw	$f3, 184($sp)
	fsub	$f2, $f2, $f3
	sw	$f0, 224($sp)
	sw	$f1, 232($sp)
	fmove	$f0, $f2
	sw	$ra, 244($sp)
	addi	$sp, $sp, 248
	jal	min_caml_fsqr
	subi	$sp, $sp, 248
	lw	$ra, 244($sp)
	fmove	$f0, $fv
	lw	$f1, 232($sp)
	fsub	$f0, $f1, $f0
	jal l.6748
	mtc1	$f1, $a25
	lw	$f2, 224($sp)
	fsub	$f1, $f1, $f2
	sw	$f0, 240($sp)
	fmove	$f0, $f1
	sw	$ra, 252($sp)
	addi	$sp, $sp, 256
	jal	min_caml_fsqr
	subi	$sp, $sp, 256
	lw	$ra, 252($sp)
	fmove	$f0, $fv
	lw	$f1, 240($sp)
	fsub	$f0, $f1, $f0
	sw	$f0, 248($sp)
	sw	$ra, 260($sp)
	addi	$sp, $sp, 264
	jal	min_caml_fisneg
	subi	$sp, $sp, 264
	lw	$ra, 260($sp)
	move	$a1, $v0
	li	$a2, 0
	bne	$a1, $a2, beq_else.8552
	lw	$f0, 248($sp)
	j	beq_cont.8553
beq_else.8552:
	jal l.6345
	mtc1	$f0, $a25
beq_cont.8553:
	lil	$a1, min_caml_texture_color
	jal l.6749
	mtc1	$f1, $a25
	fmul	$f0, $f1, $f0
	jal l.6750
	mtc1	$f1, $a25
	finv	$f1, $f1
	fmul	$f0, $f0, $f1
	fsw	$f0, 16($a1)
	jr $ra
beq_else.8547:
	jr $ra
add_light.2956:
	sw	$f2, 0($sp)
	sw	$f1, 8($sp)
	sw	$f0, 16($sp)
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	min_caml_fispos
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	move	$a1, $v0
	li	$a2, 0
	bne	$a1, $a2, beq_else.8556
	j	beq_cont.8557
beq_else.8556:
	lil	$a1, min_caml_rgb
	lil	$a2, min_caml_texture_color
	lw	$f0, 16($sp)
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	vecaccum.2667
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	fmove	$f30, $fv
	fmove	$f30, $f0
beq_cont.8557:
	lw	$f0, 8($sp)
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	min_caml_fispos
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	move	$a1, $v0
	li	$a2, 0
	bne	$a1, $a2, beq_else.8558
	jr $ra
beq_else.8558:
	lw	$f0, 8($sp)
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	min_caml_fsqr
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	fmove	$f0, $fv
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	min_caml_fsqr
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	fmove	$f0, $fv
	lw	$f1, 0($sp)
	fmul	$f0, $f0, $f1
	lil	$a1, min_caml_rgb
	lil	$a2, min_caml_rgb
	flw	$f1, 0($a2)
	fadd	$f1, $f1, $f0
	fsw	$f1, 0($a1)
	lil	$a1, min_caml_rgb
	lil	$a2, min_caml_rgb
	flw	$f1, 8($a2)
	fadd	$f1, $f1, $f0
	fsw	$f1, 8($a1)
	lil	$a1, min_caml_rgb
	lil	$a2, min_caml_rgb
	flw	$f1, 16($a2)
	fadd	$f0, $f1, $f0
	fsw	$f0, 16($a1)
	jr $ra
trace_reflections.2960:
	li	$a3, 0
	ble	$a1, $a3, ble_else.8561
	lil	$a3, min_caml_reflections
	sll	$a4, $a1, 2
	add	$a3, $a3, $a4
	lw	$a3, 0($a3)
	sw	$a1, 0($sp)
	sw	$f1, 8($sp)
	sw	$a2, 16($sp)
	sw	$f0, 24($sp)
	sw	$a3, 32($sp)
	move	$a1, $a3
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	r_dvec.2751
	subi	$sp, $sp, 40
	lw	$ra, 36($sp)
	move	$a1, $v0
	sw	$a1, 36($sp)
	sw	$ra, 44($sp)
	addi	$sp, $sp, 48
	jal	judge_intersection_fast.2942
	subi	$sp, $sp, 48
	lw	$ra, 44($sp)
	move	$a1, $v0
	li	$a2, 0
	bne	$a1, $a2, beq_else.8564
	j	beq_cont.8565
beq_else.8564:
	lil	$a1, min_caml_intersected_object_id
	lw	$a1, 0($a1)
	sla	$a1, $a1, 2
	lil	$a2, min_caml_intsec_rectside
	lw	$a2, 0($a2)
	add	$a1, $a1, $a2
	lw	$a2, 32($sp)
	sw	$a1, 40($sp)
	move	$a1, $a2
	sw	$ra, 44($sp)
	addi	$sp, $sp, 48
	jal	r_surface_id.2749
	subi	$sp, $sp, 48
	lw	$ra, 44($sp)
	move	$a1, $v0
	lw	$a2, 40($sp)
	bne	$a2, $a1, beq_else.8566
	li	$a1, 0
	lil	$a2, min_caml_or_net
	lw	$a2, 0($a2)
	sw	$ra, 44($sp)
	addi	$sp, $sp, 48
	jal	shadow_check_one_or_matrix.2913
	subi	$sp, $sp, 48
	lw	$ra, 44($sp)
	move	$a1, $v0
	li	$a2, 0
	bne	$a1, $a2, beq_else.8568
	lil	$a1, min_caml_nvector
	lw	$a2, 36($sp)
	sw	$a1, 44($sp)
	move	$a1, $a2
	sw	$ra, 52($sp)
	addi	$sp, $sp, 56
	jal	d_vec.2745
	subi	$sp, $sp, 56
	lw	$ra, 52($sp)
	move	$a2, $v0
	move	$a2, $a1
	lw	$a1, 44($sp)
	sw	$ra, 52($sp)
	addi	$sp, $sp, 56
	jal	veciprod.2659
	subi	$sp, $sp, 56
	lw	$ra, 52($sp)
	fmove	$f0, $fv
	lw	$a1, 32($sp)
	sw	$f0, 48($sp)
	sw	$ra, 60($sp)
	addi	$sp, $sp, 64
	jal	r_bright.2753
	subi	$sp, $sp, 64
	lw	$ra, 60($sp)
	fmove	$f0, $fv
	lw	$f1, 24($sp)
	fmul	$f2, $f0, $f1
	lw	$f3, 48($sp)
	fmul	$f2, $f2, $f3
	lw	$a1, 36($sp)
	sw	$f2, 56($sp)
	sw	$f0, 64($sp)
	sw	$ra, 76($sp)
	addi	$sp, $sp, 80
	jal	d_vec.2745
	subi	$sp, $sp, 80
	lw	$ra, 76($sp)
	move	$a2, $v0
	move	$a2, $a1
	lw	$a1, 16($sp)
	sw	$ra, 76($sp)
	addi	$sp, $sp, 80
	jal	veciprod.2659
	subi	$sp, $sp, 80
	lw	$ra, 76($sp)
	fmove	$f0, $fv
	lw	$f1, 64($sp)
	fmul	$f1, $f1, $f0
	lw	$f0, 56($sp)
	lw	$f2, 8($sp)
	sw	$ra, 76($sp)
	addi	$sp, $sp, 80
	jal	add_light.2956
	subi	$sp, $sp, 80
	lw	$ra, 76($sp)
	fmove	$f30, $fv
	fmove	$f30, $f0
	j	beq_cont.8569
beq_else.8568:
beq_cont.8569:
	j	beq_cont.8567
beq_else.8566:
beq_cont.8567:
beq_cont.8565:
	lw	$a1, 0($sp)
	subi	$a1, $a1, 1
	lw	$f0, 24($sp)
	lw	$f1, 8($sp)
	lw	$a2, 16($sp)
	b	trace_reflections.2960
ble_else.8561:
	jr $ra
trace_ray.2965:
	li	$a4, 4
	ble	$a4, $a1, ble_else.8571
	sw	$f1, 0($sp)
	sw	$a3, 8($sp)
	sw	$f0, 16($sp)
	sw	$a1, 24($sp)
	sw	$a2, 28($sp)
	move	$a1, $a3
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	p_surface_ids.2730
	subi	$sp, $sp, 40
	lw	$ra, 36($sp)
	move	$a1, $v0
	lw	$a2, 28($sp)
	sw	$a1, 32($sp)
	move	$a1, $a2
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	judge_intersection.2928
	subi	$sp, $sp, 40
	lw	$ra, 36($sp)
	move	$a1, $v0
	li	$a2, 0
	bne	$a1, $a2, beq_else.8573
	li	$a1, -1
	lw	$a2, 24($sp)
	sll	$a3, $a2, 2
	lw	$a4, 32($sp)
	add	$a4, $a4, $a3
	sw	$a1, 0($a4)
	li	$a1, 0
	bne	$a2, $a1, beq_else.8574
	jr $ra
beq_else.8574:
	lil	$a2, min_caml_light
	lw	$a1, 28($sp)
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	veciprod.2659
	subi	$sp, $sp, 40
	lw	$ra, 36($sp)
	fmove	$f0, $fv
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	min_caml_fneg
	subi	$sp, $sp, 40
	lw	$ra, 36($sp)
	fmove	$f0, $fv
	sw	$f0, 40($sp)
	sw	$ra, 52($sp)
	addi	$sp, $sp, 56
	jal	min_caml_fispos
	subi	$sp, $sp, 56
	lw	$ra, 52($sp)
	move	$a1, $v0
	li	$a2, 0
	bne	$a1, $a2, beq_else.8577
	jr $ra
beq_else.8577:
	lw	$f0, 40($sp)
	sw	$ra, 52($sp)
	addi	$sp, $sp, 56
	jal	min_caml_fsqr
	subi	$sp, $sp, 56
	lw	$ra, 52($sp)
	fmove	$f0, $fv
	lw	$f1, 40($sp)
	fmul	$f0, $f0, $f1
	lw	$f1, 16($sp)
	fmul	$f0, $f0, $f1
	lil	$a1, min_caml_beam
	flw	$f1, 0($a1)
	fmul	$f0, $f0, $f1
	lil	$a1, min_caml_rgb
	lil	$a2, min_caml_rgb
	flw	$f1, 0($a2)
	fadd	$f1, $f1, $f0
	fsw	$f1, 0($a1)
	lil	$a1, min_caml_rgb
	lil	$a2, min_caml_rgb
	flw	$f1, 8($a2)
	fadd	$f1, $f1, $f0
	fsw	$f1, 8($a1)
	lil	$a1, min_caml_rgb
	lil	$a2, min_caml_rgb
	flw	$f1, 16($a2)
	fadd	$f0, $f1, $f0
	fsw	$f0, 16($a1)
	jr $ra
beq_else.8573:
	lil	$a1, min_caml_intersected_object_id
	lw	$a1, 0($a1)
	lil	$a2, min_caml_objects
	sll	$a3, $a1, 2
	add	$a2, $a2, $a3
	lw	$a2, 0($a2)
	sw	$a1, 48($sp)
	sw	$a2, 52($sp)
	move	$a1, $a2
	sw	$ra, 60($sp)
	addi	$sp, $sp, 64
	jal	o_reflectiontype.2688
	subi	$sp, $sp, 64
	lw	$ra, 60($sp)
	move	$a1, $v0
	lw	$a2, 52($sp)
	sw	$a1, 56($sp)
	move	$a1, $a2
	sw	$ra, 60($sp)
	addi	$sp, $sp, 64
	jal	o_diffuse.2708
	subi	$sp, $sp, 64
	lw	$ra, 60($sp)
	fmove	$f0, $fv
	lw	$f1, 16($sp)
	fmul	$f0, $f0, $f1
	lw	$a1, 52($sp)
	lw	$a2, 28($sp)
	sw	$f0, 64($sp)
	sw	$ra, 76($sp)
	addi	$sp, $sp, 80
	jal	get_nvector.2950
	subi	$sp, $sp, 80
	lw	$ra, 76($sp)
	fmove	$f30, $fv
	fmove	$f30, $f0
	lil	$a1, min_caml_startp
	lil	$a2, min_caml_intersection_point
	sw	$ra, 76($sp)
	addi	$sp, $sp, 80
	jal	veccpy.2648
	subi	$sp, $sp, 80
	lw	$ra, 76($sp)
	fmove	$f30, $fv
	fmove	$f30, $f0
	lil	$a2, min_caml_intersection_point
	lw	$a1, 52($sp)
	sw	$ra, 76($sp)
	addi	$sp, $sp, 80
	jal	utexture.2953
	subi	$sp, $sp, 80
	lw	$ra, 76($sp)
	fmove	$f30, $fv
	fmove	$f30, $f0
	lw	$a1, 48($sp)
	sla	$a1, $a1, 2
	lil	$a2, min_caml_intsec_rectside
	lw	$a2, 0($a2)
	add	$a1, $a1, $a2
	lw	$a2, 24($sp)
	sll	$a3, $a2, 2
	lw	$a4, 32($sp)
	add	$a4, $a4, $a3
	sw	$a1, 0($a4)
	lw	$a1, 8($sp)
	sw	$ra, 76($sp)
	addi	$sp, $sp, 80
	jal	p_intersection_points.2728
	subi	$sp, $sp, 80
	lw	$ra, 76($sp)
	move	$a1, $v0
	lw	$a2, 24($sp)
	sll	$a3, $a2, 2
	add	$a1, $a1, $a3
	lw	$a1, 0($a1)
	lil	$a3, min_caml_intersection_point
	move	$a2, $a3
	sw	$ra, 76($sp)
	addi	$sp, $sp, 80
	jal	veccpy.2648
	subi	$sp, $sp, 80
	lw	$ra, 76($sp)
	fmove	$f30, $fv
	fmove	$f30, $f0
	lw	$a1, 8($sp)
	sw	$ra, 76($sp)
	addi	$sp, $sp, 80
	jal	p_calc_diffuse.2732
	subi	$sp, $sp, 80
	lw	$ra, 76($sp)
	move	$a1, $v0
	lw	$a2, 52($sp)
	sw	$a1, 72($sp)
	move	$a1, $a2
	sw	$ra, 76($sp)
	addi	$sp, $sp, 80
	jal	o_diffuse.2708
	subi	$sp, $sp, 80
	lw	$ra, 76($sp)
	fmove	$f0, $fv
	jal l.6748
	mtc1	$f1, $a25
	sw	$ra, 76($sp)
	addi	$sp, $sp, 80
	jal	min_caml_fless
	subi	$sp, $sp, 80
	lw	$ra, 76($sp)
	move	$a1, $v0
	li	$a2, 0
	bne	$a1, $a2, beq_else.8581
	li	$a1, 1
	lw	$a2, 24($sp)
	sll	$a3, $a2, 2
	lw	$a4, 72($sp)
	add	$a4, $a4, $a3
	sw	$a1, 0($a4)
	lw	$a1, 8($sp)
	sw	$ra, 76($sp)
	addi	$sp, $sp, 80
	jal	p_energy.2734
	subi	$sp, $sp, 80
	lw	$ra, 76($sp)
	move	$a1, $v0
	lw	$a2, 24($sp)
	sll	$a3, $a2, 2
	add	$a1, $a1, $a3
	lw	$a3, 0($a1)
	lil	$a4, min_caml_texture_color
	sw	$a1, 76($sp)
	move	$a2, $a4
	move	$a1, $a3
	sw	$ra, 84($sp)
	addi	$sp, $sp, 88
	jal	veccpy.2648
	subi	$sp, $sp, 88
	lw	$ra, 84($sp)
	fmove	$f30, $fv
	fmove	$f30, $f0
	lw	$a1, 24($sp)
	sll	$a2, $a1, 2
	lw	$a3, 76($sp)
	add	$a3, $a3, $a2
	lw	$a2, 0($a3)
	jal l.6346
	mtc1	$f0, $a25
	jal l.6785
	mtc1	$f1, $a25
	finv	$f1, $f1
	fmul	$f0, $f0, $f1
	lw	$f1, 64($sp)
	fmul	$f0, $f0, $f1
	move	$a1, $a2
	sw	$ra, 84($sp)
	addi	$sp, $sp, 88
	jal	vecscale.2677
	subi	$sp, $sp, 88
	lw	$ra, 84($sp)
	fmove	$f30, $fv
	fmove	$f30, $f0
	lw	$a1, 8($sp)
	sw	$ra, 84($sp)
	addi	$sp, $sp, 88
	jal	p_nvectors.2743
	subi	$sp, $sp, 88
	lw	$ra, 84($sp)
	move	$a1, $v0
	lw	$a2, 24($sp)
	sll	$a3, $a2, 2
	add	$a1, $a1, $a3
	lw	$a1, 0($a1)
	lil	$a3, min_caml_nvector
	move	$a2, $a3
	sw	$ra, 84($sp)
	addi	$sp, $sp, 88
	jal	veccpy.2648
	subi	$sp, $sp, 88
	lw	$ra, 84($sp)
	fmove	$f30, $fv
	fmove	$f30, $f0
	j	beq_cont.8582
beq_else.8581:
	li	$a1, 0
	lw	$a2, 24($sp)
	sll	$a3, $a2, 2
	lw	$a4, 72($sp)
	add	$a4, $a4, $a3
	sw	$a1, 0($a4)
beq_cont.8582:
	jal l.6787
	mtc1	$f0, $a25
	lil	$a2, min_caml_nvector
	lw	$a1, 28($sp)
	sw	$f0, 80($sp)
	sw	$ra, 92($sp)
	addi	$sp, $sp, 96
	jal	veciprod.2659
	subi	$sp, $sp, 96
	lw	$ra, 92($sp)
	fmove	$f0, $fv
	lw	$f1, 80($sp)
	fmul	$f0, $f1, $f0
	lil	$a2, min_caml_nvector
	lw	$a1, 28($sp)
	sw	$ra, 92($sp)
	addi	$sp, $sp, 96
	jal	vecaccum.2667
	subi	$sp, $sp, 96
	lw	$ra, 92($sp)
	fmove	$f30, $fv
	fmove	$f30, $f0
	lw	$a1, 52($sp)
	sw	$ra, 92($sp)
	addi	$sp, $sp, 96
	jal	o_hilight.2710
	subi	$sp, $sp, 96
	lw	$ra, 92($sp)
	fmove	$f0, $fv
	lw	$f1, 16($sp)
	fmul	$f0, $f1, $f0
	li	$a1, 0
	lil	$a2, min_caml_or_net
	lw	$a2, 0($a2)
	sw	$f0, 88($sp)
	sw	$ra, 100($sp)
	addi	$sp, $sp, 104
	jal	shadow_check_one_or_matrix.2913
	subi	$sp, $sp, 104
	lw	$ra, 100($sp)
	move	$a1, $v0
	li	$a2, 0
	bne	$a1, $a2, beq_else.8583
	lil	$a1, min_caml_nvector
	lil	$a2, min_caml_light
	sw	$ra, 100($sp)
	addi	$sp, $sp, 104
	jal	veciprod.2659
	subi	$sp, $sp, 104
	lw	$ra, 100($sp)
	fmove	$f0, $fv
	sw	$ra, 100($sp)
	addi	$sp, $sp, 104
	jal	min_caml_fneg
	subi	$sp, $sp, 104
	lw	$ra, 100($sp)
	fmove	$f0, $fv
	lw	$f1, 64($sp)
	fmul	$f0, $f0, $f1
	lil	$a2, min_caml_light
	lw	$a1, 28($sp)
	sw	$f0, 96($sp)
	sw	$ra, 108($sp)
	addi	$sp, $sp, 112
	jal	veciprod.2659
	subi	$sp, $sp, 112
	lw	$ra, 108($sp)
	fmove	$f0, $fv
	sw	$ra, 108($sp)
	addi	$sp, $sp, 112
	jal	min_caml_fneg
	subi	$sp, $sp, 112
	lw	$ra, 108($sp)
	fmove	$f1, $fv
	fmove	$f1, $f0
	lw	$f0, 96($sp)
	lw	$f2, 88($sp)
	sw	$ra, 108($sp)
	addi	$sp, $sp, 112
	jal	add_light.2956
	subi	$sp, $sp, 112
	lw	$ra, 108($sp)
	fmove	$f30, $fv
	fmove	$f30, $f0
	j	beq_cont.8584
beq_else.8583:
beq_cont.8584:
	lil	$a1, min_caml_intersection_point
	sw	$ra, 108($sp)
	addi	$sp, $sp, 112
	jal	setup_startp.2879
	subi	$sp, $sp, 112
	lw	$ra, 108($sp)
	fmove	$f30, $fv
	fmove	$f30, $f0
	lil	$a1, min_caml_n_reflections
	lw	$a1, 0($a1)
	subi	$a1, $a1, 1
	lw	$f0, 64($sp)
	lw	$f1, 88($sp)
	lw	$a2, 28($sp)
	sw	$ra, 108($sp)
	addi	$sp, $sp, 112
	jal	trace_reflections.2960
	subi	$sp, $sp, 112
	lw	$ra, 108($sp)
	fmove	$f30, $fv
	fmove	$f30, $f0
	jal l.6790
	mtc1	$f0, $a25
	lw	$f1, 16($sp)
	sw	$ra, 108($sp)
	addi	$sp, $sp, 112
	jal	min_caml_fless
	subi	$sp, $sp, 112
	lw	$ra, 108($sp)
	move	$a1, $v0
	li	$a2, 0
	bne	$a1, $a2, beq_else.8585
	jr $ra
beq_else.8585:
	li	$a1, 4
	lw	$a2, 24($sp)
	bgt	$a1, $a2, ble_else.8587
	j	ble_cont.8588
ble_else.8587:
	addi	$a1, $a2, 1
	li	$a3, -1
	sll	$a1, $a1, 2
	lw	$a4, 32($sp)
	add	$a4, $a4, $a1
	sw	$a3, 0($a4)
ble_cont.8588:
	li	$a1, 2
	lw	$a3, 56($sp)
	bne	$a3, $a1, beq_else.8589
	jal l.6346
	mtc1	$f0, $a25
	lw	$a1, 52($sp)
	sw	$f0, 104($sp)
	sw	$ra, 116($sp)
	addi	$sp, $sp, 120
	jal	o_diffuse.2708
	subi	$sp, $sp, 120
	lw	$ra, 116($sp)
	fmove	$f0, $fv
	lw	$f1, 104($sp)
	fsub	$f0, $f1, $f0
	lw	$f1, 16($sp)
	fmul	$f0, $f1, $f0
	lw	$a1, 24($sp)
	addi	$a1, $a1, 1
	lil	$a2, min_caml_tmin
	flw	$f1, 0($a2)
	lw	$f2, 0($sp)
	fadd	$f1, $f2, $f1
	lw	$a2, 28($sp)
	lw	$a3, 8($sp)
	b	trace_ray.2965
beq_else.8589:
	jr $ra
ble_else.8571:
	jr $ra
trace_diffuse_ray.2971:
	sw	$f0, 0($sp)
	sw	$a1, 8($sp)
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	judge_intersection_fast.2942
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	move	$a1, $v0
	li	$a2, 0
	bne	$a1, $a2, beq_else.8592
	jr $ra
beq_else.8592:
	lil	$a1, min_caml_objects
	lil	$a2, min_caml_intersected_object_id
	lw	$a2, 0($a2)
	sll	$a2, $a2, 2
	add	$a1, $a1, $a2
	lw	$a1, 0($a1)
	lw	$a2, 8($sp)
	sw	$a1, 12($sp)
	move	$a1, $a2
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	d_vec.2745
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	move	$a2, $v0
	move	$a2, $a1
	lw	$a1, 12($sp)
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	get_nvector.2950
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	fmove	$f30, $fv
	fmove	$f30, $f0
	lil	$a2, min_caml_intersection_point
	lw	$a1, 12($sp)
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	utexture.2953
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	fmove	$f30, $fv
	fmove	$f30, $f0
	li	$a1, 0
	lil	$a2, min_caml_or_net
	lw	$a2, 0($a2)
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	shadow_check_one_or_matrix.2913
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	move	$a1, $v0
	li	$a2, 0
	bne	$a1, $a2, beq_else.8594
	lil	$a1, min_caml_nvector
	lil	$a2, min_caml_light
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	veciprod.2659
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	fmove	$f0, $fv
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	min_caml_fneg
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	fmove	$f0, $fv
	sw	$f0, 16($sp)
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	min_caml_fispos
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	move	$a1, $v0
	li	$a2, 0
	bne	$a1, $a2, beq_else.8595
	jal l.6345
	mtc1	$f0, $a25
	j	beq_cont.8596
beq_else.8595:
	lw	$f0, 16($sp)
beq_cont.8596:
	lil	$a1, min_caml_diffuse_ray
	lw	$f1, 0($sp)
	fmul	$f0, $f1, $f0
	lw	$a2, 12($sp)
	sw	$a1, 24($sp)
	sw	$f0, 32($sp)
	move	$a1, $a2
	sw	$ra, 44($sp)
	addi	$sp, $sp, 48
	jal	o_diffuse.2708
	subi	$sp, $sp, 48
	lw	$ra, 44($sp)
	fmove	$f0, $fv
	lw	$f1, 32($sp)
	fmul	$f0, $f1, $f0
	lil	$a2, min_caml_texture_color
	lw	$a1, 24($sp)
	b	vecaccum.2667
beq_else.8594:
	jr $ra
iter_trace_diffuse_rays.2974:
	li	$a5, 0
	ble	$a4, $a5, ble_else.8599
	sll	$a5, $a4, 2
	add	$a1, $a1, $a5
	lw	$a5, 0($a1)
	sw	$a3, 0($sp)
	sw	$a1, 4($sp)
	sw	$a4, 8($sp)
	sw	$a2, 12($sp)
	move	$a1, $a5
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	d_vec.2745
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	move	$a1, $v0
	lw	$a2, 12($sp)
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	veciprod.2659
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	fmove	$f0, $fv
	sw	$f0, 16($sp)
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	min_caml_fisneg
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	move	$a1, $v0
	li	$a2, 0
	bne	$a1, $a2, beq_else.8600
	lw	$a1, 8($sp)
	sll	$a2, $a1, 2
	lw	$a3, 4($sp)
	add	$a3, $a3, $a2
	lw	$a2, 0($a3)
	jal l.6808
	mtc1	$f0, $a25
	finv	$f0, $f0
	lw	$f1, 16($sp)
	fmul	$f0, $f1, $f0
	move	$a1, $a2
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	trace_diffuse_ray.2971
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	fmove	$f30, $fv
	fmove	$f30, $f0
	j	beq_cont.8601
beq_else.8600:
	lw	$a1, 8($sp)
	addi	$a2, $a1, 1
	sll	$a2, $a2, 2
	lw	$a3, 4($sp)
	add	$a3, $a3, $a2
	lw	$a2, 0($a3)
	jal l.6806
	mtc1	$f0, $a25
	finv	$f0, $f0
	lw	$f1, 16($sp)
	fmul	$f0, $f1, $f0
	move	$a1, $a2
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	trace_diffuse_ray.2971
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	fmove	$f30, $fv
	fmove	$f30, $f0
beq_cont.8601:
	lw	$a1, 8($sp)
	subi	$a4, $a1, 2
	lw	$a1, 4($sp)
	lw	$a2, 12($sp)
	lw	$a3, 0($sp)
	b	iter_trace_diffuse_rays.2974
ble_else.8599:
	jr $ra
trace_diffuse_rays.2979:
	sw	$a3, 0($sp)
	sw	$a2, 4($sp)
	sw	$a1, 8($sp)
	move	$a1, $a3
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	setup_startp.2879
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	fmove	$f30, $fv
	fmove	$f30, $f0
	li	$a4, 118
	lw	$a1, 8($sp)
	lw	$a2, 4($sp)
	lw	$a3, 0($sp)
	b	iter_trace_diffuse_rays.2974
trace_diffuse_ray_80percent.2983:
	li	$a4, 0
	sw	$a3, 0($sp)
	sw	$a2, 4($sp)
	sw	$a1, 8($sp)
	bne	$a1, $a4, beq_else.8603
	j	beq_cont.8604
beq_else.8603:
	lil	$a4, min_caml_dirvecs
	lw	$a4, 0($a4)
	move	$a1, $a4
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	trace_diffuse_rays.2979
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	fmove	$f30, $fv
	fmove	$f30, $f0
beq_cont.8604:
	li	$a1, 1
	lw	$a2, 8($sp)
	bne	$a2, $a1, beq_else.8605
	j	beq_cont.8606
beq_else.8605:
	lil	$a1, min_caml_dirvecs
	lw	$a1, 4($a1)
	lw	$a3, 4($sp)
	lw	$a4, 0($sp)
	move	$a2, $a3
	move	$a3, $a4
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	trace_diffuse_rays.2979
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	fmove	$f30, $fv
	fmove	$f30, $f0
beq_cont.8606:
	li	$a1, 2
	lw	$a2, 8($sp)
	bne	$a2, $a1, beq_else.8607
	j	beq_cont.8608
beq_else.8607:
	lil	$a1, min_caml_dirvecs
	lw	$a1, 8($a1)
	lw	$a3, 4($sp)
	lw	$a4, 0($sp)
	move	$a2, $a3
	move	$a3, $a4
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	trace_diffuse_rays.2979
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	fmove	$f30, $fv
	fmove	$f30, $f0
beq_cont.8608:
	li	$a1, 3
	lw	$a2, 8($sp)
	bne	$a2, $a1, beq_else.8609
	j	beq_cont.8610
beq_else.8609:
	lil	$a1, min_caml_dirvecs
	lw	$a1, 12($a1)
	lw	$a3, 4($sp)
	lw	$a4, 0($sp)
	move	$a2, $a3
	move	$a3, $a4
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	trace_diffuse_rays.2979
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	fmove	$f30, $fv
	fmove	$f30, $f0
beq_cont.8610:
	li	$a1, 4
	lw	$a2, 8($sp)
	bne	$a2, $a1, beq_else.8611
	jr $ra
beq_else.8611:
	lil	$a1, min_caml_dirvecs
	lw	$a1, 16($a1)
	lw	$a2, 4($sp)
	lw	$a3, 0($sp)
	b	trace_diffuse_rays.2979
calc_diffuse_using_1point.2987:
	sw	$a2, 0($sp)
	sw	$a1, 4($sp)
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	p_received_ray_20percent.2736
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	move	$a1, $v0
	lw	$a2, 4($sp)
	sw	$a1, 8($sp)
	move	$a1, $a2
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	p_nvectors.2743
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	move	$a1, $v0
	lw	$a2, 4($sp)
	sw	$a1, 12($sp)
	move	$a1, $a2
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	p_intersection_points.2728
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	move	$a1, $v0
	lw	$a2, 4($sp)
	sw	$a1, 16($sp)
	move	$a1, $a2
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	p_energy.2734
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	move	$a1, $v0
	lil	$a2, min_caml_diffuse_ray
	lw	$a3, 0($sp)
	sll	$a4, $a3, 2
	lw	$a5, 8($sp)
	add	$a5, $a5, $a4
	lw	$a4, 0($a5)
	sw	$a1, 20($sp)
	move	$a1, $a2
	move	$a2, $a4
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	veccpy.2648
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	fmove	$f30, $fv
	fmove	$f30, $f0
	lw	$a1, 4($sp)
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	p_group_id.2738
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	move	$a1, $v0
	lw	$a2, 0($sp)
	sll	$a3, $a2, 2
	lw	$a4, 12($sp)
	add	$a4, $a4, $a3
	lw	$a3, 0($a4)
	sll	$a4, $a2, 2
	lw	$a5, 16($sp)
	add	$a5, $a5, $a4
	lw	$a4, 0($a5)
	move	$a2, $a3
	move	$a3, $a4
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	trace_diffuse_ray_80percent.2983
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	fmove	$f30, $fv
	fmove	$f30, $f0
	lil	$a1, min_caml_rgb
	lw	$a2, 0($sp)
	sll	$a2, $a2, 2
	lw	$a3, 20($sp)
	add	$a3, $a3, $a2
	lw	$a2, 0($a3)
	lil	$a3, min_caml_diffuse_ray
	b	vecaccumv.2680
calc_diffuse_using_5points.2990:
	sll	$a6, $a1, 2
	add	$a2, $a2, $a6
	lw	$a2, 0($a2)
	sw	$a5, 0($sp)
	sw	$a4, 4($sp)
	sw	$a3, 8($sp)
	sw	$a1, 12($sp)
	move	$a1, $a2
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	p_received_ray_20percent.2736
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	move	$a1, $v0
	lw	$a2, 12($sp)
	subi	$a3, $a2, 1
	sll	$a3, $a3, 2
	lw	$a4, 8($sp)
	add	$a4, $a4, $a3
	lw	$a3, 0($a4)
	sw	$a1, 16($sp)
	move	$a1, $a3
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	p_received_ray_20percent.2736
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	move	$a1, $v0
	lw	$a2, 12($sp)
	sll	$a3, $a2, 2
	lw	$a4, 8($sp)
	add	$a4, $a4, $a3
	lw	$a3, 0($a4)
	sw	$a1, 20($sp)
	move	$a1, $a3
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	p_received_ray_20percent.2736
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	move	$a1, $v0
	lw	$a2, 12($sp)
	addi	$a3, $a2, 1
	sll	$a3, $a3, 2
	lw	$a4, 8($sp)
	add	$a4, $a4, $a3
	lw	$a3, 0($a4)
	sw	$a1, 24($sp)
	move	$a1, $a3
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	p_received_ray_20percent.2736
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	move	$a1, $v0
	lw	$a2, 12($sp)
	sll	$a3, $a2, 2
	lw	$a4, 4($sp)
	add	$a4, $a4, $a3
	lw	$a3, 0($a4)
	sw	$a1, 28($sp)
	move	$a1, $a3
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	p_received_ray_20percent.2736
	subi	$sp, $sp, 40
	lw	$ra, 36($sp)
	move	$a1, $v0
	lil	$a2, min_caml_diffuse_ray
	lw	$a3, 0($sp)
	sll	$a4, $a3, 2
	lw	$a5, 16($sp)
	add	$a5, $a5, $a4
	lw	$a4, 0($a5)
	sw	$a1, 32($sp)
	move	$a1, $a2
	move	$a2, $a4
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	veccpy.2648
	subi	$sp, $sp, 40
	lw	$ra, 36($sp)
	fmove	$f30, $fv
	fmove	$f30, $f0
	lil	$a1, min_caml_diffuse_ray
	lw	$a2, 0($sp)
	sll	$a3, $a2, 2
	lw	$a4, 20($sp)
	add	$a4, $a4, $a3
	lw	$a3, 0($a4)
	move	$a2, $a3
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	vecadd.2671
	subi	$sp, $sp, 40
	lw	$ra, 36($sp)
	fmove	$f30, $fv
	fmove	$f30, $f0
	lil	$a1, min_caml_diffuse_ray
	lw	$a2, 0($sp)
	sll	$a3, $a2, 2
	lw	$a4, 24($sp)
	add	$a4, $a4, $a3
	lw	$a3, 0($a4)
	move	$a2, $a3
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	vecadd.2671
	subi	$sp, $sp, 40
	lw	$ra, 36($sp)
	fmove	$f30, $fv
	fmove	$f30, $f0
	lil	$a1, min_caml_diffuse_ray
	lw	$a2, 0($sp)
	sll	$a3, $a2, 2
	lw	$a4, 28($sp)
	add	$a4, $a4, $a3
	lw	$a3, 0($a4)
	move	$a2, $a3
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	vecadd.2671
	subi	$sp, $sp, 40
	lw	$ra, 36($sp)
	fmove	$f30, $fv
	fmove	$f30, $f0
	lil	$a1, min_caml_diffuse_ray
	lw	$a2, 0($sp)
	sll	$a3, $a2, 2
	lw	$a4, 32($sp)
	add	$a4, $a4, $a3
	lw	$a3, 0($a4)
	move	$a2, $a3
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	vecadd.2671
	subi	$sp, $sp, 40
	lw	$ra, 36($sp)
	fmove	$f30, $fv
	fmove	$f30, $f0
	lw	$a1, 12($sp)
	sll	$a1, $a1, 2
	lw	$a2, 8($sp)
	add	$a2, $a2, $a1
	lw	$a1, 0($a2)
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	p_energy.2734
	subi	$sp, $sp, 40
	lw	$ra, 36($sp)
	move	$a1, $v0
	lil	$a2, min_caml_rgb
	lw	$a3, 0($sp)
	sll	$a3, $a3, 2
	add	$a1, $a1, $a3
	lw	$a1, 0($a1)
	lil	$a3, min_caml_diffuse_ray
	move	$a25, $a2
	move	$a2, $a1
	move	$a1, $a25
	b	vecaccumv.2680
do_without_neighbors.2996:
	li	$a3, 4
	ble	$a3, $a2, ble_else.8613
	sw	$a1, 0($sp)
	sw	$a2, 4($sp)
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	p_surface_ids.2730
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	move	$a1, $v0
	li	$a2, 0
	lw	$a3, 4($sp)
	sll	$a4, $a3, 2
	add	$a1, $a1, $a4
	lw	$a1, 0($a1)
	ble	$a1, $a2, ble_else.8614
	lw	$a1, 0($sp)
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	p_calc_diffuse.2732
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	move	$a1, $v0
	lw	$a2, 4($sp)
	sll	$a3, $a2, 2
	add	$a1, $a1, $a3
	lw	$a1, 0($a1)
	li	$a3, 0
	bne	$a1, $a3, beq_else.8615
	j	beq_cont.8616
beq_else.8615:
	lw	$a1, 0($sp)
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	calc_diffuse_using_1point.2987
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	fmove	$f30, $fv
	fmove	$f30, $f0
beq_cont.8616:
	lw	$a1, 4($sp)
	addi	$a2, $a1, 1
	lw	$a1, 0($sp)
	b	do_without_neighbors.2996
ble_else.8614:
	jr $ra
ble_else.8613:
	jr $ra
neighbors_exist.2999:
	lil	$a3, min_caml_image_size
	lw	$a3, 4($a3)
	addi	$a4, $a2, 1
	ble	$a4, $a3, ble_else.8619
	li	$v0, 0
	jr $ra
ble_else.8619:
	li	$a3, 0
	ble	$a3, $a2, ble_else.8620
	li	$v0, 0
	jr $ra
ble_else.8620:
	lil	$a2, min_caml_image_size
	lw	$a2, 0($a2)
	addi	$a3, $a1, 1
	ble	$a3, $a2, ble_else.8621
	li	$v0, 0
	jr $ra
ble_else.8621:
	li	$a2, 0
	ble	$a2, $a1, ble_else.8622
	li	$v0, 0
	jr $ra
ble_else.8622:
	li	$v0, 1
	jr $ra
get_surface_id.3003:
	sw	$a2, 0($sp)
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	p_surface_ids.2730
	subi	$sp, $sp, 8
	lw	$ra, 4($sp)
	move	$a1, $v0
	lw	$a2, 0($sp)
	sll	$a2, $a2, 2
	add	$a1, $a1, $a2
	lw	$v0, 0($a1)
	jr $ra
neighbors_are_available.3006:
	sll	$a6, $a1, 2
	add	$a3, $a3, $a6
	lw	$a6, 0($a3)
	sw	$a3, 0($sp)
	sw	$a4, 4($sp)
	sw	$a5, 8($sp)
	sw	$a2, 12($sp)
	sw	$a1, 16($sp)
	move	$a2, $a5
	move	$a1, $a6
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	get_surface_id.3003
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	move	$a1, $v0
	lw	$a2, 16($sp)
	sll	$a3, $a2, 2
	lw	$a4, 12($sp)
	add	$a4, $a4, $a3
	lw	$a3, 0($a4)
	lw	$a4, 8($sp)
	sw	$a1, 20($sp)
	move	$a2, $a4
	move	$a1, $a3
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	get_surface_id.3003
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	move	$a1, $v0
	lw	$a2, 20($sp)
	bne	$a1, $a2, beq_else.8623
	lw	$a1, 16($sp)
	sll	$a3, $a1, 2
	lw	$a4, 4($sp)
	add	$a4, $a4, $a3
	lw	$a3, 0($a4)
	lw	$a4, 8($sp)
	move	$a2, $a4
	move	$a1, $a3
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	get_surface_id.3003
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	move	$a1, $v0
	lw	$a2, 20($sp)
	bne	$a1, $a2, beq_else.8624
	lw	$a1, 16($sp)
	subi	$a3, $a1, 1
	sll	$a3, $a3, 2
	lw	$a4, 0($sp)
	add	$a4, $a4, $a3
	lw	$a3, 0($a4)
	lw	$a5, 8($sp)
	move	$a2, $a5
	move	$a1, $a3
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	get_surface_id.3003
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	move	$a1, $v0
	lw	$a2, 20($sp)
	bne	$a1, $a2, beq_else.8625
	lw	$a1, 16($sp)
	addi	$a1, $a1, 1
	sll	$a1, $a1, 2
	lw	$a3, 0($sp)
	add	$a3, $a3, $a1
	lw	$a1, 0($a3)
	lw	$a3, 8($sp)
	move	$a2, $a3
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	get_surface_id.3003
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	move	$a1, $v0
	lw	$a2, 20($sp)
	bne	$a1, $a2, beq_else.8626
	li	$v0, 1
	jr $ra
beq_else.8626:
	li	$v0, 0
	jr $ra
beq_else.8625:
	li	$v0, 0
	jr $ra
beq_else.8624:
	li	$v0, 0
	jr $ra
beq_else.8623:
	li	$v0, 0
	jr $ra
try_exploit_neighbors.3012:
	sll	$a7, $a1, 2
	add	$a4, $a4, $a7
	lw	$a7, 0($a4)
	li	$a8, 4
	ble	$a8, $a6, ble_else.8627
	li	$a8, 0
	sw	$a2, 0($sp)
	sw	$a7, 4($sp)
	sw	$a6, 8($sp)
	sw	$a5, 12($sp)
	sw	$a4, 16($sp)
	sw	$a3, 20($sp)
	sw	$a1, 24($sp)
	sw	$a8, 28($sp)
	move	$a2, $a6
	move	$a1, $a7
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	get_surface_id.3003
	subi	$sp, $sp, 40
	lw	$ra, 36($sp)
	move	$a1, $v0
	lw	$a2, 28($sp)
	ble	$a1, $a2, ble_else.8628
	lw	$a1, 24($sp)
	lw	$a2, 20($sp)
	lw	$a3, 16($sp)
	lw	$a4, 12($sp)
	lw	$a5, 8($sp)
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	neighbors_are_available.3006
	subi	$sp, $sp, 40
	lw	$ra, 36($sp)
	move	$a1, $v0
	li	$a2, 0
	bne	$a1, $a2, beq_else.8629
	lw	$a1, 24($sp)
	sll	$a1, $a1, 2
	lw	$a2, 16($sp)
	add	$a2, $a2, $a1
	lw	$a1, 0($a2)
	lw	$a2, 8($sp)
	b	do_without_neighbors.2996
beq_else.8629:
	lw	$a1, 4($sp)
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	p_calc_diffuse.2732
	subi	$sp, $sp, 40
	lw	$ra, 36($sp)
	move	$a1, $v0
	lw	$a5, 8($sp)
	sll	$a2, $a5, 2
	add	$a1, $a1, $a2
	lw	$a1, 0($a1)
	li	$a2, 0
	bne	$a1, $a2, beq_else.8630
	j	beq_cont.8631
beq_else.8630:
	lw	$a1, 24($sp)
	lw	$a2, 20($sp)
	lw	$a3, 16($sp)
	lw	$a4, 12($sp)
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	calc_diffuse_using_5points.2990
	subi	$sp, $sp, 40
	lw	$ra, 36($sp)
	fmove	$f30, $fv
	fmove	$f30, $f0
beq_cont.8631:
	lw	$a1, 8($sp)
	addi	$a6, $a1, 1
	lw	$a1, 24($sp)
	lw	$a2, 0($sp)
	lw	$a3, 20($sp)
	lw	$a4, 16($sp)
	lw	$a5, 12($sp)
	b	try_exploit_neighbors.3012
ble_else.8628:
	jr $ra
ble_else.8627:
	jr $ra
write_ppm_header.3019:
	li	$a1, 80
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	min_caml_print_char
	subi	$sp, $sp, 8
	lw	$ra, 4($sp)
	fmove	$f30, $fv
	fmove	$f30, $f0
	li	$a1, 51
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	min_caml_print_char
	subi	$sp, $sp, 8
	lw	$ra, 4($sp)
	fmove	$f30, $fv
	fmove	$f30, $f0
	li	$a1, 10
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	min_caml_print_char
	subi	$sp, $sp, 8
	lw	$ra, 4($sp)
	fmove	$f30, $fv
	fmove	$f30, $f0
	lil	$a1, min_caml_image_size
	lw	$a1, 0($a1)
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	min_caml_print_int
	subi	$sp, $sp, 8
	lw	$ra, 4($sp)
	fmove	$f30, $fv
	fmove	$f30, $f0
	li	$a1, 32
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	min_caml_print_char
	subi	$sp, $sp, 8
	lw	$ra, 4($sp)
	fmove	$f30, $fv
	fmove	$f30, $f0
	lil	$a1, min_caml_image_size
	lw	$a1, 4($a1)
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	min_caml_print_int
	subi	$sp, $sp, 8
	lw	$ra, 4($sp)
	fmove	$f30, $fv
	fmove	$f30, $f0
	li	$a1, 32
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	min_caml_print_char
	subi	$sp, $sp, 8
	lw	$ra, 4($sp)
	fmove	$f30, $fv
	fmove	$f30, $f0
	li	$a1, 255
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	min_caml_print_int
	subi	$sp, $sp, 8
	lw	$ra, 4($sp)
	fmove	$f30, $fv
	fmove	$f30, $f0
	li	$a1, 10
	b	min_caml_print_char
write_rgb_element.3021:
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	min_caml_int_of_float
	subi	$sp, $sp, 8
	lw	$ra, 4($sp)
	move	$a1, $v0
	li	$a2, 255
	bgt	$a1, $a2, ble_else.8634
	li	$a2, 0
	bgt	$a2, $a1, ble_else.8636
	j	ble_cont.8637
ble_else.8636:
	li	$a1, 0
ble_cont.8637:
	j	ble_cont.8635
ble_else.8634:
	li	$a1, 255
ble_cont.8635:
	b	min_caml_print_int
write_rgb.3023:
	lil	$a1, min_caml_rgb
	flw	$f0, 0($a1)
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	write_rgb_element.3021
	subi	$sp, $sp, 8
	lw	$ra, 4($sp)
	fmove	$f30, $fv
	fmove	$f30, $f0
	li	$a1, 32
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	min_caml_print_char
	subi	$sp, $sp, 8
	lw	$ra, 4($sp)
	fmove	$f30, $fv
	fmove	$f30, $f0
	lil	$a1, min_caml_rgb
	flw	$f0, 8($a1)
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	write_rgb_element.3021
	subi	$sp, $sp, 8
	lw	$ra, 4($sp)
	fmove	$f30, $fv
	fmove	$f30, $f0
	li	$a1, 32
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	min_caml_print_char
	subi	$sp, $sp, 8
	lw	$ra, 4($sp)
	fmove	$f30, $fv
	fmove	$f30, $f0
	lil	$a1, min_caml_rgb
	flw	$f0, 16($a1)
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	write_rgb_element.3021
	subi	$sp, $sp, 8
	lw	$ra, 4($sp)
	fmove	$f30, $fv
	fmove	$f30, $f0
	li	$a1, 10
	b	min_caml_print_char
pretrace_diffuse_rays.3025:
	li	$a3, 4
	ble	$a3, $a2, ble_else.8638
	sw	$a2, 0($sp)
	sw	$a1, 4($sp)
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	get_surface_id.3003
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	move	$a1, $v0
	li	$a2, 0
	ble	$a1, $a2, ble_else.8639
	lw	$a1, 4($sp)
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	p_calc_diffuse.2732
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	move	$a1, $v0
	lw	$a2, 0($sp)
	sll	$a3, $a2, 2
	add	$a1, $a1, $a3
	lw	$a1, 0($a1)
	li	$a3, 0
	bne	$a1, $a3, beq_else.8640
	j	beq_cont.8641
beq_else.8640:
	lw	$a1, 4($sp)
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	p_group_id.2738
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	move	$a1, $v0
	lil	$a2, min_caml_diffuse_ray
	sw	$a1, 8($sp)
	move	$a1, $a2
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	vecbzero.2646
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	fmove	$f30, $fv
	fmove	$f30, $f0
	lw	$a1, 4($sp)
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	p_nvectors.2743
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	move	$a1, $v0
	lw	$a2, 4($sp)
	sw	$a1, 12($sp)
	move	$a1, $a2
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	p_intersection_points.2728
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	move	$a1, $v0
	lil	$a2, min_caml_dirvecs
	lw	$a3, 8($sp)
	sll	$a3, $a3, 2
	add	$a2, $a2, $a3
	lw	$a2, 0($a2)
	lw	$a3, 0($sp)
	sll	$a4, $a3, 2
	lw	$a5, 12($sp)
	add	$a5, $a5, $a4
	lw	$a4, 0($a5)
	sll	$a5, $a3, 2
	add	$a1, $a1, $a5
	lw	$a1, 0($a1)
	move	$a3, $a1
	move	$a1, $a2
	move	$a2, $a4
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	trace_diffuse_rays.2979
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	fmove	$f30, $fv
	fmove	$f30, $f0
	lw	$a1, 4($sp)
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	p_received_ray_20percent.2736
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	move	$a1, $v0
	lw	$a2, 0($sp)
	sll	$a3, $a2, 2
	add	$a1, $a1, $a3
	lw	$a1, 0($a1)
	lil	$a3, min_caml_diffuse_ray
	move	$a2, $a3
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	veccpy.2648
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	fmove	$f30, $fv
	fmove	$f30, $f0
beq_cont.8641:
	lw	$a1, 0($sp)
	addi	$a2, $a1, 1
	lw	$a1, 4($sp)
	b	pretrace_diffuse_rays.3025
ble_else.8639:
	jr $ra
ble_else.8638:
	jr $ra
pretrace_pixels.3028:
	li	$a4, 0
	ble	$a2, $a4, ble_else.8644
	lil	$a4, min_caml_scan_pitch
	flw	$f3, 0($a4)
	lil	$a4, min_caml_image_center
	lw	$a4, 0($a4)
	sub	$a4, $a2, $a4
	sw	$a3, 0($sp)
	sw	$a1, 4($sp)
	sw	$a2, 8($sp)
	sw	$f2, 16($sp)
	sw	$f1, 24($sp)
	sw	$f0, 32($sp)
	sw	$f3, 40($sp)
	move	$a1, $a4
	sw	$ra, 52($sp)
	addi	$sp, $sp, 56
	jal	min_caml_float_of_int
	subi	$sp, $sp, 56
	lw	$ra, 52($sp)
	fmove	$f0, $fv
	lw	$f1, 40($sp)
	fmul	$f0, $f1, $f0
	lil	$a1, min_caml_ptrace_dirvec
	lil	$a2, min_caml_screenx_dir
	flw	$f1, 0($a2)
	fmul	$f1, $f0, $f1
	lw	$f2, 32($sp)
	fadd	$f1, $f1, $f2
	fsw	$f1, 0($a1)
	lil	$a1, min_caml_ptrace_dirvec
	lil	$a2, min_caml_screenx_dir
	flw	$f1, 8($a2)
	fmul	$f1, $f0, $f1
	lw	$f3, 24($sp)
	fadd	$f1, $f1, $f3
	fsw	$f1, 8($a1)
	lil	$a1, min_caml_ptrace_dirvec
	lil	$a2, min_caml_screenx_dir
	flw	$f1, 16($a2)
	fmul	$f0, $f0, $f1
	lw	$f1, 16($sp)
	fadd	$f0, $f0, $f1
	fsw	$f0, 16($a1)
	lil	$a1, min_caml_ptrace_dirvec
	li	$a2, 0
	sw	$ra, 52($sp)
	addi	$sp, $sp, 56
	jal	vecunit_sgn.2656
	subi	$sp, $sp, 56
	lw	$ra, 52($sp)
	fmove	$f30, $fv
	fmove	$f30, $f0
	lil	$a1, min_caml_rgb
	sw	$ra, 52($sp)
	addi	$sp, $sp, 56
	jal	vecbzero.2646
	subi	$sp, $sp, 56
	lw	$ra, 52($sp)
	fmove	$f30, $fv
	fmove	$f30, $f0
	lil	$a1, min_caml_startp
	lil	$a2, min_caml_viewpoint
	sw	$ra, 52($sp)
	addi	$sp, $sp, 56
	jal	veccpy.2648
	subi	$sp, $sp, 56
	lw	$ra, 52($sp)
	fmove	$f30, $fv
	fmove	$f30, $f0
	li	$a1, 0
	jal l.6346
	mtc1	$f0, $a25
	lil	$a2, min_caml_ptrace_dirvec
	lw	$a3, 8($sp)
	sll	$a4, $a3, 2
	lw	$a5, 4($sp)
	add	$a5, $a5, $a4
	lw	$a4, 0($a5)
	jal l.6345
	mtc1	$f1, $a25
	move	$a3, $a4
	sw	$ra, 52($sp)
	addi	$sp, $sp, 56
	jal	trace_ray.2965
	subi	$sp, $sp, 56
	lw	$ra, 52($sp)
	fmove	$f30, $fv
	fmove	$f30, $f0
	lw	$a1, 8($sp)
	sll	$a2, $a1, 2
	lw	$a3, 4($sp)
	add	$a3, $a3, $a2
	lw	$a2, 0($a3)
	move	$a1, $a2
	sw	$ra, 52($sp)
	addi	$sp, $sp, 56
	jal	p_rgb.2726
	subi	$sp, $sp, 56
	lw	$ra, 52($sp)
	move	$a1, $v0
	lil	$a2, min_caml_rgb
	sw	$ra, 52($sp)
	addi	$sp, $sp, 56
	jal	veccpy.2648
	subi	$sp, $sp, 56
	lw	$ra, 52($sp)
	fmove	$f30, $fv
	fmove	$f30, $f0
	lw	$a1, 8($sp)
	sll	$a2, $a1, 2
	lw	$a3, 4($sp)
	add	$a3, $a3, $a2
	lw	$a2, 0($a3)
	lw	$a4, 0($sp)
	move	$a1, $a2
	move	$a2, $a4
	sw	$ra, 52($sp)
	addi	$sp, $sp, 56
	jal	p_set_group_id.2740
	subi	$sp, $sp, 56
	lw	$ra, 52($sp)
	fmove	$f30, $fv
	fmove	$f30, $f0
	lw	$a1, 8($sp)
	sll	$a2, $a1, 2
	lw	$a3, 4($sp)
	add	$a3, $a3, $a2
	lw	$a2, 0($a3)
	li	$a4, 0
	move	$a1, $a2
	move	$a2, $a4
	sw	$ra, 52($sp)
	addi	$sp, $sp, 56
	jal	pretrace_diffuse_rays.3025
	subi	$sp, $sp, 56
	lw	$ra, 52($sp)
	fmove	$f30, $fv
	fmove	$f30, $f0
	lw	$a1, 8($sp)
	subi	$a1, $a1, 1
	li	$a2, 1
	lw	$a3, 0($sp)
	sw	$a1, 48($sp)
	move	$a1, $a3
	sw	$ra, 52($sp)
	addi	$sp, $sp, 56
	jal	add_mod5.2635
	subi	$sp, $sp, 56
	lw	$ra, 52($sp)
	move	$a3, $v0
	move	$a3, $a1
	lw	$f0, 32($sp)
	lw	$f1, 24($sp)
	lw	$f2, 16($sp)
	lw	$a1, 4($sp)
	lw	$a2, 48($sp)
	b	pretrace_pixels.3028
ble_else.8644:
	jr $ra
pretrace_line.3035:
	lil	$a4, min_caml_scan_pitch
	flw	$f0, 0($a4)
	lil	$a4, min_caml_image_center
	lw	$a4, 4($a4)
	sub	$a2, $a2, $a4
	sw	$a3, 0($sp)
	sw	$a1, 4($sp)
	sw	$f0, 8($sp)
	move	$a1, $a2
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	min_caml_float_of_int
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	fmove	$f0, $fv
	lw	$f1, 8($sp)
	fmul	$f0, $f1, $f0
	lil	$a1, min_caml_screeny_dir
	flw	$f1, 0($a1)
	fmul	$f1, $f0, $f1
	lil	$a1, min_caml_screenz_dir
	flw	$f2, 0($a1)
	fadd	$f1, $f1, $f2
	lil	$a1, min_caml_screeny_dir
	flw	$f2, 8($a1)
	fmul	$f2, $f0, $f2
	lil	$a1, min_caml_screenz_dir
	flw	$f3, 8($a1)
	fadd	$f2, $f2, $f3
	lil	$a1, min_caml_screeny_dir
	flw	$f3, 16($a1)
	fmul	$f0, $f0, $f3
	lil	$a1, min_caml_screenz_dir
	flw	$f3, 16($a1)
	fadd	$f0, $f0, $f3
	lil	$a1, min_caml_image_size
	lw	$a1, 0($a1)
	subi	$a2, $a1, 1
	lw	$a1, 4($sp)
	lw	$a3, 0($sp)
	fmove	$f30, $f2
	fmove	$f2, $f0
	fmove	$f0, $f1
	fmove	$f1, $f30
	b	pretrace_pixels.3028
scan_pixel.3039:
	lil	$a6, min_caml_image_size
	lw	$a6, 0($a6)
	ble	$a1, $a6, ble_else.8647
	jr $ra
ble_else.8647:
	lil	$a6, min_caml_rgb
	sll	$a7, $a1, 2
	add	$a4, $a4, $a7
	lw	$a7, 0($a4)
	sw	$a3, 0($sp)
	sw	$a4, 4($sp)
	sw	$a5, 8($sp)
	sw	$a2, 12($sp)
	sw	$a1, 16($sp)
	sw	$a6, 20($sp)
	move	$a1, $a7
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	p_rgb.2726
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	move	$a2, $v0
	move	$a2, $a1
	lw	$a1, 20($sp)
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	veccpy.2648
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	fmove	$f30, $fv
	fmove	$f30, $f0
	lw	$a1, 16($sp)
	lw	$a2, 12($sp)
	lw	$a3, 8($sp)
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	neighbors_exist.2999
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	move	$a1, $v0
	li	$a2, 0
	bne	$a1, $a2, beq_else.8649
	lw	$a1, 16($sp)
	sll	$a2, $a1, 2
	lw	$a3, 4($sp)
	add	$a3, $a3, $a2
	lw	$a2, 0($a3)
	li	$a4, 0
	move	$a1, $a2
	move	$a2, $a4
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	do_without_neighbors.2996
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	fmove	$f30, $fv
	fmove	$f30, $f0
	j	beq_cont.8650
beq_else.8649:
	li	$a6, 0
	lw	$a1, 16($sp)
	lw	$a2, 12($sp)
	lw	$a3, 0($sp)
	lw	$a4, 4($sp)
	lw	$a5, 8($sp)
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	try_exploit_neighbors.3012
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	fmove	$f30, $fv
	fmove	$f30, $f0
beq_cont.8650:
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	write_rgb.3023
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	fmove	$f30, $fv
	fmove	$f30, $f0
	lw	$a1, 16($sp)
	addi	$a1, $a1, 1
	lw	$a2, 12($sp)
	lw	$a3, 0($sp)
	lw	$a4, 4($sp)
	lw	$a5, 8($sp)
	b	scan_pixel.3039
scan_line.3045:
	lil	$a6, min_caml_image_size
	lw	$a6, 4($a6)
	ble	$a1, $a6, ble_else.8651
	jr $ra
ble_else.8651:
	lil	$a6, min_caml_image_size
	lw	$a6, 4($a6)
	subi	$a6, $a6, 1
	sw	$a5, 0($sp)
	sw	$a4, 4($sp)
	sw	$a3, 8($sp)
	sw	$a2, 12($sp)
	sw	$a1, 16($sp)
	bgt	$a6, $a1, ble_else.8653
	j	ble_cont.8654
ble_else.8653:
	addi	$a6, $a1, 1
	move	$a3, $a5
	move	$a2, $a6
	move	$a1, $a4
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	pretrace_line.3035
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	fmove	$f30, $fv
	fmove	$f30, $f0
ble_cont.8654:
	li	$a1, 0
	lw	$a2, 16($sp)
	lw	$a3, 12($sp)
	lw	$a4, 8($sp)
	lw	$a5, 4($sp)
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	scan_pixel.3039
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	fmove	$f30, $fv
	fmove	$f30, $f0
	lw	$a1, 16($sp)
	addi	$a1, $a1, 1
	li	$a2, 2
	lw	$a3, 0($sp)
	sw	$a1, 20($sp)
	move	$a1, $a3
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	add_mod5.2635
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	move	$a5, $v0
	move	$a5, $a1
	lw	$a1, 20($sp)
	lw	$a2, 8($sp)
	lw	$a3, 4($sp)
	lw	$a4, 12($sp)
	b	scan_line.3045
create_float5x3array.3051:
	li	$a1, 3
	jal l.6345
	mtc1	$f0, $a25
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	min_caml_create_float_array
	subi	$sp, $sp, 8
	lw	$ra, 4($sp)
	move	$a2, $v0
	move	$a2, $a1
	li	$a1, 5
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	min_caml_create_array
	subi	$sp, $sp, 8
	lw	$ra, 4($sp)
	move	$a1, $v0
	li	$a2, 3
	jal l.6345
	mtc1	$f0, $a25
	sw	$a1, 0($sp)
	move	$a1, $a2
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	min_caml_create_float_array
	subi	$sp, $sp, 8
	lw	$ra, 4($sp)
	move	$a1, $v0
	lw	$a2, 0($sp)
	sw	$a1, 4($a2)
	li	$a1, 3
	jal l.6345
	mtc1	$f0, $a25
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	min_caml_create_float_array
	subi	$sp, $sp, 8
	lw	$ra, 4($sp)
	move	$a1, $v0
	lw	$a2, 0($sp)
	sw	$a1, 8($a2)
	li	$a1, 3
	jal l.6345
	mtc1	$f0, $a25
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	min_caml_create_float_array
	subi	$sp, $sp, 8
	lw	$ra, 4($sp)
	move	$a1, $v0
	lw	$a2, 0($sp)
	sw	$a1, 12($a2)
	li	$a1, 3
	jal l.6345
	mtc1	$f0, $a25
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	min_caml_create_float_array
	subi	$sp, $sp, 8
	lw	$ra, 4($sp)
	move	$a1, $v0
	lw	$a2, 0($sp)
	sw	$a1, 16($a2)
	move	$v0, $a2
	jr $ra
create_pixel.3053:
	li	$a1, 3
	jal l.6345
	mtc1	$f0, $a25
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	min_caml_create_float_array
	subi	$sp, $sp, 8
	lw	$ra, 4($sp)
	move	$a1, $v0
	sw	$a1, 0($sp)
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	create_float5x3array.3051
	subi	$sp, $sp, 8
	lw	$ra, 4($sp)
	move	$a1, $v0
	li	$a2, 5
	li	$a3, 0
	sw	$a1, 4($sp)
	move	$a1, $a2
	move	$a2, $a3
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	min_caml_create_array
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	move	$a1, $v0
	li	$a2, 5
	li	$a3, 0
	sw	$a1, 8($sp)
	move	$a1, $a2
	move	$a2, $a3
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	min_caml_create_array
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	move	$a1, $v0
	sw	$a1, 12($sp)
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	create_float5x3array.3051
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	move	$a1, $v0
	sw	$a1, 16($sp)
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	create_float5x3array.3051
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	move	$a1, $v0
	li	$a2, 1
	li	$a3, 0
	sw	$a1, 20($sp)
	move	$a1, $a2
	move	$a2, $a3
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	min_caml_create_array
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	move	$a1, $v0
	sw	$a1, 24($sp)
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	create_float5x3array.3051
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	move	$a1, $v0
	move	$a2, $a0
	addi	$a0, $a0, 32
	sw	$a1, 28($a2)
	lw	$a1, 24($sp)
	sw	$a1, 24($a2)
	lw	$a1, 20($sp)
	sw	$a1, 20($a2)
	lw	$a1, 16($sp)
	sw	$a1, 16($a2)
	lw	$a1, 12($sp)
	sw	$a1, 12($a2)
	lw	$a1, 8($sp)
	sw	$a1, 8($a2)
	lw	$a1, 4($sp)
	sw	$a1, 4($a2)
	lw	$a1, 0($sp)
	sw	$a1, 0($a2)
	move	$v0, $a2
	jr $ra
init_line_elements.3055:
	li	$a3, 0
	ble	$a2, $a3, ble_else.8655
	sw	$a1, 0($sp)
	sw	$a2, 4($sp)
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	create_pixel.3053
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	move	$a1, $v0
	lw	$a2, 4($sp)
	sll	$a3, $a2, 2
	lw	$a4, 0($sp)
	add	$a4, $a4, $a3
	sw	$a1, 0($a4)
	subi	$a2, $a2, 1
	move	$a1, $a4
	b	init_line_elements.3055
ble_else.8655:
	move	$v0, $a1
	jr $ra
create_pixelline.3058:
	lil	$a1, min_caml_image_size
	lw	$a1, 0($a1)
	sw	$a1, 0($sp)
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	create_pixel.3053
	subi	$sp, $sp, 8
	lw	$ra, 4($sp)
	move	$a2, $v0
	move	$a2, $a1
	lw	$a1, 0($sp)
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	min_caml_create_array
	subi	$sp, $sp, 8
	lw	$ra, 4($sp)
	move	$a1, $v0
	lil	$a2, min_caml_image_size
	lw	$a2, 0($a2)
	subi	$a2, $a2, 2
	b	init_line_elements.3055
tan.3060:
	sw	$f0, 0($sp)
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	min_caml_sin
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	fmove	$f0, $fv
	lw	$f1, 0($sp)
	sw	$f0, 8($sp)
	fmove	$f0, $f1
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	min_caml_cos
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	fmove	$f0, $fv
	finv	$f0, $f0
	lw	$f1, 8($sp)
	fmul	$fv, $f1, $f0
	jr $ra
adjust_position.3062:
	fmul	$f0, $f0, $f0
	jal l.6790
	mtc1	$f2, $a25
	fadd	$f0, $f0, $f2
	sw	$f1, 0($sp)
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	min_caml_sqrt
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	fmove	$f0, $fv
	jal l.6346
	mtc1	$f1, $a25
	finv	$f2, $f0
	fmul	$f1, $f1, $f2
	sw	$f0, 8($sp)
	fmove	$f0, $f1
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	min_caml_atan
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	fmove	$f0, $fv
	lw	$f1, 0($sp)
	fmul	$f0, $f0, $f1
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	tan.3060
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	fmove	$f0, $fv
	lw	$f1, 8($sp)
	fmul	$fv, $f0, $f1
	jr $ra
calc_dirvec.3065:
	li	$a4, 5
	ble	$a1, $a4, ble_else.8656
	sw	$a3, 0($sp)
	sw	$a2, 4($sp)
	sw	$f0, 8($sp)
	sw	$f1, 16($sp)
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	min_caml_fsqr
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	fmove	$f0, $fv
	lw	$f1, 16($sp)
	sw	$f0, 24($sp)
	fmove	$f0, $f1
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	min_caml_fsqr
	subi	$sp, $sp, 40
	lw	$ra, 36($sp)
	fmove	$f0, $fv
	lw	$f1, 24($sp)
	fadd	$f0, $f1, $f0
	jal l.6346
	mtc1	$f1, $a25
	fadd	$f0, $f0, $f1
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	min_caml_sqrt
	subi	$sp, $sp, 40
	lw	$ra, 36($sp)
	fmove	$f0, $fv
	finv	$f1, $f0
	lw	$f2, 8($sp)
	fmul	$f1, $f2, $f1
	finv	$f2, $f0
	lw	$f3, 16($sp)
	fmul	$f2, $f3, $f2
	jal l.6346
	mtc1	$f3, $a25
	finv	$f0, $f0
	fmul	$f0, $f3, $f0
	lil	$a1, min_caml_dirvecs
	lw	$a2, 4($sp)
	sll	$a2, $a2, 2
	add	$a1, $a1, $a2
	lw	$a1, 0($a1)
	lw	$a2, 0($sp)
	sll	$a3, $a2, 2
	add	$a1, $a1, $a3
	lw	$a3, 0($a1)
	sw	$a1, 32($sp)
	sw	$f0, 40($sp)
	sw	$f2, 48($sp)
	sw	$f1, 56($sp)
	move	$a1, $a3
	sw	$ra, 68($sp)
	addi	$sp, $sp, 72
	jal	d_vec.2745
	subi	$sp, $sp, 72
	lw	$ra, 68($sp)
	move	$a1, $v0
	lw	$f0, 56($sp)
	lw	$f1, 48($sp)
	lw	$f2, 40($sp)
	sw	$ra, 68($sp)
	addi	$sp, $sp, 72
	jal	vecset.2638
	subi	$sp, $sp, 72
	lw	$ra, 68($sp)
	fmove	$f30, $fv
	fmove	$f30, $f0
	lw	$a1, 0($sp)
	addi	$a2, $a1, 40
	sll	$a2, $a2, 2
	lw	$a3, 32($sp)
	add	$a3, $a3, $a2
	lw	$a2, 0($a3)
	move	$a1, $a2
	sw	$ra, 68($sp)
	addi	$sp, $sp, 72
	jal	d_vec.2745
	subi	$sp, $sp, 72
	lw	$ra, 68($sp)
	move	$a1, $v0
	lw	$f0, 48($sp)
	sw	$a1, 64($sp)
	sw	$ra, 68($sp)
	addi	$sp, $sp, 72
	jal	min_caml_fneg
	subi	$sp, $sp, 72
	lw	$ra, 68($sp)
	fmove	$f2, $fv
	fmove	$f2, $f0
	lw	$f0, 56($sp)
	lw	$f1, 40($sp)
	lw	$a1, 64($sp)
	sw	$ra, 68($sp)
	addi	$sp, $sp, 72
	jal	vecset.2638
	subi	$sp, $sp, 72
	lw	$ra, 68($sp)
	fmove	$f30, $fv
	fmove	$f30, $f0
	lw	$a1, 0($sp)
	addi	$a2, $a1, 80
	sll	$a2, $a2, 2
	lw	$a3, 32($sp)
	add	$a3, $a3, $a2
	lw	$a2, 0($a3)
	move	$a1, $a2
	sw	$ra, 68($sp)
	addi	$sp, $sp, 72
	jal	d_vec.2745
	subi	$sp, $sp, 72
	lw	$ra, 68($sp)
	move	$a1, $v0
	lw	$f0, 56($sp)
	sw	$a1, 68($sp)
	sw	$ra, 76($sp)
	addi	$sp, $sp, 80
	jal	min_caml_fneg
	subi	$sp, $sp, 80
	lw	$ra, 76($sp)
	fmove	$f0, $fv
	lw	$f1, 48($sp)
	sw	$f0, 72($sp)
	fmove	$f0, $f1
	sw	$ra, 84($sp)
	addi	$sp, $sp, 88
	jal	min_caml_fneg
	subi	$sp, $sp, 88
	lw	$ra, 84($sp)
	fmove	$f2, $fv
	fmove	$f2, $f0
	lw	$f0, 40($sp)
	lw	$f1, 72($sp)
	lw	$a1, 68($sp)
	sw	$ra, 84($sp)
	addi	$sp, $sp, 88
	jal	vecset.2638
	subi	$sp, $sp, 88
	lw	$ra, 84($sp)
	fmove	$f30, $fv
	fmove	$f30, $f0
	lw	$a1, 0($sp)
	addi	$a2, $a1, 1
	sll	$a2, $a2, 2
	lw	$a3, 32($sp)
	add	$a3, $a3, $a2
	lw	$a2, 0($a3)
	move	$a1, $a2
	sw	$ra, 84($sp)
	addi	$sp, $sp, 88
	jal	d_vec.2745
	subi	$sp, $sp, 88
	lw	$ra, 84($sp)
	move	$a1, $v0
	lw	$f0, 56($sp)
	sw	$a1, 80($sp)
	sw	$ra, 84($sp)
	addi	$sp, $sp, 88
	jal	min_caml_fneg
	subi	$sp, $sp, 88
	lw	$ra, 84($sp)
	fmove	$f0, $fv
	lw	$f1, 48($sp)
	sw	$f0, 88($sp)
	fmove	$f0, $f1
	sw	$ra, 100($sp)
	addi	$sp, $sp, 104
	jal	min_caml_fneg
	subi	$sp, $sp, 104
	lw	$ra, 100($sp)
	fmove	$f0, $fv
	lw	$f1, 40($sp)
	sw	$f0, 96($sp)
	fmove	$f0, $f1
	sw	$ra, 108($sp)
	addi	$sp, $sp, 112
	jal	min_caml_fneg
	subi	$sp, $sp, 112
	lw	$ra, 108($sp)
	fmove	$f2, $fv
	fmove	$f2, $f0
	lw	$f0, 88($sp)
	lw	$f1, 96($sp)
	lw	$a1, 80($sp)
	sw	$ra, 108($sp)
	addi	$sp, $sp, 112
	jal	vecset.2638
	subi	$sp, $sp, 112
	lw	$ra, 108($sp)
	fmove	$f30, $fv
	fmove	$f30, $f0
	lw	$a1, 0($sp)
	addi	$a2, $a1, 41
	sll	$a2, $a2, 2
	lw	$a3, 32($sp)
	add	$a3, $a3, $a2
	lw	$a2, 0($a3)
	move	$a1, $a2
	sw	$ra, 108($sp)
	addi	$sp, $sp, 112
	jal	d_vec.2745
	subi	$sp, $sp, 112
	lw	$ra, 108($sp)
	move	$a1, $v0
	lw	$f0, 56($sp)
	sw	$a1, 104($sp)
	sw	$ra, 108($sp)
	addi	$sp, $sp, 112
	jal	min_caml_fneg
	subi	$sp, $sp, 112
	lw	$ra, 108($sp)
	fmove	$f0, $fv
	lw	$f1, 40($sp)
	sw	$f0, 112($sp)
	fmove	$f0, $f1
	sw	$ra, 124($sp)
	addi	$sp, $sp, 128
	jal	min_caml_fneg
	subi	$sp, $sp, 128
	lw	$ra, 124($sp)
	fmove	$f1, $fv
	fmove	$f1, $f0
	lw	$f0, 112($sp)
	lw	$f2, 48($sp)
	lw	$a1, 104($sp)
	sw	$ra, 124($sp)
	addi	$sp, $sp, 128
	jal	vecset.2638
	subi	$sp, $sp, 128
	lw	$ra, 124($sp)
	fmove	$f30, $fv
	fmove	$f30, $f0
	lw	$a1, 0($sp)
	addi	$a1, $a1, 81
	sll	$a1, $a1, 2
	lw	$a2, 32($sp)
	add	$a2, $a2, $a1
	lw	$a1, 0($a2)
	sw	$ra, 124($sp)
	addi	$sp, $sp, 128
	jal	d_vec.2745
	subi	$sp, $sp, 128
	lw	$ra, 124($sp)
	move	$a1, $v0
	lw	$f0, 40($sp)
	sw	$a1, 120($sp)
	sw	$ra, 124($sp)
	addi	$sp, $sp, 128
	jal	min_caml_fneg
	subi	$sp, $sp, 128
	lw	$ra, 124($sp)
	fmove	$f0, $fv
	lw	$f1, 56($sp)
	lw	$f2, 48($sp)
	lw	$a1, 120($sp)
	b	vecset.2638
ble_else.8656:
	sw	$f2, 128($sp)
	sw	$a3, 0($sp)
	sw	$a2, 4($sp)
	sw	$f3, 136($sp)
	sw	$a1, 144($sp)
	fmove	$f0, $f1
	fmove	$f1, $f2
	sw	$ra, 148($sp)
	addi	$sp, $sp, 152
	jal	adjust_position.3062
	subi	$sp, $sp, 152
	lw	$ra, 148($sp)
	fmove	$f0, $fv
	lw	$a1, 144($sp)
	addi	$a1, $a1, 1
	lw	$f1, 136($sp)
	sw	$f0, 152($sp)
	sw	$a1, 160($sp)
	sw	$ra, 164($sp)
	addi	$sp, $sp, 168
	jal	adjust_position.3062
	subi	$sp, $sp, 168
	lw	$ra, 164($sp)
	fmove	$f1, $fv
	fmove	$f1, $f0
	lw	$f0, 152($sp)
	lw	$f2, 128($sp)
	lw	$f3, 136($sp)
	lw	$a1, 160($sp)
	lw	$a2, 4($sp)
	lw	$a3, 0($sp)
	b	calc_dirvec.3065
calc_dirvecs.3073:
	li	$a4, 0
	ble	$a1, $a4, ble_else.8662
	sw	$a1, 0($sp)
	sw	$f0, 8($sp)
	sw	$a3, 16($sp)
	sw	$a2, 20($sp)
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	min_caml_float_of_int
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	fmove	$f0, $fv
	jal l.6902
	mtc1	$f1, $a25
	fmul	$f0, $f0, $f1
	jal l.6903
	mtc1	$f1, $a25
	fsub	$f2, $f0, $f1
	li	$a1, 0
	jal l.6345
	mtc1	$f0, $a25
	jal l.6345
	mtc1	$f1, $a25
	lw	$f3, 8($sp)
	lw	$a2, 20($sp)
	lw	$a3, 16($sp)
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	calc_dirvec.3065
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	fmove	$f30, $fv
	fmove	$f30, $f0
	lw	$a1, 0($sp)
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	min_caml_float_of_int
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	fmove	$f0, $fv
	jal l.6902
	mtc1	$f1, $a25
	fmul	$f0, $f0, $f1
	jal l.6790
	mtc1	$f1, $a25
	fadd	$f2, $f0, $f1
	li	$a1, 0
	jal l.6345
	mtc1	$f0, $a25
	jal l.6345
	mtc1	$f1, $a25
	lw	$a2, 16($sp)
	addi	$a3, $a2, 2
	lw	$f3, 8($sp)
	lw	$a4, 20($sp)
	move	$a2, $a4
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	calc_dirvec.3065
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	fmove	$f30, $fv
	fmove	$f30, $f0
	lw	$a1, 0($sp)
	subi	$a1, $a1, 1
	li	$a2, 1
	lw	$a3, 20($sp)
	sw	$a1, 24($sp)
	move	$a1, $a3
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	add_mod5.2635
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	move	$a2, $v0
	move	$a2, $a1
	lw	$f0, 8($sp)
	lw	$a1, 24($sp)
	lw	$a3, 16($sp)
	b	calc_dirvecs.3073
ble_else.8662:
	jr $ra
calc_dirvec_rows.3078:
	li	$a4, 0
	ble	$a1, $a4, ble_else.8665
	sw	$a1, 0($sp)
	sw	$a3, 4($sp)
	sw	$a2, 8($sp)
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	min_caml_float_of_int
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	fmove	$f0, $fv
	jal l.6902
	mtc1	$f1, $a25
	fmul	$f0, $f0, $f1
	jal l.6903
	mtc1	$f1, $a25
	fsub	$f0, $f0, $f1
	li	$a1, 4
	lw	$a2, 8($sp)
	lw	$a3, 4($sp)
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	calc_dirvecs.3073
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	fmove	$f30, $fv
	fmove	$f30, $f0
	lw	$a1, 0($sp)
	subi	$a1, $a1, 1
	li	$a2, 2
	lw	$a3, 8($sp)
	sw	$a1, 12($sp)
	move	$a1, $a3
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	add_mod5.2635
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	move	$a2, $v0
	move	$a2, $a1
	lw	$a1, 4($sp)
	addi	$a3, $a1, 4
	lw	$a1, 12($sp)
	b	calc_dirvec_rows.3078
ble_else.8665:
	jr $ra
create_dirvec.3082:
	li	$a1, 3
	jal l.6345
	mtc1	$f0, $a25
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	min_caml_create_float_array
	subi	$sp, $sp, 8
	lw	$ra, 4($sp)
	move	$a2, $v0
	move	$a2, $a1
	lil	$a1, min_caml_n_objects
	lw	$a1, 0($a1)
	sw	$a2, 0($sp)
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	min_caml_create_array
	subi	$sp, $sp, 8
	lw	$ra, 4($sp)
	move	$a1, $v0
	move	$a2, $a0
	addi	$a0, $a0, 8
	sw	$a1, 4($a2)
	lw	$a1, 0($sp)
	sw	$a1, 0($a2)
	move	$v0, $a2
	jr $ra
create_dirvec_elements.3084:
	li	$a3, 0
	ble	$a2, $a3, ble_else.8667
	sw	$a1, 0($sp)
	sw	$a2, 4($sp)
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	create_dirvec.3082
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	move	$a1, $v0
	lw	$a2, 4($sp)
	sll	$a3, $a2, 2
	lw	$a4, 0($sp)
	add	$a4, $a4, $a3
	sw	$a1, 0($a4)
	subi	$a2, $a2, 1
	move	$a1, $a4
	b	create_dirvec_elements.3084
ble_else.8667:
	jr $ra
create_dirvecs.3087:
	li	$a2, 0
	ble	$a1, $a2, ble_else.8669
	lil	$a2, min_caml_dirvecs
	li	$a3, 120
	sw	$a2, 0($sp)
	sw	$a1, 4($sp)
	sw	$a3, 8($sp)
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	create_dirvec.3082
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	move	$a2, $v0
	move	$a2, $a1
	lw	$a1, 8($sp)
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	min_caml_create_array
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	move	$a1, $v0
	lw	$a2, 4($sp)
	sll	$a3, $a2, 2
	lw	$a4, 0($sp)
	add	$a4, $a4, $a3
	sw	$a1, 0($a4)
	lil	$a1, min_caml_dirvecs
	sll	$a3, $a2, 2
	add	$a1, $a1, $a3
	lw	$a1, 0($a1)
	li	$a3, 118
	move	$a2, $a3
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	create_dirvec_elements.3084
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	fmove	$f30, $fv
	fmove	$f30, $f0
	lw	$a1, 4($sp)
	subi	$a1, $a1, 1
	b	create_dirvecs.3087
ble_else.8669:
	jr $ra
init_dirvec_constants.3089:
	li	$a3, 0
	ble	$a2, $a3, ble_else.8671
	sll	$a3, $a2, 2
	add	$a1, $a1, $a3
	lw	$a3, 0($a1)
	sw	$a1, 0($sp)
	sw	$a2, 4($sp)
	move	$a1, $a3
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	setup_dirvec_constants.2874
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	fmove	$f30, $fv
	fmove	$f30, $f0
	lw	$a1, 4($sp)
	subi	$a2, $a1, 1
	lw	$a1, 0($sp)
	b	init_dirvec_constants.3089
ble_else.8671:
	jr $ra
init_vecset_constants.3092:
	li	$a2, 0
	ble	$a1, $a2, ble_else.8673
	lil	$a2, min_caml_dirvecs
	sll	$a3, $a1, 2
	add	$a2, $a2, $a3
	lw	$a2, 0($a2)
	li	$a3, 119
	sw	$a1, 0($sp)
	move	$a1, $a2
	move	$a2, $a3
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	init_dirvec_constants.3089
	subi	$sp, $sp, 8
	lw	$ra, 4($sp)
	fmove	$f30, $fv
	fmove	$f30, $f0
	lw	$a1, 0($sp)
	subi	$a1, $a1, 1
	b	init_vecset_constants.3092
ble_else.8673:
	jr $ra
init_dirvecs.3094:
	li	$a1, 4
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	create_dirvecs.3087
	subi	$sp, $sp, 8
	lw	$ra, 4($sp)
	fmove	$f30, $fv
	fmove	$f30, $f0
	li	$a1, 9
	li	$a2, 0
	li	$a3, 0
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	calc_dirvec_rows.3078
	subi	$sp, $sp, 8
	lw	$ra, 4($sp)
	fmove	$f30, $fv
	fmove	$f30, $f0
	li	$a1, 4
	b	init_vecset_constants.3092
add_reflection.3096:
	sw	$a1, 0($sp)
	sw	$a2, 4($sp)
	sw	$f0, 8($sp)
	sw	$f3, 16($sp)
	sw	$f2, 24($sp)
	sw	$f1, 32($sp)
	sw	$ra, 44($sp)
	addi	$sp, $sp, 48
	jal	create_dirvec.3082
	subi	$sp, $sp, 48
	lw	$ra, 44($sp)
	move	$a1, $v0
	sw	$a1, 40($sp)
	sw	$ra, 44($sp)
	addi	$sp, $sp, 48
	jal	d_vec.2745
	subi	$sp, $sp, 48
	lw	$ra, 44($sp)
	move	$a1, $v0
	lw	$f0, 32($sp)
	lw	$f1, 24($sp)
	lw	$f2, 16($sp)
	sw	$ra, 44($sp)
	addi	$sp, $sp, 48
	jal	vecset.2638
	subi	$sp, $sp, 48
	lw	$ra, 44($sp)
	fmove	$f30, $fv
	fmove	$f30, $f0
	lw	$a1, 40($sp)
	sw	$ra, 44($sp)
	addi	$sp, $sp, 48
	jal	setup_dirvec_constants.2874
	subi	$sp, $sp, 48
	lw	$ra, 44($sp)
	fmove	$f30, $fv
	fmove	$f30, $f0
	lil	$a1, min_caml_reflections
	move	$a2, $a0
	addi	$a0, $a0, 16
	lw	$f0, 8($sp)
	fsw	$f0, 8($a2)
	lw	$a3, 40($sp)
	sw	$a3, 4($a2)
	lw	$a3, 4($sp)
	sw	$a3, 0($a2)
	lw	$a3, 0($sp)
	sll	$a3, $a3, 2
	add	$a1, $a1, $a3
	sw	$a2, 0($a1)
	jr $ra
setup_rect_reflection.3103:
	sla	$a1, $a1, 2
	lil	$a3, min_caml_n_reflections
	lw	$a3, 0($a3)
	jal l.6346
	mtc1	$f0, $a25
	sw	$a3, 0($sp)
	sw	$a1, 4($sp)
	sw	$f0, 8($sp)
	move	$a1, $a2
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	o_diffuse.2708
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	fmove	$f0, $fv
	lw	$f1, 8($sp)
	fsub	$f0, $f1, $f0
	lil	$a1, min_caml_light
	flw	$f1, 0($a1)
	sw	$f0, 16($sp)
	fmove	$f0, $f1
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	min_caml_fneg
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	fmove	$f0, $fv
	lil	$a1, min_caml_light
	flw	$f1, 8($a1)
	sw	$f0, 24($sp)
	fmove	$f0, $f1
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	min_caml_fneg
	subi	$sp, $sp, 40
	lw	$ra, 36($sp)
	fmove	$f0, $fv
	lil	$a1, min_caml_light
	flw	$f1, 16($a1)
	sw	$f0, 32($sp)
	fmove	$f0, $f1
	sw	$ra, 44($sp)
	addi	$sp, $sp, 48
	jal	min_caml_fneg
	subi	$sp, $sp, 48
	lw	$ra, 44($sp)
	fmove	$f3, $fv
	fmove	$f3, $f0
	lw	$a1, 4($sp)
	addi	$a2, $a1, 1
	lil	$a3, min_caml_light
	flw	$f1, 0($a3)
	lw	$f0, 16($sp)
	lw	$f2, 32($sp)
	lw	$a3, 0($sp)
	sw	$f3, 40($sp)
	move	$a1, $a3
	sw	$ra, 52($sp)
	addi	$sp, $sp, 56
	jal	add_reflection.3096
	subi	$sp, $sp, 56
	lw	$ra, 52($sp)
	fmove	$f30, $fv
	fmove	$f30, $f0
	lw	$a1, 0($sp)
	addi	$a2, $a1, 1
	lw	$a3, 4($sp)
	addi	$a4, $a3, 2
	lil	$a5, min_caml_light
	flw	$f2, 8($a5)
	lw	$f0, 16($sp)
	lw	$f1, 24($sp)
	lw	$f3, 40($sp)
	move	$a1, $a2
	move	$a2, $a4
	sw	$ra, 52($sp)
	addi	$sp, $sp, 56
	jal	add_reflection.3096
	subi	$sp, $sp, 56
	lw	$ra, 52($sp)
	fmove	$f30, $fv
	fmove	$f30, $f0
	lw	$a1, 0($sp)
	addi	$a2, $a1, 2
	lw	$a3, 4($sp)
	addi	$a3, $a3, 3
	lil	$a4, min_caml_light
	flw	$f3, 16($a4)
	lw	$f0, 16($sp)
	lw	$f1, 24($sp)
	lw	$f2, 32($sp)
	move	$a1, $a2
	move	$a2, $a3
	sw	$ra, 52($sp)
	addi	$sp, $sp, 56
	jal	add_reflection.3096
	subi	$sp, $sp, 56
	lw	$ra, 52($sp)
	fmove	$f30, $fv
	fmove	$f30, $f0
	lil	$a1, min_caml_n_reflections
	lw	$a2, 0($sp)
	addi	$a2, $a2, 3
	sw	$a2, 0($a1)
	jr $ra
setup_surface_reflection.3106:
	sla	$a1, $a1, 2
	addi	$a1, $a1, 1
	lil	$a3, min_caml_n_reflections
	lw	$a3, 0($a3)
	jal l.6346
	mtc1	$f0, $a25
	sw	$a1, 0($sp)
	sw	$a3, 4($sp)
	sw	$a2, 8($sp)
	sw	$f0, 16($sp)
	move	$a1, $a2
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	o_diffuse.2708
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	fmove	$f0, $fv
	lw	$f1, 16($sp)
	fsub	$f0, $f1, $f0
	lil	$a1, min_caml_light
	lw	$a2, 8($sp)
	sw	$f0, 24($sp)
	sw	$a1, 32($sp)
	move	$a1, $a2
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	o_param_abc.2700
	subi	$sp, $sp, 40
	lw	$ra, 36($sp)
	move	$a2, $v0
	move	$a2, $a1
	lw	$a1, 32($sp)
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	veciprod.2659
	subi	$sp, $sp, 40
	lw	$ra, 36($sp)
	fmove	$f0, $fv
	jal l.6470
	mtc1	$f1, $a25
	lw	$a1, 8($sp)
	sw	$f0, 40($sp)
	sw	$f1, 48($sp)
	sw	$ra, 60($sp)
	addi	$sp, $sp, 64
	jal	o_param_a.2694
	subi	$sp, $sp, 64
	lw	$ra, 60($sp)
	fmove	$f0, $fv
	lw	$f1, 48($sp)
	fmul	$f0, $f1, $f0
	lw	$f1, 40($sp)
	fmul	$f0, $f0, $f1
	lil	$a1, min_caml_light
	flw	$f2, 0($a1)
	fsub	$f0, $f0, $f2
	jal l.6470
	mtc1	$f2, $a25
	lw	$a1, 8($sp)
	sw	$f0, 56($sp)
	sw	$f2, 64($sp)
	sw	$ra, 76($sp)
	addi	$sp, $sp, 80
	jal	o_param_b.2696
	subi	$sp, $sp, 80
	lw	$ra, 76($sp)
	fmove	$f0, $fv
	lw	$f1, 64($sp)
	fmul	$f0, $f1, $f0
	lw	$f1, 40($sp)
	fmul	$f0, $f0, $f1
	lil	$a1, min_caml_light
	flw	$f2, 8($a1)
	fsub	$f0, $f0, $f2
	jal l.6470
	mtc1	$f2, $a25
	lw	$a1, 8($sp)
	sw	$f0, 72($sp)
	sw	$f2, 80($sp)
	sw	$ra, 92($sp)
	addi	$sp, $sp, 96
	jal	o_param_c.2698
	subi	$sp, $sp, 96
	lw	$ra, 92($sp)
	fmove	$f0, $fv
	lw	$f1, 80($sp)
	fmul	$f0, $f1, $f0
	lw	$f1, 40($sp)
	fmul	$f0, $f0, $f1
	lil	$a1, min_caml_light
	flw	$f1, 16($a1)
	fsub	$f3, $f0, $f1
	lw	$f0, 24($sp)
	lw	$f1, 56($sp)
	lw	$f2, 72($sp)
	lw	$a1, 4($sp)
	lw	$a2, 0($sp)
	sw	$ra, 92($sp)
	addi	$sp, $sp, 96
	jal	add_reflection.3096
	subi	$sp, $sp, 96
	lw	$ra, 92($sp)
	fmove	$f30, $fv
	fmove	$f30, $f0
	lil	$a1, min_caml_n_reflections
	lw	$a2, 4($sp)
	addi	$a2, $a2, 1
	sw	$a2, 0($a1)
	jr $ra
setup_reflections.3109:
	li	$a2, 0
	ble	$a1, $a2, ble_else.8680
	lil	$a2, min_caml_objects
	sll	$a3, $a1, 2
	add	$a2, $a2, $a3
	lw	$a2, 0($a2)
	sw	$a1, 0($sp)
	sw	$a2, 4($sp)
	move	$a1, $a2
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	o_reflectiontype.2688
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	move	$a1, $v0
	li	$a2, 2
	bne	$a1, $a2, beq_else.8681
	lw	$a1, 4($sp)
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	o_diffuse.2708
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	fmove	$f0, $fv
	jal l.6346
	mtc1	$f1, $a25
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	min_caml_fless
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	move	$a1, $v0
	li	$a2, 0
	bne	$a1, $a2, beq_else.8682
	jr $ra
beq_else.8682:
	lw	$a1, 4($sp)
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	o_form.2686
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	move	$a1, $v0
	li	$a2, 1
	bne	$a1, $a2, beq_else.8684
	lw	$a1, 0($sp)
	lw	$a2, 4($sp)
	b	setup_rect_reflection.3103
beq_else.8684:
	li	$a2, 2
	bne	$a1, $a2, beq_else.8685
	lw	$a1, 0($sp)
	lw	$a2, 4($sp)
	b	setup_surface_reflection.3106
beq_else.8685:
	jr $ra
beq_else.8681:
	jr $ra
ble_else.8680:
	jr $ra
rt.3111:
	lil	$a3, min_caml_image_size
	sw	$a1, 0($a3)
	lil	$a3, min_caml_image_size
	sw	$a2, 4($a3)
	lil	$a3, min_caml_image_center
	sra	$a4, $a1, 1
	sw	$a4, 0($a3)
	lil	$a3, min_caml_image_center
	sra	$a2, $a2, 1
	sw	$a2, 4($a3)
	lil	$a2, min_caml_scan_pitch
	jal l.6936
	mtc1	$f0, $a25
	sw	$a2, 0($sp)
	sw	$f0, 8($sp)
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	min_caml_float_of_int
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	fmove	$f0, $fv
	finv	$f0, $f0
	lw	$f1, 8($sp)
	fmul	$f0, $f1, $f0
	lw	$a1, 0($sp)
	fsw	$f0, 0($a1)
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	create_pixelline.3058
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	move	$a1, $v0
	sw	$a1, 16($sp)
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	create_pixelline.3058
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	move	$a1, $v0
	sw	$a1, 20($sp)
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	create_pixelline.3058
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	move	$a1, $v0
	sw	$a1, 24($sp)
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	read_parameter.2776
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	fmove	$f30, $fv
	fmove	$f30, $f0
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	write_ppm_header.3019
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	fmove	$f30, $fv
	fmove	$f30, $f0
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	init_dirvecs.3094
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	fmove	$f30, $fv
	fmove	$f30, $f0
	lil	$a1, min_caml_light_dirvec
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	d_vec.2745
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	move	$a1, $v0
	lil	$a2, min_caml_light
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	veccpy.2648
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	fmove	$f30, $fv
	fmove	$f30, $f0
	lil	$a1, min_caml_light_dirvec
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	setup_dirvec_constants.2874
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	fmove	$f30, $fv
	fmove	$f30, $f0
	lil	$a1, min_caml_n_objects
	lw	$a1, 0($a1)
	subi	$a1, $a1, 1
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	setup_reflections.3109
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	fmove	$f30, $fv
	fmove	$f30, $f0
	li	$a2, 0
	li	$a3, 0
	lw	$a1, 20($sp)
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	pretrace_line.3035
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	fmove	$f30, $fv
	fmove	$f30, $f0
	li	$a1, 0
	li	$a5, 2
	lw	$a2, 16($sp)
	lw	$a3, 20($sp)
	lw	$a4, 24($sp)
	b	scan_line.3045
exit:
	hlt
_min_caml_start: # main entry point
   # main program start
	li	$a1, 512
	li	$a2, 512
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	rt.3111
	subi	$sp, $sp, 8
	lw	$ra, 4($sp)
	fmove	$f30, $fv
	fmove	$f30, $f0
	li	$a1, 0
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	min_caml_print_int
	subi	$sp, $sp, 8
	lw	$ra, 4($sp)
	move	$a0, $v0
	j exit   # main program end
