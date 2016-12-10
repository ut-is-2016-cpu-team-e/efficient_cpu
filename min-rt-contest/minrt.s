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
_min_caml_start: #entry_point
_global_variable n_objects:
	li	$a0, 0
	li	$a1, 0
	sw	$a0, 0($a1)
_global_variable dummy:
	mtc1	$f0, $zero
	li	$a1, 4
_global_variable Tt1:
	li	$a0, 4
	li	$a1, 0
	sw	$a1, 0($a0)
	li	$a1, 0
	sw	$a1, 4($a0)
	li	$a1, 0
	sw	$a1, 8($a0)
	li	$a1, 0
	sw	$a1, 12($a0)
	li	$a1, 4
	sw	$a1, 16($a0)
	li	$a1, 4
	sw	$a1, 20($a0)
	li	$a1, 0
	sw	$a1, 24($a0)
	li	$a1, 4
	sw	$a1, 28($a0)
	li	$a1, 4
	sw	$a1, 32($a0)
	li	$a1, 4
	sw	$a1, 36($a0)
	li	$a1, 4
	sw	$a1, 40($a0)
_global_variable objects:
	li	$a0, 4
	li	$a1, 48
	sw	$a0, 0($a1)
	sw	$a0, 4($a1)
	sw	$a0, 8($a1)
	sw	$a0, 12($a1)
	sw	$a0, 16($a1)
	sw	$a0, 20($a1)
	sw	$a0, 24($a1)
	sw	$a0, 28($a1)
	sw	$a0, 32($a1)
	sw	$a0, 36($a1)
	sw	$a0, 40($a1)
	sw	$a0, 44($a1)
	sw	$a0, 48($a1)
	sw	$a0, 52($a1)
	sw	$a0, 56($a1)
	sw	$a0, 60($a1)
	sw	$a0, 64($a1)
	sw	$a0, 68($a1)
	sw	$a0, 72($a1)
	sw	$a0, 76($a1)
	sw	$a0, 80($a1)
	sw	$a0, 84($a1)
	sw	$a0, 88($a1)
	sw	$a0, 92($a1)
	sw	$a0, 96($a1)
	sw	$a0, 100($a1)
	sw	$a0, 104($a1)
	sw	$a0, 108($a1)
	sw	$a0, 112($a1)
	sw	$a0, 116($a1)
	sw	$a0, 120($a1)
	sw	$a0, 124($a1)
	sw	$a0, 128($a1)
	sw	$a0, 132($a1)
	sw	$a0, 136($a1)
	sw	$a0, 140($a1)
	sw	$a0, 144($a1)
	sw	$a0, 148($a1)
	sw	$a0, 152($a1)
	sw	$a0, 156($a1)
	sw	$a0, 160($a1)
	sw	$a0, 164($a1)
	sw	$a0, 168($a1)
	sw	$a0, 172($a1)
	sw	$a0, 176($a1)
	sw	$a0, 180($a1)
	sw	$a0, 184($a1)
	sw	$a0, 188($a1)
	sw	$a0, 192($a1)
	sw	$a0, 196($a1)
	sw	$a0, 200($a1)
	sw	$a0, 204($a1)
	sw	$a0, 208($a1)
	sw	$a0, 212($a1)
	sw	$a0, 216($a1)
	sw	$a0, 220($a1)
	sw	$a0, 224($a1)
	sw	$a0, 228($a1)
	sw	$a0, 232($a1)
	sw	$a0, 236($a1)
_global_variable screen:
	mtc1	$f0, $zero
	li	$a1, 288
	fsw	$f0, 0($a1)
	fsw	$f0, 4($a1)
	fsw	$f0, 8($a1)
_global_variable viewpoint:
	mtc1	$f0, $zero
	li	$a1, 300
	fsw	$f0, 0($a1)
	fsw	$f0, 4($a1)
	fsw	$f0, 8($a1)
_global_variable light:
	mtc1	$f0, $zero
	li	$a1, 312
	fsw	$f0, 0($a1)
	fsw	$f0, 4($a1)
	fsw	$f0, 8($a1)
_global_variable beam:
	li	$v0, 17279
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f0, $v0
	li	$a1, 324
	fsw	$f0, 0($a1)
_global_variable Ta2:
	li	$a0, -1
	li	$a1, 328
	sw	$a0, 0($a1)
_global_variable and_net:
	li	$a0, 328
	li	$a1, 332
	sw	$a0, 0($a1)
	sw	$a0, 4($a1)
	sw	$a0, 8($a1)
	sw	$a0, 12($a1)
	sw	$a0, 16($a1)
	sw	$a0, 20($a1)
	sw	$a0, 24($a1)
	sw	$a0, 28($a1)
	sw	$a0, 32($a1)
	sw	$a0, 36($a1)
	sw	$a0, 40($a1)
	sw	$a0, 44($a1)
	sw	$a0, 48($a1)
	sw	$a0, 52($a1)
	sw	$a0, 56($a1)
	sw	$a0, 60($a1)
	sw	$a0, 64($a1)
	sw	$a0, 68($a1)
	sw	$a0, 72($a1)
	sw	$a0, 76($a1)
	sw	$a0, 80($a1)
	sw	$a0, 84($a1)
	sw	$a0, 88($a1)
	sw	$a0, 92($a1)
	sw	$a0, 96($a1)
	sw	$a0, 100($a1)
	sw	$a0, 104($a1)
	sw	$a0, 108($a1)
	sw	$a0, 112($a1)
	sw	$a0, 116($a1)
	sw	$a0, 120($a1)
	sw	$a0, 124($a1)
	sw	$a0, 128($a1)
	sw	$a0, 132($a1)
	sw	$a0, 136($a1)
	sw	$a0, 140($a1)
	sw	$a0, 144($a1)
	sw	$a0, 148($a1)
	sw	$a0, 152($a1)
	sw	$a0, 156($a1)
	sw	$a0, 160($a1)
	sw	$a0, 164($a1)
	sw	$a0, 168($a1)
	sw	$a0, 172($a1)
	sw	$a0, 176($a1)
	sw	$a0, 180($a1)
	sw	$a0, 184($a1)
	sw	$a0, 188($a1)
	sw	$a0, 192($a1)
	sw	$a0, 196($a1)
_global_variable Ta3:
	li	$a1, 332
	lw	$a0, 0($a1)
	li	$a1, 532
	sw	$a0, 0($a1)
_global_variable or_net:
	li	$a0, 532
	li	$a1, 536
	sw	$a0, 0($a1)
_global_variable solver_dist:
	mtc1	$f0, $zero
	li	$a1, 540
	fsw	$f0, 0($a1)
_global_variable intsec_rectside:
	li	$a0, 0
	li	$a1, 544
	sw	$a0, 0($a1)
_global_variable tmin:
	li	$v0, 20078
	sll	$v0, $v0, 16
	ori	$v0, $v0, 27432
	mtc1	$f0, $v0
	li	$a1, 548
	fsw	$f0, 0($a1)
_global_variable intersection_point:
	mtc1	$f0, $zero
	li	$a1, 552
	fsw	$f0, 0($a1)
	fsw	$f0, 4($a1)
	fsw	$f0, 8($a1)
_global_variable intersected_object_id:
	li	$a0, 0
	li	$a1, 564
	sw	$a0, 0($a1)
_global_variable nvector:
	mtc1	$f0, $zero
	li	$a1, 568
	fsw	$f0, 0($a1)
	fsw	$f0, 4($a1)
	fsw	$f0, 8($a1)
_global_variable texture_color:
	mtc1	$f0, $zero
	li	$a1, 580
	fsw	$f0, 0($a1)
	fsw	$f0, 4($a1)
	fsw	$f0, 8($a1)
_global_variable diffuse_ray:
	mtc1	$f0, $zero
	li	$a1, 592
	fsw	$f0, 0($a1)
	fsw	$f0, 4($a1)
	fsw	$f0, 8($a1)
_global_variable rgb:
	mtc1	$f0, $zero
	li	$a1, 604
	fsw	$f0, 0($a1)
	fsw	$f0, 4($a1)
	fsw	$f0, 8($a1)
_global_variable image_size:
	li	$a0, 0
	li	$a1, 616
	sw	$a0, 0($a1)
	sw	$a0, 4($a1)
_global_variable image_center:
	li	$a0, 0
	li	$a1, 624
	sw	$a0, 0($a1)
	sw	$a0, 4($a1)
_global_variable scan_pitch:
	mtc1	$f0, $zero
	li	$a1, 632
	fsw	$f0, 0($a1)
_global_variable startp:
	mtc1	$f0, $zero
	li	$a1, 636
	fsw	$f0, 0($a1)
	fsw	$f0, 4($a1)
	fsw	$f0, 8($a1)
_global_variable startp_fast:
	mtc1	$f0, $zero
	li	$a1, 648
	fsw	$f0, 0($a1)
	fsw	$f0, 4($a1)
	fsw	$f0, 8($a1)
_global_variable screenx_dir:
	mtc1	$f0, $zero
	li	$a1, 660
	fsw	$f0, 0($a1)
	fsw	$f0, 4($a1)
	fsw	$f0, 8($a1)
_global_variable screeny_dir:
	mtc1	$f0, $zero
	li	$a1, 672
	fsw	$f0, 0($a1)
	fsw	$f0, 4($a1)
	fsw	$f0, 8($a1)
_global_variable screenz_dir:
	mtc1	$f0, $zero
	li	$a1, 684
	fsw	$f0, 0($a1)
	fsw	$f0, 4($a1)
	fsw	$f0, 8($a1)
_global_variable ptrace_dirvec:
	mtc1	$f0, $zero
	li	$a1, 696
	fsw	$f0, 0($a1)
	fsw	$f0, 4($a1)
	fsw	$f0, 8($a1)
_global_variable dummyf:
	mtc1	$f0, $zero
	li	$a1, 708
_global_variable dummyff:
	li	$a0, 708
	li	$a1, 708
_global_variable Tt4:
	li	$a0, 708
	li	$a1, 708
	sw	$a1, 0($a0)
	li	$a1, 708
	sw	$a1, 4($a0)
_global_variable dummy_vs:
	li	$a0, 708
	li	$a1, 716
_global_variable dirvecs:
	li	$a0, 716
	li	$a1, 716
	sw	$a0, 0($a1)
	sw	$a0, 4($a1)
	sw	$a0, 8($a1)
	sw	$a0, 12($a1)
	sw	$a0, 16($a1)
_global_variable dummyf2:
	mtc1	$f0, $zero
	li	$a1, 736
_global_variable v3:
	mtc1	$f0, $zero
	li	$a1, 736
	fsw	$f0, 0($a1)
	fsw	$f0, 4($a1)
	fsw	$f0, 8($a1)
_global_variable consts:
	li	$a0, 736
	li	$a1, 748
	sw	$a0, 0($a1)
	sw	$a0, 4($a1)
	sw	$a0, 8($a1)
	sw	$a0, 12($a1)
	sw	$a0, 16($a1)
	sw	$a0, 20($a1)
	sw	$a0, 24($a1)
	sw	$a0, 28($a1)
	sw	$a0, 32($a1)
	sw	$a0, 36($a1)
	sw	$a0, 40($a1)
	sw	$a0, 44($a1)
	sw	$a0, 48($a1)
	sw	$a0, 52($a1)
	sw	$a0, 56($a1)
	sw	$a0, 60($a1)
	sw	$a0, 64($a1)
	sw	$a0, 68($a1)
	sw	$a0, 72($a1)
	sw	$a0, 76($a1)
	sw	$a0, 80($a1)
	sw	$a0, 84($a1)
	sw	$a0, 88($a1)
	sw	$a0, 92($a1)
	sw	$a0, 96($a1)
	sw	$a0, 100($a1)
	sw	$a0, 104($a1)
	sw	$a0, 108($a1)
	sw	$a0, 112($a1)
	sw	$a0, 116($a1)
	sw	$a0, 120($a1)
	sw	$a0, 124($a1)
	sw	$a0, 128($a1)
	sw	$a0, 132($a1)
	sw	$a0, 136($a1)
	sw	$a0, 140($a1)
	sw	$a0, 144($a1)
	sw	$a0, 148($a1)
	sw	$a0, 152($a1)
	sw	$a0, 156($a1)
	sw	$a0, 160($a1)
	sw	$a0, 164($a1)
	sw	$a0, 168($a1)
	sw	$a0, 172($a1)
	sw	$a0, 176($a1)
	sw	$a0, 180($a1)
	sw	$a0, 184($a1)
	sw	$a0, 188($a1)
	sw	$a0, 192($a1)
	sw	$a0, 196($a1)
	sw	$a0, 200($a1)
	sw	$a0, 204($a1)
	sw	$a0, 208($a1)
	sw	$a0, 212($a1)
	sw	$a0, 216($a1)
	sw	$a0, 220($a1)
	sw	$a0, 224($a1)
	sw	$a0, 228($a1)
	sw	$a0, 232($a1)
	sw	$a0, 236($a1)
_global_variable light_dirvec:
	li	$a0, 988
	li	$a1, 736
	sw	$a1, 0($a0)
	li	$a1, 748
	sw	$a1, 4($a0)
_global_variable dummyf3:
	mtc1	$f0, $zero
	li	$a1, 996
_global_variable dummyff3:
	li	$a0, 996
	li	$a1, 996
_global_variable dummydv:
	li	$a0, 996
	li	$a1, 996
	sw	$a1, 0($a0)
	li	$a1, 996
	sw	$a1, 4($a0)
_global_variable Tt5:
	li	$a0, 1004
	li	$a1, 0
	sw	$a1, 0($a0)
	li	$a1, 996
	sw	$a1, 4($a0)
	mtc1	$f0, $zero
	fsw	$f0, 8($a0)
_global_variable reflections:
	li	$a0, 1004
	li	$a1, 1016
	sw	$a0, 0($a1)
	sw	$a0, 4($a1)
	sw	$a0, 8($a1)
	sw	$a0, 12($a1)
	sw	$a0, 16($a1)
	sw	$a0, 20($a1)
	sw	$a0, 24($a1)
	sw	$a0, 28($a1)
	sw	$a0, 32($a1)
	sw	$a0, 36($a1)
	sw	$a0, 40($a1)
	sw	$a0, 44($a1)
	sw	$a0, 48($a1)
	sw	$a0, 52($a1)
	sw	$a0, 56($a1)
	sw	$a0, 60($a1)
	sw	$a0, 64($a1)
	sw	$a0, 68($a1)
	sw	$a0, 72($a1)
	sw	$a0, 76($a1)
	sw	$a0, 80($a1)
	sw	$a0, 84($a1)
	sw	$a0, 88($a1)
	sw	$a0, 92($a1)
	sw	$a0, 96($a1)
	sw	$a0, 100($a1)
	sw	$a0, 104($a1)
	sw	$a0, 108($a1)
	sw	$a0, 112($a1)
	sw	$a0, 116($a1)
	sw	$a0, 120($a1)
	sw	$a0, 124($a1)
	sw	$a0, 128($a1)
	sw	$a0, 132($a1)
	sw	$a0, 136($a1)
	sw	$a0, 140($a1)
	sw	$a0, 144($a1)
	sw	$a0, 148($a1)
	sw	$a0, 152($a1)
	sw	$a0, 156($a1)
	sw	$a0, 160($a1)
	sw	$a0, 164($a1)
	sw	$a0, 168($a1)
	sw	$a0, 172($a1)
	sw	$a0, 176($a1)
	sw	$a0, 180($a1)
	sw	$a0, 184($a1)
	sw	$a0, 188($a1)
	sw	$a0, 192($a1)
	sw	$a0, 196($a1)
	sw	$a0, 200($a1)
	sw	$a0, 204($a1)
	sw	$a0, 208($a1)
	sw	$a0, 212($a1)
	sw	$a0, 216($a1)
	sw	$a0, 220($a1)
	sw	$a0, 224($a1)
	sw	$a0, 228($a1)
	sw	$a0, 232($a1)
	sw	$a0, 236($a1)
	sw	$a0, 240($a1)
	sw	$a0, 244($a1)
	sw	$a0, 248($a1)
	sw	$a0, 252($a1)
	sw	$a0, 256($a1)
	sw	$a0, 260($a1)
	sw	$a0, 264($a1)
	sw	$a0, 268($a1)
	sw	$a0, 272($a1)
	sw	$a0, 276($a1)
	sw	$a0, 280($a1)
	sw	$a0, 284($a1)
	sw	$a0, 288($a1)
	sw	$a0, 292($a1)
	sw	$a0, 296($a1)
	sw	$a0, 300($a1)
	sw	$a0, 304($a1)
	sw	$a0, 308($a1)
	sw	$a0, 312($a1)
	sw	$a0, 316($a1)
	sw	$a0, 320($a1)
	sw	$a0, 324($a1)
	sw	$a0, 328($a1)
	sw	$a0, 332($a1)
	sw	$a0, 336($a1)
	sw	$a0, 340($a1)
	sw	$a0, 344($a1)
	sw	$a0, 348($a1)
	sw	$a0, 352($a1)
	sw	$a0, 356($a1)
	sw	$a0, 360($a1)
	sw	$a0, 364($a1)
	sw	$a0, 368($a1)
	sw	$a0, 372($a1)
	sw	$a0, 376($a1)
	sw	$a0, 380($a1)
	sw	$a0, 384($a1)
	sw	$a0, 388($a1)
	sw	$a0, 392($a1)
	sw	$a0, 396($a1)
	sw	$a0, 400($a1)
	sw	$a0, 404($a1)
	sw	$a0, 408($a1)
	sw	$a0, 412($a1)
	sw	$a0, 416($a1)
	sw	$a0, 420($a1)
	sw	$a0, 424($a1)
	sw	$a0, 428($a1)
	sw	$a0, 432($a1)
	sw	$a0, 436($a1)
	sw	$a0, 440($a1)
	sw	$a0, 444($a1)
	sw	$a0, 448($a1)
	sw	$a0, 452($a1)
	sw	$a0, 456($a1)
	sw	$a0, 460($a1)
	sw	$a0, 464($a1)
	sw	$a0, 468($a1)
	sw	$a0, 472($a1)
	sw	$a0, 476($a1)
	sw	$a0, 480($a1)
	sw	$a0, 484($a1)
	sw	$a0, 488($a1)
	sw	$a0, 492($a1)
	sw	$a0, 496($a1)
	sw	$a0, 500($a1)
	sw	$a0, 504($a1)
	sw	$a0, 508($a1)
	sw	$a0, 512($a1)
	sw	$a0, 516($a1)
	sw	$a0, 520($a1)
	sw	$a0, 524($a1)
	sw	$a0, 528($a1)
	sw	$a0, 532($a1)
	sw	$a0, 536($a1)
	sw	$a0, 540($a1)
	sw	$a0, 544($a1)
	sw	$a0, 548($a1)
	sw	$a0, 552($a1)
	sw	$a0, 556($a1)
	sw	$a0, 560($a1)
	sw	$a0, 564($a1)
	sw	$a0, 568($a1)
	sw	$a0, 572($a1)
	sw	$a0, 576($a1)
	sw	$a0, 580($a1)
	sw	$a0, 584($a1)
	sw	$a0, 588($a1)
	sw	$a0, 592($a1)
	sw	$a0, 596($a1)
	sw	$a0, 600($a1)
	sw	$a0, 604($a1)
	sw	$a0, 608($a1)
	sw	$a0, 612($a1)
	sw	$a0, 616($a1)
	sw	$a0, 620($a1)
	sw	$a0, 624($a1)
	sw	$a0, 628($a1)
	sw	$a0, 632($a1)
	sw	$a0, 636($a1)
	sw	$a0, 640($a1)
	sw	$a0, 644($a1)
	sw	$a0, 648($a1)
	sw	$a0, 652($a1)
	sw	$a0, 656($a1)
	sw	$a0, 660($a1)
	sw	$a0, 664($a1)
	sw	$a0, 668($a1)
	sw	$a0, 672($a1)
	sw	$a0, 676($a1)
	sw	$a0, 680($a1)
	sw	$a0, 684($a1)
	sw	$a0, 688($a1)
	sw	$a0, 692($a1)
	sw	$a0, 696($a1)
	sw	$a0, 700($a1)
	sw	$a0, 704($a1)
	sw	$a0, 708($a1)
	sw	$a0, 712($a1)
	sw	$a0, 716($a1)
_global_variable n_reflections:
	li	$a0, 0
	li	$a1, 1736
	sw	$a0, 0($a1)
	sub	$zero, $zero, $zero
	li	$fp, 1740
	j _min_caml_start2
countn.2621:
	blt	$a0, $a1, bge_else.20451
	sub	$a0, $a0, $a1
	addi	$a2, $a2, 1
	j	countn.2621
bge_else.20451:
	move	$v0, $a2
	jr	$ra
mymul.2625:
	li	$a3, 0
	bne	$a0, $a3, beq_else.20452
	move	$v0, $a2
	jr	$ra
beq_else.20452:
	subi	$a0, $a0, 1
	add	$a2, $a2, $a1
	j	mymul.2625
read_nth_object.2765:
	sw	$a0, 0($sp)
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	min_caml_read_int
	subi	$sp, $sp, 8
	lw	$ra, 4($sp)
	move	$a0, $v0
	li	$a1, -1
	bne	$a0, $a1, beq_else.20453
	li	$v0, 0
	jr	$ra
beq_else.20453:
	sw	$a0, 4($sp)
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	min_caml_read_int
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	move	$a0, $v0
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
	li	$a1, 3
	mtc1	$f0, $zero
	sw	$a0, 16($sp)
	move	$a0, $a1
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	min_caml_create_float_array
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	move	$a0, $v0
	sw	$a0, 20($sp)
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	min_caml_read_float
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	fmove	$f0, $fv
	lw	$a0, 20($sp)
	fsw	$f0, 0($a0)
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	min_caml_read_float
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	fmove	$f0, $fv
	lw	$a0, 20($sp)
	fsw	$f0, 4($a0)
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	min_caml_read_float
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	fmove	$f0, $fv
	lw	$a0, 20($sp)
	fsw	$f0, 8($a0)
	li	$a1, 3
	mtc1	$f0, $zero
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
	mtc1	$f0, $zero
	fsw	$f0, 32($sp)
	sw	$ra, 44($sp)
	addi	$sp, $sp, 48
	jal	min_caml_read_float
	subi	$sp, $sp, 48
	lw	$ra, 44($sp)
	fmove	$f0, $fv
	flw	$f1, 32($sp)
	fblt	$f0, $f1, fbge_else.20455
	li	$a0, 0
	j	fbge_cont.20456
fbge_else.20455:
	li	$a0, 1
fbge_cont.20456:
	li	$a1, 2
	mtc1	$f0, $zero
	sw	$a0, 40($sp)
	move	$a0, $a1
	sw	$ra, 44($sp)
	addi	$sp, $sp, 48
	jal	min_caml_create_float_array
	subi	$sp, $sp, 48
	lw	$ra, 44($sp)
	move	$a0, $v0
	sw	$a0, 44($sp)
	sw	$ra, 52($sp)
	addi	$sp, $sp, 56
	jal	min_caml_read_float
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
	lw	$a0, 44($sp)
	fsw	$f0, 4($a0)
	li	$a1, 3
	mtc1	$f0, $zero
	move	$a0, $a1
	sw	$ra, 52($sp)
	addi	$sp, $sp, 56
	jal	min_caml_create_float_array
	subi	$sp, $sp, 56
	lw	$ra, 52($sp)
	move	$a0, $v0
	sw	$a0, 48($sp)
	sw	$ra, 52($sp)
	addi	$sp, $sp, 56
	jal	min_caml_read_float
	subi	$sp, $sp, 56
	lw	$ra, 52($sp)
	fmove	$f0, $fv
	lw	$a0, 48($sp)
	fsw	$f0, 0($a0)
	sw	$ra, 52($sp)
	addi	$sp, $sp, 56
	jal	min_caml_read_float
	subi	$sp, $sp, 56
	lw	$ra, 52($sp)
	fmove	$f0, $fv
	lw	$a0, 48($sp)
	fsw	$f0, 4($a0)
	sw	$ra, 52($sp)
	addi	$sp, $sp, 56
	jal	min_caml_read_float
	subi	$sp, $sp, 56
	lw	$ra, 52($sp)
	fmove	$f0, $fv
	lw	$a0, 48($sp)
	fsw	$f0, 8($a0)
	li	$a1, 3
	mtc1	$f0, $zero
	move	$a0, $a1
	sw	$ra, 52($sp)
	addi	$sp, $sp, 56
	jal	min_caml_create_float_array
	subi	$sp, $sp, 56
	lw	$ra, 52($sp)
	move	$a0, $v0
	li	$a1, 0
	lw	$a2, 16($sp)
	bne	$a2, $a1, bne_else.20457
	j	bne_cont.20458
bne_else.20457:
	sw	$a0, 52($sp)
	sw	$ra, 60($sp)
	addi	$sp, $sp, 64
	jal	min_caml_read_float
	subi	$sp, $sp, 64
	lw	$ra, 60($sp)
	fmove	$f0, $fv
	li	$v0, 15502
	sll	$v0, $v0, 16
	ori	$v0, $v0, 64053
	mtc1	$f1, $v0
	fmul	$f0, $f0, $f1
	lw	$a0, 52($sp)
	fsw	$f0, 0($a0)
	sw	$ra, 60($sp)
	addi	$sp, $sp, 64
	jal	min_caml_read_float
	subi	$sp, $sp, 64
	lw	$ra, 60($sp)
	fmove	$f0, $fv
	li	$v0, 15502
	sll	$v0, $v0, 16
	ori	$v0, $v0, 64053
	mtc1	$f1, $v0
	fmul	$f0, $f0, $f1
	lw	$a0, 52($sp)
	fsw	$f0, 4($a0)
	sw	$ra, 60($sp)
	addi	$sp, $sp, 64
	jal	min_caml_read_float
	subi	$sp, $sp, 64
	lw	$ra, 60($sp)
	fmove	$f0, $fv
	li	$v0, 15502
	sll	$v0, $v0, 16
	ori	$v0, $v0, 64053
	mtc1	$f1, $v0
	fmul	$f0, $f0, $f1
	lw	$a0, 52($sp)
	fsw	$f0, 8($a0)
bne_cont.20458:
	li	$a1, 2
	lw	$a2, 8($sp)
	bne	$a2, $a1, bne_else.20459
	li	$a1, 1
	j	bne_cont.20460
bne_else.20459:
	lw	$a1, 40($sp)
bne_cont.20460:
	li	$a3, 4
	mtc1	$f0, $zero
	sw	$a1, 56($sp)
	sw	$a0, 52($sp)
	move	$a0, $a3
	sw	$ra, 60($sp)
	addi	$sp, $sp, 64
	jal	min_caml_create_float_array
	subi	$sp, $sp, 64
	lw	$ra, 60($sp)
	move	$a0, $v0
	move	$a1, $fp
	addi	$fp, $fp, 48
	sw	$a0, 40($a1)
	lw	$a0, 52($sp)
	sw	$a0, 36($a1)
	lw	$a2, 48($sp)
	sw	$a2, 32($a1)
	lw	$a2, 44($sp)
	sw	$a2, 28($a1)
	lw	$a2, 56($sp)
	sw	$a2, 24($a1)
	lw	$a2, 24($sp)
	sw	$a2, 20($a1)
	lw	$a2, 20($sp)
	sw	$a2, 16($a1)
	lw	$a3, 16($sp)
	sw	$a3, 12($a1)
	lw	$a4, 12($sp)
	sw	$a4, 8($a1)
	lw	$a4, 8($sp)
	sw	$a4, 4($a1)
	lw	$a5, 4($sp)
	sw	$a5, 0($a1)
	li	$a5, 48
	lw	$a6, 0($sp)
	sll	$a6, $a6, 2
	add	$a6, $a5, $a6
	sw	$a1, 0($a6)
	li	$a1, 3
	bne	$a4, $a1, bne_else.20461
	flw	$f0, 0($a2)
	mtc1	$f1, $zero
	fbne	$f0, $f1, fbne_else.20463
	mtc1	$f0, $zero
	j	fbne_cont.20464
fbne_else.20463:
	mtc1	$f1, $zero
	fbne	$f0, $f1, fbne_else.20465
	mtc1	$f1, $zero
	j	fbne_cont.20466
fbne_else.20465:
	mtc1	$f1, $zero
	fblt	$f1, $f0, fbge_else.20467
	li	$v0, -16512
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	j	fbge_cont.20468
fbge_else.20467:
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
fbge_cont.20468:
fbne_cont.20466:
	fmul	$f0, $f0, $f0
	finv	$f0, $f0
	fmul	$f0, $f1, $f0
fbne_cont.20464:
	fsw	$f0, 0($a2)
	flw	$f0, 4($a2)
	mtc1	$f1, $zero
	fbne	$f0, $f1, fbne_else.20469
	mtc1	$f0, $zero
	j	fbne_cont.20470
fbne_else.20469:
	mtc1	$f1, $zero
	fbne	$f0, $f1, fbne_else.20471
	mtc1	$f1, $zero
	j	fbne_cont.20472
fbne_else.20471:
	mtc1	$f1, $zero
	fblt	$f1, $f0, fbge_else.20473
	li	$v0, -16512
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	j	fbge_cont.20474
fbge_else.20473:
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
fbge_cont.20474:
fbne_cont.20472:
	fmul	$f0, $f0, $f0
	finv	$f0, $f0
	fmul	$f0, $f1, $f0
fbne_cont.20470:
	fsw	$f0, 4($a2)
	flw	$f0, 8($a2)
	mtc1	$f1, $zero
	fbne	$f0, $f1, fbne_else.20475
	mtc1	$f0, $zero
	j	fbne_cont.20476
fbne_else.20475:
	mtc1	$f1, $zero
	fbne	$f0, $f1, fbne_else.20477
	mtc1	$f1, $zero
	j	fbne_cont.20478
fbne_else.20477:
	mtc1	$f1, $zero
	fblt	$f1, $f0, fbge_else.20479
	li	$v0, -16512
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	j	fbge_cont.20480
fbge_else.20479:
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
fbge_cont.20480:
fbne_cont.20478:
	fmul	$f0, $f0, $f0
	finv	$f0, $f0
	fmul	$f0, $f1, $f0
fbne_cont.20476:
	fsw	$f0, 8($a2)
	j	bne_cont.20462
bne_else.20461:
	li	$a1, 2
	bne	$a4, $a1, bne_else.20481
	li	$a1, 0
	lw	$a4, 40($sp)
	bne	$a4, $a1, bne_else.20483
	li	$a1, 1
	j	bne_cont.20484
bne_else.20483:
	li	$a1, 0
bne_cont.20484:
	flw	$f0, 0($a2)
	fmul	$f0, $f0, $f0
	flw	$f1, 4($a2)
	fmul	$f1, $f1, $f1
	fadd	$f0, $f0, $f1
	flw	$f1, 8($a2)
	fmul	$f1, $f1, $f1
	fadd	$f0, $f0, $f1
	sqrt	$f0, $f0
	mtc1	$f1, $zero
	fbne	$f0, $f1, fbne_else.20485
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f0, $v0
	j	fbne_cont.20486
fbne_else.20485:
	li	$a4, 0
	bne	$a1, $a4, bne_else.20487
	finv	$f0, $f0
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	fmul	$f0, $f1, $f0
	j	bne_cont.20488
bne_else.20487:
	finv	$f0, $f0
	li	$v0, -16512
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	fmul	$f0, $f1, $f0
bne_cont.20488:
fbne_cont.20486:
	flw	$f1, 0($a2)
	fmul	$f1, $f1, $f0
	fsw	$f1, 0($a2)
	flw	$f1, 4($a2)
	fmul	$f1, $f1, $f0
	fsw	$f1, 4($a2)
	flw	$f1, 8($a2)
	fmul	$f0, $f1, $f0
	fsw	$f0, 8($a2)
	j	bne_cont.20482
bne_else.20481:
bne_cont.20482:
bne_cont.20462:
	li	$a1, 0
	bne	$a3, $a1, bne_else.20489
	j	bne_cont.20490
bne_else.20489:
	flw	$f0, 0($a0)
	sw	$ra, 60($sp)
	addi	$sp, $sp, 64
	jal	min_caml_cos
	subi	$sp, $sp, 64
	lw	$ra, 60($sp)
	fmove	$f0, $fv
	lw	$a0, 52($sp)
	flw	$f1, 0($a0)
	fsw	$f0, 64($sp)
	fmove	$f0, $f1
	sw	$ra, 76($sp)
	addi	$sp, $sp, 80
	jal	min_caml_sin
	subi	$sp, $sp, 80
	lw	$ra, 76($sp)
	fmove	$f0, $fv
	lw	$a0, 52($sp)
	flw	$f1, 4($a0)
	fsw	$f0, 72($sp)
	fmove	$f0, $f1
	sw	$ra, 84($sp)
	addi	$sp, $sp, 88
	jal	min_caml_cos
	subi	$sp, $sp, 88
	lw	$ra, 84($sp)
	fmove	$f0, $fv
	lw	$a0, 52($sp)
	flw	$f1, 4($a0)
	fsw	$f0, 80($sp)
	fmove	$f0, $f1
	sw	$ra, 92($sp)
	addi	$sp, $sp, 96
	jal	min_caml_sin
	subi	$sp, $sp, 96
	lw	$ra, 92($sp)
	fmove	$f0, $fv
	lw	$a0, 52($sp)
	flw	$f1, 8($a0)
	fsw	$f0, 88($sp)
	fmove	$f0, $f1
	sw	$ra, 100($sp)
	addi	$sp, $sp, 104
	jal	min_caml_cos
	subi	$sp, $sp, 104
	lw	$ra, 100($sp)
	fmove	$f0, $fv
	lw	$a0, 52($sp)
	flw	$f1, 8($a0)
	fsw	$f0, 96($sp)
	fmove	$f0, $f1
	sw	$ra, 108($sp)
	addi	$sp, $sp, 112
	jal	min_caml_sin
	subi	$sp, $sp, 112
	lw	$ra, 108($sp)
	fmove	$f0, $fv
	flw	$f1, 96($sp)
	flw	$f2, 80($sp)
	fmul	$f3, $f2, $f1
	flw	$f4, 88($sp)
	flw	$f5, 72($sp)
	fmul	$f6, $f5, $f4
	fmul	$f6, $f6, $f1
	flw	$f7, 64($sp)
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
	fneg	$f1, $f4
	fmul	$f4, $f5, $f2
	fmul	$f2, $f7, $f2
	lw	$a0, 20($sp)
	flw	$f5, 0($a0)
	flw	$f7, 4($a0)
	flw	$f11, 8($a0)
	fmul	$f12, $f3, $f3
	fmul	$f12, $f5, $f12
	fmul	$f13, $f9, $f9
	fmul	$f13, $f7, $f13
	fadd	$f12, $f12, $f13
	fmul	$f13, $f1, $f1
	fmul	$f13, $f11, $f13
	fadd	$f12, $f12, $f13
	fsw	$f12, 0($a0)
	fmul	$f12, $f6, $f6
	fmul	$f12, $f5, $f12
	fmul	$f13, $f10, $f10
	fmul	$f13, $f7, $f13
	fadd	$f12, $f12, $f13
	fmul	$f13, $f4, $f4
	fmul	$f13, $f11, $f13
	fadd	$f12, $f12, $f13
	fsw	$f12, 4($a0)
	fmul	$f12, $f8, $f8
	fmul	$f12, $f5, $f12
	fmul	$f13, $f0, $f0
	fmul	$f13, $f7, $f13
	fadd	$f12, $f12, $f13
	fmul	$f13, $f2, $f2
	fmul	$f13, $f11, $f13
	fadd	$f12, $f12, $f13
	fsw	$f12, 8($a0)
	fmul	$f12, $f5, $f6
	fmul	$f12, $f12, $f8
	fmul	$f13, $f7, $f10
	fmul	$f13, $f13, $f0
	fadd	$f12, $f12, $f13
	fmul	$f13, $f11, $f4
	fmul	$f13, $f13, $f2
	fadd	$f12, $f12, $f13
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f13, $v0
	fmul	$f12, $f13, $f12
	lw	$a0, 52($sp)
	fsw	$f12, 0($a0)
	fmul	$f12, $f5, $f3
	fmul	$f8, $f12, $f8
	fmul	$f12, $f7, $f9
	fmul	$f0, $f12, $f0
	fadd	$f0, $f8, $f0
	fmul	$f8, $f11, $f1
	fmul	$f2, $f8, $f2
	fadd	$f0, $f0, $f2
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fmul	$f0, $f2, $f0
	fsw	$f0, 4($a0)
	fmul	$f0, $f5, $f3
	fmul	$f0, $f0, $f6
	fmul	$f2, $f7, $f9
	fmul	$f2, $f2, $f10
	fadd	$f0, $f0, $f2
	fmul	$f1, $f11, $f1
	fmul	$f1, $f1, $f4
	fadd	$f0, $f0, $f1
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	fmul	$f0, $f1, $f0
	fsw	$f0, 8($a0)
bne_cont.20490:
	li	$v0, 1
	jr	$ra
read_object.2767:
	li	$a1, 60
	blt	$a0, $a1, bge_else.20492
	jr	$ra
bge_else.20492:
	sw	$a0, 0($sp)
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	read_nth_object.2765
	subi	$sp, $sp, 8
	lw	$ra, 4($sp)
	move	$a0, $v0
	li	$a1, 0
	bne	$a0, $a1, beq_else.20494
	li	$a0, 0
	lw	$a1, 0($sp)
	sw	$a1, 0($a0)
	jr	$ra
beq_else.20494:
	lw	$a0, 0($sp)
	addi	$a0, $a0, 1
	j	read_object.2767
read_net_item.2771:
	sw	$a0, 0($sp)
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	min_caml_read_int
	subi	$sp, $sp, 8
	lw	$ra, 4($sp)
	move	$a0, $v0
	li	$a1, -1
	bne	$a0, $a1, beq_else.20496
	lw	$a0, 0($sp)
	addi	$a0, $a0, 1
	li	$a1, -1
	j	min_caml_create_array
beq_else.20496:
	lw	$a1, 0($sp)
	addi	$a2, $a1, 1
	sw	$a0, 4($sp)
	move	$a0, $a2
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	read_net_item.2771
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
read_or_network.2773:
	li	$a1, 0
	sw	$a0, 0($sp)
	move	$a0, $a1
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	read_net_item.2771
	subi	$sp, $sp, 8
	lw	$ra, 4($sp)
	move	$a1, $v0
	lw	$a0, 0($a1)
	li	$a2, -1
	bne	$a0, $a2, beq_else.20497
	lw	$a0, 0($sp)
	addi	$a0, $a0, 1
	j	min_caml_create_array
beq_else.20497:
	lw	$a0, 0($sp)
	addi	$a2, $a0, 1
	sw	$a1, 4($sp)
	move	$a0, $a2
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	read_or_network.2773
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
read_and_network.2775:
	li	$a1, 0
	sw	$a0, 0($sp)
	move	$a0, $a1
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	read_net_item.2771
	subi	$sp, $sp, 8
	lw	$ra, 4($sp)
	move	$a0, $v0
	lw	$a1, 0($a0)
	li	$a2, -1
	bne	$a1, $a2, beq_else.20498
	jr	$ra
beq_else.20498:
	li	$a1, 332
	lw	$a2, 0($sp)
	sll	$a3, $a2, 2
	add	$a3, $a1, $a3
	sw	$a0, 0($a3)
	addi	$a0, $a2, 1
	j	read_and_network.2775
iter_setup_dirvec_constants.2872:
	li	$a2, 0
	blt	$a1, $a2, bge_else.20500
	li	$a2, 48
	sll	$a3, $a1, 2
	add	$a3, $a2, $a3
	lw	$a2, 0($a3)
	lw	$a3, 4($a0)
	lw	$a4, 0($a0)
	lw	$a5, 4($a2)
	li	$a6, 1
	sw	$a0, 0($sp)
	bne	$a5, $a6, bne_else.20501
	li	$a5, 6
	mtc1	$f0, $zero
	sw	$a3, 4($sp)
	sw	$a1, 8($sp)
	sw	$a2, 12($sp)
	sw	$a4, 16($sp)
	move	$a0, $a5
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	min_caml_create_float_array
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	move	$a0, $v0
	lw	$a1, 16($sp)
	flw	$f0, 0($a1)
	mtc1	$f1, $zero
	fbne	$f0, $f1, fbne_else.20503
	mtc1	$f0, $zero
	fsw	$f0, 4($a0)
	j	fbne_cont.20504
fbne_else.20503:
	lw	$a2, 12($sp)
	lw	$a3, 24($a2)
	mtc1	$f0, $zero
	flw	$f1, 0($a1)
	fblt	$f1, $f0, fbge_else.20505
	li	$a4, 0
	j	fbge_cont.20506
fbge_else.20505:
	li	$a4, 1
fbge_cont.20506:
	xor	$a3, $a3, $a4
	lw	$a4, 16($a2)
	flw	$f0, 0($a4)
	li	$a4, 0
	bne	$a3, $a4, bne_else.20507
	fneg	$f0, $f0
	j	bne_cont.20508
bne_else.20507:
bne_cont.20508:
	fsw	$f0, 0($a0)
	flw	$f0, 0($a1)
	finv	$f0, $f0
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	fmul	$f0, $f1, $f0
	fsw	$f0, 4($a0)
fbne_cont.20504:
	flw	$f0, 4($a1)
	mtc1	$f1, $zero
	fbne	$f0, $f1, fbne_else.20509
	mtc1	$f0, $zero
	fsw	$f0, 12($a0)
	j	fbne_cont.20510
fbne_else.20509:
	lw	$a2, 12($sp)
	lw	$a3, 24($a2)
	mtc1	$f0, $zero
	flw	$f1, 4($a1)
	fblt	$f1, $f0, fbge_else.20511
	li	$a4, 0
	j	fbge_cont.20512
fbge_else.20511:
	li	$a4, 1
fbge_cont.20512:
	xor	$a3, $a3, $a4
	lw	$a4, 16($a2)
	flw	$f0, 4($a4)
	li	$a4, 0
	bne	$a3, $a4, bne_else.20513
	fneg	$f0, $f0
	j	bne_cont.20514
bne_else.20513:
bne_cont.20514:
	fsw	$f0, 8($a0)
	flw	$f0, 4($a1)
	finv	$f0, $f0
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	fmul	$f0, $f1, $f0
	fsw	$f0, 12($a0)
fbne_cont.20510:
	flw	$f0, 8($a1)
	mtc1	$f1, $zero
	fbne	$f0, $f1, fbne_else.20515
	mtc1	$f0, $zero
	fsw	$f0, 20($a0)
	j	fbne_cont.20516
fbne_else.20515:
	lw	$a2, 12($sp)
	lw	$a3, 24($a2)
	mtc1	$f0, $zero
	flw	$f1, 8($a1)
	fblt	$f1, $f0, fbge_else.20517
	li	$a4, 0
	j	fbge_cont.20518
fbge_else.20517:
	li	$a4, 1
fbge_cont.20518:
	xor	$a3, $a3, $a4
	lw	$a2, 16($a2)
	flw	$f0, 8($a2)
	li	$a2, 0
	bne	$a3, $a2, bne_else.20519
	fneg	$f0, $f0
	j	bne_cont.20520
bne_else.20519:
bne_cont.20520:
	fsw	$f0, 16($a0)
	flw	$f0, 8($a1)
	finv	$f0, $f0
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	fmul	$f0, $f1, $f0
	fsw	$f0, 20($a0)
fbne_cont.20516:
	lw	$a1, 8($sp)
	sll	$a2, $a1, 2
	lw	$a3, 4($sp)
	add	$a2, $a3, $a2
	sw	$a0, 0($a2)
	j	bne_cont.20502
bne_else.20501:
	li	$a6, 2
	bne	$a5, $a6, bne_else.20521
	li	$a5, 4
	mtc1	$f0, $zero
	sw	$a3, 4($sp)
	sw	$a1, 8($sp)
	sw	$a2, 12($sp)
	sw	$a4, 16($sp)
	move	$a0, $a5
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	min_caml_create_float_array
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	move	$a0, $v0
	lw	$a1, 16($sp)
	flw	$f0, 0($a1)
	lw	$a2, 12($sp)
	lw	$a3, 16($a2)
	flw	$f1, 0($a3)
	fmul	$f0, $f0, $f1
	flw	$f1, 4($a1)
	lw	$a3, 16($a2)
	flw	$f2, 4($a3)
	fmul	$f1, $f1, $f2
	fadd	$f0, $f0, $f1
	flw	$f1, 8($a1)
	lw	$a1, 16($a2)
	flw	$f2, 8($a1)
	fmul	$f1, $f1, $f2
	fadd	$f0, $f0, $f1
	mtc1	$f1, $zero
	fblt	$f1, $f0, fbge_else.20523
	mtc1	$f0, $zero
	fsw	$f0, 0($a0)
	j	fbge_cont.20524
fbge_else.20523:
	finv	$f1, $f0
	li	$v0, -16512
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fmul	$f1, $f2, $f1
	fsw	$f1, 0($a0)
	lw	$a1, 16($a2)
	flw	$f1, 0($a1)
	finv	$f2, $f0
	fmul	$f1, $f1, $f2
	fneg	$f1, $f1
	fsw	$f1, 4($a0)
	lw	$a1, 16($a2)
	flw	$f1, 4($a1)
	finv	$f2, $f0
	fmul	$f1, $f1, $f2
	fneg	$f1, $f1
	fsw	$f1, 8($a0)
	lw	$a1, 16($a2)
	flw	$f1, 8($a1)
	finv	$f0, $f0
	fmul	$f0, $f1, $f0
	fneg	$f0, $f0
	fsw	$f0, 12($a0)
fbge_cont.20524:
	lw	$a1, 8($sp)
	sll	$a2, $a1, 2
	lw	$a3, 4($sp)
	add	$a2, $a3, $a2
	sw	$a0, 0($a2)
	j	bne_cont.20522
bne_else.20521:
	li	$a5, 5
	mtc1	$f0, $zero
	sw	$a3, 4($sp)
	sw	$a1, 8($sp)
	sw	$a2, 12($sp)
	sw	$a4, 16($sp)
	move	$a0, $a5
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	min_caml_create_float_array
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	move	$a0, $v0
	lw	$a1, 16($sp)
	flw	$f0, 0($a1)
	flw	$f1, 4($a1)
	flw	$f2, 8($a1)
	fmul	$f3, $f0, $f0
	lw	$a2, 12($sp)
	lw	$a3, 16($a2)
	flw	$f4, 0($a3)
	fmul	$f3, $f3, $f4
	fmul	$f4, $f1, $f1
	lw	$a3, 16($a2)
	flw	$f5, 4($a3)
	fmul	$f4, $f4, $f5
	fadd	$f3, $f3, $f4
	fmul	$f4, $f2, $f2
	lw	$a3, 16($a2)
	flw	$f5, 8($a3)
	fmul	$f4, $f4, $f5
	fadd	$f3, $f3, $f4
	lw	$a3, 12($a2)
	li	$a4, 0
	bne	$a3, $a4, bne_else.20525
	fmove	$f0, $f3
	j	bne_cont.20526
bne_else.20525:
	fmul	$f4, $f1, $f2
	lw	$a3, 36($a2)
	flw	$f5, 0($a3)
	fmul	$f4, $f4, $f5
	fadd	$f3, $f3, $f4
	fmul	$f2, $f2, $f0
	lw	$a3, 36($a2)
	flw	$f4, 4($a3)
	fmul	$f2, $f2, $f4
	fadd	$f2, $f3, $f2
	fmul	$f0, $f0, $f1
	lw	$a3, 36($a2)
	flw	$f1, 8($a3)
	fmul	$f0, $f0, $f1
	fadd	$f0, $f2, $f0
bne_cont.20526:
	flw	$f1, 0($a1)
	lw	$a3, 16($a2)
	flw	$f2, 0($a3)
	fmul	$f1, $f1, $f2
	fneg	$f1, $f1
	flw	$f2, 4($a1)
	lw	$a3, 16($a2)
	flw	$f3, 4($a3)
	fmul	$f2, $f2, $f3
	fneg	$f2, $f2
	flw	$f3, 8($a1)
	lw	$a3, 16($a2)
	flw	$f4, 8($a3)
	fmul	$f3, $f3, $f4
	fneg	$f3, $f3
	fsw	$f0, 0($a0)
	lw	$a3, 12($a2)
	li	$a4, 0
	bne	$a3, $a4, bne_else.20527
	fsw	$f1, 4($a0)
	fsw	$f2, 8($a0)
	fsw	$f3, 12($a0)
	j	bne_cont.20528
bne_else.20527:
	flw	$f4, 8($a1)
	lw	$a3, 36($a2)
	flw	$f5, 4($a3)
	fmul	$f4, $f4, $f5
	flw	$f5, 4($a1)
	lw	$a3, 36($a2)
	flw	$f6, 8($a3)
	fmul	$f5, $f5, $f6
	fadd	$f4, $f4, $f5
	li	$v0, 16128
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f5, $v0
	fmul	$f4, $f4, $f5
	fsub	$f1, $f1, $f4
	fsw	$f1, 4($a0)
	flw	$f1, 8($a1)
	lw	$a3, 36($a2)
	flw	$f4, 0($a3)
	fmul	$f1, $f1, $f4
	flw	$f4, 0($a1)
	lw	$a3, 36($a2)
	flw	$f5, 8($a3)
	fmul	$f4, $f4, $f5
	fadd	$f1, $f1, $f4
	li	$v0, 16128
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f4, $v0
	fmul	$f1, $f1, $f4
	fsub	$f1, $f2, $f1
	fsw	$f1, 8($a0)
	flw	$f1, 4($a1)
	lw	$a3, 36($a2)
	flw	$f2, 0($a3)
	fmul	$f1, $f1, $f2
	flw	$f2, 0($a1)
	lw	$a1, 36($a2)
	flw	$f4, 4($a1)
	fmul	$f2, $f2, $f4
	fadd	$f1, $f1, $f2
	li	$v0, 16128
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fmul	$f1, $f1, $f2
	fsub	$f1, $f3, $f1
	fsw	$f1, 12($a0)
bne_cont.20528:
	mtc1	$f1, $zero
	fbne	$f0, $f1, fbne_else.20529
	j	fbne_cont.20530
fbne_else.20529:
	finv	$f0, $f0
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	fmul	$f0, $f1, $f0
	fsw	$f0, 16($a0)
fbne_cont.20530:
	lw	$a1, 8($sp)
	sll	$a2, $a1, 2
	lw	$a3, 4($sp)
	add	$a2, $a3, $a2
	sw	$a0, 0($a2)
bne_cont.20522:
bne_cont.20502:
	subi	$a1, $a1, 1
	lw	$a0, 0($sp)
	j	iter_setup_dirvec_constants.2872
bge_else.20500:
	jr	$ra
setup_startp_constants.2877:
	li	$a2, 0
	blt	$a1, $a2, bge_else.20532
	li	$a2, 48
	sll	$a3, $a1, 2
	add	$a3, $a2, $a3
	lw	$a2, 0($a3)
	lw	$a3, 40($a2)
	lw	$a4, 4($a2)
	flw	$f0, 0($a0)
	lw	$a5, 20($a2)
	flw	$f1, 0($a5)
	fsub	$f0, $f0, $f1
	fsw	$f0, 0($a3)
	flw	$f0, 4($a0)
	lw	$a5, 20($a2)
	flw	$f1, 4($a5)
	fsub	$f0, $f0, $f1
	fsw	$f0, 4($a3)
	flw	$f0, 8($a0)
	lw	$a5, 20($a2)
	flw	$f1, 8($a5)
	fsub	$f0, $f0, $f1
	fsw	$f0, 8($a3)
	li	$a5, 2
	bne	$a4, $a5, bne_else.20533
	lw	$a2, 16($a2)
	flw	$f0, 0($a3)
	flw	$f1, 4($a3)
	flw	$f2, 8($a3)
	flw	$f3, 0($a2)
	fmul	$f0, $f3, $f0
	flw	$f3, 4($a2)
	fmul	$f1, $f3, $f1
	fadd	$f0, $f0, $f1
	flw	$f1, 8($a2)
	fmul	$f1, $f1, $f2
	fadd	$f0, $f0, $f1
	fsw	$f0, 12($a3)
	j	bne_cont.20534
bne_else.20533:
	li	$a5, 2
	blt	$a5, $a4, bge_else.20535
	j	bge_cont.20536
bge_else.20535:
	flw	$f0, 0($a3)
	flw	$f1, 4($a3)
	flw	$f2, 8($a3)
	fmul	$f3, $f0, $f0
	lw	$a5, 16($a2)
	flw	$f4, 0($a5)
	fmul	$f3, $f3, $f4
	fmul	$f4, $f1, $f1
	lw	$a5, 16($a2)
	flw	$f5, 4($a5)
	fmul	$f4, $f4, $f5
	fadd	$f3, $f3, $f4
	fmul	$f4, $f2, $f2
	lw	$a5, 16($a2)
	flw	$f5, 8($a5)
	fmul	$f4, $f4, $f5
	fadd	$f3, $f3, $f4
	lw	$a5, 12($a2)
	li	$a6, 0
	bne	$a5, $a6, bne_else.20537
	fmove	$f0, $f3
	j	bne_cont.20538
bne_else.20537:
	fmul	$f4, $f1, $f2
	lw	$a5, 36($a2)
	flw	$f5, 0($a5)
	fmul	$f4, $f4, $f5
	fadd	$f3, $f3, $f4
	fmul	$f2, $f2, $f0
	lw	$a5, 36($a2)
	flw	$f4, 4($a5)
	fmul	$f2, $f2, $f4
	fadd	$f2, $f3, $f2
	fmul	$f0, $f0, $f1
	lw	$a2, 36($a2)
	flw	$f1, 8($a2)
	fmul	$f0, $f0, $f1
	fadd	$f0, $f2, $f0
bne_cont.20538:
	li	$a2, 3
	bne	$a4, $a2, bne_else.20539
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	fsub	$f0, $f0, $f1
	j	bne_cont.20540
bne_else.20539:
bne_cont.20540:
	fsw	$f0, 12($a3)
bge_cont.20536:
bne_cont.20534:
	subi	$a1, $a1, 1
	j	setup_startp_constants.2877
bge_else.20532:
	jr	$ra
check_all_inside.2902:
	sll	$a2, $a0, 2
	add	$a2, $a1, $a2
	lw	$a2, 0($a2)
	li	$a3, -1
	bne	$a2, $a3, beq_else.20542
	li	$v0, 1
	jr	$ra
beq_else.20542:
	li	$a3, 48
	sll	$a2, $a2, 2
	add	$a2, $a3, $a2
	lw	$a2, 0($a2)
	lw	$a3, 20($a2)
	flw	$f3, 0($a3)
	fsub	$f3, $f0, $f3
	lw	$a3, 20($a2)
	flw	$f4, 4($a3)
	fsub	$f4, $f1, $f4
	lw	$a3, 20($a2)
	flw	$f5, 8($a3)
	fsub	$f5, $f2, $f5
	lw	$a3, 4($a2)
	li	$a4, 1
	bne	$a3, $a4, bne_else.20543
	lw	$a3, 16($a2)
	flw	$f6, 0($a3)
	fabs	$f3, $f3
	fblt	$f3, $f6, fbge_else.20545
	li	$a3, 0
	j	fbge_cont.20546
fbge_else.20545:
	lw	$a3, 16($a2)
	flw	$f3, 4($a3)
	fabs	$f4, $f4
	fblt	$f4, $f3, fbge_else.20547
	li	$a3, 0
	j	fbge_cont.20548
fbge_else.20547:
	lw	$a3, 16($a2)
	flw	$f3, 8($a3)
	fabs	$f4, $f5
	fblt	$f4, $f3, fbge_else.20549
	li	$a3, 0
	j	fbge_cont.20550
fbge_else.20549:
	li	$a3, 1
fbge_cont.20550:
fbge_cont.20548:
fbge_cont.20546:
	li	$a4, 0
	bne	$a3, $a4, bne_else.20551
	lw	$a2, 24($a2)
	li	$a3, 0
	bne	$a2, $a3, bne_else.20553
	li	$a2, 1
	j	bne_cont.20554
bne_else.20553:
	li	$a2, 0
bne_cont.20554:
	j	bne_cont.20552
bne_else.20551:
	lw	$a2, 24($a2)
bne_cont.20552:
	j	bne_cont.20544
bne_else.20543:
	li	$a4, 2
	bne	$a3, $a4, bne_else.20555
	lw	$a3, 16($a2)
	flw	$f6, 0($a3)
	fmul	$f3, $f6, $f3
	flw	$f6, 4($a3)
	fmul	$f4, $f6, $f4
	fadd	$f3, $f3, $f4
	flw	$f4, 8($a3)
	fmul	$f4, $f4, $f5
	fadd	$f3, $f3, $f4
	lw	$a2, 24($a2)
	mtc1	$f4, $zero
	fblt	$f3, $f4, fbge_else.20557
	li	$a3, 0
	j	fbge_cont.20558
fbge_else.20557:
	li	$a3, 1
fbge_cont.20558:
	xor	$a2, $a2, $a3
	li	$a3, 0
	bne	$a2, $a3, bne_else.20559
	li	$a2, 1
	j	bne_cont.20560
bne_else.20559:
	li	$a2, 0
bne_cont.20560:
	j	bne_cont.20556
bne_else.20555:
	fmul	$f6, $f3, $f3
	lw	$a3, 16($a2)
	flw	$f7, 0($a3)
	fmul	$f6, $f6, $f7
	fmul	$f7, $f4, $f4
	lw	$a3, 16($a2)
	flw	$f8, 4($a3)
	fmul	$f7, $f7, $f8
	fadd	$f6, $f6, $f7
	fmul	$f7, $f5, $f5
	lw	$a3, 16($a2)
	flw	$f8, 8($a3)
	fmul	$f7, $f7, $f8
	fadd	$f6, $f6, $f7
	lw	$a3, 12($a2)
	li	$a4, 0
	bne	$a3, $a4, bne_else.20561
	fmove	$f3, $f6
	j	bne_cont.20562
bne_else.20561:
	fmul	$f7, $f4, $f5
	lw	$a3, 36($a2)
	flw	$f8, 0($a3)
	fmul	$f7, $f7, $f8
	fadd	$f6, $f6, $f7
	fmul	$f5, $f5, $f3
	lw	$a3, 36($a2)
	flw	$f7, 4($a3)
	fmul	$f5, $f5, $f7
	fadd	$f5, $f6, $f5
	fmul	$f3, $f3, $f4
	lw	$a3, 36($a2)
	flw	$f4, 8($a3)
	fmul	$f3, $f3, $f4
	fadd	$f3, $f5, $f3
bne_cont.20562:
	lw	$a3, 4($a2)
	li	$a4, 3
	bne	$a3, $a4, bne_else.20563
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f4, $v0
	fsub	$f3, $f3, $f4
	j	bne_cont.20564
bne_else.20563:
bne_cont.20564:
	lw	$a2, 24($a2)
	mtc1	$f4, $zero
	fblt	$f3, $f4, fbge_else.20565
	li	$a3, 0
	j	fbge_cont.20566
fbge_else.20565:
	li	$a3, 1
fbge_cont.20566:
	xor	$a2, $a2, $a3
	li	$a3, 0
	bne	$a2, $a3, bne_else.20567
	li	$a2, 1
	j	bne_cont.20568
bne_else.20567:
	li	$a2, 0
bne_cont.20568:
bne_cont.20556:
bne_cont.20544:
	li	$a3, 0
	bne	$a2, $a3, beq_else.20569
	addi	$a0, $a0, 1
	j	check_all_inside.2902
beq_else.20569:
	li	$v0, 0
	jr	$ra
shadow_check_and_group.2908:
	sll	$a2, $a0, 2
	add	$a2, $a1, $a2
	lw	$a2, 0($a2)
	li	$a3, -1
	bne	$a2, $a3, beq_else.20570
	li	$v0, 0
	jr	$ra
beq_else.20570:
	sll	$a2, $a0, 2
	add	$a2, $a1, $a2
	lw	$a2, 0($a2)
	li	$a3, 988
	li	$a4, 552
	li	$a5, 48
	sll	$a6, $a2, 2
	add	$a6, $a5, $a6
	lw	$a5, 0($a6)
	flw	$f0, 0($a4)
	lw	$a6, 20($a5)
	flw	$f1, 0($a6)
	fsub	$f0, $f0, $f1
	flw	$f1, 4($a4)
	lw	$a6, 20($a5)
	flw	$f2, 4($a6)
	fsub	$f1, $f1, $f2
	flw	$f2, 8($a4)
	lw	$a4, 20($a5)
	flw	$f3, 8($a4)
	fsub	$f2, $f2, $f3
	lw	$a4, 4($a3)
	sll	$a6, $a2, 2
	add	$a6, $a4, $a6
	lw	$a4, 0($a6)
	lw	$a6, 4($a5)
	li	$a7, 1
	bne	$a6, $a7, bne_else.20571
	lw	$a3, 0($a3)
	li	$a6, 0
	flw	$f3, 0($a4)
	fsub	$f3, $f3, $f0
	flw	$f4, 4($a4)
	fmul	$f3, $f3, $f4
	lw	$a7, 16($a5)
	flw	$f4, 4($a7)
	flw	$f5, 4($a3)
	fmul	$f5, $f3, $f5
	fadd	$f5, $f5, $f1
	fabs	$f5, $f5
	fblt	$f5, $f4, fbge_else.20573
	li	$a7, 0
	j	fbge_cont.20574
fbge_else.20573:
	lw	$a7, 16($a5)
	flw	$f4, 8($a7)
	flw	$f5, 8($a3)
	fmul	$f5, $f3, $f5
	fadd	$f5, $f5, $f2
	fabs	$f5, $f5
	fblt	$f5, $f4, fbge_else.20575
	li	$a7, 0
	j	fbge_cont.20576
fbge_else.20575:
	flw	$f4, 4($a4)
	mtc1	$f5, $zero
	fbne	$f4, $f5, fbne_else.20577
	li	$a7, 0
	j	fbne_cont.20578
fbne_else.20577:
	li	$a7, 1
fbne_cont.20578:
fbge_cont.20576:
fbge_cont.20574:
	bne	$a7, $a6, bne_else.20579
	flw	$f3, 8($a4)
	fsub	$f3, $f3, $f1
	flw	$f4, 12($a4)
	fmul	$f3, $f3, $f4
	lw	$a6, 16($a5)
	flw	$f4, 0($a6)
	flw	$f5, 0($a3)
	fmul	$f5, $f3, $f5
	fadd	$f5, $f5, $f0
	fabs	$f5, $f5
	fblt	$f5, $f4, fbge_else.20581
	li	$a6, 0
	j	fbge_cont.20582
fbge_else.20581:
	lw	$a6, 16($a5)
	flw	$f4, 8($a6)
	flw	$f5, 8($a3)
	fmul	$f5, $f3, $f5
	fadd	$f5, $f5, $f2
	fabs	$f5, $f5
	fblt	$f5, $f4, fbge_else.20583
	li	$a6, 0
	j	fbge_cont.20584
fbge_else.20583:
	flw	$f4, 12($a4)
	mtc1	$f5, $zero
	fbne	$f4, $f5, fbne_else.20585
	li	$a6, 0
	j	fbne_cont.20586
fbne_else.20585:
	li	$a6, 1
fbne_cont.20586:
fbge_cont.20584:
fbge_cont.20582:
	li	$a7, 0
	bne	$a6, $a7, bne_else.20587
	flw	$f3, 16($a4)
	fsub	$f2, $f3, $f2
	flw	$f3, 20($a4)
	fmul	$f2, $f2, $f3
	lw	$a6, 16($a5)
	flw	$f3, 0($a6)
	flw	$f4, 0($a3)
	fmul	$f4, $f2, $f4
	fadd	$f0, $f4, $f0
	fabs	$f0, $f0
	fblt	$f0, $f3, fbge_else.20589
	li	$a3, 0
	j	fbge_cont.20590
fbge_else.20589:
	lw	$a5, 16($a5)
	flw	$f0, 4($a5)
	flw	$f3, 4($a3)
	fmul	$f3, $f2, $f3
	fadd	$f1, $f3, $f1
	fabs	$f1, $f1
	fblt	$f1, $f0, fbge_else.20591
	li	$a3, 0
	j	fbge_cont.20592
fbge_else.20591:
	flw	$f0, 20($a4)
	mtc1	$f1, $zero
	fbne	$f0, $f1, fbne_else.20593
	li	$a3, 0
	j	fbne_cont.20594
fbne_else.20593:
	li	$a3, 1
fbne_cont.20594:
fbge_cont.20592:
fbge_cont.20590:
	li	$a4, 0
	bne	$a3, $a4, bne_else.20595
	li	$a3, 0
	j	bne_cont.20596
bne_else.20595:
	li	$a3, 540
	fsw	$f2, 0($a3)
	li	$a3, 3
bne_cont.20596:
	j	bne_cont.20588
bne_else.20587:
	li	$a3, 540
	fsw	$f3, 0($a3)
	li	$a3, 2
bne_cont.20588:
	j	bne_cont.20580
bne_else.20579:
	li	$a3, 540
	fsw	$f3, 0($a3)
	li	$a3, 1
bne_cont.20580:
	j	bne_cont.20572
bne_else.20571:
	li	$a3, 2
	bne	$a6, $a3, bne_else.20597
	mtc1	$f3, $zero
	flw	$f4, 0($a4)
	fblt	$f4, $f3, fbge_else.20599
	li	$a3, 0
	j	fbge_cont.20600
fbge_else.20599:
	li	$a3, 540
	flw	$f3, 4($a4)
	fmul	$f0, $f3, $f0
	flw	$f3, 8($a4)
	fmul	$f1, $f3, $f1
	fadd	$f0, $f0, $f1
	flw	$f1, 12($a4)
	fmul	$f1, $f1, $f2
	fadd	$f0, $f0, $f1
	fsw	$f0, 0($a3)
	li	$a3, 1
fbge_cont.20600:
	j	bne_cont.20598
bne_else.20597:
	flw	$f3, 0($a4)
	mtc1	$f4, $zero
	fbne	$f3, $f4, fbne_else.20601
	li	$a3, 0
	j	fbne_cont.20602
fbne_else.20601:
	flw	$f4, 4($a4)
	fmul	$f4, $f4, $f0
	flw	$f5, 8($a4)
	fmul	$f5, $f5, $f1
	fadd	$f4, $f4, $f5
	flw	$f5, 12($a4)
	fmul	$f5, $f5, $f2
	fadd	$f4, $f4, $f5
	fmul	$f5, $f0, $f0
	lw	$a3, 16($a5)
	flw	$f6, 0($a3)
	fmul	$f5, $f5, $f6
	fmul	$f6, $f1, $f1
	lw	$a3, 16($a5)
	flw	$f7, 4($a3)
	fmul	$f6, $f6, $f7
	fadd	$f5, $f5, $f6
	fmul	$f6, $f2, $f2
	lw	$a3, 16($a5)
	flw	$f7, 8($a3)
	fmul	$f6, $f6, $f7
	fadd	$f5, $f5, $f6
	lw	$a3, 12($a5)
	li	$a6, 0
	bne	$a3, $a6, bne_else.20603
	fmove	$f0, $f5
	j	bne_cont.20604
bne_else.20603:
	fmul	$f6, $f1, $f2
	lw	$a3, 36($a5)
	flw	$f7, 0($a3)
	fmul	$f6, $f6, $f7
	fadd	$f5, $f5, $f6
	fmul	$f2, $f2, $f0
	lw	$a3, 36($a5)
	flw	$f6, 4($a3)
	fmul	$f2, $f2, $f6
	fadd	$f2, $f5, $f2
	fmul	$f0, $f0, $f1
	lw	$a3, 36($a5)
	flw	$f1, 8($a3)
	fmul	$f0, $f0, $f1
	fadd	$f0, $f2, $f0
bne_cont.20604:
	lw	$a3, 4($a5)
	li	$a6, 3
	bne	$a3, $a6, bne_else.20605
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	fsub	$f0, $f0, $f1
	j	bne_cont.20606
bne_else.20605:
bne_cont.20606:
	fmul	$f1, $f4, $f4
	fmul	$f0, $f3, $f0
	fsub	$f0, $f1, $f0
	mtc1	$f1, $zero
	fblt	$f1, $f0, fbge_else.20607
	li	$a3, 0
	j	fbge_cont.20608
fbge_else.20607:
	lw	$a3, 24($a5)
	li	$a5, 0
	bne	$a3, $a5, bne_else.20609
	li	$a3, 540
	sqrt	$f0, $f0
	fsub	$f0, $f4, $f0
	flw	$f1, 16($a4)
	fmul	$f0, $f0, $f1
	fsw	$f0, 0($a3)
	j	bne_cont.20610
bne_else.20609:
	li	$a3, 540
	sqrt	$f0, $f0
	fadd	$f0, $f4, $f0
	flw	$f1, 16($a4)
	fmul	$f0, $f0, $f1
	fsw	$f0, 0($a3)
bne_cont.20610:
	li	$a3, 1
fbge_cont.20608:
fbne_cont.20602:
bne_cont.20598:
bne_cont.20572:
	li	$a4, 540
	flw	$f0, 0($a4)
	li	$a4, 0
	bne	$a3, $a4, bne_else.20611
	li	$a3, 0
	j	bne_cont.20612
bne_else.20611:
	li	$v0, -16820
	sll	$v0, $v0, 16
	ori	$v0, $v0, 52429
	mtc1	$f1, $v0
	fblt	$f0, $f1, fbge_else.20613
	li	$a3, 0
	j	fbge_cont.20614
fbge_else.20613:
	li	$a3, 1
fbge_cont.20614:
bne_cont.20612:
	li	$a4, 0
	bne	$a3, $a4, beq_else.20615
	li	$a3, 48
	sll	$a2, $a2, 2
	add	$a2, $a3, $a2
	lw	$a2, 0($a2)
	lw	$a2, 24($a2)
	li	$a3, 0
	bne	$a2, $a3, beq_else.20616
	li	$v0, 0
	jr	$ra
beq_else.20616:
	addi	$a0, $a0, 1
	j	shadow_check_and_group.2908
beq_else.20615:
	li	$v0, 15395
	sll	$v0, $v0, 16
	ori	$v0, $v0, 55050
	mtc1	$f1, $v0
	fadd	$f0, $f0, $f1
	li	$a2, 312
	flw	$f1, 0($a2)
	fmul	$f1, $f1, $f0
	li	$a2, 552
	flw	$f2, 0($a2)
	fadd	$f1, $f1, $f2
	li	$a2, 312
	flw	$f2, 4($a2)
	fmul	$f2, $f2, $f0
	li	$a2, 552
	flw	$f3, 4($a2)
	fadd	$f2, $f2, $f3
	li	$a2, 312
	flw	$f3, 8($a2)
	fmul	$f0, $f3, $f0
	li	$a2, 552
	flw	$f3, 8($a2)
	fadd	$f0, $f0, $f3
	li	$a2, 0
	sw	$a1, 0($sp)
	sw	$a0, 4($sp)
	move	$a0, $a2
	fmove	$f30, $f2
	fmove	$f2, $f0
	fmove	$f0, $f1
	fmove	$f1, $f30
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	check_all_inside.2902
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	move	$a0, $v0
	li	$a1, 0
	bne	$a0, $a1, beq_else.20617
	lw	$a0, 4($sp)
	addi	$a0, $a0, 1
	lw	$a1, 0($sp)
	j	shadow_check_and_group.2908
beq_else.20617:
	li	$v0, 1
	jr	$ra
shadow_check_one_or_group.2911:
	sll	$a2, $a0, 2
	add	$a2, $a1, $a2
	lw	$a2, 0($a2)
	li	$a3, -1
	bne	$a2, $a3, beq_else.20618
	li	$v0, 0
	jr	$ra
beq_else.20618:
	li	$a3, 332
	sll	$a2, $a2, 2
	add	$a2, $a3, $a2
	lw	$a2, 0($a2)
	li	$a3, 0
	sw	$a1, 0($sp)
	sw	$a0, 4($sp)
	move	$a1, $a2
	move	$a0, $a3
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	shadow_check_and_group.2908
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	move	$a0, $v0
	li	$a1, 0
	bne	$a0, $a1, beq_else.20619
	lw	$a0, 4($sp)
	addi	$a0, $a0, 1
	lw	$a1, 0($sp)
	j	shadow_check_one_or_group.2911
beq_else.20619:
	li	$v0, 1
	jr	$ra
shadow_check_one_or_matrix.2914:
	sll	$a2, $a0, 2
	add	$a2, $a1, $a2
	lw	$a2, 0($a2)
	lw	$a3, 0($a2)
	li	$a4, -1
	bne	$a3, $a4, beq_else.20620
	li	$v0, 0
	jr	$ra
beq_else.20620:
	li	$a4, 99
	sw	$a2, 0($sp)
	sw	$a1, 4($sp)
	sw	$a0, 8($sp)
	bne	$a3, $a4, bne_else.20621
	li	$a0, 1
	j	bne_cont.20622
bne_else.20621:
	li	$a4, 988
	li	$a5, 552
	li	$a6, 48
	sll	$a7, $a3, 2
	add	$a7, $a6, $a7
	lw	$a6, 0($a7)
	flw	$f0, 0($a5)
	lw	$a7, 20($a6)
	flw	$f1, 0($a7)
	fsub	$f0, $f0, $f1
	flw	$f1, 4($a5)
	lw	$a7, 20($a6)
	flw	$f2, 4($a7)
	fsub	$f1, $f1, $f2
	flw	$f2, 8($a5)
	lw	$a5, 20($a6)
	flw	$f3, 8($a5)
	fsub	$f2, $f2, $f3
	lw	$a5, 4($a4)
	sll	$a3, $a3, 2
	add	$a3, $a5, $a3
	lw	$a3, 0($a3)
	lw	$a5, 4($a6)
	li	$a7, 1
	bne	$a5, $a7, bne_else.20623
	lw	$a4, 0($a4)
	li	$a5, 0
	flw	$f3, 0($a3)
	fsub	$f3, $f3, $f0
	flw	$f4, 4($a3)
	fmul	$f3, $f3, $f4
	lw	$a7, 16($a6)
	flw	$f4, 4($a7)
	flw	$f5, 4($a4)
	fmul	$f5, $f3, $f5
	fadd	$f5, $f5, $f1
	fabs	$f5, $f5
	fblt	$f5, $f4, fbge_else.20625
	li	$a7, 0
	j	fbge_cont.20626
fbge_else.20625:
	lw	$a7, 16($a6)
	flw	$f4, 8($a7)
	flw	$f5, 8($a4)
	fmul	$f5, $f3, $f5
	fadd	$f5, $f5, $f2
	fabs	$f5, $f5
	fblt	$f5, $f4, fbge_else.20627
	li	$a7, 0
	j	fbge_cont.20628
fbge_else.20627:
	flw	$f4, 4($a3)
	mtc1	$f5, $zero
	fbne	$f4, $f5, fbne_else.20629
	li	$a7, 0
	j	fbne_cont.20630
fbne_else.20629:
	li	$a7, 1
fbne_cont.20630:
fbge_cont.20628:
fbge_cont.20626:
	bne	$a7, $a5, bne_else.20631
	flw	$f3, 8($a3)
	fsub	$f3, $f3, $f1
	flw	$f4, 12($a3)
	fmul	$f3, $f3, $f4
	lw	$a5, 16($a6)
	flw	$f4, 0($a5)
	flw	$f5, 0($a4)
	fmul	$f5, $f3, $f5
	fadd	$f5, $f5, $f0
	fabs	$f5, $f5
	fblt	$f5, $f4, fbge_else.20633
	li	$a5, 0
	j	fbge_cont.20634
fbge_else.20633:
	lw	$a5, 16($a6)
	flw	$f4, 8($a5)
	flw	$f5, 8($a4)
	fmul	$f5, $f3, $f5
	fadd	$f5, $f5, $f2
	fabs	$f5, $f5
	fblt	$f5, $f4, fbge_else.20635
	li	$a5, 0
	j	fbge_cont.20636
fbge_else.20635:
	flw	$f4, 12($a3)
	mtc1	$f5, $zero
	fbne	$f4, $f5, fbne_else.20637
	li	$a5, 0
	j	fbne_cont.20638
fbne_else.20637:
	li	$a5, 1
fbne_cont.20638:
fbge_cont.20636:
fbge_cont.20634:
	li	$a7, 0
	bne	$a5, $a7, bne_else.20639
	flw	$f3, 16($a3)
	fsub	$f2, $f3, $f2
	flw	$f3, 20($a3)
	fmul	$f2, $f2, $f3
	lw	$a5, 16($a6)
	flw	$f3, 0($a5)
	flw	$f4, 0($a4)
	fmul	$f4, $f2, $f4
	fadd	$f0, $f4, $f0
	fabs	$f0, $f0
	fblt	$f0, $f3, fbge_else.20641
	li	$a3, 0
	j	fbge_cont.20642
fbge_else.20641:
	lw	$a5, 16($a6)
	flw	$f0, 4($a5)
	flw	$f3, 4($a4)
	fmul	$f3, $f2, $f3
	fadd	$f1, $f3, $f1
	fabs	$f1, $f1
	fblt	$f1, $f0, fbge_else.20643
	li	$a3, 0
	j	fbge_cont.20644
fbge_else.20643:
	flw	$f0, 20($a3)
	mtc1	$f1, $zero
	fbne	$f0, $f1, fbne_else.20645
	li	$a3, 0
	j	fbne_cont.20646
fbne_else.20645:
	li	$a3, 1
fbne_cont.20646:
fbge_cont.20644:
fbge_cont.20642:
	li	$a4, 0
	bne	$a3, $a4, bne_else.20647
	li	$a3, 0
	j	bne_cont.20648
bne_else.20647:
	li	$a3, 540
	fsw	$f2, 0($a3)
	li	$a3, 3
bne_cont.20648:
	j	bne_cont.20640
bne_else.20639:
	li	$a3, 540
	fsw	$f3, 0($a3)
	li	$a3, 2
bne_cont.20640:
	j	bne_cont.20632
bne_else.20631:
	li	$a3, 540
	fsw	$f3, 0($a3)
	li	$a3, 1
bne_cont.20632:
	j	bne_cont.20624
bne_else.20623:
	li	$a4, 2
	bne	$a5, $a4, bne_else.20649
	mtc1	$f3, $zero
	flw	$f4, 0($a3)
	fblt	$f4, $f3, fbge_else.20651
	li	$a3, 0
	j	fbge_cont.20652
fbge_else.20651:
	li	$a4, 540
	flw	$f3, 4($a3)
	fmul	$f0, $f3, $f0
	flw	$f3, 8($a3)
	fmul	$f1, $f3, $f1
	fadd	$f0, $f0, $f1
	flw	$f1, 12($a3)
	fmul	$f1, $f1, $f2
	fadd	$f0, $f0, $f1
	fsw	$f0, 0($a4)
	li	$a3, 1
fbge_cont.20652:
	j	bne_cont.20650
bne_else.20649:
	flw	$f3, 0($a3)
	mtc1	$f4, $zero
	fbne	$f3, $f4, fbne_else.20653
	li	$a3, 0
	j	fbne_cont.20654
fbne_else.20653:
	flw	$f4, 4($a3)
	fmul	$f4, $f4, $f0
	flw	$f5, 8($a3)
	fmul	$f5, $f5, $f1
	fadd	$f4, $f4, $f5
	flw	$f5, 12($a3)
	fmul	$f5, $f5, $f2
	fadd	$f4, $f4, $f5
	fmul	$f5, $f0, $f0
	lw	$a4, 16($a6)
	flw	$f6, 0($a4)
	fmul	$f5, $f5, $f6
	fmul	$f6, $f1, $f1
	lw	$a4, 16($a6)
	flw	$f7, 4($a4)
	fmul	$f6, $f6, $f7
	fadd	$f5, $f5, $f6
	fmul	$f6, $f2, $f2
	lw	$a4, 16($a6)
	flw	$f7, 8($a4)
	fmul	$f6, $f6, $f7
	fadd	$f5, $f5, $f6
	lw	$a4, 12($a6)
	li	$a5, 0
	bne	$a4, $a5, bne_else.20655
	fmove	$f0, $f5
	j	bne_cont.20656
bne_else.20655:
	fmul	$f6, $f1, $f2
	lw	$a4, 36($a6)
	flw	$f7, 0($a4)
	fmul	$f6, $f6, $f7
	fadd	$f5, $f5, $f6
	fmul	$f2, $f2, $f0
	lw	$a4, 36($a6)
	flw	$f6, 4($a4)
	fmul	$f2, $f2, $f6
	fadd	$f2, $f5, $f2
	fmul	$f0, $f0, $f1
	lw	$a4, 36($a6)
	flw	$f1, 8($a4)
	fmul	$f0, $f0, $f1
	fadd	$f0, $f2, $f0
bne_cont.20656:
	lw	$a4, 4($a6)
	li	$a5, 3
	bne	$a4, $a5, bne_else.20657
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	fsub	$f0, $f0, $f1
	j	bne_cont.20658
bne_else.20657:
bne_cont.20658:
	fmul	$f1, $f4, $f4
	fmul	$f0, $f3, $f0
	fsub	$f0, $f1, $f0
	mtc1	$f1, $zero
	fblt	$f1, $f0, fbge_else.20659
	li	$a3, 0
	j	fbge_cont.20660
fbge_else.20659:
	lw	$a4, 24($a6)
	li	$a5, 0
	bne	$a4, $a5, bne_else.20661
	li	$a4, 540
	sqrt	$f0, $f0
	fsub	$f0, $f4, $f0
	flw	$f1, 16($a3)
	fmul	$f0, $f0, $f1
	fsw	$f0, 0($a4)
	j	bne_cont.20662
bne_else.20661:
	li	$a4, 540
	sqrt	$f0, $f0
	fadd	$f0, $f4, $f0
	flw	$f1, 16($a3)
	fmul	$f0, $f0, $f1
	fsw	$f0, 0($a4)
bne_cont.20662:
	li	$a3, 1
fbge_cont.20660:
fbne_cont.20654:
bne_cont.20650:
bne_cont.20624:
	li	$a4, 0
	bne	$a3, $a4, bne_else.20663
	li	$a0, 0
	j	bne_cont.20664
bne_else.20663:
	li	$v0, -16948
	sll	$v0, $v0, 16
	ori	$v0, $v0, 52429
	mtc1	$f0, $v0
	li	$a3, 540
	flw	$f1, 0($a3)
	fblt	$f1, $f0, fbge_else.20665
	li	$a0, 0
	j	fbge_cont.20666
fbge_else.20665:
	li	$a3, 1
	move	$a1, $a2
	move	$a0, $a3
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	shadow_check_one_or_group.2911
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	move	$a0, $v0
	li	$a1, 0
	bne	$a0, $a1, bne_else.20667
	li	$a0, 0
	j	bne_cont.20668
bne_else.20667:
	li	$a0, 1
bne_cont.20668:
fbge_cont.20666:
bne_cont.20664:
bne_cont.20622:
	li	$a1, 0
	bne	$a0, $a1, beq_else.20669
	lw	$a0, 8($sp)
	addi	$a0, $a0, 1
	lw	$a1, 4($sp)
	j	shadow_check_one_or_matrix.2914
beq_else.20669:
	li	$a0, 1
	lw	$a1, 0($sp)
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	shadow_check_one_or_group.2911
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	move	$a0, $v0
	li	$a1, 0
	bne	$a0, $a1, beq_else.20670
	lw	$a0, 8($sp)
	addi	$a0, $a0, 1
	lw	$a1, 4($sp)
	j	shadow_check_one_or_matrix.2914
beq_else.20670:
	li	$v0, 1
	jr	$ra
solve_each_element.2917:
	sll	$a3, $a0, 2
	add	$a3, $a1, $a3
	lw	$a3, 0($a3)
	li	$a4, -1
	bne	$a3, $a4, beq_else.20671
	jr	$ra
beq_else.20671:
	li	$a4, 636
	li	$a5, 48
	sll	$a6, $a3, 2
	add	$a6, $a5, $a6
	lw	$a5, 0($a6)
	flw	$f0, 0($a4)
	lw	$a6, 20($a5)
	flw	$f1, 0($a6)
	fsub	$f0, $f0, $f1
	flw	$f1, 4($a4)
	lw	$a6, 20($a5)
	flw	$f2, 4($a6)
	fsub	$f1, $f1, $f2
	flw	$f2, 8($a4)
	lw	$a4, 20($a5)
	flw	$f3, 8($a4)
	fsub	$f2, $f2, $f3
	lw	$a4, 4($a5)
	li	$a6, 1
	bne	$a4, $a6, bne_else.20673
	li	$a4, 0
	flw	$f3, 0($a2)
	mtc1	$f4, $zero
	fbne	$f3, $f4, fbne_else.20675
	li	$a6, 0
	j	fbne_cont.20676
fbne_else.20675:
	lw	$a6, 16($a5)
	lw	$a7, 24($a5)
	mtc1	$f3, $zero
	flw	$f4, 0($a2)
	fblt	$f4, $f3, fbge_else.20677
	li	$a8, 0
	j	fbge_cont.20678
fbge_else.20677:
	li	$a8, 1
fbge_cont.20678:
	xor	$a7, $a7, $a8
	flw	$f3, 0($a6)
	li	$a8, 0
	bne	$a7, $a8, bne_else.20679
	fneg	$f3, $f3
	j	bne_cont.20680
bne_else.20679:
bne_cont.20680:
	fsub	$f3, $f3, $f0
	flw	$f4, 0($a2)
	finv	$f4, $f4
	fmul	$f3, $f3, $f4
	flw	$f4, 4($a6)
	flw	$f5, 4($a2)
	fmul	$f5, $f3, $f5
	fadd	$f5, $f5, $f1
	fabs	$f5, $f5
	fblt	$f5, $f4, fbge_else.20681
	li	$a6, 0
	j	fbge_cont.20682
fbge_else.20681:
	flw	$f4, 8($a6)
	flw	$f5, 8($a2)
	fmul	$f5, $f3, $f5
	fadd	$f5, $f5, $f2
	fabs	$f5, $f5
	fblt	$f5, $f4, fbge_else.20683
	li	$a6, 0
	j	fbge_cont.20684
fbge_else.20683:
	li	$a6, 540
	fsw	$f3, 0($a6)
	li	$a6, 1
fbge_cont.20684:
fbge_cont.20682:
fbne_cont.20676:
	bne	$a6, $a4, bne_else.20685
	flw	$f3, 4($a2)
	mtc1	$f4, $zero
	fbne	$f3, $f4, fbne_else.20687
	li	$a4, 0
	j	fbne_cont.20688
fbne_else.20687:
	lw	$a4, 16($a5)
	lw	$a6, 24($a5)
	mtc1	$f3, $zero
	flw	$f4, 4($a2)
	fblt	$f4, $f3, fbge_else.20689
	li	$a7, 0
	j	fbge_cont.20690
fbge_else.20689:
	li	$a7, 1
fbge_cont.20690:
	xor	$a6, $a6, $a7
	flw	$f3, 4($a4)
	li	$a7, 0
	bne	$a6, $a7, bne_else.20691
	fneg	$f3, $f3
	j	bne_cont.20692
bne_else.20691:
bne_cont.20692:
	fsub	$f3, $f3, $f1
	flw	$f4, 4($a2)
	finv	$f4, $f4
	fmul	$f3, $f3, $f4
	flw	$f4, 8($a4)
	flw	$f5, 8($a2)
	fmul	$f5, $f3, $f5
	fadd	$f5, $f5, $f2
	fabs	$f5, $f5
	fblt	$f5, $f4, fbge_else.20693
	li	$a4, 0
	j	fbge_cont.20694
fbge_else.20693:
	flw	$f4, 0($a4)
	flw	$f5, 0($a2)
	fmul	$f5, $f3, $f5
	fadd	$f5, $f5, $f0
	fabs	$f5, $f5
	fblt	$f5, $f4, fbge_else.20695
	li	$a4, 0
	j	fbge_cont.20696
fbge_else.20695:
	li	$a4, 540
	fsw	$f3, 0($a4)
	li	$a4, 1
fbge_cont.20696:
fbge_cont.20694:
fbne_cont.20688:
	li	$a6, 0
	bne	$a4, $a6, bne_else.20697
	flw	$f3, 8($a2)
	mtc1	$f4, $zero
	fbne	$f3, $f4, fbne_else.20699
	li	$a4, 0
	j	fbne_cont.20700
fbne_else.20699:
	lw	$a4, 16($a5)
	lw	$a5, 24($a5)
	mtc1	$f3, $zero
	flw	$f4, 8($a2)
	fblt	$f4, $f3, fbge_else.20701
	li	$a6, 0
	j	fbge_cont.20702
fbge_else.20701:
	li	$a6, 1
fbge_cont.20702:
	xor	$a5, $a5, $a6
	flw	$f3, 8($a4)
	li	$a6, 0
	bne	$a5, $a6, bne_else.20703
	fneg	$f3, $f3
	j	bne_cont.20704
bne_else.20703:
bne_cont.20704:
	fsub	$f2, $f3, $f2
	flw	$f3, 8($a2)
	finv	$f3, $f3
	fmul	$f2, $f2, $f3
	flw	$f3, 0($a4)
	flw	$f4, 0($a2)
	fmul	$f4, $f2, $f4
	fadd	$f0, $f4, $f0
	fabs	$f0, $f0
	fblt	$f0, $f3, fbge_else.20705
	li	$a4, 0
	j	fbge_cont.20706
fbge_else.20705:
	flw	$f0, 4($a4)
	flw	$f3, 4($a2)
	fmul	$f3, $f2, $f3
	fadd	$f1, $f3, $f1
	fabs	$f1, $f1
	fblt	$f1, $f0, fbge_else.20707
	li	$a4, 0
	j	fbge_cont.20708
fbge_else.20707:
	li	$a4, 540
	fsw	$f2, 0($a4)
	li	$a4, 1
fbge_cont.20708:
fbge_cont.20706:
fbne_cont.20700:
	li	$a5, 0
	bne	$a4, $a5, bne_else.20709
	li	$a4, 0
	j	bne_cont.20710
bne_else.20709:
	li	$a4, 3
bne_cont.20710:
	j	bne_cont.20698
bne_else.20697:
	li	$a4, 2
bne_cont.20698:
	j	bne_cont.20686
bne_else.20685:
	li	$a4, 1
bne_cont.20686:
	j	bne_cont.20674
bne_else.20673:
	li	$a6, 2
	bne	$a4, $a6, bne_else.20711
	lw	$a4, 16($a5)
	flw	$f3, 0($a2)
	flw	$f4, 0($a4)
	fmul	$f3, $f3, $f4
	flw	$f4, 4($a2)
	flw	$f5, 4($a4)
	fmul	$f4, $f4, $f5
	fadd	$f3, $f3, $f4
	flw	$f4, 8($a2)
	flw	$f5, 8($a4)
	fmul	$f4, $f4, $f5
	fadd	$f3, $f3, $f4
	mtc1	$f4, $zero
	fblt	$f4, $f3, fbge_else.20713
	li	$a4, 0
	j	fbge_cont.20714
fbge_else.20713:
	li	$a5, 540
	flw	$f4, 0($a4)
	fmul	$f0, $f4, $f0
	flw	$f4, 4($a4)
	fmul	$f1, $f4, $f1
	fadd	$f0, $f0, $f1
	flw	$f1, 8($a4)
	fmul	$f1, $f1, $f2
	fadd	$f0, $f0, $f1
	fneg	$f0, $f0
	finv	$f1, $f3
	fmul	$f0, $f0, $f1
	fsw	$f0, 0($a5)
	li	$a4, 1
fbge_cont.20714:
	j	bne_cont.20712
bne_else.20711:
	flw	$f3, 0($a2)
	flw	$f4, 4($a2)
	flw	$f5, 8($a2)
	fmul	$f6, $f3, $f3
	lw	$a4, 16($a5)
	flw	$f7, 0($a4)
	fmul	$f6, $f6, $f7
	fmul	$f7, $f4, $f4
	lw	$a4, 16($a5)
	flw	$f8, 4($a4)
	fmul	$f7, $f7, $f8
	fadd	$f6, $f6, $f7
	fmul	$f7, $f5, $f5
	lw	$a4, 16($a5)
	flw	$f8, 8($a4)
	fmul	$f7, $f7, $f8
	fadd	$f6, $f6, $f7
	lw	$a4, 12($a5)
	li	$a6, 0
	bne	$a4, $a6, bne_else.20715
	fmove	$f3, $f6
	j	bne_cont.20716
bne_else.20715:
	fmul	$f7, $f4, $f5
	lw	$a4, 36($a5)
	flw	$f8, 0($a4)
	fmul	$f7, $f7, $f8
	fadd	$f6, $f6, $f7
	fmul	$f5, $f5, $f3
	lw	$a4, 36($a5)
	flw	$f7, 4($a4)
	fmul	$f5, $f5, $f7
	fadd	$f5, $f6, $f5
	fmul	$f3, $f3, $f4
	lw	$a4, 36($a5)
	flw	$f4, 8($a4)
	fmul	$f3, $f3, $f4
	fadd	$f3, $f5, $f3
bne_cont.20716:
	mtc1	$f4, $zero
	fbne	$f3, $f4, fbne_else.20717
	li	$a4, 0
	j	fbne_cont.20718
fbne_else.20717:
	flw	$f4, 0($a2)
	flw	$f5, 4($a2)
	flw	$f6, 8($a2)
	fmul	$f7, $f4, $f0
	lw	$a4, 16($a5)
	flw	$f8, 0($a4)
	fmul	$f7, $f7, $f8
	fmul	$f8, $f5, $f1
	lw	$a4, 16($a5)
	flw	$f9, 4($a4)
	fmul	$f8, $f8, $f9
	fadd	$f7, $f7, $f8
	fmul	$f8, $f6, $f2
	lw	$a4, 16($a5)
	flw	$f9, 8($a4)
	fmul	$f8, $f8, $f9
	fadd	$f7, $f7, $f8
	lw	$a4, 12($a5)
	li	$a6, 0
	bne	$a4, $a6, bne_else.20719
	fmove	$f4, $f7
	j	bne_cont.20720
bne_else.20719:
	fmul	$f8, $f6, $f1
	fmul	$f9, $f5, $f2
	fadd	$f8, $f8, $f9
	lw	$a4, 36($a5)
	flw	$f9, 0($a4)
	fmul	$f8, $f8, $f9
	fmul	$f9, $f4, $f2
	fmul	$f6, $f6, $f0
	fadd	$f6, $f9, $f6
	lw	$a4, 36($a5)
	flw	$f9, 4($a4)
	fmul	$f6, $f6, $f9
	fadd	$f6, $f8, $f6
	fmul	$f4, $f4, $f1
	fmul	$f5, $f5, $f0
	fadd	$f4, $f4, $f5
	lw	$a4, 36($a5)
	flw	$f5, 8($a4)
	fmul	$f4, $f4, $f5
	fadd	$f4, $f6, $f4
	li	$v0, 16128
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f5, $v0
	fmul	$f4, $f4, $f5
	fadd	$f4, $f7, $f4
bne_cont.20720:
	fmul	$f5, $f0, $f0
	lw	$a4, 16($a5)
	flw	$f6, 0($a4)
	fmul	$f5, $f5, $f6
	fmul	$f6, $f1, $f1
	lw	$a4, 16($a5)
	flw	$f7, 4($a4)
	fmul	$f6, $f6, $f7
	fadd	$f5, $f5, $f6
	fmul	$f6, $f2, $f2
	lw	$a4, 16($a5)
	flw	$f7, 8($a4)
	fmul	$f6, $f6, $f7
	fadd	$f5, $f5, $f6
	lw	$a4, 12($a5)
	li	$a6, 0
	bne	$a4, $a6, bne_else.20721
	fmove	$f0, $f5
	j	bne_cont.20722
bne_else.20721:
	fmul	$f6, $f1, $f2
	lw	$a4, 36($a5)
	flw	$f7, 0($a4)
	fmul	$f6, $f6, $f7
	fadd	$f5, $f5, $f6
	fmul	$f2, $f2, $f0
	lw	$a4, 36($a5)
	flw	$f6, 4($a4)
	fmul	$f2, $f2, $f6
	fadd	$f2, $f5, $f2
	fmul	$f0, $f0, $f1
	lw	$a4, 36($a5)
	flw	$f1, 8($a4)
	fmul	$f0, $f0, $f1
	fadd	$f0, $f2, $f0
bne_cont.20722:
	lw	$a4, 4($a5)
	li	$a6, 3
	bne	$a4, $a6, bne_else.20723
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	fsub	$f0, $f0, $f1
	j	bne_cont.20724
bne_else.20723:
bne_cont.20724:
	fmul	$f1, $f4, $f4
	fmul	$f0, $f3, $f0
	fsub	$f0, $f1, $f0
	mtc1	$f1, $zero
	fblt	$f1, $f0, fbge_else.20725
	li	$a4, 0
	j	fbge_cont.20726
fbge_else.20725:
	sqrt	$f0, $f0
	lw	$a4, 24($a5)
	li	$a5, 0
	bne	$a4, $a5, bne_else.20727
	fneg	$f0, $f0
	j	bne_cont.20728
bne_else.20727:
bne_cont.20728:
	li	$a4, 540
	fsub	$f0, $f0, $f4
	finv	$f1, $f3
	fmul	$f0, $f0, $f1
	fsw	$f0, 0($a4)
	li	$a4, 1
fbge_cont.20726:
fbne_cont.20718:
bne_cont.20712:
bne_cont.20674:
	li	$a5, 0
	bne	$a4, $a5, beq_else.20729
	li	$a4, 48
	sll	$a3, $a3, 2
	add	$a3, $a4, $a3
	lw	$a3, 0($a3)
	lw	$a3, 24($a3)
	li	$a4, 0
	bne	$a3, $a4, beq_else.20730
	jr	$ra
beq_else.20730:
	addi	$a0, $a0, 1
	j	solve_each_element.2917
beq_else.20729:
	li	$a5, 540
	flw	$f0, 0($a5)
	mtc1	$f1, $zero
	sw	$a2, 0($sp)
	sw	$a1, 4($sp)
	sw	$a0, 8($sp)
	fblt	$f1, $f0, fbge_else.20732
	j	fbge_cont.20733
fbge_else.20732:
	li	$a5, 548
	flw	$f1, 0($a5)
	fblt	$f0, $f1, fbge_else.20734
	j	fbge_cont.20735
fbge_else.20734:
	li	$v0, 15395
	sll	$v0, $v0, 16
	ori	$v0, $v0, 55050
	mtc1	$f1, $v0
	fadd	$f0, $f0, $f1
	flw	$f1, 0($a2)
	fmul	$f1, $f1, $f0
	li	$a5, 636
	flw	$f2, 0($a5)
	fadd	$f1, $f1, $f2
	flw	$f2, 4($a2)
	fmul	$f2, $f2, $f0
	li	$a5, 636
	flw	$f3, 4($a5)
	fadd	$f2, $f2, $f3
	flw	$f3, 8($a2)
	fmul	$f3, $f3, $f0
	li	$a5, 636
	flw	$f4, 8($a5)
	fadd	$f3, $f3, $f4
	li	$a5, 0
	sw	$a4, 12($sp)
	sw	$a3, 16($sp)
	fsw	$f3, 24($sp)
	fsw	$f2, 32($sp)
	fsw	$f1, 40($sp)
	fsw	$f0, 48($sp)
	move	$a0, $a5
	fmove	$f0, $f1
	fmove	$f1, $f2
	fmove	$f2, $f3
	sw	$ra, 60($sp)
	addi	$sp, $sp, 64
	jal	check_all_inside.2902
	subi	$sp, $sp, 64
	lw	$ra, 60($sp)
	move	$a0, $v0
	li	$a1, 0
	bne	$a0, $a1, bne_else.20737
	j	bne_cont.20738
bne_else.20737:
	li	$a0, 548
	flw	$f0, 48($sp)
	fsw	$f0, 0($a0)
	li	$a0, 552
	flw	$f0, 40($sp)
	fsw	$f0, 0($a0)
	flw	$f0, 32($sp)
	fsw	$f0, 4($a0)
	flw	$f0, 24($sp)
	fsw	$f0, 8($a0)
	li	$a0, 564
	lw	$a1, 16($sp)
	sw	$a1, 0($a0)
	li	$a0, 544
	lw	$a1, 12($sp)
	sw	$a1, 0($a0)
bne_cont.20738:
fbge_cont.20735:
fbge_cont.20733:
	lw	$a0, 8($sp)
	addi	$a0, $a0, 1
	lw	$a1, 4($sp)
	lw	$a2, 0($sp)
	j	solve_each_element.2917
solve_one_or_network.2921:
	sll	$a3, $a0, 2
	add	$a3, $a1, $a3
	lw	$a3, 0($a3)
	li	$a4, -1
	bne	$a3, $a4, beq_else.20739
	jr	$ra
beq_else.20739:
	li	$a4, 332
	sll	$a3, $a3, 2
	add	$a3, $a4, $a3
	lw	$a3, 0($a3)
	li	$a4, 0
	sw	$a2, 0($sp)
	sw	$a1, 4($sp)
	sw	$a0, 8($sp)
	move	$a1, $a3
	move	$a0, $a4
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	solve_each_element.2917
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	fmove	$f30, $fv
	lw	$a0, 8($sp)
	addi	$a0, $a0, 1
	lw	$a1, 4($sp)
	lw	$a2, 0($sp)
	j	solve_one_or_network.2921
trace_or_matrix.2925:
	sll	$a3, $a0, 2
	add	$a3, $a1, $a3
	lw	$a3, 0($a3)
	lw	$a4, 0($a3)
	li	$a5, -1
	bne	$a4, $a5, beq_else.20741
	jr	$ra
beq_else.20741:
	li	$a5, 99
	sw	$a2, 0($sp)
	sw	$a1, 4($sp)
	sw	$a0, 8($sp)
	bne	$a4, $a5, bne_else.20743
	li	$a4, 1
	move	$a1, $a3
	move	$a0, $a4
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	solve_one_or_network.2921
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	fmove	$f30, $fv
	j	bne_cont.20744
bne_else.20743:
	li	$a5, 636
	li	$a6, 48
	sll	$a4, $a4, 2
	add	$a4, $a6, $a4
	lw	$a4, 0($a4)
	flw	$f0, 0($a5)
	lw	$a6, 20($a4)
	flw	$f1, 0($a6)
	fsub	$f0, $f0, $f1
	flw	$f1, 4($a5)
	lw	$a6, 20($a4)
	flw	$f2, 4($a6)
	fsub	$f1, $f1, $f2
	flw	$f2, 8($a5)
	lw	$a5, 20($a4)
	flw	$f3, 8($a5)
	fsub	$f2, $f2, $f3
	lw	$a5, 4($a4)
	li	$a6, 1
	bne	$a5, $a6, bne_else.20745
	li	$a5, 0
	flw	$f3, 0($a2)
	mtc1	$f4, $zero
	fbne	$f3, $f4, fbne_else.20747
	li	$a6, 0
	j	fbne_cont.20748
fbne_else.20747:
	lw	$a6, 16($a4)
	lw	$a7, 24($a4)
	mtc1	$f3, $zero
	flw	$f4, 0($a2)
	fblt	$f4, $f3, fbge_else.20749
	li	$a8, 0
	j	fbge_cont.20750
fbge_else.20749:
	li	$a8, 1
fbge_cont.20750:
	xor	$a7, $a7, $a8
	flw	$f3, 0($a6)
	li	$a8, 0
	bne	$a7, $a8, bne_else.20751
	fneg	$f3, $f3
	j	bne_cont.20752
bne_else.20751:
bne_cont.20752:
	fsub	$f3, $f3, $f0
	flw	$f4, 0($a2)
	finv	$f4, $f4
	fmul	$f3, $f3, $f4
	flw	$f4, 4($a6)
	flw	$f5, 4($a2)
	fmul	$f5, $f3, $f5
	fadd	$f5, $f5, $f1
	fabs	$f5, $f5
	fblt	$f5, $f4, fbge_else.20753
	li	$a6, 0
	j	fbge_cont.20754
fbge_else.20753:
	flw	$f4, 8($a6)
	flw	$f5, 8($a2)
	fmul	$f5, $f3, $f5
	fadd	$f5, $f5, $f2
	fabs	$f5, $f5
	fblt	$f5, $f4, fbge_else.20755
	li	$a6, 0
	j	fbge_cont.20756
fbge_else.20755:
	li	$a6, 540
	fsw	$f3, 0($a6)
	li	$a6, 1
fbge_cont.20756:
fbge_cont.20754:
fbne_cont.20748:
	bne	$a6, $a5, bne_else.20757
	flw	$f3, 4($a2)
	mtc1	$f4, $zero
	fbne	$f3, $f4, fbne_else.20759
	li	$a5, 0
	j	fbne_cont.20760
fbne_else.20759:
	lw	$a5, 16($a4)
	lw	$a6, 24($a4)
	mtc1	$f3, $zero
	flw	$f4, 4($a2)
	fblt	$f4, $f3, fbge_else.20761
	li	$a7, 0
	j	fbge_cont.20762
fbge_else.20761:
	li	$a7, 1
fbge_cont.20762:
	xor	$a6, $a6, $a7
	flw	$f3, 4($a5)
	li	$a7, 0
	bne	$a6, $a7, bne_else.20763
	fneg	$f3, $f3
	j	bne_cont.20764
bne_else.20763:
bne_cont.20764:
	fsub	$f3, $f3, $f1
	flw	$f4, 4($a2)
	finv	$f4, $f4
	fmul	$f3, $f3, $f4
	flw	$f4, 8($a5)
	flw	$f5, 8($a2)
	fmul	$f5, $f3, $f5
	fadd	$f5, $f5, $f2
	fabs	$f5, $f5
	fblt	$f5, $f4, fbge_else.20765
	li	$a5, 0
	j	fbge_cont.20766
fbge_else.20765:
	flw	$f4, 0($a5)
	flw	$f5, 0($a2)
	fmul	$f5, $f3, $f5
	fadd	$f5, $f5, $f0
	fabs	$f5, $f5
	fblt	$f5, $f4, fbge_else.20767
	li	$a5, 0
	j	fbge_cont.20768
fbge_else.20767:
	li	$a5, 540
	fsw	$f3, 0($a5)
	li	$a5, 1
fbge_cont.20768:
fbge_cont.20766:
fbne_cont.20760:
	li	$a6, 0
	bne	$a5, $a6, bne_else.20769
	flw	$f3, 8($a2)
	mtc1	$f4, $zero
	fbne	$f3, $f4, fbne_else.20771
	li	$a4, 0
	j	fbne_cont.20772
fbne_else.20771:
	lw	$a5, 16($a4)
	lw	$a4, 24($a4)
	mtc1	$f3, $zero
	flw	$f4, 8($a2)
	fblt	$f4, $f3, fbge_else.20773
	li	$a6, 0
	j	fbge_cont.20774
fbge_else.20773:
	li	$a6, 1
fbge_cont.20774:
	xor	$a4, $a4, $a6
	flw	$f3, 8($a5)
	li	$a6, 0
	bne	$a4, $a6, bne_else.20775
	fneg	$f3, $f3
	j	bne_cont.20776
bne_else.20775:
bne_cont.20776:
	fsub	$f2, $f3, $f2
	flw	$f3, 8($a2)
	finv	$f3, $f3
	fmul	$f2, $f2, $f3
	flw	$f3, 0($a5)
	flw	$f4, 0($a2)
	fmul	$f4, $f2, $f4
	fadd	$f0, $f4, $f0
	fabs	$f0, $f0
	fblt	$f0, $f3, fbge_else.20777
	li	$a4, 0
	j	fbge_cont.20778
fbge_else.20777:
	flw	$f0, 4($a5)
	flw	$f3, 4($a2)
	fmul	$f3, $f2, $f3
	fadd	$f1, $f3, $f1
	fabs	$f1, $f1
	fblt	$f1, $f0, fbge_else.20779
	li	$a4, 0
	j	fbge_cont.20780
fbge_else.20779:
	li	$a4, 540
	fsw	$f2, 0($a4)
	li	$a4, 1
fbge_cont.20780:
fbge_cont.20778:
fbne_cont.20772:
	li	$a5, 0
	bne	$a4, $a5, bne_else.20781
	li	$a4, 0
	j	bne_cont.20782
bne_else.20781:
	li	$a4, 3
bne_cont.20782:
	j	bne_cont.20770
bne_else.20769:
	li	$a4, 2
bne_cont.20770:
	j	bne_cont.20758
bne_else.20757:
	li	$a4, 1
bne_cont.20758:
	j	bne_cont.20746
bne_else.20745:
	li	$a6, 2
	bne	$a5, $a6, bne_else.20783
	lw	$a4, 16($a4)
	flw	$f3, 0($a2)
	flw	$f4, 0($a4)
	fmul	$f3, $f3, $f4
	flw	$f4, 4($a2)
	flw	$f5, 4($a4)
	fmul	$f4, $f4, $f5
	fadd	$f3, $f3, $f4
	flw	$f4, 8($a2)
	flw	$f5, 8($a4)
	fmul	$f4, $f4, $f5
	fadd	$f3, $f3, $f4
	mtc1	$f4, $zero
	fblt	$f4, $f3, fbge_else.20785
	li	$a4, 0
	j	fbge_cont.20786
fbge_else.20785:
	li	$a5, 540
	flw	$f4, 0($a4)
	fmul	$f0, $f4, $f0
	flw	$f4, 4($a4)
	fmul	$f1, $f4, $f1
	fadd	$f0, $f0, $f1
	flw	$f1, 8($a4)
	fmul	$f1, $f1, $f2
	fadd	$f0, $f0, $f1
	fneg	$f0, $f0
	finv	$f1, $f3
	fmul	$f0, $f0, $f1
	fsw	$f0, 0($a5)
	li	$a4, 1
fbge_cont.20786:
	j	bne_cont.20784
bne_else.20783:
	flw	$f3, 0($a2)
	flw	$f4, 4($a2)
	flw	$f5, 8($a2)
	fmul	$f6, $f3, $f3
	lw	$a5, 16($a4)
	flw	$f7, 0($a5)
	fmul	$f6, $f6, $f7
	fmul	$f7, $f4, $f4
	lw	$a5, 16($a4)
	flw	$f8, 4($a5)
	fmul	$f7, $f7, $f8
	fadd	$f6, $f6, $f7
	fmul	$f7, $f5, $f5
	lw	$a5, 16($a4)
	flw	$f8, 8($a5)
	fmul	$f7, $f7, $f8
	fadd	$f6, $f6, $f7
	lw	$a5, 12($a4)
	li	$a6, 0
	bne	$a5, $a6, bne_else.20787
	fmove	$f3, $f6
	j	bne_cont.20788
bne_else.20787:
	fmul	$f7, $f4, $f5
	lw	$a5, 36($a4)
	flw	$f8, 0($a5)
	fmul	$f7, $f7, $f8
	fadd	$f6, $f6, $f7
	fmul	$f5, $f5, $f3
	lw	$a5, 36($a4)
	flw	$f7, 4($a5)
	fmul	$f5, $f5, $f7
	fadd	$f5, $f6, $f5
	fmul	$f3, $f3, $f4
	lw	$a5, 36($a4)
	flw	$f4, 8($a5)
	fmul	$f3, $f3, $f4
	fadd	$f3, $f5, $f3
bne_cont.20788:
	mtc1	$f4, $zero
	fbne	$f3, $f4, fbne_else.20789
	li	$a4, 0
	j	fbne_cont.20790
fbne_else.20789:
	flw	$f4, 0($a2)
	flw	$f5, 4($a2)
	flw	$f6, 8($a2)
	fmul	$f7, $f4, $f0
	lw	$a5, 16($a4)
	flw	$f8, 0($a5)
	fmul	$f7, $f7, $f8
	fmul	$f8, $f5, $f1
	lw	$a5, 16($a4)
	flw	$f9, 4($a5)
	fmul	$f8, $f8, $f9
	fadd	$f7, $f7, $f8
	fmul	$f8, $f6, $f2
	lw	$a5, 16($a4)
	flw	$f9, 8($a5)
	fmul	$f8, $f8, $f9
	fadd	$f7, $f7, $f8
	lw	$a5, 12($a4)
	li	$a6, 0
	bne	$a5, $a6, bne_else.20791
	fmove	$f4, $f7
	j	bne_cont.20792
bne_else.20791:
	fmul	$f8, $f6, $f1
	fmul	$f9, $f5, $f2
	fadd	$f8, $f8, $f9
	lw	$a5, 36($a4)
	flw	$f9, 0($a5)
	fmul	$f8, $f8, $f9
	fmul	$f9, $f4, $f2
	fmul	$f6, $f6, $f0
	fadd	$f6, $f9, $f6
	lw	$a5, 36($a4)
	flw	$f9, 4($a5)
	fmul	$f6, $f6, $f9
	fadd	$f6, $f8, $f6
	fmul	$f4, $f4, $f1
	fmul	$f5, $f5, $f0
	fadd	$f4, $f4, $f5
	lw	$a5, 36($a4)
	flw	$f5, 8($a5)
	fmul	$f4, $f4, $f5
	fadd	$f4, $f6, $f4
	li	$v0, 16128
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f5, $v0
	fmul	$f4, $f4, $f5
	fadd	$f4, $f7, $f4
bne_cont.20792:
	fmul	$f5, $f0, $f0
	lw	$a5, 16($a4)
	flw	$f6, 0($a5)
	fmul	$f5, $f5, $f6
	fmul	$f6, $f1, $f1
	lw	$a5, 16($a4)
	flw	$f7, 4($a5)
	fmul	$f6, $f6, $f7
	fadd	$f5, $f5, $f6
	fmul	$f6, $f2, $f2
	lw	$a5, 16($a4)
	flw	$f7, 8($a5)
	fmul	$f6, $f6, $f7
	fadd	$f5, $f5, $f6
	lw	$a5, 12($a4)
	li	$a6, 0
	bne	$a5, $a6, bne_else.20793
	fmove	$f0, $f5
	j	bne_cont.20794
bne_else.20793:
	fmul	$f6, $f1, $f2
	lw	$a5, 36($a4)
	flw	$f7, 0($a5)
	fmul	$f6, $f6, $f7
	fadd	$f5, $f5, $f6
	fmul	$f2, $f2, $f0
	lw	$a5, 36($a4)
	flw	$f6, 4($a5)
	fmul	$f2, $f2, $f6
	fadd	$f2, $f5, $f2
	fmul	$f0, $f0, $f1
	lw	$a5, 36($a4)
	flw	$f1, 8($a5)
	fmul	$f0, $f0, $f1
	fadd	$f0, $f2, $f0
bne_cont.20794:
	lw	$a5, 4($a4)
	li	$a6, 3
	bne	$a5, $a6, bne_else.20795
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	fsub	$f0, $f0, $f1
	j	bne_cont.20796
bne_else.20795:
bne_cont.20796:
	fmul	$f1, $f4, $f4
	fmul	$f0, $f3, $f0
	fsub	$f0, $f1, $f0
	mtc1	$f1, $zero
	fblt	$f1, $f0, fbge_else.20797
	li	$a4, 0
	j	fbge_cont.20798
fbge_else.20797:
	sqrt	$f0, $f0
	lw	$a4, 24($a4)
	li	$a5, 0
	bne	$a4, $a5, bne_else.20799
	fneg	$f0, $f0
	j	bne_cont.20800
bne_else.20799:
bne_cont.20800:
	li	$a4, 540
	fsub	$f0, $f0, $f4
	finv	$f1, $f3
	fmul	$f0, $f0, $f1
	fsw	$f0, 0($a4)
	li	$a4, 1
fbge_cont.20798:
fbne_cont.20790:
bne_cont.20784:
bne_cont.20746:
	li	$a5, 0
	bne	$a4, $a5, bne_else.20801
	j	bne_cont.20802
bne_else.20801:
	li	$a4, 540
	flw	$f0, 0($a4)
	li	$a4, 548
	flw	$f1, 0($a4)
	fblt	$f0, $f1, fbge_else.20803
	j	fbge_cont.20804
fbge_else.20803:
	li	$a4, 1
	move	$a1, $a3
	move	$a0, $a4
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	solve_one_or_network.2921
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	fmove	$f30, $fv
fbge_cont.20804:
bne_cont.20802:
bne_cont.20744:
	lw	$a0, 8($sp)
	addi	$a0, $a0, 1
	lw	$a1, 4($sp)
	lw	$a2, 0($sp)
	j	trace_or_matrix.2925
solve_each_element_fast.2931:
	lw	$a3, 0($a2)
	sll	$a4, $a0, 2
	add	$a4, $a1, $a4
	lw	$a4, 0($a4)
	li	$a5, -1
	bne	$a4, $a5, beq_else.20805
	jr	$ra
beq_else.20805:
	li	$a5, 48
	sll	$a6, $a4, 2
	add	$a6, $a5, $a6
	lw	$a5, 0($a6)
	lw	$a6, 40($a5)
	flw	$f0, 0($a6)
	flw	$f1, 4($a6)
	flw	$f2, 8($a6)
	lw	$a7, 4($a2)
	sll	$a8, $a4, 2
	add	$a8, $a7, $a8
	lw	$a7, 0($a8)
	lw	$a8, 4($a5)
	li	$a9, 1
	bne	$a8, $a9, bne_else.20807
	lw	$a6, 0($a2)
	li	$a8, 0
	flw	$f3, 0($a7)
	fsub	$f3, $f3, $f0
	flw	$f4, 4($a7)
	fmul	$f3, $f3, $f4
	lw	$a9, 16($a5)
	flw	$f4, 4($a9)
	flw	$f5, 4($a6)
	fmul	$f5, $f3, $f5
	fadd	$f5, $f5, $f1
	fabs	$f5, $f5
	fblt	$f5, $f4, fbge_else.20809
	li	$a9, 0
	j	fbge_cont.20810
fbge_else.20809:
	lw	$a9, 16($a5)
	flw	$f4, 8($a9)
	flw	$f5, 8($a6)
	fmul	$f5, $f3, $f5
	fadd	$f5, $f5, $f2
	fabs	$f5, $f5
	fblt	$f5, $f4, fbge_else.20811
	li	$a9, 0
	j	fbge_cont.20812
fbge_else.20811:
	flw	$f4, 4($a7)
	mtc1	$f5, $zero
	fbne	$f4, $f5, fbne_else.20813
	li	$a9, 0
	j	fbne_cont.20814
fbne_else.20813:
	li	$a9, 1
fbne_cont.20814:
fbge_cont.20812:
fbge_cont.20810:
	bne	$a9, $a8, bne_else.20815
	flw	$f3, 8($a7)
	fsub	$f3, $f3, $f1
	flw	$f4, 12($a7)
	fmul	$f3, $f3, $f4
	lw	$a8, 16($a5)
	flw	$f4, 0($a8)
	flw	$f5, 0($a6)
	fmul	$f5, $f3, $f5
	fadd	$f5, $f5, $f0
	fabs	$f5, $f5
	fblt	$f5, $f4, fbge_else.20817
	li	$a8, 0
	j	fbge_cont.20818
fbge_else.20817:
	lw	$a8, 16($a5)
	flw	$f4, 8($a8)
	flw	$f5, 8($a6)
	fmul	$f5, $f3, $f5
	fadd	$f5, $f5, $f2
	fabs	$f5, $f5
	fblt	$f5, $f4, fbge_else.20819
	li	$a8, 0
	j	fbge_cont.20820
fbge_else.20819:
	flw	$f4, 12($a7)
	mtc1	$f5, $zero
	fbne	$f4, $f5, fbne_else.20821
	li	$a8, 0
	j	fbne_cont.20822
fbne_else.20821:
	li	$a8, 1
fbne_cont.20822:
fbge_cont.20820:
fbge_cont.20818:
	li	$a9, 0
	bne	$a8, $a9, bne_else.20823
	flw	$f3, 16($a7)
	fsub	$f2, $f3, $f2
	flw	$f3, 20($a7)
	fmul	$f2, $f2, $f3
	lw	$a8, 16($a5)
	flw	$f3, 0($a8)
	flw	$f4, 0($a6)
	fmul	$f4, $f2, $f4
	fadd	$f0, $f4, $f0
	fabs	$f0, $f0
	fblt	$f0, $f3, fbge_else.20825
	li	$a5, 0
	j	fbge_cont.20826
fbge_else.20825:
	lw	$a5, 16($a5)
	flw	$f0, 4($a5)
	flw	$f3, 4($a6)
	fmul	$f3, $f2, $f3
	fadd	$f1, $f3, $f1
	fabs	$f1, $f1
	fblt	$f1, $f0, fbge_else.20827
	li	$a5, 0
	j	fbge_cont.20828
fbge_else.20827:
	flw	$f0, 20($a7)
	mtc1	$f1, $zero
	fbne	$f0, $f1, fbne_else.20829
	li	$a5, 0
	j	fbne_cont.20830
fbne_else.20829:
	li	$a5, 1
fbne_cont.20830:
fbge_cont.20828:
fbge_cont.20826:
	li	$a6, 0
	bne	$a5, $a6, bne_else.20831
	li	$a5, 0
	j	bne_cont.20832
bne_else.20831:
	li	$a5, 540
	fsw	$f2, 0($a5)
	li	$a5, 3
bne_cont.20832:
	j	bne_cont.20824
bne_else.20823:
	li	$a5, 540
	fsw	$f3, 0($a5)
	li	$a5, 2
bne_cont.20824:
	j	bne_cont.20816
bne_else.20815:
	li	$a5, 540
	fsw	$f3, 0($a5)
	li	$a5, 1
bne_cont.20816:
	j	bne_cont.20808
bne_else.20807:
	li	$a9, 2
	bne	$a8, $a9, bne_else.20833
	mtc1	$f0, $zero
	flw	$f1, 0($a7)
	fblt	$f1, $f0, fbge_else.20835
	li	$a5, 0
	j	fbge_cont.20836
fbge_else.20835:
	li	$a5, 540
	flw	$f0, 0($a7)
	flw	$f1, 12($a6)
	fmul	$f0, $f0, $f1
	fsw	$f0, 0($a5)
	li	$a5, 1
fbge_cont.20836:
	j	bne_cont.20834
bne_else.20833:
	flw	$f3, 0($a7)
	mtc1	$f4, $zero
	fbne	$f3, $f4, fbne_else.20837
	li	$a5, 0
	j	fbne_cont.20838
fbne_else.20837:
	flw	$f4, 4($a7)
	fmul	$f0, $f4, $f0
	flw	$f4, 8($a7)
	fmul	$f1, $f4, $f1
	fadd	$f0, $f0, $f1
	flw	$f1, 12($a7)
	fmul	$f1, $f1, $f2
	fadd	$f0, $f0, $f1
	flw	$f1, 12($a6)
	fmul	$f2, $f0, $f0
	fmul	$f1, $f3, $f1
	fsub	$f1, $f2, $f1
	mtc1	$f2, $zero
	fblt	$f2, $f1, fbge_else.20839
	li	$a5, 0
	j	fbge_cont.20840
fbge_else.20839:
	lw	$a5, 24($a5)
	li	$a6, 0
	bne	$a5, $a6, bne_else.20841
	li	$a5, 540
	sqrt	$f1, $f1
	fsub	$f0, $f0, $f1
	flw	$f1, 16($a7)
	fmul	$f0, $f0, $f1
	fsw	$f0, 0($a5)
	j	bne_cont.20842
bne_else.20841:
	li	$a5, 540
	sqrt	$f1, $f1
	fadd	$f0, $f0, $f1
	flw	$f1, 16($a7)
	fmul	$f0, $f0, $f1
	fsw	$f0, 0($a5)
bne_cont.20842:
	li	$a5, 1
fbge_cont.20840:
fbne_cont.20838:
bne_cont.20834:
bne_cont.20808:
	li	$a6, 0
	bne	$a5, $a6, beq_else.20843
	li	$a3, 48
	sll	$a4, $a4, 2
	add	$a4, $a3, $a4
	lw	$a3, 0($a4)
	lw	$a3, 24($a3)
	li	$a4, 0
	bne	$a3, $a4, beq_else.20844
	jr	$ra
beq_else.20844:
	addi	$a0, $a0, 1
	j	solve_each_element_fast.2931
beq_else.20843:
	li	$a6, 540
	flw	$f0, 0($a6)
	mtc1	$f1, $zero
	sw	$a2, 0($sp)
	sw	$a1, 4($sp)
	sw	$a0, 8($sp)
	fblt	$f1, $f0, fbge_else.20846
	j	fbge_cont.20847
fbge_else.20846:
	li	$a6, 548
	flw	$f1, 0($a6)
	fblt	$f0, $f1, fbge_else.20848
	j	fbge_cont.20849
fbge_else.20848:
	li	$v0, 15395
	sll	$v0, $v0, 16
	ori	$v0, $v0, 55050
	mtc1	$f1, $v0
	fadd	$f0, $f0, $f1
	flw	$f1, 0($a3)
	fmul	$f1, $f1, $f0
	li	$a6, 648
	flw	$f2, 0($a6)
	fadd	$f1, $f1, $f2
	flw	$f2, 4($a3)
	fmul	$f2, $f2, $f0
	li	$a6, 648
	flw	$f3, 4($a6)
	fadd	$f2, $f2, $f3
	flw	$f3, 8($a3)
	fmul	$f3, $f3, $f0
	li	$a3, 648
	flw	$f4, 8($a3)
	fadd	$f3, $f3, $f4
	li	$a3, 0
	sw	$a5, 12($sp)
	sw	$a4, 16($sp)
	fsw	$f3, 24($sp)
	fsw	$f2, 32($sp)
	fsw	$f1, 40($sp)
	fsw	$f0, 48($sp)
	move	$a0, $a3
	fmove	$f0, $f1
	fmove	$f1, $f2
	fmove	$f2, $f3
	sw	$ra, 60($sp)
	addi	$sp, $sp, 64
	jal	check_all_inside.2902
	subi	$sp, $sp, 64
	lw	$ra, 60($sp)
	move	$a0, $v0
	li	$a1, 0
	bne	$a0, $a1, bne_else.20851
	j	bne_cont.20852
bne_else.20851:
	li	$a0, 548
	flw	$f0, 48($sp)
	fsw	$f0, 0($a0)
	li	$a0, 552
	flw	$f0, 40($sp)
	fsw	$f0, 0($a0)
	flw	$f0, 32($sp)
	fsw	$f0, 4($a0)
	flw	$f0, 24($sp)
	fsw	$f0, 8($a0)
	li	$a0, 564
	lw	$a1, 16($sp)
	sw	$a1, 0($a0)
	li	$a0, 544
	lw	$a1, 12($sp)
	sw	$a1, 0($a0)
bne_cont.20852:
fbge_cont.20849:
fbge_cont.20847:
	lw	$a0, 8($sp)
	addi	$a0, $a0, 1
	lw	$a1, 4($sp)
	lw	$a2, 0($sp)
	j	solve_each_element_fast.2931
solve_one_or_network_fast.2935:
	sll	$a3, $a0, 2
	add	$a3, $a1, $a3
	lw	$a3, 0($a3)
	li	$a4, -1
	bne	$a3, $a4, beq_else.20853
	jr	$ra
beq_else.20853:
	li	$a4, 332
	sll	$a3, $a3, 2
	add	$a3, $a4, $a3
	lw	$a3, 0($a3)
	li	$a4, 0
	sw	$a2, 0($sp)
	sw	$a1, 4($sp)
	sw	$a0, 8($sp)
	move	$a1, $a3
	move	$a0, $a4
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	solve_each_element_fast.2931
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	fmove	$f30, $fv
	lw	$a0, 8($sp)
	addi	$a0, $a0, 1
	lw	$a1, 4($sp)
	lw	$a2, 0($sp)
	j	solve_one_or_network_fast.2935
trace_or_matrix_fast.2939:
	sll	$a3, $a0, 2
	add	$a3, $a1, $a3
	lw	$a3, 0($a3)
	lw	$a4, 0($a3)
	li	$a5, -1
	bne	$a4, $a5, beq_else.20855
	jr	$ra
beq_else.20855:
	li	$a5, 99
	sw	$a2, 0($sp)
	sw	$a1, 4($sp)
	sw	$a0, 8($sp)
	bne	$a4, $a5, bne_else.20857
	li	$a4, 1
	move	$a1, $a3
	move	$a0, $a4
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	solve_one_or_network_fast.2935
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	fmove	$f30, $fv
	j	bne_cont.20858
bne_else.20857:
	li	$a5, 48
	sll	$a6, $a4, 2
	add	$a6, $a5, $a6
	lw	$a5, 0($a6)
	lw	$a6, 40($a5)
	flw	$f0, 0($a6)
	flw	$f1, 4($a6)
	flw	$f2, 8($a6)
	lw	$a7, 4($a2)
	sll	$a4, $a4, 2
	add	$a4, $a7, $a4
	lw	$a4, 0($a4)
	lw	$a7, 4($a5)
	li	$a8, 1
	bne	$a7, $a8, bne_else.20859
	lw	$a6, 0($a2)
	li	$a7, 0
	flw	$f3, 0($a4)
	fsub	$f3, $f3, $f0
	flw	$f4, 4($a4)
	fmul	$f3, $f3, $f4
	lw	$a8, 16($a5)
	flw	$f4, 4($a8)
	flw	$f5, 4($a6)
	fmul	$f5, $f3, $f5
	fadd	$f5, $f5, $f1
	fabs	$f5, $f5
	fblt	$f5, $f4, fbge_else.20861
	li	$a8, 0
	j	fbge_cont.20862
fbge_else.20861:
	lw	$a8, 16($a5)
	flw	$f4, 8($a8)
	flw	$f5, 8($a6)
	fmul	$f5, $f3, $f5
	fadd	$f5, $f5, $f2
	fabs	$f5, $f5
	fblt	$f5, $f4, fbge_else.20863
	li	$a8, 0
	j	fbge_cont.20864
fbge_else.20863:
	flw	$f4, 4($a4)
	mtc1	$f5, $zero
	fbne	$f4, $f5, fbne_else.20865
	li	$a8, 0
	j	fbne_cont.20866
fbne_else.20865:
	li	$a8, 1
fbne_cont.20866:
fbge_cont.20864:
fbge_cont.20862:
	bne	$a8, $a7, bne_else.20867
	flw	$f3, 8($a4)
	fsub	$f3, $f3, $f1
	flw	$f4, 12($a4)
	fmul	$f3, $f3, $f4
	lw	$a7, 16($a5)
	flw	$f4, 0($a7)
	flw	$f5, 0($a6)
	fmul	$f5, $f3, $f5
	fadd	$f5, $f5, $f0
	fabs	$f5, $f5
	fblt	$f5, $f4, fbge_else.20869
	li	$a7, 0
	j	fbge_cont.20870
fbge_else.20869:
	lw	$a7, 16($a5)
	flw	$f4, 8($a7)
	flw	$f5, 8($a6)
	fmul	$f5, $f3, $f5
	fadd	$f5, $f5, $f2
	fabs	$f5, $f5
	fblt	$f5, $f4, fbge_else.20871
	li	$a7, 0
	j	fbge_cont.20872
fbge_else.20871:
	flw	$f4, 12($a4)
	mtc1	$f5, $zero
	fbne	$f4, $f5, fbne_else.20873
	li	$a7, 0
	j	fbne_cont.20874
fbne_else.20873:
	li	$a7, 1
fbne_cont.20874:
fbge_cont.20872:
fbge_cont.20870:
	li	$a8, 0
	bne	$a7, $a8, bne_else.20875
	flw	$f3, 16($a4)
	fsub	$f2, $f3, $f2
	flw	$f3, 20($a4)
	fmul	$f2, $f2, $f3
	lw	$a7, 16($a5)
	flw	$f3, 0($a7)
	flw	$f4, 0($a6)
	fmul	$f4, $f2, $f4
	fadd	$f0, $f4, $f0
	fabs	$f0, $f0
	fblt	$f0, $f3, fbge_else.20877
	li	$a4, 0
	j	fbge_cont.20878
fbge_else.20877:
	lw	$a5, 16($a5)
	flw	$f0, 4($a5)
	flw	$f3, 4($a6)
	fmul	$f3, $f2, $f3
	fadd	$f1, $f3, $f1
	fabs	$f1, $f1
	fblt	$f1, $f0, fbge_else.20879
	li	$a4, 0
	j	fbge_cont.20880
fbge_else.20879:
	flw	$f0, 20($a4)
	mtc1	$f1, $zero
	fbne	$f0, $f1, fbne_else.20881
	li	$a4, 0
	j	fbne_cont.20882
fbne_else.20881:
	li	$a4, 1
fbne_cont.20882:
fbge_cont.20880:
fbge_cont.20878:
	li	$a5, 0
	bne	$a4, $a5, bne_else.20883
	li	$a4, 0
	j	bne_cont.20884
bne_else.20883:
	li	$a4, 540
	fsw	$f2, 0($a4)
	li	$a4, 3
bne_cont.20884:
	j	bne_cont.20876
bne_else.20875:
	li	$a4, 540
	fsw	$f3, 0($a4)
	li	$a4, 2
bne_cont.20876:
	j	bne_cont.20868
bne_else.20867:
	li	$a4, 540
	fsw	$f3, 0($a4)
	li	$a4, 1
bne_cont.20868:
	j	bne_cont.20860
bne_else.20859:
	li	$a8, 2
	bne	$a7, $a8, bne_else.20885
	mtc1	$f0, $zero
	flw	$f1, 0($a4)
	fblt	$f1, $f0, fbge_else.20887
	li	$a4, 0
	j	fbge_cont.20888
fbge_else.20887:
	li	$a5, 540
	flw	$f0, 0($a4)
	flw	$f1, 12($a6)
	fmul	$f0, $f0, $f1
	fsw	$f0, 0($a5)
	li	$a4, 1
fbge_cont.20888:
	j	bne_cont.20886
bne_else.20885:
	flw	$f3, 0($a4)
	mtc1	$f4, $zero
	fbne	$f3, $f4, fbne_else.20889
	li	$a4, 0
	j	fbne_cont.20890
fbne_else.20889:
	flw	$f4, 4($a4)
	fmul	$f0, $f4, $f0
	flw	$f4, 8($a4)
	fmul	$f1, $f4, $f1
	fadd	$f0, $f0, $f1
	flw	$f1, 12($a4)
	fmul	$f1, $f1, $f2
	fadd	$f0, $f0, $f1
	flw	$f1, 12($a6)
	fmul	$f2, $f0, $f0
	fmul	$f1, $f3, $f1
	fsub	$f1, $f2, $f1
	mtc1	$f2, $zero
	fblt	$f2, $f1, fbge_else.20891
	li	$a4, 0
	j	fbge_cont.20892
fbge_else.20891:
	lw	$a5, 24($a5)
	li	$a6, 0
	bne	$a5, $a6, bne_else.20893
	li	$a5, 540
	sqrt	$f1, $f1
	fsub	$f0, $f0, $f1
	flw	$f1, 16($a4)
	fmul	$f0, $f0, $f1
	fsw	$f0, 0($a5)
	j	bne_cont.20894
bne_else.20893:
	li	$a5, 540
	sqrt	$f1, $f1
	fadd	$f0, $f0, $f1
	flw	$f1, 16($a4)
	fmul	$f0, $f0, $f1
	fsw	$f0, 0($a5)
bne_cont.20894:
	li	$a4, 1
fbge_cont.20892:
fbne_cont.20890:
bne_cont.20886:
bne_cont.20860:
	li	$a5, 0
	bne	$a4, $a5, bne_else.20895
	j	bne_cont.20896
bne_else.20895:
	li	$a4, 540
	flw	$f0, 0($a4)
	li	$a4, 548
	flw	$f1, 0($a4)
	fblt	$f0, $f1, fbge_else.20897
	j	fbge_cont.20898
fbge_else.20897:
	li	$a4, 1
	move	$a1, $a3
	move	$a0, $a4
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	solve_one_or_network_fast.2935
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	fmove	$f30, $fv
fbge_cont.20898:
bne_cont.20896:
bne_cont.20858:
	lw	$a0, 8($sp)
	addi	$a0, $a0, 1
	lw	$a1, 4($sp)
	lw	$a2, 0($sp)
	j	trace_or_matrix_fast.2939
utexture.2954:
	lw	$a2, 0($a0)
	li	$a3, 580
	lw	$a4, 32($a0)
	flw	$f0, 0($a4)
	fsw	$f0, 0($a3)
	li	$a4, 1
	lw	$a5, 32($a0)
	flw	$f0, 4($a5)
	fsw	$f0, 4($a3)
	lw	$a5, 32($a0)
	flw	$f0, 8($a5)
	fsw	$f0, 8($a3)
	bne	$a2, $a4, beq_else.20899
	flw	$f0, 0($a1)
	lw	$a2, 20($a0)
	flw	$f1, 0($a2)
	fsub	$f0, $f0, $f1
	li	$v0, 15692
	sll	$v0, $v0, 16
	ori	$v0, $v0, 52429
	mtc1	$f1, $v0
	fmul	$f1, $f0, $f1
	sw	$a0, 0($sp)
	sw	$a1, 4($sp)
	fsw	$f0, 8($sp)
	fmove	$f0, $f1
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	min_caml_floor
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	fmove	$f0, $fv
	li	$v0, 16800
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	fmul	$f0, $f0, $f1
	li	$v0, 16672
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	flw	$f2, 8($sp)
	fsub	$f0, $f2, $f0
	fblt	$f0, $f1, fbge_else.20900
	li	$a0, 0
	j	fbge_cont.20901
fbge_else.20900:
	li	$a0, 1
fbge_cont.20901:
	lw	$a1, 4($sp)
	flw	$f0, 8($a1)
	lw	$a1, 0($sp)
	lw	$a1, 20($a1)
	flw	$f1, 8($a1)
	fsub	$f0, $f0, $f1
	li	$v0, 15692
	sll	$v0, $v0, 16
	ori	$v0, $v0, 52429
	mtc1	$f1, $v0
	fmul	$f1, $f0, $f1
	sw	$a0, 16($sp)
	fsw	$f0, 24($sp)
	fmove	$f0, $f1
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	min_caml_floor
	subi	$sp, $sp, 40
	lw	$ra, 36($sp)
	fmove	$f0, $fv
	li	$v0, 16800
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	fmul	$f0, $f0, $f1
	li	$v0, 16672
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	flw	$f2, 24($sp)
	fsub	$f0, $f2, $f0
	fblt	$f0, $f1, fbge_else.20903
	li	$a0, 0
	j	fbge_cont.20904
fbge_else.20903:
	li	$a0, 1
fbge_cont.20904:
	li	$a1, 580
	li	$a2, 0
	lw	$a3, 16($sp)
	bne	$a3, $a2, bne_else.20905
	li	$a2, 0
	bne	$a0, $a2, bne_else.20907
	li	$v0, 17279
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f0, $v0
	j	bne_cont.20908
bne_else.20907:
	mtc1	$f0, $zero
bne_cont.20908:
	j	bne_cont.20906
bne_else.20905:
	li	$a2, 0
	bne	$a0, $a2, bne_else.20909
	mtc1	$f0, $zero
	j	bne_cont.20910
bne_else.20909:
	li	$v0, 17279
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f0, $v0
bne_cont.20910:
bne_cont.20906:
	fsw	$f0, 4($a1)
	jr	$ra
beq_else.20899:
	li	$a3, 2
	bne	$a2, $a3, beq_else.20912
	flw	$f0, 4($a1)
	li	$v0, 16000
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	fmul	$f0, $f0, $f1
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	min_caml_sin
	subi	$sp, $sp, 40
	lw	$ra, 36($sp)
	fmove	$f0, $fv
	fmul	$f0, $f0, $f0
	li	$a0, 580
	li	$v0, 17279
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	fmul	$f1, $f1, $f0
	fsw	$f1, 0($a0)
	li	$a0, 580
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	fsub	$f0, $f1, $f0
	li	$v0, 17279
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	fmul	$f0, $f1, $f0
	fsw	$f0, 4($a0)
	jr	$ra
beq_else.20912:
	li	$a3, 3
	bne	$a2, $a3, beq_else.20914
	flw	$f0, 0($a1)
	lw	$a2, 20($a0)
	flw	$f1, 0($a2)
	fsub	$f0, $f0, $f1
	flw	$f1, 8($a1)
	lw	$a0, 20($a0)
	flw	$f2, 8($a0)
	fsub	$f1, $f1, $f2
	fmul	$f0, $f0, $f0
	fmul	$f1, $f1, $f1
	fadd	$f0, $f0, $f1
	li	$v0, 16672
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	finv	$f1, $f1
	fmul	$f0, $f0, $f1
	sqrt	$f0, $f0
	fsw	$f0, 32($sp)
	sw	$ra, 44($sp)
	addi	$sp, $sp, 48
	jal	min_caml_floor
	subi	$sp, $sp, 48
	lw	$ra, 44($sp)
	fmove	$f0, $fv
	flw	$f1, 32($sp)
	fsub	$f0, $f1, $f0
	li	$v0, 16457
	sll	$v0, $v0, 16
	ori	$v0, $v0, 4059
	mtc1	$f1, $v0
	fmul	$f0, $f0, $f1
	sw	$ra, 44($sp)
	addi	$sp, $sp, 48
	jal	min_caml_cos
	subi	$sp, $sp, 48
	lw	$ra, 44($sp)
	fmove	$f0, $fv
	fmul	$f0, $f0, $f0
	li	$a0, 580
	li	$v0, 17279
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	fmul	$f1, $f0, $f1
	fsw	$f1, 4($a0)
	li	$a0, 580
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	fsub	$f0, $f1, $f0
	li	$v0, 17279
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	fmul	$f0, $f0, $f1
	fsw	$f0, 8($a0)
	jr	$ra
beq_else.20914:
	li	$a3, 4
	bne	$a2, $a3, beq_else.20916
	flw	$f0, 0($a1)
	lw	$a2, 20($a0)
	flw	$f1, 0($a2)
	fsub	$f0, $f0, $f1
	lw	$a2, 16($a0)
	flw	$f1, 0($a2)
	sqrt	$f1, $f1
	fmul	$f0, $f0, $f1
	flw	$f1, 8($a1)
	lw	$a2, 20($a0)
	flw	$f2, 8($a2)
	fsub	$f1, $f1, $f2
	lw	$a2, 16($a0)
	flw	$f2, 8($a2)
	sqrt	$f2, $f2
	fmul	$f1, $f1, $f2
	fmul	$f2, $f0, $f0
	fmul	$f3, $f1, $f1
	fadd	$f2, $f2, $f3
	li	$v0, 14545
	sll	$v0, $v0, 16
	ori	$v0, $v0, 46871
	mtc1	$f3, $v0
	fabs	$f4, $f0
	fsw	$f2, 40($sp)
	sw	$a0, 0($sp)
	sw	$a1, 4($sp)
	fblt	$f4, $f3, fbge_else.20917
	finv	$f0, $f0
	fmul	$f0, $f1, $f0
	fabs	$f0, $f0
	sw	$ra, 52($sp)
	addi	$sp, $sp, 56
	jal	min_caml_atan
	subi	$sp, $sp, 56
	lw	$ra, 52($sp)
	fmove	$f0, $fv
	li	$v0, 16880
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	fmul	$f0, $f0, $f1
	li	$v0, 16457
	sll	$v0, $v0, 16
	ori	$v0, $v0, 4059
	mtc1	$f1, $v0
	finv	$f1, $f1
	fmul	$f0, $f0, $f1
	j	fbge_cont.20918
fbge_else.20917:
	li	$v0, 16752
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f0, $v0
fbge_cont.20918:
	fsw	$f0, 48($sp)
	sw	$ra, 60($sp)
	addi	$sp, $sp, 64
	jal	min_caml_floor
	subi	$sp, $sp, 64
	lw	$ra, 60($sp)
	fmove	$f0, $fv
	flw	$f1, 48($sp)
	fsub	$f0, $f1, $f0
	lw	$a0, 4($sp)
	flw	$f1, 4($a0)
	lw	$a0, 0($sp)
	lw	$a1, 20($a0)
	flw	$f2, 4($a1)
	fsub	$f1, $f1, $f2
	lw	$a0, 16($a0)
	flw	$f2, 4($a0)
	sqrt	$f2, $f2
	fmul	$f1, $f1, $f2
	li	$v0, 14545
	sll	$v0, $v0, 16
	ori	$v0, $v0, 46871
	mtc1	$f2, $v0
	flw	$f3, 40($sp)
	fabs	$f4, $f3
	fsw	$f0, 56($sp)
	fblt	$f4, $f2, fbge_else.20919
	finv	$f2, $f3
	fmul	$f1, $f1, $f2
	fabs	$f1, $f1
	fmove	$f0, $f1
	sw	$ra, 68($sp)
	addi	$sp, $sp, 72
	jal	min_caml_atan
	subi	$sp, $sp, 72
	lw	$ra, 68($sp)
	fmove	$f0, $fv
	li	$v0, 16880
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	fmul	$f0, $f0, $f1
	li	$v0, 16457
	sll	$v0, $v0, 16
	ori	$v0, $v0, 4059
	mtc1	$f1, $v0
	finv	$f1, $f1
	fmul	$f0, $f0, $f1
	j	fbge_cont.20920
fbge_else.20919:
	li	$v0, 16752
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f0, $v0
fbge_cont.20920:
	fsw	$f0, 64($sp)
	sw	$ra, 76($sp)
	addi	$sp, $sp, 80
	jal	min_caml_floor
	subi	$sp, $sp, 80
	lw	$ra, 76($sp)
	fmove	$f0, $fv
	flw	$f1, 64($sp)
	fsub	$f0, $f1, $f0
	li	$v0, 16128
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	flw	$f2, 56($sp)
	fsub	$f1, $f1, $f2
	fmul	$f1, $f1, $f1
	li	$v0, 15897
	sll	$v0, $v0, 16
	ori	$v0, $v0, 39322
	mtc1	$f2, $v0
	fsub	$f1, $f2, $f1
	li	$v0, 16128
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fsub	$f0, $f2, $f0
	fmul	$f0, $f0, $f0
	fsub	$f0, $f1, $f0
	mtc1	$f1, $zero
	fblt	$f0, $f1, fbge_else.20921
	j	fbge_cont.20922
fbge_else.20921:
	mtc1	$f0, $zero
fbge_cont.20922:
	li	$a0, 580
	li	$v0, 17279
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	fmul	$f0, $f1, $f0
	li	$v0, 16025
	sll	$v0, $v0, 16
	ori	$v0, $v0, 39322
	mtc1	$f1, $v0
	finv	$f1, $f1
	fmul	$f0, $f0, $f1
	fsw	$f0, 8($a0)
	jr	$ra
beq_else.20916:
	jr	$ra
trace_reflections.2961:
	li	$a2, 0
	blt	$a0, $a2, bge_else.20925
	li	$a2, 1016
	sll	$a3, $a0, 2
	add	$a3, $a2, $a3
	lw	$a2, 0($a3)
	lw	$a3, 4($a2)
	li	$a4, 548
	li	$v0, 20078
	sll	$v0, $v0, 16
	ori	$v0, $v0, 27432
	mtc1	$f2, $v0
	fsw	$f2, 0($a4)
	li	$a4, 0
	li	$a5, 536
	lw	$a5, 0($a5)
	sw	$a0, 0($sp)
	fsw	$f1, 8($sp)
	sw	$a1, 16($sp)
	fsw	$f0, 24($sp)
	sw	$a3, 32($sp)
	sw	$a2, 36($sp)
	move	$a2, $a3
	move	$a1, $a5
	move	$a0, $a4
	sw	$ra, 44($sp)
	addi	$sp, $sp, 48
	jal	trace_or_matrix_fast.2939
	subi	$sp, $sp, 48
	lw	$ra, 44($sp)
	fmove	$f30, $fv
	li	$a0, 548
	flw	$f0, 0($a0)
	li	$v0, -16948
	sll	$v0, $v0, 16
	ori	$v0, $v0, 52429
	mtc1	$f1, $v0
	fblt	$f1, $f0, fbge_else.20928
	li	$a0, 0
	j	fbge_cont.20929
fbge_else.20928:
	li	$v0, 19646
	sll	$v0, $v0, 16
	ori	$v0, $v0, 48160
	mtc1	$f1, $v0
	fblt	$f0, $f1, fbge_else.20930
	li	$a0, 0
	j	fbge_cont.20931
fbge_else.20930:
	li	$a0, 1
fbge_cont.20931:
fbge_cont.20929:
	li	$a1, 0
	bne	$a0, $a1, bne_else.20932
	j	bne_cont.20933
bne_else.20932:
	li	$a0, 564
	lw	$a0, 0($a0)
	sla	$a0, $a0, 2
	li	$a1, 544
	lw	$a1, 0($a1)
	add	$a0, $a0, $a1
	lw	$a1, 36($sp)
	lw	$a2, 0($a1)
	bne	$a0, $a2, bne_else.20934
	li	$a0, 0
	li	$a2, 536
	lw	$a2, 0($a2)
	move	$a1, $a2
	sw	$ra, 44($sp)
	addi	$sp, $sp, 48
	jal	shadow_check_one_or_matrix.2914
	subi	$sp, $sp, 48
	lw	$ra, 44($sp)
	move	$a0, $v0
	li	$a1, 0
	bne	$a0, $a1, bne_else.20936
	li	$a0, 568
	lw	$a1, 32($sp)
	lw	$a2, 0($a1)
	flw	$f0, 0($a0)
	flw	$f1, 0($a2)
	fmul	$f0, $f0, $f1
	flw	$f1, 4($a0)
	flw	$f2, 4($a2)
	fmul	$f1, $f1, $f2
	fadd	$f0, $f0, $f1
	flw	$f1, 8($a0)
	flw	$f2, 8($a2)
	fmul	$f1, $f1, $f2
	fadd	$f0, $f0, $f1
	lw	$a0, 36($sp)
	flw	$f1, 8($a0)
	flw	$f2, 24($sp)
	fmul	$f3, $f1, $f2
	fmul	$f0, $f3, $f0
	lw	$a0, 0($a1)
	lw	$a1, 16($sp)
	flw	$f3, 0($a1)
	flw	$f4, 0($a0)
	fmul	$f3, $f3, $f4
	flw	$f4, 4($a1)
	flw	$f5, 4($a0)
	fmul	$f4, $f4, $f5
	fadd	$f3, $f3, $f4
	flw	$f4, 8($a1)
	flw	$f5, 8($a0)
	fmul	$f4, $f4, $f5
	fadd	$f3, $f3, $f4
	fmul	$f1, $f1, $f3
	mtc1	$f3, $zero
	fblt	$f3, $f0, fbge_else.20938
	j	fbge_cont.20939
fbge_else.20938:
	li	$a0, 604
	li	$a2, 580
	flw	$f3, 0($a0)
	flw	$f4, 0($a2)
	fmul	$f4, $f0, $f4
	fadd	$f3, $f3, $f4
	fsw	$f3, 0($a0)
	flw	$f3, 4($a0)
	flw	$f4, 4($a2)
	fmul	$f4, $f0, $f4
	fadd	$f3, $f3, $f4
	fsw	$f3, 4($a0)
	flw	$f3, 8($a0)
	flw	$f4, 8($a2)
	fmul	$f0, $f0, $f4
	fadd	$f0, $f3, $f0
	fsw	$f0, 8($a0)
fbge_cont.20939:
	mtc1	$f0, $zero
	fblt	$f0, $f1, fbge_else.20940
	j	fbge_cont.20941
fbge_else.20940:
	fmul	$f0, $f1, $f1
	fmul	$f0, $f0, $f0
	flw	$f1, 8($sp)
	fmul	$f0, $f0, $f1
	li	$a0, 604
	li	$a2, 604
	flw	$f3, 0($a2)
	fadd	$f3, $f3, $f0
	fsw	$f3, 0($a0)
	li	$a0, 604
	li	$a2, 604
	flw	$f3, 4($a2)
	fadd	$f3, $f3, $f0
	fsw	$f3, 4($a0)
	li	$a0, 604
	li	$a2, 604
	flw	$f3, 8($a2)
	fadd	$f0, $f3, $f0
	fsw	$f0, 8($a0)
fbge_cont.20941:
	j	bne_cont.20937
bne_else.20936:
bne_cont.20937:
	j	bne_cont.20935
bne_else.20934:
bne_cont.20935:
bne_cont.20933:
	lw	$a0, 0($sp)
	subi	$a0, $a0, 1
	flw	$f0, 24($sp)
	flw	$f1, 8($sp)
	lw	$a1, 16($sp)
	j	trace_reflections.2961
bge_else.20925:
	jr	$ra
trace_ray.2966:
	li	$a3, 4
	blt	$a3, $a0, bge_else.20943
	lw	$a3, 8($a2)
	li	$a4, 548
	li	$v0, 20078
	sll	$v0, $v0, 16
	ori	$v0, $v0, 27432
	mtc1	$f2, $v0
	fsw	$f2, 0($a4)
	li	$a4, 0
	li	$a5, 536
	lw	$a5, 0($a5)
	fsw	$f1, 0($sp)
	sw	$a2, 8($sp)
	fsw	$f0, 16($sp)
	sw	$a1, 24($sp)
	sw	$a3, 28($sp)
	sw	$a0, 32($sp)
	move	$a2, $a1
	move	$a0, $a4
	move	$a1, $a5
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	trace_or_matrix.2925
	subi	$sp, $sp, 40
	lw	$ra, 36($sp)
	fmove	$f30, $fv
	li	$a0, 548
	flw	$f0, 0($a0)
	li	$v0, -16948
	sll	$v0, $v0, 16
	ori	$v0, $v0, 52429
	mtc1	$f1, $v0
	fblt	$f1, $f0, fbge_else.20945
	li	$a0, 0
	j	fbge_cont.20946
fbge_else.20945:
	li	$v0, 19646
	sll	$v0, $v0, 16
	ori	$v0, $v0, 48160
	mtc1	$f1, $v0
	fblt	$f0, $f1, fbge_else.20947
	li	$a0, 0
	j	fbge_cont.20948
fbge_else.20947:
	li	$a0, 1
fbge_cont.20948:
fbge_cont.20946:
	li	$a1, 0
	bne	$a0, $a1, beq_else.20949
	li	$a0, -1
	lw	$a1, 32($sp)
	sll	$a2, $a1, 2
	lw	$a3, 28($sp)
	add	$a2, $a3, $a2
	sw	$a0, 0($a2)
	li	$a0, 0
	bne	$a1, $a0, beq_else.20950
	jr	$ra
beq_else.20950:
	li	$a0, 312
	lw	$a1, 24($sp)
	flw	$f0, 0($a1)
	flw	$f1, 0($a0)
	fmul	$f0, $f0, $f1
	flw	$f1, 4($a1)
	flw	$f2, 4($a0)
	fmul	$f1, $f1, $f2
	fadd	$f0, $f0, $f1
	flw	$f1, 8($a1)
	flw	$f2, 8($a0)
	fmul	$f1, $f1, $f2
	fadd	$f0, $f0, $f1
	fneg	$f0, $f0
	mtc1	$f1, $zero
	fblt	$f1, $f0, fbge_else.20952
	jr	$ra
fbge_else.20952:
	fmul	$f1, $f0, $f0
	fmul	$f0, $f1, $f0
	flw	$f1, 16($sp)
	fmul	$f0, $f0, $f1
	li	$a0, 324
	flw	$f1, 0($a0)
	fmul	$f0, $f0, $f1
	li	$a0, 604
	li	$a1, 604
	flw	$f1, 0($a1)
	fadd	$f1, $f1, $f0
	fsw	$f1, 0($a0)
	li	$a0, 604
	li	$a1, 604
	flw	$f1, 4($a1)
	fadd	$f1, $f1, $f0
	fsw	$f1, 4($a0)
	li	$a0, 604
	li	$a1, 604
	flw	$f1, 8($a1)
	fadd	$f0, $f1, $f0
	fsw	$f0, 8($a0)
	jr	$ra
beq_else.20949:
	li	$a0, 564
	lw	$a0, 0($a0)
	li	$a1, 48
	sll	$a2, $a0, 2
	add	$a2, $a1, $a2
	lw	$a1, 0($a2)
	lw	$a2, 8($a1)
	lw	$a3, 28($a1)
	flw	$f0, 0($a3)
	flw	$f1, 16($sp)
	fmul	$f0, $f0, $f1
	lw	$a3, 4($a1)
	li	$a4, 1
	bne	$a3, $a4, bne_else.20955
	li	$a3, 544
	lw	$a3, 0($a3)
	li	$a4, 568
	mtc1	$f2, $zero
	fsw	$f2, 0($a4)
	fsw	$f2, 4($a4)
	fsw	$f2, 8($a4)
	subi	$a5, $a3, 1
	subi	$a3, $a3, 1
	sll	$a3, $a3, 2
	lw	$a6, 24($sp)
	add	$a3, $a6, $a3
	flw	$f2, 0($a3)
	mtc1	$f3, $zero
	fbne	$f2, $f3, fbne_else.20957
	mtc1	$f2, $zero
	j	fbne_cont.20958
fbne_else.20957:
	mtc1	$f3, $zero
	fblt	$f3, $f2, fbge_else.20959
	li	$v0, -16512
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	j	fbge_cont.20960
fbge_else.20959:
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
fbge_cont.20960:
fbne_cont.20958:
	fneg	$f2, $f2
	sll	$a3, $a5, 2
	add	$a3, $a4, $a3
	fsw	$f2, 0($a3)
	j	bne_cont.20956
bne_else.20955:
	li	$a4, 2
	bne	$a3, $a4, bne_else.20961
	li	$a3, 568
	lw	$a4, 16($a1)
	flw	$f2, 0($a4)
	fneg	$f2, $f2
	fsw	$f2, 0($a3)
	lw	$a4, 16($a1)
	flw	$f2, 4($a4)
	fneg	$f2, $f2
	fsw	$f2, 4($a3)
	lw	$a4, 16($a1)
	flw	$f2, 8($a4)
	fneg	$f2, $f2
	fsw	$f2, 8($a3)
	j	bne_cont.20962
bne_else.20961:
	li	$a3, 552
	li	$a4, 0
	flw	$f2, 0($a3)
	lw	$a5, 20($a1)
	flw	$f3, 0($a5)
	fsub	$f2, $f2, $f3
	flw	$f3, 4($a3)
	lw	$a5, 20($a1)
	flw	$f4, 4($a5)
	fsub	$f3, $f3, $f4
	flw	$f4, 8($a3)
	lw	$a3, 20($a1)
	flw	$f5, 8($a3)
	fsub	$f4, $f4, $f5
	lw	$a3, 16($a1)
	flw	$f5, 0($a3)
	fmul	$f5, $f2, $f5
	lw	$a3, 16($a1)
	flw	$f6, 4($a3)
	fmul	$f6, $f3, $f6
	lw	$a3, 16($a1)
	flw	$f7, 8($a3)
	fmul	$f7, $f4, $f7
	lw	$a3, 12($a1)
	bne	$a3, $a4, bne_else.20963
	li	$a3, 568
	fsw	$f5, 0($a3)
	li	$a3, 568
	fsw	$f6, 4($a3)
	li	$a3, 568
	fsw	$f7, 8($a3)
	j	bne_cont.20964
bne_else.20963:
	li	$a3, 568
	lw	$a4, 36($a1)
	flw	$f8, 8($a4)
	fmul	$f8, $f3, $f8
	lw	$a4, 36($a1)
	flw	$f9, 4($a4)
	fmul	$f9, $f4, $f9
	fadd	$f8, $f8, $f9
	li	$v0, 16128
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f9, $v0
	fmul	$f8, $f8, $f9
	fadd	$f5, $f5, $f8
	fsw	$f5, 0($a3)
	li	$a3, 568
	lw	$a4, 36($a1)
	flw	$f5, 8($a4)
	fmul	$f5, $f2, $f5
	lw	$a4, 36($a1)
	flw	$f8, 0($a4)
	fmul	$f4, $f4, $f8
	fadd	$f4, $f5, $f4
	li	$v0, 16128
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f5, $v0
	fmul	$f4, $f4, $f5
	fadd	$f4, $f6, $f4
	fsw	$f4, 4($a3)
	li	$a3, 568
	lw	$a4, 36($a1)
	flw	$f4, 4($a4)
	fmul	$f2, $f2, $f4
	lw	$a4, 36($a1)
	flw	$f4, 0($a4)
	fmul	$f3, $f3, $f4
	fadd	$f2, $f2, $f3
	li	$v0, 16128
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f3, $v0
	fmul	$f2, $f2, $f3
	fadd	$f2, $f7, $f2
	fsw	$f2, 8($a3)
bne_cont.20964:
	li	$a3, 568
	lw	$a4, 24($a1)
	flw	$f2, 0($a3)
	fmul	$f2, $f2, $f2
	flw	$f3, 4($a3)
	fmul	$f3, $f3, $f3
	fadd	$f2, $f2, $f3
	flw	$f3, 8($a3)
	fmul	$f3, $f3, $f3
	fadd	$f2, $f2, $f3
	sqrt	$f2, $f2
	mtc1	$f3, $zero
	fbne	$f2, $f3, fbne_else.20965
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	j	fbne_cont.20966
fbne_else.20965:
	li	$a5, 0
	bne	$a4, $a5, bne_else.20967
	finv	$f2, $f2
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f3, $v0
	fmul	$f2, $f3, $f2
	j	bne_cont.20968
bne_else.20967:
	finv	$f2, $f2
	li	$v0, -16512
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f3, $v0
	fmul	$f2, $f3, $f2
bne_cont.20968:
fbne_cont.20966:
	flw	$f3, 0($a3)
	fmul	$f3, $f3, $f2
	fsw	$f3, 0($a3)
	flw	$f3, 4($a3)
	fmul	$f3, $f3, $f2
	fsw	$f3, 4($a3)
	flw	$f3, 8($a3)
	fmul	$f2, $f3, $f2
	fsw	$f2, 8($a3)
bne_cont.20962:
bne_cont.20956:
	li	$a3, 636
	li	$a4, 552
	flw	$f2, 0($a4)
	fsw	$f2, 0($a3)
	flw	$f2, 4($a4)
	fsw	$f2, 4($a3)
	flw	$f2, 8($a4)
	fsw	$f2, 8($a3)
	li	$a3, 552
	sw	$a2, 36($sp)
	fsw	$f0, 40($sp)
	sw	$a1, 48($sp)
	sw	$a0, 52($sp)
	move	$a0, $a1
	move	$a1, $a3
	sw	$ra, 60($sp)
	addi	$sp, $sp, 64
	jal	utexture.2954
	subi	$sp, $sp, 64
	lw	$ra, 60($sp)
	fmove	$f30, $fv
	lw	$a0, 52($sp)
	sla	$a0, $a0, 2
	li	$a1, 544
	lw	$a1, 0($a1)
	add	$a0, $a0, $a1
	lw	$a1, 32($sp)
	sll	$a2, $a1, 2
	lw	$a3, 28($sp)
	add	$a2, $a3, $a2
	sw	$a0, 0($a2)
	lw	$a0, 8($sp)
	lw	$a2, 4($a0)
	sll	$a4, $a1, 2
	add	$a4, $a2, $a4
	lw	$a2, 0($a4)
	li	$a4, 552
	flw	$f0, 0($a4)
	fsw	$f0, 0($a2)
	flw	$f0, 4($a4)
	fsw	$f0, 4($a2)
	flw	$f0, 8($a4)
	fsw	$f0, 8($a2)
	lw	$a2, 12($a0)
	li	$v0, 16128
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f0, $v0
	lw	$a4, 48($sp)
	lw	$a5, 28($a4)
	flw	$f1, 0($a5)
	fblt	$f1, $f0, fbge_else.20969
	li	$a5, 1
	sll	$a6, $a1, 2
	add	$a6, $a2, $a6
	sw	$a5, 0($a6)
	lw	$a2, 16($a0)
	sll	$a5, $a1, 2
	add	$a5, $a2, $a5
	lw	$a5, 0($a5)
	li	$a6, 580
	flw	$f0, 0($a6)
	fsw	$f0, 0($a5)
	flw	$f0, 4($a6)
	fsw	$f0, 4($a5)
	flw	$f0, 8($a6)
	fsw	$f0, 8($a5)
	sll	$a5, $a1, 2
	add	$a5, $a2, $a5
	lw	$a2, 0($a5)
	li	$v0, 17280
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f0, $v0
	finv	$f0, $f0
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	fmul	$f0, $f1, $f0
	flw	$f1, 40($sp)
	fmul	$f0, $f0, $f1
	flw	$f2, 0($a2)
	fmul	$f2, $f2, $f0
	fsw	$f2, 0($a2)
	flw	$f2, 4($a2)
	fmul	$f2, $f2, $f0
	fsw	$f2, 4($a2)
	flw	$f2, 8($a2)
	fmul	$f0, $f2, $f0
	fsw	$f0, 8($a2)
	lw	$a2, 28($a0)
	sll	$a5, $a1, 2
	add	$a5, $a2, $a5
	lw	$a2, 0($a5)
	li	$a5, 568
	flw	$f0, 0($a5)
	fsw	$f0, 0($a2)
	flw	$f0, 4($a5)
	fsw	$f0, 4($a2)
	flw	$f0, 8($a5)
	fsw	$f0, 8($a2)
	j	fbge_cont.20970
fbge_else.20969:
	li	$a5, 0
	sll	$a6, $a1, 2
	add	$a6, $a2, $a6
	sw	$a5, 0($a6)
fbge_cont.20970:
	li	$a2, 568
	lw	$a5, 24($sp)
	flw	$f0, 0($a5)
	flw	$f1, 0($a2)
	fmul	$f0, $f0, $f1
	flw	$f1, 4($a5)
	flw	$f2, 4($a2)
	fmul	$f1, $f1, $f2
	fadd	$f0, $f0, $f1
	flw	$f1, 8($a5)
	flw	$f2, 8($a2)
	fmul	$f1, $f1, $f2
	fadd	$f0, $f0, $f1
	li	$v0, -16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	fmul	$f0, $f1, $f0
	li	$a2, 568
	flw	$f1, 0($a5)
	flw	$f2, 0($a2)
	fmul	$f2, $f0, $f2
	fadd	$f1, $f1, $f2
	fsw	$f1, 0($a5)
	flw	$f1, 4($a5)
	flw	$f2, 4($a2)
	fmul	$f2, $f0, $f2
	fadd	$f1, $f1, $f2
	fsw	$f1, 4($a5)
	flw	$f1, 8($a5)
	flw	$f2, 8($a2)
	fmul	$f0, $f0, $f2
	fadd	$f0, $f1, $f0
	fsw	$f0, 8($a5)
	lw	$a2, 28($a4)
	flw	$f0, 4($a2)
	flw	$f1, 16($sp)
	fmul	$f0, $f1, $f0
	li	$a2, 0
	li	$a6, 536
	lw	$a6, 0($a6)
	fsw	$f0, 56($sp)
	move	$a1, $a6
	move	$a0, $a2
	sw	$ra, 68($sp)
	addi	$sp, $sp, 72
	jal	shadow_check_one_or_matrix.2914
	subi	$sp, $sp, 72
	lw	$ra, 68($sp)
	move	$a0, $v0
	li	$a1, 0
	bne	$a0, $a1, bne_else.20971
	li	$a0, 568
	li	$a1, 312
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
	fadd	$f0, $f0, $f1
	fneg	$f0, $f0
	flw	$f1, 40($sp)
	fmul	$f0, $f0, $f1
	li	$a0, 312
	lw	$a1, 24($sp)
	flw	$f2, 0($a1)
	flw	$f3, 0($a0)
	fmul	$f2, $f2, $f3
	flw	$f3, 4($a1)
	flw	$f4, 4($a0)
	fmul	$f3, $f3, $f4
	fadd	$f2, $f2, $f3
	flw	$f3, 8($a1)
	flw	$f4, 8($a0)
	fmul	$f3, $f3, $f4
	fadd	$f2, $f2, $f3
	fneg	$f2, $f2
	mtc1	$f3, $zero
	fblt	$f3, $f0, fbge_else.20973
	j	fbge_cont.20974
fbge_else.20973:
	li	$a0, 604
	li	$a2, 580
	flw	$f3, 0($a0)
	flw	$f4, 0($a2)
	fmul	$f4, $f0, $f4
	fadd	$f3, $f3, $f4
	fsw	$f3, 0($a0)
	flw	$f3, 4($a0)
	flw	$f4, 4($a2)
	fmul	$f4, $f0, $f4
	fadd	$f3, $f3, $f4
	fsw	$f3, 4($a0)
	flw	$f3, 8($a0)
	flw	$f4, 8($a2)
	fmul	$f0, $f0, $f4
	fadd	$f0, $f3, $f0
	fsw	$f0, 8($a0)
fbge_cont.20974:
	mtc1	$f0, $zero
	fblt	$f0, $f2, fbge_else.20975
	j	fbge_cont.20976
fbge_else.20975:
	fmul	$f0, $f2, $f2
	fmul	$f0, $f0, $f0
	flw	$f2, 56($sp)
	fmul	$f0, $f0, $f2
	li	$a0, 604
	li	$a2, 604
	flw	$f3, 0($a2)
	fadd	$f3, $f3, $f0
	fsw	$f3, 0($a0)
	li	$a0, 604
	li	$a2, 604
	flw	$f3, 4($a2)
	fadd	$f3, $f3, $f0
	fsw	$f3, 4($a0)
	li	$a0, 604
	li	$a2, 604
	flw	$f3, 8($a2)
	fadd	$f0, $f3, $f0
	fsw	$f0, 8($a0)
fbge_cont.20976:
	j	bne_cont.20972
bne_else.20971:
bne_cont.20972:
	li	$a0, 552
	li	$a1, 648
	flw	$f0, 0($a0)
	fsw	$f0, 0($a1)
	flw	$f0, 4($a0)
	fsw	$f0, 4($a1)
	flw	$f0, 8($a0)
	fsw	$f0, 8($a1)
	li	$a1, 0
	lw	$a1, 0($a1)
	subi	$a1, $a1, 1
	sw	$ra, 68($sp)
	addi	$sp, $sp, 72
	jal	setup_startp_constants.2877
	subi	$sp, $sp, 72
	lw	$ra, 68($sp)
	fmove	$f30, $fv
	li	$a0, 1736
	lw	$a0, 0($a0)
	subi	$a0, $a0, 1
	flw	$f0, 40($sp)
	flw	$f1, 56($sp)
	lw	$a1, 24($sp)
	sw	$ra, 68($sp)
	addi	$sp, $sp, 72
	jal	trace_reflections.2961
	subi	$sp, $sp, 72
	lw	$ra, 68($sp)
	fmove	$f30, $fv
	li	$v0, 15820
	sll	$v0, $v0, 16
	ori	$v0, $v0, 52429
	mtc1	$f0, $v0
	flw	$f1, 16($sp)
	fblt	$f0, $f1, fbge_else.20977
	jr	$ra
fbge_else.20977:
	li	$a0, 4
	lw	$a1, 32($sp)
	blt	$a1, $a0, bge_else.20979
	j	bge_cont.20980
bge_else.20979:
	addi	$a0, $a1, 1
	li	$a2, -1
	sll	$a0, $a0, 2
	lw	$a3, 28($sp)
	add	$a0, $a3, $a0
	sw	$a2, 0($a0)
bge_cont.20980:
	li	$a0, 2
	lw	$a2, 36($sp)
	bne	$a2, $a0, beq_else.20981
	lw	$a0, 48($sp)
	lw	$a0, 28($a0)
	flw	$f0, 0($a0)
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fsub	$f0, $f2, $f0
	fmul	$f0, $f1, $f0
	addi	$a0, $a1, 1
	li	$a1, 548
	flw	$f1, 0($a1)
	flw	$f2, 0($sp)
	fadd	$f1, $f2, $f1
	lw	$a1, 24($sp)
	lw	$a2, 8($sp)
	j	trace_ray.2966
beq_else.20981:
	jr	$ra
bge_else.20943:
	jr	$ra
iter_trace_diffuse_rays.2975:
	li	$a4, 0
	blt	$a3, $a4, bge_else.20984
	sll	$a4, $a3, 2
	add	$a4, $a0, $a4
	lw	$a4, 0($a4)
	lw	$a4, 0($a4)
	flw	$f0, 0($a4)
	flw	$f1, 0($a1)
	fmul	$f0, $f0, $f1
	flw	$f1, 4($a4)
	flw	$f2, 4($a1)
	fmul	$f1, $f1, $f2
	fadd	$f0, $f0, $f1
	flw	$f1, 8($a4)
	flw	$f2, 8($a1)
	fmul	$f1, $f1, $f2
	fadd	$f0, $f0, $f1
	mtc1	$f1, $zero
	sw	$a2, 0($sp)
	sw	$a1, 4($sp)
	sw	$a0, 8($sp)
	sw	$a3, 12($sp)
	fblt	$f0, $f1, fbge_else.20985
	sll	$a4, $a3, 2
	add	$a4, $a0, $a4
	lw	$a4, 0($a4)
	li	$v0, 17174
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	finv	$f1, $f1
	fmul	$f0, $f0, $f1
	li	$a5, 548
	li	$a6, 0
	li	$v0, 20078
	sll	$v0, $v0, 16
	ori	$v0, $v0, 27432
	mtc1	$f1, $v0
	fsw	$f1, 0($a5)
	li	$a5, 536
	lw	$a5, 0($a5)
	fsw	$f0, 16($sp)
	sw	$a4, 24($sp)
	move	$a2, $a4
	move	$a1, $a5
	move	$a0, $a6
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	trace_or_matrix_fast.2939
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	fmove	$f30, $fv
	li	$a0, 548
	flw	$f0, 0($a0)
	li	$v0, -16948
	sll	$v0, $v0, 16
	ori	$v0, $v0, 52429
	mtc1	$f1, $v0
	fblt	$f1, $f0, fbge_else.20987
	li	$a0, 0
	j	fbge_cont.20988
fbge_else.20987:
	li	$v0, 19646
	sll	$v0, $v0, 16
	ori	$v0, $v0, 48160
	mtc1	$f1, $v0
	fblt	$f0, $f1, fbge_else.20989
	li	$a0, 0
	j	fbge_cont.20990
fbge_else.20989:
	li	$a0, 1
fbge_cont.20990:
fbge_cont.20988:
	li	$a1, 0
	bne	$a0, $a1, bne_else.20991
	j	bne_cont.20992
bne_else.20991:
	li	$a0, 48
	li	$a1, 564
	lw	$a1, 0($a1)
	sll	$a1, $a1, 2
	add	$a1, $a0, $a1
	lw	$a0, 0($a1)
	lw	$a1, 24($sp)
	lw	$a1, 0($a1)
	lw	$a2, 4($a0)
	li	$a3, 1
	bne	$a2, $a3, bne_else.20993
	li	$a2, 544
	lw	$a2, 0($a2)
	li	$a3, 568
	mtc1	$f0, $zero
	fsw	$f0, 0($a3)
	fsw	$f0, 4($a3)
	fsw	$f0, 8($a3)
	li	$a3, 568
	subi	$a4, $a2, 1
	subi	$a2, $a2, 1
	sll	$a2, $a2, 2
	add	$a2, $a1, $a2
	flw	$f0, 0($a2)
	mtc1	$f1, $zero
	fbne	$f0, $f1, fbne_else.20995
	mtc1	$f0, $zero
	j	fbne_cont.20996
fbne_else.20995:
	mtc1	$f1, $zero
	fblt	$f1, $f0, fbge_else.20997
	li	$v0, -16512
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f0, $v0
	j	fbge_cont.20998
fbge_else.20997:
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f0, $v0
fbge_cont.20998:
fbne_cont.20996:
	fneg	$f0, $f0
	sll	$a1, $a4, 2
	add	$a1, $a3, $a1
	fsw	$f0, 0($a1)
	j	bne_cont.20994
bne_else.20993:
	li	$a1, 2
	bne	$a2, $a1, bne_else.20999
	li	$a1, 568
	lw	$a2, 16($a0)
	flw	$f0, 0($a2)
	fneg	$f0, $f0
	fsw	$f0, 0($a1)
	li	$a1, 568
	lw	$a2, 16($a0)
	flw	$f0, 4($a2)
	fneg	$f0, $f0
	fsw	$f0, 4($a1)
	li	$a1, 568
	lw	$a2, 16($a0)
	flw	$f0, 8($a2)
	fneg	$f0, $f0
	fsw	$f0, 8($a1)
	j	bne_cont.21000
bne_else.20999:
	li	$a1, 552
	flw	$f0, 0($a1)
	lw	$a1, 20($a0)
	flw	$f1, 0($a1)
	fsub	$f0, $f0, $f1
	li	$a1, 552
	flw	$f1, 4($a1)
	lw	$a1, 20($a0)
	flw	$f2, 4($a1)
	fsub	$f1, $f1, $f2
	li	$a1, 552
	flw	$f2, 8($a1)
	lw	$a1, 20($a0)
	flw	$f3, 8($a1)
	fsub	$f2, $f2, $f3
	lw	$a1, 16($a0)
	flw	$f3, 0($a1)
	fmul	$f3, $f0, $f3
	lw	$a1, 16($a0)
	flw	$f4, 4($a1)
	fmul	$f4, $f1, $f4
	lw	$a1, 16($a0)
	flw	$f5, 8($a1)
	fmul	$f5, $f2, $f5
	lw	$a1, 12($a0)
	li	$a2, 0
	bne	$a1, $a2, bne_else.21001
	li	$a1, 568
	fsw	$f3, 0($a1)
	li	$a1, 568
	fsw	$f4, 4($a1)
	li	$a1, 568
	fsw	$f5, 8($a1)
	j	bne_cont.21002
bne_else.21001:
	li	$a1, 568
	lw	$a2, 36($a0)
	flw	$f6, 8($a2)
	fmul	$f6, $f1, $f6
	lw	$a2, 36($a0)
	flw	$f7, 4($a2)
	fmul	$f7, $f2, $f7
	fadd	$f6, $f6, $f7
	li	$v0, 16128
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f7, $v0
	fmul	$f6, $f6, $f7
	fadd	$f3, $f3, $f6
	fsw	$f3, 0($a1)
	li	$a1, 568
	lw	$a2, 36($a0)
	flw	$f3, 8($a2)
	fmul	$f3, $f0, $f3
	lw	$a2, 36($a0)
	flw	$f6, 0($a2)
	fmul	$f2, $f2, $f6
	fadd	$f2, $f3, $f2
	li	$v0, 16128
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f3, $v0
	fmul	$f2, $f2, $f3
	fadd	$f2, $f4, $f2
	fsw	$f2, 4($a1)
	li	$a1, 568
	lw	$a2, 36($a0)
	flw	$f2, 4($a2)
	fmul	$f0, $f0, $f2
	lw	$a2, 36($a0)
	flw	$f2, 0($a2)
	fmul	$f1, $f1, $f2
	fadd	$f0, $f0, $f1
	li	$v0, 16128
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	fmul	$f0, $f0, $f1
	fadd	$f0, $f5, $f0
	fsw	$f0, 8($a1)
bne_cont.21002:
	li	$a1, 568
	lw	$a2, 24($a0)
	flw	$f0, 0($a1)
	fmul	$f0, $f0, $f0
	flw	$f1, 4($a1)
	fmul	$f1, $f1, $f1
	fadd	$f0, $f0, $f1
	flw	$f1, 8($a1)
	fmul	$f1, $f1, $f1
	fadd	$f0, $f0, $f1
	sqrt	$f0, $f0
	mtc1	$f1, $zero
	fbne	$f0, $f1, fbne_else.21003
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f0, $v0
	j	fbne_cont.21004
fbne_else.21003:
	li	$a3, 0
	bne	$a2, $a3, bne_else.21005
	finv	$f0, $f0
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	fmul	$f0, $f1, $f0
	j	bne_cont.21006
bne_else.21005:
	finv	$f0, $f0
	li	$v0, -16512
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	fmul	$f0, $f1, $f0
bne_cont.21006:
fbne_cont.21004:
	flw	$f1, 0($a1)
	fmul	$f1, $f1, $f0
	fsw	$f1, 0($a1)
	flw	$f1, 4($a1)
	fmul	$f1, $f1, $f0
	fsw	$f1, 4($a1)
	flw	$f1, 8($a1)
	fmul	$f0, $f1, $f0
	fsw	$f0, 8($a1)
bne_cont.21000:
bne_cont.20994:
	li	$a1, 552
	sw	$a0, 28($sp)
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	utexture.2954
	subi	$sp, $sp, 40
	lw	$ra, 36($sp)
	fmove	$f30, $fv
	li	$a0, 0
	li	$a1, 536
	lw	$a1, 0($a1)
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	shadow_check_one_or_matrix.2914
	subi	$sp, $sp, 40
	lw	$ra, 36($sp)
	move	$a0, $v0
	li	$a1, 0
	bne	$a0, $a1, bne_else.21007
	li	$a0, 568
	li	$a1, 312
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
	fadd	$f0, $f0, $f1
	fneg	$f0, $f0
	mtc1	$f1, $zero
	fblt	$f1, $f0, fbge_else.21009
	mtc1	$f0, $zero
	j	fbge_cont.21010
fbge_else.21009:
fbge_cont.21010:
	li	$a0, 592
	flw	$f1, 16($sp)
	fmul	$f0, $f1, $f0
	lw	$a1, 28($sp)
	lw	$a1, 28($a1)
	flw	$f1, 0($a1)
	fmul	$f0, $f0, $f1
	li	$a1, 580
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
	j	bne_cont.21008
bne_else.21007:
bne_cont.21008:
bne_cont.20992:
	j	fbge_cont.20986
fbge_else.20985:
	addi	$a4, $a3, 1
	sll	$a4, $a4, 2
	add	$a4, $a0, $a4
	lw	$a4, 0($a4)
	li	$v0, -15594
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	finv	$f1, $f1
	fmul	$f0, $f0, $f1
	li	$a5, 548
	li	$a6, 0
	li	$v0, 20078
	sll	$v0, $v0, 16
	ori	$v0, $v0, 27432
	mtc1	$f1, $v0
	fsw	$f1, 0($a5)
	li	$a5, 536
	lw	$a5, 0($a5)
	fsw	$f0, 32($sp)
	sw	$a4, 40($sp)
	move	$a2, $a4
	move	$a1, $a5
	move	$a0, $a6
	sw	$ra, 44($sp)
	addi	$sp, $sp, 48
	jal	trace_or_matrix_fast.2939
	subi	$sp, $sp, 48
	lw	$ra, 44($sp)
	fmove	$f30, $fv
	li	$a0, 548
	flw	$f0, 0($a0)
	li	$v0, -16948
	sll	$v0, $v0, 16
	ori	$v0, $v0, 52429
	mtc1	$f1, $v0
	fblt	$f1, $f0, fbge_else.21011
	li	$a0, 0
	j	fbge_cont.21012
fbge_else.21011:
	li	$v0, 19646
	sll	$v0, $v0, 16
	ori	$v0, $v0, 48160
	mtc1	$f1, $v0
	fblt	$f0, $f1, fbge_else.21013
	li	$a0, 0
	j	fbge_cont.21014
fbge_else.21013:
	li	$a0, 1
fbge_cont.21014:
fbge_cont.21012:
	li	$a1, 0
	bne	$a0, $a1, bne_else.21015
	j	bne_cont.21016
bne_else.21015:
	li	$a0, 48
	li	$a1, 564
	lw	$a1, 0($a1)
	sll	$a1, $a1, 2
	add	$a1, $a0, $a1
	lw	$a0, 0($a1)
	lw	$a1, 40($sp)
	lw	$a1, 0($a1)
	lw	$a2, 4($a0)
	li	$a3, 1
	bne	$a2, $a3, bne_else.21017
	li	$a2, 544
	lw	$a2, 0($a2)
	li	$a3, 568
	mtc1	$f0, $zero
	fsw	$f0, 0($a3)
	fsw	$f0, 4($a3)
	fsw	$f0, 8($a3)
	li	$a3, 568
	subi	$a4, $a2, 1
	subi	$a2, $a2, 1
	sll	$a2, $a2, 2
	add	$a2, $a1, $a2
	flw	$f0, 0($a2)
	mtc1	$f1, $zero
	fbne	$f0, $f1, fbne_else.21019
	mtc1	$f0, $zero
	j	fbne_cont.21020
fbne_else.21019:
	mtc1	$f1, $zero
	fblt	$f1, $f0, fbge_else.21021
	li	$v0, -16512
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f0, $v0
	j	fbge_cont.21022
fbge_else.21021:
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f0, $v0
fbge_cont.21022:
fbne_cont.21020:
	fneg	$f0, $f0
	sll	$a1, $a4, 2
	add	$a1, $a3, $a1
	fsw	$f0, 0($a1)
	j	bne_cont.21018
bne_else.21017:
	li	$a1, 2
	bne	$a2, $a1, bne_else.21023
	li	$a1, 568
	lw	$a2, 16($a0)
	flw	$f0, 0($a2)
	fneg	$f0, $f0
	fsw	$f0, 0($a1)
	li	$a1, 568
	lw	$a2, 16($a0)
	flw	$f0, 4($a2)
	fneg	$f0, $f0
	fsw	$f0, 4($a1)
	li	$a1, 568
	lw	$a2, 16($a0)
	flw	$f0, 8($a2)
	fneg	$f0, $f0
	fsw	$f0, 8($a1)
	j	bne_cont.21024
bne_else.21023:
	li	$a1, 552
	flw	$f0, 0($a1)
	lw	$a1, 20($a0)
	flw	$f1, 0($a1)
	fsub	$f0, $f0, $f1
	li	$a1, 552
	flw	$f1, 4($a1)
	lw	$a1, 20($a0)
	flw	$f2, 4($a1)
	fsub	$f1, $f1, $f2
	li	$a1, 552
	flw	$f2, 8($a1)
	lw	$a1, 20($a0)
	flw	$f3, 8($a1)
	fsub	$f2, $f2, $f3
	lw	$a1, 16($a0)
	flw	$f3, 0($a1)
	fmul	$f3, $f0, $f3
	lw	$a1, 16($a0)
	flw	$f4, 4($a1)
	fmul	$f4, $f1, $f4
	lw	$a1, 16($a0)
	flw	$f5, 8($a1)
	fmul	$f5, $f2, $f5
	lw	$a1, 12($a0)
	li	$a2, 0
	bne	$a1, $a2, bne_else.21025
	li	$a1, 568
	fsw	$f3, 0($a1)
	li	$a1, 568
	fsw	$f4, 4($a1)
	li	$a1, 568
	fsw	$f5, 8($a1)
	j	bne_cont.21026
bne_else.21025:
	li	$a1, 568
	lw	$a2, 36($a0)
	flw	$f6, 8($a2)
	fmul	$f6, $f1, $f6
	lw	$a2, 36($a0)
	flw	$f7, 4($a2)
	fmul	$f7, $f2, $f7
	fadd	$f6, $f6, $f7
	li	$v0, 16128
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f7, $v0
	fmul	$f6, $f6, $f7
	fadd	$f3, $f3, $f6
	fsw	$f3, 0($a1)
	li	$a1, 568
	lw	$a2, 36($a0)
	flw	$f3, 8($a2)
	fmul	$f3, $f0, $f3
	lw	$a2, 36($a0)
	flw	$f6, 0($a2)
	fmul	$f2, $f2, $f6
	fadd	$f2, $f3, $f2
	li	$v0, 16128
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f3, $v0
	fmul	$f2, $f2, $f3
	fadd	$f2, $f4, $f2
	fsw	$f2, 4($a1)
	li	$a1, 568
	lw	$a2, 36($a0)
	flw	$f2, 4($a2)
	fmul	$f0, $f0, $f2
	lw	$a2, 36($a0)
	flw	$f2, 0($a2)
	fmul	$f1, $f1, $f2
	fadd	$f0, $f0, $f1
	li	$v0, 16128
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	fmul	$f0, $f0, $f1
	fadd	$f0, $f5, $f0
	fsw	$f0, 8($a1)
bne_cont.21026:
	li	$a1, 568
	lw	$a2, 24($a0)
	flw	$f0, 0($a1)
	fmul	$f0, $f0, $f0
	flw	$f1, 4($a1)
	fmul	$f1, $f1, $f1
	fadd	$f0, $f0, $f1
	flw	$f1, 8($a1)
	fmul	$f1, $f1, $f1
	fadd	$f0, $f0, $f1
	sqrt	$f0, $f0
	mtc1	$f1, $zero
	fbne	$f0, $f1, fbne_else.21027
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f0, $v0
	j	fbne_cont.21028
fbne_else.21027:
	li	$a3, 0
	bne	$a2, $a3, bne_else.21029
	finv	$f0, $f0
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	fmul	$f0, $f1, $f0
	j	bne_cont.21030
bne_else.21029:
	finv	$f0, $f0
	li	$v0, -16512
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	fmul	$f0, $f1, $f0
bne_cont.21030:
fbne_cont.21028:
	flw	$f1, 0($a1)
	fmul	$f1, $f1, $f0
	fsw	$f1, 0($a1)
	flw	$f1, 4($a1)
	fmul	$f1, $f1, $f0
	fsw	$f1, 4($a1)
	flw	$f1, 8($a1)
	fmul	$f0, $f1, $f0
	fsw	$f0, 8($a1)
bne_cont.21024:
bne_cont.21018:
	li	$a1, 552
	sw	$a0, 44($sp)
	sw	$ra, 52($sp)
	addi	$sp, $sp, 56
	jal	utexture.2954
	subi	$sp, $sp, 56
	lw	$ra, 52($sp)
	fmove	$f30, $fv
	li	$a0, 0
	li	$a1, 536
	lw	$a1, 0($a1)
	sw	$ra, 52($sp)
	addi	$sp, $sp, 56
	jal	shadow_check_one_or_matrix.2914
	subi	$sp, $sp, 56
	lw	$ra, 52($sp)
	move	$a0, $v0
	li	$a1, 0
	bne	$a0, $a1, bne_else.21031
	li	$a0, 568
	li	$a1, 312
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
	fadd	$f0, $f0, $f1
	fneg	$f0, $f0
	mtc1	$f1, $zero
	fblt	$f1, $f0, fbge_else.21033
	mtc1	$f0, $zero
	j	fbge_cont.21034
fbge_else.21033:
fbge_cont.21034:
	li	$a0, 592
	flw	$f1, 32($sp)
	fmul	$f0, $f1, $f0
	lw	$a1, 44($sp)
	lw	$a1, 28($a1)
	flw	$f1, 0($a1)
	fmul	$f0, $f0, $f1
	li	$a1, 580
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
	j	bne_cont.21032
bne_else.21031:
bne_cont.21032:
bne_cont.21016:
fbge_cont.20986:
	lw	$a0, 12($sp)
	subi	$a3, $a0, 2
	lw	$a0, 8($sp)
	lw	$a1, 4($sp)
	lw	$a2, 0($sp)
	j	iter_trace_diffuse_rays.2975
bge_else.20984:
	jr	$ra
do_without_neighbors.2997:
	li	$a2, 4
	blt	$a2, $a1, bge_else.21036
	lw	$a2, 8($a0)
	li	$a3, 0
	sll	$a4, $a1, 2
	add	$a4, $a2, $a4
	lw	$a2, 0($a4)
	blt	$a2, $a3, bge_else.21037
	lw	$a2, 12($a0)
	sll	$a3, $a1, 2
	add	$a3, $a2, $a3
	lw	$a2, 0($a3)
	li	$a3, 0
	sw	$a0, 0($sp)
	bne	$a2, $a3, bne_else.21038
	j	bne_cont.21039
bne_else.21038:
	lw	$a2, 20($a0)
	lw	$a3, 28($a0)
	lw	$a4, 4($a0)
	lw	$a5, 16($a0)
	li	$a6, 592
	sll	$a7, $a1, 2
	add	$a7, $a2, $a7
	lw	$a2, 0($a7)
	flw	$f0, 0($a2)
	fsw	$f0, 0($a6)
	flw	$f0, 4($a2)
	fsw	$f0, 4($a6)
	flw	$f0, 8($a2)
	fsw	$f0, 8($a6)
	lw	$a2, 24($a0)
	lw	$a2, 0($a2)
	sll	$a6, $a1, 2
	add	$a6, $a3, $a6
	lw	$a3, 0($a6)
	sll	$a6, $a1, 2
	add	$a6, $a4, $a6
	lw	$a4, 0($a6)
	li	$a6, 0
	sw	$a5, 4($sp)
	sw	$a1, 8($sp)
	sw	$a3, 12($sp)
	sw	$a4, 16($sp)
	sw	$a2, 20($sp)
	bne	$a2, $a6, bne_else.21040
	j	bne_cont.21041
bne_else.21040:
	li	$a6, 716
	lw	$a6, 0($a6)
	li	$a7, 648
	flw	$f0, 0($a4)
	fsw	$f0, 0($a7)
	flw	$f0, 4($a4)
	fsw	$f0, 4($a7)
	flw	$f0, 8($a4)
	fsw	$f0, 8($a7)
	li	$a7, 0
	lw	$a7, 0($a7)
	subi	$a7, $a7, 1
	sw	$a6, 24($sp)
	move	$a1, $a7
	move	$a0, $a4
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	setup_startp_constants.2877
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	fmove	$f30, $fv
	li	$a3, 118
	lw	$a0, 24($sp)
	lw	$a1, 12($sp)
	lw	$a2, 16($sp)
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	iter_trace_diffuse_rays.2975
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	fmove	$f30, $fv
bne_cont.21041:
	li	$a0, 1
	lw	$a1, 20($sp)
	bne	$a1, $a0, bne_else.21042
	j	bne_cont.21043
bne_else.21042:
	li	$a0, 716
	lw	$a0, 4($a0)
	li	$a2, 648
	lw	$a3, 16($sp)
	flw	$f0, 0($a3)
	fsw	$f0, 0($a2)
	flw	$f0, 4($a3)
	fsw	$f0, 4($a2)
	flw	$f0, 8($a3)
	fsw	$f0, 8($a2)
	li	$a2, 0
	lw	$a2, 0($a2)
	subi	$a2, $a2, 1
	sw	$a0, 28($sp)
	move	$a1, $a2
	move	$a0, $a3
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	setup_startp_constants.2877
	subi	$sp, $sp, 40
	lw	$ra, 36($sp)
	fmove	$f30, $fv
	li	$a3, 118
	lw	$a0, 28($sp)
	lw	$a1, 12($sp)
	lw	$a2, 16($sp)
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	iter_trace_diffuse_rays.2975
	subi	$sp, $sp, 40
	lw	$ra, 36($sp)
	fmove	$f30, $fv
bne_cont.21043:
	li	$a0, 2
	lw	$a1, 20($sp)
	bne	$a1, $a0, bne_else.21044
	j	bne_cont.21045
bne_else.21044:
	li	$a0, 716
	lw	$a0, 8($a0)
	li	$a2, 648
	lw	$a3, 16($sp)
	flw	$f0, 0($a3)
	fsw	$f0, 0($a2)
	flw	$f0, 4($a3)
	fsw	$f0, 4($a2)
	flw	$f0, 8($a3)
	fsw	$f0, 8($a2)
	li	$a2, 0
	lw	$a2, 0($a2)
	subi	$a2, $a2, 1
	sw	$a0, 32($sp)
	move	$a1, $a2
	move	$a0, $a3
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	setup_startp_constants.2877
	subi	$sp, $sp, 40
	lw	$ra, 36($sp)
	fmove	$f30, $fv
	li	$a3, 118
	lw	$a0, 32($sp)
	lw	$a1, 12($sp)
	lw	$a2, 16($sp)
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	iter_trace_diffuse_rays.2975
	subi	$sp, $sp, 40
	lw	$ra, 36($sp)
	fmove	$f30, $fv
bne_cont.21045:
	li	$a0, 3
	lw	$a1, 20($sp)
	bne	$a1, $a0, bne_else.21046
	j	bne_cont.21047
bne_else.21046:
	li	$a0, 716
	lw	$a0, 12($a0)
	li	$a2, 648
	lw	$a3, 16($sp)
	flw	$f0, 0($a3)
	fsw	$f0, 0($a2)
	flw	$f0, 4($a3)
	fsw	$f0, 4($a2)
	flw	$f0, 8($a3)
	fsw	$f0, 8($a2)
	li	$a2, 0
	lw	$a2, 0($a2)
	subi	$a2, $a2, 1
	sw	$a0, 36($sp)
	move	$a1, $a2
	move	$a0, $a3
	sw	$ra, 44($sp)
	addi	$sp, $sp, 48
	jal	setup_startp_constants.2877
	subi	$sp, $sp, 48
	lw	$ra, 44($sp)
	fmove	$f30, $fv
	li	$a3, 118
	lw	$a0, 36($sp)
	lw	$a1, 12($sp)
	lw	$a2, 16($sp)
	sw	$ra, 44($sp)
	addi	$sp, $sp, 48
	jal	iter_trace_diffuse_rays.2975
	subi	$sp, $sp, 48
	lw	$ra, 44($sp)
	fmove	$f30, $fv
bne_cont.21047:
	li	$a0, 4
	lw	$a1, 20($sp)
	bne	$a1, $a0, bne_else.21048
	j	bne_cont.21049
bne_else.21048:
	li	$a0, 716
	lw	$a0, 16($a0)
	li	$a1, 648
	lw	$a2, 16($sp)
	flw	$f0, 0($a2)
	fsw	$f0, 0($a1)
	flw	$f0, 4($a2)
	fsw	$f0, 4($a1)
	flw	$f0, 8($a2)
	fsw	$f0, 8($a1)
	li	$a1, 0
	lw	$a1, 0($a1)
	subi	$a1, $a1, 1
	sw	$a0, 40($sp)
	move	$a0, $a2
	sw	$ra, 44($sp)
	addi	$sp, $sp, 48
	jal	setup_startp_constants.2877
	subi	$sp, $sp, 48
	lw	$ra, 44($sp)
	fmove	$f30, $fv
	li	$a3, 118
	lw	$a0, 40($sp)
	lw	$a1, 12($sp)
	lw	$a2, 16($sp)
	sw	$ra, 44($sp)
	addi	$sp, $sp, 48
	jal	iter_trace_diffuse_rays.2975
	subi	$sp, $sp, 48
	lw	$ra, 44($sp)
	fmove	$f30, $fv
bne_cont.21049:
	li	$a0, 604
	lw	$a1, 8($sp)
	sll	$a2, $a1, 2
	lw	$a3, 4($sp)
	add	$a2, $a3, $a2
	lw	$a2, 0($a2)
	li	$a3, 592
	flw	$f0, 0($a0)
	flw	$f1, 0($a2)
	flw	$f2, 0($a3)
	fmul	$f1, $f1, $f2
	fadd	$f0, $f0, $f1
	fsw	$f0, 0($a0)
	flw	$f0, 4($a0)
	flw	$f1, 4($a2)
	flw	$f2, 4($a3)
	fmul	$f1, $f1, $f2
	fadd	$f0, $f0, $f1
	fsw	$f0, 4($a0)
	flw	$f0, 8($a0)
	flw	$f1, 8($a2)
	flw	$f2, 8($a3)
	fmul	$f1, $f1, $f2
	fadd	$f0, $f0, $f1
	fsw	$f0, 8($a0)
bne_cont.21039:
	addi	$a1, $a1, 1
	lw	$a0, 0($sp)
	j	do_without_neighbors.2997
bge_else.21037:
	jr	$ra
bge_else.21036:
	jr	$ra
try_exploit_neighbors.3013:
	sll	$a6, $a0, 2
	add	$a6, $a3, $a6
	lw	$a6, 0($a6)
	li	$a7, 4
	blt	$a7, $a5, bge_else.21052
	li	$a7, 0
	lw	$a8, 8($a6)
	sll	$a9, $a5, 2
	add	$a9, $a8, $a9
	lw	$a8, 0($a9)
	blt	$a8, $a7, bge_else.21053
	sll	$a7, $a0, 2
	add	$a7, $a3, $a7
	lw	$a7, 0($a7)
	lw	$a7, 8($a7)
	sll	$a8, $a5, 2
	add	$a8, $a7, $a8
	lw	$a7, 0($a8)
	sll	$a8, $a0, 2
	add	$a8, $a2, $a8
	lw	$a8, 0($a8)
	lw	$a8, 8($a8)
	sll	$a9, $a5, 2
	add	$a9, $a8, $a9
	lw	$a8, 0($a9)
	bne	$a8, $a7, bne_else.21054
	sll	$a8, $a0, 2
	add	$a8, $a4, $a8
	lw	$a8, 0($a8)
	lw	$a8, 8($a8)
	sll	$a9, $a5, 2
	add	$a9, $a8, $a9
	lw	$a8, 0($a9)
	bne	$a8, $a7, bne_else.21056
	subi	$a8, $a0, 1
	sll	$a8, $a8, 2
	add	$a8, $a3, $a8
	lw	$a8, 0($a8)
	lw	$a8, 8($a8)
	sll	$a9, $a5, 2
	add	$a9, $a8, $a9
	lw	$a8, 0($a9)
	bne	$a8, $a7, bne_else.21058
	addi	$a8, $a0, 1
	sll	$a8, $a8, 2
	add	$a8, $a3, $a8
	lw	$a8, 0($a8)
	lw	$a8, 8($a8)
	sll	$a9, $a5, 2
	add	$a9, $a8, $a9
	lw	$a8, 0($a9)
	bne	$a8, $a7, bne_else.21060
	li	$a7, 1
	j	bne_cont.21061
bne_else.21060:
	li	$a7, 0
bne_cont.21061:
	j	bne_cont.21059
bne_else.21058:
	li	$a7, 0
bne_cont.21059:
	j	bne_cont.21057
bne_else.21056:
	li	$a7, 0
bne_cont.21057:
	j	bne_cont.21055
bne_else.21054:
	li	$a7, 0
bne_cont.21055:
	li	$a8, 0
	bne	$a7, $a8, beq_else.21062
	sll	$a0, $a0, 2
	add	$a0, $a3, $a0
	lw	$a0, 0($a0)
	move	$a1, $a5
	j	do_without_neighbors.2997
beq_else.21062:
	lw	$a6, 12($a6)
	sll	$a7, $a5, 2
	add	$a7, $a6, $a7
	lw	$a6, 0($a7)
	li	$a7, 0
	bne	$a6, $a7, bne_else.21063
	j	bne_cont.21064
bne_else.21063:
	sll	$a6, $a0, 2
	add	$a6, $a2, $a6
	lw	$a6, 0($a6)
	lw	$a6, 20($a6)
	subi	$a7, $a0, 1
	sll	$a7, $a7, 2
	add	$a7, $a3, $a7
	lw	$a7, 0($a7)
	lw	$a7, 20($a7)
	sll	$a8, $a0, 2
	add	$a8, $a3, $a8
	lw	$a8, 0($a8)
	lw	$a8, 20($a8)
	addi	$a9, $a0, 1
	sll	$a9, $a9, 2
	add	$a9, $a3, $a9
	lw	$a9, 0($a9)
	lw	$a9, 20($a9)
	sll	$a10, $a0, 2
	add	$a10, $a4, $a10
	lw	$a10, 0($a10)
	lw	$a10, 20($a10)
	li	$a11, 592
	sll	$a12, $a5, 2
	add	$a12, $a6, $a12
	lw	$a6, 0($a12)
	flw	$f0, 0($a6)
	fsw	$f0, 0($a11)
	flw	$f0, 4($a6)
	fsw	$f0, 4($a11)
	flw	$f0, 8($a6)
	fsw	$f0, 8($a11)
	li	$a6, 592
	sll	$a11, $a5, 2
	add	$a11, $a7, $a11
	lw	$a7, 0($a11)
	flw	$f0, 0($a6)
	flw	$f1, 0($a7)
	fadd	$f0, $f0, $f1
	fsw	$f0, 0($a6)
	flw	$f0, 4($a6)
	flw	$f1, 4($a7)
	fadd	$f0, $f0, $f1
	fsw	$f0, 4($a6)
	flw	$f0, 8($a6)
	flw	$f1, 8($a7)
	fadd	$f0, $f0, $f1
	fsw	$f0, 8($a6)
	li	$a6, 592
	sll	$a7, $a5, 2
	add	$a7, $a8, $a7
	lw	$a7, 0($a7)
	flw	$f0, 0($a6)
	flw	$f1, 0($a7)
	fadd	$f0, $f0, $f1
	fsw	$f0, 0($a6)
	flw	$f0, 4($a6)
	flw	$f1, 4($a7)
	fadd	$f0, $f0, $f1
	fsw	$f0, 4($a6)
	flw	$f0, 8($a6)
	flw	$f1, 8($a7)
	fadd	$f0, $f0, $f1
	fsw	$f0, 8($a6)
	li	$a6, 592
	sll	$a7, $a5, 2
	add	$a7, $a9, $a7
	lw	$a7, 0($a7)
	flw	$f0, 0($a6)
	flw	$f1, 0($a7)
	fadd	$f0, $f0, $f1
	fsw	$f0, 0($a6)
	flw	$f0, 4($a6)
	flw	$f1, 4($a7)
	fadd	$f0, $f0, $f1
	fsw	$f0, 4($a6)
	flw	$f0, 8($a6)
	flw	$f1, 8($a7)
	fadd	$f0, $f0, $f1
	fsw	$f0, 8($a6)
	li	$a6, 592
	sll	$a7, $a5, 2
	add	$a7, $a10, $a7
	lw	$a7, 0($a7)
	flw	$f0, 0($a6)
	flw	$f1, 0($a7)
	fadd	$f0, $f0, $f1
	fsw	$f0, 0($a6)
	flw	$f0, 4($a6)
	flw	$f1, 4($a7)
	fadd	$f0, $f0, $f1
	fsw	$f0, 4($a6)
	flw	$f0, 8($a6)
	flw	$f1, 8($a7)
	fadd	$f0, $f0, $f1
	fsw	$f0, 8($a6)
	sll	$a6, $a0, 2
	add	$a6, $a3, $a6
	lw	$a6, 0($a6)
	lw	$a6, 16($a6)
	li	$a7, 604
	sll	$a8, $a5, 2
	add	$a8, $a6, $a8
	lw	$a6, 0($a8)
	li	$a8, 592
	flw	$f0, 0($a7)
	flw	$f1, 0($a6)
	flw	$f2, 0($a8)
	fmul	$f1, $f1, $f2
	fadd	$f0, $f0, $f1
	fsw	$f0, 0($a7)
	flw	$f0, 4($a7)
	flw	$f1, 4($a6)
	flw	$f2, 4($a8)
	fmul	$f1, $f1, $f2
	fadd	$f0, $f0, $f1
	fsw	$f0, 4($a7)
	flw	$f0, 8($a7)
	flw	$f1, 8($a6)
	flw	$f2, 8($a8)
	fmul	$f1, $f1, $f2
	fadd	$f0, $f0, $f1
	fsw	$f0, 8($a7)
bne_cont.21064:
	addi	$a5, $a5, 1
	j	try_exploit_neighbors.3013
bge_else.21053:
	jr	$ra
bge_else.21052:
	jr	$ra
write_ppm_header.3020:
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
	sw	$a0, 0($sp)
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	min_caml_print_byte
	subi	$sp, $sp, 8
	lw	$ra, 4($sp)
	fmove	$f30, $fv
	li	$a0, 616
	li	$a2, 0
	lw	$a1, 0($a0)
	blt	$a1, $a2, bge_else.21067
	j	bge_cont.21068
bge_else.21067:
	li	$a23, 45
	print_byte	$a23
	neg	$a1, $a1
bge_cont.21068:
	li	$a3, 10000
	sw	$a2, 4($sp)
	sw	$a0, 8($sp)
	sw	$a1, 12($sp)
	move	$a0, $a1
	move	$a1, $a3
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	countn.2621
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	move	$a0, $v0
	li	$a1, 10000
	li	$a2, 0
	sw	$a0, 16($sp)
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	mymul.2625
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	move	$a0, $v0
	lw	$a1, 12($sp)
	sub	$a0, $a1, $a0
	li	$a2, 0
	lw	$a1, 16($sp)
	blt	$a2, $a1, bge_else.21069
	li	$a1, 0
	j	bge_cont.21070
bge_else.21069:
	addi	$a1, $a1, 48
	print_byte	$a1
	li	$a1, 1
bge_cont.21070:
	li	$a3, 1000
	sw	$a1, 20($sp)
	sw	$a0, 24($sp)
	move	$a1, $a3
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	countn.2621
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	move	$a0, $v0
	li	$a1, 1000
	li	$a2, 0
	sw	$a0, 28($sp)
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	mymul.2625
	subi	$sp, $sp, 40
	lw	$ra, 36($sp)
	move	$a0, $v0
	lw	$a1, 24($sp)
	sub	$a0, $a1, $a0
	li	$a2, 0
	lw	$a1, 28($sp)
	blt	$a2, $a1, bge_else.21071
	li	$a1, 1
	lw	$a3, 20($sp)
	bne	$a3, $a1, bne_else.21073
	li	$a23, 48
	print_byte	$a23
	li	$a1, 1
	j	bne_cont.21074
bne_else.21073:
	li	$a1, 0
bne_cont.21074:
	j	bge_cont.21072
bge_else.21071:
	addi	$a1, $a1, 48
	print_byte	$a1
	li	$a1, 1
bge_cont.21072:
	li	$a3, 100
	sw	$a1, 32($sp)
	sw	$a0, 36($sp)
	move	$a1, $a3
	sw	$ra, 44($sp)
	addi	$sp, $sp, 48
	jal	countn.2621
	subi	$sp, $sp, 48
	lw	$ra, 44($sp)
	move	$a0, $v0
	li	$a1, 100
	li	$a2, 0
	sw	$a0, 40($sp)
	sw	$ra, 44($sp)
	addi	$sp, $sp, 48
	jal	mymul.2625
	subi	$sp, $sp, 48
	lw	$ra, 44($sp)
	move	$a0, $v0
	lw	$a1, 36($sp)
	sub	$a0, $a1, $a0
	li	$a2, 0
	lw	$a1, 40($sp)
	blt	$a2, $a1, bge_else.21075
	li	$a1, 1
	lw	$a3, 32($sp)
	bne	$a3, $a1, bne_else.21077
	li	$a23, 48
	print_byte	$a23
	li	$a1, 1
	j	bne_cont.21078
bne_else.21077:
	li	$a1, 0
bne_cont.21078:
	j	bge_cont.21076
bge_else.21075:
	addi	$a1, $a1, 48
	print_byte	$a1
	li	$a1, 1
bge_cont.21076:
	li	$a3, 10
	sw	$a1, 44($sp)
	sw	$a0, 48($sp)
	move	$a1, $a3
	sw	$ra, 52($sp)
	addi	$sp, $sp, 56
	jal	countn.2621
	subi	$sp, $sp, 56
	lw	$ra, 52($sp)
	move	$a0, $v0
	li	$a1, 10
	li	$a2, 0
	sw	$a0, 52($sp)
	sw	$ra, 60($sp)
	addi	$sp, $sp, 64
	jal	mymul.2625
	subi	$sp, $sp, 64
	lw	$ra, 60($sp)
	move	$a0, $v0
	lw	$a1, 48($sp)
	sub	$a0, $a1, $a0
	li	$a1, 0
	lw	$a2, 52($sp)
	blt	$a1, $a2, bge_else.21079
	li	$a1, 1
	lw	$a2, 44($sp)
	bne	$a2, $a1, bne_else.21081
	li	$a23, 48
	print_byte	$a23
	li	$a1, 1
	j	bne_cont.21082
bne_else.21081:
	li	$a1, 0
bne_cont.21082:
	j	bge_cont.21080
bge_else.21079:
	addi	$a1, $a2, 48
	print_byte	$a1
	li	$a1, 1
bge_cont.21080:
	addi	$a0, $a0, 48
	print_byte	$a0
	li	$a0, 32
	sw	$a0, 56($sp)
	sw	$ra, 60($sp)
	addi	$sp, $sp, 64
	jal	min_caml_print_byte
	subi	$sp, $sp, 64
	lw	$ra, 60($sp)
	fmove	$f30, $fv
	lw	$a0, 8($sp)
	lw	$a0, 4($a0)
	lw	$a2, 4($sp)
	blt	$a0, $a2, bge_else.21083
	j	bge_cont.21084
bge_else.21083:
	li	$a23, 45
	print_byte	$a23
	neg	$a0, $a0
bge_cont.21084:
	li	$a1, 10000
	sw	$a0, 60($sp)
	sw	$ra, 68($sp)
	addi	$sp, $sp, 72
	jal	countn.2621
	subi	$sp, $sp, 72
	lw	$ra, 68($sp)
	move	$a0, $v0
	li	$a1, 10000
	li	$a2, 0
	sw	$a0, 64($sp)
	sw	$ra, 68($sp)
	addi	$sp, $sp, 72
	jal	mymul.2625
	subi	$sp, $sp, 72
	lw	$ra, 68($sp)
	move	$a0, $v0
	lw	$a1, 60($sp)
	sub	$a0, $a1, $a0
	li	$a2, 0
	lw	$a1, 64($sp)
	blt	$a2, $a1, bge_else.21085
	li	$a1, 0
	j	bge_cont.21086
bge_else.21085:
	addi	$a1, $a1, 48
	print_byte	$a1
	li	$a1, 1
bge_cont.21086:
	li	$a3, 1000
	sw	$a1, 68($sp)
	sw	$a0, 72($sp)
	move	$a1, $a3
	sw	$ra, 76($sp)
	addi	$sp, $sp, 80
	jal	countn.2621
	subi	$sp, $sp, 80
	lw	$ra, 76($sp)
	move	$a0, $v0
	li	$a1, 1000
	li	$a2, 0
	sw	$a0, 76($sp)
	sw	$ra, 84($sp)
	addi	$sp, $sp, 88
	jal	mymul.2625
	subi	$sp, $sp, 88
	lw	$ra, 84($sp)
	move	$a0, $v0
	lw	$a1, 72($sp)
	sub	$a0, $a1, $a0
	li	$a2, 0
	lw	$a1, 76($sp)
	blt	$a2, $a1, bge_else.21087
	li	$a1, 1
	lw	$a3, 68($sp)
	bne	$a3, $a1, bne_else.21089
	li	$a23, 48
	print_byte	$a23
	li	$a1, 1
	j	bne_cont.21090
bne_else.21089:
	li	$a1, 0
bne_cont.21090:
	j	bge_cont.21088
bge_else.21087:
	addi	$a1, $a1, 48
	print_byte	$a1
	li	$a1, 1
bge_cont.21088:
	li	$a3, 100
	sw	$a1, 80($sp)
	sw	$a0, 84($sp)
	move	$a1, $a3
	sw	$ra, 92($sp)
	addi	$sp, $sp, 96
	jal	countn.2621
	subi	$sp, $sp, 96
	lw	$ra, 92($sp)
	move	$a0, $v0
	li	$a1, 100
	li	$a2, 0
	sw	$a0, 88($sp)
	sw	$ra, 92($sp)
	addi	$sp, $sp, 96
	jal	mymul.2625
	subi	$sp, $sp, 96
	lw	$ra, 92($sp)
	move	$a0, $v0
	lw	$a1, 84($sp)
	sub	$a0, $a1, $a0
	li	$a2, 0
	lw	$a1, 88($sp)
	blt	$a2, $a1, bge_else.21091
	li	$a1, 1
	lw	$a3, 80($sp)
	bne	$a3, $a1, bne_else.21093
	li	$a23, 48
	print_byte	$a23
	li	$a1, 1
	j	bne_cont.21094
bne_else.21093:
	li	$a1, 0
bne_cont.21094:
	j	bge_cont.21092
bge_else.21091:
	addi	$a1, $a1, 48
	print_byte	$a1
	li	$a1, 1
bge_cont.21092:
	li	$a3, 10
	sw	$a1, 92($sp)
	sw	$a0, 96($sp)
	move	$a1, $a3
	sw	$ra, 100($sp)
	addi	$sp, $sp, 104
	jal	countn.2621
	subi	$sp, $sp, 104
	lw	$ra, 100($sp)
	move	$a0, $v0
	li	$a1, 10
	li	$a2, 0
	sw	$a0, 100($sp)
	sw	$ra, 108($sp)
	addi	$sp, $sp, 112
	jal	mymul.2625
	subi	$sp, $sp, 112
	lw	$ra, 108($sp)
	move	$a0, $v0
	lw	$a1, 96($sp)
	sub	$a0, $a1, $a0
	li	$a1, 0
	lw	$a2, 100($sp)
	blt	$a1, $a2, bge_else.21095
	li	$a1, 1
	lw	$a2, 92($sp)
	bne	$a2, $a1, bne_else.21097
	li	$a23, 48
	print_byte	$a23
	li	$a1, 1
	j	bne_cont.21098
bne_else.21097:
	li	$a1, 0
bne_cont.21098:
	j	bge_cont.21096
bge_else.21095:
	addi	$a1, $a2, 48
	print_byte	$a1
	li	$a1, 1
bge_cont.21096:
	addi	$a0, $a0, 48
	print_byte	$a0
	lw	$a0, 56($sp)
	sw	$ra, 108($sp)
	addi	$sp, $sp, 112
	jal	min_caml_print_byte
	subi	$sp, $sp, 112
	lw	$ra, 108($sp)
	fmove	$f30, $fv
	li	$a0, 255
	li	$a1, 10000
	lw	$a2, 4($sp)
	sw	$ra, 108($sp)
	addi	$sp, $sp, 112
	jal	countn.2621
	subi	$sp, $sp, 112
	lw	$ra, 108($sp)
	move	$a0, $v0
	li	$a1, 10000
	li	$a2, 0
	sw	$a0, 104($sp)
	sw	$ra, 108($sp)
	addi	$sp, $sp, 112
	jal	mymul.2625
	subi	$sp, $sp, 112
	lw	$ra, 108($sp)
	move	$a0, $v0
	li	$a1, 255
	sub	$a0, $a1, $a0
	li	$a2, 0
	lw	$a1, 104($sp)
	blt	$a2, $a1, bge_else.21099
	li	$a1, 0
	j	bge_cont.21100
bge_else.21099:
	addi	$a1, $a1, 48
	print_byte	$a1
	li	$a1, 1
bge_cont.21100:
	li	$a3, 1000
	sw	$a1, 108($sp)
	sw	$a0, 112($sp)
	move	$a1, $a3
	sw	$ra, 116($sp)
	addi	$sp, $sp, 120
	jal	countn.2621
	subi	$sp, $sp, 120
	lw	$ra, 116($sp)
	move	$a0, $v0
	li	$a1, 1000
	li	$a2, 0
	sw	$a0, 116($sp)
	sw	$ra, 124($sp)
	addi	$sp, $sp, 128
	jal	mymul.2625
	subi	$sp, $sp, 128
	lw	$ra, 124($sp)
	move	$a0, $v0
	lw	$a1, 112($sp)
	sub	$a0, $a1, $a0
	li	$a2, 0
	lw	$a1, 116($sp)
	blt	$a2, $a1, bge_else.21101
	li	$a1, 1
	lw	$a3, 108($sp)
	bne	$a3, $a1, bne_else.21103
	li	$a23, 48
	print_byte	$a23
	li	$a1, 1
	j	bne_cont.21104
bne_else.21103:
	li	$a1, 0
bne_cont.21104:
	j	bge_cont.21102
bge_else.21101:
	addi	$a1, $a1, 48
	print_byte	$a1
	li	$a1, 1
bge_cont.21102:
	li	$a3, 100
	sw	$a1, 120($sp)
	sw	$a0, 124($sp)
	move	$a1, $a3
	sw	$ra, 132($sp)
	addi	$sp, $sp, 136
	jal	countn.2621
	subi	$sp, $sp, 136
	lw	$ra, 132($sp)
	move	$a0, $v0
	li	$a1, 100
	li	$a2, 0
	sw	$a0, 128($sp)
	sw	$ra, 132($sp)
	addi	$sp, $sp, 136
	jal	mymul.2625
	subi	$sp, $sp, 136
	lw	$ra, 132($sp)
	move	$a0, $v0
	lw	$a1, 124($sp)
	sub	$a0, $a1, $a0
	li	$a2, 0
	lw	$a1, 128($sp)
	blt	$a2, $a1, bge_else.21105
	li	$a1, 1
	lw	$a3, 120($sp)
	bne	$a3, $a1, bne_else.21107
	li	$a23, 48
	print_byte	$a23
	li	$a1, 1
	j	bne_cont.21108
bne_else.21107:
	li	$a1, 0
bne_cont.21108:
	j	bge_cont.21106
bge_else.21105:
	addi	$a1, $a1, 48
	print_byte	$a1
	li	$a1, 1
bge_cont.21106:
	li	$a3, 10
	sw	$a1, 132($sp)
	sw	$a0, 136($sp)
	move	$a1, $a3
	sw	$ra, 140($sp)
	addi	$sp, $sp, 144
	jal	countn.2621
	subi	$sp, $sp, 144
	lw	$ra, 140($sp)
	move	$a0, $v0
	li	$a1, 10
	li	$a2, 0
	sw	$a0, 140($sp)
	sw	$ra, 148($sp)
	addi	$sp, $sp, 152
	jal	mymul.2625
	subi	$sp, $sp, 152
	lw	$ra, 148($sp)
	move	$a0, $v0
	lw	$a1, 136($sp)
	sub	$a0, $a1, $a0
	li	$a1, 0
	lw	$a2, 140($sp)
	blt	$a1, $a2, bge_else.21109
	li	$a1, 1
	lw	$a2, 132($sp)
	bne	$a2, $a1, bne_else.21111
	li	$a23, 48
	print_byte	$a23
	li	$a1, 1
	j	bne_cont.21112
bne_else.21111:
	li	$a1, 0
bne_cont.21112:
	j	bge_cont.21110
bge_else.21109:
	addi	$a1, $a2, 48
	print_byte	$a1
	li	$a1, 1
bge_cont.21110:
	addi	$a0, $a0, 48
	print_byte	$a0
	lw	$a0, 0($sp)
	j	min_caml_print_byte
pretrace_diffuse_rays.3026:
	li	$a2, 4
	blt	$a2, $a1, bge_else.21113
	lw	$a2, 8($a0)
	sll	$a3, $a1, 2
	add	$a3, $a2, $a3
	lw	$a2, 0($a3)
	li	$a3, 0
	blt	$a2, $a3, bge_else.21114
	lw	$a2, 12($a0)
	sll	$a3, $a1, 2
	add	$a3, $a2, $a3
	lw	$a2, 0($a3)
	li	$a3, 0
	sw	$a1, 0($sp)
	bne	$a2, $a3, bne_else.21115
	j	bne_cont.21116
bne_else.21115:
	lw	$a2, 24($a0)
	lw	$a2, 0($a2)
	li	$a3, 592
	mtc1	$f0, $zero
	fsw	$f0, 0($a3)
	fsw	$f0, 4($a3)
	fsw	$f0, 8($a3)
	lw	$a3, 28($a0)
	lw	$a4, 4($a0)
	li	$a5, 716
	sll	$a2, $a2, 2
	add	$a2, $a5, $a2
	lw	$a2, 0($a2)
	sll	$a5, $a1, 2
	add	$a5, $a3, $a5
	lw	$a3, 0($a5)
	sll	$a5, $a1, 2
	add	$a5, $a4, $a5
	lw	$a4, 0($a5)
	li	$a5, 648
	flw	$f0, 0($a4)
	fsw	$f0, 0($a5)
	flw	$f0, 4($a4)
	fsw	$f0, 4($a5)
	flw	$f0, 8($a4)
	fsw	$f0, 8($a5)
	li	$a5, 0
	lw	$a5, 0($a5)
	subi	$a5, $a5, 1
	sw	$a0, 4($sp)
	sw	$a4, 8($sp)
	sw	$a3, 12($sp)
	sw	$a2, 16($sp)
	move	$a1, $a5
	move	$a0, $a4
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	setup_startp_constants.2877
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	fmove	$f30, $fv
	li	$a3, 118
	lw	$a0, 16($sp)
	lw	$a1, 12($sp)
	lw	$a2, 8($sp)
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	iter_trace_diffuse_rays.2975
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	fmove	$f30, $fv
	lw	$a0, 4($sp)
	lw	$a1, 20($a0)
	lw	$a2, 0($sp)
	sll	$a3, $a2, 2
	add	$a3, $a1, $a3
	lw	$a1, 0($a3)
	li	$a3, 592
	flw	$f0, 0($a3)
	fsw	$f0, 0($a1)
	flw	$f0, 4($a3)
	fsw	$f0, 4($a1)
	flw	$f0, 8($a3)
	fsw	$f0, 8($a1)
bne_cont.21116:
	lw	$a1, 0($sp)
	addi	$a1, $a1, 1
	j	pretrace_diffuse_rays.3026
bge_else.21114:
	jr	$ra
bge_else.21113:
	jr	$ra
pretrace_pixels.3029:
	li	$a3, 0
	blt	$a1, $a3, bge_else.21119
	li	$a3, 632
	flw	$f3, 0($a3)
	li	$a3, 624
	lw	$a3, 0($a3)
	sub	$a3, $a1, $a3
	sw	$a2, 0($sp)
	sw	$a0, 4($sp)
	sw	$a1, 8($sp)
	fsw	$f2, 16($sp)
	fsw	$f1, 24($sp)
	fsw	$f0, 32($sp)
	fsw	$f3, 40($sp)
	move	$a0, $a3
	sw	$ra, 52($sp)
	addi	$sp, $sp, 56
	jal	min_caml_float_of_int
	subi	$sp, $sp, 56
	lw	$ra, 52($sp)
	fmove	$f0, $fv
	flw	$f1, 40($sp)
	fmul	$f0, $f1, $f0
	li	$a0, 696
	li	$a1, 660
	flw	$f1, 0($a1)
	fmul	$f1, $f0, $f1
	flw	$f2, 32($sp)
	fadd	$f1, $f1, $f2
	fsw	$f1, 0($a0)
	li	$a0, 696
	li	$a1, 660
	flw	$f1, 4($a1)
	fmul	$f1, $f0, $f1
	flw	$f3, 24($sp)
	fadd	$f1, $f1, $f3
	fsw	$f1, 4($a0)
	li	$a0, 696
	li	$a1, 660
	flw	$f1, 8($a1)
	fmul	$f0, $f0, $f1
	flw	$f1, 16($sp)
	fadd	$f0, $f0, $f1
	fsw	$f0, 8($a0)
	li	$a0, 696
	flw	$f0, 0($a0)
	fmul	$f0, $f0, $f0
	flw	$f4, 4($a0)
	fmul	$f4, $f4, $f4
	fadd	$f0, $f0, $f4
	flw	$f4, 8($a0)
	fmul	$f4, $f4, $f4
	fadd	$f0, $f0, $f4
	sqrt	$f0, $f0
	mtc1	$f4, $zero
	fbne	$f0, $f4, fbne_else.21121
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f0, $v0
	j	fbne_cont.21122
fbne_else.21121:
	finv	$f0, $f0
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f4, $v0
	fmul	$f0, $f4, $f0
fbne_cont.21122:
	flw	$f4, 0($a0)
	fmul	$f4, $f4, $f0
	fsw	$f4, 0($a0)
	flw	$f4, 4($a0)
	fmul	$f4, $f4, $f0
	fsw	$f4, 4($a0)
	flw	$f4, 8($a0)
	fmul	$f0, $f4, $f0
	fsw	$f0, 8($a0)
	li	$a0, 604
	mtc1	$f0, $zero
	fsw	$f0, 0($a0)
	fsw	$f0, 4($a0)
	fsw	$f0, 8($a0)
	li	$a0, 636
	li	$a1, 300
	flw	$f0, 0($a1)
	fsw	$f0, 0($a0)
	flw	$f0, 4($a1)
	fsw	$f0, 4($a0)
	flw	$f0, 8($a1)
	fsw	$f0, 8($a0)
	li	$a0, 0
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f0, $v0
	li	$a1, 696
	lw	$a2, 8($sp)
	sll	$a3, $a2, 2
	lw	$a4, 4($sp)
	add	$a3, $a4, $a3
	lw	$a3, 0($a3)
	mtc1	$f4, $zero
	move	$a2, $a3
	fmove	$f1, $f4
	sw	$ra, 52($sp)
	addi	$sp, $sp, 56
	jal	trace_ray.2966
	subi	$sp, $sp, 56
	lw	$ra, 52($sp)
	fmove	$f30, $fv
	lw	$a0, 8($sp)
	sll	$a1, $a0, 2
	lw	$a2, 4($sp)
	add	$a1, $a2, $a1
	lw	$a1, 0($a1)
	lw	$a1, 0($a1)
	li	$a3, 604
	flw	$f0, 0($a3)
	fsw	$f0, 0($a1)
	flw	$f0, 4($a3)
	fsw	$f0, 4($a1)
	flw	$f0, 8($a3)
	fsw	$f0, 8($a1)
	sll	$a1, $a0, 2
	add	$a1, $a2, $a1
	lw	$a1, 0($a1)
	lw	$a1, 24($a1)
	lw	$a3, 0($sp)
	sw	$a3, 0($a1)
	sll	$a1, $a0, 2
	add	$a1, $a2, $a1
	lw	$a1, 0($a1)
	li	$a4, 0
	move	$a0, $a1
	move	$a1, $a4
	sw	$ra, 52($sp)
	addi	$sp, $sp, 56
	jal	pretrace_diffuse_rays.3026
	subi	$sp, $sp, 56
	lw	$ra, 52($sp)
	fmove	$f30, $fv
	lw	$a0, 8($sp)
	subi	$a1, $a0, 1
	lw	$a0, 0($sp)
	addi	$a0, $a0, 1
	li	$a2, 5
	blt	$a0, $a2, bge_else.21123
	subi	$a2, $a0, 5
	j	bge_cont.21124
bge_else.21123:
	move	$a2, $a0
bge_cont.21124:
	flw	$f0, 32($sp)
	flw	$f1, 24($sp)
	flw	$f2, 16($sp)
	lw	$a0, 4($sp)
	j	pretrace_pixels.3029
bge_else.21119:
	jr	$ra
scan_pixel.3040:
	li	$a5, 616
	lw	$a5, 0($a5)
	blt	$a0, $a5, bge_else.21126
	jr	$ra
bge_else.21126:
	li	$a5, 604
	sll	$a6, $a0, 2
	add	$a6, $a3, $a6
	lw	$a6, 0($a6)
	lw	$a6, 0($a6)
	flw	$f0, 0($a6)
	fsw	$f0, 0($a5)
	flw	$f0, 4($a6)
	fsw	$f0, 4($a5)
	flw	$f0, 8($a6)
	fsw	$f0, 8($a5)
	li	$a5, 616
	lw	$a5, 4($a5)
	addi	$a6, $a1, 1
	blt	$a6, $a5, bge_else.21128
	li	$a5, 0
	j	bge_cont.21129
bge_else.21128:
	li	$a5, 0
	blt	$a5, $a1, bge_else.21130
	li	$a5, 0
	j	bge_cont.21131
bge_else.21130:
	li	$a5, 616
	lw	$a5, 0($a5)
	addi	$a6, $a0, 1
	blt	$a6, $a5, bge_else.21132
	li	$a5, 0
	j	bge_cont.21133
bge_else.21132:
	li	$a5, 0
	blt	$a5, $a0, bge_else.21134
	li	$a5, 0
	j	bge_cont.21135
bge_else.21134:
	li	$a5, 1
bge_cont.21135:
bge_cont.21133:
bge_cont.21131:
bge_cont.21129:
	li	$a6, 0
	sw	$a4, 0($sp)
	sw	$a3, 4($sp)
	sw	$a2, 8($sp)
	sw	$a1, 12($sp)
	sw	$a0, 16($sp)
	bne	$a5, $a6, bne_else.21136
	sll	$a5, $a0, 2
	add	$a5, $a3, $a5
	lw	$a5, 0($a5)
	li	$a6, 0
	move	$a1, $a6
	move	$a0, $a5
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	do_without_neighbors.2997
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	fmove	$f30, $fv
	j	bne_cont.21137
bne_else.21136:
	li	$a5, 0
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	try_exploit_neighbors.3013
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	fmove	$f30, $fv
bne_cont.21137:
	li	$a0, 604
	flw	$f0, 0($a0)
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	min_caml_int_of_float
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	move	$a0, $v0
	li	$a1, 255
	blt	$a1, $a0, bge_else.21138
	li	$a1, 0
	blt	$a0, $a1, bge_else.21140
	j	bge_cont.21141
bge_else.21140:
	li	$a0, 0
bge_cont.21141:
	j	bge_cont.21139
bge_else.21138:
	li	$a0, 255
bge_cont.21139:
	li	$a2, 0
	blt	$a0, $a2, bge_else.21142
	j	bge_cont.21143
bge_else.21142:
	li	$a23, 45
	print_byte	$a23
	neg	$a0, $a0
bge_cont.21143:
	li	$a1, 10000
	sw	$a0, 20($sp)
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	countn.2621
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	move	$a0, $v0
	li	$a1, 10000
	li	$a2, 0
	sw	$a0, 24($sp)
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	mymul.2625
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	move	$a0, $v0
	lw	$a1, 20($sp)
	sub	$a0, $a1, $a0
	li	$a2, 0
	lw	$a1, 24($sp)
	blt	$a2, $a1, bge_else.21144
	li	$a1, 0
	j	bge_cont.21145
bge_else.21144:
	addi	$a1, $a1, 48
	print_byte	$a1
	li	$a1, 1
bge_cont.21145:
	li	$a3, 1000
	sw	$a1, 28($sp)
	sw	$a0, 32($sp)
	move	$a1, $a3
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	countn.2621
	subi	$sp, $sp, 40
	lw	$ra, 36($sp)
	move	$a0, $v0
	li	$a1, 1000
	li	$a2, 0
	sw	$a0, 36($sp)
	sw	$ra, 44($sp)
	addi	$sp, $sp, 48
	jal	mymul.2625
	subi	$sp, $sp, 48
	lw	$ra, 44($sp)
	move	$a0, $v0
	lw	$a1, 32($sp)
	sub	$a0, $a1, $a0
	li	$a2, 0
	lw	$a1, 36($sp)
	blt	$a2, $a1, bge_else.21146
	li	$a1, 1
	lw	$a3, 28($sp)
	bne	$a3, $a1, bne_else.21148
	li	$a23, 48
	print_byte	$a23
	li	$a1, 1
	j	bne_cont.21149
bne_else.21148:
	li	$a1, 0
bne_cont.21149:
	j	bge_cont.21147
bge_else.21146:
	addi	$a1, $a1, 48
	print_byte	$a1
	li	$a1, 1
bge_cont.21147:
	li	$a3, 100
	sw	$a1, 40($sp)
	sw	$a0, 44($sp)
	move	$a1, $a3
	sw	$ra, 52($sp)
	addi	$sp, $sp, 56
	jal	countn.2621
	subi	$sp, $sp, 56
	lw	$ra, 52($sp)
	move	$a0, $v0
	li	$a1, 100
	li	$a2, 0
	sw	$a0, 48($sp)
	sw	$ra, 52($sp)
	addi	$sp, $sp, 56
	jal	mymul.2625
	subi	$sp, $sp, 56
	lw	$ra, 52($sp)
	move	$a0, $v0
	lw	$a1, 44($sp)
	sub	$a0, $a1, $a0
	li	$a2, 0
	lw	$a1, 48($sp)
	blt	$a2, $a1, bge_else.21150
	li	$a1, 1
	lw	$a3, 40($sp)
	bne	$a3, $a1, bne_else.21152
	li	$a23, 48
	print_byte	$a23
	li	$a1, 1
	j	bne_cont.21153
bne_else.21152:
	li	$a1, 0
bne_cont.21153:
	j	bge_cont.21151
bge_else.21150:
	addi	$a1, $a1, 48
	print_byte	$a1
	li	$a1, 1
bge_cont.21151:
	li	$a3, 10
	sw	$a1, 52($sp)
	sw	$a0, 56($sp)
	move	$a1, $a3
	sw	$ra, 60($sp)
	addi	$sp, $sp, 64
	jal	countn.2621
	subi	$sp, $sp, 64
	lw	$ra, 60($sp)
	move	$a0, $v0
	li	$a1, 10
	li	$a2, 0
	sw	$a0, 60($sp)
	sw	$ra, 68($sp)
	addi	$sp, $sp, 72
	jal	mymul.2625
	subi	$sp, $sp, 72
	lw	$ra, 68($sp)
	move	$a0, $v0
	lw	$a1, 56($sp)
	sub	$a0, $a1, $a0
	li	$a1, 0
	lw	$a2, 60($sp)
	blt	$a1, $a2, bge_else.21154
	li	$a1, 1
	lw	$a2, 52($sp)
	bne	$a2, $a1, bne_else.21156
	li	$a23, 48
	print_byte	$a23
	li	$a1, 1
	j	bne_cont.21157
bne_else.21156:
	li	$a1, 0
bne_cont.21157:
	j	bge_cont.21155
bge_else.21154:
	addi	$a1, $a2, 48
	print_byte	$a1
	li	$a1, 1
bge_cont.21155:
	addi	$a0, $a0, 48
	print_byte	$a0
	li	$a0, 32
	sw	$ra, 68($sp)
	addi	$sp, $sp, 72
	jal	min_caml_print_byte
	subi	$sp, $sp, 72
	lw	$ra, 68($sp)
	fmove	$f30, $fv
	li	$a0, 604
	flw	$f0, 4($a0)
	sw	$ra, 68($sp)
	addi	$sp, $sp, 72
	jal	min_caml_int_of_float
	subi	$sp, $sp, 72
	lw	$ra, 68($sp)
	move	$a0, $v0
	li	$a1, 255
	blt	$a1, $a0, bge_else.21158
	li	$a1, 0
	blt	$a0, $a1, bge_else.21160
	j	bge_cont.21161
bge_else.21160:
	li	$a0, 0
bge_cont.21161:
	j	bge_cont.21159
bge_else.21158:
	li	$a0, 255
bge_cont.21159:
	li	$a2, 0
	blt	$a0, $a2, bge_else.21162
	j	bge_cont.21163
bge_else.21162:
	li	$a23, 45
	print_byte	$a23
	neg	$a0, $a0
bge_cont.21163:
	li	$a1, 10000
	sw	$a0, 64($sp)
	sw	$ra, 68($sp)
	addi	$sp, $sp, 72
	jal	countn.2621
	subi	$sp, $sp, 72
	lw	$ra, 68($sp)
	move	$a0, $v0
	li	$a1, 10000
	li	$a2, 0
	sw	$a0, 68($sp)
	sw	$ra, 76($sp)
	addi	$sp, $sp, 80
	jal	mymul.2625
	subi	$sp, $sp, 80
	lw	$ra, 76($sp)
	move	$a0, $v0
	lw	$a1, 64($sp)
	sub	$a0, $a1, $a0
	li	$a2, 0
	lw	$a1, 68($sp)
	blt	$a2, $a1, bge_else.21164
	li	$a1, 0
	j	bge_cont.21165
bge_else.21164:
	addi	$a1, $a1, 48
	print_byte	$a1
	li	$a1, 1
bge_cont.21165:
	li	$a3, 1000
	sw	$a1, 72($sp)
	sw	$a0, 76($sp)
	move	$a1, $a3
	sw	$ra, 84($sp)
	addi	$sp, $sp, 88
	jal	countn.2621
	subi	$sp, $sp, 88
	lw	$ra, 84($sp)
	move	$a0, $v0
	li	$a1, 1000
	li	$a2, 0
	sw	$a0, 80($sp)
	sw	$ra, 84($sp)
	addi	$sp, $sp, 88
	jal	mymul.2625
	subi	$sp, $sp, 88
	lw	$ra, 84($sp)
	move	$a0, $v0
	lw	$a1, 76($sp)
	sub	$a0, $a1, $a0
	li	$a2, 0
	lw	$a1, 80($sp)
	blt	$a2, $a1, bge_else.21166
	li	$a1, 1
	lw	$a3, 72($sp)
	bne	$a3, $a1, bne_else.21168
	li	$a23, 48
	print_byte	$a23
	li	$a1, 1
	j	bne_cont.21169
bne_else.21168:
	li	$a1, 0
bne_cont.21169:
	j	bge_cont.21167
bge_else.21166:
	addi	$a1, $a1, 48
	print_byte	$a1
	li	$a1, 1
bge_cont.21167:
	li	$a3, 100
	sw	$a1, 84($sp)
	sw	$a0, 88($sp)
	move	$a1, $a3
	sw	$ra, 92($sp)
	addi	$sp, $sp, 96
	jal	countn.2621
	subi	$sp, $sp, 96
	lw	$ra, 92($sp)
	move	$a0, $v0
	li	$a1, 100
	li	$a2, 0
	sw	$a0, 92($sp)
	sw	$ra, 100($sp)
	addi	$sp, $sp, 104
	jal	mymul.2625
	subi	$sp, $sp, 104
	lw	$ra, 100($sp)
	move	$a0, $v0
	lw	$a1, 88($sp)
	sub	$a0, $a1, $a0
	li	$a2, 0
	lw	$a1, 92($sp)
	blt	$a2, $a1, bge_else.21170
	li	$a1, 1
	lw	$a3, 84($sp)
	bne	$a3, $a1, bne_else.21172
	li	$a23, 48
	print_byte	$a23
	li	$a1, 1
	j	bne_cont.21173
bne_else.21172:
	li	$a1, 0
bne_cont.21173:
	j	bge_cont.21171
bge_else.21170:
	addi	$a1, $a1, 48
	print_byte	$a1
	li	$a1, 1
bge_cont.21171:
	li	$a3, 10
	sw	$a1, 96($sp)
	sw	$a0, 100($sp)
	move	$a1, $a3
	sw	$ra, 108($sp)
	addi	$sp, $sp, 112
	jal	countn.2621
	subi	$sp, $sp, 112
	lw	$ra, 108($sp)
	move	$a0, $v0
	li	$a1, 10
	li	$a2, 0
	sw	$a0, 104($sp)
	sw	$ra, 108($sp)
	addi	$sp, $sp, 112
	jal	mymul.2625
	subi	$sp, $sp, 112
	lw	$ra, 108($sp)
	move	$a0, $v0
	lw	$a1, 100($sp)
	sub	$a0, $a1, $a0
	li	$a1, 0
	lw	$a2, 104($sp)
	blt	$a1, $a2, bge_else.21174
	li	$a1, 1
	lw	$a2, 96($sp)
	bne	$a2, $a1, bne_else.21176
	li	$a23, 48
	print_byte	$a23
	li	$a1, 1
	j	bne_cont.21177
bne_else.21176:
	li	$a1, 0
bne_cont.21177:
	j	bge_cont.21175
bge_else.21174:
	addi	$a1, $a2, 48
	print_byte	$a1
	li	$a1, 1
bge_cont.21175:
	addi	$a0, $a0, 48
	print_byte	$a0
	li	$a0, 32
	sw	$ra, 108($sp)
	addi	$sp, $sp, 112
	jal	min_caml_print_byte
	subi	$sp, $sp, 112
	lw	$ra, 108($sp)
	fmove	$f30, $fv
	li	$a0, 604
	flw	$f0, 8($a0)
	sw	$ra, 108($sp)
	addi	$sp, $sp, 112
	jal	min_caml_int_of_float
	subi	$sp, $sp, 112
	lw	$ra, 108($sp)
	move	$a0, $v0
	li	$a1, 255
	blt	$a1, $a0, bge_else.21178
	li	$a1, 0
	blt	$a0, $a1, bge_else.21180
	j	bge_cont.21181
bge_else.21180:
	li	$a0, 0
bge_cont.21181:
	j	bge_cont.21179
bge_else.21178:
	li	$a0, 255
bge_cont.21179:
	li	$a2, 0
	blt	$a0, $a2, bge_else.21182
	j	bge_cont.21183
bge_else.21182:
	li	$a23, 45
	print_byte	$a23
	neg	$a0, $a0
bge_cont.21183:
	li	$a1, 10000
	sw	$a0, 108($sp)
	sw	$ra, 116($sp)
	addi	$sp, $sp, 120
	jal	countn.2621
	subi	$sp, $sp, 120
	lw	$ra, 116($sp)
	move	$a0, $v0
	li	$a1, 10000
	li	$a2, 0
	sw	$a0, 112($sp)
	sw	$ra, 116($sp)
	addi	$sp, $sp, 120
	jal	mymul.2625
	subi	$sp, $sp, 120
	lw	$ra, 116($sp)
	move	$a0, $v0
	lw	$a1, 108($sp)
	sub	$a0, $a1, $a0
	li	$a2, 0
	lw	$a1, 112($sp)
	blt	$a2, $a1, bge_else.21184
	li	$a1, 0
	j	bge_cont.21185
bge_else.21184:
	addi	$a1, $a1, 48
	print_byte	$a1
	li	$a1, 1
bge_cont.21185:
	li	$a3, 1000
	sw	$a1, 116($sp)
	sw	$a0, 120($sp)
	move	$a1, $a3
	sw	$ra, 124($sp)
	addi	$sp, $sp, 128
	jal	countn.2621
	subi	$sp, $sp, 128
	lw	$ra, 124($sp)
	move	$a0, $v0
	li	$a1, 1000
	li	$a2, 0
	sw	$a0, 124($sp)
	sw	$ra, 132($sp)
	addi	$sp, $sp, 136
	jal	mymul.2625
	subi	$sp, $sp, 136
	lw	$ra, 132($sp)
	move	$a0, $v0
	lw	$a1, 120($sp)
	sub	$a0, $a1, $a0
	li	$a2, 0
	lw	$a1, 124($sp)
	blt	$a2, $a1, bge_else.21186
	li	$a1, 1
	lw	$a3, 116($sp)
	bne	$a3, $a1, bne_else.21188
	li	$a23, 48
	print_byte	$a23
	li	$a1, 1
	j	bne_cont.21189
bne_else.21188:
	li	$a1, 0
bne_cont.21189:
	j	bge_cont.21187
bge_else.21186:
	addi	$a1, $a1, 48
	print_byte	$a1
	li	$a1, 1
bge_cont.21187:
	li	$a3, 100
	sw	$a1, 128($sp)
	sw	$a0, 132($sp)
	move	$a1, $a3
	sw	$ra, 140($sp)
	addi	$sp, $sp, 144
	jal	countn.2621
	subi	$sp, $sp, 144
	lw	$ra, 140($sp)
	move	$a0, $v0
	li	$a1, 100
	li	$a2, 0
	sw	$a0, 136($sp)
	sw	$ra, 140($sp)
	addi	$sp, $sp, 144
	jal	mymul.2625
	subi	$sp, $sp, 144
	lw	$ra, 140($sp)
	move	$a0, $v0
	lw	$a1, 132($sp)
	sub	$a0, $a1, $a0
	li	$a2, 0
	lw	$a1, 136($sp)
	blt	$a2, $a1, bge_else.21190
	li	$a1, 1
	lw	$a3, 128($sp)
	bne	$a3, $a1, bne_else.21192
	li	$a23, 48
	print_byte	$a23
	li	$a1, 1
	j	bne_cont.21193
bne_else.21192:
	li	$a1, 0
bne_cont.21193:
	j	bge_cont.21191
bge_else.21190:
	addi	$a1, $a1, 48
	print_byte	$a1
	li	$a1, 1
bge_cont.21191:
	li	$a3, 10
	sw	$a1, 140($sp)
	sw	$a0, 144($sp)
	move	$a1, $a3
	sw	$ra, 148($sp)
	addi	$sp, $sp, 152
	jal	countn.2621
	subi	$sp, $sp, 152
	lw	$ra, 148($sp)
	move	$a0, $v0
	li	$a1, 10
	li	$a2, 0
	sw	$a0, 148($sp)
	sw	$ra, 156($sp)
	addi	$sp, $sp, 160
	jal	mymul.2625
	subi	$sp, $sp, 160
	lw	$ra, 156($sp)
	move	$a0, $v0
	lw	$a1, 144($sp)
	sub	$a0, $a1, $a0
	li	$a1, 0
	lw	$a2, 148($sp)
	blt	$a1, $a2, bge_else.21194
	li	$a1, 1
	lw	$a2, 140($sp)
	bne	$a2, $a1, bne_else.21196
	li	$a23, 48
	print_byte	$a23
	li	$a1, 1
	j	bne_cont.21197
bne_else.21196:
	li	$a1, 0
bne_cont.21197:
	j	bge_cont.21195
bge_else.21194:
	addi	$a1, $a2, 48
	print_byte	$a1
	li	$a1, 1
bge_cont.21195:
	addi	$a0, $a0, 48
	print_byte	$a0
	li	$a0, 10
	sw	$ra, 156($sp)
	addi	$sp, $sp, 160
	jal	min_caml_print_byte
	subi	$sp, $sp, 160
	lw	$ra, 156($sp)
	fmove	$f30, $fv
	lw	$a0, 16($sp)
	addi	$a0, $a0, 1
	lw	$a1, 12($sp)
	lw	$a2, 8($sp)
	lw	$a3, 4($sp)
	lw	$a4, 0($sp)
	j	scan_pixel.3040
scan_line.3046:
	li	$a5, 616
	lw	$a5, 4($a5)
	blt	$a0, $a5, bge_else.21198
	jr	$ra
bge_else.21198:
	li	$a5, 616
	lw	$a5, 4($a5)
	subi	$a5, $a5, 1
	sw	$a4, 0($sp)
	sw	$a3, 4($sp)
	sw	$a2, 8($sp)
	sw	$a1, 12($sp)
	sw	$a0, 16($sp)
	blt	$a0, $a5, bge_else.21200
	j	bge_cont.21201
bge_else.21200:
	addi	$a5, $a0, 1
	li	$a6, 632
	flw	$f0, 0($a6)
	li	$a6, 624
	lw	$a6, 4($a6)
	sub	$a5, $a5, $a6
	fsw	$f0, 24($sp)
	move	$a0, $a5
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	min_caml_float_of_int
	subi	$sp, $sp, 40
	lw	$ra, 36($sp)
	fmove	$f0, $fv
	flw	$f1, 24($sp)
	fmul	$f0, $f1, $f0
	li	$a0, 672
	flw	$f1, 0($a0)
	fmul	$f1, $f0, $f1
	li	$a0, 684
	flw	$f2, 0($a0)
	fadd	$f1, $f1, $f2
	li	$a0, 672
	flw	$f2, 4($a0)
	fmul	$f2, $f0, $f2
	li	$a0, 684
	flw	$f3, 4($a0)
	fadd	$f2, $f2, $f3
	li	$a0, 672
	flw	$f3, 8($a0)
	fmul	$f0, $f0, $f3
	li	$a0, 684
	flw	$f3, 8($a0)
	fadd	$f0, $f0, $f3
	li	$a0, 616
	lw	$a0, 0($a0)
	subi	$a1, $a0, 1
	lw	$a0, 4($sp)
	lw	$a2, 0($sp)
	fmove	$f30, $f2
	fmove	$f2, $f0
	fmove	$f0, $f1
	fmove	$f1, $f30
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	pretrace_pixels.3029
	subi	$sp, $sp, 40
	lw	$ra, 36($sp)
	fmove	$f30, $fv
bge_cont.21201:
	li	$a0, 0
	lw	$a1, 16($sp)
	lw	$a2, 12($sp)
	lw	$a3, 8($sp)
	lw	$a4, 4($sp)
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	scan_pixel.3040
	subi	$sp, $sp, 40
	lw	$ra, 36($sp)
	fmove	$f30, $fv
	lw	$a0, 16($sp)
	addi	$a0, $a0, 1
	lw	$a1, 0($sp)
	addi	$a1, $a1, 2
	li	$a2, 5
	blt	$a1, $a2, bge_else.21203
	subi	$a4, $a1, 5
	j	bge_cont.21204
bge_else.21203:
	move	$a4, $a1
bge_cont.21204:
	lw	$a1, 8($sp)
	lw	$a2, 4($sp)
	lw	$a3, 12($sp)
	j	scan_line.3046
init_line_elements.3056:
	li	$a2, 0
	blt	$a1, $a2, bge_else.21205
	li	$a2, 3
	mtc1	$f0, $zero
	sw	$a0, 0($sp)
	sw	$a1, 4($sp)
	move	$a0, $a2
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	min_caml_create_float_array
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	move	$a0, $v0
	li	$a1, 3
	mtc1	$f0, $zero
	sw	$a0, 8($sp)
	fsw	$f0, 16($sp)
	sw	$a1, 24($sp)
	move	$a0, $a1
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	min_caml_create_float_array
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	move	$a1, $v0
	li	$a0, 5
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	min_caml_create_array
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	move	$a0, $v0
	flw	$f0, 16($sp)
	lw	$a1, 24($sp)
	sw	$a0, 28($sp)
	move	$a0, $a1
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	min_caml_create_float_array
	subi	$sp, $sp, 40
	lw	$ra, 36($sp)
	move	$a0, $v0
	lw	$a1, 28($sp)
	sw	$a0, 4($a1)
	flw	$f0, 16($sp)
	lw	$a0, 24($sp)
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	min_caml_create_float_array
	subi	$sp, $sp, 40
	lw	$ra, 36($sp)
	move	$a0, $v0
	lw	$a1, 28($sp)
	sw	$a0, 8($a1)
	flw	$f0, 16($sp)
	lw	$a0, 24($sp)
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	min_caml_create_float_array
	subi	$sp, $sp, 40
	lw	$ra, 36($sp)
	move	$a0, $v0
	lw	$a1, 28($sp)
	sw	$a0, 12($a1)
	flw	$f0, 16($sp)
	lw	$a0, 24($sp)
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	min_caml_create_float_array
	subi	$sp, $sp, 40
	lw	$ra, 36($sp)
	move	$a0, $v0
	lw	$a1, 28($sp)
	sw	$a0, 16($a1)
	li	$a0, 5
	li	$a2, 0
	move	$a1, $a2
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	min_caml_create_array
	subi	$sp, $sp, 40
	lw	$ra, 36($sp)
	move	$a0, $v0
	li	$a1, 5
	li	$a2, 0
	sw	$a0, 32($sp)
	move	$a0, $a1
	move	$a1, $a2
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	min_caml_create_array
	subi	$sp, $sp, 40
	lw	$ra, 36($sp)
	move	$a0, $v0
	li	$a1, 3
	mtc1	$f0, $zero
	sw	$a0, 36($sp)
	fsw	$f0, 40($sp)
	sw	$a1, 48($sp)
	move	$a0, $a1
	sw	$ra, 52($sp)
	addi	$sp, $sp, 56
	jal	min_caml_create_float_array
	subi	$sp, $sp, 56
	lw	$ra, 52($sp)
	move	$a1, $v0
	li	$a0, 5
	sw	$ra, 52($sp)
	addi	$sp, $sp, 56
	jal	min_caml_create_array
	subi	$sp, $sp, 56
	lw	$ra, 52($sp)
	move	$a0, $v0
	flw	$f0, 40($sp)
	lw	$a1, 48($sp)
	sw	$a0, 52($sp)
	move	$a0, $a1
	sw	$ra, 60($sp)
	addi	$sp, $sp, 64
	jal	min_caml_create_float_array
	subi	$sp, $sp, 64
	lw	$ra, 60($sp)
	move	$a0, $v0
	lw	$a1, 52($sp)
	sw	$a0, 4($a1)
	flw	$f0, 40($sp)
	lw	$a0, 48($sp)
	sw	$ra, 60($sp)
	addi	$sp, $sp, 64
	jal	min_caml_create_float_array
	subi	$sp, $sp, 64
	lw	$ra, 60($sp)
	move	$a0, $v0
	lw	$a1, 52($sp)
	sw	$a0, 8($a1)
	flw	$f0, 40($sp)
	lw	$a0, 48($sp)
	sw	$ra, 60($sp)
	addi	$sp, $sp, 64
	jal	min_caml_create_float_array
	subi	$sp, $sp, 64
	lw	$ra, 60($sp)
	move	$a0, $v0
	lw	$a1, 52($sp)
	sw	$a0, 12($a1)
	flw	$f0, 40($sp)
	lw	$a0, 48($sp)
	sw	$ra, 60($sp)
	addi	$sp, $sp, 64
	jal	min_caml_create_float_array
	subi	$sp, $sp, 64
	lw	$ra, 60($sp)
	move	$a0, $v0
	lw	$a1, 52($sp)
	sw	$a0, 16($a1)
	li	$a0, 3
	mtc1	$f0, $zero
	fsw	$f0, 56($sp)
	sw	$a0, 64($sp)
	sw	$ra, 68($sp)
	addi	$sp, $sp, 72
	jal	min_caml_create_float_array
	subi	$sp, $sp, 72
	lw	$ra, 68($sp)
	move	$a1, $v0
	li	$a0, 5
	sw	$ra, 68($sp)
	addi	$sp, $sp, 72
	jal	min_caml_create_array
	subi	$sp, $sp, 72
	lw	$ra, 68($sp)
	move	$a0, $v0
	flw	$f0, 56($sp)
	lw	$a1, 64($sp)
	sw	$a0, 68($sp)
	move	$a0, $a1
	sw	$ra, 76($sp)
	addi	$sp, $sp, 80
	jal	min_caml_create_float_array
	subi	$sp, $sp, 80
	lw	$ra, 76($sp)
	move	$a0, $v0
	lw	$a1, 68($sp)
	sw	$a0, 4($a1)
	flw	$f0, 56($sp)
	lw	$a0, 64($sp)
	sw	$ra, 76($sp)
	addi	$sp, $sp, 80
	jal	min_caml_create_float_array
	subi	$sp, $sp, 80
	lw	$ra, 76($sp)
	move	$a0, $v0
	lw	$a1, 68($sp)
	sw	$a0, 8($a1)
	flw	$f0, 56($sp)
	lw	$a0, 64($sp)
	sw	$ra, 76($sp)
	addi	$sp, $sp, 80
	jal	min_caml_create_float_array
	subi	$sp, $sp, 80
	lw	$ra, 76($sp)
	move	$a0, $v0
	lw	$a1, 68($sp)
	sw	$a0, 12($a1)
	flw	$f0, 56($sp)
	lw	$a0, 64($sp)
	sw	$ra, 76($sp)
	addi	$sp, $sp, 80
	jal	min_caml_create_float_array
	subi	$sp, $sp, 80
	lw	$ra, 76($sp)
	move	$a0, $v0
	lw	$a1, 68($sp)
	sw	$a0, 16($a1)
	li	$a0, 1
	li	$a2, 0
	move	$a1, $a2
	sw	$ra, 76($sp)
	addi	$sp, $sp, 80
	jal	min_caml_create_array
	subi	$sp, $sp, 80
	lw	$ra, 76($sp)
	move	$a0, $v0
	li	$a1, 3
	mtc1	$f0, $zero
	sw	$a0, 72($sp)
	fsw	$f0, 80($sp)
	sw	$a1, 88($sp)
	move	$a0, $a1
	sw	$ra, 92($sp)
	addi	$sp, $sp, 96
	jal	min_caml_create_float_array
	subi	$sp, $sp, 96
	lw	$ra, 92($sp)
	move	$a1, $v0
	li	$a0, 5
	sw	$ra, 92($sp)
	addi	$sp, $sp, 96
	jal	min_caml_create_array
	subi	$sp, $sp, 96
	lw	$ra, 92($sp)
	move	$a0, $v0
	flw	$f0, 80($sp)
	lw	$a1, 88($sp)
	sw	$a0, 92($sp)
	move	$a0, $a1
	sw	$ra, 100($sp)
	addi	$sp, $sp, 104
	jal	min_caml_create_float_array
	subi	$sp, $sp, 104
	lw	$ra, 100($sp)
	move	$a0, $v0
	lw	$a1, 92($sp)
	sw	$a0, 4($a1)
	flw	$f0, 80($sp)
	lw	$a0, 88($sp)
	sw	$ra, 100($sp)
	addi	$sp, $sp, 104
	jal	min_caml_create_float_array
	subi	$sp, $sp, 104
	lw	$ra, 100($sp)
	move	$a0, $v0
	lw	$a1, 92($sp)
	sw	$a0, 8($a1)
	flw	$f0, 80($sp)
	lw	$a0, 88($sp)
	sw	$ra, 100($sp)
	addi	$sp, $sp, 104
	jal	min_caml_create_float_array
	subi	$sp, $sp, 104
	lw	$ra, 100($sp)
	move	$a0, $v0
	lw	$a1, 92($sp)
	sw	$a0, 12($a1)
	flw	$f0, 80($sp)
	lw	$a0, 88($sp)
	sw	$ra, 100($sp)
	addi	$sp, $sp, 104
	jal	min_caml_create_float_array
	subi	$sp, $sp, 104
	lw	$ra, 100($sp)
	move	$a0, $v0
	lw	$a1, 92($sp)
	sw	$a0, 16($a1)
	move	$a0, $fp
	addi	$fp, $fp, 32
	sw	$a1, 28($a0)
	lw	$a1, 72($sp)
	sw	$a1, 24($a0)
	lw	$a1, 68($sp)
	sw	$a1, 20($a0)
	lw	$a1, 52($sp)
	sw	$a1, 16($a0)
	lw	$a1, 36($sp)
	sw	$a1, 12($a0)
	lw	$a1, 32($sp)
	sw	$a1, 8($a0)
	lw	$a1, 28($sp)
	sw	$a1, 4($a0)
	lw	$a1, 8($sp)
	sw	$a1, 0($a0)
	lw	$a1, 4($sp)
	sll	$a2, $a1, 2
	lw	$a3, 0($sp)
	add	$a2, $a3, $a2
	sw	$a0, 0($a2)
	subi	$a1, $a1, 1
	move	$a0, $a3
	j	init_line_elements.3056
bge_else.21205:
	move	$v0, $a0
	jr	$ra
calc_dirvec.3066:
	li	$a3, 5
	blt	$a0, $a3, bge_else.21208
	fmul	$f2, $f0, $f0
	fmul	$f3, $f1, $f1
	fadd	$f2, $f2, $f3
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f3, $v0
	fadd	$f2, $f2, $f3
	sqrt	$f2, $f2
	finv	$f3, $f2
	fmul	$f0, $f0, $f3
	finv	$f3, $f2
	fmul	$f1, $f1, $f3
	finv	$f2, $f2
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f3, $v0
	fmul	$f2, $f3, $f2
	li	$a0, 716
	sll	$a1, $a1, 2
	add	$a1, $a0, $a1
	lw	$a0, 0($a1)
	sll	$a1, $a2, 2
	add	$a1, $a0, $a1
	lw	$a1, 0($a1)
	lw	$a1, 0($a1)
	fsw	$f0, 0($a1)
	fsw	$f1, 4($a1)
	fsw	$f2, 8($a1)
	addi	$a1, $a2, 40
	sll	$a1, $a1, 2
	add	$a1, $a0, $a1
	lw	$a1, 0($a1)
	lw	$a1, 0($a1)
	fneg	$f3, $f1
	fsw	$f0, 0($a1)
	fsw	$f2, 4($a1)
	fsw	$f3, 8($a1)
	addi	$a1, $a2, 80
	sll	$a1, $a1, 2
	add	$a1, $a0, $a1
	lw	$a1, 0($a1)
	lw	$a1, 0($a1)
	fneg	$f3, $f0
	fneg	$f4, $f1
	fsw	$f2, 0($a1)
	fsw	$f3, 4($a1)
	fsw	$f4, 8($a1)
	addi	$a1, $a2, 1
	sll	$a1, $a1, 2
	add	$a1, $a0, $a1
	lw	$a1, 0($a1)
	lw	$a1, 0($a1)
	fneg	$f3, $f0
	fneg	$f4, $f1
	fneg	$f5, $f2
	fsw	$f3, 0($a1)
	fsw	$f4, 4($a1)
	fsw	$f5, 8($a1)
	addi	$a1, $a2, 41
	sll	$a1, $a1, 2
	add	$a1, $a0, $a1
	lw	$a1, 0($a1)
	lw	$a1, 0($a1)
	fneg	$f3, $f0
	fneg	$f4, $f2
	fsw	$f3, 0($a1)
	fsw	$f4, 4($a1)
	fsw	$f1, 8($a1)
	addi	$a1, $a2, 81
	sll	$a1, $a1, 2
	add	$a1, $a0, $a1
	lw	$a0, 0($a1)
	lw	$a0, 0($a0)
	fneg	$f2, $f2
	fsw	$f2, 0($a0)
	fsw	$f0, 4($a0)
	fsw	$f1, 8($a0)
	jr	$ra
bge_else.21208:
	fmul	$f0, $f1, $f1
	li	$v0, 15820
	sll	$v0, $v0, 16
	ori	$v0, $v0, 52429
	mtc1	$f1, $v0
	fadd	$f0, $f0, $f1
	sqrt	$f0, $f0
	finv	$f1, $f0
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f4, $v0
	fmul	$f1, $f4, $f1
	sw	$a2, 0($sp)
	sw	$a1, 4($sp)
	fsw	$f3, 8($sp)
	sw	$a0, 16($sp)
	fsw	$f0, 24($sp)
	fsw	$f2, 32($sp)
	fmove	$f0, $f1
	sw	$ra, 44($sp)
	addi	$sp, $sp, 48
	jal	min_caml_atan
	subi	$sp, $sp, 48
	lw	$ra, 44($sp)
	fmove	$f0, $fv
	flw	$f1, 32($sp)
	fmul	$f0, $f0, $f1
	fsw	$f0, 40($sp)
	sw	$ra, 52($sp)
	addi	$sp, $sp, 56
	jal	min_caml_sin
	subi	$sp, $sp, 56
	lw	$ra, 52($sp)
	fmove	$f0, $fv
	flw	$f1, 40($sp)
	fsw	$f0, 48($sp)
	fmove	$f0, $f1
	sw	$ra, 60($sp)
	addi	$sp, $sp, 64
	jal	min_caml_cos
	subi	$sp, $sp, 64
	lw	$ra, 60($sp)
	fmove	$f0, $fv
	finv	$f0, $f0
	flw	$f1, 48($sp)
	fmul	$f0, $f1, $f0
	flw	$f1, 24($sp)
	fmul	$f0, $f0, $f1
	lw	$a0, 16($sp)
	addi	$a0, $a0, 1
	fmul	$f1, $f0, $f0
	li	$v0, 15820
	sll	$v0, $v0, 16
	ori	$v0, $v0, 52429
	mtc1	$f2, $v0
	fadd	$f1, $f1, $f2
	sqrt	$f1, $f1
	finv	$f2, $f1
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f3, $v0
	fmul	$f2, $f3, $f2
	fsw	$f0, 56($sp)
	sw	$a0, 64($sp)
	fsw	$f1, 72($sp)
	fmove	$f0, $f2
	sw	$ra, 84($sp)
	addi	$sp, $sp, 88
	jal	min_caml_atan
	subi	$sp, $sp, 88
	lw	$ra, 84($sp)
	fmove	$f0, $fv
	flw	$f1, 8($sp)
	fmul	$f0, $f0, $f1
	fsw	$f0, 80($sp)
	sw	$ra, 92($sp)
	addi	$sp, $sp, 96
	jal	min_caml_sin
	subi	$sp, $sp, 96
	lw	$ra, 92($sp)
	fmove	$f0, $fv
	flw	$f1, 80($sp)
	fsw	$f0, 88($sp)
	fmove	$f0, $f1
	sw	$ra, 100($sp)
	addi	$sp, $sp, 104
	jal	min_caml_cos
	subi	$sp, $sp, 104
	lw	$ra, 100($sp)
	fmove	$f0, $fv
	finv	$f0, $f0
	flw	$f1, 88($sp)
	fmul	$f0, $f1, $f0
	flw	$f1, 72($sp)
	fmul	$f1, $f0, $f1
	flw	$f0, 56($sp)
	flw	$f2, 32($sp)
	flw	$f3, 8($sp)
	lw	$a0, 64($sp)
	lw	$a1, 4($sp)
	lw	$a2, 0($sp)
	j	calc_dirvec.3066
calc_dirvecs.3074:
	li	$a3, 0
	blt	$a0, $a3, bge_else.21212
	sw	$a0, 0($sp)
	fsw	$f0, 8($sp)
	sw	$a2, 16($sp)
	sw	$a1, 20($sp)
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	min_caml_float_of_int
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	fmove	$f0, $fv
	li	$v0, 15948
	sll	$v0, $v0, 16
	ori	$v0, $v0, 52429
	mtc1	$f1, $v0
	fmul	$f0, $f0, $f1
	li	$v0, 16230
	sll	$v0, $v0, 16
	ori	$v0, $v0, 26214
	mtc1	$f1, $v0
	fsub	$f2, $f0, $f1
	li	$a0, 0
	mtc1	$f0, $zero
	mtc1	$f1, $zero
	flw	$f3, 8($sp)
	lw	$a1, 20($sp)
	lw	$a2, 16($sp)
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	calc_dirvec.3066
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	fmove	$f30, $fv
	lw	$a0, 0($sp)
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	min_caml_float_of_int
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	fmove	$f0, $fv
	li	$v0, 15948
	sll	$v0, $v0, 16
	ori	$v0, $v0, 52429
	mtc1	$f1, $v0
	fmul	$f0, $f0, $f1
	li	$v0, 15820
	sll	$v0, $v0, 16
	ori	$v0, $v0, 52429
	mtc1	$f1, $v0
	fadd	$f2, $f0, $f1
	li	$a0, 0
	mtc1	$f0, $zero
	mtc1	$f1, $zero
	lw	$a1, 16($sp)
	addi	$a2, $a1, 2
	flw	$f3, 8($sp)
	lw	$a3, 20($sp)
	move	$a1, $a3
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	calc_dirvec.3066
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	fmove	$f30, $fv
	lw	$a0, 0($sp)
	subi	$a0, $a0, 1
	lw	$a1, 20($sp)
	addi	$a1, $a1, 1
	li	$a2, 5
	blt	$a1, $a2, bge_else.21214
	subi	$a1, $a1, 5
	j	bge_cont.21215
bge_else.21214:
bge_cont.21215:
	flw	$f0, 8($sp)
	lw	$a2, 16($sp)
	j	calc_dirvecs.3074
bge_else.21212:
	jr	$ra
calc_dirvec_rows.3079:
	li	$a3, 0
	blt	$a0, $a3, bge_else.21217
	sw	$a0, 0($sp)
	sw	$a2, 4($sp)
	sw	$a1, 8($sp)
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	min_caml_float_of_int
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	fmove	$f0, $fv
	li	$v0, 15948
	sll	$v0, $v0, 16
	ori	$v0, $v0, 52429
	mtc1	$f1, $v0
	fmul	$f0, $f0, $f1
	li	$v0, 16230
	sll	$v0, $v0, 16
	ori	$v0, $v0, 26214
	mtc1	$f1, $v0
	fsub	$f0, $f0, $f1
	li	$a0, 4
	lw	$a1, 8($sp)
	lw	$a2, 4($sp)
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	calc_dirvecs.3074
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	fmove	$f30, $fv
	lw	$a0, 0($sp)
	subi	$a0, $a0, 1
	lw	$a1, 8($sp)
	addi	$a1, $a1, 2
	li	$a2, 5
	blt	$a1, $a2, bge_else.21218
	subi	$a1, $a1, 5
	j	bge_cont.21219
bge_else.21218:
bge_cont.21219:
	lw	$a2, 4($sp)
	addi	$a2, $a2, 4
	j	calc_dirvec_rows.3079
bge_else.21217:
	jr	$ra
create_dirvec_elements.3085:
	li	$a2, 0
	blt	$a1, $a2, bge_else.21221
	li	$a2, 3
	mtc1	$f0, $zero
	sw	$a0, 0($sp)
	sw	$a1, 4($sp)
	move	$a0, $a2
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	min_caml_create_float_array
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	move	$a1, $v0
	li	$a0, 0
	lw	$a0, 0($a0)
	sw	$a1, 8($sp)
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	min_caml_create_array
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	move	$a0, $v0
	move	$a1, $fp
	addi	$fp, $fp, 8
	sw	$a0, 4($a1)
	lw	$a0, 8($sp)
	sw	$a0, 0($a1)
	move	$a0, $a1
	lw	$a1, 4($sp)
	sll	$a2, $a1, 2
	lw	$a3, 0($sp)
	add	$a2, $a3, $a2
	sw	$a0, 0($a2)
	subi	$a1, $a1, 1
	move	$a0, $a3
	j	create_dirvec_elements.3085
bge_else.21221:
	jr	$ra
create_dirvecs.3088:
	li	$a1, 0
	blt	$a0, $a1, bge_else.21223
	li	$a1, 716
	li	$a2, 120
	li	$a3, 3
	mtc1	$f0, $zero
	sw	$a1, 0($sp)
	sw	$a0, 4($sp)
	sw	$a2, 8($sp)
	move	$a0, $a3
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	min_caml_create_float_array
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	move	$a1, $v0
	li	$a0, 0
	lw	$a0, 0($a0)
	sw	$a1, 12($sp)
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	min_caml_create_array
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	move	$a0, $v0
	move	$a1, $fp
	addi	$fp, $fp, 8
	sw	$a0, 4($a1)
	lw	$a0, 12($sp)
	sw	$a0, 0($a1)
	lw	$a0, 8($sp)
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	min_caml_create_array
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	move	$a0, $v0
	lw	$a1, 4($sp)
	sll	$a2, $a1, 2
	lw	$a3, 0($sp)
	add	$a2, $a3, $a2
	sw	$a0, 0($a2)
	li	$a0, 716
	sll	$a2, $a1, 2
	add	$a2, $a0, $a2
	lw	$a0, 0($a2)
	li	$a2, 118
	move	$a1, $a2
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	create_dirvec_elements.3085
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	fmove	$f30, $fv
	lw	$a0, 4($sp)
	subi	$a0, $a0, 1
	j	create_dirvecs.3088
bge_else.21223:
	jr	$ra
init_dirvec_constants.3090:
	li	$a2, 0
	blt	$a1, $a2, bge_else.21225
	sll	$a2, $a1, 2
	add	$a2, $a0, $a2
	lw	$a2, 0($a2)
	li	$a3, 0
	lw	$a3, 0($a3)
	subi	$a3, $a3, 1
	sw	$a0, 0($sp)
	sw	$a1, 4($sp)
	move	$a1, $a3
	move	$a0, $a2
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	iter_setup_dirvec_constants.2872
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	fmove	$f30, $fv
	lw	$a0, 4($sp)
	subi	$a1, $a0, 1
	lw	$a0, 0($sp)
	j	init_dirvec_constants.3090
bge_else.21225:
	jr	$ra
init_vecset_constants.3093:
	li	$a1, 0
	blt	$a0, $a1, bge_else.21227
	li	$a1, 716
	sll	$a2, $a0, 2
	add	$a2, $a1, $a2
	lw	$a1, 0($a2)
	li	$a2, 119
	sw	$a0, 0($sp)
	move	$a0, $a1
	move	$a1, $a2
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	init_dirvec_constants.3090
	subi	$sp, $sp, 8
	lw	$ra, 4($sp)
	fmove	$f30, $fv
	lw	$a0, 0($sp)
	subi	$a0, $a0, 1
	j	init_vecset_constants.3093
bge_else.21227:
	jr	$ra
exit:
	hlt
_min_caml_start2: # main entry point
   # main program start
	li	$a0, 128
	li	$a1, 616
	li	$a2, 0
	sw	$a0, 0($a1)
	li	$a3, 1
	sw	$a0, 4($a1)
	li	$a4, 624
	li	$a5, 64
	sw	$a5, 0($a4)
	sw	$a5, 4($a4)
	li	$a4, 632
	sw	$a3, 0($sp)
	sw	$a2, 4($sp)
	sw	$a1, 8($sp)
	sw	$a4, 12($sp)
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	min_caml_float_of_int
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	fmove	$f0, $fv
	finv	$f0, $f0
	li	$v0, 17152
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	fmul	$f0, $f1, $f0
	lw	$a0, 12($sp)
	fsw	$f0, 0($a0)
	lw	$a0, 8($sp)
	lw	$a1, 0($a0)
	li	$a2, 3
	mtc1	$f0, $zero
	sw	$a1, 16($sp)
	fsw	$f0, 24($sp)
	sw	$a2, 32($sp)
	move	$a0, $a2
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	min_caml_create_float_array
	subi	$sp, $sp, 40
	lw	$ra, 36($sp)
	move	$a0, $v0
	flw	$f0, 24($sp)
	lw	$a1, 32($sp)
	sw	$a0, 36($sp)
	move	$a0, $a1
	sw	$ra, 44($sp)
	addi	$sp, $sp, 48
	jal	min_caml_create_float_array
	subi	$sp, $sp, 48
	lw	$ra, 44($sp)
	move	$a1, $v0
	li	$a0, 5
	sw	$a0, 40($sp)
	sw	$ra, 44($sp)
	addi	$sp, $sp, 48
	jal	min_caml_create_array
	subi	$sp, $sp, 48
	lw	$ra, 44($sp)
	move	$a0, $v0
	flw	$f0, 24($sp)
	lw	$a1, 32($sp)
	sw	$a0, 44($sp)
	move	$a0, $a1
	sw	$ra, 52($sp)
	addi	$sp, $sp, 56
	jal	min_caml_create_float_array
	subi	$sp, $sp, 56
	lw	$ra, 52($sp)
	move	$a0, $v0
	lw	$a1, 44($sp)
	sw	$a0, 4($a1)
	flw	$f0, 24($sp)
	lw	$a0, 32($sp)
	sw	$ra, 52($sp)
	addi	$sp, $sp, 56
	jal	min_caml_create_float_array
	subi	$sp, $sp, 56
	lw	$ra, 52($sp)
	move	$a0, $v0
	lw	$a1, 44($sp)
	sw	$a0, 8($a1)
	flw	$f0, 24($sp)
	lw	$a0, 32($sp)
	sw	$ra, 52($sp)
	addi	$sp, $sp, 56
	jal	min_caml_create_float_array
	subi	$sp, $sp, 56
	lw	$ra, 52($sp)
	move	$a0, $v0
	lw	$a1, 44($sp)
	sw	$a0, 12($a1)
	flw	$f0, 24($sp)
	lw	$a0, 32($sp)
	sw	$ra, 52($sp)
	addi	$sp, $sp, 56
	jal	min_caml_create_float_array
	subi	$sp, $sp, 56
	lw	$ra, 52($sp)
	move	$a0, $v0
	lw	$a1, 44($sp)
	sw	$a0, 16($a1)
	lw	$a0, 40($sp)
	lw	$a2, 4($sp)
	move	$a1, $a2
	sw	$ra, 52($sp)
	addi	$sp, $sp, 56
	jal	min_caml_create_array
	subi	$sp, $sp, 56
	lw	$ra, 52($sp)
	move	$a0, $v0
	lw	$a1, 40($sp)
	lw	$a2, 4($sp)
	sw	$a0, 48($sp)
	move	$a0, $a1
	move	$a1, $a2
	sw	$ra, 52($sp)
	addi	$sp, $sp, 56
	jal	min_caml_create_array
	subi	$sp, $sp, 56
	lw	$ra, 52($sp)
	move	$a0, $v0
	flw	$f0, 24($sp)
	lw	$a1, 32($sp)
	sw	$a0, 52($sp)
	move	$a0, $a1
	sw	$ra, 60($sp)
	addi	$sp, $sp, 64
	jal	min_caml_create_float_array
	subi	$sp, $sp, 64
	lw	$ra, 60($sp)
	move	$a1, $v0
	lw	$a0, 40($sp)
	sw	$ra, 60($sp)
	addi	$sp, $sp, 64
	jal	min_caml_create_array
	subi	$sp, $sp, 64
	lw	$ra, 60($sp)
	move	$a0, $v0
	flw	$f0, 24($sp)
	lw	$a1, 32($sp)
	sw	$a0, 56($sp)
	move	$a0, $a1
	sw	$ra, 60($sp)
	addi	$sp, $sp, 64
	jal	min_caml_create_float_array
	subi	$sp, $sp, 64
	lw	$ra, 60($sp)
	move	$a0, $v0
	lw	$a1, 56($sp)
	sw	$a0, 4($a1)
	flw	$f0, 24($sp)
	lw	$a0, 32($sp)
	sw	$ra, 60($sp)
	addi	$sp, $sp, 64
	jal	min_caml_create_float_array
	subi	$sp, $sp, 64
	lw	$ra, 60($sp)
	move	$a0, $v0
	lw	$a1, 56($sp)
	sw	$a0, 8($a1)
	flw	$f0, 24($sp)
	lw	$a0, 32($sp)
	sw	$ra, 60($sp)
	addi	$sp, $sp, 64
	jal	min_caml_create_float_array
	subi	$sp, $sp, 64
	lw	$ra, 60($sp)
	move	$a0, $v0
	lw	$a1, 56($sp)
	sw	$a0, 12($a1)
	flw	$f0, 24($sp)
	lw	$a0, 32($sp)
	sw	$ra, 60($sp)
	addi	$sp, $sp, 64
	jal	min_caml_create_float_array
	subi	$sp, $sp, 64
	lw	$ra, 60($sp)
	move	$a0, $v0
	lw	$a1, 56($sp)
	sw	$a0, 16($a1)
	flw	$f0, 24($sp)
	lw	$a0, 32($sp)
	sw	$ra, 60($sp)
	addi	$sp, $sp, 64
	jal	min_caml_create_float_array
	subi	$sp, $sp, 64
	lw	$ra, 60($sp)
	move	$a1, $v0
	lw	$a0, 40($sp)
	sw	$ra, 60($sp)
	addi	$sp, $sp, 64
	jal	min_caml_create_array
	subi	$sp, $sp, 64
	lw	$ra, 60($sp)
	move	$a0, $v0
	flw	$f0, 24($sp)
	lw	$a1, 32($sp)
	sw	$a0, 60($sp)
	move	$a0, $a1
	sw	$ra, 68($sp)
	addi	$sp, $sp, 72
	jal	min_caml_create_float_array
	subi	$sp, $sp, 72
	lw	$ra, 68($sp)
	move	$a0, $v0
	lw	$a1, 60($sp)
	sw	$a0, 4($a1)
	flw	$f0, 24($sp)
	lw	$a0, 32($sp)
	sw	$ra, 68($sp)
	addi	$sp, $sp, 72
	jal	min_caml_create_float_array
	subi	$sp, $sp, 72
	lw	$ra, 68($sp)
	move	$a0, $v0
	lw	$a1, 60($sp)
	sw	$a0, 8($a1)
	flw	$f0, 24($sp)
	lw	$a0, 32($sp)
	sw	$ra, 68($sp)
	addi	$sp, $sp, 72
	jal	min_caml_create_float_array
	subi	$sp, $sp, 72
	lw	$ra, 68($sp)
	move	$a0, $v0
	lw	$a1, 60($sp)
	sw	$a0, 12($a1)
	flw	$f0, 24($sp)
	lw	$a0, 32($sp)
	sw	$ra, 68($sp)
	addi	$sp, $sp, 72
	jal	min_caml_create_float_array
	subi	$sp, $sp, 72
	lw	$ra, 68($sp)
	move	$a0, $v0
	lw	$a1, 60($sp)
	sw	$a0, 16($a1)
	lw	$a0, 0($sp)
	lw	$a2, 4($sp)
	move	$a1, $a2
	sw	$ra, 68($sp)
	addi	$sp, $sp, 72
	jal	min_caml_create_array
	subi	$sp, $sp, 72
	lw	$ra, 68($sp)
	move	$a0, $v0
	flw	$f0, 24($sp)
	lw	$a1, 32($sp)
	sw	$a0, 64($sp)
	move	$a0, $a1
	sw	$ra, 68($sp)
	addi	$sp, $sp, 72
	jal	min_caml_create_float_array
	subi	$sp, $sp, 72
	lw	$ra, 68($sp)
	move	$a1, $v0
	lw	$a0, 40($sp)
	sw	$ra, 68($sp)
	addi	$sp, $sp, 72
	jal	min_caml_create_array
	subi	$sp, $sp, 72
	lw	$ra, 68($sp)
	move	$a0, $v0
	flw	$f0, 24($sp)
	lw	$a1, 32($sp)
	sw	$a0, 68($sp)
	move	$a0, $a1
	sw	$ra, 76($sp)
	addi	$sp, $sp, 80
	jal	min_caml_create_float_array
	subi	$sp, $sp, 80
	lw	$ra, 76($sp)
	move	$a0, $v0
	lw	$a1, 68($sp)
	sw	$a0, 4($a1)
	flw	$f0, 24($sp)
	lw	$a0, 32($sp)
	sw	$ra, 76($sp)
	addi	$sp, $sp, 80
	jal	min_caml_create_float_array
	subi	$sp, $sp, 80
	lw	$ra, 76($sp)
	move	$a0, $v0
	lw	$a1, 68($sp)
	sw	$a0, 8($a1)
	flw	$f0, 24($sp)
	lw	$a0, 32($sp)
	sw	$ra, 76($sp)
	addi	$sp, $sp, 80
	jal	min_caml_create_float_array
	subi	$sp, $sp, 80
	lw	$ra, 76($sp)
	move	$a0, $v0
	lw	$a1, 68($sp)
	sw	$a0, 12($a1)
	flw	$f0, 24($sp)
	lw	$a0, 32($sp)
	sw	$ra, 76($sp)
	addi	$sp, $sp, 80
	jal	min_caml_create_float_array
	subi	$sp, $sp, 80
	lw	$ra, 76($sp)
	move	$a0, $v0
	lw	$a1, 68($sp)
	sw	$a0, 16($a1)
	move	$a0, $fp
	addi	$fp, $fp, 32
	sw	$a1, 28($a0)
	lw	$a1, 64($sp)
	sw	$a1, 24($a0)
	lw	$a1, 60($sp)
	sw	$a1, 20($a0)
	lw	$a1, 56($sp)
	sw	$a1, 16($a0)
	lw	$a1, 52($sp)
	sw	$a1, 12($a0)
	lw	$a1, 48($sp)
	sw	$a1, 8($a0)
	lw	$a1, 44($sp)
	sw	$a1, 4($a0)
	lw	$a1, 36($sp)
	sw	$a1, 0($a0)
	move	$a1, $a0
	lw	$a0, 16($sp)
	sw	$ra, 76($sp)
	addi	$sp, $sp, 80
	jal	min_caml_create_array
	subi	$sp, $sp, 80
	lw	$ra, 76($sp)
	move	$a0, $v0
	lw	$a1, 8($sp)
	lw	$a2, 0($a1)
	subi	$a2, $a2, 2
	move	$a1, $a2
	sw	$ra, 76($sp)
	addi	$sp, $sp, 80
	jal	init_line_elements.3056
	subi	$sp, $sp, 80
	lw	$ra, 76($sp)
	move	$a0, $v0
	lw	$a1, 8($sp)
	lw	$a2, 0($a1)
	li	$a3, 3
	mtc1	$f0, $zero
	sw	$a0, 72($sp)
	sw	$a2, 76($sp)
	fsw	$f0, 80($sp)
	sw	$a3, 88($sp)
	move	$a0, $a3
	sw	$ra, 92($sp)
	addi	$sp, $sp, 96
	jal	min_caml_create_float_array
	subi	$sp, $sp, 96
	lw	$ra, 92($sp)
	move	$a0, $v0
	flw	$f0, 80($sp)
	lw	$a1, 88($sp)
	sw	$a0, 92($sp)
	move	$a0, $a1
	sw	$ra, 100($sp)
	addi	$sp, $sp, 104
	jal	min_caml_create_float_array
	subi	$sp, $sp, 104
	lw	$ra, 100($sp)
	move	$a1, $v0
	li	$a0, 5
	sw	$a0, 96($sp)
	sw	$ra, 100($sp)
	addi	$sp, $sp, 104
	jal	min_caml_create_array
	subi	$sp, $sp, 104
	lw	$ra, 100($sp)
	move	$a0, $v0
	li	$a1, 1
	flw	$f0, 80($sp)
	lw	$a2, 88($sp)
	sw	$a1, 100($sp)
	sw	$a0, 104($sp)
	move	$a0, $a2
	sw	$ra, 108($sp)
	addi	$sp, $sp, 112
	jal	min_caml_create_float_array
	subi	$sp, $sp, 112
	lw	$ra, 108($sp)
	move	$a0, $v0
	lw	$a1, 104($sp)
	sw	$a0, 4($a1)
	flw	$f0, 80($sp)
	lw	$a0, 88($sp)
	sw	$ra, 108($sp)
	addi	$sp, $sp, 112
	jal	min_caml_create_float_array
	subi	$sp, $sp, 112
	lw	$ra, 108($sp)
	move	$a0, $v0
	lw	$a1, 104($sp)
	sw	$a0, 8($a1)
	flw	$f0, 80($sp)
	lw	$a0, 88($sp)
	sw	$ra, 108($sp)
	addi	$sp, $sp, 112
	jal	min_caml_create_float_array
	subi	$sp, $sp, 112
	lw	$ra, 108($sp)
	move	$a0, $v0
	lw	$a1, 104($sp)
	sw	$a0, 12($a1)
	flw	$f0, 80($sp)
	lw	$a0, 88($sp)
	sw	$ra, 108($sp)
	addi	$sp, $sp, 112
	jal	min_caml_create_float_array
	subi	$sp, $sp, 112
	lw	$ra, 108($sp)
	move	$a0, $v0
	lw	$a1, 104($sp)
	sw	$a0, 16($a1)
	li	$a0, 0
	lw	$a2, 96($sp)
	sw	$a0, 108($sp)
	move	$a1, $a0
	move	$a0, $a2
	sw	$ra, 116($sp)
	addi	$sp, $sp, 120
	jal	min_caml_create_array
	subi	$sp, $sp, 120
	lw	$ra, 116($sp)
	move	$a0, $v0
	lw	$a1, 96($sp)
	lw	$a2, 108($sp)
	sw	$a0, 112($sp)
	move	$a0, $a1
	move	$a1, $a2
	sw	$ra, 116($sp)
	addi	$sp, $sp, 120
	jal	min_caml_create_array
	subi	$sp, $sp, 120
	lw	$ra, 116($sp)
	move	$a0, $v0
	flw	$f0, 80($sp)
	lw	$a1, 88($sp)
	sw	$a0, 116($sp)
	move	$a0, $a1
	sw	$ra, 124($sp)
	addi	$sp, $sp, 128
	jal	min_caml_create_float_array
	subi	$sp, $sp, 128
	lw	$ra, 124($sp)
	move	$a1, $v0
	lw	$a0, 96($sp)
	sw	$ra, 124($sp)
	addi	$sp, $sp, 128
	jal	min_caml_create_array
	subi	$sp, $sp, 128
	lw	$ra, 124($sp)
	move	$a0, $v0
	flw	$f0, 80($sp)
	lw	$a1, 88($sp)
	sw	$a0, 120($sp)
	move	$a0, $a1
	sw	$ra, 124($sp)
	addi	$sp, $sp, 128
	jal	min_caml_create_float_array
	subi	$sp, $sp, 128
	lw	$ra, 124($sp)
	move	$a0, $v0
	lw	$a1, 120($sp)
	sw	$a0, 4($a1)
	flw	$f0, 80($sp)
	lw	$a0, 88($sp)
	sw	$ra, 124($sp)
	addi	$sp, $sp, 128
	jal	min_caml_create_float_array
	subi	$sp, $sp, 128
	lw	$ra, 124($sp)
	move	$a0, $v0
	lw	$a1, 120($sp)
	sw	$a0, 8($a1)
	flw	$f0, 80($sp)
	lw	$a0, 88($sp)
	sw	$ra, 124($sp)
	addi	$sp, $sp, 128
	jal	min_caml_create_float_array
	subi	$sp, $sp, 128
	lw	$ra, 124($sp)
	move	$a0, $v0
	lw	$a1, 120($sp)
	sw	$a0, 12($a1)
	flw	$f0, 80($sp)
	lw	$a0, 88($sp)
	sw	$ra, 124($sp)
	addi	$sp, $sp, 128
	jal	min_caml_create_float_array
	subi	$sp, $sp, 128
	lw	$ra, 124($sp)
	move	$a0, $v0
	lw	$a1, 120($sp)
	sw	$a0, 16($a1)
	flw	$f0, 80($sp)
	lw	$a0, 88($sp)
	sw	$ra, 124($sp)
	addi	$sp, $sp, 128
	jal	min_caml_create_float_array
	subi	$sp, $sp, 128
	lw	$ra, 124($sp)
	move	$a1, $v0
	lw	$a0, 96($sp)
	sw	$ra, 124($sp)
	addi	$sp, $sp, 128
	jal	min_caml_create_array
	subi	$sp, $sp, 128
	lw	$ra, 124($sp)
	move	$a0, $v0
	flw	$f0, 80($sp)
	lw	$a1, 88($sp)
	sw	$a0, 124($sp)
	move	$a0, $a1
	sw	$ra, 132($sp)
	addi	$sp, $sp, 136
	jal	min_caml_create_float_array
	subi	$sp, $sp, 136
	lw	$ra, 132($sp)
	move	$a0, $v0
	lw	$a1, 124($sp)
	sw	$a0, 4($a1)
	flw	$f0, 80($sp)
	lw	$a0, 88($sp)
	sw	$ra, 132($sp)
	addi	$sp, $sp, 136
	jal	min_caml_create_float_array
	subi	$sp, $sp, 136
	lw	$ra, 132($sp)
	move	$a0, $v0
	lw	$a1, 124($sp)
	sw	$a0, 8($a1)
	flw	$f0, 80($sp)
	lw	$a0, 88($sp)
	sw	$ra, 132($sp)
	addi	$sp, $sp, 136
	jal	min_caml_create_float_array
	subi	$sp, $sp, 136
	lw	$ra, 132($sp)
	move	$a0, $v0
	lw	$a1, 124($sp)
	sw	$a0, 12($a1)
	flw	$f0, 80($sp)
	lw	$a0, 88($sp)
	sw	$ra, 132($sp)
	addi	$sp, $sp, 136
	jal	min_caml_create_float_array
	subi	$sp, $sp, 136
	lw	$ra, 132($sp)
	move	$a0, $v0
	lw	$a1, 124($sp)
	sw	$a0, 16($a1)
	lw	$a0, 100($sp)
	lw	$a2, 108($sp)
	move	$a1, $a2
	sw	$ra, 132($sp)
	addi	$sp, $sp, 136
	jal	min_caml_create_array
	subi	$sp, $sp, 136
	lw	$ra, 132($sp)
	move	$a0, $v0
	flw	$f0, 80($sp)
	lw	$a1, 88($sp)
	sw	$a0, 128($sp)
	move	$a0, $a1
	sw	$ra, 132($sp)
	addi	$sp, $sp, 136
	jal	min_caml_create_float_array
	subi	$sp, $sp, 136
	lw	$ra, 132($sp)
	move	$a1, $v0
	lw	$a0, 96($sp)
	sw	$ra, 132($sp)
	addi	$sp, $sp, 136
	jal	min_caml_create_array
	subi	$sp, $sp, 136
	lw	$ra, 132($sp)
	move	$a0, $v0
	flw	$f0, 80($sp)
	lw	$a1, 88($sp)
	sw	$a0, 132($sp)
	move	$a0, $a1
	sw	$ra, 140($sp)
	addi	$sp, $sp, 144
	jal	min_caml_create_float_array
	subi	$sp, $sp, 144
	lw	$ra, 140($sp)
	move	$a0, $v0
	lw	$a1, 132($sp)
	sw	$a0, 4($a1)
	flw	$f0, 80($sp)
	lw	$a0, 88($sp)
	sw	$ra, 140($sp)
	addi	$sp, $sp, 144
	jal	min_caml_create_float_array
	subi	$sp, $sp, 144
	lw	$ra, 140($sp)
	move	$a0, $v0
	lw	$a1, 132($sp)
	sw	$a0, 8($a1)
	flw	$f0, 80($sp)
	lw	$a0, 88($sp)
	sw	$ra, 140($sp)
	addi	$sp, $sp, 144
	jal	min_caml_create_float_array
	subi	$sp, $sp, 144
	lw	$ra, 140($sp)
	move	$a0, $v0
	lw	$a1, 132($sp)
	sw	$a0, 12($a1)
	flw	$f0, 80($sp)
	lw	$a0, 88($sp)
	sw	$ra, 140($sp)
	addi	$sp, $sp, 144
	jal	min_caml_create_float_array
	subi	$sp, $sp, 144
	lw	$ra, 140($sp)
	move	$a0, $v0
	lw	$a1, 132($sp)
	sw	$a0, 16($a1)
	move	$a0, $fp
	addi	$fp, $fp, 32
	sw	$a1, 28($a0)
	lw	$a1, 128($sp)
	sw	$a1, 24($a0)
	lw	$a1, 124($sp)
	sw	$a1, 20($a0)
	lw	$a1, 120($sp)
	sw	$a1, 16($a0)
	lw	$a1, 116($sp)
	sw	$a1, 12($a0)
	lw	$a1, 112($sp)
	sw	$a1, 8($a0)
	lw	$a1, 104($sp)
	sw	$a1, 4($a0)
	lw	$a1, 92($sp)
	sw	$a1, 0($a0)
	move	$a1, $a0
	lw	$a0, 76($sp)
	sw	$ra, 140($sp)
	addi	$sp, $sp, 144
	jal	min_caml_create_array
	subi	$sp, $sp, 144
	lw	$ra, 140($sp)
	move	$a0, $v0
	lw	$a1, 8($sp)
	lw	$a2, 0($a1)
	subi	$a2, $a2, 2
	move	$a1, $a2
	sw	$ra, 140($sp)
	addi	$sp, $sp, 144
	jal	init_line_elements.3056
	subi	$sp, $sp, 144
	lw	$ra, 140($sp)
	move	$a0, $v0
	lw	$a1, 8($sp)
	lw	$a2, 0($a1)
	li	$a3, 3
	mtc1	$f0, $zero
	sw	$a0, 136($sp)
	sw	$a2, 140($sp)
	fsw	$f0, 144($sp)
	sw	$a3, 152($sp)
	move	$a0, $a3
	sw	$ra, 156($sp)
	addi	$sp, $sp, 160
	jal	min_caml_create_float_array
	subi	$sp, $sp, 160
	lw	$ra, 156($sp)
	move	$a0, $v0
	flw	$f0, 144($sp)
	lw	$a1, 152($sp)
	sw	$a0, 156($sp)
	move	$a0, $a1
	sw	$ra, 164($sp)
	addi	$sp, $sp, 168
	jal	min_caml_create_float_array
	subi	$sp, $sp, 168
	lw	$ra, 164($sp)
	move	$a1, $v0
	li	$a0, 5
	sw	$a0, 160($sp)
	sw	$ra, 164($sp)
	addi	$sp, $sp, 168
	jal	min_caml_create_array
	subi	$sp, $sp, 168
	lw	$ra, 164($sp)
	move	$a0, $v0
	li	$a1, 1
	flw	$f0, 144($sp)
	lw	$a2, 152($sp)
	sw	$a1, 164($sp)
	sw	$a0, 168($sp)
	move	$a0, $a2
	sw	$ra, 172($sp)
	addi	$sp, $sp, 176
	jal	min_caml_create_float_array
	subi	$sp, $sp, 176
	lw	$ra, 172($sp)
	move	$a0, $v0
	lw	$a1, 168($sp)
	sw	$a0, 4($a1)
	flw	$f0, 144($sp)
	lw	$a0, 152($sp)
	sw	$ra, 172($sp)
	addi	$sp, $sp, 176
	jal	min_caml_create_float_array
	subi	$sp, $sp, 176
	lw	$ra, 172($sp)
	move	$a0, $v0
	lw	$a1, 168($sp)
	sw	$a0, 8($a1)
	flw	$f0, 144($sp)
	lw	$a0, 152($sp)
	sw	$ra, 172($sp)
	addi	$sp, $sp, 176
	jal	min_caml_create_float_array
	subi	$sp, $sp, 176
	lw	$ra, 172($sp)
	move	$a0, $v0
	lw	$a1, 168($sp)
	sw	$a0, 12($a1)
	flw	$f0, 144($sp)
	lw	$a0, 152($sp)
	sw	$ra, 172($sp)
	addi	$sp, $sp, 176
	jal	min_caml_create_float_array
	subi	$sp, $sp, 176
	lw	$ra, 172($sp)
	move	$a0, $v0
	lw	$a1, 168($sp)
	sw	$a0, 16($a1)
	li	$a0, 0
	lw	$a2, 160($sp)
	sw	$a0, 172($sp)
	move	$a1, $a0
	move	$a0, $a2
	sw	$ra, 180($sp)
	addi	$sp, $sp, 184
	jal	min_caml_create_array
	subi	$sp, $sp, 184
	lw	$ra, 180($sp)
	move	$a0, $v0
	lw	$a1, 160($sp)
	lw	$a2, 172($sp)
	sw	$a0, 176($sp)
	move	$a0, $a1
	move	$a1, $a2
	sw	$ra, 180($sp)
	addi	$sp, $sp, 184
	jal	min_caml_create_array
	subi	$sp, $sp, 184
	lw	$ra, 180($sp)
	move	$a0, $v0
	flw	$f0, 144($sp)
	lw	$a1, 152($sp)
	sw	$a0, 180($sp)
	move	$a0, $a1
	sw	$ra, 188($sp)
	addi	$sp, $sp, 192
	jal	min_caml_create_float_array
	subi	$sp, $sp, 192
	lw	$ra, 188($sp)
	move	$a1, $v0
	lw	$a0, 160($sp)
	sw	$ra, 188($sp)
	addi	$sp, $sp, 192
	jal	min_caml_create_array
	subi	$sp, $sp, 192
	lw	$ra, 188($sp)
	move	$a0, $v0
	flw	$f0, 144($sp)
	lw	$a1, 152($sp)
	sw	$a0, 184($sp)
	move	$a0, $a1
	sw	$ra, 188($sp)
	addi	$sp, $sp, 192
	jal	min_caml_create_float_array
	subi	$sp, $sp, 192
	lw	$ra, 188($sp)
	move	$a0, $v0
	lw	$a1, 184($sp)
	sw	$a0, 4($a1)
	flw	$f0, 144($sp)
	lw	$a0, 152($sp)
	sw	$ra, 188($sp)
	addi	$sp, $sp, 192
	jal	min_caml_create_float_array
	subi	$sp, $sp, 192
	lw	$ra, 188($sp)
	move	$a0, $v0
	lw	$a1, 184($sp)
	sw	$a0, 8($a1)
	flw	$f0, 144($sp)
	lw	$a0, 152($sp)
	sw	$ra, 188($sp)
	addi	$sp, $sp, 192
	jal	min_caml_create_float_array
	subi	$sp, $sp, 192
	lw	$ra, 188($sp)
	move	$a0, $v0
	lw	$a1, 184($sp)
	sw	$a0, 12($a1)
	flw	$f0, 144($sp)
	lw	$a0, 152($sp)
	sw	$ra, 188($sp)
	addi	$sp, $sp, 192
	jal	min_caml_create_float_array
	subi	$sp, $sp, 192
	lw	$ra, 188($sp)
	move	$a0, $v0
	lw	$a1, 184($sp)
	sw	$a0, 16($a1)
	flw	$f0, 144($sp)
	lw	$a0, 152($sp)
	sw	$ra, 188($sp)
	addi	$sp, $sp, 192
	jal	min_caml_create_float_array
	subi	$sp, $sp, 192
	lw	$ra, 188($sp)
	move	$a1, $v0
	lw	$a0, 160($sp)
	sw	$ra, 188($sp)
	addi	$sp, $sp, 192
	jal	min_caml_create_array
	subi	$sp, $sp, 192
	lw	$ra, 188($sp)
	move	$a0, $v0
	flw	$f0, 144($sp)
	lw	$a1, 152($sp)
	sw	$a0, 188($sp)
	move	$a0, $a1
	sw	$ra, 196($sp)
	addi	$sp, $sp, 200
	jal	min_caml_create_float_array
	subi	$sp, $sp, 200
	lw	$ra, 196($sp)
	move	$a0, $v0
	lw	$a1, 188($sp)
	sw	$a0, 4($a1)
	flw	$f0, 144($sp)
	lw	$a0, 152($sp)
	sw	$ra, 196($sp)
	addi	$sp, $sp, 200
	jal	min_caml_create_float_array
	subi	$sp, $sp, 200
	lw	$ra, 196($sp)
	move	$a0, $v0
	lw	$a1, 188($sp)
	sw	$a0, 8($a1)
	flw	$f0, 144($sp)
	lw	$a0, 152($sp)
	sw	$ra, 196($sp)
	addi	$sp, $sp, 200
	jal	min_caml_create_float_array
	subi	$sp, $sp, 200
	lw	$ra, 196($sp)
	move	$a0, $v0
	lw	$a1, 188($sp)
	sw	$a0, 12($a1)
	flw	$f0, 144($sp)
	lw	$a0, 152($sp)
	sw	$ra, 196($sp)
	addi	$sp, $sp, 200
	jal	min_caml_create_float_array
	subi	$sp, $sp, 200
	lw	$ra, 196($sp)
	move	$a0, $v0
	lw	$a1, 188($sp)
	sw	$a0, 16($a1)
	lw	$a0, 164($sp)
	lw	$a2, 172($sp)
	move	$a1, $a2
	sw	$ra, 196($sp)
	addi	$sp, $sp, 200
	jal	min_caml_create_array
	subi	$sp, $sp, 200
	lw	$ra, 196($sp)
	move	$a0, $v0
	flw	$f0, 144($sp)
	lw	$a1, 152($sp)
	sw	$a0, 192($sp)
	move	$a0, $a1
	sw	$ra, 196($sp)
	addi	$sp, $sp, 200
	jal	min_caml_create_float_array
	subi	$sp, $sp, 200
	lw	$ra, 196($sp)
	move	$a1, $v0
	lw	$a0, 160($sp)
	sw	$ra, 196($sp)
	addi	$sp, $sp, 200
	jal	min_caml_create_array
	subi	$sp, $sp, 200
	lw	$ra, 196($sp)
	move	$a0, $v0
	flw	$f0, 144($sp)
	lw	$a1, 152($sp)
	sw	$a0, 196($sp)
	move	$a0, $a1
	sw	$ra, 204($sp)
	addi	$sp, $sp, 208
	jal	min_caml_create_float_array
	subi	$sp, $sp, 208
	lw	$ra, 204($sp)
	move	$a0, $v0
	lw	$a1, 196($sp)
	sw	$a0, 4($a1)
	flw	$f0, 144($sp)
	lw	$a0, 152($sp)
	sw	$ra, 204($sp)
	addi	$sp, $sp, 208
	jal	min_caml_create_float_array
	subi	$sp, $sp, 208
	lw	$ra, 204($sp)
	move	$a0, $v0
	lw	$a1, 196($sp)
	sw	$a0, 8($a1)
	flw	$f0, 144($sp)
	lw	$a0, 152($sp)
	sw	$ra, 204($sp)
	addi	$sp, $sp, 208
	jal	min_caml_create_float_array
	subi	$sp, $sp, 208
	lw	$ra, 204($sp)
	move	$a0, $v0
	lw	$a1, 196($sp)
	sw	$a0, 12($a1)
	flw	$f0, 144($sp)
	lw	$a0, 152($sp)
	sw	$ra, 204($sp)
	addi	$sp, $sp, 208
	jal	min_caml_create_float_array
	subi	$sp, $sp, 208
	lw	$ra, 204($sp)
	move	$a0, $v0
	lw	$a1, 196($sp)
	sw	$a0, 16($a1)
	move	$a0, $fp
	addi	$fp, $fp, 32
	sw	$a1, 28($a0)
	lw	$a1, 192($sp)
	sw	$a1, 24($a0)
	lw	$a1, 188($sp)
	sw	$a1, 20($a0)
	lw	$a1, 184($sp)
	sw	$a1, 16($a0)
	lw	$a1, 180($sp)
	sw	$a1, 12($a0)
	lw	$a1, 176($sp)
	sw	$a1, 8($a0)
	lw	$a1, 168($sp)
	sw	$a1, 4($a0)
	lw	$a1, 156($sp)
	sw	$a1, 0($a0)
	move	$a1, $a0
	lw	$a0, 140($sp)
	sw	$ra, 204($sp)
	addi	$sp, $sp, 208
	jal	min_caml_create_array
	subi	$sp, $sp, 208
	lw	$ra, 204($sp)
	move	$a0, $v0
	lw	$a1, 8($sp)
	lw	$a1, 0($a1)
	subi	$a1, $a1, 2
	sw	$ra, 204($sp)
	addi	$sp, $sp, 208
	jal	init_line_elements.3056
	subi	$sp, $sp, 208
	lw	$ra, 204($sp)
	move	$a0, $v0
	li	$a1, 288
	sw	$a0, 200($sp)
	sw	$a1, 204($sp)
	sw	$ra, 212($sp)
	addi	$sp, $sp, 216
	jal	min_caml_read_float
	subi	$sp, $sp, 216
	lw	$ra, 212($sp)
	fmove	$f0, $fv
	lw	$a0, 204($sp)
	fsw	$f0, 0($a0)
	sw	$ra, 212($sp)
	addi	$sp, $sp, 216
	jal	min_caml_read_float
	subi	$sp, $sp, 216
	lw	$ra, 212($sp)
	fmove	$f0, $fv
	lw	$a0, 204($sp)
	fsw	$f0, 4($a0)
	sw	$ra, 212($sp)
	addi	$sp, $sp, 216
	jal	min_caml_read_float
	subi	$sp, $sp, 216
	lw	$ra, 212($sp)
	fmove	$f0, $fv
	lw	$a0, 204($sp)
	fsw	$f0, 8($a0)
	sw	$ra, 212($sp)
	addi	$sp, $sp, 216
	jal	min_caml_read_float
	subi	$sp, $sp, 216
	lw	$ra, 212($sp)
	fmove	$f0, $fv
	li	$v0, 15502
	sll	$v0, $v0, 16
	ori	$v0, $v0, 64053
	mtc1	$f1, $v0
	fmul	$f0, $f0, $f1
	fsw	$f1, 208($sp)
	fsw	$f0, 216($sp)
	sw	$ra, 228($sp)
	addi	$sp, $sp, 232
	jal	min_caml_cos
	subi	$sp, $sp, 232
	lw	$ra, 228($sp)
	fmove	$f0, $fv
	flw	$f1, 216($sp)
	fsw	$f0, 224($sp)
	fmove	$f0, $f1
	sw	$ra, 236($sp)
	addi	$sp, $sp, 240
	jal	min_caml_sin
	subi	$sp, $sp, 240
	lw	$ra, 236($sp)
	fmove	$f0, $fv
	fsw	$f0, 232($sp)
	sw	$ra, 244($sp)
	addi	$sp, $sp, 248
	jal	min_caml_read_float
	subi	$sp, $sp, 248
	lw	$ra, 244($sp)
	fmove	$f0, $fv
	flw	$f1, 208($sp)
	fmul	$f0, $f0, $f1
	fsw	$f0, 240($sp)
	sw	$ra, 252($sp)
	addi	$sp, $sp, 256
	jal	min_caml_cos
	subi	$sp, $sp, 256
	lw	$ra, 252($sp)
	fmove	$f0, $fv
	flw	$f1, 240($sp)
	fsw	$f0, 248($sp)
	fmove	$f0, $f1
	sw	$ra, 260($sp)
	addi	$sp, $sp, 264
	jal	min_caml_sin
	subi	$sp, $sp, 264
	lw	$ra, 260($sp)
	fmove	$f0, $fv
	li	$a0, 684
	li	$a1, 0
	flw	$f1, 224($sp)
	fmul	$f2, $f1, $f0
	li	$v0, 17224
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f3, $v0
	fmul	$f2, $f2, $f3
	fsw	$f2, 0($a0)
	li	$v0, -15544
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	flw	$f4, 232($sp)
	fmul	$f2, $f4, $f2
	fsw	$f2, 4($a0)
	flw	$f2, 248($sp)
	fmul	$f5, $f1, $f2
	fmul	$f3, $f5, $f3
	fsw	$f3, 8($a0)
	li	$a2, 660
	fsw	$f2, 0($a2)
	mtc1	$f3, $zero
	fsw	$f3, 4($a2)
	fneg	$f3, $f0
	fsw	$f3, 8($a2)
	li	$a2, 672
	fneg	$f3, $f4
	fmul	$f0, $f3, $f0
	fsw	$f0, 0($a2)
	fneg	$f0, $f1
	fsw	$f0, 4($a2)
	fneg	$f0, $f4
	fmul	$f0, $f0, $f2
	fsw	$f0, 8($a2)
	li	$a2, 300
	lw	$a3, 204($sp)
	flw	$f0, 0($a3)
	flw	$f1, 0($a0)
	fsub	$f0, $f0, $f1
	fsw	$f0, 0($a2)
	flw	$f0, 4($a3)
	flw	$f1, 4($a0)
	fsub	$f0, $f0, $f1
	fsw	$f0, 4($a2)
	flw	$f0, 8($a3)
	flw	$f1, 8($a0)
	fsub	$f0, $f0, $f1
	fsw	$f0, 8($a2)
	sw	$a1, 256($sp)
	sw	$ra, 260($sp)
	addi	$sp, $sp, 264
	jal	min_caml_read_int
	subi	$sp, $sp, 264
	lw	$ra, 260($sp)
	move	$a0, $v0
	sw	$ra, 260($sp)
	addi	$sp, $sp, 264
	jal	min_caml_read_float
	subi	$sp, $sp, 264
	lw	$ra, 260($sp)
	fmove	$f0, $fv
	flw	$f1, 208($sp)
	fmul	$f0, $f0, $f1
	fsw	$f0, 264($sp)
	sw	$ra, 276($sp)
	addi	$sp, $sp, 280
	jal	min_caml_sin
	subi	$sp, $sp, 280
	lw	$ra, 276($sp)
	fmove	$f0, $fv
	li	$a0, 312
	fneg	$f0, $f0
	fsw	$f0, 4($a0)
	sw	$a0, 272($sp)
	sw	$ra, 276($sp)
	addi	$sp, $sp, 280
	jal	min_caml_read_float
	subi	$sp, $sp, 280
	lw	$ra, 276($sp)
	fmove	$f0, $fv
	flw	$f1, 208($sp)
	fmul	$f0, $f0, $f1
	flw	$f1, 264($sp)
	fsw	$f0, 280($sp)
	fmove	$f0, $f1
	sw	$ra, 292($sp)
	addi	$sp, $sp, 296
	jal	min_caml_cos
	subi	$sp, $sp, 296
	lw	$ra, 292($sp)
	fmove	$f0, $fv
	flw	$f1, 280($sp)
	fsw	$f0, 288($sp)
	fmove	$f0, $f1
	sw	$ra, 300($sp)
	addi	$sp, $sp, 304
	jal	min_caml_sin
	subi	$sp, $sp, 304
	lw	$ra, 300($sp)
	fmove	$f0, $fv
	flw	$f1, 288($sp)
	fmul	$f0, $f1, $f0
	lw	$a0, 272($sp)
	fsw	$f0, 0($a0)
	flw	$f0, 280($sp)
	sw	$ra, 300($sp)
	addi	$sp, $sp, 304
	jal	min_caml_cos
	subi	$sp, $sp, 304
	lw	$ra, 300($sp)
	fmove	$f0, $fv
	flw	$f1, 288($sp)
	fmul	$f0, $f1, $f0
	lw	$a0, 272($sp)
	fsw	$f0, 8($a0)
	li	$a0, 324
	sw	$a0, 296($sp)
	sw	$ra, 300($sp)
	addi	$sp, $sp, 304
	jal	min_caml_read_float
	subi	$sp, $sp, 304
	lw	$ra, 300($sp)
	fmove	$f0, $fv
	lw	$a0, 296($sp)
	fsw	$f0, 0($a0)
	lw	$a0, 256($sp)
	sw	$ra, 300($sp)
	addi	$sp, $sp, 304
	jal	read_object.2767
	subi	$sp, $sp, 304
	lw	$ra, 300($sp)
	fmove	$f30, $fv
	li	$a0, 0
	sw	$ra, 300($sp)
	addi	$sp, $sp, 304
	jal	read_and_network.2775
	subi	$sp, $sp, 304
	lw	$ra, 300($sp)
	fmove	$f30, $fv
	li	$a0, 536
	li	$a1, 0
	sw	$a0, 300($sp)
	move	$a0, $a1
	sw	$ra, 308($sp)
	addi	$sp, $sp, 312
	jal	read_or_network.2773
	subi	$sp, $sp, 312
	lw	$ra, 308($sp)
	move	$a0, $v0
	lw	$a1, 300($sp)
	sw	$a0, 0($a1)
	sw	$ra, 308($sp)
	addi	$sp, $sp, 312
	jal	write_ppm_header.3020
	subi	$sp, $sp, 312
	lw	$ra, 308($sp)
	fmove	$f30, $fv
	li	$a0, 4
	sw	$ra, 308($sp)
	addi	$sp, $sp, 312
	jal	create_dirvecs.3088
	subi	$sp, $sp, 312
	lw	$ra, 308($sp)
	fmove	$f30, $fv
	li	$a0, 9
	li	$a1, 0
	move	$a2, $a1
	sw	$ra, 308($sp)
	addi	$sp, $sp, 312
	jal	calc_dirvec_rows.3079
	subi	$sp, $sp, 312
	lw	$ra, 308($sp)
	fmove	$f30, $fv
	li	$a0, 4
	sw	$ra, 308($sp)
	addi	$sp, $sp, 312
	jal	init_vecset_constants.3093
	subi	$sp, $sp, 312
	lw	$ra, 308($sp)
	fmove	$f30, $fv
	li	$a0, 988
	lw	$a1, 0($a0)
	li	$a2, 312
	flw	$f0, 0($a2)
	fsw	$f0, 0($a1)
	flw	$f0, 4($a2)
	fsw	$f0, 4($a1)
	flw	$f0, 8($a2)
	fsw	$f0, 8($a1)
	li	$a1, 0
	lw	$a1, 0($a1)
	subi	$a1, $a1, 1
	sw	$ra, 308($sp)
	addi	$sp, $sp, 312
	jal	iter_setup_dirvec_constants.2872
	subi	$sp, $sp, 312
	lw	$ra, 308($sp)
	fmove	$f30, $fv
	li	$a0, 0
	li	$a1, 0
	lw	$a0, 0($a0)
	subi	$a0, $a0, 1
	sw	$a1, 304($sp)
	blt	$a0, $a1, bge_else.21232
	li	$a2, 48
	sll	$a3, $a0, 2
	add	$a3, $a2, $a3
	lw	$a2, 0($a3)
	lw	$a3, 8($a2)
	li	$a4, 2
	bne	$a3, $a4, bne_else.21234
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f0, $v0
	lw	$a3, 28($a2)
	flw	$f1, 0($a3)
	fblt	$f1, $f0, fbge_else.21236
	j	fbge_cont.21237
fbge_else.21236:
	lw	$a3, 4($a2)
	li	$a4, 1
	bne	$a3, $a4, bne_else.21238
	sla	$a0, $a0, 2
	li	$a3, 1736
	lw	$a3, 0($a3)
	lw	$a2, 28($a2)
	flw	$f0, 0($a2)
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	fsub	$f0, $f1, $f0
	li	$a2, 312
	flw	$f1, 0($a2)
	fneg	$f1, $f1
	li	$a2, 312
	flw	$f2, 4($a2)
	fneg	$f2, $f2
	li	$a2, 312
	flw	$f3, 8($a2)
	fneg	$f3, $f3
	addi	$a2, $a0, 1
	li	$a4, 312
	flw	$f4, 0($a4)
	li	$a4, 3
	mtc1	$f5, $zero
	fsw	$f1, 312($sp)
	sw	$a0, 320($sp)
	sw	$a3, 324($sp)
	sw	$a2, 328($sp)
	fsw	$f0, 336($sp)
	fsw	$f3, 344($sp)
	fsw	$f2, 352($sp)
	fsw	$f4, 360($sp)
	move	$a0, $a4
	fmove	$f0, $f5
	sw	$ra, 372($sp)
	addi	$sp, $sp, 376
	jal	min_caml_create_float_array
	subi	$sp, $sp, 376
	lw	$ra, 372($sp)
	move	$a1, $v0
	li	$a0, 0
	lw	$a2, 0($a0)
	sw	$a0, 368($sp)
	sw	$a1, 372($sp)
	move	$a0, $a2
	sw	$ra, 380($sp)
	addi	$sp, $sp, 384
	jal	min_caml_create_array
	subi	$sp, $sp, 384
	lw	$ra, 380($sp)
	move	$a0, $v0
	move	$a1, $fp
	addi	$fp, $fp, 8
	sw	$a0, 4($a1)
	lw	$a0, 372($sp)
	sw	$a0, 0($a1)
	flw	$f0, 360($sp)
	fsw	$f0, 0($a0)
	flw	$f0, 352($sp)
	fsw	$f0, 4($a0)
	flw	$f1, 344($sp)
	fsw	$f1, 8($a0)
	lw	$a0, 368($sp)
	lw	$a0, 0($a0)
	subi	$a0, $a0, 1
	sw	$a1, 376($sp)
	move	$a25, $a1
	move	$a1, $a0
	move	$a0, $a25
	sw	$ra, 380($sp)
	addi	$sp, $sp, 384
	jal	iter_setup_dirvec_constants.2872
	subi	$sp, $sp, 384
	lw	$ra, 380($sp)
	fmove	$f30, $fv
	li	$a0, 1016
	move	$a1, $fp
	addi	$fp, $fp, 16
	flw	$f0, 336($sp)
	fsw	$f0, 8($a1)
	lw	$a2, 376($sp)
	sw	$a2, 4($a1)
	lw	$a2, 328($sp)
	sw	$a2, 0($a1)
	lw	$a2, 324($sp)
	sll	$a3, $a2, 2
	add	$a3, $a0, $a3
	sw	$a1, 0($a3)
	addi	$a0, $a2, 1
	lw	$a1, 320($sp)
	addi	$a3, $a1, 2
	li	$a4, 312
	flw	$f1, 4($a4)
	li	$a4, 3
	mtc1	$f2, $zero
	sw	$a0, 380($sp)
	sw	$a3, 384($sp)
	fsw	$f1, 392($sp)
	move	$a0, $a4
	fmove	$f0, $f2
	sw	$ra, 404($sp)
	addi	$sp, $sp, 408
	jal	min_caml_create_float_array
	subi	$sp, $sp, 408
	lw	$ra, 404($sp)
	move	$a1, $v0
	li	$a0, 0
	lw	$a2, 0($a0)
	sw	$a0, 400($sp)
	sw	$a1, 404($sp)
	move	$a0, $a2
	sw	$ra, 412($sp)
	addi	$sp, $sp, 416
	jal	min_caml_create_array
	subi	$sp, $sp, 416
	lw	$ra, 412($sp)
	move	$a0, $v0
	move	$a1, $fp
	addi	$fp, $fp, 8
	sw	$a0, 4($a1)
	lw	$a0, 404($sp)
	sw	$a0, 0($a1)
	flw	$f0, 312($sp)
	fsw	$f0, 0($a0)
	flw	$f1, 392($sp)
	fsw	$f1, 4($a0)
	flw	$f1, 344($sp)
	fsw	$f1, 8($a0)
	lw	$a0, 400($sp)
	lw	$a0, 0($a0)
	subi	$a0, $a0, 1
	sw	$a1, 408($sp)
	move	$a25, $a1
	move	$a1, $a0
	move	$a0, $a25
	sw	$ra, 412($sp)
	addi	$sp, $sp, 416
	jal	iter_setup_dirvec_constants.2872
	subi	$sp, $sp, 416
	lw	$ra, 412($sp)
	fmove	$f30, $fv
	li	$a0, 1016
	move	$a1, $fp
	addi	$fp, $fp, 16
	flw	$f0, 336($sp)
	fsw	$f0, 8($a1)
	lw	$a2, 408($sp)
	sw	$a2, 4($a1)
	lw	$a2, 384($sp)
	sw	$a2, 0($a1)
	lw	$a2, 380($sp)
	sll	$a2, $a2, 2
	add	$a2, $a0, $a2
	sw	$a1, 0($a2)
	lw	$a0, 324($sp)
	addi	$a1, $a0, 2
	lw	$a2, 320($sp)
	addi	$a2, $a2, 3
	li	$a3, 312
	flw	$f1, 8($a3)
	li	$a3, 3
	mtc1	$f2, $zero
	sw	$a1, 412($sp)
	sw	$a2, 416($sp)
	fsw	$f1, 424($sp)
	move	$a0, $a3
	fmove	$f0, $f2
	sw	$ra, 436($sp)
	addi	$sp, $sp, 440
	jal	min_caml_create_float_array
	subi	$sp, $sp, 440
	lw	$ra, 436($sp)
	move	$a1, $v0
	li	$a0, 0
	lw	$a2, 0($a0)
	sw	$a0, 432($sp)
	sw	$a1, 436($sp)
	move	$a0, $a2
	sw	$ra, 444($sp)
	addi	$sp, $sp, 448
	jal	min_caml_create_array
	subi	$sp, $sp, 448
	lw	$ra, 444($sp)
	move	$a0, $v0
	move	$a1, $fp
	addi	$fp, $fp, 8
	sw	$a0, 4($a1)
	lw	$a0, 436($sp)
	sw	$a0, 0($a1)
	flw	$f0, 312($sp)
	fsw	$f0, 0($a0)
	flw	$f0, 352($sp)
	fsw	$f0, 4($a0)
	flw	$f0, 424($sp)
	fsw	$f0, 8($a0)
	lw	$a0, 432($sp)
	lw	$a0, 0($a0)
	subi	$a0, $a0, 1
	sw	$a1, 440($sp)
	move	$a25, $a1
	move	$a1, $a0
	move	$a0, $a25
	sw	$ra, 444($sp)
	addi	$sp, $sp, 448
	jal	iter_setup_dirvec_constants.2872
	subi	$sp, $sp, 448
	lw	$ra, 444($sp)
	fmove	$f30, $fv
	li	$a0, 1016
	move	$a1, $fp
	addi	$fp, $fp, 16
	flw	$f0, 336($sp)
	fsw	$f0, 8($a1)
	lw	$a2, 440($sp)
	sw	$a2, 4($a1)
	lw	$a2, 416($sp)
	sw	$a2, 0($a1)
	lw	$a2, 412($sp)
	sll	$a2, $a2, 2
	add	$a2, $a0, $a2
	sw	$a1, 0($a2)
	li	$a0, 1736
	lw	$a1, 324($sp)
	addi	$a1, $a1, 3
	sw	$a1, 0($a0)
	j	bne_cont.21239
bne_else.21238:
	li	$a4, 2
	bne	$a3, $a4, bne_else.21244
	sla	$a0, $a0, 2
	addi	$a0, $a0, 1
	li	$a3, 1736
	lw	$a3, 0($a3)
	lw	$a4, 28($a2)
	flw	$f0, 0($a4)
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	fsub	$f0, $f1, $f0
	li	$a4, 312
	lw	$a5, 16($a2)
	flw	$f1, 0($a4)
	flw	$f2, 0($a5)
	fmul	$f1, $f1, $f2
	flw	$f2, 4($a4)
	flw	$f3, 4($a5)
	fmul	$f2, $f2, $f3
	fadd	$f1, $f1, $f2
	flw	$f2, 8($a4)
	flw	$f3, 8($a5)
	fmul	$f2, $f2, $f3
	fadd	$f1, $f1, $f2
	lw	$a4, 16($a2)
	flw	$f2, 0($a4)
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f3, $v0
	fmul	$f2, $f3, $f2
	fmul	$f2, $f2, $f1
	li	$a4, 312
	flw	$f3, 0($a4)
	fsub	$f2, $f2, $f3
	lw	$a4, 16($a2)
	flw	$f3, 4($a4)
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f4, $v0
	fmul	$f3, $f4, $f3
	fmul	$f3, $f3, $f1
	li	$a4, 312
	flw	$f4, 4($a4)
	fsub	$f3, $f3, $f4
	lw	$a2, 16($a2)
	flw	$f4, 8($a2)
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f5, $v0
	fmul	$f4, $f5, $f4
	fmul	$f1, $f4, $f1
	li	$a2, 312
	flw	$f4, 8($a2)
	fsub	$f1, $f1, $f4
	li	$a2, 3
	mtc1	$f4, $zero
	sw	$a3, 444($sp)
	sw	$a0, 448($sp)
	fsw	$f0, 456($sp)
	fsw	$f1, 464($sp)
	fsw	$f3, 472($sp)
	fsw	$f2, 480($sp)
	move	$a0, $a2
	fmove	$f0, $f4
	sw	$ra, 492($sp)
	addi	$sp, $sp, 496
	jal	min_caml_create_float_array
	subi	$sp, $sp, 496
	lw	$ra, 492($sp)
	move	$a1, $v0
	li	$a0, 0
	lw	$a2, 0($a0)
	sw	$a0, 488($sp)
	sw	$a1, 492($sp)
	move	$a0, $a2
	sw	$ra, 500($sp)
	addi	$sp, $sp, 504
	jal	min_caml_create_array
	subi	$sp, $sp, 504
	lw	$ra, 500($sp)
	move	$a0, $v0
	move	$a1, $fp
	addi	$fp, $fp, 8
	sw	$a0, 4($a1)
	lw	$a0, 492($sp)
	sw	$a0, 0($a1)
	flw	$f0, 480($sp)
	fsw	$f0, 0($a0)
	flw	$f0, 472($sp)
	fsw	$f0, 4($a0)
	flw	$f0, 464($sp)
	fsw	$f0, 8($a0)
	lw	$a0, 488($sp)
	lw	$a0, 0($a0)
	subi	$a0, $a0, 1
	sw	$a1, 496($sp)
	move	$a25, $a1
	move	$a1, $a0
	move	$a0, $a25
	sw	$ra, 500($sp)
	addi	$sp, $sp, 504
	jal	iter_setup_dirvec_constants.2872
	subi	$sp, $sp, 504
	lw	$ra, 500($sp)
	fmove	$f30, $fv
	li	$a0, 1016
	move	$a1, $fp
	addi	$fp, $fp, 16
	flw	$f0, 456($sp)
	fsw	$f0, 8($a1)
	lw	$a2, 496($sp)
	sw	$a2, 4($a1)
	lw	$a2, 448($sp)
	sw	$a2, 0($a1)
	lw	$a2, 444($sp)
	sll	$a3, $a2, 2
	add	$a3, $a0, $a3
	sw	$a1, 0($a3)
	li	$a0, 1736
	addi	$a1, $a2, 1
	sw	$a1, 0($a0)
	j	bne_cont.21245
bne_else.21244:
bne_cont.21245:
bne_cont.21239:
fbge_cont.21237:
	j	bne_cont.21235
bne_else.21234:
bne_cont.21235:
	j	bge_cont.21233
bge_else.21232:
bge_cont.21233:
	li	$a0, 632
	flw	$f0, 0($a0)
	li	$a0, 624
	lw	$a0, 4($a0)
	li	$a1, 0
	sub	$a0, $a1, $a0
	fsw	$f0, 504($sp)
	sw	$ra, 516($sp)
	addi	$sp, $sp, 520
	jal	min_caml_float_of_int
	subi	$sp, $sp, 520
	lw	$ra, 516($sp)
	fmove	$f0, $fv
	flw	$f1, 504($sp)
	fmul	$f0, $f1, $f0
	li	$a0, 672
	flw	$f1, 0($a0)
	fmul	$f1, $f0, $f1
	li	$a1, 684
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
	li	$a0, 616
	lw	$a0, 0($a0)
	subi	$a1, $a0, 1
	lw	$a0, 136($sp)
	lw	$a2, 304($sp)
	fmove	$f30, $f2
	fmove	$f2, $f0
	fmove	$f0, $f1
	fmove	$f1, $f30
	sw	$ra, 516($sp)
	addi	$sp, $sp, 520
	jal	pretrace_pixels.3029
	subi	$sp, $sp, 520
	lw	$ra, 516($sp)
	fmove	$f30, $fv
	li	$a4, 2
	lw	$a0, 304($sp)
	lw	$a1, 72($sp)
	lw	$a2, 136($sp)
	lw	$a3, 200($sp)
	sw	$ra, 516($sp)
	addi	$sp, $sp, 520
	jal	scan_line.3046
	subi	$sp, $sp, 520
	lw	$ra, 516($sp)
	fmove	$f30, $fv
	j exit   # main program end
