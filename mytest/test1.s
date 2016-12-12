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
countn.255:
	blt	$a0, $a1, bge_else.1312
	sub	$a0, $a0, $a1
	addi	$a2, $a2, 1
	j	countn.255
bge_else.1312:
	move	$v0, $a2
	jr	$ra
mymul.259:
	li	$a3, 0
	bne	$a0, $a3, beq_else.1313
	move	$v0, $a2
	jr	$ra
beq_else.1313:
	subi	$a0, $a0, 1
	add	$a2, $a2, $a1
	j	mymul.259
exit:
	hlt
_min_caml_start2: # main entry point
   # main program start
	li	$a0, 288
	read_float	$f0
	fsw	$f0, 0($a0)
	read_float	$f0
	fsw	$f0, 4($a0)
	read_float	$f0
	fsw	$f0, 8($a0)
	flw	$f0, 0($a0)
	li	$v0, 16448
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	fadd	$f0, $f1, $f0
	li	$v0, 16576
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	fbne	$f0, $f1, fbne_else.1314
	li	$a0, 3
	li	$a1, 10000
	li	$a2, 0
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	countn.255
	subi	$sp, $sp, 8
	lw	$ra, 4($sp)
	move	$a0, $v0
	li	$a1, 10000
	li	$a2, 0
	sw	$a0, 0($sp)
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	mymul.259
	subi	$sp, $sp, 8
	lw	$ra, 4($sp)
	move	$a0, $v0
	li	$a1, 3
	sub	$a0, $a1, $a0
	li	$a1, 0
	lw	$a2, 0($sp)
	blt	$a1, $a2, bge_else.1316
	li	$a1, 0
	j	bge_cont.1317
bge_else.1316:
	addi	$a1, $a2, 48
	print_char	$a1
	li	$a1, 1
bge_cont.1317:
	li	$a2, 1000
	li	$a3, 0
	sw	$a1, 4($sp)
	sw	$a0, 8($sp)
	move	$a1, $a2
	move	$a2, $a3
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	countn.255
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	move	$a0, $v0
	li	$a1, 1000
	li	$a2, 0
	sw	$a0, 12($sp)
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	mymul.259
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	move	$a0, $v0
	lw	$a1, 8($sp)
	sub	$a0, $a1, $a0
	li	$a1, 0
	lw	$a2, 12($sp)
	blt	$a1, $a2, bge_else.1318
	li	$a1, 1
	lw	$a2, 4($sp)
	bne	$a2, $a1, bne_else.1320
	li	$a23, 48
	print_char	$a23
	li	$a1, 1
	j	bne_cont.1321
bne_else.1320:
	li	$a1, 0
bne_cont.1321:
	j	bge_cont.1319
bge_else.1318:
	addi	$a1, $a2, 48
	print_char	$a1
	li	$a1, 1
bge_cont.1319:
	li	$a2, 100
	li	$a3, 0
	sw	$a1, 16($sp)
	sw	$a0, 20($sp)
	move	$a1, $a2
	move	$a2, $a3
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	countn.255
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	move	$a0, $v0
	li	$a1, 100
	li	$a2, 0
	sw	$a0, 24($sp)
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	mymul.259
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	move	$a0, $v0
	lw	$a1, 20($sp)
	sub	$a0, $a1, $a0
	li	$a1, 0
	lw	$a2, 24($sp)
	blt	$a1, $a2, bge_else.1322
	li	$a1, 1
	lw	$a2, 16($sp)
	bne	$a2, $a1, bne_else.1324
	li	$a23, 48
	print_char	$a23
	li	$a1, 1
	j	bne_cont.1325
bne_else.1324:
	li	$a1, 0
bne_cont.1325:
	j	bge_cont.1323
bge_else.1322:
	addi	$a1, $a2, 48
	print_char	$a1
	li	$a1, 1
bge_cont.1323:
	li	$a2, 10
	li	$a3, 0
	sw	$a1, 28($sp)
	sw	$a0, 32($sp)
	move	$a1, $a2
	move	$a2, $a3
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	countn.255
	subi	$sp, $sp, 40
	lw	$ra, 36($sp)
	move	$a0, $v0
	li	$a1, 10
	li	$a2, 0
	sw	$a0, 36($sp)
	sw	$ra, 44($sp)
	addi	$sp, $sp, 48
	jal	mymul.259
	subi	$sp, $sp, 48
	lw	$ra, 44($sp)
	move	$a0, $v0
	lw	$a1, 32($sp)
	sub	$a0, $a1, $a0
	li	$a1, 0
	lw	$a2, 36($sp)
	blt	$a1, $a2, bge_else.1326
	li	$a1, 1
	lw	$a2, 28($sp)
	bne	$a2, $a1, bne_else.1328
	li	$a23, 48
	print_char	$a23
	li	$a1, 1
	j	bne_cont.1329
bne_else.1328:
	li	$a1, 0
bne_cont.1329:
	j	bge_cont.1327
bge_else.1326:
	addi	$a1, $a2, 48
	print_char	$a1
	li	$a1, 1
