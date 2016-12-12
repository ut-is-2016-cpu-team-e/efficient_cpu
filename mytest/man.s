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
  read_float  $fv0
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
countn.418:
	blt	$a0, $a1, bge_else.17030
	sub	$a0, $a0, $a1
	addi	$a2, $a2, 1
	j	countn.418
bge_else.17030:
	move	$v0, $a2
	jr	$ra
mymul.422:
	li	$a3, 0
	bne	$a0, $a3, beq_else.17031
	move	$v0, $a2
	jr	$ra
beq_else.17031:
	subi	$a0, $a0, 1
	add	$a2, $a2, $a1
	j	mymul.422
itof_ret_sub.851.1360.5859:
	sra	$a1, $a0, 1
	li	$a2, 0
	bne	$a0, $a2, beq_else.17032
	fmove	$fv, $f0
	jr $ra
beq_else.17032:
	sub	$a0, $a0, $a1
	sub	$a0, $a0, $a1
	li	$a2, 0
	blt	$a2, $a0, bge_else.17033
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fmul	$f1, $f1, $f2
	move	$a0, $a1
	j	itof_ret_sub.851.1360.5859
bge_else.17033:
	fadd	$f0, $f0, $f1
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fmul	$f1, $f1, $f2
	move	$a0, $a1
	j	itof_ret_sub.851.1360.5859
itof_big.835.1344:
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
	blt	$a0, $a1, bge_else.17034
	j	itof_big.835.1344
bge_else.17034:
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
	jal	itof_ret_sub.851.1360.5859
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	fmove	$f0, $fv
	flw	$f1, 0($sp)
	fadd	$fv, $f1, $f0
	jr $ra
itof_ret_sub.851.1321.5811:
	sra	$a1, $a0, 1
	li	$a2, 0
	bne	$a0, $a2, beq_else.17035
	fmove	$fv, $f0
	jr $ra
beq_else.17035:
	sub	$a0, $a0, $a1
	sub	$a0, $a0, $a1
	li	$a2, 0
	blt	$a2, $a0, bge_else.17036
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fmul	$f1, $f1, $f2
	move	$a0, $a1
	j	itof_ret_sub.851.1321.5811
bge_else.17036:
	fadd	$f0, $f0, $f1
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fmul	$f1, $f1, $f2
	move	$a0, $a1
	j	itof_ret_sub.851.1321.5811
itof_big.835.1305:
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
	blt	$a0, $a1, bge_else.17037
	j	itof_big.835.1305
bge_else.17037:
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
	jal	itof_ret_sub.851.1321.5811
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	fmove	$f0, $fv
	flw	$f1, 0($sp)
	fadd	$fv, $f1, $f0
	jr $ra
itof_ret_sub.851.2665.4012:
	sra	$a1, $a0, 1
	li	$a2, 0
	bne	$a0, $a2, beq_else.17038
	fmove	$fv, $f0
	jr $ra
beq_else.17038:
	sub	$a0, $a0, $a1
	sub	$a0, $a0, $a1
	li	$a2, 0
	blt	$a2, $a0, bge_else.17039
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fmul	$f1, $f1, $f2
	move	$a0, $a1
	j	itof_ret_sub.851.2665.4012
bge_else.17039:
	fadd	$f0, $f0, $f1
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fmul	$f1, $f1, $f2
	move	$a0, $a1
	j	itof_ret_sub.851.2665.4012
itof_big.835.3965:
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
	blt	$a0, $a1, bge_else.17040
	j	itof_big.835.3965
bge_else.17040:
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
	jal	itof_ret_sub.851.2665.4012
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	fmove	$f0, $fv
	flw	$f1, 0($sp)
	fadd	$fv, $f1, $f0
	jr $ra
div2like_sub.907.2750.5893.6334:
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fblt	$f0, $f2, fbge_else.17041
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
	j	div2like_sub.907.2750.5893.6334
fbge_else.17041:
	fmove	$fv, $f1
	jr $ra
ftoi_ret_sub.892.2735.6327:
	mtc1	$f1, $zero
	sw	$a1, 0($sp)
	sw	$a0, 4($sp)
	fsw	$f0, 8($sp)
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	div2like_sub.907.2750.5893.6334
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	fmove	$f0, $fv
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	flw	$f2, 8($sp)
	fblt	$f2, $f1, fbge_else.17042
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
	fblt	$f2, $f1, fbge_else.17043
	lw	$a0, 0($sp)
	lw	$a1, 4($sp)
	add	$a1, $a1, $a0
	add	$a0, $a0, $a0
	move	$a25, $a1
	move	$a1, $a0
	move	$a0, $a25
	j	ftoi_ret_sub.892.2735.6327
fbge_else.17043:
	lw	$a0, 0($sp)
	add	$a1, $a0, $a0
	lw	$a0, 4($sp)
	j	ftoi_ret_sub.892.2735.6327
fbge_else.17042:
	lw	$a0, 4($sp)
	move	$v0, $a0
	jr	$ra
ftoi_big.874.6265:
	li	$v0, 19200
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	fsub	$f0, $f0, $f1
	li	$a1, 128
	sll	$a1, $a1, 16
	ori	$a1, $a1, 0
	add	$a0, $a0, $a1
	fblt	$f0, $f1, fbge_else.17044
	j	ftoi_big.874.6265
fbge_else.17044:
	li	$a1, 0
	li	$a2, 1
	sw	$a0, 0($sp)
	move	$a0, $a1
	move	$a1, $a2
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	ftoi_ret_sub.892.2735.6327
	subi	$sp, $sp, 8
	lw	$ra, 4($sp)
	move	$a0, $v0
	lw	$a1, 0($sp)
	add	$v0, $a1, $a0
	jr	$ra
div2like_sub.907.2750.5893.6244:
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fblt	$f0, $f2, fbge_else.17045
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
	j	div2like_sub.907.2750.5893.6244
fbge_else.17045:
	fmove	$fv, $f1
	jr $ra
ftoi_ret_sub.892.2735.6237:
	mtc1	$f1, $zero
	sw	$a1, 0($sp)
	sw	$a0, 4($sp)
	fsw	$f0, 8($sp)
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	div2like_sub.907.2750.5893.6244
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	fmove	$f0, $fv
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	flw	$f2, 8($sp)
	fblt	$f2, $f1, fbge_else.17046
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
	fblt	$f2, $f1, fbge_else.17047
	lw	$a0, 0($sp)
	lw	$a1, 4($sp)
	add	$a1, $a1, $a0
	add	$a0, $a0, $a0
	move	$a25, $a1
	move	$a1, $a0
	move	$a0, $a25
	j	ftoi_ret_sub.892.2735.6237
fbge_else.17047:
	lw	$a0, 0($sp)
	add	$a1, $a0, $a0
	lw	$a0, 4($sp)
	j	ftoi_ret_sub.892.2735.6237
fbge_else.17046:
	lw	$a0, 4($sp)
	move	$v0, $a0
	jr	$ra
ftoi_big.874.6175:
	li	$v0, 19200
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	fsub	$f0, $f0, $f1
	li	$a1, 128
	sll	$a1, $a1, 16
	ori	$a1, $a1, 0
	add	$a0, $a0, $a1
	fblt	$f0, $f1, fbge_else.17048
	j	ftoi_big.874.6175
fbge_else.17048:
	li	$a1, 0
	li	$a2, 1
	sw	$a0, 0($sp)
	move	$a0, $a1
	move	$a1, $a2
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	ftoi_ret_sub.892.2735.6237
	subi	$sp, $sp, 8
	lw	$ra, 4($sp)
	move	$a0, $v0
	lw	$a1, 0($sp)
	add	$v0, $a1, $a0
	jr	$ra
div2like_sub.907.2750.5893.6154:
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fblt	$f0, $f2, fbge_else.17049
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
	j	div2like_sub.907.2750.5893.6154
fbge_else.17049:
	fmove	$fv, $f1
	jr $ra
ftoi_ret_sub.892.2735.6147:
	mtc1	$f1, $zero
	sw	$a1, 0($sp)
	sw	$a0, 4($sp)
	fsw	$f0, 8($sp)
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	div2like_sub.907.2750.5893.6154
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	fmove	$f0, $fv
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	flw	$f2, 8($sp)
	fblt	$f2, $f1, fbge_else.17050
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
	fblt	$f2, $f1, fbge_else.17051
	lw	$a0, 0($sp)
	lw	$a1, 4($sp)
	add	$a1, $a1, $a0
	add	$a0, $a0, $a0
	move	$a25, $a1
	move	$a1, $a0
	move	$a0, $a25
	j	ftoi_ret_sub.892.2735.6147
fbge_else.17051:
	lw	$a0, 0($sp)
	add	$a1, $a0, $a0
	lw	$a0, 4($sp)
	j	ftoi_ret_sub.892.2735.6147
fbge_else.17050:
	lw	$a0, 4($sp)
	move	$v0, $a0
	jr	$ra
ftoi_big.874.6085:
	li	$v0, 19200
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	fsub	$f0, $f0, $f1
	li	$a1, 128
	sll	$a1, $a1, 16
	ori	$a1, $a1, 0
	add	$a0, $a0, $a1
	fblt	$f0, $f1, fbge_else.17052
	j	ftoi_big.874.6085
fbge_else.17052:
	li	$a1, 0
	li	$a2, 1
	sw	$a0, 0($sp)
	move	$a0, $a1
	move	$a1, $a2
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	ftoi_ret_sub.892.2735.6147
	subi	$sp, $sp, 8
	lw	$ra, 4($sp)
	move	$a0, $v0
	lw	$a1, 0($sp)
	add	$v0, $a1, $a0
	jr	$ra
div2like_sub.907.2724.5884.6125:
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fblt	$f0, $f2, fbge_else.17053
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
	j	div2like_sub.907.2724.5884.6125
fbge_else.17053:
	fmove	$fv, $f1
	jr $ra
ftoi_ret_sub.892.2709.6119:
	mtc1	$f1, $zero
	sw	$a1, 0($sp)
	sw	$a0, 4($sp)
	fsw	$f0, 8($sp)
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	div2like_sub.907.2724.5884.6125
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	fmove	$f0, $fv
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	flw	$f2, 8($sp)
	fblt	$f2, $f1, fbge_else.17054
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
	fblt	$f2, $f1, fbge_else.17055
	lw	$a0, 0($sp)
	lw	$a1, 4($sp)
	add	$a1, $a1, $a0
	add	$a0, $a0, $a0
	move	$a25, $a1
	move	$a1, $a0
	move	$a0, $a25
	j	ftoi_ret_sub.892.2709.6119
fbge_else.17055:
	lw	$a0, 0($sp)
	add	$a1, $a0, $a0
	lw	$a0, 4($sp)
	j	ftoi_ret_sub.892.2709.6119
fbge_else.17054:
	lw	$a0, 4($sp)
	move	$v0, $a0
	jr	$ra
div2like_sub.907.2724.5884.6215:
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fblt	$f0, $f2, fbge_else.17056
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
	j	div2like_sub.907.2724.5884.6215
fbge_else.17056:
	fmove	$fv, $f1
	jr $ra
ftoi_ret_sub.892.2709.6209:
	mtc1	$f1, $zero
	sw	$a1, 0($sp)
	sw	$a0, 4($sp)
	fsw	$f0, 8($sp)
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	div2like_sub.907.2724.5884.6215
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	fmove	$f0, $fv
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	flw	$f2, 8($sp)
	fblt	$f2, $f1, fbge_else.17057
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
	fblt	$f2, $f1, fbge_else.17058
	lw	$a0, 0($sp)
	lw	$a1, 4($sp)
	add	$a1, $a1, $a0
	add	$a0, $a0, $a0
	move	$a25, $a1
	move	$a1, $a0
	move	$a0, $a25
	j	ftoi_ret_sub.892.2709.6209
fbge_else.17058:
	lw	$a0, 0($sp)
	add	$a1, $a0, $a0
	lw	$a0, 4($sp)
	j	ftoi_ret_sub.892.2709.6209
fbge_else.17057:
	lw	$a0, 4($sp)
	move	$v0, $a0
	jr	$ra
div2like_sub.907.2724.5884.6305:
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fblt	$f0, $f2, fbge_else.17059
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
	j	div2like_sub.907.2724.5884.6305
fbge_else.17059:
	fmove	$fv, $f1
	jr $ra
ftoi_ret_sub.892.2709.6299:
	mtc1	$f1, $zero
	sw	$a1, 0($sp)
	sw	$a0, 4($sp)
	fsw	$f0, 8($sp)
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	div2like_sub.907.2724.5884.6305
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	fmove	$f0, $fv
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	flw	$f2, 8($sp)
	fblt	$f2, $f1, fbge_else.17060
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
	fblt	$f2, $f1, fbge_else.17061
	lw	$a0, 0($sp)
	lw	$a1, 4($sp)
	add	$a1, $a1, $a0
	add	$a0, $a0, $a0
	move	$a25, $a1
	move	$a1, $a0
	move	$a0, $a25
	j	ftoi_ret_sub.892.2709.6299
fbge_else.17061:
	lw	$a0, 0($sp)
	add	$a1, $a0, $a0
	lw	$a0, 4($sp)
	j	ftoi_ret_sub.892.2709.6299
fbge_else.17060:
	lw	$a0, 4($sp)
	move	$v0, $a0
	jr	$ra
itof_ret_sub.851.2665.3354:
	sra	$a1, $a0, 1
	li	$a2, 0
	bne	$a0, $a2, beq_else.17062
	fmove	$fv, $f0
	jr $ra
beq_else.17062:
	sub	$a0, $a0, $a1
	sub	$a0, $a0, $a1
	li	$a2, 0
	blt	$a2, $a0, bge_else.17063
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fmul	$f1, $f1, $f2
	move	$a0, $a1
	j	itof_ret_sub.851.2665.3354
bge_else.17063:
	fadd	$f0, $f0, $f1
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fmul	$f1, $f1, $f2
	move	$a0, $a1
	j	itof_ret_sub.851.2665.3354
itof_big.835.3307:
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
	blt	$a0, $a1, bge_else.17064
	j	itof_big.835.3307
bge_else.17064:
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
	jal	itof_ret_sub.851.2665.3354
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	fmove	$f0, $fv
	flw	$f1, 0($sp)
	fadd	$fv, $f1, $f0
	jr $ra
itof_ret_sub.851.2665.3287:
	sra	$a1, $a0, 1
	li	$a2, 0
	bne	$a0, $a2, beq_else.17065
	fmove	$fv, $f0
	jr $ra
beq_else.17065:
	sub	$a0, $a0, $a1
	sub	$a0, $a0, $a1
	li	$a2, 0
	blt	$a2, $a0, bge_else.17066
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fmul	$f1, $f1, $f2
	move	$a0, $a1
	j	itof_ret_sub.851.2665.3287
bge_else.17066:
	fadd	$f0, $f0, $f1
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fmul	$f1, $f1, $f2
	move	$a0, $a1
	j	itof_ret_sub.851.2665.3287
itof_big.835.3240:
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
	blt	$a0, $a1, bge_else.17067
	j	itof_big.835.3240
bge_else.17067:
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
	jal	itof_ret_sub.851.2665.3287
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	fmove	$f0, $fv
	flw	$f1, 0($sp)
	fadd	$fv, $f1, $f0
	jr $ra
div2like_sub.907.2750.5893.6781:
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fblt	$f0, $f2, fbge_else.17068
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
	j	div2like_sub.907.2750.5893.6781
fbge_else.17068:
	fmove	$fv, $f1
	jr $ra
ftoi_ret_sub.892.2735.6774:
	mtc1	$f1, $zero
	sw	$a1, 0($sp)
	sw	$a0, 4($sp)
	fsw	$f0, 8($sp)
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	div2like_sub.907.2750.5893.6781
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	fmove	$f0, $fv
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	flw	$f2, 8($sp)
	fblt	$f2, $f1, fbge_else.17069
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
	fblt	$f2, $f1, fbge_else.17070
	lw	$a0, 0($sp)
	lw	$a1, 4($sp)
	add	$a1, $a1, $a0
	add	$a0, $a0, $a0
	move	$a25, $a1
	move	$a1, $a0
	move	$a0, $a25
	j	ftoi_ret_sub.892.2735.6774
fbge_else.17070:
	lw	$a0, 0($sp)
	add	$a1, $a0, $a0
	lw	$a0, 4($sp)
	j	ftoi_ret_sub.892.2735.6774
fbge_else.17069:
	lw	$a0, 4($sp)
	move	$v0, $a0
	jr	$ra
ftoi_big.874.6712:
	li	$v0, 19200
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	fsub	$f0, $f0, $f1
	li	$a1, 128
	sll	$a1, $a1, 16
	ori	$a1, $a1, 0
	add	$a0, $a0, $a1
	fblt	$f0, $f1, fbge_else.17071
	j	ftoi_big.874.6712
fbge_else.17071:
	li	$a1, 0
	li	$a2, 1
	sw	$a0, 0($sp)
	move	$a0, $a1
	move	$a1, $a2
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	ftoi_ret_sub.892.2735.6774
	subi	$sp, $sp, 8
	lw	$ra, 4($sp)
	move	$a0, $v0
	lw	$a1, 0($sp)
	add	$v0, $a1, $a0
	jr	$ra
div2like_sub.907.2750.5893.6691:
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fblt	$f0, $f2, fbge_else.17072
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
	j	div2like_sub.907.2750.5893.6691
fbge_else.17072:
	fmove	$fv, $f1
	jr $ra
ftoi_ret_sub.892.2735.6684:
	mtc1	$f1, $zero
	sw	$a1, 0($sp)
	sw	$a0, 4($sp)
	fsw	$f0, 8($sp)
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	div2like_sub.907.2750.5893.6691
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	fmove	$f0, $fv
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	flw	$f2, 8($sp)
	fblt	$f2, $f1, fbge_else.17073
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
	fblt	$f2, $f1, fbge_else.17074
	lw	$a0, 0($sp)
	lw	$a1, 4($sp)
	add	$a1, $a1, $a0
	add	$a0, $a0, $a0
	move	$a25, $a1
	move	$a1, $a0
	move	$a0, $a25
	j	ftoi_ret_sub.892.2735.6684
fbge_else.17074:
	lw	$a0, 0($sp)
	add	$a1, $a0, $a0
	lw	$a0, 4($sp)
	j	ftoi_ret_sub.892.2735.6684
fbge_else.17073:
	lw	$a0, 4($sp)
	move	$v0, $a0
	jr	$ra
ftoi_big.874.6622:
	li	$v0, 19200
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	fsub	$f0, $f0, $f1
	li	$a1, 128
	sll	$a1, $a1, 16
	ori	$a1, $a1, 0
	add	$a0, $a0, $a1
	fblt	$f0, $f1, fbge_else.17075
	j	ftoi_big.874.6622
fbge_else.17075:
	li	$a1, 0
	li	$a2, 1
	sw	$a0, 0($sp)
	move	$a0, $a1
	move	$a1, $a2
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	ftoi_ret_sub.892.2735.6684
	subi	$sp, $sp, 8
	lw	$ra, 4($sp)
	move	$a0, $v0
	lw	$a1, 0($sp)
	add	$v0, $a1, $a0
	jr	$ra
div2like_sub.907.2750.5893.6601:
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fblt	$f0, $f2, fbge_else.17076
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
	j	div2like_sub.907.2750.5893.6601
fbge_else.17076:
	fmove	$fv, $f1
	jr $ra
ftoi_ret_sub.892.2735.6594:
	mtc1	$f1, $zero
	sw	$a1, 0($sp)
	sw	$a0, 4($sp)
	fsw	$f0, 8($sp)
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	div2like_sub.907.2750.5893.6601
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	fmove	$f0, $fv
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	flw	$f2, 8($sp)
	fblt	$f2, $f1, fbge_else.17077
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
	fblt	$f2, $f1, fbge_else.17078
	lw	$a0, 0($sp)
	lw	$a1, 4($sp)
	add	$a1, $a1, $a0
	add	$a0, $a0, $a0
	move	$a25, $a1
	move	$a1, $a0
	move	$a0, $a25
	j	ftoi_ret_sub.892.2735.6594
fbge_else.17078:
	lw	$a0, 0($sp)
	add	$a1, $a0, $a0
	lw	$a0, 4($sp)
	j	ftoi_ret_sub.892.2735.6594
fbge_else.17077:
	lw	$a0, 4($sp)
	move	$v0, $a0
	jr	$ra
ftoi_big.874.6532:
	li	$v0, 19200
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	fsub	$f0, $f0, $f1
	li	$a1, 128
	sll	$a1, $a1, 16
	ori	$a1, $a1, 0
	add	$a0, $a0, $a1
	fblt	$f0, $f1, fbge_else.17079
	j	ftoi_big.874.6532
fbge_else.17079:
	li	$a1, 0
	li	$a2, 1
	sw	$a0, 0($sp)
	move	$a0, $a1
	move	$a1, $a2
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	ftoi_ret_sub.892.2735.6594
	subi	$sp, $sp, 8
	lw	$ra, 4($sp)
	move	$a0, $v0
	lw	$a1, 0($sp)
	add	$v0, $a1, $a0
	jr	$ra
div2like_sub.907.2724.5884.6572:
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fblt	$f0, $f2, fbge_else.17080
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
	j	div2like_sub.907.2724.5884.6572
fbge_else.17080:
	fmove	$fv, $f1
	jr $ra
ftoi_ret_sub.892.2709.6566:
	mtc1	$f1, $zero
	sw	$a1, 0($sp)
	sw	$a0, 4($sp)
	fsw	$f0, 8($sp)
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	div2like_sub.907.2724.5884.6572
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	fmove	$f0, $fv
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	flw	$f2, 8($sp)
	fblt	$f2, $f1, fbge_else.17081
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
	fblt	$f2, $f1, fbge_else.17082
	lw	$a0, 0($sp)
	lw	$a1, 4($sp)
	add	$a1, $a1, $a0
	add	$a0, $a0, $a0
	move	$a25, $a1
	move	$a1, $a0
	move	$a0, $a25
	j	ftoi_ret_sub.892.2709.6566
fbge_else.17082:
	lw	$a0, 0($sp)
	add	$a1, $a0, $a0
	lw	$a0, 4($sp)
	j	ftoi_ret_sub.892.2709.6566
fbge_else.17081:
	lw	$a0, 4($sp)
	move	$v0, $a0
	jr	$ra
div2like_sub.907.2724.5884.6662:
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fblt	$f0, $f2, fbge_else.17083
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
	j	div2like_sub.907.2724.5884.6662
fbge_else.17083:
	fmove	$fv, $f1
	jr $ra
ftoi_ret_sub.892.2709.6656:
	mtc1	$f1, $zero
	sw	$a1, 0($sp)
	sw	$a0, 4($sp)
	fsw	$f0, 8($sp)
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	div2like_sub.907.2724.5884.6662
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	fmove	$f0, $fv
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	flw	$f2, 8($sp)
	fblt	$f2, $f1, fbge_else.17084
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
	fblt	$f2, $f1, fbge_else.17085
	lw	$a0, 0($sp)
	lw	$a1, 4($sp)
	add	$a1, $a1, $a0
	add	$a0, $a0, $a0
	move	$a25, $a1
	move	$a1, $a0
	move	$a0, $a25
	j	ftoi_ret_sub.892.2709.6656
fbge_else.17085:
	lw	$a0, 0($sp)
	add	$a1, $a0, $a0
	lw	$a0, 4($sp)
	j	ftoi_ret_sub.892.2709.6656
fbge_else.17084:
	lw	$a0, 4($sp)
	move	$v0, $a0
	jr	$ra
div2like_sub.907.2698.5875.6726:
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fblt	$f0, $f2, fbge_else.17086
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
	j	div2like_sub.907.2698.5875.6726
fbge_else.17086:
	fmove	$fv, $f1
	jr $ra
ftoi_ret_sub.892.2683.6719:
	mtc1	$f1, $zero
	sw	$a1, 0($sp)
	sw	$a0, 4($sp)
	fsw	$f0, 8($sp)
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	div2like_sub.907.2698.5875.6726
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	fmove	$f0, $fv
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	flw	$f2, 8($sp)
	fblt	$f2, $f1, fbge_else.17087
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
	fblt	$f2, $f1, fbge_else.17088
	lw	$a0, 0($sp)
	lw	$a1, 4($sp)
	add	$a1, $a1, $a0
	add	$a0, $a0, $a0
	move	$a25, $a1
	move	$a1, $a0
	move	$a0, $a25
	j	ftoi_ret_sub.892.2683.6719
fbge_else.17088:
	lw	$a0, 0($sp)
	add	$a1, $a0, $a0
	lw	$a0, 4($sp)
	j	ftoi_ret_sub.892.2683.6719
fbge_else.17087:
	lw	$a0, 4($sp)
	move	$v0, $a0
	jr	$ra
div2like_sub.907.2724.5884.6752:
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fblt	$f0, $f2, fbge_else.17089
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
	j	div2like_sub.907.2724.5884.6752
fbge_else.17089:
	fmove	$fv, $f1
	jr $ra
ftoi_ret_sub.892.2709.6746:
	mtc1	$f1, $zero
	sw	$a1, 0($sp)
	sw	$a0, 4($sp)
	fsw	$f0, 8($sp)
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	div2like_sub.907.2724.5884.6752
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	fmove	$f0, $fv
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	flw	$f2, 8($sp)
	fblt	$f2, $f1, fbge_else.17090
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
	fblt	$f2, $f1, fbge_else.17091
	lw	$a0, 0($sp)
	lw	$a1, 4($sp)
	add	$a1, $a1, $a0
	add	$a0, $a0, $a0
	move	$a25, $a1
	move	$a1, $a0
	move	$a0, $a25
	j	ftoi_ret_sub.892.2709.6746
fbge_else.17091:
	lw	$a0, 0($sp)
	add	$a1, $a0, $a0
	lw	$a0, 4($sp)
	j	ftoi_ret_sub.892.2709.6746
fbge_else.17090:
	lw	$a0, 4($sp)
	move	$v0, $a0
	jr	$ra
itof_ret_sub.851.2633.3247:
	sra	$a1, $a0, 1
	li	$a2, 0
	bne	$a0, $a2, beq_else.17092
	fmove	$fv, $f0
	jr $ra
beq_else.17092:
	sub	$a0, $a0, $a1
	sub	$a0, $a0, $a1
	li	$a2, 0
	blt	$a2, $a0, bge_else.17093
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fmul	$f1, $f1, $f2
	move	$a0, $a1
	j	itof_ret_sub.851.2633.3247
bge_else.17093:
	fadd	$f0, $f0, $f1
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fmul	$f1, $f1, $f2
	move	$a0, $a1
	j	itof_ret_sub.851.2633.3247
itof_ret_sub.851.2649.3266:
	sra	$a1, $a0, 1
	li	$a2, 0
	bne	$a0, $a2, beq_else.17094
	fmove	$fv, $f0
	jr $ra
beq_else.17094:
	sub	$a0, $a0, $a1
	sub	$a0, $a0, $a1
	li	$a2, 0
	blt	$a2, $a0, bge_else.17095
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fmul	$f1, $f1, $f2
	move	$a0, $a1
	j	itof_ret_sub.851.2649.3266
bge_else.17095:
	fadd	$f0, $f0, $f1
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fmul	$f1, $f1, $f2
	move	$a0, $a1
	j	itof_ret_sub.851.2649.3266
itof_ret_sub.851.2633.3314:
	sra	$a1, $a0, 1
	li	$a2, 0
	bne	$a0, $a2, beq_else.17096
	fmove	$fv, $f0
	jr $ra
beq_else.17096:
	sub	$a0, $a0, $a1
	sub	$a0, $a0, $a1
	li	$a2, 0
	blt	$a2, $a0, bge_else.17097
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fmul	$f1, $f1, $f2
	move	$a0, $a1
	j	itof_ret_sub.851.2633.3314
bge_else.17097:
	fadd	$f0, $f0, $f1
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fmul	$f1, $f1, $f2
	move	$a0, $a1
	j	itof_ret_sub.851.2633.3314
itof_ret_sub.851.2649.3333:
	sra	$a1, $a0, 1
	li	$a2, 0
	bne	$a0, $a2, beq_else.17098
	fmove	$fv, $f0
	jr $ra
beq_else.17098:
	sub	$a0, $a0, $a1
	sub	$a0, $a0, $a1
	li	$a2, 0
	blt	$a2, $a0, bge_else.17099
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fmul	$f1, $f1, $f2
	move	$a0, $a1
	j	itof_ret_sub.851.2649.3333
bge_else.17099:
	fadd	$f0, $f0, $f1
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fmul	$f1, $f1, $f2
	move	$a0, $a1
	j	itof_ret_sub.851.2649.3333
itof_ret_sub.851.2665.3499:
	sra	$a1, $a0, 1
	li	$a2, 0
	bne	$a0, $a2, beq_else.17100
	fmove	$fv, $f0
	jr $ra
beq_else.17100:
	sub	$a0, $a0, $a1
	sub	$a0, $a0, $a1
	li	$a2, 0
	blt	$a2, $a0, bge_else.17101
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fmul	$f1, $f1, $f2
	move	$a0, $a1
	j	itof_ret_sub.851.2665.3499
bge_else.17101:
	fadd	$f0, $f0, $f1
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fmul	$f1, $f1, $f2
	move	$a0, $a1
	j	itof_ret_sub.851.2665.3499
itof_big.835.3452:
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
	blt	$a0, $a1, bge_else.17102
	j	itof_big.835.3452
bge_else.17102:
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
	jal	itof_ret_sub.851.2665.3499
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	fmove	$f0, $fv
	flw	$f1, 0($sp)
	fadd	$fv, $f1, $f0
	jr $ra
itof_ret_sub.851.2665.3432:
	sra	$a1, $a0, 1
	li	$a2, 0
	bne	$a0, $a2, beq_else.17103
	fmove	$fv, $f0
	jr $ra
beq_else.17103:
	sub	$a0, $a0, $a1
	sub	$a0, $a0, $a1
	li	$a2, 0
	blt	$a2, $a0, bge_else.17104
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fmul	$f1, $f1, $f2
	move	$a0, $a1
	j	itof_ret_sub.851.2665.3432
bge_else.17104:
	fadd	$f0, $f0, $f1
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fmul	$f1, $f1, $f2
	move	$a0, $a1
	j	itof_ret_sub.851.2665.3432
itof_big.835.3385:
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
	blt	$a0, $a1, bge_else.17105
	j	itof_big.835.3385
bge_else.17105:
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
	jal	itof_ret_sub.851.2665.3432
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	fmove	$f0, $fv
	flw	$f1, 0($sp)
	fadd	$fv, $f1, $f0
	jr $ra
div2like_sub.907.2750.5893.7228:
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fblt	$f0, $f2, fbge_else.17106
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
	j	div2like_sub.907.2750.5893.7228
fbge_else.17106:
	fmove	$fv, $f1
	jr $ra
ftoi_ret_sub.892.2735.7221:
	mtc1	$f1, $zero
	sw	$a1, 0($sp)
	sw	$a0, 4($sp)
	fsw	$f0, 8($sp)
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	div2like_sub.907.2750.5893.7228
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	fmove	$f0, $fv
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	flw	$f2, 8($sp)
	fblt	$f2, $f1, fbge_else.17107
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
	fblt	$f2, $f1, fbge_else.17108
	lw	$a0, 0($sp)
	lw	$a1, 4($sp)
	add	$a1, $a1, $a0
	add	$a0, $a0, $a0
	move	$a25, $a1
	move	$a1, $a0
	move	$a0, $a25
	j	ftoi_ret_sub.892.2735.7221
fbge_else.17108:
	lw	$a0, 0($sp)
	add	$a1, $a0, $a0
	lw	$a0, 4($sp)
	j	ftoi_ret_sub.892.2735.7221
fbge_else.17107:
	lw	$a0, 4($sp)
	move	$v0, $a0
	jr	$ra
ftoi_big.874.7159:
	li	$v0, 19200
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	fsub	$f0, $f0, $f1
	li	$a1, 128
	sll	$a1, $a1, 16
	ori	$a1, $a1, 0
	add	$a0, $a0, $a1
	fblt	$f0, $f1, fbge_else.17109
	j	ftoi_big.874.7159
fbge_else.17109:
	li	$a1, 0
	li	$a2, 1
	sw	$a0, 0($sp)
	move	$a0, $a1
	move	$a1, $a2
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	ftoi_ret_sub.892.2735.7221
	subi	$sp, $sp, 8
	lw	$ra, 4($sp)
	move	$a0, $v0
	lw	$a1, 0($sp)
	add	$v0, $a1, $a0
	jr	$ra
div2like_sub.907.2750.5893.7138:
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fblt	$f0, $f2, fbge_else.17110
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
	j	div2like_sub.907.2750.5893.7138
fbge_else.17110:
	fmove	$fv, $f1
	jr $ra
ftoi_ret_sub.892.2735.7131:
	mtc1	$f1, $zero
	sw	$a1, 0($sp)
	sw	$a0, 4($sp)
	fsw	$f0, 8($sp)
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	div2like_sub.907.2750.5893.7138
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	fmove	$f0, $fv
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	flw	$f2, 8($sp)
	fblt	$f2, $f1, fbge_else.17111
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
	fblt	$f2, $f1, fbge_else.17112
	lw	$a0, 0($sp)
	lw	$a1, 4($sp)
	add	$a1, $a1, $a0
	add	$a0, $a0, $a0
	move	$a25, $a1
	move	$a1, $a0
	move	$a0, $a25
	j	ftoi_ret_sub.892.2735.7131
fbge_else.17112:
	lw	$a0, 0($sp)
	add	$a1, $a0, $a0
	lw	$a0, 4($sp)
	j	ftoi_ret_sub.892.2735.7131
fbge_else.17111:
	lw	$a0, 4($sp)
	move	$v0, $a0
	jr	$ra
ftoi_big.874.7069:
	li	$v0, 19200
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	fsub	$f0, $f0, $f1
	li	$a1, 128
	sll	$a1, $a1, 16
	ori	$a1, $a1, 0
	add	$a0, $a0, $a1
	fblt	$f0, $f1, fbge_else.17113
	j	ftoi_big.874.7069
fbge_else.17113:
	li	$a1, 0
	li	$a2, 1
	sw	$a0, 0($sp)
	move	$a0, $a1
	move	$a1, $a2
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	ftoi_ret_sub.892.2735.7131
	subi	$sp, $sp, 8
	lw	$ra, 4($sp)
	move	$a0, $v0
	lw	$a1, 0($sp)
	add	$v0, $a1, $a0
	jr	$ra
div2like_sub.907.2750.5893.7048:
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fblt	$f0, $f2, fbge_else.17114
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
	j	div2like_sub.907.2750.5893.7048
fbge_else.17114:
	fmove	$fv, $f1
	jr $ra
ftoi_ret_sub.892.2735.7041:
	mtc1	$f1, $zero
	sw	$a1, 0($sp)
	sw	$a0, 4($sp)
	fsw	$f0, 8($sp)
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	div2like_sub.907.2750.5893.7048
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	fmove	$f0, $fv
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	flw	$f2, 8($sp)
	fblt	$f2, $f1, fbge_else.17115
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
	fblt	$f2, $f1, fbge_else.17116
	lw	$a0, 0($sp)
	lw	$a1, 4($sp)
	add	$a1, $a1, $a0
	add	$a0, $a0, $a0
	move	$a25, $a1
	move	$a1, $a0
	move	$a0, $a25
	j	ftoi_ret_sub.892.2735.7041
fbge_else.17116:
	lw	$a0, 0($sp)
	add	$a1, $a0, $a0
	lw	$a0, 4($sp)
	j	ftoi_ret_sub.892.2735.7041
fbge_else.17115:
	lw	$a0, 4($sp)
	move	$v0, $a0
	jr	$ra
ftoi_big.874.6979:
	li	$v0, 19200
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	fsub	$f0, $f0, $f1
	li	$a1, 128
	sll	$a1, $a1, 16
	ori	$a1, $a1, 0
	add	$a0, $a0, $a1
	fblt	$f0, $f1, fbge_else.17117
	j	ftoi_big.874.6979
fbge_else.17117:
	li	$a1, 0
	li	$a2, 1
	sw	$a0, 0($sp)
	move	$a0, $a1
	move	$a1, $a2
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	ftoi_ret_sub.892.2735.7041
	subi	$sp, $sp, 8
	lw	$ra, 4($sp)
	move	$a0, $v0
	lw	$a1, 0($sp)
	add	$v0, $a1, $a0
	jr	$ra
div2like_sub.907.2724.5884.7019:
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fblt	$f0, $f2, fbge_else.17118
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
	j	div2like_sub.907.2724.5884.7019
fbge_else.17118:
	fmove	$fv, $f1
	jr $ra
ftoi_ret_sub.892.2709.7013:
	mtc1	$f1, $zero
	sw	$a1, 0($sp)
	sw	$a0, 4($sp)
	fsw	$f0, 8($sp)
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	div2like_sub.907.2724.5884.7019
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	fmove	$f0, $fv
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	flw	$f2, 8($sp)
	fblt	$f2, $f1, fbge_else.17119
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
	fblt	$f2, $f1, fbge_else.17120
	lw	$a0, 0($sp)
	lw	$a1, 4($sp)
	add	$a1, $a1, $a0
	add	$a0, $a0, $a0
	move	$a25, $a1
	move	$a1, $a0
	move	$a0, $a25
	j	ftoi_ret_sub.892.2709.7013
fbge_else.17120:
	lw	$a0, 0($sp)
	add	$a1, $a0, $a0
	lw	$a0, 4($sp)
	j	ftoi_ret_sub.892.2709.7013
fbge_else.17119:
	lw	$a0, 4($sp)
	move	$v0, $a0
	jr	$ra
div2like_sub.907.2698.5875.7083:
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fblt	$f0, $f2, fbge_else.17121
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
	j	div2like_sub.907.2698.5875.7083
fbge_else.17121:
	fmove	$fv, $f1
	jr $ra
ftoi_ret_sub.892.2683.7076:
	mtc1	$f1, $zero
	sw	$a1, 0($sp)
	sw	$a0, 4($sp)
	fsw	$f0, 8($sp)
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	div2like_sub.907.2698.5875.7083
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	fmove	$f0, $fv
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	flw	$f2, 8($sp)
	fblt	$f2, $f1, fbge_else.17122
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
	fblt	$f2, $f1, fbge_else.17123
	lw	$a0, 0($sp)
	lw	$a1, 4($sp)
	add	$a1, $a1, $a0
	add	$a0, $a0, $a0
	move	$a25, $a1
	move	$a1, $a0
	move	$a0, $a25
	j	ftoi_ret_sub.892.2683.7076
fbge_else.17123:
	lw	$a0, 0($sp)
	add	$a1, $a0, $a0
	lw	$a0, 4($sp)
	j	ftoi_ret_sub.892.2683.7076
fbge_else.17122:
	lw	$a0, 4($sp)
	move	$v0, $a0
	jr	$ra
div2like_sub.907.2724.5884.7109:
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fblt	$f0, $f2, fbge_else.17124
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
	j	div2like_sub.907.2724.5884.7109
fbge_else.17124:
	fmove	$fv, $f1
	jr $ra
ftoi_ret_sub.892.2709.7103:
	mtc1	$f1, $zero
	sw	$a1, 0($sp)
	sw	$a0, 4($sp)
	fsw	$f0, 8($sp)
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	div2like_sub.907.2724.5884.7109
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	fmove	$f0, $fv
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	flw	$f2, 8($sp)
	fblt	$f2, $f1, fbge_else.17125
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
	fblt	$f2, $f1, fbge_else.17126
	lw	$a0, 0($sp)
	lw	$a1, 4($sp)
	add	$a1, $a1, $a0
	add	$a0, $a0, $a0
	move	$a25, $a1
	move	$a1, $a0
	move	$a0, $a25
	j	ftoi_ret_sub.892.2709.7103
fbge_else.17126:
	lw	$a0, 0($sp)
	add	$a1, $a0, $a0
	lw	$a0, 4($sp)
	j	ftoi_ret_sub.892.2709.7103
fbge_else.17125:
	lw	$a0, 4($sp)
	move	$v0, $a0
	jr	$ra
div2like_sub.907.2724.5884.7199:
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fblt	$f0, $f2, fbge_else.17127
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
	j	div2like_sub.907.2724.5884.7199
fbge_else.17127:
	fmove	$fv, $f1
	jr $ra
ftoi_ret_sub.892.2709.7193:
	mtc1	$f1, $zero
	sw	$a1, 0($sp)
	sw	$a0, 4($sp)
	fsw	$f0, 8($sp)
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	div2like_sub.907.2724.5884.7199
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	fmove	$f0, $fv
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	flw	$f2, 8($sp)
	fblt	$f2, $f1, fbge_else.17128
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
	fblt	$f2, $f1, fbge_else.17129
	lw	$a0, 0($sp)
	lw	$a1, 4($sp)
	add	$a1, $a1, $a0
	add	$a0, $a0, $a0
	move	$a25, $a1
	move	$a1, $a0
	move	$a0, $a25
	j	ftoi_ret_sub.892.2709.7193
fbge_else.17129:
	lw	$a0, 0($sp)
	add	$a1, $a0, $a0
	lw	$a0, 4($sp)
	j	ftoi_ret_sub.892.2709.7193
fbge_else.17128:
	lw	$a0, 4($sp)
	move	$v0, $a0
	jr	$ra
itof_ret_sub.851.2633.3392:
	sra	$a1, $a0, 1
	li	$a2, 0
	bne	$a0, $a2, beq_else.17130
	fmove	$fv, $f0
	jr $ra
beq_else.17130:
	sub	$a0, $a0, $a1
	sub	$a0, $a0, $a1
	li	$a2, 0
	blt	$a2, $a0, bge_else.17131
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fmul	$f1, $f1, $f2
	move	$a0, $a1
	j	itof_ret_sub.851.2633.3392
bge_else.17131:
	fadd	$f0, $f0, $f1
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fmul	$f1, $f1, $f2
	move	$a0, $a1
	j	itof_ret_sub.851.2633.3392
itof_ret_sub.851.2649.3411:
	sra	$a1, $a0, 1
	li	$a2, 0
	bne	$a0, $a2, beq_else.17132
	fmove	$fv, $f0
	jr $ra
beq_else.17132:
	sub	$a0, $a0, $a1
	sub	$a0, $a0, $a1
	li	$a2, 0
	blt	$a2, $a0, bge_else.17133
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fmul	$f1, $f1, $f2
	move	$a0, $a1
	j	itof_ret_sub.851.2649.3411
bge_else.17133:
	fadd	$f0, $f0, $f1
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fmul	$f1, $f1, $f2
	move	$a0, $a1
	j	itof_ret_sub.851.2649.3411
itof_ret_sub.851.2633.3459:
	sra	$a1, $a0, 1
	li	$a2, 0
	bne	$a0, $a2, beq_else.17134
	fmove	$fv, $f0
	jr $ra
beq_else.17134:
	sub	$a0, $a0, $a1
	sub	$a0, $a0, $a1
	li	$a2, 0
	blt	$a2, $a0, bge_else.17135
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fmul	$f1, $f1, $f2
	move	$a0, $a1
	j	itof_ret_sub.851.2633.3459
bge_else.17135:
	fadd	$f0, $f0, $f1
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fmul	$f1, $f1, $f2
	move	$a0, $a1
	j	itof_ret_sub.851.2633.3459
itof_ret_sub.851.2649.3478:
	sra	$a1, $a0, 1
	li	$a2, 0
	bne	$a0, $a2, beq_else.17136
	fmove	$fv, $f0
	jr $ra
beq_else.17136:
	sub	$a0, $a0, $a1
	sub	$a0, $a0, $a1
	li	$a2, 0
	blt	$a2, $a0, bge_else.17137
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fmul	$f1, $f1, $f2
	move	$a0, $a1
	j	itof_ret_sub.851.2649.3478
bge_else.17137:
	fadd	$f0, $f0, $f1
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fmul	$f1, $f1, $f2
	move	$a0, $a1
	j	itof_ret_sub.851.2649.3478
itof_ret_sub.851.2665.3644:
	sra	$a1, $a0, 1
	li	$a2, 0
	bne	$a0, $a2, beq_else.17138
	fmove	$fv, $f0
	jr $ra
beq_else.17138:
	sub	$a0, $a0, $a1
	sub	$a0, $a0, $a1
	li	$a2, 0
	blt	$a2, $a0, bge_else.17139
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fmul	$f1, $f1, $f2
	move	$a0, $a1
	j	itof_ret_sub.851.2665.3644
bge_else.17139:
	fadd	$f0, $f0, $f1
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fmul	$f1, $f1, $f2
	move	$a0, $a1
	j	itof_ret_sub.851.2665.3644
itof_big.835.3597:
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
	blt	$a0, $a1, bge_else.17140
	j	itof_big.835.3597
bge_else.17140:
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
	jal	itof_ret_sub.851.2665.3644
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	fmove	$f0, $fv
	flw	$f1, 0($sp)
	fadd	$fv, $f1, $f0
	jr $ra
itof_ret_sub.851.2665.3577:
	sra	$a1, $a0, 1
	li	$a2, 0
	bne	$a0, $a2, beq_else.17141
	fmove	$fv, $f0
	jr $ra
beq_else.17141:
	sub	$a0, $a0, $a1
	sub	$a0, $a0, $a1
	li	$a2, 0
	blt	$a2, $a0, bge_else.17142
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fmul	$f1, $f1, $f2
	move	$a0, $a1
	j	itof_ret_sub.851.2665.3577
bge_else.17142:
	fadd	$f0, $f0, $f1
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fmul	$f1, $f1, $f2
	move	$a0, $a1
	j	itof_ret_sub.851.2665.3577
itof_big.835.3530:
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
	blt	$a0, $a1, bge_else.17143
	j	itof_big.835.3530
bge_else.17143:
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
	jal	itof_ret_sub.851.2665.3577
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	fmove	$f0, $fv
	flw	$f1, 0($sp)
	fadd	$fv, $f1, $f0
	jr $ra
div2like_sub.907.2750.5893.7675:
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fblt	$f0, $f2, fbge_else.17144
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
	j	div2like_sub.907.2750.5893.7675
fbge_else.17144:
	fmove	$fv, $f1
	jr $ra
ftoi_ret_sub.892.2735.7668:
	mtc1	$f1, $zero
	sw	$a1, 0($sp)
	sw	$a0, 4($sp)
	fsw	$f0, 8($sp)
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	div2like_sub.907.2750.5893.7675
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	fmove	$f0, $fv
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	flw	$f2, 8($sp)
	fblt	$f2, $f1, fbge_else.17145
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
	fblt	$f2, $f1, fbge_else.17146
	lw	$a0, 0($sp)
	lw	$a1, 4($sp)
	add	$a1, $a1, $a0
	add	$a0, $a0, $a0
	move	$a25, $a1
	move	$a1, $a0
	move	$a0, $a25
	j	ftoi_ret_sub.892.2735.7668
fbge_else.17146:
	lw	$a0, 0($sp)
	add	$a1, $a0, $a0
	lw	$a0, 4($sp)
	j	ftoi_ret_sub.892.2735.7668
fbge_else.17145:
	lw	$a0, 4($sp)
	move	$v0, $a0
	jr	$ra
ftoi_big.874.7606:
	li	$v0, 19200
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	fsub	$f0, $f0, $f1
	li	$a1, 128
	sll	$a1, $a1, 16
	ori	$a1, $a1, 0
	add	$a0, $a0, $a1
	fblt	$f0, $f1, fbge_else.17147
	j	ftoi_big.874.7606
fbge_else.17147:
	li	$a1, 0
	li	$a2, 1
	sw	$a0, 0($sp)
	move	$a0, $a1
	move	$a1, $a2
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	ftoi_ret_sub.892.2735.7668
	subi	$sp, $sp, 8
	lw	$ra, 4($sp)
	move	$a0, $v0
	lw	$a1, 0($sp)
	add	$v0, $a1, $a0
	jr	$ra
div2like_sub.907.2750.5893.7585:
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fblt	$f0, $f2, fbge_else.17148
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
	j	div2like_sub.907.2750.5893.7585
fbge_else.17148:
	fmove	$fv, $f1
	jr $ra
ftoi_ret_sub.892.2735.7578:
	mtc1	$f1, $zero
	sw	$a1, 0($sp)
	sw	$a0, 4($sp)
	fsw	$f0, 8($sp)
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	div2like_sub.907.2750.5893.7585
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	fmove	$f0, $fv
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	flw	$f2, 8($sp)
	fblt	$f2, $f1, fbge_else.17149
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
	fblt	$f2, $f1, fbge_else.17150
	lw	$a0, 0($sp)
	lw	$a1, 4($sp)
	add	$a1, $a1, $a0
	add	$a0, $a0, $a0
	move	$a25, $a1
	move	$a1, $a0
	move	$a0, $a25
	j	ftoi_ret_sub.892.2735.7578
fbge_else.17150:
	lw	$a0, 0($sp)
	add	$a1, $a0, $a0
	lw	$a0, 4($sp)
	j	ftoi_ret_sub.892.2735.7578
fbge_else.17149:
	lw	$a0, 4($sp)
	move	$v0, $a0
	jr	$ra
ftoi_big.874.7516:
	li	$v0, 19200
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	fsub	$f0, $f0, $f1
	li	$a1, 128
	sll	$a1, $a1, 16
	ori	$a1, $a1, 0
	add	$a0, $a0, $a1
	fblt	$f0, $f1, fbge_else.17151
	j	ftoi_big.874.7516
fbge_else.17151:
	li	$a1, 0
	li	$a2, 1
	sw	$a0, 0($sp)
	move	$a0, $a1
	move	$a1, $a2
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	ftoi_ret_sub.892.2735.7578
	subi	$sp, $sp, 8
	lw	$ra, 4($sp)
	move	$a0, $v0
	lw	$a1, 0($sp)
	add	$v0, $a1, $a0
	jr	$ra
div2like_sub.907.2750.5893.7495:
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fblt	$f0, $f2, fbge_else.17152
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
	j	div2like_sub.907.2750.5893.7495
fbge_else.17152:
	fmove	$fv, $f1
	jr $ra
ftoi_ret_sub.892.2735.7488:
	mtc1	$f1, $zero
	sw	$a1, 0($sp)
	sw	$a0, 4($sp)
	fsw	$f0, 8($sp)
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	div2like_sub.907.2750.5893.7495
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	fmove	$f0, $fv
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	flw	$f2, 8($sp)
	fblt	$f2, $f1, fbge_else.17153
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
	fblt	$f2, $f1, fbge_else.17154
	lw	$a0, 0($sp)
	lw	$a1, 4($sp)
	add	$a1, $a1, $a0
	add	$a0, $a0, $a0
	move	$a25, $a1
	move	$a1, $a0
	move	$a0, $a25
	j	ftoi_ret_sub.892.2735.7488
fbge_else.17154:
	lw	$a0, 0($sp)
	add	$a1, $a0, $a0
	lw	$a0, 4($sp)
	j	ftoi_ret_sub.892.2735.7488
fbge_else.17153:
	lw	$a0, 4($sp)
	move	$v0, $a0
	jr	$ra
ftoi_big.874.7426:
	li	$v0, 19200
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	fsub	$f0, $f0, $f1
	li	$a1, 128
	sll	$a1, $a1, 16
	ori	$a1, $a1, 0
	add	$a0, $a0, $a1
	fblt	$f0, $f1, fbge_else.17155
	j	ftoi_big.874.7426
fbge_else.17155:
	li	$a1, 0
	li	$a2, 1
	sw	$a0, 0($sp)
	move	$a0, $a1
	move	$a1, $a2
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	ftoi_ret_sub.892.2735.7488
	subi	$sp, $sp, 8
	lw	$ra, 4($sp)
	move	$a0, $v0
	lw	$a1, 0($sp)
	add	$v0, $a1, $a0
	jr	$ra
div2like_sub.907.2698.5875.7440:
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fblt	$f0, $f2, fbge_else.17156
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
	j	div2like_sub.907.2698.5875.7440
fbge_else.17156:
	fmove	$fv, $f1
	jr $ra
ftoi_ret_sub.892.2683.7433:
	mtc1	$f1, $zero
	sw	$a1, 0($sp)
	sw	$a0, 4($sp)
	fsw	$f0, 8($sp)
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	div2like_sub.907.2698.5875.7440
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	fmove	$f0, $fv
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	flw	$f2, 8($sp)
	fblt	$f2, $f1, fbge_else.17157
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
	fblt	$f2, $f1, fbge_else.17158
	lw	$a0, 0($sp)
	lw	$a1, 4($sp)
	add	$a1, $a1, $a0
	add	$a0, $a0, $a0
	move	$a25, $a1
	move	$a1, $a0
	move	$a0, $a25
	j	ftoi_ret_sub.892.2683.7433
fbge_else.17158:
	lw	$a0, 0($sp)
	add	$a1, $a0, $a0
	lw	$a0, 4($sp)
	j	ftoi_ret_sub.892.2683.7433
fbge_else.17157:
	lw	$a0, 4($sp)
	move	$v0, $a0
	jr	$ra
div2like_sub.907.2724.5884.7466:
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fblt	$f0, $f2, fbge_else.17159
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
	j	div2like_sub.907.2724.5884.7466
fbge_else.17159:
	fmove	$fv, $f1
	jr $ra
ftoi_ret_sub.892.2709.7460:
	mtc1	$f1, $zero
	sw	$a1, 0($sp)
	sw	$a0, 4($sp)
	fsw	$f0, 8($sp)
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	div2like_sub.907.2724.5884.7466
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	fmove	$f0, $fv
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	flw	$f2, 8($sp)
	fblt	$f2, $f1, fbge_else.17160
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
	fblt	$f2, $f1, fbge_else.17161
	lw	$a0, 0($sp)
	lw	$a1, 4($sp)
	add	$a1, $a1, $a0
	add	$a0, $a0, $a0
	move	$a25, $a1
	move	$a1, $a0
	move	$a0, $a25
	j	ftoi_ret_sub.892.2709.7460
fbge_else.17161:
	lw	$a0, 0($sp)
	add	$a1, $a0, $a0
	lw	$a0, 4($sp)
	j	ftoi_ret_sub.892.2709.7460
fbge_else.17160:
	lw	$a0, 4($sp)
	move	$v0, $a0
	jr	$ra
div2like_sub.907.2724.5884.7556:
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fblt	$f0, $f2, fbge_else.17162
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
	j	div2like_sub.907.2724.5884.7556
fbge_else.17162:
	fmove	$fv, $f1
	jr $ra
ftoi_ret_sub.892.2709.7550:
	mtc1	$f1, $zero
	sw	$a1, 0($sp)
	sw	$a0, 4($sp)
	fsw	$f0, 8($sp)
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	div2like_sub.907.2724.5884.7556
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	fmove	$f0, $fv
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	flw	$f2, 8($sp)
	fblt	$f2, $f1, fbge_else.17163
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
	fblt	$f2, $f1, fbge_else.17164
	lw	$a0, 0($sp)
	lw	$a1, 4($sp)
	add	$a1, $a1, $a0
	add	$a0, $a0, $a0
	move	$a25, $a1
	move	$a1, $a0
	move	$a0, $a25
	j	ftoi_ret_sub.892.2709.7550
fbge_else.17164:
	lw	$a0, 0($sp)
	add	$a1, $a0, $a0
	lw	$a0, 4($sp)
	j	ftoi_ret_sub.892.2709.7550
fbge_else.17163:
	lw	$a0, 4($sp)
	move	$v0, $a0
	jr	$ra
div2like_sub.907.2724.5884.7646:
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fblt	$f0, $f2, fbge_else.17165
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
	j	div2like_sub.907.2724.5884.7646
fbge_else.17165:
	fmove	$fv, $f1
	jr $ra
ftoi_ret_sub.892.2709.7640:
	mtc1	$f1, $zero
	sw	$a1, 0($sp)
	sw	$a0, 4($sp)
	fsw	$f0, 8($sp)
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	div2like_sub.907.2724.5884.7646
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	fmove	$f0, $fv
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	flw	$f2, 8($sp)
	fblt	$f2, $f1, fbge_else.17166
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
	fblt	$f2, $f1, fbge_else.17167
	lw	$a0, 0($sp)
	lw	$a1, 4($sp)
	add	$a1, $a1, $a0
	add	$a0, $a0, $a0
	move	$a25, $a1
	move	$a1, $a0
	move	$a0, $a25
	j	ftoi_ret_sub.892.2709.7640
fbge_else.17167:
	lw	$a0, 0($sp)
	add	$a1, $a0, $a0
	lw	$a0, 4($sp)
	j	ftoi_ret_sub.892.2709.7640
fbge_else.17166:
	lw	$a0, 4($sp)
	move	$v0, $a0
	jr	$ra
itof_ret_sub.851.2633.3537:
	sra	$a1, $a0, 1
	li	$a2, 0
	bne	$a0, $a2, beq_else.17168
	fmove	$fv, $f0
	jr $ra
beq_else.17168:
	sub	$a0, $a0, $a1
	sub	$a0, $a0, $a1
	li	$a2, 0
	blt	$a2, $a0, bge_else.17169
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fmul	$f1, $f1, $f2
	move	$a0, $a1
	j	itof_ret_sub.851.2633.3537
bge_else.17169:
	fadd	$f0, $f0, $f1
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fmul	$f1, $f1, $f2
	move	$a0, $a1
	j	itof_ret_sub.851.2633.3537
itof_ret_sub.851.2649.3556:
	sra	$a1, $a0, 1
	li	$a2, 0
	bne	$a0, $a2, beq_else.17170
	fmove	$fv, $f0
	jr $ra
beq_else.17170:
	sub	$a0, $a0, $a1
	sub	$a0, $a0, $a1
	li	$a2, 0
	blt	$a2, $a0, bge_else.17171
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fmul	$f1, $f1, $f2
	move	$a0, $a1
	j	itof_ret_sub.851.2649.3556
bge_else.17171:
	fadd	$f0, $f0, $f1
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fmul	$f1, $f1, $f2
	move	$a0, $a1
	j	itof_ret_sub.851.2649.3556
itof_ret_sub.851.2633.3604:
	sra	$a1, $a0, 1
	li	$a2, 0
	bne	$a0, $a2, beq_else.17172
	fmove	$fv, $f0
	jr $ra
beq_else.17172:
	sub	$a0, $a0, $a1
	sub	$a0, $a0, $a1
	li	$a2, 0
	blt	$a2, $a0, bge_else.17173
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fmul	$f1, $f1, $f2
	move	$a0, $a1
	j	itof_ret_sub.851.2633.3604
bge_else.17173:
	fadd	$f0, $f0, $f1
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fmul	$f1, $f1, $f2
	move	$a0, $a1
	j	itof_ret_sub.851.2633.3604
itof_ret_sub.851.2649.3623:
	sra	$a1, $a0, 1
	li	$a2, 0
	bne	$a0, $a2, beq_else.17174
	fmove	$fv, $f0
	jr $ra
beq_else.17174:
	sub	$a0, $a0, $a1
	sub	$a0, $a0, $a1
	li	$a2, 0
	blt	$a2, $a0, bge_else.17175
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fmul	$f1, $f1, $f2
	move	$a0, $a1
	j	itof_ret_sub.851.2649.3623
bge_else.17175:
	fadd	$f0, $f0, $f1
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fmul	$f1, $f1, $f2
	move	$a0, $a1
	j	itof_ret_sub.851.2649.3623
itof_ret_sub.851.2665.3789:
	sra	$a1, $a0, 1
	li	$a2, 0
	bne	$a0, $a2, beq_else.17176
	fmove	$fv, $f0
	jr $ra
beq_else.17176:
	sub	$a0, $a0, $a1
	sub	$a0, $a0, $a1
	li	$a2, 0
	blt	$a2, $a0, bge_else.17177
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fmul	$f1, $f1, $f2
	move	$a0, $a1
	j	itof_ret_sub.851.2665.3789
bge_else.17177:
	fadd	$f0, $f0, $f1
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fmul	$f1, $f1, $f2
	move	$a0, $a1
	j	itof_ret_sub.851.2665.3789
itof_big.835.3742:
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
	blt	$a0, $a1, bge_else.17178
	j	itof_big.835.3742
bge_else.17178:
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
	jal	itof_ret_sub.851.2665.3789
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	fmove	$f0, $fv
	flw	$f1, 0($sp)
	fadd	$fv, $f1, $f0
	jr $ra
itof_ret_sub.851.2665.3722:
	sra	$a1, $a0, 1
	li	$a2, 0
	bne	$a0, $a2, beq_else.17179
	fmove	$fv, $f0
	jr $ra
beq_else.17179:
	sub	$a0, $a0, $a1
	sub	$a0, $a0, $a1
	li	$a2, 0
	blt	$a2, $a0, bge_else.17180
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fmul	$f1, $f1, $f2
	move	$a0, $a1
	j	itof_ret_sub.851.2665.3722
bge_else.17180:
	fadd	$f0, $f0, $f1
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fmul	$f1, $f1, $f2
	move	$a0, $a1
	j	itof_ret_sub.851.2665.3722
itof_big.835.3675:
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
	blt	$a0, $a1, bge_else.17181
	j	itof_big.835.3675
bge_else.17181:
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
	jal	itof_ret_sub.851.2665.3722
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	fmove	$f0, $fv
	flw	$f1, 0($sp)
	fadd	$fv, $f1, $f0
	jr $ra
div2like_sub.907.2750.5893.8122:
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fblt	$f0, $f2, fbge_else.17182
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
	j	div2like_sub.907.2750.5893.8122
fbge_else.17182:
	fmove	$fv, $f1
	jr $ra
ftoi_ret_sub.892.2735.8115:
	mtc1	$f1, $zero
	sw	$a1, 0($sp)
	sw	$a0, 4($sp)
	fsw	$f0, 8($sp)
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	div2like_sub.907.2750.5893.8122
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	fmove	$f0, $fv
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	flw	$f2, 8($sp)
	fblt	$f2, $f1, fbge_else.17183
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
	fblt	$f2, $f1, fbge_else.17184
	lw	$a0, 0($sp)
	lw	$a1, 4($sp)
	add	$a1, $a1, $a0
	add	$a0, $a0, $a0
	move	$a25, $a1
	move	$a1, $a0
	move	$a0, $a25
	j	ftoi_ret_sub.892.2735.8115
fbge_else.17184:
	lw	$a0, 0($sp)
	add	$a1, $a0, $a0
	lw	$a0, 4($sp)
	j	ftoi_ret_sub.892.2735.8115
fbge_else.17183:
	lw	$a0, 4($sp)
	move	$v0, $a0
	jr	$ra
ftoi_big.874.8053:
	li	$v0, 19200
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	fsub	$f0, $f0, $f1
	li	$a1, 128
	sll	$a1, $a1, 16
	ori	$a1, $a1, 0
	add	$a0, $a0, $a1
	fblt	$f0, $f1, fbge_else.17185
	j	ftoi_big.874.8053
fbge_else.17185:
	li	$a1, 0
	li	$a2, 1
	sw	$a0, 0($sp)
	move	$a0, $a1
	move	$a1, $a2
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	ftoi_ret_sub.892.2735.8115
	subi	$sp, $sp, 8
	lw	$ra, 4($sp)
	move	$a0, $v0
	lw	$a1, 0($sp)
	add	$v0, $a1, $a0
	jr	$ra
div2like_sub.907.2750.5893.8032:
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fblt	$f0, $f2, fbge_else.17186
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
	j	div2like_sub.907.2750.5893.8032
fbge_else.17186:
	fmove	$fv, $f1
	jr $ra
ftoi_ret_sub.892.2735.8025:
	mtc1	$f1, $zero
	sw	$a1, 0($sp)
	sw	$a0, 4($sp)
	fsw	$f0, 8($sp)
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	div2like_sub.907.2750.5893.8032
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	fmove	$f0, $fv
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	flw	$f2, 8($sp)
	fblt	$f2, $f1, fbge_else.17187
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
	fblt	$f2, $f1, fbge_else.17188
	lw	$a0, 0($sp)
	lw	$a1, 4($sp)
	add	$a1, $a1, $a0
	add	$a0, $a0, $a0
	move	$a25, $a1
	move	$a1, $a0
	move	$a0, $a25
	j	ftoi_ret_sub.892.2735.8025
fbge_else.17188:
	lw	$a0, 0($sp)
	add	$a1, $a0, $a0
	lw	$a0, 4($sp)
	j	ftoi_ret_sub.892.2735.8025
fbge_else.17187:
	lw	$a0, 4($sp)
	move	$v0, $a0
	jr	$ra
ftoi_big.874.7963:
	li	$v0, 19200
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	fsub	$f0, $f0, $f1
	li	$a1, 128
	sll	$a1, $a1, 16
	ori	$a1, $a1, 0
	add	$a0, $a0, $a1
	fblt	$f0, $f1, fbge_else.17189
	j	ftoi_big.874.7963
fbge_else.17189:
	li	$a1, 0
	li	$a2, 1
	sw	$a0, 0($sp)
	move	$a0, $a1
	move	$a1, $a2
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	ftoi_ret_sub.892.2735.8025
	subi	$sp, $sp, 8
	lw	$ra, 4($sp)
	move	$a0, $v0
	lw	$a1, 0($sp)
	add	$v0, $a1, $a0
	jr	$ra
div2like_sub.907.2750.5893.7942:
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fblt	$f0, $f2, fbge_else.17190
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
	j	div2like_sub.907.2750.5893.7942
fbge_else.17190:
	fmove	$fv, $f1
	jr $ra
ftoi_ret_sub.892.2735.7935:
	mtc1	$f1, $zero
	sw	$a1, 0($sp)
	sw	$a0, 4($sp)
	fsw	$f0, 8($sp)
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	div2like_sub.907.2750.5893.7942
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	fmove	$f0, $fv
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	flw	$f2, 8($sp)
	fblt	$f2, $f1, fbge_else.17191
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
	fblt	$f2, $f1, fbge_else.17192
	lw	$a0, 0($sp)
	lw	$a1, 4($sp)
	add	$a1, $a1, $a0
	add	$a0, $a0, $a0
	move	$a25, $a1
	move	$a1, $a0
	move	$a0, $a25
	j	ftoi_ret_sub.892.2735.7935
fbge_else.17192:
	lw	$a0, 0($sp)
	add	$a1, $a0, $a0
	lw	$a0, 4($sp)
	j	ftoi_ret_sub.892.2735.7935
fbge_else.17191:
	lw	$a0, 4($sp)
	move	$v0, $a0
	jr	$ra
ftoi_big.874.7873:
	li	$v0, 19200
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	fsub	$f0, $f0, $f1
	li	$a1, 128
	sll	$a1, $a1, 16
	ori	$a1, $a1, 0
	add	$a0, $a0, $a1
	fblt	$f0, $f1, fbge_else.17193
	j	ftoi_big.874.7873
fbge_else.17193:
	li	$a1, 0
	li	$a2, 1
	sw	$a0, 0($sp)
	move	$a0, $a1
	move	$a1, $a2
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	ftoi_ret_sub.892.2735.7935
	subi	$sp, $sp, 8
	lw	$ra, 4($sp)
	move	$a0, $v0
	lw	$a1, 0($sp)
	add	$v0, $a1, $a0
	jr	$ra
div2like_sub.907.2724.5884.7913:
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fblt	$f0, $f2, fbge_else.17194
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
	j	div2like_sub.907.2724.5884.7913
fbge_else.17194:
	fmove	$fv, $f1
	jr $ra
ftoi_ret_sub.892.2709.7907:
	mtc1	$f1, $zero
	sw	$a1, 0($sp)
	sw	$a0, 4($sp)
	fsw	$f0, 8($sp)
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	div2like_sub.907.2724.5884.7913
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	fmove	$f0, $fv
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	flw	$f2, 8($sp)
	fblt	$f2, $f1, fbge_else.17195
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
	fblt	$f2, $f1, fbge_else.17196
	lw	$a0, 0($sp)
	lw	$a1, 4($sp)
	add	$a1, $a1, $a0
	add	$a0, $a0, $a0
	move	$a25, $a1
	move	$a1, $a0
	move	$a0, $a25
	j	ftoi_ret_sub.892.2709.7907
fbge_else.17196:
	lw	$a0, 0($sp)
	add	$a1, $a0, $a0
	lw	$a0, 4($sp)
	j	ftoi_ret_sub.892.2709.7907
fbge_else.17195:
	lw	$a0, 4($sp)
	move	$v0, $a0
	jr	$ra
div2like_sub.907.2724.5884.8003:
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fblt	$f0, $f2, fbge_else.17197
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
	j	div2like_sub.907.2724.5884.8003
fbge_else.17197:
	fmove	$fv, $f1
	jr $ra
ftoi_ret_sub.892.2709.7997:
	mtc1	$f1, $zero
	sw	$a1, 0($sp)
	sw	$a0, 4($sp)
	fsw	$f0, 8($sp)
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	div2like_sub.907.2724.5884.8003
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	fmove	$f0, $fv
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	flw	$f2, 8($sp)
	fblt	$f2, $f1, fbge_else.17198
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
	fblt	$f2, $f1, fbge_else.17199
	lw	$a0, 0($sp)
	lw	$a1, 4($sp)
	add	$a1, $a1, $a0
	add	$a0, $a0, $a0
	move	$a25, $a1
	move	$a1, $a0
	move	$a0, $a25
	j	ftoi_ret_sub.892.2709.7997
fbge_else.17199:
	lw	$a0, 0($sp)
	add	$a1, $a0, $a0
	lw	$a0, 4($sp)
	j	ftoi_ret_sub.892.2709.7997
fbge_else.17198:
	lw	$a0, 4($sp)
	move	$v0, $a0
	jr	$ra
div2like_sub.907.2698.5875.8067:
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fblt	$f0, $f2, fbge_else.17200
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
	j	div2like_sub.907.2698.5875.8067
fbge_else.17200:
	fmove	$fv, $f1
	jr $ra
ftoi_ret_sub.892.2683.8060:
	mtc1	$f1, $zero
	sw	$a1, 0($sp)
	sw	$a0, 4($sp)
	fsw	$f0, 8($sp)
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	div2like_sub.907.2698.5875.8067
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	fmove	$f0, $fv
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	flw	$f2, 8($sp)
	fblt	$f2, $f1, fbge_else.17201
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
	fblt	$f2, $f1, fbge_else.17202
	lw	$a0, 0($sp)
	lw	$a1, 4($sp)
	add	$a1, $a1, $a0
	add	$a0, $a0, $a0
	move	$a25, $a1
	move	$a1, $a0
	move	$a0, $a25
	j	ftoi_ret_sub.892.2683.8060
fbge_else.17202:
	lw	$a0, 0($sp)
	add	$a1, $a0, $a0
	lw	$a0, 4($sp)
	j	ftoi_ret_sub.892.2683.8060
fbge_else.17201:
	lw	$a0, 4($sp)
	move	$v0, $a0
	jr	$ra
div2like_sub.907.2724.5884.8093:
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fblt	$f0, $f2, fbge_else.17203
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
	j	div2like_sub.907.2724.5884.8093
fbge_else.17203:
	fmove	$fv, $f1
	jr $ra
ftoi_ret_sub.892.2709.8087:
	mtc1	$f1, $zero
	sw	$a1, 0($sp)
	sw	$a0, 4($sp)
	fsw	$f0, 8($sp)
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	div2like_sub.907.2724.5884.8093
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	fmove	$f0, $fv
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	flw	$f2, 8($sp)
	fblt	$f2, $f1, fbge_else.17204
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
	fblt	$f2, $f1, fbge_else.17205
	lw	$a0, 0($sp)
	lw	$a1, 4($sp)
	add	$a1, $a1, $a0
	add	$a0, $a0, $a0
	move	$a25, $a1
	move	$a1, $a0
	move	$a0, $a25
	j	ftoi_ret_sub.892.2709.8087
fbge_else.17205:
	lw	$a0, 0($sp)
	add	$a1, $a0, $a0
	lw	$a0, 4($sp)
	j	ftoi_ret_sub.892.2709.8087
fbge_else.17204:
	lw	$a0, 4($sp)
	move	$v0, $a0
	jr	$ra
itof_ret_sub.851.2633.3682:
	sra	$a1, $a0, 1
	li	$a2, 0
	bne	$a0, $a2, beq_else.17206
	fmove	$fv, $f0
	jr $ra
beq_else.17206:
	sub	$a0, $a0, $a1
	sub	$a0, $a0, $a1
	li	$a2, 0
	blt	$a2, $a0, bge_else.17207
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fmul	$f1, $f1, $f2
	move	$a0, $a1
	j	itof_ret_sub.851.2633.3682
bge_else.17207:
	fadd	$f0, $f0, $f1
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fmul	$f1, $f1, $f2
	move	$a0, $a1
	j	itof_ret_sub.851.2633.3682
itof_ret_sub.851.2649.3701:
	sra	$a1, $a0, 1
	li	$a2, 0
	bne	$a0, $a2, beq_else.17208
	fmove	$fv, $f0
	jr $ra
beq_else.17208:
	sub	$a0, $a0, $a1
	sub	$a0, $a0, $a1
	li	$a2, 0
	blt	$a2, $a0, bge_else.17209
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fmul	$f1, $f1, $f2
	move	$a0, $a1
	j	itof_ret_sub.851.2649.3701
bge_else.17209:
	fadd	$f0, $f0, $f1
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fmul	$f1, $f1, $f2
	move	$a0, $a1
	j	itof_ret_sub.851.2649.3701
itof_ret_sub.851.2633.3749:
	sra	$a1, $a0, 1
	li	$a2, 0
	bne	$a0, $a2, beq_else.17210
	fmove	$fv, $f0
	jr $ra
beq_else.17210:
	sub	$a0, $a0, $a1
	sub	$a0, $a0, $a1
	li	$a2, 0
	blt	$a2, $a0, bge_else.17211
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fmul	$f1, $f1, $f2
	move	$a0, $a1
	j	itof_ret_sub.851.2633.3749
bge_else.17211:
	fadd	$f0, $f0, $f1
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fmul	$f1, $f1, $f2
	move	$a0, $a1
	j	itof_ret_sub.851.2633.3749
itof_ret_sub.851.2649.3768:
	sra	$a1, $a0, 1
	li	$a2, 0
	bne	$a0, $a2, beq_else.17212
	fmove	$fv, $f0
	jr $ra
beq_else.17212:
	sub	$a0, $a0, $a1
	sub	$a0, $a0, $a1
	li	$a2, 0
	blt	$a2, $a0, bge_else.17213
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fmul	$f1, $f1, $f2
	move	$a0, $a1
	j	itof_ret_sub.851.2649.3768
bge_else.17213:
	fadd	$f0, $f0, $f1
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fmul	$f1, $f1, $f2
	move	$a0, $a1
	j	itof_ret_sub.851.2649.3768
itof_ret_sub.851.2665.3934:
	sra	$a1, $a0, 1
	li	$a2, 0
	bne	$a0, $a2, beq_else.17214
	fmove	$fv, $f0
	jr $ra
beq_else.17214:
	sub	$a0, $a0, $a1
	sub	$a0, $a0, $a1
	li	$a2, 0
	blt	$a2, $a0, bge_else.17215
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fmul	$f1, $f1, $f2
	move	$a0, $a1
	j	itof_ret_sub.851.2665.3934
bge_else.17215:
	fadd	$f0, $f0, $f1
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fmul	$f1, $f1, $f2
	move	$a0, $a1
	j	itof_ret_sub.851.2665.3934
itof_big.835.3887:
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
	blt	$a0, $a1, bge_else.17216
	j	itof_big.835.3887
bge_else.17216:
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
	jal	itof_ret_sub.851.2665.3934
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	fmove	$f0, $fv
	flw	$f1, 0($sp)
	fadd	$fv, $f1, $f0
	jr $ra
itof_ret_sub.851.2665.3867:
	sra	$a1, $a0, 1
	li	$a2, 0
	bne	$a0, $a2, beq_else.17217
	fmove	$fv, $f0
	jr $ra
beq_else.17217:
	sub	$a0, $a0, $a1
	sub	$a0, $a0, $a1
	li	$a2, 0
	blt	$a2, $a0, bge_else.17218
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fmul	$f1, $f1, $f2
	move	$a0, $a1
	j	itof_ret_sub.851.2665.3867
bge_else.17218:
	fadd	$f0, $f0, $f1
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fmul	$f1, $f1, $f2
	move	$a0, $a1
	j	itof_ret_sub.851.2665.3867
itof_big.835.3820:
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
	blt	$a0, $a1, bge_else.17219
	j	itof_big.835.3820
bge_else.17219:
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
	jal	itof_ret_sub.851.2665.3867
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	fmove	$f0, $fv
	flw	$f1, 0($sp)
	fadd	$fv, $f1, $f0
	jr $ra
div2like_sub.907.2750.5893.8569:
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fblt	$f0, $f2, fbge_else.17220
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
	j	div2like_sub.907.2750.5893.8569
fbge_else.17220:
	fmove	$fv, $f1
	jr $ra
ftoi_ret_sub.892.2735.8562:
	mtc1	$f1, $zero
	sw	$a1, 0($sp)
	sw	$a0, 4($sp)
	fsw	$f0, 8($sp)
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	div2like_sub.907.2750.5893.8569
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	fmove	$f0, $fv
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	flw	$f2, 8($sp)
	fblt	$f2, $f1, fbge_else.17221
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
	fblt	$f2, $f1, fbge_else.17222
	lw	$a0, 0($sp)
	lw	$a1, 4($sp)
	add	$a1, $a1, $a0
	add	$a0, $a0, $a0
	move	$a25, $a1
	move	$a1, $a0
	move	$a0, $a25
	j	ftoi_ret_sub.892.2735.8562
fbge_else.17222:
	lw	$a0, 0($sp)
	add	$a1, $a0, $a0
	lw	$a0, 4($sp)
	j	ftoi_ret_sub.892.2735.8562
fbge_else.17221:
	lw	$a0, 4($sp)
	move	$v0, $a0
	jr	$ra
ftoi_big.874.8500:
	li	$v0, 19200
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	fsub	$f0, $f0, $f1
	li	$a1, 128
	sll	$a1, $a1, 16
	ori	$a1, $a1, 0
	add	$a0, $a0, $a1
	fblt	$f0, $f1, fbge_else.17223
	j	ftoi_big.874.8500
fbge_else.17223:
	li	$a1, 0
	li	$a2, 1
	sw	$a0, 0($sp)
	move	$a0, $a1
	move	$a1, $a2
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	ftoi_ret_sub.892.2735.8562
	subi	$sp, $sp, 8
	lw	$ra, 4($sp)
	move	$a0, $v0
	lw	$a1, 0($sp)
	add	$v0, $a1, $a0
	jr	$ra
div2like_sub.907.2750.5893.8479:
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fblt	$f0, $f2, fbge_else.17224
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
	j	div2like_sub.907.2750.5893.8479
fbge_else.17224:
	fmove	$fv, $f1
	jr $ra
ftoi_ret_sub.892.2735.8472:
	mtc1	$f1, $zero
	sw	$a1, 0($sp)
	sw	$a0, 4($sp)
	fsw	$f0, 8($sp)
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	div2like_sub.907.2750.5893.8479
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	fmove	$f0, $fv
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	flw	$f2, 8($sp)
	fblt	$f2, $f1, fbge_else.17225
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
	fblt	$f2, $f1, fbge_else.17226
	lw	$a0, 0($sp)
	lw	$a1, 4($sp)
	add	$a1, $a1, $a0
	add	$a0, $a0, $a0
	move	$a25, $a1
	move	$a1, $a0
	move	$a0, $a25
	j	ftoi_ret_sub.892.2735.8472
fbge_else.17226:
	lw	$a0, 0($sp)
	add	$a1, $a0, $a0
	lw	$a0, 4($sp)
	j	ftoi_ret_sub.892.2735.8472
fbge_else.17225:
	lw	$a0, 4($sp)
	move	$v0, $a0
	jr	$ra
ftoi_big.874.8410:
	li	$v0, 19200
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	fsub	$f0, $f0, $f1
	li	$a1, 128
	sll	$a1, $a1, 16
	ori	$a1, $a1, 0
	add	$a0, $a0, $a1
	fblt	$f0, $f1, fbge_else.17227
	j	ftoi_big.874.8410
fbge_else.17227:
	li	$a1, 0
	li	$a2, 1
	sw	$a0, 0($sp)
	move	$a0, $a1
	move	$a1, $a2
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	ftoi_ret_sub.892.2735.8472
	subi	$sp, $sp, 8
	lw	$ra, 4($sp)
	move	$a0, $v0
	lw	$a1, 0($sp)
	add	$v0, $a1, $a0
	jr	$ra
div2like_sub.907.2750.5893.8389:
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fblt	$f0, $f2, fbge_else.17228
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
	j	div2like_sub.907.2750.5893.8389
fbge_else.17228:
	fmove	$fv, $f1
	jr $ra
ftoi_ret_sub.892.2735.8382:
	mtc1	$f1, $zero
	sw	$a1, 0($sp)
	sw	$a0, 4($sp)
	fsw	$f0, 8($sp)
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	div2like_sub.907.2750.5893.8389
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	fmove	$f0, $fv
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	flw	$f2, 8($sp)
	fblt	$f2, $f1, fbge_else.17229
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
	fblt	$f2, $f1, fbge_else.17230
	lw	$a0, 0($sp)
	lw	$a1, 4($sp)
	add	$a1, $a1, $a0
	add	$a0, $a0, $a0
	move	$a25, $a1
	move	$a1, $a0
	move	$a0, $a25
	j	ftoi_ret_sub.892.2735.8382
fbge_else.17230:
	lw	$a0, 0($sp)
	add	$a1, $a0, $a0
	lw	$a0, 4($sp)
	j	ftoi_ret_sub.892.2735.8382
fbge_else.17229:
	lw	$a0, 4($sp)
	move	$v0, $a0
	jr	$ra
ftoi_big.874.8320:
	li	$v0, 19200
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	fsub	$f0, $f0, $f1
	li	$a1, 128
	sll	$a1, $a1, 16
	ori	$a1, $a1, 0
	add	$a0, $a0, $a1
	fblt	$f0, $f1, fbge_else.17231
	j	ftoi_big.874.8320
fbge_else.17231:
	li	$a1, 0
	li	$a2, 1
	sw	$a0, 0($sp)
	move	$a0, $a1
	move	$a1, $a2
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	ftoi_ret_sub.892.2735.8382
	subi	$sp, $sp, 8
	lw	$ra, 4($sp)
	move	$a0, $v0
	lw	$a1, 0($sp)
	add	$v0, $a1, $a0
	jr	$ra
div2like_sub.907.2724.5884.8360:
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fblt	$f0, $f2, fbge_else.17232
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
	j	div2like_sub.907.2724.5884.8360
fbge_else.17232:
	fmove	$fv, $f1
	jr $ra
ftoi_ret_sub.892.2709.8354:
	mtc1	$f1, $zero
	sw	$a1, 0($sp)
	sw	$a0, 4($sp)
	fsw	$f0, 8($sp)
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	div2like_sub.907.2724.5884.8360
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	fmove	$f0, $fv
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	flw	$f2, 8($sp)
	fblt	$f2, $f1, fbge_else.17233
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
	fblt	$f2, $f1, fbge_else.17234
	lw	$a0, 0($sp)
	lw	$a1, 4($sp)
	add	$a1, $a1, $a0
	add	$a0, $a0, $a0
	move	$a25, $a1
	move	$a1, $a0
	move	$a0, $a25
	j	ftoi_ret_sub.892.2709.8354
fbge_else.17234:
	lw	$a0, 0($sp)
	add	$a1, $a0, $a0
	lw	$a0, 4($sp)
	j	ftoi_ret_sub.892.2709.8354
fbge_else.17233:
	lw	$a0, 4($sp)
	move	$v0, $a0
	jr	$ra
div2like_sub.907.2698.5875.8424:
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fblt	$f0, $f2, fbge_else.17235
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
	j	div2like_sub.907.2698.5875.8424
fbge_else.17235:
	fmove	$fv, $f1
	jr $ra
ftoi_ret_sub.892.2683.8417:
	mtc1	$f1, $zero
	sw	$a1, 0($sp)
	sw	$a0, 4($sp)
	fsw	$f0, 8($sp)
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	div2like_sub.907.2698.5875.8424
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	fmove	$f0, $fv
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	flw	$f2, 8($sp)
	fblt	$f2, $f1, fbge_else.17236
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
	fblt	$f2, $f1, fbge_else.17237
	lw	$a0, 0($sp)
	lw	$a1, 4($sp)
	add	$a1, $a1, $a0
	add	$a0, $a0, $a0
	move	$a25, $a1
	move	$a1, $a0
	move	$a0, $a25
	j	ftoi_ret_sub.892.2683.8417
fbge_else.17237:
	lw	$a0, 0($sp)
	add	$a1, $a0, $a0
	lw	$a0, 4($sp)
	j	ftoi_ret_sub.892.2683.8417
fbge_else.17236:
	lw	$a0, 4($sp)
	move	$v0, $a0
	jr	$ra
div2like_sub.907.2724.5884.8450:
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fblt	$f0, $f2, fbge_else.17238
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
	j	div2like_sub.907.2724.5884.8450
fbge_else.17238:
	fmove	$fv, $f1
	jr $ra
ftoi_ret_sub.892.2709.8444:
	mtc1	$f1, $zero
	sw	$a1, 0($sp)
	sw	$a0, 4($sp)
	fsw	$f0, 8($sp)
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	div2like_sub.907.2724.5884.8450
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	fmove	$f0, $fv
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	flw	$f2, 8($sp)
	fblt	$f2, $f1, fbge_else.17239
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
	fblt	$f2, $f1, fbge_else.17240
	lw	$a0, 0($sp)
	lw	$a1, 4($sp)
	add	$a1, $a1, $a0
	add	$a0, $a0, $a0
	move	$a25, $a1
	move	$a1, $a0
	move	$a0, $a25
	j	ftoi_ret_sub.892.2709.8444
fbge_else.17240:
	lw	$a0, 0($sp)
	add	$a1, $a0, $a0
	lw	$a0, 4($sp)
	j	ftoi_ret_sub.892.2709.8444
fbge_else.17239:
	lw	$a0, 4($sp)
	move	$v0, $a0
	jr	$ra
div2like_sub.907.2724.5884.8540:
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fblt	$f0, $f2, fbge_else.17241
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
	j	div2like_sub.907.2724.5884.8540
fbge_else.17241:
	fmove	$fv, $f1
	jr $ra
ftoi_ret_sub.892.2709.8534:
	mtc1	$f1, $zero
	sw	$a1, 0($sp)
	sw	$a0, 4($sp)
	fsw	$f0, 8($sp)
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	div2like_sub.907.2724.5884.8540
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	fmove	$f0, $fv
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	flw	$f2, 8($sp)
	fblt	$f2, $f1, fbge_else.17242
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
	fblt	$f2, $f1, fbge_else.17243
	lw	$a0, 0($sp)
	lw	$a1, 4($sp)
	add	$a1, $a1, $a0
	add	$a0, $a0, $a0
	move	$a25, $a1
	move	$a1, $a0
	move	$a0, $a25
	j	ftoi_ret_sub.892.2709.8534
fbge_else.17243:
	lw	$a0, 0($sp)
	add	$a1, $a0, $a0
	lw	$a0, 4($sp)
	j	ftoi_ret_sub.892.2709.8534
fbge_else.17242:
	lw	$a0, 4($sp)
	move	$v0, $a0
	jr	$ra
itof_ret_sub.851.2633.3827:
	sra	$a1, $a0, 1
	li	$a2, 0
	bne	$a0, $a2, beq_else.17244
	fmove	$fv, $f0
	jr $ra
beq_else.17244:
	sub	$a0, $a0, $a1
	sub	$a0, $a0, $a1
	li	$a2, 0
	blt	$a2, $a0, bge_else.17245
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fmul	$f1, $f1, $f2
	move	$a0, $a1
	j	itof_ret_sub.851.2633.3827
bge_else.17245:
	fadd	$f0, $f0, $f1
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fmul	$f1, $f1, $f2
	move	$a0, $a1
	j	itof_ret_sub.851.2633.3827
itof_ret_sub.851.2649.3846:
	sra	$a1, $a0, 1
	li	$a2, 0
	bne	$a0, $a2, beq_else.17246
	fmove	$fv, $f0
	jr $ra
beq_else.17246:
	sub	$a0, $a0, $a1
	sub	$a0, $a0, $a1
	li	$a2, 0
	blt	$a2, $a0, bge_else.17247
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fmul	$f1, $f1, $f2
	move	$a0, $a1
	j	itof_ret_sub.851.2649.3846
bge_else.17247:
	fadd	$f0, $f0, $f1
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fmul	$f1, $f1, $f2
	move	$a0, $a1
	j	itof_ret_sub.851.2649.3846
itof_ret_sub.851.2633.3894:
	sra	$a1, $a0, 1
	li	$a2, 0
	bne	$a0, $a2, beq_else.17248
	fmove	$fv, $f0
	jr $ra
beq_else.17248:
	sub	$a0, $a0, $a1
	sub	$a0, $a0, $a1
	li	$a2, 0
	blt	$a2, $a0, bge_else.17249
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fmul	$f1, $f1, $f2
	move	$a0, $a1
	j	itof_ret_sub.851.2633.3894
bge_else.17249:
	fadd	$f0, $f0, $f1
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fmul	$f1, $f1, $f2
	move	$a0, $a1
	j	itof_ret_sub.851.2633.3894
itof_ret_sub.851.2649.3913:
	sra	$a1, $a0, 1
	li	$a2, 0
	bne	$a0, $a2, beq_else.17250
	fmove	$fv, $f0
	jr $ra
beq_else.17250:
	sub	$a0, $a0, $a1
	sub	$a0, $a0, $a1
	li	$a2, 0
	blt	$a2, $a0, bge_else.17251
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fmul	$f1, $f1, $f2
	move	$a0, $a1
	j	itof_ret_sub.851.2649.3913
bge_else.17251:
	fadd	$f0, $f0, $f1
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fmul	$f1, $f1, $f2
	move	$a0, $a1
	j	itof_ret_sub.851.2649.3913
div2like_sub.907.2750.5893.9016:
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fblt	$f0, $f2, fbge_else.17252
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
	j	div2like_sub.907.2750.5893.9016
fbge_else.17252:
	fmove	$fv, $f1
	jr $ra
ftoi_ret_sub.892.2735.9009:
	mtc1	$f1, $zero
	sw	$a1, 0($sp)
	sw	$a0, 4($sp)
	fsw	$f0, 8($sp)
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	div2like_sub.907.2750.5893.9016
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	fmove	$f0, $fv
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	flw	$f2, 8($sp)
	fblt	$f2, $f1, fbge_else.17253
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
	fblt	$f2, $f1, fbge_else.17254
	lw	$a0, 0($sp)
	lw	$a1, 4($sp)
	add	$a1, $a1, $a0
	add	$a0, $a0, $a0
	move	$a25, $a1
	move	$a1, $a0
	move	$a0, $a25
	j	ftoi_ret_sub.892.2735.9009
fbge_else.17254:
	lw	$a0, 0($sp)
	add	$a1, $a0, $a0
	lw	$a0, 4($sp)
	j	ftoi_ret_sub.892.2735.9009
fbge_else.17253:
	lw	$a0, 4($sp)
	move	$v0, $a0
	jr	$ra
ftoi_big.874.8947:
	li	$v0, 19200
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	fsub	$f0, $f0, $f1
	li	$a1, 128
	sll	$a1, $a1, 16
	ori	$a1, $a1, 0
	add	$a0, $a0, $a1
	fblt	$f0, $f1, fbge_else.17255
	j	ftoi_big.874.8947
fbge_else.17255:
	li	$a1, 0
	li	$a2, 1
	sw	$a0, 0($sp)
	move	$a0, $a1
	move	$a1, $a2
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	ftoi_ret_sub.892.2735.9009
	subi	$sp, $sp, 8
	lw	$ra, 4($sp)
	move	$a0, $v0
	lw	$a1, 0($sp)
	add	$v0, $a1, $a0
	jr	$ra
div2like_sub.907.2750.5893.8926:
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fblt	$f0, $f2, fbge_else.17256
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
	j	div2like_sub.907.2750.5893.8926
fbge_else.17256:
	fmove	$fv, $f1
	jr $ra
ftoi_ret_sub.892.2735.8919:
	mtc1	$f1, $zero
	sw	$a1, 0($sp)
	sw	$a0, 4($sp)
	fsw	$f0, 8($sp)
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	div2like_sub.907.2750.5893.8926
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	fmove	$f0, $fv
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	flw	$f2, 8($sp)
	fblt	$f2, $f1, fbge_else.17257
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
	fblt	$f2, $f1, fbge_else.17258
	lw	$a0, 0($sp)
	lw	$a1, 4($sp)
	add	$a1, $a1, $a0
	add	$a0, $a0, $a0
	move	$a25, $a1
	move	$a1, $a0
	move	$a0, $a25
	j	ftoi_ret_sub.892.2735.8919
fbge_else.17258:
	lw	$a0, 0($sp)
	add	$a1, $a0, $a0
	lw	$a0, 4($sp)
	j	ftoi_ret_sub.892.2735.8919
fbge_else.17257:
	lw	$a0, 4($sp)
	move	$v0, $a0
	jr	$ra
ftoi_big.874.8857:
	li	$v0, 19200
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	fsub	$f0, $f0, $f1
	li	$a1, 128
	sll	$a1, $a1, 16
	ori	$a1, $a1, 0
	add	$a0, $a0, $a1
	fblt	$f0, $f1, fbge_else.17259
	j	ftoi_big.874.8857
fbge_else.17259:
	li	$a1, 0
	li	$a2, 1
	sw	$a0, 0($sp)
	move	$a0, $a1
	move	$a1, $a2
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	ftoi_ret_sub.892.2735.8919
	subi	$sp, $sp, 8
	lw	$ra, 4($sp)
	move	$a0, $v0
	lw	$a1, 0($sp)
	add	$v0, $a1, $a0
	jr	$ra
div2like_sub.907.2750.5893.8836:
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fblt	$f0, $f2, fbge_else.17260
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
	j	div2like_sub.907.2750.5893.8836
fbge_else.17260:
	fmove	$fv, $f1
	jr $ra
ftoi_ret_sub.892.2735.8829:
	mtc1	$f1, $zero
	sw	$a1, 0($sp)
	sw	$a0, 4($sp)
	fsw	$f0, 8($sp)
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	div2like_sub.907.2750.5893.8836
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	fmove	$f0, $fv
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	flw	$f2, 8($sp)
	fblt	$f2, $f1, fbge_else.17261
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
	fblt	$f2, $f1, fbge_else.17262
	lw	$a0, 0($sp)
	lw	$a1, 4($sp)
	add	$a1, $a1, $a0
	add	$a0, $a0, $a0
	move	$a25, $a1
	move	$a1, $a0
	move	$a0, $a25
	j	ftoi_ret_sub.892.2735.8829
fbge_else.17262:
	lw	$a0, 0($sp)
	add	$a1, $a0, $a0
	lw	$a0, 4($sp)
	j	ftoi_ret_sub.892.2735.8829
fbge_else.17261:
	lw	$a0, 4($sp)
	move	$v0, $a0
	jr	$ra
ftoi_big.874.8767:
	li	$v0, 19200
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	fsub	$f0, $f0, $f1
	li	$a1, 128
	sll	$a1, $a1, 16
	ori	$a1, $a1, 0
	add	$a0, $a0, $a1
	fblt	$f0, $f1, fbge_else.17263
	j	ftoi_big.874.8767
fbge_else.17263:
	li	$a1, 0
	li	$a2, 1
	sw	$a0, 0($sp)
	move	$a0, $a1
	move	$a1, $a2
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	ftoi_ret_sub.892.2735.8829
	subi	$sp, $sp, 8
	lw	$ra, 4($sp)
	move	$a0, $v0
	lw	$a1, 0($sp)
	add	$v0, $a1, $a0
	jr	$ra
div2like_sub.907.2724.5884.8807:
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fblt	$f0, $f2, fbge_else.17264
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
	j	div2like_sub.907.2724.5884.8807
fbge_else.17264:
	fmove	$fv, $f1
	jr $ra
ftoi_ret_sub.892.2709.8801:
	mtc1	$f1, $zero
	sw	$a1, 0($sp)
	sw	$a0, 4($sp)
	fsw	$f0, 8($sp)
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	div2like_sub.907.2724.5884.8807
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	fmove	$f0, $fv
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	flw	$f2, 8($sp)
	fblt	$f2, $f1, fbge_else.17265
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
	fblt	$f2, $f1, fbge_else.17266
	lw	$a0, 0($sp)
	lw	$a1, 4($sp)
	add	$a1, $a1, $a0
	add	$a0, $a0, $a0
	move	$a25, $a1
	move	$a1, $a0
	move	$a0, $a25
	j	ftoi_ret_sub.892.2709.8801
fbge_else.17266:
	lw	$a0, 0($sp)
	add	$a1, $a0, $a0
	lw	$a0, 4($sp)
	j	ftoi_ret_sub.892.2709.8801
fbge_else.17265:
	lw	$a0, 4($sp)
	move	$v0, $a0
	jr	$ra
div2like_sub.907.2724.5884.8897:
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fblt	$f0, $f2, fbge_else.17267
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
	j	div2like_sub.907.2724.5884.8897
fbge_else.17267:
	fmove	$fv, $f1
	jr $ra
ftoi_ret_sub.892.2709.8891:
	mtc1	$f1, $zero
	sw	$a1, 0($sp)
	sw	$a0, 4($sp)
	fsw	$f0, 8($sp)
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	div2like_sub.907.2724.5884.8897
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	fmove	$f0, $fv
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	flw	$f2, 8($sp)
	fblt	$f2, $f1, fbge_else.17268
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
	fblt	$f2, $f1, fbge_else.17269
	lw	$a0, 0($sp)
	lw	$a1, 4($sp)
	add	$a1, $a1, $a0
	add	$a0, $a0, $a0
	move	$a25, $a1
	move	$a1, $a0
	move	$a0, $a25
	j	ftoi_ret_sub.892.2709.8891
fbge_else.17269:
	lw	$a0, 0($sp)
	add	$a1, $a0, $a0
	lw	$a0, 4($sp)
	j	ftoi_ret_sub.892.2709.8891
fbge_else.17268:
	lw	$a0, 4($sp)
	move	$v0, $a0
	jr	$ra
div2like_sub.907.2724.5884.8987:
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fblt	$f0, $f2, fbge_else.17270
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
	j	div2like_sub.907.2724.5884.8987
fbge_else.17270:
	fmove	$fv, $f1
	jr $ra
ftoi_ret_sub.892.2709.8981:
	mtc1	$f1, $zero
	sw	$a1, 0($sp)
	sw	$a0, 4($sp)
	fsw	$f0, 8($sp)
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	div2like_sub.907.2724.5884.8987
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	fmove	$f0, $fv
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	flw	$f2, 8($sp)
	fblt	$f2, $f1, fbge_else.17271
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
	fblt	$f2, $f1, fbge_else.17272
	lw	$a0, 0($sp)
	lw	$a1, 4($sp)
	add	$a1, $a1, $a0
	add	$a0, $a0, $a0
	move	$a25, $a1
	move	$a1, $a0
	move	$a0, $a25
	j	ftoi_ret_sub.892.2709.8981
fbge_else.17272:
	lw	$a0, 0($sp)
	add	$a1, $a0, $a0
	lw	$a0, 4($sp)
	j	ftoi_ret_sub.892.2709.8981
fbge_else.17271:
	lw	$a0, 4($sp)
	move	$v0, $a0
	jr	$ra
itof_ret_sub.851.2633.3972:
	sra	$a1, $a0, 1
	li	$a2, 0
	bne	$a0, $a2, beq_else.17273
	fmove	$fv, $f0
	jr $ra
beq_else.17273:
	sub	$a0, $a0, $a1
	sub	$a0, $a0, $a1
	li	$a2, 0
	blt	$a2, $a0, bge_else.17274
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fmul	$f1, $f1, $f2
	move	$a0, $a1
	j	itof_ret_sub.851.2633.3972
bge_else.17274:
	fadd	$f0, $f0, $f1
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fmul	$f1, $f1, $f2
	move	$a0, $a1
	j	itof_ret_sub.851.2633.3972
itof_ret_sub.851.2649.3991:
	sra	$a1, $a0, 1
	li	$a2, 0
	bne	$a0, $a2, beq_else.17275
	fmove	$fv, $f0
	jr $ra
beq_else.17275:
	sub	$a0, $a0, $a1
	sub	$a0, $a0, $a1
	li	$a2, 0
	blt	$a2, $a0, bge_else.17276
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fmul	$f1, $f1, $f2
	move	$a0, $a1
	j	itof_ret_sub.851.2649.3991
bge_else.17276:
	fadd	$f0, $f0, $f1
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fmul	$f1, $f1, $f2
	move	$a0, $a1
	j	itof_ret_sub.851.2649.3991
itof_ret_sub.851.2649.5273:
	sra	$a1, $a0, 1
	li	$a2, 0
	bne	$a0, $a2, beq_else.17277
	fmove	$fv, $f0
	jr $ra
beq_else.17277:
	sub	$a0, $a0, $a1
	sub	$a0, $a0, $a1
	li	$a2, 0
	blt	$a2, $a0, bge_else.17278
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fmul	$f1, $f1, $f2
	move	$a0, $a1
	j	itof_ret_sub.851.2649.5273
bge_else.17278:
	fadd	$f0, $f0, $f1
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fmul	$f1, $f1, $f2
	move	$a0, $a1
	j	itof_ret_sub.851.2649.5273
div2like_sub.907.2750.5893.9463:
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fblt	$f0, $f2, fbge_else.17279
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
	j	div2like_sub.907.2750.5893.9463
fbge_else.17279:
	fmove	$fv, $f1
	jr $ra
ftoi_ret_sub.892.2735.9456:
	mtc1	$f1, $zero
	sw	$a1, 0($sp)
	sw	$a0, 4($sp)
	fsw	$f0, 8($sp)
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	div2like_sub.907.2750.5893.9463
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	fmove	$f0, $fv
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	flw	$f2, 8($sp)
	fblt	$f2, $f1, fbge_else.17280
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
	fblt	$f2, $f1, fbge_else.17281
	lw	$a0, 0($sp)
	lw	$a1, 4($sp)
	add	$a1, $a1, $a0
	add	$a0, $a0, $a0
	move	$a25, $a1
	move	$a1, $a0
	move	$a0, $a25
	j	ftoi_ret_sub.892.2735.9456
fbge_else.17281:
	lw	$a0, 0($sp)
	add	$a1, $a0, $a0
	lw	$a0, 4($sp)
	j	ftoi_ret_sub.892.2735.9456
fbge_else.17280:
	lw	$a0, 4($sp)
	move	$v0, $a0
	jr	$ra
ftoi_big.874.9394:
	li	$v0, 19200
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	fsub	$f0, $f0, $f1
	li	$a1, 128
	sll	$a1, $a1, 16
	ori	$a1, $a1, 0
	add	$a0, $a0, $a1
	fblt	$f0, $f1, fbge_else.17282
	j	ftoi_big.874.9394
fbge_else.17282:
	li	$a1, 0
	li	$a2, 1
	sw	$a0, 0($sp)
	move	$a0, $a1
	move	$a1, $a2
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	ftoi_ret_sub.892.2735.9456
	subi	$sp, $sp, 8
	lw	$ra, 4($sp)
	move	$a0, $v0
	lw	$a1, 0($sp)
	add	$v0, $a1, $a0
	jr	$ra
div2like_sub.907.2750.5893.9373:
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fblt	$f0, $f2, fbge_else.17283
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
	j	div2like_sub.907.2750.5893.9373
fbge_else.17283:
	fmove	$fv, $f1
	jr $ra
ftoi_ret_sub.892.2735.9366:
	mtc1	$f1, $zero
	sw	$a1, 0($sp)
	sw	$a0, 4($sp)
	fsw	$f0, 8($sp)
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	div2like_sub.907.2750.5893.9373
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	fmove	$f0, $fv
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	flw	$f2, 8($sp)
	fblt	$f2, $f1, fbge_else.17284
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
	fblt	$f2, $f1, fbge_else.17285
	lw	$a0, 0($sp)
	lw	$a1, 4($sp)
	add	$a1, $a1, $a0
	add	$a0, $a0, $a0
	move	$a25, $a1
	move	$a1, $a0
	move	$a0, $a25
	j	ftoi_ret_sub.892.2735.9366
fbge_else.17285:
	lw	$a0, 0($sp)
	add	$a1, $a0, $a0
	lw	$a0, 4($sp)
	j	ftoi_ret_sub.892.2735.9366
fbge_else.17284:
	lw	$a0, 4($sp)
	move	$v0, $a0
	jr	$ra
ftoi_big.874.9304:
	li	$v0, 19200
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	fsub	$f0, $f0, $f1
	li	$a1, 128
	sll	$a1, $a1, 16
	ori	$a1, $a1, 0
	add	$a0, $a0, $a1
	fblt	$f0, $f1, fbge_else.17286
	j	ftoi_big.874.9304
fbge_else.17286:
	li	$a1, 0
	li	$a2, 1
	sw	$a0, 0($sp)
	move	$a0, $a1
	move	$a1, $a2
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	ftoi_ret_sub.892.2735.9366
	subi	$sp, $sp, 8
	lw	$ra, 4($sp)
	move	$a0, $v0
	lw	$a1, 0($sp)
	add	$v0, $a1, $a0
	jr	$ra
div2like_sub.907.2750.5893.9283:
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fblt	$f0, $f2, fbge_else.17287
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
	j	div2like_sub.907.2750.5893.9283
fbge_else.17287:
	fmove	$fv, $f1
	jr $ra
ftoi_ret_sub.892.2735.9276:
	mtc1	$f1, $zero
	sw	$a1, 0($sp)
	sw	$a0, 4($sp)
	fsw	$f0, 8($sp)
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	div2like_sub.907.2750.5893.9283
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	fmove	$f0, $fv
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	flw	$f2, 8($sp)
	fblt	$f2, $f1, fbge_else.17288
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
	fblt	$f2, $f1, fbge_else.17289
	lw	$a0, 0($sp)
	lw	$a1, 4($sp)
	add	$a1, $a1, $a0
	add	$a0, $a0, $a0
	move	$a25, $a1
	move	$a1, $a0
	move	$a0, $a25
	j	ftoi_ret_sub.892.2735.9276
fbge_else.17289:
	lw	$a0, 0($sp)
	add	$a1, $a0, $a0
	lw	$a0, 4($sp)
	j	ftoi_ret_sub.892.2735.9276
fbge_else.17288:
	lw	$a0, 4($sp)
	move	$v0, $a0
	jr	$ra
ftoi_big.874.9214:
	li	$v0, 19200
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	fsub	$f0, $f0, $f1
	li	$a1, 128
	sll	$a1, $a1, 16
	ori	$a1, $a1, 0
	add	$a0, $a0, $a1
	fblt	$f0, $f1, fbge_else.17290
	j	ftoi_big.874.9214
fbge_else.17290:
	li	$a1, 0
	li	$a2, 1
	sw	$a0, 0($sp)
	move	$a0, $a1
	move	$a1, $a2
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	ftoi_ret_sub.892.2735.9276
	subi	$sp, $sp, 8
	lw	$ra, 4($sp)
	move	$a0, $v0
	lw	$a1, 0($sp)
	add	$v0, $a1, $a0
	jr	$ra
div2like_sub.907.2724.5884.9254:
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fblt	$f0, $f2, fbge_else.17291
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
	j	div2like_sub.907.2724.5884.9254
fbge_else.17291:
	fmove	$fv, $f1
	jr $ra
ftoi_ret_sub.892.2709.9248:
	mtc1	$f1, $zero
	sw	$a1, 0($sp)
	sw	$a0, 4($sp)
	fsw	$f0, 8($sp)
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	div2like_sub.907.2724.5884.9254
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	fmove	$f0, $fv
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	flw	$f2, 8($sp)
	fblt	$f2, $f1, fbge_else.17292
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
	fblt	$f2, $f1, fbge_else.17293
	lw	$a0, 0($sp)
	lw	$a1, 4($sp)
	add	$a1, $a1, $a0
	add	$a0, $a0, $a0
	move	$a25, $a1
	move	$a1, $a0
	move	$a0, $a25
	j	ftoi_ret_sub.892.2709.9248
fbge_else.17293:
	lw	$a0, 0($sp)
	add	$a1, $a0, $a0
	lw	$a0, 4($sp)
	j	ftoi_ret_sub.892.2709.9248
fbge_else.17292:
	lw	$a0, 4($sp)
	move	$v0, $a0
	jr	$ra
div2like_sub.907.2724.5884.9344:
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fblt	$f0, $f2, fbge_else.17294
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
	j	div2like_sub.907.2724.5884.9344
fbge_else.17294:
	fmove	$fv, $f1
	jr $ra
ftoi_ret_sub.892.2709.9338:
	mtc1	$f1, $zero
	sw	$a1, 0($sp)
	sw	$a0, 4($sp)
	fsw	$f0, 8($sp)
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	div2like_sub.907.2724.5884.9344
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	fmove	$f0, $fv
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	flw	$f2, 8($sp)
	fblt	$f2, $f1, fbge_else.17295
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
	fblt	$f2, $f1, fbge_else.17296
	lw	$a0, 0($sp)
	lw	$a1, 4($sp)
	add	$a1, $a1, $a0
	add	$a0, $a0, $a0
	move	$a25, $a1
	move	$a1, $a0
	move	$a0, $a25
	j	ftoi_ret_sub.892.2709.9338
fbge_else.17296:
	lw	$a0, 0($sp)
	add	$a1, $a0, $a0
	lw	$a0, 4($sp)
	j	ftoi_ret_sub.892.2709.9338
fbge_else.17295:
	lw	$a0, 4($sp)
	move	$v0, $a0
	jr	$ra
div2like_sub.907.2724.5884.9434:
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fblt	$f0, $f2, fbge_else.17297
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
	j	div2like_sub.907.2724.5884.9434
fbge_else.17297:
	fmove	$fv, $f1
	jr $ra
ftoi_ret_sub.892.2709.9428:
	mtc1	$f1, $zero
	sw	$a1, 0($sp)
	sw	$a0, 4($sp)
	fsw	$f0, 8($sp)
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	div2like_sub.907.2724.5884.9434
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	fmove	$f0, $fv
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	flw	$f2, 8($sp)
	fblt	$f2, $f1, fbge_else.17298
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
	fblt	$f2, $f1, fbge_else.17299
	lw	$a0, 0($sp)
	lw	$a1, 4($sp)
	add	$a1, $a1, $a0
	add	$a0, $a0, $a0
	move	$a25, $a1
	move	$a1, $a0
	move	$a0, $a25
	j	ftoi_ret_sub.892.2709.9428
fbge_else.17299:
	lw	$a0, 0($sp)
	add	$a1, $a0, $a0
	lw	$a0, 4($sp)
	j	ftoi_ret_sub.892.2709.9428
fbge_else.17298:
	lw	$a0, 4($sp)
	move	$v0, $a0
	jr	$ra
itof_ret_sub.851.2665.4636:
	sra	$a1, $a0, 1
	li	$a2, 0
	bne	$a0, $a2, beq_else.17300
	fmove	$fv, $f0
	jr $ra
beq_else.17300:
	sub	$a0, $a0, $a1
	sub	$a0, $a0, $a1
	li	$a2, 0
	blt	$a2, $a0, bge_else.17301
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fmul	$f1, $f1, $f2
	move	$a0, $a1
	j	itof_ret_sub.851.2665.4636
bge_else.17301:
	fadd	$f0, $f0, $f1
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fmul	$f1, $f1, $f2
	move	$a0, $a1
	j	itof_ret_sub.851.2665.4636
itof_big.835.4589:
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
	blt	$a0, $a1, bge_else.17302
	j	itof_big.835.4589
bge_else.17302:
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
	jal	itof_ret_sub.851.2665.4636
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	fmove	$f0, $fv
	flw	$f1, 0($sp)
	fadd	$fv, $f1, $f0
	jr $ra
itof_ret_sub.851.2665.4569:
	sra	$a1, $a0, 1
	li	$a2, 0
	bne	$a0, $a2, beq_else.17303
	fmove	$fv, $f0
	jr $ra
beq_else.17303:
	sub	$a0, $a0, $a1
	sub	$a0, $a0, $a1
	li	$a2, 0
	blt	$a2, $a0, bge_else.17304
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fmul	$f1, $f1, $f2
	move	$a0, $a1
	j	itof_ret_sub.851.2665.4569
bge_else.17304:
	fadd	$f0, $f0, $f1
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fmul	$f1, $f1, $f2
	move	$a0, $a1
	j	itof_ret_sub.851.2665.4569
itof_big.835.4522:
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
	blt	$a0, $a1, bge_else.17305
	j	itof_big.835.4522
bge_else.17305:
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
	jal	itof_ret_sub.851.2665.4569
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	fmove	$f0, $fv
	flw	$f1, 0($sp)
	fadd	$fv, $f1, $f0
	jr $ra
div2like_sub.907.2750.5893.9910:
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fblt	$f0, $f2, fbge_else.17306
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
	j	div2like_sub.907.2750.5893.9910
fbge_else.17306:
	fmove	$fv, $f1
	jr $ra
ftoi_ret_sub.892.2735.9903:
	mtc1	$f1, $zero
	sw	$a1, 0($sp)
	sw	$a0, 4($sp)
	fsw	$f0, 8($sp)
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	div2like_sub.907.2750.5893.9910
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	fmove	$f0, $fv
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	flw	$f2, 8($sp)
	fblt	$f2, $f1, fbge_else.17307
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
	fblt	$f2, $f1, fbge_else.17308
	lw	$a0, 0($sp)
	lw	$a1, 4($sp)
	add	$a1, $a1, $a0
	add	$a0, $a0, $a0
	move	$a25, $a1
	move	$a1, $a0
	move	$a0, $a25
	j	ftoi_ret_sub.892.2735.9903
fbge_else.17308:
	lw	$a0, 0($sp)
	add	$a1, $a0, $a0
	lw	$a0, 4($sp)
	j	ftoi_ret_sub.892.2735.9903
fbge_else.17307:
	lw	$a0, 4($sp)
	move	$v0, $a0
	jr	$ra
ftoi_big.874.9841:
	li	$v0, 19200
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	fsub	$f0, $f0, $f1
	li	$a1, 128
	sll	$a1, $a1, 16
	ori	$a1, $a1, 0
	add	$a0, $a0, $a1
	fblt	$f0, $f1, fbge_else.17309
	j	ftoi_big.874.9841
fbge_else.17309:
	li	$a1, 0
	li	$a2, 1
	sw	$a0, 0($sp)
	move	$a0, $a1
	move	$a1, $a2
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	ftoi_ret_sub.892.2735.9903
	subi	$sp, $sp, 8
	lw	$ra, 4($sp)
	move	$a0, $v0
	lw	$a1, 0($sp)
	add	$v0, $a1, $a0
	jr	$ra
div2like_sub.907.2750.5893.9820:
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fblt	$f0, $f2, fbge_else.17310
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
	j	div2like_sub.907.2750.5893.9820
fbge_else.17310:
	fmove	$fv, $f1
	jr $ra
ftoi_ret_sub.892.2735.9813:
	mtc1	$f1, $zero
	sw	$a1, 0($sp)
	sw	$a0, 4($sp)
	fsw	$f0, 8($sp)
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	div2like_sub.907.2750.5893.9820
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	fmove	$f0, $fv
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	flw	$f2, 8($sp)
	fblt	$f2, $f1, fbge_else.17311
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
	fblt	$f2, $f1, fbge_else.17312
	lw	$a0, 0($sp)
	lw	$a1, 4($sp)
	add	$a1, $a1, $a0
	add	$a0, $a0, $a0
	move	$a25, $a1
	move	$a1, $a0
	move	$a0, $a25
	j	ftoi_ret_sub.892.2735.9813
fbge_else.17312:
	lw	$a0, 0($sp)
	add	$a1, $a0, $a0
	lw	$a0, 4($sp)
	j	ftoi_ret_sub.892.2735.9813
fbge_else.17311:
	lw	$a0, 4($sp)
	move	$v0, $a0
	jr	$ra
ftoi_big.874.9751:
	li	$v0, 19200
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	fsub	$f0, $f0, $f1
	li	$a1, 128
	sll	$a1, $a1, 16
	ori	$a1, $a1, 0
	add	$a0, $a0, $a1
	fblt	$f0, $f1, fbge_else.17313
	j	ftoi_big.874.9751
fbge_else.17313:
	li	$a1, 0
	li	$a2, 1
	sw	$a0, 0($sp)
	move	$a0, $a1
	move	$a1, $a2
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	ftoi_ret_sub.892.2735.9813
	subi	$sp, $sp, 8
	lw	$ra, 4($sp)
	move	$a0, $v0
	lw	$a1, 0($sp)
	add	$v0, $a1, $a0
	jr	$ra
div2like_sub.907.2750.5893.9730:
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fblt	$f0, $f2, fbge_else.17314
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
	j	div2like_sub.907.2750.5893.9730
fbge_else.17314:
	fmove	$fv, $f1
	jr $ra
ftoi_ret_sub.892.2735.9723:
	mtc1	$f1, $zero
	sw	$a1, 0($sp)
	sw	$a0, 4($sp)
	fsw	$f0, 8($sp)
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	div2like_sub.907.2750.5893.9730
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	fmove	$f0, $fv
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	flw	$f2, 8($sp)
	fblt	$f2, $f1, fbge_else.17315
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
	fblt	$f2, $f1, fbge_else.17316
	lw	$a0, 0($sp)
	lw	$a1, 4($sp)
	add	$a1, $a1, $a0
	add	$a0, $a0, $a0
	move	$a25, $a1
	move	$a1, $a0
	move	$a0, $a25
	j	ftoi_ret_sub.892.2735.9723
fbge_else.17316:
	lw	$a0, 0($sp)
	add	$a1, $a0, $a0
	lw	$a0, 4($sp)
	j	ftoi_ret_sub.892.2735.9723
fbge_else.17315:
	lw	$a0, 4($sp)
	move	$v0, $a0
	jr	$ra
ftoi_big.874.9661:
	li	$v0, 19200
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	fsub	$f0, $f0, $f1
	li	$a1, 128
	sll	$a1, $a1, 16
	ori	$a1, $a1, 0
	add	$a0, $a0, $a1
	fblt	$f0, $f1, fbge_else.17317
	j	ftoi_big.874.9661
fbge_else.17317:
	li	$a1, 0
	li	$a2, 1
	sw	$a0, 0($sp)
	move	$a0, $a1
	move	$a1, $a2
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	ftoi_ret_sub.892.2735.9723
	subi	$sp, $sp, 8
	lw	$ra, 4($sp)
	move	$a0, $v0
	lw	$a1, 0($sp)
	add	$v0, $a1, $a0
	jr	$ra
div2like_sub.907.2724.5884.9701:
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fblt	$f0, $f2, fbge_else.17318
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
	j	div2like_sub.907.2724.5884.9701
fbge_else.17318:
	fmove	$fv, $f1
	jr $ra
ftoi_ret_sub.892.2709.9695:
	mtc1	$f1, $zero
	sw	$a1, 0($sp)
	sw	$a0, 4($sp)
	fsw	$f0, 8($sp)
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	div2like_sub.907.2724.5884.9701
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	fmove	$f0, $fv
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	flw	$f2, 8($sp)
	fblt	$f2, $f1, fbge_else.17319
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
	fblt	$f2, $f1, fbge_else.17320
	lw	$a0, 0($sp)
	lw	$a1, 4($sp)
	add	$a1, $a1, $a0
	add	$a0, $a0, $a0
	move	$a25, $a1
	move	$a1, $a0
	move	$a0, $a25
	j	ftoi_ret_sub.892.2709.9695
fbge_else.17320:
	lw	$a0, 0($sp)
	add	$a1, $a0, $a0
	lw	$a0, 4($sp)
	j	ftoi_ret_sub.892.2709.9695
fbge_else.17319:
	lw	$a0, 4($sp)
	move	$v0, $a0
	jr	$ra
div2like_sub.907.2724.5884.9791:
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fblt	$f0, $f2, fbge_else.17321
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
	j	div2like_sub.907.2724.5884.9791
fbge_else.17321:
	fmove	$fv, $f1
	jr $ra
ftoi_ret_sub.892.2709.9785:
	mtc1	$f1, $zero
	sw	$a1, 0($sp)
	sw	$a0, 4($sp)
	fsw	$f0, 8($sp)
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	div2like_sub.907.2724.5884.9791
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	fmove	$f0, $fv
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	flw	$f2, 8($sp)
	fblt	$f2, $f1, fbge_else.17322
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
	fblt	$f2, $f1, fbge_else.17323
	lw	$a0, 0($sp)
	lw	$a1, 4($sp)
	add	$a1, $a1, $a0
	add	$a0, $a0, $a0
	move	$a25, $a1
	move	$a1, $a0
	move	$a0, $a25
	j	ftoi_ret_sub.892.2709.9785
fbge_else.17323:
	lw	$a0, 0($sp)
	add	$a1, $a0, $a0
	lw	$a0, 4($sp)
	j	ftoi_ret_sub.892.2709.9785
fbge_else.17322:
	lw	$a0, 4($sp)
	move	$v0, $a0
	jr	$ra
div2like_sub.907.2698.5875.9855:
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fblt	$f0, $f2, fbge_else.17324
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
	j	div2like_sub.907.2698.5875.9855
fbge_else.17324:
	fmove	$fv, $f1
	jr $ra
ftoi_ret_sub.892.2683.9848:
	mtc1	$f1, $zero
	sw	$a1, 0($sp)
	sw	$a0, 4($sp)
	fsw	$f0, 8($sp)
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	div2like_sub.907.2698.5875.9855
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	fmove	$f0, $fv
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	flw	$f2, 8($sp)
	fblt	$f2, $f1, fbge_else.17325
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
	fblt	$f2, $f1, fbge_else.17326
	lw	$a0, 0($sp)
	lw	$a1, 4($sp)
	add	$a1, $a1, $a0
	add	$a0, $a0, $a0
	move	$a25, $a1
	move	$a1, $a0
	move	$a0, $a25
	j	ftoi_ret_sub.892.2683.9848
fbge_else.17326:
	lw	$a0, 0($sp)
	add	$a1, $a0, $a0
	lw	$a0, 4($sp)
	j	ftoi_ret_sub.892.2683.9848
fbge_else.17325:
	lw	$a0, 4($sp)
	move	$v0, $a0
	jr	$ra
div2like_sub.907.2724.5884.9881:
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fblt	$f0, $f2, fbge_else.17327
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
	j	div2like_sub.907.2724.5884.9881
fbge_else.17327:
	fmove	$fv, $f1
	jr $ra
ftoi_ret_sub.892.2709.9875:
	mtc1	$f1, $zero
	sw	$a1, 0($sp)
	sw	$a0, 4($sp)
	fsw	$f0, 8($sp)
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	div2like_sub.907.2724.5884.9881
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	fmove	$f0, $fv
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	flw	$f2, 8($sp)
	fblt	$f2, $f1, fbge_else.17328
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
	fblt	$f2, $f1, fbge_else.17329
	lw	$a0, 0($sp)
	lw	$a1, 4($sp)
	add	$a1, $a1, $a0
	add	$a0, $a0, $a0
	move	$a25, $a1
	move	$a1, $a0
	move	$a0, $a25
	j	ftoi_ret_sub.892.2709.9875
fbge_else.17329:
	lw	$a0, 0($sp)
	add	$a1, $a0, $a0
	lw	$a0, 4($sp)
	j	ftoi_ret_sub.892.2709.9875
fbge_else.17328:
	lw	$a0, 4($sp)
	move	$v0, $a0
	jr	$ra
itof_ret_sub.851.2633.4529:
	sra	$a1, $a0, 1
	li	$a2, 0
	bne	$a0, $a2, beq_else.17330
	fmove	$fv, $f0
	jr $ra
beq_else.17330:
	sub	$a0, $a0, $a1
	sub	$a0, $a0, $a1
	li	$a2, 0
	blt	$a2, $a0, bge_else.17331
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fmul	$f1, $f1, $f2
	move	$a0, $a1
	j	itof_ret_sub.851.2633.4529
bge_else.17331:
	fadd	$f0, $f0, $f1
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fmul	$f1, $f1, $f2
	move	$a0, $a1
	j	itof_ret_sub.851.2633.4529
itof_ret_sub.851.2649.4548:
	sra	$a1, $a0, 1
	li	$a2, 0
	bne	$a0, $a2, beq_else.17332
	fmove	$fv, $f0
	jr $ra
beq_else.17332:
	sub	$a0, $a0, $a1
	sub	$a0, $a0, $a1
	li	$a2, 0
	blt	$a2, $a0, bge_else.17333
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fmul	$f1, $f1, $f2
	move	$a0, $a1
	j	itof_ret_sub.851.2649.4548
bge_else.17333:
	fadd	$f0, $f0, $f1
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fmul	$f1, $f1, $f2
	move	$a0, $a1
	j	itof_ret_sub.851.2649.4548
itof_ret_sub.851.2633.4596:
	sra	$a1, $a0, 1
	li	$a2, 0
	bne	$a0, $a2, beq_else.17334
	fmove	$fv, $f0
	jr $ra
beq_else.17334:
	sub	$a0, $a0, $a1
	sub	$a0, $a0, $a1
	li	$a2, 0
	blt	$a2, $a0, bge_else.17335
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fmul	$f1, $f1, $f2
	move	$a0, $a1
	j	itof_ret_sub.851.2633.4596
bge_else.17335:
	fadd	$f0, $f0, $f1
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fmul	$f1, $f1, $f2
	move	$a0, $a1
	j	itof_ret_sub.851.2633.4596
itof_ret_sub.851.2649.4615:
	sra	$a1, $a0, 1
	li	$a2, 0
	bne	$a0, $a2, beq_else.17336
	fmove	$fv, $f0
	jr $ra
beq_else.17336:
	sub	$a0, $a0, $a1
	sub	$a0, $a0, $a1
	li	$a2, 0
	blt	$a2, $a0, bge_else.17337
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fmul	$f1, $f1, $f2
	move	$a0, $a1
	j	itof_ret_sub.851.2649.4615
bge_else.17337:
	fadd	$f0, $f0, $f1
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fmul	$f1, $f1, $f2
	move	$a0, $a1
	j	itof_ret_sub.851.2649.4615
itof_ret_sub.851.2665.4781:
	sra	$a1, $a0, 1
	li	$a2, 0
	bne	$a0, $a2, beq_else.17338
	fmove	$fv, $f0
	jr $ra
beq_else.17338:
	sub	$a0, $a0, $a1
	sub	$a0, $a0, $a1
	li	$a2, 0
	blt	$a2, $a0, bge_else.17339
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fmul	$f1, $f1, $f2
	move	$a0, $a1
	j	itof_ret_sub.851.2665.4781
bge_else.17339:
	fadd	$f0, $f0, $f1
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fmul	$f1, $f1, $f2
	move	$a0, $a1
	j	itof_ret_sub.851.2665.4781
itof_big.835.4734:
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
	blt	$a0, $a1, bge_else.17340
	j	itof_big.835.4734
bge_else.17340:
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
	jal	itof_ret_sub.851.2665.4781
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	fmove	$f0, $fv
	flw	$f1, 0($sp)
	fadd	$fv, $f1, $f0
	jr $ra
itof_ret_sub.851.2665.4714:
	sra	$a1, $a0, 1
	li	$a2, 0
	bne	$a0, $a2, beq_else.17341
	fmove	$fv, $f0
	jr $ra
beq_else.17341:
	sub	$a0, $a0, $a1
	sub	$a0, $a0, $a1
	li	$a2, 0
	blt	$a2, $a0, bge_else.17342
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fmul	$f1, $f1, $f2
	move	$a0, $a1
	j	itof_ret_sub.851.2665.4714
bge_else.17342:
	fadd	$f0, $f0, $f1
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fmul	$f1, $f1, $f2
	move	$a0, $a1
	j	itof_ret_sub.851.2665.4714
itof_big.835.4667:
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
	blt	$a0, $a1, bge_else.17343
	j	itof_big.835.4667
bge_else.17343:
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
	jal	itof_ret_sub.851.2665.4714
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	fmove	$f0, $fv
	flw	$f1, 0($sp)
	fadd	$fv, $f1, $f0
	jr $ra
div2like_sub.907.2750.5893.10357:
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fblt	$f0, $f2, fbge_else.17344
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
	j	div2like_sub.907.2750.5893.10357
fbge_else.17344:
	fmove	$fv, $f1
	jr $ra
ftoi_ret_sub.892.2735.10350:
	mtc1	$f1, $zero
	sw	$a1, 0($sp)
	sw	$a0, 4($sp)
	fsw	$f0, 8($sp)
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	div2like_sub.907.2750.5893.10357
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	fmove	$f0, $fv
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	flw	$f2, 8($sp)
	fblt	$f2, $f1, fbge_else.17345
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
	fblt	$f2, $f1, fbge_else.17346
	lw	$a0, 0($sp)
	lw	$a1, 4($sp)
	add	$a1, $a1, $a0
	add	$a0, $a0, $a0
	move	$a25, $a1
	move	$a1, $a0
	move	$a0, $a25
	j	ftoi_ret_sub.892.2735.10350
fbge_else.17346:
	lw	$a0, 0($sp)
	add	$a1, $a0, $a0
	lw	$a0, 4($sp)
	j	ftoi_ret_sub.892.2735.10350
fbge_else.17345:
	lw	$a0, 4($sp)
	move	$v0, $a0
	jr	$ra
ftoi_big.874.10288:
	li	$v0, 19200
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	fsub	$f0, $f0, $f1
	li	$a1, 128
	sll	$a1, $a1, 16
	ori	$a1, $a1, 0
	add	$a0, $a0, $a1
	fblt	$f0, $f1, fbge_else.17347
	j	ftoi_big.874.10288
fbge_else.17347:
	li	$a1, 0
	li	$a2, 1
	sw	$a0, 0($sp)
	move	$a0, $a1
	move	$a1, $a2
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	ftoi_ret_sub.892.2735.10350
	subi	$sp, $sp, 8
	lw	$ra, 4($sp)
	move	$a0, $v0
	lw	$a1, 0($sp)
	add	$v0, $a1, $a0
	jr	$ra
div2like_sub.907.2750.5893.10267:
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fblt	$f0, $f2, fbge_else.17348
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
	j	div2like_sub.907.2750.5893.10267
fbge_else.17348:
	fmove	$fv, $f1
	jr $ra
ftoi_ret_sub.892.2735.10260:
	mtc1	$f1, $zero
	sw	$a1, 0($sp)
	sw	$a0, 4($sp)
	fsw	$f0, 8($sp)
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	div2like_sub.907.2750.5893.10267
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	fmove	$f0, $fv
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	flw	$f2, 8($sp)
	fblt	$f2, $f1, fbge_else.17349
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
	fblt	$f2, $f1, fbge_else.17350
	lw	$a0, 0($sp)
	lw	$a1, 4($sp)
	add	$a1, $a1, $a0
	add	$a0, $a0, $a0
	move	$a25, $a1
	move	$a1, $a0
	move	$a0, $a25
	j	ftoi_ret_sub.892.2735.10260
fbge_else.17350:
	lw	$a0, 0($sp)
	add	$a1, $a0, $a0
	lw	$a0, 4($sp)
	j	ftoi_ret_sub.892.2735.10260
fbge_else.17349:
	lw	$a0, 4($sp)
	move	$v0, $a0
	jr	$ra
ftoi_big.874.10198:
	li	$v0, 19200
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	fsub	$f0, $f0, $f1
	li	$a1, 128
	sll	$a1, $a1, 16
	ori	$a1, $a1, 0
	add	$a0, $a0, $a1
	fblt	$f0, $f1, fbge_else.17351
	j	ftoi_big.874.10198
fbge_else.17351:
	li	$a1, 0
	li	$a2, 1
	sw	$a0, 0($sp)
	move	$a0, $a1
	move	$a1, $a2
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	ftoi_ret_sub.892.2735.10260
	subi	$sp, $sp, 8
	lw	$ra, 4($sp)
	move	$a0, $v0
	lw	$a1, 0($sp)
	add	$v0, $a1, $a0
	jr	$ra
div2like_sub.907.2750.5893.10177:
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fblt	$f0, $f2, fbge_else.17352
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
	j	div2like_sub.907.2750.5893.10177
fbge_else.17352:
	fmove	$fv, $f1
	jr $ra
ftoi_ret_sub.892.2735.10170:
	mtc1	$f1, $zero
	sw	$a1, 0($sp)
	sw	$a0, 4($sp)
	fsw	$f0, 8($sp)
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	div2like_sub.907.2750.5893.10177
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	fmove	$f0, $fv
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	flw	$f2, 8($sp)
	fblt	$f2, $f1, fbge_else.17353
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
	fblt	$f2, $f1, fbge_else.17354
	lw	$a0, 0($sp)
	lw	$a1, 4($sp)
	add	$a1, $a1, $a0
	add	$a0, $a0, $a0
	move	$a25, $a1
	move	$a1, $a0
	move	$a0, $a25
	j	ftoi_ret_sub.892.2735.10170
fbge_else.17354:
	lw	$a0, 0($sp)
	add	$a1, $a0, $a0
	lw	$a0, 4($sp)
	j	ftoi_ret_sub.892.2735.10170
fbge_else.17353:
	lw	$a0, 4($sp)
	move	$v0, $a0
	jr	$ra
ftoi_big.874.10108:
	li	$v0, 19200
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	fsub	$f0, $f0, $f1
	li	$a1, 128
	sll	$a1, $a1, 16
	ori	$a1, $a1, 0
	add	$a0, $a0, $a1
	fblt	$f0, $f1, fbge_else.17355
	j	ftoi_big.874.10108
fbge_else.17355:
	li	$a1, 0
	li	$a2, 1
	sw	$a0, 0($sp)
	move	$a0, $a1
	move	$a1, $a2
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	ftoi_ret_sub.892.2735.10170
	subi	$sp, $sp, 8
	lw	$ra, 4($sp)
	move	$a0, $v0
	lw	$a1, 0($sp)
	add	$v0, $a1, $a0
	jr	$ra
div2like_sub.907.2724.5884.10148:
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fblt	$f0, $f2, fbge_else.17356
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
	j	div2like_sub.907.2724.5884.10148
fbge_else.17356:
	fmove	$fv, $f1
	jr $ra
ftoi_ret_sub.892.2709.10142:
	mtc1	$f1, $zero
	sw	$a1, 0($sp)
	sw	$a0, 4($sp)
	fsw	$f0, 8($sp)
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	div2like_sub.907.2724.5884.10148
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	fmove	$f0, $fv
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	flw	$f2, 8($sp)
	fblt	$f2, $f1, fbge_else.17357
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
	fblt	$f2, $f1, fbge_else.17358
	lw	$a0, 0($sp)
	lw	$a1, 4($sp)
	add	$a1, $a1, $a0
	add	$a0, $a0, $a0
	move	$a25, $a1
	move	$a1, $a0
	move	$a0, $a25
	j	ftoi_ret_sub.892.2709.10142
fbge_else.17358:
	lw	$a0, 0($sp)
	add	$a1, $a0, $a0
	lw	$a0, 4($sp)
	j	ftoi_ret_sub.892.2709.10142
fbge_else.17357:
	lw	$a0, 4($sp)
	move	$v0, $a0
	jr	$ra
div2like_sub.907.2698.5875.10212:
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fblt	$f0, $f2, fbge_else.17359
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
	j	div2like_sub.907.2698.5875.10212
fbge_else.17359:
	fmove	$fv, $f1
	jr $ra
ftoi_ret_sub.892.2683.10205:
	mtc1	$f1, $zero
	sw	$a1, 0($sp)
	sw	$a0, 4($sp)
	fsw	$f0, 8($sp)
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	div2like_sub.907.2698.5875.10212
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	fmove	$f0, $fv
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	flw	$f2, 8($sp)
	fblt	$f2, $f1, fbge_else.17360
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
	fblt	$f2, $f1, fbge_else.17361
	lw	$a0, 0($sp)
	lw	$a1, 4($sp)
	add	$a1, $a1, $a0
	add	$a0, $a0, $a0
	move	$a25, $a1
	move	$a1, $a0
	move	$a0, $a25
	j	ftoi_ret_sub.892.2683.10205
fbge_else.17361:
	lw	$a0, 0($sp)
	add	$a1, $a0, $a0
	lw	$a0, 4($sp)
	j	ftoi_ret_sub.892.2683.10205
fbge_else.17360:
	lw	$a0, 4($sp)
	move	$v0, $a0
	jr	$ra
div2like_sub.907.2724.5884.10238:
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fblt	$f0, $f2, fbge_else.17362
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
	j	div2like_sub.907.2724.5884.10238
fbge_else.17362:
	fmove	$fv, $f1
	jr $ra
ftoi_ret_sub.892.2709.10232:
	mtc1	$f1, $zero
	sw	$a1, 0($sp)
	sw	$a0, 4($sp)
	fsw	$f0, 8($sp)
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	div2like_sub.907.2724.5884.10238
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	fmove	$f0, $fv
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	flw	$f2, 8($sp)
	fblt	$f2, $f1, fbge_else.17363
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
	fblt	$f2, $f1, fbge_else.17364
	lw	$a0, 0($sp)
	lw	$a1, 4($sp)
	add	$a1, $a1, $a0
	add	$a0, $a0, $a0
	move	$a25, $a1
	move	$a1, $a0
	move	$a0, $a25
	j	ftoi_ret_sub.892.2709.10232
fbge_else.17364:
	lw	$a0, 0($sp)
	add	$a1, $a0, $a0
	lw	$a0, 4($sp)
	j	ftoi_ret_sub.892.2709.10232
fbge_else.17363:
	lw	$a0, 4($sp)
	move	$v0, $a0
	jr	$ra
div2like_sub.907.2724.5884.10328:
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fblt	$f0, $f2, fbge_else.17365
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
	j	div2like_sub.907.2724.5884.10328
fbge_else.17365:
	fmove	$fv, $f1
	jr $ra
ftoi_ret_sub.892.2709.10322:
	mtc1	$f1, $zero
	sw	$a1, 0($sp)
	sw	$a0, 4($sp)
	fsw	$f0, 8($sp)
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	div2like_sub.907.2724.5884.10328
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	fmove	$f0, $fv
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	flw	$f2, 8($sp)
	fblt	$f2, $f1, fbge_else.17366
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
	fblt	$f2, $f1, fbge_else.17367
	lw	$a0, 0($sp)
	lw	$a1, 4($sp)
	add	$a1, $a1, $a0
	add	$a0, $a0, $a0
	move	$a25, $a1
	move	$a1, $a0
	move	$a0, $a25
	j	ftoi_ret_sub.892.2709.10322
fbge_else.17367:
	lw	$a0, 0($sp)
	add	$a1, $a0, $a0
	lw	$a0, 4($sp)
	j	ftoi_ret_sub.892.2709.10322
fbge_else.17366:
	lw	$a0, 4($sp)
	move	$v0, $a0
	jr	$ra
itof_ret_sub.851.2633.4674:
	sra	$a1, $a0, 1
	li	$a2, 0
	bne	$a0, $a2, beq_else.17368
	fmove	$fv, $f0
	jr $ra
beq_else.17368:
	sub	$a0, $a0, $a1
	sub	$a0, $a0, $a1
	li	$a2, 0
	blt	$a2, $a0, bge_else.17369
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fmul	$f1, $f1, $f2
	move	$a0, $a1
	j	itof_ret_sub.851.2633.4674
bge_else.17369:
	fadd	$f0, $f0, $f1
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fmul	$f1, $f1, $f2
	move	$a0, $a1
	j	itof_ret_sub.851.2633.4674
itof_ret_sub.851.2649.4693:
	sra	$a1, $a0, 1
	li	$a2, 0
	bne	$a0, $a2, beq_else.17370
	fmove	$fv, $f0
	jr $ra
beq_else.17370:
	sub	$a0, $a0, $a1
	sub	$a0, $a0, $a1
	li	$a2, 0
	blt	$a2, $a0, bge_else.17371
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fmul	$f1, $f1, $f2
	move	$a0, $a1
	j	itof_ret_sub.851.2649.4693
bge_else.17371:
	fadd	$f0, $f0, $f1
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fmul	$f1, $f1, $f2
	move	$a0, $a1
	j	itof_ret_sub.851.2649.4693
itof_ret_sub.851.2633.4741:
	sra	$a1, $a0, 1
	li	$a2, 0
	bne	$a0, $a2, beq_else.17372
	fmove	$fv, $f0
	jr $ra
beq_else.17372:
	sub	$a0, $a0, $a1
	sub	$a0, $a0, $a1
	li	$a2, 0
	blt	$a2, $a0, bge_else.17373
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fmul	$f1, $f1, $f2
	move	$a0, $a1
	j	itof_ret_sub.851.2633.4741
bge_else.17373:
	fadd	$f0, $f0, $f1
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fmul	$f1, $f1, $f2
	move	$a0, $a1
	j	itof_ret_sub.851.2633.4741
itof_ret_sub.851.2649.4760:
	sra	$a1, $a0, 1
	li	$a2, 0
	bne	$a0, $a2, beq_else.17374
	fmove	$fv, $f0
	jr $ra
beq_else.17374:
	sub	$a0, $a0, $a1
	sub	$a0, $a0, $a1
	li	$a2, 0
	blt	$a2, $a0, bge_else.17375
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fmul	$f1, $f1, $f2
	move	$a0, $a1
	j	itof_ret_sub.851.2649.4760
bge_else.17375:
	fadd	$f0, $f0, $f1
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fmul	$f1, $f1, $f2
	move	$a0, $a1
	j	itof_ret_sub.851.2649.4760
itof_ret_sub.851.2665.4926:
	sra	$a1, $a0, 1
	li	$a2, 0
	bne	$a0, $a2, beq_else.17376
	fmove	$fv, $f0
	jr $ra
beq_else.17376:
	sub	$a0, $a0, $a1
	sub	$a0, $a0, $a1
	li	$a2, 0
	blt	$a2, $a0, bge_else.17377
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fmul	$f1, $f1, $f2
	move	$a0, $a1
	j	itof_ret_sub.851.2665.4926
bge_else.17377:
	fadd	$f0, $f0, $f1
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fmul	$f1, $f1, $f2
	move	$a0, $a1
	j	itof_ret_sub.851.2665.4926
itof_big.835.4879:
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
	blt	$a0, $a1, bge_else.17378
	j	itof_big.835.4879
bge_else.17378:
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
	jal	itof_ret_sub.851.2665.4926
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	fmove	$f0, $fv
	flw	$f1, 0($sp)
	fadd	$fv, $f1, $f0
	jr $ra
itof_ret_sub.851.2665.4859:
	sra	$a1, $a0, 1
	li	$a2, 0
	bne	$a0, $a2, beq_else.17379
	fmove	$fv, $f0
	jr $ra
beq_else.17379:
	sub	$a0, $a0, $a1
	sub	$a0, $a0, $a1
	li	$a2, 0
	blt	$a2, $a0, bge_else.17380
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fmul	$f1, $f1, $f2
	move	$a0, $a1
	j	itof_ret_sub.851.2665.4859
bge_else.17380:
	fadd	$f0, $f0, $f1
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fmul	$f1, $f1, $f2
	move	$a0, $a1
	j	itof_ret_sub.851.2665.4859
itof_big.835.4812:
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
	blt	$a0, $a1, bge_else.17381
	j	itof_big.835.4812
bge_else.17381:
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
	jal	itof_ret_sub.851.2665.4859
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	fmove	$f0, $fv
	flw	$f1, 0($sp)
	fadd	$fv, $f1, $f0
	jr $ra
div2like_sub.907.2750.5893.10804:
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fblt	$f0, $f2, fbge_else.17382
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
	j	div2like_sub.907.2750.5893.10804
fbge_else.17382:
	fmove	$fv, $f1
	jr $ra
ftoi_ret_sub.892.2735.10797:
	mtc1	$f1, $zero
	sw	$a1, 0($sp)
	sw	$a0, 4($sp)
	fsw	$f0, 8($sp)
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	div2like_sub.907.2750.5893.10804
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	fmove	$f0, $fv
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	flw	$f2, 8($sp)
	fblt	$f2, $f1, fbge_else.17383
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
	fblt	$f2, $f1, fbge_else.17384
	lw	$a0, 0($sp)
	lw	$a1, 4($sp)
	add	$a1, $a1, $a0
	add	$a0, $a0, $a0
	move	$a25, $a1
	move	$a1, $a0
	move	$a0, $a25
	j	ftoi_ret_sub.892.2735.10797
fbge_else.17384:
	lw	$a0, 0($sp)
	add	$a1, $a0, $a0
	lw	$a0, 4($sp)
	j	ftoi_ret_sub.892.2735.10797
fbge_else.17383:
	lw	$a0, 4($sp)
	move	$v0, $a0
	jr	$ra
ftoi_big.874.10735:
	li	$v0, 19200
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	fsub	$f0, $f0, $f1
	li	$a1, 128
	sll	$a1, $a1, 16
	ori	$a1, $a1, 0
	add	$a0, $a0, $a1
	fblt	$f0, $f1, fbge_else.17385
	j	ftoi_big.874.10735
fbge_else.17385:
	li	$a1, 0
	li	$a2, 1
	sw	$a0, 0($sp)
	move	$a0, $a1
	move	$a1, $a2
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	ftoi_ret_sub.892.2735.10797
	subi	$sp, $sp, 8
	lw	$ra, 4($sp)
	move	$a0, $v0
	lw	$a1, 0($sp)
	add	$v0, $a1, $a0
	jr	$ra
div2like_sub.907.2750.5893.10714:
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fblt	$f0, $f2, fbge_else.17386
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
	j	div2like_sub.907.2750.5893.10714
fbge_else.17386:
	fmove	$fv, $f1
	jr $ra
ftoi_ret_sub.892.2735.10707:
	mtc1	$f1, $zero
	sw	$a1, 0($sp)
	sw	$a0, 4($sp)
	fsw	$f0, 8($sp)
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	div2like_sub.907.2750.5893.10714
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	fmove	$f0, $fv
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	flw	$f2, 8($sp)
	fblt	$f2, $f1, fbge_else.17387
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
	fblt	$f2, $f1, fbge_else.17388
	lw	$a0, 0($sp)
	lw	$a1, 4($sp)
	add	$a1, $a1, $a0
	add	$a0, $a0, $a0
	move	$a25, $a1
	move	$a1, $a0
	move	$a0, $a25
	j	ftoi_ret_sub.892.2735.10707
fbge_else.17388:
	lw	$a0, 0($sp)
	add	$a1, $a0, $a0
	lw	$a0, 4($sp)
	j	ftoi_ret_sub.892.2735.10707
fbge_else.17387:
	lw	$a0, 4($sp)
	move	$v0, $a0
	jr	$ra
ftoi_big.874.10645:
	li	$v0, 19200
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	fsub	$f0, $f0, $f1
	li	$a1, 128
	sll	$a1, $a1, 16
	ori	$a1, $a1, 0
	add	$a0, $a0, $a1
	fblt	$f0, $f1, fbge_else.17389
	j	ftoi_big.874.10645
fbge_else.17389:
	li	$a1, 0
	li	$a2, 1
	sw	$a0, 0($sp)
	move	$a0, $a1
	move	$a1, $a2
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	ftoi_ret_sub.892.2735.10707
	subi	$sp, $sp, 8
	lw	$ra, 4($sp)
	move	$a0, $v0
	lw	$a1, 0($sp)
	add	$v0, $a1, $a0
	jr	$ra
div2like_sub.907.2750.5893.10624:
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fblt	$f0, $f2, fbge_else.17390
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
	j	div2like_sub.907.2750.5893.10624
fbge_else.17390:
	fmove	$fv, $f1
	jr $ra
ftoi_ret_sub.892.2735.10617:
	mtc1	$f1, $zero
	sw	$a1, 0($sp)
	sw	$a0, 4($sp)
	fsw	$f0, 8($sp)
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	div2like_sub.907.2750.5893.10624
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	fmove	$f0, $fv
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	flw	$f2, 8($sp)
	fblt	$f2, $f1, fbge_else.17391
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
	fblt	$f2, $f1, fbge_else.17392
	lw	$a0, 0($sp)
	lw	$a1, 4($sp)
	add	$a1, $a1, $a0
	add	$a0, $a0, $a0
	move	$a25, $a1
	move	$a1, $a0
	move	$a0, $a25
	j	ftoi_ret_sub.892.2735.10617
fbge_else.17392:
	lw	$a0, 0($sp)
	add	$a1, $a0, $a0
	lw	$a0, 4($sp)
	j	ftoi_ret_sub.892.2735.10617
fbge_else.17391:
	lw	$a0, 4($sp)
	move	$v0, $a0
	jr	$ra
ftoi_big.874.10555:
	li	$v0, 19200
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	fsub	$f0, $f0, $f1
	li	$a1, 128
	sll	$a1, $a1, 16
	ori	$a1, $a1, 0
	add	$a0, $a0, $a1
	fblt	$f0, $f1, fbge_else.17393
	j	ftoi_big.874.10555
fbge_else.17393:
	li	$a1, 0
	li	$a2, 1
	sw	$a0, 0($sp)
	move	$a0, $a1
	move	$a1, $a2
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	ftoi_ret_sub.892.2735.10617
	subi	$sp, $sp, 8
	lw	$ra, 4($sp)
	move	$a0, $v0
	lw	$a1, 0($sp)
	add	$v0, $a1, $a0
	jr	$ra
div2like_sub.907.2698.5875.10569:
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fblt	$f0, $f2, fbge_else.17394
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
	j	div2like_sub.907.2698.5875.10569
fbge_else.17394:
	fmove	$fv, $f1
	jr $ra
ftoi_ret_sub.892.2683.10562:
	mtc1	$f1, $zero
	sw	$a1, 0($sp)
	sw	$a0, 4($sp)
	fsw	$f0, 8($sp)
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	div2like_sub.907.2698.5875.10569
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	fmove	$f0, $fv
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	flw	$f2, 8($sp)
	fblt	$f2, $f1, fbge_else.17395
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
	fblt	$f2, $f1, fbge_else.17396
	lw	$a0, 0($sp)
	lw	$a1, 4($sp)
	add	$a1, $a1, $a0
	add	$a0, $a0, $a0
	move	$a25, $a1
	move	$a1, $a0
	move	$a0, $a25
	j	ftoi_ret_sub.892.2683.10562
fbge_else.17396:
	lw	$a0, 0($sp)
	add	$a1, $a0, $a0
	lw	$a0, 4($sp)
	j	ftoi_ret_sub.892.2683.10562
fbge_else.17395:
	lw	$a0, 4($sp)
	move	$v0, $a0
	jr	$ra
div2like_sub.907.2724.5884.10595:
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fblt	$f0, $f2, fbge_else.17397
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
	j	div2like_sub.907.2724.5884.10595
fbge_else.17397:
	fmove	$fv, $f1
	jr $ra
ftoi_ret_sub.892.2709.10589:
	mtc1	$f1, $zero
	sw	$a1, 0($sp)
	sw	$a0, 4($sp)
	fsw	$f0, 8($sp)
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	div2like_sub.907.2724.5884.10595
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	fmove	$f0, $fv
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	flw	$f2, 8($sp)
	fblt	$f2, $f1, fbge_else.17398
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
	fblt	$f2, $f1, fbge_else.17399
	lw	$a0, 0($sp)
	lw	$a1, 4($sp)
	add	$a1, $a1, $a0
	add	$a0, $a0, $a0
	move	$a25, $a1
	move	$a1, $a0
	move	$a0, $a25
	j	ftoi_ret_sub.892.2709.10589
fbge_else.17399:
	lw	$a0, 0($sp)
	add	$a1, $a0, $a0
	lw	$a0, 4($sp)
	j	ftoi_ret_sub.892.2709.10589
fbge_else.17398:
	lw	$a0, 4($sp)
	move	$v0, $a0
	jr	$ra
div2like_sub.907.2724.5884.10685:
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fblt	$f0, $f2, fbge_else.17400
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
	j	div2like_sub.907.2724.5884.10685
fbge_else.17400:
	fmove	$fv, $f1
	jr $ra
ftoi_ret_sub.892.2709.10679:
	mtc1	$f1, $zero
	sw	$a1, 0($sp)
	sw	$a0, 4($sp)
	fsw	$f0, 8($sp)
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	div2like_sub.907.2724.5884.10685
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	fmove	$f0, $fv
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	flw	$f2, 8($sp)
	fblt	$f2, $f1, fbge_else.17401
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
	fblt	$f2, $f1, fbge_else.17402
	lw	$a0, 0($sp)
	lw	$a1, 4($sp)
	add	$a1, $a1, $a0
	add	$a0, $a0, $a0
	move	$a25, $a1
	move	$a1, $a0
	move	$a0, $a25
	j	ftoi_ret_sub.892.2709.10679
fbge_else.17402:
	lw	$a0, 0($sp)
	add	$a1, $a0, $a0
	lw	$a0, 4($sp)
	j	ftoi_ret_sub.892.2709.10679
fbge_else.17401:
	lw	$a0, 4($sp)
	move	$v0, $a0
	jr	$ra
div2like_sub.907.2724.5884.10775:
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fblt	$f0, $f2, fbge_else.17403
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
	j	div2like_sub.907.2724.5884.10775
fbge_else.17403:
	fmove	$fv, $f1
	jr $ra
ftoi_ret_sub.892.2709.10769:
	mtc1	$f1, $zero
	sw	$a1, 0($sp)
	sw	$a0, 4($sp)
	fsw	$f0, 8($sp)
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	div2like_sub.907.2724.5884.10775
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	fmove	$f0, $fv
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	flw	$f2, 8($sp)
	fblt	$f2, $f1, fbge_else.17404
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
	fblt	$f2, $f1, fbge_else.17405
	lw	$a0, 0($sp)
	lw	$a1, 4($sp)
	add	$a1, $a1, $a0
	add	$a0, $a0, $a0
	move	$a25, $a1
	move	$a1, $a0
	move	$a0, $a25
	j	ftoi_ret_sub.892.2709.10769
fbge_else.17405:
	lw	$a0, 0($sp)
	add	$a1, $a0, $a0
	lw	$a0, 4($sp)
	j	ftoi_ret_sub.892.2709.10769
fbge_else.17404:
	lw	$a0, 4($sp)
	move	$v0, $a0
	jr	$ra
itof_ret_sub.851.2633.4819:
	sra	$a1, $a0, 1
	li	$a2, 0
	bne	$a0, $a2, beq_else.17406
	fmove	$fv, $f0
	jr $ra
beq_else.17406:
	sub	$a0, $a0, $a1
	sub	$a0, $a0, $a1
	li	$a2, 0
	blt	$a2, $a0, bge_else.17407
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fmul	$f1, $f1, $f2
	move	$a0, $a1
	j	itof_ret_sub.851.2633.4819
bge_else.17407:
	fadd	$f0, $f0, $f1
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fmul	$f1, $f1, $f2
	move	$a0, $a1
	j	itof_ret_sub.851.2633.4819
itof_ret_sub.851.2649.4838:
	sra	$a1, $a0, 1
	li	$a2, 0
	bne	$a0, $a2, beq_else.17408
	fmove	$fv, $f0
	jr $ra
beq_else.17408:
	sub	$a0, $a0, $a1
	sub	$a0, $a0, $a1
	li	$a2, 0
	blt	$a2, $a0, bge_else.17409
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fmul	$f1, $f1, $f2
	move	$a0, $a1
	j	itof_ret_sub.851.2649.4838
bge_else.17409:
	fadd	$f0, $f0, $f1
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fmul	$f1, $f1, $f2
	move	$a0, $a1
	j	itof_ret_sub.851.2649.4838
itof_ret_sub.851.2633.4886:
	sra	$a1, $a0, 1
	li	$a2, 0
	bne	$a0, $a2, beq_else.17410
	fmove	$fv, $f0
	jr $ra
beq_else.17410:
	sub	$a0, $a0, $a1
	sub	$a0, $a0, $a1
	li	$a2, 0
	blt	$a2, $a0, bge_else.17411
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fmul	$f1, $f1, $f2
	move	$a0, $a1
	j	itof_ret_sub.851.2633.4886
bge_else.17411:
	fadd	$f0, $f0, $f1
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fmul	$f1, $f1, $f2
	move	$a0, $a1
	j	itof_ret_sub.851.2633.4886
itof_ret_sub.851.2649.4905:
	sra	$a1, $a0, 1
	li	$a2, 0
	bne	$a0, $a2, beq_else.17412
	fmove	$fv, $f0
	jr $ra
beq_else.17412:
	sub	$a0, $a0, $a1
	sub	$a0, $a0, $a1
	li	$a2, 0
	blt	$a2, $a0, bge_else.17413
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fmul	$f1, $f1, $f2
	move	$a0, $a1
	j	itof_ret_sub.851.2649.4905
bge_else.17413:
	fadd	$f0, $f0, $f1
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fmul	$f1, $f1, $f2
	move	$a0, $a1
	j	itof_ret_sub.851.2649.4905
itof_ret_sub.851.2665.5071:
	sra	$a1, $a0, 1
	li	$a2, 0
	bne	$a0, $a2, beq_else.17414
	fmove	$fv, $f0
	jr $ra
beq_else.17414:
	sub	$a0, $a0, $a1
	sub	$a0, $a0, $a1
	li	$a2, 0
	blt	$a2, $a0, bge_else.17415
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fmul	$f1, $f1, $f2
	move	$a0, $a1
	j	itof_ret_sub.851.2665.5071
bge_else.17415:
	fadd	$f0, $f0, $f1
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fmul	$f1, $f1, $f2
	move	$a0, $a1
	j	itof_ret_sub.851.2665.5071
itof_big.835.5024:
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
	blt	$a0, $a1, bge_else.17416
	j	itof_big.835.5024
bge_else.17416:
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
	jal	itof_ret_sub.851.2665.5071
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	fmove	$f0, $fv
	flw	$f1, 0($sp)
	fadd	$fv, $f1, $f0
	jr $ra
itof_ret_sub.851.2665.5004:
	sra	$a1, $a0, 1
	li	$a2, 0
	bne	$a0, $a2, beq_else.17417
	fmove	$fv, $f0
	jr $ra
beq_else.17417:
	sub	$a0, $a0, $a1
	sub	$a0, $a0, $a1
	li	$a2, 0
	blt	$a2, $a0, bge_else.17418
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fmul	$f1, $f1, $f2
	move	$a0, $a1
	j	itof_ret_sub.851.2665.5004
bge_else.17418:
	fadd	$f0, $f0, $f1
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fmul	$f1, $f1, $f2
	move	$a0, $a1
	j	itof_ret_sub.851.2665.5004
itof_big.835.4957:
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
	blt	$a0, $a1, bge_else.17419
	j	itof_big.835.4957
bge_else.17419:
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
	jal	itof_ret_sub.851.2665.5004
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	fmove	$f0, $fv
	flw	$f1, 0($sp)
	fadd	$fv, $f1, $f0
	jr $ra
div2like_sub.907.2750.5893.11251:
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fblt	$f0, $f2, fbge_else.17420
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
	j	div2like_sub.907.2750.5893.11251
fbge_else.17420:
	fmove	$fv, $f1
	jr $ra
ftoi_ret_sub.892.2735.11244:
	mtc1	$f1, $zero
	sw	$a1, 0($sp)
	sw	$a0, 4($sp)
	fsw	$f0, 8($sp)
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	div2like_sub.907.2750.5893.11251
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	fmove	$f0, $fv
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	flw	$f2, 8($sp)
	fblt	$f2, $f1, fbge_else.17421
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
	fblt	$f2, $f1, fbge_else.17422
	lw	$a0, 0($sp)
	lw	$a1, 4($sp)
	add	$a1, $a1, $a0
	add	$a0, $a0, $a0
	move	$a25, $a1
	move	$a1, $a0
	move	$a0, $a25
	j	ftoi_ret_sub.892.2735.11244
fbge_else.17422:
	lw	$a0, 0($sp)
	add	$a1, $a0, $a0
	lw	$a0, 4($sp)
	j	ftoi_ret_sub.892.2735.11244
fbge_else.17421:
	lw	$a0, 4($sp)
	move	$v0, $a0
	jr	$ra
ftoi_big.874.11182:
	li	$v0, 19200
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	fsub	$f0, $f0, $f1
	li	$a1, 128
	sll	$a1, $a1, 16
	ori	$a1, $a1, 0
	add	$a0, $a0, $a1
	fblt	$f0, $f1, fbge_else.17423
	j	ftoi_big.874.11182
fbge_else.17423:
	li	$a1, 0
	li	$a2, 1
	sw	$a0, 0($sp)
	move	$a0, $a1
	move	$a1, $a2
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	ftoi_ret_sub.892.2735.11244
	subi	$sp, $sp, 8
	lw	$ra, 4($sp)
	move	$a0, $v0
	lw	$a1, 0($sp)
	add	$v0, $a1, $a0
	jr	$ra
div2like_sub.907.2750.5893.11161:
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fblt	$f0, $f2, fbge_else.17424
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
	j	div2like_sub.907.2750.5893.11161
fbge_else.17424:
	fmove	$fv, $f1
	jr $ra
ftoi_ret_sub.892.2735.11154:
	mtc1	$f1, $zero
	sw	$a1, 0($sp)
	sw	$a0, 4($sp)
	fsw	$f0, 8($sp)
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	div2like_sub.907.2750.5893.11161
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	fmove	$f0, $fv
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	flw	$f2, 8($sp)
	fblt	$f2, $f1, fbge_else.17425
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
	fblt	$f2, $f1, fbge_else.17426
	lw	$a0, 0($sp)
	lw	$a1, 4($sp)
	add	$a1, $a1, $a0
	add	$a0, $a0, $a0
	move	$a25, $a1
	move	$a1, $a0
	move	$a0, $a25
	j	ftoi_ret_sub.892.2735.11154
fbge_else.17426:
	lw	$a0, 0($sp)
	add	$a1, $a0, $a0
	lw	$a0, 4($sp)
	j	ftoi_ret_sub.892.2735.11154
fbge_else.17425:
	lw	$a0, 4($sp)
	move	$v0, $a0
	jr	$ra
ftoi_big.874.11092:
	li	$v0, 19200
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	fsub	$f0, $f0, $f1
	li	$a1, 128
	sll	$a1, $a1, 16
	ori	$a1, $a1, 0
	add	$a0, $a0, $a1
	fblt	$f0, $f1, fbge_else.17427
	j	ftoi_big.874.11092
fbge_else.17427:
	li	$a1, 0
	li	$a2, 1
	sw	$a0, 0($sp)
	move	$a0, $a1
	move	$a1, $a2
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	ftoi_ret_sub.892.2735.11154
	subi	$sp, $sp, 8
	lw	$ra, 4($sp)
	move	$a0, $v0
	lw	$a1, 0($sp)
	add	$v0, $a1, $a0
	jr	$ra
div2like_sub.907.2750.5893.11071:
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fblt	$f0, $f2, fbge_else.17428
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
	j	div2like_sub.907.2750.5893.11071
fbge_else.17428:
	fmove	$fv, $f1
	jr $ra
ftoi_ret_sub.892.2735.11064:
	mtc1	$f1, $zero
	sw	$a1, 0($sp)
	sw	$a0, 4($sp)
	fsw	$f0, 8($sp)
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	div2like_sub.907.2750.5893.11071
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	fmove	$f0, $fv
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	flw	$f2, 8($sp)
	fblt	$f2, $f1, fbge_else.17429
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
	fblt	$f2, $f1, fbge_else.17430
	lw	$a0, 0($sp)
	lw	$a1, 4($sp)
	add	$a1, $a1, $a0
	add	$a0, $a0, $a0
	move	$a25, $a1
	move	$a1, $a0
	move	$a0, $a25
	j	ftoi_ret_sub.892.2735.11064
fbge_else.17430:
	lw	$a0, 0($sp)
	add	$a1, $a0, $a0
	lw	$a0, 4($sp)
	j	ftoi_ret_sub.892.2735.11064
fbge_else.17429:
	lw	$a0, 4($sp)
	move	$v0, $a0
	jr	$ra
ftoi_big.874.11002:
	li	$v0, 19200
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	fsub	$f0, $f0, $f1
	li	$a1, 128
	sll	$a1, $a1, 16
	ori	$a1, $a1, 0
	add	$a0, $a0, $a1
	fblt	$f0, $f1, fbge_else.17431
	j	ftoi_big.874.11002
fbge_else.17431:
	li	$a1, 0
	li	$a2, 1
	sw	$a0, 0($sp)
	move	$a0, $a1
	move	$a1, $a2
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	ftoi_ret_sub.892.2735.11064
	subi	$sp, $sp, 8
	lw	$ra, 4($sp)
	move	$a0, $v0
	lw	$a1, 0($sp)
	add	$v0, $a1, $a0
	jr	$ra
div2like_sub.907.2724.5884.11042:
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fblt	$f0, $f2, fbge_else.17432
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
	j	div2like_sub.907.2724.5884.11042
fbge_else.17432:
	fmove	$fv, $f1
	jr $ra
ftoi_ret_sub.892.2709.11036:
	mtc1	$f1, $zero
	sw	$a1, 0($sp)
	sw	$a0, 4($sp)
	fsw	$f0, 8($sp)
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	div2like_sub.907.2724.5884.11042
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	fmove	$f0, $fv
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	flw	$f2, 8($sp)
	fblt	$f2, $f1, fbge_else.17433
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
	fblt	$f2, $f1, fbge_else.17434
	lw	$a0, 0($sp)
	lw	$a1, 4($sp)
	add	$a1, $a1, $a0
	add	$a0, $a0, $a0
	move	$a25, $a1
	move	$a1, $a0
	move	$a0, $a25
	j	ftoi_ret_sub.892.2709.11036
fbge_else.17434:
	lw	$a0, 0($sp)
	add	$a1, $a0, $a0
	lw	$a0, 4($sp)
	j	ftoi_ret_sub.892.2709.11036
fbge_else.17433:
	lw	$a0, 4($sp)
	move	$v0, $a0
	jr	$ra
div2like_sub.907.2724.5884.11132:
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fblt	$f0, $f2, fbge_else.17435
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
	j	div2like_sub.907.2724.5884.11132
fbge_else.17435:
	fmove	$fv, $f1
	jr $ra
ftoi_ret_sub.892.2709.11126:
	mtc1	$f1, $zero
	sw	$a1, 0($sp)
	sw	$a0, 4($sp)
	fsw	$f0, 8($sp)
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	div2like_sub.907.2724.5884.11132
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	fmove	$f0, $fv
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	flw	$f2, 8($sp)
	fblt	$f2, $f1, fbge_else.17436
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
	fblt	$f2, $f1, fbge_else.17437
	lw	$a0, 0($sp)
	lw	$a1, 4($sp)
	add	$a1, $a1, $a0
	add	$a0, $a0, $a0
	move	$a25, $a1
	move	$a1, $a0
	move	$a0, $a25
	j	ftoi_ret_sub.892.2709.11126
fbge_else.17437:
	lw	$a0, 0($sp)
	add	$a1, $a0, $a0
	lw	$a0, 4($sp)
	j	ftoi_ret_sub.892.2709.11126
fbge_else.17436:
	lw	$a0, 4($sp)
	move	$v0, $a0
	jr	$ra
div2like_sub.907.2698.5875.11196:
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fblt	$f0, $f2, fbge_else.17438
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
	j	div2like_sub.907.2698.5875.11196
fbge_else.17438:
	fmove	$fv, $f1
	jr $ra
ftoi_ret_sub.892.2683.11189:
	mtc1	$f1, $zero
	sw	$a1, 0($sp)
	sw	$a0, 4($sp)
	fsw	$f0, 8($sp)
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	div2like_sub.907.2698.5875.11196
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	fmove	$f0, $fv
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	flw	$f2, 8($sp)
	fblt	$f2, $f1, fbge_else.17439
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
	fblt	$f2, $f1, fbge_else.17440
	lw	$a0, 0($sp)
	lw	$a1, 4($sp)
	add	$a1, $a1, $a0
	add	$a0, $a0, $a0
	move	$a25, $a1
	move	$a1, $a0
	move	$a0, $a25
	j	ftoi_ret_sub.892.2683.11189
fbge_else.17440:
	lw	$a0, 0($sp)
	add	$a1, $a0, $a0
	lw	$a0, 4($sp)
	j	ftoi_ret_sub.892.2683.11189
fbge_else.17439:
	lw	$a0, 4($sp)
	move	$v0, $a0
	jr	$ra
div2like_sub.907.2724.5884.11222:
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fblt	$f0, $f2, fbge_else.17441
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
	j	div2like_sub.907.2724.5884.11222
fbge_else.17441:
	fmove	$fv, $f1
	jr $ra
ftoi_ret_sub.892.2709.11216:
	mtc1	$f1, $zero
	sw	$a1, 0($sp)
	sw	$a0, 4($sp)
	fsw	$f0, 8($sp)
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	div2like_sub.907.2724.5884.11222
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	fmove	$f0, $fv
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	flw	$f2, 8($sp)
	fblt	$f2, $f1, fbge_else.17442
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
	fblt	$f2, $f1, fbge_else.17443
	lw	$a0, 0($sp)
	lw	$a1, 4($sp)
	add	$a1, $a1, $a0
	add	$a0, $a0, $a0
	move	$a25, $a1
	move	$a1, $a0
	move	$a0, $a25
	j	ftoi_ret_sub.892.2709.11216
fbge_else.17443:
	lw	$a0, 0($sp)
	add	$a1, $a0, $a0
	lw	$a0, 4($sp)
	j	ftoi_ret_sub.892.2709.11216
fbge_else.17442:
	lw	$a0, 4($sp)
	move	$v0, $a0
	jr	$ra
itof_ret_sub.851.2633.4964:
	sra	$a1, $a0, 1
	li	$a2, 0
	bne	$a0, $a2, beq_else.17444
	fmove	$fv, $f0
	jr $ra
beq_else.17444:
	sub	$a0, $a0, $a1
	sub	$a0, $a0, $a1
	li	$a2, 0
	blt	$a2, $a0, bge_else.17445
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fmul	$f1, $f1, $f2
	move	$a0, $a1
	j	itof_ret_sub.851.2633.4964
bge_else.17445:
	fadd	$f0, $f0, $f1
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fmul	$f1, $f1, $f2
	move	$a0, $a1
	j	itof_ret_sub.851.2633.4964
itof_ret_sub.851.2649.4983:
	sra	$a1, $a0, 1
	li	$a2, 0
	bne	$a0, $a2, beq_else.17446
	fmove	$fv, $f0
	jr $ra
beq_else.17446:
	sub	$a0, $a0, $a1
	sub	$a0, $a0, $a1
	li	$a2, 0
	blt	$a2, $a0, bge_else.17447
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fmul	$f1, $f1, $f2
	move	$a0, $a1
	j	itof_ret_sub.851.2649.4983
bge_else.17447:
	fadd	$f0, $f0, $f1
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fmul	$f1, $f1, $f2
	move	$a0, $a1
	j	itof_ret_sub.851.2649.4983
itof_ret_sub.851.2633.5031:
	sra	$a1, $a0, 1
	li	$a2, 0
	bne	$a0, $a2, beq_else.17448
	fmove	$fv, $f0
	jr $ra
beq_else.17448:
	sub	$a0, $a0, $a1
	sub	$a0, $a0, $a1
	li	$a2, 0
	blt	$a2, $a0, bge_else.17449
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fmul	$f1, $f1, $f2
	move	$a0, $a1
	j	itof_ret_sub.851.2633.5031
bge_else.17449:
	fadd	$f0, $f0, $f1
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fmul	$f1, $f1, $f2
	move	$a0, $a1
	j	itof_ret_sub.851.2633.5031
itof_ret_sub.851.2649.5050:
	sra	$a1, $a0, 1
	li	$a2, 0
	bne	$a0, $a2, beq_else.17450
	fmove	$fv, $f0
	jr $ra
beq_else.17450:
	sub	$a0, $a0, $a1
	sub	$a0, $a0, $a1
	li	$a2, 0
	blt	$a2, $a0, bge_else.17451
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fmul	$f1, $f1, $f2
	move	$a0, $a1
	j	itof_ret_sub.851.2649.5050
bge_else.17451:
	fadd	$f0, $f0, $f1
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fmul	$f1, $f1, $f2
	move	$a0, $a1
	j	itof_ret_sub.851.2649.5050
itof_ret_sub.851.2665.5216:
	sra	$a1, $a0, 1
	li	$a2, 0
	bne	$a0, $a2, beq_else.17452
	fmove	$fv, $f0
	jr $ra
beq_else.17452:
	sub	$a0, $a0, $a1
	sub	$a0, $a0, $a1
	li	$a2, 0
	blt	$a2, $a0, bge_else.17453
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fmul	$f1, $f1, $f2
	move	$a0, $a1
	j	itof_ret_sub.851.2665.5216
bge_else.17453:
	fadd	$f0, $f0, $f1
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fmul	$f1, $f1, $f2
	move	$a0, $a1
	j	itof_ret_sub.851.2665.5216
itof_big.835.5169:
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
	blt	$a0, $a1, bge_else.17454
	j	itof_big.835.5169
bge_else.17454:
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
	jal	itof_ret_sub.851.2665.5216
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	fmove	$f0, $fv
	flw	$f1, 0($sp)
	fadd	$fv, $f1, $f0
	jr $ra
itof_ret_sub.851.2665.5149:
	sra	$a1, $a0, 1
	li	$a2, 0
	bne	$a0, $a2, beq_else.17455
	fmove	$fv, $f0
	jr $ra
beq_else.17455:
	sub	$a0, $a0, $a1
	sub	$a0, $a0, $a1
	li	$a2, 0
	blt	$a2, $a0, bge_else.17456
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fmul	$f1, $f1, $f2
	move	$a0, $a1
	j	itof_ret_sub.851.2665.5149
bge_else.17456:
	fadd	$f0, $f0, $f1
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fmul	$f1, $f1, $f2
	move	$a0, $a1
	j	itof_ret_sub.851.2665.5149
itof_big.835.5102:
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
	blt	$a0, $a1, bge_else.17457
	j	itof_big.835.5102
bge_else.17457:
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
	jal	itof_ret_sub.851.2665.5149
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	fmove	$f0, $fv
	flw	$f1, 0($sp)
	fadd	$fv, $f1, $f0
	jr $ra
div2like_sub.907.2750.5893.11698:
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fblt	$f0, $f2, fbge_else.17458
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
	j	div2like_sub.907.2750.5893.11698
fbge_else.17458:
	fmove	$fv, $f1
	jr $ra
ftoi_ret_sub.892.2735.11691:
	mtc1	$f1, $zero
	sw	$a1, 0($sp)
	sw	$a0, 4($sp)
	fsw	$f0, 8($sp)
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	div2like_sub.907.2750.5893.11698
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	fmove	$f0, $fv
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	flw	$f2, 8($sp)
	fblt	$f2, $f1, fbge_else.17459
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
	fblt	$f2, $f1, fbge_else.17460
	lw	$a0, 0($sp)
	lw	$a1, 4($sp)
	add	$a1, $a1, $a0
	add	$a0, $a0, $a0
	move	$a25, $a1
	move	$a1, $a0
	move	$a0, $a25
	j	ftoi_ret_sub.892.2735.11691
fbge_else.17460:
	lw	$a0, 0($sp)
	add	$a1, $a0, $a0
	lw	$a0, 4($sp)
	j	ftoi_ret_sub.892.2735.11691
fbge_else.17459:
	lw	$a0, 4($sp)
	move	$v0, $a0
	jr	$ra
ftoi_big.874.11629:
	li	$v0, 19200
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	fsub	$f0, $f0, $f1
	li	$a1, 128
	sll	$a1, $a1, 16
	ori	$a1, $a1, 0
	add	$a0, $a0, $a1
	fblt	$f0, $f1, fbge_else.17461
	j	ftoi_big.874.11629
fbge_else.17461:
	li	$a1, 0
	li	$a2, 1
	sw	$a0, 0($sp)
	move	$a0, $a1
	move	$a1, $a2
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	ftoi_ret_sub.892.2735.11691
	subi	$sp, $sp, 8
	lw	$ra, 4($sp)
	move	$a0, $v0
	lw	$a1, 0($sp)
	add	$v0, $a1, $a0
	jr	$ra
div2like_sub.907.2750.5893.11608:
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fblt	$f0, $f2, fbge_else.17462
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
	j	div2like_sub.907.2750.5893.11608
fbge_else.17462:
	fmove	$fv, $f1
	jr $ra
ftoi_ret_sub.892.2735.11601:
	mtc1	$f1, $zero
	sw	$a1, 0($sp)
	sw	$a0, 4($sp)
	fsw	$f0, 8($sp)
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	div2like_sub.907.2750.5893.11608
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	fmove	$f0, $fv
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	flw	$f2, 8($sp)
	fblt	$f2, $f1, fbge_else.17463
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
	fblt	$f2, $f1, fbge_else.17464
	lw	$a0, 0($sp)
	lw	$a1, 4($sp)
	add	$a1, $a1, $a0
	add	$a0, $a0, $a0
	move	$a25, $a1
	move	$a1, $a0
	move	$a0, $a25
	j	ftoi_ret_sub.892.2735.11601
fbge_else.17464:
	lw	$a0, 0($sp)
	add	$a1, $a0, $a0
	lw	$a0, 4($sp)
	j	ftoi_ret_sub.892.2735.11601
fbge_else.17463:
	lw	$a0, 4($sp)
	move	$v0, $a0
	jr	$ra
ftoi_big.874.11539:
	li	$v0, 19200
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	fsub	$f0, $f0, $f1
	li	$a1, 128
	sll	$a1, $a1, 16
	ori	$a1, $a1, 0
	add	$a0, $a0, $a1
	fblt	$f0, $f1, fbge_else.17465
	j	ftoi_big.874.11539
fbge_else.17465:
	li	$a1, 0
	li	$a2, 1
	sw	$a0, 0($sp)
	move	$a0, $a1
	move	$a1, $a2
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	ftoi_ret_sub.892.2735.11601
	subi	$sp, $sp, 8
	lw	$ra, 4($sp)
	move	$a0, $v0
	lw	$a1, 0($sp)
	add	$v0, $a1, $a0
	jr	$ra
div2like_sub.907.2750.5893.11518:
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fblt	$f0, $f2, fbge_else.17466
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
	j	div2like_sub.907.2750.5893.11518
fbge_else.17466:
	fmove	$fv, $f1
	jr $ra
ftoi_ret_sub.892.2735.11511:
	mtc1	$f1, $zero
	sw	$a1, 0($sp)
	sw	$a0, 4($sp)
	fsw	$f0, 8($sp)
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	div2like_sub.907.2750.5893.11518
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	fmove	$f0, $fv
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	flw	$f2, 8($sp)
	fblt	$f2, $f1, fbge_else.17467
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
	fblt	$f2, $f1, fbge_else.17468
	lw	$a0, 0($sp)
	lw	$a1, 4($sp)
	add	$a1, $a1, $a0
	add	$a0, $a0, $a0
	move	$a25, $a1
	move	$a1, $a0
	move	$a0, $a25
	j	ftoi_ret_sub.892.2735.11511
fbge_else.17468:
	lw	$a0, 0($sp)
	add	$a1, $a0, $a0
	lw	$a0, 4($sp)
	j	ftoi_ret_sub.892.2735.11511
fbge_else.17467:
	lw	$a0, 4($sp)
	move	$v0, $a0
	jr	$ra
ftoi_big.874.11449:
	li	$v0, 19200
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	fsub	$f0, $f0, $f1
	li	$a1, 128
	sll	$a1, $a1, 16
	ori	$a1, $a1, 0
	add	$a0, $a0, $a1
	fblt	$f0, $f1, fbge_else.17469
	j	ftoi_big.874.11449
fbge_else.17469:
	li	$a1, 0
	li	$a2, 1
	sw	$a0, 0($sp)
	move	$a0, $a1
	move	$a1, $a2
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	ftoi_ret_sub.892.2735.11511
	subi	$sp, $sp, 8
	lw	$ra, 4($sp)
	move	$a0, $v0
	lw	$a1, 0($sp)
	add	$v0, $a1, $a0
	jr	$ra
div2like_sub.907.2724.5884.11489:
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fblt	$f0, $f2, fbge_else.17470
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
	j	div2like_sub.907.2724.5884.11489
fbge_else.17470:
	fmove	$fv, $f1
	jr $ra
ftoi_ret_sub.892.2709.11483:
	mtc1	$f1, $zero
	sw	$a1, 0($sp)
	sw	$a0, 4($sp)
	fsw	$f0, 8($sp)
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	div2like_sub.907.2724.5884.11489
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	fmove	$f0, $fv
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	flw	$f2, 8($sp)
	fblt	$f2, $f1, fbge_else.17471
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
	fblt	$f2, $f1, fbge_else.17472
	lw	$a0, 0($sp)
	lw	$a1, 4($sp)
	add	$a1, $a1, $a0
	add	$a0, $a0, $a0
	move	$a25, $a1
	move	$a1, $a0
	move	$a0, $a25
	j	ftoi_ret_sub.892.2709.11483
fbge_else.17472:
	lw	$a0, 0($sp)
	add	$a1, $a0, $a0
	lw	$a0, 4($sp)
	j	ftoi_ret_sub.892.2709.11483
fbge_else.17471:
	lw	$a0, 4($sp)
	move	$v0, $a0
	jr	$ra
div2like_sub.907.2698.5875.11553:
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fblt	$f0, $f2, fbge_else.17473
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
	j	div2like_sub.907.2698.5875.11553
fbge_else.17473:
	fmove	$fv, $f1
	jr $ra
ftoi_ret_sub.892.2683.11546:
	mtc1	$f1, $zero
	sw	$a1, 0($sp)
	sw	$a0, 4($sp)
	fsw	$f0, 8($sp)
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	div2like_sub.907.2698.5875.11553
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	fmove	$f0, $fv
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	flw	$f2, 8($sp)
	fblt	$f2, $f1, fbge_else.17474
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
	fblt	$f2, $f1, fbge_else.17475
	lw	$a0, 0($sp)
	lw	$a1, 4($sp)
	add	$a1, $a1, $a0
	add	$a0, $a0, $a0
	move	$a25, $a1
	move	$a1, $a0
	move	$a0, $a25
	j	ftoi_ret_sub.892.2683.11546
fbge_else.17475:
	lw	$a0, 0($sp)
	add	$a1, $a0, $a0
	lw	$a0, 4($sp)
	j	ftoi_ret_sub.892.2683.11546
fbge_else.17474:
	lw	$a0, 4($sp)
	move	$v0, $a0
	jr	$ra
div2like_sub.907.2724.5884.11579:
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fblt	$f0, $f2, fbge_else.17476
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
	j	div2like_sub.907.2724.5884.11579
fbge_else.17476:
	fmove	$fv, $f1
	jr $ra
ftoi_ret_sub.892.2709.11573:
	mtc1	$f1, $zero
	sw	$a1, 0($sp)
	sw	$a0, 4($sp)
	fsw	$f0, 8($sp)
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	div2like_sub.907.2724.5884.11579
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	fmove	$f0, $fv
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	flw	$f2, 8($sp)
	fblt	$f2, $f1, fbge_else.17477
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
	fblt	$f2, $f1, fbge_else.17478
	lw	$a0, 0($sp)
	lw	$a1, 4($sp)
	add	$a1, $a1, $a0
	add	$a0, $a0, $a0
	move	$a25, $a1
	move	$a1, $a0
	move	$a0, $a25
	j	ftoi_ret_sub.892.2709.11573
fbge_else.17478:
	lw	$a0, 0($sp)
	add	$a1, $a0, $a0
	lw	$a0, 4($sp)
	j	ftoi_ret_sub.892.2709.11573
fbge_else.17477:
	lw	$a0, 4($sp)
	move	$v0, $a0
	jr	$ra
div2like_sub.907.2724.5884.11669:
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fblt	$f0, $f2, fbge_else.17479
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
	j	div2like_sub.907.2724.5884.11669
fbge_else.17479:
	fmove	$fv, $f1
	jr $ra
ftoi_ret_sub.892.2709.11663:
	mtc1	$f1, $zero
	sw	$a1, 0($sp)
	sw	$a0, 4($sp)
	fsw	$f0, 8($sp)
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	div2like_sub.907.2724.5884.11669
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	fmove	$f0, $fv
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	flw	$f2, 8($sp)
	fblt	$f2, $f1, fbge_else.17480
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
	fblt	$f2, $f1, fbge_else.17481
	lw	$a0, 0($sp)
	lw	$a1, 4($sp)
	add	$a1, $a1, $a0
	add	$a0, $a0, $a0
	move	$a25, $a1
	move	$a1, $a0
	move	$a0, $a25
	j	ftoi_ret_sub.892.2709.11663
fbge_else.17481:
	lw	$a0, 0($sp)
	add	$a1, $a0, $a0
	lw	$a0, 4($sp)
	j	ftoi_ret_sub.892.2709.11663
fbge_else.17480:
	lw	$a0, 4($sp)
	move	$v0, $a0
	jr	$ra
itof_ret_sub.851.2633.5109:
	sra	$a1, $a0, 1
	li	$a2, 0
	bne	$a0, $a2, beq_else.17482
	fmove	$fv, $f0
	jr $ra
beq_else.17482:
	sub	$a0, $a0, $a1
	sub	$a0, $a0, $a1
	li	$a2, 0
	blt	$a2, $a0, bge_else.17483
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fmul	$f1, $f1, $f2
	move	$a0, $a1
	j	itof_ret_sub.851.2633.5109
bge_else.17483:
	fadd	$f0, $f0, $f1
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fmul	$f1, $f1, $f2
	move	$a0, $a1
	j	itof_ret_sub.851.2633.5109
itof_ret_sub.851.2649.5128:
	sra	$a1, $a0, 1
	li	$a2, 0
	bne	$a0, $a2, beq_else.17484
	fmove	$fv, $f0
	jr $ra
beq_else.17484:
	sub	$a0, $a0, $a1
	sub	$a0, $a0, $a1
	li	$a2, 0
	blt	$a2, $a0, bge_else.17485
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fmul	$f1, $f1, $f2
	move	$a0, $a1
	j	itof_ret_sub.851.2649.5128
bge_else.17485:
	fadd	$f0, $f0, $f1
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fmul	$f1, $f1, $f2
	move	$a0, $a1
	j	itof_ret_sub.851.2649.5128
itof_ret_sub.851.2633.5176:
	sra	$a1, $a0, 1
	li	$a2, 0
	bne	$a0, $a2, beq_else.17486
	fmove	$fv, $f0
	jr $ra
beq_else.17486:
	sub	$a0, $a0, $a1
	sub	$a0, $a0, $a1
	li	$a2, 0
	blt	$a2, $a0, bge_else.17487
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fmul	$f1, $f1, $f2
	move	$a0, $a1
	j	itof_ret_sub.851.2633.5176
bge_else.17487:
	fadd	$f0, $f0, $f1
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fmul	$f1, $f1, $f2
	move	$a0, $a1
	j	itof_ret_sub.851.2633.5176
itof_ret_sub.851.2649.5195:
	sra	$a1, $a0, 1
	li	$a2, 0
	bne	$a0, $a2, beq_else.17488
	fmove	$fv, $f0
	jr $ra
beq_else.17488:
	sub	$a0, $a0, $a1
	sub	$a0, $a0, $a1
	li	$a2, 0
	blt	$a2, $a0, bge_else.17489
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fmul	$f1, $f1, $f2
	move	$a0, $a1
	j	itof_ret_sub.851.2649.5195
bge_else.17489:
	fadd	$f0, $f0, $f1
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fmul	$f1, $f1, $f2
	move	$a0, $a1
	j	itof_ret_sub.851.2649.5195
div2like_sub.907.2750.5893.12145:
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fblt	$f0, $f2, fbge_else.17490
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
	j	div2like_sub.907.2750.5893.12145
fbge_else.17490:
	fmove	$fv, $f1
	jr $ra
ftoi_ret_sub.892.2735.12138:
	mtc1	$f1, $zero
	sw	$a1, 0($sp)
	sw	$a0, 4($sp)
	fsw	$f0, 8($sp)
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	div2like_sub.907.2750.5893.12145
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	fmove	$f0, $fv
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	flw	$f2, 8($sp)
	fblt	$f2, $f1, fbge_else.17491
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
	fblt	$f2, $f1, fbge_else.17492
	lw	$a0, 0($sp)
	lw	$a1, 4($sp)
	add	$a1, $a1, $a0
	add	$a0, $a0, $a0
	move	$a25, $a1
	move	$a1, $a0
	move	$a0, $a25
	j	ftoi_ret_sub.892.2735.12138
fbge_else.17492:
	lw	$a0, 0($sp)
	add	$a1, $a0, $a0
	lw	$a0, 4($sp)
	j	ftoi_ret_sub.892.2735.12138
fbge_else.17491:
	lw	$a0, 4($sp)
	move	$v0, $a0
	jr	$ra
ftoi_big.874.12076:
	li	$v0, 19200
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	fsub	$f0, $f0, $f1
	li	$a1, 128
	sll	$a1, $a1, 16
	ori	$a1, $a1, 0
	add	$a0, $a0, $a1
	fblt	$f0, $f1, fbge_else.17493
	j	ftoi_big.874.12076
fbge_else.17493:
	li	$a1, 0
	li	$a2, 1
	sw	$a0, 0($sp)
	move	$a0, $a1
	move	$a1, $a2
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	ftoi_ret_sub.892.2735.12138
	subi	$sp, $sp, 8
	lw	$ra, 4($sp)
	move	$a0, $v0
	lw	$a1, 0($sp)
	add	$v0, $a1, $a0
	jr	$ra
div2like_sub.907.2750.5893.12055:
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fblt	$f0, $f2, fbge_else.17494
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
	j	div2like_sub.907.2750.5893.12055
fbge_else.17494:
	fmove	$fv, $f1
	jr $ra
ftoi_ret_sub.892.2735.12048:
	mtc1	$f1, $zero
	sw	$a1, 0($sp)
	sw	$a0, 4($sp)
	fsw	$f0, 8($sp)
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	div2like_sub.907.2750.5893.12055
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	fmove	$f0, $fv
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	flw	$f2, 8($sp)
	fblt	$f2, $f1, fbge_else.17495
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
	fblt	$f2, $f1, fbge_else.17496
	lw	$a0, 0($sp)
	lw	$a1, 4($sp)
	add	$a1, $a1, $a0
	add	$a0, $a0, $a0
	move	$a25, $a1
	move	$a1, $a0
	move	$a0, $a25
	j	ftoi_ret_sub.892.2735.12048
fbge_else.17496:
	lw	$a0, 0($sp)
	add	$a1, $a0, $a0
	lw	$a0, 4($sp)
	j	ftoi_ret_sub.892.2735.12048
fbge_else.17495:
	lw	$a0, 4($sp)
	move	$v0, $a0
	jr	$ra
ftoi_big.874.11986:
	li	$v0, 19200
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	fsub	$f0, $f0, $f1
	li	$a1, 128
	sll	$a1, $a1, 16
	ori	$a1, $a1, 0
	add	$a0, $a0, $a1
	fblt	$f0, $f1, fbge_else.17497
	j	ftoi_big.874.11986
fbge_else.17497:
	li	$a1, 0
	li	$a2, 1
	sw	$a0, 0($sp)
	move	$a0, $a1
	move	$a1, $a2
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	ftoi_ret_sub.892.2735.12048
	subi	$sp, $sp, 8
	lw	$ra, 4($sp)
	move	$a0, $v0
	lw	$a1, 0($sp)
	add	$v0, $a1, $a0
	jr	$ra
div2like_sub.907.2750.5893.11965:
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fblt	$f0, $f2, fbge_else.17498
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
	j	div2like_sub.907.2750.5893.11965
fbge_else.17498:
	fmove	$fv, $f1
	jr $ra
ftoi_ret_sub.892.2735.11958:
	mtc1	$f1, $zero
	sw	$a1, 0($sp)
	sw	$a0, 4($sp)
	fsw	$f0, 8($sp)
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	div2like_sub.907.2750.5893.11965
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	fmove	$f0, $fv
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	flw	$f2, 8($sp)
	fblt	$f2, $f1, fbge_else.17499
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
	fblt	$f2, $f1, fbge_else.17500
	lw	$a0, 0($sp)
	lw	$a1, 4($sp)
	add	$a1, $a1, $a0
	add	$a0, $a0, $a0
	move	$a25, $a1
	move	$a1, $a0
	move	$a0, $a25
	j	ftoi_ret_sub.892.2735.11958
fbge_else.17500:
	lw	$a0, 0($sp)
	add	$a1, $a0, $a0
	lw	$a0, 4($sp)
	j	ftoi_ret_sub.892.2735.11958
fbge_else.17499:
	lw	$a0, 4($sp)
	move	$v0, $a0
	jr	$ra
ftoi_big.874.11896:
	li	$v0, 19200
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	fsub	$f0, $f0, $f1
	li	$a1, 128
	sll	$a1, $a1, 16
	ori	$a1, $a1, 0
	add	$a0, $a0, $a1
	fblt	$f0, $f1, fbge_else.17501
	j	ftoi_big.874.11896
fbge_else.17501:
	li	$a1, 0
	li	$a2, 1
	sw	$a0, 0($sp)
	move	$a0, $a1
	move	$a1, $a2
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	ftoi_ret_sub.892.2735.11958
	subi	$sp, $sp, 8
	lw	$ra, 4($sp)
	move	$a0, $v0
	lw	$a1, 0($sp)
	add	$v0, $a1, $a0
	jr	$ra
div2like_sub.907.2724.5884.11936:
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fblt	$f0, $f2, fbge_else.17502
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
	j	div2like_sub.907.2724.5884.11936
fbge_else.17502:
	fmove	$fv, $f1
	jr $ra
ftoi_ret_sub.892.2709.11930:
	mtc1	$f1, $zero
	sw	$a1, 0($sp)
	sw	$a0, 4($sp)
	fsw	$f0, 8($sp)
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	div2like_sub.907.2724.5884.11936
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	fmove	$f0, $fv
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	flw	$f2, 8($sp)
	fblt	$f2, $f1, fbge_else.17503
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
	fblt	$f2, $f1, fbge_else.17504
	lw	$a0, 0($sp)
	lw	$a1, 4($sp)
	add	$a1, $a1, $a0
	add	$a0, $a0, $a0
	move	$a25, $a1
	move	$a1, $a0
	move	$a0, $a25
	j	ftoi_ret_sub.892.2709.11930
fbge_else.17504:
	lw	$a0, 0($sp)
	add	$a1, $a0, $a0
	lw	$a0, 4($sp)
	j	ftoi_ret_sub.892.2709.11930
fbge_else.17503:
	lw	$a0, 4($sp)
	move	$v0, $a0
	jr	$ra
div2like_sub.907.2724.5884.12026:
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fblt	$f0, $f2, fbge_else.17505
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
	j	div2like_sub.907.2724.5884.12026
fbge_else.17505:
	fmove	$fv, $f1
	jr $ra
ftoi_ret_sub.892.2709.12020:
	mtc1	$f1, $zero
	sw	$a1, 0($sp)
	sw	$a0, 4($sp)
	fsw	$f0, 8($sp)
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	div2like_sub.907.2724.5884.12026
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	fmove	$f0, $fv
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	flw	$f2, 8($sp)
	fblt	$f2, $f1, fbge_else.17506
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
	fblt	$f2, $f1, fbge_else.17507
	lw	$a0, 0($sp)
	lw	$a1, 4($sp)
	add	$a1, $a1, $a0
	add	$a0, $a0, $a0
	move	$a25, $a1
	move	$a1, $a0
	move	$a0, $a25
	j	ftoi_ret_sub.892.2709.12020
fbge_else.17507:
	lw	$a0, 0($sp)
	add	$a1, $a0, $a0
	lw	$a0, 4($sp)
	j	ftoi_ret_sub.892.2709.12020
fbge_else.17506:
	lw	$a0, 4($sp)
	move	$v0, $a0
	jr	$ra
div2like_sub.907.2724.5884.12116:
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fblt	$f0, $f2, fbge_else.17508
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
	j	div2like_sub.907.2724.5884.12116
fbge_else.17508:
	fmove	$fv, $f1
	jr $ra
ftoi_ret_sub.892.2709.12110:
	mtc1	$f1, $zero
	sw	$a1, 0($sp)
	sw	$a0, 4($sp)
	fsw	$f0, 8($sp)
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	div2like_sub.907.2724.5884.12116
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	fmove	$f0, $fv
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	flw	$f2, 8($sp)
	fblt	$f2, $f1, fbge_else.17509
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
	fblt	$f2, $f1, fbge_else.17510
	lw	$a0, 0($sp)
	lw	$a1, 4($sp)
	add	$a1, $a1, $a0
	add	$a0, $a0, $a0
	move	$a25, $a1
	move	$a1, $a0
	move	$a0, $a25
	j	ftoi_ret_sub.892.2709.12110
fbge_else.17510:
	lw	$a0, 0($sp)
	add	$a1, $a0, $a0
	lw	$a0, 4($sp)
	j	ftoi_ret_sub.892.2709.12110
fbge_else.17509:
	lw	$a0, 4($sp)
	move	$v0, $a0
	jr	$ra
iloop.476:
	lw	$a1, 4($a26)
	li	$a2, 256
	blt	$a0, $a2, bge_else.17511
	li	$a0, 256
	li	$a2, 256
	mtc1	$f0, $zero
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	sw	$a0, 0($sp)
	sw	$a1, 4($sp)
	move	$a0, $a2
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	itof_ret_sub.851.2649.5273
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	fmove	$f0, $fv
	lw	$a0, 4($sp)
	lw	$a1, 0($a0)
	lw	$a2, 0($sp)
	blt	$a1, $a2, bge_else.17512
	li	$v0, 17279
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f0, $v0
	mtc1	$f1, $zero
	mtc1	$f2, $zero
	fabs	$f0, $f0
	li	$v0, 19200
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f3, $v0
	fsw	$f2, 8($sp)
	fsw	$f1, 16($sp)
	fblt	$f3, $f0, fbge_else.17513
	li	$a0, 0
	li	$a1, 1
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	ftoi_ret_sub.892.2709.12110
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	move	$a0, $v0
	j	fbge_cont.17514
fbge_else.17513:
	li	$a0, 0
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	ftoi_big.874.12076
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	move	$a0, $v0
fbge_cont.17514:
	flw	$f0, 16($sp)
	fabs	$f0, $f0
	li	$v0, 19200
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	sw	$a0, 24($sp)
	fblt	$f1, $f0, fbge_else.17515
	li	$a1, 0
	li	$a2, 1
	move	$a0, $a1
	move	$a1, $a2
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	ftoi_ret_sub.892.2709.12020
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	move	$a0, $v0
	j	fbge_cont.17516
fbge_else.17515:
	li	$a1, 0
	move	$a0, $a1
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	ftoi_big.874.11986
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	move	$a0, $v0
fbge_cont.17516:
	flw	$f0, 8($sp)
	fabs	$f0, $f0
	li	$v0, 19200
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	sw	$a0, 28($sp)
	fblt	$f1, $f0, fbge_else.17517
	li	$a1, 0
	li	$a2, 1
	move	$a0, $a1
	move	$a1, $a2
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	ftoi_ret_sub.892.2709.11930
	subi	$sp, $sp, 40
	lw	$ra, 36($sp)
	move	$a0, $v0
	j	fbge_cont.17518
fbge_else.17517:
	li	$a1, 0
	move	$a0, $a1
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	ftoi_big.874.11896
	subi	$sp, $sp, 40
	lw	$ra, 36($sp)
	move	$a0, $v0
fbge_cont.17518:
	li	$a23, 32
	print_char	$a23
	li	$a2, 0
	lw	$a1, 24($sp)
	blt	$a1, $a2, bge_else.17519
	j	bge_cont.17520
bge_else.17519:
	li	$a23, 45
	print_char	$a23
	neg	$a1, $a1
bge_cont.17520:
	li	$a3, 10000
	sw	$a0, 32($sp)
	sw	$a1, 36($sp)
	move	$a0, $a1
	move	$a1, $a3
	sw	$ra, 44($sp)
	addi	$sp, $sp, 48
	jal	countn.418
	subi	$sp, $sp, 48
	lw	$ra, 44($sp)
	move	$a0, $v0
	li	$a1, 10000
	li	$a2, 0
	sw	$a0, 40($sp)
	sw	$ra, 44($sp)
	addi	$sp, $sp, 48
	jal	mymul.422
	subi	$sp, $sp, 48
	lw	$ra, 44($sp)
	move	$a0, $v0
	lw	$a1, 36($sp)
	sub	$a0, $a1, $a0
	li	$a2, 0
	lw	$a1, 40($sp)
	blt	$a2, $a1, bge_else.17521
	li	$a1, 0
	j	bge_cont.17522
bge_else.17521:
	addi	$a1, $a1, 48
	print_char	$a1
	li	$a1, 1
bge_cont.17522:
	li	$a3, 1000
	sw	$a1, 44($sp)
	sw	$a0, 48($sp)
	move	$a1, $a3
	sw	$ra, 52($sp)
	addi	$sp, $sp, 56
	jal	countn.418
	subi	$sp, $sp, 56
	lw	$ra, 52($sp)
	move	$a0, $v0
	li	$a1, 1000
	li	$a2, 0
	sw	$a0, 52($sp)
	sw	$ra, 60($sp)
	addi	$sp, $sp, 64
	jal	mymul.422
	subi	$sp, $sp, 64
	lw	$ra, 60($sp)
	move	$a0, $v0
	lw	$a1, 48($sp)
	sub	$a0, $a1, $a0
	li	$a2, 0
	lw	$a1, 52($sp)
	blt	$a2, $a1, bge_else.17523
	li	$a1, 1
	lw	$a3, 44($sp)
	bne	$a3, $a1, bne_else.17525
	li	$a23, 48
	print_char	$a23
	li	$a1, 1
	j	bne_cont.17526
bne_else.17525:
	li	$a1, 0
bne_cont.17526:
	j	bge_cont.17524
bge_else.17523:
	addi	$a1, $a1, 48
	print_char	$a1
	li	$a1, 1
bge_cont.17524:
	li	$a3, 100
	sw	$a1, 56($sp)
	sw	$a0, 60($sp)
	move	$a1, $a3
	sw	$ra, 68($sp)
	addi	$sp, $sp, 72
	jal	countn.418
	subi	$sp, $sp, 72
	lw	$ra, 68($sp)
	move	$a0, $v0
	li	$a1, 100
	li	$a2, 0
	sw	$a0, 64($sp)
	sw	$ra, 68($sp)
	addi	$sp, $sp, 72
	jal	mymul.422
	subi	$sp, $sp, 72
	lw	$ra, 68($sp)
	move	$a0, $v0
	lw	$a1, 60($sp)
	sub	$a0, $a1, $a0
	li	$a2, 0
	lw	$a1, 64($sp)
	blt	$a2, $a1, bge_else.17527
	li	$a1, 1
	lw	$a3, 56($sp)
	bne	$a3, $a1, bne_else.17529
	li	$a23, 48
	print_char	$a23
	li	$a1, 1
	j	bne_cont.17530
bne_else.17529:
	li	$a1, 0
bne_cont.17530:
	j	bge_cont.17528
bge_else.17527:
	addi	$a1, $a1, 48
	print_char	$a1
	li	$a1, 1
bge_cont.17528:
	li	$a3, 10
	sw	$a1, 68($sp)
	sw	$a0, 72($sp)
	move	$a1, $a3
	sw	$ra, 76($sp)
	addi	$sp, $sp, 80
	jal	countn.418
	subi	$sp, $sp, 80
	lw	$ra, 76($sp)
	move	$a0, $v0
	li	$a1, 10
	li	$a2, 0
	sw	$a0, 76($sp)
	sw	$ra, 84($sp)
	addi	$sp, $sp, 88
	jal	mymul.422
	subi	$sp, $sp, 88
	lw	$ra, 84($sp)
	move	$a0, $v0
	lw	$a1, 72($sp)
	sub	$a0, $a1, $a0
	li	$a1, 0
	lw	$a2, 76($sp)
	blt	$a1, $a2, bge_else.17531
	li	$a1, 1
	lw	$a2, 68($sp)
	bne	$a2, $a1, bne_else.17533
	li	$a23, 48
	print_char	$a23
	li	$a1, 1
	j	bne_cont.17534
bne_else.17533:
	li	$a1, 0
bne_cont.17534:
	j	bge_cont.17532
bge_else.17531:
	addi	$a1, $a2, 48
	print_char	$a1
	li	$a1, 1
bge_cont.17532:
	addi	$a0, $a0, 48
	print_char	$a0
	li	$a23, 32
	print_char	$a23
	li	$a2, 0
	lw	$a0, 28($sp)
	blt	$a0, $a2, bge_else.17535
	j	bge_cont.17536
bge_else.17535:
	li	$a23, 45
	print_char	$a23
	neg	$a0, $a0
bge_cont.17536:
	li	$a1, 10000
	sw	$a0, 80($sp)
	sw	$ra, 84($sp)
	addi	$sp, $sp, 88
	jal	countn.418
	subi	$sp, $sp, 88
	lw	$ra, 84($sp)
	move	$a0, $v0
	li	$a1, 10000
	li	$a2, 0
	sw	$a0, 84($sp)
	sw	$ra, 92($sp)
	addi	$sp, $sp, 96
	jal	mymul.422
	subi	$sp, $sp, 96
	lw	$ra, 92($sp)
	move	$a0, $v0
	lw	$a1, 80($sp)
	sub	$a0, $a1, $a0
	li	$a2, 0
	lw	$a1, 84($sp)
	blt	$a2, $a1, bge_else.17537
	li	$a1, 0
	j	bge_cont.17538
bge_else.17537:
	addi	$a1, $a1, 48
	print_char	$a1
	li	$a1, 1
bge_cont.17538:
	li	$a3, 1000
	sw	$a1, 88($sp)
	sw	$a0, 92($sp)
	move	$a1, $a3
	sw	$ra, 100($sp)
	addi	$sp, $sp, 104
	jal	countn.418
	subi	$sp, $sp, 104
	lw	$ra, 100($sp)
	move	$a0, $v0
	li	$a1, 1000
	li	$a2, 0
	sw	$a0, 96($sp)
	sw	$ra, 100($sp)
	addi	$sp, $sp, 104
	jal	mymul.422
	subi	$sp, $sp, 104
	lw	$ra, 100($sp)
	move	$a0, $v0
	lw	$a1, 92($sp)
	sub	$a0, $a1, $a0
	li	$a2, 0
	lw	$a1, 96($sp)
	blt	$a2, $a1, bge_else.17539
	li	$a1, 1
	lw	$a3, 88($sp)
	bne	$a3, $a1, bne_else.17541
	li	$a23, 48
	print_char	$a23
	li	$a1, 1
	j	bne_cont.17542
bne_else.17541:
	li	$a1, 0
bne_cont.17542:
	j	bge_cont.17540
bge_else.17539:
	addi	$a1, $a1, 48
	print_char	$a1
	li	$a1, 1
bge_cont.17540:
	li	$a3, 100
	sw	$a1, 100($sp)
	sw	$a0, 104($sp)
	move	$a1, $a3
	sw	$ra, 108($sp)
	addi	$sp, $sp, 112
	jal	countn.418
	subi	$sp, $sp, 112
	lw	$ra, 108($sp)
	move	$a0, $v0
	li	$a1, 100
	li	$a2, 0
	sw	$a0, 108($sp)
	sw	$ra, 116($sp)
	addi	$sp, $sp, 120
	jal	mymul.422
	subi	$sp, $sp, 120
	lw	$ra, 116($sp)
	move	$a0, $v0
	lw	$a1, 104($sp)
	sub	$a0, $a1, $a0
	li	$a2, 0
	lw	$a1, 108($sp)
	blt	$a2, $a1, bge_else.17543
	li	$a1, 1
	lw	$a3, 100($sp)
	bne	$a3, $a1, bne_else.17545
	li	$a23, 48
	print_char	$a23
	li	$a1, 1
	j	bne_cont.17546
bne_else.17545:
	li	$a1, 0
bne_cont.17546:
	j	bge_cont.17544
bge_else.17543:
	addi	$a1, $a1, 48
	print_char	$a1
	li	$a1, 1
bge_cont.17544:
	li	$a3, 10
	sw	$a1, 112($sp)
	sw	$a0, 116($sp)
	move	$a1, $a3
	sw	$ra, 124($sp)
	addi	$sp, $sp, 128
	jal	countn.418
	subi	$sp, $sp, 128
	lw	$ra, 124($sp)
	move	$a0, $v0
	li	$a1, 10
	li	$a2, 0
	sw	$a0, 120($sp)
	sw	$ra, 124($sp)
	addi	$sp, $sp, 128
	jal	mymul.422
	subi	$sp, $sp, 128
	lw	$ra, 124($sp)
	move	$a0, $v0
	lw	$a1, 116($sp)
	sub	$a0, $a1, $a0
	li	$a1, 0
	lw	$a2, 120($sp)
	blt	$a1, $a2, bge_else.17547
	li	$a1, 1
	lw	$a2, 112($sp)
	bne	$a2, $a1, bne_else.17549
	li	$a23, 48
	print_char	$a23
	li	$a1, 1
	j	bne_cont.17550
bne_else.17549:
	li	$a1, 0
bne_cont.17550:
	j	bge_cont.17548
bge_else.17547:
	addi	$a1, $a2, 48
	print_char	$a1
	li	$a1, 1
bge_cont.17548:
	addi	$a0, $a0, 48
	print_char	$a0
	li	$a23, 32
	print_char	$a23
	li	$a2, 0
	lw	$a0, 32($sp)
	blt	$a0, $a2, bge_else.17551
	j	bge_cont.17552
bge_else.17551:
	li	$a23, 45
	print_char	$a23
	neg	$a0, $a0
bge_cont.17552:
	li	$a1, 10000
	sw	$a0, 124($sp)
	sw	$ra, 132($sp)
	addi	$sp, $sp, 136
	jal	countn.418
	subi	$sp, $sp, 136
	lw	$ra, 132($sp)
	move	$a0, $v0
	li	$a1, 10000
	li	$a2, 0
	sw	$a0, 128($sp)
	sw	$ra, 132($sp)
	addi	$sp, $sp, 136
	jal	mymul.422
	subi	$sp, $sp, 136
	lw	$ra, 132($sp)
	move	$a0, $v0
	lw	$a1, 124($sp)
	sub	$a0, $a1, $a0
	li	$a2, 0
	lw	$a1, 128($sp)
	blt	$a2, $a1, bge_else.17553
	li	$a1, 0
	j	bge_cont.17554
bge_else.17553:
	addi	$a1, $a1, 48
	print_char	$a1
	li	$a1, 1
bge_cont.17554:
	li	$a3, 1000
	sw	$a1, 132($sp)
	sw	$a0, 136($sp)
	move	$a1, $a3
	sw	$ra, 140($sp)
	addi	$sp, $sp, 144
	jal	countn.418
	subi	$sp, $sp, 144
	lw	$ra, 140($sp)
	move	$a0, $v0
	li	$a1, 1000
	li	$a2, 0
	sw	$a0, 140($sp)
	sw	$ra, 148($sp)
	addi	$sp, $sp, 152
	jal	mymul.422
	subi	$sp, $sp, 152
	lw	$ra, 148($sp)
	move	$a0, $v0
	lw	$a1, 136($sp)
	sub	$a0, $a1, $a0
	li	$a2, 0
	lw	$a1, 140($sp)
	blt	$a2, $a1, bge_else.17555
	li	$a1, 1
	lw	$a3, 132($sp)
	bne	$a3, $a1, bne_else.17557
	li	$a23, 48
	print_char	$a23
	li	$a1, 1
	j	bne_cont.17558
bne_else.17557:
	li	$a1, 0
bne_cont.17558:
	j	bge_cont.17556
bge_else.17555:
	addi	$a1, $a1, 48
	print_char	$a1
	li	$a1, 1
bge_cont.17556:
	li	$a3, 100
	sw	$a1, 144($sp)
	sw	$a0, 148($sp)
	move	$a1, $a3
	sw	$ra, 156($sp)
	addi	$sp, $sp, 160
	jal	countn.418
	subi	$sp, $sp, 160
	lw	$ra, 156($sp)
	move	$a0, $v0
	li	$a1, 100
	li	$a2, 0
	sw	$a0, 152($sp)
	sw	$ra, 156($sp)
	addi	$sp, $sp, 160
	jal	mymul.422
	subi	$sp, $sp, 160
	lw	$ra, 156($sp)
	move	$a0, $v0
	lw	$a1, 148($sp)
	sub	$a0, $a1, $a0
	li	$a2, 0
	lw	$a1, 152($sp)
	blt	$a2, $a1, bge_else.17559
	li	$a1, 1
	lw	$a3, 144($sp)
	bne	$a3, $a1, bne_else.17561
	li	$a23, 48
	print_char	$a23
	li	$a1, 1
	j	bne_cont.17562
bne_else.17561:
	li	$a1, 0
bne_cont.17562:
	j	bge_cont.17560
bge_else.17559:
	addi	$a1, $a1, 48
	print_char	$a1
	li	$a1, 1
bge_cont.17560:
	li	$a3, 10
	sw	$a1, 156($sp)
	sw	$a0, 160($sp)
	move	$a1, $a3
	sw	$ra, 164($sp)
	addi	$sp, $sp, 168
	jal	countn.418
	subi	$sp, $sp, 168
	lw	$ra, 164($sp)
	move	$a0, $v0
	li	$a1, 10
	li	$a2, 0
	sw	$a0, 164($sp)
	sw	$ra, 172($sp)
	addi	$sp, $sp, 176
	jal	mymul.422
	subi	$sp, $sp, 176
	lw	$ra, 172($sp)
	move	$a0, $v0
	lw	$a1, 160($sp)
	sub	$a0, $a1, $a0
	li	$a1, 0
	lw	$a2, 164($sp)
	blt	$a1, $a2, bge_else.17563
	li	$a1, 1
	lw	$a2, 156($sp)
	bne	$a2, $a1, bne_else.17565
	li	$a23, 48
	print_char	$a23
	li	$a1, 1
	j	bne_cont.17566
bne_else.17565:
	li	$a1, 0
bne_cont.17566:
	j	bge_cont.17564
bge_else.17563:
	addi	$a1, $a2, 48
	print_char	$a1
	li	$a1, 1
bge_cont.17564:
	addi	$a0, $a0, 48
	print_char	$a0
	jr	$ra
bge_else.17512:
	lw	$a1, 4($a0)
	blt	$a1, $a2, bge_else.17568
	li	$v0, 17279
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f0, $v0
	lw	$a1, 0($a0)
	li	$a2, 256
	sub	$a1, $a2, $a1
	li	$a2, 0
	blt	$a2, $a1, bge_else.17569
	neg	$a3, $a1
	j	bge_cont.17570
bge_else.17569:
	move	$a3, $a1
bge_cont.17570:
	blt	$a2, $a1, bge_else.17571
	li	$a1, -1
	j	bge_cont.17572
bge_else.17571:
	li	$a1, 1
bge_cont.17572:
	li	$a2, 1
	fsw	$f0, 168($sp)
	bne	$a1, $a2, bne_else.17573
	li	$a1, 128
	sll	$a1, $a1, 16
	ori	$a1, $a1, 0
	blt	$a1, $a3, bge_else.17575
	mtc1	$f1, $zero
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	move	$a0, $a3
	fmove	$f0, $f1
	fmove	$f1, $f2
	sw	$ra, 180($sp)
	addi	$sp, $sp, 184
	jal	itof_ret_sub.851.2649.5195
	subi	$sp, $sp, 184
	lw	$ra, 180($sp)
	fmove	$f0, $fv
	j	bge_cont.17576
bge_else.17575:
	mtc1	$f1, $zero
	move	$a0, $a3
	fmove	$f0, $f1
	sw	$ra, 180($sp)
	addi	$sp, $sp, 184
	jal	itof_big.835.5169
	subi	$sp, $sp, 184
	lw	$ra, 180($sp)
	fmove	$f0, $fv
bge_cont.17576:
	j	bne_cont.17574
bne_else.17573:
	li	$a1, 128
	sll	$a1, $a1, 16
	ori	$a1, $a1, 0
	blt	$a1, $a3, bge_else.17577
	mtc1	$f1, $zero
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	move	$a0, $a3
	fmove	$f0, $f1
	fmove	$f1, $f2
	sw	$ra, 180($sp)
	addi	$sp, $sp, 184
	jal	itof_ret_sub.851.2633.5176
	subi	$sp, $sp, 184
	lw	$ra, 180($sp)
	fmove	$f0, $fv
	fneg	$f0, $f0
	j	bge_cont.17578
bge_else.17577:
	mtc1	$f1, $zero
	move	$a0, $a3
	fmove	$f0, $f1
	sw	$ra, 180($sp)
	addi	$sp, $sp, 184
	jal	itof_big.835.5169
	subi	$sp, $sp, 184
	lw	$ra, 180($sp)
	fmove	$f0, $fv
	fneg	$f0, $f0
bge_cont.17578:
bne_cont.17574:
	li	$v0, 17279
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	fmul	$f0, $f1, $f0
	lw	$a0, 4($sp)
	lw	$a1, 4($a0)
	lw	$a0, 0($a0)
	sub	$a0, $a1, $a0
	li	$a1, 0
	blt	$a1, $a0, bge_else.17579
	neg	$a2, $a0
	j	bge_cont.17580
bge_else.17579:
	move	$a2, $a0
bge_cont.17580:
	blt	$a1, $a0, bge_else.17581
	li	$a0, -1
	j	bge_cont.17582
bge_else.17581:
	li	$a0, 1
bge_cont.17582:
	li	$a1, 1
	fsw	$f0, 176($sp)
	bne	$a0, $a1, bne_else.17583
	li	$a0, 128
	sll	$a0, $a0, 16
	ori	$a0, $a0, 0
	blt	$a0, $a2, bge_else.17585
	mtc1	$f1, $zero
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	move	$a0, $a2
	fmove	$f0, $f1
	fmove	$f1, $f2
	sw	$ra, 188($sp)
	addi	$sp, $sp, 192
	jal	itof_ret_sub.851.2649.5128
	subi	$sp, $sp, 192
	lw	$ra, 188($sp)
	fmove	$f0, $fv
	j	bge_cont.17586
bge_else.17585:
	mtc1	$f1, $zero
	move	$a0, $a2
	fmove	$f0, $f1
	sw	$ra, 188($sp)
	addi	$sp, $sp, 192
	jal	itof_big.835.5102
	subi	$sp, $sp, 192
	lw	$ra, 188($sp)
	fmove	$f0, $fv
bge_cont.17586:
	j	bne_cont.17584
bne_else.17583:
	li	$a0, 128
	sll	$a0, $a0, 16
	ori	$a0, $a0, 0
	blt	$a0, $a2, bge_else.17587
	mtc1	$f1, $zero
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	move	$a0, $a2
	fmove	$f0, $f1
	fmove	$f1, $f2
	sw	$ra, 188($sp)
	addi	$sp, $sp, 192
	jal	itof_ret_sub.851.2633.5109
	subi	$sp, $sp, 192
	lw	$ra, 188($sp)
	fmove	$f0, $fv
	fneg	$f0, $f0
	j	bge_cont.17588
bge_else.17587:
	mtc1	$f1, $zero
	move	$a0, $a2
	fmove	$f0, $f1
	sw	$ra, 188($sp)
	addi	$sp, $sp, 192
	jal	itof_big.835.5102
	subi	$sp, $sp, 192
	lw	$ra, 188($sp)
	fmove	$f0, $fv
	fneg	$f0, $f0
bge_cont.17588:
bne_cont.17584:
	finv	$f0, $f0
	flw	$f1, 176($sp)
	fmul	$f0, $f1, $f0
	mtc1	$f1, $zero
	flw	$f2, 168($sp)
	fabs	$f2, $f2
	li	$v0, 19200
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f3, $v0
	fsw	$f1, 184($sp)
	fsw	$f0, 192($sp)
	fblt	$f3, $f2, fbge_else.17589
	li	$a0, 0
	li	$a1, 1
	fmove	$f0, $f2
	sw	$ra, 204($sp)
	addi	$sp, $sp, 208
	jal	ftoi_ret_sub.892.2709.11663
	subi	$sp, $sp, 208
	lw	$ra, 204($sp)
	move	$a0, $v0
	j	fbge_cont.17590
fbge_else.17589:
	li	$a0, 0
	fmove	$f0, $f2
	sw	$ra, 204($sp)
	addi	$sp, $sp, 208
	jal	ftoi_big.874.11629
	subi	$sp, $sp, 208
	lw	$ra, 204($sp)
	move	$a0, $v0
fbge_cont.17590:
	flw	$f0, 192($sp)
	fabs	$f1, $f0
	mtc1	$f2, $zero
	fblt	$f0, $f2, fbge_else.17591
	li	$a1, 1
	j	fbge_cont.17592
fbge_else.17591:
	li	$a1, -1
fbge_cont.17592:
	li	$a2, 1
	sw	$a0, 200($sp)
	bne	$a1, $a2, bne_else.17593
	li	$v0, 19200
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f0, $v0
	fblt	$f0, $f1, fbge_else.17595
	li	$a1, 0
	li	$a2, 1
	move	$a0, $a1
	move	$a1, $a2
	fmove	$f0, $f1
	sw	$ra, 204($sp)
	addi	$sp, $sp, 208
	jal	ftoi_ret_sub.892.2709.11573
	subi	$sp, $sp, 208
	lw	$ra, 204($sp)
	move	$a0, $v0
	j	fbge_cont.17596
fbge_else.17595:
	li	$a1, 0
	move	$a0, $a1
	fmove	$f0, $f1
	sw	$ra, 204($sp)
	addi	$sp, $sp, 208
	jal	ftoi_big.874.11539
	subi	$sp, $sp, 208
	lw	$ra, 204($sp)
	move	$a0, $v0
fbge_cont.17596:
	j	bne_cont.17594
bne_else.17593:
	li	$v0, 19200
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f0, $v0
	fblt	$f0, $f1, fbge_else.17597
	li	$a1, 0
	li	$a2, 1
	move	$a0, $a1
	move	$a1, $a2
	fmove	$f0, $f1
	sw	$ra, 204($sp)
	addi	$sp, $sp, 208
	jal	ftoi_ret_sub.892.2683.11546
	subi	$sp, $sp, 208
	lw	$ra, 204($sp)
	move	$a0, $v0
	neg	$a0, $a0
	j	fbge_cont.17598
fbge_else.17597:
	li	$a1, 0
	move	$a0, $a1
	fmove	$f0, $f1
	sw	$ra, 204($sp)
	addi	$sp, $sp, 208
	jal	ftoi_big.874.11539
	subi	$sp, $sp, 208
	lw	$ra, 204($sp)
	move	$a0, $v0
	neg	$a0, $a0
fbge_cont.17598:
bne_cont.17594:
	flw	$f0, 184($sp)
	fabs	$f0, $f0
	li	$v0, 19200
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	sw	$a0, 204($sp)
	fblt	$f1, $f0, fbge_else.17599
	li	$a1, 0
	li	$a2, 1
	move	$a0, $a1
	move	$a1, $a2
	sw	$ra, 212($sp)
	addi	$sp, $sp, 216
	jal	ftoi_ret_sub.892.2709.11483
	subi	$sp, $sp, 216
	lw	$ra, 212($sp)
	move	$a0, $v0
	j	fbge_cont.17600
fbge_else.17599:
	li	$a1, 0
	move	$a0, $a1
	sw	$ra, 212($sp)
	addi	$sp, $sp, 216
	jal	ftoi_big.874.11449
	subi	$sp, $sp, 216
	lw	$ra, 212($sp)
	move	$a0, $v0
fbge_cont.17600:
	li	$a23, 32
	print_char	$a23
	li	$a2, 0
	lw	$a1, 200($sp)
	blt	$a1, $a2, bge_else.17601
	j	bge_cont.17602
bge_else.17601:
	li	$a23, 45
	print_char	$a23
	neg	$a1, $a1
bge_cont.17602:
	li	$a3, 10000
	sw	$a0, 208($sp)
	sw	$a1, 212($sp)
	move	$a0, $a1
	move	$a1, $a3
	sw	$ra, 220($sp)
	addi	$sp, $sp, 224
	jal	countn.418
	subi	$sp, $sp, 224
	lw	$ra, 220($sp)
	move	$a0, $v0
	li	$a1, 10000
	li	$a2, 0
	sw	$a0, 216($sp)
	sw	$ra, 220($sp)
	addi	$sp, $sp, 224
	jal	mymul.422
	subi	$sp, $sp, 224
	lw	$ra, 220($sp)
	move	$a0, $v0
	lw	$a1, 212($sp)
	sub	$a0, $a1, $a0
	li	$a2, 0
	lw	$a1, 216($sp)
	blt	$a2, $a1, bge_else.17603
	li	$a1, 0
	j	bge_cont.17604
bge_else.17603:
	addi	$a1, $a1, 48
	print_char	$a1
	li	$a1, 1
bge_cont.17604:
	li	$a3, 1000
	sw	$a1, 220($sp)
	sw	$a0, 224($sp)
	move	$a1, $a3
	sw	$ra, 228($sp)
	addi	$sp, $sp, 232
	jal	countn.418
	subi	$sp, $sp, 232
	lw	$ra, 228($sp)
	move	$a0, $v0
	li	$a1, 1000
	li	$a2, 0
	sw	$a0, 228($sp)
	sw	$ra, 236($sp)
	addi	$sp, $sp, 240
	jal	mymul.422
	subi	$sp, $sp, 240
	lw	$ra, 236($sp)
	move	$a0, $v0
	lw	$a1, 224($sp)
	sub	$a0, $a1, $a0
	li	$a2, 0
	lw	$a1, 228($sp)
	blt	$a2, $a1, bge_else.17605
	li	$a1, 1
	lw	$a3, 220($sp)
	bne	$a3, $a1, bne_else.17607
	li	$a23, 48
	print_char	$a23
	li	$a1, 1
	j	bne_cont.17608
bne_else.17607:
	li	$a1, 0
bne_cont.17608:
	j	bge_cont.17606
bge_else.17605:
	addi	$a1, $a1, 48
	print_char	$a1
	li	$a1, 1
bge_cont.17606:
	li	$a3, 100
	sw	$a1, 232($sp)
	sw	$a0, 236($sp)
	move	$a1, $a3
	sw	$ra, 244($sp)
	addi	$sp, $sp, 248
	jal	countn.418
	subi	$sp, $sp, 248
	lw	$ra, 244($sp)
	move	$a0, $v0
	li	$a1, 100
	li	$a2, 0
	sw	$a0, 240($sp)
	sw	$ra, 244($sp)
	addi	$sp, $sp, 248
	jal	mymul.422
	subi	$sp, $sp, 248
	lw	$ra, 244($sp)
	move	$a0, $v0
	lw	$a1, 236($sp)
	sub	$a0, $a1, $a0
	li	$a2, 0
	lw	$a1, 240($sp)
	blt	$a2, $a1, bge_else.17609
	li	$a1, 1
	lw	$a3, 232($sp)
	bne	$a3, $a1, bne_else.17611
	li	$a23, 48
	print_char	$a23
	li	$a1, 1
	j	bne_cont.17612
bne_else.17611:
	li	$a1, 0
bne_cont.17612:
	j	bge_cont.17610
bge_else.17609:
	addi	$a1, $a1, 48
	print_char	$a1
	li	$a1, 1
bge_cont.17610:
	li	$a3, 10
	sw	$a1, 244($sp)
	sw	$a0, 248($sp)
	move	$a1, $a3
	sw	$ra, 252($sp)
	addi	$sp, $sp, 256
	jal	countn.418
	subi	$sp, $sp, 256
	lw	$ra, 252($sp)
	move	$a0, $v0
	li	$a1, 10
	li	$a2, 0
	sw	$a0, 252($sp)
	sw	$ra, 260($sp)
	addi	$sp, $sp, 264
	jal	mymul.422
	subi	$sp, $sp, 264
	lw	$ra, 260($sp)
	move	$a0, $v0
	lw	$a1, 248($sp)
	sub	$a0, $a1, $a0
	li	$a1, 0
	lw	$a2, 252($sp)
	blt	$a1, $a2, bge_else.17613
	li	$a1, 1
	lw	$a2, 244($sp)
	bne	$a2, $a1, bne_else.17615
	li	$a23, 48
	print_char	$a23
	li	$a1, 1
	j	bne_cont.17616
bne_else.17615:
	li	$a1, 0
bne_cont.17616:
	j	bge_cont.17614
bge_else.17613:
	addi	$a1, $a2, 48
	print_char	$a1
	li	$a1, 1
bge_cont.17614:
	addi	$a0, $a0, 48
	print_char	$a0
	li	$a23, 32
	print_char	$a23
	li	$a2, 0
	lw	$a0, 204($sp)
	blt	$a0, $a2, bge_else.17617
	j	bge_cont.17618
bge_else.17617:
	li	$a23, 45
	print_char	$a23
	neg	$a0, $a0
bge_cont.17618:
	li	$a1, 10000
	sw	$a0, 256($sp)
	sw	$ra, 260($sp)
	addi	$sp, $sp, 264
	jal	countn.418
	subi	$sp, $sp, 264
	lw	$ra, 260($sp)
	move	$a0, $v0
	li	$a1, 10000
	li	$a2, 0
	sw	$a0, 260($sp)
	sw	$ra, 268($sp)
	addi	$sp, $sp, 272
	jal	mymul.422
	subi	$sp, $sp, 272
	lw	$ra, 268($sp)
	move	$a0, $v0
	lw	$a1, 256($sp)
	sub	$a0, $a1, $a0
	li	$a2, 0
	lw	$a1, 260($sp)
	blt	$a2, $a1, bge_else.17619
	li	$a1, 0
	j	bge_cont.17620
bge_else.17619:
	addi	$a1, $a1, 48
	print_char	$a1
	li	$a1, 1
bge_cont.17620:
	li	$a3, 1000
	sw	$a1, 264($sp)
	sw	$a0, 268($sp)
	move	$a1, $a3
	sw	$ra, 276($sp)
	addi	$sp, $sp, 280
	jal	countn.418
	subi	$sp, $sp, 280
	lw	$ra, 276($sp)
	move	$a0, $v0
	li	$a1, 1000
	li	$a2, 0
	sw	$a0, 272($sp)
	sw	$ra, 276($sp)
	addi	$sp, $sp, 280
	jal	mymul.422
	subi	$sp, $sp, 280
	lw	$ra, 276($sp)
	move	$a0, $v0
	lw	$a1, 268($sp)
	sub	$a0, $a1, $a0
	li	$a2, 0
	lw	$a1, 272($sp)
	blt	$a2, $a1, bge_else.17621
	li	$a1, 1
	lw	$a3, 264($sp)
	bne	$a3, $a1, bne_else.17623
	li	$a23, 48
	print_char	$a23
	li	$a1, 1
	j	bne_cont.17624
bne_else.17623:
	li	$a1, 0
bne_cont.17624:
	j	bge_cont.17622
bge_else.17621:
	addi	$a1, $a1, 48
	print_char	$a1
	li	$a1, 1
bge_cont.17622:
	li	$a3, 100
	sw	$a1, 276($sp)
	sw	$a0, 280($sp)
	move	$a1, $a3
	sw	$ra, 284($sp)
	addi	$sp, $sp, 288
	jal	countn.418
	subi	$sp, $sp, 288
	lw	$ra, 284($sp)
	move	$a0, $v0
	li	$a1, 100
	li	$a2, 0
	sw	$a0, 284($sp)
	sw	$ra, 292($sp)
	addi	$sp, $sp, 296
	jal	mymul.422
	subi	$sp, $sp, 296
	lw	$ra, 292($sp)
	move	$a0, $v0
	lw	$a1, 280($sp)
	sub	$a0, $a1, $a0
	li	$a2, 0
	lw	$a1, 284($sp)
	blt	$a2, $a1, bge_else.17625
	li	$a1, 1
	lw	$a3, 276($sp)
	bne	$a3, $a1, bne_else.17627
	li	$a23, 48
	print_char	$a23
	li	$a1, 1
	j	bne_cont.17628
bne_else.17627:
	li	$a1, 0
bne_cont.17628:
	j	bge_cont.17626
bge_else.17625:
	addi	$a1, $a1, 48
	print_char	$a1
	li	$a1, 1
bge_cont.17626:
	li	$a3, 10
	sw	$a1, 288($sp)
	sw	$a0, 292($sp)
	move	$a1, $a3
	sw	$ra, 300($sp)
	addi	$sp, $sp, 304
	jal	countn.418
	subi	$sp, $sp, 304
	lw	$ra, 300($sp)
	move	$a0, $v0
	li	$a1, 10
	li	$a2, 0
	sw	$a0, 296($sp)
	sw	$ra, 300($sp)
	addi	$sp, $sp, 304
	jal	mymul.422
	subi	$sp, $sp, 304
	lw	$ra, 300($sp)
	move	$a0, $v0
	lw	$a1, 292($sp)
	sub	$a0, $a1, $a0
	li	$a1, 0
	lw	$a2, 296($sp)
	blt	$a1, $a2, bge_else.17629
	li	$a1, 1
	lw	$a2, 288($sp)
	bne	$a2, $a1, bne_else.17631
	li	$a23, 48
	print_char	$a23
	li	$a1, 1
	j	bne_cont.17632
bne_else.17631:
	li	$a1, 0
bne_cont.17632:
	j	bge_cont.17630
bge_else.17629:
	addi	$a1, $a2, 48
	print_char	$a1
	li	$a1, 1
bge_cont.17630:
	addi	$a0, $a0, 48
	print_char	$a0
	li	$a23, 32
	print_char	$a23
	li	$a2, 0
	lw	$a0, 208($sp)
	blt	$a0, $a2, bge_else.17633
	j	bge_cont.17634
bge_else.17633:
	li	$a23, 45
	print_char	$a23
	neg	$a0, $a0
bge_cont.17634:
	li	$a1, 10000
	sw	$a0, 300($sp)
	sw	$ra, 308($sp)
	addi	$sp, $sp, 312
	jal	countn.418
	subi	$sp, $sp, 312
	lw	$ra, 308($sp)
	move	$a0, $v0
	li	$a1, 10000
	li	$a2, 0
	sw	$a0, 304($sp)
	sw	$ra, 308($sp)
	addi	$sp, $sp, 312
	jal	mymul.422
	subi	$sp, $sp, 312
	lw	$ra, 308($sp)
	move	$a0, $v0
	lw	$a1, 300($sp)
	sub	$a0, $a1, $a0
	li	$a2, 0
	lw	$a1, 304($sp)
	blt	$a2, $a1, bge_else.17635
	li	$a1, 0
	j	bge_cont.17636
bge_else.17635:
	addi	$a1, $a1, 48
	print_char	$a1
	li	$a1, 1
bge_cont.17636:
	li	$a3, 1000
	sw	$a1, 308($sp)
	sw	$a0, 312($sp)
	move	$a1, $a3
	sw	$ra, 316($sp)
	addi	$sp, $sp, 320
	jal	countn.418
	subi	$sp, $sp, 320
	lw	$ra, 316($sp)
	move	$a0, $v0
	li	$a1, 1000
	li	$a2, 0
	sw	$a0, 316($sp)
	sw	$ra, 324($sp)
	addi	$sp, $sp, 328
	jal	mymul.422
	subi	$sp, $sp, 328
	lw	$ra, 324($sp)
	move	$a0, $v0
	lw	$a1, 312($sp)
	sub	$a0, $a1, $a0
	li	$a2, 0
	lw	$a1, 316($sp)
	blt	$a2, $a1, bge_else.17637
	li	$a1, 1
	lw	$a3, 308($sp)
	bne	$a3, $a1, bne_else.17639
	li	$a23, 48
	print_char	$a23
	li	$a1, 1
	j	bne_cont.17640
bne_else.17639:
	li	$a1, 0
bne_cont.17640:
	j	bge_cont.17638
bge_else.17637:
	addi	$a1, $a1, 48
	print_char	$a1
	li	$a1, 1
bge_cont.17638:
	li	$a3, 100
	sw	$a1, 320($sp)
	sw	$a0, 324($sp)
	move	$a1, $a3
	sw	$ra, 332($sp)
	addi	$sp, $sp, 336
	jal	countn.418
	subi	$sp, $sp, 336
	lw	$ra, 332($sp)
	move	$a0, $v0
	li	$a1, 100
	li	$a2, 0
	sw	$a0, 328($sp)
	sw	$ra, 332($sp)
	addi	$sp, $sp, 336
	jal	mymul.422
	subi	$sp, $sp, 336
	lw	$ra, 332($sp)
	move	$a0, $v0
	lw	$a1, 324($sp)
	sub	$a0, $a1, $a0
	li	$a2, 0
	lw	$a1, 328($sp)
	blt	$a2, $a1, bge_else.17641
	li	$a1, 1
	lw	$a3, 320($sp)
	bne	$a3, $a1, bne_else.17643
	li	$a23, 48
	print_char	$a23
	li	$a1, 1
	j	bne_cont.17644
bne_else.17643:
	li	$a1, 0
bne_cont.17644:
	j	bge_cont.17642
bge_else.17641:
	addi	$a1, $a1, 48
	print_char	$a1
	li	$a1, 1
bge_cont.17642:
	li	$a3, 10
	sw	$a1, 332($sp)
	sw	$a0, 336($sp)
	move	$a1, $a3
	sw	$ra, 340($sp)
	addi	$sp, $sp, 344
	jal	countn.418
	subi	$sp, $sp, 344
	lw	$ra, 340($sp)
	move	$a0, $v0
	li	$a1, 10
	li	$a2, 0
	sw	$a0, 340($sp)
	sw	$ra, 348($sp)
	addi	$sp, $sp, 352
	jal	mymul.422
	subi	$sp, $sp, 352
	lw	$ra, 348($sp)
	move	$a0, $v0
	lw	$a1, 336($sp)
	sub	$a0, $a1, $a0
	li	$a1, 0
	lw	$a2, 340($sp)
	blt	$a1, $a2, bge_else.17645
	li	$a1, 1
	lw	$a2, 332($sp)
	bne	$a2, $a1, bne_else.17647
	li	$a23, 48
	print_char	$a23
	li	$a1, 1
	j	bne_cont.17648
bne_else.17647:
	li	$a1, 0
bne_cont.17648:
	j	bge_cont.17646
bge_else.17645:
	addi	$a1, $a2, 48
	print_char	$a1
	li	$a1, 1
bge_cont.17646:
	addi	$a0, $a0, 48
	print_char	$a0
	jr	$ra
bge_else.17568:
	lw	$a1, 8($a0)
	blt	$a1, $a2, bge_else.17650
	lw	$a1, 8($a0)
	subi	$a1, $a1, 256
	li	$a2, 0
	blt	$a2, $a1, bge_else.17651
	neg	$a3, $a1
	j	bge_cont.17652
bge_else.17651:
	move	$a3, $a1
bge_cont.17652:
	blt	$a2, $a1, bge_else.17653
	li	$a1, -1
	j	bge_cont.17654
bge_else.17653:
	li	$a1, 1
bge_cont.17654:
	li	$a2, 1
	bne	$a1, $a2, bne_else.17655
	li	$a1, 128
	sll	$a1, $a1, 16
	ori	$a1, $a1, 0
	blt	$a1, $a3, bge_else.17657
	mtc1	$f0, $zero
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	move	$a0, $a3
	sw	$ra, 348($sp)
	addi	$sp, $sp, 352
	jal	itof_ret_sub.851.2649.5050
	subi	$sp, $sp, 352
	lw	$ra, 348($sp)
	fmove	$f0, $fv
	j	bge_cont.17658
bge_else.17657:
	mtc1	$f0, $zero
	move	$a0, $a3
	sw	$ra, 348($sp)
	addi	$sp, $sp, 352
	jal	itof_big.835.5024
	subi	$sp, $sp, 352
	lw	$ra, 348($sp)
	fmove	$f0, $fv
bge_cont.17658:
	j	bne_cont.17656
bne_else.17655:
	li	$a1, 128
	sll	$a1, $a1, 16
	ori	$a1, $a1, 0
	blt	$a1, $a3, bge_else.17659
	mtc1	$f0, $zero
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	move	$a0, $a3
	sw	$ra, 348($sp)
	addi	$sp, $sp, 352
	jal	itof_ret_sub.851.2633.5031
	subi	$sp, $sp, 352
	lw	$ra, 348($sp)
	fmove	$f0, $fv
	fneg	$f0, $f0
	j	bge_cont.17660
bge_else.17659:
	mtc1	$f0, $zero
	move	$a0, $a3
	sw	$ra, 348($sp)
	addi	$sp, $sp, 352
	jal	itof_big.835.5024
	subi	$sp, $sp, 352
	lw	$ra, 348($sp)
	fmove	$f0, $fv
	fneg	$f0, $f0
bge_cont.17660:
bne_cont.17656:
	li	$v0, 17279
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	fmul	$f0, $f1, $f0
	lw	$a0, 4($sp)
	lw	$a1, 8($a0)
	lw	$a0, 4($a0)
	sub	$a0, $a1, $a0
	li	$a1, 0
	blt	$a1, $a0, bge_else.17661
	neg	$a2, $a0
	j	bge_cont.17662
bge_else.17661:
	move	$a2, $a0
bge_cont.17662:
	blt	$a1, $a0, bge_else.17663
	li	$a0, -1
	j	bge_cont.17664
bge_else.17663:
	li	$a0, 1
bge_cont.17664:
	li	$a1, 1
	fsw	$f0, 344($sp)
	bne	$a0, $a1, bne_else.17665
	li	$a0, 128
	sll	$a0, $a0, 16
	ori	$a0, $a0, 0
	blt	$a0, $a2, bge_else.17667
	mtc1	$f1, $zero
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	move	$a0, $a2
	fmove	$f0, $f1
	fmove	$f1, $f2
	sw	$ra, 356($sp)
	addi	$sp, $sp, 360
	jal	itof_ret_sub.851.2649.4983
	subi	$sp, $sp, 360
	lw	$ra, 356($sp)
	fmove	$f0, $fv
	j	bge_cont.17668
bge_else.17667:
	mtc1	$f1, $zero
	move	$a0, $a2
	fmove	$f0, $f1
	sw	$ra, 356($sp)
	addi	$sp, $sp, 360
	jal	itof_big.835.4957
	subi	$sp, $sp, 360
	lw	$ra, 356($sp)
	fmove	$f0, $fv
bge_cont.17668:
	j	bne_cont.17666
bne_else.17665:
	li	$a0, 128
	sll	$a0, $a0, 16
	ori	$a0, $a0, 0
	blt	$a0, $a2, bge_else.17669
	mtc1	$f1, $zero
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	move	$a0, $a2
	fmove	$f0, $f1
	fmove	$f1, $f2
	sw	$ra, 356($sp)
	addi	$sp, $sp, 360
	jal	itof_ret_sub.851.2633.4964
	subi	$sp, $sp, 360
	lw	$ra, 356($sp)
	fmove	$f0, $fv
	fneg	$f0, $f0
	j	bge_cont.17670
bge_else.17669:
	mtc1	$f1, $zero
	move	$a0, $a2
	fmove	$f0, $f1
	sw	$ra, 356($sp)
	addi	$sp, $sp, 360
	jal	itof_big.835.4957
	subi	$sp, $sp, 360
	lw	$ra, 356($sp)
	fmove	$f0, $fv
	fneg	$f0, $f0
bge_cont.17670:
bne_cont.17666:
	finv	$f0, $f0
	flw	$f1, 344($sp)
	fmul	$f0, $f1, $f0
	li	$v0, 17279
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	mtc1	$f2, $zero
	fabs	$f3, $f0
	mtc1	$f4, $zero
	fblt	$f0, $f4, fbge_else.17671
	li	$a0, 1
	j	fbge_cont.17672
fbge_else.17671:
	li	$a0, -1
fbge_cont.17672:
	li	$a1, 1
	fsw	$f2, 352($sp)
	fsw	$f1, 360($sp)
	bne	$a0, $a1, bne_else.17673
	li	$v0, 19200
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f0, $v0
	fblt	$f0, $f3, fbge_else.17675
	li	$a0, 0
	li	$a1, 1
	fmove	$f0, $f3
	sw	$ra, 372($sp)
	addi	$sp, $sp, 376
	jal	ftoi_ret_sub.892.2709.11216
	subi	$sp, $sp, 376
	lw	$ra, 372($sp)
	move	$a0, $v0
	j	fbge_cont.17676
fbge_else.17675:
	li	$a0, 0
	fmove	$f0, $f3
	sw	$ra, 372($sp)
	addi	$sp, $sp, 376
	jal	ftoi_big.874.11182
	subi	$sp, $sp, 376
	lw	$ra, 372($sp)
	move	$a0, $v0
fbge_cont.17676:
	j	bne_cont.17674
bne_else.17673:
	li	$v0, 19200
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f0, $v0
	fblt	$f0, $f3, fbge_else.17677
	li	$a0, 0
	li	$a1, 1
	fmove	$f0, $f3
	sw	$ra, 372($sp)
	addi	$sp, $sp, 376
	jal	ftoi_ret_sub.892.2683.11189
	subi	$sp, $sp, 376
	lw	$ra, 372($sp)
	move	$a0, $v0
	neg	$a0, $a0
	j	fbge_cont.17678
fbge_else.17677:
	li	$a0, 0
	fmove	$f0, $f3
	sw	$ra, 372($sp)
	addi	$sp, $sp, 376
	jal	ftoi_big.874.11182
	subi	$sp, $sp, 376
	lw	$ra, 372($sp)
	move	$a0, $v0
	neg	$a0, $a0
fbge_cont.17678:
bne_cont.17674:
	flw	$f0, 360($sp)
	fabs	$f0, $f0
	li	$v0, 19200
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	sw	$a0, 368($sp)
	fblt	$f1, $f0, fbge_else.17679
	li	$a1, 0
	li	$a2, 1
	move	$a0, $a1
	move	$a1, $a2
	sw	$ra, 372($sp)
	addi	$sp, $sp, 376
	jal	ftoi_ret_sub.892.2709.11126
	subi	$sp, $sp, 376
	lw	$ra, 372($sp)
	move	$a0, $v0
	j	fbge_cont.17680
fbge_else.17679:
	li	$a1, 0
	move	$a0, $a1
	sw	$ra, 372($sp)
	addi	$sp, $sp, 376
	jal	ftoi_big.874.11092
	subi	$sp, $sp, 376
	lw	$ra, 372($sp)
	move	$a0, $v0
fbge_cont.17680:
	flw	$f0, 352($sp)
	fabs	$f0, $f0
	li	$v0, 19200
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	sw	$a0, 372($sp)
	fblt	$f1, $f0, fbge_else.17681
	li	$a1, 0
	li	$a2, 1
	move	$a0, $a1
	move	$a1, $a2
	sw	$ra, 380($sp)
	addi	$sp, $sp, 384
	jal	ftoi_ret_sub.892.2709.11036
	subi	$sp, $sp, 384
	lw	$ra, 380($sp)
	move	$a0, $v0
	j	fbge_cont.17682
fbge_else.17681:
	li	$a1, 0
	move	$a0, $a1
	sw	$ra, 380($sp)
	addi	$sp, $sp, 384
	jal	ftoi_big.874.11002
	subi	$sp, $sp, 384
	lw	$ra, 380($sp)
	move	$a0, $v0
fbge_cont.17682:
	li	$a23, 32
	print_char	$a23
	li	$a2, 0
	lw	$a1, 368($sp)
	blt	$a1, $a2, bge_else.17683
	j	bge_cont.17684
bge_else.17683:
	li	$a23, 45
	print_char	$a23
	neg	$a1, $a1
bge_cont.17684:
	li	$a3, 10000
	sw	$a0, 376($sp)
	sw	$a1, 380($sp)
	move	$a0, $a1
	move	$a1, $a3
	sw	$ra, 388($sp)
	addi	$sp, $sp, 392
	jal	countn.418
	subi	$sp, $sp, 392
	lw	$ra, 388($sp)
	move	$a0, $v0
	li	$a1, 10000
	li	$a2, 0
	sw	$a0, 384($sp)
	sw	$ra, 388($sp)
	addi	$sp, $sp, 392
	jal	mymul.422
	subi	$sp, $sp, 392
	lw	$ra, 388($sp)
	move	$a0, $v0
	lw	$a1, 380($sp)
	sub	$a0, $a1, $a0
	li	$a2, 0
	lw	$a1, 384($sp)
	blt	$a2, $a1, bge_else.17685
	li	$a1, 0
	j	bge_cont.17686
bge_else.17685:
	addi	$a1, $a1, 48
	print_char	$a1
	li	$a1, 1
bge_cont.17686:
	li	$a3, 1000
	sw	$a1, 388($sp)
	sw	$a0, 392($sp)
	move	$a1, $a3
	sw	$ra, 396($sp)
	addi	$sp, $sp, 400
	jal	countn.418
	subi	$sp, $sp, 400
	lw	$ra, 396($sp)
	move	$a0, $v0
	li	$a1, 1000
	li	$a2, 0
	sw	$a0, 396($sp)
	sw	$ra, 404($sp)
	addi	$sp, $sp, 408
	jal	mymul.422
	subi	$sp, $sp, 408
	lw	$ra, 404($sp)
	move	$a0, $v0
	lw	$a1, 392($sp)
	sub	$a0, $a1, $a0
	li	$a2, 0
	lw	$a1, 396($sp)
	blt	$a2, $a1, bge_else.17687
	li	$a1, 1
	lw	$a3, 388($sp)
	bne	$a3, $a1, bne_else.17689
	li	$a23, 48
	print_char	$a23
	li	$a1, 1
	j	bne_cont.17690
bne_else.17689:
	li	$a1, 0
bne_cont.17690:
	j	bge_cont.17688
bge_else.17687:
	addi	$a1, $a1, 48
	print_char	$a1
	li	$a1, 1
bge_cont.17688:
	li	$a3, 100
	sw	$a1, 400($sp)
	sw	$a0, 404($sp)
	move	$a1, $a3
	sw	$ra, 412($sp)
	addi	$sp, $sp, 416
	jal	countn.418
	subi	$sp, $sp, 416
	lw	$ra, 412($sp)
	move	$a0, $v0
	li	$a1, 100
	li	$a2, 0
	sw	$a0, 408($sp)
	sw	$ra, 412($sp)
	addi	$sp, $sp, 416
	jal	mymul.422
	subi	$sp, $sp, 416
	lw	$ra, 412($sp)
	move	$a0, $v0
	lw	$a1, 404($sp)
	sub	$a0, $a1, $a0
	li	$a2, 0
	lw	$a1, 408($sp)
	blt	$a2, $a1, bge_else.17691
	li	$a1, 1
	lw	$a3, 400($sp)
	bne	$a3, $a1, bne_else.17693
	li	$a23, 48
	print_char	$a23
	li	$a1, 1
	j	bne_cont.17694
bne_else.17693:
	li	$a1, 0
bne_cont.17694:
	j	bge_cont.17692
bge_else.17691:
	addi	$a1, $a1, 48
	print_char	$a1
	li	$a1, 1
bge_cont.17692:
	li	$a3, 10
	sw	$a1, 412($sp)
	sw	$a0, 416($sp)
	move	$a1, $a3
	sw	$ra, 420($sp)
	addi	$sp, $sp, 424
	jal	countn.418
	subi	$sp, $sp, 424
	lw	$ra, 420($sp)
	move	$a0, $v0
	li	$a1, 10
	li	$a2, 0
	sw	$a0, 420($sp)
	sw	$ra, 428($sp)
	addi	$sp, $sp, 432
	jal	mymul.422
	subi	$sp, $sp, 432
	lw	$ra, 428($sp)
	move	$a0, $v0
	lw	$a1, 416($sp)
	sub	$a0, $a1, $a0
	li	$a1, 0
	lw	$a2, 420($sp)
	blt	$a1, $a2, bge_else.17695
	li	$a1, 1
	lw	$a2, 412($sp)
	bne	$a2, $a1, bne_else.17697
	li	$a23, 48
	print_char	$a23
	li	$a1, 1
	j	bne_cont.17698
bne_else.17697:
	li	$a1, 0
bne_cont.17698:
	j	bge_cont.17696
bge_else.17695:
	addi	$a1, $a2, 48
	print_char	$a1
	li	$a1, 1
bge_cont.17696:
	addi	$a0, $a0, 48
	print_char	$a0
	li	$a23, 32
	print_char	$a23
	li	$a2, 0
	lw	$a0, 372($sp)
	blt	$a0, $a2, bge_else.17699
	j	bge_cont.17700
bge_else.17699:
	li	$a23, 45
	print_char	$a23
	neg	$a0, $a0
bge_cont.17700:
	li	$a1, 10000
	sw	$a0, 424($sp)
	sw	$ra, 428($sp)
	addi	$sp, $sp, 432
	jal	countn.418
	subi	$sp, $sp, 432
	lw	$ra, 428($sp)
	move	$a0, $v0
	li	$a1, 10000
	li	$a2, 0
	sw	$a0, 428($sp)
	sw	$ra, 436($sp)
	addi	$sp, $sp, 440
	jal	mymul.422
	subi	$sp, $sp, 440
	lw	$ra, 436($sp)
	move	$a0, $v0
	lw	$a1, 424($sp)
	sub	$a0, $a1, $a0
	li	$a2, 0
	lw	$a1, 428($sp)
	blt	$a2, $a1, bge_else.17701
	li	$a1, 0
	j	bge_cont.17702
bge_else.17701:
	addi	$a1, $a1, 48
	print_char	$a1
	li	$a1, 1
bge_cont.17702:
	li	$a3, 1000
	sw	$a1, 432($sp)
	sw	$a0, 436($sp)
	move	$a1, $a3
	sw	$ra, 444($sp)
	addi	$sp, $sp, 448
	jal	countn.418
	subi	$sp, $sp, 448
	lw	$ra, 444($sp)
	move	$a0, $v0
	li	$a1, 1000
	li	$a2, 0
	sw	$a0, 440($sp)
	sw	$ra, 444($sp)
	addi	$sp, $sp, 448
	jal	mymul.422
	subi	$sp, $sp, 448
	lw	$ra, 444($sp)
	move	$a0, $v0
	lw	$a1, 436($sp)
	sub	$a0, $a1, $a0
	li	$a2, 0
	lw	$a1, 440($sp)
	blt	$a2, $a1, bge_else.17703
	li	$a1, 1
	lw	$a3, 432($sp)
	bne	$a3, $a1, bne_else.17705
	li	$a23, 48
	print_char	$a23
	li	$a1, 1
	j	bne_cont.17706
bne_else.17705:
	li	$a1, 0
bne_cont.17706:
	j	bge_cont.17704
bge_else.17703:
	addi	$a1, $a1, 48
	print_char	$a1
	li	$a1, 1
bge_cont.17704:
	li	$a3, 100
	sw	$a1, 444($sp)
	sw	$a0, 448($sp)
	move	$a1, $a3
	sw	$ra, 452($sp)
	addi	$sp, $sp, 456
	jal	countn.418
	subi	$sp, $sp, 456
	lw	$ra, 452($sp)
	move	$a0, $v0
	li	$a1, 100
	li	$a2, 0
	sw	$a0, 452($sp)
	sw	$ra, 460($sp)
	addi	$sp, $sp, 464
	jal	mymul.422
	subi	$sp, $sp, 464
	lw	$ra, 460($sp)
	move	$a0, $v0
	lw	$a1, 448($sp)
	sub	$a0, $a1, $a0
	li	$a2, 0
	lw	$a1, 452($sp)
	blt	$a2, $a1, bge_else.17707
	li	$a1, 1
	lw	$a3, 444($sp)
	bne	$a3, $a1, bne_else.17709
	li	$a23, 48
	print_char	$a23
	li	$a1, 1
	j	bne_cont.17710
bne_else.17709:
	li	$a1, 0
bne_cont.17710:
	j	bge_cont.17708
bge_else.17707:
	addi	$a1, $a1, 48
	print_char	$a1
	li	$a1, 1
bge_cont.17708:
	li	$a3, 10
	sw	$a1, 456($sp)
	sw	$a0, 460($sp)
	move	$a1, $a3
	sw	$ra, 468($sp)
	addi	$sp, $sp, 472
	jal	countn.418
	subi	$sp, $sp, 472
	lw	$ra, 468($sp)
	move	$a0, $v0
	li	$a1, 10
	li	$a2, 0
	sw	$a0, 464($sp)
	sw	$ra, 468($sp)
	addi	$sp, $sp, 472
	jal	mymul.422
	subi	$sp, $sp, 472
	lw	$ra, 468($sp)
	move	$a0, $v0
	lw	$a1, 460($sp)
	sub	$a0, $a1, $a0
	li	$a1, 0
	lw	$a2, 464($sp)
	blt	$a1, $a2, bge_else.17711
	li	$a1, 1
	lw	$a2, 456($sp)
	bne	$a2, $a1, bne_else.17713
	li	$a23, 48
	print_char	$a23
	li	$a1, 1
	j	bne_cont.17714
bne_else.17713:
	li	$a1, 0
bne_cont.17714:
	j	bge_cont.17712
bge_else.17711:
	addi	$a1, $a2, 48
	print_char	$a1
	li	$a1, 1
bge_cont.17712:
	addi	$a0, $a0, 48
	print_char	$a0
	li	$a23, 32
	print_char	$a23
	li	$a2, 0
	lw	$a0, 376($sp)
	blt	$a0, $a2, bge_else.17715
	j	bge_cont.17716
bge_else.17715:
	li	$a23, 45
	print_char	$a23
	neg	$a0, $a0
bge_cont.17716:
	li	$a1, 10000
	sw	$a0, 468($sp)
	sw	$ra, 476($sp)
	addi	$sp, $sp, 480
	jal	countn.418
	subi	$sp, $sp, 480
	lw	$ra, 476($sp)
	move	$a0, $v0
	li	$a1, 10000
	li	$a2, 0
	sw	$a0, 472($sp)
	sw	$ra, 476($sp)
	addi	$sp, $sp, 480
	jal	mymul.422
	subi	$sp, $sp, 480
	lw	$ra, 476($sp)
	move	$a0, $v0
	lw	$a1, 468($sp)
	sub	$a0, $a1, $a0
	li	$a2, 0
	lw	$a1, 472($sp)
	blt	$a2, $a1, bge_else.17717
	li	$a1, 0
	j	bge_cont.17718
bge_else.17717:
	addi	$a1, $a1, 48
	print_char	$a1
	li	$a1, 1
bge_cont.17718:
	li	$a3, 1000
	sw	$a1, 476($sp)
	sw	$a0, 480($sp)
	move	$a1, $a3
	sw	$ra, 484($sp)
	addi	$sp, $sp, 488
	jal	countn.418
	subi	$sp, $sp, 488
	lw	$ra, 484($sp)
	move	$a0, $v0
	li	$a1, 1000
	li	$a2, 0
	sw	$a0, 484($sp)
	sw	$ra, 492($sp)
	addi	$sp, $sp, 496
	jal	mymul.422
	subi	$sp, $sp, 496
	lw	$ra, 492($sp)
	move	$a0, $v0
	lw	$a1, 480($sp)
	sub	$a0, $a1, $a0
	li	$a2, 0
	lw	$a1, 484($sp)
	blt	$a2, $a1, bge_else.17719
	li	$a1, 1
	lw	$a3, 476($sp)
	bne	$a3, $a1, bne_else.17721
	li	$a23, 48
	print_char	$a23
	li	$a1, 1
	j	bne_cont.17722
bne_else.17721:
	li	$a1, 0
bne_cont.17722:
	j	bge_cont.17720
bge_else.17719:
	addi	$a1, $a1, 48
	print_char	$a1
	li	$a1, 1
bge_cont.17720:
	li	$a3, 100
	sw	$a1, 488($sp)
	sw	$a0, 492($sp)
	move	$a1, $a3
	sw	$ra, 500($sp)
	addi	$sp, $sp, 504
	jal	countn.418
	subi	$sp, $sp, 504
	lw	$ra, 500($sp)
	move	$a0, $v0
	li	$a1, 100
	li	$a2, 0
	sw	$a0, 496($sp)
	sw	$ra, 500($sp)
	addi	$sp, $sp, 504
	jal	mymul.422
	subi	$sp, $sp, 504
	lw	$ra, 500($sp)
	move	$a0, $v0
	lw	$a1, 492($sp)
	sub	$a0, $a1, $a0
	li	$a2, 0
	lw	$a1, 496($sp)
	blt	$a2, $a1, bge_else.17723
	li	$a1, 1
	lw	$a3, 488($sp)
	bne	$a3, $a1, bne_else.17725
	li	$a23, 48
	print_char	$a23
	li	$a1, 1
	j	bne_cont.17726
bne_else.17725:
	li	$a1, 0
bne_cont.17726:
	j	bge_cont.17724
bge_else.17723:
	addi	$a1, $a1, 48
	print_char	$a1
	li	$a1, 1
bge_cont.17724:
	li	$a3, 10
	sw	$a1, 500($sp)
	sw	$a0, 504($sp)
	move	$a1, $a3
	sw	$ra, 508($sp)
	addi	$sp, $sp, 512
	jal	countn.418
	subi	$sp, $sp, 512
	lw	$ra, 508($sp)
	move	$a0, $v0
	li	$a1, 10
	li	$a2, 0
	sw	$a0, 508($sp)
	sw	$ra, 516($sp)
	addi	$sp, $sp, 520
	jal	mymul.422
	subi	$sp, $sp, 520
	lw	$ra, 516($sp)
	move	$a0, $v0
	lw	$a1, 504($sp)
	sub	$a0, $a1, $a0
	li	$a1, 0
	lw	$a2, 508($sp)
	blt	$a1, $a2, bge_else.17727
	li	$a1, 1
	lw	$a2, 500($sp)
	bne	$a2, $a1, bne_else.17729
	li	$a23, 48
	print_char	$a23
	li	$a1, 1
	j	bne_cont.17730
bne_else.17729:
	li	$a1, 0
bne_cont.17730:
	j	bge_cont.17728
bge_else.17727:
	addi	$a1, $a2, 48
	print_char	$a1
	li	$a1, 1
bge_cont.17728:
	addi	$a0, $a0, 48
	print_char	$a0
	jr	$ra
bge_else.17650:
	lw	$a1, 12($a0)
	blt	$a1, $a2, bge_else.17732
	mtc1	$f0, $zero
	li	$v0, 17279
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	lw	$a1, 8($a0)
	li	$a2, 256
	sub	$a1, $a2, $a1
	li	$a2, 0
	blt	$a2, $a1, bge_else.17733
	neg	$a3, $a1
	j	bge_cont.17734
bge_else.17733:
	move	$a3, $a1
bge_cont.17734:
	blt	$a2, $a1, bge_else.17735
	li	$a1, -1
	j	bge_cont.17736
bge_else.17735:
	li	$a1, 1
bge_cont.17736:
	li	$a2, 1
	fsw	$f1, 512($sp)
	fsw	$f0, 520($sp)
	bne	$a1, $a2, bne_else.17737
	li	$a1, 128
	sll	$a1, $a1, 16
	ori	$a1, $a1, 0
	blt	$a1, $a3, bge_else.17739
	mtc1	$f2, $zero
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f3, $v0
	move	$a0, $a3
	fmove	$f1, $f3
	fmove	$f0, $f2
	sw	$ra, 532($sp)
	addi	$sp, $sp, 536
	jal	itof_ret_sub.851.2649.4905
	subi	$sp, $sp, 536
	lw	$ra, 532($sp)
	fmove	$f0, $fv
	j	bge_cont.17740
bge_else.17739:
	mtc1	$f2, $zero
	move	$a0, $a3
	fmove	$f0, $f2
	sw	$ra, 532($sp)
	addi	$sp, $sp, 536
	jal	itof_big.835.4879
	subi	$sp, $sp, 536
	lw	$ra, 532($sp)
	fmove	$f0, $fv
bge_cont.17740:
	j	bne_cont.17738
bne_else.17737:
	li	$a1, 128
	sll	$a1, $a1, 16
	ori	$a1, $a1, 0
	blt	$a1, $a3, bge_else.17741
	mtc1	$f2, $zero
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f3, $v0
	move	$a0, $a3
	fmove	$f1, $f3
	fmove	$f0, $f2
	sw	$ra, 532($sp)
	addi	$sp, $sp, 536
	jal	itof_ret_sub.851.2633.4886
	subi	$sp, $sp, 536
	lw	$ra, 532($sp)
	fmove	$f0, $fv
	fneg	$f0, $f0
	j	bge_cont.17742
bge_else.17741:
	mtc1	$f2, $zero
	move	$a0, $a3
	fmove	$f0, $f2
	sw	$ra, 532($sp)
	addi	$sp, $sp, 536
	jal	itof_big.835.4879
	subi	$sp, $sp, 536
	lw	$ra, 532($sp)
	fmove	$f0, $fv
	fneg	$f0, $f0
bge_cont.17742:
bne_cont.17738:
	li	$v0, 17279
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	fmul	$f0, $f1, $f0
	lw	$a0, 4($sp)
	lw	$a1, 12($a0)
	lw	$a0, 8($a0)
	sub	$a0, $a1, $a0
	li	$a1, 0
	blt	$a1, $a0, bge_else.17743
	neg	$a2, $a0
	j	bge_cont.17744
bge_else.17743:
	move	$a2, $a0
bge_cont.17744:
	blt	$a1, $a0, bge_else.17745
	li	$a0, -1
	j	bge_cont.17746
bge_else.17745:
	li	$a0, 1
bge_cont.17746:
	li	$a1, 1
	fsw	$f0, 528($sp)
	bne	$a0, $a1, bne_else.17747
	li	$a0, 128
	sll	$a0, $a0, 16
	ori	$a0, $a0, 0
	blt	$a0, $a2, bge_else.17749
	mtc1	$f1, $zero
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	move	$a0, $a2
	fmove	$f0, $f1
	fmove	$f1, $f2
	sw	$ra, 540($sp)
	addi	$sp, $sp, 544
	jal	itof_ret_sub.851.2649.4838
	subi	$sp, $sp, 544
	lw	$ra, 540($sp)
	fmove	$f0, $fv
	j	bge_cont.17750
bge_else.17749:
	mtc1	$f1, $zero
	move	$a0, $a2
	fmove	$f0, $f1
	sw	$ra, 540($sp)
	addi	$sp, $sp, 544
	jal	itof_big.835.4812
	subi	$sp, $sp, 544
	lw	$ra, 540($sp)
	fmove	$f0, $fv
bge_cont.17750:
	j	bne_cont.17748
bne_else.17747:
	li	$a0, 128
	sll	$a0, $a0, 16
	ori	$a0, $a0, 0
	blt	$a0, $a2, bge_else.17751
	mtc1	$f1, $zero
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	move	$a0, $a2
	fmove	$f0, $f1
	fmove	$f1, $f2
	sw	$ra, 540($sp)
	addi	$sp, $sp, 544
	jal	itof_ret_sub.851.2633.4819
	subi	$sp, $sp, 544
	lw	$ra, 540($sp)
	fmove	$f0, $fv
	fneg	$f0, $f0
	j	bge_cont.17752
bge_else.17751:
	mtc1	$f1, $zero
	move	$a0, $a2
	fmove	$f0, $f1
	sw	$ra, 540($sp)
	addi	$sp, $sp, 544
	jal	itof_big.835.4812
	subi	$sp, $sp, 544
	lw	$ra, 540($sp)
	fmove	$f0, $fv
	fneg	$f0, $f0
bge_cont.17752:
bne_cont.17748:
	finv	$f0, $f0
	flw	$f1, 528($sp)
	fmul	$f0, $f1, $f0
	flw	$f1, 520($sp)
	fabs	$f1, $f1
	li	$v0, 19200
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fsw	$f0, 536($sp)
	fblt	$f2, $f1, fbge_else.17753
	li	$a0, 0
	li	$a1, 1
	fmove	$f0, $f1
	sw	$ra, 548($sp)
	addi	$sp, $sp, 552
	jal	ftoi_ret_sub.892.2709.10769
	subi	$sp, $sp, 552
	lw	$ra, 548($sp)
	move	$a0, $v0
	j	fbge_cont.17754
fbge_else.17753:
	li	$a0, 0
	fmove	$f0, $f1
	sw	$ra, 548($sp)
	addi	$sp, $sp, 552
	jal	ftoi_big.874.10735
	subi	$sp, $sp, 552
	lw	$ra, 548($sp)
	move	$a0, $v0
fbge_cont.17754:
	flw	$f0, 512($sp)
	fabs	$f0, $f0
	li	$v0, 19200
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	sw	$a0, 544($sp)
	fblt	$f1, $f0, fbge_else.17755
	li	$a1, 0
	li	$a2, 1
	move	$a0, $a1
	move	$a1, $a2
	sw	$ra, 548($sp)
	addi	$sp, $sp, 552
	jal	ftoi_ret_sub.892.2709.10679
	subi	$sp, $sp, 552
	lw	$ra, 548($sp)
	move	$a0, $v0
	j	fbge_cont.17756
fbge_else.17755:
	li	$a1, 0
	move	$a0, $a1
	sw	$ra, 548($sp)
	addi	$sp, $sp, 552
	jal	ftoi_big.874.10645
	subi	$sp, $sp, 552
	lw	$ra, 548($sp)
	move	$a0, $v0
fbge_cont.17756:
	flw	$f0, 536($sp)
	fabs	$f1, $f0
	mtc1	$f2, $zero
	fblt	$f0, $f2, fbge_else.17757
	li	$a1, 1
	j	fbge_cont.17758
fbge_else.17757:
	li	$a1, -1
fbge_cont.17758:
	li	$a2, 1
	sw	$a0, 548($sp)
	bne	$a1, $a2, bne_else.17759
	li	$v0, 19200
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f0, $v0
	fblt	$f0, $f1, fbge_else.17761
	li	$a1, 0
	li	$a2, 1
	move	$a0, $a1
	move	$a1, $a2
	fmove	$f0, $f1
	sw	$ra, 556($sp)
	addi	$sp, $sp, 560
	jal	ftoi_ret_sub.892.2709.10589
	subi	$sp, $sp, 560
	lw	$ra, 556($sp)
	move	$a0, $v0
	j	fbge_cont.17762
fbge_else.17761:
	li	$a1, 0
	move	$a0, $a1
	fmove	$f0, $f1
	sw	$ra, 556($sp)
	addi	$sp, $sp, 560
	jal	ftoi_big.874.10555
	subi	$sp, $sp, 560
	lw	$ra, 556($sp)
	move	$a0, $v0
fbge_cont.17762:
	j	bne_cont.17760
bne_else.17759:
	li	$v0, 19200
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f0, $v0
	fblt	$f0, $f1, fbge_else.17763
	li	$a1, 0
	li	$a2, 1
	move	$a0, $a1
	move	$a1, $a2
	fmove	$f0, $f1
	sw	$ra, 556($sp)
	addi	$sp, $sp, 560
	jal	ftoi_ret_sub.892.2683.10562
	subi	$sp, $sp, 560
	lw	$ra, 556($sp)
	move	$a0, $v0
	neg	$a0, $a0
	j	fbge_cont.17764
fbge_else.17763:
	li	$a1, 0
	move	$a0, $a1
	fmove	$f0, $f1
	sw	$ra, 556($sp)
	addi	$sp, $sp, 560
	jal	ftoi_big.874.10555
	subi	$sp, $sp, 560
	lw	$ra, 556($sp)
	move	$a0, $v0
	neg	$a0, $a0
fbge_cont.17764:
bne_cont.17760:
	li	$a23, 32
	print_char	$a23
	li	$a2, 0
	lw	$a1, 544($sp)
	blt	$a1, $a2, bge_else.17765
	j	bge_cont.17766
bge_else.17765:
	li	$a23, 45
	print_char	$a23
	neg	$a1, $a1
bge_cont.17766:
	li	$a3, 10000
	sw	$a0, 552($sp)
	sw	$a1, 556($sp)
	move	$a0, $a1
	move	$a1, $a3
	sw	$ra, 564($sp)
	addi	$sp, $sp, 568
	jal	countn.418
	subi	$sp, $sp, 568
	lw	$ra, 564($sp)
	move	$a0, $v0
	li	$a1, 10000
	li	$a2, 0
	sw	$a0, 560($sp)
	sw	$ra, 564($sp)
	addi	$sp, $sp, 568
	jal	mymul.422
	subi	$sp, $sp, 568
	lw	$ra, 564($sp)
	move	$a0, $v0
	lw	$a1, 556($sp)
	sub	$a0, $a1, $a0
	li	$a2, 0
	lw	$a1, 560($sp)
	blt	$a2, $a1, bge_else.17767
	li	$a1, 0
	j	bge_cont.17768
bge_else.17767:
	addi	$a1, $a1, 48
	print_char	$a1
	li	$a1, 1
bge_cont.17768:
	li	$a3, 1000
	sw	$a1, 564($sp)
	sw	$a0, 568($sp)
	move	$a1, $a3
	sw	$ra, 572($sp)
	addi	$sp, $sp, 576
	jal	countn.418
	subi	$sp, $sp, 576
	lw	$ra, 572($sp)
	move	$a0, $v0
	li	$a1, 1000
	li	$a2, 0
	sw	$a0, 572($sp)
	sw	$ra, 580($sp)
	addi	$sp, $sp, 584
	jal	mymul.422
	subi	$sp, $sp, 584
	lw	$ra, 580($sp)
	move	$a0, $v0
	lw	$a1, 568($sp)
	sub	$a0, $a1, $a0
	li	$a2, 0
	lw	$a1, 572($sp)
	blt	$a2, $a1, bge_else.17769
	li	$a1, 1
	lw	$a3, 564($sp)
	bne	$a3, $a1, bne_else.17771
	li	$a23, 48
	print_char	$a23
	li	$a1, 1
	j	bne_cont.17772
bne_else.17771:
	li	$a1, 0
bne_cont.17772:
	j	bge_cont.17770
bge_else.17769:
	addi	$a1, $a1, 48
	print_char	$a1
	li	$a1, 1
bge_cont.17770:
	li	$a3, 100
	sw	$a1, 576($sp)
	sw	$a0, 580($sp)
	move	$a1, $a3
	sw	$ra, 588($sp)
	addi	$sp, $sp, 592
	jal	countn.418
	subi	$sp, $sp, 592
	lw	$ra, 588($sp)
	move	$a0, $v0
	li	$a1, 100
	li	$a2, 0
	sw	$a0, 584($sp)
	sw	$ra, 588($sp)
	addi	$sp, $sp, 592
	jal	mymul.422
	subi	$sp, $sp, 592
	lw	$ra, 588($sp)
	move	$a0, $v0
	lw	$a1, 580($sp)
	sub	$a0, $a1, $a0
	li	$a2, 0
	lw	$a1, 584($sp)
	blt	$a2, $a1, bge_else.17773
	li	$a1, 1
	lw	$a3, 576($sp)
	bne	$a3, $a1, bne_else.17775
	li	$a23, 48
	print_char	$a23
	li	$a1, 1
	j	bne_cont.17776
bne_else.17775:
	li	$a1, 0
bne_cont.17776:
	j	bge_cont.17774
bge_else.17773:
	addi	$a1, $a1, 48
	print_char	$a1
	li	$a1, 1
bge_cont.17774:
	li	$a3, 10
	sw	$a1, 588($sp)
	sw	$a0, 592($sp)
	move	$a1, $a3
	sw	$ra, 596($sp)
	addi	$sp, $sp, 600
	jal	countn.418
	subi	$sp, $sp, 600
	lw	$ra, 596($sp)
	move	$a0, $v0
	li	$a1, 10
	li	$a2, 0
	sw	$a0, 596($sp)
	sw	$ra, 604($sp)
	addi	$sp, $sp, 608
	jal	mymul.422
	subi	$sp, $sp, 608
	lw	$ra, 604($sp)
	move	$a0, $v0
	lw	$a1, 592($sp)
	sub	$a0, $a1, $a0
	li	$a1, 0
	lw	$a2, 596($sp)
	blt	$a1, $a2, bge_else.17777
	li	$a1, 1
	lw	$a2, 588($sp)
	bne	$a2, $a1, bne_else.17779
	li	$a23, 48
	print_char	$a23
	li	$a1, 1
	j	bne_cont.17780
bne_else.17779:
	li	$a1, 0
bne_cont.17780:
	j	bge_cont.17778
bge_else.17777:
	addi	$a1, $a2, 48
	print_char	$a1
	li	$a1, 1
bge_cont.17778:
	addi	$a0, $a0, 48
	print_char	$a0
	li	$a23, 32
	print_char	$a23
	li	$a2, 0
	lw	$a0, 548($sp)
	blt	$a0, $a2, bge_else.17781
	j	bge_cont.17782
bge_else.17781:
	li	$a23, 45
	print_char	$a23
	neg	$a0, $a0
bge_cont.17782:
	li	$a1, 10000
	sw	$a0, 600($sp)
	sw	$ra, 604($sp)
	addi	$sp, $sp, 608
	jal	countn.418
	subi	$sp, $sp, 608
	lw	$ra, 604($sp)
	move	$a0, $v0
	li	$a1, 10000
	li	$a2, 0
	sw	$a0, 604($sp)
	sw	$ra, 612($sp)
	addi	$sp, $sp, 616
	jal	mymul.422
	subi	$sp, $sp, 616
	lw	$ra, 612($sp)
	move	$a0, $v0
	lw	$a1, 600($sp)
	sub	$a0, $a1, $a0
	li	$a2, 0
	lw	$a1, 604($sp)
	blt	$a2, $a1, bge_else.17783
	li	$a1, 0
	j	bge_cont.17784
bge_else.17783:
	addi	$a1, $a1, 48
	print_char	$a1
	li	$a1, 1
bge_cont.17784:
	li	$a3, 1000
	sw	$a1, 608($sp)
	sw	$a0, 612($sp)
	move	$a1, $a3
	sw	$ra, 620($sp)
	addi	$sp, $sp, 624
	jal	countn.418
	subi	$sp, $sp, 624
	lw	$ra, 620($sp)
	move	$a0, $v0
	li	$a1, 1000
	li	$a2, 0
	sw	$a0, 616($sp)
	sw	$ra, 620($sp)
	addi	$sp, $sp, 624
	jal	mymul.422
	subi	$sp, $sp, 624
	lw	$ra, 620($sp)
	move	$a0, $v0
	lw	$a1, 612($sp)
	sub	$a0, $a1, $a0
	li	$a2, 0
	lw	$a1, 616($sp)
	blt	$a2, $a1, bge_else.17785
	li	$a1, 1
	lw	$a3, 608($sp)
	bne	$a3, $a1, bne_else.17787
	li	$a23, 48
	print_char	$a23
	li	$a1, 1
	j	bne_cont.17788
bne_else.17787:
	li	$a1, 0
bne_cont.17788:
	j	bge_cont.17786
bge_else.17785:
	addi	$a1, $a1, 48
	print_char	$a1
	li	$a1, 1
bge_cont.17786:
	li	$a3, 100
	sw	$a1, 620($sp)
	sw	$a0, 624($sp)
	move	$a1, $a3
	sw	$ra, 628($sp)
	addi	$sp, $sp, 632
	jal	countn.418
	subi	$sp, $sp, 632
	lw	$ra, 628($sp)
	move	$a0, $v0
	li	$a1, 100
	li	$a2, 0
	sw	$a0, 628($sp)
	sw	$ra, 636($sp)
	addi	$sp, $sp, 640
	jal	mymul.422
	subi	$sp, $sp, 640
	lw	$ra, 636($sp)
	move	$a0, $v0
	lw	$a1, 624($sp)
	sub	$a0, $a1, $a0
	li	$a2, 0
	lw	$a1, 628($sp)
	blt	$a2, $a1, bge_else.17789
	li	$a1, 1
	lw	$a3, 620($sp)
	bne	$a3, $a1, bne_else.17791
	li	$a23, 48
	print_char	$a23
	li	$a1, 1
	j	bne_cont.17792
bne_else.17791:
	li	$a1, 0
bne_cont.17792:
	j	bge_cont.17790
bge_else.17789:
	addi	$a1, $a1, 48
	print_char	$a1
	li	$a1, 1
bge_cont.17790:
	li	$a3, 10
	sw	$a1, 632($sp)
	sw	$a0, 636($sp)
	move	$a1, $a3
	sw	$ra, 644($sp)
	addi	$sp, $sp, 648
	jal	countn.418
	subi	$sp, $sp, 648
	lw	$ra, 644($sp)
	move	$a0, $v0
	li	$a1, 10
	li	$a2, 0
	sw	$a0, 640($sp)
	sw	$ra, 644($sp)
	addi	$sp, $sp, 648
	jal	mymul.422
	subi	$sp, $sp, 648
	lw	$ra, 644($sp)
	move	$a0, $v0
	lw	$a1, 636($sp)
	sub	$a0, $a1, $a0
	li	$a1, 0
	lw	$a2, 640($sp)
	blt	$a1, $a2, bge_else.17793
	li	$a1, 1
	lw	$a2, 632($sp)
	bne	$a2, $a1, bne_else.17795
	li	$a23, 48
	print_char	$a23
	li	$a1, 1
	j	bne_cont.17796
bne_else.17795:
	li	$a1, 0
bne_cont.17796:
	j	bge_cont.17794
bge_else.17793:
	addi	$a1, $a2, 48
	print_char	$a1
	li	$a1, 1
bge_cont.17794:
	addi	$a0, $a0, 48
	print_char	$a0
	li	$a23, 32
	print_char	$a23
	li	$a2, 0
	lw	$a0, 552($sp)
	blt	$a0, $a2, bge_else.17797
	j	bge_cont.17798
bge_else.17797:
	li	$a23, 45
	print_char	$a23
	neg	$a0, $a0
bge_cont.17798:
	li	$a1, 10000
	sw	$a0, 644($sp)
	sw	$ra, 652($sp)
	addi	$sp, $sp, 656
	jal	countn.418
	subi	$sp, $sp, 656
	lw	$ra, 652($sp)
	move	$a0, $v0
	li	$a1, 10000
	li	$a2, 0
	sw	$a0, 648($sp)
	sw	$ra, 652($sp)
	addi	$sp, $sp, 656
	jal	mymul.422
	subi	$sp, $sp, 656
	lw	$ra, 652($sp)
	move	$a0, $v0
	lw	$a1, 644($sp)
	sub	$a0, $a1, $a0
	li	$a2, 0
	lw	$a1, 648($sp)
	blt	$a2, $a1, bge_else.17799
	li	$a1, 0
	j	bge_cont.17800
bge_else.17799:
	addi	$a1, $a1, 48
	print_char	$a1
	li	$a1, 1
bge_cont.17800:
	li	$a3, 1000
	sw	$a1, 652($sp)
	sw	$a0, 656($sp)
	move	$a1, $a3
	sw	$ra, 660($sp)
	addi	$sp, $sp, 664
	jal	countn.418
	subi	$sp, $sp, 664
	lw	$ra, 660($sp)
	move	$a0, $v0
	li	$a1, 1000
	li	$a2, 0
	sw	$a0, 660($sp)
	sw	$ra, 668($sp)
	addi	$sp, $sp, 672
	jal	mymul.422
	subi	$sp, $sp, 672
	lw	$ra, 668($sp)
	move	$a0, $v0
	lw	$a1, 656($sp)
	sub	$a0, $a1, $a0
	li	$a2, 0
	lw	$a1, 660($sp)
	blt	$a2, $a1, bge_else.17801
	li	$a1, 1
	lw	$a3, 652($sp)
	bne	$a3, $a1, bne_else.17803
	li	$a23, 48
	print_char	$a23
	li	$a1, 1
	j	bne_cont.17804
bne_else.17803:
	li	$a1, 0
bne_cont.17804:
	j	bge_cont.17802
bge_else.17801:
	addi	$a1, $a1, 48
	print_char	$a1
	li	$a1, 1
bge_cont.17802:
	li	$a3, 100
	sw	$a1, 664($sp)
	sw	$a0, 668($sp)
	move	$a1, $a3
	sw	$ra, 676($sp)
	addi	$sp, $sp, 680
	jal	countn.418
	subi	$sp, $sp, 680
	lw	$ra, 676($sp)
	move	$a0, $v0
	li	$a1, 100
	li	$a2, 0
	sw	$a0, 672($sp)
	sw	$ra, 676($sp)
	addi	$sp, $sp, 680
	jal	mymul.422
	subi	$sp, $sp, 680
	lw	$ra, 676($sp)
	move	$a0, $v0
	lw	$a1, 668($sp)
	sub	$a0, $a1, $a0
	li	$a2, 0
	lw	$a1, 672($sp)
	blt	$a2, $a1, bge_else.17805
	li	$a1, 1
	lw	$a3, 664($sp)
	bne	$a3, $a1, bne_else.17807
	li	$a23, 48
	print_char	$a23
	li	$a1, 1
	j	bne_cont.17808
bne_else.17807:
	li	$a1, 0
bne_cont.17808:
	j	bge_cont.17806
bge_else.17805:
	addi	$a1, $a1, 48
	print_char	$a1
	li	$a1, 1
bge_cont.17806:
	li	$a3, 10
	sw	$a1, 676($sp)
	sw	$a0, 680($sp)
	move	$a1, $a3
	sw	$ra, 684($sp)
	addi	$sp, $sp, 688
	jal	countn.418
	subi	$sp, $sp, 688
	lw	$ra, 684($sp)
	move	$a0, $v0
	li	$a1, 10
	li	$a2, 0
	sw	$a0, 684($sp)
	sw	$ra, 692($sp)
	addi	$sp, $sp, 696
	jal	mymul.422
	subi	$sp, $sp, 696
	lw	$ra, 692($sp)
	move	$a0, $v0
	lw	$a1, 680($sp)
	sub	$a0, $a1, $a0
	li	$a1, 0
	lw	$a2, 684($sp)
	blt	$a1, $a2, bge_else.17809
	li	$a1, 1
	lw	$a2, 676($sp)
	bne	$a2, $a1, bne_else.17811
	li	$a23, 48
	print_char	$a23
	li	$a1, 1
	j	bne_cont.17812
bne_else.17811:
	li	$a1, 0
bne_cont.17812:
	j	bge_cont.17810
bge_else.17809:
	addi	$a1, $a2, 48
	print_char	$a1
	li	$a1, 1
bge_cont.17810:
	addi	$a0, $a0, 48
	print_char	$a0
	jr	$ra
bge_else.17732:
	lw	$a1, 16($a0)
	blt	$a1, $a2, bge_else.17814
	mtc1	$f0, $zero
	lw	$a1, 16($a0)
	subi	$a1, $a1, 256
	li	$a2, 0
	blt	$a2, $a1, bge_else.17815
	neg	$a3, $a1
	j	bge_cont.17816
bge_else.17815:
	move	$a3, $a1
bge_cont.17816:
	blt	$a2, $a1, bge_else.17817
	li	$a1, -1
	j	bge_cont.17818
bge_else.17817:
	li	$a1, 1
bge_cont.17818:
	li	$a2, 1
	fsw	$f0, 688($sp)
	bne	$a1, $a2, bne_else.17819
	li	$a1, 128
	sll	$a1, $a1, 16
	ori	$a1, $a1, 0
	blt	$a1, $a3, bge_else.17821
	mtc1	$f1, $zero
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	move	$a0, $a3
	fmove	$f0, $f1
	fmove	$f1, $f2
	sw	$ra, 700($sp)
	addi	$sp, $sp, 704
	jal	itof_ret_sub.851.2649.4760
	subi	$sp, $sp, 704
	lw	$ra, 700($sp)
	fmove	$f0, $fv
	j	bge_cont.17822
bge_else.17821:
	mtc1	$f1, $zero
	move	$a0, $a3
	fmove	$f0, $f1
	sw	$ra, 700($sp)
	addi	$sp, $sp, 704
	jal	itof_big.835.4734
	subi	$sp, $sp, 704
	lw	$ra, 700($sp)
	fmove	$f0, $fv
bge_cont.17822:
	j	bne_cont.17820
bne_else.17819:
	li	$a1, 128
	sll	$a1, $a1, 16
	ori	$a1, $a1, 0
	blt	$a1, $a3, bge_else.17823
	mtc1	$f1, $zero
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	move	$a0, $a3
	fmove	$f0, $f1
	fmove	$f1, $f2
	sw	$ra, 700($sp)
	addi	$sp, $sp, 704
	jal	itof_ret_sub.851.2633.4741
	subi	$sp, $sp, 704
	lw	$ra, 700($sp)
	fmove	$f0, $fv
	fneg	$f0, $f0
	j	bge_cont.17824
bge_else.17823:
	mtc1	$f1, $zero
	move	$a0, $a3
	fmove	$f0, $f1
	sw	$ra, 700($sp)
	addi	$sp, $sp, 704
	jal	itof_big.835.4734
	subi	$sp, $sp, 704
	lw	$ra, 700($sp)
	fmove	$f0, $fv
	fneg	$f0, $f0
bge_cont.17824:
bne_cont.17820:
	li	$v0, 17279
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	fmul	$f0, $f1, $f0
	lw	$a0, 4($sp)
	lw	$a1, 16($a0)
	lw	$a0, 12($a0)
	sub	$a0, $a1, $a0
	li	$a1, 0
	blt	$a1, $a0, bge_else.17825
	neg	$a2, $a0
	j	bge_cont.17826
bge_else.17825:
	move	$a2, $a0
bge_cont.17826:
	blt	$a1, $a0, bge_else.17827
	li	$a0, -1
	j	bge_cont.17828
bge_else.17827:
	li	$a0, 1
bge_cont.17828:
	li	$a1, 1
	fsw	$f0, 696($sp)
	bne	$a0, $a1, bne_else.17829
	li	$a0, 128
	sll	$a0, $a0, 16
	ori	$a0, $a0, 0
	blt	$a0, $a2, bge_else.17831
	mtc1	$f1, $zero
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	move	$a0, $a2
	fmove	$f0, $f1
	fmove	$f1, $f2
	sw	$ra, 708($sp)
	addi	$sp, $sp, 712
	jal	itof_ret_sub.851.2649.4693
	subi	$sp, $sp, 712
	lw	$ra, 708($sp)
	fmove	$f0, $fv
	j	bge_cont.17832
bge_else.17831:
	mtc1	$f1, $zero
	move	$a0, $a2
	fmove	$f0, $f1
	sw	$ra, 708($sp)
	addi	$sp, $sp, 712
	jal	itof_big.835.4667
	subi	$sp, $sp, 712
	lw	$ra, 708($sp)
	fmove	$f0, $fv
bge_cont.17832:
	j	bne_cont.17830
bne_else.17829:
	li	$a0, 128
	sll	$a0, $a0, 16
	ori	$a0, $a0, 0
	blt	$a0, $a2, bge_else.17833
	mtc1	$f1, $zero
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	move	$a0, $a2
	fmove	$f0, $f1
	fmove	$f1, $f2
	sw	$ra, 708($sp)
	addi	$sp, $sp, 712
	jal	itof_ret_sub.851.2633.4674
	subi	$sp, $sp, 712
	lw	$ra, 708($sp)
	fmove	$f0, $fv
	fneg	$f0, $f0
	j	bge_cont.17834
bge_else.17833:
	mtc1	$f1, $zero
	move	$a0, $a2
	fmove	$f0, $f1
	sw	$ra, 708($sp)
	addi	$sp, $sp, 712
	jal	itof_big.835.4667
	subi	$sp, $sp, 712
	lw	$ra, 708($sp)
	fmove	$f0, $fv
	fneg	$f0, $f0
bge_cont.17834:
bne_cont.17830:
	finv	$f0, $f0
	flw	$f1, 696($sp)
	fmul	$f0, $f1, $f0
	li	$v0, 17279
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	flw	$f2, 688($sp)
	fabs	$f2, $f2
	li	$v0, 19200
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f3, $v0
	fsw	$f1, 704($sp)
	fsw	$f0, 712($sp)
	fblt	$f3, $f2, fbge_else.17835
	li	$a0, 0
	li	$a1, 1
	fmove	$f0, $f2
	sw	$ra, 724($sp)
	addi	$sp, $sp, 728
	jal	ftoi_ret_sub.892.2709.10322
	subi	$sp, $sp, 728
	lw	$ra, 724($sp)
	move	$a0, $v0
	j	fbge_cont.17836
fbge_else.17835:
	li	$a0, 0
	fmove	$f0, $f2
	sw	$ra, 724($sp)
	addi	$sp, $sp, 728
	jal	ftoi_big.874.10288
	subi	$sp, $sp, 728
	lw	$ra, 724($sp)
	move	$a0, $v0
fbge_cont.17836:
	flw	$f0, 712($sp)
	fabs	$f1, $f0
	mtc1	$f2, $zero
	fblt	$f0, $f2, fbge_else.17837
	li	$a1, 1
	j	fbge_cont.17838
fbge_else.17837:
	li	$a1, -1
fbge_cont.17838:
	li	$a2, 1
	sw	$a0, 720($sp)
	bne	$a1, $a2, bne_else.17839
	li	$v0, 19200
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f0, $v0
	fblt	$f0, $f1, fbge_else.17841
	li	$a1, 0
	li	$a2, 1
	move	$a0, $a1
	move	$a1, $a2
	fmove	$f0, $f1
	sw	$ra, 724($sp)
	addi	$sp, $sp, 728
	jal	ftoi_ret_sub.892.2709.10232
	subi	$sp, $sp, 728
	lw	$ra, 724($sp)
	move	$a0, $v0
	j	fbge_cont.17842
fbge_else.17841:
	li	$a1, 0
	move	$a0, $a1
	fmove	$f0, $f1
	sw	$ra, 724($sp)
	addi	$sp, $sp, 728
	jal	ftoi_big.874.10198
	subi	$sp, $sp, 728
	lw	$ra, 724($sp)
	move	$a0, $v0
fbge_cont.17842:
	j	bne_cont.17840
bne_else.17839:
	li	$v0, 19200
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f0, $v0
	fblt	$f0, $f1, fbge_else.17843
	li	$a1, 0
	li	$a2, 1
	move	$a0, $a1
	move	$a1, $a2
	fmove	$f0, $f1
	sw	$ra, 724($sp)
	addi	$sp, $sp, 728
	jal	ftoi_ret_sub.892.2683.10205
	subi	$sp, $sp, 728
	lw	$ra, 724($sp)
	move	$a0, $v0
	neg	$a0, $a0
	j	fbge_cont.17844
fbge_else.17843:
	li	$a1, 0
	move	$a0, $a1
	fmove	$f0, $f1
	sw	$ra, 724($sp)
	addi	$sp, $sp, 728
	jal	ftoi_big.874.10198
	subi	$sp, $sp, 728
	lw	$ra, 724($sp)
	move	$a0, $v0
	neg	$a0, $a0
fbge_cont.17844:
bne_cont.17840:
	flw	$f0, 704($sp)
	fabs	$f0, $f0
	li	$v0, 19200
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	sw	$a0, 724($sp)
	fblt	$f1, $f0, fbge_else.17845
	li	$a1, 0
	li	$a2, 1
	move	$a0, $a1
	move	$a1, $a2
	sw	$ra, 732($sp)
	addi	$sp, $sp, 736
	jal	ftoi_ret_sub.892.2709.10142
	subi	$sp, $sp, 736
	lw	$ra, 732($sp)
	move	$a0, $v0
	j	fbge_cont.17846
fbge_else.17845:
	li	$a1, 0
	move	$a0, $a1
	sw	$ra, 732($sp)
	addi	$sp, $sp, 736
	jal	ftoi_big.874.10108
	subi	$sp, $sp, 736
	lw	$ra, 732($sp)
	move	$a0, $v0
fbge_cont.17846:
	li	$a23, 32
	print_char	$a23
	li	$a2, 0
	lw	$a1, 720($sp)
	blt	$a1, $a2, bge_else.17847
	j	bge_cont.17848
bge_else.17847:
	li	$a23, 45
	print_char	$a23
	neg	$a1, $a1
bge_cont.17848:
	li	$a3, 10000
	sw	$a0, 728($sp)
	sw	$a1, 732($sp)
	move	$a0, $a1
	move	$a1, $a3
	sw	$ra, 740($sp)
	addi	$sp, $sp, 744
	jal	countn.418
	subi	$sp, $sp, 744
	lw	$ra, 740($sp)
	move	$a0, $v0
	li	$a1, 10000
	li	$a2, 0
	sw	$a0, 736($sp)
	sw	$ra, 740($sp)
	addi	$sp, $sp, 744
	jal	mymul.422
	subi	$sp, $sp, 744
	lw	$ra, 740($sp)
	move	$a0, $v0
	lw	$a1, 732($sp)
	sub	$a0, $a1, $a0
	li	$a2, 0
	lw	$a1, 736($sp)
	blt	$a2, $a1, bge_else.17849
	li	$a1, 0
	j	bge_cont.17850
bge_else.17849:
	addi	$a1, $a1, 48
	print_char	$a1
	li	$a1, 1
bge_cont.17850:
	li	$a3, 1000
	sw	$a1, 740($sp)
	sw	$a0, 744($sp)
	move	$a1, $a3
	sw	$ra, 748($sp)
	addi	$sp, $sp, 752
	jal	countn.418
	subi	$sp, $sp, 752
	lw	$ra, 748($sp)
	move	$a0, $v0
	li	$a1, 1000
	li	$a2, 0
	sw	$a0, 748($sp)
	sw	$ra, 756($sp)
	addi	$sp, $sp, 760
	jal	mymul.422
	subi	$sp, $sp, 760
	lw	$ra, 756($sp)
	move	$a0, $v0
	lw	$a1, 744($sp)
	sub	$a0, $a1, $a0
	li	$a2, 0
	lw	$a1, 748($sp)
	blt	$a2, $a1, bge_else.17851
	li	$a1, 1
	lw	$a3, 740($sp)
	bne	$a3, $a1, bne_else.17853
	li	$a23, 48
	print_char	$a23
	li	$a1, 1
	j	bne_cont.17854
bne_else.17853:
	li	$a1, 0
bne_cont.17854:
	j	bge_cont.17852
bge_else.17851:
	addi	$a1, $a1, 48
	print_char	$a1
	li	$a1, 1
bge_cont.17852:
	li	$a3, 100
	sw	$a1, 752($sp)
	sw	$a0, 756($sp)
	move	$a1, $a3
	sw	$ra, 764($sp)
	addi	$sp, $sp, 768
	jal	countn.418
	subi	$sp, $sp, 768
	lw	$ra, 764($sp)
	move	$a0, $v0
	li	$a1, 100
	li	$a2, 0
	sw	$a0, 760($sp)
	sw	$ra, 764($sp)
	addi	$sp, $sp, 768
	jal	mymul.422
	subi	$sp, $sp, 768
	lw	$ra, 764($sp)
	move	$a0, $v0
	lw	$a1, 756($sp)
	sub	$a0, $a1, $a0
	li	$a2, 0
	lw	$a1, 760($sp)
	blt	$a2, $a1, bge_else.17855
	li	$a1, 1
	lw	$a3, 752($sp)
	bne	$a3, $a1, bne_else.17857
	li	$a23, 48
	print_char	$a23
	li	$a1, 1
	j	bne_cont.17858
bne_else.17857:
	li	$a1, 0
bne_cont.17858:
	j	bge_cont.17856
bge_else.17855:
	addi	$a1, $a1, 48
	print_char	$a1
	li	$a1, 1
bge_cont.17856:
	li	$a3, 10
	sw	$a1, 764($sp)
	sw	$a0, 768($sp)
	move	$a1, $a3
	sw	$ra, 772($sp)
	addi	$sp, $sp, 776
	jal	countn.418
	subi	$sp, $sp, 776
	lw	$ra, 772($sp)
	move	$a0, $v0
	li	$a1, 10
	li	$a2, 0
	sw	$a0, 772($sp)
	sw	$ra, 780($sp)
	addi	$sp, $sp, 784
	jal	mymul.422
	subi	$sp, $sp, 784
	lw	$ra, 780($sp)
	move	$a0, $v0
	lw	$a1, 768($sp)
	sub	$a0, $a1, $a0
	li	$a1, 0
	lw	$a2, 772($sp)
	blt	$a1, $a2, bge_else.17859
	li	$a1, 1
	lw	$a2, 764($sp)
	bne	$a2, $a1, bne_else.17861
	li	$a23, 48
	print_char	$a23
	li	$a1, 1
	j	bne_cont.17862
bne_else.17861:
	li	$a1, 0
bne_cont.17862:
	j	bge_cont.17860
bge_else.17859:
	addi	$a1, $a2, 48
	print_char	$a1
	li	$a1, 1
bge_cont.17860:
	addi	$a0, $a0, 48
	print_char	$a0
	li	$a23, 32
	print_char	$a23
	li	$a2, 0
	lw	$a0, 724($sp)
	blt	$a0, $a2, bge_else.17863
	j	bge_cont.17864
bge_else.17863:
	li	$a23, 45
	print_char	$a23
	neg	$a0, $a0
bge_cont.17864:
	li	$a1, 10000
	sw	$a0, 776($sp)
	sw	$ra, 780($sp)
	addi	$sp, $sp, 784
	jal	countn.418
	subi	$sp, $sp, 784
	lw	$ra, 780($sp)
	move	$a0, $v0
	li	$a1, 10000
	li	$a2, 0
	sw	$a0, 780($sp)
	sw	$ra, 788($sp)
	addi	$sp, $sp, 792
	jal	mymul.422
	subi	$sp, $sp, 792
	lw	$ra, 788($sp)
	move	$a0, $v0
	lw	$a1, 776($sp)
	sub	$a0, $a1, $a0
	li	$a2, 0
	lw	$a1, 780($sp)
	blt	$a2, $a1, bge_else.17865
	li	$a1, 0
	j	bge_cont.17866
bge_else.17865:
	addi	$a1, $a1, 48
	print_char	$a1
	li	$a1, 1
bge_cont.17866:
	li	$a3, 1000
	sw	$a1, 784($sp)
	sw	$a0, 788($sp)
	move	$a1, $a3
	sw	$ra, 796($sp)
	addi	$sp, $sp, 800
	jal	countn.418
	subi	$sp, $sp, 800
	lw	$ra, 796($sp)
	move	$a0, $v0
	li	$a1, 1000
	li	$a2, 0
	sw	$a0, 792($sp)
	sw	$ra, 796($sp)
	addi	$sp, $sp, 800
	jal	mymul.422
	subi	$sp, $sp, 800
	lw	$ra, 796($sp)
	move	$a0, $v0
	lw	$a1, 788($sp)
	sub	$a0, $a1, $a0
	li	$a2, 0
	lw	$a1, 792($sp)
	blt	$a2, $a1, bge_else.17867
	li	$a1, 1
	lw	$a3, 784($sp)
	bne	$a3, $a1, bne_else.17869
	li	$a23, 48
	print_char	$a23
	li	$a1, 1
	j	bne_cont.17870
bne_else.17869:
	li	$a1, 0
bne_cont.17870:
	j	bge_cont.17868
bge_else.17867:
	addi	$a1, $a1, 48
	print_char	$a1
	li	$a1, 1
bge_cont.17868:
	li	$a3, 100
	sw	$a1, 796($sp)
	sw	$a0, 800($sp)
	move	$a1, $a3
	sw	$ra, 804($sp)
	addi	$sp, $sp, 808
	jal	countn.418
	subi	$sp, $sp, 808
	lw	$ra, 804($sp)
	move	$a0, $v0
	li	$a1, 100
	li	$a2, 0
	sw	$a0, 804($sp)
	sw	$ra, 812($sp)
	addi	$sp, $sp, 816
	jal	mymul.422
	subi	$sp, $sp, 816
	lw	$ra, 812($sp)
	move	$a0, $v0
	lw	$a1, 800($sp)
	sub	$a0, $a1, $a0
	li	$a2, 0
	lw	$a1, 804($sp)
	blt	$a2, $a1, bge_else.17871
	li	$a1, 1
	lw	$a3, 796($sp)
	bne	$a3, $a1, bne_else.17873
	li	$a23, 48
	print_char	$a23
	li	$a1, 1
	j	bne_cont.17874
bne_else.17873:
	li	$a1, 0
bne_cont.17874:
	j	bge_cont.17872
bge_else.17871:
	addi	$a1, $a1, 48
	print_char	$a1
	li	$a1, 1
bge_cont.17872:
	li	$a3, 10
	sw	$a1, 808($sp)
	sw	$a0, 812($sp)
	move	$a1, $a3
	sw	$ra, 820($sp)
	addi	$sp, $sp, 824
	jal	countn.418
	subi	$sp, $sp, 824
	lw	$ra, 820($sp)
	move	$a0, $v0
	li	$a1, 10
	li	$a2, 0
	sw	$a0, 816($sp)
	sw	$ra, 820($sp)
	addi	$sp, $sp, 824
	jal	mymul.422
	subi	$sp, $sp, 824
	lw	$ra, 820($sp)
	move	$a0, $v0
	lw	$a1, 812($sp)
	sub	$a0, $a1, $a0
	li	$a1, 0
	lw	$a2, 816($sp)
	blt	$a1, $a2, bge_else.17875
	li	$a1, 1
	lw	$a2, 808($sp)
	bne	$a2, $a1, bne_else.17877
	li	$a23, 48
	print_char	$a23
	li	$a1, 1
	j	bne_cont.17878
bne_else.17877:
	li	$a1, 0
bne_cont.17878:
	j	bge_cont.17876
bge_else.17875:
	addi	$a1, $a2, 48
	print_char	$a1
	li	$a1, 1
bge_cont.17876:
	addi	$a0, $a0, 48
	print_char	$a0
	li	$a23, 32
	print_char	$a23
	li	$a2, 0
	lw	$a0, 728($sp)
	blt	$a0, $a2, bge_else.17879
	j	bge_cont.17880
bge_else.17879:
	li	$a23, 45
	print_char	$a23
	neg	$a0, $a0
bge_cont.17880:
	li	$a1, 10000
	sw	$a0, 820($sp)
	sw	$ra, 828($sp)
	addi	$sp, $sp, 832
	jal	countn.418
	subi	$sp, $sp, 832
	lw	$ra, 828($sp)
	move	$a0, $v0
	li	$a1, 10000
	li	$a2, 0
	sw	$a0, 824($sp)
	sw	$ra, 828($sp)
	addi	$sp, $sp, 832
	jal	mymul.422
	subi	$sp, $sp, 832
	lw	$ra, 828($sp)
	move	$a0, $v0
	lw	$a1, 820($sp)
	sub	$a0, $a1, $a0
	li	$a2, 0
	lw	$a1, 824($sp)
	blt	$a2, $a1, bge_else.17881
	li	$a1, 0
	j	bge_cont.17882
bge_else.17881:
	addi	$a1, $a1, 48
	print_char	$a1
	li	$a1, 1
bge_cont.17882:
	li	$a3, 1000
	sw	$a1, 828($sp)
	sw	$a0, 832($sp)
	move	$a1, $a3
	sw	$ra, 836($sp)
	addi	$sp, $sp, 840
	jal	countn.418
	subi	$sp, $sp, 840
	lw	$ra, 836($sp)
	move	$a0, $v0
	li	$a1, 1000
	li	$a2, 0
	sw	$a0, 836($sp)
	sw	$ra, 844($sp)
	addi	$sp, $sp, 848
	jal	mymul.422
	subi	$sp, $sp, 848
	lw	$ra, 844($sp)
	move	$a0, $v0
	lw	$a1, 832($sp)
	sub	$a0, $a1, $a0
	li	$a2, 0
	lw	$a1, 836($sp)
	blt	$a2, $a1, bge_else.17883
	li	$a1, 1
	lw	$a3, 828($sp)
	bne	$a3, $a1, bne_else.17885
	li	$a23, 48
	print_char	$a23
	li	$a1, 1
	j	bne_cont.17886
bne_else.17885:
	li	$a1, 0
bne_cont.17886:
	j	bge_cont.17884
bge_else.17883:
	addi	$a1, $a1, 48
	print_char	$a1
	li	$a1, 1
bge_cont.17884:
	li	$a3, 100
	sw	$a1, 840($sp)
	sw	$a0, 844($sp)
	move	$a1, $a3
	sw	$ra, 852($sp)
	addi	$sp, $sp, 856
	jal	countn.418
	subi	$sp, $sp, 856
	lw	$ra, 852($sp)
	move	$a0, $v0
	li	$a1, 100
	li	$a2, 0
	sw	$a0, 848($sp)
	sw	$ra, 852($sp)
	addi	$sp, $sp, 856
	jal	mymul.422
	subi	$sp, $sp, 856
	lw	$ra, 852($sp)
	move	$a0, $v0
	lw	$a1, 844($sp)
	sub	$a0, $a1, $a0
	li	$a2, 0
	lw	$a1, 848($sp)
	blt	$a2, $a1, bge_else.17887
	li	$a1, 1
	lw	$a3, 840($sp)
	bne	$a3, $a1, bne_else.17889
	li	$a23, 48
	print_char	$a23
	li	$a1, 1
	j	bne_cont.17890
bne_else.17889:
	li	$a1, 0
bne_cont.17890:
	j	bge_cont.17888
bge_else.17887:
	addi	$a1, $a1, 48
	print_char	$a1
	li	$a1, 1
bge_cont.17888:
	li	$a3, 10
	sw	$a1, 852($sp)
	sw	$a0, 856($sp)
	move	$a1, $a3
	sw	$ra, 860($sp)
	addi	$sp, $sp, 864
	jal	countn.418
	subi	$sp, $sp, 864
	lw	$ra, 860($sp)
	move	$a0, $v0
	li	$a1, 10
	li	$a2, 0
	sw	$a0, 860($sp)
	sw	$ra, 868($sp)
	addi	$sp, $sp, 872
	jal	mymul.422
	subi	$sp, $sp, 872
	lw	$ra, 868($sp)
	move	$a0, $v0
	lw	$a1, 856($sp)
	sub	$a0, $a1, $a0
	li	$a1, 0
	lw	$a2, 860($sp)
	blt	$a1, $a2, bge_else.17891
	li	$a1, 1
	lw	$a2, 852($sp)
	bne	$a2, $a1, bne_else.17893
	li	$a23, 48
	print_char	$a23
	li	$a1, 1
	j	bne_cont.17894
bne_else.17893:
	li	$a1, 0
bne_cont.17894:
	j	bge_cont.17892
bge_else.17891:
	addi	$a1, $a2, 48
	print_char	$a1
	li	$a1, 1
bge_cont.17892:
	addi	$a0, $a0, 48
	print_char	$a0
	jr	$ra
bge_else.17814:
	lw	$a1, 20($a0)
	blt	$a1, $a2, bge_else.17896
	lw	$a1, 16($a0)
	li	$a2, 256
	sub	$a1, $a2, $a1
	li	$a2, 0
	blt	$a2, $a1, bge_else.17897
	neg	$a3, $a1
	j	bge_cont.17898
bge_else.17897:
	move	$a3, $a1
bge_cont.17898:
	blt	$a2, $a1, bge_else.17899
	li	$a1, -1
	j	bge_cont.17900
bge_else.17899:
	li	$a1, 1
bge_cont.17900:
	li	$a2, 1
	bne	$a1, $a2, bne_else.17901
	li	$a1, 128
	sll	$a1, $a1, 16
	ori	$a1, $a1, 0
	blt	$a1, $a3, bge_else.17903
	mtc1	$f0, $zero
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	move	$a0, $a3
	sw	$ra, 868($sp)
	addi	$sp, $sp, 872
	jal	itof_ret_sub.851.2649.4615
	subi	$sp, $sp, 872
	lw	$ra, 868($sp)
	fmove	$f0, $fv
	j	bge_cont.17904
bge_else.17903:
	mtc1	$f0, $zero
	move	$a0, $a3
	sw	$ra, 868($sp)
	addi	$sp, $sp, 872
	jal	itof_big.835.4589
	subi	$sp, $sp, 872
	lw	$ra, 868($sp)
	fmove	$f0, $fv
bge_cont.17904:
	j	bne_cont.17902
bne_else.17901:
	li	$a1, 128
	sll	$a1, $a1, 16
	ori	$a1, $a1, 0
	blt	$a1, $a3, bge_else.17905
	mtc1	$f0, $zero
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	move	$a0, $a3
	sw	$ra, 868($sp)
	addi	$sp, $sp, 872
	jal	itof_ret_sub.851.2633.4596
	subi	$sp, $sp, 872
	lw	$ra, 868($sp)
	fmove	$f0, $fv
	fneg	$f0, $f0
	j	bge_cont.17906
bge_else.17905:
	mtc1	$f0, $zero
	move	$a0, $a3
	sw	$ra, 868($sp)
	addi	$sp, $sp, 872
	jal	itof_big.835.4589
	subi	$sp, $sp, 872
	lw	$ra, 868($sp)
	fmove	$f0, $fv
	fneg	$f0, $f0
bge_cont.17906:
bne_cont.17902:
	li	$v0, 17279
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	fmul	$f0, $f1, $f0
	lw	$a0, 4($sp)
	lw	$a1, 20($a0)
	lw	$a0, 16($a0)
	sub	$a0, $a1, $a0
	li	$a1, 0
	blt	$a1, $a0, bge_else.17907
	neg	$a2, $a0
	j	bge_cont.17908
bge_else.17907:
	move	$a2, $a0
bge_cont.17908:
	blt	$a1, $a0, bge_else.17909
	li	$a0, -1
	j	bge_cont.17910
bge_else.17909:
	li	$a0, 1
bge_cont.17910:
	li	$a1, 1
	fsw	$f0, 864($sp)
	bne	$a0, $a1, bne_else.17911
	li	$a0, 128
	sll	$a0, $a0, 16
	ori	$a0, $a0, 0
	blt	$a0, $a2, bge_else.17913
	mtc1	$f1, $zero
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	move	$a0, $a2
	fmove	$f0, $f1
	fmove	$f1, $f2
	sw	$ra, 876($sp)
	addi	$sp, $sp, 880
	jal	itof_ret_sub.851.2649.4548
	subi	$sp, $sp, 880
	lw	$ra, 876($sp)
	fmove	$f0, $fv
	j	bge_cont.17914
bge_else.17913:
	mtc1	$f1, $zero
	move	$a0, $a2
	fmove	$f0, $f1
	sw	$ra, 876($sp)
	addi	$sp, $sp, 880
	jal	itof_big.835.4522
	subi	$sp, $sp, 880
	lw	$ra, 876($sp)
	fmove	$f0, $fv
bge_cont.17914:
	j	bne_cont.17912
bne_else.17911:
	li	$a0, 128
	sll	$a0, $a0, 16
	ori	$a0, $a0, 0
	blt	$a0, $a2, bge_else.17915
	mtc1	$f1, $zero
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	move	$a0, $a2
	fmove	$f0, $f1
	fmove	$f1, $f2
	sw	$ra, 876($sp)
	addi	$sp, $sp, 880
	jal	itof_ret_sub.851.2633.4529
	subi	$sp, $sp, 880
	lw	$ra, 876($sp)
	fmove	$f0, $fv
	fneg	$f0, $f0
	j	bge_cont.17916
bge_else.17915:
	mtc1	$f1, $zero
	move	$a0, $a2
	fmove	$f0, $f1
	sw	$ra, 876($sp)
	addi	$sp, $sp, 880
	jal	itof_big.835.4522
	subi	$sp, $sp, 880
	lw	$ra, 876($sp)
	fmove	$f0, $fv
	fneg	$f0, $f0
bge_cont.17916:
bne_cont.17912:
	finv	$f0, $f0
	flw	$f1, 864($sp)
	fmul	$f0, $f1, $f0
	mtc1	$f1, $zero
	li	$v0, 17279
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fabs	$f3, $f0
	mtc1	$f4, $zero
	fblt	$f0, $f4, fbge_else.17917
	li	$a0, 1
	j	fbge_cont.17918
fbge_else.17917:
	li	$a0, -1
fbge_cont.17918:
	li	$a1, 1
	fsw	$f2, 872($sp)
	fsw	$f1, 880($sp)
	bne	$a0, $a1, bne_else.17919
	li	$v0, 19200
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f0, $v0
	fblt	$f0, $f3, fbge_else.17921
	li	$a0, 0
	li	$a1, 1
	fmove	$f0, $f3
	sw	$ra, 892($sp)
	addi	$sp, $sp, 896
	jal	ftoi_ret_sub.892.2709.9875
	subi	$sp, $sp, 896
	lw	$ra, 892($sp)
	move	$a0, $v0
	j	fbge_cont.17922
fbge_else.17921:
	li	$a0, 0
	fmove	$f0, $f3
	sw	$ra, 892($sp)
	addi	$sp, $sp, 896
	jal	ftoi_big.874.9841
	subi	$sp, $sp, 896
	lw	$ra, 892($sp)
	move	$a0, $v0
fbge_cont.17922:
	j	bne_cont.17920
bne_else.17919:
	li	$v0, 19200
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f0, $v0
	fblt	$f0, $f3, fbge_else.17923
	li	$a0, 0
	li	$a1, 1
	fmove	$f0, $f3
	sw	$ra, 892($sp)
	addi	$sp, $sp, 896
	jal	ftoi_ret_sub.892.2683.9848
	subi	$sp, $sp, 896
	lw	$ra, 892($sp)
	move	$a0, $v0
	neg	$a0, $a0
	j	fbge_cont.17924
fbge_else.17923:
	li	$a0, 0
	fmove	$f0, $f3
	sw	$ra, 892($sp)
	addi	$sp, $sp, 896
	jal	ftoi_big.874.9841
	subi	$sp, $sp, 896
	lw	$ra, 892($sp)
	move	$a0, $v0
	neg	$a0, $a0
fbge_cont.17924:
bne_cont.17920:
	flw	$f0, 880($sp)
	fabs	$f0, $f0
	li	$v0, 19200
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	sw	$a0, 888($sp)
	fblt	$f1, $f0, fbge_else.17925
	li	$a1, 0
	li	$a2, 1
	move	$a0, $a1
	move	$a1, $a2
	sw	$ra, 892($sp)
	addi	$sp, $sp, 896
	jal	ftoi_ret_sub.892.2709.9785
	subi	$sp, $sp, 896
	lw	$ra, 892($sp)
	move	$a0, $v0
	j	fbge_cont.17926
fbge_else.17925:
	li	$a1, 0
	move	$a0, $a1
	sw	$ra, 892($sp)
	addi	$sp, $sp, 896
	jal	ftoi_big.874.9751
	subi	$sp, $sp, 896
	lw	$ra, 892($sp)
	move	$a0, $v0
fbge_cont.17926:
	flw	$f0, 872($sp)
	fabs	$f0, $f0
	li	$v0, 19200
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	sw	$a0, 892($sp)
	fblt	$f1, $f0, fbge_else.17927
	li	$a1, 0
	li	$a2, 1
	move	$a0, $a1
	move	$a1, $a2
	sw	$ra, 900($sp)
	addi	$sp, $sp, 904
	jal	ftoi_ret_sub.892.2709.9695
	subi	$sp, $sp, 904
	lw	$ra, 900($sp)
	move	$a0, $v0
	j	fbge_cont.17928
fbge_else.17927:
	li	$a1, 0
	move	$a0, $a1
	sw	$ra, 900($sp)
	addi	$sp, $sp, 904
	jal	ftoi_big.874.9661
	subi	$sp, $sp, 904
	lw	$ra, 900($sp)
	move	$a0, $v0
fbge_cont.17928:
	li	$a23, 32
	print_char	$a23
	li	$a2, 0
	lw	$a1, 888($sp)
	blt	$a1, $a2, bge_else.17929
	j	bge_cont.17930
bge_else.17929:
	li	$a23, 45
	print_char	$a23
	neg	$a1, $a1
bge_cont.17930:
	li	$a3, 10000
	sw	$a0, 896($sp)
	sw	$a1, 900($sp)
	move	$a0, $a1
	move	$a1, $a3
	sw	$ra, 908($sp)
	addi	$sp, $sp, 912
	jal	countn.418
	subi	$sp, $sp, 912
	lw	$ra, 908($sp)
	move	$a0, $v0
	li	$a1, 10000
	li	$a2, 0
	sw	$a0, 904($sp)
	sw	$ra, 908($sp)
	addi	$sp, $sp, 912
	jal	mymul.422
	subi	$sp, $sp, 912
	lw	$ra, 908($sp)
	move	$a0, $v0
	lw	$a1, 900($sp)
	sub	$a0, $a1, $a0
	li	$a2, 0
	lw	$a1, 904($sp)
	blt	$a2, $a1, bge_else.17931
	li	$a1, 0
	j	bge_cont.17932
bge_else.17931:
	addi	$a1, $a1, 48
	print_char	$a1
	li	$a1, 1
bge_cont.17932:
	li	$a3, 1000
	sw	$a1, 908($sp)
	sw	$a0, 912($sp)
	move	$a1, $a3
	sw	$ra, 916($sp)
	addi	$sp, $sp, 920
	jal	countn.418
	subi	$sp, $sp, 920
	lw	$ra, 916($sp)
	move	$a0, $v0
	li	$a1, 1000
	li	$a2, 0
	sw	$a0, 916($sp)
	sw	$ra, 924($sp)
	addi	$sp, $sp, 928
	jal	mymul.422
	subi	$sp, $sp, 928
	lw	$ra, 924($sp)
	move	$a0, $v0
	lw	$a1, 912($sp)
	sub	$a0, $a1, $a0
	li	$a2, 0
	lw	$a1, 916($sp)
	blt	$a2, $a1, bge_else.17933
	li	$a1, 1
	lw	$a3, 908($sp)
	bne	$a3, $a1, bne_else.17935
	li	$a23, 48
	print_char	$a23
	li	$a1, 1
	j	bne_cont.17936
bne_else.17935:
	li	$a1, 0
bne_cont.17936:
	j	bge_cont.17934
bge_else.17933:
	addi	$a1, $a1, 48
	print_char	$a1
	li	$a1, 1
bge_cont.17934:
	li	$a3, 100
	sw	$a1, 920($sp)
	sw	$a0, 924($sp)
	move	$a1, $a3
	sw	$ra, 932($sp)
	addi	$sp, $sp, 936
	jal	countn.418
	subi	$sp, $sp, 936
	lw	$ra, 932($sp)
	move	$a0, $v0
	li	$a1, 100
	li	$a2, 0
	sw	$a0, 928($sp)
	sw	$ra, 932($sp)
	addi	$sp, $sp, 936
	jal	mymul.422
	subi	$sp, $sp, 936
	lw	$ra, 932($sp)
	move	$a0, $v0
	lw	$a1, 924($sp)
	sub	$a0, $a1, $a0
	li	$a2, 0
	lw	$a1, 928($sp)
	blt	$a2, $a1, bge_else.17937
	li	$a1, 1
	lw	$a3, 920($sp)
	bne	$a3, $a1, bne_else.17939
	li	$a23, 48
	print_char	$a23
	li	$a1, 1
	j	bne_cont.17940
bne_else.17939:
	li	$a1, 0
bne_cont.17940:
	j	bge_cont.17938
bge_else.17937:
	addi	$a1, $a1, 48
	print_char	$a1
	li	$a1, 1
bge_cont.17938:
	li	$a3, 10
	sw	$a1, 932($sp)
	sw	$a0, 936($sp)
	move	$a1, $a3
	sw	$ra, 940($sp)
	addi	$sp, $sp, 944
	jal	countn.418
	subi	$sp, $sp, 944
	lw	$ra, 940($sp)
	move	$a0, $v0
	li	$a1, 10
	li	$a2, 0
	sw	$a0, 940($sp)
	sw	$ra, 948($sp)
	addi	$sp, $sp, 952
	jal	mymul.422
	subi	$sp, $sp, 952
	lw	$ra, 948($sp)
	move	$a0, $v0
	lw	$a1, 936($sp)
	sub	$a0, $a1, $a0
	li	$a1, 0
	lw	$a2, 940($sp)
	blt	$a1, $a2, bge_else.17941
	li	$a1, 1
	lw	$a2, 932($sp)
	bne	$a2, $a1, bne_else.17943
	li	$a23, 48
	print_char	$a23
	li	$a1, 1
	j	bne_cont.17944
bne_else.17943:
	li	$a1, 0
bne_cont.17944:
	j	bge_cont.17942
bge_else.17941:
	addi	$a1, $a2, 48
	print_char	$a1
	li	$a1, 1
bge_cont.17942:
	addi	$a0, $a0, 48
	print_char	$a0
	li	$a23, 32
	print_char	$a23
	li	$a2, 0
	lw	$a0, 892($sp)
	blt	$a0, $a2, bge_else.17945
	j	bge_cont.17946
bge_else.17945:
	li	$a23, 45
	print_char	$a23
	neg	$a0, $a0
bge_cont.17946:
	li	$a1, 10000
	sw	$a0, 944($sp)
	sw	$ra, 948($sp)
	addi	$sp, $sp, 952
	jal	countn.418
	subi	$sp, $sp, 952
	lw	$ra, 948($sp)
	move	$a0, $v0
	li	$a1, 10000
	li	$a2, 0
	sw	$a0, 948($sp)
	sw	$ra, 956($sp)
	addi	$sp, $sp, 960
	jal	mymul.422
	subi	$sp, $sp, 960
	lw	$ra, 956($sp)
	move	$a0, $v0
	lw	$a1, 944($sp)
	sub	$a0, $a1, $a0
	li	$a2, 0
	lw	$a1, 948($sp)
	blt	$a2, $a1, bge_else.17947
	li	$a1, 0
	j	bge_cont.17948
bge_else.17947:
	addi	$a1, $a1, 48
	print_char	$a1
	li	$a1, 1
bge_cont.17948:
	li	$a3, 1000
	sw	$a1, 952($sp)
	sw	$a0, 956($sp)
	move	$a1, $a3
	sw	$ra, 964($sp)
	addi	$sp, $sp, 968
	jal	countn.418
	subi	$sp, $sp, 968
	lw	$ra, 964($sp)
	move	$a0, $v0
	li	$a1, 1000
	li	$a2, 0
	sw	$a0, 960($sp)
	sw	$ra, 964($sp)
	addi	$sp, $sp, 968
	jal	mymul.422
	subi	$sp, $sp, 968
	lw	$ra, 964($sp)
	move	$a0, $v0
	lw	$a1, 956($sp)
	sub	$a0, $a1, $a0
	li	$a2, 0
	lw	$a1, 960($sp)
	blt	$a2, $a1, bge_else.17949
	li	$a1, 1
	lw	$a3, 952($sp)
	bne	$a3, $a1, bne_else.17951
	li	$a23, 48
	print_char	$a23
	li	$a1, 1
	j	bne_cont.17952
bne_else.17951:
	li	$a1, 0
bne_cont.17952:
	j	bge_cont.17950
bge_else.17949:
	addi	$a1, $a1, 48
	print_char	$a1
	li	$a1, 1
bge_cont.17950:
	li	$a3, 100
	sw	$a1, 964($sp)
	sw	$a0, 968($sp)
	move	$a1, $a3
	sw	$ra, 972($sp)
	addi	$sp, $sp, 976
	jal	countn.418
	subi	$sp, $sp, 976
	lw	$ra, 972($sp)
	move	$a0, $v0
	li	$a1, 100
	li	$a2, 0
	sw	$a0, 972($sp)
	sw	$ra, 980($sp)
	addi	$sp, $sp, 984
	jal	mymul.422
	subi	$sp, $sp, 984
	lw	$ra, 980($sp)
	move	$a0, $v0
	lw	$a1, 968($sp)
	sub	$a0, $a1, $a0
	li	$a2, 0
	lw	$a1, 972($sp)
	blt	$a2, $a1, bge_else.17953
	li	$a1, 1
	lw	$a3, 964($sp)
	bne	$a3, $a1, bne_else.17955
	li	$a23, 48
	print_char	$a23
	li	$a1, 1
	j	bne_cont.17956
bne_else.17955:
	li	$a1, 0
bne_cont.17956:
	j	bge_cont.17954
bge_else.17953:
	addi	$a1, $a1, 48
	print_char	$a1
	li	$a1, 1
bge_cont.17954:
	li	$a3, 10
	sw	$a1, 976($sp)
	sw	$a0, 980($sp)
	move	$a1, $a3
	sw	$ra, 988($sp)
	addi	$sp, $sp, 992
	jal	countn.418
	subi	$sp, $sp, 992
	lw	$ra, 988($sp)
	move	$a0, $v0
	li	$a1, 10
	li	$a2, 0
	sw	$a0, 984($sp)
	sw	$ra, 988($sp)
	addi	$sp, $sp, 992
	jal	mymul.422
	subi	$sp, $sp, 992
	lw	$ra, 988($sp)
	move	$a0, $v0
	lw	$a1, 980($sp)
	sub	$a0, $a1, $a0
	li	$a1, 0
	lw	$a2, 984($sp)
	blt	$a1, $a2, bge_else.17957
	li	$a1, 1
	lw	$a2, 976($sp)
	bne	$a2, $a1, bne_else.17959
	li	$a23, 48
	print_char	$a23
	li	$a1, 1
	j	bne_cont.17960
bne_else.17959:
	li	$a1, 0
bne_cont.17960:
	j	bge_cont.17958
bge_else.17957:
	addi	$a1, $a2, 48
	print_char	$a1
	li	$a1, 1
bge_cont.17958:
	addi	$a0, $a0, 48
	print_char	$a0
	li	$a23, 32
	print_char	$a23
	li	$a2, 0
	lw	$a0, 896($sp)
	blt	$a0, $a2, bge_else.17961
	j	bge_cont.17962
bge_else.17961:
	li	$a23, 45
	print_char	$a23
	neg	$a0, $a0
bge_cont.17962:
	li	$a1, 10000
	sw	$a0, 988($sp)
	sw	$ra, 996($sp)
	addi	$sp, $sp, 1000
	jal	countn.418
	subi	$sp, $sp, 1000
	lw	$ra, 996($sp)
	move	$a0, $v0
	li	$a1, 10000
	li	$a2, 0
	sw	$a0, 992($sp)
	sw	$ra, 996($sp)
	addi	$sp, $sp, 1000
	jal	mymul.422
	subi	$sp, $sp, 1000
	lw	$ra, 996($sp)
	move	$a0, $v0
	lw	$a1, 988($sp)
	sub	$a0, $a1, $a0
	li	$a2, 0
	lw	$a1, 992($sp)
	blt	$a2, $a1, bge_else.17963
	li	$a1, 0
	j	bge_cont.17964
bge_else.17963:
	addi	$a1, $a1, 48
	print_char	$a1
	li	$a1, 1
bge_cont.17964:
	li	$a3, 1000
	sw	$a1, 996($sp)
	sw	$a0, 1000($sp)
	move	$a1, $a3
	sw	$ra, 1004($sp)
	addi	$sp, $sp, 1008
	jal	countn.418
	subi	$sp, $sp, 1008
	lw	$ra, 1004($sp)
	move	$a0, $v0
	li	$a1, 1000
	li	$a2, 0
	sw	$a0, 1004($sp)
	sw	$ra, 1012($sp)
	addi	$sp, $sp, 1016
	jal	mymul.422
	subi	$sp, $sp, 1016
	lw	$ra, 1012($sp)
	move	$a0, $v0
	lw	$a1, 1000($sp)
	sub	$a0, $a1, $a0
	li	$a2, 0
	lw	$a1, 1004($sp)
	blt	$a2, $a1, bge_else.17965
	li	$a1, 1
	lw	$a3, 996($sp)
	bne	$a3, $a1, bne_else.17967
	li	$a23, 48
	print_char	$a23
	li	$a1, 1
	j	bne_cont.17968
bne_else.17967:
	li	$a1, 0
bne_cont.17968:
	j	bge_cont.17966
bge_else.17965:
	addi	$a1, $a1, 48
	print_char	$a1
	li	$a1, 1
bge_cont.17966:
	li	$a3, 100
	sw	$a1, 1008($sp)
	sw	$a0, 1012($sp)
	move	$a1, $a3
	sw	$ra, 1020($sp)
	addi	$sp, $sp, 1024
	jal	countn.418
	subi	$sp, $sp, 1024
	lw	$ra, 1020($sp)
	move	$a0, $v0
	li	$a1, 100
	li	$a2, 0
	sw	$a0, 1016($sp)
	sw	$ra, 1020($sp)
	addi	$sp, $sp, 1024
	jal	mymul.422
	subi	$sp, $sp, 1024
	lw	$ra, 1020($sp)
	move	$a0, $v0
	lw	$a1, 1012($sp)
	sub	$a0, $a1, $a0
	li	$a2, 0
	lw	$a1, 1016($sp)
	blt	$a2, $a1, bge_else.17969
	li	$a1, 1
	lw	$a3, 1008($sp)
	bne	$a3, $a1, bne_else.17971
	li	$a23, 48
	print_char	$a23
	li	$a1, 1
	j	bne_cont.17972
bne_else.17971:
	li	$a1, 0
bne_cont.17972:
	j	bge_cont.17970
bge_else.17969:
	addi	$a1, $a1, 48
	print_char	$a1
	li	$a1, 1
bge_cont.17970:
	li	$a3, 10
	sw	$a1, 1020($sp)
	sw	$a0, 1024($sp)
	move	$a1, $a3
	sw	$ra, 1028($sp)
	addi	$sp, $sp, 1032
	jal	countn.418
	subi	$sp, $sp, 1032
	lw	$ra, 1028($sp)
	move	$a0, $v0
	li	$a1, 10
	li	$a2, 0
	sw	$a0, 1028($sp)
	sw	$ra, 1036($sp)
	addi	$sp, $sp, 1040
	jal	mymul.422
	subi	$sp, $sp, 1040
	lw	$ra, 1036($sp)
	move	$a0, $v0
	lw	$a1, 1024($sp)
	sub	$a0, $a1, $a0
	li	$a1, 0
	lw	$a2, 1028($sp)
	blt	$a1, $a2, bge_else.17973
	li	$a1, 1
	lw	$a2, 1020($sp)
	bne	$a2, $a1, bne_else.17975
	li	$a23, 48
	print_char	$a23
	li	$a1, 1
	j	bne_cont.17976
bne_else.17975:
	li	$a1, 0
bne_cont.17976:
	j	bge_cont.17974
bge_else.17973:
	addi	$a1, $a2, 48
	print_char	$a1
	li	$a1, 1
bge_cont.17974:
	addi	$a0, $a0, 48
	print_char	$a0
	jr	$ra
bge_else.17896:
	mtc1	$f0, $zero
	mtc1	$f1, $zero
	mtc1	$f2, $zero
	fabs	$f0, $f0
	li	$v0, 19200
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f3, $v0
	fsw	$f2, 1032($sp)
	fsw	$f1, 1040($sp)
	fblt	$f3, $f0, fbge_else.17978
	li	$a0, 0
	li	$a1, 1
	sw	$ra, 1052($sp)
	addi	$sp, $sp, 1056
	jal	ftoi_ret_sub.892.2709.9428
	subi	$sp, $sp, 1056
	lw	$ra, 1052($sp)
	move	$a0, $v0
	j	fbge_cont.17979
fbge_else.17978:
	li	$a0, 0
	sw	$ra, 1052($sp)
	addi	$sp, $sp, 1056
	jal	ftoi_big.874.9394
	subi	$sp, $sp, 1056
	lw	$ra, 1052($sp)
	move	$a0, $v0
fbge_cont.17979:
	flw	$f0, 1040($sp)
	fabs	$f0, $f0
	li	$v0, 19200
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	sw	$a0, 1048($sp)
	fblt	$f1, $f0, fbge_else.17980
	li	$a1, 0
	li	$a2, 1
	move	$a0, $a1
	move	$a1, $a2
	sw	$ra, 1052($sp)
	addi	$sp, $sp, 1056
	jal	ftoi_ret_sub.892.2709.9338
	subi	$sp, $sp, 1056
	lw	$ra, 1052($sp)
	move	$a0, $v0
	j	fbge_cont.17981
fbge_else.17980:
	li	$a1, 0
	move	$a0, $a1
	sw	$ra, 1052($sp)
	addi	$sp, $sp, 1056
	jal	ftoi_big.874.9304
	subi	$sp, $sp, 1056
	lw	$ra, 1052($sp)
	move	$a0, $v0
fbge_cont.17981:
	flw	$f0, 1032($sp)
	fabs	$f0, $f0
	li	$v0, 19200
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	sw	$a0, 1052($sp)
	fblt	$f1, $f0, fbge_else.17982
	li	$a1, 0
	li	$a2, 1
	move	$a0, $a1
	move	$a1, $a2
	sw	$ra, 1060($sp)
	addi	$sp, $sp, 1064
	jal	ftoi_ret_sub.892.2709.9248
	subi	$sp, $sp, 1064
	lw	$ra, 1060($sp)
	move	$a0, $v0
	j	fbge_cont.17983
fbge_else.17982:
	li	$a1, 0
	move	$a0, $a1
	sw	$ra, 1060($sp)
	addi	$sp, $sp, 1064
	jal	ftoi_big.874.9214
	subi	$sp, $sp, 1064
	lw	$ra, 1060($sp)
	move	$a0, $v0
fbge_cont.17983:
	li	$a23, 32
	print_char	$a23
	li	$a2, 0
	lw	$a1, 1048($sp)
	blt	$a1, $a2, bge_else.17984
	j	bge_cont.17985
bge_else.17984:
	li	$a23, 45
	print_char	$a23
	neg	$a1, $a1
bge_cont.17985:
	li	$a3, 10000
	sw	$a0, 1056($sp)
	sw	$a1, 1060($sp)
	move	$a0, $a1
	move	$a1, $a3
	sw	$ra, 1068($sp)
	addi	$sp, $sp, 1072
	jal	countn.418
	subi	$sp, $sp, 1072
	lw	$ra, 1068($sp)
	move	$a0, $v0
	li	$a1, 10000
	li	$a2, 0
	sw	$a0, 1064($sp)
	sw	$ra, 1068($sp)
	addi	$sp, $sp, 1072
	jal	mymul.422
	subi	$sp, $sp, 1072
	lw	$ra, 1068($sp)
	move	$a0, $v0
	lw	$a1, 1060($sp)
	sub	$a0, $a1, $a0
	li	$a2, 0
	lw	$a1, 1064($sp)
	blt	$a2, $a1, bge_else.17986
	li	$a1, 0
	j	bge_cont.17987
bge_else.17986:
	addi	$a1, $a1, 48
	print_char	$a1
	li	$a1, 1
bge_cont.17987:
	li	$a3, 1000
	sw	$a1, 1068($sp)
	sw	$a0, 1072($sp)
	move	$a1, $a3
	sw	$ra, 1076($sp)
	addi	$sp, $sp, 1080
	jal	countn.418
	subi	$sp, $sp, 1080
	lw	$ra, 1076($sp)
	move	$a0, $v0
	li	$a1, 1000
	li	$a2, 0
	sw	$a0, 1076($sp)
	sw	$ra, 1084($sp)
	addi	$sp, $sp, 1088
	jal	mymul.422
	subi	$sp, $sp, 1088
	lw	$ra, 1084($sp)
	move	$a0, $v0
	lw	$a1, 1072($sp)
	sub	$a0, $a1, $a0
	li	$a2, 0
	lw	$a1, 1076($sp)
	blt	$a2, $a1, bge_else.17988
	li	$a1, 1
	lw	$a3, 1068($sp)
	bne	$a3, $a1, bne_else.17990
	li	$a23, 48
	print_char	$a23
	li	$a1, 1
	j	bne_cont.17991
bne_else.17990:
	li	$a1, 0
bne_cont.17991:
	j	bge_cont.17989
bge_else.17988:
	addi	$a1, $a1, 48
	print_char	$a1
	li	$a1, 1
bge_cont.17989:
	li	$a3, 100
	sw	$a1, 1080($sp)
	sw	$a0, 1084($sp)
	move	$a1, $a3
	sw	$ra, 1092($sp)
	addi	$sp, $sp, 1096
	jal	countn.418
	subi	$sp, $sp, 1096
	lw	$ra, 1092($sp)
	move	$a0, $v0
	li	$a1, 100
	li	$a2, 0
	sw	$a0, 1088($sp)
	sw	$ra, 1092($sp)
	addi	$sp, $sp, 1096
	jal	mymul.422
	subi	$sp, $sp, 1096
	lw	$ra, 1092($sp)
	move	$a0, $v0
	lw	$a1, 1084($sp)
	sub	$a0, $a1, $a0
	li	$a2, 0
	lw	$a1, 1088($sp)
	blt	$a2, $a1, bge_else.17992
	li	$a1, 1
	lw	$a3, 1080($sp)
	bne	$a3, $a1, bne_else.17994
	li	$a23, 48
	print_char	$a23
	li	$a1, 1
	j	bne_cont.17995
bne_else.17994:
	li	$a1, 0
bne_cont.17995:
	j	bge_cont.17993
bge_else.17992:
	addi	$a1, $a1, 48
	print_char	$a1
	li	$a1, 1
bge_cont.17993:
	li	$a3, 10
	sw	$a1, 1092($sp)
	sw	$a0, 1096($sp)
	move	$a1, $a3
	sw	$ra, 1100($sp)
	addi	$sp, $sp, 1104
	jal	countn.418
	subi	$sp, $sp, 1104
	lw	$ra, 1100($sp)
	move	$a0, $v0
	li	$a1, 10
	li	$a2, 0
	sw	$a0, 1100($sp)
	sw	$ra, 1108($sp)
	addi	$sp, $sp, 1112
	jal	mymul.422
	subi	$sp, $sp, 1112
	lw	$ra, 1108($sp)
	move	$a0, $v0
	lw	$a1, 1096($sp)
	sub	$a0, $a1, $a0
	li	$a1, 0
	lw	$a2, 1100($sp)
	blt	$a1, $a2, bge_else.17996
	li	$a1, 1
	lw	$a2, 1092($sp)
	bne	$a2, $a1, bne_else.17998
	li	$a23, 48
	print_char	$a23
	li	$a1, 1
	j	bne_cont.17999
bne_else.17998:
	li	$a1, 0
bne_cont.17999:
	j	bge_cont.17997
bge_else.17996:
	addi	$a1, $a2, 48
	print_char	$a1
	li	$a1, 1
bge_cont.17997:
	addi	$a0, $a0, 48
	print_char	$a0
	li	$a23, 32
	print_char	$a23
	li	$a2, 0
	lw	$a0, 1052($sp)
	blt	$a0, $a2, bge_else.18000
	j	bge_cont.18001
bge_else.18000:
	li	$a23, 45
	print_char	$a23
	neg	$a0, $a0
bge_cont.18001:
	li	$a1, 10000
	sw	$a0, 1104($sp)
	sw	$ra, 1108($sp)
	addi	$sp, $sp, 1112
	jal	countn.418
	subi	$sp, $sp, 1112
	lw	$ra, 1108($sp)
	move	$a0, $v0
	li	$a1, 10000
	li	$a2, 0
	sw	$a0, 1108($sp)
	sw	$ra, 1116($sp)
	addi	$sp, $sp, 1120
	jal	mymul.422
	subi	$sp, $sp, 1120
	lw	$ra, 1116($sp)
	move	$a0, $v0
	lw	$a1, 1104($sp)
	sub	$a0, $a1, $a0
	li	$a2, 0
	lw	$a1, 1108($sp)
	blt	$a2, $a1, bge_else.18002
	li	$a1, 0
	j	bge_cont.18003
bge_else.18002:
	addi	$a1, $a1, 48
	print_char	$a1
	li	$a1, 1
bge_cont.18003:
	li	$a3, 1000
	sw	$a1, 1112($sp)
	sw	$a0, 1116($sp)
	move	$a1, $a3
	sw	$ra, 1124($sp)
	addi	$sp, $sp, 1128
	jal	countn.418
	subi	$sp, $sp, 1128
	lw	$ra, 1124($sp)
	move	$a0, $v0
	li	$a1, 1000
	li	$a2, 0
	sw	$a0, 1120($sp)
	sw	$ra, 1124($sp)
	addi	$sp, $sp, 1128
	jal	mymul.422
	subi	$sp, $sp, 1128
	lw	$ra, 1124($sp)
	move	$a0, $v0
	lw	$a1, 1116($sp)
	sub	$a0, $a1, $a0
	li	$a2, 0
	lw	$a1, 1120($sp)
	blt	$a2, $a1, bge_else.18004
	li	$a1, 1
	lw	$a3, 1112($sp)
	bne	$a3, $a1, bne_else.18006
	li	$a23, 48
	print_char	$a23
	li	$a1, 1
	j	bne_cont.18007
bne_else.18006:
	li	$a1, 0
bne_cont.18007:
	j	bge_cont.18005
bge_else.18004:
	addi	$a1, $a1, 48
	print_char	$a1
	li	$a1, 1
bge_cont.18005:
	li	$a3, 100
	sw	$a1, 1124($sp)
	sw	$a0, 1128($sp)
	move	$a1, $a3
	sw	$ra, 1132($sp)
	addi	$sp, $sp, 1136
	jal	countn.418
	subi	$sp, $sp, 1136
	lw	$ra, 1132($sp)
	move	$a0, $v0
	li	$a1, 100
	li	$a2, 0
	sw	$a0, 1132($sp)
	sw	$ra, 1140($sp)
	addi	$sp, $sp, 1144
	jal	mymul.422
	subi	$sp, $sp, 1144
	lw	$ra, 1140($sp)
	move	$a0, $v0
	lw	$a1, 1128($sp)
	sub	$a0, $a1, $a0
	li	$a2, 0
	lw	$a1, 1132($sp)
	blt	$a2, $a1, bge_else.18008
	li	$a1, 1
	lw	$a3, 1124($sp)
	bne	$a3, $a1, bne_else.18010
	li	$a23, 48
	print_char	$a23
	li	$a1, 1
	j	bne_cont.18011
bne_else.18010:
	li	$a1, 0
bne_cont.18011:
	j	bge_cont.18009
bge_else.18008:
	addi	$a1, $a1, 48
	print_char	$a1
	li	$a1, 1
bge_cont.18009:
	li	$a3, 10
	sw	$a1, 1136($sp)
	sw	$a0, 1140($sp)
	move	$a1, $a3
	sw	$ra, 1148($sp)
	addi	$sp, $sp, 1152
	jal	countn.418
	subi	$sp, $sp, 1152
	lw	$ra, 1148($sp)
	move	$a0, $v0
	li	$a1, 10
	li	$a2, 0
	sw	$a0, 1144($sp)
	sw	$ra, 1148($sp)
	addi	$sp, $sp, 1152
	jal	mymul.422
	subi	$sp, $sp, 1152
	lw	$ra, 1148($sp)
	move	$a0, $v0
	lw	$a1, 1140($sp)
	sub	$a0, $a1, $a0
	li	$a1, 0
	lw	$a2, 1144($sp)
	blt	$a1, $a2, bge_else.18012
	li	$a1, 1
	lw	$a2, 1136($sp)
	bne	$a2, $a1, bne_else.18014
	li	$a23, 48
	print_char	$a23
	li	$a1, 1
	j	bne_cont.18015
bne_else.18014:
	li	$a1, 0
bne_cont.18015:
	j	bge_cont.18013
bge_else.18012:
	addi	$a1, $a2, 48
	print_char	$a1
	li	$a1, 1
bge_cont.18013:
	addi	$a0, $a0, 48
	print_char	$a0
	li	$a23, 32
	print_char	$a23
	li	$a2, 0
	lw	$a0, 1056($sp)
	blt	$a0, $a2, bge_else.18016
	j	bge_cont.18017
bge_else.18016:
	li	$a23, 45
	print_char	$a23
	neg	$a0, $a0
bge_cont.18017:
	li	$a1, 10000
	sw	$a0, 1148($sp)
	sw	$ra, 1156($sp)
	addi	$sp, $sp, 1160
	jal	countn.418
	subi	$sp, $sp, 1160
	lw	$ra, 1156($sp)
	move	$a0, $v0
	li	$a1, 10000
	li	$a2, 0
	sw	$a0, 1152($sp)
	sw	$ra, 1156($sp)
	addi	$sp, $sp, 1160
	jal	mymul.422
	subi	$sp, $sp, 1160
	lw	$ra, 1156($sp)
	move	$a0, $v0
	lw	$a1, 1148($sp)
	sub	$a0, $a1, $a0
	li	$a2, 0
	lw	$a1, 1152($sp)
	blt	$a2, $a1, bge_else.18018
	li	$a1, 0
	j	bge_cont.18019
bge_else.18018:
	addi	$a1, $a1, 48
	print_char	$a1
	li	$a1, 1
bge_cont.18019:
	li	$a3, 1000
	sw	$a1, 1156($sp)
	sw	$a0, 1160($sp)
	move	$a1, $a3
	sw	$ra, 1164($sp)
	addi	$sp, $sp, 1168
	jal	countn.418
	subi	$sp, $sp, 1168
	lw	$ra, 1164($sp)
	move	$a0, $v0
	li	$a1, 1000
	li	$a2, 0
	sw	$a0, 1164($sp)
	sw	$ra, 1172($sp)
	addi	$sp, $sp, 1176
	jal	mymul.422
	subi	$sp, $sp, 1176
	lw	$ra, 1172($sp)
	move	$a0, $v0
	lw	$a1, 1160($sp)
	sub	$a0, $a1, $a0
	li	$a2, 0
	lw	$a1, 1164($sp)
	blt	$a2, $a1, bge_else.18020
	li	$a1, 1
	lw	$a3, 1156($sp)
	bne	$a3, $a1, bne_else.18022
	li	$a23, 48
	print_char	$a23
	li	$a1, 1
	j	bne_cont.18023
bne_else.18022:
	li	$a1, 0
bne_cont.18023:
	j	bge_cont.18021
bge_else.18020:
	addi	$a1, $a1, 48
	print_char	$a1
	li	$a1, 1
bge_cont.18021:
	li	$a3, 100
	sw	$a1, 1168($sp)
	sw	$a0, 1172($sp)
	move	$a1, $a3
	sw	$ra, 1180($sp)
	addi	$sp, $sp, 1184
	jal	countn.418
	subi	$sp, $sp, 1184
	lw	$ra, 1180($sp)
	move	$a0, $v0
	li	$a1, 100
	li	$a2, 0
	sw	$a0, 1176($sp)
	sw	$ra, 1180($sp)
	addi	$sp, $sp, 1184
	jal	mymul.422
	subi	$sp, $sp, 1184
	lw	$ra, 1180($sp)
	move	$a0, $v0
	lw	$a1, 1172($sp)
	sub	$a0, $a1, $a0
	li	$a2, 0
	lw	$a1, 1176($sp)
	blt	$a2, $a1, bge_else.18024
	li	$a1, 1
	lw	$a3, 1168($sp)
	bne	$a3, $a1, bne_else.18026
	li	$a23, 48
	print_char	$a23
	li	$a1, 1
	j	bne_cont.18027
bne_else.18026:
	li	$a1, 0
bne_cont.18027:
	j	bge_cont.18025
bge_else.18024:
	addi	$a1, $a1, 48
	print_char	$a1
	li	$a1, 1
bge_cont.18025:
	li	$a3, 10
	sw	$a1, 1180($sp)
	sw	$a0, 1184($sp)
	move	$a1, $a3
	sw	$ra, 1188($sp)
	addi	$sp, $sp, 1192
	jal	countn.418
	subi	$sp, $sp, 1192
	lw	$ra, 1188($sp)
	move	$a0, $v0
	li	$a1, 10
	li	$a2, 0
	sw	$a0, 1188($sp)
	sw	$ra, 1196($sp)
	addi	$sp, $sp, 1200
	jal	mymul.422
	subi	$sp, $sp, 1200
	lw	$ra, 1196($sp)
	move	$a0, $v0
	lw	$a1, 1184($sp)
	sub	$a0, $a1, $a0
	li	$a1, 0
	lw	$a2, 1188($sp)
	blt	$a1, $a2, bge_else.18028
	li	$a1, 1
	lw	$a2, 1180($sp)
	bne	$a2, $a1, bne_else.18030
	li	$a23, 48
	print_char	$a23
	li	$a1, 1
	j	bne_cont.18031
bne_else.18030:
	li	$a1, 0
bne_cont.18031:
	j	bge_cont.18029
bge_else.18028:
	addi	$a1, $a2, 48
	print_char	$a1
	li	$a1, 1
bge_cont.18029:
	addi	$a0, $a0, 48
	print_char	$a0
	jr	$ra
bge_else.17511:
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
	fblt	$f1, $f0, fbge_else.18033
	addi	$a0, $a0, 1
	fmove	$f1, $f5
	fmove	$f0, $f4
	lw	$a25, 0($a26)
	j	iloop.476
fbge_else.18033:
	li	$a2, 0
	blt	$a2, $a0, bge_else.18034
	neg	$a3, $a0
	j	bge_cont.18035
bge_else.18034:
	move	$a3, $a0
bge_cont.18035:
	blt	$a2, $a0, bge_else.18036
	li	$a2, -1
	j	bge_cont.18037
bge_else.18036:
	li	$a2, 1
bge_cont.18037:
	li	$a4, 1
	sw	$a0, 1192($sp)
	sw	$a1, 4($sp)
	bne	$a2, $a4, bne_else.18038
	li	$a2, 128
	sll	$a2, $a2, 16
	ori	$a2, $a2, 0
	blt	$a2, $a3, bge_else.18040
	mtc1	$f0, $zero
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	move	$a0, $a3
	sw	$ra, 1196($sp)
	addi	$sp, $sp, 1200
	jal	itof_ret_sub.851.2649.3991
	subi	$sp, $sp, 1200
	lw	$ra, 1196($sp)
	fmove	$f0, $fv
	j	bge_cont.18041
bge_else.18040:
	mtc1	$f0, $zero
	move	$a0, $a3
	sw	$ra, 1196($sp)
	addi	$sp, $sp, 1200
	jal	itof_big.835.3965
	subi	$sp, $sp, 1200
	lw	$ra, 1196($sp)
	fmove	$f0, $fv
bge_cont.18041:
	j	bne_cont.18039
bne_else.18038:
	li	$a2, 128
	sll	$a2, $a2, 16
	ori	$a2, $a2, 0
	blt	$a2, $a3, bge_else.18042
	mtc1	$f0, $zero
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	move	$a0, $a3
	sw	$ra, 1196($sp)
	addi	$sp, $sp, 1200
	jal	itof_ret_sub.851.2633.3972
	subi	$sp, $sp, 1200
	lw	$ra, 1196($sp)
	fmove	$f0, $fv
	fneg	$f0, $f0
	j	bge_cont.18043
bge_else.18042:
	mtc1	$f0, $zero
	move	$a0, $a3
	sw	$ra, 1196($sp)
	addi	$sp, $sp, 1200
	jal	itof_big.835.3965
	subi	$sp, $sp, 1200
	lw	$ra, 1196($sp)
	fmove	$f0, $fv
	fneg	$f0, $f0
bge_cont.18043:
bne_cont.18039:
	lw	$a0, 4($sp)
	lw	$a1, 0($a0)
	lw	$a2, 1192($sp)
	blt	$a1, $a2, bge_else.18044
	li	$v0, 17279
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f0, $v0
	mtc1	$f1, $zero
	mtc1	$f2, $zero
	fabs	$f0, $f0
	li	$v0, 19200
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f3, $v0
	fsw	$f2, 1200($sp)
	fsw	$f1, 1208($sp)
	fblt	$f3, $f0, fbge_else.18046
	li	$a0, 0
	li	$a1, 1
	sw	$ra, 1220($sp)
	addi	$sp, $sp, 1224
	jal	ftoi_ret_sub.892.2709.8981
	subi	$sp, $sp, 1224
	lw	$ra, 1220($sp)
	move	$a0, $v0
	j	fbge_cont.18047
fbge_else.18046:
	li	$a0, 0
	sw	$ra, 1220($sp)
	addi	$sp, $sp, 1224
	jal	ftoi_big.874.8947
	subi	$sp, $sp, 1224
	lw	$ra, 1220($sp)
	move	$a0, $v0
fbge_cont.18047:
	flw	$f0, 1208($sp)
	fabs	$f0, $f0
	li	$v0, 19200
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	sw	$a0, 1216($sp)
	fblt	$f1, $f0, fbge_else.18048
	li	$a1, 0
	li	$a2, 1
	move	$a0, $a1
	move	$a1, $a2
	sw	$ra, 1220($sp)
	addi	$sp, $sp, 1224
	jal	ftoi_ret_sub.892.2709.8891
	subi	$sp, $sp, 1224
	lw	$ra, 1220($sp)
	move	$a0, $v0
	j	fbge_cont.18049
fbge_else.18048:
	li	$a1, 0
	move	$a0, $a1
	sw	$ra, 1220($sp)
	addi	$sp, $sp, 1224
	jal	ftoi_big.874.8857
	subi	$sp, $sp, 1224
	lw	$ra, 1220($sp)
	move	$a0, $v0
fbge_cont.18049:
	flw	$f0, 1200($sp)
	fabs	$f0, $f0
	li	$v0, 19200
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	sw	$a0, 1220($sp)
	fblt	$f1, $f0, fbge_else.18050
	li	$a1, 0
	li	$a2, 1
	move	$a0, $a1
	move	$a1, $a2
	sw	$ra, 1228($sp)
	addi	$sp, $sp, 1232
	jal	ftoi_ret_sub.892.2709.8801
	subi	$sp, $sp, 1232
	lw	$ra, 1228($sp)
	move	$a0, $v0
	j	fbge_cont.18051
fbge_else.18050:
	li	$a1, 0
	move	$a0, $a1
	sw	$ra, 1228($sp)
	addi	$sp, $sp, 1232
	jal	ftoi_big.874.8767
	subi	$sp, $sp, 1232
	lw	$ra, 1228($sp)
	move	$a0, $v0
fbge_cont.18051:
	li	$a23, 32
	print_char	$a23
	li	$a2, 0
	lw	$a1, 1216($sp)
	blt	$a1, $a2, bge_else.18052
	j	bge_cont.18053
bge_else.18052:
	li	$a23, 45
	print_char	$a23
	neg	$a1, $a1
bge_cont.18053:
	li	$a3, 10000
	sw	$a0, 1224($sp)
	sw	$a1, 1228($sp)
	move	$a0, $a1
	move	$a1, $a3
	sw	$ra, 1236($sp)
	addi	$sp, $sp, 1240
	jal	countn.418
	subi	$sp, $sp, 1240
	lw	$ra, 1236($sp)
	move	$a0, $v0
	li	$a1, 10000
	li	$a2, 0
	sw	$a0, 1232($sp)
	sw	$ra, 1236($sp)
	addi	$sp, $sp, 1240
	jal	mymul.422
	subi	$sp, $sp, 1240
	lw	$ra, 1236($sp)
	move	$a0, $v0
	lw	$a1, 1228($sp)
	sub	$a0, $a1, $a0
	li	$a2, 0
	lw	$a1, 1232($sp)
	blt	$a2, $a1, bge_else.18054
	li	$a1, 0
	j	bge_cont.18055
bge_else.18054:
	addi	$a1, $a1, 48
	print_char	$a1
	li	$a1, 1
bge_cont.18055:
	li	$a3, 1000
	sw	$a1, 1236($sp)
	sw	$a0, 1240($sp)
	move	$a1, $a3
	sw	$ra, 1244($sp)
	addi	$sp, $sp, 1248
	jal	countn.418
	subi	$sp, $sp, 1248
	lw	$ra, 1244($sp)
	move	$a0, $v0
	li	$a1, 1000
	li	$a2, 0
	sw	$a0, 1244($sp)
	sw	$ra, 1252($sp)
	addi	$sp, $sp, 1256
	jal	mymul.422
	subi	$sp, $sp, 1256
	lw	$ra, 1252($sp)
	move	$a0, $v0
	lw	$a1, 1240($sp)
	sub	$a0, $a1, $a0
	li	$a2, 0
	lw	$a1, 1244($sp)
	blt	$a2, $a1, bge_else.18056
	li	$a1, 1
	lw	$a3, 1236($sp)
	bne	$a3, $a1, bne_else.18058
	li	$a23, 48
	print_char	$a23
	li	$a1, 1
	j	bne_cont.18059
bne_else.18058:
	li	$a1, 0
bne_cont.18059:
	j	bge_cont.18057
bge_else.18056:
	addi	$a1, $a1, 48
	print_char	$a1
	li	$a1, 1
bge_cont.18057:
	li	$a3, 100
	sw	$a1, 1248($sp)
	sw	$a0, 1252($sp)
	move	$a1, $a3
	sw	$ra, 1260($sp)
	addi	$sp, $sp, 1264
	jal	countn.418
	subi	$sp, $sp, 1264
	lw	$ra, 1260($sp)
	move	$a0, $v0
	li	$a1, 100
	li	$a2, 0
	sw	$a0, 1256($sp)
	sw	$ra, 1260($sp)
	addi	$sp, $sp, 1264
	jal	mymul.422
	subi	$sp, $sp, 1264
	lw	$ra, 1260($sp)
	move	$a0, $v0
	lw	$a1, 1252($sp)
	sub	$a0, $a1, $a0
	li	$a2, 0
	lw	$a1, 1256($sp)
	blt	$a2, $a1, bge_else.18060
	li	$a1, 1
	lw	$a3, 1248($sp)
	bne	$a3, $a1, bne_else.18062
	li	$a23, 48
	print_char	$a23
	li	$a1, 1
	j	bne_cont.18063
bne_else.18062:
	li	$a1, 0
bne_cont.18063:
	j	bge_cont.18061
bge_else.18060:
	addi	$a1, $a1, 48
	print_char	$a1
	li	$a1, 1
bge_cont.18061:
	li	$a3, 10
	sw	$a1, 1260($sp)
	sw	$a0, 1264($sp)
	move	$a1, $a3
	sw	$ra, 1268($sp)
	addi	$sp, $sp, 1272
	jal	countn.418
	subi	$sp, $sp, 1272
	lw	$ra, 1268($sp)
	move	$a0, $v0
	li	$a1, 10
	li	$a2, 0
	sw	$a0, 1268($sp)
	sw	$ra, 1276($sp)
	addi	$sp, $sp, 1280
	jal	mymul.422
	subi	$sp, $sp, 1280
	lw	$ra, 1276($sp)
	move	$a0, $v0
	lw	$a1, 1264($sp)
	sub	$a0, $a1, $a0
	li	$a1, 0
	lw	$a2, 1268($sp)
	blt	$a1, $a2, bge_else.18064
	li	$a1, 1
	lw	$a2, 1260($sp)
	bne	$a2, $a1, bne_else.18066
	li	$a23, 48
	print_char	$a23
	li	$a1, 1
	j	bne_cont.18067
bne_else.18066:
	li	$a1, 0
bne_cont.18067:
	j	bge_cont.18065
bge_else.18064:
	addi	$a1, $a2, 48
	print_char	$a1
	li	$a1, 1
bge_cont.18065:
	addi	$a0, $a0, 48
	print_char	$a0
	li	$a23, 32
	print_char	$a23
	li	$a2, 0
	lw	$a0, 1220($sp)
	blt	$a0, $a2, bge_else.18068
	j	bge_cont.18069
bge_else.18068:
	li	$a23, 45
	print_char	$a23
	neg	$a0, $a0
bge_cont.18069:
	li	$a1, 10000
	sw	$a0, 1272($sp)
	sw	$ra, 1276($sp)
	addi	$sp, $sp, 1280
	jal	countn.418
	subi	$sp, $sp, 1280
	lw	$ra, 1276($sp)
	move	$a0, $v0
	li	$a1, 10000
	li	$a2, 0
	sw	$a0, 1276($sp)
	sw	$ra, 1284($sp)
	addi	$sp, $sp, 1288
	jal	mymul.422
	subi	$sp, $sp, 1288
	lw	$ra, 1284($sp)
	move	$a0, $v0
	lw	$a1, 1272($sp)
	sub	$a0, $a1, $a0
	li	$a2, 0
	lw	$a1, 1276($sp)
	blt	$a2, $a1, bge_else.18070
	li	$a1, 0
	j	bge_cont.18071
bge_else.18070:
	addi	$a1, $a1, 48
	print_char	$a1
	li	$a1, 1
bge_cont.18071:
	li	$a3, 1000
	sw	$a1, 1280($sp)
	sw	$a0, 1284($sp)
	move	$a1, $a3
	sw	$ra, 1292($sp)
	addi	$sp, $sp, 1296
	jal	countn.418
	subi	$sp, $sp, 1296
	lw	$ra, 1292($sp)
	move	$a0, $v0
	li	$a1, 1000
	li	$a2, 0
	sw	$a0, 1288($sp)
	sw	$ra, 1292($sp)
	addi	$sp, $sp, 1296
	jal	mymul.422
	subi	$sp, $sp, 1296
	lw	$ra, 1292($sp)
	move	$a0, $v0
	lw	$a1, 1284($sp)
	sub	$a0, $a1, $a0
	li	$a2, 0
	lw	$a1, 1288($sp)
	blt	$a2, $a1, bge_else.18072
	li	$a1, 1
	lw	$a3, 1280($sp)
	bne	$a3, $a1, bne_else.18074
	li	$a23, 48
	print_char	$a23
	li	$a1, 1
	j	bne_cont.18075
bne_else.18074:
	li	$a1, 0
bne_cont.18075:
	j	bge_cont.18073
bge_else.18072:
	addi	$a1, $a1, 48
	print_char	$a1
	li	$a1, 1
bge_cont.18073:
	li	$a3, 100
	sw	$a1, 1292($sp)
	sw	$a0, 1296($sp)
	move	$a1, $a3
	sw	$ra, 1300($sp)
	addi	$sp, $sp, 1304
	jal	countn.418
	subi	$sp, $sp, 1304
	lw	$ra, 1300($sp)
	move	$a0, $v0
	li	$a1, 100
	li	$a2, 0
	sw	$a0, 1300($sp)
	sw	$ra, 1308($sp)
	addi	$sp, $sp, 1312
	jal	mymul.422
	subi	$sp, $sp, 1312
	lw	$ra, 1308($sp)
	move	$a0, $v0
	lw	$a1, 1296($sp)
	sub	$a0, $a1, $a0
	li	$a2, 0
	lw	$a1, 1300($sp)
	blt	$a2, $a1, bge_else.18076
	li	$a1, 1
	lw	$a3, 1292($sp)
	bne	$a3, $a1, bne_else.18078
	li	$a23, 48
	print_char	$a23
	li	$a1, 1
	j	bne_cont.18079
bne_else.18078:
	li	$a1, 0
bne_cont.18079:
	j	bge_cont.18077
bge_else.18076:
	addi	$a1, $a1, 48
	print_char	$a1
	li	$a1, 1
bge_cont.18077:
	li	$a3, 10
	sw	$a1, 1304($sp)
	sw	$a0, 1308($sp)
	move	$a1, $a3
	sw	$ra, 1316($sp)
	addi	$sp, $sp, 1320
	jal	countn.418
	subi	$sp, $sp, 1320
	lw	$ra, 1316($sp)
	move	$a0, $v0
	li	$a1, 10
	li	$a2, 0
	sw	$a0, 1312($sp)
	sw	$ra, 1316($sp)
	addi	$sp, $sp, 1320
	jal	mymul.422
	subi	$sp, $sp, 1320
	lw	$ra, 1316($sp)
	move	$a0, $v0
	lw	$a1, 1308($sp)
	sub	$a0, $a1, $a0
	li	$a1, 0
	lw	$a2, 1312($sp)
	blt	$a1, $a2, bge_else.18080
	li	$a1, 1
	lw	$a2, 1304($sp)
	bne	$a2, $a1, bne_else.18082
	li	$a23, 48
	print_char	$a23
	li	$a1, 1
	j	bne_cont.18083
bne_else.18082:
	li	$a1, 0
bne_cont.18083:
	j	bge_cont.18081
bge_else.18080:
	addi	$a1, $a2, 48
	print_char	$a1
	li	$a1, 1
bge_cont.18081:
	addi	$a0, $a0, 48
	print_char	$a0
	li	$a23, 32
	print_char	$a23
	li	$a2, 0
	lw	$a0, 1224($sp)
	blt	$a0, $a2, bge_else.18084
	j	bge_cont.18085
bge_else.18084:
	li	$a23, 45
	print_char	$a23
	neg	$a0, $a0
bge_cont.18085:
	li	$a1, 10000
	sw	$a0, 1316($sp)
	sw	$ra, 1324($sp)
	addi	$sp, $sp, 1328
	jal	countn.418
	subi	$sp, $sp, 1328
	lw	$ra, 1324($sp)
	move	$a0, $v0
	li	$a1, 10000
	li	$a2, 0
	sw	$a0, 1320($sp)
	sw	$ra, 1324($sp)
	addi	$sp, $sp, 1328
	jal	mymul.422
	subi	$sp, $sp, 1328
	lw	$ra, 1324($sp)
	move	$a0, $v0
	lw	$a1, 1316($sp)
	sub	$a0, $a1, $a0
	li	$a2, 0
	lw	$a1, 1320($sp)
	blt	$a2, $a1, bge_else.18086
	li	$a1, 0
	j	bge_cont.18087
bge_else.18086:
	addi	$a1, $a1, 48
	print_char	$a1
	li	$a1, 1
bge_cont.18087:
	li	$a3, 1000
	sw	$a1, 1324($sp)
	sw	$a0, 1328($sp)
	move	$a1, $a3
	sw	$ra, 1332($sp)
	addi	$sp, $sp, 1336
	jal	countn.418
	subi	$sp, $sp, 1336
	lw	$ra, 1332($sp)
	move	$a0, $v0
	li	$a1, 1000
	li	$a2, 0
	sw	$a0, 1332($sp)
	sw	$ra, 1340($sp)
	addi	$sp, $sp, 1344
	jal	mymul.422
	subi	$sp, $sp, 1344
	lw	$ra, 1340($sp)
	move	$a0, $v0
	lw	$a1, 1328($sp)
	sub	$a0, $a1, $a0
	li	$a2, 0
	lw	$a1, 1332($sp)
	blt	$a2, $a1, bge_else.18088
	li	$a1, 1
	lw	$a3, 1324($sp)
	bne	$a3, $a1, bne_else.18090
	li	$a23, 48
	print_char	$a23
	li	$a1, 1
	j	bne_cont.18091
bne_else.18090:
	li	$a1, 0
bne_cont.18091:
	j	bge_cont.18089
bge_else.18088:
	addi	$a1, $a1, 48
	print_char	$a1
	li	$a1, 1
bge_cont.18089:
	li	$a3, 100
	sw	$a1, 1336($sp)
	sw	$a0, 1340($sp)
	move	$a1, $a3
	sw	$ra, 1348($sp)
	addi	$sp, $sp, 1352
	jal	countn.418
	subi	$sp, $sp, 1352
	lw	$ra, 1348($sp)
	move	$a0, $v0
	li	$a1, 100
	li	$a2, 0
	sw	$a0, 1344($sp)
	sw	$ra, 1348($sp)
	addi	$sp, $sp, 1352
	jal	mymul.422
	subi	$sp, $sp, 1352
	lw	$ra, 1348($sp)
	move	$a0, $v0
	lw	$a1, 1340($sp)
	sub	$a0, $a1, $a0
	li	$a2, 0
	lw	$a1, 1344($sp)
	blt	$a2, $a1, bge_else.18092
	li	$a1, 1
	lw	$a3, 1336($sp)
	bne	$a3, $a1, bne_else.18094
	li	$a23, 48
	print_char	$a23
	li	$a1, 1
	j	bne_cont.18095
bne_else.18094:
	li	$a1, 0
bne_cont.18095:
	j	bge_cont.18093
bge_else.18092:
	addi	$a1, $a1, 48
	print_char	$a1
	li	$a1, 1
bge_cont.18093:
	li	$a3, 10
	sw	$a1, 1348($sp)
	sw	$a0, 1352($sp)
	move	$a1, $a3
	sw	$ra, 1356($sp)
	addi	$sp, $sp, 1360
	jal	countn.418
	subi	$sp, $sp, 1360
	lw	$ra, 1356($sp)
	move	$a0, $v0
	li	$a1, 10
	li	$a2, 0
	sw	$a0, 1356($sp)
	sw	$ra, 1364($sp)
	addi	$sp, $sp, 1368
	jal	mymul.422
	subi	$sp, $sp, 1368
	lw	$ra, 1364($sp)
	move	$a0, $v0
	lw	$a1, 1352($sp)
	sub	$a0, $a1, $a0
	li	$a1, 0
	lw	$a2, 1356($sp)
	blt	$a1, $a2, bge_else.18096
	li	$a1, 1
	lw	$a2, 1348($sp)
	bne	$a2, $a1, bne_else.18098
	li	$a23, 48
	print_char	$a23
	li	$a1, 1
	j	bne_cont.18099
bne_else.18098:
	li	$a1, 0
bne_cont.18099:
	j	bge_cont.18097
bge_else.18096:
	addi	$a1, $a2, 48
	print_char	$a1
	li	$a1, 1
bge_cont.18097:
	addi	$a0, $a0, 48
	print_char	$a0
	jr	$ra
bge_else.18044:
	lw	$a1, 4($a0)
	blt	$a1, $a2, bge_else.18101
	li	$v0, 17279
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f0, $v0
	lw	$a1, 0($a0)
	sub	$a1, $a2, $a1
	li	$a2, 0
	blt	$a2, $a1, bge_else.18102
	neg	$a3, $a1
	j	bge_cont.18103
bge_else.18102:
	move	$a3, $a1
bge_cont.18103:
	blt	$a2, $a1, bge_else.18104
	li	$a1, -1
	j	bge_cont.18105
bge_else.18104:
	li	$a1, 1
bge_cont.18105:
	li	$a2, 1
	fsw	$f0, 1360($sp)
	bne	$a1, $a2, bne_else.18106
	li	$a1, 128
	sll	$a1, $a1, 16
	ori	$a1, $a1, 0
	blt	$a1, $a3, bge_else.18108
	mtc1	$f1, $zero
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	move	$a0, $a3
	fmove	$f0, $f1
	fmove	$f1, $f2
	sw	$ra, 1372($sp)
	addi	$sp, $sp, 1376
	jal	itof_ret_sub.851.2649.3913
	subi	$sp, $sp, 1376
	lw	$ra, 1372($sp)
	fmove	$f0, $fv
	j	bge_cont.18109
bge_else.18108:
	mtc1	$f1, $zero
	move	$a0, $a3
	fmove	$f0, $f1
	sw	$ra, 1372($sp)
	addi	$sp, $sp, 1376
	jal	itof_big.835.3887
	subi	$sp, $sp, 1376
	lw	$ra, 1372($sp)
	fmove	$f0, $fv
bge_cont.18109:
	j	bne_cont.18107
bne_else.18106:
	li	$a1, 128
	sll	$a1, $a1, 16
	ori	$a1, $a1, 0
	blt	$a1, $a3, bge_else.18110
	mtc1	$f1, $zero
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	move	$a0, $a3
	fmove	$f0, $f1
	fmove	$f1, $f2
	sw	$ra, 1372($sp)
	addi	$sp, $sp, 1376
	jal	itof_ret_sub.851.2633.3894
	subi	$sp, $sp, 1376
	lw	$ra, 1372($sp)
	fmove	$f0, $fv
	fneg	$f0, $f0
	j	bge_cont.18111
bge_else.18110:
	mtc1	$f1, $zero
	move	$a0, $a3
	fmove	$f0, $f1
	sw	$ra, 1372($sp)
	addi	$sp, $sp, 1376
	jal	itof_big.835.3887
	subi	$sp, $sp, 1376
	lw	$ra, 1372($sp)
	fmove	$f0, $fv
	fneg	$f0, $f0
bge_cont.18111:
bne_cont.18107:
	li	$v0, 17279
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	fmul	$f0, $f1, $f0
	lw	$a0, 4($sp)
	lw	$a1, 4($a0)
	lw	$a0, 0($a0)
	sub	$a0, $a1, $a0
	li	$a1, 0
	blt	$a1, $a0, bge_else.18112
	neg	$a2, $a0
	j	bge_cont.18113
bge_else.18112:
	move	$a2, $a0
bge_cont.18113:
	blt	$a1, $a0, bge_else.18114
	li	$a0, -1
	j	bge_cont.18115
bge_else.18114:
	li	$a0, 1
bge_cont.18115:
	li	$a1, 1
	fsw	$f0, 1368($sp)
	bne	$a0, $a1, bne_else.18116
	li	$a0, 128
	sll	$a0, $a0, 16
	ori	$a0, $a0, 0
	blt	$a0, $a2, bge_else.18118
	mtc1	$f1, $zero
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	move	$a0, $a2
	fmove	$f0, $f1
	fmove	$f1, $f2
	sw	$ra, 1380($sp)
	addi	$sp, $sp, 1384
	jal	itof_ret_sub.851.2649.3846
	subi	$sp, $sp, 1384
	lw	$ra, 1380($sp)
	fmove	$f0, $fv
	j	bge_cont.18119
bge_else.18118:
	mtc1	$f1, $zero
	move	$a0, $a2
	fmove	$f0, $f1
	sw	$ra, 1380($sp)
	addi	$sp, $sp, 1384
	jal	itof_big.835.3820
	subi	$sp, $sp, 1384
	lw	$ra, 1380($sp)
	fmove	$f0, $fv
bge_cont.18119:
	j	bne_cont.18117
bne_else.18116:
	li	$a0, 128
	sll	$a0, $a0, 16
	ori	$a0, $a0, 0
	blt	$a0, $a2, bge_else.18120
	mtc1	$f1, $zero
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	move	$a0, $a2
	fmove	$f0, $f1
	fmove	$f1, $f2
	sw	$ra, 1380($sp)
	addi	$sp, $sp, 1384
	jal	itof_ret_sub.851.2633.3827
	subi	$sp, $sp, 1384
	lw	$ra, 1380($sp)
	fmove	$f0, $fv
	fneg	$f0, $f0
	j	bge_cont.18121
bge_else.18120:
	mtc1	$f1, $zero
	move	$a0, $a2
	fmove	$f0, $f1
	sw	$ra, 1380($sp)
	addi	$sp, $sp, 1384
	jal	itof_big.835.3820
	subi	$sp, $sp, 1384
	lw	$ra, 1380($sp)
	fmove	$f0, $fv
	fneg	$f0, $f0
bge_cont.18121:
bne_cont.18117:
	finv	$f0, $f0
	flw	$f1, 1368($sp)
	fmul	$f0, $f1, $f0
	mtc1	$f1, $zero
	flw	$f2, 1360($sp)
	fabs	$f2, $f2
	li	$v0, 19200
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f3, $v0
	fsw	$f1, 1376($sp)
	fsw	$f0, 1384($sp)
	fblt	$f3, $f2, fbge_else.18122
	li	$a0, 0
	li	$a1, 1
	fmove	$f0, $f2
	sw	$ra, 1396($sp)
	addi	$sp, $sp, 1400
	jal	ftoi_ret_sub.892.2709.8534
	subi	$sp, $sp, 1400
	lw	$ra, 1396($sp)
	move	$a0, $v0
	j	fbge_cont.18123
fbge_else.18122:
	li	$a0, 0
	fmove	$f0, $f2
	sw	$ra, 1396($sp)
	addi	$sp, $sp, 1400
	jal	ftoi_big.874.8500
	subi	$sp, $sp, 1400
	lw	$ra, 1396($sp)
	move	$a0, $v0
fbge_cont.18123:
	flw	$f0, 1384($sp)
	fabs	$f1, $f0
	mtc1	$f2, $zero
	fblt	$f0, $f2, fbge_else.18124
	li	$a1, 1
	j	fbge_cont.18125
fbge_else.18124:
	li	$a1, -1
fbge_cont.18125:
	li	$a2, 1
	sw	$a0, 1392($sp)
	bne	$a1, $a2, bne_else.18126
	li	$v0, 19200
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f0, $v0
	fblt	$f0, $f1, fbge_else.18128
	li	$a1, 0
	li	$a2, 1
	move	$a0, $a1
	move	$a1, $a2
	fmove	$f0, $f1
	sw	$ra, 1396($sp)
	addi	$sp, $sp, 1400
	jal	ftoi_ret_sub.892.2709.8444
	subi	$sp, $sp, 1400
	lw	$ra, 1396($sp)
	move	$a0, $v0
	j	fbge_cont.18129
fbge_else.18128:
	li	$a1, 0
	move	$a0, $a1
	fmove	$f0, $f1
	sw	$ra, 1396($sp)
	addi	$sp, $sp, 1400
	jal	ftoi_big.874.8410
	subi	$sp, $sp, 1400
	lw	$ra, 1396($sp)
	move	$a0, $v0
fbge_cont.18129:
	j	bne_cont.18127
bne_else.18126:
	li	$v0, 19200
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f0, $v0
	fblt	$f0, $f1, fbge_else.18130
	li	$a1, 0
	li	$a2, 1
	move	$a0, $a1
	move	$a1, $a2
	fmove	$f0, $f1
	sw	$ra, 1396($sp)
	addi	$sp, $sp, 1400
	jal	ftoi_ret_sub.892.2683.8417
	subi	$sp, $sp, 1400
	lw	$ra, 1396($sp)
	move	$a0, $v0
	neg	$a0, $a0
	j	fbge_cont.18131
fbge_else.18130:
	li	$a1, 0
	move	$a0, $a1
	fmove	$f0, $f1
	sw	$ra, 1396($sp)
	addi	$sp, $sp, 1400
	jal	ftoi_big.874.8410
	subi	$sp, $sp, 1400
	lw	$ra, 1396($sp)
	move	$a0, $v0
	neg	$a0, $a0
fbge_cont.18131:
bne_cont.18127:
	flw	$f0, 1376($sp)
	fabs	$f0, $f0
	li	$v0, 19200
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	sw	$a0, 1396($sp)
	fblt	$f1, $f0, fbge_else.18132
	li	$a1, 0
	li	$a2, 1
	move	$a0, $a1
	move	$a1, $a2
	sw	$ra, 1404($sp)
	addi	$sp, $sp, 1408
	jal	ftoi_ret_sub.892.2709.8354
	subi	$sp, $sp, 1408
	lw	$ra, 1404($sp)
	move	$a0, $v0
	j	fbge_cont.18133
fbge_else.18132:
	li	$a1, 0
	move	$a0, $a1
	sw	$ra, 1404($sp)
	addi	$sp, $sp, 1408
	jal	ftoi_big.874.8320
	subi	$sp, $sp, 1408
	lw	$ra, 1404($sp)
	move	$a0, $v0
fbge_cont.18133:
	li	$a23, 32
	print_char	$a23
	li	$a2, 0
	lw	$a1, 1392($sp)
	blt	$a1, $a2, bge_else.18134
	j	bge_cont.18135
bge_else.18134:
	li	$a23, 45
	print_char	$a23
	neg	$a1, $a1
bge_cont.18135:
	li	$a3, 10000
	sw	$a0, 1400($sp)
	sw	$a1, 1404($sp)
	move	$a0, $a1
	move	$a1, $a3
	sw	$ra, 1412($sp)
	addi	$sp, $sp, 1416
	jal	countn.418
	subi	$sp, $sp, 1416
	lw	$ra, 1412($sp)
	move	$a0, $v0
	li	$a1, 10000
	li	$a2, 0
	sw	$a0, 1408($sp)
	sw	$ra, 1412($sp)
	addi	$sp, $sp, 1416
	jal	mymul.422
	subi	$sp, $sp, 1416
	lw	$ra, 1412($sp)
	move	$a0, $v0
	lw	$a1, 1404($sp)
	sub	$a0, $a1, $a0
	li	$a2, 0
	lw	$a1, 1408($sp)
	blt	$a2, $a1, bge_else.18136
	li	$a1, 0
	j	bge_cont.18137
bge_else.18136:
	addi	$a1, $a1, 48
	print_char	$a1
	li	$a1, 1
bge_cont.18137:
	li	$a3, 1000
	sw	$a1, 1412($sp)
	sw	$a0, 1416($sp)
	move	$a1, $a3
	sw	$ra, 1420($sp)
	addi	$sp, $sp, 1424
	jal	countn.418
	subi	$sp, $sp, 1424
	lw	$ra, 1420($sp)
	move	$a0, $v0
	li	$a1, 1000
	li	$a2, 0
	sw	$a0, 1420($sp)
	sw	$ra, 1428($sp)
	addi	$sp, $sp, 1432
	jal	mymul.422
	subi	$sp, $sp, 1432
	lw	$ra, 1428($sp)
	move	$a0, $v0
	lw	$a1, 1416($sp)
	sub	$a0, $a1, $a0
	li	$a2, 0
	lw	$a1, 1420($sp)
	blt	$a2, $a1, bge_else.18138
	li	$a1, 1
	lw	$a3, 1412($sp)
	bne	$a3, $a1, bne_else.18140
	li	$a23, 48
	print_char	$a23
	li	$a1, 1
	j	bne_cont.18141
bne_else.18140:
	li	$a1, 0
bne_cont.18141:
	j	bge_cont.18139
bge_else.18138:
	addi	$a1, $a1, 48
	print_char	$a1
	li	$a1, 1
bge_cont.18139:
	li	$a3, 100
	sw	$a1, 1424($sp)
	sw	$a0, 1428($sp)
	move	$a1, $a3
	sw	$ra, 1436($sp)
	addi	$sp, $sp, 1440
	jal	countn.418
	subi	$sp, $sp, 1440
	lw	$ra, 1436($sp)
	move	$a0, $v0
	li	$a1, 100
	li	$a2, 0
	sw	$a0, 1432($sp)
	sw	$ra, 1436($sp)
	addi	$sp, $sp, 1440
	jal	mymul.422
	subi	$sp, $sp, 1440
	lw	$ra, 1436($sp)
	move	$a0, $v0
	lw	$a1, 1428($sp)
	sub	$a0, $a1, $a0
	li	$a2, 0
	lw	$a1, 1432($sp)
	blt	$a2, $a1, bge_else.18142
	li	$a1, 1
	lw	$a3, 1424($sp)
	bne	$a3, $a1, bne_else.18144
	li	$a23, 48
	print_char	$a23
	li	$a1, 1
	j	bne_cont.18145
bne_else.18144:
	li	$a1, 0
bne_cont.18145:
	j	bge_cont.18143
bge_else.18142:
	addi	$a1, $a1, 48
	print_char	$a1
	li	$a1, 1
bge_cont.18143:
	li	$a3, 10
	sw	$a1, 1436($sp)
	sw	$a0, 1440($sp)
	move	$a1, $a3
	sw	$ra, 1444($sp)
	addi	$sp, $sp, 1448
	jal	countn.418
	subi	$sp, $sp, 1448
	lw	$ra, 1444($sp)
	move	$a0, $v0
	li	$a1, 10
	li	$a2, 0
	sw	$a0, 1444($sp)
	sw	$ra, 1452($sp)
	addi	$sp, $sp, 1456
	jal	mymul.422
	subi	$sp, $sp, 1456
	lw	$ra, 1452($sp)
	move	$a0, $v0
	lw	$a1, 1440($sp)
	sub	$a0, $a1, $a0
	li	$a1, 0
	lw	$a2, 1444($sp)
	blt	$a1, $a2, bge_else.18146
	li	$a1, 1
	lw	$a2, 1436($sp)
	bne	$a2, $a1, bne_else.18148
	li	$a23, 48
	print_char	$a23
	li	$a1, 1
	j	bne_cont.18149
bne_else.18148:
	li	$a1, 0
bne_cont.18149:
	j	bge_cont.18147
bge_else.18146:
	addi	$a1, $a2, 48
	print_char	$a1
	li	$a1, 1
bge_cont.18147:
	addi	$a0, $a0, 48
	print_char	$a0
	li	$a23, 32
	print_char	$a23
	li	$a2, 0
	lw	$a0, 1396($sp)
	blt	$a0, $a2, bge_else.18150
	j	bge_cont.18151
bge_else.18150:
	li	$a23, 45
	print_char	$a23
	neg	$a0, $a0
bge_cont.18151:
	li	$a1, 10000
	sw	$a0, 1448($sp)
	sw	$ra, 1452($sp)
	addi	$sp, $sp, 1456
	jal	countn.418
	subi	$sp, $sp, 1456
	lw	$ra, 1452($sp)
	move	$a0, $v0
	li	$a1, 10000
	li	$a2, 0
	sw	$a0, 1452($sp)
	sw	$ra, 1460($sp)
	addi	$sp, $sp, 1464
	jal	mymul.422
	subi	$sp, $sp, 1464
	lw	$ra, 1460($sp)
	move	$a0, $v0
	lw	$a1, 1448($sp)
	sub	$a0, $a1, $a0
	li	$a2, 0
	lw	$a1, 1452($sp)
	blt	$a2, $a1, bge_else.18152
	li	$a1, 0
	j	bge_cont.18153
bge_else.18152:
	addi	$a1, $a1, 48
	print_char	$a1
	li	$a1, 1
bge_cont.18153:
	li	$a3, 1000
	sw	$a1, 1456($sp)
	sw	$a0, 1460($sp)
	move	$a1, $a3
	sw	$ra, 1468($sp)
	addi	$sp, $sp, 1472
	jal	countn.418
	subi	$sp, $sp, 1472
	lw	$ra, 1468($sp)
	move	$a0, $v0
	li	$a1, 1000
	li	$a2, 0
	sw	$a0, 1464($sp)
	sw	$ra, 1468($sp)
	addi	$sp, $sp, 1472
	jal	mymul.422
	subi	$sp, $sp, 1472
	lw	$ra, 1468($sp)
	move	$a0, $v0
	lw	$a1, 1460($sp)
	sub	$a0, $a1, $a0
	li	$a2, 0
	lw	$a1, 1464($sp)
	blt	$a2, $a1, bge_else.18154
	li	$a1, 1
	lw	$a3, 1456($sp)
	bne	$a3, $a1, bne_else.18156
	li	$a23, 48
	print_char	$a23
	li	$a1, 1
	j	bne_cont.18157
bne_else.18156:
	li	$a1, 0
bne_cont.18157:
	j	bge_cont.18155
bge_else.18154:
	addi	$a1, $a1, 48
	print_char	$a1
	li	$a1, 1
bge_cont.18155:
	li	$a3, 100
	sw	$a1, 1468($sp)
	sw	$a0, 1472($sp)
	move	$a1, $a3
	sw	$ra, 1476($sp)
	addi	$sp, $sp, 1480
	jal	countn.418
	subi	$sp, $sp, 1480
	lw	$ra, 1476($sp)
	move	$a0, $v0
	li	$a1, 100
	li	$a2, 0
	sw	$a0, 1476($sp)
	sw	$ra, 1484($sp)
	addi	$sp, $sp, 1488
	jal	mymul.422
	subi	$sp, $sp, 1488
	lw	$ra, 1484($sp)
	move	$a0, $v0
	lw	$a1, 1472($sp)
	sub	$a0, $a1, $a0
	li	$a2, 0
	lw	$a1, 1476($sp)
	blt	$a2, $a1, bge_else.18158
	li	$a1, 1
	lw	$a3, 1468($sp)
	bne	$a3, $a1, bne_else.18160
	li	$a23, 48
	print_char	$a23
	li	$a1, 1
	j	bne_cont.18161
bne_else.18160:
	li	$a1, 0
bne_cont.18161:
	j	bge_cont.18159
bge_else.18158:
	addi	$a1, $a1, 48
	print_char	$a1
	li	$a1, 1
bge_cont.18159:
	li	$a3, 10
	sw	$a1, 1480($sp)
	sw	$a0, 1484($sp)
	move	$a1, $a3
	sw	$ra, 1492($sp)
	addi	$sp, $sp, 1496
	jal	countn.418
	subi	$sp, $sp, 1496
	lw	$ra, 1492($sp)
	move	$a0, $v0
	li	$a1, 10
	li	$a2, 0
	sw	$a0, 1488($sp)
	sw	$ra, 1492($sp)
	addi	$sp, $sp, 1496
	jal	mymul.422
	subi	$sp, $sp, 1496
	lw	$ra, 1492($sp)
	move	$a0, $v0
	lw	$a1, 1484($sp)
	sub	$a0, $a1, $a0
	li	$a1, 0
	lw	$a2, 1488($sp)
	blt	$a1, $a2, bge_else.18162
	li	$a1, 1
	lw	$a2, 1480($sp)
	bne	$a2, $a1, bne_else.18164
	li	$a23, 48
	print_char	$a23
	li	$a1, 1
	j	bne_cont.18165
bne_else.18164:
	li	$a1, 0
bne_cont.18165:
	j	bge_cont.18163
bge_else.18162:
	addi	$a1, $a2, 48
	print_char	$a1
	li	$a1, 1
bge_cont.18163:
	addi	$a0, $a0, 48
	print_char	$a0
	li	$a23, 32
	print_char	$a23
	li	$a2, 0
	lw	$a0, 1400($sp)
	blt	$a0, $a2, bge_else.18166
	j	bge_cont.18167
bge_else.18166:
	li	$a23, 45
	print_char	$a23
	neg	$a0, $a0
bge_cont.18167:
	li	$a1, 10000
	sw	$a0, 1492($sp)
	sw	$ra, 1500($sp)
	addi	$sp, $sp, 1504
	jal	countn.418
	subi	$sp, $sp, 1504
	lw	$ra, 1500($sp)
	move	$a0, $v0
	li	$a1, 10000
	li	$a2, 0
	sw	$a0, 1496($sp)
	sw	$ra, 1500($sp)
	addi	$sp, $sp, 1504
	jal	mymul.422
	subi	$sp, $sp, 1504
	lw	$ra, 1500($sp)
	move	$a0, $v0
	lw	$a1, 1492($sp)
	sub	$a0, $a1, $a0
	li	$a2, 0
	lw	$a1, 1496($sp)
	blt	$a2, $a1, bge_else.18168
	li	$a1, 0
	j	bge_cont.18169
bge_else.18168:
	addi	$a1, $a1, 48
	print_char	$a1
	li	$a1, 1
bge_cont.18169:
	li	$a3, 1000
	sw	$a1, 1500($sp)
	sw	$a0, 1504($sp)
	move	$a1, $a3
	sw	$ra, 1508($sp)
	addi	$sp, $sp, 1512
	jal	countn.418
	subi	$sp, $sp, 1512
	lw	$ra, 1508($sp)
	move	$a0, $v0
	li	$a1, 1000
	li	$a2, 0
	sw	$a0, 1508($sp)
	sw	$ra, 1516($sp)
	addi	$sp, $sp, 1520
	jal	mymul.422
	subi	$sp, $sp, 1520
	lw	$ra, 1516($sp)
	move	$a0, $v0
	lw	$a1, 1504($sp)
	sub	$a0, $a1, $a0
	li	$a2, 0
	lw	$a1, 1508($sp)
	blt	$a2, $a1, bge_else.18170
	li	$a1, 1
	lw	$a3, 1500($sp)
	bne	$a3, $a1, bne_else.18172
	li	$a23, 48
	print_char	$a23
	li	$a1, 1
	j	bne_cont.18173
bne_else.18172:
	li	$a1, 0
bne_cont.18173:
	j	bge_cont.18171
bge_else.18170:
	addi	$a1, $a1, 48
	print_char	$a1
	li	$a1, 1
bge_cont.18171:
	li	$a3, 100
	sw	$a1, 1512($sp)
	sw	$a0, 1516($sp)
	move	$a1, $a3
	sw	$ra, 1524($sp)
	addi	$sp, $sp, 1528
	jal	countn.418
	subi	$sp, $sp, 1528
	lw	$ra, 1524($sp)
	move	$a0, $v0
	li	$a1, 100
	li	$a2, 0
	sw	$a0, 1520($sp)
	sw	$ra, 1524($sp)
	addi	$sp, $sp, 1528
	jal	mymul.422
	subi	$sp, $sp, 1528
	lw	$ra, 1524($sp)
	move	$a0, $v0
	lw	$a1, 1516($sp)
	sub	$a0, $a1, $a0
	li	$a2, 0
	lw	$a1, 1520($sp)
	blt	$a2, $a1, bge_else.18174
	li	$a1, 1
	lw	$a3, 1512($sp)
	bne	$a3, $a1, bne_else.18176
	li	$a23, 48
	print_char	$a23
	li	$a1, 1
	j	bne_cont.18177
bne_else.18176:
	li	$a1, 0
bne_cont.18177:
	j	bge_cont.18175
bge_else.18174:
	addi	$a1, $a1, 48
	print_char	$a1
	li	$a1, 1
bge_cont.18175:
	li	$a3, 10
	sw	$a1, 1524($sp)
	sw	$a0, 1528($sp)
	move	$a1, $a3
	sw	$ra, 1532($sp)
	addi	$sp, $sp, 1536
	jal	countn.418
	subi	$sp, $sp, 1536
	lw	$ra, 1532($sp)
	move	$a0, $v0
	li	$a1, 10
	li	$a2, 0
	sw	$a0, 1532($sp)
	sw	$ra, 1540($sp)
	addi	$sp, $sp, 1544
	jal	mymul.422
	subi	$sp, $sp, 1544
	lw	$ra, 1540($sp)
	move	$a0, $v0
	lw	$a1, 1528($sp)
	sub	$a0, $a1, $a0
	li	$a1, 0
	lw	$a2, 1532($sp)
	blt	$a1, $a2, bge_else.18178
	li	$a1, 1
	lw	$a2, 1524($sp)
	bne	$a2, $a1, bne_else.18180
	li	$a23, 48
	print_char	$a23
	li	$a1, 1
	j	bne_cont.18181
bne_else.18180:
	li	$a1, 0
bne_cont.18181:
	j	bge_cont.18179
bge_else.18178:
	addi	$a1, $a2, 48
	print_char	$a1
	li	$a1, 1
bge_cont.18179:
	addi	$a0, $a0, 48
	print_char	$a0
	jr	$ra
bge_else.18101:
	lw	$a1, 8($a0)
	blt	$a1, $a2, bge_else.18183
	lw	$a1, 8($a0)
	sub	$a1, $a1, $a2
	li	$a2, 0
	blt	$a2, $a1, bge_else.18184
	neg	$a3, $a1
	j	bge_cont.18185
bge_else.18184:
	move	$a3, $a1
bge_cont.18185:
	blt	$a2, $a1, bge_else.18186
	li	$a1, -1
	j	bge_cont.18187
bge_else.18186:
	li	$a1, 1
bge_cont.18187:
	li	$a2, 1
	bne	$a1, $a2, bne_else.18188
	li	$a1, 128
	sll	$a1, $a1, 16
	ori	$a1, $a1, 0
	blt	$a1, $a3, bge_else.18190
	mtc1	$f0, $zero
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	move	$a0, $a3
	sw	$ra, 1540($sp)
	addi	$sp, $sp, 1544
	jal	itof_ret_sub.851.2649.3768
	subi	$sp, $sp, 1544
	lw	$ra, 1540($sp)
	fmove	$f0, $fv
	j	bge_cont.18191
bge_else.18190:
	mtc1	$f0, $zero
	move	$a0, $a3
	sw	$ra, 1540($sp)
	addi	$sp, $sp, 1544
	jal	itof_big.835.3742
	subi	$sp, $sp, 1544
	lw	$ra, 1540($sp)
	fmove	$f0, $fv
bge_cont.18191:
	j	bne_cont.18189
bne_else.18188:
	li	$a1, 128
	sll	$a1, $a1, 16
	ori	$a1, $a1, 0
	blt	$a1, $a3, bge_else.18192
	mtc1	$f0, $zero
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	move	$a0, $a3
	sw	$ra, 1540($sp)
	addi	$sp, $sp, 1544
	jal	itof_ret_sub.851.2633.3749
	subi	$sp, $sp, 1544
	lw	$ra, 1540($sp)
	fmove	$f0, $fv
	fneg	$f0, $f0
	j	bge_cont.18193
bge_else.18192:
	mtc1	$f0, $zero
	move	$a0, $a3
	sw	$ra, 1540($sp)
	addi	$sp, $sp, 1544
	jal	itof_big.835.3742
	subi	$sp, $sp, 1544
	lw	$ra, 1540($sp)
	fmove	$f0, $fv
	fneg	$f0, $f0
bge_cont.18193:
bne_cont.18189:
	li	$v0, 17279
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	fmul	$f0, $f1, $f0
	lw	$a0, 4($sp)
	lw	$a1, 8($a0)
	lw	$a0, 4($a0)
	sub	$a0, $a1, $a0
	li	$a1, 0
	blt	$a1, $a0, bge_else.18194
	neg	$a2, $a0
	j	bge_cont.18195
bge_else.18194:
	move	$a2, $a0
bge_cont.18195:
	blt	$a1, $a0, bge_else.18196
	li	$a0, -1
	j	bge_cont.18197
bge_else.18196:
	li	$a0, 1
bge_cont.18197:
	li	$a1, 1
	fsw	$f0, 1536($sp)
	bne	$a0, $a1, bne_else.18198
	li	$a0, 128
	sll	$a0, $a0, 16
	ori	$a0, $a0, 0
	blt	$a0, $a2, bge_else.18200
	mtc1	$f1, $zero
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	move	$a0, $a2
	fmove	$f0, $f1
	fmove	$f1, $f2
	sw	$ra, 1548($sp)
	addi	$sp, $sp, 1552
	jal	itof_ret_sub.851.2649.3701
	subi	$sp, $sp, 1552
	lw	$ra, 1548($sp)
	fmove	$f0, $fv
	j	bge_cont.18201
bge_else.18200:
	mtc1	$f1, $zero
	move	$a0, $a2
	fmove	$f0, $f1
	sw	$ra, 1548($sp)
	addi	$sp, $sp, 1552
	jal	itof_big.835.3675
	subi	$sp, $sp, 1552
	lw	$ra, 1548($sp)
	fmove	$f0, $fv
bge_cont.18201:
	j	bne_cont.18199
bne_else.18198:
	li	$a0, 128
	sll	$a0, $a0, 16
	ori	$a0, $a0, 0
	blt	$a0, $a2, bge_else.18202
	mtc1	$f1, $zero
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	move	$a0, $a2
	fmove	$f0, $f1
	fmove	$f1, $f2
	sw	$ra, 1548($sp)
	addi	$sp, $sp, 1552
	jal	itof_ret_sub.851.2633.3682
	subi	$sp, $sp, 1552
	lw	$ra, 1548($sp)
	fmove	$f0, $fv
	fneg	$f0, $f0
	j	bge_cont.18203
bge_else.18202:
	mtc1	$f1, $zero
	move	$a0, $a2
	fmove	$f0, $f1
	sw	$ra, 1548($sp)
	addi	$sp, $sp, 1552
	jal	itof_big.835.3675
	subi	$sp, $sp, 1552
	lw	$ra, 1548($sp)
	fmove	$f0, $fv
	fneg	$f0, $f0
bge_cont.18203:
bne_cont.18199:
	finv	$f0, $f0
	flw	$f1, 1536($sp)
	fmul	$f0, $f1, $f0
	li	$v0, 17279
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	mtc1	$f2, $zero
	fabs	$f3, $f0
	mtc1	$f4, $zero
	fblt	$f0, $f4, fbge_else.18204
	li	$a0, 1
	j	fbge_cont.18205
fbge_else.18204:
	li	$a0, -1
fbge_cont.18205:
	li	$a1, 1
	fsw	$f2, 1544($sp)
	fsw	$f1, 1552($sp)
	bne	$a0, $a1, bne_else.18206
	li	$v0, 19200
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f0, $v0
	fblt	$f0, $f3, fbge_else.18208
	li	$a0, 0
	li	$a1, 1
	fmove	$f0, $f3
	sw	$ra, 1564($sp)
	addi	$sp, $sp, 1568
	jal	ftoi_ret_sub.892.2709.8087
	subi	$sp, $sp, 1568
	lw	$ra, 1564($sp)
	move	$a0, $v0
	j	fbge_cont.18209
fbge_else.18208:
	li	$a0, 0
	fmove	$f0, $f3
	sw	$ra, 1564($sp)
	addi	$sp, $sp, 1568
	jal	ftoi_big.874.8053
	subi	$sp, $sp, 1568
	lw	$ra, 1564($sp)
	move	$a0, $v0
fbge_cont.18209:
	j	bne_cont.18207
bne_else.18206:
	li	$v0, 19200
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f0, $v0
	fblt	$f0, $f3, fbge_else.18210
	li	$a0, 0
	li	$a1, 1
	fmove	$f0, $f3
	sw	$ra, 1564($sp)
	addi	$sp, $sp, 1568
	jal	ftoi_ret_sub.892.2683.8060
	subi	$sp, $sp, 1568
	lw	$ra, 1564($sp)
	move	$a0, $v0
	neg	$a0, $a0
	j	fbge_cont.18211
fbge_else.18210:
	li	$a0, 0
	fmove	$f0, $f3
	sw	$ra, 1564($sp)
	addi	$sp, $sp, 1568
	jal	ftoi_big.874.8053
	subi	$sp, $sp, 1568
	lw	$ra, 1564($sp)
	move	$a0, $v0
	neg	$a0, $a0
fbge_cont.18211:
bne_cont.18207:
	flw	$f0, 1552($sp)
	fabs	$f0, $f0
	li	$v0, 19200
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	sw	$a0, 1560($sp)
	fblt	$f1, $f0, fbge_else.18212
	li	$a1, 0
	li	$a2, 1
	move	$a0, $a1
	move	$a1, $a2
	sw	$ra, 1564($sp)
	addi	$sp, $sp, 1568
	jal	ftoi_ret_sub.892.2709.7997
	subi	$sp, $sp, 1568
	lw	$ra, 1564($sp)
	move	$a0, $v0
	j	fbge_cont.18213
fbge_else.18212:
	li	$a1, 0
	move	$a0, $a1
	sw	$ra, 1564($sp)
	addi	$sp, $sp, 1568
	jal	ftoi_big.874.7963
	subi	$sp, $sp, 1568
	lw	$ra, 1564($sp)
	move	$a0, $v0
fbge_cont.18213:
	flw	$f0, 1544($sp)
	fabs	$f0, $f0
	li	$v0, 19200
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	sw	$a0, 1564($sp)
	fblt	$f1, $f0, fbge_else.18214
	li	$a1, 0
	li	$a2, 1
	move	$a0, $a1
	move	$a1, $a2
	sw	$ra, 1572($sp)
	addi	$sp, $sp, 1576
	jal	ftoi_ret_sub.892.2709.7907
	subi	$sp, $sp, 1576
	lw	$ra, 1572($sp)
	move	$a0, $v0
	j	fbge_cont.18215
fbge_else.18214:
	li	$a1, 0
	move	$a0, $a1
	sw	$ra, 1572($sp)
	addi	$sp, $sp, 1576
	jal	ftoi_big.874.7873
	subi	$sp, $sp, 1576
	lw	$ra, 1572($sp)
	move	$a0, $v0
fbge_cont.18215:
	li	$a23, 32
	print_char	$a23
	li	$a2, 0
	lw	$a1, 1560($sp)
	blt	$a1, $a2, bge_else.18216
	j	bge_cont.18217
bge_else.18216:
	li	$a23, 45
	print_char	$a23
	neg	$a1, $a1
bge_cont.18217:
	li	$a3, 10000
	sw	$a0, 1568($sp)
	sw	$a1, 1572($sp)
	move	$a0, $a1
	move	$a1, $a3
	sw	$ra, 1580($sp)
	addi	$sp, $sp, 1584
	jal	countn.418
	subi	$sp, $sp, 1584
	lw	$ra, 1580($sp)
	move	$a0, $v0
	li	$a1, 10000
	li	$a2, 0
	sw	$a0, 1576($sp)
	sw	$ra, 1580($sp)
	addi	$sp, $sp, 1584
	jal	mymul.422
	subi	$sp, $sp, 1584
	lw	$ra, 1580($sp)
	move	$a0, $v0
	lw	$a1, 1572($sp)
	sub	$a0, $a1, $a0
	li	$a2, 0
	lw	$a1, 1576($sp)
	blt	$a2, $a1, bge_else.18218
	li	$a1, 0
	j	bge_cont.18219
bge_else.18218:
	addi	$a1, $a1, 48
	print_char	$a1
	li	$a1, 1
bge_cont.18219:
	li	$a3, 1000
	sw	$a1, 1580($sp)
	sw	$a0, 1584($sp)
	move	$a1, $a3
	sw	$ra, 1588($sp)
	addi	$sp, $sp, 1592
	jal	countn.418
	subi	$sp, $sp, 1592
	lw	$ra, 1588($sp)
	move	$a0, $v0
	li	$a1, 1000
	li	$a2, 0
	sw	$a0, 1588($sp)
	sw	$ra, 1596($sp)
	addi	$sp, $sp, 1600
	jal	mymul.422
	subi	$sp, $sp, 1600
	lw	$ra, 1596($sp)
	move	$a0, $v0
	lw	$a1, 1584($sp)
	sub	$a0, $a1, $a0
	li	$a2, 0
	lw	$a1, 1588($sp)
	blt	$a2, $a1, bge_else.18220
	li	$a1, 1
	lw	$a3, 1580($sp)
	bne	$a3, $a1, bne_else.18222
	li	$a23, 48
	print_char	$a23
	li	$a1, 1
	j	bne_cont.18223
bne_else.18222:
	li	$a1, 0
bne_cont.18223:
	j	bge_cont.18221
bge_else.18220:
	addi	$a1, $a1, 48
	print_char	$a1
	li	$a1, 1
bge_cont.18221:
	li	$a3, 100
	sw	$a1, 1592($sp)
	sw	$a0, 1596($sp)
	move	$a1, $a3
	sw	$ra, 1604($sp)
	addi	$sp, $sp, 1608
	jal	countn.418
	subi	$sp, $sp, 1608
	lw	$ra, 1604($sp)
	move	$a0, $v0
	li	$a1, 100
	li	$a2, 0
	sw	$a0, 1600($sp)
	sw	$ra, 1604($sp)
	addi	$sp, $sp, 1608
	jal	mymul.422
	subi	$sp, $sp, 1608
	lw	$ra, 1604($sp)
	move	$a0, $v0
	lw	$a1, 1596($sp)
	sub	$a0, $a1, $a0
	li	$a2, 0
	lw	$a1, 1600($sp)
	blt	$a2, $a1, bge_else.18224
	li	$a1, 1
	lw	$a3, 1592($sp)
	bne	$a3, $a1, bne_else.18226
	li	$a23, 48
	print_char	$a23
	li	$a1, 1
	j	bne_cont.18227
bne_else.18226:
	li	$a1, 0
bne_cont.18227:
	j	bge_cont.18225
bge_else.18224:
	addi	$a1, $a1, 48
	print_char	$a1
	li	$a1, 1
bge_cont.18225:
	li	$a3, 10
	sw	$a1, 1604($sp)
	sw	$a0, 1608($sp)
	move	$a1, $a3
	sw	$ra, 1612($sp)
	addi	$sp, $sp, 1616
	jal	countn.418
	subi	$sp, $sp, 1616
	lw	$ra, 1612($sp)
	move	$a0, $v0
	li	$a1, 10
	li	$a2, 0
	sw	$a0, 1612($sp)
	sw	$ra, 1620($sp)
	addi	$sp, $sp, 1624
	jal	mymul.422
	subi	$sp, $sp, 1624
	lw	$ra, 1620($sp)
	move	$a0, $v0
	lw	$a1, 1608($sp)
	sub	$a0, $a1, $a0
	li	$a1, 0
	lw	$a2, 1612($sp)
	blt	$a1, $a2, bge_else.18228
	li	$a1, 1
	lw	$a2, 1604($sp)
	bne	$a2, $a1, bne_else.18230
	li	$a23, 48
	print_char	$a23
	li	$a1, 1
	j	bne_cont.18231
bne_else.18230:
	li	$a1, 0
bne_cont.18231:
	j	bge_cont.18229
bge_else.18228:
	addi	$a1, $a2, 48
	print_char	$a1
	li	$a1, 1
bge_cont.18229:
	addi	$a0, $a0, 48
	print_char	$a0
	li	$a23, 32
	print_char	$a23
	li	$a2, 0
	lw	$a0, 1564($sp)
	blt	$a0, $a2, bge_else.18232
	j	bge_cont.18233
bge_else.18232:
	li	$a23, 45
	print_char	$a23
	neg	$a0, $a0
bge_cont.18233:
	li	$a1, 10000
	sw	$a0, 1616($sp)
	sw	$ra, 1620($sp)
	addi	$sp, $sp, 1624
	jal	countn.418
	subi	$sp, $sp, 1624
	lw	$ra, 1620($sp)
	move	$a0, $v0
	li	$a1, 10000
	li	$a2, 0
	sw	$a0, 1620($sp)
	sw	$ra, 1628($sp)
	addi	$sp, $sp, 1632
	jal	mymul.422
	subi	$sp, $sp, 1632
	lw	$ra, 1628($sp)
	move	$a0, $v0
	lw	$a1, 1616($sp)
	sub	$a0, $a1, $a0
	li	$a2, 0
	lw	$a1, 1620($sp)
	blt	$a2, $a1, bge_else.18234
	li	$a1, 0
	j	bge_cont.18235
bge_else.18234:
	addi	$a1, $a1, 48
	print_char	$a1
	li	$a1, 1
bge_cont.18235:
	li	$a3, 1000
	sw	$a1, 1624($sp)
	sw	$a0, 1628($sp)
	move	$a1, $a3
	sw	$ra, 1636($sp)
	addi	$sp, $sp, 1640
	jal	countn.418
	subi	$sp, $sp, 1640
	lw	$ra, 1636($sp)
	move	$a0, $v0
	li	$a1, 1000
	li	$a2, 0
	sw	$a0, 1632($sp)
	sw	$ra, 1636($sp)
	addi	$sp, $sp, 1640
	jal	mymul.422
	subi	$sp, $sp, 1640
	lw	$ra, 1636($sp)
	move	$a0, $v0
	lw	$a1, 1628($sp)
	sub	$a0, $a1, $a0
	li	$a2, 0
	lw	$a1, 1632($sp)
	blt	$a2, $a1, bge_else.18236
	li	$a1, 1
	lw	$a3, 1624($sp)
	bne	$a3, $a1, bne_else.18238
	li	$a23, 48
	print_char	$a23
	li	$a1, 1
	j	bne_cont.18239
bne_else.18238:
	li	$a1, 0
bne_cont.18239:
	j	bge_cont.18237
bge_else.18236:
	addi	$a1, $a1, 48
	print_char	$a1
	li	$a1, 1
bge_cont.18237:
	li	$a3, 100
	sw	$a1, 1636($sp)
	sw	$a0, 1640($sp)
	move	$a1, $a3
	sw	$ra, 1644($sp)
	addi	$sp, $sp, 1648
	jal	countn.418
	subi	$sp, $sp, 1648
	lw	$ra, 1644($sp)
	move	$a0, $v0
	li	$a1, 100
	li	$a2, 0
	sw	$a0, 1644($sp)
	sw	$ra, 1652($sp)
	addi	$sp, $sp, 1656
	jal	mymul.422
	subi	$sp, $sp, 1656
	lw	$ra, 1652($sp)
	move	$a0, $v0
	lw	$a1, 1640($sp)
	sub	$a0, $a1, $a0
	li	$a2, 0
	lw	$a1, 1644($sp)
	blt	$a2, $a1, bge_else.18240
	li	$a1, 1
	lw	$a3, 1636($sp)
	bne	$a3, $a1, bne_else.18242
	li	$a23, 48
	print_char	$a23
	li	$a1, 1
	j	bne_cont.18243
bne_else.18242:
	li	$a1, 0
bne_cont.18243:
	j	bge_cont.18241
bge_else.18240:
	addi	$a1, $a1, 48
	print_char	$a1
	li	$a1, 1
bge_cont.18241:
	li	$a3, 10
	sw	$a1, 1648($sp)
	sw	$a0, 1652($sp)
	move	$a1, $a3
	sw	$ra, 1660($sp)
	addi	$sp, $sp, 1664
	jal	countn.418
	subi	$sp, $sp, 1664
	lw	$ra, 1660($sp)
	move	$a0, $v0
	li	$a1, 10
	li	$a2, 0
	sw	$a0, 1656($sp)
	sw	$ra, 1660($sp)
	addi	$sp, $sp, 1664
	jal	mymul.422
	subi	$sp, $sp, 1664
	lw	$ra, 1660($sp)
	move	$a0, $v0
	lw	$a1, 1652($sp)
	sub	$a0, $a1, $a0
	li	$a1, 0
	lw	$a2, 1656($sp)
	blt	$a1, $a2, bge_else.18244
	li	$a1, 1
	lw	$a2, 1648($sp)
	bne	$a2, $a1, bne_else.18246
	li	$a23, 48
	print_char	$a23
	li	$a1, 1
	j	bne_cont.18247
bne_else.18246:
	li	$a1, 0
bne_cont.18247:
	j	bge_cont.18245
bge_else.18244:
	addi	$a1, $a2, 48
	print_char	$a1
	li	$a1, 1
bge_cont.18245:
	addi	$a0, $a0, 48
	print_char	$a0
	li	$a23, 32
	print_char	$a23
	li	$a2, 0
	lw	$a0, 1568($sp)
	blt	$a0, $a2, bge_else.18248
	j	bge_cont.18249
bge_else.18248:
	li	$a23, 45
	print_char	$a23
	neg	$a0, $a0
bge_cont.18249:
	li	$a1, 10000
	sw	$a0, 1660($sp)
	sw	$ra, 1668($sp)
	addi	$sp, $sp, 1672
	jal	countn.418
	subi	$sp, $sp, 1672
	lw	$ra, 1668($sp)
	move	$a0, $v0
	li	$a1, 10000
	li	$a2, 0
	sw	$a0, 1664($sp)
	sw	$ra, 1668($sp)
	addi	$sp, $sp, 1672
	jal	mymul.422
	subi	$sp, $sp, 1672
	lw	$ra, 1668($sp)
	move	$a0, $v0
	lw	$a1, 1660($sp)
	sub	$a0, $a1, $a0
	li	$a2, 0
	lw	$a1, 1664($sp)
	blt	$a2, $a1, bge_else.18250
	li	$a1, 0
	j	bge_cont.18251
bge_else.18250:
	addi	$a1, $a1, 48
	print_char	$a1
	li	$a1, 1
bge_cont.18251:
	li	$a3, 1000
	sw	$a1, 1668($sp)
	sw	$a0, 1672($sp)
	move	$a1, $a3
	sw	$ra, 1676($sp)
	addi	$sp, $sp, 1680
	jal	countn.418
	subi	$sp, $sp, 1680
	lw	$ra, 1676($sp)
	move	$a0, $v0
	li	$a1, 1000
	li	$a2, 0
	sw	$a0, 1676($sp)
	sw	$ra, 1684($sp)
	addi	$sp, $sp, 1688
	jal	mymul.422
	subi	$sp, $sp, 1688
	lw	$ra, 1684($sp)
	move	$a0, $v0
	lw	$a1, 1672($sp)
	sub	$a0, $a1, $a0
	li	$a2, 0
	lw	$a1, 1676($sp)
	blt	$a2, $a1, bge_else.18252
	li	$a1, 1
	lw	$a3, 1668($sp)
	bne	$a3, $a1, bne_else.18254
	li	$a23, 48
	print_char	$a23
	li	$a1, 1
	j	bne_cont.18255
bne_else.18254:
	li	$a1, 0
bne_cont.18255:
	j	bge_cont.18253
bge_else.18252:
	addi	$a1, $a1, 48
	print_char	$a1
	li	$a1, 1
bge_cont.18253:
	li	$a3, 100
	sw	$a1, 1680($sp)
	sw	$a0, 1684($sp)
	move	$a1, $a3
	sw	$ra, 1692($sp)
	addi	$sp, $sp, 1696
	jal	countn.418
	subi	$sp, $sp, 1696
	lw	$ra, 1692($sp)
	move	$a0, $v0
	li	$a1, 100
	li	$a2, 0
	sw	$a0, 1688($sp)
	sw	$ra, 1692($sp)
	addi	$sp, $sp, 1696
	jal	mymul.422
	subi	$sp, $sp, 1696
	lw	$ra, 1692($sp)
	move	$a0, $v0
	lw	$a1, 1684($sp)
	sub	$a0, $a1, $a0
	li	$a2, 0
	lw	$a1, 1688($sp)
	blt	$a2, $a1, bge_else.18256
	li	$a1, 1
	lw	$a3, 1680($sp)
	bne	$a3, $a1, bne_else.18258
	li	$a23, 48
	print_char	$a23
	li	$a1, 1
	j	bne_cont.18259
bne_else.18258:
	li	$a1, 0
bne_cont.18259:
	j	bge_cont.18257
bge_else.18256:
	addi	$a1, $a1, 48
	print_char	$a1
	li	$a1, 1
bge_cont.18257:
	li	$a3, 10
	sw	$a1, 1692($sp)
	sw	$a0, 1696($sp)
	move	$a1, $a3
	sw	$ra, 1700($sp)
	addi	$sp, $sp, 1704
	jal	countn.418
	subi	$sp, $sp, 1704
	lw	$ra, 1700($sp)
	move	$a0, $v0
	li	$a1, 10
	li	$a2, 0
	sw	$a0, 1700($sp)
	sw	$ra, 1708($sp)
	addi	$sp, $sp, 1712
	jal	mymul.422
	subi	$sp, $sp, 1712
	lw	$ra, 1708($sp)
	move	$a0, $v0
	lw	$a1, 1696($sp)
	sub	$a0, $a1, $a0
	li	$a1, 0
	lw	$a2, 1700($sp)
	blt	$a1, $a2, bge_else.18260
	li	$a1, 1
	lw	$a2, 1692($sp)
	bne	$a2, $a1, bne_else.18262
	li	$a23, 48
	print_char	$a23
	li	$a1, 1
	j	bne_cont.18263
bne_else.18262:
	li	$a1, 0
bne_cont.18263:
	j	bge_cont.18261
bge_else.18260:
	addi	$a1, $a2, 48
	print_char	$a1
	li	$a1, 1
bge_cont.18261:
	addi	$a0, $a0, 48
	print_char	$a0
	jr	$ra
bge_else.18183:
	lw	$a1, 12($a0)
	blt	$a1, $a2, bge_else.18265
	mtc1	$f0, $zero
	li	$v0, 17279
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	lw	$a1, 8($a0)
	sub	$a1, $a2, $a1
	li	$a2, 0
	blt	$a2, $a1, bge_else.18266
	neg	$a3, $a1
	j	bge_cont.18267
bge_else.18266:
	move	$a3, $a1
bge_cont.18267:
	blt	$a2, $a1, bge_else.18268
	li	$a1, -1
	j	bge_cont.18269
bge_else.18268:
	li	$a1, 1
bge_cont.18269:
	li	$a2, 1
	fsw	$f1, 1704($sp)
	fsw	$f0, 1712($sp)
	bne	$a1, $a2, bne_else.18270
	li	$a1, 128
	sll	$a1, $a1, 16
	ori	$a1, $a1, 0
	blt	$a1, $a3, bge_else.18272
	mtc1	$f2, $zero
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f3, $v0
	move	$a0, $a3
	fmove	$f1, $f3
	fmove	$f0, $f2
	sw	$ra, 1724($sp)
	addi	$sp, $sp, 1728
	jal	itof_ret_sub.851.2649.3623
	subi	$sp, $sp, 1728
	lw	$ra, 1724($sp)
	fmove	$f0, $fv
	j	bge_cont.18273
bge_else.18272:
	mtc1	$f2, $zero
	move	$a0, $a3
	fmove	$f0, $f2
	sw	$ra, 1724($sp)
	addi	$sp, $sp, 1728
	jal	itof_big.835.3597
	subi	$sp, $sp, 1728
	lw	$ra, 1724($sp)
	fmove	$f0, $fv
bge_cont.18273:
	j	bne_cont.18271
bne_else.18270:
	li	$a1, 128
	sll	$a1, $a1, 16
	ori	$a1, $a1, 0
	blt	$a1, $a3, bge_else.18274
	mtc1	$f2, $zero
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f3, $v0
	move	$a0, $a3
	fmove	$f1, $f3
	fmove	$f0, $f2
	sw	$ra, 1724($sp)
	addi	$sp, $sp, 1728
	jal	itof_ret_sub.851.2633.3604
	subi	$sp, $sp, 1728
	lw	$ra, 1724($sp)
	fmove	$f0, $fv
	fneg	$f0, $f0
	j	bge_cont.18275
bge_else.18274:
	mtc1	$f2, $zero
	move	$a0, $a3
	fmove	$f0, $f2
	sw	$ra, 1724($sp)
	addi	$sp, $sp, 1728
	jal	itof_big.835.3597
	subi	$sp, $sp, 1728
	lw	$ra, 1724($sp)
	fmove	$f0, $fv
	fneg	$f0, $f0
bge_cont.18275:
bne_cont.18271:
	li	$v0, 17279
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	fmul	$f0, $f1, $f0
	lw	$a0, 4($sp)
	lw	$a1, 12($a0)
	lw	$a0, 8($a0)
	sub	$a0, $a1, $a0
	li	$a1, 0
	blt	$a1, $a0, bge_else.18276
	neg	$a2, $a0
	j	bge_cont.18277
bge_else.18276:
	move	$a2, $a0
bge_cont.18277:
	blt	$a1, $a0, bge_else.18278
	li	$a0, -1
	j	bge_cont.18279
bge_else.18278:
	li	$a0, 1
bge_cont.18279:
	li	$a1, 1
	fsw	$f0, 1720($sp)
	bne	$a0, $a1, bne_else.18280
	li	$a0, 128
	sll	$a0, $a0, 16
	ori	$a0, $a0, 0
	blt	$a0, $a2, bge_else.18282
	mtc1	$f1, $zero
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	move	$a0, $a2
	fmove	$f0, $f1
	fmove	$f1, $f2
	sw	$ra, 1732($sp)
	addi	$sp, $sp, 1736
	jal	itof_ret_sub.851.2649.3556
	subi	$sp, $sp, 1736
	lw	$ra, 1732($sp)
	fmove	$f0, $fv
	j	bge_cont.18283
bge_else.18282:
	mtc1	$f1, $zero
	move	$a0, $a2
	fmove	$f0, $f1
	sw	$ra, 1732($sp)
	addi	$sp, $sp, 1736
	jal	itof_big.835.3530
	subi	$sp, $sp, 1736
	lw	$ra, 1732($sp)
	fmove	$f0, $fv
bge_cont.18283:
	j	bne_cont.18281
bne_else.18280:
	li	$a0, 128
	sll	$a0, $a0, 16
	ori	$a0, $a0, 0
	blt	$a0, $a2, bge_else.18284
	mtc1	$f1, $zero
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	move	$a0, $a2
	fmove	$f0, $f1
	fmove	$f1, $f2
	sw	$ra, 1732($sp)
	addi	$sp, $sp, 1736
	jal	itof_ret_sub.851.2633.3537
	subi	$sp, $sp, 1736
	lw	$ra, 1732($sp)
	fmove	$f0, $fv
	fneg	$f0, $f0
	j	bge_cont.18285
bge_else.18284:
	mtc1	$f1, $zero
	move	$a0, $a2
	fmove	$f0, $f1
	sw	$ra, 1732($sp)
	addi	$sp, $sp, 1736
	jal	itof_big.835.3530
	subi	$sp, $sp, 1736
	lw	$ra, 1732($sp)
	fmove	$f0, $fv
	fneg	$f0, $f0
bge_cont.18285:
bne_cont.18281:
	finv	$f0, $f0
	flw	$f1, 1720($sp)
	fmul	$f0, $f1, $f0
	flw	$f1, 1712($sp)
	fabs	$f1, $f1
	li	$v0, 19200
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fsw	$f0, 1728($sp)
	fblt	$f2, $f1, fbge_else.18286
	li	$a0, 0
	li	$a1, 1
	fmove	$f0, $f1
	sw	$ra, 1740($sp)
	addi	$sp, $sp, 1744
	jal	ftoi_ret_sub.892.2709.7640
	subi	$sp, $sp, 1744
	lw	$ra, 1740($sp)
	move	$a0, $v0
	j	fbge_cont.18287
fbge_else.18286:
	li	$a0, 0
	fmove	$f0, $f1
	sw	$ra, 1740($sp)
	addi	$sp, $sp, 1744
	jal	ftoi_big.874.7606
	subi	$sp, $sp, 1744
	lw	$ra, 1740($sp)
	move	$a0, $v0
fbge_cont.18287:
	flw	$f0, 1704($sp)
	fabs	$f0, $f0
	li	$v0, 19200
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	sw	$a0, 1736($sp)
	fblt	$f1, $f0, fbge_else.18288
	li	$a1, 0
	li	$a2, 1
	move	$a0, $a1
	move	$a1, $a2
	sw	$ra, 1740($sp)
	addi	$sp, $sp, 1744
	jal	ftoi_ret_sub.892.2709.7550
	subi	$sp, $sp, 1744
	lw	$ra, 1740($sp)
	move	$a0, $v0
	j	fbge_cont.18289
fbge_else.18288:
	li	$a1, 0
	move	$a0, $a1
	sw	$ra, 1740($sp)
	addi	$sp, $sp, 1744
	jal	ftoi_big.874.7516
	subi	$sp, $sp, 1744
	lw	$ra, 1740($sp)
	move	$a0, $v0
fbge_cont.18289:
	flw	$f0, 1728($sp)
	fabs	$f1, $f0
	mtc1	$f2, $zero
	fblt	$f0, $f2, fbge_else.18290
	li	$a1, 1
	j	fbge_cont.18291
fbge_else.18290:
	li	$a1, -1
fbge_cont.18291:
	li	$a2, 1
	sw	$a0, 1740($sp)
	bne	$a1, $a2, bne_else.18292
	li	$v0, 19200
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f0, $v0
	fblt	$f0, $f1, fbge_else.18294
	li	$a1, 0
	li	$a2, 1
	move	$a0, $a1
	move	$a1, $a2
	fmove	$f0, $f1
	sw	$ra, 1748($sp)
	addi	$sp, $sp, 1752
	jal	ftoi_ret_sub.892.2709.7460
	subi	$sp, $sp, 1752
	lw	$ra, 1748($sp)
	move	$a0, $v0
	j	fbge_cont.18295
fbge_else.18294:
	li	$a1, 0
	move	$a0, $a1
	fmove	$f0, $f1
	sw	$ra, 1748($sp)
	addi	$sp, $sp, 1752
	jal	ftoi_big.874.7426
	subi	$sp, $sp, 1752
	lw	$ra, 1748($sp)
	move	$a0, $v0
fbge_cont.18295:
	j	bne_cont.18293
bne_else.18292:
	li	$v0, 19200
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f0, $v0
	fblt	$f0, $f1, fbge_else.18296
	li	$a1, 0
	li	$a2, 1
	move	$a0, $a1
	move	$a1, $a2
	fmove	$f0, $f1
	sw	$ra, 1748($sp)
	addi	$sp, $sp, 1752
	jal	ftoi_ret_sub.892.2683.7433
	subi	$sp, $sp, 1752
	lw	$ra, 1748($sp)
	move	$a0, $v0
	neg	$a0, $a0
	j	fbge_cont.18297
fbge_else.18296:
	li	$a1, 0
	move	$a0, $a1
	fmove	$f0, $f1
	sw	$ra, 1748($sp)
	addi	$sp, $sp, 1752
	jal	ftoi_big.874.7426
	subi	$sp, $sp, 1752
	lw	$ra, 1748($sp)
	move	$a0, $v0
	neg	$a0, $a0
fbge_cont.18297:
bne_cont.18293:
	li	$a23, 32
	print_char	$a23
	li	$a2, 0
	lw	$a1, 1736($sp)
	blt	$a1, $a2, bge_else.18298
	j	bge_cont.18299
bge_else.18298:
	li	$a23, 45
	print_char	$a23
	neg	$a1, $a1
bge_cont.18299:
	li	$a3, 10000
	sw	$a0, 1744($sp)
	sw	$a1, 1748($sp)
	move	$a0, $a1
	move	$a1, $a3
	sw	$ra, 1756($sp)
	addi	$sp, $sp, 1760
	jal	countn.418
	subi	$sp, $sp, 1760
	lw	$ra, 1756($sp)
	move	$a0, $v0
	li	$a1, 10000
	li	$a2, 0
	sw	$a0, 1752($sp)
	sw	$ra, 1756($sp)
	addi	$sp, $sp, 1760
	jal	mymul.422
	subi	$sp, $sp, 1760
	lw	$ra, 1756($sp)
	move	$a0, $v0
	lw	$a1, 1748($sp)
	sub	$a0, $a1, $a0
	li	$a2, 0
	lw	$a1, 1752($sp)
	blt	$a2, $a1, bge_else.18300
	li	$a1, 0
	j	bge_cont.18301
bge_else.18300:
	addi	$a1, $a1, 48
	print_char	$a1
	li	$a1, 1
bge_cont.18301:
	li	$a3, 1000
	sw	$a1, 1756($sp)
	sw	$a0, 1760($sp)
	move	$a1, $a3
	sw	$ra, 1764($sp)
	addi	$sp, $sp, 1768
	jal	countn.418
	subi	$sp, $sp, 1768
	lw	$ra, 1764($sp)
	move	$a0, $v0
	li	$a1, 1000
	li	$a2, 0
	sw	$a0, 1764($sp)
	sw	$ra, 1772($sp)
	addi	$sp, $sp, 1776
	jal	mymul.422
	subi	$sp, $sp, 1776
	lw	$ra, 1772($sp)
	move	$a0, $v0
	lw	$a1, 1760($sp)
	sub	$a0, $a1, $a0
	li	$a2, 0
	lw	$a1, 1764($sp)
	blt	$a2, $a1, bge_else.18302
	li	$a1, 1
	lw	$a3, 1756($sp)
	bne	$a3, $a1, bne_else.18304
	li	$a23, 48
	print_char	$a23
	li	$a1, 1
	j	bne_cont.18305
bne_else.18304:
	li	$a1, 0
bne_cont.18305:
	j	bge_cont.18303
bge_else.18302:
	addi	$a1, $a1, 48
	print_char	$a1
	li	$a1, 1
bge_cont.18303:
	li	$a3, 100
	sw	$a1, 1768($sp)
	sw	$a0, 1772($sp)
	move	$a1, $a3
	sw	$ra, 1780($sp)
	addi	$sp, $sp, 1784
	jal	countn.418
	subi	$sp, $sp, 1784
	lw	$ra, 1780($sp)
	move	$a0, $v0
	li	$a1, 100
	li	$a2, 0
	sw	$a0, 1776($sp)
	sw	$ra, 1780($sp)
	addi	$sp, $sp, 1784
	jal	mymul.422
	subi	$sp, $sp, 1784
	lw	$ra, 1780($sp)
	move	$a0, $v0
	lw	$a1, 1772($sp)
	sub	$a0, $a1, $a0
	li	$a2, 0
	lw	$a1, 1776($sp)
	blt	$a2, $a1, bge_else.18306
	li	$a1, 1
	lw	$a3, 1768($sp)
	bne	$a3, $a1, bne_else.18308
	li	$a23, 48
	print_char	$a23
	li	$a1, 1
	j	bne_cont.18309
bne_else.18308:
	li	$a1, 0
bne_cont.18309:
	j	bge_cont.18307
bge_else.18306:
	addi	$a1, $a1, 48
	print_char	$a1
	li	$a1, 1
bge_cont.18307:
	li	$a3, 10
	sw	$a1, 1780($sp)
	sw	$a0, 1784($sp)
	move	$a1, $a3
	sw	$ra, 1788($sp)
	addi	$sp, $sp, 1792
	jal	countn.418
	subi	$sp, $sp, 1792
	lw	$ra, 1788($sp)
	move	$a0, $v0
	li	$a1, 10
	li	$a2, 0
	sw	$a0, 1788($sp)
	sw	$ra, 1796($sp)
	addi	$sp, $sp, 1800
	jal	mymul.422
	subi	$sp, $sp, 1800
	lw	$ra, 1796($sp)
	move	$a0, $v0
	lw	$a1, 1784($sp)
	sub	$a0, $a1, $a0
	li	$a1, 0
	lw	$a2, 1788($sp)
	blt	$a1, $a2, bge_else.18310
	li	$a1, 1
	lw	$a2, 1780($sp)
	bne	$a2, $a1, bne_else.18312
	li	$a23, 48
	print_char	$a23
	li	$a1, 1
	j	bne_cont.18313
bne_else.18312:
	li	$a1, 0
bne_cont.18313:
	j	bge_cont.18311
bge_else.18310:
	addi	$a1, $a2, 48
	print_char	$a1
	li	$a1, 1
bge_cont.18311:
	addi	$a0, $a0, 48
	print_char	$a0
	li	$a23, 32
	print_char	$a23
	li	$a2, 0
	lw	$a0, 1740($sp)
	blt	$a0, $a2, bge_else.18314
	j	bge_cont.18315
bge_else.18314:
	li	$a23, 45
	print_char	$a23
	neg	$a0, $a0
bge_cont.18315:
	li	$a1, 10000
	sw	$a0, 1792($sp)
	sw	$ra, 1796($sp)
	addi	$sp, $sp, 1800
	jal	countn.418
	subi	$sp, $sp, 1800
	lw	$ra, 1796($sp)
	move	$a0, $v0
	li	$a1, 10000
	li	$a2, 0
	sw	$a0, 1796($sp)
	sw	$ra, 1804($sp)
	addi	$sp, $sp, 1808
	jal	mymul.422
	subi	$sp, $sp, 1808
	lw	$ra, 1804($sp)
	move	$a0, $v0
	lw	$a1, 1792($sp)
	sub	$a0, $a1, $a0
	li	$a2, 0
	lw	$a1, 1796($sp)
	blt	$a2, $a1, bge_else.18316
	li	$a1, 0
	j	bge_cont.18317
bge_else.18316:
	addi	$a1, $a1, 48
	print_char	$a1
	li	$a1, 1
bge_cont.18317:
	li	$a3, 1000
	sw	$a1, 1800($sp)
	sw	$a0, 1804($sp)
	move	$a1, $a3
	sw	$ra, 1812($sp)
	addi	$sp, $sp, 1816
	jal	countn.418
	subi	$sp, $sp, 1816
	lw	$ra, 1812($sp)
	move	$a0, $v0
	li	$a1, 1000
	li	$a2, 0
	sw	$a0, 1808($sp)
	sw	$ra, 1812($sp)
	addi	$sp, $sp, 1816
	jal	mymul.422
	subi	$sp, $sp, 1816
	lw	$ra, 1812($sp)
	move	$a0, $v0
	lw	$a1, 1804($sp)
	sub	$a0, $a1, $a0
	li	$a2, 0
	lw	$a1, 1808($sp)
	blt	$a2, $a1, bge_else.18318
	li	$a1, 1
	lw	$a3, 1800($sp)
	bne	$a3, $a1, bne_else.18320
	li	$a23, 48
	print_char	$a23
	li	$a1, 1
	j	bne_cont.18321
bne_else.18320:
	li	$a1, 0
bne_cont.18321:
	j	bge_cont.18319
bge_else.18318:
	addi	$a1, $a1, 48
	print_char	$a1
	li	$a1, 1
bge_cont.18319:
	li	$a3, 100
	sw	$a1, 1812($sp)
	sw	$a0, 1816($sp)
	move	$a1, $a3
	sw	$ra, 1820($sp)
	addi	$sp, $sp, 1824
	jal	countn.418
	subi	$sp, $sp, 1824
	lw	$ra, 1820($sp)
	move	$a0, $v0
	li	$a1, 100
	li	$a2, 0
	sw	$a0, 1820($sp)
	sw	$ra, 1828($sp)
	addi	$sp, $sp, 1832
	jal	mymul.422
	subi	$sp, $sp, 1832
	lw	$ra, 1828($sp)
	move	$a0, $v0
	lw	$a1, 1816($sp)
	sub	$a0, $a1, $a0
	li	$a2, 0
	lw	$a1, 1820($sp)
	blt	$a2, $a1, bge_else.18322
	li	$a1, 1
	lw	$a3, 1812($sp)
	bne	$a3, $a1, bne_else.18324
	li	$a23, 48
	print_char	$a23
	li	$a1, 1
	j	bne_cont.18325
bne_else.18324:
	li	$a1, 0
bne_cont.18325:
	j	bge_cont.18323
bge_else.18322:
	addi	$a1, $a1, 48
	print_char	$a1
	li	$a1, 1
bge_cont.18323:
	li	$a3, 10
	sw	$a1, 1824($sp)
	sw	$a0, 1828($sp)
	move	$a1, $a3
	sw	$ra, 1836($sp)
	addi	$sp, $sp, 1840
	jal	countn.418
	subi	$sp, $sp, 1840
	lw	$ra, 1836($sp)
	move	$a0, $v0
	li	$a1, 10
	li	$a2, 0
	sw	$a0, 1832($sp)
	sw	$ra, 1836($sp)
	addi	$sp, $sp, 1840
	jal	mymul.422
	subi	$sp, $sp, 1840
	lw	$ra, 1836($sp)
	move	$a0, $v0
	lw	$a1, 1828($sp)
	sub	$a0, $a1, $a0
	li	$a1, 0
	lw	$a2, 1832($sp)
	blt	$a1, $a2, bge_else.18326
	li	$a1, 1
	lw	$a2, 1824($sp)
	bne	$a2, $a1, bne_else.18328
	li	$a23, 48
	print_char	$a23
	li	$a1, 1
	j	bne_cont.18329
bne_else.18328:
	li	$a1, 0
bne_cont.18329:
	j	bge_cont.18327
bge_else.18326:
	addi	$a1, $a2, 48
	print_char	$a1
	li	$a1, 1
bge_cont.18327:
	addi	$a0, $a0, 48
	print_char	$a0
	li	$a23, 32
	print_char	$a23
	li	$a2, 0
	lw	$a0, 1744($sp)
	blt	$a0, $a2, bge_else.18330
	j	bge_cont.18331
bge_else.18330:
	li	$a23, 45
	print_char	$a23
	neg	$a0, $a0
bge_cont.18331:
	li	$a1, 10000
	sw	$a0, 1836($sp)
	sw	$ra, 1844($sp)
	addi	$sp, $sp, 1848
	jal	countn.418
	subi	$sp, $sp, 1848
	lw	$ra, 1844($sp)
	move	$a0, $v0
	li	$a1, 10000
	li	$a2, 0
	sw	$a0, 1840($sp)
	sw	$ra, 1844($sp)
	addi	$sp, $sp, 1848
	jal	mymul.422
	subi	$sp, $sp, 1848
	lw	$ra, 1844($sp)
	move	$a0, $v0
	lw	$a1, 1836($sp)
	sub	$a0, $a1, $a0
	li	$a2, 0
	lw	$a1, 1840($sp)
	blt	$a2, $a1, bge_else.18332
	li	$a1, 0
	j	bge_cont.18333
bge_else.18332:
	addi	$a1, $a1, 48
	print_char	$a1
	li	$a1, 1
bge_cont.18333:
	li	$a3, 1000
	sw	$a1, 1844($sp)
	sw	$a0, 1848($sp)
	move	$a1, $a3
	sw	$ra, 1852($sp)
	addi	$sp, $sp, 1856
	jal	countn.418
	subi	$sp, $sp, 1856
	lw	$ra, 1852($sp)
	move	$a0, $v0
	li	$a1, 1000
	li	$a2, 0
	sw	$a0, 1852($sp)
	sw	$ra, 1860($sp)
	addi	$sp, $sp, 1864
	jal	mymul.422
	subi	$sp, $sp, 1864
	lw	$ra, 1860($sp)
	move	$a0, $v0
	lw	$a1, 1848($sp)
	sub	$a0, $a1, $a0
	li	$a2, 0
	lw	$a1, 1852($sp)
	blt	$a2, $a1, bge_else.18334
	li	$a1, 1
	lw	$a3, 1844($sp)
	bne	$a3, $a1, bne_else.18336
	li	$a23, 48
	print_char	$a23
	li	$a1, 1
	j	bne_cont.18337
bne_else.18336:
	li	$a1, 0
bne_cont.18337:
	j	bge_cont.18335
bge_else.18334:
	addi	$a1, $a1, 48
	print_char	$a1
	li	$a1, 1
bge_cont.18335:
	li	$a3, 100
	sw	$a1, 1856($sp)
	sw	$a0, 1860($sp)
	move	$a1, $a3
	sw	$ra, 1868($sp)
	addi	$sp, $sp, 1872
	jal	countn.418
	subi	$sp, $sp, 1872
	lw	$ra, 1868($sp)
	move	$a0, $v0
	li	$a1, 100
	li	$a2, 0
	sw	$a0, 1864($sp)
	sw	$ra, 1868($sp)
	addi	$sp, $sp, 1872
	jal	mymul.422
	subi	$sp, $sp, 1872
	lw	$ra, 1868($sp)
	move	$a0, $v0
	lw	$a1, 1860($sp)
	sub	$a0, $a1, $a0
	li	$a2, 0
	lw	$a1, 1864($sp)
	blt	$a2, $a1, bge_else.18338
	li	$a1, 1
	lw	$a3, 1856($sp)
	bne	$a3, $a1, bne_else.18340
	li	$a23, 48
	print_char	$a23
	li	$a1, 1
	j	bne_cont.18341
bne_else.18340:
	li	$a1, 0
bne_cont.18341:
	j	bge_cont.18339
bge_else.18338:
	addi	$a1, $a1, 48
	print_char	$a1
	li	$a1, 1
bge_cont.18339:
	li	$a3, 10
	sw	$a1, 1868($sp)
	sw	$a0, 1872($sp)
	move	$a1, $a3
	sw	$ra, 1876($sp)
	addi	$sp, $sp, 1880
	jal	countn.418
	subi	$sp, $sp, 1880
	lw	$ra, 1876($sp)
	move	$a0, $v0
	li	$a1, 10
	li	$a2, 0
	sw	$a0, 1876($sp)
	sw	$ra, 1884($sp)
	addi	$sp, $sp, 1888
	jal	mymul.422
	subi	$sp, $sp, 1888
	lw	$ra, 1884($sp)
	move	$a0, $v0
	lw	$a1, 1872($sp)
	sub	$a0, $a1, $a0
	li	$a1, 0
	lw	$a2, 1876($sp)
	blt	$a1, $a2, bge_else.18342
	li	$a1, 1
	lw	$a2, 1868($sp)
	bne	$a2, $a1, bne_else.18344
	li	$a23, 48
	print_char	$a23
	li	$a1, 1
	j	bne_cont.18345
bne_else.18344:
	li	$a1, 0
bne_cont.18345:
	j	bge_cont.18343
bge_else.18342:
	addi	$a1, $a2, 48
	print_char	$a1
	li	$a1, 1
bge_cont.18343:
	addi	$a0, $a0, 48
	print_char	$a0
	jr	$ra
bge_else.18265:
	lw	$a1, 16($a0)
	blt	$a1, $a2, bge_else.18347
	mtc1	$f0, $zero
	lw	$a1, 16($a0)
	sub	$a1, $a1, $a2
	li	$a2, 0
	blt	$a2, $a1, bge_else.18348
	neg	$a3, $a1
	j	bge_cont.18349
bge_else.18348:
	move	$a3, $a1
bge_cont.18349:
	blt	$a2, $a1, bge_else.18350
	li	$a1, -1
	j	bge_cont.18351
bge_else.18350:
	li	$a1, 1
bge_cont.18351:
	li	$a2, 1
	fsw	$f0, 1880($sp)
	bne	$a1, $a2, bne_else.18352
	li	$a1, 128
	sll	$a1, $a1, 16
	ori	$a1, $a1, 0
	blt	$a1, $a3, bge_else.18354
	mtc1	$f1, $zero
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	move	$a0, $a3
	fmove	$f0, $f1
	fmove	$f1, $f2
	sw	$ra, 1892($sp)
	addi	$sp, $sp, 1896
	jal	itof_ret_sub.851.2649.3478
	subi	$sp, $sp, 1896
	lw	$ra, 1892($sp)
	fmove	$f0, $fv
	j	bge_cont.18355
bge_else.18354:
	mtc1	$f1, $zero
	move	$a0, $a3
	fmove	$f0, $f1
	sw	$ra, 1892($sp)
	addi	$sp, $sp, 1896
	jal	itof_big.835.3452
	subi	$sp, $sp, 1896
	lw	$ra, 1892($sp)
	fmove	$f0, $fv
bge_cont.18355:
	j	bne_cont.18353
bne_else.18352:
	li	$a1, 128
	sll	$a1, $a1, 16
	ori	$a1, $a1, 0
	blt	$a1, $a3, bge_else.18356
	mtc1	$f1, $zero
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	move	$a0, $a3
	fmove	$f0, $f1
	fmove	$f1, $f2
	sw	$ra, 1892($sp)
	addi	$sp, $sp, 1896
	jal	itof_ret_sub.851.2633.3459
	subi	$sp, $sp, 1896
	lw	$ra, 1892($sp)
	fmove	$f0, $fv
	fneg	$f0, $f0
	j	bge_cont.18357
bge_else.18356:
	mtc1	$f1, $zero
	move	$a0, $a3
	fmove	$f0, $f1
	sw	$ra, 1892($sp)
	addi	$sp, $sp, 1896
	jal	itof_big.835.3452
	subi	$sp, $sp, 1896
	lw	$ra, 1892($sp)
	fmove	$f0, $fv
	fneg	$f0, $f0
bge_cont.18357:
bne_cont.18353:
	li	$v0, 17279
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	fmul	$f0, $f1, $f0
	lw	$a0, 4($sp)
	lw	$a1, 16($a0)
	lw	$a0, 12($a0)
	sub	$a0, $a1, $a0
	li	$a1, 0
	blt	$a1, $a0, bge_else.18358
	neg	$a2, $a0
	j	bge_cont.18359
bge_else.18358:
	move	$a2, $a0
bge_cont.18359:
	blt	$a1, $a0, bge_else.18360
	li	$a0, -1
	j	bge_cont.18361
bge_else.18360:
	li	$a0, 1
bge_cont.18361:
	li	$a1, 1
	fsw	$f0, 1888($sp)
	bne	$a0, $a1, bne_else.18362
	li	$a0, 128
	sll	$a0, $a0, 16
	ori	$a0, $a0, 0
	blt	$a0, $a2, bge_else.18364
	mtc1	$f1, $zero
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	move	$a0, $a2
	fmove	$f0, $f1
	fmove	$f1, $f2
	sw	$ra, 1900($sp)
	addi	$sp, $sp, 1904
	jal	itof_ret_sub.851.2649.3411
	subi	$sp, $sp, 1904
	lw	$ra, 1900($sp)
	fmove	$f0, $fv
	j	bge_cont.18365
bge_else.18364:
	mtc1	$f1, $zero
	move	$a0, $a2
	fmove	$f0, $f1
	sw	$ra, 1900($sp)
	addi	$sp, $sp, 1904
	jal	itof_big.835.3385
	subi	$sp, $sp, 1904
	lw	$ra, 1900($sp)
	fmove	$f0, $fv
bge_cont.18365:
	j	bne_cont.18363
bne_else.18362:
	li	$a0, 128
	sll	$a0, $a0, 16
	ori	$a0, $a0, 0
	blt	$a0, $a2, bge_else.18366
	mtc1	$f1, $zero
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	move	$a0, $a2
	fmove	$f0, $f1
	fmove	$f1, $f2
	sw	$ra, 1900($sp)
	addi	$sp, $sp, 1904
	jal	itof_ret_sub.851.2633.3392
	subi	$sp, $sp, 1904
	lw	$ra, 1900($sp)
	fmove	$f0, $fv
	fneg	$f0, $f0
	j	bge_cont.18367
bge_else.18366:
	mtc1	$f1, $zero
	move	$a0, $a2
	fmove	$f0, $f1
	sw	$ra, 1900($sp)
	addi	$sp, $sp, 1904
	jal	itof_big.835.3385
	subi	$sp, $sp, 1904
	lw	$ra, 1900($sp)
	fmove	$f0, $fv
	fneg	$f0, $f0
bge_cont.18367:
bne_cont.18363:
	finv	$f0, $f0
	flw	$f1, 1888($sp)
	fmul	$f0, $f1, $f0
	li	$v0, 17279
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	flw	$f2, 1880($sp)
	fabs	$f2, $f2
	li	$v0, 19200
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f3, $v0
	fsw	$f1, 1896($sp)
	fsw	$f0, 1904($sp)
	fblt	$f3, $f2, fbge_else.18368
	li	$a0, 0
	li	$a1, 1
	fmove	$f0, $f2
	sw	$ra, 1916($sp)
	addi	$sp, $sp, 1920
	jal	ftoi_ret_sub.892.2709.7193
	subi	$sp, $sp, 1920
	lw	$ra, 1916($sp)
	move	$a0, $v0
	j	fbge_cont.18369
fbge_else.18368:
	li	$a0, 0
	fmove	$f0, $f2
	sw	$ra, 1916($sp)
	addi	$sp, $sp, 1920
	jal	ftoi_big.874.7159
	subi	$sp, $sp, 1920
	lw	$ra, 1916($sp)
	move	$a0, $v0
fbge_cont.18369:
	flw	$f0, 1904($sp)
	fabs	$f1, $f0
	mtc1	$f2, $zero
	fblt	$f0, $f2, fbge_else.18370
	li	$a1, 1
	j	fbge_cont.18371
fbge_else.18370:
	li	$a1, -1
fbge_cont.18371:
	li	$a2, 1
	sw	$a0, 1912($sp)
	bne	$a1, $a2, bne_else.18372
	li	$v0, 19200
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f0, $v0
	fblt	$f0, $f1, fbge_else.18374
	li	$a1, 0
	li	$a2, 1
	move	$a0, $a1
	move	$a1, $a2
	fmove	$f0, $f1
	sw	$ra, 1916($sp)
	addi	$sp, $sp, 1920
	jal	ftoi_ret_sub.892.2709.7103
	subi	$sp, $sp, 1920
	lw	$ra, 1916($sp)
	move	$a0, $v0
	j	fbge_cont.18375
fbge_else.18374:
	li	$a1, 0
	move	$a0, $a1
	fmove	$f0, $f1
	sw	$ra, 1916($sp)
	addi	$sp, $sp, 1920
	jal	ftoi_big.874.7069
	subi	$sp, $sp, 1920
	lw	$ra, 1916($sp)
	move	$a0, $v0
fbge_cont.18375:
	j	bne_cont.18373
bne_else.18372:
	li	$v0, 19200
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f0, $v0
	fblt	$f0, $f1, fbge_else.18376
	li	$a1, 0
	li	$a2, 1
	move	$a0, $a1
	move	$a1, $a2
	fmove	$f0, $f1
	sw	$ra, 1916($sp)
	addi	$sp, $sp, 1920
	jal	ftoi_ret_sub.892.2683.7076
	subi	$sp, $sp, 1920
	lw	$ra, 1916($sp)
	move	$a0, $v0
	neg	$a0, $a0
	j	fbge_cont.18377
fbge_else.18376:
	li	$a1, 0
	move	$a0, $a1
	fmove	$f0, $f1
	sw	$ra, 1916($sp)
	addi	$sp, $sp, 1920
	jal	ftoi_big.874.7069
	subi	$sp, $sp, 1920
	lw	$ra, 1916($sp)
	move	$a0, $v0
	neg	$a0, $a0
fbge_cont.18377:
bne_cont.18373:
	flw	$f0, 1896($sp)
	fabs	$f0, $f0
	li	$v0, 19200
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	sw	$a0, 1916($sp)
	fblt	$f1, $f0, fbge_else.18378
	li	$a1, 0
	li	$a2, 1
	move	$a0, $a1
	move	$a1, $a2
	sw	$ra, 1924($sp)
	addi	$sp, $sp, 1928
	jal	ftoi_ret_sub.892.2709.7013
	subi	$sp, $sp, 1928
	lw	$ra, 1924($sp)
	move	$a0, $v0
	j	fbge_cont.18379
fbge_else.18378:
	li	$a1, 0
	move	$a0, $a1
	sw	$ra, 1924($sp)
	addi	$sp, $sp, 1928
	jal	ftoi_big.874.6979
	subi	$sp, $sp, 1928
	lw	$ra, 1924($sp)
	move	$a0, $v0
fbge_cont.18379:
	li	$a23, 32
	print_char	$a23
	li	$a2, 0
	lw	$a1, 1912($sp)
	blt	$a1, $a2, bge_else.18380
	j	bge_cont.18381
bge_else.18380:
	li	$a23, 45
	print_char	$a23
	neg	$a1, $a1
bge_cont.18381:
	li	$a3, 10000
	sw	$a0, 1920($sp)
	sw	$a1, 1924($sp)
	move	$a0, $a1
	move	$a1, $a3
	sw	$ra, 1932($sp)
	addi	$sp, $sp, 1936
	jal	countn.418
	subi	$sp, $sp, 1936
	lw	$ra, 1932($sp)
	move	$a0, $v0
	li	$a1, 10000
	li	$a2, 0
	sw	$a0, 1928($sp)
	sw	$ra, 1932($sp)
	addi	$sp, $sp, 1936
	jal	mymul.422
	subi	$sp, $sp, 1936
	lw	$ra, 1932($sp)
	move	$a0, $v0
	lw	$a1, 1924($sp)
	sub	$a0, $a1, $a0
	li	$a2, 0
	lw	$a1, 1928($sp)
	blt	$a2, $a1, bge_else.18382
	li	$a1, 0
	j	bge_cont.18383
bge_else.18382:
	addi	$a1, $a1, 48
	print_char	$a1
	li	$a1, 1
bge_cont.18383:
	li	$a3, 1000
	sw	$a1, 1932($sp)
	sw	$a0, 1936($sp)
	move	$a1, $a3
	sw	$ra, 1940($sp)
	addi	$sp, $sp, 1944
	jal	countn.418
	subi	$sp, $sp, 1944
	lw	$ra, 1940($sp)
	move	$a0, $v0
	li	$a1, 1000
	li	$a2, 0
	sw	$a0, 1940($sp)
	sw	$ra, 1948($sp)
	addi	$sp, $sp, 1952
	jal	mymul.422
	subi	$sp, $sp, 1952
	lw	$ra, 1948($sp)
	move	$a0, $v0
	lw	$a1, 1936($sp)
	sub	$a0, $a1, $a0
	li	$a2, 0
	lw	$a1, 1940($sp)
	blt	$a2, $a1, bge_else.18384
	li	$a1, 1
	lw	$a3, 1932($sp)
	bne	$a3, $a1, bne_else.18386
	li	$a23, 48
	print_char	$a23
	li	$a1, 1
	j	bne_cont.18387
bne_else.18386:
	li	$a1, 0
bne_cont.18387:
	j	bge_cont.18385
bge_else.18384:
	addi	$a1, $a1, 48
	print_char	$a1
	li	$a1, 1
bge_cont.18385:
	li	$a3, 100
	sw	$a1, 1944($sp)
	sw	$a0, 1948($sp)
	move	$a1, $a3
	sw	$ra, 1956($sp)
	addi	$sp, $sp, 1960
	jal	countn.418
	subi	$sp, $sp, 1960
	lw	$ra, 1956($sp)
	move	$a0, $v0
	li	$a1, 100
	li	$a2, 0
	sw	$a0, 1952($sp)
	sw	$ra, 1956($sp)
	addi	$sp, $sp, 1960
	jal	mymul.422
	subi	$sp, $sp, 1960
	lw	$ra, 1956($sp)
	move	$a0, $v0
	lw	$a1, 1948($sp)
	sub	$a0, $a1, $a0
	li	$a2, 0
	lw	$a1, 1952($sp)
	blt	$a2, $a1, bge_else.18388
	li	$a1, 1
	lw	$a3, 1944($sp)
	bne	$a3, $a1, bne_else.18390
	li	$a23, 48
	print_char	$a23
	li	$a1, 1
	j	bne_cont.18391
bne_else.18390:
	li	$a1, 0
bne_cont.18391:
	j	bge_cont.18389
bge_else.18388:
	addi	$a1, $a1, 48
	print_char	$a1
	li	$a1, 1
bge_cont.18389:
	li	$a3, 10
	sw	$a1, 1956($sp)
	sw	$a0, 1960($sp)
	move	$a1, $a3
	sw	$ra, 1964($sp)
	addi	$sp, $sp, 1968
	jal	countn.418
	subi	$sp, $sp, 1968
	lw	$ra, 1964($sp)
	move	$a0, $v0
	li	$a1, 10
	li	$a2, 0
	sw	$a0, 1964($sp)
	sw	$ra, 1972($sp)
	addi	$sp, $sp, 1976
	jal	mymul.422
	subi	$sp, $sp, 1976
	lw	$ra, 1972($sp)
	move	$a0, $v0
	lw	$a1, 1960($sp)
	sub	$a0, $a1, $a0
	li	$a1, 0
	lw	$a2, 1964($sp)
	blt	$a1, $a2, bge_else.18392
	li	$a1, 1
	lw	$a2, 1956($sp)
	bne	$a2, $a1, bne_else.18394
	li	$a23, 48
	print_char	$a23
	li	$a1, 1
	j	bne_cont.18395
bne_else.18394:
	li	$a1, 0
bne_cont.18395:
	j	bge_cont.18393
bge_else.18392:
	addi	$a1, $a2, 48
	print_char	$a1
	li	$a1, 1
bge_cont.18393:
	addi	$a0, $a0, 48
	print_char	$a0
	li	$a23, 32
	print_char	$a23
	li	$a2, 0
	lw	$a0, 1916($sp)
	blt	$a0, $a2, bge_else.18396
	j	bge_cont.18397
bge_else.18396:
	li	$a23, 45
	print_char	$a23
	neg	$a0, $a0
bge_cont.18397:
	li	$a1, 10000
	sw	$a0, 1968($sp)
	sw	$ra, 1972($sp)
	addi	$sp, $sp, 1976
	jal	countn.418
	subi	$sp, $sp, 1976
	lw	$ra, 1972($sp)
	move	$a0, $v0
	li	$a1, 10000
	li	$a2, 0
	sw	$a0, 1972($sp)
	sw	$ra, 1980($sp)
	addi	$sp, $sp, 1984
	jal	mymul.422
	subi	$sp, $sp, 1984
	lw	$ra, 1980($sp)
	move	$a0, $v0
	lw	$a1, 1968($sp)
	sub	$a0, $a1, $a0
	li	$a2, 0
	lw	$a1, 1972($sp)
	blt	$a2, $a1, bge_else.18398
	li	$a1, 0
	j	bge_cont.18399
bge_else.18398:
	addi	$a1, $a1, 48
	print_char	$a1
	li	$a1, 1
bge_cont.18399:
	li	$a3, 1000
	sw	$a1, 1976($sp)
	sw	$a0, 1980($sp)
	move	$a1, $a3
	sw	$ra, 1988($sp)
	addi	$sp, $sp, 1992
	jal	countn.418
	subi	$sp, $sp, 1992
	lw	$ra, 1988($sp)
	move	$a0, $v0
	li	$a1, 1000
	li	$a2, 0
	sw	$a0, 1984($sp)
	sw	$ra, 1988($sp)
	addi	$sp, $sp, 1992
	jal	mymul.422
	subi	$sp, $sp, 1992
	lw	$ra, 1988($sp)
	move	$a0, $v0
	lw	$a1, 1980($sp)
	sub	$a0, $a1, $a0
	li	$a2, 0
	lw	$a1, 1984($sp)
	blt	$a2, $a1, bge_else.18400
	li	$a1, 1
	lw	$a3, 1976($sp)
	bne	$a3, $a1, bne_else.18402
	li	$a23, 48
	print_char	$a23
	li	$a1, 1
	j	bne_cont.18403
bne_else.18402:
	li	$a1, 0
bne_cont.18403:
	j	bge_cont.18401
bge_else.18400:
	addi	$a1, $a1, 48
	print_char	$a1
	li	$a1, 1
bge_cont.18401:
	li	$a3, 100
	sw	$a1, 1988($sp)
	sw	$a0, 1992($sp)
	move	$a1, $a3
	sw	$ra, 1996($sp)
	addi	$sp, $sp, 2000
	jal	countn.418
	subi	$sp, $sp, 2000
	lw	$ra, 1996($sp)
	move	$a0, $v0
	li	$a1, 100
	li	$a2, 0
	sw	$a0, 1996($sp)
	sw	$ra, 2004($sp)
	addi	$sp, $sp, 2008
	jal	mymul.422
	subi	$sp, $sp, 2008
	lw	$ra, 2004($sp)
	move	$a0, $v0
	lw	$a1, 1992($sp)
	sub	$a0, $a1, $a0
	li	$a2, 0
	lw	$a1, 1996($sp)
	blt	$a2, $a1, bge_else.18404
	li	$a1, 1
	lw	$a3, 1988($sp)
	bne	$a3, $a1, bne_else.18406
	li	$a23, 48
	print_char	$a23
	li	$a1, 1
	j	bne_cont.18407
bne_else.18406:
	li	$a1, 0
bne_cont.18407:
	j	bge_cont.18405
bge_else.18404:
	addi	$a1, $a1, 48
	print_char	$a1
	li	$a1, 1
bge_cont.18405:
	li	$a3, 10
	sw	$a1, 2000($sp)
	sw	$a0, 2004($sp)
	move	$a1, $a3
	sw	$ra, 2012($sp)
	addi	$sp, $sp, 2016
	jal	countn.418
	subi	$sp, $sp, 2016
	lw	$ra, 2012($sp)
	move	$a0, $v0
	li	$a1, 10
	li	$a2, 0
	sw	$a0, 2008($sp)
	sw	$ra, 2012($sp)
	addi	$sp, $sp, 2016
	jal	mymul.422
	subi	$sp, $sp, 2016
	lw	$ra, 2012($sp)
	move	$a0, $v0
	lw	$a1, 2004($sp)
	sub	$a0, $a1, $a0
	li	$a1, 0
	lw	$a2, 2008($sp)
	blt	$a1, $a2, bge_else.18408
	li	$a1, 1
	lw	$a2, 2000($sp)
	bne	$a2, $a1, bne_else.18410
	li	$a23, 48
	print_char	$a23
	li	$a1, 1
	j	bne_cont.18411
bne_else.18410:
	li	$a1, 0
bne_cont.18411:
	j	bge_cont.18409
bge_else.18408:
	addi	$a1, $a2, 48
	print_char	$a1
	li	$a1, 1
bge_cont.18409:
	addi	$a0, $a0, 48
	print_char	$a0
	li	$a23, 32
	print_char	$a23
	li	$a2, 0
	lw	$a0, 1920($sp)
	blt	$a0, $a2, bge_else.18412
	j	bge_cont.18413
bge_else.18412:
	li	$a23, 45
	print_char	$a23
	neg	$a0, $a0
bge_cont.18413:
	li	$a1, 10000
	sw	$a0, 2012($sp)
	sw	$ra, 2020($sp)
	addi	$sp, $sp, 2024
	jal	countn.418
	subi	$sp, $sp, 2024
	lw	$ra, 2020($sp)
	move	$a0, $v0
	li	$a1, 10000
	li	$a2, 0
	sw	$a0, 2016($sp)
	sw	$ra, 2020($sp)
	addi	$sp, $sp, 2024
	jal	mymul.422
	subi	$sp, $sp, 2024
	lw	$ra, 2020($sp)
	move	$a0, $v0
	lw	$a1, 2012($sp)
	sub	$a0, $a1, $a0
	li	$a2, 0
	lw	$a1, 2016($sp)
	blt	$a2, $a1, bge_else.18414
	li	$a1, 0
	j	bge_cont.18415
bge_else.18414:
	addi	$a1, $a1, 48
	print_char	$a1
	li	$a1, 1
bge_cont.18415:
	li	$a3, 1000
	sw	$a1, 2020($sp)
	sw	$a0, 2024($sp)
	move	$a1, $a3
	sw	$ra, 2028($sp)
	addi	$sp, $sp, 2032
	jal	countn.418
	subi	$sp, $sp, 2032
	lw	$ra, 2028($sp)
	move	$a0, $v0
	li	$a1, 1000
	li	$a2, 0
	sw	$a0, 2028($sp)
	sw	$ra, 2036($sp)
	addi	$sp, $sp, 2040
	jal	mymul.422
	subi	$sp, $sp, 2040
	lw	$ra, 2036($sp)
	move	$a0, $v0
	lw	$a1, 2024($sp)
	sub	$a0, $a1, $a0
	li	$a2, 0
	lw	$a1, 2028($sp)
	blt	$a2, $a1, bge_else.18416
	li	$a1, 1
	lw	$a3, 2020($sp)
	bne	$a3, $a1, bne_else.18418
	li	$a23, 48
	print_char	$a23
	li	$a1, 1
	j	bne_cont.18419
bne_else.18418:
	li	$a1, 0
bne_cont.18419:
	j	bge_cont.18417
bge_else.18416:
	addi	$a1, $a1, 48
	print_char	$a1
	li	$a1, 1
bge_cont.18417:
	li	$a3, 100
	sw	$a1, 2032($sp)
	sw	$a0, 2036($sp)
	move	$a1, $a3
	sw	$ra, 2044($sp)
	addi	$sp, $sp, 2048
	jal	countn.418
	subi	$sp, $sp, 2048
	lw	$ra, 2044($sp)
	move	$a0, $v0
	li	$a1, 100
	li	$a2, 0
	sw	$a0, 2040($sp)
	sw	$ra, 2044($sp)
	addi	$sp, $sp, 2048
	jal	mymul.422
	subi	$sp, $sp, 2048
	lw	$ra, 2044($sp)
	move	$a0, $v0
	lw	$a1, 2036($sp)
	sub	$a0, $a1, $a0
	li	$a2, 0
	lw	$a1, 2040($sp)
	blt	$a2, $a1, bge_else.18420
	li	$a1, 1
	lw	$a3, 2032($sp)
	bne	$a3, $a1, bne_else.18422
	li	$a23, 48
	print_char	$a23
	li	$a1, 1
	j	bne_cont.18423
bne_else.18422:
	li	$a1, 0
bne_cont.18423:
	j	bge_cont.18421
bge_else.18420:
	addi	$a1, $a1, 48
	print_char	$a1
	li	$a1, 1
bge_cont.18421:
	li	$a3, 10
	sw	$a1, 2044($sp)
	sw	$a0, 2048($sp)
	move	$a1, $a3
	sw	$ra, 2052($sp)
	addi	$sp, $sp, 2056
	jal	countn.418
	subi	$sp, $sp, 2056
	lw	$ra, 2052($sp)
	move	$a0, $v0
	li	$a1, 10
	li	$a2, 0
	sw	$a0, 2052($sp)
	sw	$ra, 2060($sp)
	addi	$sp, $sp, 2064
	jal	mymul.422
	subi	$sp, $sp, 2064
	lw	$ra, 2060($sp)
	move	$a0, $v0
	lw	$a1, 2048($sp)
	sub	$a0, $a1, $a0
	li	$a1, 0
	lw	$a2, 2052($sp)
	blt	$a1, $a2, bge_else.18424
	li	$a1, 1
	lw	$a2, 2044($sp)
	bne	$a2, $a1, bne_else.18426
	li	$a23, 48
	print_char	$a23
	li	$a1, 1
	j	bne_cont.18427
bne_else.18426:
	li	$a1, 0
bne_cont.18427:
	j	bge_cont.18425
bge_else.18424:
	addi	$a1, $a2, 48
	print_char	$a1
	li	$a1, 1
bge_cont.18425:
	addi	$a0, $a0, 48
	print_char	$a0
	jr	$ra
bge_else.18347:
	lw	$a1, 20($a0)
	blt	$a1, $a2, bge_else.18429
	lw	$a1, 16($a0)
	sub	$a1, $a2, $a1
	li	$a2, 0
	blt	$a2, $a1, bge_else.18430
	neg	$a3, $a1
	j	bge_cont.18431
bge_else.18430:
	move	$a3, $a1
bge_cont.18431:
	blt	$a2, $a1, bge_else.18432
	li	$a1, -1
	j	bge_cont.18433
bge_else.18432:
	li	$a1, 1
bge_cont.18433:
	li	$a2, 1
	bne	$a1, $a2, bne_else.18434
	li	$a1, 128
	sll	$a1, $a1, 16
	ori	$a1, $a1, 0
	blt	$a1, $a3, bge_else.18436
	mtc1	$f0, $zero
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	move	$a0, $a3
	sw	$ra, 2060($sp)
	addi	$sp, $sp, 2064
	jal	itof_ret_sub.851.2649.3333
	subi	$sp, $sp, 2064
	lw	$ra, 2060($sp)
	fmove	$f0, $fv
	j	bge_cont.18437
bge_else.18436:
	mtc1	$f0, $zero
	move	$a0, $a3
	sw	$ra, 2060($sp)
	addi	$sp, $sp, 2064
	jal	itof_big.835.3307
	subi	$sp, $sp, 2064
	lw	$ra, 2060($sp)
	fmove	$f0, $fv
bge_cont.18437:
	j	bne_cont.18435
bne_else.18434:
	li	$a1, 128
	sll	$a1, $a1, 16
	ori	$a1, $a1, 0
	blt	$a1, $a3, bge_else.18438
	mtc1	$f0, $zero
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	move	$a0, $a3
	sw	$ra, 2060($sp)
	addi	$sp, $sp, 2064
	jal	itof_ret_sub.851.2633.3314
	subi	$sp, $sp, 2064
	lw	$ra, 2060($sp)
	fmove	$f0, $fv
	fneg	$f0, $f0
	j	bge_cont.18439
bge_else.18438:
	mtc1	$f0, $zero
	move	$a0, $a3
	sw	$ra, 2060($sp)
	addi	$sp, $sp, 2064
	jal	itof_big.835.3307
	subi	$sp, $sp, 2064
	lw	$ra, 2060($sp)
	fmove	$f0, $fv
	fneg	$f0, $f0
bge_cont.18439:
bne_cont.18435:
	li	$v0, 17279
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	fmul	$f0, $f1, $f0
	lw	$a0, 4($sp)
	lw	$a1, 20($a0)
	lw	$a0, 16($a0)
	sub	$a0, $a1, $a0
	li	$a1, 0
	blt	$a1, $a0, bge_else.18440
	neg	$a2, $a0
	j	bge_cont.18441
bge_else.18440:
	move	$a2, $a0
bge_cont.18441:
	blt	$a1, $a0, bge_else.18442
	li	$a0, -1
	j	bge_cont.18443
bge_else.18442:
	li	$a0, 1
bge_cont.18443:
	li	$a1, 1
	fsw	$f0, 2056($sp)
	bne	$a0, $a1, bne_else.18444
	li	$a0, 128
	sll	$a0, $a0, 16
	ori	$a0, $a0, 0
	blt	$a0, $a2, bge_else.18446
	mtc1	$f1, $zero
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	move	$a0, $a2
	fmove	$f0, $f1
	fmove	$f1, $f2
	sw	$ra, 2068($sp)
	addi	$sp, $sp, 2072
	jal	itof_ret_sub.851.2649.3266
	subi	$sp, $sp, 2072
	lw	$ra, 2068($sp)
	fmove	$f0, $fv
	j	bge_cont.18447
bge_else.18446:
	mtc1	$f1, $zero
	move	$a0, $a2
	fmove	$f0, $f1
	sw	$ra, 2068($sp)
	addi	$sp, $sp, 2072
	jal	itof_big.835.3240
	subi	$sp, $sp, 2072
	lw	$ra, 2068($sp)
	fmove	$f0, $fv
bge_cont.18447:
	j	bne_cont.18445
bne_else.18444:
	li	$a0, 128
	sll	$a0, $a0, 16
	ori	$a0, $a0, 0
	blt	$a0, $a2, bge_else.18448
	mtc1	$f1, $zero
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	move	$a0, $a2
	fmove	$f0, $f1
	fmove	$f1, $f2
	sw	$ra, 2068($sp)
	addi	$sp, $sp, 2072
	jal	itof_ret_sub.851.2633.3247
	subi	$sp, $sp, 2072
	lw	$ra, 2068($sp)
	fmove	$f0, $fv
	fneg	$f0, $f0
	j	bge_cont.18449
bge_else.18448:
	mtc1	$f1, $zero
	move	$a0, $a2
	fmove	$f0, $f1
	sw	$ra, 2068($sp)
	addi	$sp, $sp, 2072
	jal	itof_big.835.3240
	subi	$sp, $sp, 2072
	lw	$ra, 2068($sp)
	fmove	$f0, $fv
	fneg	$f0, $f0
bge_cont.18449:
bne_cont.18445:
	finv	$f0, $f0
	flw	$f1, 2056($sp)
	fmul	$f0, $f1, $f0
	mtc1	$f1, $zero
	li	$v0, 17279
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fabs	$f3, $f0
	mtc1	$f4, $zero
	fblt	$f0, $f4, fbge_else.18450
	li	$a0, 1
	j	fbge_cont.18451
fbge_else.18450:
	li	$a0, -1
fbge_cont.18451:
	li	$a1, 1
	fsw	$f2, 2064($sp)
	fsw	$f1, 2072($sp)
	bne	$a0, $a1, bne_else.18452
	li	$v0, 19200
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f0, $v0
	fblt	$f0, $f3, fbge_else.18454
	li	$a0, 0
	li	$a1, 1
	fmove	$f0, $f3
	sw	$ra, 2084($sp)
	addi	$sp, $sp, 2088
	jal	ftoi_ret_sub.892.2709.6746
	subi	$sp, $sp, 2088
	lw	$ra, 2084($sp)
	move	$a0, $v0
	j	fbge_cont.18455
fbge_else.18454:
	li	$a0, 0
	fmove	$f0, $f3
	sw	$ra, 2084($sp)
	addi	$sp, $sp, 2088
	jal	ftoi_big.874.6712
	subi	$sp, $sp, 2088
	lw	$ra, 2084($sp)
	move	$a0, $v0
fbge_cont.18455:
	j	bne_cont.18453
bne_else.18452:
	li	$v0, 19200
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f0, $v0
	fblt	$f0, $f3, fbge_else.18456
	li	$a0, 0
	li	$a1, 1
	fmove	$f0, $f3
	sw	$ra, 2084($sp)
	addi	$sp, $sp, 2088
	jal	ftoi_ret_sub.892.2683.6719
	subi	$sp, $sp, 2088
	lw	$ra, 2084($sp)
	move	$a0, $v0
	neg	$a0, $a0
	j	fbge_cont.18457
fbge_else.18456:
	li	$a0, 0
	fmove	$f0, $f3
	sw	$ra, 2084($sp)
	addi	$sp, $sp, 2088
	jal	ftoi_big.874.6712
	subi	$sp, $sp, 2088
	lw	$ra, 2084($sp)
	move	$a0, $v0
	neg	$a0, $a0
fbge_cont.18457:
bne_cont.18453:
	flw	$f0, 2072($sp)
	fabs	$f0, $f0
	li	$v0, 19200
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	sw	$a0, 2080($sp)
	fblt	$f1, $f0, fbge_else.18458
	li	$a1, 0
	li	$a2, 1
	move	$a0, $a1
	move	$a1, $a2
	sw	$ra, 2084($sp)
	addi	$sp, $sp, 2088
	jal	ftoi_ret_sub.892.2709.6656
	subi	$sp, $sp, 2088
	lw	$ra, 2084($sp)
	move	$a0, $v0
	j	fbge_cont.18459
fbge_else.18458:
	li	$a1, 0
	move	$a0, $a1
	sw	$ra, 2084($sp)
	addi	$sp, $sp, 2088
	jal	ftoi_big.874.6622
	subi	$sp, $sp, 2088
	lw	$ra, 2084($sp)
	move	$a0, $v0
fbge_cont.18459:
	flw	$f0, 2064($sp)
	fabs	$f0, $f0
	li	$v0, 19200
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	sw	$a0, 2084($sp)
	fblt	$f1, $f0, fbge_else.18460
	li	$a1, 0
	li	$a2, 1
	move	$a0, $a1
	move	$a1, $a2
	sw	$ra, 2092($sp)
	addi	$sp, $sp, 2096
	jal	ftoi_ret_sub.892.2709.6566
	subi	$sp, $sp, 2096
	lw	$ra, 2092($sp)
	move	$a0, $v0
	j	fbge_cont.18461
fbge_else.18460:
	li	$a1, 0
	move	$a0, $a1
	sw	$ra, 2092($sp)
	addi	$sp, $sp, 2096
	jal	ftoi_big.874.6532
	subi	$sp, $sp, 2096
	lw	$ra, 2092($sp)
	move	$a0, $v0
fbge_cont.18461:
	li	$a23, 32
	print_char	$a23
	li	$a2, 0
	lw	$a1, 2080($sp)
	blt	$a1, $a2, bge_else.18462
	j	bge_cont.18463
bge_else.18462:
	li	$a23, 45
	print_char	$a23
	neg	$a1, $a1
bge_cont.18463:
	li	$a3, 10000
	sw	$a0, 2088($sp)
	sw	$a1, 2092($sp)
	move	$a0, $a1
	move	$a1, $a3
	sw	$ra, 2100($sp)
	addi	$sp, $sp, 2104
	jal	countn.418
	subi	$sp, $sp, 2104
	lw	$ra, 2100($sp)
	move	$a0, $v0
	li	$a1, 10000
	li	$a2, 0
	sw	$a0, 2096($sp)
	sw	$ra, 2100($sp)
	addi	$sp, $sp, 2104
	jal	mymul.422
	subi	$sp, $sp, 2104
	lw	$ra, 2100($sp)
	move	$a0, $v0
	lw	$a1, 2092($sp)
	sub	$a0, $a1, $a0
	li	$a2, 0
	lw	$a1, 2096($sp)
	blt	$a2, $a1, bge_else.18464
	li	$a1, 0
	j	bge_cont.18465
bge_else.18464:
	addi	$a1, $a1, 48
	print_char	$a1
	li	$a1, 1
bge_cont.18465:
	li	$a3, 1000
	sw	$a1, 2100($sp)
	sw	$a0, 2104($sp)
	move	$a1, $a3
	sw	$ra, 2108($sp)
	addi	$sp, $sp, 2112
	jal	countn.418
	subi	$sp, $sp, 2112
	lw	$ra, 2108($sp)
	move	$a0, $v0
	li	$a1, 1000
	li	$a2, 0
	sw	$a0, 2108($sp)
	sw	$ra, 2116($sp)
	addi	$sp, $sp, 2120
	jal	mymul.422
	subi	$sp, $sp, 2120
	lw	$ra, 2116($sp)
	move	$a0, $v0
	lw	$a1, 2104($sp)
	sub	$a0, $a1, $a0
	li	$a2, 0
	lw	$a1, 2108($sp)
	blt	$a2, $a1, bge_else.18466
	li	$a1, 1
	lw	$a3, 2100($sp)
	bne	$a3, $a1, bne_else.18468
	li	$a23, 48
	print_char	$a23
	li	$a1, 1
	j	bne_cont.18469
bne_else.18468:
	li	$a1, 0
bne_cont.18469:
	j	bge_cont.18467
bge_else.18466:
	addi	$a1, $a1, 48
	print_char	$a1
	li	$a1, 1
bge_cont.18467:
	li	$a3, 100
	sw	$a1, 2112($sp)
	sw	$a0, 2116($sp)
	move	$a1, $a3
	sw	$ra, 2124($sp)
	addi	$sp, $sp, 2128
	jal	countn.418
	subi	$sp, $sp, 2128
	lw	$ra, 2124($sp)
	move	$a0, $v0
	li	$a1, 100
	li	$a2, 0
	sw	$a0, 2120($sp)
	sw	$ra, 2124($sp)
	addi	$sp, $sp, 2128
	jal	mymul.422
	subi	$sp, $sp, 2128
	lw	$ra, 2124($sp)
	move	$a0, $v0
	lw	$a1, 2116($sp)
	sub	$a0, $a1, $a0
	li	$a2, 0
	lw	$a1, 2120($sp)
	blt	$a2, $a1, bge_else.18470
	li	$a1, 1
	lw	$a3, 2112($sp)
	bne	$a3, $a1, bne_else.18472
	li	$a23, 48
	print_char	$a23
	li	$a1, 1
	j	bne_cont.18473
bne_else.18472:
	li	$a1, 0
bne_cont.18473:
	j	bge_cont.18471
bge_else.18470:
	addi	$a1, $a1, 48
	print_char	$a1
	li	$a1, 1
bge_cont.18471:
	li	$a3, 10
	sw	$a1, 2124($sp)
	sw	$a0, 2128($sp)
	move	$a1, $a3
	sw	$ra, 2132($sp)
	addi	$sp, $sp, 2136
	jal	countn.418
	subi	$sp, $sp, 2136
	lw	$ra, 2132($sp)
	move	$a0, $v0
	li	$a1, 10
	li	$a2, 0
	sw	$a0, 2132($sp)
	sw	$ra, 2140($sp)
	addi	$sp, $sp, 2144
	jal	mymul.422
	subi	$sp, $sp, 2144
	lw	$ra, 2140($sp)
	move	$a0, $v0
	lw	$a1, 2128($sp)
	sub	$a0, $a1, $a0
	li	$a1, 0
	lw	$a2, 2132($sp)
	blt	$a1, $a2, bge_else.18474
	li	$a1, 1
	lw	$a2, 2124($sp)
	bne	$a2, $a1, bne_else.18476
	li	$a23, 48
	print_char	$a23
	li	$a1, 1
	j	bne_cont.18477
bne_else.18476:
	li	$a1, 0
bne_cont.18477:
	j	bge_cont.18475
bge_else.18474:
	addi	$a1, $a2, 48
	print_char	$a1
	li	$a1, 1
bge_cont.18475:
	addi	$a0, $a0, 48
	print_char	$a0
	li	$a23, 32
	print_char	$a23
	li	$a2, 0
	lw	$a0, 2084($sp)
	blt	$a0, $a2, bge_else.18478
	j	bge_cont.18479
bge_else.18478:
	li	$a23, 45
	print_char	$a23
	neg	$a0, $a0
bge_cont.18479:
	li	$a1, 10000
	sw	$a0, 2136($sp)
	sw	$ra, 2140($sp)
	addi	$sp, $sp, 2144
	jal	countn.418
	subi	$sp, $sp, 2144
	lw	$ra, 2140($sp)
	move	$a0, $v0
	li	$a1, 10000
	li	$a2, 0
	sw	$a0, 2140($sp)
	sw	$ra, 2148($sp)
	addi	$sp, $sp, 2152
	jal	mymul.422
	subi	$sp, $sp, 2152
	lw	$ra, 2148($sp)
	move	$a0, $v0
	lw	$a1, 2136($sp)
	sub	$a0, $a1, $a0
	li	$a2, 0
	lw	$a1, 2140($sp)
	blt	$a2, $a1, bge_else.18480
	li	$a1, 0
	j	bge_cont.18481
bge_else.18480:
	addi	$a1, $a1, 48
	print_char	$a1
	li	$a1, 1
bge_cont.18481:
	li	$a3, 1000
	sw	$a1, 2144($sp)
	sw	$a0, 2148($sp)
	move	$a1, $a3
	sw	$ra, 2156($sp)
	addi	$sp, $sp, 2160
	jal	countn.418
	subi	$sp, $sp, 2160
	lw	$ra, 2156($sp)
	move	$a0, $v0
	li	$a1, 1000
	li	$a2, 0
	sw	$a0, 2152($sp)
	sw	$ra, 2156($sp)
	addi	$sp, $sp, 2160
	jal	mymul.422
	subi	$sp, $sp, 2160
	lw	$ra, 2156($sp)
	move	$a0, $v0
	lw	$a1, 2148($sp)
	sub	$a0, $a1, $a0
	li	$a2, 0
	lw	$a1, 2152($sp)
	blt	$a2, $a1, bge_else.18482
	li	$a1, 1
	lw	$a3, 2144($sp)
	bne	$a3, $a1, bne_else.18484
	li	$a23, 48
	print_char	$a23
	li	$a1, 1
	j	bne_cont.18485
bne_else.18484:
	li	$a1, 0
bne_cont.18485:
	j	bge_cont.18483
bge_else.18482:
	addi	$a1, $a1, 48
	print_char	$a1
	li	$a1, 1
bge_cont.18483:
	li	$a3, 100
	sw	$a1, 2156($sp)
	sw	$a0, 2160($sp)
	move	$a1, $a3
	sw	$ra, 2164($sp)
	addi	$sp, $sp, 2168
	jal	countn.418
	subi	$sp, $sp, 2168
	lw	$ra, 2164($sp)
	move	$a0, $v0
	li	$a1, 100
	li	$a2, 0
	sw	$a0, 2164($sp)
	sw	$ra, 2172($sp)
	addi	$sp, $sp, 2176
	jal	mymul.422
	subi	$sp, $sp, 2176
	lw	$ra, 2172($sp)
	move	$a0, $v0
	lw	$a1, 2160($sp)
	sub	$a0, $a1, $a0
	li	$a2, 0
	lw	$a1, 2164($sp)
	blt	$a2, $a1, bge_else.18486
	li	$a1, 1
	lw	$a3, 2156($sp)
	bne	$a3, $a1, bne_else.18488
	li	$a23, 48
	print_char	$a23
	li	$a1, 1
	j	bne_cont.18489
bne_else.18488:
	li	$a1, 0
bne_cont.18489:
	j	bge_cont.18487
bge_else.18486:
	addi	$a1, $a1, 48
	print_char	$a1
	li	$a1, 1
bge_cont.18487:
	li	$a3, 10
	sw	$a1, 2168($sp)
	sw	$a0, 2172($sp)
	move	$a1, $a3
	sw	$ra, 2180($sp)
	addi	$sp, $sp, 2184
	jal	countn.418
	subi	$sp, $sp, 2184
	lw	$ra, 2180($sp)
	move	$a0, $v0
	li	$a1, 10
	li	$a2, 0
	sw	$a0, 2176($sp)
	sw	$ra, 2180($sp)
	addi	$sp, $sp, 2184
	jal	mymul.422
	subi	$sp, $sp, 2184
	lw	$ra, 2180($sp)
	move	$a0, $v0
	lw	$a1, 2172($sp)
	sub	$a0, $a1, $a0
	li	$a1, 0
	lw	$a2, 2176($sp)
	blt	$a1, $a2, bge_else.18490
	li	$a1, 1
	lw	$a2, 2168($sp)
	bne	$a2, $a1, bne_else.18492
	li	$a23, 48
	print_char	$a23
	li	$a1, 1
	j	bne_cont.18493
bne_else.18492:
	li	$a1, 0
bne_cont.18493:
	j	bge_cont.18491
bge_else.18490:
	addi	$a1, $a2, 48
	print_char	$a1
	li	$a1, 1
bge_cont.18491:
	addi	$a0, $a0, 48
	print_char	$a0
	li	$a23, 32
	print_char	$a23
	li	$a2, 0
	lw	$a0, 2088($sp)
	blt	$a0, $a2, bge_else.18494
	j	bge_cont.18495
bge_else.18494:
	li	$a23, 45
	print_char	$a23
	neg	$a0, $a0
bge_cont.18495:
	li	$a1, 10000
	sw	$a0, 2180($sp)
	sw	$ra, 2188($sp)
	addi	$sp, $sp, 2192
	jal	countn.418
	subi	$sp, $sp, 2192
	lw	$ra, 2188($sp)
	move	$a0, $v0
	li	$a1, 10000
	li	$a2, 0
	sw	$a0, 2184($sp)
	sw	$ra, 2188($sp)
	addi	$sp, $sp, 2192
	jal	mymul.422
	subi	$sp, $sp, 2192
	lw	$ra, 2188($sp)
	move	$a0, $v0
	lw	$a1, 2180($sp)
	sub	$a0, $a1, $a0
	li	$a2, 0
	lw	$a1, 2184($sp)
	blt	$a2, $a1, bge_else.18496
	li	$a1, 0
	j	bge_cont.18497
bge_else.18496:
	addi	$a1, $a1, 48
	print_char	$a1
	li	$a1, 1
bge_cont.18497:
	li	$a3, 1000
	sw	$a1, 2188($sp)
	sw	$a0, 2192($sp)
	move	$a1, $a3
	sw	$ra, 2196($sp)
	addi	$sp, $sp, 2200
	jal	countn.418
	subi	$sp, $sp, 2200
	lw	$ra, 2196($sp)
	move	$a0, $v0
	li	$a1, 1000
	li	$a2, 0
	sw	$a0, 2196($sp)
	sw	$ra, 2204($sp)
	addi	$sp, $sp, 2208
	jal	mymul.422
	subi	$sp, $sp, 2208
	lw	$ra, 2204($sp)
	move	$a0, $v0
	lw	$a1, 2192($sp)
	sub	$a0, $a1, $a0
	li	$a2, 0
	lw	$a1, 2196($sp)
	blt	$a2, $a1, bge_else.18498
	li	$a1, 1
	lw	$a3, 2188($sp)
	bne	$a3, $a1, bne_else.18500
	li	$a23, 48
	print_char	$a23
	li	$a1, 1
	j	bne_cont.18501
bne_else.18500:
	li	$a1, 0
bne_cont.18501:
	j	bge_cont.18499
bge_else.18498:
	addi	$a1, $a1, 48
	print_char	$a1
	li	$a1, 1
bge_cont.18499:
	li	$a3, 100
	sw	$a1, 2200($sp)
	sw	$a0, 2204($sp)
	move	$a1, $a3
	sw	$ra, 2212($sp)
	addi	$sp, $sp, 2216
	jal	countn.418
	subi	$sp, $sp, 2216
	lw	$ra, 2212($sp)
	move	$a0, $v0
	li	$a1, 100
	li	$a2, 0
	sw	$a0, 2208($sp)
	sw	$ra, 2212($sp)
	addi	$sp, $sp, 2216
	jal	mymul.422
	subi	$sp, $sp, 2216
	lw	$ra, 2212($sp)
	move	$a0, $v0
	lw	$a1, 2204($sp)
	sub	$a0, $a1, $a0
	li	$a2, 0
	lw	$a1, 2208($sp)
	blt	$a2, $a1, bge_else.18502
	li	$a1, 1
	lw	$a3, 2200($sp)
	bne	$a3, $a1, bne_else.18504
	li	$a23, 48
	print_char	$a23
	li	$a1, 1
	j	bne_cont.18505
bne_else.18504:
	li	$a1, 0
bne_cont.18505:
	j	bge_cont.18503
bge_else.18502:
	addi	$a1, $a1, 48
	print_char	$a1
	li	$a1, 1
bge_cont.18503:
	li	$a3, 10
	sw	$a1, 2212($sp)
	sw	$a0, 2216($sp)
	move	$a1, $a3
	sw	$ra, 2220($sp)
	addi	$sp, $sp, 2224
	jal	countn.418
	subi	$sp, $sp, 2224
	lw	$ra, 2220($sp)
	move	$a0, $v0
	li	$a1, 10
	li	$a2, 0
	sw	$a0, 2220($sp)
	sw	$ra, 2228($sp)
	addi	$sp, $sp, 2232
	jal	mymul.422
	subi	$sp, $sp, 2232
	lw	$ra, 2228($sp)
	move	$a0, $v0
	lw	$a1, 2216($sp)
	sub	$a0, $a1, $a0
	li	$a1, 0
	lw	$a2, 2220($sp)
	blt	$a1, $a2, bge_else.18506
	li	$a1, 1
	lw	$a2, 2212($sp)
	bne	$a2, $a1, bne_else.18508
	li	$a23, 48
	print_char	$a23
	li	$a1, 1
	j	bne_cont.18509
bne_else.18508:
	li	$a1, 0
bne_cont.18509:
	j	bge_cont.18507
bge_else.18506:
	addi	$a1, $a2, 48
	print_char	$a1
	li	$a1, 1
bge_cont.18507:
	addi	$a0, $a0, 48
	print_char	$a0
	jr	$ra
bge_else.18429:
	mtc1	$f0, $zero
	mtc1	$f1, $zero
	mtc1	$f2, $zero
	fabs	$f0, $f0
	li	$v0, 19200
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f3, $v0
	fsw	$f2, 2224($sp)
	fsw	$f1, 2232($sp)
	fblt	$f3, $f0, fbge_else.18511
	li	$a0, 0
	li	$a1, 1
	sw	$ra, 2244($sp)
	addi	$sp, $sp, 2248
	jal	ftoi_ret_sub.892.2709.6299
	subi	$sp, $sp, 2248
	lw	$ra, 2244($sp)
	move	$a0, $v0
	j	fbge_cont.18512
fbge_else.18511:
	li	$a0, 0
	sw	$ra, 2244($sp)
	addi	$sp, $sp, 2248
	jal	ftoi_big.874.6265
	subi	$sp, $sp, 2248
	lw	$ra, 2244($sp)
	move	$a0, $v0
fbge_cont.18512:
	flw	$f0, 2232($sp)
	fabs	$f0, $f0
	li	$v0, 19200
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	sw	$a0, 2240($sp)
	fblt	$f1, $f0, fbge_else.18513
	li	$a1, 0
	li	$a2, 1
	move	$a0, $a1
	move	$a1, $a2
	sw	$ra, 2244($sp)
	addi	$sp, $sp, 2248
	jal	ftoi_ret_sub.892.2709.6209
	subi	$sp, $sp, 2248
	lw	$ra, 2244($sp)
	move	$a0, $v0
	j	fbge_cont.18514
fbge_else.18513:
	li	$a1, 0
	move	$a0, $a1
	sw	$ra, 2244($sp)
	addi	$sp, $sp, 2248
	jal	ftoi_big.874.6175
	subi	$sp, $sp, 2248
	lw	$ra, 2244($sp)
	move	$a0, $v0
fbge_cont.18514:
	flw	$f0, 2224($sp)
	fabs	$f0, $f0
	li	$v0, 19200
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	sw	$a0, 2244($sp)
	fblt	$f1, $f0, fbge_else.18515
	li	$a1, 0
	li	$a2, 1
	move	$a0, $a1
	move	$a1, $a2
	sw	$ra, 2252($sp)
	addi	$sp, $sp, 2256
	jal	ftoi_ret_sub.892.2709.6119
	subi	$sp, $sp, 2256
	lw	$ra, 2252($sp)
	move	$a0, $v0
	j	fbge_cont.18516
fbge_else.18515:
	li	$a1, 0
	move	$a0, $a1
	sw	$ra, 2252($sp)
	addi	$sp, $sp, 2256
	jal	ftoi_big.874.6085
	subi	$sp, $sp, 2256
	lw	$ra, 2252($sp)
	move	$a0, $v0
fbge_cont.18516:
	li	$a23, 32
	print_char	$a23
	li	$a2, 0
	lw	$a1, 2240($sp)
	blt	$a1, $a2, bge_else.18517
	j	bge_cont.18518
bge_else.18517:
	li	$a23, 45
	print_char	$a23
	neg	$a1, $a1
bge_cont.18518:
	li	$a3, 10000
	sw	$a0, 2248($sp)
	sw	$a1, 2252($sp)
	move	$a0, $a1
	move	$a1, $a3
	sw	$ra, 2260($sp)
	addi	$sp, $sp, 2264
	jal	countn.418
	subi	$sp, $sp, 2264
	lw	$ra, 2260($sp)
	move	$a0, $v0
	li	$a1, 10000
	li	$a2, 0
	sw	$a0, 2256($sp)
	sw	$ra, 2260($sp)
	addi	$sp, $sp, 2264
	jal	mymul.422
	subi	$sp, $sp, 2264
	lw	$ra, 2260($sp)
	move	$a0, $v0
	lw	$a1, 2252($sp)
	sub	$a0, $a1, $a0
	li	$a2, 0
	lw	$a1, 2256($sp)
	blt	$a2, $a1, bge_else.18519
	li	$a1, 0
	j	bge_cont.18520
bge_else.18519:
	addi	$a1, $a1, 48
	print_char	$a1
	li	$a1, 1
bge_cont.18520:
	li	$a3, 1000
	sw	$a1, 2260($sp)
	sw	$a0, 2264($sp)
	move	$a1, $a3
	sw	$ra, 2268($sp)
	addi	$sp, $sp, 2272
	jal	countn.418
	subi	$sp, $sp, 2272
	lw	$ra, 2268($sp)
	move	$a0, $v0
	li	$a1, 1000
	li	$a2, 0
	sw	$a0, 2268($sp)
	sw	$ra, 2276($sp)
	addi	$sp, $sp, 2280
	jal	mymul.422
	subi	$sp, $sp, 2280
	lw	$ra, 2276($sp)
	move	$a0, $v0
	lw	$a1, 2264($sp)
	sub	$a0, $a1, $a0
	li	$a2, 0
	lw	$a1, 2268($sp)
	blt	$a2, $a1, bge_else.18521
	li	$a1, 1
	lw	$a3, 2260($sp)
	bne	$a3, $a1, bne_else.18523
	li	$a23, 48
	print_char	$a23
	li	$a1, 1
	j	bne_cont.18524
bne_else.18523:
	li	$a1, 0
bne_cont.18524:
	j	bge_cont.18522
bge_else.18521:
	addi	$a1, $a1, 48
	print_char	$a1
	li	$a1, 1
bge_cont.18522:
	li	$a3, 100
	sw	$a1, 2272($sp)
	sw	$a0, 2276($sp)
	move	$a1, $a3
	sw	$ra, 2284($sp)
	addi	$sp, $sp, 2288
	jal	countn.418
	subi	$sp, $sp, 2288
	lw	$ra, 2284($sp)
	move	$a0, $v0
	li	$a1, 100
	li	$a2, 0
	sw	$a0, 2280($sp)
	sw	$ra, 2284($sp)
	addi	$sp, $sp, 2288
	jal	mymul.422
	subi	$sp, $sp, 2288
	lw	$ra, 2284($sp)
	move	$a0, $v0
	lw	$a1, 2276($sp)
	sub	$a0, $a1, $a0
	li	$a2, 0
	lw	$a1, 2280($sp)
	blt	$a2, $a1, bge_else.18525
	li	$a1, 1
	lw	$a3, 2272($sp)
	bne	$a3, $a1, bne_else.18527
	li	$a23, 48
	print_char	$a23
	li	$a1, 1
	j	bne_cont.18528
bne_else.18527:
	li	$a1, 0
bne_cont.18528:
	j	bge_cont.18526
bge_else.18525:
	addi	$a1, $a1, 48
	print_char	$a1
	li	$a1, 1
bge_cont.18526:
	li	$a3, 10
	sw	$a1, 2284($sp)
	sw	$a0, 2288($sp)
	move	$a1, $a3
	sw	$ra, 2292($sp)
	addi	$sp, $sp, 2296
	jal	countn.418
	subi	$sp, $sp, 2296
	lw	$ra, 2292($sp)
	move	$a0, $v0
	li	$a1, 10
	li	$a2, 0
	sw	$a0, 2292($sp)
	sw	$ra, 2300($sp)
	addi	$sp, $sp, 2304
	jal	mymul.422
	subi	$sp, $sp, 2304
	lw	$ra, 2300($sp)
	move	$a0, $v0
	lw	$a1, 2288($sp)
	sub	$a0, $a1, $a0
	li	$a1, 0
	lw	$a2, 2292($sp)
	blt	$a1, $a2, bge_else.18529
	li	$a1, 1
	lw	$a2, 2284($sp)
	bne	$a2, $a1, bne_else.18531
	li	$a23, 48
	print_char	$a23
	li	$a1, 1
	j	bne_cont.18532
bne_else.18531:
	li	$a1, 0
bne_cont.18532:
	j	bge_cont.18530
bge_else.18529:
	addi	$a1, $a2, 48
	print_char	$a1
	li	$a1, 1
bge_cont.18530:
	addi	$a0, $a0, 48
	print_char	$a0
	li	$a23, 32
	print_char	$a23
	li	$a2, 0
	lw	$a0, 2244($sp)
	blt	$a0, $a2, bge_else.18533
	j	bge_cont.18534
bge_else.18533:
	li	$a23, 45
	print_char	$a23
	neg	$a0, $a0
bge_cont.18534:
	li	$a1, 10000
	sw	$a0, 2296($sp)
	sw	$ra, 2300($sp)
	addi	$sp, $sp, 2304
	jal	countn.418
	subi	$sp, $sp, 2304
	lw	$ra, 2300($sp)
	move	$a0, $v0
	li	$a1, 10000
	li	$a2, 0
	sw	$a0, 2300($sp)
	sw	$ra, 2308($sp)
	addi	$sp, $sp, 2312
	jal	mymul.422
	subi	$sp, $sp, 2312
	lw	$ra, 2308($sp)
	move	$a0, $v0
	lw	$a1, 2296($sp)
	sub	$a0, $a1, $a0
	li	$a2, 0
	lw	$a1, 2300($sp)
	blt	$a2, $a1, bge_else.18535
	li	$a1, 0
	j	bge_cont.18536
bge_else.18535:
	addi	$a1, $a1, 48
	print_char	$a1
	li	$a1, 1
bge_cont.18536:
	li	$a3, 1000
	sw	$a1, 2304($sp)
	sw	$a0, 2308($sp)
	move	$a1, $a3
	sw	$ra, 2316($sp)
	addi	$sp, $sp, 2320
	jal	countn.418
	subi	$sp, $sp, 2320
	lw	$ra, 2316($sp)
	move	$a0, $v0
	li	$a1, 1000
	li	$a2, 0
	sw	$a0, 2312($sp)
	sw	$ra, 2316($sp)
	addi	$sp, $sp, 2320
	jal	mymul.422
	subi	$sp, $sp, 2320
	lw	$ra, 2316($sp)
	move	$a0, $v0
	lw	$a1, 2308($sp)
	sub	$a0, $a1, $a0
	li	$a2, 0
	lw	$a1, 2312($sp)
	blt	$a2, $a1, bge_else.18537
	li	$a1, 1
	lw	$a3, 2304($sp)
	bne	$a3, $a1, bne_else.18539
	li	$a23, 48
	print_char	$a23
	li	$a1, 1
	j	bne_cont.18540
bne_else.18539:
	li	$a1, 0
bne_cont.18540:
	j	bge_cont.18538
bge_else.18537:
	addi	$a1, $a1, 48
	print_char	$a1
	li	$a1, 1
bge_cont.18538:
	li	$a3, 100
	sw	$a1, 2316($sp)
	sw	$a0, 2320($sp)
	move	$a1, $a3
	sw	$ra, 2324($sp)
	addi	$sp, $sp, 2328
	jal	countn.418
	subi	$sp, $sp, 2328
	lw	$ra, 2324($sp)
	move	$a0, $v0
	li	$a1, 100
	li	$a2, 0
	sw	$a0, 2324($sp)
	sw	$ra, 2332($sp)
	addi	$sp, $sp, 2336
	jal	mymul.422
	subi	$sp, $sp, 2336
	lw	$ra, 2332($sp)
	move	$a0, $v0
	lw	$a1, 2320($sp)
	sub	$a0, $a1, $a0
	li	$a2, 0
	lw	$a1, 2324($sp)
	blt	$a2, $a1, bge_else.18541
	li	$a1, 1
	lw	$a3, 2316($sp)
	bne	$a3, $a1, bne_else.18543
	li	$a23, 48
	print_char	$a23
	li	$a1, 1
	j	bne_cont.18544
bne_else.18543:
	li	$a1, 0
bne_cont.18544:
	j	bge_cont.18542
bge_else.18541:
	addi	$a1, $a1, 48
	print_char	$a1
	li	$a1, 1
bge_cont.18542:
	li	$a3, 10
	sw	$a1, 2328($sp)
	sw	$a0, 2332($sp)
	move	$a1, $a3
	sw	$ra, 2340($sp)
	addi	$sp, $sp, 2344
	jal	countn.418
	subi	$sp, $sp, 2344
	lw	$ra, 2340($sp)
	move	$a0, $v0
	li	$a1, 10
	li	$a2, 0
	sw	$a0, 2336($sp)
	sw	$ra, 2340($sp)
	addi	$sp, $sp, 2344
	jal	mymul.422
	subi	$sp, $sp, 2344
	lw	$ra, 2340($sp)
	move	$a0, $v0
	lw	$a1, 2332($sp)
	sub	$a0, $a1, $a0
	li	$a1, 0
	lw	$a2, 2336($sp)
	blt	$a1, $a2, bge_else.18545
	li	$a1, 1
	lw	$a2, 2328($sp)
	bne	$a2, $a1, bne_else.18547
	li	$a23, 48
	print_char	$a23
	li	$a1, 1
	j	bne_cont.18548
bne_else.18547:
	li	$a1, 0
bne_cont.18548:
	j	bge_cont.18546
bge_else.18545:
	addi	$a1, $a2, 48
	print_char	$a1
	li	$a1, 1
bge_cont.18546:
	addi	$a0, $a0, 48
	print_char	$a0
	li	$a23, 32
	print_char	$a23
	li	$a2, 0
	lw	$a0, 2248($sp)
	blt	$a0, $a2, bge_else.18549
	j	bge_cont.18550
bge_else.18549:
	li	$a23, 45
	print_char	$a23
	neg	$a0, $a0
bge_cont.18550:
	li	$a1, 10000
	sw	$a0, 2340($sp)
	sw	$ra, 2348($sp)
	addi	$sp, $sp, 2352
	jal	countn.418
	subi	$sp, $sp, 2352
	lw	$ra, 2348($sp)
	move	$a0, $v0
	li	$a1, 10000
	li	$a2, 0
	sw	$a0, 2344($sp)
	sw	$ra, 2348($sp)
	addi	$sp, $sp, 2352
	jal	mymul.422
	subi	$sp, $sp, 2352
	lw	$ra, 2348($sp)
	move	$a0, $v0
	lw	$a1, 2340($sp)
	sub	$a0, $a1, $a0
	li	$a2, 0
	lw	$a1, 2344($sp)
	blt	$a2, $a1, bge_else.18551
	li	$a1, 0
	j	bge_cont.18552
bge_else.18551:
	addi	$a1, $a1, 48
	print_char	$a1
	li	$a1, 1
bge_cont.18552:
	li	$a3, 1000
	sw	$a1, 2348($sp)
	sw	$a0, 2352($sp)
	move	$a1, $a3
	sw	$ra, 2356($sp)
	addi	$sp, $sp, 2360
	jal	countn.418
	subi	$sp, $sp, 2360
	lw	$ra, 2356($sp)
	move	$a0, $v0
	li	$a1, 1000
	li	$a2, 0
	sw	$a0, 2356($sp)
	sw	$ra, 2364($sp)
	addi	$sp, $sp, 2368
	jal	mymul.422
	subi	$sp, $sp, 2368
	lw	$ra, 2364($sp)
	move	$a0, $v0
	lw	$a1, 2352($sp)
	sub	$a0, $a1, $a0
	li	$a2, 0
	lw	$a1, 2356($sp)
	blt	$a2, $a1, bge_else.18553
	li	$a1, 1
	lw	$a3, 2348($sp)
	bne	$a3, $a1, bne_else.18555
	li	$a23, 48
	print_char	$a23
	li	$a1, 1
	j	bne_cont.18556
bne_else.18555:
	li	$a1, 0
bne_cont.18556:
	j	bge_cont.18554
bge_else.18553:
	addi	$a1, $a1, 48
	print_char	$a1
	li	$a1, 1
bge_cont.18554:
	li	$a3, 100
	sw	$a1, 2360($sp)
	sw	$a0, 2364($sp)
	move	$a1, $a3
	sw	$ra, 2372($sp)
	addi	$sp, $sp, 2376
	jal	countn.418
	subi	$sp, $sp, 2376
	lw	$ra, 2372($sp)
	move	$a0, $v0
	li	$a1, 100
	li	$a2, 0
	sw	$a0, 2368($sp)
	sw	$ra, 2372($sp)
	addi	$sp, $sp, 2376
	jal	mymul.422
	subi	$sp, $sp, 2376
	lw	$ra, 2372($sp)
	move	$a0, $v0
	lw	$a1, 2364($sp)
	sub	$a0, $a1, $a0
	li	$a2, 0
	lw	$a1, 2368($sp)
	blt	$a2, $a1, bge_else.18557
	li	$a1, 1
	lw	$a3, 2360($sp)
	bne	$a3, $a1, bne_else.18559
	li	$a23, 48
	print_char	$a23
	li	$a1, 1
	j	bne_cont.18560
bne_else.18559:
	li	$a1, 0
bne_cont.18560:
	j	bge_cont.18558
bge_else.18557:
	addi	$a1, $a1, 48
	print_char	$a1
	li	$a1, 1
bge_cont.18558:
	li	$a3, 10
	sw	$a1, 2372($sp)
	sw	$a0, 2376($sp)
	move	$a1, $a3
	sw	$ra, 2380($sp)
	addi	$sp, $sp, 2384
	jal	countn.418
	subi	$sp, $sp, 2384
	lw	$ra, 2380($sp)
	move	$a0, $v0
	li	$a1, 10
	li	$a2, 0
	sw	$a0, 2380($sp)
	sw	$ra, 2388($sp)
	addi	$sp, $sp, 2392
	jal	mymul.422
	subi	$sp, $sp, 2392
	lw	$ra, 2388($sp)
	move	$a0, $v0
	lw	$a1, 2376($sp)
	sub	$a0, $a1, $a0
	li	$a1, 0
	lw	$a2, 2380($sp)
	blt	$a1, $a2, bge_else.18561
	li	$a1, 1
	lw	$a2, 2372($sp)
	bne	$a2, $a1, bne_else.18563
	li	$a23, 48
	print_char	$a23
	li	$a1, 1
	j	bne_cont.18564
bne_else.18563:
	li	$a1, 0
bne_cont.18564:
	j	bge_cont.18562
bge_else.18561:
	addi	$a1, $a2, 48
	print_char	$a1
	li	$a1, 1
bge_cont.18562:
	addi	$a0, $a0, 48
	print_char	$a0
	jr	$ra
itof_ret_sub.851.1321.5779:
	sra	$a1, $a0, 1
	li	$a2, 0
	bne	$a0, $a2, beq_else.18566
	fmove	$fv, $f0
	jr $ra
beq_else.18566:
	sub	$a0, $a0, $a1
	sub	$a0, $a0, $a1
	li	$a2, 0
	blt	$a2, $a0, bge_else.18567
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fmul	$f1, $f1, $f2
	move	$a0, $a1
	j	itof_ret_sub.851.1321.5779
bge_else.18567:
	fadd	$f0, $f0, $f1
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fmul	$f1, $f1, $f2
	move	$a0, $a1
	j	itof_ret_sub.851.1321.5779
itof_ret_sub.851.1321.5795:
	sra	$a1, $a0, 1
	li	$a2, 0
	bne	$a0, $a2, beq_else.18568
	fmove	$fv, $f0
	jr $ra
beq_else.18568:
	sub	$a0, $a0, $a1
	sub	$a0, $a0, $a1
	li	$a2, 0
	blt	$a2, $a0, bge_else.18569
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fmul	$f1, $f1, $f2
	move	$a0, $a1
	j	itof_ret_sub.851.1321.5795
bge_else.18569:
	fadd	$f0, $f0, $f1
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fmul	$f1, $f1, $f2
	move	$a0, $a1
	j	itof_ret_sub.851.1321.5795
itof_ret_sub.851.1360.5827:
	sra	$a1, $a0, 1
	li	$a2, 0
	bne	$a0, $a2, beq_else.18570
	fmove	$fv, $f0
	jr $ra
beq_else.18570:
	sub	$a0, $a0, $a1
	sub	$a0, $a0, $a1
	li	$a2, 0
	blt	$a2, $a0, bge_else.18571
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fmul	$f1, $f1, $f2
	move	$a0, $a1
	j	itof_ret_sub.851.1360.5827
bge_else.18571:
	fadd	$f0, $f0, $f1
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fmul	$f1, $f1, $f2
	move	$a0, $a1
	j	itof_ret_sub.851.1360.5827
itof_ret_sub.851.1360.5843:
	sra	$a1, $a0, 1
	li	$a2, 0
	bne	$a0, $a2, beq_else.18572
	fmove	$fv, $f0
	jr $ra
beq_else.18572:
	sub	$a0, $a0, $a1
	sub	$a0, $a0, $a1
	li	$a2, 0
	blt	$a2, $a0, bge_else.18573
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fmul	$f1, $f1, $f2
	move	$a0, $a1
	j	itof_ret_sub.851.1360.5843
bge_else.18573:
	fadd	$f0, $f0, $f1
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fmul	$f1, $f1, $f2
	move	$a0, $a1
	j	itof_ret_sub.851.1360.5843
xloop.464:
	lw	$a2, 4($a26)
	li	$a3, 100
	blt	$a0, $a3, bge_else.18574
	jr	$ra
bge_else.18574:
	li	$a3, 0
	blt	$a3, $a0, bge_else.18576
	neg	$a3, $a0
	j	bge_cont.18577
bge_else.18576:
	move	$a3, $a0
bge_cont.18577:
	li	$a4, 0
	blt	$a4, $a0, bge_else.18578
	li	$a4, -1
	j	bge_cont.18579
bge_else.18578:
	li	$a4, 1
bge_cont.18579:
	li	$a5, 1
	sw	$a26, 0($sp)
	sw	$a0, 4($sp)
	sw	$a2, 8($sp)
	sw	$a1, 12($sp)
	bne	$a4, $a5, bne_else.18580
	li	$a4, 128
	sll	$a4, $a4, 16
	ori	$a4, $a4, 0
	blt	$a4, $a3, bge_else.18582
	mtc1	$f0, $zero
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	move	$a0, $a3
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	itof_ret_sub.851.1360.5843
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	fmove	$f0, $fv
	j	bge_cont.18583
bge_else.18582:
	mtc1	$f0, $zero
	move	$a0, $a3
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	itof_big.835.1344
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	fmove	$f0, $fv
bge_cont.18583:
	j	bne_cont.18581
bne_else.18580:
	li	$a4, 128
	sll	$a4, $a4, 16
	ori	$a4, $a4, 0
	blt	$a4, $a3, bge_else.18584
	mtc1	$f0, $zero
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	move	$a0, $a3
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	itof_ret_sub.851.1360.5827
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	fmove	$f0, $fv
	fneg	$f0, $f0
	j	bge_cont.18585
bge_else.18584:
	mtc1	$f0, $zero
	move	$a0, $a3
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	itof_big.835.1344
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	fmove	$f0, $fv
	fneg	$f0, $f0
bge_cont.18585:
bne_cont.18581:
	li	$a0, 0
	lw	$a1, 12($sp)
	blt	$a0, $a1, bge_else.18586
	neg	$a0, $a1
	j	bge_cont.18587
bge_else.18586:
	move	$a0, $a1
bge_cont.18587:
	li	$a2, 0
	blt	$a2, $a1, bge_else.18588
	li	$a2, -1
	j	bge_cont.18589
bge_else.18588:
	li	$a2, 1
bge_cont.18589:
	li	$a3, 1
	fsw	$f0, 16($sp)
	bne	$a2, $a3, bne_else.18590
	li	$a2, 128
	sll	$a2, $a2, 16
	ori	$a2, $a2, 0
	blt	$a2, $a0, bge_else.18592
	mtc1	$f1, $zero
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fmove	$f0, $f1
	fmove	$f1, $f2
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	itof_ret_sub.851.1321.5795
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	fmove	$f0, $fv
	j	bge_cont.18593
bge_else.18592:
	mtc1	$f1, $zero
	fmove	$f0, $f1
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	itof_big.835.1305
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	fmove	$f0, $fv
bge_cont.18593:
	j	bne_cont.18591
bne_else.18590:
	li	$a2, 128
	sll	$a2, $a2, 16
	ori	$a2, $a2, 0
	blt	$a2, $a0, bge_else.18594
	mtc1	$f1, $zero
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fmove	$f0, $f1
	fmove	$f1, $f2
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	itof_ret_sub.851.1321.5779
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	fmove	$f0, $fv
	fneg	$f0, $f0
	j	bge_cont.18595
bge_else.18594:
	mtc1	$f1, $zero
	fmove	$f0, $f1
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	itof_big.835.1305
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	fmove	$f0, $fv
	fneg	$f0, $f0
bge_cont.18595:
bne_cont.18591:
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
	move	$a26, $fp
	addi	$fp, $fp, 8
	sw	$a0, 0($a26)
	lw	$a0, 8($sp)
	sw	$a0, 4($a26)
	li	$a0, 0
	mtc1	$f0, $zero
	mtc1	$f1, $zero
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	iloop.476
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	fmove	$f30, $fv
	lw	$a0, 4($sp)
	addi	$a0, $a0, 1
	lw	$a1, 12($sp)
	lw	$a26, 0($sp)
	lw	$a25, 0($a26)
	j	xloop.464
yloop.456:
	lw	$a1, 8($a26)
	lw	$a2, 4($a26)
	blt	$a0, $a2, bge_else.18596
	jr	$ra
bge_else.18596:
	move	$a2, $fp
	addi	$fp, $fp, 8
	sw	$a3, 0($a2)
	sw	$a1, 4($a2)
	li	$a1, 0
	sw	$a26, 0($sp)
	sw	$a0, 4($sp)
	move	$a26, $a2
	move	$a25, $a1
	move	$a1, $a0
	move	$a0, $a25
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	xloop.464
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	fmove	$f30, $fv
	lw	$a0, 4($sp)
	addi	$a0, $a0, 1
	lw	$a26, 0($sp)
	lw	$a25, 0($a26)
	j	yloop.456
exit:
	hlt
_min_caml_start2: # main entry point
   # main program start
	li	$a0, 6
	li	$a1, 0
	sw	$a1, 0($sp)
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
	move	$a2, $fp
	addi	$fp, $fp, 16
	sw	$a3, 0($a2)
	sw	$a0, 8($a2)
	sw	$a1, 4($a2)
	li	$a23, 80
	print_char	$a23
	li	$a23, 51
	print_char	$a23
	li	$a23, 10
	print_char	$a23
	li	$a0, 10000
	lw	$a3, 0($sp)
	sw	$a2, 4($sp)
	sw	$a1, 8($sp)
	move	$a2, $a3
	move	$a25, $a1
	move	$a1, $a0
	move	$a0, $a25
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	countn.418
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	move	$a0, $v0
	li	$a1, 10000
	li	$a2, 0
	sw	$a0, 12($sp)
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	mymul.422
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	move	$a0, $v0
	li	$a1, 100
	sub	$a0, $a1, $a0
	li	$a2, 0
	lw	$a1, 12($sp)
	blt	$a2, $a1, bge_else.18598
	li	$a1, 0
	j	bge_cont.18599
bge_else.18598:
	addi	$a1, $a1, 48
	print_char	$a1
	li	$a1, 1
bge_cont.18599:
	li	$a3, 1000
	sw	$a1, 16($sp)
	sw	$a0, 20($sp)
	move	$a1, $a3
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	countn.418
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	move	$a0, $v0
	li	$a1, 1000
	li	$a2, 0
	sw	$a0, 24($sp)
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	mymul.422
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	move	$a0, $v0
	lw	$a1, 20($sp)
	sub	$a0, $a1, $a0
	li	$a2, 0
	lw	$a1, 24($sp)
	blt	$a2, $a1, bge_else.18600
	li	$a1, 1
	lw	$a3, 16($sp)
	bne	$a3, $a1, bne_else.18602
	li	$a23, 48
	print_char	$a23
	li	$a1, 1
	j	bne_cont.18603
bne_else.18602:
	li	$a1, 0
bne_cont.18603:
	j	bge_cont.18601
bge_else.18600:
	addi	$a1, $a1, 48
	print_char	$a1
	li	$a1, 1
bge_cont.18601:
	li	$a3, 100
	sw	$a1, 28($sp)
	sw	$a0, 32($sp)
	move	$a1, $a3
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	countn.418
	subi	$sp, $sp, 40
	lw	$ra, 36($sp)
	move	$a0, $v0
	li	$a1, 100
	li	$a2, 0
	sw	$a0, 36($sp)
	sw	$ra, 44($sp)
	addi	$sp, $sp, 48
	jal	mymul.422
	subi	$sp, $sp, 48
	lw	$ra, 44($sp)
	move	$a0, $v0
	lw	$a1, 32($sp)
	sub	$a0, $a1, $a0
	li	$a2, 0
	lw	$a1, 36($sp)
	blt	$a2, $a1, bge_else.18604
	li	$a1, 1
	lw	$a3, 28($sp)
	bne	$a3, $a1, bne_else.18606
	li	$a23, 48
	print_char	$a23
	li	$a1, 1
	j	bne_cont.18607
bne_else.18606:
	li	$a1, 0
bne_cont.18607:
	j	bge_cont.18605
bge_else.18604:
	addi	$a1, $a1, 48
	print_char	$a1
	li	$a1, 1
bge_cont.18605:
	li	$a3, 10
	sw	$a1, 40($sp)
	sw	$a0, 44($sp)
	move	$a1, $a3
	sw	$ra, 52($sp)
	addi	$sp, $sp, 56
	jal	countn.418
	subi	$sp, $sp, 56
	lw	$ra, 52($sp)
	move	$a0, $v0
	li	$a1, 10
	li	$a2, 0
	sw	$a0, 48($sp)
	sw	$ra, 52($sp)
	addi	$sp, $sp, 56
	jal	mymul.422
	subi	$sp, $sp, 56
	lw	$ra, 52($sp)
	move	$a0, $v0
	lw	$a1, 44($sp)
	sub	$a0, $a1, $a0
	li	$a1, 0
	lw	$a2, 48($sp)
	blt	$a1, $a2, bge_else.18608
	li	$a1, 1
	lw	$a2, 40($sp)
	bne	$a2, $a1, bne_else.18610
	li	$a23, 48
	print_char	$a23
	li	$a1, 1
	j	bne_cont.18611
bne_else.18610:
	li	$a1, 0
bne_cont.18611:
	j	bge_cont.18609
bge_else.18608:
	addi	$a1, $a2, 48
	print_char	$a1
	li	$a1, 1
bge_cont.18609:
	addi	$a0, $a0, 48
	print_char	$a0
	li	$a23, 32
	print_char	$a23
	li	$a1, 10000
	lw	$a0, 8($sp)
	lw	$a2, 0($sp)
	sw	$ra, 52($sp)
	addi	$sp, $sp, 56
	jal	countn.418
	subi	$sp, $sp, 56
	lw	$ra, 52($sp)
	move	$a0, $v0
	li	$a1, 10000
	li	$a2, 0
	sw	$a0, 52($sp)
	sw	$ra, 60($sp)
	addi	$sp, $sp, 64
	jal	mymul.422
	subi	$sp, $sp, 64
	lw	$ra, 60($sp)
	move	$a0, $v0
	li	$a1, 100
	sub	$a0, $a1, $a0
	li	$a2, 0
	lw	$a1, 52($sp)
	blt	$a2, $a1, bge_else.18612
	li	$a1, 0
	j	bge_cont.18613
bge_else.18612:
	addi	$a1, $a1, 48
	print_char	$a1
	li	$a1, 1
bge_cont.18613:
	li	$a3, 1000
	sw	$a1, 56($sp)
	sw	$a0, 60($sp)
	move	$a1, $a3
	sw	$ra, 68($sp)
	addi	$sp, $sp, 72
	jal	countn.418
	subi	$sp, $sp, 72
	lw	$ra, 68($sp)
	move	$a0, $v0
	li	$a1, 1000
	li	$a2, 0
	sw	$a0, 64($sp)
	sw	$ra, 68($sp)
	addi	$sp, $sp, 72
	jal	mymul.422
	subi	$sp, $sp, 72
	lw	$ra, 68($sp)
	move	$a0, $v0
	lw	$a1, 60($sp)
	sub	$a0, $a1, $a0
	li	$a2, 0
	lw	$a1, 64($sp)
	blt	$a2, $a1, bge_else.18614
	li	$a1, 1
	lw	$a3, 56($sp)
	bne	$a3, $a1, bne_else.18616
	li	$a23, 48
	print_char	$a23
	li	$a1, 1
	j	bne_cont.18617
bne_else.18616:
	li	$a1, 0
bne_cont.18617:
	j	bge_cont.18615
bge_else.18614:
	addi	$a1, $a1, 48
	print_char	$a1
	li	$a1, 1
bge_cont.18615:
	li	$a3, 100
	sw	$a1, 68($sp)
	sw	$a0, 72($sp)
	move	$a1, $a3
	sw	$ra, 76($sp)
	addi	$sp, $sp, 80
	jal	countn.418
	subi	$sp, $sp, 80
	lw	$ra, 76($sp)
	move	$a0, $v0
	li	$a1, 100
	li	$a2, 0
	sw	$a0, 76($sp)
	sw	$ra, 84($sp)
	addi	$sp, $sp, 88
	jal	mymul.422
	subi	$sp, $sp, 88
	lw	$ra, 84($sp)
	move	$a0, $v0
	lw	$a1, 72($sp)
	sub	$a0, $a1, $a0
	li	$a2, 0
	lw	$a1, 76($sp)
	blt	$a2, $a1, bge_else.18618
	li	$a1, 1
	lw	$a3, 68($sp)
	bne	$a3, $a1, bne_else.18620
	li	$a23, 48
	print_char	$a23
	li	$a1, 1
	j	bne_cont.18621
bne_else.18620:
	li	$a1, 0
bne_cont.18621:
	j	bge_cont.18619
bge_else.18618:
	addi	$a1, $a1, 48
	print_char	$a1
	li	$a1, 1
bge_cont.18619:
	li	$a3, 10
	sw	$a1, 80($sp)
	sw	$a0, 84($sp)
	move	$a1, $a3
	sw	$ra, 92($sp)
	addi	$sp, $sp, 96
	jal	countn.418
	subi	$sp, $sp, 96
	lw	$ra, 92($sp)
	move	$a0, $v0
	li	$a1, 10
	li	$a2, 0
	sw	$a0, 88($sp)
	sw	$ra, 92($sp)
	addi	$sp, $sp, 96
	jal	mymul.422
	subi	$sp, $sp, 96
	lw	$ra, 92($sp)
	move	$a0, $v0
	lw	$a1, 84($sp)
	sub	$a0, $a1, $a0
	li	$a1, 0
	lw	$a2, 88($sp)
	blt	$a1, $a2, bge_else.18622
	li	$a1, 1
	lw	$a2, 80($sp)
	bne	$a2, $a1, bne_else.18624
	li	$a23, 48
	print_char	$a23
	li	$a1, 1
	j	bne_cont.18625
bne_else.18624:
	li	$a1, 0
bne_cont.18625:
	j	bge_cont.18623
bge_else.18622:
	addi	$a1, $a2, 48
	print_char	$a1
	li	$a1, 1
bge_cont.18623:
	addi	$a0, $a0, 48
	print_char	$a0
	li	$a23, 32
	print_char	$a23
	li	$a0, 255
	li	$a1, 10000
	lw	$a2, 0($sp)
	sw	$ra, 92($sp)
	addi	$sp, $sp, 96
	jal	countn.418
	subi	$sp, $sp, 96
	lw	$ra, 92($sp)
	move	$a0, $v0
	li	$a1, 10000
	li	$a2, 0
	sw	$a0, 92($sp)
	sw	$ra, 100($sp)
	addi	$sp, $sp, 104
	jal	mymul.422
	subi	$sp, $sp, 104
	lw	$ra, 100($sp)
	move	$a0, $v0
	li	$a1, 255
	sub	$a0, $a1, $a0
	li	$a2, 0
	lw	$a1, 92($sp)
	blt	$a2, $a1, bge_else.18626
	li	$a1, 0
	j	bge_cont.18627
bge_else.18626:
	addi	$a1, $a1, 48
	print_char	$a1
	li	$a1, 1
bge_cont.18627:
	li	$a3, 1000
	sw	$a1, 96($sp)
	sw	$a0, 100($sp)
	move	$a1, $a3
	sw	$ra, 108($sp)
	addi	$sp, $sp, 112
	jal	countn.418
	subi	$sp, $sp, 112
	lw	$ra, 108($sp)
	move	$a0, $v0
	li	$a1, 1000
	li	$a2, 0
	sw	$a0, 104($sp)
	sw	$ra, 108($sp)
	addi	$sp, $sp, 112
	jal	mymul.422
	subi	$sp, $sp, 112
	lw	$ra, 108($sp)
	move	$a0, $v0
	lw	$a1, 100($sp)
	sub	$a0, $a1, $a0
	li	$a2, 0
	lw	$a1, 104($sp)
	blt	$a2, $a1, bge_else.18628
	li	$a1, 1
	lw	$a3, 96($sp)
	bne	$a3, $a1, bne_else.18630
	li	$a23, 48
	print_char	$a23
	li	$a1, 1
	j	bne_cont.18631
bne_else.18630:
	li	$a1, 0
bne_cont.18631:
	j	bge_cont.18629
bge_else.18628:
	addi	$a1, $a1, 48
	print_char	$a1
	li	$a1, 1
bge_cont.18629:
	li	$a3, 100
	sw	$a1, 108($sp)
	sw	$a0, 112($sp)
	move	$a1, $a3
	sw	$ra, 116($sp)
	addi	$sp, $sp, 120
	jal	countn.418
	subi	$sp, $sp, 120
	lw	$ra, 116($sp)
	move	$a0, $v0
	li	$a1, 100
	li	$a2, 0
	sw	$a0, 116($sp)
	sw	$ra, 124($sp)
	addi	$sp, $sp, 128
	jal	mymul.422
	subi	$sp, $sp, 128
	lw	$ra, 124($sp)
	move	$a0, $v0
	lw	$a1, 112($sp)
	sub	$a0, $a1, $a0
	li	$a2, 0
	lw	$a1, 116($sp)
	blt	$a2, $a1, bge_else.18632
	li	$a1, 1
	lw	$a3, 108($sp)
	bne	$a3, $a1, bne_else.18634
	li	$a23, 48
	print_char	$a23
	li	$a1, 1
	j	bne_cont.18635
bne_else.18634:
	li	$a1, 0
bne_cont.18635:
	j	bge_cont.18633
bge_else.18632:
	addi	$a1, $a1, 48
	print_char	$a1
	li	$a1, 1
bge_cont.18633:
	li	$a3, 10
	sw	$a1, 120($sp)
	sw	$a0, 124($sp)
	move	$a1, $a3
	sw	$ra, 132($sp)
	addi	$sp, $sp, 136
	jal	countn.418
	subi	$sp, $sp, 136
	lw	$ra, 132($sp)
	move	$a0, $v0
	li	$a1, 10
	li	$a2, 0
	sw	$a0, 128($sp)
	sw	$ra, 132($sp)
	addi	$sp, $sp, 136
	jal	mymul.422
	subi	$sp, $sp, 136
	lw	$ra, 132($sp)
	move	$a0, $v0
	lw	$a1, 124($sp)
	sub	$a0, $a1, $a0
	li	$a1, 0
	lw	$a2, 128($sp)
	blt	$a1, $a2, bge_else.18636
	li	$a1, 1
	lw	$a2, 120($sp)
	bne	$a2, $a1, bne_else.18638
	li	$a23, 48
	print_char	$a23
	li	$a1, 1
	j	bne_cont.18639
bne_else.18638:
	li	$a1, 0
bne_cont.18639:
	j	bge_cont.18637
bge_else.18636:
	addi	$a1, $a2, 48
	print_char	$a1
	li	$a1, 1
bge_cont.18637:
	addi	$a0, $a0, 48
	print_char	$a0
	li	$a23, 10
	print_char	$a23
	lw	$a0, 0($sp)
	lw	$a26, 4($sp)
	sw	$ra, 132($sp)
	addi	$sp, $sp, 136
	jal	yloop.456
	subi	$sp, $sp, 136
	lw	$ra, 132($sp)
	fmove	$f30, $fv
	li	$a0, 0
	li	$a1, 10000
	move	$a2, $a0
	sw	$ra, 132($sp)
	addi	$sp, $sp, 136
	jal	countn.418
	subi	$sp, $sp, 136
	lw	$ra, 132($sp)
	move	$a0, $v0
	li	$a1, 10000
	li	$a2, 0
	sw	$a0, 132($sp)
	sw	$ra, 140($sp)
	addi	$sp, $sp, 144
	jal	mymul.422
	subi	$sp, $sp, 144
	lw	$ra, 140($sp)
	move	$a0, $v0
	li	$a2, 0
	sub	$a0, $a2, $a0
	lw	$a1, 132($sp)
	blt	$a2, $a1, bge_else.18640
	li	$a1, 0
	j	bge_cont.18641
bge_else.18640:
	addi	$a1, $a1, 48
	print_char	$a1
	li	$a1, 1
bge_cont.18641:
	li	$a3, 1000
	sw	$a1, 136($sp)
	sw	$a0, 140($sp)
	move	$a1, $a3
	sw	$ra, 148($sp)
	addi	$sp, $sp, 152
	jal	countn.418
	subi	$sp, $sp, 152
	lw	$ra, 148($sp)
	move	$a0, $v0
	li	$a1, 1000
	li	$a2, 0
	sw	$a0, 144($sp)
	sw	$ra, 148($sp)
	addi	$sp, $sp, 152
	jal	mymul.422
	subi	$sp, $sp, 152
	lw	$ra, 148($sp)
	move	$a0, $v0
	lw	$a1, 140($sp)
	sub	$a0, $a1, $a0
	li	$a2, 0
	lw	$a1, 144($sp)
	blt	$a2, $a1, bge_else.18642
	li	$a1, 1
	lw	$a3, 136($sp)
	bne	$a3, $a1, bne_else.18644
	li	$a23, 48
	print_char	$a23
	li	$a1, 1
	j	bne_cont.18645
bne_else.18644:
	li	$a1, 0
bne_cont.18645:
	j	bge_cont.18643
bge_else.18642:
	addi	$a1, $a1, 48
	print_char	$a1
	li	$a1, 1
bge_cont.18643:
	li	$a3, 100
	sw	$a1, 148($sp)
	sw	$a0, 152($sp)
	move	$a1, $a3
	sw	$ra, 156($sp)
	addi	$sp, $sp, 160
	jal	countn.418
	subi	$sp, $sp, 160
	lw	$ra, 156($sp)
	move	$a0, $v0
	li	$a1, 100
	li	$a2, 0
	sw	$a0, 156($sp)
	sw	$ra, 164($sp)
	addi	$sp, $sp, 168
	jal	mymul.422
	subi	$sp, $sp, 168
	lw	$ra, 164($sp)
	move	$a0, $v0
	lw	$a1, 152($sp)
	sub	$a0, $a1, $a0
	li	$a2, 0
	lw	$a1, 156($sp)
	blt	$a2, $a1, bge_else.18646
	li	$a1, 1
	lw	$a3, 148($sp)
	bne	$a3, $a1, bne_else.18648
	li	$a23, 48
	print_char	$a23
	li	$a1, 1
	j	bne_cont.18649
bne_else.18648:
	li	$a1, 0
bne_cont.18649:
	j	bge_cont.18647
bge_else.18646:
	addi	$a1, $a1, 48
	print_char	$a1
	li	$a1, 1
bge_cont.18647:
	li	$a3, 10
	sw	$a1, 160($sp)
	sw	$a0, 164($sp)
	move	$a1, $a3
	sw	$ra, 172($sp)
	addi	$sp, $sp, 176
	jal	countn.418
	subi	$sp, $sp, 176
	lw	$ra, 172($sp)
	move	$a0, $v0
	li	$a1, 10
	li	$a2, 0
	sw	$a0, 168($sp)
	sw	$ra, 172($sp)
	addi	$sp, $sp, 176
	jal	mymul.422
	subi	$sp, $sp, 176
	lw	$ra, 172($sp)
	move	$a0, $v0
	lw	$a1, 164($sp)
	sub	$a0, $a1, $a0
	li	$a1, 0
	lw	$a2, 168($sp)
	blt	$a1, $a2, bge_else.18650
	li	$a1, 1
	lw	$a2, 160($sp)
	bne	$a2, $a1, bne_else.18652
	li	$a23, 48
	print_char	$a23
	li	$a1, 1
	j	bne_cont.18653
bne_else.18652:
	li	$a1, 0
bne_cont.18653:
	j	bge_cont.18651
bge_else.18650:
	addi	$a1, $a2, 48
	print_char	$a1
	li	$a1, 1
bge_cont.18651:
	addi	$a0, $a0, 48
	print_char	$a0
	j exit   # main program end
