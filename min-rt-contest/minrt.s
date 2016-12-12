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
min_caml_read_int:
  read_int $v0
  jr  $ra
min_caml_read_float:
  read_float  $fv
  jr  $ra
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
countn.2754:
	blt	$a0, $a1, bge_else.27634
	sub	$a0, $a0, $a1
	addi	$a2, $a2, 1
	j	countn.2754
bge_else.27634:
	move	$v0, $a2
	jr	$ra
mymul.2758:
	li	$a3, 0
	bne	$a0, $a3, beq_else.27635
	move	$v0, $a2
	jr	$ra
beq_else.27635:
	subi	$a0, $a0, 1
	add	$a2, $a2, $a1
	j	mymul.2758
reduction_pi2.2772:
	flw	$f1, 8($a26)
	fblt	$f1, $f0, fbge_else.27636
	fmove	$fv, $f0
	jr $ra
fbge_else.27636:
	li	$v0, 16585
	sll	$v0, $v0, 16
	ori	$v0, $v0, 4059
	mtc1	$f1, $v0
	fsub	$f0, $f0, $f1
	lw	$a25, 0($a26)
	j	reduction_pi2.2772
sin.2781:
	lw	$a0, 12($a26)
	flw	$f1, 8($a26)
	fabs	$f2, $f0
	mtc1	$f3, $zero
	fblt	$f0, $f3, fbge_else.27637
	li	$a1, 1
	j	fbge_cont.27638
fbge_else.27637:
	li	$a1, -1
fbge_cont.27638:
	sw	$a1, 0($sp)
	fsw	$f1, 8($sp)
	move	$a26, $a0
	fmove	$f0, $f2
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	reduction_pi2.2772
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	fmove	$f0, $fv
	flw	$f1, 8($sp)
	fblt	$f0, $f1, fbge_else.27640
	li	$v0, 16457
	sll	$v0, $v0, 16
	ori	$v0, $v0, 4059
	mtc1	$f1, $v0
	fsub	$f0, $f0, $f1
	lw	$a0, 0($sp)
	neg	$a0, $a0
	li	$v0, 16329
	sll	$v0, $v0, 16
	ori	$v0, $v0, 4059
	mtc1	$f1, $v0
	fblt	$f0, $f1, fbge_else.27641
	li	$v0, 16457
	sll	$v0, $v0, 16
	ori	$v0, $v0, 4059
	mtc1	$f1, $v0
	fsub	$f0, $f1, $f0
	li	$v0, 16201
	sll	$v0, $v0, 16
	ori	$v0, $v0, 4059
	mtc1	$f1, $v0
	fblt	$f1, $f0, fbge_else.27642
	fmul	$f1, $f0, $f0
	fmul	$f1, $f1, $f0
	fmul	$f2, $f1, $f0
	fmul	$f2, $f2, $f0
	fmul	$f3, $f2, $f0
	fmul	$f3, $f3, $f0
	li	$v0, 15914
	sll	$v0, $v0, 16
	ori	$v0, $v0, 43692
	mtc1	$f4, $v0
	fmul	$f1, $f4, $f1
	fsub	$f0, $f0, $f1
	li	$v0, 15368
	sll	$v0, $v0, 16
	ori	$v0, $v0, 34406
	mtc1	$f1, $v0
	fmul	$f1, $f1, $f2
	fadd	$f0, $f0, $f1
	li	$v0, 14669
	sll	$v0, $v0, 16
	ori	$v0, $v0, 25782
	mtc1	$f1, $v0
	fmul	$f1, $f1, $f3
	fsub	$f0, $f0, $f1
	li	$a1, 1
	bne	$a0, $a1, beq_else.27643
	fmove	$fv, $f0
	jr $ra
beq_else.27643:
	li	$v0, -16512
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	fmul	$fv, $f0, $f1
	jr $ra
fbge_else.27642:
	li	$v0, 16329
	sll	$v0, $v0, 16
	ori	$v0, $v0, 4059
	mtc1	$f1, $v0
	fsub	$f0, $f1, $f0
	fmul	$f1, $f0, $f0
	fmul	$f2, $f1, $f0
	fmul	$f2, $f2, $f0
	fmul	$f3, $f2, $f0
	fmul	$f0, $f3, $f0
	li	$v0, 16128
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f3, $v0
	fmul	$f1, $f3, $f1
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f3, $v0
	fsub	$f1, $f3, $f1
	li	$v0, 15658
	sll	$v0, $v0, 16
	ori	$v0, $v0, 42889
	mtc1	$f3, $v0
	fmul	$f2, $f3, $f2
	fadd	$f1, $f1, $f2
	li	$v0, 15027
	sll	$v0, $v0, 16
	ori	$v0, $v0, 33030
	mtc1	$f2, $v0
	fmul	$f0, $f2, $f0
	fsub	$f0, $f1, $f0
	li	$a1, 1
	bne	$a0, $a1, beq_else.27644
	fmove	$fv, $f0
	jr $ra
beq_else.27644:
	li	$v0, -16512
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	fmul	$fv, $f0, $f1
	jr $ra
fbge_else.27641:
	li	$v0, 16201
	sll	$v0, $v0, 16
	ori	$v0, $v0, 4059
	mtc1	$f1, $v0
	fblt	$f1, $f0, fbge_else.27645
	fmul	$f1, $f0, $f0
	fmul	$f1, $f1, $f0
	fmul	$f2, $f1, $f0
	fmul	$f2, $f2, $f0
	fmul	$f3, $f2, $f0
	fmul	$f3, $f3, $f0
	li	$v0, 15914
	sll	$v0, $v0, 16
	ori	$v0, $v0, 43692
	mtc1	$f4, $v0
	fmul	$f1, $f4, $f1
	fsub	$f0, $f0, $f1
	li	$v0, 15368
	sll	$v0, $v0, 16
	ori	$v0, $v0, 34406
	mtc1	$f1, $v0
	fmul	$f1, $f1, $f2
	fadd	$f0, $f0, $f1
	li	$v0, 14669
	sll	$v0, $v0, 16
	ori	$v0, $v0, 25782
	mtc1	$f1, $v0
	fmul	$f1, $f1, $f3
	fsub	$f0, $f0, $f1
	li	$a1, 1
	bne	$a0, $a1, beq_else.27646
	fmove	$fv, $f0
	jr $ra
beq_else.27646:
	li	$v0, -16512
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	fmul	$fv, $f0, $f1
	jr $ra
fbge_else.27645:
	li	$v0, 16329
	sll	$v0, $v0, 16
	ori	$v0, $v0, 4059
	mtc1	$f1, $v0
	fsub	$f0, $f1, $f0
	fmul	$f1, $f0, $f0
	fmul	$f2, $f1, $f0
	fmul	$f2, $f2, $f0
	fmul	$f3, $f2, $f0
	fmul	$f0, $f3, $f0
	li	$v0, 16128
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f3, $v0
	fmul	$f1, $f3, $f1
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f3, $v0
	fsub	$f1, $f3, $f1
	li	$v0, 15658
	sll	$v0, $v0, 16
	ori	$v0, $v0, 42889
	mtc1	$f3, $v0
	fmul	$f2, $f3, $f2
	fadd	$f1, $f1, $f2
	li	$v0, 15027
	sll	$v0, $v0, 16
	ori	$v0, $v0, 33030
	mtc1	$f2, $v0
	fmul	$f0, $f2, $f0
	fsub	$f0, $f1, $f0
	li	$a1, 1
	bne	$a0, $a1, beq_else.27647
	fmove	$fv, $f0
	jr $ra
beq_else.27647:
	li	$v0, -16512
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	fmul	$fv, $f0, $f1
	jr $ra
fbge_else.27640:
	li	$v0, 16329
	sll	$v0, $v0, 16
	ori	$v0, $v0, 4059
	mtc1	$f1, $v0
	fblt	$f0, $f1, fbge_else.27648
	li	$v0, 16457
	sll	$v0, $v0, 16
	ori	$v0, $v0, 4059
	mtc1	$f1, $v0
	fsub	$f0, $f1, $f0
	li	$v0, 16201
	sll	$v0, $v0, 16
	ori	$v0, $v0, 4059
	mtc1	$f1, $v0
	fblt	$f1, $f0, fbge_else.27649
	fmul	$f1, $f0, $f0
	fmul	$f1, $f1, $f0
	fmul	$f2, $f1, $f0
	fmul	$f2, $f2, $f0
	fmul	$f3, $f2, $f0
	fmul	$f3, $f3, $f0
	li	$v0, 15914
	sll	$v0, $v0, 16
	ori	$v0, $v0, 43692
	mtc1	$f4, $v0
	fmul	$f1, $f4, $f1
	fsub	$f0, $f0, $f1
	li	$v0, 15368
	sll	$v0, $v0, 16
	ori	$v0, $v0, 34406
	mtc1	$f1, $v0
	fmul	$f1, $f1, $f2
	fadd	$f0, $f0, $f1
	li	$v0, 14669
	sll	$v0, $v0, 16
	ori	$v0, $v0, 25782
	mtc1	$f1, $v0
	fmul	$f1, $f1, $f3
	fsub	$f0, $f0, $f1
	li	$a0, 1
	lw	$a1, 0($sp)
	bne	$a1, $a0, beq_else.27650
	fmove	$fv, $f0
	jr $ra
beq_else.27650:
	li	$v0, -16512
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	fmul	$fv, $f0, $f1
	jr $ra
fbge_else.27649:
	li	$v0, 16329
	sll	$v0, $v0, 16
	ori	$v0, $v0, 4059
	mtc1	$f1, $v0
	fsub	$f0, $f1, $f0
	fmul	$f1, $f0, $f0
	fmul	$f2, $f1, $f0
	fmul	$f2, $f2, $f0
	fmul	$f3, $f2, $f0
	fmul	$f0, $f3, $f0
	li	$v0, 16128
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f3, $v0
	fmul	$f1, $f3, $f1
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f3, $v0
	fsub	$f1, $f3, $f1
	li	$v0, 15658
	sll	$v0, $v0, 16
	ori	$v0, $v0, 42889
	mtc1	$f3, $v0
	fmul	$f2, $f3, $f2
	fadd	$f1, $f1, $f2
	li	$v0, 15027
	sll	$v0, $v0, 16
	ori	$v0, $v0, 33030
	mtc1	$f2, $v0
	fmul	$f0, $f2, $f0
	fsub	$f0, $f1, $f0
	li	$a0, 1
	lw	$a1, 0($sp)
	bne	$a1, $a0, beq_else.27651
	fmove	$fv, $f0
	jr $ra
beq_else.27651:
	li	$v0, -16512
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	fmul	$fv, $f0, $f1
	jr $ra
fbge_else.27648:
	li	$v0, 16201
	sll	$v0, $v0, 16
	ori	$v0, $v0, 4059
	mtc1	$f1, $v0
	fblt	$f1, $f0, fbge_else.27652
	fmul	$f1, $f0, $f0
	fmul	$f1, $f1, $f0
	fmul	$f2, $f1, $f0
	fmul	$f2, $f2, $f0
	fmul	$f3, $f2, $f0
	fmul	$f3, $f3, $f0
	li	$v0, 15914
	sll	$v0, $v0, 16
	ori	$v0, $v0, 43692
	mtc1	$f4, $v0
	fmul	$f1, $f4, $f1
	fsub	$f0, $f0, $f1
	li	$v0, 15368
	sll	$v0, $v0, 16
	ori	$v0, $v0, 34406
	mtc1	$f1, $v0
	fmul	$f1, $f1, $f2
	fadd	$f0, $f0, $f1
	li	$v0, 14669
	sll	$v0, $v0, 16
	ori	$v0, $v0, 25782
	mtc1	$f1, $v0
	fmul	$f1, $f1, $f3
	fsub	$f0, $f0, $f1
	li	$a0, 1
	lw	$a1, 0($sp)
	bne	$a1, $a0, beq_else.27653
	fmove	$fv, $f0
	jr $ra
beq_else.27653:
	li	$v0, -16512
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	fmul	$fv, $f0, $f1
	jr $ra
fbge_else.27652:
	li	$v0, 16329
	sll	$v0, $v0, 16
	ori	$v0, $v0, 4059
	mtc1	$f1, $v0
	fsub	$f0, $f1, $f0
	fmul	$f1, $f0, $f0
	fmul	$f2, $f1, $f0
	fmul	$f2, $f2, $f0
	fmul	$f3, $f2, $f0
	fmul	$f0, $f3, $f0
	li	$v0, 16128
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f3, $v0
	fmul	$f1, $f3, $f1
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f3, $v0
	fsub	$f1, $f3, $f1
	li	$v0, 15658
	sll	$v0, $v0, 16
	ori	$v0, $v0, 42889
	mtc1	$f3, $v0
	fmul	$f2, $f3, $f2
	fadd	$f1, $f1, $f2
	li	$v0, 15027
	sll	$v0, $v0, 16
	ori	$v0, $v0, 33030
	mtc1	$f2, $v0
	fmul	$f0, $f2, $f0
	fsub	$f0, $f1, $f0
	li	$a0, 1
	lw	$a1, 0($sp)
	bne	$a1, $a0, beq_else.27654
	fmove	$fv, $f0
	jr $ra
beq_else.27654:
	li	$v0, -16512
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	fmul	$fv, $f0, $f1
	jr $ra
cos.2783:
	lw	$a0, 12($a26)
	flw	$f1, 8($a26)
	fabs	$f0, $f0
	fsw	$f1, 0($sp)
	move	$a26, $a0
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	reduction_pi2.2772
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	fmove	$f0, $fv
	flw	$f1, 0($sp)
	fblt	$f0, $f1, fbge_else.27655
	li	$v0, 16457
	sll	$v0, $v0, 16
	ori	$v0, $v0, 4059
	mtc1	$f1, $v0
	fsub	$f0, $f0, $f1
	li	$v0, 16329
	sll	$v0, $v0, 16
	ori	$v0, $v0, 4059
	mtc1	$f1, $v0
	fblt	$f0, $f1, fbge_else.27656
	li	$v0, 16457
	sll	$v0, $v0, 16
	ori	$v0, $v0, 4059
	mtc1	$f1, $v0
	fsub	$f0, $f1, $f0
	li	$v0, 16201
	sll	$v0, $v0, 16
	ori	$v0, $v0, 4059
	mtc1	$f1, $v0
	fblt	$f1, $f0, fbge_else.27657
	fmul	$f1, $f0, $f0
	fmul	$f2, $f1, $f0
	fmul	$f2, $f2, $f0
	fmul	$f3, $f2, $f0
	fmul	$f0, $f3, $f0
	li	$v0, 16128
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f3, $v0
	fmul	$f1, $f3, $f1
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f3, $v0
	fsub	$f1, $f3, $f1
	li	$v0, 15658
	sll	$v0, $v0, 16
	ori	$v0, $v0, 42889
	mtc1	$f3, $v0
	fmul	$f2, $f3, $f2
	fadd	$f1, $f1, $f2
	li	$v0, 15027
	sll	$v0, $v0, 16
	ori	$v0, $v0, 33030
	mtc1	$f2, $v0
	fmul	$f0, $f2, $f0
	fsub	$f0, $f1, $f0
	fmove	$fv, $f0
	jr $ra
fbge_else.27657:
	li	$v0, 16329
	sll	$v0, $v0, 16
	ori	$v0, $v0, 4059
	mtc1	$f1, $v0
	fsub	$f0, $f1, $f0
	fmul	$f1, $f0, $f0
	fmul	$f1, $f1, $f0
	fmul	$f2, $f1, $f0
	fmul	$f2, $f2, $f0
	fmul	$f3, $f2, $f0
	fmul	$f3, $f3, $f0
	li	$v0, 15914
	sll	$v0, $v0, 16
	ori	$v0, $v0, 43692
	mtc1	$f4, $v0
	fmul	$f1, $f4, $f1
	fsub	$f0, $f0, $f1
	li	$v0, 15368
	sll	$v0, $v0, 16
	ori	$v0, $v0, 34406
	mtc1	$f1, $v0
	fmul	$f1, $f1, $f2
	fadd	$f0, $f0, $f1
	li	$v0, 14669
	sll	$v0, $v0, 16
	ori	$v0, $v0, 25782
	mtc1	$f1, $v0
	fmul	$f1, $f1, $f3
	fsub	$f0, $f0, $f1
	fmove	$fv, $f0
	jr $ra
fbge_else.27656:
	li	$v0, 16201
	sll	$v0, $v0, 16
	ori	$v0, $v0, 4059
	mtc1	$f1, $v0
	fblt	$f1, $f0, fbge_else.27658
	fmul	$f1, $f0, $f0
	fmul	$f2, $f1, $f0
	fmul	$f2, $f2, $f0
	fmul	$f3, $f2, $f0
	fmul	$f0, $f3, $f0
	li	$v0, 16128
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f3, $v0
	fmul	$f1, $f3, $f1
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f3, $v0
	fsub	$f1, $f3, $f1
	li	$v0, 15658
	sll	$v0, $v0, 16
	ori	$v0, $v0, 42889
	mtc1	$f3, $v0
	fmul	$f2, $f3, $f2
	fadd	$f1, $f1, $f2
	li	$v0, 15027
	sll	$v0, $v0, 16
	ori	$v0, $v0, 33030
	mtc1	$f2, $v0
	fmul	$f0, $f2, $f0
	fsub	$f0, $f1, $f0
	li	$v0, -16512
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	fmul	$fv, $f0, $f1
	jr $ra
fbge_else.27658:
	li	$v0, 16329
	sll	$v0, $v0, 16
	ori	$v0, $v0, 4059
	mtc1	$f1, $v0
	fsub	$f0, $f1, $f0
	fmul	$f1, $f0, $f0
	fmul	$f1, $f1, $f0
	fmul	$f2, $f1, $f0
	fmul	$f2, $f2, $f0
	fmul	$f3, $f2, $f0
	fmul	$f3, $f3, $f0
	li	$v0, 15914
	sll	$v0, $v0, 16
	ori	$v0, $v0, 43692
	mtc1	$f4, $v0
	fmul	$f1, $f4, $f1
	fsub	$f0, $f0, $f1
	li	$v0, 15368
	sll	$v0, $v0, 16
	ori	$v0, $v0, 34406
	mtc1	$f1, $v0
	fmul	$f1, $f1, $f2
	fadd	$f0, $f0, $f1
	li	$v0, 14669
	sll	$v0, $v0, 16
	ori	$v0, $v0, 25782
	mtc1	$f1, $v0
	fmul	$f1, $f1, $f3
	fsub	$f0, $f0, $f1
	li	$v0, -16512
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	fmul	$fv, $f0, $f1
	jr $ra
fbge_else.27655:
	li	$v0, 16329
	sll	$v0, $v0, 16
	ori	$v0, $v0, 4059
	mtc1	$f1, $v0
	fblt	$f0, $f1, fbge_else.27659
	li	$v0, 16457
	sll	$v0, $v0, 16
	ori	$v0, $v0, 4059
	mtc1	$f1, $v0
	fsub	$f0, $f1, $f0
	li	$v0, 16201
	sll	$v0, $v0, 16
	ori	$v0, $v0, 4059
	mtc1	$f1, $v0
	fblt	$f1, $f0, fbge_else.27660
	fmul	$f1, $f0, $f0
	fmul	$f2, $f1, $f0
	fmul	$f2, $f2, $f0
	fmul	$f3, $f2, $f0
	fmul	$f0, $f3, $f0
	li	$v0, 16128
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f3, $v0
	fmul	$f1, $f3, $f1
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f3, $v0
	fsub	$f1, $f3, $f1
	li	$v0, 15658
	sll	$v0, $v0, 16
	ori	$v0, $v0, 42889
	mtc1	$f3, $v0
	fmul	$f2, $f3, $f2
	fadd	$f1, $f1, $f2
	li	$v0, 15027
	sll	$v0, $v0, 16
	ori	$v0, $v0, 33030
	mtc1	$f2, $v0
	fmul	$f0, $f2, $f0
	fsub	$f0, $f1, $f0
	li	$v0, -16512
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	fmul	$fv, $f0, $f1
	jr $ra
fbge_else.27660:
	li	$v0, 16329
	sll	$v0, $v0, 16
	ori	$v0, $v0, 4059
	mtc1	$f1, $v0
	fsub	$f0, $f1, $f0
	fmul	$f1, $f0, $f0
	fmul	$f1, $f1, $f0
	fmul	$f2, $f1, $f0
	fmul	$f2, $f2, $f0
	fmul	$f3, $f2, $f0
	fmul	$f3, $f3, $f0
	li	$v0, 15914
	sll	$v0, $v0, 16
	ori	$v0, $v0, 43692
	mtc1	$f4, $v0
	fmul	$f1, $f4, $f1
	fsub	$f0, $f0, $f1
	li	$v0, 15368
	sll	$v0, $v0, 16
	ori	$v0, $v0, 34406
	mtc1	$f1, $v0
	fmul	$f1, $f1, $f2
	fadd	$f0, $f0, $f1
	li	$v0, 14669
	sll	$v0, $v0, 16
	ori	$v0, $v0, 25782
	mtc1	$f1, $v0
	fmul	$f1, $f1, $f3
	fsub	$f0, $f0, $f1
	li	$v0, -16512
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	fmul	$fv, $f0, $f1
	jr $ra
fbge_else.27659:
	li	$v0, 16201
	sll	$v0, $v0, 16
	ori	$v0, $v0, 4059
	mtc1	$f1, $v0
	fblt	$f1, $f0, fbge_else.27661
	fmul	$f1, $f0, $f0
	fmul	$f2, $f1, $f0
	fmul	$f2, $f2, $f0
	fmul	$f3, $f2, $f0
	fmul	$f0, $f3, $f0
	li	$v0, 16128
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f3, $v0
	fmul	$f1, $f3, $f1
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f3, $v0
	fsub	$f1, $f3, $f1
	li	$v0, 15658
	sll	$v0, $v0, 16
	ori	$v0, $v0, 42889
	mtc1	$f3, $v0
	fmul	$f2, $f3, $f2
	fadd	$f1, $f1, $f2
	li	$v0, 15027
	sll	$v0, $v0, 16
	ori	$v0, $v0, 33030
	mtc1	$f2, $v0
	fmul	$f0, $f2, $f0
	fsub	$f0, $f1, $f0
	fmove	$fv, $f0
	jr $ra
fbge_else.27661:
	li	$v0, 16329
	sll	$v0, $v0, 16
	ori	$v0, $v0, 4059
	mtc1	$f1, $v0
	fsub	$f0, $f1, $f0
	fmul	$f1, $f0, $f0
	fmul	$f1, $f1, $f0
	fmul	$f2, $f1, $f0
	fmul	$f2, $f2, $f0
	fmul	$f3, $f2, $f0
	fmul	$f3, $f3, $f0
	li	$v0, 15914
	sll	$v0, $v0, 16
	ori	$v0, $v0, 43692
	mtc1	$f4, $v0
	fmul	$f1, $f4, $f1
	fsub	$f0, $f0, $f1
	li	$v0, 15368
	sll	$v0, $v0, 16
	ori	$v0, $v0, 34406
	mtc1	$f1, $v0
	fmul	$f1, $f1, $f2
	fadd	$f0, $f0, $f1
	li	$v0, 14669
	sll	$v0, $v0, 16
	ori	$v0, $v0, 25782
	mtc1	$f1, $v0
	fmul	$f1, $f1, $f3
	fsub	$f0, $f0, $f1
	fmove	$fv, $f0
	jr $ra
atan.2785:
	fabs	$f1, $f0
	mtc1	$f2, $zero
	fblt	$f0, $f2, fbge_else.27662
	li	$a0, 1
	j	fbge_cont.27663
fbge_else.27662:
	li	$a0, -1
fbge_cont.27663:
	li	$v0, 16096
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f0, $v0
	fblt	$f1, $f0, fbge_else.27664
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f0, $v0
	fblt	$f1, $f0, fbge_else.27665
	li	$v0, 16412
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f0, $v0
	fblt	$f1, $f0, fbge_else.27666
	finv	$f0, $f1
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	fmul	$f0, $f1, $f0
	li	$v0, 15733
	sll	$v0, $v0, 16
	ori	$v0, $v0, 59333
	mtc1	$f1, $v0
	fmul	$f1, $f1, $f0
	fmul	$f1, $f1, $f0
	li	$v0, 15799
	sll	$v0, $v0, 16
	ori	$v0, $v0, 54894
	mtc1	$f2, $v0
	fsub	$f1, $f1, $f2
	fmul	$f1, $f1, $f0
	fmul	$f1, $f1, $f0
	li	$v0, 15843
	sll	$v0, $v0, 16
	ori	$v0, $v0, 36408
	mtc1	$f2, $v0
	fadd	$f1, $f2, $f1
	fmul	$f1, $f1, $f0
	fmul	$f1, $f1, $f0
	li	$v0, 15890
	sll	$v0, $v0, 16
	ori	$v0, $v0, 18725
	mtc1	$f2, $v0
	fsub	$f1, $f1, $f2
	fmul	$f1, $f1, $f0
	fmul	$f1, $f1, $f0
	li	$v0, 15948
	sll	$v0, $v0, 16
	ori	$v0, $v0, 52429
	mtc1	$f2, $v0
	fadd	$f1, $f1, $f2
	fmul	$f1, $f1, $f0
	fmul	$f1, $f1, $f0
	li	$v0, 16042
	sll	$v0, $v0, 16
	ori	$v0, $v0, 43690
	mtc1	$f2, $v0
	fsub	$f1, $f1, $f2
	fmul	$f1, $f1, $f0
	fmul	$f1, $f1, $f0
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fadd	$f1, $f2, $f1
	fmul	$f0, $f0, $f1
	li	$v0, 16329
	sll	$v0, $v0, 16
	ori	$v0, $v0, 4059
	mtc1	$f1, $v0
	fsub	$f0, $f1, $f0
	li	$a1, 1
	bne	$a0, $a1, beq_else.27667
	fmove	$fv, $f0
	jr $ra
beq_else.27667:
	li	$v0, -16512
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	fmul	$fv, $f0, $f1
	jr $ra
fbge_else.27666:
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f0, $v0
	fsub	$f0, $f0, $f1
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fadd	$f1, $f1, $f2
	finv	$f1, $f1
	fmul	$f0, $f0, $f1
	li	$v0, 15733
	sll	$v0, $v0, 16
	ori	$v0, $v0, 59333
	mtc1	$f1, $v0
	fmul	$f1, $f1, $f0
	fmul	$f1, $f1, $f0
	li	$v0, 15799
	sll	$v0, $v0, 16
	ori	$v0, $v0, 54894
	mtc1	$f2, $v0
	fsub	$f1, $f1, $f2
	fmul	$f1, $f1, $f0
	fmul	$f1, $f1, $f0
	li	$v0, 15843
	sll	$v0, $v0, 16
	ori	$v0, $v0, 36408
	mtc1	$f2, $v0
	fadd	$f1, $f2, $f1
	fmul	$f1, $f1, $f0
	fmul	$f1, $f1, $f0
	li	$v0, 15890
	sll	$v0, $v0, 16
	ori	$v0, $v0, 18725
	mtc1	$f2, $v0
	fsub	$f1, $f1, $f2
	fmul	$f1, $f1, $f0
	fmul	$f1, $f1, $f0
	li	$v0, 15948
	sll	$v0, $v0, 16
	ori	$v0, $v0, 52429
	mtc1	$f2, $v0
	fadd	$f1, $f1, $f2
	fmul	$f1, $f1, $f0
	fmul	$f1, $f1, $f0
	li	$v0, 16042
	sll	$v0, $v0, 16
	ori	$v0, $v0, 43690
	mtc1	$f2, $v0
	fsub	$f1, $f1, $f2
	fmul	$f1, $f1, $f0
	fmul	$f1, $f1, $f0
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fadd	$f1, $f2, $f1
	fmul	$f0, $f0, $f1
	li	$v0, 16201
	sll	$v0, $v0, 16
	ori	$v0, $v0, 4059
	mtc1	$f1, $v0
	fsub	$f0, $f1, $f0
	li	$a1, 1
	bne	$a0, $a1, beq_else.27668
	fmove	$fv, $f0
	jr $ra
beq_else.27668:
	li	$v0, -16512
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	fmul	$fv, $f0, $f1
	jr $ra
fbge_else.27665:
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f0, $v0
	fsub	$f0, $f0, $f1
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fadd	$f1, $f1, $f2
	finv	$f1, $f1
	fmul	$f0, $f0, $f1
	li	$v0, 15733
	sll	$v0, $v0, 16
	ori	$v0, $v0, 59333
	mtc1	$f1, $v0
	fmul	$f1, $f1, $f0
	fmul	$f1, $f1, $f0
	li	$v0, 15799
	sll	$v0, $v0, 16
	ori	$v0, $v0, 54894
	mtc1	$f2, $v0
	fsub	$f1, $f1, $f2
	fmul	$f1, $f1, $f0
	fmul	$f1, $f1, $f0
	li	$v0, 15843
	sll	$v0, $v0, 16
	ori	$v0, $v0, 36408
	mtc1	$f2, $v0
	fadd	$f1, $f2, $f1
	fmul	$f1, $f1, $f0
	fmul	$f1, $f1, $f0
	li	$v0, 15890
	sll	$v0, $v0, 16
	ori	$v0, $v0, 18725
	mtc1	$f2, $v0
	fsub	$f1, $f1, $f2
	fmul	$f1, $f1, $f0
	fmul	$f1, $f1, $f0
	li	$v0, 15948
	sll	$v0, $v0, 16
	ori	$v0, $v0, 52429
	mtc1	$f2, $v0
	fadd	$f1, $f1, $f2
	fmul	$f1, $f1, $f0
	fmul	$f1, $f1, $f0
	li	$v0, 16042
	sll	$v0, $v0, 16
	ori	$v0, $v0, 43690
	mtc1	$f2, $v0
	fsub	$f1, $f1, $f2
	fmul	$f1, $f1, $f0
	fmul	$f1, $f1, $f0
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fadd	$f1, $f2, $f1
	fmul	$f0, $f0, $f1
	li	$v0, 16201
	sll	$v0, $v0, 16
	ori	$v0, $v0, 4059
	mtc1	$f1, $v0
	fsub	$f0, $f1, $f0
	li	$a1, 1
	bne	$a0, $a1, beq_else.27669
	fmove	$fv, $f0
	jr $ra
beq_else.27669:
	li	$v0, -16512
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	fmul	$fv, $f0, $f1
	jr $ra
fbge_else.27664:
	li	$v0, 15733
	sll	$v0, $v0, 16
	ori	$v0, $v0, 59333
	mtc1	$f0, $v0
	fmul	$f0, $f0, $f1
	fmul	$f0, $f0, $f1
	li	$v0, 15799
	sll	$v0, $v0, 16
	ori	$v0, $v0, 54894
	mtc1	$f2, $v0
	fsub	$f0, $f0, $f2
	fmul	$f0, $f0, $f1
	fmul	$f0, $f0, $f1
	li	$v0, 15843
	sll	$v0, $v0, 16
	ori	$v0, $v0, 36408
	mtc1	$f2, $v0
	fadd	$f0, $f2, $f0
	fmul	$f0, $f0, $f1
	fmul	$f0, $f0, $f1
	li	$v0, 15890
	sll	$v0, $v0, 16
	ori	$v0, $v0, 18725
	mtc1	$f2, $v0
	fsub	$f0, $f0, $f2
	fmul	$f0, $f0, $f1
	fmul	$f0, $f0, $f1
	li	$v0, 15948
	sll	$v0, $v0, 16
	ori	$v0, $v0, 52429
	mtc1	$f2, $v0
	fadd	$f0, $f0, $f2
	fmul	$f0, $f0, $f1
	fmul	$f0, $f0, $f1
	li	$v0, 16042
	sll	$v0, $v0, 16
	ori	$v0, $v0, 43690
	mtc1	$f2, $v0
	fsub	$f0, $f0, $f2
	fmul	$f0, $f0, $f1
	fmul	$f0, $f0, $f1
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fadd	$f0, $f2, $f0
	fmul	$f0, $f1, $f0
	li	$a1, 1
	bne	$a0, $a1, beq_else.27670
	fmove	$fv, $f0
	jr $ra
beq_else.27670:
	li	$v0, -16512
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	fmul	$fv, $f0, $f1
	jr $ra
rotate_quadratic_matrix.2918:
	lw	$a2, 12($a26)
	flw	$f0, 8($a26)
	flw	$f1, 0($a1)
	fabs	$f1, $f1
	sw	$a0, 0($sp)
	sw	$a2, 4($sp)
	sw	$a1, 8($sp)
	fsw	$f0, 16($sp)
	move	$a26, $a2
	fmove	$f0, $f1
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	reduction_pi2.2772
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	fmove	$f0, $fv
	flw	$f1, 16($sp)
	fblt	$f0, $f1, fbge_else.27672
	li	$v0, 16457
	sll	$v0, $v0, 16
	ori	$v0, $v0, 4059
	mtc1	$f2, $v0
	fsub	$f0, $f0, $f2
	li	$v0, 16329
	sll	$v0, $v0, 16
	ori	$v0, $v0, 4059
	mtc1	$f2, $v0
	fblt	$f0, $f2, fbge_else.27674
	li	$v0, 16457
	sll	$v0, $v0, 16
	ori	$v0, $v0, 4059
	mtc1	$f2, $v0
	fsub	$f0, $f2, $f0
	li	$v0, 16201
	sll	$v0, $v0, 16
	ori	$v0, $v0, 4059
	mtc1	$f2, $v0
	fblt	$f2, $f0, fbge_else.27676
	fmul	$f2, $f0, $f0
	fmul	$f3, $f2, $f0
	fmul	$f3, $f3, $f0
	fmul	$f4, $f3, $f0
	fmul	$f0, $f4, $f0
	li	$v0, 16128
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f4, $v0
	fmul	$f2, $f4, $f2
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f4, $v0
	fsub	$f2, $f4, $f2
	li	$v0, 15658
	sll	$v0, $v0, 16
	ori	$v0, $v0, 42889
	mtc1	$f4, $v0
	fmul	$f3, $f4, $f3
	fadd	$f2, $f2, $f3
	li	$v0, 15027
	sll	$v0, $v0, 16
	ori	$v0, $v0, 33030
	mtc1	$f3, $v0
	fmul	$f0, $f3, $f0
	fsub	$f0, $f2, $f0
	j	fbge_cont.27677
fbge_else.27676:
	li	$v0, 16329
	sll	$v0, $v0, 16
	ori	$v0, $v0, 4059
	mtc1	$f2, $v0
	fsub	$f0, $f2, $f0
	fmul	$f2, $f0, $f0
	fmul	$f2, $f2, $f0
	fmul	$f3, $f2, $f0
	fmul	$f3, $f3, $f0
	fmul	$f4, $f3, $f0
	fmul	$f4, $f4, $f0
	li	$v0, 15914
	sll	$v0, $v0, 16
	ori	$v0, $v0, 43692
	mtc1	$f5, $v0
	fmul	$f2, $f5, $f2
	fsub	$f0, $f0, $f2
	li	$v0, 15368
	sll	$v0, $v0, 16
	ori	$v0, $v0, 34406
	mtc1	$f2, $v0
	fmul	$f2, $f2, $f3
	fadd	$f0, $f0, $f2
	li	$v0, 14669
	sll	$v0, $v0, 16
	ori	$v0, $v0, 25782
	mtc1	$f2, $v0
	fmul	$f2, $f2, $f4
	fsub	$f0, $f0, $f2
fbge_cont.27677:
	j	fbge_cont.27675
fbge_else.27674:
	li	$v0, 16201
	sll	$v0, $v0, 16
	ori	$v0, $v0, 4059
	mtc1	$f2, $v0
	fblt	$f2, $f0, fbge_else.27678
	fmul	$f2, $f0, $f0
	fmul	$f3, $f2, $f0
	fmul	$f3, $f3, $f0
	fmul	$f4, $f3, $f0
	fmul	$f0, $f4, $f0
	li	$v0, 16128
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f4, $v0
	fmul	$f2, $f4, $f2
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f4, $v0
	fsub	$f2, $f4, $f2
	li	$v0, 15658
	sll	$v0, $v0, 16
	ori	$v0, $v0, 42889
	mtc1	$f4, $v0
	fmul	$f3, $f4, $f3
	fadd	$f2, $f2, $f3
	li	$v0, 15027
	sll	$v0, $v0, 16
	ori	$v0, $v0, 33030
	mtc1	$f3, $v0
	fmul	$f0, $f3, $f0
	fsub	$f0, $f2, $f0
	li	$v0, -16512
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fmul	$f0, $f0, $f2
	j	fbge_cont.27679
fbge_else.27678:
	li	$v0, 16329
	sll	$v0, $v0, 16
	ori	$v0, $v0, 4059
	mtc1	$f2, $v0
	fsub	$f0, $f2, $f0
	fmul	$f2, $f0, $f0
	fmul	$f2, $f2, $f0
	fmul	$f3, $f2, $f0
	fmul	$f3, $f3, $f0
	fmul	$f4, $f3, $f0
	fmul	$f4, $f4, $f0
	li	$v0, 15914
	sll	$v0, $v0, 16
	ori	$v0, $v0, 43692
	mtc1	$f5, $v0
	fmul	$f2, $f5, $f2
	fsub	$f0, $f0, $f2
	li	$v0, 15368
	sll	$v0, $v0, 16
	ori	$v0, $v0, 34406
	mtc1	$f2, $v0
	fmul	$f2, $f2, $f3
	fadd	$f0, $f0, $f2
	li	$v0, 14669
	sll	$v0, $v0, 16
	ori	$v0, $v0, 25782
	mtc1	$f2, $v0
	fmul	$f2, $f2, $f4
	fsub	$f0, $f0, $f2
	li	$v0, -16512
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fmul	$f0, $f0, $f2
fbge_cont.27679:
fbge_cont.27675:
	j	fbge_cont.27673
fbge_else.27672:
	li	$v0, 16329
	sll	$v0, $v0, 16
	ori	$v0, $v0, 4059
	mtc1	$f2, $v0
	fblt	$f0, $f2, fbge_else.27680
	li	$v0, 16457
	sll	$v0, $v0, 16
	ori	$v0, $v0, 4059
	mtc1	$f2, $v0
	fsub	$f0, $f2, $f0
	li	$v0, 16201
	sll	$v0, $v0, 16
	ori	$v0, $v0, 4059
	mtc1	$f2, $v0
	fblt	$f2, $f0, fbge_else.27682
	fmul	$f2, $f0, $f0
	fmul	$f3, $f2, $f0
	fmul	$f3, $f3, $f0
	fmul	$f4, $f3, $f0
	fmul	$f0, $f4, $f0
	li	$v0, 16128
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f4, $v0
	fmul	$f2, $f4, $f2
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f4, $v0
	fsub	$f2, $f4, $f2
	li	$v0, 15658
	sll	$v0, $v0, 16
	ori	$v0, $v0, 42889
	mtc1	$f4, $v0
	fmul	$f3, $f4, $f3
	fadd	$f2, $f2, $f3
	li	$v0, 15027
	sll	$v0, $v0, 16
	ori	$v0, $v0, 33030
	mtc1	$f3, $v0
	fmul	$f0, $f3, $f0
	fsub	$f0, $f2, $f0
	li	$v0, -16512
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fmul	$f0, $f0, $f2
	j	fbge_cont.27683
fbge_else.27682:
	li	$v0, 16329
	sll	$v0, $v0, 16
	ori	$v0, $v0, 4059
	mtc1	$f2, $v0
	fsub	$f0, $f2, $f0
	fmul	$f2, $f0, $f0
	fmul	$f2, $f2, $f0
	fmul	$f3, $f2, $f0
	fmul	$f3, $f3, $f0
	fmul	$f4, $f3, $f0
	fmul	$f4, $f4, $f0
	li	$v0, 15914
	sll	$v0, $v0, 16
	ori	$v0, $v0, 43692
	mtc1	$f5, $v0
	fmul	$f2, $f5, $f2
	fsub	$f0, $f0, $f2
	li	$v0, 15368
	sll	$v0, $v0, 16
	ori	$v0, $v0, 34406
	mtc1	$f2, $v0
	fmul	$f2, $f2, $f3
	fadd	$f0, $f0, $f2
	li	$v0, 14669
	sll	$v0, $v0, 16
	ori	$v0, $v0, 25782
	mtc1	$f2, $v0
	fmul	$f2, $f2, $f4
	fsub	$f0, $f0, $f2
	li	$v0, -16512
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fmul	$f0, $f0, $f2
fbge_cont.27683:
	j	fbge_cont.27681
fbge_else.27680:
	li	$v0, 16201
	sll	$v0, $v0, 16
	ori	$v0, $v0, 4059
	mtc1	$f2, $v0
	fblt	$f2, $f0, fbge_else.27684
	fmul	$f2, $f0, $f0
	fmul	$f3, $f2, $f0
	fmul	$f3, $f3, $f0
	fmul	$f4, $f3, $f0
	fmul	$f0, $f4, $f0
	li	$v0, 16128
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f4, $v0
	fmul	$f2, $f4, $f2
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f4, $v0
	fsub	$f2, $f4, $f2
	li	$v0, 15658
	sll	$v0, $v0, 16
	ori	$v0, $v0, 42889
	mtc1	$f4, $v0
	fmul	$f3, $f4, $f3
	fadd	$f2, $f2, $f3
	li	$v0, 15027
	sll	$v0, $v0, 16
	ori	$v0, $v0, 33030
	mtc1	$f3, $v0
	fmul	$f0, $f3, $f0
	fsub	$f0, $f2, $f0
	j	fbge_cont.27685
fbge_else.27684:
	li	$v0, 16329
	sll	$v0, $v0, 16
	ori	$v0, $v0, 4059
	mtc1	$f2, $v0
	fsub	$f0, $f2, $f0
	fmul	$f2, $f0, $f0
	fmul	$f2, $f2, $f0
	fmul	$f3, $f2, $f0
	fmul	$f3, $f3, $f0
	fmul	$f4, $f3, $f0
	fmul	$f4, $f4, $f0
	li	$v0, 15914
	sll	$v0, $v0, 16
	ori	$v0, $v0, 43692
	mtc1	$f5, $v0
	fmul	$f2, $f5, $f2
	fsub	$f0, $f0, $f2
	li	$v0, 15368
	sll	$v0, $v0, 16
	ori	$v0, $v0, 34406
	mtc1	$f2, $v0
	fmul	$f2, $f2, $f3
	fadd	$f0, $f0, $f2
	li	$v0, 14669
	sll	$v0, $v0, 16
	ori	$v0, $v0, 25782
	mtc1	$f2, $v0
	fmul	$f2, $f2, $f4
	fsub	$f0, $f0, $f2
fbge_cont.27685:
fbge_cont.27681:
fbge_cont.27673:
	lw	$a0, 8($sp)
	flw	$f2, 0($a0)
	fabs	$f3, $f2
	mtc1	$f4, $zero
	fblt	$f2, $f4, fbge_else.27686
	li	$a1, 1
	j	fbge_cont.27687
fbge_else.27686:
	li	$a1, -1
fbge_cont.27687:
	lw	$a26, 4($sp)
	fsw	$f0, 24($sp)
	sw	$a1, 32($sp)
	fmove	$f0, $f3
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	reduction_pi2.2772
	subi	$sp, $sp, 40
	lw	$ra, 36($sp)
	fmove	$f0, $fv
	flw	$f1, 16($sp)
	fblt	$f0, $f1, fbge_else.27688
	li	$v0, 16457
	sll	$v0, $v0, 16
	ori	$v0, $v0, 4059
	mtc1	$f2, $v0
	fsub	$f0, $f0, $f2
	lw	$a0, 32($sp)
	neg	$a0, $a0
	li	$v0, 16329
	sll	$v0, $v0, 16
	ori	$v0, $v0, 4059
	mtc1	$f2, $v0
	fblt	$f0, $f2, fbge_else.27690
	li	$v0, 16457
	sll	$v0, $v0, 16
	ori	$v0, $v0, 4059
	mtc1	$f2, $v0
	fsub	$f0, $f2, $f0
	li	$v0, 16201
	sll	$v0, $v0, 16
	ori	$v0, $v0, 4059
	mtc1	$f2, $v0
	fblt	$f2, $f0, fbge_else.27692
	fmul	$f2, $f0, $f0
	fmul	$f2, $f2, $f0
	fmul	$f3, $f2, $f0
	fmul	$f3, $f3, $f0
	fmul	$f4, $f3, $f0
	fmul	$f4, $f4, $f0
	li	$v0, 15914
	sll	$v0, $v0, 16
	ori	$v0, $v0, 43692
	mtc1	$f5, $v0
	fmul	$f2, $f5, $f2
	fsub	$f0, $f0, $f2
	li	$v0, 15368
	sll	$v0, $v0, 16
	ori	$v0, $v0, 34406
	mtc1	$f2, $v0
	fmul	$f2, $f2, $f3
	fadd	$f0, $f0, $f2
	li	$v0, 14669
	sll	$v0, $v0, 16
	ori	$v0, $v0, 25782
	mtc1	$f2, $v0
	fmul	$f2, $f2, $f4
	fsub	$f0, $f0, $f2
	li	$a1, 1
	bne	$a0, $a1, bne_else.27694
	j	bne_cont.27695
bne_else.27694:
	li	$v0, -16512
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fmul	$f0, $f0, $f2
bne_cont.27695:
	j	fbge_cont.27693
fbge_else.27692:
	li	$v0, 16329
	sll	$v0, $v0, 16
	ori	$v0, $v0, 4059
	mtc1	$f2, $v0
	fsub	$f0, $f2, $f0
	fmul	$f2, $f0, $f0
	fmul	$f3, $f2, $f0
	fmul	$f3, $f3, $f0
	fmul	$f4, $f3, $f0
	fmul	$f0, $f4, $f0
	li	$v0, 16128
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f4, $v0
	fmul	$f2, $f4, $f2
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f4, $v0
	fsub	$f2, $f4, $f2
	li	$v0, 15658
	sll	$v0, $v0, 16
	ori	$v0, $v0, 42889
	mtc1	$f4, $v0
	fmul	$f3, $f4, $f3
	fadd	$f2, $f2, $f3
	li	$v0, 15027
	sll	$v0, $v0, 16
	ori	$v0, $v0, 33030
	mtc1	$f3, $v0
	fmul	$f0, $f3, $f0
	fsub	$f0, $f2, $f0
	li	$a1, 1
	bne	$a0, $a1, bne_else.27696
	j	bne_cont.27697
bne_else.27696:
	li	$v0, -16512
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fmul	$f0, $f0, $f2
bne_cont.27697:
fbge_cont.27693:
	j	fbge_cont.27691
fbge_else.27690:
	li	$v0, 16201
	sll	$v0, $v0, 16
	ori	$v0, $v0, 4059
	mtc1	$f2, $v0
	fblt	$f2, $f0, fbge_else.27698
	fmul	$f2, $f0, $f0
	fmul	$f2, $f2, $f0
	fmul	$f3, $f2, $f0
	fmul	$f3, $f3, $f0
	fmul	$f4, $f3, $f0
	fmul	$f4, $f4, $f0
	li	$v0, 15914
	sll	$v0, $v0, 16
	ori	$v0, $v0, 43692
	mtc1	$f5, $v0
	fmul	$f2, $f5, $f2
	fsub	$f0, $f0, $f2
	li	$v0, 15368
	sll	$v0, $v0, 16
	ori	$v0, $v0, 34406
	mtc1	$f2, $v0
	fmul	$f2, $f2, $f3
	fadd	$f0, $f0, $f2
	li	$v0, 14669
	sll	$v0, $v0, 16
	ori	$v0, $v0, 25782
	mtc1	$f2, $v0
	fmul	$f2, $f2, $f4
	fsub	$f0, $f0, $f2
	li	$a1, 1
	bne	$a0, $a1, bne_else.27700
	j	bne_cont.27701
bne_else.27700:
	li	$v0, -16512
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fmul	$f0, $f0, $f2
bne_cont.27701:
	j	fbge_cont.27699
fbge_else.27698:
	li	$v0, 16329
	sll	$v0, $v0, 16
	ori	$v0, $v0, 4059
	mtc1	$f2, $v0
	fsub	$f0, $f2, $f0
	fmul	$f2, $f0, $f0
	fmul	$f3, $f2, $f0
	fmul	$f3, $f3, $f0
	fmul	$f4, $f3, $f0
	fmul	$f0, $f4, $f0
	li	$v0, 16128
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f4, $v0
	fmul	$f2, $f4, $f2
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f4, $v0
	fsub	$f2, $f4, $f2
	li	$v0, 15658
	sll	$v0, $v0, 16
	ori	$v0, $v0, 42889
	mtc1	$f4, $v0
	fmul	$f3, $f4, $f3
	fadd	$f2, $f2, $f3
	li	$v0, 15027
	sll	$v0, $v0, 16
	ori	$v0, $v0, 33030
	mtc1	$f3, $v0
	fmul	$f0, $f3, $f0
	fsub	$f0, $f2, $f0
	li	$a1, 1
	bne	$a0, $a1, bne_else.27702
	j	bne_cont.27703
bne_else.27702:
	li	$v0, -16512
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fmul	$f0, $f0, $f2
bne_cont.27703:
fbge_cont.27699:
fbge_cont.27691:
	j	fbge_cont.27689
fbge_else.27688:
	li	$v0, 16329
	sll	$v0, $v0, 16
	ori	$v0, $v0, 4059
	mtc1	$f2, $v0
	fblt	$f0, $f2, fbge_else.27704
	li	$v0, 16457
	sll	$v0, $v0, 16
	ori	$v0, $v0, 4059
	mtc1	$f2, $v0
	fsub	$f0, $f2, $f0
	li	$v0, 16201
	sll	$v0, $v0, 16
	ori	$v0, $v0, 4059
	mtc1	$f2, $v0
	fblt	$f2, $f0, fbge_else.27706
	fmul	$f2, $f0, $f0
	fmul	$f2, $f2, $f0
	fmul	$f3, $f2, $f0
	fmul	$f3, $f3, $f0
	fmul	$f4, $f3, $f0
	fmul	$f4, $f4, $f0
	li	$v0, 15914
	sll	$v0, $v0, 16
	ori	$v0, $v0, 43692
	mtc1	$f5, $v0
	fmul	$f2, $f5, $f2
	fsub	$f0, $f0, $f2
	li	$v0, 15368
	sll	$v0, $v0, 16
	ori	$v0, $v0, 34406
	mtc1	$f2, $v0
	fmul	$f2, $f2, $f3
	fadd	$f0, $f0, $f2
	li	$v0, 14669
	sll	$v0, $v0, 16
	ori	$v0, $v0, 25782
	mtc1	$f2, $v0
	fmul	$f2, $f2, $f4
	fsub	$f0, $f0, $f2
	li	$a0, 1
	lw	$a1, 32($sp)
	bne	$a1, $a0, bne_else.27708
	j	bne_cont.27709
bne_else.27708:
	li	$v0, -16512
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fmul	$f0, $f0, $f2
bne_cont.27709:
	j	fbge_cont.27707
fbge_else.27706:
	li	$v0, 16329
	sll	$v0, $v0, 16
	ori	$v0, $v0, 4059
	mtc1	$f2, $v0
	fsub	$f0, $f2, $f0
	fmul	$f2, $f0, $f0
	fmul	$f3, $f2, $f0
	fmul	$f3, $f3, $f0
	fmul	$f4, $f3, $f0
	fmul	$f0, $f4, $f0
	li	$v0, 16128
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f4, $v0
	fmul	$f2, $f4, $f2
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f4, $v0
	fsub	$f2, $f4, $f2
	li	$v0, 15658
	sll	$v0, $v0, 16
	ori	$v0, $v0, 42889
	mtc1	$f4, $v0
	fmul	$f3, $f4, $f3
	fadd	$f2, $f2, $f3
	li	$v0, 15027
	sll	$v0, $v0, 16
	ori	$v0, $v0, 33030
	mtc1	$f3, $v0
	fmul	$f0, $f3, $f0
	fsub	$f0, $f2, $f0
	li	$a0, 1
	lw	$a1, 32($sp)
	bne	$a1, $a0, bne_else.27710
	j	bne_cont.27711
bne_else.27710:
	li	$v0, -16512
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fmul	$f0, $f0, $f2
bne_cont.27711:
fbge_cont.27707:
	j	fbge_cont.27705
fbge_else.27704:
	li	$v0, 16201
	sll	$v0, $v0, 16
	ori	$v0, $v0, 4059
	mtc1	$f2, $v0
	fblt	$f2, $f0, fbge_else.27712
	fmul	$f2, $f0, $f0
	fmul	$f2, $f2, $f0
	fmul	$f3, $f2, $f0
	fmul	$f3, $f3, $f0
	fmul	$f4, $f3, $f0
	fmul	$f4, $f4, $f0
	li	$v0, 15914
	sll	$v0, $v0, 16
	ori	$v0, $v0, 43692
	mtc1	$f5, $v0
	fmul	$f2, $f5, $f2
	fsub	$f0, $f0, $f2
	li	$v0, 15368
	sll	$v0, $v0, 16
	ori	$v0, $v0, 34406
	mtc1	$f2, $v0
	fmul	$f2, $f2, $f3
	fadd	$f0, $f0, $f2
	li	$v0, 14669
	sll	$v0, $v0, 16
	ori	$v0, $v0, 25782
	mtc1	$f2, $v0
	fmul	$f2, $f2, $f4
	fsub	$f0, $f0, $f2
	li	$a0, 1
	lw	$a1, 32($sp)
	bne	$a1, $a0, bne_else.27714
	j	bne_cont.27715
bne_else.27714:
	li	$v0, -16512
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fmul	$f0, $f0, $f2
bne_cont.27715:
	j	fbge_cont.27713
fbge_else.27712:
	li	$v0, 16329
	sll	$v0, $v0, 16
	ori	$v0, $v0, 4059
	mtc1	$f2, $v0
	fsub	$f0, $f2, $f0
	fmul	$f2, $f0, $f0
	fmul	$f3, $f2, $f0
	fmul	$f3, $f3, $f0
	fmul	$f4, $f3, $f0
	fmul	$f0, $f4, $f0
	li	$v0, 16128
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f4, $v0
	fmul	$f2, $f4, $f2
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f4, $v0
	fsub	$f2, $f4, $f2
	li	$v0, 15658
	sll	$v0, $v0, 16
	ori	$v0, $v0, 42889
	mtc1	$f4, $v0
	fmul	$f3, $f4, $f3
	fadd	$f2, $f2, $f3
	li	$v0, 15027
	sll	$v0, $v0, 16
	ori	$v0, $v0, 33030
	mtc1	$f3, $v0
	fmul	$f0, $f3, $f0
	fsub	$f0, $f2, $f0
	li	$a0, 1
	lw	$a1, 32($sp)
	bne	$a1, $a0, bne_else.27716
	j	bne_cont.27717
bne_else.27716:
	li	$v0, -16512
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fmul	$f0, $f0, $f2
bne_cont.27717:
fbge_cont.27713:
fbge_cont.27705:
fbge_cont.27689:
	lw	$a0, 8($sp)
	flw	$f2, 4($a0)
	fabs	$f2, $f2
	lw	$a26, 4($sp)
	fsw	$f0, 40($sp)
	fmove	$f0, $f2
	sw	$ra, 52($sp)
	addi	$sp, $sp, 56
	jal	reduction_pi2.2772
	subi	$sp, $sp, 56
	lw	$ra, 52($sp)
	fmove	$f0, $fv
	flw	$f1, 16($sp)
	fblt	$f0, $f1, fbge_else.27719
	li	$v0, 16457
	sll	$v0, $v0, 16
	ori	$v0, $v0, 4059
	mtc1	$f2, $v0
	fsub	$f0, $f0, $f2
	li	$v0, 16329
	sll	$v0, $v0, 16
	ori	$v0, $v0, 4059
	mtc1	$f2, $v0
	fblt	$f0, $f2, fbge_else.27721
	li	$v0, 16457
	sll	$v0, $v0, 16
	ori	$v0, $v0, 4059
	mtc1	$f2, $v0
	fsub	$f0, $f2, $f0
	li	$v0, 16201
	sll	$v0, $v0, 16
	ori	$v0, $v0, 4059
	mtc1	$f2, $v0
	fblt	$f2, $f0, fbge_else.27723
	fmul	$f2, $f0, $f0
	fmul	$f3, $f2, $f0
	fmul	$f3, $f3, $f0
	fmul	$f4, $f3, $f0
	fmul	$f0, $f4, $f0
	li	$v0, 16128
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f4, $v0
	fmul	$f2, $f4, $f2
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f4, $v0
	fsub	$f2, $f4, $f2
	li	$v0, 15658
	sll	$v0, $v0, 16
	ori	$v0, $v0, 42889
	mtc1	$f4, $v0
	fmul	$f3, $f4, $f3
	fadd	$f2, $f2, $f3
	li	$v0, 15027
	sll	$v0, $v0, 16
	ori	$v0, $v0, 33030
	mtc1	$f3, $v0
	fmul	$f0, $f3, $f0
	fsub	$f0, $f2, $f0
	j	fbge_cont.27724
fbge_else.27723:
	li	$v0, 16329
	sll	$v0, $v0, 16
	ori	$v0, $v0, 4059
	mtc1	$f2, $v0
	fsub	$f0, $f2, $f0
	fmul	$f2, $f0, $f0
	fmul	$f2, $f2, $f0
	fmul	$f3, $f2, $f0
	fmul	$f3, $f3, $f0
	fmul	$f4, $f3, $f0
	fmul	$f4, $f4, $f0
	li	$v0, 15914
	sll	$v0, $v0, 16
	ori	$v0, $v0, 43692
	mtc1	$f5, $v0
	fmul	$f2, $f5, $f2
	fsub	$f0, $f0, $f2
	li	$v0, 15368
	sll	$v0, $v0, 16
	ori	$v0, $v0, 34406
	mtc1	$f2, $v0
	fmul	$f2, $f2, $f3
	fadd	$f0, $f0, $f2
	li	$v0, 14669
	sll	$v0, $v0, 16
	ori	$v0, $v0, 25782
	mtc1	$f2, $v0
	fmul	$f2, $f2, $f4
	fsub	$f0, $f0, $f2
fbge_cont.27724:
	j	fbge_cont.27722
fbge_else.27721:
	li	$v0, 16201
	sll	$v0, $v0, 16
	ori	$v0, $v0, 4059
	mtc1	$f2, $v0
	fblt	$f2, $f0, fbge_else.27725
	fmul	$f2, $f0, $f0
	fmul	$f3, $f2, $f0
	fmul	$f3, $f3, $f0
	fmul	$f4, $f3, $f0
	fmul	$f0, $f4, $f0
	li	$v0, 16128
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f4, $v0
	fmul	$f2, $f4, $f2
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f4, $v0
	fsub	$f2, $f4, $f2
	li	$v0, 15658
	sll	$v0, $v0, 16
	ori	$v0, $v0, 42889
	mtc1	$f4, $v0
	fmul	$f3, $f4, $f3
	fadd	$f2, $f2, $f3
	li	$v0, 15027
	sll	$v0, $v0, 16
	ori	$v0, $v0, 33030
	mtc1	$f3, $v0
	fmul	$f0, $f3, $f0
	fsub	$f0, $f2, $f0
	li	$v0, -16512
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fmul	$f0, $f0, $f2
	j	fbge_cont.27726
fbge_else.27725:
	li	$v0, 16329
	sll	$v0, $v0, 16
	ori	$v0, $v0, 4059
	mtc1	$f2, $v0
	fsub	$f0, $f2, $f0
	fmul	$f2, $f0, $f0
	fmul	$f2, $f2, $f0
	fmul	$f3, $f2, $f0
	fmul	$f3, $f3, $f0
	fmul	$f4, $f3, $f0
	fmul	$f4, $f4, $f0
	li	$v0, 15914
	sll	$v0, $v0, 16
	ori	$v0, $v0, 43692
	mtc1	$f5, $v0
	fmul	$f2, $f5, $f2
	fsub	$f0, $f0, $f2
	li	$v0, 15368
	sll	$v0, $v0, 16
	ori	$v0, $v0, 34406
	mtc1	$f2, $v0
	fmul	$f2, $f2, $f3
	fadd	$f0, $f0, $f2
	li	$v0, 14669
	sll	$v0, $v0, 16
	ori	$v0, $v0, 25782
	mtc1	$f2, $v0
	fmul	$f2, $f2, $f4
	fsub	$f0, $f0, $f2
	li	$v0, -16512
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fmul	$f0, $f0, $f2
fbge_cont.27726:
fbge_cont.27722:
	j	fbge_cont.27720
fbge_else.27719:
	li	$v0, 16329
	sll	$v0, $v0, 16
	ori	$v0, $v0, 4059
	mtc1	$f2, $v0
	fblt	$f0, $f2, fbge_else.27727
	li	$v0, 16457
	sll	$v0, $v0, 16
	ori	$v0, $v0, 4059
	mtc1	$f2, $v0
	fsub	$f0, $f2, $f0
	li	$v0, 16201
	sll	$v0, $v0, 16
	ori	$v0, $v0, 4059
	mtc1	$f2, $v0
	fblt	$f2, $f0, fbge_else.27729
	fmul	$f2, $f0, $f0
	fmul	$f3, $f2, $f0
	fmul	$f3, $f3, $f0
	fmul	$f4, $f3, $f0
	fmul	$f0, $f4, $f0
	li	$v0, 16128
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f4, $v0
	fmul	$f2, $f4, $f2
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f4, $v0
	fsub	$f2, $f4, $f2
	li	$v0, 15658
	sll	$v0, $v0, 16
	ori	$v0, $v0, 42889
	mtc1	$f4, $v0
	fmul	$f3, $f4, $f3
	fadd	$f2, $f2, $f3
	li	$v0, 15027
	sll	$v0, $v0, 16
	ori	$v0, $v0, 33030
	mtc1	$f3, $v0
	fmul	$f0, $f3, $f0
	fsub	$f0, $f2, $f0
	li	$v0, -16512
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fmul	$f0, $f0, $f2
	j	fbge_cont.27730
fbge_else.27729:
	li	$v0, 16329
	sll	$v0, $v0, 16
	ori	$v0, $v0, 4059
	mtc1	$f2, $v0
	fsub	$f0, $f2, $f0
	fmul	$f2, $f0, $f0
	fmul	$f2, $f2, $f0
	fmul	$f3, $f2, $f0
	fmul	$f3, $f3, $f0
	fmul	$f4, $f3, $f0
	fmul	$f4, $f4, $f0
	li	$v0, 15914
	sll	$v0, $v0, 16
	ori	$v0, $v0, 43692
	mtc1	$f5, $v0
	fmul	$f2, $f5, $f2
	fsub	$f0, $f0, $f2
	li	$v0, 15368
	sll	$v0, $v0, 16
	ori	$v0, $v0, 34406
	mtc1	$f2, $v0
	fmul	$f2, $f2, $f3
	fadd	$f0, $f0, $f2
	li	$v0, 14669
	sll	$v0, $v0, 16
	ori	$v0, $v0, 25782
	mtc1	$f2, $v0
	fmul	$f2, $f2, $f4
	fsub	$f0, $f0, $f2
	li	$v0, -16512
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fmul	$f0, $f0, $f2
fbge_cont.27730:
	j	fbge_cont.27728
fbge_else.27727:
	li	$v0, 16201
	sll	$v0, $v0, 16
	ori	$v0, $v0, 4059
	mtc1	$f2, $v0
	fblt	$f2, $f0, fbge_else.27731
	fmul	$f2, $f0, $f0
	fmul	$f3, $f2, $f0
	fmul	$f3, $f3, $f0
	fmul	$f4, $f3, $f0
	fmul	$f0, $f4, $f0
	li	$v0, 16128
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f4, $v0
	fmul	$f2, $f4, $f2
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f4, $v0
	fsub	$f2, $f4, $f2
	li	$v0, 15658
	sll	$v0, $v0, 16
	ori	$v0, $v0, 42889
	mtc1	$f4, $v0
	fmul	$f3, $f4, $f3
	fadd	$f2, $f2, $f3
	li	$v0, 15027
	sll	$v0, $v0, 16
	ori	$v0, $v0, 33030
	mtc1	$f3, $v0
	fmul	$f0, $f3, $f0
	fsub	$f0, $f2, $f0
	j	fbge_cont.27732
fbge_else.27731:
	li	$v0, 16329
	sll	$v0, $v0, 16
	ori	$v0, $v0, 4059
	mtc1	$f2, $v0
	fsub	$f0, $f2, $f0
	fmul	$f2, $f0, $f0
	fmul	$f2, $f2, $f0
	fmul	$f3, $f2, $f0
	fmul	$f3, $f3, $f0
	fmul	$f4, $f3, $f0
	fmul	$f4, $f4, $f0
	li	$v0, 15914
	sll	$v0, $v0, 16
	ori	$v0, $v0, 43692
	mtc1	$f5, $v0
	fmul	$f2, $f5, $f2
	fsub	$f0, $f0, $f2
	li	$v0, 15368
	sll	$v0, $v0, 16
	ori	$v0, $v0, 34406
	mtc1	$f2, $v0
	fmul	$f2, $f2, $f3
	fadd	$f0, $f0, $f2
	li	$v0, 14669
	sll	$v0, $v0, 16
	ori	$v0, $v0, 25782
	mtc1	$f2, $v0
	fmul	$f2, $f2, $f4
	fsub	$f0, $f0, $f2
fbge_cont.27732:
fbge_cont.27728:
fbge_cont.27720:
	lw	$a0, 8($sp)
	flw	$f2, 4($a0)
	fabs	$f3, $f2
	mtc1	$f4, $zero
	fblt	$f2, $f4, fbge_else.27733
	li	$a1, 1
	j	fbge_cont.27734
fbge_else.27733:
	li	$a1, -1
fbge_cont.27734:
	lw	$a26, 4($sp)
	fsw	$f0, 48($sp)
	sw	$a1, 56($sp)
	fmove	$f0, $f3
	sw	$ra, 60($sp)
	addi	$sp, $sp, 64
	jal	reduction_pi2.2772
	subi	$sp, $sp, 64
	lw	$ra, 60($sp)
	fmove	$f0, $fv
	flw	$f1, 16($sp)
	fblt	$f0, $f1, fbge_else.27735
	li	$v0, 16457
	sll	$v0, $v0, 16
	ori	$v0, $v0, 4059
	mtc1	$f2, $v0
	fsub	$f0, $f0, $f2
	lw	$a0, 56($sp)
	neg	$a0, $a0
	li	$v0, 16329
	sll	$v0, $v0, 16
	ori	$v0, $v0, 4059
	mtc1	$f2, $v0
	fblt	$f0, $f2, fbge_else.27737
	li	$v0, 16457
	sll	$v0, $v0, 16
	ori	$v0, $v0, 4059
	mtc1	$f2, $v0
	fsub	$f0, $f2, $f0
	li	$v0, 16201
	sll	$v0, $v0, 16
	ori	$v0, $v0, 4059
	mtc1	$f2, $v0
	fblt	$f2, $f0, fbge_else.27739
	fmul	$f2, $f0, $f0
	fmul	$f2, $f2, $f0
	fmul	$f3, $f2, $f0
	fmul	$f3, $f3, $f0
	fmul	$f4, $f3, $f0
	fmul	$f4, $f4, $f0
	li	$v0, 15914
	sll	$v0, $v0, 16
	ori	$v0, $v0, 43692
	mtc1	$f5, $v0
	fmul	$f2, $f5, $f2
	fsub	$f0, $f0, $f2
	li	$v0, 15368
	sll	$v0, $v0, 16
	ori	$v0, $v0, 34406
	mtc1	$f2, $v0
	fmul	$f2, $f2, $f3
	fadd	$f0, $f0, $f2
	li	$v0, 14669
	sll	$v0, $v0, 16
	ori	$v0, $v0, 25782
	mtc1	$f2, $v0
	fmul	$f2, $f2, $f4
	fsub	$f0, $f0, $f2
	li	$a1, 1
	bne	$a0, $a1, bne_else.27741
	j	bne_cont.27742
bne_else.27741:
	li	$v0, -16512
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fmul	$f0, $f0, $f2
bne_cont.27742:
	j	fbge_cont.27740
fbge_else.27739:
	li	$v0, 16329
	sll	$v0, $v0, 16
	ori	$v0, $v0, 4059
	mtc1	$f2, $v0
	fsub	$f0, $f2, $f0
	fmul	$f2, $f0, $f0
	fmul	$f3, $f2, $f0
	fmul	$f3, $f3, $f0
	fmul	$f4, $f3, $f0
	fmul	$f0, $f4, $f0
	li	$v0, 16128
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f4, $v0
	fmul	$f2, $f4, $f2
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f4, $v0
	fsub	$f2, $f4, $f2
	li	$v0, 15658
	sll	$v0, $v0, 16
	ori	$v0, $v0, 42889
	mtc1	$f4, $v0
	fmul	$f3, $f4, $f3
	fadd	$f2, $f2, $f3
	li	$v0, 15027
	sll	$v0, $v0, 16
	ori	$v0, $v0, 33030
	mtc1	$f3, $v0
	fmul	$f0, $f3, $f0
	fsub	$f0, $f2, $f0
	li	$a1, 1
	bne	$a0, $a1, bne_else.27743
	j	bne_cont.27744
bne_else.27743:
	li	$v0, -16512
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fmul	$f0, $f0, $f2
bne_cont.27744:
fbge_cont.27740:
	j	fbge_cont.27738
fbge_else.27737:
	li	$v0, 16201
	sll	$v0, $v0, 16
	ori	$v0, $v0, 4059
	mtc1	$f2, $v0
	fblt	$f2, $f0, fbge_else.27745
	fmul	$f2, $f0, $f0
	fmul	$f2, $f2, $f0
	fmul	$f3, $f2, $f0
	fmul	$f3, $f3, $f0
	fmul	$f4, $f3, $f0
	fmul	$f4, $f4, $f0
	li	$v0, 15914
	sll	$v0, $v0, 16
	ori	$v0, $v0, 43692
	mtc1	$f5, $v0
	fmul	$f2, $f5, $f2
	fsub	$f0, $f0, $f2
	li	$v0, 15368
	sll	$v0, $v0, 16
	ori	$v0, $v0, 34406
	mtc1	$f2, $v0
	fmul	$f2, $f2, $f3
	fadd	$f0, $f0, $f2
	li	$v0, 14669
	sll	$v0, $v0, 16
	ori	$v0, $v0, 25782
	mtc1	$f2, $v0
	fmul	$f2, $f2, $f4
	fsub	$f0, $f0, $f2
	li	$a1, 1
	bne	$a0, $a1, bne_else.27747
	j	bne_cont.27748
bne_else.27747:
	li	$v0, -16512
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fmul	$f0, $f0, $f2
bne_cont.27748:
	j	fbge_cont.27746
fbge_else.27745:
	li	$v0, 16329
	sll	$v0, $v0, 16
	ori	$v0, $v0, 4059
	mtc1	$f2, $v0
	fsub	$f0, $f2, $f0
	fmul	$f2, $f0, $f0
	fmul	$f3, $f2, $f0
	fmul	$f3, $f3, $f0
	fmul	$f4, $f3, $f0
	fmul	$f0, $f4, $f0
	li	$v0, 16128
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f4, $v0
	fmul	$f2, $f4, $f2
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f4, $v0
	fsub	$f2, $f4, $f2
	li	$v0, 15658
	sll	$v0, $v0, 16
	ori	$v0, $v0, 42889
	mtc1	$f4, $v0
	fmul	$f3, $f4, $f3
	fadd	$f2, $f2, $f3
	li	$v0, 15027
	sll	$v0, $v0, 16
	ori	$v0, $v0, 33030
	mtc1	$f3, $v0
	fmul	$f0, $f3, $f0
	fsub	$f0, $f2, $f0
	li	$a1, 1
	bne	$a0, $a1, bne_else.27749
	j	bne_cont.27750
bne_else.27749:
	li	$v0, -16512
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fmul	$f0, $f0, $f2
bne_cont.27750:
fbge_cont.27746:
fbge_cont.27738:
	j	fbge_cont.27736
fbge_else.27735:
	li	$v0, 16329
	sll	$v0, $v0, 16
	ori	$v0, $v0, 4059
	mtc1	$f2, $v0
	fblt	$f0, $f2, fbge_else.27751
	li	$v0, 16457
	sll	$v0, $v0, 16
	ori	$v0, $v0, 4059
	mtc1	$f2, $v0
	fsub	$f0, $f2, $f0
	li	$v0, 16201
	sll	$v0, $v0, 16
	ori	$v0, $v0, 4059
	mtc1	$f2, $v0
	fblt	$f2, $f0, fbge_else.27753
	fmul	$f2, $f0, $f0
	fmul	$f2, $f2, $f0
	fmul	$f3, $f2, $f0
	fmul	$f3, $f3, $f0
	fmul	$f4, $f3, $f0
	fmul	$f4, $f4, $f0
	li	$v0, 15914
	sll	$v0, $v0, 16
	ori	$v0, $v0, 43692
	mtc1	$f5, $v0
	fmul	$f2, $f5, $f2
	fsub	$f0, $f0, $f2
	li	$v0, 15368
	sll	$v0, $v0, 16
	ori	$v0, $v0, 34406
	mtc1	$f2, $v0
	fmul	$f2, $f2, $f3
	fadd	$f0, $f0, $f2
	li	$v0, 14669
	sll	$v0, $v0, 16
	ori	$v0, $v0, 25782
	mtc1	$f2, $v0
	fmul	$f2, $f2, $f4
	fsub	$f0, $f0, $f2
	li	$a0, 1
	lw	$a1, 56($sp)
	bne	$a1, $a0, bne_else.27755
	j	bne_cont.27756
bne_else.27755:
	li	$v0, -16512
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fmul	$f0, $f0, $f2
bne_cont.27756:
	j	fbge_cont.27754
fbge_else.27753:
	li	$v0, 16329
	sll	$v0, $v0, 16
	ori	$v0, $v0, 4059
	mtc1	$f2, $v0
	fsub	$f0, $f2, $f0
	fmul	$f2, $f0, $f0
	fmul	$f3, $f2, $f0
	fmul	$f3, $f3, $f0
	fmul	$f4, $f3, $f0
	fmul	$f0, $f4, $f0
	li	$v0, 16128
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f4, $v0
	fmul	$f2, $f4, $f2
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f4, $v0
	fsub	$f2, $f4, $f2
	li	$v0, 15658
	sll	$v0, $v0, 16
	ori	$v0, $v0, 42889
	mtc1	$f4, $v0
	fmul	$f3, $f4, $f3
	fadd	$f2, $f2, $f3
	li	$v0, 15027
	sll	$v0, $v0, 16
	ori	$v0, $v0, 33030
	mtc1	$f3, $v0
	fmul	$f0, $f3, $f0
	fsub	$f0, $f2, $f0
	li	$a0, 1
	lw	$a1, 56($sp)
	bne	$a1, $a0, bne_else.27757
	j	bne_cont.27758
bne_else.27757:
	li	$v0, -16512
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fmul	$f0, $f0, $f2
bne_cont.27758:
fbge_cont.27754:
	j	fbge_cont.27752
fbge_else.27751:
	li	$v0, 16201
	sll	$v0, $v0, 16
	ori	$v0, $v0, 4059
	mtc1	$f2, $v0
	fblt	$f2, $f0, fbge_else.27759
	fmul	$f2, $f0, $f0
	fmul	$f2, $f2, $f0
	fmul	$f3, $f2, $f0
	fmul	$f3, $f3, $f0
	fmul	$f4, $f3, $f0
	fmul	$f4, $f4, $f0
	li	$v0, 15914
	sll	$v0, $v0, 16
	ori	$v0, $v0, 43692
	mtc1	$f5, $v0
	fmul	$f2, $f5, $f2
	fsub	$f0, $f0, $f2
	li	$v0, 15368
	sll	$v0, $v0, 16
	ori	$v0, $v0, 34406
	mtc1	$f2, $v0
	fmul	$f2, $f2, $f3
	fadd	$f0, $f0, $f2
	li	$v0, 14669
	sll	$v0, $v0, 16
	ori	$v0, $v0, 25782
	mtc1	$f2, $v0
	fmul	$f2, $f2, $f4
	fsub	$f0, $f0, $f2
	li	$a0, 1
	lw	$a1, 56($sp)
	bne	$a1, $a0, bne_else.27761
	j	bne_cont.27762
bne_else.27761:
	li	$v0, -16512
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fmul	$f0, $f0, $f2
bne_cont.27762:
	j	fbge_cont.27760
fbge_else.27759:
	li	$v0, 16329
	sll	$v0, $v0, 16
	ori	$v0, $v0, 4059
	mtc1	$f2, $v0
	fsub	$f0, $f2, $f0
	fmul	$f2, $f0, $f0
	fmul	$f3, $f2, $f0
	fmul	$f3, $f3, $f0
	fmul	$f4, $f3, $f0
	fmul	$f0, $f4, $f0
	li	$v0, 16128
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f4, $v0
	fmul	$f2, $f4, $f2
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f4, $v0
	fsub	$f2, $f4, $f2
	li	$v0, 15658
	sll	$v0, $v0, 16
	ori	$v0, $v0, 42889
	mtc1	$f4, $v0
	fmul	$f3, $f4, $f3
	fadd	$f2, $f2, $f3
	li	$v0, 15027
	sll	$v0, $v0, 16
	ori	$v0, $v0, 33030
	mtc1	$f3, $v0
	fmul	$f0, $f3, $f0
	fsub	$f0, $f2, $f0
	li	$a0, 1
	lw	$a1, 56($sp)
	bne	$a1, $a0, bne_else.27763
	j	bne_cont.27764
bne_else.27763:
	li	$v0, -16512
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fmul	$f0, $f0, $f2
bne_cont.27764:
fbge_cont.27760:
fbge_cont.27752:
fbge_cont.27736:
	lw	$a0, 8($sp)
	flw	$f2, 8($a0)
	fabs	$f2, $f2
	lw	$a26, 4($sp)
	fsw	$f0, 64($sp)
	fmove	$f0, $f2
	sw	$ra, 76($sp)
	addi	$sp, $sp, 80
	jal	reduction_pi2.2772
	subi	$sp, $sp, 80
	lw	$ra, 76($sp)
	fmove	$f0, $fv
	flw	$f1, 16($sp)
	fblt	$f0, $f1, fbge_else.27766
	li	$v0, 16457
	sll	$v0, $v0, 16
	ori	$v0, $v0, 4059
	mtc1	$f2, $v0
	fsub	$f0, $f0, $f2
	li	$v0, 16329
	sll	$v0, $v0, 16
	ori	$v0, $v0, 4059
	mtc1	$f2, $v0
	fblt	$f0, $f2, fbge_else.27768
	li	$v0, 16457
	sll	$v0, $v0, 16
	ori	$v0, $v0, 4059
	mtc1	$f2, $v0
	fsub	$f0, $f2, $f0
	li	$v0, 16201
	sll	$v0, $v0, 16
	ori	$v0, $v0, 4059
	mtc1	$f2, $v0
	fblt	$f2, $f0, fbge_else.27770
	fmul	$f2, $f0, $f0
	fmul	$f3, $f2, $f0
	fmul	$f3, $f3, $f0
	fmul	$f4, $f3, $f0
	fmul	$f0, $f4, $f0
	li	$v0, 16128
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f4, $v0
	fmul	$f2, $f4, $f2
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f4, $v0
	fsub	$f2, $f4, $f2
	li	$v0, 15658
	sll	$v0, $v0, 16
	ori	$v0, $v0, 42889
	mtc1	$f4, $v0
	fmul	$f3, $f4, $f3
	fadd	$f2, $f2, $f3
	li	$v0, 15027
	sll	$v0, $v0, 16
	ori	$v0, $v0, 33030
	mtc1	$f3, $v0
	fmul	$f0, $f3, $f0
	fsub	$f0, $f2, $f0
	j	fbge_cont.27771
fbge_else.27770:
	li	$v0, 16329
	sll	$v0, $v0, 16
	ori	$v0, $v0, 4059
	mtc1	$f2, $v0
	fsub	$f0, $f2, $f0
	fmul	$f2, $f0, $f0
	fmul	$f2, $f2, $f0
	fmul	$f3, $f2, $f0
	fmul	$f3, $f3, $f0
	fmul	$f4, $f3, $f0
	fmul	$f4, $f4, $f0
	li	$v0, 15914
	sll	$v0, $v0, 16
	ori	$v0, $v0, 43692
	mtc1	$f5, $v0
	fmul	$f2, $f5, $f2
	fsub	$f0, $f0, $f2
	li	$v0, 15368
	sll	$v0, $v0, 16
	ori	$v0, $v0, 34406
	mtc1	$f2, $v0
	fmul	$f2, $f2, $f3
	fadd	$f0, $f0, $f2
	li	$v0, 14669
	sll	$v0, $v0, 16
	ori	$v0, $v0, 25782
	mtc1	$f2, $v0
	fmul	$f2, $f2, $f4
	fsub	$f0, $f0, $f2
fbge_cont.27771:
	j	fbge_cont.27769
fbge_else.27768:
	li	$v0, 16201
	sll	$v0, $v0, 16
	ori	$v0, $v0, 4059
	mtc1	$f2, $v0
	fblt	$f2, $f0, fbge_else.27772
	fmul	$f2, $f0, $f0
	fmul	$f3, $f2, $f0
	fmul	$f3, $f3, $f0
	fmul	$f4, $f3, $f0
	fmul	$f0, $f4, $f0
	li	$v0, 16128
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f4, $v0
	fmul	$f2, $f4, $f2
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f4, $v0
	fsub	$f2, $f4, $f2
	li	$v0, 15658
	sll	$v0, $v0, 16
	ori	$v0, $v0, 42889
	mtc1	$f4, $v0
	fmul	$f3, $f4, $f3
	fadd	$f2, $f2, $f3
	li	$v0, 15027
	sll	$v0, $v0, 16
	ori	$v0, $v0, 33030
	mtc1	$f3, $v0
	fmul	$f0, $f3, $f0
	fsub	$f0, $f2, $f0
	li	$v0, -16512
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fmul	$f0, $f0, $f2
	j	fbge_cont.27773
fbge_else.27772:
	li	$v0, 16329
	sll	$v0, $v0, 16
	ori	$v0, $v0, 4059
	mtc1	$f2, $v0
	fsub	$f0, $f2, $f0
	fmul	$f2, $f0, $f0
	fmul	$f2, $f2, $f0
	fmul	$f3, $f2, $f0
	fmul	$f3, $f3, $f0
	fmul	$f4, $f3, $f0
	fmul	$f4, $f4, $f0
	li	$v0, 15914
	sll	$v0, $v0, 16
	ori	$v0, $v0, 43692
	mtc1	$f5, $v0
	fmul	$f2, $f5, $f2
	fsub	$f0, $f0, $f2
	li	$v0, 15368
	sll	$v0, $v0, 16
	ori	$v0, $v0, 34406
	mtc1	$f2, $v0
	fmul	$f2, $f2, $f3
	fadd	$f0, $f0, $f2
	li	$v0, 14669
	sll	$v0, $v0, 16
	ori	$v0, $v0, 25782
	mtc1	$f2, $v0
	fmul	$f2, $f2, $f4
	fsub	$f0, $f0, $f2
	li	$v0, -16512
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fmul	$f0, $f0, $f2
fbge_cont.27773:
fbge_cont.27769:
	j	fbge_cont.27767
fbge_else.27766:
	li	$v0, 16329
	sll	$v0, $v0, 16
	ori	$v0, $v0, 4059
	mtc1	$f2, $v0
	fblt	$f0, $f2, fbge_else.27774
	li	$v0, 16457
	sll	$v0, $v0, 16
	ori	$v0, $v0, 4059
	mtc1	$f2, $v0
	fsub	$f0, $f2, $f0
	li	$v0, 16201
	sll	$v0, $v0, 16
	ori	$v0, $v0, 4059
	mtc1	$f2, $v0
	fblt	$f2, $f0, fbge_else.27776
	fmul	$f2, $f0, $f0
	fmul	$f3, $f2, $f0
	fmul	$f3, $f3, $f0
	fmul	$f4, $f3, $f0
	fmul	$f0, $f4, $f0
	li	$v0, 16128
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f4, $v0
	fmul	$f2, $f4, $f2
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f4, $v0
	fsub	$f2, $f4, $f2
	li	$v0, 15658
	sll	$v0, $v0, 16
	ori	$v0, $v0, 42889
	mtc1	$f4, $v0
	fmul	$f3, $f4, $f3
	fadd	$f2, $f2, $f3
	li	$v0, 15027
	sll	$v0, $v0, 16
	ori	$v0, $v0, 33030
	mtc1	$f3, $v0
	fmul	$f0, $f3, $f0
	fsub	$f0, $f2, $f0
	li	$v0, -16512
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fmul	$f0, $f0, $f2
	j	fbge_cont.27777
fbge_else.27776:
	li	$v0, 16329
	sll	$v0, $v0, 16
	ori	$v0, $v0, 4059
	mtc1	$f2, $v0
	fsub	$f0, $f2, $f0
	fmul	$f2, $f0, $f0
	fmul	$f2, $f2, $f0
	fmul	$f3, $f2, $f0
	fmul	$f3, $f3, $f0
	fmul	$f4, $f3, $f0
	fmul	$f4, $f4, $f0
	li	$v0, 15914
	sll	$v0, $v0, 16
	ori	$v0, $v0, 43692
	mtc1	$f5, $v0
	fmul	$f2, $f5, $f2
	fsub	$f0, $f0, $f2
	li	$v0, 15368
	sll	$v0, $v0, 16
	ori	$v0, $v0, 34406
	mtc1	$f2, $v0
	fmul	$f2, $f2, $f3
	fadd	$f0, $f0, $f2
	li	$v0, 14669
	sll	$v0, $v0, 16
	ori	$v0, $v0, 25782
	mtc1	$f2, $v0
	fmul	$f2, $f2, $f4
	fsub	$f0, $f0, $f2
	li	$v0, -16512
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fmul	$f0, $f0, $f2
fbge_cont.27777:
	j	fbge_cont.27775
fbge_else.27774:
	li	$v0, 16201
	sll	$v0, $v0, 16
	ori	$v0, $v0, 4059
	mtc1	$f2, $v0
	fblt	$f2, $f0, fbge_else.27778
	fmul	$f2, $f0, $f0
	fmul	$f3, $f2, $f0
	fmul	$f3, $f3, $f0
	fmul	$f4, $f3, $f0
	fmul	$f0, $f4, $f0
	li	$v0, 16128
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f4, $v0
	fmul	$f2, $f4, $f2
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f4, $v0
	fsub	$f2, $f4, $f2
	li	$v0, 15658
	sll	$v0, $v0, 16
	ori	$v0, $v0, 42889
	mtc1	$f4, $v0
	fmul	$f3, $f4, $f3
	fadd	$f2, $f2, $f3
	li	$v0, 15027
	sll	$v0, $v0, 16
	ori	$v0, $v0, 33030
	mtc1	$f3, $v0
	fmul	$f0, $f3, $f0
	fsub	$f0, $f2, $f0
	j	fbge_cont.27779
fbge_else.27778:
	li	$v0, 16329
	sll	$v0, $v0, 16
	ori	$v0, $v0, 4059
	mtc1	$f2, $v0
	fsub	$f0, $f2, $f0
	fmul	$f2, $f0, $f0
	fmul	$f2, $f2, $f0
	fmul	$f3, $f2, $f0
	fmul	$f3, $f3, $f0
	fmul	$f4, $f3, $f0
	fmul	$f4, $f4, $f0
	li	$v0, 15914
	sll	$v0, $v0, 16
	ori	$v0, $v0, 43692
	mtc1	$f5, $v0
	fmul	$f2, $f5, $f2
	fsub	$f0, $f0, $f2
	li	$v0, 15368
	sll	$v0, $v0, 16
	ori	$v0, $v0, 34406
	mtc1	$f2, $v0
	fmul	$f2, $f2, $f3
	fadd	$f0, $f0, $f2
	li	$v0, 14669
	sll	$v0, $v0, 16
	ori	$v0, $v0, 25782
	mtc1	$f2, $v0
	fmul	$f2, $f2, $f4
	fsub	$f0, $f0, $f2
fbge_cont.27779:
fbge_cont.27775:
fbge_cont.27767:
	lw	$a0, 8($sp)
	flw	$f2, 8($a0)
	fabs	$f3, $f2
	mtc1	$f4, $zero
	fblt	$f2, $f4, fbge_else.27780
	li	$a1, 1
	j	fbge_cont.27781
fbge_else.27780:
	li	$a1, -1
fbge_cont.27781:
	lw	$a26, 4($sp)
	fsw	$f0, 72($sp)
	sw	$a1, 80($sp)
	fmove	$f0, $f3
	sw	$ra, 84($sp)
	addi	$sp, $sp, 88
	jal	reduction_pi2.2772
	subi	$sp, $sp, 88
	lw	$ra, 84($sp)
	fmove	$f0, $fv
	flw	$f1, 16($sp)
	fblt	$f0, $f1, fbge_else.27782
	li	$v0, 16457
	sll	$v0, $v0, 16
	ori	$v0, $v0, 4059
	mtc1	$f1, $v0
	fsub	$f0, $f0, $f1
	lw	$a0, 80($sp)
	neg	$a0, $a0
	li	$v0, 16329
	sll	$v0, $v0, 16
	ori	$v0, $v0, 4059
	mtc1	$f1, $v0
	fblt	$f0, $f1, fbge_else.27784
	li	$v0, 16457
	sll	$v0, $v0, 16
	ori	$v0, $v0, 4059
	mtc1	$f1, $v0
	fsub	$f0, $f1, $f0
	li	$v0, 16201
	sll	$v0, $v0, 16
	ori	$v0, $v0, 4059
	mtc1	$f1, $v0
	fblt	$f1, $f0, fbge_else.27786
	fmul	$f1, $f0, $f0
	fmul	$f1, $f1, $f0
	fmul	$f2, $f1, $f0
	fmul	$f2, $f2, $f0
	fmul	$f3, $f2, $f0
	fmul	$f3, $f3, $f0
	li	$v0, 15914
	sll	$v0, $v0, 16
	ori	$v0, $v0, 43692
	mtc1	$f4, $v0
	fmul	$f1, $f4, $f1
	fsub	$f0, $f0, $f1
	li	$v0, 15368
	sll	$v0, $v0, 16
	ori	$v0, $v0, 34406
	mtc1	$f1, $v0
	fmul	$f1, $f1, $f2
	fadd	$f0, $f0, $f1
	li	$v0, 14669
	sll	$v0, $v0, 16
	ori	$v0, $v0, 25782
	mtc1	$f1, $v0
	fmul	$f1, $f1, $f3
	fsub	$f0, $f0, $f1
	li	$a1, 1
	bne	$a0, $a1, bne_else.27788
	j	bne_cont.27789
bne_else.27788:
	li	$v0, -16512
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	fmul	$f0, $f0, $f1
bne_cont.27789:
	j	fbge_cont.27787
fbge_else.27786:
	li	$v0, 16329
	sll	$v0, $v0, 16
	ori	$v0, $v0, 4059
	mtc1	$f1, $v0
	fsub	$f0, $f1, $f0
	fmul	$f1, $f0, $f0
	fmul	$f2, $f1, $f0
	fmul	$f2, $f2, $f0
	fmul	$f3, $f2, $f0
	fmul	$f0, $f3, $f0
	li	$v0, 16128
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f3, $v0
	fmul	$f1, $f3, $f1
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f3, $v0
	fsub	$f1, $f3, $f1
	li	$v0, 15658
	sll	$v0, $v0, 16
	ori	$v0, $v0, 42889
	mtc1	$f3, $v0
	fmul	$f2, $f3, $f2
	fadd	$f1, $f1, $f2
	li	$v0, 15027
	sll	$v0, $v0, 16
	ori	$v0, $v0, 33030
	mtc1	$f2, $v0
	fmul	$f0, $f2, $f0
	fsub	$f0, $f1, $f0
	li	$a1, 1
	bne	$a0, $a1, bne_else.27790
	j	bne_cont.27791
bne_else.27790:
	li	$v0, -16512
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	fmul	$f0, $f0, $f1
bne_cont.27791:
fbge_cont.27787:
	j	fbge_cont.27785
fbge_else.27784:
	li	$v0, 16201
	sll	$v0, $v0, 16
	ori	$v0, $v0, 4059
	mtc1	$f1, $v0
	fblt	$f1, $f0, fbge_else.27792
	fmul	$f1, $f0, $f0
	fmul	$f1, $f1, $f0
	fmul	$f2, $f1, $f0
	fmul	$f2, $f2, $f0
	fmul	$f3, $f2, $f0
	fmul	$f3, $f3, $f0
	li	$v0, 15914
	sll	$v0, $v0, 16
	ori	$v0, $v0, 43692
	mtc1	$f4, $v0
	fmul	$f1, $f4, $f1
	fsub	$f0, $f0, $f1
	li	$v0, 15368
	sll	$v0, $v0, 16
	ori	$v0, $v0, 34406
	mtc1	$f1, $v0
	fmul	$f1, $f1, $f2
	fadd	$f0, $f0, $f1
	li	$v0, 14669
	sll	$v0, $v0, 16
	ori	$v0, $v0, 25782
	mtc1	$f1, $v0
	fmul	$f1, $f1, $f3
	fsub	$f0, $f0, $f1
	li	$a1, 1
	bne	$a0, $a1, bne_else.27794
	j	bne_cont.27795
bne_else.27794:
	li	$v0, -16512
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	fmul	$f0, $f0, $f1
bne_cont.27795:
	j	fbge_cont.27793
fbge_else.27792:
	li	$v0, 16329
	sll	$v0, $v0, 16
	ori	$v0, $v0, 4059
	mtc1	$f1, $v0
	fsub	$f0, $f1, $f0
	fmul	$f1, $f0, $f0
	fmul	$f2, $f1, $f0
	fmul	$f2, $f2, $f0
	fmul	$f3, $f2, $f0
	fmul	$f0, $f3, $f0
	li	$v0, 16128
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f3, $v0
	fmul	$f1, $f3, $f1
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f3, $v0
	fsub	$f1, $f3, $f1
	li	$v0, 15658
	sll	$v0, $v0, 16
	ori	$v0, $v0, 42889
	mtc1	$f3, $v0
	fmul	$f2, $f3, $f2
	fadd	$f1, $f1, $f2
	li	$v0, 15027
	sll	$v0, $v0, 16
	ori	$v0, $v0, 33030
	mtc1	$f2, $v0
	fmul	$f0, $f2, $f0
	fsub	$f0, $f1, $f0
	li	$a1, 1
	bne	$a0, $a1, bne_else.27796
	j	bne_cont.27797
bne_else.27796:
	li	$v0, -16512
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	fmul	$f0, $f0, $f1
bne_cont.27797:
fbge_cont.27793:
fbge_cont.27785:
	j	fbge_cont.27783
fbge_else.27782:
	li	$v0, 16329
	sll	$v0, $v0, 16
	ori	$v0, $v0, 4059
	mtc1	$f1, $v0
	fblt	$f0, $f1, fbge_else.27798
	li	$v0, 16457
	sll	$v0, $v0, 16
	ori	$v0, $v0, 4059
	mtc1	$f1, $v0
	fsub	$f0, $f1, $f0
	li	$v0, 16201
	sll	$v0, $v0, 16
	ori	$v0, $v0, 4059
	mtc1	$f1, $v0
	fblt	$f1, $f0, fbge_else.27800
	fmul	$f1, $f0, $f0
	fmul	$f1, $f1, $f0
	fmul	$f2, $f1, $f0
	fmul	$f2, $f2, $f0
	fmul	$f3, $f2, $f0
	fmul	$f3, $f3, $f0
	li	$v0, 15914
	sll	$v0, $v0, 16
	ori	$v0, $v0, 43692
	mtc1	$f4, $v0
	fmul	$f1, $f4, $f1
	fsub	$f0, $f0, $f1
	li	$v0, 15368
	sll	$v0, $v0, 16
	ori	$v0, $v0, 34406
	mtc1	$f1, $v0
	fmul	$f1, $f1, $f2
	fadd	$f0, $f0, $f1
	li	$v0, 14669
	sll	$v0, $v0, 16
	ori	$v0, $v0, 25782
	mtc1	$f1, $v0
	fmul	$f1, $f1, $f3
	fsub	$f0, $f0, $f1
	li	$a0, 1
	lw	$a1, 80($sp)
	bne	$a1, $a0, bne_else.27802
	j	bne_cont.27803
bne_else.27802:
	li	$v0, -16512
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	fmul	$f0, $f0, $f1
bne_cont.27803:
	j	fbge_cont.27801
fbge_else.27800:
	li	$v0, 16329
	sll	$v0, $v0, 16
	ori	$v0, $v0, 4059
	mtc1	$f1, $v0
	fsub	$f0, $f1, $f0
	fmul	$f1, $f0, $f0
	fmul	$f2, $f1, $f0
	fmul	$f2, $f2, $f0
	fmul	$f3, $f2, $f0
	fmul	$f0, $f3, $f0
	li	$v0, 16128
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f3, $v0
	fmul	$f1, $f3, $f1
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f3, $v0
	fsub	$f1, $f3, $f1
	li	$v0, 15658
	sll	$v0, $v0, 16
	ori	$v0, $v0, 42889
	mtc1	$f3, $v0
	fmul	$f2, $f3, $f2
	fadd	$f1, $f1, $f2
	li	$v0, 15027
	sll	$v0, $v0, 16
	ori	$v0, $v0, 33030
	mtc1	$f2, $v0
	fmul	$f0, $f2, $f0
	fsub	$f0, $f1, $f0
	li	$a0, 1
	lw	$a1, 80($sp)
	bne	$a1, $a0, bne_else.27804
	j	bne_cont.27805
bne_else.27804:
	li	$v0, -16512
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	fmul	$f0, $f0, $f1
bne_cont.27805:
fbge_cont.27801:
	j	fbge_cont.27799
fbge_else.27798:
	li	$v0, 16201
	sll	$v0, $v0, 16
	ori	$v0, $v0, 4059
	mtc1	$f1, $v0
	fblt	$f1, $f0, fbge_else.27806
	fmul	$f1, $f0, $f0
	fmul	$f1, $f1, $f0
	fmul	$f2, $f1, $f0
	fmul	$f2, $f2, $f0
	fmul	$f3, $f2, $f0
	fmul	$f3, $f3, $f0
	li	$v0, 15914
	sll	$v0, $v0, 16
	ori	$v0, $v0, 43692
	mtc1	$f4, $v0
	fmul	$f1, $f4, $f1
	fsub	$f0, $f0, $f1
	li	$v0, 15368
	sll	$v0, $v0, 16
	ori	$v0, $v0, 34406
	mtc1	$f1, $v0
	fmul	$f1, $f1, $f2
	fadd	$f0, $f0, $f1
	li	$v0, 14669
	sll	$v0, $v0, 16
	ori	$v0, $v0, 25782
	mtc1	$f1, $v0
	fmul	$f1, $f1, $f3
	fsub	$f0, $f0, $f1
	li	$a0, 1
	lw	$a1, 80($sp)
	bne	$a1, $a0, bne_else.27808
	j	bne_cont.27809
bne_else.27808:
	li	$v0, -16512
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	fmul	$f0, $f0, $f1
bne_cont.27809:
	j	fbge_cont.27807
fbge_else.27806:
	li	$v0, 16329
	sll	$v0, $v0, 16
	ori	$v0, $v0, 4059
	mtc1	$f1, $v0
	fsub	$f0, $f1, $f0
	fmul	$f1, $f0, $f0
	fmul	$f2, $f1, $f0
	fmul	$f2, $f2, $f0
	fmul	$f3, $f2, $f0
	fmul	$f0, $f3, $f0
	li	$v0, 16128
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f3, $v0
	fmul	$f1, $f3, $f1
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f3, $v0
	fsub	$f1, $f3, $f1
	li	$v0, 15658
	sll	$v0, $v0, 16
	ori	$v0, $v0, 42889
	mtc1	$f3, $v0
	fmul	$f2, $f3, $f2
	fadd	$f1, $f1, $f2
	li	$v0, 15027
	sll	$v0, $v0, 16
	ori	$v0, $v0, 33030
	mtc1	$f2, $v0
	fmul	$f0, $f2, $f0
	fsub	$f0, $f1, $f0
	li	$a0, 1
	lw	$a1, 80($sp)
	bne	$a1, $a0, bne_else.27810
	j	bne_cont.27811
bne_else.27810:
	li	$v0, -16512
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	fmul	$f0, $f0, $f1
bne_cont.27811:
fbge_cont.27807:
fbge_cont.27799:
fbge_cont.27783:
	flw	$f1, 72($sp)
	flw	$f2, 48($sp)
	fmul	$f3, $f2, $f1
	flw	$f4, 64($sp)
	flw	$f5, 40($sp)
	fmul	$f6, $f5, $f4
	fmul	$f6, $f6, $f1
	flw	$f7, 24($sp)
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
	lw	$a0, 0($sp)
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
	lw	$a0, 8($sp)
	fsw	$f12, 0($a0)
	fmul	$f12, $f5, $f3
	fmul	$f8, $f12, $f8
	fmul	$f12, $f7, $f9
	fmul	$f0, $f12, $f0
	fadd	$f0, $f8, $f0
	fmul	$f8, $f11, $f1
	fmul	$f2, $f8, $f2
	fadd	$f0, $f0, $f2
	fmul	$f0, $f13, $f0
	fsw	$f0, 4($a0)
	fmul	$f0, $f5, $f3
	fmul	$f0, $f0, $f6
	fmul	$f2, $f7, $f9
	fmul	$f2, $f2, $f10
	fadd	$f0, $f0, $f2
	fmul	$f1, $f11, $f1
	fmul	$f1, $f1, $f4
	fadd	$f0, $f0, $f1
	fmul	$f0, $f13, $f0
	fsw	$f0, 8($a0)
	jr	$ra
read_object.2923:
	lw	$a1, 4($a26)
	li	$a2, 60
	blt	$a0, $a2, bge_else.27813
	jr	$ra
bge_else.27813:
	read_int	$a2
	li	$a3, -1
	sw	$a26, 0($sp)
	sw	$a0, 4($sp)
	bne	$a2, $a3, bne_else.27815
	li	$a0, 0
	j	bne_cont.27816
bne_else.27815:
	read_int	$a3
	read_int	$a4
	read_int	$a5
	li	$a6, 3
	mtc1	$f0, $zero
	sw	$a1, 8($sp)
	sw	$a2, 12($sp)
	sw	$a4, 16($sp)
	sw	$a3, 20($sp)
	sw	$a5, 24($sp)
	move	$a0, $a6
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	min_caml_create_float_array
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	move	$a0, $v0
	read_float	$f0
	fsw	$f0, 0($a0)
	read_float	$f0
	fsw	$f0, 4($a0)
	read_float	$f0
	fsw	$f0, 8($a0)
	li	$a1, 3
	mtc1	$f0, $zero
	sw	$a0, 28($sp)
	move	$a0, $a1
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	min_caml_create_float_array
	subi	$sp, $sp, 40
	lw	$ra, 36($sp)
	move	$a0, $v0
	read_float	$f0
	fsw	$f0, 0($a0)
	read_float	$f0
	fsw	$f0, 4($a0)
	read_float	$f0
	fsw	$f0, 8($a0)
	mtc1	$f0, $zero
	read_float	$f1
	fblt	$f1, $f0, fbge_else.27817
	li	$a1, 0
	j	fbge_cont.27818
fbge_else.27817:
	li	$a1, 1
fbge_cont.27818:
	li	$a2, 2
	mtc1	$f0, $zero
	sw	$a0, 32($sp)
	sw	$a1, 36($sp)
	move	$a0, $a2
	sw	$ra, 44($sp)
	addi	$sp, $sp, 48
	jal	min_caml_create_float_array
	subi	$sp, $sp, 48
	lw	$ra, 44($sp)
	move	$a0, $v0
	read_float	$f0
	fsw	$f0, 0($a0)
	read_float	$f0
	fsw	$f0, 4($a0)
	li	$a1, 3
	mtc1	$f0, $zero
	sw	$a0, 40($sp)
	move	$a0, $a1
	sw	$ra, 44($sp)
	addi	$sp, $sp, 48
	jal	min_caml_create_float_array
	subi	$sp, $sp, 48
	lw	$ra, 44($sp)
	move	$a0, $v0
	read_float	$f0
	fsw	$f0, 0($a0)
	read_float	$f0
	fsw	$f0, 4($a0)
	read_float	$f0
	fsw	$f0, 8($a0)
	li	$a1, 3
	mtc1	$f0, $zero
	sw	$a0, 44($sp)
	move	$a0, $a1
	sw	$ra, 52($sp)
	addi	$sp, $sp, 56
	jal	min_caml_create_float_array
	subi	$sp, $sp, 56
	lw	$ra, 52($sp)
	move	$a0, $v0
	li	$a1, 0
	lw	$a2, 24($sp)
	bne	$a2, $a1, bne_else.27819
	j	bne_cont.27820
bne_else.27819:
	read_float	$f0
	li	$v0, 15502
	sll	$v0, $v0, 16
	ori	$v0, $v0, 64053
	mtc1	$f1, $v0
	fmul	$f0, $f0, $f1
	fsw	$f0, 0($a0)
	read_float	$f0
	li	$v0, 15502
	sll	$v0, $v0, 16
	ori	$v0, $v0, 64053
	mtc1	$f1, $v0
	fmul	$f0, $f0, $f1
	fsw	$f0, 4($a0)
	read_float	$f0
	li	$v0, 15502
	sll	$v0, $v0, 16
	ori	$v0, $v0, 64053
	mtc1	$f1, $v0
	fmul	$f0, $f0, $f1
	fsw	$f0, 8($a0)
bne_cont.27820:
	li	$a1, 2
	lw	$a3, 20($sp)
	bne	$a3, $a1, bne_else.27821
	li	$a1, 1
	j	bne_cont.27822
bne_else.27821:
	lw	$a1, 36($sp)
bne_cont.27822:
	li	$a4, 4
	mtc1	$f0, $zero
	sw	$a1, 48($sp)
	sw	$a0, 52($sp)
	move	$a0, $a4
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
	lw	$a2, 44($sp)
	sw	$a2, 32($a1)
	lw	$a2, 40($sp)
	sw	$a2, 28($a1)
	lw	$a2, 48($sp)
	sw	$a2, 24($a1)
	lw	$a2, 32($sp)
	sw	$a2, 20($a1)
	lw	$a2, 28($sp)
	sw	$a2, 16($a1)
	lw	$a3, 24($sp)
	sw	$a3, 12($a1)
	lw	$a4, 16($sp)
	sw	$a4, 8($a1)
	lw	$a4, 20($sp)
	sw	$a4, 4($a1)
	lw	$a5, 12($sp)
	sw	$a5, 0($a1)
	li	$a5, 48
	lw	$a6, 4($sp)
	sll	$a7, $a6, 2
	add	$a7, $a5, $a7
	sw	$a1, 0($a7)
	li	$a1, 3
	bne	$a4, $a1, bne_else.27823
	flw	$f0, 0($a2)
	mtc1	$f1, $zero
	fbne	$f0, $f1, fbne_else.27825
	mtc1	$f0, $zero
	j	fbne_cont.27826
fbne_else.27825:
	mtc1	$f1, $zero
	fbne	$f0, $f1, fbne_else.27827
	mtc1	$f1, $zero
	j	fbne_cont.27828
fbne_else.27827:
	mtc1	$f1, $zero
	fblt	$f1, $f0, fbge_else.27829
	li	$v0, -16512
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	j	fbge_cont.27830
fbge_else.27829:
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
fbge_cont.27830:
fbne_cont.27828:
	fmul	$f0, $f0, $f0
	finv	$f0, $f0
	fmul	$f0, $f1, $f0
fbne_cont.27826:
	fsw	$f0, 0($a2)
	flw	$f0, 4($a2)
	mtc1	$f1, $zero
	fbne	$f0, $f1, fbne_else.27831
	mtc1	$f0, $zero
	j	fbne_cont.27832
fbne_else.27831:
	mtc1	$f1, $zero
	fbne	$f0, $f1, fbne_else.27833
	mtc1	$f1, $zero
	j	fbne_cont.27834
fbne_else.27833:
	mtc1	$f1, $zero
	fblt	$f1, $f0, fbge_else.27835
	li	$v0, -16512
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	j	fbge_cont.27836
fbge_else.27835:
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
fbge_cont.27836:
fbne_cont.27834:
	fmul	$f0, $f0, $f0
	finv	$f0, $f0
	fmul	$f0, $f1, $f0
fbne_cont.27832:
	fsw	$f0, 4($a2)
	flw	$f0, 8($a2)
	mtc1	$f1, $zero
	fbne	$f0, $f1, fbne_else.27837
	mtc1	$f0, $zero
	j	fbne_cont.27838
fbne_else.27837:
	mtc1	$f1, $zero
	fbne	$f0, $f1, fbne_else.27839
	mtc1	$f1, $zero
	j	fbne_cont.27840
fbne_else.27839:
	mtc1	$f1, $zero
	fblt	$f1, $f0, fbge_else.27841
	li	$v0, -16512
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	j	fbge_cont.27842
fbge_else.27841:
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
fbge_cont.27842:
fbne_cont.27840:
	fmul	$f0, $f0, $f0
	finv	$f0, $f0
	fmul	$f0, $f1, $f0
fbne_cont.27838:
	fsw	$f0, 8($a2)
	j	bne_cont.27824
bne_else.27823:
	li	$a1, 2
	bne	$a4, $a1, bne_else.27843
	li	$a1, 0
	lw	$a4, 36($sp)
	bne	$a4, $a1, bne_else.27845
	li	$a1, 1
	j	bne_cont.27846
bne_else.27845:
	li	$a1, 0
bne_cont.27846:
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
	fbne	$f0, $f1, fbne_else.27847
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f0, $v0
	j	fbne_cont.27848
fbne_else.27847:
	li	$a4, 0
	bne	$a1, $a4, bne_else.27849
	finv	$f0, $f0
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	fmul	$f0, $f1, $f0
	j	bne_cont.27850
bne_else.27849:
	finv	$f0, $f0
	li	$v0, -16512
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	fmul	$f0, $f1, $f0
bne_cont.27850:
fbne_cont.27848:
	flw	$f1, 0($a2)
	fmul	$f1, $f1, $f0
	fsw	$f1, 0($a2)
	flw	$f1, 4($a2)
	fmul	$f1, $f1, $f0
	fsw	$f1, 4($a2)
	flw	$f1, 8($a2)
	fmul	$f0, $f1, $f0
	fsw	$f0, 8($a2)
	j	bne_cont.27844
bne_else.27843:
bne_cont.27844:
bne_cont.27824:
	li	$a1, 0
	bne	$a3, $a1, bne_else.27851
	j	bne_cont.27852
bne_else.27851:
	lw	$a26, 8($sp)
	move	$a1, $a0
	move	$a0, $a2
	sw	$ra, 60($sp)
	addi	$sp, $sp, 64
	jal	rotate_quadratic_matrix.2918
	subi	$sp, $sp, 64
	lw	$ra, 60($sp)
	fmove	$f30, $fv
bne_cont.27852:
	li	$a0, 1
bne_cont.27816:
	li	$a1, 0
	bne	$a0, $a1, beq_else.27853
	li	$a0, 0
	lw	$a1, 4($sp)
	sw	$a1, 0($a0)
	jr	$ra
beq_else.27853:
	lw	$a0, 4($sp)
	addi	$a0, $a0, 1
	lw	$a26, 0($sp)
	lw	$a25, 0($a26)
	j	read_object.2923
read_net_item.2927:
	read_int	$a1
	li	$a2, -1
	bne	$a1, $a2, beq_else.27855
	addi	$a0, $a0, 1
	li	$a1, -1
	j	min_caml_create_array
beq_else.27855:
	addi	$a2, $a0, 1
	sw	$a1, 0($sp)
	sw	$a0, 4($sp)
	move	$a0, $a2
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	read_net_item.2927
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	move	$a0, $v0
	lw	$a1, 4($sp)
	sll	$a1, $a1, 2
	lw	$a2, 0($sp)
	add	$a1, $a0, $a1
	sw	$a2, 0($a1)
	move	$v0, $a0
	jr	$ra
read_or_network.2929:
	li	$a1, 0
	sw	$a0, 0($sp)
	move	$a0, $a1
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	read_net_item.2927
	subi	$sp, $sp, 8
	lw	$ra, 4($sp)
	move	$a1, $v0
	lw	$a0, 0($a1)
	li	$a2, -1
	bne	$a0, $a2, beq_else.27856
	lw	$a0, 0($sp)
	addi	$a0, $a0, 1
	j	min_caml_create_array
beq_else.27856:
	lw	$a0, 0($sp)
	addi	$a2, $a0, 1
	sw	$a1, 4($sp)
	move	$a0, $a2
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	read_or_network.2929
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
read_and_network.2931:
	li	$a1, 0
	sw	$a0, 0($sp)
	move	$a0, $a1
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	read_net_item.2927
	subi	$sp, $sp, 8
	lw	$ra, 4($sp)
	move	$a0, $v0
	lw	$a1, 0($a0)
	li	$a2, -1
	bne	$a1, $a2, beq_else.27857
	jr	$ra
beq_else.27857:
	li	$a1, 332
	lw	$a2, 0($sp)
	sll	$a3, $a2, 2
	add	$a3, $a1, $a3
	sw	$a0, 0($a3)
	addi	$a0, $a2, 1
	j	read_and_network.2931
iter_setup_dirvec_constants.3028:
	li	$a2, 0
	blt	$a1, $a2, bge_else.27859
	li	$a2, 48
	sll	$a3, $a1, 2
	add	$a3, $a2, $a3
	lw	$a2, 0($a3)
	lw	$a3, 4($a0)
	lw	$a4, 0($a0)
	lw	$a5, 4($a2)
	li	$a6, 1
	sw	$a0, 0($sp)
	bne	$a5, $a6, bne_else.27860
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
	fbne	$f0, $f1, fbne_else.27862
	mtc1	$f0, $zero
	fsw	$f0, 4($a0)
	j	fbne_cont.27863
fbne_else.27862:
	lw	$a2, 12($sp)
	lw	$a3, 24($a2)
	mtc1	$f0, $zero
	flw	$f1, 0($a1)
	fblt	$f1, $f0, fbge_else.27864
	li	$a4, 0
	j	fbge_cont.27865
fbge_else.27864:
	li	$a4, 1
fbge_cont.27865:
	xor	$a3, $a3, $a4
	lw	$a4, 16($a2)
	flw	$f0, 0($a4)
	li	$a4, 0
	bne	$a3, $a4, bne_else.27866
	fneg	$f0, $f0
	j	bne_cont.27867
bne_else.27866:
bne_cont.27867:
	fsw	$f0, 0($a0)
	flw	$f0, 0($a1)
	finv	$f0, $f0
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	fmul	$f0, $f1, $f0
	fsw	$f0, 4($a0)
fbne_cont.27863:
	flw	$f0, 4($a1)
	mtc1	$f1, $zero
	fbne	$f0, $f1, fbne_else.27868
	mtc1	$f0, $zero
	fsw	$f0, 12($a0)
	j	fbne_cont.27869
fbne_else.27868:
	lw	$a2, 12($sp)
	lw	$a3, 24($a2)
	mtc1	$f0, $zero
	flw	$f1, 4($a1)
	fblt	$f1, $f0, fbge_else.27870
	li	$a4, 0
	j	fbge_cont.27871
fbge_else.27870:
	li	$a4, 1
fbge_cont.27871:
	xor	$a3, $a3, $a4
	lw	$a4, 16($a2)
	flw	$f0, 4($a4)
	li	$a4, 0
	bne	$a3, $a4, bne_else.27872
	fneg	$f0, $f0
	j	bne_cont.27873
bne_else.27872:
bne_cont.27873:
	fsw	$f0, 8($a0)
	flw	$f0, 4($a1)
	finv	$f0, $f0
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	fmul	$f0, $f1, $f0
	fsw	$f0, 12($a0)
fbne_cont.27869:
	flw	$f0, 8($a1)
	mtc1	$f1, $zero
	fbne	$f0, $f1, fbne_else.27874
	mtc1	$f0, $zero
	fsw	$f0, 20($a0)
	j	fbne_cont.27875
fbne_else.27874:
	lw	$a2, 12($sp)
	lw	$a3, 24($a2)
	mtc1	$f0, $zero
	flw	$f1, 8($a1)
	fblt	$f1, $f0, fbge_else.27876
	li	$a4, 0
	j	fbge_cont.27877
fbge_else.27876:
	li	$a4, 1
fbge_cont.27877:
	xor	$a3, $a3, $a4
	lw	$a2, 16($a2)
	flw	$f0, 8($a2)
	li	$a2, 0
	bne	$a3, $a2, bne_else.27878
	fneg	$f0, $f0
	j	bne_cont.27879
bne_else.27878:
bne_cont.27879:
	fsw	$f0, 16($a0)
	flw	$f0, 8($a1)
	finv	$f0, $f0
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	fmul	$f0, $f1, $f0
	fsw	$f0, 20($a0)
fbne_cont.27875:
	lw	$a1, 8($sp)
	sll	$a2, $a1, 2
	lw	$a3, 4($sp)
	add	$a2, $a3, $a2
	sw	$a0, 0($a2)
	j	bne_cont.27861
bne_else.27860:
	li	$a6, 2
	bne	$a5, $a6, bne_else.27880
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
	fblt	$f1, $f0, fbge_else.27882
	mtc1	$f0, $zero
	fsw	$f0, 0($a0)
	j	fbge_cont.27883
fbge_else.27882:
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
fbge_cont.27883:
	lw	$a1, 8($sp)
	sll	$a2, $a1, 2
	lw	$a3, 4($sp)
	add	$a2, $a3, $a2
	sw	$a0, 0($a2)
	j	bne_cont.27881
bne_else.27880:
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
	bne	$a3, $a4, bne_else.27884
	fmove	$f0, $f3
	j	bne_cont.27885
bne_else.27884:
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
bne_cont.27885:
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
	bne	$a3, $a4, bne_else.27886
	fsw	$f1, 4($a0)
	fsw	$f2, 8($a0)
	fsw	$f3, 12($a0)
	j	bne_cont.27887
bne_else.27886:
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
bne_cont.27887:
	mtc1	$f1, $zero
	fbne	$f0, $f1, fbne_else.27888
	j	fbne_cont.27889
fbne_else.27888:
	finv	$f0, $f0
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	fmul	$f0, $f1, $f0
	fsw	$f0, 16($a0)
fbne_cont.27889:
	lw	$a1, 8($sp)
	sll	$a2, $a1, 2
	lw	$a3, 4($sp)
	add	$a2, $a3, $a2
	sw	$a0, 0($a2)
bne_cont.27881:
bne_cont.27861:
	subi	$a1, $a1, 1
	lw	$a0, 0($sp)
	j	iter_setup_dirvec_constants.3028
bge_else.27859:
	jr	$ra
setup_startp_constants.3033:
	li	$a2, 0
	blt	$a1, $a2, bge_else.27891
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
	bne	$a4, $a5, bne_else.27892
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
	j	bne_cont.27893
bne_else.27892:
	li	$a5, 2
	blt	$a5, $a4, bge_else.27894
	j	bge_cont.27895
bge_else.27894:
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
	bne	$a5, $a6, bne_else.27896
	fmove	$f0, $f3
	j	bne_cont.27897
bne_else.27896:
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
bne_cont.27897:
	li	$a2, 3
	bne	$a4, $a2, bne_else.27898
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	fsub	$f0, $f0, $f1
	j	bne_cont.27899
bne_else.27898:
bne_cont.27899:
	fsw	$f0, 12($a3)
bge_cont.27895:
bne_cont.27893:
	subi	$a1, $a1, 1
	j	setup_startp_constants.3033
bge_else.27891:
	jr	$ra
check_all_inside.3058:
	sll	$a2, $a0, 2
	add	$a2, $a1, $a2
	lw	$a2, 0($a2)
	li	$a3, -1
	bne	$a2, $a3, beq_else.27901
	li	$v0, 1
	jr	$ra
beq_else.27901:
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
	bne	$a3, $a4, bne_else.27902
	lw	$a3, 16($a2)
	flw	$f6, 0($a3)
	fabs	$f3, $f3
	fblt	$f3, $f6, fbge_else.27904
	li	$a3, 0
	j	fbge_cont.27905
fbge_else.27904:
	lw	$a3, 16($a2)
	flw	$f3, 4($a3)
	fabs	$f4, $f4
	fblt	$f4, $f3, fbge_else.27906
	li	$a3, 0
	j	fbge_cont.27907
fbge_else.27906:
	lw	$a3, 16($a2)
	flw	$f3, 8($a3)
	fabs	$f4, $f5
	fblt	$f4, $f3, fbge_else.27908
	li	$a3, 0
	j	fbge_cont.27909
fbge_else.27908:
	li	$a3, 1
fbge_cont.27909:
fbge_cont.27907:
fbge_cont.27905:
	li	$a4, 0
	bne	$a3, $a4, bne_else.27910
	lw	$a2, 24($a2)
	li	$a3, 0
	bne	$a2, $a3, bne_else.27912
	li	$a2, 1
	j	bne_cont.27913
bne_else.27912:
	li	$a2, 0
bne_cont.27913:
	j	bne_cont.27911
bne_else.27910:
	lw	$a2, 24($a2)
bne_cont.27911:
	j	bne_cont.27903
bne_else.27902:
	li	$a4, 2
	bne	$a3, $a4, bne_else.27914
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
	fblt	$f3, $f4, fbge_else.27916
	li	$a3, 0
	j	fbge_cont.27917
fbge_else.27916:
	li	$a3, 1
fbge_cont.27917:
	xor	$a2, $a2, $a3
	li	$a3, 0
	bne	$a2, $a3, bne_else.27918
	li	$a2, 1
	j	bne_cont.27919
bne_else.27918:
	li	$a2, 0
bne_cont.27919:
	j	bne_cont.27915
bne_else.27914:
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
	bne	$a3, $a4, bne_else.27920
	fmove	$f3, $f6
	j	bne_cont.27921
bne_else.27920:
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
bne_cont.27921:
	lw	$a3, 4($a2)
	li	$a4, 3
	bne	$a3, $a4, bne_else.27922
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f4, $v0
	fsub	$f3, $f3, $f4
	j	bne_cont.27923
bne_else.27922:
bne_cont.27923:
	lw	$a2, 24($a2)
	mtc1	$f4, $zero
	fblt	$f3, $f4, fbge_else.27924
	li	$a3, 0
	j	fbge_cont.27925
fbge_else.27924:
	li	$a3, 1
fbge_cont.27925:
	xor	$a2, $a2, $a3
	li	$a3, 0
	bne	$a2, $a3, bne_else.27926
	li	$a2, 1
	j	bne_cont.27927
bne_else.27926:
	li	$a2, 0
bne_cont.27927:
bne_cont.27915:
bne_cont.27903:
	li	$a3, 0
	bne	$a2, $a3, beq_else.27928
	addi	$a0, $a0, 1
	j	check_all_inside.3058
beq_else.27928:
	li	$v0, 0
	jr	$ra
shadow_check_and_group.3064:
	sll	$a2, $a0, 2
	add	$a2, $a1, $a2
	lw	$a2, 0($a2)
	li	$a3, -1
	bne	$a2, $a3, beq_else.27929
	li	$v0, 0
	jr	$ra
beq_else.27929:
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
	bne	$a6, $a7, bne_else.27930
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
	fblt	$f5, $f4, fbge_else.27932
	li	$a7, 0
	j	fbge_cont.27933
fbge_else.27932:
	lw	$a7, 16($a5)
	flw	$f4, 8($a7)
	flw	$f5, 8($a3)
	fmul	$f5, $f3, $f5
	fadd	$f5, $f5, $f2
	fabs	$f5, $f5
	fblt	$f5, $f4, fbge_else.27934
	li	$a7, 0
	j	fbge_cont.27935
fbge_else.27934:
	flw	$f4, 4($a4)
	mtc1	$f5, $zero
	fbne	$f4, $f5, fbne_else.27936
	li	$a7, 0
	j	fbne_cont.27937
fbne_else.27936:
	li	$a7, 1
fbne_cont.27937:
fbge_cont.27935:
fbge_cont.27933:
	bne	$a7, $a6, bne_else.27938
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
	fblt	$f5, $f4, fbge_else.27940
	li	$a6, 0
	j	fbge_cont.27941
fbge_else.27940:
	lw	$a6, 16($a5)
	flw	$f4, 8($a6)
	flw	$f5, 8($a3)
	fmul	$f5, $f3, $f5
	fadd	$f5, $f5, $f2
	fabs	$f5, $f5
	fblt	$f5, $f4, fbge_else.27942
	li	$a6, 0
	j	fbge_cont.27943
fbge_else.27942:
	flw	$f4, 12($a4)
	mtc1	$f5, $zero
	fbne	$f4, $f5, fbne_else.27944
	li	$a6, 0
	j	fbne_cont.27945
fbne_else.27944:
	li	$a6, 1
fbne_cont.27945:
fbge_cont.27943:
fbge_cont.27941:
	li	$a7, 0
	bne	$a6, $a7, bne_else.27946
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
	fblt	$f0, $f3, fbge_else.27948
	li	$a3, 0
	j	fbge_cont.27949
fbge_else.27948:
	lw	$a5, 16($a5)
	flw	$f0, 4($a5)
	flw	$f3, 4($a3)
	fmul	$f3, $f2, $f3
	fadd	$f1, $f3, $f1
	fabs	$f1, $f1
	fblt	$f1, $f0, fbge_else.27950
	li	$a3, 0
	j	fbge_cont.27951
fbge_else.27950:
	flw	$f0, 20($a4)
	mtc1	$f1, $zero
	fbne	$f0, $f1, fbne_else.27952
	li	$a3, 0
	j	fbne_cont.27953
fbne_else.27952:
	li	$a3, 1
fbne_cont.27953:
fbge_cont.27951:
fbge_cont.27949:
	li	$a4, 0
	bne	$a3, $a4, bne_else.27954
	li	$a3, 0
	j	bne_cont.27955
bne_else.27954:
	li	$a3, 540
	fsw	$f2, 0($a3)
	li	$a3, 3
bne_cont.27955:
	j	bne_cont.27947
bne_else.27946:
	li	$a3, 540
	fsw	$f3, 0($a3)
	li	$a3, 2
bne_cont.27947:
	j	bne_cont.27939
bne_else.27938:
	li	$a3, 540
	fsw	$f3, 0($a3)
	li	$a3, 1
bne_cont.27939:
	j	bne_cont.27931
bne_else.27930:
	li	$a3, 2
	bne	$a6, $a3, bne_else.27956
	mtc1	$f3, $zero
	flw	$f4, 0($a4)
	fblt	$f4, $f3, fbge_else.27958
	li	$a3, 0
	j	fbge_cont.27959
fbge_else.27958:
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
fbge_cont.27959:
	j	bne_cont.27957
bne_else.27956:
	flw	$f3, 0($a4)
	mtc1	$f4, $zero
	fbne	$f3, $f4, fbne_else.27960
	li	$a3, 0
	j	fbne_cont.27961
fbne_else.27960:
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
	bne	$a3, $a6, bne_else.27962
	fmove	$f0, $f5
	j	bne_cont.27963
bne_else.27962:
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
bne_cont.27963:
	lw	$a3, 4($a5)
	li	$a6, 3
	bne	$a3, $a6, bne_else.27964
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	fsub	$f0, $f0, $f1
	j	bne_cont.27965
bne_else.27964:
bne_cont.27965:
	fmul	$f1, $f4, $f4
	fmul	$f0, $f3, $f0
	fsub	$f0, $f1, $f0
	mtc1	$f1, $zero
	fblt	$f1, $f0, fbge_else.27966
	li	$a3, 0
	j	fbge_cont.27967
fbge_else.27966:
	lw	$a3, 24($a5)
	li	$a5, 0
	bne	$a3, $a5, bne_else.27968
	li	$a3, 540
	sqrt	$f0, $f0
	fsub	$f0, $f4, $f0
	flw	$f1, 16($a4)
	fmul	$f0, $f0, $f1
	fsw	$f0, 0($a3)
	j	bne_cont.27969
bne_else.27968:
	li	$a3, 540
	sqrt	$f0, $f0
	fadd	$f0, $f4, $f0
	flw	$f1, 16($a4)
	fmul	$f0, $f0, $f1
	fsw	$f0, 0($a3)
bne_cont.27969:
	li	$a3, 1
fbge_cont.27967:
fbne_cont.27961:
bne_cont.27957:
bne_cont.27931:
	li	$a4, 540
	flw	$f0, 0($a4)
	li	$a4, 0
	bne	$a3, $a4, bne_else.27970
	li	$a3, 0
	j	bne_cont.27971
bne_else.27970:
	li	$v0, -16820
	sll	$v0, $v0, 16
	ori	$v0, $v0, 52429
	mtc1	$f1, $v0
	fblt	$f0, $f1, fbge_else.27972
	li	$a3, 0
	j	fbge_cont.27973
fbge_else.27972:
	li	$a3, 1
fbge_cont.27973:
bne_cont.27971:
	li	$a4, 0
	bne	$a3, $a4, beq_else.27974
	li	$a3, 48
	sll	$a2, $a2, 2
	add	$a2, $a3, $a2
	lw	$a2, 0($a2)
	lw	$a2, 24($a2)
	li	$a3, 0
	bne	$a2, $a3, beq_else.27975
	li	$v0, 0
	jr	$ra
beq_else.27975:
	addi	$a0, $a0, 1
	j	shadow_check_and_group.3064
beq_else.27974:
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
	jal	check_all_inside.3058
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	move	$a0, $v0
	li	$a1, 0
	bne	$a0, $a1, beq_else.27976
	lw	$a0, 4($sp)
	addi	$a0, $a0, 1
	lw	$a1, 0($sp)
	j	shadow_check_and_group.3064
beq_else.27976:
	li	$v0, 1
	jr	$ra
shadow_check_one_or_group.3067:
	sll	$a2, $a0, 2
	add	$a2, $a1, $a2
	lw	$a2, 0($a2)
	li	$a3, -1
	bne	$a2, $a3, beq_else.27977
	li	$v0, 0
	jr	$ra
beq_else.27977:
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
	jal	shadow_check_and_group.3064
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	move	$a0, $v0
	li	$a1, 0
	bne	$a0, $a1, beq_else.27978
	lw	$a0, 4($sp)
	addi	$a0, $a0, 1
	lw	$a1, 0($sp)
	j	shadow_check_one_or_group.3067
beq_else.27978:
	li	$v0, 1
	jr	$ra
shadow_check_one_or_matrix.3070:
	sll	$a2, $a0, 2
	add	$a2, $a1, $a2
	lw	$a2, 0($a2)
	lw	$a3, 0($a2)
	li	$a4, -1
	bne	$a3, $a4, beq_else.27979
	li	$v0, 0
	jr	$ra
beq_else.27979:
	li	$a4, 99
	sw	$a2, 0($sp)
	sw	$a1, 4($sp)
	sw	$a0, 8($sp)
	bne	$a3, $a4, bne_else.27980
	li	$a0, 1
	j	bne_cont.27981
bne_else.27980:
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
	bne	$a5, $a7, bne_else.27982
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
	fblt	$f5, $f4, fbge_else.27984
	li	$a7, 0
	j	fbge_cont.27985
fbge_else.27984:
	lw	$a7, 16($a6)
	flw	$f4, 8($a7)
	flw	$f5, 8($a4)
	fmul	$f5, $f3, $f5
	fadd	$f5, $f5, $f2
	fabs	$f5, $f5
	fblt	$f5, $f4, fbge_else.27986
	li	$a7, 0
	j	fbge_cont.27987
fbge_else.27986:
	flw	$f4, 4($a3)
	mtc1	$f5, $zero
	fbne	$f4, $f5, fbne_else.27988
	li	$a7, 0
	j	fbne_cont.27989
fbne_else.27988:
	li	$a7, 1
fbne_cont.27989:
fbge_cont.27987:
fbge_cont.27985:
	bne	$a7, $a5, bne_else.27990
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
	fblt	$f5, $f4, fbge_else.27992
	li	$a5, 0
	j	fbge_cont.27993
fbge_else.27992:
	lw	$a5, 16($a6)
	flw	$f4, 8($a5)
	flw	$f5, 8($a4)
	fmul	$f5, $f3, $f5
	fadd	$f5, $f5, $f2
	fabs	$f5, $f5
	fblt	$f5, $f4, fbge_else.27994
	li	$a5, 0
	j	fbge_cont.27995
fbge_else.27994:
	flw	$f4, 12($a3)
	mtc1	$f5, $zero
	fbne	$f4, $f5, fbne_else.27996
	li	$a5, 0
	j	fbne_cont.27997
fbne_else.27996:
	li	$a5, 1
fbne_cont.27997:
fbge_cont.27995:
fbge_cont.27993:
	li	$a7, 0
	bne	$a5, $a7, bne_else.27998
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
	fblt	$f0, $f3, fbge_else.28000
	li	$a3, 0
	j	fbge_cont.28001
fbge_else.28000:
	lw	$a5, 16($a6)
	flw	$f0, 4($a5)
	flw	$f3, 4($a4)
	fmul	$f3, $f2, $f3
	fadd	$f1, $f3, $f1
	fabs	$f1, $f1
	fblt	$f1, $f0, fbge_else.28002
	li	$a3, 0
	j	fbge_cont.28003
fbge_else.28002:
	flw	$f0, 20($a3)
	mtc1	$f1, $zero
	fbne	$f0, $f1, fbne_else.28004
	li	$a3, 0
	j	fbne_cont.28005
fbne_else.28004:
	li	$a3, 1
fbne_cont.28005:
fbge_cont.28003:
fbge_cont.28001:
	li	$a4, 0
	bne	$a3, $a4, bne_else.28006
	li	$a3, 0
	j	bne_cont.28007
bne_else.28006:
	li	$a3, 540
	fsw	$f2, 0($a3)
	li	$a3, 3
bne_cont.28007:
	j	bne_cont.27999
bne_else.27998:
	li	$a3, 540
	fsw	$f3, 0($a3)
	li	$a3, 2
bne_cont.27999:
	j	bne_cont.27991
bne_else.27990:
	li	$a3, 540
	fsw	$f3, 0($a3)
	li	$a3, 1
bne_cont.27991:
	j	bne_cont.27983
bne_else.27982:
	li	$a4, 2
	bne	$a5, $a4, bne_else.28008
	mtc1	$f3, $zero
	flw	$f4, 0($a3)
	fblt	$f4, $f3, fbge_else.28010
	li	$a3, 0
	j	fbge_cont.28011
fbge_else.28010:
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
fbge_cont.28011:
	j	bne_cont.28009
bne_else.28008:
	flw	$f3, 0($a3)
	mtc1	$f4, $zero
	fbne	$f3, $f4, fbne_else.28012
	li	$a3, 0
	j	fbne_cont.28013
fbne_else.28012:
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
	bne	$a4, $a5, bne_else.28014
	fmove	$f0, $f5
	j	bne_cont.28015
bne_else.28014:
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
bne_cont.28015:
	lw	$a4, 4($a6)
	li	$a5, 3
	bne	$a4, $a5, bne_else.28016
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	fsub	$f0, $f0, $f1
	j	bne_cont.28017
bne_else.28016:
bne_cont.28017:
	fmul	$f1, $f4, $f4
	fmul	$f0, $f3, $f0
	fsub	$f0, $f1, $f0
	mtc1	$f1, $zero
	fblt	$f1, $f0, fbge_else.28018
	li	$a3, 0
	j	fbge_cont.28019
fbge_else.28018:
	lw	$a4, 24($a6)
	li	$a5, 0
	bne	$a4, $a5, bne_else.28020
	li	$a4, 540
	sqrt	$f0, $f0
	fsub	$f0, $f4, $f0
	flw	$f1, 16($a3)
	fmul	$f0, $f0, $f1
	fsw	$f0, 0($a4)
	j	bne_cont.28021
bne_else.28020:
	li	$a4, 540
	sqrt	$f0, $f0
	fadd	$f0, $f4, $f0
	flw	$f1, 16($a3)
	fmul	$f0, $f0, $f1
	fsw	$f0, 0($a4)
bne_cont.28021:
	li	$a3, 1
fbge_cont.28019:
fbne_cont.28013:
bne_cont.28009:
bne_cont.27983:
	li	$a4, 0
	bne	$a3, $a4, bne_else.28022
	li	$a0, 0
	j	bne_cont.28023
bne_else.28022:
	li	$v0, -16948
	sll	$v0, $v0, 16
	ori	$v0, $v0, 52429
	mtc1	$f0, $v0
	li	$a3, 540
	flw	$f1, 0($a3)
	fblt	$f1, $f0, fbge_else.28024
	li	$a0, 0
	j	fbge_cont.28025
fbge_else.28024:
	li	$a3, 1
	move	$a1, $a2
	move	$a0, $a3
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	shadow_check_one_or_group.3067
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	move	$a0, $v0
	li	$a1, 0
	bne	$a0, $a1, bne_else.28026
	li	$a0, 0
	j	bne_cont.28027
bne_else.28026:
	li	$a0, 1
bne_cont.28027:
fbge_cont.28025:
bne_cont.28023:
bne_cont.27981:
	li	$a1, 0
	bne	$a0, $a1, beq_else.28028
	lw	$a0, 8($sp)
	addi	$a0, $a0, 1
	lw	$a1, 4($sp)
	j	shadow_check_one_or_matrix.3070
beq_else.28028:
	li	$a0, 1
	lw	$a1, 0($sp)
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	shadow_check_one_or_group.3067
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	move	$a0, $v0
	li	$a1, 0
	bne	$a0, $a1, beq_else.28029
	lw	$a0, 8($sp)
	addi	$a0, $a0, 1
	lw	$a1, 4($sp)
	j	shadow_check_one_or_matrix.3070
beq_else.28029:
	li	$v0, 1
	jr	$ra
solve_each_element.3073:
	sll	$a3, $a0, 2
	add	$a3, $a1, $a3
	lw	$a3, 0($a3)
	li	$a4, -1
	bne	$a3, $a4, beq_else.28030
	jr	$ra
beq_else.28030:
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
	bne	$a4, $a6, bne_else.28032
	li	$a4, 0
	flw	$f3, 0($a2)
	mtc1	$f4, $zero
	fbne	$f3, $f4, fbne_else.28034
	li	$a6, 0
	j	fbne_cont.28035
fbne_else.28034:
	lw	$a6, 16($a5)
	lw	$a7, 24($a5)
	mtc1	$f3, $zero
	flw	$f4, 0($a2)
	fblt	$f4, $f3, fbge_else.28036
	li	$a8, 0
	j	fbge_cont.28037
fbge_else.28036:
	li	$a8, 1
fbge_cont.28037:
	xor	$a7, $a7, $a8
	flw	$f3, 0($a6)
	li	$a8, 0
	bne	$a7, $a8, bne_else.28038
	fneg	$f3, $f3
	j	bne_cont.28039
bne_else.28038:
bne_cont.28039:
	fsub	$f3, $f3, $f0
	flw	$f4, 0($a2)
	finv	$f4, $f4
	fmul	$f3, $f3, $f4
	flw	$f4, 4($a6)
	flw	$f5, 4($a2)
	fmul	$f5, $f3, $f5
	fadd	$f5, $f5, $f1
	fabs	$f5, $f5
	fblt	$f5, $f4, fbge_else.28040
	li	$a6, 0
	j	fbge_cont.28041
fbge_else.28040:
	flw	$f4, 8($a6)
	flw	$f5, 8($a2)
	fmul	$f5, $f3, $f5
	fadd	$f5, $f5, $f2
	fabs	$f5, $f5
	fblt	$f5, $f4, fbge_else.28042
	li	$a6, 0
	j	fbge_cont.28043
fbge_else.28042:
	li	$a6, 540
	fsw	$f3, 0($a6)
	li	$a6, 1
fbge_cont.28043:
fbge_cont.28041:
fbne_cont.28035:
	bne	$a6, $a4, bne_else.28044
	flw	$f3, 4($a2)
	mtc1	$f4, $zero
	fbne	$f3, $f4, fbne_else.28046
	li	$a4, 0
	j	fbne_cont.28047
fbne_else.28046:
	lw	$a4, 16($a5)
	lw	$a6, 24($a5)
	mtc1	$f3, $zero
	flw	$f4, 4($a2)
	fblt	$f4, $f3, fbge_else.28048
	li	$a7, 0
	j	fbge_cont.28049
fbge_else.28048:
	li	$a7, 1
fbge_cont.28049:
	xor	$a6, $a6, $a7
	flw	$f3, 4($a4)
	li	$a7, 0
	bne	$a6, $a7, bne_else.28050
	fneg	$f3, $f3
	j	bne_cont.28051
bne_else.28050:
bne_cont.28051:
	fsub	$f3, $f3, $f1
	flw	$f4, 4($a2)
	finv	$f4, $f4
	fmul	$f3, $f3, $f4
	flw	$f4, 8($a4)
	flw	$f5, 8($a2)
	fmul	$f5, $f3, $f5
	fadd	$f5, $f5, $f2
	fabs	$f5, $f5
	fblt	$f5, $f4, fbge_else.28052
	li	$a4, 0
	j	fbge_cont.28053
fbge_else.28052:
	flw	$f4, 0($a4)
	flw	$f5, 0($a2)
	fmul	$f5, $f3, $f5
	fadd	$f5, $f5, $f0
	fabs	$f5, $f5
	fblt	$f5, $f4, fbge_else.28054
	li	$a4, 0
	j	fbge_cont.28055
fbge_else.28054:
	li	$a4, 540
	fsw	$f3, 0($a4)
	li	$a4, 1
fbge_cont.28055:
fbge_cont.28053:
fbne_cont.28047:
	li	$a6, 0
	bne	$a4, $a6, bne_else.28056
	flw	$f3, 8($a2)
	mtc1	$f4, $zero
	fbne	$f3, $f4, fbne_else.28058
	li	$a4, 0
	j	fbne_cont.28059
fbne_else.28058:
	lw	$a4, 16($a5)
	lw	$a5, 24($a5)
	mtc1	$f3, $zero
	flw	$f4, 8($a2)
	fblt	$f4, $f3, fbge_else.28060
	li	$a6, 0
	j	fbge_cont.28061
fbge_else.28060:
	li	$a6, 1
fbge_cont.28061:
	xor	$a5, $a5, $a6
	flw	$f3, 8($a4)
	li	$a6, 0
	bne	$a5, $a6, bne_else.28062
	fneg	$f3, $f3
	j	bne_cont.28063
bne_else.28062:
bne_cont.28063:
	fsub	$f2, $f3, $f2
	flw	$f3, 8($a2)
	finv	$f3, $f3
	fmul	$f2, $f2, $f3
	flw	$f3, 0($a4)
	flw	$f4, 0($a2)
	fmul	$f4, $f2, $f4
	fadd	$f0, $f4, $f0
	fabs	$f0, $f0
	fblt	$f0, $f3, fbge_else.28064
	li	$a4, 0
	j	fbge_cont.28065
fbge_else.28064:
	flw	$f0, 4($a4)
	flw	$f3, 4($a2)
	fmul	$f3, $f2, $f3
	fadd	$f1, $f3, $f1
	fabs	$f1, $f1
	fblt	$f1, $f0, fbge_else.28066
	li	$a4, 0
	j	fbge_cont.28067
fbge_else.28066:
	li	$a4, 540
	fsw	$f2, 0($a4)
	li	$a4, 1
fbge_cont.28067:
fbge_cont.28065:
fbne_cont.28059:
	li	$a5, 0
	bne	$a4, $a5, bne_else.28068
	li	$a4, 0
	j	bne_cont.28069
bne_else.28068:
	li	$a4, 3
bne_cont.28069:
	j	bne_cont.28057
bne_else.28056:
	li	$a4, 2
bne_cont.28057:
	j	bne_cont.28045
bne_else.28044:
	li	$a4, 1
bne_cont.28045:
	j	bne_cont.28033
bne_else.28032:
	li	$a6, 2
	bne	$a4, $a6, bne_else.28070
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
	fblt	$f4, $f3, fbge_else.28072
	li	$a4, 0
	j	fbge_cont.28073
fbge_else.28072:
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
fbge_cont.28073:
	j	bne_cont.28071
bne_else.28070:
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
	bne	$a4, $a6, bne_else.28074
	fmove	$f3, $f6
	j	bne_cont.28075
bne_else.28074:
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
bne_cont.28075:
	mtc1	$f4, $zero
	fbne	$f3, $f4, fbne_else.28076
	li	$a4, 0
	j	fbne_cont.28077
fbne_else.28076:
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
	bne	$a4, $a6, bne_else.28078
	fmove	$f4, $f7
	j	bne_cont.28079
bne_else.28078:
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
bne_cont.28079:
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
	bne	$a4, $a6, bne_else.28080
	fmove	$f0, $f5
	j	bne_cont.28081
bne_else.28080:
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
bne_cont.28081:
	lw	$a4, 4($a5)
	li	$a6, 3
	bne	$a4, $a6, bne_else.28082
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	fsub	$f0, $f0, $f1
	j	bne_cont.28083
bne_else.28082:
bne_cont.28083:
	fmul	$f1, $f4, $f4
	fmul	$f0, $f3, $f0
	fsub	$f0, $f1, $f0
	mtc1	$f1, $zero
	fblt	$f1, $f0, fbge_else.28084
	li	$a4, 0
	j	fbge_cont.28085
fbge_else.28084:
	sqrt	$f0, $f0
	lw	$a4, 24($a5)
	li	$a5, 0
	bne	$a4, $a5, bne_else.28086
	fneg	$f0, $f0
	j	bne_cont.28087
bne_else.28086:
bne_cont.28087:
	li	$a4, 540
	fsub	$f0, $f0, $f4
	finv	$f1, $f3
	fmul	$f0, $f0, $f1
	fsw	$f0, 0($a4)
	li	$a4, 1
fbge_cont.28085:
fbne_cont.28077:
bne_cont.28071:
bne_cont.28033:
	li	$a5, 0
	bne	$a4, $a5, beq_else.28088
	li	$a4, 48
	sll	$a3, $a3, 2
	add	$a3, $a4, $a3
	lw	$a3, 0($a3)
	lw	$a3, 24($a3)
	li	$a4, 0
	bne	$a3, $a4, beq_else.28089
	jr	$ra
beq_else.28089:
	addi	$a0, $a0, 1
	j	solve_each_element.3073
beq_else.28088:
	li	$a5, 540
	flw	$f0, 0($a5)
	mtc1	$f1, $zero
	sw	$a2, 0($sp)
	sw	$a1, 4($sp)
	sw	$a0, 8($sp)
	fblt	$f1, $f0, fbge_else.28091
	j	fbge_cont.28092
fbge_else.28091:
	li	$a5, 548
	flw	$f1, 0($a5)
	fblt	$f0, $f1, fbge_else.28093
	j	fbge_cont.28094
fbge_else.28093:
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
	jal	check_all_inside.3058
	subi	$sp, $sp, 64
	lw	$ra, 60($sp)
	move	$a0, $v0
	li	$a1, 0
	bne	$a0, $a1, bne_else.28096
	j	bne_cont.28097
bne_else.28096:
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
bne_cont.28097:
fbge_cont.28094:
fbge_cont.28092:
	lw	$a0, 8($sp)
	addi	$a0, $a0, 1
	lw	$a1, 4($sp)
	lw	$a2, 0($sp)
	j	solve_each_element.3073
solve_one_or_network.3077:
	sll	$a3, $a0, 2
	add	$a3, $a1, $a3
	lw	$a3, 0($a3)
	li	$a4, -1
	bne	$a3, $a4, beq_else.28098
	jr	$ra
beq_else.28098:
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
	jal	solve_each_element.3073
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	fmove	$f30, $fv
	lw	$a0, 8($sp)
	addi	$a0, $a0, 1
	lw	$a1, 4($sp)
	lw	$a2, 0($sp)
	j	solve_one_or_network.3077
trace_or_matrix.3081:
	sll	$a3, $a0, 2
	add	$a3, $a1, $a3
	lw	$a3, 0($a3)
	lw	$a4, 0($a3)
	li	$a5, -1
	bne	$a4, $a5, beq_else.28100
	jr	$ra
beq_else.28100:
	li	$a5, 99
	sw	$a2, 0($sp)
	sw	$a1, 4($sp)
	sw	$a0, 8($sp)
	bne	$a4, $a5, bne_else.28102
	li	$a4, 1
	move	$a1, $a3
	move	$a0, $a4
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	solve_one_or_network.3077
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	fmove	$f30, $fv
	j	bne_cont.28103
bne_else.28102:
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
	bne	$a5, $a6, bne_else.28104
	li	$a5, 0
	flw	$f3, 0($a2)
	mtc1	$f4, $zero
	fbne	$f3, $f4, fbne_else.28106
	li	$a6, 0
	j	fbne_cont.28107
fbne_else.28106:
	lw	$a6, 16($a4)
	lw	$a7, 24($a4)
	mtc1	$f3, $zero
	flw	$f4, 0($a2)
	fblt	$f4, $f3, fbge_else.28108
	li	$a8, 0
	j	fbge_cont.28109
fbge_else.28108:
	li	$a8, 1
fbge_cont.28109:
	xor	$a7, $a7, $a8
	flw	$f3, 0($a6)
	li	$a8, 0
	bne	$a7, $a8, bne_else.28110
	fneg	$f3, $f3
	j	bne_cont.28111
bne_else.28110:
bne_cont.28111:
	fsub	$f3, $f3, $f0
	flw	$f4, 0($a2)
	finv	$f4, $f4
	fmul	$f3, $f3, $f4
	flw	$f4, 4($a6)
	flw	$f5, 4($a2)
	fmul	$f5, $f3, $f5
	fadd	$f5, $f5, $f1
	fabs	$f5, $f5
	fblt	$f5, $f4, fbge_else.28112
	li	$a6, 0
	j	fbge_cont.28113
fbge_else.28112:
	flw	$f4, 8($a6)
	flw	$f5, 8($a2)
	fmul	$f5, $f3, $f5
	fadd	$f5, $f5, $f2
	fabs	$f5, $f5
	fblt	$f5, $f4, fbge_else.28114
	li	$a6, 0
	j	fbge_cont.28115
fbge_else.28114:
	li	$a6, 540
	fsw	$f3, 0($a6)
	li	$a6, 1
fbge_cont.28115:
fbge_cont.28113:
fbne_cont.28107:
	bne	$a6, $a5, bne_else.28116
	flw	$f3, 4($a2)
	mtc1	$f4, $zero
	fbne	$f3, $f4, fbne_else.28118
	li	$a5, 0
	j	fbne_cont.28119
fbne_else.28118:
	lw	$a5, 16($a4)
	lw	$a6, 24($a4)
	mtc1	$f3, $zero
	flw	$f4, 4($a2)
	fblt	$f4, $f3, fbge_else.28120
	li	$a7, 0
	j	fbge_cont.28121
fbge_else.28120:
	li	$a7, 1
fbge_cont.28121:
	xor	$a6, $a6, $a7
	flw	$f3, 4($a5)
	li	$a7, 0
	bne	$a6, $a7, bne_else.28122
	fneg	$f3, $f3
	j	bne_cont.28123
bne_else.28122:
bne_cont.28123:
	fsub	$f3, $f3, $f1
	flw	$f4, 4($a2)
	finv	$f4, $f4
	fmul	$f3, $f3, $f4
	flw	$f4, 8($a5)
	flw	$f5, 8($a2)
	fmul	$f5, $f3, $f5
	fadd	$f5, $f5, $f2
	fabs	$f5, $f5
	fblt	$f5, $f4, fbge_else.28124
	li	$a5, 0
	j	fbge_cont.28125
fbge_else.28124:
	flw	$f4, 0($a5)
	flw	$f5, 0($a2)
	fmul	$f5, $f3, $f5
	fadd	$f5, $f5, $f0
	fabs	$f5, $f5
	fblt	$f5, $f4, fbge_else.28126
	li	$a5, 0
	j	fbge_cont.28127
fbge_else.28126:
	li	$a5, 540
	fsw	$f3, 0($a5)
	li	$a5, 1
fbge_cont.28127:
fbge_cont.28125:
fbne_cont.28119:
	li	$a6, 0
	bne	$a5, $a6, bne_else.28128
	flw	$f3, 8($a2)
	mtc1	$f4, $zero
	fbne	$f3, $f4, fbne_else.28130
	li	$a4, 0
	j	fbne_cont.28131
fbne_else.28130:
	lw	$a5, 16($a4)
	lw	$a4, 24($a4)
	mtc1	$f3, $zero
	flw	$f4, 8($a2)
	fblt	$f4, $f3, fbge_else.28132
	li	$a6, 0
	j	fbge_cont.28133
fbge_else.28132:
	li	$a6, 1
fbge_cont.28133:
	xor	$a4, $a4, $a6
	flw	$f3, 8($a5)
	li	$a6, 0
	bne	$a4, $a6, bne_else.28134
	fneg	$f3, $f3
	j	bne_cont.28135
bne_else.28134:
bne_cont.28135:
	fsub	$f2, $f3, $f2
	flw	$f3, 8($a2)
	finv	$f3, $f3
	fmul	$f2, $f2, $f3
	flw	$f3, 0($a5)
	flw	$f4, 0($a2)
	fmul	$f4, $f2, $f4
	fadd	$f0, $f4, $f0
	fabs	$f0, $f0
	fblt	$f0, $f3, fbge_else.28136
	li	$a4, 0
	j	fbge_cont.28137
fbge_else.28136:
	flw	$f0, 4($a5)
	flw	$f3, 4($a2)
	fmul	$f3, $f2, $f3
	fadd	$f1, $f3, $f1
	fabs	$f1, $f1
	fblt	$f1, $f0, fbge_else.28138
	li	$a4, 0
	j	fbge_cont.28139
fbge_else.28138:
	li	$a4, 540
	fsw	$f2, 0($a4)
	li	$a4, 1
fbge_cont.28139:
fbge_cont.28137:
fbne_cont.28131:
	li	$a5, 0
	bne	$a4, $a5, bne_else.28140
	li	$a4, 0
	j	bne_cont.28141
bne_else.28140:
	li	$a4, 3
bne_cont.28141:
	j	bne_cont.28129
bne_else.28128:
	li	$a4, 2
bne_cont.28129:
	j	bne_cont.28117
bne_else.28116:
	li	$a4, 1
bne_cont.28117:
	j	bne_cont.28105
bne_else.28104:
	li	$a6, 2
	bne	$a5, $a6, bne_else.28142
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
	fblt	$f4, $f3, fbge_else.28144
	li	$a4, 0
	j	fbge_cont.28145
fbge_else.28144:
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
fbge_cont.28145:
	j	bne_cont.28143
bne_else.28142:
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
	bne	$a5, $a6, bne_else.28146
	fmove	$f3, $f6
	j	bne_cont.28147
bne_else.28146:
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
bne_cont.28147:
	mtc1	$f4, $zero
	fbne	$f3, $f4, fbne_else.28148
	li	$a4, 0
	j	fbne_cont.28149
fbne_else.28148:
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
	bne	$a5, $a6, bne_else.28150
	fmove	$f4, $f7
	j	bne_cont.28151
bne_else.28150:
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
bne_cont.28151:
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
	bne	$a5, $a6, bne_else.28152
	fmove	$f0, $f5
	j	bne_cont.28153
bne_else.28152:
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
bne_cont.28153:
	lw	$a5, 4($a4)
	li	$a6, 3
	bne	$a5, $a6, bne_else.28154
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	fsub	$f0, $f0, $f1
	j	bne_cont.28155
bne_else.28154:
bne_cont.28155:
	fmul	$f1, $f4, $f4
	fmul	$f0, $f3, $f0
	fsub	$f0, $f1, $f0
	mtc1	$f1, $zero
	fblt	$f1, $f0, fbge_else.28156
	li	$a4, 0
	j	fbge_cont.28157
fbge_else.28156:
	sqrt	$f0, $f0
	lw	$a4, 24($a4)
	li	$a5, 0
	bne	$a4, $a5, bne_else.28158
	fneg	$f0, $f0
	j	bne_cont.28159
bne_else.28158:
bne_cont.28159:
	li	$a4, 540
	fsub	$f0, $f0, $f4
	finv	$f1, $f3
	fmul	$f0, $f0, $f1
	fsw	$f0, 0($a4)
	li	$a4, 1
fbge_cont.28157:
fbne_cont.28149:
bne_cont.28143:
bne_cont.28105:
	li	$a5, 0
	bne	$a4, $a5, bne_else.28160
	j	bne_cont.28161
bne_else.28160:
	li	$a4, 540
	flw	$f0, 0($a4)
	li	$a4, 548
	flw	$f1, 0($a4)
	fblt	$f0, $f1, fbge_else.28162
	j	fbge_cont.28163
fbge_else.28162:
	li	$a4, 1
	move	$a1, $a3
	move	$a0, $a4
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	solve_one_or_network.3077
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	fmove	$f30, $fv
fbge_cont.28163:
bne_cont.28161:
bne_cont.28103:
	lw	$a0, 8($sp)
	addi	$a0, $a0, 1
	lw	$a1, 4($sp)
	lw	$a2, 0($sp)
	j	trace_or_matrix.3081
solve_each_element_fast.3087:
	lw	$a3, 0($a2)
	sll	$a4, $a0, 2
	add	$a4, $a1, $a4
	lw	$a4, 0($a4)
	li	$a5, -1
	bne	$a4, $a5, beq_else.28164
	jr	$ra
beq_else.28164:
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
	bne	$a8, $a9, bne_else.28166
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
	fblt	$f5, $f4, fbge_else.28168
	li	$a9, 0
	j	fbge_cont.28169
fbge_else.28168:
	lw	$a9, 16($a5)
	flw	$f4, 8($a9)
	flw	$f5, 8($a6)
	fmul	$f5, $f3, $f5
	fadd	$f5, $f5, $f2
	fabs	$f5, $f5
	fblt	$f5, $f4, fbge_else.28170
	li	$a9, 0
	j	fbge_cont.28171
fbge_else.28170:
	flw	$f4, 4($a7)
	mtc1	$f5, $zero
	fbne	$f4, $f5, fbne_else.28172
	li	$a9, 0
	j	fbne_cont.28173
fbne_else.28172:
	li	$a9, 1
fbne_cont.28173:
fbge_cont.28171:
fbge_cont.28169:
	bne	$a9, $a8, bne_else.28174
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
	fblt	$f5, $f4, fbge_else.28176
	li	$a8, 0
	j	fbge_cont.28177
fbge_else.28176:
	lw	$a8, 16($a5)
	flw	$f4, 8($a8)
	flw	$f5, 8($a6)
	fmul	$f5, $f3, $f5
	fadd	$f5, $f5, $f2
	fabs	$f5, $f5
	fblt	$f5, $f4, fbge_else.28178
	li	$a8, 0
	j	fbge_cont.28179
fbge_else.28178:
	flw	$f4, 12($a7)
	mtc1	$f5, $zero
	fbne	$f4, $f5, fbne_else.28180
	li	$a8, 0
	j	fbne_cont.28181
fbne_else.28180:
	li	$a8, 1
fbne_cont.28181:
fbge_cont.28179:
fbge_cont.28177:
	li	$a9, 0
	bne	$a8, $a9, bne_else.28182
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
	fblt	$f0, $f3, fbge_else.28184
	li	$a5, 0
	j	fbge_cont.28185
fbge_else.28184:
	lw	$a5, 16($a5)
	flw	$f0, 4($a5)
	flw	$f3, 4($a6)
	fmul	$f3, $f2, $f3
	fadd	$f1, $f3, $f1
	fabs	$f1, $f1
	fblt	$f1, $f0, fbge_else.28186
	li	$a5, 0
	j	fbge_cont.28187
fbge_else.28186:
	flw	$f0, 20($a7)
	mtc1	$f1, $zero
	fbne	$f0, $f1, fbne_else.28188
	li	$a5, 0
	j	fbne_cont.28189
fbne_else.28188:
	li	$a5, 1
fbne_cont.28189:
fbge_cont.28187:
fbge_cont.28185:
	li	$a6, 0
	bne	$a5, $a6, bne_else.28190
	li	$a5, 0
	j	bne_cont.28191
bne_else.28190:
	li	$a5, 540
	fsw	$f2, 0($a5)
	li	$a5, 3
bne_cont.28191:
	j	bne_cont.28183
bne_else.28182:
	li	$a5, 540
	fsw	$f3, 0($a5)
	li	$a5, 2
bne_cont.28183:
	j	bne_cont.28175
bne_else.28174:
	li	$a5, 540
	fsw	$f3, 0($a5)
	li	$a5, 1
bne_cont.28175:
	j	bne_cont.28167
bne_else.28166:
	li	$a9, 2
	bne	$a8, $a9, bne_else.28192
	mtc1	$f0, $zero
	flw	$f1, 0($a7)
	fblt	$f1, $f0, fbge_else.28194
	li	$a5, 0
	j	fbge_cont.28195
fbge_else.28194:
	li	$a5, 540
	flw	$f0, 0($a7)
	flw	$f1, 12($a6)
	fmul	$f0, $f0, $f1
	fsw	$f0, 0($a5)
	li	$a5, 1
fbge_cont.28195:
	j	bne_cont.28193
bne_else.28192:
	flw	$f3, 0($a7)
	mtc1	$f4, $zero
	fbne	$f3, $f4, fbne_else.28196
	li	$a5, 0
	j	fbne_cont.28197
fbne_else.28196:
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
	fblt	$f2, $f1, fbge_else.28198
	li	$a5, 0
	j	fbge_cont.28199
fbge_else.28198:
	lw	$a5, 24($a5)
	li	$a6, 0
	bne	$a5, $a6, bne_else.28200
	li	$a5, 540
	sqrt	$f1, $f1
	fsub	$f0, $f0, $f1
	flw	$f1, 16($a7)
	fmul	$f0, $f0, $f1
	fsw	$f0, 0($a5)
	j	bne_cont.28201
bne_else.28200:
	li	$a5, 540
	sqrt	$f1, $f1
	fadd	$f0, $f0, $f1
	flw	$f1, 16($a7)
	fmul	$f0, $f0, $f1
	fsw	$f0, 0($a5)
bne_cont.28201:
	li	$a5, 1
fbge_cont.28199:
fbne_cont.28197:
bne_cont.28193:
bne_cont.28167:
	li	$a6, 0
	bne	$a5, $a6, beq_else.28202
	li	$a3, 48
	sll	$a4, $a4, 2
	add	$a4, $a3, $a4
	lw	$a3, 0($a4)
	lw	$a3, 24($a3)
	li	$a4, 0
	bne	$a3, $a4, beq_else.28203
	jr	$ra
beq_else.28203:
	addi	$a0, $a0, 1
	j	solve_each_element_fast.3087
beq_else.28202:
	li	$a6, 540
	flw	$f0, 0($a6)
	mtc1	$f1, $zero
	sw	$a2, 0($sp)
	sw	$a1, 4($sp)
	sw	$a0, 8($sp)
	fblt	$f1, $f0, fbge_else.28205
	j	fbge_cont.28206
fbge_else.28205:
	li	$a6, 548
	flw	$f1, 0($a6)
	fblt	$f0, $f1, fbge_else.28207
	j	fbge_cont.28208
fbge_else.28207:
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
	jal	check_all_inside.3058
	subi	$sp, $sp, 64
	lw	$ra, 60($sp)
	move	$a0, $v0
	li	$a1, 0
	bne	$a0, $a1, bne_else.28210
	j	bne_cont.28211
bne_else.28210:
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
bne_cont.28211:
fbge_cont.28208:
fbge_cont.28206:
	lw	$a0, 8($sp)
	addi	$a0, $a0, 1
	lw	$a1, 4($sp)
	lw	$a2, 0($sp)
	j	solve_each_element_fast.3087
solve_one_or_network_fast.3091:
	sll	$a3, $a0, 2
	add	$a3, $a1, $a3
	lw	$a3, 0($a3)
	li	$a4, -1
	bne	$a3, $a4, beq_else.28212
	jr	$ra
beq_else.28212:
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
	jal	solve_each_element_fast.3087
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	fmove	$f30, $fv
	lw	$a0, 8($sp)
	addi	$a0, $a0, 1
	lw	$a1, 4($sp)
	lw	$a2, 0($sp)
	j	solve_one_or_network_fast.3091
trace_or_matrix_fast.3095:
	sll	$a3, $a0, 2
	add	$a3, $a1, $a3
	lw	$a3, 0($a3)
	lw	$a4, 0($a3)
	li	$a5, -1
	bne	$a4, $a5, beq_else.28214
	jr	$ra
beq_else.28214:
	li	$a5, 99
	sw	$a2, 0($sp)
	sw	$a1, 4($sp)
	sw	$a0, 8($sp)
	bne	$a4, $a5, bne_else.28216
	li	$a4, 1
	move	$a1, $a3
	move	$a0, $a4
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	solve_one_or_network_fast.3091
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	fmove	$f30, $fv
	j	bne_cont.28217
bne_else.28216:
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
	bne	$a7, $a8, bne_else.28218
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
	fblt	$f5, $f4, fbge_else.28220
	li	$a8, 0
	j	fbge_cont.28221
fbge_else.28220:
	lw	$a8, 16($a5)
	flw	$f4, 8($a8)
	flw	$f5, 8($a6)
	fmul	$f5, $f3, $f5
	fadd	$f5, $f5, $f2
	fabs	$f5, $f5
	fblt	$f5, $f4, fbge_else.28222
	li	$a8, 0
	j	fbge_cont.28223
fbge_else.28222:
	flw	$f4, 4($a4)
	mtc1	$f5, $zero
	fbne	$f4, $f5, fbne_else.28224
	li	$a8, 0
	j	fbne_cont.28225
fbne_else.28224:
	li	$a8, 1
fbne_cont.28225:
fbge_cont.28223:
fbge_cont.28221:
	bne	$a8, $a7, bne_else.28226
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
	fblt	$f5, $f4, fbge_else.28228
	li	$a7, 0
	j	fbge_cont.28229
fbge_else.28228:
	lw	$a7, 16($a5)
	flw	$f4, 8($a7)
	flw	$f5, 8($a6)
	fmul	$f5, $f3, $f5
	fadd	$f5, $f5, $f2
	fabs	$f5, $f5
	fblt	$f5, $f4, fbge_else.28230
	li	$a7, 0
	j	fbge_cont.28231
fbge_else.28230:
	flw	$f4, 12($a4)
	mtc1	$f5, $zero
	fbne	$f4, $f5, fbne_else.28232
	li	$a7, 0
	j	fbne_cont.28233
fbne_else.28232:
	li	$a7, 1
fbne_cont.28233:
fbge_cont.28231:
fbge_cont.28229:
	li	$a8, 0
	bne	$a7, $a8, bne_else.28234
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
	fblt	$f0, $f3, fbge_else.28236
	li	$a4, 0
	j	fbge_cont.28237
fbge_else.28236:
	lw	$a5, 16($a5)
	flw	$f0, 4($a5)
	flw	$f3, 4($a6)
	fmul	$f3, $f2, $f3
	fadd	$f1, $f3, $f1
	fabs	$f1, $f1
	fblt	$f1, $f0, fbge_else.28238
	li	$a4, 0
	j	fbge_cont.28239
fbge_else.28238:
	flw	$f0, 20($a4)
	mtc1	$f1, $zero
	fbne	$f0, $f1, fbne_else.28240
	li	$a4, 0
	j	fbne_cont.28241
fbne_else.28240:
	li	$a4, 1
fbne_cont.28241:
fbge_cont.28239:
fbge_cont.28237:
	li	$a5, 0
	bne	$a4, $a5, bne_else.28242
	li	$a4, 0
	j	bne_cont.28243
bne_else.28242:
	li	$a4, 540
	fsw	$f2, 0($a4)
	li	$a4, 3
bne_cont.28243:
	j	bne_cont.28235
bne_else.28234:
	li	$a4, 540
	fsw	$f3, 0($a4)
	li	$a4, 2
bne_cont.28235:
	j	bne_cont.28227
bne_else.28226:
	li	$a4, 540
	fsw	$f3, 0($a4)
	li	$a4, 1
bne_cont.28227:
	j	bne_cont.28219
bne_else.28218:
	li	$a8, 2
	bne	$a7, $a8, bne_else.28244
	mtc1	$f0, $zero
	flw	$f1, 0($a4)
	fblt	$f1, $f0, fbge_else.28246
	li	$a4, 0
	j	fbge_cont.28247
fbge_else.28246:
	li	$a5, 540
	flw	$f0, 0($a4)
	flw	$f1, 12($a6)
	fmul	$f0, $f0, $f1
	fsw	$f0, 0($a5)
	li	$a4, 1
fbge_cont.28247:
	j	bne_cont.28245
bne_else.28244:
	flw	$f3, 0($a4)
	mtc1	$f4, $zero
	fbne	$f3, $f4, fbne_else.28248
	li	$a4, 0
	j	fbne_cont.28249
fbne_else.28248:
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
	fblt	$f2, $f1, fbge_else.28250
	li	$a4, 0
	j	fbge_cont.28251
fbge_else.28250:
	lw	$a5, 24($a5)
	li	$a6, 0
	bne	$a5, $a6, bne_else.28252
	li	$a5, 540
	sqrt	$f1, $f1
	fsub	$f0, $f0, $f1
	flw	$f1, 16($a4)
	fmul	$f0, $f0, $f1
	fsw	$f0, 0($a5)
	j	bne_cont.28253
bne_else.28252:
	li	$a5, 540
	sqrt	$f1, $f1
	fadd	$f0, $f0, $f1
	flw	$f1, 16($a4)
	fmul	$f0, $f0, $f1
	fsw	$f0, 0($a5)
bne_cont.28253:
	li	$a4, 1
fbge_cont.28251:
fbne_cont.28249:
bne_cont.28245:
bne_cont.28219:
	li	$a5, 0
	bne	$a4, $a5, bne_else.28254
	j	bne_cont.28255
bne_else.28254:
	li	$a4, 540
	flw	$f0, 0($a4)
	li	$a4, 548
	flw	$f1, 0($a4)
	fblt	$f0, $f1, fbge_else.28256
	j	fbge_cont.28257
fbge_else.28256:
	li	$a4, 1
	move	$a1, $a3
	move	$a0, $a4
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	solve_one_or_network_fast.3091
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	fmove	$f30, $fv
fbge_cont.28257:
bne_cont.28255:
bne_cont.28217:
	lw	$a0, 8($sp)
	addi	$a0, $a0, 1
	lw	$a1, 4($sp)
	lw	$a2, 0($sp)
	j	trace_or_matrix_fast.3095
utexture.3110:
	lw	$a2, 12($a26)
	flw	$f0, 8($a26)
	lw	$a3, 0($a0)
	li	$a4, 580
	lw	$a5, 32($a0)
	flw	$f1, 0($a5)
	fsw	$f1, 0($a4)
	li	$a5, 1
	lw	$a6, 32($a0)
	flw	$f1, 4($a6)
	fsw	$f1, 4($a4)
	lw	$a6, 32($a0)
	flw	$f1, 8($a6)
	fsw	$f1, 8($a4)
	bne	$a3, $a5, beq_else.28258
	flw	$f0, 0($a1)
	lw	$a2, 20($a0)
	flw	$f1, 0($a2)
	fsub	$f0, $f0, $f1
	li	$v0, 15692
	sll	$v0, $v0, 16
	ori	$v0, $v0, 52429
	mtc1	$f1, $v0
	fmul	$f1, $f0, $f1
	fabs	$f2, $f1
	mtc1	$f3, $zero
	fblt	$f3, $f1, fbge_else.28259
	li	$v0, 19200
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	fblt	$f1, $f2, fbge_else.28261
	li	$v0, 19200
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	fadd	$f1, $f2, $f1
	li	$v0, 19200
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f3, $v0
	fsub	$f1, $f1, $f3
	fblt	$f1, $f2, fbge_else.28263
	fneg	$f1, $f1
	j	fbge_cont.28264
fbge_else.28263:
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fadd	$f1, $f1, $f2
	fneg	$f1, $f1
fbge_cont.28264:
	j	fbge_cont.28262
fbge_else.28261:
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	fadd	$f1, $f2, $f1
	fneg	$f1, $f1
fbge_cont.28262:
	j	fbge_cont.28260
fbge_else.28259:
	li	$v0, 19200
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	fblt	$f1, $f2, fbge_else.28265
	li	$v0, 19200
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	fadd	$f1, $f2, $f1
	li	$v0, 19200
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f3, $v0
	fsub	$f1, $f1, $f3
	fblt	$f2, $f1, fbge_else.28267
	j	fbge_cont.28268
fbge_else.28267:
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fsub	$f1, $f1, $f2
fbge_cont.28268:
	j	fbge_cont.28266
fbge_else.28265:
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	fsub	$f1, $f2, $f1
fbge_cont.28266:
fbge_cont.28260:
	li	$v0, 16800
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fmul	$f1, $f1, $f2
	li	$v0, 16672
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fsub	$f0, $f0, $f1
	fblt	$f0, $f2, fbge_else.28269
	li	$a2, 0
	j	fbge_cont.28270
fbge_else.28269:
	li	$a2, 1
fbge_cont.28270:
	flw	$f0, 8($a1)
	lw	$a0, 20($a0)
	flw	$f1, 8($a0)
	fsub	$f0, $f0, $f1
	li	$v0, 15692
	sll	$v0, $v0, 16
	ori	$v0, $v0, 52429
	mtc1	$f1, $v0
	fmul	$f1, $f0, $f1
	fabs	$f2, $f1
	mtc1	$f3, $zero
	fblt	$f3, $f1, fbge_else.28271
	li	$v0, 19200
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	fblt	$f1, $f2, fbge_else.28273
	li	$v0, 19200
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	fadd	$f1, $f2, $f1
	li	$v0, 19200
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f3, $v0
	fsub	$f1, $f1, $f3
	fblt	$f1, $f2, fbge_else.28275
	fneg	$f1, $f1
	j	fbge_cont.28276
fbge_else.28275:
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fadd	$f1, $f1, $f2
	fneg	$f1, $f1
fbge_cont.28276:
	j	fbge_cont.28274
fbge_else.28273:
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	fadd	$f1, $f2, $f1
	fneg	$f1, $f1
fbge_cont.28274:
	j	fbge_cont.28272
fbge_else.28271:
	li	$v0, 19200
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	fblt	$f1, $f2, fbge_else.28277
	li	$v0, 19200
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	fadd	$f1, $f2, $f1
	li	$v0, 19200
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f3, $v0
	fsub	$f1, $f1, $f3
	fblt	$f2, $f1, fbge_else.28279
	j	fbge_cont.28280
fbge_else.28279:
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fsub	$f1, $f1, $f2
fbge_cont.28280:
	j	fbge_cont.28278
fbge_else.28277:
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	fsub	$f1, $f2, $f1
fbge_cont.28278:
fbge_cont.28272:
	li	$v0, 16800
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fmul	$f1, $f1, $f2
	li	$v0, 16672
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fsub	$f0, $f0, $f1
	fblt	$f0, $f2, fbge_else.28281
	li	$a0, 0
	j	fbge_cont.28282
fbge_else.28281:
	li	$a0, 1
fbge_cont.28282:
	li	$a1, 580
	li	$a3, 0
	bne	$a2, $a3, bne_else.28283
	li	$a2, 0
	bne	$a0, $a2, bne_else.28285
	li	$v0, 17279
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f0, $v0
	j	bne_cont.28286
bne_else.28285:
	mtc1	$f0, $zero
bne_cont.28286:
	j	bne_cont.28284
bne_else.28283:
	li	$a2, 0
	bne	$a0, $a2, bne_else.28287
	mtc1	$f0, $zero
	j	bne_cont.28288
bne_else.28287:
	li	$v0, 17279
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f0, $v0
bne_cont.28288:
bne_cont.28284:
	fsw	$f0, 4($a1)
	jr	$ra
beq_else.28258:
	li	$a4, 2
	bne	$a3, $a4, beq_else.28290
	flw	$f1, 4($a1)
	li	$v0, 16000
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fmul	$f1, $f1, $f2
	fabs	$f2, $f1
	mtc1	$f3, $zero
	fblt	$f1, $f3, fbge_else.28291
	li	$a0, 1
	j	fbge_cont.28292
fbge_else.28291:
	li	$a0, -1
fbge_cont.28292:
	sw	$a0, 0($sp)
	fsw	$f0, 8($sp)
	move	$a26, $a2
	fmove	$f0, $f2
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	reduction_pi2.2772
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	fmove	$f0, $fv
	flw	$f1, 8($sp)
	fblt	$f0, $f1, fbge_else.28294
	li	$v0, 16457
	sll	$v0, $v0, 16
	ori	$v0, $v0, 4059
	mtc1	$f1, $v0
	fsub	$f0, $f0, $f1
	lw	$a0, 0($sp)
	neg	$a0, $a0
	li	$v0, 16329
	sll	$v0, $v0, 16
	ori	$v0, $v0, 4059
	mtc1	$f1, $v0
	fblt	$f0, $f1, fbge_else.28296
	li	$v0, 16457
	sll	$v0, $v0, 16
	ori	$v0, $v0, 4059
	mtc1	$f1, $v0
	fsub	$f0, $f1, $f0
	li	$v0, 16201
	sll	$v0, $v0, 16
	ori	$v0, $v0, 4059
	mtc1	$f1, $v0
	fblt	$f1, $f0, fbge_else.28298
	fmul	$f1, $f0, $f0
	fmul	$f1, $f1, $f0
	fmul	$f2, $f1, $f0
	fmul	$f2, $f2, $f0
	fmul	$f3, $f2, $f0
	fmul	$f3, $f3, $f0
	li	$v0, 15914
	sll	$v0, $v0, 16
	ori	$v0, $v0, 43692
	mtc1	$f4, $v0
	fmul	$f1, $f4, $f1
	fsub	$f0, $f0, $f1
	li	$v0, 15368
	sll	$v0, $v0, 16
	ori	$v0, $v0, 34406
	mtc1	$f1, $v0
	fmul	$f1, $f1, $f2
	fadd	$f0, $f0, $f1
	li	$v0, 14669
	sll	$v0, $v0, 16
	ori	$v0, $v0, 25782
	mtc1	$f1, $v0
	fmul	$f1, $f1, $f3
	fsub	$f0, $f0, $f1
	li	$a1, 1
	bne	$a0, $a1, bne_else.28300
	j	bne_cont.28301
bne_else.28300:
	li	$v0, -16512
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	fmul	$f0, $f0, $f1
bne_cont.28301:
	j	fbge_cont.28299
fbge_else.28298:
	li	$v0, 16329
	sll	$v0, $v0, 16
	ori	$v0, $v0, 4059
	mtc1	$f1, $v0
	fsub	$f0, $f1, $f0
	fmul	$f1, $f0, $f0
	fmul	$f2, $f1, $f0
	fmul	$f2, $f2, $f0
	fmul	$f3, $f2, $f0
	fmul	$f0, $f3, $f0
	li	$v0, 16128
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f3, $v0
	fmul	$f1, $f3, $f1
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f3, $v0
	fsub	$f1, $f3, $f1
	li	$v0, 15658
	sll	$v0, $v0, 16
	ori	$v0, $v0, 42889
	mtc1	$f3, $v0
	fmul	$f2, $f3, $f2
	fadd	$f1, $f1, $f2
	li	$v0, 15027
	sll	$v0, $v0, 16
	ori	$v0, $v0, 33030
	mtc1	$f2, $v0
	fmul	$f0, $f2, $f0
	fsub	$f0, $f1, $f0
	li	$a1, 1
	bne	$a0, $a1, bne_else.28302
	j	bne_cont.28303
bne_else.28302:
	li	$v0, -16512
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	fmul	$f0, $f0, $f1
bne_cont.28303:
fbge_cont.28299:
	j	fbge_cont.28297
fbge_else.28296:
	li	$v0, 16201
	sll	$v0, $v0, 16
	ori	$v0, $v0, 4059
	mtc1	$f1, $v0
	fblt	$f1, $f0, fbge_else.28304
	fmul	$f1, $f0, $f0
	fmul	$f1, $f1, $f0
	fmul	$f2, $f1, $f0
	fmul	$f2, $f2, $f0
	fmul	$f3, $f2, $f0
	fmul	$f3, $f3, $f0
	li	$v0, 15914
	sll	$v0, $v0, 16
	ori	$v0, $v0, 43692
	mtc1	$f4, $v0
	fmul	$f1, $f4, $f1
	fsub	$f0, $f0, $f1
	li	$v0, 15368
	sll	$v0, $v0, 16
	ori	$v0, $v0, 34406
	mtc1	$f1, $v0
	fmul	$f1, $f1, $f2
	fadd	$f0, $f0, $f1
	li	$v0, 14669
	sll	$v0, $v0, 16
	ori	$v0, $v0, 25782
	mtc1	$f1, $v0
	fmul	$f1, $f1, $f3
	fsub	$f0, $f0, $f1
	li	$a1, 1
	bne	$a0, $a1, bne_else.28306
	j	bne_cont.28307
bne_else.28306:
	li	$v0, -16512
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	fmul	$f0, $f0, $f1
bne_cont.28307:
	j	fbge_cont.28305
fbge_else.28304:
	li	$v0, 16329
	sll	$v0, $v0, 16
	ori	$v0, $v0, 4059
	mtc1	$f1, $v0
	fsub	$f0, $f1, $f0
	fmul	$f1, $f0, $f0
	fmul	$f2, $f1, $f0
	fmul	$f2, $f2, $f0
	fmul	$f3, $f2, $f0
	fmul	$f0, $f3, $f0
	li	$v0, 16128
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f3, $v0
	fmul	$f1, $f3, $f1
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f3, $v0
	fsub	$f1, $f3, $f1
	li	$v0, 15658
	sll	$v0, $v0, 16
	ori	$v0, $v0, 42889
	mtc1	$f3, $v0
	fmul	$f2, $f3, $f2
	fadd	$f1, $f1, $f2
	li	$v0, 15027
	sll	$v0, $v0, 16
	ori	$v0, $v0, 33030
	mtc1	$f2, $v0
	fmul	$f0, $f2, $f0
	fsub	$f0, $f1, $f0
	li	$a1, 1
	bne	$a0, $a1, bne_else.28308
	j	bne_cont.28309
bne_else.28308:
	li	$v0, -16512
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	fmul	$f0, $f0, $f1
bne_cont.28309:
fbge_cont.28305:
fbge_cont.28297:
	j	fbge_cont.28295
fbge_else.28294:
	li	$v0, 16329
	sll	$v0, $v0, 16
	ori	$v0, $v0, 4059
	mtc1	$f1, $v0
	fblt	$f0, $f1, fbge_else.28310
	li	$v0, 16457
	sll	$v0, $v0, 16
	ori	$v0, $v0, 4059
	mtc1	$f1, $v0
	fsub	$f0, $f1, $f0
	li	$v0, 16201
	sll	$v0, $v0, 16
	ori	$v0, $v0, 4059
	mtc1	$f1, $v0
	fblt	$f1, $f0, fbge_else.28312
	fmul	$f1, $f0, $f0
	fmul	$f1, $f1, $f0
	fmul	$f2, $f1, $f0
	fmul	$f2, $f2, $f0
	fmul	$f3, $f2, $f0
	fmul	$f3, $f3, $f0
	li	$v0, 15914
	sll	$v0, $v0, 16
	ori	$v0, $v0, 43692
	mtc1	$f4, $v0
	fmul	$f1, $f4, $f1
	fsub	$f0, $f0, $f1
	li	$v0, 15368
	sll	$v0, $v0, 16
	ori	$v0, $v0, 34406
	mtc1	$f1, $v0
	fmul	$f1, $f1, $f2
	fadd	$f0, $f0, $f1
	li	$v0, 14669
	sll	$v0, $v0, 16
	ori	$v0, $v0, 25782
	mtc1	$f1, $v0
	fmul	$f1, $f1, $f3
	fsub	$f0, $f0, $f1
	li	$a0, 1
	lw	$a1, 0($sp)
	bne	$a1, $a0, bne_else.28314
	j	bne_cont.28315
bne_else.28314:
	li	$v0, -16512
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	fmul	$f0, $f0, $f1
bne_cont.28315:
	j	fbge_cont.28313
fbge_else.28312:
	li	$v0, 16329
	sll	$v0, $v0, 16
	ori	$v0, $v0, 4059
	mtc1	$f1, $v0
	fsub	$f0, $f1, $f0
	fmul	$f1, $f0, $f0
	fmul	$f2, $f1, $f0
	fmul	$f2, $f2, $f0
	fmul	$f3, $f2, $f0
	fmul	$f0, $f3, $f0
	li	$v0, 16128
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f3, $v0
	fmul	$f1, $f3, $f1
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f3, $v0
	fsub	$f1, $f3, $f1
	li	$v0, 15658
	sll	$v0, $v0, 16
	ori	$v0, $v0, 42889
	mtc1	$f3, $v0
	fmul	$f2, $f3, $f2
	fadd	$f1, $f1, $f2
	li	$v0, 15027
	sll	$v0, $v0, 16
	ori	$v0, $v0, 33030
	mtc1	$f2, $v0
	fmul	$f0, $f2, $f0
	fsub	$f0, $f1, $f0
	li	$a0, 1
	lw	$a1, 0($sp)
	bne	$a1, $a0, bne_else.28316
	j	bne_cont.28317
bne_else.28316:
	li	$v0, -16512
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	fmul	$f0, $f0, $f1
bne_cont.28317:
fbge_cont.28313:
	j	fbge_cont.28311
fbge_else.28310:
	li	$v0, 16201
	sll	$v0, $v0, 16
	ori	$v0, $v0, 4059
	mtc1	$f1, $v0
	fblt	$f1, $f0, fbge_else.28318
	fmul	$f1, $f0, $f0
	fmul	$f1, $f1, $f0
	fmul	$f2, $f1, $f0
	fmul	$f2, $f2, $f0
	fmul	$f3, $f2, $f0
	fmul	$f3, $f3, $f0
	li	$v0, 15914
	sll	$v0, $v0, 16
	ori	$v0, $v0, 43692
	mtc1	$f4, $v0
	fmul	$f1, $f4, $f1
	fsub	$f0, $f0, $f1
	li	$v0, 15368
	sll	$v0, $v0, 16
	ori	$v0, $v0, 34406
	mtc1	$f1, $v0
	fmul	$f1, $f1, $f2
	fadd	$f0, $f0, $f1
	li	$v0, 14669
	sll	$v0, $v0, 16
	ori	$v0, $v0, 25782
	mtc1	$f1, $v0
	fmul	$f1, $f1, $f3
	fsub	$f0, $f0, $f1
	li	$a0, 1
	lw	$a1, 0($sp)
	bne	$a1, $a0, bne_else.28320
	j	bne_cont.28321
bne_else.28320:
	li	$v0, -16512
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	fmul	$f0, $f0, $f1
bne_cont.28321:
	j	fbge_cont.28319
fbge_else.28318:
	li	$v0, 16329
	sll	$v0, $v0, 16
	ori	$v0, $v0, 4059
	mtc1	$f1, $v0
	fsub	$f0, $f1, $f0
	fmul	$f1, $f0, $f0
	fmul	$f2, $f1, $f0
	fmul	$f2, $f2, $f0
	fmul	$f3, $f2, $f0
	fmul	$f0, $f3, $f0
	li	$v0, 16128
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f3, $v0
	fmul	$f1, $f3, $f1
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f3, $v0
	fsub	$f1, $f3, $f1
	li	$v0, 15658
	sll	$v0, $v0, 16
	ori	$v0, $v0, 42889
	mtc1	$f3, $v0
	fmul	$f2, $f3, $f2
	fadd	$f1, $f1, $f2
	li	$v0, 15027
	sll	$v0, $v0, 16
	ori	$v0, $v0, 33030
	mtc1	$f2, $v0
	fmul	$f0, $f2, $f0
	fsub	$f0, $f1, $f0
	li	$a0, 1
	lw	$a1, 0($sp)
	bne	$a1, $a0, bne_else.28322
	j	bne_cont.28323
bne_else.28322:
	li	$v0, -16512
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	fmul	$f0, $f0, $f1
bne_cont.28323:
fbge_cont.28319:
fbge_cont.28311:
fbge_cont.28295:
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
beq_else.28290:
	li	$a4, 3
	bne	$a3, $a4, beq_else.28325
	flw	$f1, 0($a1)
	lw	$a3, 20($a0)
	flw	$f2, 0($a3)
	fsub	$f1, $f1, $f2
	flw	$f2, 8($a1)
	lw	$a0, 20($a0)
	flw	$f3, 8($a0)
	fsub	$f2, $f2, $f3
	fmul	$f1, $f1, $f1
	fmul	$f2, $f2, $f2
	fadd	$f1, $f1, $f2
	li	$v0, 16672
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	finv	$f2, $f2
	fmul	$f1, $f1, $f2
	sqrt	$f1, $f1
	fabs	$f2, $f1
	mtc1	$f3, $zero
	fblt	$f3, $f1, fbge_else.28326
	li	$v0, 19200
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f3, $v0
	fblt	$f3, $f2, fbge_else.28328
	li	$v0, 19200
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f3, $v0
	fadd	$f3, $f2, $f3
	li	$v0, 19200
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f4, $v0
	fsub	$f3, $f3, $f4
	fblt	$f3, $f2, fbge_else.28330
	fneg	$f2, $f3
	j	fbge_cont.28331
fbge_else.28330:
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fadd	$f2, $f3, $f2
	fneg	$f2, $f2
fbge_cont.28331:
	j	fbge_cont.28329
fbge_else.28328:
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f3, $v0
	fadd	$f2, $f2, $f3
	fneg	$f2, $f2
fbge_cont.28329:
	j	fbge_cont.28327
fbge_else.28326:
	li	$v0, 19200
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f3, $v0
	fblt	$f3, $f2, fbge_else.28332
	li	$v0, 19200
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f3, $v0
	fadd	$f3, $f2, $f3
	li	$v0, 19200
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f4, $v0
	fsub	$f3, $f3, $f4
	fblt	$f2, $f3, fbge_else.28334
	fmove	$f2, $f3
	j	fbge_cont.28335
fbge_else.28334:
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fsub	$f2, $f3, $f2
fbge_cont.28335:
	j	fbge_cont.28333
fbge_else.28332:
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f3, $v0
	fsub	$f2, $f2, $f3
fbge_cont.28333:
fbge_cont.28327:
	fsub	$f1, $f1, $f2
	li	$v0, 16457
	sll	$v0, $v0, 16
	ori	$v0, $v0, 4059
	mtc1	$f2, $v0
	fmul	$f1, $f1, $f2
	fabs	$f1, $f1
	fsw	$f0, 8($sp)
	move	$a26, $a2
	fmove	$f0, $f1
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	reduction_pi2.2772
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	fmove	$f0, $fv
	flw	$f1, 8($sp)
	fblt	$f0, $f1, fbge_else.28336
	li	$v0, 16457
	sll	$v0, $v0, 16
	ori	$v0, $v0, 4059
	mtc1	$f1, $v0
	fsub	$f0, $f0, $f1
	li	$v0, 16329
	sll	$v0, $v0, 16
	ori	$v0, $v0, 4059
	mtc1	$f1, $v0
	fblt	$f0, $f1, fbge_else.28338
	li	$v0, 16457
	sll	$v0, $v0, 16
	ori	$v0, $v0, 4059
	mtc1	$f1, $v0
	fsub	$f0, $f1, $f0
	li	$v0, 16201
	sll	$v0, $v0, 16
	ori	$v0, $v0, 4059
	mtc1	$f1, $v0
	fblt	$f1, $f0, fbge_else.28340
	fmul	$f1, $f0, $f0
	fmul	$f2, $f1, $f0
	fmul	$f2, $f2, $f0
	fmul	$f3, $f2, $f0
	fmul	$f0, $f3, $f0
	li	$v0, 16128
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f3, $v0
	fmul	$f1, $f3, $f1
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f3, $v0
	fsub	$f1, $f3, $f1
	li	$v0, 15658
	sll	$v0, $v0, 16
	ori	$v0, $v0, 42889
	mtc1	$f3, $v0
	fmul	$f2, $f3, $f2
	fadd	$f1, $f1, $f2
	li	$v0, 15027
	sll	$v0, $v0, 16
	ori	$v0, $v0, 33030
	mtc1	$f2, $v0
	fmul	$f0, $f2, $f0
	fsub	$f0, $f1, $f0
	j	fbge_cont.28341
fbge_else.28340:
	li	$v0, 16329
	sll	$v0, $v0, 16
	ori	$v0, $v0, 4059
	mtc1	$f1, $v0
	fsub	$f0, $f1, $f0
	fmul	$f1, $f0, $f0
	fmul	$f1, $f1, $f0
	fmul	$f2, $f1, $f0
	fmul	$f2, $f2, $f0
	fmul	$f3, $f2, $f0
	fmul	$f3, $f3, $f0
	li	$v0, 15914
	sll	$v0, $v0, 16
	ori	$v0, $v0, 43692
	mtc1	$f4, $v0
	fmul	$f1, $f4, $f1
	fsub	$f0, $f0, $f1
	li	$v0, 15368
	sll	$v0, $v0, 16
	ori	$v0, $v0, 34406
	mtc1	$f1, $v0
	fmul	$f1, $f1, $f2
	fadd	$f0, $f0, $f1
	li	$v0, 14669
	sll	$v0, $v0, 16
	ori	$v0, $v0, 25782
	mtc1	$f1, $v0
	fmul	$f1, $f1, $f3
	fsub	$f0, $f0, $f1
fbge_cont.28341:
	j	fbge_cont.28339
fbge_else.28338:
	li	$v0, 16201
	sll	$v0, $v0, 16
	ori	$v0, $v0, 4059
	mtc1	$f1, $v0
	fblt	$f1, $f0, fbge_else.28342
	fmul	$f1, $f0, $f0
	fmul	$f2, $f1, $f0
	fmul	$f2, $f2, $f0
	fmul	$f3, $f2, $f0
	fmul	$f0, $f3, $f0
	li	$v0, 16128
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f3, $v0
	fmul	$f1, $f3, $f1
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f3, $v0
	fsub	$f1, $f3, $f1
	li	$v0, 15658
	sll	$v0, $v0, 16
	ori	$v0, $v0, 42889
	mtc1	$f3, $v0
	fmul	$f2, $f3, $f2
	fadd	$f1, $f1, $f2
	li	$v0, 15027
	sll	$v0, $v0, 16
	ori	$v0, $v0, 33030
	mtc1	$f2, $v0
	fmul	$f0, $f2, $f0
	fsub	$f0, $f1, $f0
	li	$v0, -16512
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	fmul	$f0, $f0, $f1
	j	fbge_cont.28343
fbge_else.28342:
	li	$v0, 16329
	sll	$v0, $v0, 16
	ori	$v0, $v0, 4059
	mtc1	$f1, $v0
	fsub	$f0, $f1, $f0
	fmul	$f1, $f0, $f0
	fmul	$f1, $f1, $f0
	fmul	$f2, $f1, $f0
	fmul	$f2, $f2, $f0
	fmul	$f3, $f2, $f0
	fmul	$f3, $f3, $f0
	li	$v0, 15914
	sll	$v0, $v0, 16
	ori	$v0, $v0, 43692
	mtc1	$f4, $v0
	fmul	$f1, $f4, $f1
	fsub	$f0, $f0, $f1
	li	$v0, 15368
	sll	$v0, $v0, 16
	ori	$v0, $v0, 34406
	mtc1	$f1, $v0
	fmul	$f1, $f1, $f2
	fadd	$f0, $f0, $f1
	li	$v0, 14669
	sll	$v0, $v0, 16
	ori	$v0, $v0, 25782
	mtc1	$f1, $v0
	fmul	$f1, $f1, $f3
	fsub	$f0, $f0, $f1
	li	$v0, -16512
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	fmul	$f0, $f0, $f1
fbge_cont.28343:
fbge_cont.28339:
	j	fbge_cont.28337
fbge_else.28336:
	li	$v0, 16329
	sll	$v0, $v0, 16
	ori	$v0, $v0, 4059
	mtc1	$f1, $v0
	fblt	$f0, $f1, fbge_else.28344
	li	$v0, 16457
	sll	$v0, $v0, 16
	ori	$v0, $v0, 4059
	mtc1	$f1, $v0
	fsub	$f0, $f1, $f0
	li	$v0, 16201
	sll	$v0, $v0, 16
	ori	$v0, $v0, 4059
	mtc1	$f1, $v0
	fblt	$f1, $f0, fbge_else.28346
	fmul	$f1, $f0, $f0
	fmul	$f2, $f1, $f0
	fmul	$f2, $f2, $f0
	fmul	$f3, $f2, $f0
	fmul	$f0, $f3, $f0
	li	$v0, 16128
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f3, $v0
	fmul	$f1, $f3, $f1
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f3, $v0
	fsub	$f1, $f3, $f1
	li	$v0, 15658
	sll	$v0, $v0, 16
	ori	$v0, $v0, 42889
	mtc1	$f3, $v0
	fmul	$f2, $f3, $f2
	fadd	$f1, $f1, $f2
	li	$v0, 15027
	sll	$v0, $v0, 16
	ori	$v0, $v0, 33030
	mtc1	$f2, $v0
	fmul	$f0, $f2, $f0
	fsub	$f0, $f1, $f0
	li	$v0, -16512
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	fmul	$f0, $f0, $f1
	j	fbge_cont.28347
fbge_else.28346:
	li	$v0, 16329
	sll	$v0, $v0, 16
	ori	$v0, $v0, 4059
	mtc1	$f1, $v0
	fsub	$f0, $f1, $f0
	fmul	$f1, $f0, $f0
	fmul	$f1, $f1, $f0
	fmul	$f2, $f1, $f0
	fmul	$f2, $f2, $f0
	fmul	$f3, $f2, $f0
	fmul	$f3, $f3, $f0
	li	$v0, 15914
	sll	$v0, $v0, 16
	ori	$v0, $v0, 43692
	mtc1	$f4, $v0
	fmul	$f1, $f4, $f1
	fsub	$f0, $f0, $f1
	li	$v0, 15368
	sll	$v0, $v0, 16
	ori	$v0, $v0, 34406
	mtc1	$f1, $v0
	fmul	$f1, $f1, $f2
	fadd	$f0, $f0, $f1
	li	$v0, 14669
	sll	$v0, $v0, 16
	ori	$v0, $v0, 25782
	mtc1	$f1, $v0
	fmul	$f1, $f1, $f3
	fsub	$f0, $f0, $f1
	li	$v0, -16512
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	fmul	$f0, $f0, $f1
fbge_cont.28347:
	j	fbge_cont.28345
fbge_else.28344:
	li	$v0, 16201
	sll	$v0, $v0, 16
	ori	$v0, $v0, 4059
	mtc1	$f1, $v0
	fblt	$f1, $f0, fbge_else.28348
	fmul	$f1, $f0, $f0
	fmul	$f2, $f1, $f0
	fmul	$f2, $f2, $f0
	fmul	$f3, $f2, $f0
	fmul	$f0, $f3, $f0
	li	$v0, 16128
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f3, $v0
	fmul	$f1, $f3, $f1
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f3, $v0
	fsub	$f1, $f3, $f1
	li	$v0, 15658
	sll	$v0, $v0, 16
	ori	$v0, $v0, 42889
	mtc1	$f3, $v0
	fmul	$f2, $f3, $f2
	fadd	$f1, $f1, $f2
	li	$v0, 15027
	sll	$v0, $v0, 16
	ori	$v0, $v0, 33030
	mtc1	$f2, $v0
	fmul	$f0, $f2, $f0
	fsub	$f0, $f1, $f0
	j	fbge_cont.28349
fbge_else.28348:
	li	$v0, 16329
	sll	$v0, $v0, 16
	ori	$v0, $v0, 4059
	mtc1	$f1, $v0
	fsub	$f0, $f1, $f0
	fmul	$f1, $f0, $f0
	fmul	$f1, $f1, $f0
	fmul	$f2, $f1, $f0
	fmul	$f2, $f2, $f0
	fmul	$f3, $f2, $f0
	fmul	$f3, $f3, $f0
	li	$v0, 15914
	sll	$v0, $v0, 16
	ori	$v0, $v0, 43692
	mtc1	$f4, $v0
	fmul	$f1, $f4, $f1
	fsub	$f0, $f0, $f1
	li	$v0, 15368
	sll	$v0, $v0, 16
	ori	$v0, $v0, 34406
	mtc1	$f1, $v0
	fmul	$f1, $f1, $f2
	fadd	$f0, $f0, $f1
	li	$v0, 14669
	sll	$v0, $v0, 16
	ori	$v0, $v0, 25782
	mtc1	$f1, $v0
	fmul	$f1, $f1, $f3
	fsub	$f0, $f0, $f1
fbge_cont.28349:
fbge_cont.28345:
fbge_cont.28337:
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
beq_else.28325:
	li	$a2, 4
	bne	$a3, $a2, beq_else.28351
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
	fblt	$f4, $f3, fbge_else.28352
	finv	$f0, $f0
	fmul	$f0, $f1, $f0
	fabs	$f0, $f0
	fabs	$f1, $f0
	mtc1	$f3, $zero
	fblt	$f0, $f3, fbge_else.28354
	li	$a2, 1
	j	fbge_cont.28355
fbge_else.28354:
	li	$a2, -1
fbge_cont.28355:
	li	$v0, 16096
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f0, $v0
	fblt	$f1, $f0, fbge_else.28356
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f0, $v0
	fblt	$f1, $f0, fbge_else.28358
	li	$v0, 16412
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f0, $v0
	fblt	$f1, $f0, fbge_else.28360
	finv	$f0, $f1
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	fmul	$f0, $f1, $f0
	li	$v0, 15733
	sll	$v0, $v0, 16
	ori	$v0, $v0, 59333
	mtc1	$f1, $v0
	fmul	$f1, $f1, $f0
	fmul	$f1, $f1, $f0
	li	$v0, 15799
	sll	$v0, $v0, 16
	ori	$v0, $v0, 54894
	mtc1	$f3, $v0
	fsub	$f1, $f1, $f3
	fmul	$f1, $f1, $f0
	fmul	$f1, $f1, $f0
	li	$v0, 15843
	sll	$v0, $v0, 16
	ori	$v0, $v0, 36408
	mtc1	$f3, $v0
	fadd	$f1, $f3, $f1
	fmul	$f1, $f1, $f0
	fmul	$f1, $f1, $f0
	li	$v0, 15890
	sll	$v0, $v0, 16
	ori	$v0, $v0, 18725
	mtc1	$f3, $v0
	fsub	$f1, $f1, $f3
	fmul	$f1, $f1, $f0
	fmul	$f1, $f1, $f0
	li	$v0, 15948
	sll	$v0, $v0, 16
	ori	$v0, $v0, 52429
	mtc1	$f3, $v0
	fadd	$f1, $f1, $f3
	fmul	$f1, $f1, $f0
	fmul	$f1, $f1, $f0
	li	$v0, 16042
	sll	$v0, $v0, 16
	ori	$v0, $v0, 43690
	mtc1	$f3, $v0
	fsub	$f1, $f1, $f3
	fmul	$f1, $f1, $f0
	fmul	$f1, $f1, $f0
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f3, $v0
	fadd	$f1, $f3, $f1
	fmul	$f0, $f0, $f1
	li	$v0, 16329
	sll	$v0, $v0, 16
	ori	$v0, $v0, 4059
	mtc1	$f1, $v0
	fsub	$f0, $f1, $f0
	li	$a3, 1
	bne	$a2, $a3, bne_else.28362
	j	bne_cont.28363
bne_else.28362:
	li	$v0, -16512
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	fmul	$f0, $f0, $f1
bne_cont.28363:
	j	fbge_cont.28361
fbge_else.28360:
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f0, $v0
	fsub	$f0, $f0, $f1
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f3, $v0
	fadd	$f1, $f1, $f3
	finv	$f1, $f1
	fmul	$f0, $f0, $f1
	li	$v0, 15733
	sll	$v0, $v0, 16
	ori	$v0, $v0, 59333
	mtc1	$f1, $v0
	fmul	$f1, $f1, $f0
	fmul	$f1, $f1, $f0
	li	$v0, 15799
	sll	$v0, $v0, 16
	ori	$v0, $v0, 54894
	mtc1	$f3, $v0
	fsub	$f1, $f1, $f3
	fmul	$f1, $f1, $f0
	fmul	$f1, $f1, $f0
	li	$v0, 15843
	sll	$v0, $v0, 16
	ori	$v0, $v0, 36408
	mtc1	$f3, $v0
	fadd	$f1, $f3, $f1
	fmul	$f1, $f1, $f0
	fmul	$f1, $f1, $f0
	li	$v0, 15890
	sll	$v0, $v0, 16
	ori	$v0, $v0, 18725
	mtc1	$f3, $v0
	fsub	$f1, $f1, $f3
	fmul	$f1, $f1, $f0
	fmul	$f1, $f1, $f0
	li	$v0, 15948
	sll	$v0, $v0, 16
	ori	$v0, $v0, 52429
	mtc1	$f3, $v0
	fadd	$f1, $f1, $f3
	fmul	$f1, $f1, $f0
	fmul	$f1, $f1, $f0
	li	$v0, 16042
	sll	$v0, $v0, 16
	ori	$v0, $v0, 43690
	mtc1	$f3, $v0
	fsub	$f1, $f1, $f3
	fmul	$f1, $f1, $f0
	fmul	$f1, $f1, $f0
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f3, $v0
	fadd	$f1, $f3, $f1
	fmul	$f0, $f0, $f1
	li	$v0, 16201
	sll	$v0, $v0, 16
	ori	$v0, $v0, 4059
	mtc1	$f1, $v0
	fsub	$f0, $f1, $f0
	li	$a3, 1
	bne	$a2, $a3, bne_else.28364
	j	bne_cont.28365
bne_else.28364:
	li	$v0, -16512
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	fmul	$f0, $f0, $f1
bne_cont.28365:
fbge_cont.28361:
	j	fbge_cont.28359
fbge_else.28358:
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f0, $v0
	fsub	$f0, $f0, $f1
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f3, $v0
	fadd	$f1, $f1, $f3
	finv	$f1, $f1
	fmul	$f0, $f0, $f1
	li	$v0, 15733
	sll	$v0, $v0, 16
	ori	$v0, $v0, 59333
	mtc1	$f1, $v0
	fmul	$f1, $f1, $f0
	fmul	$f1, $f1, $f0
	li	$v0, 15799
	sll	$v0, $v0, 16
	ori	$v0, $v0, 54894
	mtc1	$f3, $v0
	fsub	$f1, $f1, $f3
	fmul	$f1, $f1, $f0
	fmul	$f1, $f1, $f0
	li	$v0, 15843
	sll	$v0, $v0, 16
	ori	$v0, $v0, 36408
	mtc1	$f3, $v0
	fadd	$f1, $f3, $f1
	fmul	$f1, $f1, $f0
	fmul	$f1, $f1, $f0
	li	$v0, 15890
	sll	$v0, $v0, 16
	ori	$v0, $v0, 18725
	mtc1	$f3, $v0
	fsub	$f1, $f1, $f3
	fmul	$f1, $f1, $f0
	fmul	$f1, $f1, $f0
	li	$v0, 15948
	sll	$v0, $v0, 16
	ori	$v0, $v0, 52429
	mtc1	$f3, $v0
	fadd	$f1, $f1, $f3
	fmul	$f1, $f1, $f0
	fmul	$f1, $f1, $f0
	li	$v0, 16042
	sll	$v0, $v0, 16
	ori	$v0, $v0, 43690
	mtc1	$f3, $v0
	fsub	$f1, $f1, $f3
	fmul	$f1, $f1, $f0
	fmul	$f1, $f1, $f0
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f3, $v0
	fadd	$f1, $f3, $f1
	fmul	$f0, $f0, $f1
	li	$v0, 16201
	sll	$v0, $v0, 16
	ori	$v0, $v0, 4059
	mtc1	$f1, $v0
	fsub	$f0, $f1, $f0
	li	$a3, 1
	bne	$a2, $a3, bne_else.28366
	j	bne_cont.28367
bne_else.28366:
	li	$v0, -16512
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	fmul	$f0, $f0, $f1
bne_cont.28367:
fbge_cont.28359:
	j	fbge_cont.28357
fbge_else.28356:
	li	$v0, 15733
	sll	$v0, $v0, 16
	ori	$v0, $v0, 59333
	mtc1	$f0, $v0
	fmul	$f0, $f0, $f1
	fmul	$f0, $f0, $f1
	li	$v0, 15799
	sll	$v0, $v0, 16
	ori	$v0, $v0, 54894
	mtc1	$f3, $v0
	fsub	$f0, $f0, $f3
	fmul	$f0, $f0, $f1
	fmul	$f0, $f0, $f1
	li	$v0, 15843
	sll	$v0, $v0, 16
	ori	$v0, $v0, 36408
	mtc1	$f3, $v0
	fadd	$f0, $f3, $f0
	fmul	$f0, $f0, $f1
	fmul	$f0, $f0, $f1
	li	$v0, 15890
	sll	$v0, $v0, 16
	ori	$v0, $v0, 18725
	mtc1	$f3, $v0
	fsub	$f0, $f0, $f3
	fmul	$f0, $f0, $f1
	fmul	$f0, $f0, $f1
	li	$v0, 15948
	sll	$v0, $v0, 16
	ori	$v0, $v0, 52429
	mtc1	$f3, $v0
	fadd	$f0, $f0, $f3
	fmul	$f0, $f0, $f1
	fmul	$f0, $f0, $f1
	li	$v0, 16042
	sll	$v0, $v0, 16
	ori	$v0, $v0, 43690
	mtc1	$f3, $v0
	fsub	$f0, $f0, $f3
	fmul	$f0, $f0, $f1
	fmul	$f0, $f0, $f1
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f3, $v0
	fadd	$f0, $f3, $f0
	fmul	$f0, $f1, $f0
	li	$a3, 1
	bne	$a2, $a3, bne_else.28368
	j	bne_cont.28369
bne_else.28368:
	li	$v0, -16512
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	fmul	$f0, $f0, $f1
bne_cont.28369:
fbge_cont.28357:
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
	j	fbge_cont.28353
fbge_else.28352:
	li	$v0, 16752
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f0, $v0
fbge_cont.28353:
	fabs	$f1, $f0
	mtc1	$f3, $zero
	fblt	$f3, $f0, fbge_else.28370
	li	$v0, 19200
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f3, $v0
	fblt	$f3, $f1, fbge_else.28372
	li	$v0, 19200
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f3, $v0
	fadd	$f3, $f1, $f3
	li	$v0, 19200
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f4, $v0
	fsub	$f3, $f3, $f4
	fblt	$f3, $f1, fbge_else.28374
	fneg	$f1, $f3
	j	fbge_cont.28375
fbge_else.28374:
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	fadd	$f1, $f3, $f1
	fneg	$f1, $f1
fbge_cont.28375:
	j	fbge_cont.28373
fbge_else.28372:
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f3, $v0
	fadd	$f1, $f1, $f3
	fneg	$f1, $f1
fbge_cont.28373:
	j	fbge_cont.28371
fbge_else.28370:
	li	$v0, 19200
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f3, $v0
	fblt	$f3, $f1, fbge_else.28376
	li	$v0, 19200
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f3, $v0
	fadd	$f3, $f1, $f3
	li	$v0, 19200
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f4, $v0
	fsub	$f3, $f3, $f4
	fblt	$f1, $f3, fbge_else.28378
	fmove	$f1, $f3
	j	fbge_cont.28379
fbge_else.28378:
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	fsub	$f1, $f3, $f1
fbge_cont.28379:
	j	fbge_cont.28377
fbge_else.28376:
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f3, $v0
	fsub	$f1, $f1, $f3
fbge_cont.28377:
fbge_cont.28371:
	fsub	$f0, $f0, $f1
	flw	$f1, 4($a1)
	lw	$a1, 20($a0)
	flw	$f3, 4($a1)
	fsub	$f1, $f1, $f3
	lw	$a0, 16($a0)
	flw	$f3, 4($a0)
	sqrt	$f3, $f3
	fmul	$f1, $f1, $f3
	li	$v0, 14545
	sll	$v0, $v0, 16
	ori	$v0, $v0, 46871
	mtc1	$f3, $v0
	fabs	$f4, $f2
	fblt	$f4, $f3, fbge_else.28380
	finv	$f2, $f2
	fmul	$f1, $f1, $f2
	fabs	$f1, $f1
	fabs	$f2, $f1
	mtc1	$f3, $zero
	fblt	$f1, $f3, fbge_else.28382
	li	$a0, 1
	j	fbge_cont.28383
fbge_else.28382:
	li	$a0, -1
fbge_cont.28383:
	li	$v0, 16096
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	fblt	$f2, $f1, fbge_else.28384
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	fblt	$f2, $f1, fbge_else.28386
	li	$v0, 16412
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	fblt	$f2, $f1, fbge_else.28388
	finv	$f1, $f2
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fmul	$f1, $f2, $f1
	li	$v0, 15733
	sll	$v0, $v0, 16
	ori	$v0, $v0, 59333
	mtc1	$f2, $v0
	fmul	$f2, $f2, $f1
	fmul	$f2, $f2, $f1
	li	$v0, 15799
	sll	$v0, $v0, 16
	ori	$v0, $v0, 54894
	mtc1	$f3, $v0
	fsub	$f2, $f2, $f3
	fmul	$f2, $f2, $f1
	fmul	$f2, $f2, $f1
	li	$v0, 15843
	sll	$v0, $v0, 16
	ori	$v0, $v0, 36408
	mtc1	$f3, $v0
	fadd	$f2, $f3, $f2
	fmul	$f2, $f2, $f1
	fmul	$f2, $f2, $f1
	li	$v0, 15890
	sll	$v0, $v0, 16
	ori	$v0, $v0, 18725
	mtc1	$f3, $v0
	fsub	$f2, $f2, $f3
	fmul	$f2, $f2, $f1
	fmul	$f2, $f2, $f1
	li	$v0, 15948
	sll	$v0, $v0, 16
	ori	$v0, $v0, 52429
	mtc1	$f3, $v0
	fadd	$f2, $f2, $f3
	fmul	$f2, $f2, $f1
	fmul	$f2, $f2, $f1
	li	$v0, 16042
	sll	$v0, $v0, 16
	ori	$v0, $v0, 43690
	mtc1	$f3, $v0
	fsub	$f2, $f2, $f3
	fmul	$f2, $f2, $f1
	fmul	$f2, $f2, $f1
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f3, $v0
	fadd	$f2, $f3, $f2
	fmul	$f1, $f1, $f2
	li	$v0, 16329
	sll	$v0, $v0, 16
	ori	$v0, $v0, 4059
	mtc1	$f2, $v0
	fsub	$f1, $f2, $f1
	li	$a1, 1
	bne	$a0, $a1, bne_else.28390
	j	bne_cont.28391
bne_else.28390:
	li	$v0, -16512
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fmul	$f1, $f1, $f2
bne_cont.28391:
	j	fbge_cont.28389
fbge_else.28388:
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	fsub	$f1, $f1, $f2
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f3, $v0
	fadd	$f2, $f2, $f3
	finv	$f2, $f2
	fmul	$f1, $f1, $f2
	li	$v0, 15733
	sll	$v0, $v0, 16
	ori	$v0, $v0, 59333
	mtc1	$f2, $v0
	fmul	$f2, $f2, $f1
	fmul	$f2, $f2, $f1
	li	$v0, 15799
	sll	$v0, $v0, 16
	ori	$v0, $v0, 54894
	mtc1	$f3, $v0
	fsub	$f2, $f2, $f3
	fmul	$f2, $f2, $f1
	fmul	$f2, $f2, $f1
	li	$v0, 15843
	sll	$v0, $v0, 16
	ori	$v0, $v0, 36408
	mtc1	$f3, $v0
	fadd	$f2, $f3, $f2
	fmul	$f2, $f2, $f1
	fmul	$f2, $f2, $f1
	li	$v0, 15890
	sll	$v0, $v0, 16
	ori	$v0, $v0, 18725
	mtc1	$f3, $v0
	fsub	$f2, $f2, $f3
	fmul	$f2, $f2, $f1
	fmul	$f2, $f2, $f1
	li	$v0, 15948
	sll	$v0, $v0, 16
	ori	$v0, $v0, 52429
	mtc1	$f3, $v0
	fadd	$f2, $f2, $f3
	fmul	$f2, $f2, $f1
	fmul	$f2, $f2, $f1
	li	$v0, 16042
	sll	$v0, $v0, 16
	ori	$v0, $v0, 43690
	mtc1	$f3, $v0
	fsub	$f2, $f2, $f3
	fmul	$f2, $f2, $f1
	fmul	$f2, $f2, $f1
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f3, $v0
	fadd	$f2, $f3, $f2
	fmul	$f1, $f1, $f2
	li	$v0, 16201
	sll	$v0, $v0, 16
	ori	$v0, $v0, 4059
	mtc1	$f2, $v0
	fsub	$f1, $f2, $f1
	li	$a1, 1
	bne	$a0, $a1, bne_else.28392
	j	bne_cont.28393
bne_else.28392:
	li	$v0, -16512
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fmul	$f1, $f1, $f2
bne_cont.28393:
fbge_cont.28389:
	j	fbge_cont.28387
fbge_else.28386:
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	fsub	$f1, $f1, $f2
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f3, $v0
	fadd	$f2, $f2, $f3
	finv	$f2, $f2
	fmul	$f1, $f1, $f2
	li	$v0, 15733
	sll	$v0, $v0, 16
	ori	$v0, $v0, 59333
	mtc1	$f2, $v0
	fmul	$f2, $f2, $f1
	fmul	$f2, $f2, $f1
	li	$v0, 15799
	sll	$v0, $v0, 16
	ori	$v0, $v0, 54894
	mtc1	$f3, $v0
	fsub	$f2, $f2, $f3
	fmul	$f2, $f2, $f1
	fmul	$f2, $f2, $f1
	li	$v0, 15843
	sll	$v0, $v0, 16
	ori	$v0, $v0, 36408
	mtc1	$f3, $v0
	fadd	$f2, $f3, $f2
	fmul	$f2, $f2, $f1
	fmul	$f2, $f2, $f1
	li	$v0, 15890
	sll	$v0, $v0, 16
	ori	$v0, $v0, 18725
	mtc1	$f3, $v0
	fsub	$f2, $f2, $f3
	fmul	$f2, $f2, $f1
	fmul	$f2, $f2, $f1
	li	$v0, 15948
	sll	$v0, $v0, 16
	ori	$v0, $v0, 52429
	mtc1	$f3, $v0
	fadd	$f2, $f2, $f3
	fmul	$f2, $f2, $f1
	fmul	$f2, $f2, $f1
	li	$v0, 16042
	sll	$v0, $v0, 16
	ori	$v0, $v0, 43690
	mtc1	$f3, $v0
	fsub	$f2, $f2, $f3
	fmul	$f2, $f2, $f1
	fmul	$f2, $f2, $f1
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f3, $v0
	fadd	$f2, $f3, $f2
	fmul	$f1, $f1, $f2
	li	$v0, 16201
	sll	$v0, $v0, 16
	ori	$v0, $v0, 4059
	mtc1	$f2, $v0
	fsub	$f1, $f2, $f1
	li	$a1, 1
	bne	$a0, $a1, bne_else.28394
	j	bne_cont.28395
bne_else.28394:
	li	$v0, -16512
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fmul	$f1, $f1, $f2
bne_cont.28395:
fbge_cont.28387:
	j	fbge_cont.28385
fbge_else.28384:
	li	$v0, 15733
	sll	$v0, $v0, 16
	ori	$v0, $v0, 59333
	mtc1	$f1, $v0
	fmul	$f1, $f1, $f2
	fmul	$f1, $f1, $f2
	li	$v0, 15799
	sll	$v0, $v0, 16
	ori	$v0, $v0, 54894
	mtc1	$f3, $v0
	fsub	$f1, $f1, $f3
	fmul	$f1, $f1, $f2
	fmul	$f1, $f1, $f2
	li	$v0, 15843
	sll	$v0, $v0, 16
	ori	$v0, $v0, 36408
	mtc1	$f3, $v0
	fadd	$f1, $f3, $f1
	fmul	$f1, $f1, $f2
	fmul	$f1, $f1, $f2
	li	$v0, 15890
	sll	$v0, $v0, 16
	ori	$v0, $v0, 18725
	mtc1	$f3, $v0
	fsub	$f1, $f1, $f3
	fmul	$f1, $f1, $f2
	fmul	$f1, $f1, $f2
	li	$v0, 15948
	sll	$v0, $v0, 16
	ori	$v0, $v0, 52429
	mtc1	$f3, $v0
	fadd	$f1, $f1, $f3
	fmul	$f1, $f1, $f2
	fmul	$f1, $f1, $f2
	li	$v0, 16042
	sll	$v0, $v0, 16
	ori	$v0, $v0, 43690
	mtc1	$f3, $v0
	fsub	$f1, $f1, $f3
	fmul	$f1, $f1, $f2
	fmul	$f1, $f1, $f2
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f3, $v0
	fadd	$f1, $f3, $f1
	fmul	$f1, $f2, $f1
	li	$a1, 1
	bne	$a0, $a1, bne_else.28396
	j	bne_cont.28397
bne_else.28396:
	li	$v0, -16512
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fmul	$f1, $f1, $f2
bne_cont.28397:
fbge_cont.28385:
	li	$v0, 16880
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fmul	$f1, $f1, $f2
	li	$v0, 16457
	sll	$v0, $v0, 16
	ori	$v0, $v0, 4059
	mtc1	$f2, $v0
	finv	$f2, $f2
	fmul	$f1, $f1, $f2
	j	fbge_cont.28381
fbge_else.28380:
	li	$v0, 16752
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
fbge_cont.28381:
	fabs	$f2, $f1
	mtc1	$f3, $zero
	fblt	$f3, $f1, fbge_else.28398
	li	$v0, 19200
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f3, $v0
	fblt	$f3, $f2, fbge_else.28400
	li	$v0, 19200
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f3, $v0
	fadd	$f3, $f2, $f3
	li	$v0, 19200
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f4, $v0
	fsub	$f3, $f3, $f4
	fblt	$f3, $f2, fbge_else.28402
	fneg	$f2, $f3
	j	fbge_cont.28403
fbge_else.28402:
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fadd	$f2, $f3, $f2
	fneg	$f2, $f2
fbge_cont.28403:
	j	fbge_cont.28401
fbge_else.28400:
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f3, $v0
	fadd	$f2, $f2, $f3
	fneg	$f2, $f2
fbge_cont.28401:
	j	fbge_cont.28399
fbge_else.28398:
	li	$v0, 19200
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f3, $v0
	fblt	$f3, $f2, fbge_else.28404
	li	$v0, 19200
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f3, $v0
	fadd	$f3, $f2, $f3
	li	$v0, 19200
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f4, $v0
	fsub	$f3, $f3, $f4
	fblt	$f2, $f3, fbge_else.28406
	fmove	$f2, $f3
	j	fbge_cont.28407
fbge_else.28406:
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fsub	$f2, $f3, $f2
fbge_cont.28407:
	j	fbge_cont.28405
fbge_else.28404:
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f3, $v0
	fsub	$f2, $f2, $f3
fbge_cont.28405:
fbge_cont.28399:
	fsub	$f1, $f1, $f2
	li	$v0, 16128
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fsub	$f0, $f2, $f0
	fmul	$f0, $f0, $f0
	li	$v0, 15897
	sll	$v0, $v0, 16
	ori	$v0, $v0, 39322
	mtc1	$f2, $v0
	fsub	$f0, $f2, $f0
	li	$v0, 16128
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fsub	$f1, $f2, $f1
	fmul	$f1, $f1, $f1
	fsub	$f0, $f0, $f1
	mtc1	$f1, $zero
	fblt	$f0, $f1, fbge_else.28408
	j	fbge_cont.28409
fbge_else.28408:
	mtc1	$f0, $zero
fbge_cont.28409:
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
beq_else.28351:
	jr	$ra
trace_reflections.3117:
	li	$a2, 0
	blt	$a0, $a2, bge_else.28412
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
	jal	trace_or_matrix_fast.3095
	subi	$sp, $sp, 48
	lw	$ra, 44($sp)
	fmove	$f30, $fv
	li	$a0, 548
	flw	$f0, 0($a0)
	li	$v0, -16948
	sll	$v0, $v0, 16
	ori	$v0, $v0, 52429
	mtc1	$f1, $v0
	fblt	$f1, $f0, fbge_else.28415
	li	$a0, 0
	j	fbge_cont.28416
fbge_else.28415:
	li	$v0, 19646
	sll	$v0, $v0, 16
	ori	$v0, $v0, 48160
	mtc1	$f1, $v0
	fblt	$f0, $f1, fbge_else.28417
	li	$a0, 0
	j	fbge_cont.28418
fbge_else.28417:
	li	$a0, 1
fbge_cont.28418:
fbge_cont.28416:
	li	$a1, 0
	bne	$a0, $a1, bne_else.28419
	j	bne_cont.28420
bne_else.28419:
	li	$a0, 564
	lw	$a0, 0($a0)
	sla	$a0, $a0, 2
	li	$a1, 544
	lw	$a1, 0($a1)
	add	$a0, $a0, $a1
	lw	$a1, 36($sp)
	lw	$a2, 0($a1)
	bne	$a0, $a2, bne_else.28421
	li	$a0, 0
	li	$a2, 536
	lw	$a2, 0($a2)
	move	$a1, $a2
	sw	$ra, 44($sp)
	addi	$sp, $sp, 48
	jal	shadow_check_one_or_matrix.3070
	subi	$sp, $sp, 48
	lw	$ra, 44($sp)
	move	$a0, $v0
	li	$a1, 0
	bne	$a0, $a1, bne_else.28423
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
	fblt	$f3, $f0, fbge_else.28425
	j	fbge_cont.28426
fbge_else.28425:
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
fbge_cont.28426:
	mtc1	$f0, $zero
	fblt	$f0, $f1, fbge_else.28427
	j	fbge_cont.28428
fbge_else.28427:
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
fbge_cont.28428:
	j	bne_cont.28424
bne_else.28423:
bne_cont.28424:
	j	bne_cont.28422
bne_else.28421:
bne_cont.28422:
bne_cont.28420:
	lw	$a0, 0($sp)
	subi	$a0, $a0, 1
	flw	$f0, 24($sp)
	flw	$f1, 8($sp)
	lw	$a1, 16($sp)
	j	trace_reflections.3117
bge_else.28412:
	jr	$ra
trace_ray.3122:
	lw	$a3, 4($a26)
	li	$a4, 4
	blt	$a4, $a0, bge_else.28430
	lw	$a4, 8($a2)
	li	$a5, 548
	li	$v0, 20078
	sll	$v0, $v0, 16
	ori	$v0, $v0, 27432
	mtc1	$f2, $v0
	fsw	$f2, 0($a5)
	li	$a5, 0
	li	$a6, 536
	lw	$a6, 0($a6)
	sw	$a26, 0($sp)
	fsw	$f1, 8($sp)
	sw	$a2, 16($sp)
	sw	$a3, 20($sp)
	fsw	$f0, 24($sp)
	sw	$a1, 32($sp)
	sw	$a4, 36($sp)
	sw	$a0, 40($sp)
	move	$a2, $a1
	move	$a0, $a5
	move	$a1, $a6
	sw	$ra, 44($sp)
	addi	$sp, $sp, 48
	jal	trace_or_matrix.3081
	subi	$sp, $sp, 48
	lw	$ra, 44($sp)
	fmove	$f30, $fv
	li	$a0, 548
	flw	$f0, 0($a0)
	li	$v0, -16948
	sll	$v0, $v0, 16
	ori	$v0, $v0, 52429
	mtc1	$f1, $v0
	fblt	$f1, $f0, fbge_else.28432
	li	$a0, 0
	j	fbge_cont.28433
fbge_else.28432:
	li	$v0, 19646
	sll	$v0, $v0, 16
	ori	$v0, $v0, 48160
	mtc1	$f1, $v0
	fblt	$f0, $f1, fbge_else.28434
	li	$a0, 0
	j	fbge_cont.28435
fbge_else.28434:
	li	$a0, 1
fbge_cont.28435:
fbge_cont.28433:
	li	$a1, 0
	bne	$a0, $a1, beq_else.28436
	li	$a0, -1
	lw	$a1, 40($sp)
	sll	$a2, $a1, 2
	lw	$a3, 36($sp)
	add	$a2, $a3, $a2
	sw	$a0, 0($a2)
	li	$a0, 0
	bne	$a1, $a0, beq_else.28437
	jr	$ra
beq_else.28437:
	li	$a0, 312
	lw	$a1, 32($sp)
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
	fblt	$f1, $f0, fbge_else.28439
	jr	$ra
fbge_else.28439:
	fmul	$f1, $f0, $f0
	fmul	$f0, $f1, $f0
	flw	$f1, 24($sp)
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
beq_else.28436:
	li	$a0, 564
	lw	$a0, 0($a0)
	li	$a1, 48
	sll	$a2, $a0, 2
	add	$a2, $a1, $a2
	lw	$a1, 0($a2)
	lw	$a2, 8($a1)
	lw	$a3, 28($a1)
	flw	$f0, 0($a3)
	flw	$f1, 24($sp)
	fmul	$f0, $f0, $f1
	lw	$a3, 4($a1)
	li	$a4, 1
	bne	$a3, $a4, bne_else.28442
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
	lw	$a6, 32($sp)
	add	$a3, $a6, $a3
	flw	$f2, 0($a3)
	mtc1	$f3, $zero
	fbne	$f2, $f3, fbne_else.28444
	mtc1	$f2, $zero
	j	fbne_cont.28445
fbne_else.28444:
	mtc1	$f3, $zero
	fblt	$f3, $f2, fbge_else.28446
	li	$v0, -16512
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	j	fbge_cont.28447
fbge_else.28446:
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
fbge_cont.28447:
fbne_cont.28445:
	fneg	$f2, $f2
	sll	$a3, $a5, 2
	add	$a3, $a4, $a3
	fsw	$f2, 0($a3)
	j	bne_cont.28443
bne_else.28442:
	li	$a4, 2
	bne	$a3, $a4, bne_else.28448
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
	j	bne_cont.28449
bne_else.28448:
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
	bne	$a3, $a4, bne_else.28450
	li	$a3, 568
	fsw	$f5, 0($a3)
	li	$a3, 568
	fsw	$f6, 4($a3)
	li	$a3, 568
	fsw	$f7, 8($a3)
	j	bne_cont.28451
bne_else.28450:
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
bne_cont.28451:
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
	fbne	$f2, $f3, fbne_else.28452
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	j	fbne_cont.28453
fbne_else.28452:
	li	$a5, 0
	bne	$a4, $a5, bne_else.28454
	finv	$f2, $f2
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f3, $v0
	fmul	$f2, $f3, $f2
	j	bne_cont.28455
bne_else.28454:
	finv	$f2, $f2
	li	$v0, -16512
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f3, $v0
	fmul	$f2, $f3, $f2
bne_cont.28455:
fbne_cont.28453:
	flw	$f3, 0($a3)
	fmul	$f3, $f3, $f2
	fsw	$f3, 0($a3)
	flw	$f3, 4($a3)
	fmul	$f3, $f3, $f2
	fsw	$f3, 4($a3)
	flw	$f3, 8($a3)
	fmul	$f2, $f3, $f2
	fsw	$f2, 8($a3)
bne_cont.28449:
bne_cont.28443:
	li	$a3, 636
	li	$a4, 552
	flw	$f2, 0($a4)
	fsw	$f2, 0($a3)
	flw	$f2, 4($a4)
	fsw	$f2, 4($a3)
	flw	$f2, 8($a4)
	fsw	$f2, 8($a3)
	li	$a3, 552
	lw	$a26, 20($sp)
	sw	$a2, 44($sp)
	fsw	$f0, 48($sp)
	sw	$a1, 56($sp)
	sw	$a0, 60($sp)
	move	$a0, $a1
	move	$a1, $a3
	sw	$ra, 68($sp)
	addi	$sp, $sp, 72
	jal	utexture.3110
	subi	$sp, $sp, 72
	lw	$ra, 68($sp)
	fmove	$f30, $fv
	lw	$a0, 60($sp)
	sla	$a0, $a0, 2
	li	$a1, 544
	lw	$a1, 0($a1)
	add	$a0, $a0, $a1
	lw	$a1, 40($sp)
	sll	$a2, $a1, 2
	lw	$a3, 36($sp)
	add	$a2, $a3, $a2
	sw	$a0, 0($a2)
	lw	$a0, 16($sp)
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
	lw	$a4, 56($sp)
	lw	$a5, 28($a4)
	flw	$f1, 0($a5)
	fblt	$f1, $f0, fbge_else.28456
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
	flw	$f1, 48($sp)
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
	j	fbge_cont.28457
fbge_else.28456:
	li	$a5, 0
	sll	$a6, $a1, 2
	add	$a6, $a2, $a6
	sw	$a5, 0($a6)
fbge_cont.28457:
	li	$a2, 568
	lw	$a5, 32($sp)
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
	flw	$f1, 24($sp)
	fmul	$f0, $f1, $f0
	li	$a2, 0
	li	$a6, 536
	lw	$a6, 0($a6)
	fsw	$f0, 64($sp)
	move	$a1, $a6
	move	$a0, $a2
	sw	$ra, 76($sp)
	addi	$sp, $sp, 80
	jal	shadow_check_one_or_matrix.3070
	subi	$sp, $sp, 80
	lw	$ra, 76($sp)
	move	$a0, $v0
	li	$a1, 0
	bne	$a0, $a1, bne_else.28458
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
	flw	$f1, 48($sp)
	fmul	$f0, $f0, $f1
	li	$a0, 312
	lw	$a1, 32($sp)
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
	fblt	$f3, $f0, fbge_else.28460
	j	fbge_cont.28461
fbge_else.28460:
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
fbge_cont.28461:
	mtc1	$f0, $zero
	fblt	$f0, $f2, fbge_else.28462
	j	fbge_cont.28463
fbge_else.28462:
	fmul	$f0, $f2, $f2
	fmul	$f0, $f0, $f0
	flw	$f2, 64($sp)
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
fbge_cont.28463:
	j	bne_cont.28459
bne_else.28458:
bne_cont.28459:
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
	sw	$ra, 76($sp)
	addi	$sp, $sp, 80
	jal	setup_startp_constants.3033
	subi	$sp, $sp, 80
	lw	$ra, 76($sp)
	fmove	$f30, $fv
	li	$a0, 1736
	lw	$a0, 0($a0)
	subi	$a0, $a0, 1
	flw	$f0, 48($sp)
	flw	$f1, 64($sp)
	lw	$a1, 32($sp)
	sw	$ra, 76($sp)
	addi	$sp, $sp, 80
	jal	trace_reflections.3117
	subi	$sp, $sp, 80
	lw	$ra, 76($sp)
	fmove	$f30, $fv
	li	$v0, 15820
	sll	$v0, $v0, 16
	ori	$v0, $v0, 52429
	mtc1	$f0, $v0
	flw	$f1, 24($sp)
	fblt	$f0, $f1, fbge_else.28464
	jr	$ra
fbge_else.28464:
	li	$a0, 4
	lw	$a1, 40($sp)
	blt	$a1, $a0, bge_else.28466
	j	bge_cont.28467
bge_else.28466:
	addi	$a0, $a1, 1
	li	$a2, -1
	sll	$a0, $a0, 2
	lw	$a3, 36($sp)
	add	$a0, $a3, $a0
	sw	$a2, 0($a0)
bge_cont.28467:
	li	$a0, 2
	lw	$a2, 44($sp)
	bne	$a2, $a0, beq_else.28468
	lw	$a0, 56($sp)
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
	flw	$f2, 8($sp)
	fadd	$f1, $f2, $f1
	lw	$a1, 32($sp)
	lw	$a2, 16($sp)
	lw	$a26, 0($sp)
	lw	$a25, 0($a26)
	j	trace_ray.3122
beq_else.28468:
	jr	$ra
bge_else.28430:
	jr	$ra
iter_trace_diffuse_rays.3131:
	lw	$a4, 4($a26)
	li	$a5, 0
	blt	$a3, $a5, bge_else.28471
	sll	$a5, $a3, 2
	add	$a5, $a0, $a5
	lw	$a5, 0($a5)
	lw	$a5, 0($a5)
	flw	$f0, 0($a5)
	flw	$f1, 0($a1)
	fmul	$f0, $f0, $f1
	flw	$f1, 4($a5)
	flw	$f2, 4($a1)
	fmul	$f1, $f1, $f2
	fadd	$f0, $f0, $f1
	flw	$f1, 8($a5)
	flw	$f2, 8($a1)
	fmul	$f1, $f1, $f2
	fadd	$f0, $f0, $f1
	mtc1	$f1, $zero
	sw	$a2, 0($sp)
	sw	$a1, 4($sp)
	sw	$a0, 8($sp)
	sw	$a26, 12($sp)
	sw	$a3, 16($sp)
	fblt	$f0, $f1, fbge_else.28472
	sll	$a5, $a3, 2
	add	$a5, $a0, $a5
	lw	$a5, 0($a5)
	li	$v0, 17174
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	finv	$f1, $f1
	fmul	$f0, $f0, $f1
	li	$a6, 548
	li	$a7, 0
	li	$v0, 20078
	sll	$v0, $v0, 16
	ori	$v0, $v0, 27432
	mtc1	$f1, $v0
	fsw	$f1, 0($a6)
	li	$a6, 536
	lw	$a6, 0($a6)
	fsw	$f0, 24($sp)
	sw	$a4, 32($sp)
	sw	$a5, 36($sp)
	move	$a2, $a5
	move	$a1, $a6
	move	$a0, $a7
	sw	$ra, 44($sp)
	addi	$sp, $sp, 48
	jal	trace_or_matrix_fast.3095
	subi	$sp, $sp, 48
	lw	$ra, 44($sp)
	fmove	$f30, $fv
	li	$a0, 548
	flw	$f0, 0($a0)
	li	$v0, -16948
	sll	$v0, $v0, 16
	ori	$v0, $v0, 52429
	mtc1	$f1, $v0
	fblt	$f1, $f0, fbge_else.28475
	li	$a0, 0
	j	fbge_cont.28476
fbge_else.28475:
	li	$v0, 19646
	sll	$v0, $v0, 16
	ori	$v0, $v0, 48160
	mtc1	$f1, $v0
	fblt	$f0, $f1, fbge_else.28477
	li	$a0, 0
	j	fbge_cont.28478
fbge_else.28477:
	li	$a0, 1
fbge_cont.28478:
fbge_cont.28476:
	li	$a1, 0
	bne	$a0, $a1, bne_else.28479
	j	bne_cont.28480
bne_else.28479:
	li	$a0, 48
	li	$a1, 564
	lw	$a1, 0($a1)
	sll	$a1, $a1, 2
	add	$a1, $a0, $a1
	lw	$a0, 0($a1)
	lw	$a1, 36($sp)
	lw	$a1, 0($a1)
	lw	$a2, 4($a0)
	li	$a3, 1
	bne	$a2, $a3, bne_else.28481
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
	fbne	$f0, $f1, fbne_else.28483
	mtc1	$f0, $zero
	j	fbne_cont.28484
fbne_else.28483:
	mtc1	$f1, $zero
	fblt	$f1, $f0, fbge_else.28485
	li	$v0, -16512
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f0, $v0
	j	fbge_cont.28486
fbge_else.28485:
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f0, $v0
fbge_cont.28486:
fbne_cont.28484:
	fneg	$f0, $f0
	sll	$a1, $a4, 2
	add	$a1, $a3, $a1
	fsw	$f0, 0($a1)
	j	bne_cont.28482
bne_else.28481:
	li	$a1, 2
	bne	$a2, $a1, bne_else.28487
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
	j	bne_cont.28488
bne_else.28487:
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
	bne	$a1, $a2, bne_else.28489
	li	$a1, 568
	fsw	$f3, 0($a1)
	li	$a1, 568
	fsw	$f4, 4($a1)
	li	$a1, 568
	fsw	$f5, 8($a1)
	j	bne_cont.28490
bne_else.28489:
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
bne_cont.28490:
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
	fbne	$f0, $f1, fbne_else.28491
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f0, $v0
	j	fbne_cont.28492
fbne_else.28491:
	li	$a3, 0
	bne	$a2, $a3, bne_else.28493
	finv	$f0, $f0
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	fmul	$f0, $f1, $f0
	j	bne_cont.28494
bne_else.28493:
	finv	$f0, $f0
	li	$v0, -16512
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	fmul	$f0, $f1, $f0
bne_cont.28494:
fbne_cont.28492:
	flw	$f1, 0($a1)
	fmul	$f1, $f1, $f0
	fsw	$f1, 0($a1)
	flw	$f1, 4($a1)
	fmul	$f1, $f1, $f0
	fsw	$f1, 4($a1)
	flw	$f1, 8($a1)
	fmul	$f0, $f1, $f0
	fsw	$f0, 8($a1)
bne_cont.28488:
bne_cont.28482:
	li	$a1, 552
	lw	$a26, 32($sp)
	sw	$a0, 40($sp)
	sw	$ra, 44($sp)
	addi	$sp, $sp, 48
	jal	utexture.3110
	subi	$sp, $sp, 48
	lw	$ra, 44($sp)
	fmove	$f30, $fv
	li	$a0, 0
	li	$a1, 536
	lw	$a1, 0($a1)
	sw	$ra, 44($sp)
	addi	$sp, $sp, 48
	jal	shadow_check_one_or_matrix.3070
	subi	$sp, $sp, 48
	lw	$ra, 44($sp)
	move	$a0, $v0
	li	$a1, 0
	bne	$a0, $a1, bne_else.28495
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
	fblt	$f1, $f0, fbge_else.28497
	mtc1	$f0, $zero
	j	fbge_cont.28498
fbge_else.28497:
fbge_cont.28498:
	li	$a0, 592
	flw	$f1, 24($sp)
	fmul	$f0, $f1, $f0
	lw	$a1, 40($sp)
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
	j	bne_cont.28496
bne_else.28495:
bne_cont.28496:
bne_cont.28480:
	j	fbge_cont.28473
fbge_else.28472:
	addi	$a5, $a3, 1
	sll	$a5, $a5, 2
	add	$a5, $a0, $a5
	lw	$a5, 0($a5)
	li	$v0, -15594
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	finv	$f1, $f1
	fmul	$f0, $f0, $f1
	li	$a6, 548
	li	$a7, 0
	li	$v0, 20078
	sll	$v0, $v0, 16
	ori	$v0, $v0, 27432
	mtc1	$f1, $v0
	fsw	$f1, 0($a6)
	li	$a6, 536
	lw	$a6, 0($a6)
	fsw	$f0, 48($sp)
	sw	$a4, 32($sp)
	sw	$a5, 56($sp)
	move	$a2, $a5
	move	$a1, $a6
	move	$a0, $a7
	sw	$ra, 60($sp)
	addi	$sp, $sp, 64
	jal	trace_or_matrix_fast.3095
	subi	$sp, $sp, 64
	lw	$ra, 60($sp)
	fmove	$f30, $fv
	li	$a0, 548
	flw	$f0, 0($a0)
	li	$v0, -16948
	sll	$v0, $v0, 16
	ori	$v0, $v0, 52429
	mtc1	$f1, $v0
	fblt	$f1, $f0, fbge_else.28500
	li	$a0, 0
	j	fbge_cont.28501
fbge_else.28500:
	li	$v0, 19646
	sll	$v0, $v0, 16
	ori	$v0, $v0, 48160
	mtc1	$f1, $v0
	fblt	$f0, $f1, fbge_else.28502
	li	$a0, 0
	j	fbge_cont.28503
fbge_else.28502:
	li	$a0, 1
fbge_cont.28503:
fbge_cont.28501:
	li	$a1, 0
	bne	$a0, $a1, bne_else.28504
	j	bne_cont.28505
bne_else.28504:
	li	$a0, 48
	li	$a1, 564
	lw	$a1, 0($a1)
	sll	$a1, $a1, 2
	add	$a1, $a0, $a1
	lw	$a0, 0($a1)
	lw	$a1, 56($sp)
	lw	$a1, 0($a1)
	lw	$a2, 4($a0)
	li	$a3, 1
	bne	$a2, $a3, bne_else.28506
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
	fbne	$f0, $f1, fbne_else.28508
	mtc1	$f0, $zero
	j	fbne_cont.28509
fbne_else.28508:
	mtc1	$f1, $zero
	fblt	$f1, $f0, fbge_else.28510
	li	$v0, -16512
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f0, $v0
	j	fbge_cont.28511
fbge_else.28510:
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f0, $v0
fbge_cont.28511:
fbne_cont.28509:
	fneg	$f0, $f0
	sll	$a1, $a4, 2
	add	$a1, $a3, $a1
	fsw	$f0, 0($a1)
	j	bne_cont.28507
bne_else.28506:
	li	$a1, 2
	bne	$a2, $a1, bne_else.28512
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
	j	bne_cont.28513
bne_else.28512:
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
	bne	$a1, $a2, bne_else.28514
	li	$a1, 568
	fsw	$f3, 0($a1)
	li	$a1, 568
	fsw	$f4, 4($a1)
	li	$a1, 568
	fsw	$f5, 8($a1)
	j	bne_cont.28515
bne_else.28514:
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
bne_cont.28515:
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
	fbne	$f0, $f1, fbne_else.28516
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f0, $v0
	j	fbne_cont.28517
fbne_else.28516:
	li	$a3, 0
	bne	$a2, $a3, bne_else.28518
	finv	$f0, $f0
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	fmul	$f0, $f1, $f0
	j	bne_cont.28519
bne_else.28518:
	finv	$f0, $f0
	li	$v0, -16512
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	fmul	$f0, $f1, $f0
bne_cont.28519:
fbne_cont.28517:
	flw	$f1, 0($a1)
	fmul	$f1, $f1, $f0
	fsw	$f1, 0($a1)
	flw	$f1, 4($a1)
	fmul	$f1, $f1, $f0
	fsw	$f1, 4($a1)
	flw	$f1, 8($a1)
	fmul	$f0, $f1, $f0
	fsw	$f0, 8($a1)
bne_cont.28513:
bne_cont.28507:
	li	$a1, 552
	lw	$a26, 32($sp)
	sw	$a0, 60($sp)
	sw	$ra, 68($sp)
	addi	$sp, $sp, 72
	jal	utexture.3110
	subi	$sp, $sp, 72
	lw	$ra, 68($sp)
	fmove	$f30, $fv
	li	$a0, 0
	li	$a1, 536
	lw	$a1, 0($a1)
	sw	$ra, 68($sp)
	addi	$sp, $sp, 72
	jal	shadow_check_one_or_matrix.3070
	subi	$sp, $sp, 72
	lw	$ra, 68($sp)
	move	$a0, $v0
	li	$a1, 0
	bne	$a0, $a1, bne_else.28520
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
	fblt	$f1, $f0, fbge_else.28522
	mtc1	$f0, $zero
	j	fbge_cont.28523
fbge_else.28522:
fbge_cont.28523:
	li	$a0, 592
	flw	$f1, 48($sp)
	fmul	$f0, $f1, $f0
	lw	$a1, 60($sp)
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
	j	bne_cont.28521
bne_else.28520:
bne_cont.28521:
bne_cont.28505:
fbge_cont.28473:
	lw	$a0, 16($sp)
	subi	$a3, $a0, 2
	lw	$a0, 8($sp)
	lw	$a1, 4($sp)
	lw	$a2, 0($sp)
	lw	$a26, 12($sp)
	lw	$a25, 0($a26)
	j	iter_trace_diffuse_rays.3131
bge_else.28471:
	jr	$ra
do_without_neighbors.3153:
	lw	$a2, 4($a26)
	li	$a3, 4
	blt	$a3, $a1, bge_else.28525
	lw	$a3, 8($a0)
	li	$a4, 0
	sll	$a5, $a1, 2
	add	$a5, $a3, $a5
	lw	$a3, 0($a5)
	blt	$a3, $a4, bge_else.28526
	lw	$a3, 12($a0)
	sll	$a4, $a1, 2
	add	$a4, $a3, $a4
	lw	$a3, 0($a4)
	li	$a4, 0
	sw	$a0, 0($sp)
	sw	$a26, 4($sp)
	bne	$a3, $a4, bne_else.28527
	j	bne_cont.28528
bne_else.28527:
	lw	$a3, 20($a0)
	lw	$a4, 28($a0)
	lw	$a5, 4($a0)
	lw	$a6, 16($a0)
	li	$a7, 592
	sll	$a8, $a1, 2
	add	$a8, $a3, $a8
	lw	$a3, 0($a8)
	flw	$f0, 0($a3)
	fsw	$f0, 0($a7)
	flw	$f0, 4($a3)
	fsw	$f0, 4($a7)
	flw	$f0, 8($a3)
	fsw	$f0, 8($a7)
	lw	$a3, 24($a0)
	lw	$a3, 0($a3)
	sll	$a7, $a1, 2
	add	$a7, $a4, $a7
	lw	$a4, 0($a7)
	sll	$a7, $a1, 2
	add	$a7, $a5, $a7
	lw	$a5, 0($a7)
	li	$a7, 0
	sw	$a6, 8($sp)
	sw	$a1, 12($sp)
	sw	$a4, 16($sp)
	sw	$a2, 20($sp)
	sw	$a5, 24($sp)
	sw	$a3, 28($sp)
	bne	$a3, $a7, bne_else.28529
	j	bne_cont.28530
bne_else.28529:
	li	$a7, 716
	lw	$a7, 0($a7)
	li	$a8, 648
	flw	$f0, 0($a5)
	fsw	$f0, 0($a8)
	flw	$f0, 4($a5)
	fsw	$f0, 4($a8)
	flw	$f0, 8($a5)
	fsw	$f0, 8($a8)
	li	$a8, 0
	lw	$a8, 0($a8)
	subi	$a8, $a8, 1
	sw	$a7, 32($sp)
	move	$a1, $a8
	move	$a0, $a5
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	setup_startp_constants.3033
	subi	$sp, $sp, 40
	lw	$ra, 36($sp)
	fmove	$f30, $fv
	li	$a3, 118
	lw	$a0, 32($sp)
	lw	$a1, 16($sp)
	lw	$a2, 24($sp)
	lw	$a26, 20($sp)
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	iter_trace_diffuse_rays.3131
	subi	$sp, $sp, 40
	lw	$ra, 36($sp)
	fmove	$f30, $fv
bne_cont.28530:
	li	$a0, 1
	lw	$a1, 28($sp)
	bne	$a1, $a0, bne_else.28531
	j	bne_cont.28532
bne_else.28531:
	li	$a0, 716
	lw	$a0, 4($a0)
	li	$a2, 648
	lw	$a3, 24($sp)
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
	jal	setup_startp_constants.3033
	subi	$sp, $sp, 48
	lw	$ra, 44($sp)
	fmove	$f30, $fv
	li	$a3, 118
	lw	$a0, 36($sp)
	lw	$a1, 16($sp)
	lw	$a2, 24($sp)
	lw	$a26, 20($sp)
	sw	$ra, 44($sp)
	addi	$sp, $sp, 48
	jal	iter_trace_diffuse_rays.3131
	subi	$sp, $sp, 48
	lw	$ra, 44($sp)
	fmove	$f30, $fv
bne_cont.28532:
	li	$a0, 2
	lw	$a1, 28($sp)
	bne	$a1, $a0, bne_else.28533
	j	bne_cont.28534
bne_else.28533:
	li	$a0, 716
	lw	$a0, 8($a0)
	li	$a2, 648
	lw	$a3, 24($sp)
	flw	$f0, 0($a3)
	fsw	$f0, 0($a2)
	flw	$f0, 4($a3)
	fsw	$f0, 4($a2)
	flw	$f0, 8($a3)
	fsw	$f0, 8($a2)
	li	$a2, 0
	lw	$a2, 0($a2)
	subi	$a2, $a2, 1
	sw	$a0, 40($sp)
	move	$a1, $a2
	move	$a0, $a3
	sw	$ra, 44($sp)
	addi	$sp, $sp, 48
	jal	setup_startp_constants.3033
	subi	$sp, $sp, 48
	lw	$ra, 44($sp)
	fmove	$f30, $fv
	li	$a3, 118
	lw	$a0, 40($sp)
	lw	$a1, 16($sp)
	lw	$a2, 24($sp)
	lw	$a26, 20($sp)
	sw	$ra, 44($sp)
	addi	$sp, $sp, 48
	jal	iter_trace_diffuse_rays.3131
	subi	$sp, $sp, 48
	lw	$ra, 44($sp)
	fmove	$f30, $fv
bne_cont.28534:
	li	$a0, 3
	lw	$a1, 28($sp)
	bne	$a1, $a0, bne_else.28535
	j	bne_cont.28536
bne_else.28535:
	li	$a0, 716
	lw	$a0, 12($a0)
	li	$a2, 648
	lw	$a3, 24($sp)
	flw	$f0, 0($a3)
	fsw	$f0, 0($a2)
	flw	$f0, 4($a3)
	fsw	$f0, 4($a2)
	flw	$f0, 8($a3)
	fsw	$f0, 8($a2)
	li	$a2, 0
	lw	$a2, 0($a2)
	subi	$a2, $a2, 1
	sw	$a0, 44($sp)
	move	$a1, $a2
	move	$a0, $a3
	sw	$ra, 52($sp)
	addi	$sp, $sp, 56
	jal	setup_startp_constants.3033
	subi	$sp, $sp, 56
	lw	$ra, 52($sp)
	fmove	$f30, $fv
	li	$a3, 118
	lw	$a0, 44($sp)
	lw	$a1, 16($sp)
	lw	$a2, 24($sp)
	lw	$a26, 20($sp)
	sw	$ra, 52($sp)
	addi	$sp, $sp, 56
	jal	iter_trace_diffuse_rays.3131
	subi	$sp, $sp, 56
	lw	$ra, 52($sp)
	fmove	$f30, $fv
bne_cont.28536:
	li	$a0, 4
	lw	$a1, 28($sp)
	bne	$a1, $a0, bne_else.28537
	j	bne_cont.28538
bne_else.28537:
	li	$a0, 716
	lw	$a0, 16($a0)
	li	$a1, 648
	lw	$a2, 24($sp)
	flw	$f0, 0($a2)
	fsw	$f0, 0($a1)
	flw	$f0, 4($a2)
	fsw	$f0, 4($a1)
	flw	$f0, 8($a2)
	fsw	$f0, 8($a1)
	li	$a1, 0
	lw	$a1, 0($a1)
	subi	$a1, $a1, 1
	sw	$a0, 48($sp)
	move	$a0, $a2
	sw	$ra, 52($sp)
	addi	$sp, $sp, 56
	jal	setup_startp_constants.3033
	subi	$sp, $sp, 56
	lw	$ra, 52($sp)
	fmove	$f30, $fv
	li	$a3, 118
	lw	$a0, 48($sp)
	lw	$a1, 16($sp)
	lw	$a2, 24($sp)
	lw	$a26, 20($sp)
	sw	$ra, 52($sp)
	addi	$sp, $sp, 56
	jal	iter_trace_diffuse_rays.3131
	subi	$sp, $sp, 56
	lw	$ra, 52($sp)
	fmove	$f30, $fv
bne_cont.28538:
	li	$a0, 604
	lw	$a1, 12($sp)
	sll	$a2, $a1, 2
	lw	$a3, 8($sp)
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
bne_cont.28528:
	addi	$a1, $a1, 1
	lw	$a0, 0($sp)
	lw	$a26, 4($sp)
	lw	$a25, 0($a26)
	j	do_without_neighbors.3153
bge_else.28526:
	jr	$ra
bge_else.28525:
	jr	$ra
try_exploit_neighbors.3169:
	lw	$a6, 4($a26)
	sll	$a7, $a0, 2
	add	$a7, $a3, $a7
	lw	$a7, 0($a7)
	li	$a8, 4
	blt	$a8, $a5, bge_else.28541
	li	$a8, 0
	lw	$a9, 8($a7)
	sll	$a10, $a5, 2
	add	$a10, $a9, $a10
	lw	$a9, 0($a10)
	blt	$a9, $a8, bge_else.28542
	sll	$a8, $a0, 2
	add	$a8, $a3, $a8
	lw	$a8, 0($a8)
	lw	$a8, 8($a8)
	sll	$a9, $a5, 2
	add	$a9, $a8, $a9
	lw	$a8, 0($a9)
	sll	$a9, $a0, 2
	add	$a9, $a2, $a9
	lw	$a9, 0($a9)
	lw	$a9, 8($a9)
	sll	$a10, $a5, 2
	add	$a10, $a9, $a10
	lw	$a9, 0($a10)
	bne	$a9, $a8, bne_else.28543
	sll	$a9, $a0, 2
	add	$a9, $a4, $a9
	lw	$a9, 0($a9)
	lw	$a9, 8($a9)
	sll	$a10, $a5, 2
	add	$a10, $a9, $a10
	lw	$a9, 0($a10)
	bne	$a9, $a8, bne_else.28545
	subi	$a9, $a0, 1
	sll	$a9, $a9, 2
	add	$a9, $a3, $a9
	lw	$a9, 0($a9)
	lw	$a9, 8($a9)
	sll	$a10, $a5, 2
	add	$a10, $a9, $a10
	lw	$a9, 0($a10)
	bne	$a9, $a8, bne_else.28547
	addi	$a9, $a0, 1
	sll	$a9, $a9, 2
	add	$a9, $a3, $a9
	lw	$a9, 0($a9)
	lw	$a9, 8($a9)
	sll	$a10, $a5, 2
	add	$a10, $a9, $a10
	lw	$a9, 0($a10)
	bne	$a9, $a8, bne_else.28549
	li	$a8, 1
	j	bne_cont.28550
bne_else.28549:
	li	$a8, 0
bne_cont.28550:
	j	bne_cont.28548
bne_else.28547:
	li	$a8, 0
bne_cont.28548:
	j	bne_cont.28546
bne_else.28545:
	li	$a8, 0
bne_cont.28546:
	j	bne_cont.28544
bne_else.28543:
	li	$a8, 0
bne_cont.28544:
	li	$a9, 0
	bne	$a8, $a9, beq_else.28551
	sll	$a0, $a0, 2
	add	$a0, $a3, $a0
	lw	$a0, 0($a0)
	move	$a1, $a5
	move	$a26, $a6
	lw	$a25, 0($a26)
	j	do_without_neighbors.3153
beq_else.28551:
	lw	$a6, 12($a7)
	sll	$a7, $a5, 2
	add	$a7, $a6, $a7
	lw	$a6, 0($a7)
	li	$a7, 0
	bne	$a6, $a7, bne_else.28552
	j	bne_cont.28553
bne_else.28552:
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
bne_cont.28553:
	addi	$a5, $a5, 1
	lw	$a25, 0($a26)
	j	try_exploit_neighbors.3169
bge_else.28542:
	jr	$ra
bge_else.28541:
	jr	$ra
write_ppm_header.3176:
	li	$a23, 80
	print_char	$a23
	li	$a23, 51
	print_char	$a23
	li	$a23, 10
	print_char	$a23
	li	$a0, 616
	li	$a2, 0
	lw	$a1, 0($a0)
	blt	$a1, $a2, bge_else.28556
	j	bge_cont.28557
bge_else.28556:
	li	$a23, 45
	print_char	$a23
	neg	$a1, $a1
bge_cont.28557:
	li	$a3, 10000
	sw	$a2, 0($sp)
	sw	$a0, 4($sp)
	sw	$a1, 8($sp)
	move	$a0, $a1
	move	$a1, $a3
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	countn.2754
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	move	$a0, $v0
	li	$a1, 10000
	li	$a2, 0
	sw	$a0, 12($sp)
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	mymul.2758
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	move	$a0, $v0
	lw	$a1, 8($sp)
	sub	$a0, $a1, $a0
	li	$a2, 0
	lw	$a1, 12($sp)
	blt	$a2, $a1, bge_else.28558
	li	$a1, 0
	j	bge_cont.28559
bge_else.28558:
	addi	$a1, $a1, 48
	print_char	$a1
	li	$a1, 1
bge_cont.28559:
	li	$a3, 1000
	sw	$a1, 16($sp)
	sw	$a0, 20($sp)
	move	$a1, $a3
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	countn.2754
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	move	$a0, $v0
	li	$a1, 1000
	li	$a2, 0
	sw	$a0, 24($sp)
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	mymul.2758
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	move	$a0, $v0
	lw	$a1, 20($sp)
	sub	$a0, $a1, $a0
	li	$a2, 0
	lw	$a1, 24($sp)
	blt	$a2, $a1, bge_else.28560
	li	$a1, 1
	lw	$a3, 16($sp)
	bne	$a3, $a1, bne_else.28562
	li	$a23, 48
	print_char	$a23
	li	$a1, 1
	j	bne_cont.28563
bne_else.28562:
	li	$a1, 0
bne_cont.28563:
	j	bge_cont.28561
bge_else.28560:
	addi	$a1, $a1, 48
	print_char	$a1
	li	$a1, 1
bge_cont.28561:
	li	$a3, 100
	sw	$a1, 28($sp)
	sw	$a0, 32($sp)
	move	$a1, $a3
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	countn.2754
	subi	$sp, $sp, 40
	lw	$ra, 36($sp)
	move	$a0, $v0
	li	$a1, 100
	li	$a2, 0
	sw	$a0, 36($sp)
	sw	$ra, 44($sp)
	addi	$sp, $sp, 48
	jal	mymul.2758
	subi	$sp, $sp, 48
	lw	$ra, 44($sp)
	move	$a0, $v0
	lw	$a1, 32($sp)
	sub	$a0, $a1, $a0
	li	$a2, 0
	lw	$a1, 36($sp)
	blt	$a2, $a1, bge_else.28564
	li	$a1, 1
	lw	$a3, 28($sp)
	bne	$a3, $a1, bne_else.28566
	li	$a23, 48
	print_char	$a23
	li	$a1, 1
	j	bne_cont.28567
bne_else.28566:
	li	$a1, 0
bne_cont.28567:
	j	bge_cont.28565
bge_else.28564:
	addi	$a1, $a1, 48
	print_char	$a1
	li	$a1, 1
bge_cont.28565:
	li	$a3, 10
	sw	$a1, 40($sp)
	sw	$a0, 44($sp)
	move	$a1, $a3
	sw	$ra, 52($sp)
	addi	$sp, $sp, 56
	jal	countn.2754
	subi	$sp, $sp, 56
	lw	$ra, 52($sp)
	move	$a0, $v0
	li	$a1, 10
	li	$a2, 0
	sw	$a0, 48($sp)
	sw	$ra, 52($sp)
	addi	$sp, $sp, 56
	jal	mymul.2758
	subi	$sp, $sp, 56
	lw	$ra, 52($sp)
	move	$a0, $v0
	lw	$a1, 44($sp)
	sub	$a0, $a1, $a0
	li	$a1, 0
	lw	$a2, 48($sp)
	blt	$a1, $a2, bge_else.28568
	li	$a1, 1
	lw	$a2, 40($sp)
	bne	$a2, $a1, bne_else.28570
	li	$a23, 48
	print_char	$a23
	li	$a1, 1
	j	bne_cont.28571
bne_else.28570:
	li	$a1, 0
bne_cont.28571:
	j	bge_cont.28569
bge_else.28568:
	addi	$a1, $a2, 48
	print_char	$a1
	li	$a1, 1
bge_cont.28569:
	addi	$a0, $a0, 48
	print_char	$a0
	li	$a23, 32
	print_char	$a23
	lw	$a0, 4($sp)
	lw	$a0, 4($a0)
	lw	$a2, 0($sp)
	blt	$a0, $a2, bge_else.28572
	j	bge_cont.28573
bge_else.28572:
	li	$a23, 45
	print_char	$a23
	neg	$a0, $a0
bge_cont.28573:
	li	$a1, 10000
	sw	$a0, 52($sp)
	sw	$ra, 60($sp)
	addi	$sp, $sp, 64
	jal	countn.2754
	subi	$sp, $sp, 64
	lw	$ra, 60($sp)
	move	$a0, $v0
	li	$a1, 10000
	li	$a2, 0
	sw	$a0, 56($sp)
	sw	$ra, 60($sp)
	addi	$sp, $sp, 64
	jal	mymul.2758
	subi	$sp, $sp, 64
	lw	$ra, 60($sp)
	move	$a0, $v0
	lw	$a1, 52($sp)
	sub	$a0, $a1, $a0
	li	$a2, 0
	lw	$a1, 56($sp)
	blt	$a2, $a1, bge_else.28574
	li	$a1, 0
	j	bge_cont.28575
bge_else.28574:
	addi	$a1, $a1, 48
	print_char	$a1
	li	$a1, 1
bge_cont.28575:
	li	$a3, 1000
	sw	$a1, 60($sp)
	sw	$a0, 64($sp)
	move	$a1, $a3
	sw	$ra, 68($sp)
	addi	$sp, $sp, 72
	jal	countn.2754
	subi	$sp, $sp, 72
	lw	$ra, 68($sp)
	move	$a0, $v0
	li	$a1, 1000
	li	$a2, 0
	sw	$a0, 68($sp)
	sw	$ra, 76($sp)
	addi	$sp, $sp, 80
	jal	mymul.2758
	subi	$sp, $sp, 80
	lw	$ra, 76($sp)
	move	$a0, $v0
	lw	$a1, 64($sp)
	sub	$a0, $a1, $a0
	li	$a2, 0
	lw	$a1, 68($sp)
	blt	$a2, $a1, bge_else.28576
	li	$a1, 1
	lw	$a3, 60($sp)
	bne	$a3, $a1, bne_else.28578
	li	$a23, 48
	print_char	$a23
	li	$a1, 1
	j	bne_cont.28579
bne_else.28578:
	li	$a1, 0
bne_cont.28579:
	j	bge_cont.28577
bge_else.28576:
	addi	$a1, $a1, 48
	print_char	$a1
	li	$a1, 1
bge_cont.28577:
	li	$a3, 100
	sw	$a1, 72($sp)
	sw	$a0, 76($sp)
	move	$a1, $a3
	sw	$ra, 84($sp)
	addi	$sp, $sp, 88
	jal	countn.2754
	subi	$sp, $sp, 88
	lw	$ra, 84($sp)
	move	$a0, $v0
	li	$a1, 100
	li	$a2, 0
	sw	$a0, 80($sp)
	sw	$ra, 84($sp)
	addi	$sp, $sp, 88
	jal	mymul.2758
	subi	$sp, $sp, 88
	lw	$ra, 84($sp)
	move	$a0, $v0
	lw	$a1, 76($sp)
	sub	$a0, $a1, $a0
	li	$a2, 0
	lw	$a1, 80($sp)
	blt	$a2, $a1, bge_else.28580
	li	$a1, 1
	lw	$a3, 72($sp)
	bne	$a3, $a1, bne_else.28582
	li	$a23, 48
	print_char	$a23
	li	$a1, 1
	j	bne_cont.28583
bne_else.28582:
	li	$a1, 0
bne_cont.28583:
	j	bge_cont.28581
bge_else.28580:
	addi	$a1, $a1, 48
	print_char	$a1
	li	$a1, 1
bge_cont.28581:
	li	$a3, 10
	sw	$a1, 84($sp)
	sw	$a0, 88($sp)
	move	$a1, $a3
	sw	$ra, 92($sp)
	addi	$sp, $sp, 96
	jal	countn.2754
	subi	$sp, $sp, 96
	lw	$ra, 92($sp)
	move	$a0, $v0
	li	$a1, 10
	li	$a2, 0
	sw	$a0, 92($sp)
	sw	$ra, 100($sp)
	addi	$sp, $sp, 104
	jal	mymul.2758
	subi	$sp, $sp, 104
	lw	$ra, 100($sp)
	move	$a0, $v0
	lw	$a1, 88($sp)
	sub	$a0, $a1, $a0
	li	$a1, 0
	lw	$a2, 92($sp)
	blt	$a1, $a2, bge_else.28584
	li	$a1, 1
	lw	$a2, 84($sp)
	bne	$a2, $a1, bne_else.28586
	li	$a23, 48
	print_char	$a23
	li	$a1, 1
	j	bne_cont.28587
bne_else.28586:
	li	$a1, 0
bne_cont.28587:
	j	bge_cont.28585
bge_else.28584:
	addi	$a1, $a2, 48
	print_char	$a1
	li	$a1, 1
bge_cont.28585:
	addi	$a0, $a0, 48
	print_char	$a0
	li	$a23, 32
	print_char	$a23
	li	$a0, 255
	li	$a1, 10000
	lw	$a2, 0($sp)
	sw	$ra, 100($sp)
	addi	$sp, $sp, 104
	jal	countn.2754
	subi	$sp, $sp, 104
	lw	$ra, 100($sp)
	move	$a0, $v0
	li	$a1, 10000
	li	$a2, 0
	sw	$a0, 96($sp)
	sw	$ra, 100($sp)
	addi	$sp, $sp, 104
	jal	mymul.2758
	subi	$sp, $sp, 104
	lw	$ra, 100($sp)
	move	$a0, $v0
	li	$a1, 255
	sub	$a0, $a1, $a0
	li	$a2, 0
	lw	$a1, 96($sp)
	blt	$a2, $a1, bge_else.28588
	li	$a1, 0
	j	bge_cont.28589
bge_else.28588:
	addi	$a1, $a1, 48
	print_char	$a1
	li	$a1, 1
bge_cont.28589:
	li	$a3, 1000
	sw	$a1, 100($sp)
	sw	$a0, 104($sp)
	move	$a1, $a3
	sw	$ra, 108($sp)
	addi	$sp, $sp, 112
	jal	countn.2754
	subi	$sp, $sp, 112
	lw	$ra, 108($sp)
	move	$a0, $v0
	li	$a1, 1000
	li	$a2, 0
	sw	$a0, 108($sp)
	sw	$ra, 116($sp)
	addi	$sp, $sp, 120
	jal	mymul.2758
	subi	$sp, $sp, 120
	lw	$ra, 116($sp)
	move	$a0, $v0
	lw	$a1, 104($sp)
	sub	$a0, $a1, $a0
	li	$a2, 0
	lw	$a1, 108($sp)
	blt	$a2, $a1, bge_else.28590
	li	$a1, 1
	lw	$a3, 100($sp)
	bne	$a3, $a1, bne_else.28592
	li	$a23, 48
	print_char	$a23
	li	$a1, 1
	j	bne_cont.28593
bne_else.28592:
	li	$a1, 0
bne_cont.28593:
	j	bge_cont.28591
bge_else.28590:
	addi	$a1, $a1, 48
	print_char	$a1
	li	$a1, 1
bge_cont.28591:
	li	$a3, 100
	sw	$a1, 112($sp)
	sw	$a0, 116($sp)
	move	$a1, $a3
	sw	$ra, 124($sp)
	addi	$sp, $sp, 128
	jal	countn.2754
	subi	$sp, $sp, 128
	lw	$ra, 124($sp)
	move	$a0, $v0
	li	$a1, 100
	li	$a2, 0
	sw	$a0, 120($sp)
	sw	$ra, 124($sp)
	addi	$sp, $sp, 128
	jal	mymul.2758
	subi	$sp, $sp, 128
	lw	$ra, 124($sp)
	move	$a0, $v0
	lw	$a1, 116($sp)
	sub	$a0, $a1, $a0
	li	$a2, 0
	lw	$a1, 120($sp)
	blt	$a2, $a1, bge_else.28594
	li	$a1, 1
	lw	$a3, 112($sp)
	bne	$a3, $a1, bne_else.28596
	li	$a23, 48
	print_char	$a23
	li	$a1, 1
	j	bne_cont.28597
bne_else.28596:
	li	$a1, 0
bne_cont.28597:
	j	bge_cont.28595
bge_else.28594:
	addi	$a1, $a1, 48
	print_char	$a1
	li	$a1, 1
bge_cont.28595:
	li	$a3, 10
	sw	$a1, 124($sp)
	sw	$a0, 128($sp)
	move	$a1, $a3
	sw	$ra, 132($sp)
	addi	$sp, $sp, 136
	jal	countn.2754
	subi	$sp, $sp, 136
	lw	$ra, 132($sp)
	move	$a0, $v0
	li	$a1, 10
	li	$a2, 0
	sw	$a0, 132($sp)
	sw	$ra, 140($sp)
	addi	$sp, $sp, 144
	jal	mymul.2758
	subi	$sp, $sp, 144
	lw	$ra, 140($sp)
	move	$a0, $v0
	lw	$a1, 128($sp)
	sub	$a0, $a1, $a0
	li	$a1, 0
	lw	$a2, 132($sp)
	blt	$a1, $a2, bge_else.28598
	li	$a1, 1
	lw	$a2, 124($sp)
	bne	$a2, $a1, bne_else.28600
	li	$a23, 48
	print_char	$a23
	li	$a1, 1
	j	bne_cont.28601
bne_else.28600:
	li	$a1, 0
bne_cont.28601:
	j	bge_cont.28599
bge_else.28598:
	addi	$a1, $a2, 48
	print_char	$a1
	li	$a1, 1
bge_cont.28599:
	addi	$a0, $a0, 48
	print_char	$a0
	li	$a23, 10
	print_char	$a23
	jr	$ra
pretrace_diffuse_rays.3182:
	lw	$a2, 4($a26)
	li	$a3, 4
	blt	$a3, $a1, bge_else.28603
	lw	$a3, 8($a0)
	sll	$a4, $a1, 2
	add	$a4, $a3, $a4
	lw	$a3, 0($a4)
	li	$a4, 0
	blt	$a3, $a4, bge_else.28604
	lw	$a3, 12($a0)
	sll	$a4, $a1, 2
	add	$a4, $a3, $a4
	lw	$a3, 0($a4)
	li	$a4, 0
	sw	$a26, 0($sp)
	sw	$a1, 4($sp)
	bne	$a3, $a4, bne_else.28605
	j	bne_cont.28606
bne_else.28605:
	lw	$a3, 24($a0)
	lw	$a3, 0($a3)
	li	$a4, 592
	mtc1	$f0, $zero
	fsw	$f0, 0($a4)
	fsw	$f0, 4($a4)
	fsw	$f0, 8($a4)
	lw	$a4, 28($a0)
	lw	$a5, 4($a0)
	li	$a6, 716
	sll	$a3, $a3, 2
	add	$a3, $a6, $a3
	lw	$a3, 0($a3)
	sll	$a6, $a1, 2
	add	$a6, $a4, $a6
	lw	$a4, 0($a6)
	sll	$a6, $a1, 2
	add	$a6, $a5, $a6
	lw	$a5, 0($a6)
	li	$a6, 648
	flw	$f0, 0($a5)
	fsw	$f0, 0($a6)
	flw	$f0, 4($a5)
	fsw	$f0, 4($a6)
	flw	$f0, 8($a5)
	fsw	$f0, 8($a6)
	li	$a6, 0
	lw	$a6, 0($a6)
	subi	$a6, $a6, 1
	sw	$a0, 8($sp)
	sw	$a5, 12($sp)
	sw	$a4, 16($sp)
	sw	$a3, 20($sp)
	sw	$a2, 24($sp)
	move	$a1, $a6
	move	$a0, $a5
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	setup_startp_constants.3033
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	fmove	$f30, $fv
	li	$a3, 118
	lw	$a0, 20($sp)
	lw	$a1, 16($sp)
	lw	$a2, 12($sp)
	lw	$a26, 24($sp)
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	iter_trace_diffuse_rays.3131
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	fmove	$f30, $fv
	lw	$a0, 8($sp)
	lw	$a1, 20($a0)
	lw	$a2, 4($sp)
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
bne_cont.28606:
	lw	$a1, 4($sp)
	addi	$a1, $a1, 1
	lw	$a26, 0($sp)
	lw	$a25, 0($a26)
	j	pretrace_diffuse_rays.3182
bge_else.28604:
	jr	$ra
bge_else.28603:
	jr	$ra
itof_ret_sub.6582.7859.15025:
	sra	$a1, $a0, 1
	li	$a2, 0
	bne	$a0, $a2, beq_else.28609
	fmove	$fv, $f0
	jr $ra
beq_else.28609:
	sub	$a0, $a0, $a1
	sub	$a0, $a0, $a1
	li	$a2, 0
	blt	$a2, $a0, bge_else.28610
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fmul	$f1, $f1, $f2
	move	$a0, $a1
	j	itof_ret_sub.6582.7859.15025
bge_else.28610:
	fadd	$f0, $f0, $f1
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fmul	$f1, $f1, $f2
	move	$a0, $a1
	j	itof_ret_sub.6582.7859.15025
itof_big.6566.7843:
	li	$a1, 128
	sll	$a1, $a1, 16
	ori	$a1, $a1, 0
	sub	$a0, $a0, $a1
	li	$v0, 19200
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	fadd	$f0, $f0, $f1
	li	$a1, 128
	sll	$a1, $a1, 16
	ori	$a1, $a1, 0
	blt	$a0, $a1, bge_else.28611
	j	itof_big.6566.7843
bge_else.28611:
	mtc1	$f1, $zero
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fsw	$f0, 0($sp)
	fmove	$f0, $f1
	fmove	$f1, $f2
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	itof_ret_sub.6582.7859.15025
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	fmove	$f0, $fv
	flw	$f1, 0($sp)
	fadd	$fv, $f1, $f0
	jr $ra
itof_ret_sub.6582.7859.14993:
	sra	$a1, $a0, 1
	li	$a2, 0
	bne	$a0, $a2, beq_else.28612
	fmove	$fv, $f0
	jr $ra
beq_else.28612:
	sub	$a0, $a0, $a1
	sub	$a0, $a0, $a1
	li	$a2, 0
	blt	$a2, $a0, bge_else.28613
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fmul	$f1, $f1, $f2
	move	$a0, $a1
	j	itof_ret_sub.6582.7859.14993
bge_else.28613:
	fadd	$f0, $f0, $f1
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fmul	$f1, $f1, $f2
	move	$a0, $a1
	j	itof_ret_sub.6582.7859.14993
itof_ret_sub.6582.7859.15009:
	sra	$a1, $a0, 1
	li	$a2, 0
	bne	$a0, $a2, beq_else.28614
	fmove	$fv, $f0
	jr $ra
beq_else.28614:
	sub	$a0, $a0, $a1
	sub	$a0, $a0, $a1
	li	$a2, 0
	blt	$a2, $a0, bge_else.28615
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fmul	$f1, $f1, $f2
	move	$a0, $a1
	j	itof_ret_sub.6582.7859.15009
bge_else.28615:
	fadd	$f0, $f0, $f1
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fmul	$f1, $f1, $f2
	move	$a0, $a1
	j	itof_ret_sub.6582.7859.15009
pretrace_pixels.3185:
	lw	$a3, 8($a26)
	lw	$a4, 4($a26)
	li	$a5, 0
	blt	$a1, $a5, bge_else.28616
	li	$a5, 632
	flw	$f3, 0($a5)
	li	$a5, 624
	lw	$a5, 0($a5)
	sub	$a5, $a1, $a5
	li	$a6, 0
	blt	$a6, $a5, bge_else.28617
	neg	$a6, $a5
	j	bge_cont.28618
bge_else.28617:
	move	$a6, $a5
bge_cont.28618:
	li	$a7, 0
	blt	$a7, $a5, bge_else.28619
	li	$a5, -1
	j	bge_cont.28620
bge_else.28619:
	li	$a5, 1
bge_cont.28620:
	li	$a7, 1
	sw	$a26, 0($sp)
	sw	$a4, 4($sp)
	sw	$a2, 8($sp)
	sw	$a3, 12($sp)
	sw	$a0, 16($sp)
	sw	$a1, 20($sp)
	fsw	$f2, 24($sp)
	fsw	$f1, 32($sp)
	fsw	$f0, 40($sp)
	fsw	$f3, 48($sp)
	bne	$a5, $a7, bne_else.28621
	li	$a5, 128
	sll	$a5, $a5, 16
	ori	$a5, $a5, 0
	blt	$a5, $a6, bge_else.28623
	mtc1	$f4, $zero
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f5, $v0
	move	$a0, $a6
	fmove	$f1, $f5
	fmove	$f0, $f4
	sw	$ra, 60($sp)
	addi	$sp, $sp, 64
	jal	itof_ret_sub.6582.7859.15009
	subi	$sp, $sp, 64
	lw	$ra, 60($sp)
	fmove	$f0, $fv
	j	bge_cont.28624
bge_else.28623:
	mtc1	$f4, $zero
	move	$a0, $a6
	fmove	$f0, $f4
	sw	$ra, 60($sp)
	addi	$sp, $sp, 64
	jal	itof_big.6566.7843
	subi	$sp, $sp, 64
	lw	$ra, 60($sp)
	fmove	$f0, $fv
bge_cont.28624:
	j	bne_cont.28622
bne_else.28621:
	li	$a5, 128
	sll	$a5, $a5, 16
	ori	$a5, $a5, 0
	blt	$a5, $a6, bge_else.28625
	mtc1	$f4, $zero
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f5, $v0
	move	$a0, $a6
	fmove	$f1, $f5
	fmove	$f0, $f4
	sw	$ra, 60($sp)
	addi	$sp, $sp, 64
	jal	itof_ret_sub.6582.7859.14993
	subi	$sp, $sp, 64
	lw	$ra, 60($sp)
	fmove	$f0, $fv
	fneg	$f0, $f0
	j	bge_cont.28626
bge_else.28625:
	mtc1	$f4, $zero
	move	$a0, $a6
	fmove	$f0, $f4
	sw	$ra, 60($sp)
	addi	$sp, $sp, 64
	jal	itof_big.6566.7843
	subi	$sp, $sp, 64
	lw	$ra, 60($sp)
	fmove	$f0, $fv
	fneg	$f0, $f0
bge_cont.28626:
bne_cont.28622:
	flw	$f1, 48($sp)
	fmul	$f0, $f1, $f0
	li	$a0, 696
	li	$a1, 660
	flw	$f1, 0($a1)
	fmul	$f1, $f0, $f1
	flw	$f2, 40($sp)
	fadd	$f1, $f1, $f2
	fsw	$f1, 0($a0)
	li	$a0, 696
	li	$a1, 660
	flw	$f1, 4($a1)
	fmul	$f1, $f0, $f1
	flw	$f3, 32($sp)
	fadd	$f1, $f1, $f3
	fsw	$f1, 4($a0)
	li	$a0, 696
	li	$a1, 660
	flw	$f1, 8($a1)
	fmul	$f0, $f0, $f1
	flw	$f1, 24($sp)
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
	fbne	$f0, $f4, fbne_else.28627
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f0, $v0
	j	fbne_cont.28628
fbne_else.28627:
	finv	$f0, $f0
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f4, $v0
	fmul	$f0, $f4, $f0
fbne_cont.28628:
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
	lw	$a2, 20($sp)
	sll	$a3, $a2, 2
	lw	$a4, 16($sp)
	add	$a3, $a4, $a3
	lw	$a3, 0($a3)
	mtc1	$f4, $zero
	lw	$a26, 12($sp)
	move	$a2, $a3
	fmove	$f1, $f4
	sw	$ra, 60($sp)
	addi	$sp, $sp, 64
	jal	trace_ray.3122
	subi	$sp, $sp, 64
	lw	$ra, 60($sp)
	fmove	$f30, $fv
	lw	$a0, 20($sp)
	sll	$a1, $a0, 2
	lw	$a2, 16($sp)
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
	lw	$a3, 8($sp)
	sw	$a3, 0($a1)
	sll	$a1, $a0, 2
	add	$a1, $a2, $a1
	lw	$a1, 0($a1)
	li	$a4, 0
	lw	$a26, 4($sp)
	move	$a0, $a1
	move	$a1, $a4
	sw	$ra, 60($sp)
	addi	$sp, $sp, 64
	jal	pretrace_diffuse_rays.3182
	subi	$sp, $sp, 64
	lw	$ra, 60($sp)
	fmove	$f30, $fv
	lw	$a0, 20($sp)
	subi	$a1, $a0, 1
	lw	$a0, 8($sp)
	addi	$a0, $a0, 1
	li	$a2, 5
	blt	$a0, $a2, bge_else.28629
	subi	$a2, $a0, 5
	j	bge_cont.28630
bge_else.28629:
	move	$a2, $a0
bge_cont.28630:
	flw	$f0, 40($sp)
	flw	$f1, 32($sp)
	flw	$f2, 24($sp)
	lw	$a0, 16($sp)
	lw	$a26, 0($sp)
	lw	$a25, 0($a26)
	j	pretrace_pixels.3185
bge_else.28616:
	jr	$ra
div2like_sub.6638.8041.14934.21610.24991:
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fblt	$f0, $f2, fbge_else.28632
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fsub	$f0, $f0, $f2
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fadd	$f1, $f1, $f2
	j	div2like_sub.6638.8041.14934.21610.24991
fbge_else.28632:
	fmove	$fv, $f1
	jr $ra
ftoi_ret_sub.6623.8026.14919.21595:
	mtc1	$f1, $zero
	sw	$a1, 0($sp)
	sw	$a0, 4($sp)
	fsw	$f0, 8($sp)
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	div2like_sub.6638.8041.14934.21610.24991
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	fmove	$f0, $fv
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	flw	$f2, 8($sp)
	fblt	$f2, $f1, fbge_else.28633
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f3, $v0
	fmul	$f3, $f0, $f3
	fsub	$f2, $f2, $f3
	fblt	$f2, $f1, fbge_else.28634
	lw	$a0, 0($sp)
	lw	$a1, 4($sp)
	add	$a1, $a1, $a0
	add	$a0, $a0, $a0
	move	$a25, $a1
	move	$a1, $a0
	move	$a0, $a25
	j	ftoi_ret_sub.6623.8026.14919.21595
fbge_else.28634:
	lw	$a0, 0($sp)
	add	$a1, $a0, $a0
	lw	$a0, 4($sp)
	j	ftoi_ret_sub.6623.8026.14919.21595
fbge_else.28633:
	lw	$a0, 4($sp)
	move	$v0, $a0
	jr	$ra
ftoi_big.6605.8008.14838:
	li	$v0, 19200
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	fsub	$f0, $f0, $f1
	li	$a1, 128
	sll	$a1, $a1, 16
	ori	$a1, $a1, 0
	add	$a0, $a0, $a1
	li	$v0, 19200
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	fblt	$f0, $f1, fbge_else.28635
	j	ftoi_big.6605.8008.14838
fbge_else.28635:
	li	$a1, 0
	li	$a2, 1
	sw	$a0, 0($sp)
	move	$a0, $a1
	move	$a1, $a2
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	ftoi_ret_sub.6623.8026.14919.21595
	subi	$sp, $sp, 8
	lw	$ra, 4($sp)
	move	$a0, $v0
	lw	$a1, 0($sp)
	add	$v0, $a1, $a0
	jr	$ra
div2like_sub.6638.8041.14825.21522.24964:
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fblt	$f0, $f2, fbge_else.28636
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fsub	$f0, $f0, $f2
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fadd	$f1, $f1, $f2
	j	div2like_sub.6638.8041.14825.21522.24964
fbge_else.28636:
	fmove	$fv, $f1
	jr $ra
ftoi_ret_sub.6623.8026.14810.21507:
	mtc1	$f1, $zero
	sw	$a1, 0($sp)
	sw	$a0, 4($sp)
	fsw	$f0, 8($sp)
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	div2like_sub.6638.8041.14825.21522.24964
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	fmove	$f0, $fv
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	flw	$f2, 8($sp)
	fblt	$f2, $f1, fbge_else.28637
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f3, $v0
	fmul	$f3, $f0, $f3
	fsub	$f2, $f2, $f3
	fblt	$f2, $f1, fbge_else.28638
	lw	$a0, 0($sp)
	lw	$a1, 4($sp)
	add	$a1, $a1, $a0
	add	$a0, $a0, $a0
	move	$a25, $a1
	move	$a1, $a0
	move	$a0, $a25
	j	ftoi_ret_sub.6623.8026.14810.21507
fbge_else.28638:
	lw	$a0, 0($sp)
	add	$a1, $a0, $a0
	lw	$a0, 4($sp)
	j	ftoi_ret_sub.6623.8026.14810.21507
fbge_else.28637:
	lw	$a0, 4($sp)
	move	$v0, $a0
	jr	$ra
ftoi_big.6605.8008.14729:
	li	$v0, 19200
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	fsub	$f0, $f0, $f1
	li	$a1, 128
	sll	$a1, $a1, 16
	ori	$a1, $a1, 0
	add	$a0, $a0, $a1
	li	$v0, 19200
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	fblt	$f0, $f1, fbge_else.28639
	j	ftoi_big.6605.8008.14729
fbge_else.28639:
	li	$a1, 0
	li	$a2, 1
	sw	$a0, 0($sp)
	move	$a0, $a1
	move	$a1, $a2
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	ftoi_ret_sub.6623.8026.14810.21507
	subi	$sp, $sp, 8
	lw	$ra, 4($sp)
	move	$a0, $v0
	lw	$a1, 0($sp)
	add	$v0, $a1, $a0
	jr	$ra
div2like_sub.6638.8041.14716.21434.24937:
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fblt	$f0, $f2, fbge_else.28640
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fsub	$f0, $f0, $f2
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fadd	$f1, $f1, $f2
	j	div2like_sub.6638.8041.14716.21434.24937
fbge_else.28640:
	fmove	$fv, $f1
	jr $ra
ftoi_ret_sub.6623.8026.14701.21419:
	mtc1	$f1, $zero
	sw	$a1, 0($sp)
	sw	$a0, 4($sp)
	fsw	$f0, 8($sp)
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	div2like_sub.6638.8041.14716.21434.24937
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	fmove	$f0, $fv
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	flw	$f2, 8($sp)
	fblt	$f2, $f1, fbge_else.28641
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f3, $v0
	fmul	$f3, $f0, $f3
	fsub	$f2, $f2, $f3
	fblt	$f2, $f1, fbge_else.28642
	lw	$a0, 0($sp)
	lw	$a1, 4($sp)
	add	$a1, $a1, $a0
	add	$a0, $a0, $a0
	move	$a25, $a1
	move	$a1, $a0
	move	$a0, $a25
	j	ftoi_ret_sub.6623.8026.14701.21419
fbge_else.28642:
	lw	$a0, 0($sp)
	add	$a1, $a0, $a0
	lw	$a0, 4($sp)
	j	ftoi_ret_sub.6623.8026.14701.21419
fbge_else.28641:
	lw	$a0, 4($sp)
	move	$v0, $a0
	jr	$ra
ftoi_big.6605.8008.14620:
	li	$v0, 19200
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	fsub	$f0, $f0, $f1
	li	$a1, 128
	sll	$a1, $a1, 16
	ori	$a1, $a1, 0
	add	$a0, $a0, $a1
	li	$v0, 19200
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	fblt	$f0, $f1, fbge_else.28643
	j	ftoi_big.6605.8008.14620
fbge_else.28643:
	li	$a1, 0
	li	$a2, 1
	sw	$a0, 0($sp)
	move	$a0, $a1
	move	$a1, $a2
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	ftoi_ret_sub.6623.8026.14701.21419
	subi	$sp, $sp, 8
	lw	$ra, 4($sp)
	move	$a0, $v0
	lw	$a1, 0($sp)
	add	$v0, $a1, $a0
	jr	$ra
div2like_sub.6638.8041.14716.21382.24919:
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fblt	$f0, $f2, fbge_else.28644
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fsub	$f0, $f0, $f2
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fadd	$f1, $f1, $f2
	j	div2like_sub.6638.8041.14716.21382.24919
fbge_else.28644:
	fmove	$fv, $f1
	jr $ra
ftoi_ret_sub.6623.8026.14701.21367:
	mtc1	$f1, $zero
	sw	$a1, 0($sp)
	sw	$a0, 4($sp)
	fsw	$f0, 8($sp)
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	div2like_sub.6638.8041.14716.21382.24919
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	fmove	$f0, $fv
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	flw	$f2, 8($sp)
	fblt	$f2, $f1, fbge_else.28645
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f3, $v0
	fmul	$f3, $f0, $f3
	fsub	$f2, $f2, $f3
	fblt	$f2, $f1, fbge_else.28646
	lw	$a0, 0($sp)
	lw	$a1, 4($sp)
	add	$a1, $a1, $a0
	add	$a0, $a0, $a0
	move	$a25, $a1
	move	$a1, $a0
	move	$a0, $a25
	j	ftoi_ret_sub.6623.8026.14701.21367
fbge_else.28646:
	lw	$a0, 0($sp)
	add	$a1, $a0, $a0
	lw	$a0, 4($sp)
	j	ftoi_ret_sub.6623.8026.14701.21367
fbge_else.28645:
	lw	$a0, 4($sp)
	move	$v0, $a0
	jr	$ra
div2like_sub.6638.8041.14716.21408.24928:
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fblt	$f0, $f2, fbge_else.28647
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fsub	$f0, $f0, $f2
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fadd	$f1, $f1, $f2
	j	div2like_sub.6638.8041.14716.21408.24928
fbge_else.28647:
	fmove	$fv, $f1
	jr $ra
ftoi_ret_sub.6623.8026.14701.21393:
	mtc1	$f1, $zero
	sw	$a1, 0($sp)
	sw	$a0, 4($sp)
	fsw	$f0, 8($sp)
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	div2like_sub.6638.8041.14716.21408.24928
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	fmove	$f0, $fv
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	flw	$f2, 8($sp)
	fblt	$f2, $f1, fbge_else.28648
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f3, $v0
	fmul	$f3, $f0, $f3
	fsub	$f2, $f2, $f3
	fblt	$f2, $f1, fbge_else.28649
	lw	$a0, 0($sp)
	lw	$a1, 4($sp)
	add	$a1, $a1, $a0
	add	$a0, $a0, $a0
	move	$a25, $a1
	move	$a1, $a0
	move	$a0, $a25
	j	ftoi_ret_sub.6623.8026.14701.21393
fbge_else.28649:
	lw	$a0, 0($sp)
	add	$a1, $a0, $a0
	lw	$a0, 4($sp)
	j	ftoi_ret_sub.6623.8026.14701.21393
fbge_else.28648:
	lw	$a0, 4($sp)
	move	$v0, $a0
	jr	$ra
div2like_sub.6638.8041.14825.21470.24946:
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fblt	$f0, $f2, fbge_else.28650
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fsub	$f0, $f0, $f2
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fadd	$f1, $f1, $f2
	j	div2like_sub.6638.8041.14825.21470.24946
fbge_else.28650:
	fmove	$fv, $f1
	jr $ra
ftoi_ret_sub.6623.8026.14810.21455:
	mtc1	$f1, $zero
	sw	$a1, 0($sp)
	sw	$a0, 4($sp)
	fsw	$f0, 8($sp)
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	div2like_sub.6638.8041.14825.21470.24946
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	fmove	$f0, $fv
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	flw	$f2, 8($sp)
	fblt	$f2, $f1, fbge_else.28651
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f3, $v0
	fmul	$f3, $f0, $f3
	fsub	$f2, $f2, $f3
	fblt	$f2, $f1, fbge_else.28652
	lw	$a0, 0($sp)
	lw	$a1, 4($sp)
	add	$a1, $a1, $a0
	add	$a0, $a0, $a0
	move	$a25, $a1
	move	$a1, $a0
	move	$a0, $a25
	j	ftoi_ret_sub.6623.8026.14810.21455
fbge_else.28652:
	lw	$a0, 0($sp)
	add	$a1, $a0, $a0
	lw	$a0, 4($sp)
	j	ftoi_ret_sub.6623.8026.14810.21455
fbge_else.28651:
	lw	$a0, 4($sp)
	move	$v0, $a0
	jr	$ra
div2like_sub.6638.8041.14825.21496.24955:
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fblt	$f0, $f2, fbge_else.28653
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fsub	$f0, $f0, $f2
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fadd	$f1, $f1, $f2
	j	div2like_sub.6638.8041.14825.21496.24955
fbge_else.28653:
	fmove	$fv, $f1
	jr $ra
ftoi_ret_sub.6623.8026.14810.21481:
	mtc1	$f1, $zero
	sw	$a1, 0($sp)
	sw	$a0, 4($sp)
	fsw	$f0, 8($sp)
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	div2like_sub.6638.8041.14825.21496.24955
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	fmove	$f0, $fv
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	flw	$f2, 8($sp)
	fblt	$f2, $f1, fbge_else.28654
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f3, $v0
	fmul	$f3, $f0, $f3
	fsub	$f2, $f2, $f3
	fblt	$f2, $f1, fbge_else.28655
	lw	$a0, 0($sp)
	lw	$a1, 4($sp)
	add	$a1, $a1, $a0
	add	$a0, $a0, $a0
	move	$a25, $a1
	move	$a1, $a0
	move	$a0, $a25
	j	ftoi_ret_sub.6623.8026.14810.21481
fbge_else.28655:
	lw	$a0, 0($sp)
	add	$a1, $a0, $a0
	lw	$a0, 4($sp)
	j	ftoi_ret_sub.6623.8026.14810.21481
fbge_else.28654:
	lw	$a0, 4($sp)
	move	$v0, $a0
	jr	$ra
div2like_sub.6638.8041.14934.21558.24973:
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fblt	$f0, $f2, fbge_else.28656
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fsub	$f0, $f0, $f2
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fadd	$f1, $f1, $f2
	j	div2like_sub.6638.8041.14934.21558.24973
fbge_else.28656:
	fmove	$fv, $f1
	jr $ra
ftoi_ret_sub.6623.8026.14919.21543:
	mtc1	$f1, $zero
	sw	$a1, 0($sp)
	sw	$a0, 4($sp)
	fsw	$f0, 8($sp)
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	div2like_sub.6638.8041.14934.21558.24973
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	fmove	$f0, $fv
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	flw	$f2, 8($sp)
	fblt	$f2, $f1, fbge_else.28657
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f3, $v0
	fmul	$f3, $f0, $f3
	fsub	$f2, $f2, $f3
	fblt	$f2, $f1, fbge_else.28658
	lw	$a0, 0($sp)
	lw	$a1, 4($sp)
	add	$a1, $a1, $a0
	add	$a0, $a0, $a0
	move	$a25, $a1
	move	$a1, $a0
	move	$a0, $a25
	j	ftoi_ret_sub.6623.8026.14919.21543
fbge_else.28658:
	lw	$a0, 0($sp)
	add	$a1, $a0, $a0
	lw	$a0, 4($sp)
	j	ftoi_ret_sub.6623.8026.14919.21543
fbge_else.28657:
	lw	$a0, 4($sp)
	move	$v0, $a0
	jr	$ra
div2like_sub.6638.8041.14934.21584.24982:
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fblt	$f0, $f2, fbge_else.28659
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fsub	$f0, $f0, $f2
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fadd	$f1, $f1, $f2
	j	div2like_sub.6638.8041.14934.21584.24982
fbge_else.28659:
	fmove	$fv, $f1
	jr $ra
ftoi_ret_sub.6623.8026.14919.21569:
	mtc1	$f1, $zero
	sw	$a1, 0($sp)
	sw	$a0, 4($sp)
	fsw	$f0, 8($sp)
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	div2like_sub.6638.8041.14934.21584.24982
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	fmove	$f0, $fv
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	flw	$f2, 8($sp)
	fblt	$f2, $f1, fbge_else.28660
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f3, $v0
	fmul	$f3, $f0, $f3
	fsub	$f2, $f2, $f3
	fblt	$f2, $f1, fbge_else.28661
	lw	$a0, 0($sp)
	lw	$a1, 4($sp)
	add	$a1, $a1, $a0
	add	$a0, $a0, $a0
	move	$a25, $a1
	move	$a1, $a0
	move	$a0, $a25
	j	ftoi_ret_sub.6623.8026.14919.21569
fbge_else.28661:
	lw	$a0, 0($sp)
	add	$a1, $a0, $a0
	lw	$a0, 4($sp)
	j	ftoi_ret_sub.6623.8026.14919.21569
fbge_else.28660:
	lw	$a0, 4($sp)
	move	$v0, $a0
	jr	$ra
scan_pixel.3196:
	lw	$a5, 8($a26)
	lw	$a6, 4($a26)
	li	$a7, 616
	lw	$a7, 0($a7)
	blt	$a0, $a7, bge_else.28662
	jr	$ra
bge_else.28662:
	li	$a7, 604
	sll	$a8, $a0, 2
	add	$a8, $a3, $a8
	lw	$a8, 0($a8)
	lw	$a8, 0($a8)
	flw	$f0, 0($a8)
	fsw	$f0, 0($a7)
	flw	$f0, 4($a8)
	fsw	$f0, 4($a7)
	flw	$f0, 8($a8)
	fsw	$f0, 8($a7)
	li	$a7, 616
	lw	$a7, 4($a7)
	addi	$a8, $a1, 1
	blt	$a8, $a7, bge_else.28664
	li	$a7, 0
	j	bge_cont.28665
bge_else.28664:
	li	$a7, 0
	blt	$a7, $a1, bge_else.28666
	li	$a7, 0
	j	bge_cont.28667
bge_else.28666:
	li	$a7, 616
	lw	$a7, 0($a7)
	addi	$a8, $a0, 1
	blt	$a8, $a7, bge_else.28668
	li	$a7, 0
	j	bge_cont.28669
bge_else.28668:
	li	$a7, 0
	blt	$a7, $a0, bge_else.28670
	li	$a7, 0
	j	bge_cont.28671
bge_else.28670:
	li	$a7, 1
bge_cont.28671:
bge_cont.28669:
bge_cont.28667:
bge_cont.28665:
	li	$a8, 0
	sw	$a4, 0($sp)
	sw	$a3, 4($sp)
	sw	$a2, 8($sp)
	sw	$a1, 12($sp)
	sw	$a26, 16($sp)
	sw	$a0, 20($sp)
	bne	$a7, $a8, bne_else.28672
	sll	$a5, $a0, 2
	add	$a5, $a3, $a5
	lw	$a5, 0($a5)
	li	$a7, 0
	move	$a1, $a7
	move	$a0, $a5
	move	$a26, $a6
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	do_without_neighbors.3153
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	fmove	$f30, $fv
	j	bne_cont.28673
bne_else.28672:
	li	$a6, 0
	move	$a26, $a5
	move	$a5, $a6
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	try_exploit_neighbors.3169
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	fmove	$f30, $fv
bne_cont.28673:
	li	$a0, 604
	flw	$f0, 0($a0)
	fabs	$f1, $f0
	mtc1	$f2, $zero
	fblt	$f0, $f2, fbge_else.28674
	li	$a0, 1
	j	fbge_cont.28675
fbge_else.28674:
	li	$a0, -1
fbge_cont.28675:
	li	$a1, 1
	bne	$a0, $a1, bne_else.28676
	li	$v0, 19200
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f0, $v0
	fblt	$f0, $f1, fbge_else.28678
	li	$a0, 0
	li	$a1, 1
	fmove	$f0, $f1
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	ftoi_ret_sub.6623.8026.14919.21569
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	move	$a0, $v0
	j	fbge_cont.28679
fbge_else.28678:
	li	$a0, 0
	fmove	$f0, $f1
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	ftoi_big.6605.8008.14838
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	move	$a0, $v0
fbge_cont.28679:
	j	bne_cont.28677
bne_else.28676:
	li	$v0, 19200
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f0, $v0
	fblt	$f0, $f1, fbge_else.28680
	li	$a0, 0
	li	$a1, 1
	fmove	$f0, $f1
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	ftoi_ret_sub.6623.8026.14919.21543
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	move	$a0, $v0
	neg	$a0, $a0
	j	fbge_cont.28681
fbge_else.28680:
	li	$a0, 0
	fmove	$f0, $f1
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	ftoi_big.6605.8008.14838
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	move	$a0, $v0
	neg	$a0, $a0
fbge_cont.28681:
bne_cont.28677:
	li	$a1, 255
	blt	$a1, $a0, bge_else.28682
	li	$a1, 0
	blt	$a0, $a1, bge_else.28684
	j	bge_cont.28685
bge_else.28684:
	li	$a0, 0
bge_cont.28685:
	j	bge_cont.28683
bge_else.28682:
	li	$a0, 255
bge_cont.28683:
	li	$a2, 0
	blt	$a0, $a2, bge_else.28686
	j	bge_cont.28687
bge_else.28686:
	li	$a23, 45
	print_char	$a23
	neg	$a0, $a0
bge_cont.28687:
	li	$a1, 10000
	sw	$a0, 24($sp)
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	countn.2754
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	move	$a0, $v0
	li	$a1, 10000
	li	$a2, 0
	sw	$a0, 28($sp)
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	mymul.2758
	subi	$sp, $sp, 40
	lw	$ra, 36($sp)
	move	$a0, $v0
	lw	$a1, 24($sp)
	sub	$a0, $a1, $a0
	li	$a2, 0
	lw	$a1, 28($sp)
	blt	$a2, $a1, bge_else.28688
	li	$a1, 0
	j	bge_cont.28689
bge_else.28688:
	addi	$a1, $a1, 48
	print_char	$a1
	li	$a1, 1
bge_cont.28689:
	li	$a3, 1000
	sw	$a1, 32($sp)
	sw	$a0, 36($sp)
	move	$a1, $a3
	sw	$ra, 44($sp)
	addi	$sp, $sp, 48
	jal	countn.2754
	subi	$sp, $sp, 48
	lw	$ra, 44($sp)
	move	$a0, $v0
	li	$a1, 1000
	li	$a2, 0
	sw	$a0, 40($sp)
	sw	$ra, 44($sp)
	addi	$sp, $sp, 48
	jal	mymul.2758
	subi	$sp, $sp, 48
	lw	$ra, 44($sp)
	move	$a0, $v0
	lw	$a1, 36($sp)
	sub	$a0, $a1, $a0
	li	$a2, 0
	lw	$a1, 40($sp)
	blt	$a2, $a1, bge_else.28690
	li	$a1, 1
	lw	$a3, 32($sp)
	bne	$a3, $a1, bne_else.28692
	li	$a23, 48
	print_char	$a23
	li	$a1, 1
	j	bne_cont.28693
bne_else.28692:
	li	$a1, 0
bne_cont.28693:
	j	bge_cont.28691
bge_else.28690:
	addi	$a1, $a1, 48
	print_char	$a1
	li	$a1, 1
bge_cont.28691:
	li	$a3, 100
	sw	$a1, 44($sp)
	sw	$a0, 48($sp)
	move	$a1, $a3
	sw	$ra, 52($sp)
	addi	$sp, $sp, 56
	jal	countn.2754
	subi	$sp, $sp, 56
	lw	$ra, 52($sp)
	move	$a0, $v0
	li	$a1, 100
	li	$a2, 0
	sw	$a0, 52($sp)
	sw	$ra, 60($sp)
	addi	$sp, $sp, 64
	jal	mymul.2758
	subi	$sp, $sp, 64
	lw	$ra, 60($sp)
	move	$a0, $v0
	lw	$a1, 48($sp)
	sub	$a0, $a1, $a0
	li	$a2, 0
	lw	$a1, 52($sp)
	blt	$a2, $a1, bge_else.28694
	li	$a1, 1
	lw	$a3, 44($sp)
	bne	$a3, $a1, bne_else.28696
	li	$a23, 48
	print_char	$a23
	li	$a1, 1
	j	bne_cont.28697
bne_else.28696:
	li	$a1, 0
bne_cont.28697:
	j	bge_cont.28695
bge_else.28694:
	addi	$a1, $a1, 48
	print_char	$a1
	li	$a1, 1
bge_cont.28695:
	li	$a3, 10
	sw	$a1, 56($sp)
	sw	$a0, 60($sp)
	move	$a1, $a3
	sw	$ra, 68($sp)
	addi	$sp, $sp, 72
	jal	countn.2754
	subi	$sp, $sp, 72
	lw	$ra, 68($sp)
	move	$a0, $v0
	li	$a1, 10
	li	$a2, 0
	sw	$a0, 64($sp)
	sw	$ra, 68($sp)
	addi	$sp, $sp, 72
	jal	mymul.2758
	subi	$sp, $sp, 72
	lw	$ra, 68($sp)
	move	$a0, $v0
	lw	$a1, 60($sp)
	sub	$a0, $a1, $a0
	li	$a1, 0
	lw	$a2, 64($sp)
	blt	$a1, $a2, bge_else.28698
	li	$a1, 1
	lw	$a2, 56($sp)
	bne	$a2, $a1, bne_else.28700
	li	$a23, 48
	print_char	$a23
	li	$a1, 1
	j	bne_cont.28701
bne_else.28700:
	li	$a1, 0
bne_cont.28701:
	j	bge_cont.28699
bge_else.28698:
	addi	$a1, $a2, 48
	print_char	$a1
	li	$a1, 1
bge_cont.28699:
	addi	$a0, $a0, 48
	print_char	$a0
	li	$a23, 32
	print_char	$a23
	li	$a0, 604
	flw	$f0, 4($a0)
	fabs	$f1, $f0
	mtc1	$f2, $zero
	fblt	$f0, $f2, fbge_else.28702
	li	$a0, 1
	j	fbge_cont.28703
fbge_else.28702:
	li	$a0, -1
fbge_cont.28703:
	li	$a1, 1
	bne	$a0, $a1, bne_else.28704
	li	$v0, 19200
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f0, $v0
	fblt	$f0, $f1, fbge_else.28706
	li	$a0, 0
	li	$a1, 1
	fmove	$f0, $f1
	sw	$ra, 68($sp)
	addi	$sp, $sp, 72
	jal	ftoi_ret_sub.6623.8026.14810.21481
	subi	$sp, $sp, 72
	lw	$ra, 68($sp)
	move	$a0, $v0
	j	fbge_cont.28707
fbge_else.28706:
	li	$a0, 0
	fmove	$f0, $f1
	sw	$ra, 68($sp)
	addi	$sp, $sp, 72
	jal	ftoi_big.6605.8008.14729
	subi	$sp, $sp, 72
	lw	$ra, 68($sp)
	move	$a0, $v0
fbge_cont.28707:
	j	bne_cont.28705
bne_else.28704:
	li	$v0, 19200
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f0, $v0
	fblt	$f0, $f1, fbge_else.28708
	li	$a0, 0
	li	$a1, 1
	fmove	$f0, $f1
	sw	$ra, 68($sp)
	addi	$sp, $sp, 72
	jal	ftoi_ret_sub.6623.8026.14810.21455
	subi	$sp, $sp, 72
	lw	$ra, 68($sp)
	move	$a0, $v0
	neg	$a0, $a0
	j	fbge_cont.28709
fbge_else.28708:
	li	$a0, 0
	fmove	$f0, $f1
	sw	$ra, 68($sp)
	addi	$sp, $sp, 72
	jal	ftoi_big.6605.8008.14729
	subi	$sp, $sp, 72
	lw	$ra, 68($sp)
	move	$a0, $v0
	neg	$a0, $a0
fbge_cont.28709:
bne_cont.28705:
	li	$a1, 255
	blt	$a1, $a0, bge_else.28710
	li	$a1, 0
	blt	$a0, $a1, bge_else.28712
	j	bge_cont.28713
bge_else.28712:
	li	$a0, 0
bge_cont.28713:
	j	bge_cont.28711
bge_else.28710:
	li	$a0, 255
bge_cont.28711:
	li	$a2, 0
	blt	$a0, $a2, bge_else.28714
	j	bge_cont.28715
bge_else.28714:
	li	$a23, 45
	print_char	$a23
	neg	$a0, $a0
bge_cont.28715:
	li	$a1, 10000
	sw	$a0, 68($sp)
	sw	$ra, 76($sp)
	addi	$sp, $sp, 80
	jal	countn.2754
	subi	$sp, $sp, 80
	lw	$ra, 76($sp)
	move	$a0, $v0
	li	$a1, 10000
	li	$a2, 0
	sw	$a0, 72($sp)
	sw	$ra, 76($sp)
	addi	$sp, $sp, 80
	jal	mymul.2758
	subi	$sp, $sp, 80
	lw	$ra, 76($sp)
	move	$a0, $v0
	lw	$a1, 68($sp)
	sub	$a0, $a1, $a0
	li	$a2, 0
	lw	$a1, 72($sp)
	blt	$a2, $a1, bge_else.28716
	li	$a1, 0
	j	bge_cont.28717
bge_else.28716:
	addi	$a1, $a1, 48
	print_char	$a1
	li	$a1, 1
bge_cont.28717:
	li	$a3, 1000
	sw	$a1, 76($sp)
	sw	$a0, 80($sp)
	move	$a1, $a3
	sw	$ra, 84($sp)
	addi	$sp, $sp, 88
	jal	countn.2754
	subi	$sp, $sp, 88
	lw	$ra, 84($sp)
	move	$a0, $v0
	li	$a1, 1000
	li	$a2, 0
	sw	$a0, 84($sp)
	sw	$ra, 92($sp)
	addi	$sp, $sp, 96
	jal	mymul.2758
	subi	$sp, $sp, 96
	lw	$ra, 92($sp)
	move	$a0, $v0
	lw	$a1, 80($sp)
	sub	$a0, $a1, $a0
	li	$a2, 0
	lw	$a1, 84($sp)
	blt	$a2, $a1, bge_else.28718
	li	$a1, 1
	lw	$a3, 76($sp)
	bne	$a3, $a1, bne_else.28720
	li	$a23, 48
	print_char	$a23
	li	$a1, 1
	j	bne_cont.28721
bne_else.28720:
	li	$a1, 0
bne_cont.28721:
	j	bge_cont.28719
bge_else.28718:
	addi	$a1, $a1, 48
	print_char	$a1
	li	$a1, 1
bge_cont.28719:
	li	$a3, 100
	sw	$a1, 88($sp)
	sw	$a0, 92($sp)
	move	$a1, $a3
	sw	$ra, 100($sp)
	addi	$sp, $sp, 104
	jal	countn.2754
	subi	$sp, $sp, 104
	lw	$ra, 100($sp)
	move	$a0, $v0
	li	$a1, 100
	li	$a2, 0
	sw	$a0, 96($sp)
	sw	$ra, 100($sp)
	addi	$sp, $sp, 104
	jal	mymul.2758
	subi	$sp, $sp, 104
	lw	$ra, 100($sp)
	move	$a0, $v0
	lw	$a1, 92($sp)
	sub	$a0, $a1, $a0
	li	$a2, 0
	lw	$a1, 96($sp)
	blt	$a2, $a1, bge_else.28722
	li	$a1, 1
	lw	$a3, 88($sp)
	bne	$a3, $a1, bne_else.28724
	li	$a23, 48
	print_char	$a23
	li	$a1, 1
	j	bne_cont.28725
bne_else.28724:
	li	$a1, 0
bne_cont.28725:
	j	bge_cont.28723
bge_else.28722:
	addi	$a1, $a1, 48
	print_char	$a1
	li	$a1, 1
bge_cont.28723:
	li	$a3, 10
	sw	$a1, 100($sp)
	sw	$a0, 104($sp)
	move	$a1, $a3
	sw	$ra, 108($sp)
	addi	$sp, $sp, 112
	jal	countn.2754
	subi	$sp, $sp, 112
	lw	$ra, 108($sp)
	move	$a0, $v0
	li	$a1, 10
	li	$a2, 0
	sw	$a0, 108($sp)
	sw	$ra, 116($sp)
	addi	$sp, $sp, 120
	jal	mymul.2758
	subi	$sp, $sp, 120
	lw	$ra, 116($sp)
	move	$a0, $v0
	lw	$a1, 104($sp)
	sub	$a0, $a1, $a0
	li	$a1, 0
	lw	$a2, 108($sp)
	blt	$a1, $a2, bge_else.28726
	li	$a1, 1
	lw	$a2, 100($sp)
	bne	$a2, $a1, bne_else.28728
	li	$a23, 48
	print_char	$a23
	li	$a1, 1
	j	bne_cont.28729
bne_else.28728:
	li	$a1, 0
bne_cont.28729:
	j	bge_cont.28727
bge_else.28726:
	addi	$a1, $a2, 48
	print_char	$a1
	li	$a1, 1
bge_cont.28727:
	addi	$a0, $a0, 48
	print_char	$a0
	li	$a23, 32
	print_char	$a23
	li	$a0, 604
	flw	$f0, 8($a0)
	fabs	$f1, $f0
	mtc1	$f2, $zero
	fblt	$f0, $f2, fbge_else.28730
	li	$a0, 1
	j	fbge_cont.28731
fbge_else.28730:
	li	$a0, -1
fbge_cont.28731:
	li	$a1, 1
	bne	$a0, $a1, bne_else.28732
	li	$v0, 19200
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f0, $v0
	fblt	$f0, $f1, fbge_else.28734
	li	$a0, 0
	li	$a1, 1
	fmove	$f0, $f1
	sw	$ra, 116($sp)
	addi	$sp, $sp, 120
	jal	ftoi_ret_sub.6623.8026.14701.21393
	subi	$sp, $sp, 120
	lw	$ra, 116($sp)
	move	$a0, $v0
	j	fbge_cont.28735
fbge_else.28734:
	li	$a0, 0
	fmove	$f0, $f1
	sw	$ra, 116($sp)
	addi	$sp, $sp, 120
	jal	ftoi_big.6605.8008.14620
	subi	$sp, $sp, 120
	lw	$ra, 116($sp)
	move	$a0, $v0
fbge_cont.28735:
	j	bne_cont.28733
bne_else.28732:
	li	$v0, 19200
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f0, $v0
	fblt	$f0, $f1, fbge_else.28736
	li	$a0, 0
	li	$a1, 1
	fmove	$f0, $f1
	sw	$ra, 116($sp)
	addi	$sp, $sp, 120
	jal	ftoi_ret_sub.6623.8026.14701.21367
	subi	$sp, $sp, 120
	lw	$ra, 116($sp)
	move	$a0, $v0
	neg	$a0, $a0
	j	fbge_cont.28737
fbge_else.28736:
	li	$a0, 0
	fmove	$f0, $f1
	sw	$ra, 116($sp)
	addi	$sp, $sp, 120
	jal	ftoi_big.6605.8008.14620
	subi	$sp, $sp, 120
	lw	$ra, 116($sp)
	move	$a0, $v0
	neg	$a0, $a0
fbge_cont.28737:
bne_cont.28733:
	li	$a1, 255
	blt	$a1, $a0, bge_else.28738
	li	$a1, 0
	blt	$a0, $a1, bge_else.28740
	j	bge_cont.28741
bge_else.28740:
	li	$a0, 0
bge_cont.28741:
	j	bge_cont.28739
bge_else.28738:
	li	$a0, 255
bge_cont.28739:
	li	$a2, 0
	blt	$a0, $a2, bge_else.28742
	j	bge_cont.28743
bge_else.28742:
	li	$a23, 45
	print_char	$a23
	neg	$a0, $a0
bge_cont.28743:
	li	$a1, 10000
	sw	$a0, 112($sp)
	sw	$ra, 116($sp)
	addi	$sp, $sp, 120
	jal	countn.2754
	subi	$sp, $sp, 120
	lw	$ra, 116($sp)
	move	$a0, $v0
	li	$a1, 10000
	li	$a2, 0
	sw	$a0, 116($sp)
	sw	$ra, 124($sp)
	addi	$sp, $sp, 128
	jal	mymul.2758
	subi	$sp, $sp, 128
	lw	$ra, 124($sp)
	move	$a0, $v0
	lw	$a1, 112($sp)
	sub	$a0, $a1, $a0
	li	$a2, 0
	lw	$a1, 116($sp)
	blt	$a2, $a1, bge_else.28744
	li	$a1, 0
	j	bge_cont.28745
bge_else.28744:
	addi	$a1, $a1, 48
	print_char	$a1
	li	$a1, 1
bge_cont.28745:
	li	$a3, 1000
	sw	$a1, 120($sp)
	sw	$a0, 124($sp)
	move	$a1, $a3
	sw	$ra, 132($sp)
	addi	$sp, $sp, 136
	jal	countn.2754
	subi	$sp, $sp, 136
	lw	$ra, 132($sp)
	move	$a0, $v0
	li	$a1, 1000
	li	$a2, 0
	sw	$a0, 128($sp)
	sw	$ra, 132($sp)
	addi	$sp, $sp, 136
	jal	mymul.2758
	subi	$sp, $sp, 136
	lw	$ra, 132($sp)
	move	$a0, $v0
	lw	$a1, 124($sp)
	sub	$a0, $a1, $a0
	li	$a2, 0
	lw	$a1, 128($sp)
	blt	$a2, $a1, bge_else.28746
	li	$a1, 1
	lw	$a3, 120($sp)
	bne	$a3, $a1, bne_else.28748
	li	$a23, 48
	print_char	$a23
	li	$a1, 1
	j	bne_cont.28749
bne_else.28748:
	li	$a1, 0
bne_cont.28749:
	j	bge_cont.28747
bge_else.28746:
	addi	$a1, $a1, 48
	print_char	$a1
	li	$a1, 1
bge_cont.28747:
	li	$a3, 100
	sw	$a1, 132($sp)
	sw	$a0, 136($sp)
	move	$a1, $a3
	sw	$ra, 140($sp)
	addi	$sp, $sp, 144
	jal	countn.2754
	subi	$sp, $sp, 144
	lw	$ra, 140($sp)
	move	$a0, $v0
	li	$a1, 100
	li	$a2, 0
	sw	$a0, 140($sp)
	sw	$ra, 148($sp)
	addi	$sp, $sp, 152
	jal	mymul.2758
	subi	$sp, $sp, 152
	lw	$ra, 148($sp)
	move	$a0, $v0
	lw	$a1, 136($sp)
	sub	$a0, $a1, $a0
	li	$a2, 0
	lw	$a1, 140($sp)
	blt	$a2, $a1, bge_else.28750
	li	$a1, 1
	lw	$a3, 132($sp)
	bne	$a3, $a1, bne_else.28752
	li	$a23, 48
	print_char	$a23
	li	$a1, 1
	j	bne_cont.28753
bne_else.28752:
	li	$a1, 0
bne_cont.28753:
	j	bge_cont.28751
bge_else.28750:
	addi	$a1, $a1, 48
	print_char	$a1
	li	$a1, 1
bge_cont.28751:
	li	$a3, 10
	sw	$a1, 144($sp)
	sw	$a0, 148($sp)
	move	$a1, $a3
	sw	$ra, 156($sp)
	addi	$sp, $sp, 160
	jal	countn.2754
	subi	$sp, $sp, 160
	lw	$ra, 156($sp)
	move	$a0, $v0
	li	$a1, 10
	li	$a2, 0
	sw	$a0, 152($sp)
	sw	$ra, 156($sp)
	addi	$sp, $sp, 160
	jal	mymul.2758
	subi	$sp, $sp, 160
	lw	$ra, 156($sp)
	move	$a0, $v0
	lw	$a1, 148($sp)
	sub	$a0, $a1, $a0
	li	$a1, 0
	lw	$a2, 152($sp)
	blt	$a1, $a2, bge_else.28754
	li	$a1, 1
	lw	$a2, 144($sp)
	bne	$a2, $a1, bne_else.28756
	li	$a23, 48
	print_char	$a23
	li	$a1, 1
	j	bne_cont.28757
bne_else.28756:
	li	$a1, 0
bne_cont.28757:
	j	bge_cont.28755
bge_else.28754:
	addi	$a1, $a2, 48
	print_char	$a1
	li	$a1, 1
bge_cont.28755:
	addi	$a0, $a0, 48
	print_char	$a0
	li	$a23, 10
	print_char	$a23
	lw	$a0, 20($sp)
	addi	$a0, $a0, 1
	lw	$a1, 12($sp)
	lw	$a2, 8($sp)
	lw	$a3, 4($sp)
	lw	$a4, 0($sp)
	lw	$a26, 16($sp)
	lw	$a25, 0($a26)
	j	scan_pixel.3196
itof_ret_sub.6582.12815.14599:
	sra	$a1, $a0, 1
	li	$a2, 0
	bne	$a0, $a2, beq_else.28758
	fmove	$fv, $f0
	jr $ra
beq_else.28758:
	sub	$a0, $a0, $a1
	sub	$a0, $a0, $a1
	li	$a2, 0
	blt	$a2, $a0, bge_else.28759
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fmul	$f1, $f1, $f2
	move	$a0, $a1
	j	itof_ret_sub.6582.12815.14599
bge_else.28759:
	fadd	$f0, $f0, $f1
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fmul	$f1, $f1, $f2
	move	$a0, $a1
	j	itof_ret_sub.6582.12815.14599
itof_big.6566.14552:
	li	$a1, 128
	sll	$a1, $a1, 16
	ori	$a1, $a1, 0
	sub	$a0, $a0, $a1
	li	$v0, 19200
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	fadd	$f0, $f0, $f1
	li	$a1, 128
	sll	$a1, $a1, 16
	ori	$a1, $a1, 0
	blt	$a0, $a1, bge_else.28760
	j	itof_big.6566.14552
bge_else.28760:
	mtc1	$f1, $zero
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fsw	$f0, 0($sp)
	fmove	$f0, $f1
	fmove	$f1, $f2
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	itof_ret_sub.6582.12815.14599
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	fmove	$f0, $fv
	flw	$f1, 0($sp)
	fadd	$fv, $f1, $f0
	jr $ra
itof_ret_sub.6582.12783.14559:
	sra	$a1, $a0, 1
	li	$a2, 0
	bne	$a0, $a2, beq_else.28761
	fmove	$fv, $f0
	jr $ra
beq_else.28761:
	sub	$a0, $a0, $a1
	sub	$a0, $a0, $a1
	li	$a2, 0
	blt	$a2, $a0, bge_else.28762
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fmul	$f1, $f1, $f2
	move	$a0, $a1
	j	itof_ret_sub.6582.12783.14559
bge_else.28762:
	fadd	$f0, $f0, $f1
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fmul	$f1, $f1, $f2
	move	$a0, $a1
	j	itof_ret_sub.6582.12783.14559
itof_ret_sub.6582.12799.14578:
	sra	$a1, $a0, 1
	li	$a2, 0
	bne	$a0, $a2, beq_else.28763
	fmove	$fv, $f0
	jr $ra
beq_else.28763:
	sub	$a0, $a0, $a1
	sub	$a0, $a0, $a1
	li	$a2, 0
	blt	$a2, $a0, bge_else.28764
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fmul	$f1, $f1, $f2
	move	$a0, $a1
	j	itof_ret_sub.6582.12799.14578
bge_else.28764:
	fadd	$f0, $f0, $f1
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fmul	$f1, $f1, $f2
	move	$a0, $a1
	j	itof_ret_sub.6582.12799.14578
scan_line.3202:
	lw	$a5, 8($a26)
	lw	$a6, 4($a26)
	li	$a7, 616
	lw	$a7, 4($a7)
	blt	$a0, $a7, bge_else.28765
	jr	$ra
bge_else.28765:
	li	$a7, 616
	lw	$a7, 4($a7)
	subi	$a7, $a7, 1
	sw	$a26, 0($sp)
	sw	$a4, 4($sp)
	sw	$a3, 8($sp)
	sw	$a2, 12($sp)
	sw	$a1, 16($sp)
	sw	$a0, 20($sp)
	sw	$a5, 24($sp)
	blt	$a0, $a7, bge_else.28767
	j	bge_cont.28768
bge_else.28767:
	addi	$a7, $a0, 1
	li	$a8, 632
	flw	$f0, 0($a8)
	li	$a8, 624
	lw	$a8, 4($a8)
	sub	$a7, $a7, $a8
	li	$a8, 0
	blt	$a8, $a7, bge_else.28769
	neg	$a9, $a7
	j	bge_cont.28770
bge_else.28769:
	move	$a9, $a7
bge_cont.28770:
	blt	$a8, $a7, bge_else.28771
	li	$a7, -1
	j	bge_cont.28772
bge_else.28771:
	li	$a7, 1
bge_cont.28772:
	li	$a8, 1
	sw	$a6, 28($sp)
	fsw	$f0, 32($sp)
	bne	$a7, $a8, bne_else.28773
	li	$a7, 128
	sll	$a7, $a7, 16
	ori	$a7, $a7, 0
	blt	$a7, $a9, bge_else.28775
	mtc1	$f1, $zero
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	move	$a0, $a9
	fmove	$f0, $f1
	fmove	$f1, $f2
	sw	$ra, 44($sp)
	addi	$sp, $sp, 48
	jal	itof_ret_sub.6582.12799.14578
	subi	$sp, $sp, 48
	lw	$ra, 44($sp)
	fmove	$f0, $fv
	j	bge_cont.28776
bge_else.28775:
	mtc1	$f1, $zero
	move	$a0, $a9
	fmove	$f0, $f1
	sw	$ra, 44($sp)
	addi	$sp, $sp, 48
	jal	itof_big.6566.14552
	subi	$sp, $sp, 48
	lw	$ra, 44($sp)
	fmove	$f0, $fv
bge_cont.28776:
	j	bne_cont.28774
bne_else.28773:
	li	$a7, 128
	sll	$a7, $a7, 16
	ori	$a7, $a7, 0
	blt	$a7, $a9, bge_else.28777
	mtc1	$f1, $zero
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	move	$a0, $a9
	fmove	$f0, $f1
	fmove	$f1, $f2
	sw	$ra, 44($sp)
	addi	$sp, $sp, 48
	jal	itof_ret_sub.6582.12783.14559
	subi	$sp, $sp, 48
	lw	$ra, 44($sp)
	fmove	$f0, $fv
	fneg	$f0, $f0
	j	bge_cont.28778
bge_else.28777:
	mtc1	$f1, $zero
	move	$a0, $a9
	fmove	$f0, $f1
	sw	$ra, 44($sp)
	addi	$sp, $sp, 48
	jal	itof_big.6566.14552
	subi	$sp, $sp, 48
	lw	$ra, 44($sp)
	fmove	$f0, $fv
	fneg	$f0, $f0
bge_cont.28778:
bne_cont.28774:
	flw	$f1, 32($sp)
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
	lw	$a0, 8($sp)
	lw	$a2, 4($sp)
	lw	$a26, 28($sp)
	fmove	$f30, $f2
	fmove	$f2, $f0
	fmove	$f0, $f1
	fmove	$f1, $f30
	sw	$ra, 44($sp)
	addi	$sp, $sp, 48
	jal	pretrace_pixels.3185
	subi	$sp, $sp, 48
	lw	$ra, 44($sp)
	fmove	$f30, $fv
bge_cont.28768:
	li	$a0, 0
	lw	$a1, 20($sp)
	lw	$a2, 16($sp)
	lw	$a3, 12($sp)
	lw	$a4, 8($sp)
	lw	$a26, 24($sp)
	sw	$ra, 44($sp)
	addi	$sp, $sp, 48
	jal	scan_pixel.3196
	subi	$sp, $sp, 48
	lw	$ra, 44($sp)
	fmove	$f30, $fv
	lw	$a0, 20($sp)
	addi	$a0, $a0, 1
	lw	$a1, 4($sp)
	addi	$a1, $a1, 2
	li	$a2, 5
	blt	$a1, $a2, bge_else.28779
	subi	$a4, $a1, 5
	j	bge_cont.28780
bge_else.28779:
	move	$a4, $a1
bge_cont.28780:
	lw	$a1, 12($sp)
	lw	$a2, 8($sp)
	lw	$a3, 16($sp)
	lw	$a26, 0($sp)
	lw	$a25, 0($a26)
	j	scan_line.3202
init_line_elements.3212:
	li	$a2, 0
	blt	$a1, $a2, bge_else.28781
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
	j	init_line_elements.3212
bge_else.28781:
	move	$v0, $a0
	jr	$ra
calc_dirvec.3222:
	lw	$a3, 12($a26)
	flw	$f4, 8($a26)
	li	$a4, 5
	blt	$a0, $a4, bge_else.28784
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
bge_else.28784:
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
	mtc1	$f5, $v0
	fmul	$f1, $f5, $f1
	sw	$a2, 0($sp)
	sw	$a1, 4($sp)
	sw	$a26, 8($sp)
	fsw	$f3, 16($sp)
	sw	$a0, 24($sp)
	fsw	$f0, 32($sp)
	fsw	$f4, 40($sp)
	sw	$a3, 48($sp)
	fsw	$f2, 56($sp)
	fmove	$f0, $f1
	sw	$ra, 68($sp)
	addi	$sp, $sp, 72
	jal	atan.2785
	subi	$sp, $sp, 72
	lw	$ra, 68($sp)
	fmove	$f0, $fv
	flw	$f1, 56($sp)
	fmul	$f0, $f0, $f1
	fabs	$f2, $f0
	mtc1	$f3, $zero
	fblt	$f0, $f3, fbge_else.28789
	li	$a0, 1
	j	fbge_cont.28790
fbge_else.28789:
	li	$a0, -1
fbge_cont.28790:
	lw	$a26, 48($sp)
	fsw	$f0, 64($sp)
	sw	$a0, 72($sp)
	fmove	$f0, $f2
	sw	$ra, 76($sp)
	addi	$sp, $sp, 80
	jal	reduction_pi2.2772
	subi	$sp, $sp, 80
	lw	$ra, 76($sp)
	fmove	$f0, $fv
	flw	$f1, 40($sp)
	fblt	$f0, $f1, fbge_else.28791
	li	$v0, 16457
	sll	$v0, $v0, 16
	ori	$v0, $v0, 4059
	mtc1	$f2, $v0
	fsub	$f0, $f0, $f2
	lw	$a0, 72($sp)
	neg	$a0, $a0
	li	$v0, 16329
	sll	$v0, $v0, 16
	ori	$v0, $v0, 4059
	mtc1	$f2, $v0
	fblt	$f0, $f2, fbge_else.28793
	li	$v0, 16457
	sll	$v0, $v0, 16
	ori	$v0, $v0, 4059
	mtc1	$f2, $v0
	fsub	$f0, $f2, $f0
	li	$v0, 16201
	sll	$v0, $v0, 16
	ori	$v0, $v0, 4059
	mtc1	$f2, $v0
	fblt	$f2, $f0, fbge_else.28795
	fmul	$f2, $f0, $f0
	fmul	$f2, $f2, $f0
	fmul	$f3, $f2, $f0
	fmul	$f3, $f3, $f0
	fmul	$f4, $f3, $f0
	fmul	$f4, $f4, $f0
	li	$v0, 15914
	sll	$v0, $v0, 16
	ori	$v0, $v0, 43692
	mtc1	$f5, $v0
	fmul	$f2, $f5, $f2
	fsub	$f0, $f0, $f2
	li	$v0, 15368
	sll	$v0, $v0, 16
	ori	$v0, $v0, 34406
	mtc1	$f2, $v0
	fmul	$f2, $f2, $f3
	fadd	$f0, $f0, $f2
	li	$v0, 14669
	sll	$v0, $v0, 16
	ori	$v0, $v0, 25782
	mtc1	$f2, $v0
	fmul	$f2, $f2, $f4
	fsub	$f0, $f0, $f2
	li	$a1, 1
	bne	$a0, $a1, bne_else.28797
	j	bne_cont.28798
bne_else.28797:
	li	$v0, -16512
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fmul	$f0, $f0, $f2
bne_cont.28798:
	j	fbge_cont.28796
fbge_else.28795:
	li	$v0, 16329
	sll	$v0, $v0, 16
	ori	$v0, $v0, 4059
	mtc1	$f2, $v0
	fsub	$f0, $f2, $f0
	fmul	$f2, $f0, $f0
	fmul	$f3, $f2, $f0
	fmul	$f3, $f3, $f0
	fmul	$f4, $f3, $f0
	fmul	$f0, $f4, $f0
	li	$v0, 16128
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f4, $v0
	fmul	$f2, $f4, $f2
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f4, $v0
	fsub	$f2, $f4, $f2
	li	$v0, 15658
	sll	$v0, $v0, 16
	ori	$v0, $v0, 42889
	mtc1	$f4, $v0
	fmul	$f3, $f4, $f3
	fadd	$f2, $f2, $f3
	li	$v0, 15027
	sll	$v0, $v0, 16
	ori	$v0, $v0, 33030
	mtc1	$f3, $v0
	fmul	$f0, $f3, $f0
	fsub	$f0, $f2, $f0
	li	$a1, 1
	bne	$a0, $a1, bne_else.28799
	j	bne_cont.28800
bne_else.28799:
	li	$v0, -16512
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fmul	$f0, $f0, $f2
bne_cont.28800:
fbge_cont.28796:
	j	fbge_cont.28794
fbge_else.28793:
	li	$v0, 16201
	sll	$v0, $v0, 16
	ori	$v0, $v0, 4059
	mtc1	$f2, $v0
	fblt	$f2, $f0, fbge_else.28801
	fmul	$f2, $f0, $f0
	fmul	$f2, $f2, $f0
	fmul	$f3, $f2, $f0
	fmul	$f3, $f3, $f0
	fmul	$f4, $f3, $f0
	fmul	$f4, $f4, $f0
	li	$v0, 15914
	sll	$v0, $v0, 16
	ori	$v0, $v0, 43692
	mtc1	$f5, $v0
	fmul	$f2, $f5, $f2
	fsub	$f0, $f0, $f2
	li	$v0, 15368
	sll	$v0, $v0, 16
	ori	$v0, $v0, 34406
	mtc1	$f2, $v0
	fmul	$f2, $f2, $f3
	fadd	$f0, $f0, $f2
	li	$v0, 14669
	sll	$v0, $v0, 16
	ori	$v0, $v0, 25782
	mtc1	$f2, $v0
	fmul	$f2, $f2, $f4
	fsub	$f0, $f0, $f2
	li	$a1, 1
	bne	$a0, $a1, bne_else.28803
	j	bne_cont.28804
bne_else.28803:
	li	$v0, -16512
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fmul	$f0, $f0, $f2
bne_cont.28804:
	j	fbge_cont.28802
fbge_else.28801:
	li	$v0, 16329
	sll	$v0, $v0, 16
	ori	$v0, $v0, 4059
	mtc1	$f2, $v0
	fsub	$f0, $f2, $f0
	fmul	$f2, $f0, $f0
	fmul	$f3, $f2, $f0
	fmul	$f3, $f3, $f0
	fmul	$f4, $f3, $f0
	fmul	$f0, $f4, $f0
	li	$v0, 16128
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f4, $v0
	fmul	$f2, $f4, $f2
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f4, $v0
	fsub	$f2, $f4, $f2
	li	$v0, 15658
	sll	$v0, $v0, 16
	ori	$v0, $v0, 42889
	mtc1	$f4, $v0
	fmul	$f3, $f4, $f3
	fadd	$f2, $f2, $f3
	li	$v0, 15027
	sll	$v0, $v0, 16
	ori	$v0, $v0, 33030
	mtc1	$f3, $v0
	fmul	$f0, $f3, $f0
	fsub	$f0, $f2, $f0
	li	$a1, 1
	bne	$a0, $a1, bne_else.28805
	j	bne_cont.28806
bne_else.28805:
	li	$v0, -16512
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fmul	$f0, $f0, $f2
bne_cont.28806:
fbge_cont.28802:
fbge_cont.28794:
	j	fbge_cont.28792
fbge_else.28791:
	li	$v0, 16329
	sll	$v0, $v0, 16
	ori	$v0, $v0, 4059
	mtc1	$f2, $v0
	fblt	$f0, $f2, fbge_else.28807
	li	$v0, 16457
	sll	$v0, $v0, 16
	ori	$v0, $v0, 4059
	mtc1	$f2, $v0
	fsub	$f0, $f2, $f0
	li	$v0, 16201
	sll	$v0, $v0, 16
	ori	$v0, $v0, 4059
	mtc1	$f2, $v0
	fblt	$f2, $f0, fbge_else.28809
	fmul	$f2, $f0, $f0
	fmul	$f2, $f2, $f0
	fmul	$f3, $f2, $f0
	fmul	$f3, $f3, $f0
	fmul	$f4, $f3, $f0
	fmul	$f4, $f4, $f0
	li	$v0, 15914
	sll	$v0, $v0, 16
	ori	$v0, $v0, 43692
	mtc1	$f5, $v0
	fmul	$f2, $f5, $f2
	fsub	$f0, $f0, $f2
	li	$v0, 15368
	sll	$v0, $v0, 16
	ori	$v0, $v0, 34406
	mtc1	$f2, $v0
	fmul	$f2, $f2, $f3
	fadd	$f0, $f0, $f2
	li	$v0, 14669
	sll	$v0, $v0, 16
	ori	$v0, $v0, 25782
	mtc1	$f2, $v0
	fmul	$f2, $f2, $f4
	fsub	$f0, $f0, $f2
	li	$a0, 1
	lw	$a1, 72($sp)
	bne	$a1, $a0, bne_else.28811
	j	bne_cont.28812
bne_else.28811:
	li	$v0, -16512
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fmul	$f0, $f0, $f2
bne_cont.28812:
	j	fbge_cont.28810
fbge_else.28809:
	li	$v0, 16329
	sll	$v0, $v0, 16
	ori	$v0, $v0, 4059
	mtc1	$f2, $v0
	fsub	$f0, $f2, $f0
	fmul	$f2, $f0, $f0
	fmul	$f3, $f2, $f0
	fmul	$f3, $f3, $f0
	fmul	$f4, $f3, $f0
	fmul	$f0, $f4, $f0
	li	$v0, 16128
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f4, $v0
	fmul	$f2, $f4, $f2
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f4, $v0
	fsub	$f2, $f4, $f2
	li	$v0, 15658
	sll	$v0, $v0, 16
	ori	$v0, $v0, 42889
	mtc1	$f4, $v0
	fmul	$f3, $f4, $f3
	fadd	$f2, $f2, $f3
	li	$v0, 15027
	sll	$v0, $v0, 16
	ori	$v0, $v0, 33030
	mtc1	$f3, $v0
	fmul	$f0, $f3, $f0
	fsub	$f0, $f2, $f0
	li	$a0, 1
	lw	$a1, 72($sp)
	bne	$a1, $a0, bne_else.28813
	j	bne_cont.28814
bne_else.28813:
	li	$v0, -16512
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fmul	$f0, $f0, $f2
bne_cont.28814:
fbge_cont.28810:
	j	fbge_cont.28808
fbge_else.28807:
	li	$v0, 16201
	sll	$v0, $v0, 16
	ori	$v0, $v0, 4059
	mtc1	$f2, $v0
	fblt	$f2, $f0, fbge_else.28815
	fmul	$f2, $f0, $f0
	fmul	$f2, $f2, $f0
	fmul	$f3, $f2, $f0
	fmul	$f3, $f3, $f0
	fmul	$f4, $f3, $f0
	fmul	$f4, $f4, $f0
	li	$v0, 15914
	sll	$v0, $v0, 16
	ori	$v0, $v0, 43692
	mtc1	$f5, $v0
	fmul	$f2, $f5, $f2
	fsub	$f0, $f0, $f2
	li	$v0, 15368
	sll	$v0, $v0, 16
	ori	$v0, $v0, 34406
	mtc1	$f2, $v0
	fmul	$f2, $f2, $f3
	fadd	$f0, $f0, $f2
	li	$v0, 14669
	sll	$v0, $v0, 16
	ori	$v0, $v0, 25782
	mtc1	$f2, $v0
	fmul	$f2, $f2, $f4
	fsub	$f0, $f0, $f2
	li	$a0, 1
	lw	$a1, 72($sp)
	bne	$a1, $a0, bne_else.28817
	j	bne_cont.28818
bne_else.28817:
	li	$v0, -16512
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fmul	$f0, $f0, $f2
bne_cont.28818:
	j	fbge_cont.28816
fbge_else.28815:
	li	$v0, 16329
	sll	$v0, $v0, 16
	ori	$v0, $v0, 4059
	mtc1	$f2, $v0
	fsub	$f0, $f2, $f0
	fmul	$f2, $f0, $f0
	fmul	$f3, $f2, $f0
	fmul	$f3, $f3, $f0
	fmul	$f4, $f3, $f0
	fmul	$f0, $f4, $f0
	li	$v0, 16128
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f4, $v0
	fmul	$f2, $f4, $f2
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f4, $v0
	fsub	$f2, $f4, $f2
	li	$v0, 15658
	sll	$v0, $v0, 16
	ori	$v0, $v0, 42889
	mtc1	$f4, $v0
	fmul	$f3, $f4, $f3
	fadd	$f2, $f2, $f3
	li	$v0, 15027
	sll	$v0, $v0, 16
	ori	$v0, $v0, 33030
	mtc1	$f3, $v0
	fmul	$f0, $f3, $f0
	fsub	$f0, $f2, $f0
	li	$a0, 1
	lw	$a1, 72($sp)
	bne	$a1, $a0, bne_else.28819
	j	bne_cont.28820
bne_else.28819:
	li	$v0, -16512
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fmul	$f0, $f0, $f2
bne_cont.28820:
fbge_cont.28816:
fbge_cont.28808:
fbge_cont.28792:
	flw	$f2, 64($sp)
	fabs	$f2, $f2
	lw	$a26, 48($sp)
	fsw	$f0, 80($sp)
	fmove	$f0, $f2
	sw	$ra, 92($sp)
	addi	$sp, $sp, 96
	jal	reduction_pi2.2772
	subi	$sp, $sp, 96
	lw	$ra, 92($sp)
	fmove	$f0, $fv
	flw	$f1, 40($sp)
	fblt	$f0, $f1, fbge_else.28822
	li	$v0, 16457
	sll	$v0, $v0, 16
	ori	$v0, $v0, 4059
	mtc1	$f2, $v0
	fsub	$f0, $f0, $f2
	li	$v0, 16329
	sll	$v0, $v0, 16
	ori	$v0, $v0, 4059
	mtc1	$f2, $v0
	fblt	$f0, $f2, fbge_else.28824
	li	$v0, 16457
	sll	$v0, $v0, 16
	ori	$v0, $v0, 4059
	mtc1	$f2, $v0
	fsub	$f0, $f2, $f0
	li	$v0, 16201
	sll	$v0, $v0, 16
	ori	$v0, $v0, 4059
	mtc1	$f2, $v0
	fblt	$f2, $f0, fbge_else.28826
	fmul	$f2, $f0, $f0
	fmul	$f3, $f2, $f0
	fmul	$f3, $f3, $f0
	fmul	$f4, $f3, $f0
	fmul	$f0, $f4, $f0
	li	$v0, 16128
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f4, $v0
	fmul	$f2, $f4, $f2
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f4, $v0
	fsub	$f2, $f4, $f2
	li	$v0, 15658
	sll	$v0, $v0, 16
	ori	$v0, $v0, 42889
	mtc1	$f4, $v0
	fmul	$f3, $f4, $f3
	fadd	$f2, $f2, $f3
	li	$v0, 15027
	sll	$v0, $v0, 16
	ori	$v0, $v0, 33030
	mtc1	$f3, $v0
	fmul	$f0, $f3, $f0
	fsub	$f0, $f2, $f0
	j	fbge_cont.28827
fbge_else.28826:
	li	$v0, 16329
	sll	$v0, $v0, 16
	ori	$v0, $v0, 4059
	mtc1	$f2, $v0
	fsub	$f0, $f2, $f0
	fmul	$f2, $f0, $f0
	fmul	$f2, $f2, $f0
	fmul	$f3, $f2, $f0
	fmul	$f3, $f3, $f0
	fmul	$f4, $f3, $f0
	fmul	$f4, $f4, $f0
	li	$v0, 15914
	sll	$v0, $v0, 16
	ori	$v0, $v0, 43692
	mtc1	$f5, $v0
	fmul	$f2, $f5, $f2
	fsub	$f0, $f0, $f2
	li	$v0, 15368
	sll	$v0, $v0, 16
	ori	$v0, $v0, 34406
	mtc1	$f2, $v0
	fmul	$f2, $f2, $f3
	fadd	$f0, $f0, $f2
	li	$v0, 14669
	sll	$v0, $v0, 16
	ori	$v0, $v0, 25782
	mtc1	$f2, $v0
	fmul	$f2, $f2, $f4
	fsub	$f0, $f0, $f2
fbge_cont.28827:
	j	fbge_cont.28825
fbge_else.28824:
	li	$v0, 16201
	sll	$v0, $v0, 16
	ori	$v0, $v0, 4059
	mtc1	$f2, $v0
	fblt	$f2, $f0, fbge_else.28828
	fmul	$f2, $f0, $f0
	fmul	$f3, $f2, $f0
	fmul	$f3, $f3, $f0
	fmul	$f4, $f3, $f0
	fmul	$f0, $f4, $f0
	li	$v0, 16128
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f4, $v0
	fmul	$f2, $f4, $f2
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f4, $v0
	fsub	$f2, $f4, $f2
	li	$v0, 15658
	sll	$v0, $v0, 16
	ori	$v0, $v0, 42889
	mtc1	$f4, $v0
	fmul	$f3, $f4, $f3
	fadd	$f2, $f2, $f3
	li	$v0, 15027
	sll	$v0, $v0, 16
	ori	$v0, $v0, 33030
	mtc1	$f3, $v0
	fmul	$f0, $f3, $f0
	fsub	$f0, $f2, $f0
	li	$v0, -16512
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fmul	$f0, $f0, $f2
	j	fbge_cont.28829
fbge_else.28828:
	li	$v0, 16329
	sll	$v0, $v0, 16
	ori	$v0, $v0, 4059
	mtc1	$f2, $v0
	fsub	$f0, $f2, $f0
	fmul	$f2, $f0, $f0
	fmul	$f2, $f2, $f0
	fmul	$f3, $f2, $f0
	fmul	$f3, $f3, $f0
	fmul	$f4, $f3, $f0
	fmul	$f4, $f4, $f0
	li	$v0, 15914
	sll	$v0, $v0, 16
	ori	$v0, $v0, 43692
	mtc1	$f5, $v0
	fmul	$f2, $f5, $f2
	fsub	$f0, $f0, $f2
	li	$v0, 15368
	sll	$v0, $v0, 16
	ori	$v0, $v0, 34406
	mtc1	$f2, $v0
	fmul	$f2, $f2, $f3
	fadd	$f0, $f0, $f2
	li	$v0, 14669
	sll	$v0, $v0, 16
	ori	$v0, $v0, 25782
	mtc1	$f2, $v0
	fmul	$f2, $f2, $f4
	fsub	$f0, $f0, $f2
	li	$v0, -16512
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fmul	$f0, $f0, $f2
fbge_cont.28829:
fbge_cont.28825:
	j	fbge_cont.28823
fbge_else.28822:
	li	$v0, 16329
	sll	$v0, $v0, 16
	ori	$v0, $v0, 4059
	mtc1	$f2, $v0
	fblt	$f0, $f2, fbge_else.28830
	li	$v0, 16457
	sll	$v0, $v0, 16
	ori	$v0, $v0, 4059
	mtc1	$f2, $v0
	fsub	$f0, $f2, $f0
	li	$v0, 16201
	sll	$v0, $v0, 16
	ori	$v0, $v0, 4059
	mtc1	$f2, $v0
	fblt	$f2, $f0, fbge_else.28832
	fmul	$f2, $f0, $f0
	fmul	$f3, $f2, $f0
	fmul	$f3, $f3, $f0
	fmul	$f4, $f3, $f0
	fmul	$f0, $f4, $f0
	li	$v0, 16128
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f4, $v0
	fmul	$f2, $f4, $f2
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f4, $v0
	fsub	$f2, $f4, $f2
	li	$v0, 15658
	sll	$v0, $v0, 16
	ori	$v0, $v0, 42889
	mtc1	$f4, $v0
	fmul	$f3, $f4, $f3
	fadd	$f2, $f2, $f3
	li	$v0, 15027
	sll	$v0, $v0, 16
	ori	$v0, $v0, 33030
	mtc1	$f3, $v0
	fmul	$f0, $f3, $f0
	fsub	$f0, $f2, $f0
	li	$v0, -16512
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fmul	$f0, $f0, $f2
	j	fbge_cont.28833
fbge_else.28832:
	li	$v0, 16329
	sll	$v0, $v0, 16
	ori	$v0, $v0, 4059
	mtc1	$f2, $v0
	fsub	$f0, $f2, $f0
	fmul	$f2, $f0, $f0
	fmul	$f2, $f2, $f0
	fmul	$f3, $f2, $f0
	fmul	$f3, $f3, $f0
	fmul	$f4, $f3, $f0
	fmul	$f4, $f4, $f0
	li	$v0, 15914
	sll	$v0, $v0, 16
	ori	$v0, $v0, 43692
	mtc1	$f5, $v0
	fmul	$f2, $f5, $f2
	fsub	$f0, $f0, $f2
	li	$v0, 15368
	sll	$v0, $v0, 16
	ori	$v0, $v0, 34406
	mtc1	$f2, $v0
	fmul	$f2, $f2, $f3
	fadd	$f0, $f0, $f2
	li	$v0, 14669
	sll	$v0, $v0, 16
	ori	$v0, $v0, 25782
	mtc1	$f2, $v0
	fmul	$f2, $f2, $f4
	fsub	$f0, $f0, $f2
	li	$v0, -16512
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fmul	$f0, $f0, $f2
fbge_cont.28833:
	j	fbge_cont.28831
fbge_else.28830:
	li	$v0, 16201
	sll	$v0, $v0, 16
	ori	$v0, $v0, 4059
	mtc1	$f2, $v0
	fblt	$f2, $f0, fbge_else.28834
	fmul	$f2, $f0, $f0
	fmul	$f3, $f2, $f0
	fmul	$f3, $f3, $f0
	fmul	$f4, $f3, $f0
	fmul	$f0, $f4, $f0
	li	$v0, 16128
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f4, $v0
	fmul	$f2, $f4, $f2
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f4, $v0
	fsub	$f2, $f4, $f2
	li	$v0, 15658
	sll	$v0, $v0, 16
	ori	$v0, $v0, 42889
	mtc1	$f4, $v0
	fmul	$f3, $f4, $f3
	fadd	$f2, $f2, $f3
	li	$v0, 15027
	sll	$v0, $v0, 16
	ori	$v0, $v0, 33030
	mtc1	$f3, $v0
	fmul	$f0, $f3, $f0
	fsub	$f0, $f2, $f0
	j	fbge_cont.28835
fbge_else.28834:
	li	$v0, 16329
	sll	$v0, $v0, 16
	ori	$v0, $v0, 4059
	mtc1	$f2, $v0
	fsub	$f0, $f2, $f0
	fmul	$f2, $f0, $f0
	fmul	$f2, $f2, $f0
	fmul	$f3, $f2, $f0
	fmul	$f3, $f3, $f0
	fmul	$f4, $f3, $f0
	fmul	$f4, $f4, $f0
	li	$v0, 15914
	sll	$v0, $v0, 16
	ori	$v0, $v0, 43692
	mtc1	$f5, $v0
	fmul	$f2, $f5, $f2
	fsub	$f0, $f0, $f2
	li	$v0, 15368
	sll	$v0, $v0, 16
	ori	$v0, $v0, 34406
	mtc1	$f2, $v0
	fmul	$f2, $f2, $f3
	fadd	$f0, $f0, $f2
	li	$v0, 14669
	sll	$v0, $v0, 16
	ori	$v0, $v0, 25782
	mtc1	$f2, $v0
	fmul	$f2, $f2, $f4
	fsub	$f0, $f0, $f2
fbge_cont.28835:
fbge_cont.28831:
fbge_cont.28823:
	finv	$f0, $f0
	flw	$f2, 80($sp)
	fmul	$f0, $f2, $f0
	flw	$f2, 32($sp)
	fmul	$f0, $f0, $f2
	lw	$a0, 24($sp)
	addi	$a0, $a0, 1
	fmul	$f2, $f0, $f0
	li	$v0, 15820
	sll	$v0, $v0, 16
	ori	$v0, $v0, 52429
	mtc1	$f3, $v0
	fadd	$f2, $f2, $f3
	sqrt	$f2, $f2
	finv	$f3, $f2
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f4, $v0
	fmul	$f3, $f4, $f3
	fsw	$f0, 88($sp)
	sw	$a0, 96($sp)
	fsw	$f2, 104($sp)
	fmove	$f0, $f3
	sw	$ra, 116($sp)
	addi	$sp, $sp, 120
	jal	atan.2785
	subi	$sp, $sp, 120
	lw	$ra, 116($sp)
	fmove	$f0, $fv
	flw	$f1, 16($sp)
	fmul	$f0, $f0, $f1
	fabs	$f2, $f0
	mtc1	$f3, $zero
	fblt	$f0, $f3, fbge_else.28837
	li	$a0, 1
	j	fbge_cont.28838
fbge_else.28837:
	li	$a0, -1
fbge_cont.28838:
	lw	$a26, 48($sp)
	fsw	$f0, 112($sp)
	sw	$a0, 120($sp)
	fmove	$f0, $f2
	sw	$ra, 124($sp)
	addi	$sp, $sp, 128
	jal	reduction_pi2.2772
	subi	$sp, $sp, 128
	lw	$ra, 124($sp)
	fmove	$f0, $fv
	flw	$f1, 40($sp)
	fblt	$f0, $f1, fbge_else.28839
	li	$v0, 16457
	sll	$v0, $v0, 16
	ori	$v0, $v0, 4059
	mtc1	$f2, $v0
	fsub	$f0, $f0, $f2
	lw	$a0, 120($sp)
	neg	$a0, $a0
	li	$v0, 16329
	sll	$v0, $v0, 16
	ori	$v0, $v0, 4059
	mtc1	$f2, $v0
	fblt	$f0, $f2, fbge_else.28841
	li	$v0, 16457
	sll	$v0, $v0, 16
	ori	$v0, $v0, 4059
	mtc1	$f2, $v0
	fsub	$f0, $f2, $f0
	li	$v0, 16201
	sll	$v0, $v0, 16
	ori	$v0, $v0, 4059
	mtc1	$f2, $v0
	fblt	$f2, $f0, fbge_else.28843
	fmul	$f2, $f0, $f0
	fmul	$f2, $f2, $f0
	fmul	$f3, $f2, $f0
	fmul	$f3, $f3, $f0
	fmul	$f4, $f3, $f0
	fmul	$f4, $f4, $f0
	li	$v0, 15914
	sll	$v0, $v0, 16
	ori	$v0, $v0, 43692
	mtc1	$f5, $v0
	fmul	$f2, $f5, $f2
	fsub	$f0, $f0, $f2
	li	$v0, 15368
	sll	$v0, $v0, 16
	ori	$v0, $v0, 34406
	mtc1	$f2, $v0
	fmul	$f2, $f2, $f3
	fadd	$f0, $f0, $f2
	li	$v0, 14669
	sll	$v0, $v0, 16
	ori	$v0, $v0, 25782
	mtc1	$f2, $v0
	fmul	$f2, $f2, $f4
	fsub	$f0, $f0, $f2
	li	$a1, 1
	bne	$a0, $a1, bne_else.28845
	j	bne_cont.28846
bne_else.28845:
	li	$v0, -16512
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fmul	$f0, $f0, $f2
bne_cont.28846:
	j	fbge_cont.28844
fbge_else.28843:
	li	$v0, 16329
	sll	$v0, $v0, 16
	ori	$v0, $v0, 4059
	mtc1	$f2, $v0
	fsub	$f0, $f2, $f0
	fmul	$f2, $f0, $f0
	fmul	$f3, $f2, $f0
	fmul	$f3, $f3, $f0
	fmul	$f4, $f3, $f0
	fmul	$f0, $f4, $f0
	li	$v0, 16128
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f4, $v0
	fmul	$f2, $f4, $f2
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f4, $v0
	fsub	$f2, $f4, $f2
	li	$v0, 15658
	sll	$v0, $v0, 16
	ori	$v0, $v0, 42889
	mtc1	$f4, $v0
	fmul	$f3, $f4, $f3
	fadd	$f2, $f2, $f3
	li	$v0, 15027
	sll	$v0, $v0, 16
	ori	$v0, $v0, 33030
	mtc1	$f3, $v0
	fmul	$f0, $f3, $f0
	fsub	$f0, $f2, $f0
	li	$a1, 1
	bne	$a0, $a1, bne_else.28847
	j	bne_cont.28848
bne_else.28847:
	li	$v0, -16512
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fmul	$f0, $f0, $f2
bne_cont.28848:
fbge_cont.28844:
	j	fbge_cont.28842
fbge_else.28841:
	li	$v0, 16201
	sll	$v0, $v0, 16
	ori	$v0, $v0, 4059
	mtc1	$f2, $v0
	fblt	$f2, $f0, fbge_else.28849
	fmul	$f2, $f0, $f0
	fmul	$f2, $f2, $f0
	fmul	$f3, $f2, $f0
	fmul	$f3, $f3, $f0
	fmul	$f4, $f3, $f0
	fmul	$f4, $f4, $f0
	li	$v0, 15914
	sll	$v0, $v0, 16
	ori	$v0, $v0, 43692
	mtc1	$f5, $v0
	fmul	$f2, $f5, $f2
	fsub	$f0, $f0, $f2
	li	$v0, 15368
	sll	$v0, $v0, 16
	ori	$v0, $v0, 34406
	mtc1	$f2, $v0
	fmul	$f2, $f2, $f3
	fadd	$f0, $f0, $f2
	li	$v0, 14669
	sll	$v0, $v0, 16
	ori	$v0, $v0, 25782
	mtc1	$f2, $v0
	fmul	$f2, $f2, $f4
	fsub	$f0, $f0, $f2
	li	$a1, 1
	bne	$a0, $a1, bne_else.28851
	j	bne_cont.28852
bne_else.28851:
	li	$v0, -16512
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fmul	$f0, $f0, $f2
bne_cont.28852:
	j	fbge_cont.28850
fbge_else.28849:
	li	$v0, 16329
	sll	$v0, $v0, 16
	ori	$v0, $v0, 4059
	mtc1	$f2, $v0
	fsub	$f0, $f2, $f0
	fmul	$f2, $f0, $f0
	fmul	$f3, $f2, $f0
	fmul	$f3, $f3, $f0
	fmul	$f4, $f3, $f0
	fmul	$f0, $f4, $f0
	li	$v0, 16128
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f4, $v0
	fmul	$f2, $f4, $f2
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f4, $v0
	fsub	$f2, $f4, $f2
	li	$v0, 15658
	sll	$v0, $v0, 16
	ori	$v0, $v0, 42889
	mtc1	$f4, $v0
	fmul	$f3, $f4, $f3
	fadd	$f2, $f2, $f3
	li	$v0, 15027
	sll	$v0, $v0, 16
	ori	$v0, $v0, 33030
	mtc1	$f3, $v0
	fmul	$f0, $f3, $f0
	fsub	$f0, $f2, $f0
	li	$a1, 1
	bne	$a0, $a1, bne_else.28853
	j	bne_cont.28854
bne_else.28853:
	li	$v0, -16512
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fmul	$f0, $f0, $f2
bne_cont.28854:
fbge_cont.28850:
fbge_cont.28842:
	j	fbge_cont.28840
fbge_else.28839:
	li	$v0, 16329
	sll	$v0, $v0, 16
	ori	$v0, $v0, 4059
	mtc1	$f2, $v0
	fblt	$f0, $f2, fbge_else.28855
	li	$v0, 16457
	sll	$v0, $v0, 16
	ori	$v0, $v0, 4059
	mtc1	$f2, $v0
	fsub	$f0, $f2, $f0
	li	$v0, 16201
	sll	$v0, $v0, 16
	ori	$v0, $v0, 4059
	mtc1	$f2, $v0
	fblt	$f2, $f0, fbge_else.28857
	fmul	$f2, $f0, $f0
	fmul	$f2, $f2, $f0
	fmul	$f3, $f2, $f0
	fmul	$f3, $f3, $f0
	fmul	$f4, $f3, $f0
	fmul	$f4, $f4, $f0
	li	$v0, 15914
	sll	$v0, $v0, 16
	ori	$v0, $v0, 43692
	mtc1	$f5, $v0
	fmul	$f2, $f5, $f2
	fsub	$f0, $f0, $f2
	li	$v0, 15368
	sll	$v0, $v0, 16
	ori	$v0, $v0, 34406
	mtc1	$f2, $v0
	fmul	$f2, $f2, $f3
	fadd	$f0, $f0, $f2
	li	$v0, 14669
	sll	$v0, $v0, 16
	ori	$v0, $v0, 25782
	mtc1	$f2, $v0
	fmul	$f2, $f2, $f4
	fsub	$f0, $f0, $f2
	li	$a0, 1
	lw	$a1, 120($sp)
	bne	$a1, $a0, bne_else.28859
	j	bne_cont.28860
bne_else.28859:
	li	$v0, -16512
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fmul	$f0, $f0, $f2
bne_cont.28860:
	j	fbge_cont.28858
fbge_else.28857:
	li	$v0, 16329
	sll	$v0, $v0, 16
	ori	$v0, $v0, 4059
	mtc1	$f2, $v0
	fsub	$f0, $f2, $f0
	fmul	$f2, $f0, $f0
	fmul	$f3, $f2, $f0
	fmul	$f3, $f3, $f0
	fmul	$f4, $f3, $f0
	fmul	$f0, $f4, $f0
	li	$v0, 16128
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f4, $v0
	fmul	$f2, $f4, $f2
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f4, $v0
	fsub	$f2, $f4, $f2
	li	$v0, 15658
	sll	$v0, $v0, 16
	ori	$v0, $v0, 42889
	mtc1	$f4, $v0
	fmul	$f3, $f4, $f3
	fadd	$f2, $f2, $f3
	li	$v0, 15027
	sll	$v0, $v0, 16
	ori	$v0, $v0, 33030
	mtc1	$f3, $v0
	fmul	$f0, $f3, $f0
	fsub	$f0, $f2, $f0
	li	$a0, 1
	lw	$a1, 120($sp)
	bne	$a1, $a0, bne_else.28861
	j	bne_cont.28862
bne_else.28861:
	li	$v0, -16512
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fmul	$f0, $f0, $f2
bne_cont.28862:
fbge_cont.28858:
	j	fbge_cont.28856
fbge_else.28855:
	li	$v0, 16201
	sll	$v0, $v0, 16
	ori	$v0, $v0, 4059
	mtc1	$f2, $v0
	fblt	$f2, $f0, fbge_else.28863
	fmul	$f2, $f0, $f0
	fmul	$f2, $f2, $f0
	fmul	$f3, $f2, $f0
	fmul	$f3, $f3, $f0
	fmul	$f4, $f3, $f0
	fmul	$f4, $f4, $f0
	li	$v0, 15914
	sll	$v0, $v0, 16
	ori	$v0, $v0, 43692
	mtc1	$f5, $v0
	fmul	$f2, $f5, $f2
	fsub	$f0, $f0, $f2
	li	$v0, 15368
	sll	$v0, $v0, 16
	ori	$v0, $v0, 34406
	mtc1	$f2, $v0
	fmul	$f2, $f2, $f3
	fadd	$f0, $f0, $f2
	li	$v0, 14669
	sll	$v0, $v0, 16
	ori	$v0, $v0, 25782
	mtc1	$f2, $v0
	fmul	$f2, $f2, $f4
	fsub	$f0, $f0, $f2
	li	$a0, 1
	lw	$a1, 120($sp)
	bne	$a1, $a0, bne_else.28865
	j	bne_cont.28866
bne_else.28865:
	li	$v0, -16512
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fmul	$f0, $f0, $f2
bne_cont.28866:
	j	fbge_cont.28864
fbge_else.28863:
	li	$v0, 16329
	sll	$v0, $v0, 16
	ori	$v0, $v0, 4059
	mtc1	$f2, $v0
	fsub	$f0, $f2, $f0
	fmul	$f2, $f0, $f0
	fmul	$f3, $f2, $f0
	fmul	$f3, $f3, $f0
	fmul	$f4, $f3, $f0
	fmul	$f0, $f4, $f0
	li	$v0, 16128
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f4, $v0
	fmul	$f2, $f4, $f2
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f4, $v0
	fsub	$f2, $f4, $f2
	li	$v0, 15658
	sll	$v0, $v0, 16
	ori	$v0, $v0, 42889
	mtc1	$f4, $v0
	fmul	$f3, $f4, $f3
	fadd	$f2, $f2, $f3
	li	$v0, 15027
	sll	$v0, $v0, 16
	ori	$v0, $v0, 33030
	mtc1	$f3, $v0
	fmul	$f0, $f3, $f0
	fsub	$f0, $f2, $f0
	li	$a0, 1
	lw	$a1, 120($sp)
	bne	$a1, $a0, bne_else.28867
	j	bne_cont.28868
bne_else.28867:
	li	$v0, -16512
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fmul	$f0, $f0, $f2
bne_cont.28868:
fbge_cont.28864:
fbge_cont.28856:
fbge_cont.28840:
	flw	$f2, 112($sp)
	fabs	$f2, $f2
	lw	$a26, 48($sp)
	fsw	$f0, 128($sp)
	fmove	$f0, $f2
	sw	$ra, 140($sp)
	addi	$sp, $sp, 144
	jal	reduction_pi2.2772
	subi	$sp, $sp, 144
	lw	$ra, 140($sp)
	fmove	$f0, $fv
	flw	$f1, 40($sp)
	fblt	$f0, $f1, fbge_else.28870
	li	$v0, 16457
	sll	$v0, $v0, 16
	ori	$v0, $v0, 4059
	mtc1	$f1, $v0
	fsub	$f0, $f0, $f1
	li	$v0, 16329
	sll	$v0, $v0, 16
	ori	$v0, $v0, 4059
	mtc1	$f1, $v0
	fblt	$f0, $f1, fbge_else.28872
	li	$v0, 16457
	sll	$v0, $v0, 16
	ori	$v0, $v0, 4059
	mtc1	$f1, $v0
	fsub	$f0, $f1, $f0
	li	$v0, 16201
	sll	$v0, $v0, 16
	ori	$v0, $v0, 4059
	mtc1	$f1, $v0
	fblt	$f1, $f0, fbge_else.28874
	fmul	$f1, $f0, $f0
	fmul	$f2, $f1, $f0
	fmul	$f2, $f2, $f0
	fmul	$f3, $f2, $f0
	fmul	$f0, $f3, $f0
	li	$v0, 16128
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f3, $v0
	fmul	$f1, $f3, $f1
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f3, $v0
	fsub	$f1, $f3, $f1
	li	$v0, 15658
	sll	$v0, $v0, 16
	ori	$v0, $v0, 42889
	mtc1	$f3, $v0
	fmul	$f2, $f3, $f2
	fadd	$f1, $f1, $f2
	li	$v0, 15027
	sll	$v0, $v0, 16
	ori	$v0, $v0, 33030
	mtc1	$f2, $v0
	fmul	$f0, $f2, $f0
	fsub	$f0, $f1, $f0
	j	fbge_cont.28875
fbge_else.28874:
	li	$v0, 16329
	sll	$v0, $v0, 16
	ori	$v0, $v0, 4059
	mtc1	$f1, $v0
	fsub	$f0, $f1, $f0
	fmul	$f1, $f0, $f0
	fmul	$f1, $f1, $f0
	fmul	$f2, $f1, $f0
	fmul	$f2, $f2, $f0
	fmul	$f3, $f2, $f0
	fmul	$f3, $f3, $f0
	li	$v0, 15914
	sll	$v0, $v0, 16
	ori	$v0, $v0, 43692
	mtc1	$f4, $v0
	fmul	$f1, $f4, $f1
	fsub	$f0, $f0, $f1
	li	$v0, 15368
	sll	$v0, $v0, 16
	ori	$v0, $v0, 34406
	mtc1	$f1, $v0
	fmul	$f1, $f1, $f2
	fadd	$f0, $f0, $f1
	li	$v0, 14669
	sll	$v0, $v0, 16
	ori	$v0, $v0, 25782
	mtc1	$f1, $v0
	fmul	$f1, $f1, $f3
	fsub	$f0, $f0, $f1
fbge_cont.28875:
	j	fbge_cont.28873
fbge_else.28872:
	li	$v0, 16201
	sll	$v0, $v0, 16
	ori	$v0, $v0, 4059
	mtc1	$f1, $v0
	fblt	$f1, $f0, fbge_else.28876
	fmul	$f1, $f0, $f0
	fmul	$f2, $f1, $f0
	fmul	$f2, $f2, $f0
	fmul	$f3, $f2, $f0
	fmul	$f0, $f3, $f0
	li	$v0, 16128
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f3, $v0
	fmul	$f1, $f3, $f1
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f3, $v0
	fsub	$f1, $f3, $f1
	li	$v0, 15658
	sll	$v0, $v0, 16
	ori	$v0, $v0, 42889
	mtc1	$f3, $v0
	fmul	$f2, $f3, $f2
	fadd	$f1, $f1, $f2
	li	$v0, 15027
	sll	$v0, $v0, 16
	ori	$v0, $v0, 33030
	mtc1	$f2, $v0
	fmul	$f0, $f2, $f0
	fsub	$f0, $f1, $f0
	li	$v0, -16512
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	fmul	$f0, $f0, $f1
	j	fbge_cont.28877
fbge_else.28876:
	li	$v0, 16329
	sll	$v0, $v0, 16
	ori	$v0, $v0, 4059
	mtc1	$f1, $v0
	fsub	$f0, $f1, $f0
	fmul	$f1, $f0, $f0
	fmul	$f1, $f1, $f0
	fmul	$f2, $f1, $f0
	fmul	$f2, $f2, $f0
	fmul	$f3, $f2, $f0
	fmul	$f3, $f3, $f0
	li	$v0, 15914
	sll	$v0, $v0, 16
	ori	$v0, $v0, 43692
	mtc1	$f4, $v0
	fmul	$f1, $f4, $f1
	fsub	$f0, $f0, $f1
	li	$v0, 15368
	sll	$v0, $v0, 16
	ori	$v0, $v0, 34406
	mtc1	$f1, $v0
	fmul	$f1, $f1, $f2
	fadd	$f0, $f0, $f1
	li	$v0, 14669
	sll	$v0, $v0, 16
	ori	$v0, $v0, 25782
	mtc1	$f1, $v0
	fmul	$f1, $f1, $f3
	fsub	$f0, $f0, $f1
	li	$v0, -16512
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	fmul	$f0, $f0, $f1
fbge_cont.28877:
fbge_cont.28873:
	j	fbge_cont.28871
fbge_else.28870:
	li	$v0, 16329
	sll	$v0, $v0, 16
	ori	$v0, $v0, 4059
	mtc1	$f1, $v0
	fblt	$f0, $f1, fbge_else.28878
	li	$v0, 16457
	sll	$v0, $v0, 16
	ori	$v0, $v0, 4059
	mtc1	$f1, $v0
	fsub	$f0, $f1, $f0
	li	$v0, 16201
	sll	$v0, $v0, 16
	ori	$v0, $v0, 4059
	mtc1	$f1, $v0
	fblt	$f1, $f0, fbge_else.28880
	fmul	$f1, $f0, $f0
	fmul	$f2, $f1, $f0
	fmul	$f2, $f2, $f0
	fmul	$f3, $f2, $f0
	fmul	$f0, $f3, $f0
	li	$v0, 16128
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f3, $v0
	fmul	$f1, $f3, $f1
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f3, $v0
	fsub	$f1, $f3, $f1
	li	$v0, 15658
	sll	$v0, $v0, 16
	ori	$v0, $v0, 42889
	mtc1	$f3, $v0
	fmul	$f2, $f3, $f2
	fadd	$f1, $f1, $f2
	li	$v0, 15027
	sll	$v0, $v0, 16
	ori	$v0, $v0, 33030
	mtc1	$f2, $v0
	fmul	$f0, $f2, $f0
	fsub	$f0, $f1, $f0
	li	$v0, -16512
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	fmul	$f0, $f0, $f1
	j	fbge_cont.28881
fbge_else.28880:
	li	$v0, 16329
	sll	$v0, $v0, 16
	ori	$v0, $v0, 4059
	mtc1	$f1, $v0
	fsub	$f0, $f1, $f0
	fmul	$f1, $f0, $f0
	fmul	$f1, $f1, $f0
	fmul	$f2, $f1, $f0
	fmul	$f2, $f2, $f0
	fmul	$f3, $f2, $f0
	fmul	$f3, $f3, $f0
	li	$v0, 15914
	sll	$v0, $v0, 16
	ori	$v0, $v0, 43692
	mtc1	$f4, $v0
	fmul	$f1, $f4, $f1
	fsub	$f0, $f0, $f1
	li	$v0, 15368
	sll	$v0, $v0, 16
	ori	$v0, $v0, 34406
	mtc1	$f1, $v0
	fmul	$f1, $f1, $f2
	fadd	$f0, $f0, $f1
	li	$v0, 14669
	sll	$v0, $v0, 16
	ori	$v0, $v0, 25782
	mtc1	$f1, $v0
	fmul	$f1, $f1, $f3
	fsub	$f0, $f0, $f1
	li	$v0, -16512
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	fmul	$f0, $f0, $f1
fbge_cont.28881:
	j	fbge_cont.28879
fbge_else.28878:
	li	$v0, 16201
	sll	$v0, $v0, 16
	ori	$v0, $v0, 4059
	mtc1	$f1, $v0
	fblt	$f1, $f0, fbge_else.28882
	fmul	$f1, $f0, $f0
	fmul	$f2, $f1, $f0
	fmul	$f2, $f2, $f0
	fmul	$f3, $f2, $f0
	fmul	$f0, $f3, $f0
	li	$v0, 16128
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f3, $v0
	fmul	$f1, $f3, $f1
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f3, $v0
	fsub	$f1, $f3, $f1
	li	$v0, 15658
	sll	$v0, $v0, 16
	ori	$v0, $v0, 42889
	mtc1	$f3, $v0
	fmul	$f2, $f3, $f2
	fadd	$f1, $f1, $f2
	li	$v0, 15027
	sll	$v0, $v0, 16
	ori	$v0, $v0, 33030
	mtc1	$f2, $v0
	fmul	$f0, $f2, $f0
	fsub	$f0, $f1, $f0
	j	fbge_cont.28883
fbge_else.28882:
	li	$v0, 16329
	sll	$v0, $v0, 16
	ori	$v0, $v0, 4059
	mtc1	$f1, $v0
	fsub	$f0, $f1, $f0
	fmul	$f1, $f0, $f0
	fmul	$f1, $f1, $f0
	fmul	$f2, $f1, $f0
	fmul	$f2, $f2, $f0
	fmul	$f3, $f2, $f0
	fmul	$f3, $f3, $f0
	li	$v0, 15914
	sll	$v0, $v0, 16
	ori	$v0, $v0, 43692
	mtc1	$f4, $v0
	fmul	$f1, $f4, $f1
	fsub	$f0, $f0, $f1
	li	$v0, 15368
	sll	$v0, $v0, 16
	ori	$v0, $v0, 34406
	mtc1	$f1, $v0
	fmul	$f1, $f1, $f2
	fadd	$f0, $f0, $f1
	li	$v0, 14669
	sll	$v0, $v0, 16
	ori	$v0, $v0, 25782
	mtc1	$f1, $v0
	fmul	$f1, $f1, $f3
	fsub	$f0, $f0, $f1
fbge_cont.28883:
fbge_cont.28879:
fbge_cont.28871:
	finv	$f0, $f0
	flw	$f1, 128($sp)
	fmul	$f0, $f1, $f0
	flw	$f1, 104($sp)
	fmul	$f1, $f0, $f1
	flw	$f0, 88($sp)
	flw	$f2, 56($sp)
	flw	$f3, 16($sp)
	lw	$a0, 96($sp)
	lw	$a1, 4($sp)
	lw	$a2, 0($sp)
	lw	$a26, 8($sp)
	lw	$a25, 0($a26)
	j	calc_dirvec.3222
itof_ret_sub.6582.7323.14218:
	sra	$a1, $a0, 1
	li	$a2, 0
	bne	$a0, $a2, beq_else.28884
	fmove	$fv, $f0
	jr $ra
beq_else.28884:
	sub	$a0, $a0, $a1
	sub	$a0, $a0, $a1
	li	$a2, 0
	blt	$a2, $a0, bge_else.28885
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fmul	$f1, $f1, $f2
	move	$a0, $a1
	j	itof_ret_sub.6582.7323.14218
bge_else.28885:
	fadd	$f0, $f0, $f1
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fmul	$f1, $f1, $f2
	move	$a0, $a1
	j	itof_ret_sub.6582.7323.14218
itof_big.6566.7307:
	li	$a1, 128
	sll	$a1, $a1, 16
	ori	$a1, $a1, 0
	sub	$a0, $a0, $a1
	li	$v0, 19200
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	fadd	$f0, $f0, $f1
	li	$a1, 128
	sll	$a1, $a1, 16
	ori	$a1, $a1, 0
	blt	$a0, $a1, bge_else.28886
	j	itof_big.6566.7307
bge_else.28886:
	mtc1	$f1, $zero
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fsw	$f0, 0($sp)
	fmove	$f0, $f1
	fmove	$f1, $f2
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	itof_ret_sub.6582.7323.14218
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	fmove	$f0, $fv
	flw	$f1, 0($sp)
	fadd	$fv, $f1, $f0
	jr $ra
itof_ret_sub.6582.7284.14170:
	sra	$a1, $a0, 1
	li	$a2, 0
	bne	$a0, $a2, beq_else.28887
	fmove	$fv, $f0
	jr $ra
beq_else.28887:
	sub	$a0, $a0, $a1
	sub	$a0, $a0, $a1
	li	$a2, 0
	blt	$a2, $a0, bge_else.28888
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fmul	$f1, $f1, $f2
	move	$a0, $a1
	j	itof_ret_sub.6582.7284.14170
bge_else.28888:
	fadd	$f0, $f0, $f1
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fmul	$f1, $f1, $f2
	move	$a0, $a1
	j	itof_ret_sub.6582.7284.14170
itof_big.6566.7268:
	li	$a1, 128
	sll	$a1, $a1, 16
	ori	$a1, $a1, 0
	sub	$a0, $a0, $a1
	li	$v0, 19200
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	fadd	$f0, $f0, $f1
	li	$a1, 128
	sll	$a1, $a1, 16
	ori	$a1, $a1, 0
	blt	$a0, $a1, bge_else.28889
	j	itof_big.6566.7268
bge_else.28889:
	mtc1	$f1, $zero
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fsw	$f0, 0($sp)
	fmove	$f0, $f1
	fmove	$f1, $f2
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	itof_ret_sub.6582.7284.14170
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	fmove	$f0, $fv
	flw	$f1, 0($sp)
	fadd	$fv, $f1, $f0
	jr $ra
itof_ret_sub.6582.7284.14138:
	sra	$a1, $a0, 1
	li	$a2, 0
	bne	$a0, $a2, beq_else.28890
	fmove	$fv, $f0
	jr $ra
beq_else.28890:
	sub	$a0, $a0, $a1
	sub	$a0, $a0, $a1
	li	$a2, 0
	blt	$a2, $a0, bge_else.28891
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fmul	$f1, $f1, $f2
	move	$a0, $a1
	j	itof_ret_sub.6582.7284.14138
bge_else.28891:
	fadd	$f0, $f0, $f1
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fmul	$f1, $f1, $f2
	move	$a0, $a1
	j	itof_ret_sub.6582.7284.14138
itof_ret_sub.6582.7284.14154:
	sra	$a1, $a0, 1
	li	$a2, 0
	bne	$a0, $a2, beq_else.28892
	fmove	$fv, $f0
	jr $ra
beq_else.28892:
	sub	$a0, $a0, $a1
	sub	$a0, $a0, $a1
	li	$a2, 0
	blt	$a2, $a0, bge_else.28893
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fmul	$f1, $f1, $f2
	move	$a0, $a1
	j	itof_ret_sub.6582.7284.14154
bge_else.28893:
	fadd	$f0, $f0, $f1
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fmul	$f1, $f1, $f2
	move	$a0, $a1
	j	itof_ret_sub.6582.7284.14154
itof_ret_sub.6582.7323.14186:
	sra	$a1, $a0, 1
	li	$a2, 0
	bne	$a0, $a2, beq_else.28894
	fmove	$fv, $f0
	jr $ra
beq_else.28894:
	sub	$a0, $a0, $a1
	sub	$a0, $a0, $a1
	li	$a2, 0
	blt	$a2, $a0, bge_else.28895
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fmul	$f1, $f1, $f2
	move	$a0, $a1
	j	itof_ret_sub.6582.7323.14186
bge_else.28895:
	fadd	$f0, $f0, $f1
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fmul	$f1, $f1, $f2
	move	$a0, $a1
	j	itof_ret_sub.6582.7323.14186
itof_ret_sub.6582.7323.14202:
	sra	$a1, $a0, 1
	li	$a2, 0
	bne	$a0, $a2, beq_else.28896
	fmove	$fv, $f0
	jr $ra
beq_else.28896:
	sub	$a0, $a0, $a1
	sub	$a0, $a0, $a1
	li	$a2, 0
	blt	$a2, $a0, bge_else.28897
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fmul	$f1, $f1, $f2
	move	$a0, $a1
	j	itof_ret_sub.6582.7323.14202
bge_else.28897:
	fadd	$f0, $f0, $f1
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fmul	$f1, $f1, $f2
	move	$a0, $a1
	j	itof_ret_sub.6582.7323.14202
calc_dirvecs.3230:
	lw	$a3, 4($a26)
	li	$a4, 0
	blt	$a0, $a4, bge_else.28898
	li	$a4, 0
	blt	$a4, $a0, bge_else.28899
	neg	$a4, $a0
	j	bge_cont.28900
bge_else.28899:
	move	$a4, $a0
bge_cont.28900:
	li	$a5, 0
	blt	$a5, $a0, bge_else.28901
	li	$a5, -1
	j	bge_cont.28902
bge_else.28901:
	li	$a5, 1
bge_cont.28902:
	li	$a6, 1
	sw	$a26, 0($sp)
	sw	$a0, 4($sp)
	fsw	$f0, 8($sp)
	sw	$a2, 16($sp)
	sw	$a1, 20($sp)
	sw	$a3, 24($sp)
	bne	$a5, $a6, bne_else.28903
	li	$a5, 128
	sll	$a5, $a5, 16
	ori	$a5, $a5, 0
	blt	$a5, $a4, bge_else.28905
	mtc1	$f1, $zero
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	move	$a0, $a4
	fmove	$f0, $f1
	fmove	$f1, $f2
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	itof_ret_sub.6582.7323.14202
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	fmove	$f0, $fv
	j	bge_cont.28906
bge_else.28905:
	mtc1	$f1, $zero
	move	$a0, $a4
	fmove	$f0, $f1
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	itof_big.6566.7307
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	fmove	$f0, $fv
bge_cont.28906:
	j	bne_cont.28904
bne_else.28903:
	li	$a5, 128
	sll	$a5, $a5, 16
	ori	$a5, $a5, 0
	blt	$a5, $a4, bge_else.28907
	mtc1	$f1, $zero
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	move	$a0, $a4
	fmove	$f0, $f1
	fmove	$f1, $f2
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	itof_ret_sub.6582.7323.14186
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	fmove	$f0, $fv
	fneg	$f0, $f0
	j	bge_cont.28908
bge_else.28907:
	mtc1	$f1, $zero
	move	$a0, $a4
	fmove	$f0, $f1
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	itof_big.6566.7307
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	fmove	$f0, $fv
	fneg	$f0, $f0
bge_cont.28908:
bne_cont.28904:
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
	lw	$a26, 24($sp)
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	calc_dirvec.3222
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	fmove	$f30, $fv
	li	$a0, 0
	lw	$a1, 4($sp)
	blt	$a0, $a1, bge_else.28909
	neg	$a0, $a1
	j	bge_cont.28910
bge_else.28909:
	move	$a0, $a1
bge_cont.28910:
	li	$a2, 0
	blt	$a2, $a1, bge_else.28911
	li	$a2, -1
	j	bge_cont.28912
bge_else.28911:
	li	$a2, 1
bge_cont.28912:
	li	$a3, 1
	bne	$a2, $a3, bne_else.28913
	li	$a2, 128
	sll	$a2, $a2, 16
	ori	$a2, $a2, 0
	blt	$a2, $a0, bge_else.28915
	mtc1	$f0, $zero
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	itof_ret_sub.6582.7284.14154
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	fmove	$f0, $fv
	j	bge_cont.28916
bge_else.28915:
	mtc1	$f0, $zero
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	itof_big.6566.7268
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	fmove	$f0, $fv
bge_cont.28916:
	j	bne_cont.28914
bne_else.28913:
	li	$a2, 128
	sll	$a2, $a2, 16
	ori	$a2, $a2, 0
	blt	$a2, $a0, bge_else.28917
	mtc1	$f0, $zero
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	itof_ret_sub.6582.7284.14138
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	fmove	$f0, $fv
	fneg	$f0, $f0
	j	bge_cont.28918
bge_else.28917:
	mtc1	$f0, $zero
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	itof_big.6566.7268
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	fmove	$f0, $fv
	fneg	$f0, $f0
bge_cont.28918:
bne_cont.28914:
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
	lw	$a26, 24($sp)
	move	$a1, $a3
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	calc_dirvec.3222
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	fmove	$f30, $fv
	lw	$a0, 4($sp)
	subi	$a0, $a0, 1
	lw	$a1, 20($sp)
	addi	$a1, $a1, 1
	li	$a2, 5
	blt	$a1, $a2, bge_else.28919
	subi	$a1, $a1, 5
	j	bge_cont.28920
bge_else.28919:
bge_cont.28920:
	flw	$f0, 8($sp)
	lw	$a2, 16($sp)
	lw	$a26, 0($sp)
	lw	$a25, 0($a26)
	j	calc_dirvecs.3230
bge_else.28898:
	jr	$ra
itof_ret_sub.6582.7242.14122:
	sra	$a1, $a0, 1
	li	$a2, 0
	bne	$a0, $a2, beq_else.28922
	fmove	$fv, $f0
	jr $ra
beq_else.28922:
	sub	$a0, $a0, $a1
	sub	$a0, $a0, $a1
	li	$a2, 0
	blt	$a2, $a0, bge_else.28923
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fmul	$f1, $f1, $f2
	move	$a0, $a1
	j	itof_ret_sub.6582.7242.14122
bge_else.28923:
	fadd	$f0, $f0, $f1
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fmul	$f1, $f1, $f2
	move	$a0, $a1
	j	itof_ret_sub.6582.7242.14122
itof_big.6566.7226:
	li	$a1, 128
	sll	$a1, $a1, 16
	ori	$a1, $a1, 0
	sub	$a0, $a0, $a1
	li	$v0, 19200
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	fadd	$f0, $f0, $f1
	li	$a1, 128
	sll	$a1, $a1, 16
	ori	$a1, $a1, 0
	blt	$a0, $a1, bge_else.28924
	j	itof_big.6566.7226
bge_else.28924:
	mtc1	$f1, $zero
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fsw	$f0, 0($sp)
	fmove	$f0, $f1
	fmove	$f1, $f2
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	itof_ret_sub.6582.7242.14122
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	fmove	$f0, $fv
	flw	$f1, 0($sp)
	fadd	$fv, $f1, $f0
	jr $ra
itof_ret_sub.6582.7242.14090:
	sra	$a1, $a0, 1
	li	$a2, 0
	bne	$a0, $a2, beq_else.28925
	fmove	$fv, $f0
	jr $ra
beq_else.28925:
	sub	$a0, $a0, $a1
	sub	$a0, $a0, $a1
	li	$a2, 0
	blt	$a2, $a0, bge_else.28926
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fmul	$f1, $f1, $f2
	move	$a0, $a1
	j	itof_ret_sub.6582.7242.14090
bge_else.28926:
	fadd	$f0, $f0, $f1
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fmul	$f1, $f1, $f2
	move	$a0, $a1
	j	itof_ret_sub.6582.7242.14090
itof_ret_sub.6582.7242.14106:
	sra	$a1, $a0, 1
	li	$a2, 0
	bne	$a0, $a2, beq_else.28927
	fmove	$fv, $f0
	jr $ra
beq_else.28927:
	sub	$a0, $a0, $a1
	sub	$a0, $a0, $a1
	li	$a2, 0
	blt	$a2, $a0, bge_else.28928
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fmul	$f1, $f1, $f2
	move	$a0, $a1
	j	itof_ret_sub.6582.7242.14106
bge_else.28928:
	fadd	$f0, $f0, $f1
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fmul	$f1, $f1, $f2
	move	$a0, $a1
	j	itof_ret_sub.6582.7242.14106
calc_dirvec_rows.3235:
	lw	$a3, 4($a26)
	li	$a4, 0
	blt	$a0, $a4, bge_else.28929
	li	$a4, 0
	blt	$a4, $a0, bge_else.28930
	neg	$a4, $a0
	j	bge_cont.28931
bge_else.28930:
	move	$a4, $a0
bge_cont.28931:
	li	$a5, 0
	blt	$a5, $a0, bge_else.28932
	li	$a5, -1
	j	bge_cont.28933
bge_else.28932:
	li	$a5, 1
bge_cont.28933:
	li	$a6, 1
	sw	$a26, 0($sp)
	sw	$a0, 4($sp)
	sw	$a2, 8($sp)
	sw	$a1, 12($sp)
	sw	$a3, 16($sp)
	bne	$a5, $a6, bne_else.28934
	li	$a5, 128
	sll	$a5, $a5, 16
	ori	$a5, $a5, 0
	blt	$a5, $a4, bge_else.28936
	mtc1	$f0, $zero
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	move	$a0, $a4
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	itof_ret_sub.6582.7242.14106
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	fmove	$f0, $fv
	j	bge_cont.28937
bge_else.28936:
	mtc1	$f0, $zero
	move	$a0, $a4
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	itof_big.6566.7226
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	fmove	$f0, $fv
bge_cont.28937:
	j	bne_cont.28935
bne_else.28934:
	li	$a5, 128
	sll	$a5, $a5, 16
	ori	$a5, $a5, 0
	blt	$a5, $a4, bge_else.28938
	mtc1	$f0, $zero
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	move	$a0, $a4
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	itof_ret_sub.6582.7242.14090
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	fmove	$f0, $fv
	fneg	$f0, $f0
	j	bge_cont.28939
bge_else.28938:
	mtc1	$f0, $zero
	move	$a0, $a4
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	itof_big.6566.7226
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	fmove	$f0, $fv
	fneg	$f0, $f0
bge_cont.28939:
bne_cont.28935:
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
	lw	$a1, 12($sp)
	lw	$a2, 8($sp)
	lw	$a26, 16($sp)
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	calc_dirvecs.3230
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	fmove	$f30, $fv
	lw	$a0, 4($sp)
	subi	$a0, $a0, 1
	lw	$a1, 12($sp)
	addi	$a1, $a1, 2
	li	$a2, 5
	blt	$a1, $a2, bge_else.28940
	subi	$a1, $a1, 5
	j	bge_cont.28941
bge_else.28940:
bge_cont.28941:
	lw	$a2, 8($sp)
	addi	$a2, $a2, 4
	lw	$a26, 0($sp)
	lw	$a25, 0($a26)
	j	calc_dirvec_rows.3235
bge_else.28929:
	jr	$ra
create_dirvec_elements.3241:
	li	$a2, 0
	blt	$a1, $a2, bge_else.28943
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
	j	create_dirvec_elements.3241
bge_else.28943:
	jr	$ra
create_dirvecs.3244:
	li	$a1, 0
	blt	$a0, $a1, bge_else.28945
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
	jal	create_dirvec_elements.3241
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	fmove	$f30, $fv
	lw	$a0, 4($sp)
	subi	$a0, $a0, 1
	j	create_dirvecs.3244
bge_else.28945:
	jr	$ra
init_dirvec_constants.3246:
	li	$a2, 0
	blt	$a1, $a2, bge_else.28947
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
	jal	iter_setup_dirvec_constants.3028
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	fmove	$f30, $fv
	lw	$a0, 4($sp)
	subi	$a1, $a0, 1
	lw	$a0, 0($sp)
	j	init_dirvec_constants.3246
bge_else.28947:
	jr	$ra
init_vecset_constants.3249:
	li	$a1, 0
	blt	$a0, $a1, bge_else.28949
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
	jal	init_dirvec_constants.3246
	subi	$sp, $sp, 8
	lw	$ra, 4($sp)
	fmove	$f30, $fv
	lw	$a0, 0($sp)
	subi	$a0, $a0, 1
	j	init_vecset_constants.3249
bge_else.28949:
	jr	$ra
itof_ret_sub.6582.12799.13868:
	lw	$a1, 4($a26)
	sra	$a2, $a0, 1
	bne	$a0, $a1, beq_else.28951
	fmove	$fv, $f0
	jr $ra
beq_else.28951:
	sub	$a0, $a0, $a2
	sub	$a0, $a0, $a2
	li	$a1, 0
	blt	$a1, $a0, bge_else.28952
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fmul	$f1, $f1, $f2
	move	$a0, $a2
	lw	$a25, 0($a26)
	j	itof_ret_sub.6582.12799.13868
bge_else.28952:
	fadd	$f0, $f0, $f1
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fmul	$f1, $f1, $f2
	move	$a0, $a2
	lw	$a25, 0($a26)
	j	itof_ret_sub.6582.12799.13868
itof_ret_sub.6582.7753.13492.20800:
	lw	$a1, 4($a26)
	sra	$a2, $a0, 1
	bne	$a0, $a1, beq_else.28953
	fmove	$fv, $f0
	jr $ra
beq_else.28953:
	sub	$a0, $a0, $a2
	sub	$a0, $a0, $a2
	li	$a1, 0
	blt	$a1, $a0, bge_else.28954
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fmul	$f1, $f1, $f2
	move	$a0, $a2
	lw	$a25, 0($a26)
	j	itof_ret_sub.6582.7753.13492.20800
bge_else.28954:
	fadd	$f0, $f0, $f1
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fmul	$f1, $f1, $f2
	move	$a0, $a2
	lw	$a25, 0($a26)
	j	itof_ret_sub.6582.7753.13492.20800
itof_big.6566.7737.13457:
	lw	$a1, 4($a26)
	li	$a2, 128
	sll	$a2, $a2, 16
	ori	$a2, $a2, 0
	sub	$a0, $a0, $a2
	li	$v0, 19200
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	fadd	$f0, $f0, $f1
	blt	$a0, $a2, bge_else.28955
	lw	$a25, 0($a26)
	j	itof_big.6566.7737.13457
bge_else.28955:
	move	$a26, $fp
	addi	$fp, $fp, 8
	sw	$a2, 0($a26)
	sw	$a1, 4($a26)
	mtc1	$f1, $zero
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fsw	$f0, 0($sp)
	fmove	$f0, $f1
	fmove	$f1, $f2
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	itof_ret_sub.6582.7753.13492.20800
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	fmove	$f0, $fv
	flw	$f1, 0($sp)
	fadd	$fv, $f1, $f0
	jr $ra
itof_ret_sub.6582.7753.13492.20770:
	lw	$a1, 4($a26)
	sra	$a2, $a0, 1
	bne	$a0, $a1, beq_else.28956
	fmove	$fv, $f0
	jr $ra
beq_else.28956:
	sub	$a0, $a0, $a2
	sub	$a0, $a0, $a2
	li	$a1, 0
	blt	$a1, $a0, bge_else.28957
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fmul	$f1, $f1, $f2
	move	$a0, $a2
	lw	$a25, 0($a26)
	j	itof_ret_sub.6582.7753.13492.20770
bge_else.28957:
	fadd	$f0, $f0, $f1
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fmul	$f1, $f1, $f2
	move	$a0, $a2
	lw	$a25, 0($a26)
	j	itof_ret_sub.6582.7753.13492.20770
itof_ret_sub.6582.7753.13492.20785:
	lw	$a1, 4($a26)
	sra	$a2, $a0, 1
	bne	$a0, $a1, beq_else.28958
	fmove	$fv, $f0
	jr $ra
beq_else.28958:
	sub	$a0, $a0, $a2
	sub	$a0, $a0, $a2
	li	$a1, 0
	blt	$a1, $a0, bge_else.28959
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fmul	$f1, $f1, $f2
	move	$a0, $a2
	lw	$a25, 0($a26)
	j	itof_ret_sub.6582.7753.13492.20785
bge_else.28959:
	fadd	$f0, $f0, $f1
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fmul	$f1, $f1, $f2
	move	$a0, $a2
	lw	$a25, 0($a26)
	j	itof_ret_sub.6582.7753.13492.20785
exit:
	hlt
_min_caml_start2: # main entry point
   # main program start
	li	$v0, 16457
	sll	$v0, $v0, 16
	ori	$v0, $v0, 4059
	mtc1	$f0, $v0
	li	$v0, 16585
	sll	$v0, $v0, 16
	ori	$v0, $v0, 4059
	mtc1	$f1, $v0
	move	$a0, $fp
	addi	$fp, $fp, 16
	sw	$a1, 0($a0)
	fsw	$f1, 8($a0)
	move	$a1, $fp
	addi	$fp, $fp, 16
	sw	$a2, 0($a1)
	sw	$a0, 12($a1)
	fsw	$f0, 8($a1)
	move	$a2, $fp
	addi	$fp, $fp, 16
	sw	$a3, 0($a2)
	sw	$a0, 12($a2)
	fsw	$f0, 8($a2)
	move	$a3, $fp
	addi	$fp, $fp, 16
	sw	$a4, 0($a3)
	sw	$a0, 12($a3)
	fsw	$f0, 8($a3)
	move	$a4, $fp
	addi	$fp, $fp, 8
	sw	$a5, 0($a4)
	sw	$a3, 4($a4)
	move	$a3, $fp
	addi	$fp, $fp, 16
	sw	$a5, 0($a3)
	sw	$a0, 12($a3)
	fsw	$f0, 8($a3)
	move	$a5, $fp
	addi	$fp, $fp, 8
	sw	$a6, 0($a5)
	sw	$a3, 4($a5)
	move	$a6, $fp
	addi	$fp, $fp, 8
	sw	$a7, 0($a6)
	sw	$a3, 4($a6)
	move	$a3, $fp
	addi	$fp, $fp, 8
	sw	$a7, 0($a3)
	sw	$a6, 4($a3)
	move	$a7, $fp
	addi	$fp, $fp, 8
	sw	$a8, 0($a7)
	sw	$a3, 4($a7)
	move	$a8, $fp
	addi	$fp, $fp, 8
	sw	$a9, 0($a8)
	sw	$a6, 4($a8)
	move	$a6, $fp
	addi	$fp, $fp, 16
	sw	$a9, 0($a6)
	sw	$a5, 8($a6)
	sw	$a8, 4($a6)
	move	$a5, $fp
	addi	$fp, $fp, 16
	sw	$a8, 0($a5)
	sw	$a7, 8($a5)
	sw	$a3, 4($a5)
	move	$a3, $fp
	addi	$fp, $fp, 16
	sw	$a7, 0($a3)
	sw	$a5, 8($a3)
	sw	$a6, 4($a3)
	move	$a5, $fp
	addi	$fp, $fp, 16
	sw	$a7, 0($a5)
	sw	$a0, 12($a5)
	fsw	$f0, 8($a5)
	move	$a0, $fp
	addi	$fp, $fp, 8
	sw	$a7, 0($a0)
	sw	$a5, 4($a0)
	move	$a5, $fp
	addi	$fp, $fp, 8
	sw	$a7, 0($a5)
	sw	$a0, 4($a5)
	li	$a0, 128
	li	$a7, 616
	li	$a8, 0
	sw	$a0, 0($a7)
	sw	$a0, 4($a7)
	li	$a9, 624
	li	$a10, 64
	sw	$a10, 0($a9)
	sw	$a10, 4($a9)
	li	$a9, 632
	move	$a26, $fp
	addi	$fp, $fp, 8
	sw	$a10, 0($a26)
	sw	$a8, 4($a26)
	mtc1	$f0, $zero
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	sw	$a3, 0($sp)
	sw	$a6, 4($sp)
	sw	$a5, 8($sp)
	sw	$a4, 12($sp)
	sw	$a1, 16($sp)
	sw	$a2, 20($sp)
	sw	$a7, 24($sp)
	sw	$a9, 28($sp)
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	itof_ret_sub.6582.12799.13868
	subi	$sp, $sp, 40
	lw	$ra, 36($sp)
	fmove	$f0, $fv
	finv	$f0, $f0
	li	$v0, 17152
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	fmul	$f0, $f1, $f0
	lw	$a0, 28($sp)
	fsw	$f0, 0($a0)
	lw	$a0, 24($sp)
	lw	$a1, 0($a0)
	li	$a2, 3
	mtc1	$f0, $zero
	sw	$a1, 32($sp)
	fsw	$f0, 40($sp)
	sw	$a2, 48($sp)
	move	$a0, $a2
	sw	$ra, 52($sp)
	addi	$sp, $sp, 56
	jal	min_caml_create_float_array
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
	move	$a1, $v0
	li	$a0, 5
	sw	$a0, 56($sp)
	sw	$ra, 60($sp)
	addi	$sp, $sp, 64
	jal	min_caml_create_array
	subi	$sp, $sp, 64
	lw	$ra, 60($sp)
	move	$a0, $v0
	li	$a1, 1
	flw	$f0, 40($sp)
	lw	$a2, 48($sp)
	sw	$a1, 60($sp)
	sw	$a0, 64($sp)
	move	$a0, $a2
	sw	$ra, 68($sp)
	addi	$sp, $sp, 72
	jal	min_caml_create_float_array
	subi	$sp, $sp, 72
	lw	$ra, 68($sp)
	move	$a0, $v0
	lw	$a1, 64($sp)
	sw	$a0, 4($a1)
	flw	$f0, 40($sp)
	lw	$a0, 48($sp)
	sw	$ra, 68($sp)
	addi	$sp, $sp, 72
	jal	min_caml_create_float_array
	subi	$sp, $sp, 72
	lw	$ra, 68($sp)
	move	$a0, $v0
	lw	$a1, 64($sp)
	sw	$a0, 8($a1)
	flw	$f0, 40($sp)
	lw	$a0, 48($sp)
	sw	$ra, 68($sp)
	addi	$sp, $sp, 72
	jal	min_caml_create_float_array
	subi	$sp, $sp, 72
	lw	$ra, 68($sp)
	move	$a0, $v0
	lw	$a1, 64($sp)
	sw	$a0, 12($a1)
	flw	$f0, 40($sp)
	lw	$a0, 48($sp)
	sw	$ra, 68($sp)
	addi	$sp, $sp, 72
	jal	min_caml_create_float_array
	subi	$sp, $sp, 72
	lw	$ra, 68($sp)
	move	$a0, $v0
	lw	$a1, 64($sp)
	sw	$a0, 16($a1)
	li	$a0, 0
	lw	$a2, 56($sp)
	sw	$a0, 68($sp)
	move	$a1, $a0
	move	$a0, $a2
	sw	$ra, 76($sp)
	addi	$sp, $sp, 80
	jal	min_caml_create_array
	subi	$sp, $sp, 80
	lw	$ra, 76($sp)
	move	$a0, $v0
	lw	$a1, 56($sp)
	lw	$a2, 68($sp)
	sw	$a0, 72($sp)
	move	$a0, $a1
	move	$a1, $a2
	sw	$ra, 76($sp)
	addi	$sp, $sp, 80
	jal	min_caml_create_array
	subi	$sp, $sp, 80
	lw	$ra, 76($sp)
	move	$a0, $v0
	flw	$f0, 40($sp)
	lw	$a1, 48($sp)
	sw	$a0, 76($sp)
	move	$a0, $a1
	sw	$ra, 84($sp)
	addi	$sp, $sp, 88
	jal	min_caml_create_float_array
	subi	$sp, $sp, 88
	lw	$ra, 84($sp)
	move	$a1, $v0
	lw	$a0, 56($sp)
	sw	$ra, 84($sp)
	addi	$sp, $sp, 88
	jal	min_caml_create_array
	subi	$sp, $sp, 88
	lw	$ra, 84($sp)
	move	$a0, $v0
	flw	$f0, 40($sp)
	lw	$a1, 48($sp)
	sw	$a0, 80($sp)
	move	$a0, $a1
	sw	$ra, 84($sp)
	addi	$sp, $sp, 88
	jal	min_caml_create_float_array
	subi	$sp, $sp, 88
	lw	$ra, 84($sp)
	move	$a0, $v0
	lw	$a1, 80($sp)
	sw	$a0, 4($a1)
	flw	$f0, 40($sp)
	lw	$a0, 48($sp)
	sw	$ra, 84($sp)
	addi	$sp, $sp, 88
	jal	min_caml_create_float_array
	subi	$sp, $sp, 88
	lw	$ra, 84($sp)
	move	$a0, $v0
	lw	$a1, 80($sp)
	sw	$a0, 8($a1)
	flw	$f0, 40($sp)
	lw	$a0, 48($sp)
	sw	$ra, 84($sp)
	addi	$sp, $sp, 88
	jal	min_caml_create_float_array
	subi	$sp, $sp, 88
	lw	$ra, 84($sp)
	move	$a0, $v0
	lw	$a1, 80($sp)
	sw	$a0, 12($a1)
	flw	$f0, 40($sp)
	lw	$a0, 48($sp)
	sw	$ra, 84($sp)
	addi	$sp, $sp, 88
	jal	min_caml_create_float_array
	subi	$sp, $sp, 88
	lw	$ra, 84($sp)
	move	$a0, $v0
	lw	$a1, 80($sp)
	sw	$a0, 16($a1)
	flw	$f0, 40($sp)
	lw	$a0, 48($sp)
	sw	$ra, 84($sp)
	addi	$sp, $sp, 88
	jal	min_caml_create_float_array
	subi	$sp, $sp, 88
	lw	$ra, 84($sp)
	move	$a1, $v0
	lw	$a0, 56($sp)
	sw	$ra, 84($sp)
	addi	$sp, $sp, 88
	jal	min_caml_create_array
	subi	$sp, $sp, 88
	lw	$ra, 84($sp)
	move	$a0, $v0
	flw	$f0, 40($sp)
	lw	$a1, 48($sp)
	sw	$a0, 84($sp)
	move	$a0, $a1
	sw	$ra, 92($sp)
	addi	$sp, $sp, 96
	jal	min_caml_create_float_array
	subi	$sp, $sp, 96
	lw	$ra, 92($sp)
	move	$a0, $v0
	lw	$a1, 84($sp)
	sw	$a0, 4($a1)
	flw	$f0, 40($sp)
	lw	$a0, 48($sp)
	sw	$ra, 92($sp)
	addi	$sp, $sp, 96
	jal	min_caml_create_float_array
	subi	$sp, $sp, 96
	lw	$ra, 92($sp)
	move	$a0, $v0
	lw	$a1, 84($sp)
	sw	$a0, 8($a1)
	flw	$f0, 40($sp)
	lw	$a0, 48($sp)
	sw	$ra, 92($sp)
	addi	$sp, $sp, 96
	jal	min_caml_create_float_array
	subi	$sp, $sp, 96
	lw	$ra, 92($sp)
	move	$a0, $v0
	lw	$a1, 84($sp)
	sw	$a0, 12($a1)
	flw	$f0, 40($sp)
	lw	$a0, 48($sp)
	sw	$ra, 92($sp)
	addi	$sp, $sp, 96
	jal	min_caml_create_float_array
	subi	$sp, $sp, 96
	lw	$ra, 92($sp)
	move	$a0, $v0
	lw	$a1, 84($sp)
	sw	$a0, 16($a1)
	lw	$a0, 60($sp)
	lw	$a2, 68($sp)
	move	$a1, $a2
	sw	$ra, 92($sp)
	addi	$sp, $sp, 96
	jal	min_caml_create_array
	subi	$sp, $sp, 96
	lw	$ra, 92($sp)
	move	$a0, $v0
	flw	$f0, 40($sp)
	lw	$a1, 48($sp)
	sw	$a0, 88($sp)
	move	$a0, $a1
	sw	$ra, 92($sp)
	addi	$sp, $sp, 96
	jal	min_caml_create_float_array
	subi	$sp, $sp, 96
	lw	$ra, 92($sp)
	move	$a1, $v0
	lw	$a0, 56($sp)
	sw	$ra, 92($sp)
	addi	$sp, $sp, 96
	jal	min_caml_create_array
	subi	$sp, $sp, 96
	lw	$ra, 92($sp)
	move	$a0, $v0
	flw	$f0, 40($sp)
	lw	$a1, 48($sp)
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
	flw	$f0, 40($sp)
	lw	$a0, 48($sp)
	sw	$ra, 100($sp)
	addi	$sp, $sp, 104
	jal	min_caml_create_float_array
	subi	$sp, $sp, 104
	lw	$ra, 100($sp)
	move	$a0, $v0
	lw	$a1, 92($sp)
	sw	$a0, 8($a1)
	flw	$f0, 40($sp)
	lw	$a0, 48($sp)
	sw	$ra, 100($sp)
	addi	$sp, $sp, 104
	jal	min_caml_create_float_array
	subi	$sp, $sp, 104
	lw	$ra, 100($sp)
	move	$a0, $v0
	lw	$a1, 92($sp)
	sw	$a0, 12($a1)
	flw	$f0, 40($sp)
	lw	$a0, 48($sp)
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
	lw	$a1, 88($sp)
	sw	$a1, 24($a0)
	lw	$a1, 84($sp)
	sw	$a1, 20($a0)
	lw	$a1, 80($sp)
	sw	$a1, 16($a0)
	lw	$a1, 76($sp)
	sw	$a1, 12($a0)
	lw	$a1, 72($sp)
	sw	$a1, 8($a0)
	lw	$a1, 64($sp)
	sw	$a1, 4($a0)
	lw	$a1, 52($sp)
	sw	$a1, 0($a0)
	move	$a1, $a0
	lw	$a0, 32($sp)
	sw	$ra, 100($sp)
	addi	$sp, $sp, 104
	jal	min_caml_create_array
	subi	$sp, $sp, 104
	lw	$ra, 100($sp)
	move	$a0, $v0
	lw	$a1, 24($sp)
	lw	$a2, 0($a1)
	subi	$a2, $a2, 2
	move	$a1, $a2
	sw	$ra, 100($sp)
	addi	$sp, $sp, 104
	jal	init_line_elements.3212
	subi	$sp, $sp, 104
	lw	$ra, 100($sp)
	move	$a0, $v0
	lw	$a1, 24($sp)
	lw	$a2, 0($a1)
	li	$a3, 3
	mtc1	$f0, $zero
	sw	$a0, 96($sp)
	sw	$a2, 100($sp)
	fsw	$f0, 104($sp)
	sw	$a3, 112($sp)
	move	$a0, $a3
	sw	$ra, 116($sp)
	addi	$sp, $sp, 120
	jal	min_caml_create_float_array
	subi	$sp, $sp, 120
	lw	$ra, 116($sp)
	move	$a0, $v0
	flw	$f0, 104($sp)
	lw	$a1, 112($sp)
	sw	$a0, 116($sp)
	move	$a0, $a1
	sw	$ra, 124($sp)
	addi	$sp, $sp, 128
	jal	min_caml_create_float_array
	subi	$sp, $sp, 128
	lw	$ra, 124($sp)
	move	$a1, $v0
	li	$a0, 5
	sw	$a0, 120($sp)
	sw	$ra, 124($sp)
	addi	$sp, $sp, 128
	jal	min_caml_create_array
	subi	$sp, $sp, 128
	lw	$ra, 124($sp)
	move	$a0, $v0
	li	$a1, 1
	flw	$f0, 104($sp)
	lw	$a2, 112($sp)
	sw	$a1, 124($sp)
	sw	$a0, 128($sp)
	move	$a0, $a2
	sw	$ra, 132($sp)
	addi	$sp, $sp, 136
	jal	min_caml_create_float_array
	subi	$sp, $sp, 136
	lw	$ra, 132($sp)
	move	$a0, $v0
	lw	$a1, 128($sp)
	sw	$a0, 4($a1)
	flw	$f0, 104($sp)
	lw	$a0, 112($sp)
	sw	$ra, 132($sp)
	addi	$sp, $sp, 136
	jal	min_caml_create_float_array
	subi	$sp, $sp, 136
	lw	$ra, 132($sp)
	move	$a0, $v0
	lw	$a1, 128($sp)
	sw	$a0, 8($a1)
	flw	$f0, 104($sp)
	lw	$a0, 112($sp)
	sw	$ra, 132($sp)
	addi	$sp, $sp, 136
	jal	min_caml_create_float_array
	subi	$sp, $sp, 136
	lw	$ra, 132($sp)
	move	$a0, $v0
	lw	$a1, 128($sp)
	sw	$a0, 12($a1)
	flw	$f0, 104($sp)
	lw	$a0, 112($sp)
	sw	$ra, 132($sp)
	addi	$sp, $sp, 136
	jal	min_caml_create_float_array
	subi	$sp, $sp, 136
	lw	$ra, 132($sp)
	move	$a0, $v0
	lw	$a1, 128($sp)
	sw	$a0, 16($a1)
	li	$a0, 0
	lw	$a2, 120($sp)
	sw	$a0, 132($sp)
	move	$a1, $a0
	move	$a0, $a2
	sw	$ra, 140($sp)
	addi	$sp, $sp, 144
	jal	min_caml_create_array
	subi	$sp, $sp, 144
	lw	$ra, 140($sp)
	move	$a0, $v0
	lw	$a1, 120($sp)
	lw	$a2, 132($sp)
	sw	$a0, 136($sp)
	move	$a0, $a1
	move	$a1, $a2
	sw	$ra, 140($sp)
	addi	$sp, $sp, 144
	jal	min_caml_create_array
	subi	$sp, $sp, 144
	lw	$ra, 140($sp)
	move	$a0, $v0
	flw	$f0, 104($sp)
	lw	$a1, 112($sp)
	sw	$a0, 140($sp)
	move	$a0, $a1
	sw	$ra, 148($sp)
	addi	$sp, $sp, 152
	jal	min_caml_create_float_array
	subi	$sp, $sp, 152
	lw	$ra, 148($sp)
	move	$a1, $v0
	lw	$a0, 120($sp)
	sw	$ra, 148($sp)
	addi	$sp, $sp, 152
	jal	min_caml_create_array
	subi	$sp, $sp, 152
	lw	$ra, 148($sp)
	move	$a0, $v0
	flw	$f0, 104($sp)
	lw	$a1, 112($sp)
	sw	$a0, 144($sp)
	move	$a0, $a1
	sw	$ra, 148($sp)
	addi	$sp, $sp, 152
	jal	min_caml_create_float_array
	subi	$sp, $sp, 152
	lw	$ra, 148($sp)
	move	$a0, $v0
	lw	$a1, 144($sp)
	sw	$a0, 4($a1)
	flw	$f0, 104($sp)
	lw	$a0, 112($sp)
	sw	$ra, 148($sp)
	addi	$sp, $sp, 152
	jal	min_caml_create_float_array
	subi	$sp, $sp, 152
	lw	$ra, 148($sp)
	move	$a0, $v0
	lw	$a1, 144($sp)
	sw	$a0, 8($a1)
	flw	$f0, 104($sp)
	lw	$a0, 112($sp)
	sw	$ra, 148($sp)
	addi	$sp, $sp, 152
	jal	min_caml_create_float_array
	subi	$sp, $sp, 152
	lw	$ra, 148($sp)
	move	$a0, $v0
	lw	$a1, 144($sp)
	sw	$a0, 12($a1)
	flw	$f0, 104($sp)
	lw	$a0, 112($sp)
	sw	$ra, 148($sp)
	addi	$sp, $sp, 152
	jal	min_caml_create_float_array
	subi	$sp, $sp, 152
	lw	$ra, 148($sp)
	move	$a0, $v0
	lw	$a1, 144($sp)
	sw	$a0, 16($a1)
	flw	$f0, 104($sp)
	lw	$a0, 112($sp)
	sw	$ra, 148($sp)
	addi	$sp, $sp, 152
	jal	min_caml_create_float_array
	subi	$sp, $sp, 152
	lw	$ra, 148($sp)
	move	$a1, $v0
	lw	$a0, 120($sp)
	sw	$ra, 148($sp)
	addi	$sp, $sp, 152
	jal	min_caml_create_array
	subi	$sp, $sp, 152
	lw	$ra, 148($sp)
	move	$a0, $v0
	flw	$f0, 104($sp)
	lw	$a1, 112($sp)
	sw	$a0, 148($sp)
	move	$a0, $a1
	sw	$ra, 156($sp)
	addi	$sp, $sp, 160
	jal	min_caml_create_float_array
	subi	$sp, $sp, 160
	lw	$ra, 156($sp)
	move	$a0, $v0
	lw	$a1, 148($sp)
	sw	$a0, 4($a1)
	flw	$f0, 104($sp)
	lw	$a0, 112($sp)
	sw	$ra, 156($sp)
	addi	$sp, $sp, 160
	jal	min_caml_create_float_array
	subi	$sp, $sp, 160
	lw	$ra, 156($sp)
	move	$a0, $v0
	lw	$a1, 148($sp)
	sw	$a0, 8($a1)
	flw	$f0, 104($sp)
	lw	$a0, 112($sp)
	sw	$ra, 156($sp)
	addi	$sp, $sp, 160
	jal	min_caml_create_float_array
	subi	$sp, $sp, 160
	lw	$ra, 156($sp)
	move	$a0, $v0
	lw	$a1, 148($sp)
	sw	$a0, 12($a1)
	flw	$f0, 104($sp)
	lw	$a0, 112($sp)
	sw	$ra, 156($sp)
	addi	$sp, $sp, 160
	jal	min_caml_create_float_array
	subi	$sp, $sp, 160
	lw	$ra, 156($sp)
	move	$a0, $v0
	lw	$a1, 148($sp)
	sw	$a0, 16($a1)
	lw	$a0, 124($sp)
	lw	$a2, 132($sp)
	move	$a1, $a2
	sw	$ra, 156($sp)
	addi	$sp, $sp, 160
	jal	min_caml_create_array
	subi	$sp, $sp, 160
	lw	$ra, 156($sp)
	move	$a0, $v0
	flw	$f0, 104($sp)
	lw	$a1, 112($sp)
	sw	$a0, 152($sp)
	move	$a0, $a1
	sw	$ra, 156($sp)
	addi	$sp, $sp, 160
	jal	min_caml_create_float_array
	subi	$sp, $sp, 160
	lw	$ra, 156($sp)
	move	$a1, $v0
	lw	$a0, 120($sp)
	sw	$ra, 156($sp)
	addi	$sp, $sp, 160
	jal	min_caml_create_array
	subi	$sp, $sp, 160
	lw	$ra, 156($sp)
	move	$a0, $v0
	flw	$f0, 104($sp)
	lw	$a1, 112($sp)
	sw	$a0, 156($sp)
	move	$a0, $a1
	sw	$ra, 164($sp)
	addi	$sp, $sp, 168
	jal	min_caml_create_float_array
	subi	$sp, $sp, 168
	lw	$ra, 164($sp)
	move	$a0, $v0
	lw	$a1, 156($sp)
	sw	$a0, 4($a1)
	flw	$f0, 104($sp)
	lw	$a0, 112($sp)
	sw	$ra, 164($sp)
	addi	$sp, $sp, 168
	jal	min_caml_create_float_array
	subi	$sp, $sp, 168
	lw	$ra, 164($sp)
	move	$a0, $v0
	lw	$a1, 156($sp)
	sw	$a0, 8($a1)
	flw	$f0, 104($sp)
	lw	$a0, 112($sp)
	sw	$ra, 164($sp)
	addi	$sp, $sp, 168
	jal	min_caml_create_float_array
	subi	$sp, $sp, 168
	lw	$ra, 164($sp)
	move	$a0, $v0
	lw	$a1, 156($sp)
	sw	$a0, 12($a1)
	flw	$f0, 104($sp)
	lw	$a0, 112($sp)
	sw	$ra, 164($sp)
	addi	$sp, $sp, 168
	jal	min_caml_create_float_array
	subi	$sp, $sp, 168
	lw	$ra, 164($sp)
	move	$a0, $v0
	lw	$a1, 156($sp)
	sw	$a0, 16($a1)
	move	$a0, $fp
	addi	$fp, $fp, 32
	sw	$a1, 28($a0)
	lw	$a1, 152($sp)
	sw	$a1, 24($a0)
	lw	$a1, 148($sp)
	sw	$a1, 20($a0)
	lw	$a1, 144($sp)
	sw	$a1, 16($a0)
	lw	$a1, 140($sp)
	sw	$a1, 12($a0)
	lw	$a1, 136($sp)
	sw	$a1, 8($a0)
	lw	$a1, 128($sp)
	sw	$a1, 4($a0)
	lw	$a1, 116($sp)
	sw	$a1, 0($a0)
	move	$a1, $a0
	lw	$a0, 100($sp)
	sw	$ra, 164($sp)
	addi	$sp, $sp, 168
	jal	min_caml_create_array
	subi	$sp, $sp, 168
	lw	$ra, 164($sp)
	move	$a0, $v0
	lw	$a1, 24($sp)
	lw	$a2, 0($a1)
	subi	$a2, $a2, 2
	move	$a1, $a2
	sw	$ra, 164($sp)
	addi	$sp, $sp, 168
	jal	init_line_elements.3212
	subi	$sp, $sp, 168
	lw	$ra, 164($sp)
	move	$a0, $v0
	lw	$a1, 24($sp)
	lw	$a2, 0($a1)
	li	$a3, 3
	mtc1	$f0, $zero
	sw	$a0, 160($sp)
	sw	$a2, 164($sp)
	fsw	$f0, 168($sp)
	sw	$a3, 176($sp)
	move	$a0, $a3
	sw	$ra, 180($sp)
	addi	$sp, $sp, 184
	jal	min_caml_create_float_array
	subi	$sp, $sp, 184
	lw	$ra, 180($sp)
	move	$a0, $v0
	flw	$f0, 168($sp)
	lw	$a1, 176($sp)
	sw	$a0, 180($sp)
	move	$a0, $a1
	sw	$ra, 188($sp)
	addi	$sp, $sp, 192
	jal	min_caml_create_float_array
	subi	$sp, $sp, 192
	lw	$ra, 188($sp)
	move	$a1, $v0
	li	$a0, 5
	sw	$a0, 184($sp)
	sw	$ra, 188($sp)
	addi	$sp, $sp, 192
	jal	min_caml_create_array
	subi	$sp, $sp, 192
	lw	$ra, 188($sp)
	move	$a0, $v0
	li	$a1, 1
	flw	$f0, 168($sp)
	lw	$a2, 176($sp)
	sw	$a1, 188($sp)
	sw	$a0, 192($sp)
	move	$a0, $a2
	sw	$ra, 196($sp)
	addi	$sp, $sp, 200
	jal	min_caml_create_float_array
	subi	$sp, $sp, 200
	lw	$ra, 196($sp)
	move	$a0, $v0
	lw	$a1, 192($sp)
	sw	$a0, 4($a1)
	flw	$f0, 168($sp)
	lw	$a0, 176($sp)
	sw	$ra, 196($sp)
	addi	$sp, $sp, 200
	jal	min_caml_create_float_array
	subi	$sp, $sp, 200
	lw	$ra, 196($sp)
	move	$a0, $v0
	lw	$a1, 192($sp)
	sw	$a0, 8($a1)
	flw	$f0, 168($sp)
	lw	$a0, 176($sp)
	sw	$ra, 196($sp)
	addi	$sp, $sp, 200
	jal	min_caml_create_float_array
	subi	$sp, $sp, 200
	lw	$ra, 196($sp)
	move	$a0, $v0
	lw	$a1, 192($sp)
	sw	$a0, 12($a1)
	flw	$f0, 168($sp)
	lw	$a0, 176($sp)
	sw	$ra, 196($sp)
	addi	$sp, $sp, 200
	jal	min_caml_create_float_array
	subi	$sp, $sp, 200
	lw	$ra, 196($sp)
	move	$a0, $v0
	lw	$a1, 192($sp)
	sw	$a0, 16($a1)
	li	$a0, 0
	lw	$a2, 184($sp)
	sw	$a0, 196($sp)
	move	$a1, $a0
	move	$a0, $a2
	sw	$ra, 204($sp)
	addi	$sp, $sp, 208
	jal	min_caml_create_array
	subi	$sp, $sp, 208
	lw	$ra, 204($sp)
	move	$a0, $v0
	lw	$a1, 184($sp)
	lw	$a2, 196($sp)
	sw	$a0, 200($sp)
	move	$a0, $a1
	move	$a1, $a2
	sw	$ra, 204($sp)
	addi	$sp, $sp, 208
	jal	min_caml_create_array
	subi	$sp, $sp, 208
	lw	$ra, 204($sp)
	move	$a0, $v0
	flw	$f0, 168($sp)
	lw	$a1, 176($sp)
	sw	$a0, 204($sp)
	move	$a0, $a1
	sw	$ra, 212($sp)
	addi	$sp, $sp, 216
	jal	min_caml_create_float_array
	subi	$sp, $sp, 216
	lw	$ra, 212($sp)
	move	$a1, $v0
	lw	$a0, 184($sp)
	sw	$ra, 212($sp)
	addi	$sp, $sp, 216
	jal	min_caml_create_array
	subi	$sp, $sp, 216
	lw	$ra, 212($sp)
	move	$a0, $v0
	flw	$f0, 168($sp)
	lw	$a1, 176($sp)
	sw	$a0, 208($sp)
	move	$a0, $a1
	sw	$ra, 212($sp)
	addi	$sp, $sp, 216
	jal	min_caml_create_float_array
	subi	$sp, $sp, 216
	lw	$ra, 212($sp)
	move	$a0, $v0
	lw	$a1, 208($sp)
	sw	$a0, 4($a1)
	flw	$f0, 168($sp)
	lw	$a0, 176($sp)
	sw	$ra, 212($sp)
	addi	$sp, $sp, 216
	jal	min_caml_create_float_array
	subi	$sp, $sp, 216
	lw	$ra, 212($sp)
	move	$a0, $v0
	lw	$a1, 208($sp)
	sw	$a0, 8($a1)
	flw	$f0, 168($sp)
	lw	$a0, 176($sp)
	sw	$ra, 212($sp)
	addi	$sp, $sp, 216
	jal	min_caml_create_float_array
	subi	$sp, $sp, 216
	lw	$ra, 212($sp)
	move	$a0, $v0
	lw	$a1, 208($sp)
	sw	$a0, 12($a1)
	flw	$f0, 168($sp)
	lw	$a0, 176($sp)
	sw	$ra, 212($sp)
	addi	$sp, $sp, 216
	jal	min_caml_create_float_array
	subi	$sp, $sp, 216
	lw	$ra, 212($sp)
	move	$a0, $v0
	lw	$a1, 208($sp)
	sw	$a0, 16($a1)
	flw	$f0, 168($sp)
	lw	$a0, 176($sp)
	sw	$ra, 212($sp)
	addi	$sp, $sp, 216
	jal	min_caml_create_float_array
	subi	$sp, $sp, 216
	lw	$ra, 212($sp)
	move	$a1, $v0
	lw	$a0, 184($sp)
	sw	$ra, 212($sp)
	addi	$sp, $sp, 216
	jal	min_caml_create_array
	subi	$sp, $sp, 216
	lw	$ra, 212($sp)
	move	$a0, $v0
	flw	$f0, 168($sp)
	lw	$a1, 176($sp)
	sw	$a0, 212($sp)
	move	$a0, $a1
	sw	$ra, 220($sp)
	addi	$sp, $sp, 224
	jal	min_caml_create_float_array
	subi	$sp, $sp, 224
	lw	$ra, 220($sp)
	move	$a0, $v0
	lw	$a1, 212($sp)
	sw	$a0, 4($a1)
	flw	$f0, 168($sp)
	lw	$a0, 176($sp)
	sw	$ra, 220($sp)
	addi	$sp, $sp, 224
	jal	min_caml_create_float_array
	subi	$sp, $sp, 224
	lw	$ra, 220($sp)
	move	$a0, $v0
	lw	$a1, 212($sp)
	sw	$a0, 8($a1)
	flw	$f0, 168($sp)
	lw	$a0, 176($sp)
	sw	$ra, 220($sp)
	addi	$sp, $sp, 224
	jal	min_caml_create_float_array
	subi	$sp, $sp, 224
	lw	$ra, 220($sp)
	move	$a0, $v0
	lw	$a1, 212($sp)
	sw	$a0, 12($a1)
	flw	$f0, 168($sp)
	lw	$a0, 176($sp)
	sw	$ra, 220($sp)
	addi	$sp, $sp, 224
	jal	min_caml_create_float_array
	subi	$sp, $sp, 224
	lw	$ra, 220($sp)
	move	$a0, $v0
	lw	$a1, 212($sp)
	sw	$a0, 16($a1)
	lw	$a0, 188($sp)
	lw	$a2, 196($sp)
	move	$a1, $a2
	sw	$ra, 220($sp)
	addi	$sp, $sp, 224
	jal	min_caml_create_array
	subi	$sp, $sp, 224
	lw	$ra, 220($sp)
	move	$a0, $v0
	flw	$f0, 168($sp)
	lw	$a1, 176($sp)
	sw	$a0, 216($sp)
	move	$a0, $a1
	sw	$ra, 220($sp)
	addi	$sp, $sp, 224
	jal	min_caml_create_float_array
	subi	$sp, $sp, 224
	lw	$ra, 220($sp)
	move	$a1, $v0
	lw	$a0, 184($sp)
	sw	$ra, 220($sp)
	addi	$sp, $sp, 224
	jal	min_caml_create_array
	subi	$sp, $sp, 224
	lw	$ra, 220($sp)
	move	$a0, $v0
	flw	$f0, 168($sp)
	lw	$a1, 176($sp)
	sw	$a0, 220($sp)
	move	$a0, $a1
	sw	$ra, 228($sp)
	addi	$sp, $sp, 232
	jal	min_caml_create_float_array
	subi	$sp, $sp, 232
	lw	$ra, 228($sp)
	move	$a0, $v0
	lw	$a1, 220($sp)
	sw	$a0, 4($a1)
	flw	$f0, 168($sp)
	lw	$a0, 176($sp)
	sw	$ra, 228($sp)
	addi	$sp, $sp, 232
	jal	min_caml_create_float_array
	subi	$sp, $sp, 232
	lw	$ra, 228($sp)
	move	$a0, $v0
	lw	$a1, 220($sp)
	sw	$a0, 8($a1)
	flw	$f0, 168($sp)
	lw	$a0, 176($sp)
	sw	$ra, 228($sp)
	addi	$sp, $sp, 232
	jal	min_caml_create_float_array
	subi	$sp, $sp, 232
	lw	$ra, 228($sp)
	move	$a0, $v0
	lw	$a1, 220($sp)
	sw	$a0, 12($a1)
	flw	$f0, 168($sp)
	lw	$a0, 176($sp)
	sw	$ra, 228($sp)
	addi	$sp, $sp, 232
	jal	min_caml_create_float_array
	subi	$sp, $sp, 232
	lw	$ra, 228($sp)
	move	$a0, $v0
	lw	$a1, 220($sp)
	sw	$a0, 16($a1)
	move	$a0, $fp
	addi	$fp, $fp, 32
	sw	$a1, 28($a0)
	lw	$a1, 216($sp)
	sw	$a1, 24($a0)
	lw	$a1, 212($sp)
	sw	$a1, 20($a0)
	lw	$a1, 208($sp)
	sw	$a1, 16($a0)
	lw	$a1, 204($sp)
	sw	$a1, 12($a0)
	lw	$a1, 200($sp)
	sw	$a1, 8($a0)
	lw	$a1, 192($sp)
	sw	$a1, 4($a0)
	lw	$a1, 180($sp)
	sw	$a1, 0($a0)
	move	$a1, $a0
	lw	$a0, 164($sp)
	sw	$ra, 228($sp)
	addi	$sp, $sp, 232
	jal	min_caml_create_array
	subi	$sp, $sp, 232
	lw	$ra, 228($sp)
	move	$a0, $v0
	lw	$a1, 24($sp)
	lw	$a1, 0($a1)
	subi	$a1, $a1, 2
	sw	$ra, 228($sp)
	addi	$sp, $sp, 232
	jal	init_line_elements.3212
	subi	$sp, $sp, 232
	lw	$ra, 228($sp)
	move	$a0, $v0
	li	$a1, 288
	read_float	$f0
	fsw	$f0, 0($a1)
	read_float	$f0
	fsw	$f0, 4($a1)
	read_float	$f0
	fsw	$f0, 8($a1)
	read_float	$f0
	li	$v0, 15502
	sll	$v0, $v0, 16
	ori	$v0, $v0, 64053
	mtc1	$f1, $v0
	fmul	$f0, $f0, $f1
	lw	$a26, 20($sp)
	sw	$a0, 224($sp)
	fsw	$f0, 232($sp)
	sw	$ra, 244($sp)
	addi	$sp, $sp, 248
	jal	cos.2783
	subi	$sp, $sp, 248
	lw	$ra, 244($sp)
	fmove	$f0, $fv
	flw	$f1, 232($sp)
	lw	$a26, 16($sp)
	fsw	$f0, 240($sp)
	fmove	$f0, $f1
	sw	$ra, 252($sp)
	addi	$sp, $sp, 256
	jal	sin.2781
	subi	$sp, $sp, 256
	lw	$ra, 252($sp)
	fmove	$f0, $fv
	read_float	$f1
	li	$v0, 15502
	sll	$v0, $v0, 16
	ori	$v0, $v0, 64053
	mtc1	$f2, $v0
	fmul	$f1, $f1, $f2
	lw	$a26, 20($sp)
	fsw	$f0, 248($sp)
	fsw	$f1, 256($sp)
	fmove	$f0, $f1
	sw	$ra, 268($sp)
	addi	$sp, $sp, 272
	jal	cos.2783
	subi	$sp, $sp, 272
	lw	$ra, 268($sp)
	fmove	$f0, $fv
	flw	$f1, 256($sp)
	lw	$a26, 16($sp)
	fsw	$f0, 264($sp)
	fmove	$f0, $f1
	sw	$ra, 276($sp)
	addi	$sp, $sp, 280
	jal	sin.2781
	subi	$sp, $sp, 280
	lw	$ra, 276($sp)
	fmove	$f0, $fv
	li	$a0, 684
	flw	$f1, 240($sp)
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
	flw	$f4, 248($sp)
	fmul	$f2, $f4, $f2
	fsw	$f2, 4($a0)
	flw	$f2, 264($sp)
	fmul	$f5, $f1, $f2
	fmul	$f3, $f5, $f3
	fsw	$f3, 8($a0)
	li	$a1, 660
	fsw	$f2, 0($a1)
	mtc1	$f3, $zero
	fsw	$f3, 4($a1)
	fneg	$f3, $f0
	fsw	$f3, 8($a1)
	li	$a1, 672
	fneg	$f3, $f4
	fmul	$f0, $f3, $f0
	fsw	$f0, 0($a1)
	fneg	$f0, $f1
	fsw	$f0, 4($a1)
	fneg	$f0, $f4
	fmul	$f0, $f0, $f2
	fsw	$f0, 8($a1)
	li	$a1, 300
	li	$a2, 288
	flw	$f0, 0($a2)
	flw	$f1, 0($a0)
	fsub	$f0, $f0, $f1
	fsw	$f0, 0($a1)
	flw	$f0, 4($a2)
	flw	$f1, 4($a0)
	fsub	$f0, $f0, $f1
	fsw	$f0, 4($a1)
	flw	$f0, 8($a2)
	flw	$f1, 8($a0)
	fsub	$f0, $f0, $f1
	fsw	$f0, 8($a1)
	read_int	$a0
	read_float	$f0
	li	$v0, 15502
	sll	$v0, $v0, 16
	ori	$v0, $v0, 64053
	mtc1	$f1, $v0
	fmul	$f0, $f0, $f1
	lw	$a26, 16($sp)
	fsw	$f0, 272($sp)
	sw	$ra, 284($sp)
	addi	$sp, $sp, 288
	jal	sin.2781
	subi	$sp, $sp, 288
	lw	$ra, 284($sp)
	fmove	$f0, $fv
	li	$a0, 312
	fneg	$f0, $f0
	fsw	$f0, 4($a0)
	read_float	$f0
	li	$v0, 15502
	sll	$v0, $v0, 16
	ori	$v0, $v0, 64053
	mtc1	$f1, $v0
	fmul	$f0, $f0, $f1
	flw	$f1, 272($sp)
	lw	$a26, 20($sp)
	fsw	$f0, 280($sp)
	fmove	$f0, $f1
	sw	$ra, 292($sp)
	addi	$sp, $sp, 296
	jal	cos.2783
	subi	$sp, $sp, 296
	lw	$ra, 292($sp)
	fmove	$f0, $fv
	flw	$f1, 280($sp)
	lw	$a26, 16($sp)
	fsw	$f0, 288($sp)
	fmove	$f0, $f1
	sw	$ra, 300($sp)
	addi	$sp, $sp, 304
	jal	sin.2781
	subi	$sp, $sp, 304
	lw	$ra, 300($sp)
	fmove	$f0, $fv
	li	$a0, 312
	flw	$f1, 288($sp)
	fmul	$f0, $f1, $f0
	fsw	$f0, 0($a0)
	flw	$f0, 280($sp)
	lw	$a26, 20($sp)
	sw	$ra, 300($sp)
	addi	$sp, $sp, 304
	jal	cos.2783
	subi	$sp, $sp, 304
	lw	$ra, 300($sp)
	fmove	$f0, $fv
	li	$a0, 312
	flw	$f1, 288($sp)
	fmul	$f0, $f1, $f0
	fsw	$f0, 8($a0)
	li	$a0, 324
	li	$a1, 0
	read_float	$f0
	fsw	$f0, 0($a0)
	lw	$a26, 12($sp)
	move	$a0, $a1
	sw	$ra, 300($sp)
	addi	$sp, $sp, 304
	jal	read_object.2923
	subi	$sp, $sp, 304
	lw	$ra, 300($sp)
	fmove	$f30, $fv
	li	$a0, 0
	sw	$ra, 300($sp)
	addi	$sp, $sp, 304
	jal	read_and_network.2931
	subi	$sp, $sp, 304
	lw	$ra, 300($sp)
	fmove	$f30, $fv
	li	$a0, 536
	li	$a1, 0
	sw	$a0, 296($sp)
	move	$a0, $a1
	sw	$ra, 300($sp)
	addi	$sp, $sp, 304
	jal	read_or_network.2929
	subi	$sp, $sp, 304
	lw	$ra, 300($sp)
	move	$a0, $v0
	lw	$a1, 296($sp)
	sw	$a0, 0($a1)
	sw	$ra, 300($sp)
	addi	$sp, $sp, 304
	jal	write_ppm_header.3176
	subi	$sp, $sp, 304
	lw	$ra, 300($sp)
	fmove	$f30, $fv
	li	$a0, 4
	sw	$ra, 300($sp)
	addi	$sp, $sp, 304
	jal	create_dirvecs.3244
	subi	$sp, $sp, 304
	lw	$ra, 300($sp)
	fmove	$f30, $fv
	li	$a0, 9
	li	$a1, 0
	lw	$a26, 8($sp)
	move	$a2, $a1
	sw	$ra, 300($sp)
	addi	$sp, $sp, 304
	jal	calc_dirvec_rows.3235
	subi	$sp, $sp, 304
	lw	$ra, 300($sp)
	fmove	$f30, $fv
	li	$a0, 4
	sw	$ra, 300($sp)
	addi	$sp, $sp, 304
	jal	init_vecset_constants.3249
	subi	$sp, $sp, 304
	lw	$ra, 300($sp)
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
	sw	$ra, 300($sp)
	addi	$sp, $sp, 304
	jal	iter_setup_dirvec_constants.3028
	subi	$sp, $sp, 304
	lw	$ra, 300($sp)
	fmove	$f30, $fv
	li	$a0, 0
	li	$a1, 0
	lw	$a0, 0($a0)
	li	$a2, 1
	subi	$a0, $a0, 1
	sw	$a2, 300($sp)
	sw	$a1, 304($sp)
	blt	$a0, $a1, bge_else.28962
	li	$a3, 48
	sll	$a4, $a0, 2
	add	$a4, $a3, $a4
	lw	$a3, 0($a4)
	lw	$a4, 8($a3)
	li	$a5, 2
	bne	$a4, $a5, bne_else.28964
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f0, $v0
	lw	$a4, 28($a3)
	flw	$f1, 0($a4)
	fblt	$f1, $f0, fbge_else.28966
	j	fbge_cont.28967
fbge_else.28966:
	lw	$a4, 4($a3)
	li	$a5, 1
	bne	$a4, $a5, bne_else.28968
	sla	$a0, $a0, 2
	li	$a4, 1736
	lw	$a4, 0($a4)
	lw	$a3, 28($a3)
	flw	$f0, 0($a3)
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	fsub	$f0, $f1, $f0
	li	$a3, 312
	flw	$f1, 0($a3)
	fneg	$f1, $f1
	li	$a3, 312
	flw	$f2, 4($a3)
	fneg	$f2, $f2
	li	$a3, 312
	flw	$f3, 8($a3)
	fneg	$f3, $f3
	addi	$a3, $a0, 1
	li	$a5, 312
	flw	$f4, 0($a5)
	li	$a5, 3
	mtc1	$f5, $zero
	fsw	$f1, 312($sp)
	sw	$a0, 320($sp)
	sw	$a4, 324($sp)
	sw	$a3, 328($sp)
	fsw	$f0, 336($sp)
	fsw	$f3, 344($sp)
	fsw	$f2, 352($sp)
	fsw	$f4, 360($sp)
	move	$a0, $a5
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
	jal	iter_setup_dirvec_constants.3028
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
	jal	iter_setup_dirvec_constants.3028
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
	jal	iter_setup_dirvec_constants.3028
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
	j	bne_cont.28969
bne_else.28968:
	li	$a5, 2
	bne	$a4, $a5, bne_else.28974
	sla	$a0, $a0, 2
	addi	$a0, $a0, 1
	li	$a4, 1736
	lw	$a4, 0($a4)
	lw	$a5, 28($a3)
	flw	$f0, 0($a5)
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	fsub	$f0, $f1, $f0
	li	$a5, 312
	lw	$a6, 16($a3)
	flw	$f1, 0($a5)
	flw	$f2, 0($a6)
	fmul	$f1, $f1, $f2
	flw	$f2, 4($a5)
	flw	$f3, 4($a6)
	fmul	$f2, $f2, $f3
	fadd	$f1, $f1, $f2
	flw	$f2, 8($a5)
	flw	$f3, 8($a6)
	fmul	$f2, $f2, $f3
	fadd	$f1, $f1, $f2
	lw	$a5, 16($a3)
	flw	$f2, 0($a5)
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f3, $v0
	fmul	$f2, $f3, $f2
	fmul	$f2, $f2, $f1
	li	$a5, 312
	flw	$f3, 0($a5)
	fsub	$f2, $f2, $f3
	lw	$a5, 16($a3)
	flw	$f3, 4($a5)
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f4, $v0
	fmul	$f3, $f4, $f3
	fmul	$f3, $f3, $f1
	li	$a5, 312
	flw	$f4, 4($a5)
	fsub	$f3, $f3, $f4
	lw	$a3, 16($a3)
	flw	$f4, 8($a3)
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f5, $v0
	fmul	$f4, $f5, $f4
	fmul	$f1, $f4, $f1
	li	$a3, 312
	flw	$f4, 8($a3)
	fsub	$f1, $f1, $f4
	li	$a3, 3
	mtc1	$f4, $zero
	sw	$a4, 444($sp)
	sw	$a0, 448($sp)
	fsw	$f0, 456($sp)
	fsw	$f1, 464($sp)
	fsw	$f3, 472($sp)
	fsw	$f2, 480($sp)
	move	$a0, $a3
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
	jal	iter_setup_dirvec_constants.3028
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
	j	bne_cont.28975
bne_else.28974:
bne_cont.28975:
bne_cont.28969:
fbge_cont.28967:
	j	bne_cont.28965
bne_else.28964:
bne_cont.28965:
	j	bge_cont.28963
bge_else.28962:
bge_cont.28963:
	li	$a0, 632
	flw	$f0, 0($a0)
	li	$a0, 624
	lw	$a0, 4($a0)
	li	$a1, 0
	sub	$a0, $a1, $a0
	lw	$a1, 304($sp)
	blt	$a1, $a0, bge_else.28977
	neg	$a2, $a0
	j	bge_cont.28978
bge_else.28977:
	move	$a2, $a0
bge_cont.28978:
	blt	$a1, $a0, bge_else.28979
	li	$a0, -1
	j	bge_cont.28980
bge_else.28979:
	li	$a0, 1
bge_cont.28980:
	move	$a26, $fp
	addi	$fp, $fp, 8
	sw	$a3, 0($a26)
	sw	$a1, 4($a26)
	lw	$a3, 300($sp)
	fsw	$f0, 504($sp)
	bne	$a0, $a3, bne_else.28982
	li	$a0, 128
	sll	$a0, $a0, 16
	ori	$a0, $a0, 0
	blt	$a0, $a2, bge_else.28984
	move	$a26, $fp
	addi	$fp, $fp, 8
	sw	$a0, 0($a26)
	sw	$a1, 4($a26)
	mtc1	$f1, $zero
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	move	$a0, $a2
	fmove	$f0, $f1
	fmove	$f1, $f2
	sw	$ra, 516($sp)
	addi	$sp, $sp, 520
	jal	itof_ret_sub.6582.7753.13492.20785
	subi	$sp, $sp, 520
	lw	$ra, 516($sp)
	fmove	$f0, $fv
	j	bge_cont.28985
bge_else.28984:
	mtc1	$f1, $zero
	move	$a0, $a2
	fmove	$f0, $f1
	sw	$ra, 516($sp)
	addi	$sp, $sp, 520
	jal	itof_big.6566.7737.13457
	subi	$sp, $sp, 520
	lw	$ra, 516($sp)
	fmove	$f0, $fv
bge_cont.28985:
	j	bne_cont.28983
bne_else.28982:
	li	$a0, 128
	sll	$a0, $a0, 16
	ori	$a0, $a0, 0
	blt	$a0, $a2, bge_else.28986
	move	$a26, $fp
	addi	$fp, $fp, 8
	sw	$a0, 0($a26)
	sw	$a1, 4($a26)
	mtc1	$f1, $zero
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	move	$a0, $a2
	fmove	$f0, $f1
	fmove	$f1, $f2
	sw	$ra, 516($sp)
	addi	$sp, $sp, 520
	jal	itof_ret_sub.6582.7753.13492.20770
	subi	$sp, $sp, 520
	lw	$ra, 516($sp)
	fmove	$f0, $fv
	fneg	$f0, $f0
	j	bge_cont.28987
bge_else.28986:
	mtc1	$f1, $zero
	move	$a0, $a2
	fmove	$f0, $f1
	sw	$ra, 516($sp)
	addi	$sp, $sp, 520
	jal	itof_big.6566.7737.13457
	subi	$sp, $sp, 520
	lw	$ra, 516($sp)
	fmove	$f0, $fv
	fneg	$f0, $f0
bge_cont.28987:
bne_cont.28983:
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
	lw	$a0, 160($sp)
	lw	$a2, 304($sp)
	lw	$a26, 4($sp)
	fmove	$f30, $f2
	fmove	$f2, $f0
	fmove	$f0, $f1
	fmove	$f1, $f30
	sw	$ra, 516($sp)
	addi	$sp, $sp, 520
	jal	pretrace_pixels.3185
	subi	$sp, $sp, 520
	lw	$ra, 516($sp)
	fmove	$f30, $fv
	li	$a4, 2
	lw	$a0, 304($sp)
	lw	$a1, 96($sp)
	lw	$a2, 160($sp)
	lw	$a3, 224($sp)
	lw	$a26, 0($sp)
	sw	$ra, 516($sp)
	addi	$sp, $sp, 520
	jal	scan_line.3202
	subi	$sp, $sp, 520
	lw	$ra, 516($sp)
	fmove	$f30, $fv
	j exit   # main program end