bge_cont.1327:
	addi	$a0, $a0, 48
	print_char	$a0
	j	fbne_cont.1315
fbne_else.1314:
	li	$a0, 2
	li	$a1, 10000
	li	$a2, 0
	sw	$ra, 44($sp)
	addi	$sp, $sp, 48
	jal	countn.255
	subi	$sp, $sp, 48
	lw	$ra, 44($sp)
	move	$a0, $v0
	li	$a1, 10000
	li	$a2, 0
	sw	$a0, 40($sp)
	sw	$ra, 44($sp)
	addi	$sp, $sp, 48
	jal	mymul.259
	subi	$sp, $sp, 48
	lw	$ra, 44($sp)
	move	$a0, $v0
	li	$a1, 2
	sub	$a0, $a1, $a0
	li	$a1, 0
	lw	$a2, 40($sp)
	blt	$a1, $a2, bge_else.1330
	li	$a1, 0
	j	bge_cont.1331
bge_else.1330:
	addi	$a1, $a2, 48
	print_char	$a1
	li	$a1, 1
bge_cont.1331:
	li	$a2, 1000
	li	$a3, 0
	sw	$a1, 44($sp)
	sw	$a0, 48($sp)
	move	$a1, $a2
	move	$a2, $a3
	sw	$ra, 52($sp)
	addi	$sp, $sp, 56
	jal	countn.255
	subi	$sp, $sp, 56
	lw	$ra, 52($sp)
	move	$a0, $v0
	li	$a1, 1000
	li	$a2, 0
	sw	$a0, 52($sp)
	sw	$ra, 60($sp)
	addi	$sp, $sp, 64
	jal	mymul.259
	subi	$sp, $sp, 64
	lw	$ra, 60($sp)
	move	$a0, $v0
	lw	$a1, 48($sp)
	sub	$a0, $a1, $a0
	li	$a1, 0
	lw	$a2, 52($sp)
	blt	$a1, $a2, bge_else.1332
	li	$a1, 1
	lw	$a2, 44($sp)
	bne	$a2, $a1, bne_else.1334
	li	$a23, 48
	print_char	$a23
	li	$a1, 1
	j	bne_cont.1335
bne_else.1334:
	li	$a1, 0
bne_cont.1335:
	j	bge_cont.1333
bge_else.1332:
	addi	$a1, $a2, 48
	print_char	$a1
	li	$a1, 1
bge_cont.1333:
	li	$a2, 100
	li	$a3, 0
	sw	$a1, 56($sp)
	sw	$a0, 60($sp)
	move	$a1, $a2
	move	$a2, $a3
	sw	$ra, 68($sp)
	addi	$sp, $sp, 72
	jal	countn.255
	subi	$sp, $sp, 72
	lw	$ra, 68($sp)
	move	$a0, $v0
	li	$a1, 100
	li	$a2, 0
	sw	$a0, 64($sp)
	sw	$ra, 68($sp)
	addi	$sp, $sp, 72
	jal	mymul.259
	subi	$sp, $sp, 72
	lw	$ra, 68($sp)
	move	$a0, $v0
	lw	$a1, 60($sp)
	sub	$a0, $a1, $a0
	li	$a1, 0
	lw	$a2, 64($sp)
	blt	$a1, $a2, bge_else.1336
	li	$a1, 1
	lw	$a2, 56($sp)
	bne	$a2, $a1, bne_else.1338
	li	$a23, 48
	print_char	$a23
	li	$a1, 1
	j	bne_cont.1339
bne_else.1338:
	li	$a1, 0
bne_cont.1339:
	j	bge_cont.1337
bge_else.1336:
	addi	$a1, $a2, 48
	print_char	$a1
	li	$a1, 1
bge_cont.1337:
	li	$a2, 10
	li	$a3, 0
	sw	$a1, 68($sp)
	sw	$a0, 72($sp)
	move	$a1, $a2
	move	$a2, $a3
	sw	$ra, 76($sp)
	addi	$sp, $sp, 80
	jal	countn.255
	subi	$sp, $sp, 80
	lw	$ra, 76($sp)
	move	$a0, $v0
	li	$a1, 10
	li	$a2, 0
	sw	$a0, 76($sp)
	sw	$ra, 84($sp)
	addi	$sp, $sp, 88
	jal	mymul.259
	subi	$sp, $sp, 88
	lw	$ra, 84($sp)
	move	$a0, $v0
	lw	$a1, 72($sp)
	sub	$a0, $a1, $a0
	li	$a1, 0
	lw	$a2, 76($sp)
	blt	$a1, $a2, bge_else.1340
	li	$a1, 1
	lw	$a2, 68($sp)
	bne	$a2, $a1, bne_else.1342
	li	$a23, 48
	print_char	$a23
	li	$a1, 1
	j	bne_cont.1343
bne_else.1342:
	li	$a1, 0
bne_cont.1343:
	j	bge_cont.1341
bge_else.1340:
	addi	$a1, $a2, 48
	print_char	$a1
	li	$a1, 1
bge_cont.1341:
	addi	$a0, $a0, 48
	print_char	$a0
fbne_cont.1315:
	j exit   # main program end
