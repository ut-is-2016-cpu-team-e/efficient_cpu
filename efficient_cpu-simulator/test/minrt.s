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
	li	$v0, 0
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f0, $v0
	li	$a1, 4
_global_variable Tt250:
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
	li	$v0, 0
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f0, $v0
	li	$a1, 288
	fsw	$f0, 0($a1)
	fsw	$f0, 4($a1)
	fsw	$f0, 8($a1)
_global_variable viewpoint:
	li	$v0, 0
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f0, $v0
	li	$a1, 300
	fsw	$f0, 0($a1)
	fsw	$f0, 4($a1)
	fsw	$f0, 8($a1)
_global_variable light:
	li	$v0, 0
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f0, $v0
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
_global_variable Ta251:
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
_global_variable Ta252:
	li	$a1, 332
	lw	$a0, 0($a1)
	li	$a1, 532
	sw	$a0, 0($a1)
_global_variable or_net:
	li	$a0, 532
	li	$a1, 536
	sw	$a0, 0($a1)
_global_variable solver_dist:
	li	$v0, 0
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f0, $v0
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
	li	$v0, 0
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f0, $v0
	li	$a1, 552
	fsw	$f0, 0($a1)
	fsw	$f0, 4($a1)
	fsw	$f0, 8($a1)
_global_variable intersected_object_id:
	li	$a0, 0
	li	$a1, 564
	sw	$a0, 0($a1)
_global_variable nvector:
	li	$v0, 0
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f0, $v0
	li	$a1, 568
	fsw	$f0, 0($a1)
	fsw	$f0, 4($a1)
	fsw	$f0, 8($a1)
_global_variable texture_color:
	li	$v0, 0
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f0, $v0
	li	$a1, 580
	fsw	$f0, 0($a1)
	fsw	$f0, 4($a1)
	fsw	$f0, 8($a1)
_global_variable diffuse_ray:
	li	$v0, 0
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f0, $v0
	li	$a1, 592
	fsw	$f0, 0($a1)
	fsw	$f0, 4($a1)
	fsw	$f0, 8($a1)
_global_variable rgb:
	li	$v0, 0
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f0, $v0
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
	li	$v0, 0
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f0, $v0
	li	$a1, 632
	fsw	$f0, 0($a1)
_global_variable startp:
	li	$v0, 0
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f0, $v0
	li	$a1, 636
	fsw	$f0, 0($a1)
	fsw	$f0, 4($a1)
	fsw	$f0, 8($a1)
_global_variable startp_fast:
	li	$v0, 0
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f0, $v0
	li	$a1, 648
	fsw	$f0, 0($a1)
	fsw	$f0, 4($a1)
	fsw	$f0, 8($a1)
_global_variable screenx_dir:
	li	$v0, 0
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f0, $v0
	li	$a1, 660
	fsw	$f0, 0($a1)
	fsw	$f0, 4($a1)
	fsw	$f0, 8($a1)
_global_variable screeny_dir:
	li	$v0, 0
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f0, $v0
	li	$a1, 672
	fsw	$f0, 0($a1)
	fsw	$f0, 4($a1)
	fsw	$f0, 8($a1)
_global_variable screenz_dir:
	li	$v0, 0
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f0, $v0
	li	$a1, 684
	fsw	$f0, 0($a1)
	fsw	$f0, 4($a1)
	fsw	$f0, 8($a1)
_global_variable ptrace_dirvec:
	li	$v0, 0
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f0, $v0
	li	$a1, 696
	fsw	$f0, 0($a1)
	fsw	$f0, 4($a1)
	fsw	$f0, 8($a1)
_global_variable dummyf:
	li	$v0, 0
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f0, $v0
	li	$a1, 708
_global_variable dummyff:
	li	$a0, 708
	li	$a1, 708
_global_variable Tt253:
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
	li	$v0, 0
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f0, $v0
	li	$a1, 736
_global_variable v3:
	li	$v0, 0
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f0, $v0
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
	li	$v0, 0
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f0, $v0
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
_global_variable Tt254:
	li	$a0, 1004
	li	$a1, 0
	sw	$a1, 0($a0)
	li	$a1, 996
	sw	$a1, 4($a0)
	li	$v0, 0
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f0, $v0
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
	li	$fp, 1740
	j _min_caml_start2
vecunit_sgn.2687:
	flw	$f0, 0($a0)
	fmul	$f0, $f0, $f0
	flw	$f1, 4($a0)
	fmul	$f1, $f1, $f1
	fadd	$f0, $f0, $f1
	flw	$f1, 8($a0)
	fmul	$f1, $f1, $f1
	fadd	$f0, $f0, $f1
	sw	$a0, 0($sp)
	sw	$a1, 4($sp)
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	min_caml_sqrt
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	fmove	$f0, $fv
	li	$v0, 0
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	fbne	$f0, $f1, fbne_else.17333
	li	$a0, 1
	j	fbne_cont.17334
fbne_else.17333:
	li	$a0, 0
fbne_cont.17334:
	li	$a1, 0
	bne	$a0, $a1, bne_else.17335
	li	$a0, 0
	lw	$a1, 4($sp)
	bne	$a1, $a0, bne_else.17337
	finv	$f0, $f0
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	fmul	$f0, $f1, $f0
	j	bne_cont.17338
bne_else.17337:
	finv	$f0, $f0
	li	$v0, -16512
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	fmul	$f0, $f1, $f0
bne_cont.17338:
	j	bne_cont.17336
bne_else.17335:
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f0, $v0
bne_cont.17336:
	lw	$a0, 0($sp)
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
read_screen_settings.2788:
	li	$a0, 288
	sw	$a0, 0($sp)
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	min_caml_read_float
	subi	$sp, $sp, 8
	lw	$ra, 4($sp)
	fmove	$f0, $fv
	lw	$a0, 0($sp)
	fsw	$f0, 0($a0)
	li	$a0, 288
	sw	$a0, 4($sp)
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	min_caml_read_float
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	fmove	$f0, $fv
	lw	$a0, 4($sp)
	fsw	$f0, 4($a0)
	li	$a0, 288
	sw	$a0, 8($sp)
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	min_caml_read_float
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	fmove	$f0, $fv
	lw	$a0, 8($sp)
	fsw	$f0, 8($a0)
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	min_caml_read_float
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	fmove	$f0, $fv
	li	$v0, 15502
	sll	$v0, $v0, 16
	ori	$v0, $v0, 64053
	mtc1	$f1, $v0
	fmul	$f0, $f0, $f1
	fsw	$f0, 16($sp)
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
	fsw	$f0, 32($sp)
	sw	$ra, 44($sp)
	addi	$sp, $sp, 48
	jal	min_caml_read_float
	subi	$sp, $sp, 48
	lw	$ra, 44($sp)
	fmove	$f0, $fv
	li	$v0, 15502
	sll	$v0, $v0, 16
	ori	$v0, $v0, 64053
	mtc1	$f1, $v0
	fmul	$f0, $f0, $f1
	fsw	$f0, 40($sp)
	sw	$ra, 52($sp)
	addi	$sp, $sp, 56
	jal	min_caml_cos
	subi	$sp, $sp, 56
	lw	$ra, 52($sp)
	fmove	$f0, $fv
	flw	$f1, 40($sp)
	fsw	$f0, 48($sp)
	fmove	$f0, $f1
	sw	$ra, 60($sp)
	addi	$sp, $sp, 64
	jal	min_caml_sin
	subi	$sp, $sp, 64
	lw	$ra, 60($sp)
	fmove	$f0, $fv
	li	$a0, 684
	flw	$f1, 24($sp)
	fmul	$f2, $f1, $f0
	li	$v0, 17224
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f3, $v0
	fmul	$f2, $f2, $f3
	fsw	$f2, 0($a0)
	li	$a0, 684
	li	$v0, -15544
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	flw	$f3, 32($sp)
	fmul	$f2, $f3, $f2
	fsw	$f2, 4($a0)
	li	$a0, 684
	flw	$f2, 48($sp)
	fmul	$f4, $f1, $f2
	li	$v0, 17224
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f5, $v0
	fmul	$f4, $f4, $f5
	fsw	$f4, 8($a0)
	li	$a0, 660
	fsw	$f2, 0($a0)
	li	$a0, 660
	li	$v0, 0
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f4, $v0
	fsw	$f4, 4($a0)
	li	$a0, 660
	fneg	$f4, $f0
	fsw	$f4, 8($a0)
	li	$a0, 672
	fneg	$f4, $f3
	fmul	$f0, $f4, $f0
	fsw	$f0, 0($a0)
	li	$a0, 672
	fneg	$f0, $f1
	fsw	$f0, 4($a0)
	li	$a0, 672
	fneg	$f0, $f3
	fmul	$f0, $f0, $f2
	fsw	$f0, 8($a0)
	li	$a0, 300
	li	$a1, 288
	flw	$f0, 0($a1)
	li	$a1, 684
	flw	$f1, 0($a1)
	fsub	$f0, $f0, $f1
	fsw	$f0, 0($a0)
	li	$a0, 300
	li	$a1, 288
	flw	$f0, 4($a1)
	li	$a1, 684
	flw	$f1, 4($a1)
	fsub	$f0, $f0, $f1
	fsw	$f0, 4($a0)
	li	$a0, 300
	li	$a1, 288
	flw	$f0, 8($a1)
	li	$a1, 684
	flw	$f1, 8($a1)
	fsub	$f0, $f0, $f1
	fsw	$f0, 8($a0)
	jr	$ra
read_light.2790:
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	min_caml_read_int
	subi	$sp, $sp, 8
	lw	$ra, 4($sp)
	move	$a0, $v0
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	min_caml_read_float
	subi	$sp, $sp, 8
	lw	$ra, 4($sp)
	fmove	$f0, $fv
	li	$v0, 15502
	sll	$v0, $v0, 16
	ori	$v0, $v0, 64053
	mtc1	$f1, $v0
	fmul	$f0, $f0, $f1
	fsw	$f0, 0($sp)
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	min_caml_sin
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	fmove	$f0, $fv
	li	$a0, 312
	fneg	$f0, $f0
	fsw	$f0, 4($a0)
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	min_caml_read_float
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	fmove	$f0, $fv
	li	$v0, 15502
	sll	$v0, $v0, 16
	ori	$v0, $v0, 64053
	mtc1	$f1, $v0
	fmul	$f0, $f0, $f1
	flw	$f1, 0($sp)
	fsw	$f0, 8($sp)
	fmove	$f0, $f1
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	min_caml_cos
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	fmove	$f0, $fv
	flw	$f1, 8($sp)
	fsw	$f0, 16($sp)
	fmove	$f0, $f1
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	min_caml_sin
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	fmove	$f0, $fv
	li	$a0, 312
	flw	$f1, 16($sp)
	fmul	$f0, $f1, $f0
	fsw	$f0, 0($a0)
	flw	$f0, 8($sp)
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	min_caml_cos
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	fmove	$f0, $fv
	li	$a0, 312
	flw	$f1, 16($sp)
	fmul	$f0, $f1, $f0
	fsw	$f0, 8($a0)
	li	$a0, 324
	sw	$a0, 24($sp)
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	min_caml_read_float
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	fmove	$f0, $fv
	lw	$a0, 24($sp)
	fsw	$f0, 0($a0)
	jr	$ra
rotate_quadratic_matrix.2792:
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
	lw	$a0, 4($sp)
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
	jr	$ra
read_nth_object.2795:
	sw	$a0, 0($sp)
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	min_caml_read_int
	subi	$sp, $sp, 8
	lw	$ra, 4($sp)
	move	$a0, $v0
	li	$a1, -1
	bne	$a0, $a1, beq_else.17344
	li	$v0, 0
	jr	$ra
beq_else.17344:
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
	li	$v0, 0
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f0, $v0
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
	li	$v0, 0
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f0, $v0
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
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	min_caml_read_float
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	fmove	$f0, $fv
	li	$v0, 0
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	fblt	$f0, $f1, fbge_else.17345
	li	$a0, 0
	j	fbge_cont.17346
fbge_else.17345:
	li	$a0, 1
fbge_cont.17346:
	li	$a1, 2
	li	$v0, 0
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f0, $v0
	sw	$a0, 28($sp)
	move	$a0, $a1
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	min_caml_create_float_array
	subi	$sp, $sp, 40
	lw	$ra, 36($sp)
	move	$a0, $v0
	sw	$a0, 32($sp)
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	min_caml_read_float
	subi	$sp, $sp, 40
	lw	$ra, 36($sp)
	fmove	$f0, $fv
	lw	$a0, 32($sp)
	fsw	$f0, 0($a0)
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	min_caml_read_float
	subi	$sp, $sp, 40
	lw	$ra, 36($sp)
	fmove	$f0, $fv
	lw	$a0, 32($sp)
	fsw	$f0, 4($a0)
	li	$a1, 3
	li	$v0, 0
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f0, $v0
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
	sw	$ra, 44($sp)
	addi	$sp, $sp, 48
	jal	min_caml_read_float
	subi	$sp, $sp, 48
	lw	$ra, 44($sp)
	fmove	$f0, $fv
	lw	$a0, 36($sp)
	fsw	$f0, 8($a0)
	li	$a1, 3
	li	$v0, 0
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f0, $v0
	move	$a0, $a1
	sw	$ra, 44($sp)
	addi	$sp, $sp, 48
	jal	min_caml_create_float_array
	subi	$sp, $sp, 48
	lw	$ra, 44($sp)
	move	$a0, $v0
	li	$a1, 0
	lw	$a2, 16($sp)
	bne	$a2, $a1, bne_else.17347
	j	bne_cont.17348
bne_else.17347:
	sw	$a0, 40($sp)
	sw	$ra, 44($sp)
	addi	$sp, $sp, 48
	jal	min_caml_read_float
	subi	$sp, $sp, 48
	lw	$ra, 44($sp)
	fmove	$f0, $fv
	li	$v0, 15502
	sll	$v0, $v0, 16
	ori	$v0, $v0, 64053
	mtc1	$f1, $v0
	fmul	$f0, $f0, $f1
	lw	$a0, 40($sp)
	fsw	$f0, 0($a0)
	sw	$ra, 44($sp)
	addi	$sp, $sp, 48
	jal	min_caml_read_float
	subi	$sp, $sp, 48
	lw	$ra, 44($sp)
	fmove	$f0, $fv
	li	$v0, 15502
	sll	$v0, $v0, 16
	ori	$v0, $v0, 64053
	mtc1	$f1, $v0
	fmul	$f0, $f0, $f1
	lw	$a0, 40($sp)
	fsw	$f0, 4($a0)
	sw	$ra, 44($sp)
	addi	$sp, $sp, 48
	jal	min_caml_read_float
	subi	$sp, $sp, 48
	lw	$ra, 44($sp)
	fmove	$f0, $fv
	li	$v0, 15502
	sll	$v0, $v0, 16
	ori	$v0, $v0, 64053
	mtc1	$f1, $v0
	fmul	$f0, $f0, $f1
	lw	$a0, 40($sp)
	fsw	$f0, 8($a0)
bne_cont.17348:
	li	$a1, 2
	lw	$a2, 8($sp)
	bne	$a2, $a1, bne_else.17349
	li	$a1, 1
	j	bne_cont.17350
bne_else.17349:
	lw	$a1, 28($sp)
bne_cont.17350:
	li	$a3, 4
	li	$v0, 0
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f0, $v0
	sw	$a1, 44($sp)
	sw	$a0, 40($sp)
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
	lw	$a0, 40($sp)
	sw	$a0, 36($a1)
	lw	$a2, 36($sp)
	sw	$a2, 32($a1)
	lw	$a2, 32($sp)
	sw	$a2, 28($a1)
	lw	$a2, 44($sp)
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
	bne	$a4, $a1, bne_else.17351
	flw	$f0, 0($a2)
	li	$v0, 0
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	fbne	$f0, $f1, fbne_else.17353
	li	$a1, 1
	j	fbne_cont.17354
fbne_else.17353:
	li	$a1, 0
fbne_cont.17354:
	li	$a4, 0
	bne	$a1, $a4, bne_else.17355
	li	$v0, 0
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	fbne	$f0, $f1, fbne_else.17357
	li	$a1, 1
	j	fbne_cont.17358
fbne_else.17357:
	li	$a1, 0
fbne_cont.17358:
	li	$a4, 0
	bne	$a1, $a4, bne_else.17359
	li	$v0, 0
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	fblt	$f1, $f0, fbge_else.17361
	li	$a1, 0
	j	fbge_cont.17362
fbge_else.17361:
	li	$a1, 1
fbge_cont.17362:
	li	$a4, 0
	bne	$a1, $a4, bne_else.17363
	li	$v0, -16512
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	j	bne_cont.17364
bne_else.17363:
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
bne_cont.17364:
	j	bne_cont.17360
bne_else.17359:
	li	$v0, 0
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
bne_cont.17360:
	fmul	$f0, $f0, $f0
	finv	$f0, $f0
	fmul	$f0, $f1, $f0
	j	bne_cont.17356
bne_else.17355:
	li	$v0, 0
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f0, $v0
bne_cont.17356:
	fsw	$f0, 0($a2)
	flw	$f0, 4($a2)
	li	$v0, 0
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	fbne	$f0, $f1, fbne_else.17365
	li	$a1, 1
	j	fbne_cont.17366
fbne_else.17365:
	li	$a1, 0
fbne_cont.17366:
	li	$a4, 0
	bne	$a1, $a4, bne_else.17367
	li	$v0, 0
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	fbne	$f0, $f1, fbne_else.17369
	li	$a1, 1
	j	fbne_cont.17370
fbne_else.17369:
	li	$a1, 0
fbne_cont.17370:
	li	$a4, 0
	bne	$a1, $a4, bne_else.17371
	li	$v0, 0
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	fblt	$f1, $f0, fbge_else.17373
	li	$a1, 0
	j	fbge_cont.17374
fbge_else.17373:
	li	$a1, 1
fbge_cont.17374:
	li	$a4, 0
	bne	$a1, $a4, bne_else.17375
	li	$v0, -16512
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	j	bne_cont.17376
bne_else.17375:
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
bne_cont.17376:
	j	bne_cont.17372
bne_else.17371:
	li	$v0, 0
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
bne_cont.17372:
	fmul	$f0, $f0, $f0
	finv	$f0, $f0
	fmul	$f0, $f1, $f0
	j	bne_cont.17368
bne_else.17367:
	li	$v0, 0
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f0, $v0
bne_cont.17368:
	fsw	$f0, 4($a2)
	flw	$f0, 8($a2)
	li	$v0, 0
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	fbne	$f0, $f1, fbne_else.17377
	li	$a1, 1
	j	fbne_cont.17378
fbne_else.17377:
	li	$a1, 0
fbne_cont.17378:
	li	$a4, 0
	bne	$a1, $a4, bne_else.17379
	li	$v0, 0
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	fbne	$f0, $f1, fbne_else.17381
	li	$a1, 1
	j	fbne_cont.17382
fbne_else.17381:
	li	$a1, 0
fbne_cont.17382:
	li	$a4, 0
	bne	$a1, $a4, bne_else.17383
	li	$v0, 0
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	fblt	$f1, $f0, fbge_else.17385
	li	$a1, 0
	j	fbge_cont.17386
fbge_else.17385:
	li	$a1, 1
fbge_cont.17386:
	li	$a4, 0
	bne	$a1, $a4, bne_else.17387
	li	$v0, -16512
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	j	bne_cont.17388
bne_else.17387:
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
bne_cont.17388:
	j	bne_cont.17384
bne_else.17383:
	li	$v0, 0
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
bne_cont.17384:
	fmul	$f0, $f0, $f0
	finv	$f0, $f0
	fmul	$f0, $f1, $f0
	j	bne_cont.17380
bne_else.17379:
	li	$v0, 0
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f0, $v0
bne_cont.17380:
	fsw	$f0, 8($a2)
	j	bne_cont.17352
bne_else.17351:
	li	$a1, 2
	bne	$a4, $a1, bne_else.17389
	li	$a1, 0
	lw	$a4, 28($sp)
	bne	$a4, $a1, bne_else.17391
	li	$a1, 1
	j	bne_cont.17392
bne_else.17391:
	li	$a1, 0
bne_cont.17392:
	move	$a0, $a2
	sw	$ra, 52($sp)
	addi	$sp, $sp, 56
	jal	vecunit_sgn.2687
	subi	$sp, $sp, 56
	lw	$ra, 52($sp)
	fmove	$f30, $fv
	j	bne_cont.17390
bne_else.17389:
bne_cont.17390:
bne_cont.17352:
	li	$a0, 0
	lw	$a1, 16($sp)
	bne	$a1, $a0, bne_else.17393
	j	bne_cont.17394
bne_else.17393:
	lw	$a0, 20($sp)
	lw	$a1, 40($sp)
	sw	$ra, 52($sp)
	addi	$sp, $sp, 56
	jal	rotate_quadratic_matrix.2792
	subi	$sp, $sp, 56
	lw	$ra, 52($sp)
	fmove	$f30, $fv
bne_cont.17394:
	li	$v0, 1
	jr	$ra
read_object.2797:
	li	$a1, 60
	blt	$a0, $a1, bge_else.17395
	jr	$ra
bge_else.17395:
	sw	$a0, 0($sp)
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	read_nth_object.2795
	subi	$sp, $sp, 8
	lw	$ra, 4($sp)
	move	$a0, $v0
	li	$a1, 0
	bne	$a0, $a1, beq_else.17397
	li	$a0, 0
	lw	$a1, 0($sp)
	sw	$a1, 0($a0)
	jr	$ra
beq_else.17397:
	lw	$a0, 0($sp)
	addi	$a0, $a0, 1
	li	$a1, 60
	blt	$a0, $a1, bge_else.17399
	jr	$ra
bge_else.17399:
	sw	$a0, 4($sp)
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	read_nth_object.2795
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	move	$a0, $v0
	li	$a1, 0
	bne	$a0, $a1, beq_else.17401
	li	$a0, 0
	lw	$a1, 4($sp)
	sw	$a1, 0($a0)
	jr	$ra
beq_else.17401:
	lw	$a0, 4($sp)
	addi	$a0, $a0, 1
	li	$a1, 60
	blt	$a0, $a1, bge_else.17403
	jr	$ra
bge_else.17403:
	sw	$a0, 8($sp)
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	read_nth_object.2795
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	move	$a0, $v0
	li	$a1, 0
	bne	$a0, $a1, beq_else.17405
	li	$a0, 0
	lw	$a1, 8($sp)
	sw	$a1, 0($a0)
	jr	$ra
beq_else.17405:
	lw	$a0, 8($sp)
	addi	$a0, $a0, 1
	li	$a1, 60
	blt	$a0, $a1, bge_else.17407
	jr	$ra
bge_else.17407:
	sw	$a0, 12($sp)
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	read_nth_object.2795
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	move	$a0, $v0
	li	$a1, 0
	bne	$a0, $a1, beq_else.17409
	li	$a0, 0
	lw	$a1, 12($sp)
	sw	$a1, 0($a0)
	jr	$ra
beq_else.17409:
	lw	$a0, 12($sp)
	addi	$a0, $a0, 1
	j	read_object.2797
read_net_item.2801:
	sw	$a0, 0($sp)
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	min_caml_read_int
	subi	$sp, $sp, 8
	lw	$ra, 4($sp)
	move	$a0, $v0
	li	$a1, -1
	bne	$a0, $a1, beq_else.17411
	lw	$a0, 0($sp)
	addi	$a0, $a0, 1
	li	$a1, -1
	j	min_caml_create_array
beq_else.17411:
	lw	$a1, 0($sp)
	addi	$a2, $a1, 1
	sw	$a0, 4($sp)
	sw	$a2, 8($sp)
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	min_caml_read_int
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	move	$a0, $v0
	li	$a1, -1
	bne	$a0, $a1, bne_else.17412
	lw	$a0, 8($sp)
	addi	$a0, $a0, 1
	li	$a1, -1
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	min_caml_create_array
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	move	$a0, $v0
	j	bne_cont.17413
bne_else.17412:
	lw	$a1, 8($sp)
	addi	$a2, $a1, 1
	sw	$a0, 12($sp)
	sw	$a2, 16($sp)
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	min_caml_read_int
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	move	$a0, $v0
	li	$a1, -1
	bne	$a0, $a1, bne_else.17414
	lw	$a0, 16($sp)
	addi	$a0, $a0, 1
	li	$a1, -1
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	min_caml_create_array
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	move	$a0, $v0
	j	bne_cont.17415
bne_else.17414:
	lw	$a1, 16($sp)
	addi	$a2, $a1, 1
	sw	$a0, 20($sp)
	sw	$a2, 24($sp)
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	min_caml_read_int
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	move	$a0, $v0
	li	$a1, -1
	bne	$a0, $a1, bne_else.17416
	lw	$a0, 24($sp)
	addi	$a0, $a0, 1
	li	$a1, -1
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	min_caml_create_array
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	move	$a0, $v0
	j	bne_cont.17417
bne_else.17416:
	lw	$a1, 24($sp)
	addi	$a2, $a1, 1
	sw	$a0, 28($sp)
	move	$a0, $a2
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	read_net_item.2801
	subi	$sp, $sp, 40
	lw	$ra, 36($sp)
	move	$a0, $v0
	lw	$a1, 24($sp)
	sll	$a1, $a1, 2
	lw	$a2, 28($sp)
	add	$a1, $a0, $a1
	sw	$a2, 0($a1)
bne_cont.17417:
	lw	$a1, 16($sp)
	sll	$a1, $a1, 2
	lw	$a2, 20($sp)
	add	$a1, $a0, $a1
	sw	$a2, 0($a1)
bne_cont.17415:
	lw	$a1, 8($sp)
	sll	$a1, $a1, 2
	lw	$a2, 12($sp)
	add	$a1, $a0, $a1
	sw	$a2, 0($a1)
bne_cont.17413:
	lw	$a1, 0($sp)
	sll	$a1, $a1, 2
	lw	$a2, 4($sp)
	add	$a1, $a0, $a1
	sw	$a2, 0($a1)
	move	$v0, $a0
	jr	$ra
read_or_network.2803:
	sw	$a0, 0($sp)
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	min_caml_read_int
	subi	$sp, $sp, 8
	lw	$ra, 4($sp)
	move	$a0, $v0
	li	$a1, -1
	bne	$a0, $a1, bne_else.17418
	li	$a0, 1
	li	$a1, -1
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	min_caml_create_array
	subi	$sp, $sp, 8
	lw	$ra, 4($sp)
	move	$a1, $v0
	j	bne_cont.17419
bne_else.17418:
	sw	$a0, 4($sp)
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	min_caml_read_int
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	move	$a0, $v0
	li	$a1, -1
	bne	$a0, $a1, bne_else.17420
	li	$a0, 2
	li	$a1, -1
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	min_caml_create_array
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	move	$a0, $v0
	j	bne_cont.17421
bne_else.17420:
	sw	$a0, 8($sp)
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	min_caml_read_int
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	move	$a0, $v0
	li	$a1, -1
	bne	$a0, $a1, bne_else.17422
	li	$a0, 3
	li	$a1, -1
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	min_caml_create_array
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	move	$a0, $v0
	j	bne_cont.17423
bne_else.17422:
	li	$a1, 3
	sw	$a0, 12($sp)
	move	$a0, $a1
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	read_net_item.2801
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	move	$a0, $v0
	lw	$a1, 12($sp)
	sw	$a1, 8($a0)
bne_cont.17423:
	lw	$a1, 8($sp)
	sw	$a1, 4($a0)
bne_cont.17421:
	lw	$a1, 4($sp)
	sw	$a1, 0($a0)
	move	$a1, $a0
bne_cont.17419:
	lw	$a0, 0($a1)
	li	$a2, -1
	bne	$a0, $a2, beq_else.17424
	lw	$a0, 0($sp)
	addi	$a0, $a0, 1
	j	min_caml_create_array
beq_else.17424:
	lw	$a0, 0($sp)
	addi	$a2, $a0, 1
	sw	$a1, 16($sp)
	sw	$a2, 20($sp)
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	min_caml_read_int
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	move	$a0, $v0
	li	$a1, -1
	bne	$a0, $a1, bne_else.17425
	li	$a0, 1
	li	$a1, -1
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	min_caml_create_array
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	move	$a1, $v0
	j	bne_cont.17426
bne_else.17425:
	sw	$a0, 24($sp)
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	min_caml_read_int
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	move	$a0, $v0
	li	$a1, -1
	bne	$a0, $a1, bne_else.17427
	li	$a0, 2
	li	$a1, -1
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	min_caml_create_array
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	move	$a0, $v0
	j	bne_cont.17428
bne_else.17427:
	li	$a1, 2
	sw	$a0, 28($sp)
	move	$a0, $a1
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	read_net_item.2801
	subi	$sp, $sp, 40
	lw	$ra, 36($sp)
	move	$a0, $v0
	lw	$a1, 28($sp)
	sw	$a1, 4($a0)
bne_cont.17428:
	lw	$a1, 24($sp)
	sw	$a1, 0($a0)
	move	$a1, $a0
bne_cont.17426:
	lw	$a0, 0($a1)
	li	$a2, -1
	bne	$a0, $a2, bne_else.17429
	lw	$a0, 20($sp)
	addi	$a0, $a0, 1
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	min_caml_create_array
	subi	$sp, $sp, 40
	lw	$ra, 36($sp)
	move	$a0, $v0
	j	bne_cont.17430
bne_else.17429:
	lw	$a0, 20($sp)
	addi	$a2, $a0, 1
	sw	$a1, 32($sp)
	move	$a0, $a2
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	read_or_network.2803
	subi	$sp, $sp, 40
	lw	$ra, 36($sp)
	move	$a0, $v0
	lw	$a1, 20($sp)
	sll	$a1, $a1, 2
	lw	$a2, 32($sp)
	add	$a1, $a0, $a1
	sw	$a2, 0($a1)
bne_cont.17430:
	lw	$a1, 0($sp)
	sll	$a1, $a1, 2
	lw	$a2, 16($sp)
	add	$a1, $a0, $a1
	sw	$a2, 0($a1)
	move	$v0, $a0
	jr	$ra
read_and_network.2805:
	sw	$a0, 0($sp)
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	min_caml_read_int
	subi	$sp, $sp, 8
	lw	$ra, 4($sp)
	move	$a0, $v0
	li	$a1, -1
	bne	$a0, $a1, bne_else.17431
	li	$a0, 1
	li	$a1, -1
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	min_caml_create_array
	subi	$sp, $sp, 8
	lw	$ra, 4($sp)
	move	$a0, $v0
	j	bne_cont.17432
bne_else.17431:
	sw	$a0, 4($sp)
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	min_caml_read_int
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	move	$a0, $v0
	li	$a1, -1
	bne	$a0, $a1, bne_else.17433
	li	$a0, 2
	li	$a1, -1
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	min_caml_create_array
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	move	$a0, $v0
	j	bne_cont.17434
bne_else.17433:
	sw	$a0, 8($sp)
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	min_caml_read_int
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	move	$a0, $v0
	li	$a1, -1
	bne	$a0, $a1, bne_else.17435
	li	$a0, 3
	li	$a1, -1
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	min_caml_create_array
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	move	$a0, $v0
	j	bne_cont.17436
bne_else.17435:
	li	$a1, 3
	sw	$a0, 12($sp)
	move	$a0, $a1
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	read_net_item.2801
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	move	$a0, $v0
	lw	$a1, 12($sp)
	sw	$a1, 8($a0)
bne_cont.17436:
	lw	$a1, 8($sp)
	sw	$a1, 4($a0)
bne_cont.17434:
	lw	$a1, 4($sp)
	sw	$a1, 0($a0)
bne_cont.17432:
	lw	$a1, 0($a0)
	li	$a2, -1
	bne	$a1, $a2, beq_else.17437
	jr	$ra
beq_else.17437:
	li	$a1, 332
	lw	$a2, 0($sp)
	sll	$a3, $a2, 2
	add	$a3, $a1, $a3
	sw	$a0, 0($a3)
	addi	$a0, $a2, 1
	sw	$a0, 16($sp)
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	min_caml_read_int
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	move	$a0, $v0
	li	$a1, -1
	bne	$a0, $a1, bne_else.17439
	li	$a0, 1
	li	$a1, -1
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	min_caml_create_array
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	move	$a0, $v0
	j	bne_cont.17440
bne_else.17439:
	sw	$a0, 20($sp)
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	min_caml_read_int
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	move	$a0, $v0
	li	$a1, -1
	bne	$a0, $a1, bne_else.17441
	li	$a0, 2
	li	$a1, -1
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	min_caml_create_array
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	move	$a0, $v0
	j	bne_cont.17442
bne_else.17441:
	li	$a1, 2
	sw	$a0, 24($sp)
	move	$a0, $a1
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	read_net_item.2801
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	move	$a0, $v0
	lw	$a1, 24($sp)
	sw	$a1, 4($a0)
bne_cont.17442:
	lw	$a1, 20($sp)
	sw	$a1, 0($a0)
bne_cont.17440:
	lw	$a1, 0($a0)
	li	$a2, -1
	bne	$a1, $a2, beq_else.17443
	jr	$ra
beq_else.17443:
	li	$a1, 332
	lw	$a2, 16($sp)
	sll	$a3, $a2, 2
	add	$a3, $a1, $a3
	sw	$a0, 0($a3)
	addi	$a0, $a2, 1
	sw	$a0, 28($sp)
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	min_caml_read_int
	subi	$sp, $sp, 40
	lw	$ra, 36($sp)
	move	$a0, $v0
	li	$a1, -1
	bne	$a0, $a1, bne_else.17445
	li	$a0, 1
	li	$a1, -1
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	min_caml_create_array
	subi	$sp, $sp, 40
	lw	$ra, 36($sp)
	move	$a0, $v0
	j	bne_cont.17446
bne_else.17445:
	li	$a1, 1
	sw	$a0, 32($sp)
	move	$a0, $a1
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	read_net_item.2801
	subi	$sp, $sp, 40
	lw	$ra, 36($sp)
	move	$a0, $v0
	lw	$a1, 32($sp)
	sw	$a1, 0($a0)
bne_cont.17446:
	lw	$a1, 0($a0)
	li	$a2, -1
	bne	$a1, $a2, beq_else.17447
	jr	$ra
beq_else.17447:
	li	$a1, 332
	lw	$a2, 28($sp)
	sll	$a3, $a2, 2
	add	$a3, $a1, $a3
	sw	$a0, 0($a3)
	addi	$a0, $a2, 1
	li	$a1, 0
	sw	$a0, 36($sp)
	move	$a0, $a1
	sw	$ra, 44($sp)
	addi	$sp, $sp, 48
	jal	read_net_item.2801
	subi	$sp, $sp, 48
	lw	$ra, 44($sp)
	move	$a0, $v0
	lw	$a1, 0($a0)
	li	$a2, -1
	bne	$a1, $a2, beq_else.17449
	jr	$ra
beq_else.17449:
	li	$a1, 332
	lw	$a2, 36($sp)
	sll	$a3, $a2, 2
	add	$a3, $a1, $a3
	sw	$a0, 0($a3)
	addi	$a0, $a2, 1
	j	read_and_network.2805
solver_rect_surface.2809:
	sll	$a5, $a2, 2
	add	$a5, $a1, $a5
	flw	$f3, 0($a5)
	li	$v0, 0
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f4, $v0
	fbne	$f3, $f4, fbne_else.17451
	li	$a5, 1
	j	fbne_cont.17452
fbne_else.17451:
	li	$a5, 0
fbne_cont.17452:
	li	$a6, 0
	bne	$a5, $a6, beq_else.17453
	lw	$a5, 16($a0)
	lw	$a0, 24($a0)
	sll	$a6, $a2, 2
	add	$a6, $a1, $a6
	flw	$f3, 0($a6)
	li	$v0, 0
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f4, $v0
	fblt	$f3, $f4, fbge_else.17454
	li	$a6, 0
	j	fbge_cont.17455
fbge_else.17454:
	li	$a6, 1
fbge_cont.17455:
	li	$a7, 0
	bne	$a0, $a7, bne_else.17456
	move	$a0, $a6
	j	bne_cont.17457
bne_else.17456:
	li	$a0, 0
	bne	$a6, $a0, bne_else.17458
	li	$a0, 1
	j	bne_cont.17459
bne_else.17458:
	li	$a0, 0
bne_cont.17459:
bne_cont.17457:
	sll	$a6, $a2, 2
	add	$a6, $a5, $a6
	flw	$f3, 0($a6)
	li	$a6, 0
	bne	$a0, $a6, bne_else.17460
	fneg	$f3, $f3
	j	bne_cont.17461
bne_else.17460:
bne_cont.17461:
	fsub	$f0, $f3, $f0
	sll	$a0, $a2, 2
	add	$a0, $a1, $a0
	flw	$f3, 0($a0)
	finv	$f3, $f3
	fmul	$f0, $f0, $f3
	sll	$a0, $a3, 2
	add	$a0, $a1, $a0
	flw	$f3, 0($a0)
	fmul	$f3, $f0, $f3
	fadd	$f1, $f3, $f1
	li	$v0, 0
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f3, $v0
	fblt	$f1, $f3, fbge_else.17462
	j	fbge_cont.17463
fbge_else.17462:
	fneg	$f1, $f1
fbge_cont.17463:
	sll	$a0, $a3, 2
	add	$a0, $a5, $a0
	flw	$f3, 0($a0)
	fsub	$f1, $f1, $f3
	li	$v0, 0
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f3, $v0
	fblt	$f1, $f3, fbge_else.17464
	li	$a0, 0
	j	fbge_cont.17465
fbge_else.17464:
	li	$a0, 1
fbge_cont.17465:
	li	$a2, 0
	bne	$a0, $a2, beq_else.17466
	li	$v0, 0
	jr	$ra
beq_else.17466:
	sll	$a0, $a4, 2
	add	$a0, $a1, $a0
	flw	$f1, 0($a0)
	fmul	$f1, $f0, $f1
	fadd	$f1, $f1, $f2
	li	$v0, 0
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fblt	$f1, $f2, fbge_else.17467
	j	fbge_cont.17468
fbge_else.17467:
	fneg	$f1, $f1
fbge_cont.17468:
	sll	$a0, $a4, 2
	add	$a0, $a5, $a0
	flw	$f2, 0($a0)
	fsub	$f1, $f1, $f2
	li	$v0, 0
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fblt	$f1, $f2, fbge_else.17469
	li	$a0, 0
	j	fbge_cont.17470
fbge_else.17469:
	li	$a0, 1
fbge_cont.17470:
	li	$a1, 0
	bne	$a0, $a1, beq_else.17471
	li	$v0, 0
	jr	$ra
beq_else.17471:
	li	$a0, 540
	fsw	$f0, 0($a0)
	li	$v0, 1
	jr	$ra
beq_else.17453:
	li	$v0, 0
	jr	$ra
solver_surface.2824:
	lw	$a0, 16($a0)
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
	li	$v0, 0
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f4, $v0
	fblt	$f4, $f3, fbge_else.17472
	li	$a1, 0
	j	fbge_cont.17473
fbge_else.17472:
	li	$a1, 1
fbge_cont.17473:
	li	$a2, 0
	bne	$a1, $a2, beq_else.17474
	li	$v0, 0
	jr	$ra
beq_else.17474:
	li	$a1, 540
	flw	$f4, 0($a0)
	fmul	$f0, $f4, $f0
	flw	$f4, 4($a0)
	fmul	$f1, $f4, $f1
	fadd	$f0, $f0, $f1
	flw	$f1, 8($a0)
	fmul	$f1, $f1, $f2
	fadd	$f0, $f0, $f1
	fneg	$f0, $f0
	finv	$f1, $f3
	fmul	$f0, $f0, $f1
	fsw	$f0, 0($a1)
	li	$v0, 1
	jr	$ra
quadratic.2830:
	fmul	$f3, $f0, $f0
	lw	$a1, 16($a0)
	flw	$f4, 0($a1)
	fmul	$f3, $f3, $f4
	fmul	$f4, $f1, $f1
	lw	$a1, 16($a0)
	flw	$f5, 4($a1)
	fmul	$f4, $f4, $f5
	fadd	$f3, $f3, $f4
	fmul	$f4, $f2, $f2
	lw	$a1, 16($a0)
	flw	$f5, 8($a1)
	fmul	$f4, $f4, $f5
	fadd	$f3, $f3, $f4
	lw	$a1, 12($a0)
	li	$a2, 0
	bne	$a1, $a2, beq_else.17475
	fmove	$fv, $f3
	jr $ra
beq_else.17475:
	fmul	$f4, $f1, $f2
	lw	$a1, 36($a0)
	flw	$f5, 0($a1)
	fmul	$f4, $f4, $f5
	fadd	$f3, $f3, $f4
	fmul	$f2, $f2, $f0
	lw	$a1, 36($a0)
	flw	$f4, 4($a1)
	fmul	$f2, $f2, $f4
	fadd	$f2, $f3, $f2
	fmul	$f0, $f0, $f1
	lw	$a0, 36($a0)
	flw	$f1, 8($a0)
	fmul	$f0, $f0, $f1
	fadd	$fv, $f2, $f0
	jr $ra
bilinear.2835:
	fmul	$f6, $f0, $f3
	lw	$a1, 16($a0)
	flw	$f7, 0($a1)
	fmul	$f6, $f6, $f7
	fmul	$f7, $f1, $f4
	lw	$a1, 16($a0)
	flw	$f8, 4($a1)
	fmul	$f7, $f7, $f8
	fadd	$f6, $f6, $f7
	fmul	$f7, $f2, $f5
	lw	$a1, 16($a0)
	flw	$f8, 8($a1)
	fmul	$f7, $f7, $f8
	fadd	$f6, $f6, $f7
	lw	$a1, 12($a0)
	li	$a2, 0
	bne	$a1, $a2, beq_else.17476
	fmove	$fv, $f6
	jr $ra
beq_else.17476:
	fmul	$f7, $f2, $f4
	fmul	$f8, $f1, $f5
	fadd	$f7, $f7, $f8
	lw	$a1, 36($a0)
	flw	$f8, 0($a1)
	fmul	$f7, $f7, $f8
	fmul	$f5, $f0, $f5
	fmul	$f2, $f2, $f3
	fadd	$f2, $f5, $f2
	lw	$a1, 36($a0)
	flw	$f5, 4($a1)
	fmul	$f2, $f2, $f5
	fadd	$f2, $f7, $f2
	fmul	$f0, $f0, $f4
	fmul	$f1, $f1, $f3
	fadd	$f0, $f0, $f1
	lw	$a0, 36($a0)
	flw	$f1, 8($a0)
	fmul	$f0, $f0, $f1
	fadd	$f0, $f2, $f0
	li	$v0, 16128
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	fmul	$f0, $f0, $f1
	fadd	$fv, $f6, $f0
	jr $ra
solver_second.2843:
	flw	$f3, 0($a1)
	flw	$f4, 4($a1)
	flw	$f5, 8($a1)
	fmul	$f6, $f3, $f3
	lw	$a2, 16($a0)
	flw	$f7, 0($a2)
	fmul	$f6, $f6, $f7
	fmul	$f7, $f4, $f4
	lw	$a2, 16($a0)
	flw	$f8, 4($a2)
	fmul	$f7, $f7, $f8
	fadd	$f6, $f6, $f7
	fmul	$f7, $f5, $f5
	lw	$a2, 16($a0)
	flw	$f8, 8($a2)
	fmul	$f7, $f7, $f8
	fadd	$f6, $f6, $f7
	lw	$a2, 12($a0)
	li	$a3, 0
	bne	$a2, $a3, bne_else.17477
	fmove	$f3, $f6
	j	bne_cont.17478
bne_else.17477:
	fmul	$f7, $f4, $f5
	lw	$a2, 36($a0)
	flw	$f8, 0($a2)
	fmul	$f7, $f7, $f8
	fadd	$f6, $f6, $f7
	fmul	$f5, $f5, $f3
	lw	$a2, 36($a0)
	flw	$f7, 4($a2)
	fmul	$f5, $f5, $f7
	fadd	$f5, $f6, $f5
	fmul	$f3, $f3, $f4
	lw	$a2, 36($a0)
	flw	$f4, 8($a2)
	fmul	$f3, $f3, $f4
	fadd	$f3, $f5, $f3
bne_cont.17478:
	li	$v0, 0
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f4, $v0
	fbne	$f3, $f4, fbne_else.17479
	li	$a2, 1
	j	fbne_cont.17480
fbne_else.17479:
	li	$a2, 0
fbne_cont.17480:
	li	$a3, 0
	bne	$a2, $a3, beq_else.17481
	flw	$f4, 0($a1)
	flw	$f5, 4($a1)
	flw	$f6, 8($a1)
	fsw	$f3, 0($sp)
	fsw	$f2, 8($sp)
	fsw	$f1, 16($sp)
	sw	$a0, 24($sp)
	fsw	$f0, 32($sp)
	fmove	$f3, $f0
	fmove	$f0, $f4
	fmove	$f4, $f1
	fmove	$f1, $f5
	fmove	$f5, $f2
	fmove	$f2, $f6
	sw	$ra, 44($sp)
	addi	$sp, $sp, 48
	jal	bilinear.2835
	subi	$sp, $sp, 48
	lw	$ra, 44($sp)
	fmove	$f0, $fv
	flw	$f1, 32($sp)
	fmul	$f2, $f1, $f1
	lw	$a0, 24($sp)
	lw	$a1, 16($a0)
	flw	$f3, 0($a1)
	fmul	$f2, $f2, $f3
	flw	$f3, 16($sp)
	fmul	$f4, $f3, $f3
	lw	$a1, 16($a0)
	flw	$f5, 4($a1)
	fmul	$f4, $f4, $f5
	fadd	$f2, $f2, $f4
	flw	$f4, 8($sp)
	fmul	$f5, $f4, $f4
	lw	$a1, 16($a0)
	flw	$f6, 8($a1)
	fmul	$f5, $f5, $f6
	fadd	$f2, $f2, $f5
	lw	$a1, 12($a0)
	li	$a2, 0
	bne	$a1, $a2, bne_else.17483
	fmove	$f1, $f2
	j	bne_cont.17484
bne_else.17483:
	fmul	$f5, $f3, $f4
	lw	$a1, 36($a0)
	flw	$f6, 0($a1)
	fmul	$f5, $f5, $f6
	fadd	$f2, $f2, $f5
	fmul	$f4, $f4, $f1
	lw	$a1, 36($a0)
	flw	$f5, 4($a1)
	fmul	$f4, $f4, $f5
	fadd	$f2, $f2, $f4
	fmul	$f1, $f1, $f3
	lw	$a1, 36($a0)
	flw	$f3, 8($a1)
	fmul	$f1, $f1, $f3
	fadd	$f1, $f2, $f1
bne_cont.17484:
	lw	$a1, 4($a0)
	li	$a2, 3
	bne	$a1, $a2, bne_else.17485
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fsub	$f1, $f1, $f2
	j	bne_cont.17486
bne_else.17485:
bne_cont.17486:
	fmul	$f2, $f0, $f0
	flw	$f3, 0($sp)
	fmul	$f1, $f3, $f1
	fsub	$f1, $f2, $f1
	li	$v0, 0
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fblt	$f2, $f1, fbge_else.17487
	li	$a1, 0
	j	fbge_cont.17488
fbge_else.17487:
	li	$a1, 1
fbge_cont.17488:
	li	$a2, 0
	bne	$a1, $a2, beq_else.17489
	li	$v0, 0
	jr	$ra
beq_else.17489:
	fsw	$f0, 40($sp)
	fmove	$f0, $f1
	sw	$ra, 52($sp)
	addi	$sp, $sp, 56
	jal	min_caml_sqrt
	subi	$sp, $sp, 56
	lw	$ra, 52($sp)
	fmove	$f0, $fv
	lw	$a0, 24($sp)
	lw	$a0, 24($a0)
	li	$a1, 0
	bne	$a0, $a1, bne_else.17490
	fneg	$f0, $f0
	j	bne_cont.17491
bne_else.17490:
bne_cont.17491:
	li	$a0, 540
	flw	$f1, 40($sp)
	fsub	$f0, $f0, $f1
	flw	$f1, 0($sp)
	finv	$f1, $f1
	fmul	$f0, $f0, $f1
	fsw	$f0, 0($a0)
	li	$v0, 1
	jr	$ra
beq_else.17481:
	li	$v0, 0
	jr	$ra
solver.2849:
	li	$a3, 48
	sll	$a0, $a0, 2
	add	$a0, $a3, $a0
	lw	$a0, 0($a0)
	flw	$f0, 0($a2)
	lw	$a3, 20($a0)
	flw	$f1, 0($a3)
	fsub	$f0, $f0, $f1
	flw	$f1, 4($a2)
	lw	$a3, 20($a0)
	flw	$f2, 4($a3)
	fsub	$f1, $f1, $f2
	flw	$f2, 8($a2)
	lw	$a2, 20($a0)
	flw	$f3, 8($a2)
	fsub	$f2, $f2, $f3
	lw	$a2, 4($a0)
	li	$a3, 1
	bne	$a2, $a3, beq_else.17492
	li	$a2, 0
	li	$a3, 1
	li	$a4, 2
	fsw	$f0, 0($sp)
	fsw	$f2, 8($sp)
	fsw	$f1, 16($sp)
	sw	$a1, 24($sp)
	sw	$a0, 28($sp)
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	solver_rect_surface.2809
	subi	$sp, $sp, 40
	lw	$ra, 36($sp)
	move	$a0, $v0
	li	$a1, 0
	bne	$a0, $a1, beq_else.17493
	li	$a2, 1
	li	$a3, 2
	li	$a4, 0
	flw	$f0, 16($sp)
	flw	$f1, 8($sp)
	flw	$f2, 0($sp)
	lw	$a0, 28($sp)
	lw	$a1, 24($sp)
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	solver_rect_surface.2809
	subi	$sp, $sp, 40
	lw	$ra, 36($sp)
	move	$a0, $v0
	li	$a1, 0
	bne	$a0, $a1, beq_else.17494
	li	$a2, 2
	li	$a3, 0
	li	$a4, 1
	flw	$f0, 8($sp)
	flw	$f1, 0($sp)
	flw	$f2, 16($sp)
	lw	$a0, 28($sp)
	lw	$a1, 24($sp)
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	solver_rect_surface.2809
	subi	$sp, $sp, 40
	lw	$ra, 36($sp)
	move	$a0, $v0
	li	$a1, 0
	bne	$a0, $a1, beq_else.17495
	li	$v0, 0
	jr	$ra
beq_else.17495:
	li	$v0, 3
	jr	$ra
beq_else.17494:
	li	$v0, 2
	jr	$ra
beq_else.17493:
	li	$v0, 1
	jr	$ra
beq_else.17492:
	li	$a3, 2
	bne	$a2, $a3, beq_else.17496
	lw	$a0, 16($a0)
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
	li	$v0, 0
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f4, $v0
	fblt	$f4, $f3, fbge_else.17497
	li	$a1, 0
	j	fbge_cont.17498
fbge_else.17497:
	li	$a1, 1
fbge_cont.17498:
	li	$a2, 0
	bne	$a1, $a2, beq_else.17499
	li	$v0, 0
	jr	$ra
beq_else.17499:
	li	$a1, 540
	flw	$f4, 0($a0)
	fmul	$f0, $f4, $f0
	flw	$f4, 4($a0)
	fmul	$f1, $f4, $f1
	fadd	$f0, $f0, $f1
	flw	$f1, 8($a0)
	fmul	$f1, $f1, $f2
	fadd	$f0, $f0, $f1
	fneg	$f0, $f0
	finv	$f1, $f3
	fmul	$f0, $f0, $f1
	fsw	$f0, 0($a1)
	li	$v0, 1
	jr	$ra
beq_else.17496:
	j	solver_second.2843
solver_rect_fast.2853:
	flw	$f3, 0($a2)
	fsub	$f3, $f3, $f0
	flw	$f4, 4($a2)
	fmul	$f3, $f3, $f4
	flw	$f4, 4($a1)
	fmul	$f4, $f3, $f4
	fadd	$f4, $f4, $f1
	li	$v0, 0
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f5, $v0
	fblt	$f4, $f5, fbge_else.17500
	j	fbge_cont.17501
fbge_else.17500:
	fneg	$f4, $f4
fbge_cont.17501:
	lw	$a3, 16($a0)
	flw	$f5, 4($a3)
	fsub	$f4, $f4, $f5
	li	$v0, 0
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f5, $v0
	fblt	$f4, $f5, fbge_else.17502
	li	$a3, 0
	j	fbge_cont.17503
fbge_else.17502:
	li	$a3, 1
fbge_cont.17503:
	li	$a4, 0
	bne	$a3, $a4, bne_else.17504
	li	$a3, 0
	j	bne_cont.17505
bne_else.17504:
	flw	$f4, 8($a1)
	fmul	$f4, $f3, $f4
	fadd	$f4, $f4, $f2
	li	$v0, 0
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f5, $v0
	fblt	$f4, $f5, fbge_else.17506
	j	fbge_cont.17507
fbge_else.17506:
	fneg	$f4, $f4
fbge_cont.17507:
	lw	$a3, 16($a0)
	flw	$f5, 8($a3)
	fsub	$f4, $f4, $f5
	li	$v0, 0
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f5, $v0
	fblt	$f4, $f5, fbge_else.17508
	li	$a3, 0
	j	fbge_cont.17509
fbge_else.17508:
	li	$a3, 1
fbge_cont.17509:
	li	$a4, 0
	bne	$a3, $a4, bne_else.17510
	li	$a3, 0
	j	bne_cont.17511
bne_else.17510:
	flw	$f4, 4($a2)
	li	$v0, 0
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f5, $v0
	fbne	$f4, $f5, fbne_else.17512
	li	$a3, 1
	j	fbne_cont.17513
fbne_else.17512:
	li	$a3, 0
fbne_cont.17513:
	li	$a4, 0
	bne	$a3, $a4, bne_else.17514
	li	$a3, 1
	j	bne_cont.17515
bne_else.17514:
	li	$a3, 0
bne_cont.17515:
bne_cont.17511:
bne_cont.17505:
	li	$a4, 0
	bne	$a3, $a4, beq_else.17516
	flw	$f3, 8($a2)
	fsub	$f3, $f3, $f1
	flw	$f4, 12($a2)
	fmul	$f3, $f3, $f4
	flw	$f4, 0($a1)
	fmul	$f4, $f3, $f4
	fadd	$f4, $f4, $f0
	li	$v0, 0
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f5, $v0
	fblt	$f4, $f5, fbge_else.17517
	j	fbge_cont.17518
fbge_else.17517:
	fneg	$f4, $f4
fbge_cont.17518:
	lw	$a3, 16($a0)
	flw	$f5, 0($a3)
	fsub	$f4, $f4, $f5
	li	$v0, 0
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f5, $v0
	fblt	$f4, $f5, fbge_else.17519
	li	$a3, 0
	j	fbge_cont.17520
fbge_else.17519:
	li	$a3, 1
fbge_cont.17520:
	li	$a4, 0
	bne	$a3, $a4, bne_else.17521
	li	$a3, 0
	j	bne_cont.17522
bne_else.17521:
	flw	$f4, 8($a1)
	fmul	$f4, $f3, $f4
	fadd	$f4, $f4, $f2
	li	$v0, 0
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f5, $v0
	fblt	$f4, $f5, fbge_else.17523
	j	fbge_cont.17524
fbge_else.17523:
	fneg	$f4, $f4
fbge_cont.17524:
	lw	$a3, 16($a0)
	flw	$f5, 8($a3)
	fsub	$f4, $f4, $f5
	li	$v0, 0
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f5, $v0
	fblt	$f4, $f5, fbge_else.17525
	li	$a3, 0
	j	fbge_cont.17526
fbge_else.17525:
	li	$a3, 1
fbge_cont.17526:
	li	$a4, 0
	bne	$a3, $a4, bne_else.17527
	li	$a3, 0
	j	bne_cont.17528
bne_else.17527:
	flw	$f4, 12($a2)
	li	$v0, 0
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f5, $v0
	fbne	$f4, $f5, fbne_else.17529
	li	$a3, 1
	j	fbne_cont.17530
fbne_else.17529:
	li	$a3, 0
fbne_cont.17530:
	li	$a4, 0
	bne	$a3, $a4, bne_else.17531
	li	$a3, 1
	j	bne_cont.17532
bne_else.17531:
	li	$a3, 0
bne_cont.17532:
bne_cont.17528:
bne_cont.17522:
	li	$a4, 0
	bne	$a3, $a4, beq_else.17533
	flw	$f3, 16($a2)
	fsub	$f2, $f3, $f2
	flw	$f3, 20($a2)
	fmul	$f2, $f2, $f3
	flw	$f3, 0($a1)
	fmul	$f3, $f2, $f3
	fadd	$f0, $f3, $f0
	li	$v0, 0
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f3, $v0
	fblt	$f0, $f3, fbge_else.17534
	j	fbge_cont.17535
fbge_else.17534:
	fneg	$f0, $f0
fbge_cont.17535:
	lw	$a3, 16($a0)
	flw	$f3, 0($a3)
	fsub	$f0, $f0, $f3
	li	$v0, 0
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f3, $v0
	fblt	$f0, $f3, fbge_else.17536
	li	$a3, 0
	j	fbge_cont.17537
fbge_else.17536:
	li	$a3, 1
fbge_cont.17537:
	li	$a4, 0
	bne	$a3, $a4, bne_else.17538
	li	$a0, 0
	j	bne_cont.17539
bne_else.17538:
	flw	$f0, 4($a1)
	fmul	$f0, $f2, $f0
	fadd	$f0, $f0, $f1
	li	$v0, 0
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	fblt	$f0, $f1, fbge_else.17540
	j	fbge_cont.17541
fbge_else.17540:
	fneg	$f0, $f0
fbge_cont.17541:
	lw	$a0, 16($a0)
	flw	$f1, 4($a0)
	fsub	$f0, $f0, $f1
	li	$v0, 0
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	fblt	$f0, $f1, fbge_else.17542
	li	$a0, 0
	j	fbge_cont.17543
fbge_else.17542:
	li	$a0, 1
fbge_cont.17543:
	li	$a1, 0
	bne	$a0, $a1, bne_else.17544
	li	$a0, 0
	j	bne_cont.17545
bne_else.17544:
	flw	$f0, 20($a2)
	li	$v0, 0
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	fbne	$f0, $f1, fbne_else.17546
	li	$a0, 1
	j	fbne_cont.17547
fbne_else.17546:
	li	$a0, 0
fbne_cont.17547:
	li	$a1, 0
	bne	$a0, $a1, bne_else.17548
	li	$a0, 1
	j	bne_cont.17549
bne_else.17548:
	li	$a0, 0
bne_cont.17549:
bne_cont.17545:
bne_cont.17539:
	li	$a1, 0
	bne	$a0, $a1, beq_else.17550
	li	$v0, 0
	jr	$ra
beq_else.17550:
	li	$a0, 540
	fsw	$f2, 0($a0)
	li	$v0, 3
	jr	$ra
beq_else.17533:
	li	$a0, 540
	fsw	$f3, 0($a0)
	li	$v0, 2
	jr	$ra
beq_else.17516:
	li	$a0, 540
	fsw	$f3, 0($a0)
	li	$v0, 1
	jr	$ra
solver_second_fast.2866:
	flw	$f3, 0($a1)
	li	$v0, 0
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f4, $v0
	fbne	$f3, $f4, fbne_else.17551
	li	$a2, 1
	j	fbne_cont.17552
fbne_else.17551:
	li	$a2, 0
fbne_cont.17552:
	li	$a3, 0
	bne	$a2, $a3, beq_else.17553
	flw	$f4, 4($a1)
	fmul	$f4, $f4, $f0
	flw	$f5, 8($a1)
	fmul	$f5, $f5, $f1
	fadd	$f4, $f4, $f5
	flw	$f5, 12($a1)
	fmul	$f5, $f5, $f2
	fadd	$f4, $f4, $f5
	fmul	$f5, $f0, $f0
	lw	$a2, 16($a0)
	flw	$f6, 0($a2)
	fmul	$f5, $f5, $f6
	fmul	$f6, $f1, $f1
	lw	$a2, 16($a0)
	flw	$f7, 4($a2)
	fmul	$f6, $f6, $f7
	fadd	$f5, $f5, $f6
	fmul	$f6, $f2, $f2
	lw	$a2, 16($a0)
	flw	$f7, 8($a2)
	fmul	$f6, $f6, $f7
	fadd	$f5, $f5, $f6
	lw	$a2, 12($a0)
	li	$a3, 0
	bne	$a2, $a3, bne_else.17554
	fmove	$f0, $f5
	j	bne_cont.17555
bne_else.17554:
	fmul	$f6, $f1, $f2
	lw	$a2, 36($a0)
	flw	$f7, 0($a2)
	fmul	$f6, $f6, $f7
	fadd	$f5, $f5, $f6
	fmul	$f2, $f2, $f0
	lw	$a2, 36($a0)
	flw	$f6, 4($a2)
	fmul	$f2, $f2, $f6
	fadd	$f2, $f5, $f2
	fmul	$f0, $f0, $f1
	lw	$a2, 36($a0)
	flw	$f1, 8($a2)
	fmul	$f0, $f0, $f1
	fadd	$f0, $f2, $f0
bne_cont.17555:
	lw	$a2, 4($a0)
	li	$a3, 3
	bne	$a2, $a3, bne_else.17556
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	fsub	$f0, $f0, $f1
	j	bne_cont.17557
bne_else.17556:
bne_cont.17557:
	fmul	$f1, $f4, $f4
	fmul	$f0, $f3, $f0
	fsub	$f0, $f1, $f0
	li	$v0, 0
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	fblt	$f1, $f0, fbge_else.17558
	li	$a2, 0
	j	fbge_cont.17559
fbge_else.17558:
	li	$a2, 1
fbge_cont.17559:
	li	$a3, 0
	bne	$a2, $a3, beq_else.17560
	li	$v0, 0
	jr	$ra
beq_else.17560:
	lw	$a0, 24($a0)
	li	$a2, 0
	bne	$a0, $a2, bne_else.17561
	li	$a0, 540
	sw	$a0, 0($sp)
	sw	$a1, 4($sp)
	fsw	$f4, 8($sp)
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	min_caml_sqrt
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	fmove	$f0, $fv
	flw	$f1, 8($sp)
	fsub	$f0, $f1, $f0
	lw	$a0, 4($sp)
	flw	$f1, 16($a0)
	fmul	$f0, $f0, $f1
	lw	$a0, 0($sp)
	fsw	$f0, 0($a0)
	j	bne_cont.17562
bne_else.17561:
	li	$a0, 540
	sw	$a0, 16($sp)
	sw	$a1, 4($sp)
	fsw	$f4, 8($sp)
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	min_caml_sqrt
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	fmove	$f0, $fv
	flw	$f1, 8($sp)
	fadd	$f0, $f1, $f0
	lw	$a0, 4($sp)
	flw	$f1, 16($a0)
	fmul	$f0, $f0, $f1
	lw	$a0, 16($sp)
	fsw	$f0, 0($a0)
bne_cont.17562:
	li	$v0, 1
	jr	$ra
beq_else.17553:
	li	$v0, 0
	jr	$ra
solver_second_fast2.2883:
	flw	$f3, 0($a1)
	li	$v0, 0
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f4, $v0
	fbne	$f3, $f4, fbne_else.17563
	li	$a3, 1
	j	fbne_cont.17564
fbne_else.17563:
	li	$a3, 0
fbne_cont.17564:
	li	$a4, 0
	bne	$a3, $a4, beq_else.17565
	flw	$f4, 4($a1)
	fmul	$f0, $f4, $f0
	flw	$f4, 8($a1)
	fmul	$f1, $f4, $f1
	fadd	$f0, $f0, $f1
	flw	$f1, 12($a1)
	fmul	$f1, $f1, $f2
	fadd	$f0, $f0, $f1
	flw	$f1, 12($a2)
	fmul	$f2, $f0, $f0
	fmul	$f1, $f3, $f1
	fsub	$f1, $f2, $f1
	li	$v0, 0
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fblt	$f2, $f1, fbge_else.17566
	li	$a2, 0
	j	fbge_cont.17567
fbge_else.17566:
	li	$a2, 1
fbge_cont.17567:
	li	$a3, 0
	bne	$a2, $a3, beq_else.17568
	li	$v0, 0
	jr	$ra
beq_else.17568:
	lw	$a0, 24($a0)
	li	$a2, 0
	bne	$a0, $a2, bne_else.17569
	li	$a0, 540
	sw	$a0, 0($sp)
	sw	$a1, 4($sp)
	fsw	$f0, 8($sp)
	fmove	$f0, $f1
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	min_caml_sqrt
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	fmove	$f0, $fv
	flw	$f1, 8($sp)
	fsub	$f0, $f1, $f0
	lw	$a0, 4($sp)
	flw	$f1, 16($a0)
	fmul	$f0, $f0, $f1
	lw	$a0, 0($sp)
	fsw	$f0, 0($a0)
	j	bne_cont.17570
bne_else.17569:
	li	$a0, 540
	sw	$a0, 16($sp)
	sw	$a1, 4($sp)
	fsw	$f0, 8($sp)
	fmove	$f0, $f1
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	min_caml_sqrt
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	fmove	$f0, $fv
	flw	$f1, 8($sp)
	fadd	$f0, $f1, $f0
	lw	$a0, 4($sp)
	flw	$f1, 16($a0)
	fmul	$f0, $f0, $f1
	lw	$a0, 16($sp)
	fsw	$f0, 0($a0)
bne_cont.17570:
	li	$v0, 1
	jr	$ra
beq_else.17565:
	li	$v0, 0
	jr	$ra
solver_fast2.2890:
	li	$a2, 48
	sll	$a3, $a0, 2
	add	$a3, $a2, $a3
	lw	$a2, 0($a3)
	lw	$a3, 40($a2)
	flw	$f0, 0($a3)
	flw	$f1, 4($a3)
	flw	$f2, 8($a3)
	lw	$a4, 4($a1)
	sll	$a0, $a0, 2
	add	$a0, $a4, $a0
	lw	$a0, 0($a0)
	lw	$a4, 4($a2)
	li	$a5, 1
	bne	$a4, $a5, beq_else.17571
	lw	$a1, 0($a1)
	move	$a25, $a2
	move	$a2, $a0
	move	$a0, $a25
	j	solver_rect_fast.2853
beq_else.17571:
	li	$a1, 2
	bne	$a4, $a1, beq_else.17572
	flw	$f0, 0($a0)
	li	$v0, 0
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	fblt	$f0, $f1, fbge_else.17573
	li	$a1, 0
	j	fbge_cont.17574
fbge_else.17573:
	li	$a1, 1
fbge_cont.17574:
	li	$a2, 0
	bne	$a1, $a2, beq_else.17575
	li	$v0, 0
	jr	$ra
beq_else.17575:
	li	$a1, 540
	flw	$f0, 0($a0)
	flw	$f1, 12($a3)
	fmul	$f0, $f0, $f1
	fsw	$f0, 0($a1)
	li	$v0, 1
	jr	$ra
beq_else.17572:
	move	$a1, $a0
	move	$a0, $a2
	move	$a2, $a3
	j	solver_second_fast2.2883
setup_rect_table.2893:
	li	$a2, 6
	li	$v0, 0
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f0, $v0
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
	li	$v0, 0
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	fbne	$f0, $f1, fbne_else.17576
	li	$a2, 1
	j	fbne_cont.17577
fbne_else.17576:
	li	$a2, 0
fbne_cont.17577:
	li	$a3, 0
	bne	$a2, $a3, bne_else.17578
	lw	$a2, 0($sp)
	lw	$a3, 24($a2)
	flw	$f0, 0($a1)
	li	$v0, 0
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	fblt	$f0, $f1, fbge_else.17580
	li	$a4, 0
	j	fbge_cont.17581
fbge_else.17580:
	li	$a4, 1
fbge_cont.17581:
	li	$a5, 0
	bne	$a3, $a5, bne_else.17582
	move	$a3, $a4
	j	bne_cont.17583
bne_else.17582:
	li	$a3, 0
	bne	$a4, $a3, bne_else.17584
	li	$a3, 1
	j	bne_cont.17585
bne_else.17584:
	li	$a3, 0
bne_cont.17585:
bne_cont.17583:
	lw	$a4, 16($a2)
	flw	$f0, 0($a4)
	li	$a4, 0
	bne	$a3, $a4, bne_else.17586
	fneg	$f0, $f0
	j	bne_cont.17587
bne_else.17586:
bne_cont.17587:
	fsw	$f0, 0($a0)
	flw	$f0, 0($a1)
	finv	$f0, $f0
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	fmul	$f0, $f1, $f0
	fsw	$f0, 4($a0)
	j	bne_cont.17579
bne_else.17578:
	li	$v0, 0
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f0, $v0
	fsw	$f0, 4($a0)
bne_cont.17579:
	flw	$f0, 4($a1)
	li	$v0, 0
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	fbne	$f0, $f1, fbne_else.17588
	li	$a2, 1
	j	fbne_cont.17589
fbne_else.17588:
	li	$a2, 0
fbne_cont.17589:
	li	$a3, 0
	bne	$a2, $a3, bne_else.17590
	lw	$a2, 0($sp)
	lw	$a3, 24($a2)
	flw	$f0, 4($a1)
	li	$v0, 0
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	fblt	$f0, $f1, fbge_else.17592
	li	$a4, 0
	j	fbge_cont.17593
fbge_else.17592:
	li	$a4, 1
fbge_cont.17593:
	li	$a5, 0
	bne	$a3, $a5, bne_else.17594
	move	$a3, $a4
	j	bne_cont.17595
bne_else.17594:
	li	$a3, 0
	bne	$a4, $a3, bne_else.17596
	li	$a3, 1
	j	bne_cont.17597
bne_else.17596:
	li	$a3, 0
bne_cont.17597:
bne_cont.17595:
	lw	$a4, 16($a2)
	flw	$f0, 4($a4)
	li	$a4, 0
	bne	$a3, $a4, bne_else.17598
	fneg	$f0, $f0
	j	bne_cont.17599
bne_else.17598:
bne_cont.17599:
	fsw	$f0, 8($a0)
	flw	$f0, 4($a1)
	finv	$f0, $f0
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	fmul	$f0, $f1, $f0
	fsw	$f0, 12($a0)
	j	bne_cont.17591
bne_else.17590:
	li	$v0, 0
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f0, $v0
	fsw	$f0, 12($a0)
bne_cont.17591:
	flw	$f0, 8($a1)
	li	$v0, 0
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	fbne	$f0, $f1, fbne_else.17600
	li	$a2, 1
	j	fbne_cont.17601
fbne_else.17600:
	li	$a2, 0
fbne_cont.17601:
	li	$a3, 0
	bne	$a2, $a3, bne_else.17602
	lw	$a2, 0($sp)
	lw	$a3, 24($a2)
	flw	$f0, 8($a1)
	li	$v0, 0
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	fblt	$f0, $f1, fbge_else.17604
	li	$a4, 0
	j	fbge_cont.17605
fbge_else.17604:
	li	$a4, 1
fbge_cont.17605:
	li	$a5, 0
	bne	$a3, $a5, bne_else.17606
	move	$a3, $a4
	j	bne_cont.17607
bne_else.17606:
	li	$a3, 0
	bne	$a4, $a3, bne_else.17608
	li	$a3, 1
	j	bne_cont.17609
bne_else.17608:
	li	$a3, 0
bne_cont.17609:
bne_cont.17607:
	lw	$a2, 16($a2)
	flw	$f0, 8($a2)
	li	$a2, 0
	bne	$a3, $a2, bne_else.17610
	fneg	$f0, $f0
	j	bne_cont.17611
bne_else.17610:
bne_cont.17611:
	fsw	$f0, 16($a0)
	flw	$f0, 8($a1)
	finv	$f0, $f0
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	fmul	$f0, $f1, $f0
	fsw	$f0, 20($a0)
	j	bne_cont.17603
bne_else.17602:
	li	$v0, 0
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f0, $v0
	fsw	$f0, 20($a0)
bne_cont.17603:
	move	$v0, $a0
	jr	$ra
setup_surface_table.2896:
	li	$a2, 4
	li	$v0, 0
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f0, $v0
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
	li	$v0, 0
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	fblt	$f1, $f0, fbge_else.17612
	li	$a1, 0
	j	fbge_cont.17613
fbge_else.17612:
	li	$a1, 1
fbge_cont.17613:
	li	$a3, 0
	bne	$a1, $a3, bne_else.17614
	li	$v0, 0
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f0, $v0
	fsw	$f0, 0($a0)
	j	bne_cont.17615
bne_else.17614:
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
bne_cont.17615:
	move	$v0, $a0
	jr	$ra
setup_second_table.2899:
	li	$a2, 5
	li	$v0, 0
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f0, $v0
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
	fmul	$f3, $f0, $f0
	lw	$a2, 0($sp)
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
	bne	$a3, $a4, bne_else.17616
	fmove	$f0, $f3
	j	bne_cont.17617
bne_else.17616:
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
bne_cont.17617:
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
	bne	$a3, $a4, bne_else.17618
	fsw	$f1, 4($a0)
	fsw	$f2, 8($a0)
	fsw	$f3, 12($a0)
	j	bne_cont.17619
bne_else.17618:
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
bne_cont.17619:
	li	$v0, 0
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	fbne	$f0, $f1, fbne_else.17620
	li	$a1, 1
	j	fbne_cont.17621
fbne_else.17620:
	li	$a1, 0
fbne_cont.17621:
	li	$a2, 0
	bne	$a1, $a2, bne_else.17622
	finv	$f0, $f0
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	fmul	$f0, $f1, $f0
	fsw	$f0, 16($a0)
	j	bne_cont.17623
bne_else.17622:
bne_cont.17623:
	move	$v0, $a0
	jr	$ra
iter_setup_dirvec_constants.2902:
	li	$a2, 0
	blt	$a1, $a2, bge_else.17624
	li	$a2, 48
	sll	$a3, $a1, 2
	add	$a3, $a2, $a3
	lw	$a2, 0($a3)
	lw	$a3, 4($a0)
	lw	$a4, 0($a0)
	lw	$a5, 4($a2)
	li	$a6, 1
	sw	$a0, 0($sp)
	bne	$a5, $a6, bne_else.17625
	sw	$a3, 4($sp)
	sw	$a1, 8($sp)
	move	$a1, $a2
	move	$a0, $a4
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	setup_rect_table.2893
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	move	$a0, $v0
	lw	$a1, 8($sp)
	sll	$a2, $a1, 2
	lw	$a3, 4($sp)
	add	$a2, $a3, $a2
	sw	$a0, 0($a2)
	j	bne_cont.17626
bne_else.17625:
	li	$a6, 2
	bne	$a5, $a6, bne_else.17627
	sw	$a3, 4($sp)
	sw	$a1, 8($sp)
	move	$a1, $a2
	move	$a0, $a4
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	setup_surface_table.2896
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	move	$a0, $v0
	lw	$a1, 8($sp)
	sll	$a2, $a1, 2
	lw	$a3, 4($sp)
	add	$a2, $a3, $a2
	sw	$a0, 0($a2)
	j	bne_cont.17628
bne_else.17627:
	sw	$a3, 4($sp)
	sw	$a1, 8($sp)
	move	$a1, $a2
	move	$a0, $a4
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	setup_second_table.2899
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	move	$a0, $v0
	lw	$a1, 8($sp)
	sll	$a2, $a1, 2
	lw	$a3, 4($sp)
	add	$a2, $a3, $a2
	sw	$a0, 0($a2)
bne_cont.17628:
bne_cont.17626:
	subi	$a0, $a1, 1
	li	$a1, 0
	blt	$a0, $a1, bge_else.17629
	li	$a1, 48
	sll	$a2, $a0, 2
	add	$a2, $a1, $a2
	lw	$a1, 0($a2)
	lw	$a2, 0($sp)
	lw	$a3, 4($a2)
	lw	$a4, 0($a2)
	lw	$a5, 4($a1)
	li	$a6, 1
	bne	$a5, $a6, bne_else.17630
	sw	$a3, 12($sp)
	sw	$a0, 16($sp)
	move	$a0, $a4
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	setup_rect_table.2893
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	move	$a0, $v0
	lw	$a1, 16($sp)
	sll	$a2, $a1, 2
	lw	$a3, 12($sp)
	add	$a2, $a3, $a2
	sw	$a0, 0($a2)
	j	bne_cont.17631
bne_else.17630:
	li	$a6, 2
	bne	$a5, $a6, bne_else.17632
	sw	$a3, 12($sp)
	sw	$a0, 16($sp)
	move	$a0, $a4
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	setup_surface_table.2896
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	move	$a0, $v0
	lw	$a1, 16($sp)
	sll	$a2, $a1, 2
	lw	$a3, 12($sp)
	add	$a2, $a3, $a2
	sw	$a0, 0($a2)
	j	bne_cont.17633
bne_else.17632:
	sw	$a3, 12($sp)
	sw	$a0, 16($sp)
	move	$a0, $a4
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	setup_second_table.2899
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	move	$a0, $v0
	lw	$a1, 16($sp)
	sll	$a2, $a1, 2
	lw	$a3, 12($sp)
	add	$a2, $a3, $a2
	sw	$a0, 0($a2)
bne_cont.17633:
bne_cont.17631:
	subi	$a1, $a1, 1
	lw	$a0, 0($sp)
	j	iter_setup_dirvec_constants.2902
bge_else.17629:
	jr	$ra
bge_else.17624:
	jr	$ra
setup_startp_constants.2907:
	li	$a2, 0
	blt	$a1, $a2, bge_else.17636
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
	bne	$a4, $a5, bne_else.17637
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
	j	bne_cont.17638
bne_else.17637:
	li	$a5, 2
	blt	$a5, $a4, bge_else.17639
	j	bge_cont.17640
bge_else.17639:
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
	bne	$a5, $a6, bne_else.17641
	fmove	$f0, $f3
	j	bne_cont.17642
bne_else.17641:
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
bne_cont.17642:
	li	$a2, 3
	bne	$a4, $a2, bne_else.17643
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	fsub	$f0, $f0, $f1
	j	bne_cont.17644
bne_else.17643:
bne_cont.17644:
	fsw	$f0, 12($a3)
bge_cont.17640:
bne_cont.17638:
	subi	$a1, $a1, 1
	j	setup_startp_constants.2907
bge_else.17636:
	jr	$ra
is_rect_outside.2912:
	li	$v0, 0
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f3, $v0
	fblt	$f0, $f3, fbge_else.17646
	j	fbge_cont.17647
fbge_else.17646:
	fneg	$f0, $f0
fbge_cont.17647:
	lw	$a1, 16($a0)
	flw	$f3, 0($a1)
	fsub	$f0, $f0, $f3
	li	$v0, 0
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f3, $v0
	fblt	$f0, $f3, fbge_else.17648
	li	$a1, 0
	j	fbge_cont.17649
fbge_else.17648:
	li	$a1, 1
fbge_cont.17649:
	li	$a2, 0
	bne	$a1, $a2, bne_else.17650
	li	$a1, 0
	j	bne_cont.17651
bne_else.17650:
	li	$v0, 0
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f0, $v0
	fblt	$f1, $f0, fbge_else.17652
	fmove	$f0, $f1
	j	fbge_cont.17653
fbge_else.17652:
	fneg	$f0, $f1
fbge_cont.17653:
	lw	$a1, 16($a0)
	flw	$f1, 4($a1)
	fsub	$f0, $f0, $f1
	li	$v0, 0
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	fblt	$f0, $f1, fbge_else.17654
	li	$a1, 0
	j	fbge_cont.17655
fbge_else.17654:
	li	$a1, 1
fbge_cont.17655:
	li	$a2, 0
	bne	$a1, $a2, bne_else.17656
	li	$a1, 0
	j	bne_cont.17657
bne_else.17656:
	li	$v0, 0
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f0, $v0
	fblt	$f2, $f0, fbge_else.17658
	fmove	$f0, $f2
	j	fbge_cont.17659
fbge_else.17658:
	fneg	$f0, $f2
fbge_cont.17659:
	lw	$a1, 16($a0)
	flw	$f1, 8($a1)
	fsub	$f0, $f0, $f1
	li	$v0, 0
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	fblt	$f0, $f1, fbge_else.17660
	li	$a1, 0
	j	fbge_cont.17661
fbge_else.17660:
	li	$a1, 1
fbge_cont.17661:
bne_cont.17657:
bne_cont.17651:
	li	$a2, 0
	bne	$a1, $a2, beq_else.17662
	lw	$a0, 24($a0)
	li	$a1, 0
	bne	$a0, $a1, beq_else.17663
	li	$v0, 1
	jr	$ra
beq_else.17663:
	li	$v0, 0
	jr	$ra
beq_else.17662:
	lw	$a0, 24($a0)
	move	$v0, $a0
	jr	$ra
is_second_outside.2922:
	fmul	$f3, $f0, $f0
	lw	$a1, 16($a0)
	flw	$f4, 0($a1)
	fmul	$f3, $f3, $f4
	fmul	$f4, $f1, $f1
	lw	$a1, 16($a0)
	flw	$f5, 4($a1)
	fmul	$f4, $f4, $f5
	fadd	$f3, $f3, $f4
	fmul	$f4, $f2, $f2
	lw	$a1, 16($a0)
	flw	$f5, 8($a1)
	fmul	$f4, $f4, $f5
	fadd	$f3, $f3, $f4
	lw	$a1, 12($a0)
	li	$a2, 0
	bne	$a1, $a2, bne_else.17664
	fmove	$f0, $f3
	j	bne_cont.17665
bne_else.17664:
	fmul	$f4, $f1, $f2
	lw	$a1, 36($a0)
	flw	$f5, 0($a1)
	fmul	$f4, $f4, $f5
	fadd	$f3, $f3, $f4
	fmul	$f2, $f2, $f0
	lw	$a1, 36($a0)
	flw	$f4, 4($a1)
	fmul	$f2, $f2, $f4
	fadd	$f2, $f3, $f2
	fmul	$f0, $f0, $f1
	lw	$a1, 36($a0)
	flw	$f1, 8($a1)
	fmul	$f0, $f0, $f1
	fadd	$f0, $f2, $f0
bne_cont.17665:
	lw	$a1, 4($a0)
	li	$a2, 3
	bne	$a1, $a2, bne_else.17666
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	fsub	$f0, $f0, $f1
	j	bne_cont.17667
bne_else.17666:
bne_cont.17667:
	lw	$a0, 24($a0)
	li	$v0, 0
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	fblt	$f0, $f1, fbge_else.17668
	li	$a1, 0
	j	fbge_cont.17669
fbge_else.17668:
	li	$a1, 1
fbge_cont.17669:
	li	$a2, 0
	bne	$a0, $a2, bne_else.17670
	move	$a0, $a1
	j	bne_cont.17671
bne_else.17670:
	li	$a0, 0
	bne	$a1, $a0, bne_else.17672
	li	$a0, 1
	j	bne_cont.17673
bne_else.17672:
	li	$a0, 0
bne_cont.17673:
bne_cont.17671:
	li	$a1, 0
	bne	$a0, $a1, beq_else.17674
	li	$v0, 1
	jr	$ra
beq_else.17674:
	li	$v0, 0
	jr	$ra
is_outside.2927:
	lw	$a1, 20($a0)
	flw	$f3, 0($a1)
	fsub	$f0, $f0, $f3
	lw	$a1, 20($a0)
	flw	$f3, 4($a1)
	fsub	$f1, $f1, $f3
	lw	$a1, 20($a0)
	flw	$f3, 8($a1)
	fsub	$f2, $f2, $f3
	lw	$a1, 4($a0)
	li	$a2, 1
	bne	$a1, $a2, beq_else.17675
	li	$v0, 0
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f3, $v0
	fblt	$f0, $f3, fbge_else.17676
	j	fbge_cont.17677
fbge_else.17676:
	fneg	$f0, $f0
fbge_cont.17677:
	lw	$a1, 16($a0)
	flw	$f3, 0($a1)
	fsub	$f0, $f0, $f3
	li	$v0, 0
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f3, $v0
	fblt	$f0, $f3, fbge_else.17678
	li	$a1, 0
	j	fbge_cont.17679
fbge_else.17678:
	li	$a1, 1
fbge_cont.17679:
	li	$a2, 0
	bne	$a1, $a2, bne_else.17680
	li	$a1, 0
	j	bne_cont.17681
bne_else.17680:
	li	$v0, 0
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f0, $v0
	fblt	$f1, $f0, fbge_else.17682
	fmove	$f0, $f1
	j	fbge_cont.17683
fbge_else.17682:
	fneg	$f0, $f1
fbge_cont.17683:
	lw	$a1, 16($a0)
	flw	$f1, 4($a1)
	fsub	$f0, $f0, $f1
	li	$v0, 0
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	fblt	$f0, $f1, fbge_else.17684
	li	$a1, 0
	j	fbge_cont.17685
fbge_else.17684:
	li	$a1, 1
fbge_cont.17685:
	li	$a2, 0
	bne	$a1, $a2, bne_else.17686
	li	$a1, 0
	j	bne_cont.17687
bne_else.17686:
	li	$v0, 0
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f0, $v0
	fblt	$f2, $f0, fbge_else.17688
	fmove	$f0, $f2
	j	fbge_cont.17689
fbge_else.17688:
	fneg	$f0, $f2
fbge_cont.17689:
	lw	$a1, 16($a0)
	flw	$f1, 8($a1)
	fsub	$f0, $f0, $f1
	li	$v0, 0
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	fblt	$f0, $f1, fbge_else.17690
	li	$a1, 0
	j	fbge_cont.17691
fbge_else.17690:
	li	$a1, 1
fbge_cont.17691:
bne_cont.17687:
bne_cont.17681:
	li	$a2, 0
	bne	$a1, $a2, beq_else.17692
	lw	$a0, 24($a0)
	li	$a1, 0
	bne	$a0, $a1, beq_else.17693
	li	$v0, 1
	jr	$ra
beq_else.17693:
	li	$v0, 0
	jr	$ra
beq_else.17692:
	lw	$a0, 24($a0)
	move	$v0, $a0
	jr	$ra
beq_else.17675:
	li	$a2, 2
	bne	$a1, $a2, beq_else.17694
	lw	$a1, 16($a0)
	flw	$f3, 0($a1)
	fmul	$f0, $f3, $f0
	flw	$f3, 4($a1)
	fmul	$f1, $f3, $f1
	fadd	$f0, $f0, $f1
	flw	$f1, 8($a1)
	fmul	$f1, $f1, $f2
	fadd	$f0, $f0, $f1
	lw	$a0, 24($a0)
	li	$v0, 0
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	fblt	$f0, $f1, fbge_else.17695
	li	$a1, 0
	j	fbge_cont.17696
fbge_else.17695:
	li	$a1, 1
fbge_cont.17696:
	li	$a2, 0
	bne	$a0, $a2, bne_else.17697
	move	$a0, $a1
	j	bne_cont.17698
bne_else.17697:
	li	$a0, 0
	bne	$a1, $a0, bne_else.17699
	li	$a0, 1
	j	bne_cont.17700
bne_else.17699:
	li	$a0, 0
bne_cont.17700:
bne_cont.17698:
	li	$a1, 0
	bne	$a0, $a1, beq_else.17701
	li	$v0, 1
	jr	$ra
beq_else.17701:
	li	$v0, 0
	jr	$ra
beq_else.17694:
	sw	$a0, 0($sp)
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	quadratic.2830
	subi	$sp, $sp, 8
	lw	$ra, 4($sp)
	fmove	$f0, $fv
	lw	$a0, 0($sp)
	lw	$a1, 4($a0)
	li	$a2, 3
	bne	$a1, $a2, bne_else.17702
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	fsub	$f0, $f0, $f1
	j	bne_cont.17703
bne_else.17702:
bne_cont.17703:
	lw	$a0, 24($a0)
	li	$v0, 0
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	fblt	$f0, $f1, fbge_else.17704
	li	$a1, 0
	j	fbge_cont.17705
fbge_else.17704:
	li	$a1, 1
fbge_cont.17705:
	li	$a2, 0
	bne	$a0, $a2, bne_else.17706
	move	$a0, $a1
	j	bne_cont.17707
bne_else.17706:
	li	$a0, 0
	bne	$a1, $a0, bne_else.17708
	li	$a0, 1
	j	bne_cont.17709
bne_else.17708:
	li	$a0, 0
bne_cont.17709:
bne_cont.17707:
	li	$a1, 0
	bne	$a0, $a1, beq_else.17710
	li	$v0, 1
	jr	$ra
beq_else.17710:
	li	$v0, 0
	jr	$ra
check_all_inside.2932:
	sll	$a2, $a0, 2
	add	$a2, $a1, $a2
	lw	$a2, 0($a2)
	li	$a3, -1
	bne	$a2, $a3, beq_else.17711
	li	$v0, 1
	jr	$ra
beq_else.17711:
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
	fsw	$f2, 0($sp)
	fsw	$f1, 8($sp)
	fsw	$f0, 16($sp)
	sw	$a1, 24($sp)
	sw	$a0, 28($sp)
	bne	$a3, $a4, bne_else.17712
	move	$a0, $a2
	fmove	$f2, $f5
	fmove	$f1, $f4
	fmove	$f0, $f3
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	is_rect_outside.2912
	subi	$sp, $sp, 40
	lw	$ra, 36($sp)
	move	$a0, $v0
	j	bne_cont.17713
bne_else.17712:
	li	$a4, 2
	bne	$a3, $a4, bne_else.17714
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
	li	$v0, 0
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f4, $v0
	fblt	$f3, $f4, fbge_else.17716
	li	$a3, 0
	j	fbge_cont.17717
fbge_else.17716:
	li	$a3, 1
fbge_cont.17717:
	li	$a4, 0
	bne	$a2, $a4, bne_else.17718
	move	$a2, $a3
	j	bne_cont.17719
bne_else.17718:
	li	$a2, 0
	bne	$a3, $a2, bne_else.17720
	li	$a2, 1
	j	bne_cont.17721
bne_else.17720:
	li	$a2, 0
bne_cont.17721:
bne_cont.17719:
	li	$a3, 0
	bne	$a2, $a3, bne_else.17722
	li	$a0, 1
	j	bne_cont.17723
bne_else.17722:
	li	$a0, 0
bne_cont.17723:
	j	bne_cont.17715
bne_else.17714:
	move	$a0, $a2
	fmove	$f2, $f5
	fmove	$f1, $f4
	fmove	$f0, $f3
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	is_second_outside.2922
	subi	$sp, $sp, 40
	lw	$ra, 36($sp)
	move	$a0, $v0
bne_cont.17715:
bne_cont.17713:
	li	$a1, 0
	bne	$a0, $a1, beq_else.17724
	lw	$a0, 28($sp)
	addi	$a0, $a0, 1
	sll	$a1, $a0, 2
	lw	$a2, 24($sp)
	add	$a1, $a2, $a1
	lw	$a1, 0($a1)
	li	$a3, -1
	bne	$a1, $a3, beq_else.17725
	li	$v0, 1
	jr	$ra
beq_else.17725:
	li	$a3, 48
	sll	$a1, $a1, 2
	add	$a1, $a3, $a1
	lw	$a1, 0($a1)
	flw	$f0, 16($sp)
	flw	$f1, 8($sp)
	flw	$f2, 0($sp)
	sw	$a0, 32($sp)
	move	$a0, $a1
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	is_outside.2927
	subi	$sp, $sp, 40
	lw	$ra, 36($sp)
	move	$a0, $v0
	li	$a1, 0
	bne	$a0, $a1, beq_else.17726
	lw	$a0, 32($sp)
	addi	$a0, $a0, 1
	flw	$f0, 16($sp)
	flw	$f1, 8($sp)
	flw	$f2, 0($sp)
	lw	$a1, 24($sp)
	j	check_all_inside.2932
beq_else.17726:
	li	$v0, 0
	jr	$ra
beq_else.17724:
	li	$v0, 0
	jr	$ra
shadow_check_and_group.2938:
	sll	$a2, $a0, 2
	add	$a2, $a1, $a2
	lw	$a2, 0($a2)
	li	$a3, -1
	bne	$a2, $a3, beq_else.17727
	li	$v0, 0
	jr	$ra
beq_else.17727:
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
	sw	$a1, 0($sp)
	sw	$a0, 4($sp)
	sw	$a2, 8($sp)
	bne	$a6, $a7, bne_else.17728
	lw	$a3, 0($a3)
	move	$a2, $a4
	move	$a1, $a3
	move	$a0, $a5
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	solver_rect_fast.2853
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	move	$a0, $v0
	j	bne_cont.17729
bne_else.17728:
	li	$a3, 2
	bne	$a6, $a3, bne_else.17730
	flw	$f3, 0($a4)
	li	$v0, 0
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f4, $v0
	fblt	$f3, $f4, fbge_else.17732
	li	$a3, 0
	j	fbge_cont.17733
fbge_else.17732:
	li	$a3, 1
fbge_cont.17733:
	li	$a5, 0
	bne	$a3, $a5, bne_else.17734
	li	$a0, 0
	j	bne_cont.17735
bne_else.17734:
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
	li	$a0, 1
bne_cont.17735:
	j	bne_cont.17731
bne_else.17730:
	move	$a1, $a4
	move	$a0, $a5
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	solver_second_fast.2866
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	move	$a0, $v0
bne_cont.17731:
bne_cont.17729:
	li	$a1, 540
	flw	$f0, 0($a1)
	li	$a1, 0
	bne	$a0, $a1, bne_else.17736
	li	$a0, 0
	j	bne_cont.17737
bne_else.17736:
	li	$v0, -16820
	sll	$v0, $v0, 16
	ori	$v0, $v0, 52429
	mtc1	$f1, $v0
	fsub	$f1, $f0, $f1
	li	$v0, 0
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fblt	$f1, $f2, fbge_else.17738
	li	$a0, 0
	j	fbge_cont.17739
fbge_else.17738:
	li	$a0, 1
fbge_cont.17739:
bne_cont.17737:
	li	$a1, 0
	bne	$a0, $a1, beq_else.17740
	li	$a0, 48
	lw	$a1, 8($sp)
	sll	$a1, $a1, 2
	add	$a1, $a0, $a1
	lw	$a0, 0($a1)
	lw	$a0, 24($a0)
	li	$a1, 0
	bne	$a0, $a1, beq_else.17741
	li	$v0, 0
	jr	$ra
beq_else.17741:
	lw	$a0, 4($sp)
	addi	$a0, $a0, 1
	lw	$a1, 0($sp)
	j	shadow_check_and_group.2938
beq_else.17740:
	li	$v0, 15395
	sll	$v0, $v0, 16
	ori	$v0, $v0, 55050
	mtc1	$f1, $v0
	fadd	$f0, $f0, $f1
	li	$a0, 312
	flw	$f1, 0($a0)
	fmul	$f1, $f1, $f0
	li	$a0, 552
	flw	$f2, 0($a0)
	fadd	$f1, $f1, $f2
	li	$a0, 312
	flw	$f2, 4($a0)
	fmul	$f2, $f2, $f0
	li	$a0, 552
	flw	$f3, 4($a0)
	fadd	$f2, $f2, $f3
	li	$a0, 312
	flw	$f3, 8($a0)
	fmul	$f0, $f3, $f0
	li	$a0, 552
	flw	$f3, 8($a0)
	fadd	$f0, $f0, $f3
	lw	$a1, 0($sp)
	lw	$a0, 0($a1)
	li	$a2, -1
	bne	$a0, $a2, bne_else.17742
	li	$a0, 1
	j	bne_cont.17743
bne_else.17742:
	li	$a2, 48
	sll	$a0, $a0, 2
	add	$a0, $a2, $a0
	lw	$a0, 0($a0)
	fsw	$f0, 16($sp)
	fsw	$f2, 24($sp)
	fsw	$f1, 32($sp)
	fmove	$f30, $f2
	fmove	$f2, $f0
	fmove	$f0, $f1
	fmove	$f1, $f30
	sw	$ra, 44($sp)
	addi	$sp, $sp, 48
	jal	is_outside.2927
	subi	$sp, $sp, 48
	lw	$ra, 44($sp)
	move	$a0, $v0
	li	$a1, 0
	bne	$a0, $a1, bne_else.17745
	li	$a0, 1
	flw	$f0, 32($sp)
	flw	$f1, 24($sp)
	flw	$f2, 16($sp)
	lw	$a1, 0($sp)
	sw	$ra, 44($sp)
	addi	$sp, $sp, 48
	jal	check_all_inside.2932
	subi	$sp, $sp, 48
	lw	$ra, 44($sp)
	move	$a0, $v0
	j	bne_cont.17746
bne_else.17745:
	li	$a0, 0
bne_cont.17746:
bne_cont.17743:
	li	$a1, 0
	bne	$a0, $a1, beq_else.17747
	lw	$a0, 4($sp)
	addi	$a0, $a0, 1
	lw	$a1, 0($sp)
	j	shadow_check_and_group.2938
beq_else.17747:
	li	$v0, 1
	jr	$ra
shadow_check_one_or_group.2941:
	sll	$a2, $a0, 2
	add	$a2, $a1, $a2
	lw	$a2, 0($a2)
	li	$a3, -1
	bne	$a2, $a3, beq_else.17748
	li	$v0, 0
	jr	$ra
beq_else.17748:
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
	jal	shadow_check_and_group.2938
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	move	$a0, $v0
	li	$a1, 0
	bne	$a0, $a1, beq_else.17749
	lw	$a0, 4($sp)
	addi	$a0, $a0, 1
	sll	$a1, $a0, 2
	lw	$a2, 0($sp)
	add	$a1, $a2, $a1
	lw	$a1, 0($a1)
	li	$a3, -1
	bne	$a1, $a3, beq_else.17750
	li	$v0, 0
	jr	$ra
beq_else.17750:
	li	$a3, 332
	sll	$a1, $a1, 2
	add	$a1, $a3, $a1
	lw	$a1, 0($a1)
	li	$a3, 0
	sw	$a0, 8($sp)
	move	$a0, $a3
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	shadow_check_and_group.2938
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	move	$a0, $v0
	li	$a1, 0
	bne	$a0, $a1, beq_else.17751
	lw	$a0, 8($sp)
	addi	$a0, $a0, 1
	sll	$a1, $a0, 2
	lw	$a2, 0($sp)
	add	$a1, $a2, $a1
	lw	$a1, 0($a1)
	li	$a3, -1
	bne	$a1, $a3, beq_else.17752
	li	$v0, 0
	jr	$ra
beq_else.17752:
	li	$a3, 332
	sll	$a1, $a1, 2
	add	$a1, $a3, $a1
	lw	$a1, 0($a1)
	li	$a3, 0
	sw	$a0, 12($sp)
	move	$a0, $a3
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	shadow_check_and_group.2938
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	move	$a0, $v0
	li	$a1, 0
	bne	$a0, $a1, beq_else.17753
	lw	$a0, 12($sp)
	addi	$a0, $a0, 1
	sll	$a1, $a0, 2
	lw	$a2, 0($sp)
	add	$a1, $a2, $a1
	lw	$a1, 0($a1)
	li	$a3, -1
	bne	$a1, $a3, beq_else.17754
	li	$v0, 0
	jr	$ra
beq_else.17754:
	li	$a3, 332
	sll	$a1, $a1, 2
	add	$a1, $a3, $a1
	lw	$a1, 0($a1)
	li	$a3, 0
	sw	$a0, 16($sp)
	move	$a0, $a3
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	shadow_check_and_group.2938
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	move	$a0, $v0
	li	$a1, 0
	bne	$a0, $a1, beq_else.17755
	lw	$a0, 16($sp)
	addi	$a0, $a0, 1
	lw	$a1, 0($sp)
	j	shadow_check_one_or_group.2941
beq_else.17755:
	li	$v0, 1
	jr	$ra
beq_else.17753:
	li	$v0, 1
	jr	$ra
beq_else.17751:
	li	$v0, 1
	jr	$ra
beq_else.17749:
	li	$v0, 1
	jr	$ra
shadow_check_one_or_matrix.2944:
	sll	$a2, $a0, 2
	add	$a2, $a1, $a2
	lw	$a2, 0($a2)
	lw	$a3, 0($a2)
	li	$a4, -1
	bne	$a3, $a4, beq_else.17756
	li	$v0, 0
	jr	$ra
beq_else.17756:
	li	$a4, 99
	sw	$a2, 0($sp)
	sw	$a1, 4($sp)
	sw	$a0, 8($sp)
	bne	$a3, $a4, bne_else.17757
	li	$a0, 1
	j	bne_cont.17758
bne_else.17757:
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
	bne	$a5, $a7, bne_else.17759
	lw	$a4, 0($a4)
	move	$a2, $a3
	move	$a1, $a4
	move	$a0, $a6
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	solver_rect_fast.2853
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	move	$a0, $v0
	j	bne_cont.17760
bne_else.17759:
	li	$a4, 2
	bne	$a5, $a4, bne_else.17761
	flw	$f3, 0($a3)
	li	$v0, 0
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f4, $v0
	fblt	$f3, $f4, fbge_else.17763
	li	$a4, 0
	j	fbge_cont.17764
fbge_else.17763:
	li	$a4, 1
fbge_cont.17764:
	li	$a5, 0
	bne	$a4, $a5, bne_else.17765
	li	$a0, 0
	j	bne_cont.17766
bne_else.17765:
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
	li	$a0, 1
bne_cont.17766:
	j	bne_cont.17762
bne_else.17761:
	move	$a1, $a3
	move	$a0, $a6
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	solver_second_fast.2866
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	move	$a0, $v0
bne_cont.17762:
bne_cont.17760:
	li	$a1, 0
	bne	$a0, $a1, bne_else.17767
	li	$a0, 0
	j	bne_cont.17768
bne_else.17767:
	li	$a0, 540
	flw	$f0, 0($a0)
	li	$v0, -16948
	sll	$v0, $v0, 16
	ori	$v0, $v0, 52429
	mtc1	$f1, $v0
	fsub	$f0, $f0, $f1
	li	$v0, 0
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	fblt	$f0, $f1, fbge_else.17769
	li	$a0, 0
	j	fbge_cont.17770
fbge_else.17769:
	li	$a0, 1
fbge_cont.17770:
	li	$a1, 0
	bne	$a0, $a1, bne_else.17771
	li	$a0, 0
	j	bne_cont.17772
bne_else.17771:
	lw	$a0, 0($sp)
	lw	$a1, 4($a0)
	li	$a2, -1
	bne	$a1, $a2, bne_else.17773
	li	$a0, 0
	j	bne_cont.17774
bne_else.17773:
	li	$a2, 332
	sll	$a1, $a1, 2
	add	$a1, $a2, $a1
	lw	$a1, 0($a1)
	li	$a2, 0
	move	$a0, $a2
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	shadow_check_and_group.2938
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	move	$a0, $v0
	li	$a1, 0
	bne	$a0, $a1, bne_else.17775
	lw	$a0, 0($sp)
	lw	$a1, 8($a0)
	li	$a2, -1
	bne	$a1, $a2, bne_else.17777
	li	$a0, 0
	j	bne_cont.17778
bne_else.17777:
	li	$a2, 332
	sll	$a1, $a1, 2
	add	$a1, $a2, $a1
	lw	$a1, 0($a1)
	li	$a2, 0
	move	$a0, $a2
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	shadow_check_and_group.2938
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	move	$a0, $v0
	li	$a1, 0
	bne	$a0, $a1, bne_else.17779
	lw	$a0, 0($sp)
	lw	$a1, 12($a0)
	li	$a2, -1
	bne	$a1, $a2, bne_else.17781
	li	$a0, 0
	j	bne_cont.17782
bne_else.17781:
	li	$a2, 332
	sll	$a1, $a1, 2
	add	$a1, $a2, $a1
	lw	$a1, 0($a1)
	li	$a2, 0
	move	$a0, $a2
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	shadow_check_and_group.2938
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	move	$a0, $v0
	li	$a1, 0
	bne	$a0, $a1, bne_else.17783
	li	$a0, 4
	lw	$a1, 0($sp)
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	shadow_check_one_or_group.2941
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	move	$a0, $v0
	j	bne_cont.17784
bne_else.17783:
	li	$a0, 1
bne_cont.17784:
bne_cont.17782:
	j	bne_cont.17780
bne_else.17779:
	li	$a0, 1
bne_cont.17780:
bne_cont.17778:
	j	bne_cont.17776
bne_else.17775:
	li	$a0, 1
bne_cont.17776:
bne_cont.17774:
	li	$a1, 0
	bne	$a0, $a1, bne_else.17785
	li	$a0, 0
	j	bne_cont.17786
bne_else.17785:
	li	$a0, 1
bne_cont.17786:
bne_cont.17772:
bne_cont.17768:
bne_cont.17758:
	li	$a1, 0
	bne	$a0, $a1, beq_else.17787
	lw	$a0, 8($sp)
	addi	$a0, $a0, 1
	lw	$a1, 4($sp)
	j	shadow_check_one_or_matrix.2944
beq_else.17787:
	lw	$a0, 0($sp)
	lw	$a1, 4($a0)
	li	$a2, -1
	bne	$a1, $a2, bne_else.17788
	li	$a0, 0
	j	bne_cont.17789
bne_else.17788:
	li	$a2, 332
	sll	$a1, $a1, 2
	add	$a1, $a2, $a1
	lw	$a1, 0($a1)
	li	$a2, 0
	move	$a0, $a2
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	shadow_check_and_group.2938
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	move	$a0, $v0
	li	$a1, 0
	bne	$a0, $a1, bne_else.17790
	lw	$a0, 0($sp)
	lw	$a1, 8($a0)
	li	$a2, -1
	bne	$a1, $a2, bne_else.17792
	li	$a0, 0
	j	bne_cont.17793
bne_else.17792:
	li	$a2, 332
	sll	$a1, $a1, 2
	add	$a1, $a2, $a1
	lw	$a1, 0($a1)
	li	$a2, 0
	move	$a0, $a2
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	shadow_check_and_group.2938
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	move	$a0, $v0
	li	$a1, 0
	bne	$a0, $a1, bne_else.17794
	lw	$a0, 0($sp)
	lw	$a1, 12($a0)
	li	$a2, -1
	bne	$a1, $a2, bne_else.17796
	li	$a0, 0
	j	bne_cont.17797
bne_else.17796:
	li	$a2, 332
	sll	$a1, $a1, 2
	add	$a1, $a2, $a1
	lw	$a1, 0($a1)
	li	$a2, 0
	move	$a0, $a2
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	shadow_check_and_group.2938
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	move	$a0, $v0
	li	$a1, 0
	bne	$a0, $a1, bne_else.17798
	li	$a0, 4
	lw	$a1, 0($sp)
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	shadow_check_one_or_group.2941
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	move	$a0, $v0
	j	bne_cont.17799
bne_else.17798:
	li	$a0, 1
bne_cont.17799:
bne_cont.17797:
	j	bne_cont.17795
bne_else.17794:
	li	$a0, 1
bne_cont.17795:
bne_cont.17793:
	j	bne_cont.17791
bne_else.17790:
	li	$a0, 1
bne_cont.17791:
bne_cont.17789:
	li	$a1, 0
	bne	$a0, $a1, beq_else.17800
	lw	$a0, 8($sp)
	addi	$a0, $a0, 1
	lw	$a1, 4($sp)
	j	shadow_check_one_or_matrix.2944
beq_else.17800:
	li	$v0, 1
	jr	$ra
solve_each_element.2947:
	sll	$a3, $a0, 2
	add	$a3, $a1, $a3
	lw	$a3, 0($a3)
	li	$a4, -1
	bne	$a3, $a4, beq_else.17801
	jr	$ra
beq_else.17801:
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
	sw	$a2, 0($sp)
	sw	$a1, 4($sp)
	sw	$a0, 8($sp)
	sw	$a3, 12($sp)
	bne	$a4, $a6, bne_else.17803
	li	$a4, 0
	li	$a6, 1
	li	$a7, 2
	fsw	$f0, 16($sp)
	fsw	$f2, 24($sp)
	fsw	$f1, 32($sp)
	sw	$a5, 40($sp)
	move	$a3, $a6
	move	$a1, $a2
	move	$a0, $a5
	move	$a2, $a4
	move	$a4, $a7
	sw	$ra, 44($sp)
	addi	$sp, $sp, 48
	jal	solver_rect_surface.2809
	subi	$sp, $sp, 48
	lw	$ra, 44($sp)
	move	$a0, $v0
	li	$a1, 0
	bne	$a0, $a1, bne_else.17805
	li	$a2, 1
	li	$a3, 2
	li	$a4, 0
	flw	$f0, 32($sp)
	flw	$f1, 24($sp)
	flw	$f2, 16($sp)
	lw	$a0, 40($sp)
	lw	$a1, 0($sp)
	sw	$ra, 44($sp)
	addi	$sp, $sp, 48
	jal	solver_rect_surface.2809
	subi	$sp, $sp, 48
	lw	$ra, 44($sp)
	move	$a0, $v0
	li	$a1, 0
	bne	$a0, $a1, bne_else.17807
	li	$a2, 2
	li	$a3, 0
	li	$a4, 1
	flw	$f0, 24($sp)
	flw	$f1, 16($sp)
	flw	$f2, 32($sp)
	lw	$a0, 40($sp)
	lw	$a1, 0($sp)
	sw	$ra, 44($sp)
	addi	$sp, $sp, 48
	jal	solver_rect_surface.2809
	subi	$sp, $sp, 48
	lw	$ra, 44($sp)
	move	$a0, $v0
	li	$a1, 0
	bne	$a0, $a1, bne_else.17809
	li	$a0, 0
	j	bne_cont.17810
bne_else.17809:
	li	$a0, 3
bne_cont.17810:
	j	bne_cont.17808
bne_else.17807:
	li	$a0, 2
bne_cont.17808:
	j	bne_cont.17806
bne_else.17805:
	li	$a0, 1
bne_cont.17806:
	j	bne_cont.17804
bne_else.17803:
	li	$a6, 2
	bne	$a4, $a6, bne_else.17811
	move	$a1, $a2
	move	$a0, $a5
	sw	$ra, 44($sp)
	addi	$sp, $sp, 48
	jal	solver_surface.2824
	subi	$sp, $sp, 48
	lw	$ra, 44($sp)
	move	$a0, $v0
	j	bne_cont.17812
bne_else.17811:
	move	$a1, $a2
	move	$a0, $a5
	sw	$ra, 44($sp)
	addi	$sp, $sp, 48
	jal	solver_second.2843
	subi	$sp, $sp, 48
	lw	$ra, 44($sp)
	move	$a0, $v0
bne_cont.17812:
bne_cont.17804:
	li	$a1, 0
	bne	$a0, $a1, beq_else.17813
	li	$a0, 48
	lw	$a1, 12($sp)
	sll	$a1, $a1, 2
	add	$a1, $a0, $a1
	lw	$a0, 0($a1)
	lw	$a0, 24($a0)
	li	$a1, 0
	bne	$a0, $a1, beq_else.17814
	jr	$ra
beq_else.17814:
	lw	$a0, 8($sp)
	addi	$a0, $a0, 1
	lw	$a1, 4($sp)
	lw	$a2, 0($sp)
	j	solve_each_element.2947
beq_else.17813:
	li	$a1, 540
	flw	$f0, 0($a1)
	li	$v0, 0
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	fsub	$f1, $f1, $f0
	li	$v0, 0
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fblt	$f1, $f2, fbge_else.17816
	li	$a1, 0
	j	fbge_cont.17817
fbge_else.17816:
	li	$a1, 1
fbge_cont.17817:
	li	$a2, 0
	bne	$a1, $a2, bne_else.17818
	j	bne_cont.17819
bne_else.17818:
	li	$a1, 548
	flw	$f1, 0($a1)
	fsub	$f1, $f0, $f1
	li	$v0, 0
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fblt	$f1, $f2, fbge_else.17820
	li	$a1, 0
	j	fbge_cont.17821
fbge_else.17820:
	li	$a1, 1
fbge_cont.17821:
	li	$a2, 0
	bne	$a1, $a2, bne_else.17822
	j	bne_cont.17823
bne_else.17822:
	li	$v0, 15395
	sll	$v0, $v0, 16
	ori	$v0, $v0, 55050
	mtc1	$f1, $v0
	fadd	$f0, $f0, $f1
	lw	$a2, 0($sp)
	flw	$f1, 0($a2)
	fmul	$f1, $f1, $f0
	li	$a1, 636
	flw	$f2, 0($a1)
	fadd	$f1, $f1, $f2
	flw	$f2, 4($a2)
	fmul	$f2, $f2, $f0
	li	$a1, 636
	flw	$f3, 4($a1)
	fadd	$f2, $f2, $f3
	flw	$f3, 8($a2)
	fmul	$f3, $f3, $f0
	li	$a1, 636
	flw	$f4, 8($a1)
	fadd	$f3, $f3, $f4
	lw	$a1, 4($sp)
	lw	$a3, 0($a1)
	li	$a4, -1
	sw	$a0, 44($sp)
	fsw	$f3, 48($sp)
	fsw	$f2, 56($sp)
	fsw	$f1, 64($sp)
	fsw	$f0, 72($sp)
	bne	$a3, $a4, bne_else.17824
	li	$a0, 1
	j	bne_cont.17825
bne_else.17824:
	li	$a4, 48
	sll	$a3, $a3, 2
	add	$a3, $a4, $a3
	lw	$a3, 0($a3)
	move	$a0, $a3
	fmove	$f0, $f1
	fmove	$f1, $f2
	fmove	$f2, $f3
	sw	$ra, 84($sp)
	addi	$sp, $sp, 88
	jal	is_outside.2927
	subi	$sp, $sp, 88
	lw	$ra, 84($sp)
	move	$a0, $v0
	li	$a1, 0
	bne	$a0, $a1, bne_else.17826
	li	$a0, 1
	flw	$f0, 64($sp)
	flw	$f1, 56($sp)
	flw	$f2, 48($sp)
	lw	$a1, 4($sp)
	sw	$ra, 84($sp)
	addi	$sp, $sp, 88
	jal	check_all_inside.2932
	subi	$sp, $sp, 88
	lw	$ra, 84($sp)
	move	$a0, $v0
	j	bne_cont.17827
bne_else.17826:
	li	$a0, 0
bne_cont.17827:
bne_cont.17825:
	li	$a1, 0
	bne	$a0, $a1, bne_else.17828
	j	bne_cont.17829
bne_else.17828:
	li	$a0, 548
	flw	$f0, 72($sp)
	fsw	$f0, 0($a0)
	li	$a0, 552
	flw	$f0, 64($sp)
	fsw	$f0, 0($a0)
	flw	$f0, 56($sp)
	fsw	$f0, 4($a0)
	flw	$f0, 48($sp)
	fsw	$f0, 8($a0)
	li	$a0, 564
	lw	$a1, 12($sp)
	sw	$a1, 0($a0)
	li	$a0, 544
	lw	$a1, 44($sp)
	sw	$a1, 0($a0)
bne_cont.17829:
bne_cont.17823:
bne_cont.17819:
	lw	$a0, 8($sp)
	addi	$a0, $a0, 1
	lw	$a1, 4($sp)
	lw	$a2, 0($sp)
	j	solve_each_element.2947
solve_one_or_network.2951:
	sll	$a3, $a0, 2
	add	$a3, $a1, $a3
	lw	$a3, 0($a3)
	li	$a4, -1
	bne	$a3, $a4, beq_else.17830
	jr	$ra
beq_else.17830:
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
	jal	solve_each_element.2947
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	fmove	$f30, $fv
	lw	$a0, 8($sp)
	addi	$a0, $a0, 1
	sll	$a1, $a0, 2
	lw	$a2, 4($sp)
	add	$a1, $a2, $a1
	lw	$a1, 0($a1)
	li	$a3, -1
	bne	$a1, $a3, beq_else.17832
	jr	$ra
beq_else.17832:
	li	$a3, 332
	sll	$a1, $a1, 2
	add	$a1, $a3, $a1
	lw	$a1, 0($a1)
	li	$a3, 0
	lw	$a4, 0($sp)
	sw	$a0, 12($sp)
	move	$a2, $a4
	move	$a0, $a3
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	solve_each_element.2947
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	fmove	$f30, $fv
	lw	$a0, 12($sp)
	addi	$a0, $a0, 1
	sll	$a1, $a0, 2
	lw	$a2, 4($sp)
	add	$a1, $a2, $a1
	lw	$a1, 0($a1)
	li	$a3, -1
	bne	$a1, $a3, beq_else.17834
	jr	$ra
beq_else.17834:
	li	$a3, 332
	sll	$a1, $a1, 2
	add	$a1, $a3, $a1
	lw	$a1, 0($a1)
	li	$a3, 0
	lw	$a4, 0($sp)
	sw	$a0, 16($sp)
	move	$a2, $a4
	move	$a0, $a3
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	solve_each_element.2947
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	fmove	$f30, $fv
	lw	$a0, 16($sp)
	addi	$a0, $a0, 1
	sll	$a1, $a0, 2
	lw	$a2, 4($sp)
	add	$a1, $a2, $a1
	lw	$a1, 0($a1)
	li	$a3, -1
	bne	$a1, $a3, beq_else.17836
	jr	$ra
beq_else.17836:
	li	$a3, 332
	sll	$a1, $a1, 2
	add	$a1, $a3, $a1
	lw	$a1, 0($a1)
	li	$a3, 0
	lw	$a4, 0($sp)
	sw	$a0, 20($sp)
	move	$a2, $a4
	move	$a0, $a3
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	solve_each_element.2947
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	fmove	$f30, $fv
	lw	$a0, 20($sp)
	addi	$a0, $a0, 1
	lw	$a1, 4($sp)
	lw	$a2, 0($sp)
	j	solve_one_or_network.2951
trace_or_matrix.2955:
	sll	$a3, $a0, 2
	add	$a3, $a1, $a3
	lw	$a3, 0($a3)
	lw	$a4, 0($a3)
	li	$a5, -1
	bne	$a4, $a5, beq_else.17838
	jr	$ra
beq_else.17838:
	li	$a5, 99
	sw	$a2, 0($sp)
	sw	$a1, 4($sp)
	sw	$a0, 8($sp)
	bne	$a4, $a5, bne_else.17840
	lw	$a4, 4($a3)
	li	$a5, -1
	bne	$a4, $a5, bne_else.17842
	j	bne_cont.17843
bne_else.17842:
	li	$a5, 332
	sll	$a4, $a4, 2
	add	$a4, $a5, $a4
	lw	$a4, 0($a4)
	li	$a5, 0
	sw	$a3, 12($sp)
	move	$a1, $a4
	move	$a0, $a5
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	solve_each_element.2947
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	fmove	$f30, $fv
	lw	$a0, 12($sp)
	lw	$a1, 8($a0)
	li	$a2, -1
	bne	$a1, $a2, bne_else.17844
	j	bne_cont.17845
bne_else.17844:
	li	$a2, 332
	sll	$a1, $a1, 2
	add	$a1, $a2, $a1
	lw	$a1, 0($a1)
	li	$a2, 0
	lw	$a3, 0($sp)
	move	$a0, $a2
	move	$a2, $a3
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	solve_each_element.2947
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	fmove	$f30, $fv
	lw	$a0, 12($sp)
	lw	$a1, 12($a0)
	li	$a2, -1
	bne	$a1, $a2, bne_else.17846
	j	bne_cont.17847
bne_else.17846:
	li	$a2, 332
	sll	$a1, $a1, 2
	add	$a1, $a2, $a1
	lw	$a1, 0($a1)
	li	$a2, 0
	lw	$a3, 0($sp)
	move	$a0, $a2
	move	$a2, $a3
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	solve_each_element.2947
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	fmove	$f30, $fv
	li	$a0, 4
	lw	$a1, 12($sp)
	lw	$a2, 0($sp)
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	solve_one_or_network.2951
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	fmove	$f30, $fv
bne_cont.17847:
bne_cont.17845:
bne_cont.17843:
	j	bne_cont.17841
bne_else.17840:
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
	sw	$a3, 12($sp)
	bne	$a5, $a6, bne_else.17848
	li	$a5, 0
	li	$a6, 1
	li	$a7, 2
	fsw	$f0, 16($sp)
	fsw	$f2, 24($sp)
	fsw	$f1, 32($sp)
	sw	$a4, 40($sp)
	move	$a3, $a6
	move	$a1, $a2
	move	$a0, $a4
	move	$a4, $a7
	move	$a2, $a5
	sw	$ra, 44($sp)
	addi	$sp, $sp, 48
	jal	solver_rect_surface.2809
	subi	$sp, $sp, 48
	lw	$ra, 44($sp)
	move	$a0, $v0
	li	$a1, 0
	bne	$a0, $a1, bne_else.17850
	li	$a2, 1
	li	$a3, 2
	li	$a4, 0
	flw	$f0, 32($sp)
	flw	$f1, 24($sp)
	flw	$f2, 16($sp)
	lw	$a0, 40($sp)
	lw	$a1, 0($sp)
	sw	$ra, 44($sp)
	addi	$sp, $sp, 48
	jal	solver_rect_surface.2809
	subi	$sp, $sp, 48
	lw	$ra, 44($sp)
	move	$a0, $v0
	li	$a1, 0
	bne	$a0, $a1, bne_else.17852
	li	$a2, 2
	li	$a3, 0
	li	$a4, 1
	flw	$f0, 24($sp)
	flw	$f1, 16($sp)
	flw	$f2, 32($sp)
	lw	$a0, 40($sp)
	lw	$a1, 0($sp)
	sw	$ra, 44($sp)
	addi	$sp, $sp, 48
	jal	solver_rect_surface.2809
	subi	$sp, $sp, 48
	lw	$ra, 44($sp)
	move	$a0, $v0
	li	$a1, 0
	bne	$a0, $a1, bne_else.17854
	li	$a0, 0
	j	bne_cont.17855
bne_else.17854:
	li	$a0, 3
bne_cont.17855:
	j	bne_cont.17853
bne_else.17852:
	li	$a0, 2
bne_cont.17853:
	j	bne_cont.17851
bne_else.17850:
	li	$a0, 1
bne_cont.17851:
	j	bne_cont.17849
bne_else.17848:
	li	$a6, 2
	bne	$a5, $a6, bne_else.17856
	move	$a1, $a2
	move	$a0, $a4
	sw	$ra, 44($sp)
	addi	$sp, $sp, 48
	jal	solver_surface.2824
	subi	$sp, $sp, 48
	lw	$ra, 44($sp)
	move	$a0, $v0
	j	bne_cont.17857
bne_else.17856:
	move	$a1, $a2
	move	$a0, $a4
	sw	$ra, 44($sp)
	addi	$sp, $sp, 48
	jal	solver_second.2843
	subi	$sp, $sp, 48
	lw	$ra, 44($sp)
	move	$a0, $v0
bne_cont.17857:
bne_cont.17849:
	li	$a1, 0
	bne	$a0, $a1, bne_else.17858
	j	bne_cont.17859
bne_else.17858:
	li	$a0, 540
	flw	$f0, 0($a0)
	li	$a0, 548
	flw	$f1, 0($a0)
	fsub	$f0, $f0, $f1
	li	$v0, 0
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	fblt	$f0, $f1, fbge_else.17860
	li	$a0, 0
	j	fbge_cont.17861
fbge_else.17860:
	li	$a0, 1
fbge_cont.17861:
	li	$a1, 0
	bne	$a0, $a1, bne_else.17862
	j	bne_cont.17863
bne_else.17862:
	lw	$a0, 12($sp)
	lw	$a1, 4($a0)
	li	$a2, -1
	bne	$a1, $a2, bne_else.17864
	j	bne_cont.17865
bne_else.17864:
	li	$a2, 332
	sll	$a1, $a1, 2
	add	$a1, $a2, $a1
	lw	$a1, 0($a1)
	li	$a2, 0
	lw	$a3, 0($sp)
	move	$a0, $a2
	move	$a2, $a3
	sw	$ra, 44($sp)
	addi	$sp, $sp, 48
	jal	solve_each_element.2947
	subi	$sp, $sp, 48
	lw	$ra, 44($sp)
	fmove	$f30, $fv
	lw	$a0, 12($sp)
	lw	$a1, 8($a0)
	li	$a2, -1
	bne	$a1, $a2, bne_else.17866
	j	bne_cont.17867
bne_else.17866:
	li	$a2, 332
	sll	$a1, $a1, 2
	add	$a1, $a2, $a1
	lw	$a1, 0($a1)
	li	$a2, 0
	lw	$a3, 0($sp)
	move	$a0, $a2
	move	$a2, $a3
	sw	$ra, 44($sp)
	addi	$sp, $sp, 48
	jal	solve_each_element.2947
	subi	$sp, $sp, 48
	lw	$ra, 44($sp)
	fmove	$f30, $fv
	lw	$a0, 12($sp)
	lw	$a1, 12($a0)
	li	$a2, -1
	bne	$a1, $a2, bne_else.17868
	j	bne_cont.17869
bne_else.17868:
	li	$a2, 332
	sll	$a1, $a1, 2
	add	$a1, $a2, $a1
	lw	$a1, 0($a1)
	li	$a2, 0
	lw	$a3, 0($sp)
	move	$a0, $a2
	move	$a2, $a3
	sw	$ra, 44($sp)
	addi	$sp, $sp, 48
	jal	solve_each_element.2947
	subi	$sp, $sp, 48
	lw	$ra, 44($sp)
	fmove	$f30, $fv
	li	$a0, 4
	lw	$a1, 12($sp)
	lw	$a2, 0($sp)
	sw	$ra, 44($sp)
	addi	$sp, $sp, 48
	jal	solve_one_or_network.2951
	subi	$sp, $sp, 48
	lw	$ra, 44($sp)
	fmove	$f30, $fv
bne_cont.17869:
bne_cont.17867:
bne_cont.17865:
bne_cont.17863:
bne_cont.17859:
bne_cont.17841:
	lw	$a0, 8($sp)
	addi	$a0, $a0, 1
	sll	$a1, $a0, 2
	lw	$a2, 4($sp)
	add	$a1, $a2, $a1
	lw	$a1, 0($a1)
	lw	$a3, 0($a1)
	li	$a4, -1
	bne	$a3, $a4, beq_else.17870
	jr	$ra
beq_else.17870:
	li	$a4, 99
	sw	$a0, 44($sp)
	bne	$a3, $a4, bne_else.17872
	lw	$a3, 4($a1)
	li	$a4, -1
	bne	$a3, $a4, bne_else.17874
	j	bne_cont.17875
bne_else.17874:
	li	$a4, 332
	sll	$a3, $a3, 2
	add	$a3, $a4, $a3
	lw	$a3, 0($a3)
	li	$a4, 0
	lw	$a5, 0($sp)
	sw	$a1, 48($sp)
	move	$a2, $a5
	move	$a1, $a3
	move	$a0, $a4
	sw	$ra, 52($sp)
	addi	$sp, $sp, 56
	jal	solve_each_element.2947
	subi	$sp, $sp, 56
	lw	$ra, 52($sp)
	fmove	$f30, $fv
	lw	$a0, 48($sp)
	lw	$a1, 8($a0)
	li	$a2, -1
	bne	$a1, $a2, bne_else.17876
	j	bne_cont.17877
bne_else.17876:
	li	$a2, 332
	sll	$a1, $a1, 2
	add	$a1, $a2, $a1
	lw	$a1, 0($a1)
	li	$a2, 0
	lw	$a3, 0($sp)
	move	$a0, $a2
	move	$a2, $a3
	sw	$ra, 52($sp)
	addi	$sp, $sp, 56
	jal	solve_each_element.2947
	subi	$sp, $sp, 56
	lw	$ra, 52($sp)
	fmove	$f30, $fv
	li	$a0, 3
	lw	$a1, 48($sp)
	lw	$a2, 0($sp)
	sw	$ra, 52($sp)
	addi	$sp, $sp, 56
	jal	solve_one_or_network.2951
	subi	$sp, $sp, 56
	lw	$ra, 52($sp)
	fmove	$f30, $fv
bne_cont.17877:
bne_cont.17875:
	j	bne_cont.17873
bne_else.17872:
	li	$a4, 636
	lw	$a5, 0($sp)
	sw	$a1, 48($sp)
	move	$a2, $a4
	move	$a1, $a5
	move	$a0, $a3
	sw	$ra, 52($sp)
	addi	$sp, $sp, 56
	jal	solver.2849
	subi	$sp, $sp, 56
	lw	$ra, 52($sp)
	move	$a0, $v0
	li	$a1, 0
	bne	$a0, $a1, bne_else.17878
	j	bne_cont.17879
bne_else.17878:
	li	$a0, 540
	flw	$f0, 0($a0)
	li	$a0, 548
	flw	$f1, 0($a0)
	fsub	$f0, $f0, $f1
	li	$v0, 0
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	fblt	$f0, $f1, fbge_else.17880
	li	$a0, 0
	j	fbge_cont.17881
fbge_else.17880:
	li	$a0, 1
fbge_cont.17881:
	li	$a1, 0
	bne	$a0, $a1, bne_else.17882
	j	bne_cont.17883
bne_else.17882:
	lw	$a0, 48($sp)
	lw	$a1, 4($a0)
	li	$a2, -1
	bne	$a1, $a2, bne_else.17884
	j	bne_cont.17885
bne_else.17884:
	li	$a2, 332
	sll	$a1, $a1, 2
	add	$a1, $a2, $a1
	lw	$a1, 0($a1)
	li	$a2, 0
	lw	$a3, 0($sp)
	move	$a0, $a2
	move	$a2, $a3
	sw	$ra, 52($sp)
	addi	$sp, $sp, 56
	jal	solve_each_element.2947
	subi	$sp, $sp, 56
	lw	$ra, 52($sp)
	fmove	$f30, $fv
	lw	$a0, 48($sp)
	lw	$a1, 8($a0)
	li	$a2, -1
	bne	$a1, $a2, bne_else.17886
	j	bne_cont.17887
bne_else.17886:
	li	$a2, 332
	sll	$a1, $a1, 2
	add	$a1, $a2, $a1
	lw	$a1, 0($a1)
	li	$a2, 0
	lw	$a3, 0($sp)
	move	$a0, $a2
	move	$a2, $a3
	sw	$ra, 52($sp)
	addi	$sp, $sp, 56
	jal	solve_each_element.2947
	subi	$sp, $sp, 56
	lw	$ra, 52($sp)
	fmove	$f30, $fv
	li	$a0, 3
	lw	$a1, 48($sp)
	lw	$a2, 0($sp)
	sw	$ra, 52($sp)
	addi	$sp, $sp, 56
	jal	solve_one_or_network.2951
	subi	$sp, $sp, 56
	lw	$ra, 52($sp)
	fmove	$f30, $fv
bne_cont.17887:
bne_cont.17885:
bne_cont.17883:
bne_cont.17879:
bne_cont.17873:
	lw	$a0, 44($sp)
	addi	$a0, $a0, 1
	lw	$a1, 4($sp)
	lw	$a2, 0($sp)
	j	trace_or_matrix.2955
solve_each_element_fast.2961:
	lw	$a3, 0($a2)
	sll	$a4, $a0, 2
	add	$a4, $a1, $a4
	lw	$a4, 0($a4)
	li	$a5, -1
	bne	$a4, $a5, beq_else.17888
	jr	$ra
beq_else.17888:
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
	sw	$a3, 0($sp)
	sw	$a2, 4($sp)
	sw	$a1, 8($sp)
	sw	$a0, 12($sp)
	sw	$a4, 16($sp)
	bne	$a8, $a9, bne_else.17890
	lw	$a6, 0($a2)
	move	$a2, $a7
	move	$a1, $a6
	move	$a0, $a5
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	solver_rect_fast.2853
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	move	$a0, $v0
	j	bne_cont.17891
bne_else.17890:
	li	$a9, 2
	bne	$a8, $a9, bne_else.17892
	flw	$f0, 0($a7)
	li	$v0, 0
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	fblt	$f0, $f1, fbge_else.17894
	li	$a5, 0
	j	fbge_cont.17895
fbge_else.17894:
	li	$a5, 1
fbge_cont.17895:
	li	$a8, 0
	bne	$a5, $a8, bne_else.17896
	li	$a0, 0
	j	bne_cont.17897
bne_else.17896:
	li	$a5, 540
	flw	$f0, 0($a7)
	flw	$f1, 12($a6)
	fmul	$f0, $f0, $f1
	fsw	$f0, 0($a5)
	li	$a0, 1
bne_cont.17897:
	j	bne_cont.17893
bne_else.17892:
	move	$a2, $a6
	move	$a1, $a7
	move	$a0, $a5
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	solver_second_fast2.2883
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	move	$a0, $v0
bne_cont.17893:
bne_cont.17891:
	li	$a1, 0
	bne	$a0, $a1, beq_else.17898
	li	$a0, 48
	lw	$a1, 16($sp)
	sll	$a1, $a1, 2
	add	$a1, $a0, $a1
	lw	$a0, 0($a1)
	lw	$a0, 24($a0)
	li	$a1, 0
	bne	$a0, $a1, beq_else.17899
	jr	$ra
beq_else.17899:
	lw	$a0, 12($sp)
	addi	$a0, $a0, 1
	lw	$a1, 8($sp)
	lw	$a2, 4($sp)
	j	solve_each_element_fast.2961
beq_else.17898:
	li	$a1, 540
	flw	$f0, 0($a1)
	li	$v0, 0
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	fsub	$f1, $f1, $f0
	li	$v0, 0
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fblt	$f1, $f2, fbge_else.17901
	li	$a1, 0
	j	fbge_cont.17902
fbge_else.17901:
	li	$a1, 1
fbge_cont.17902:
	li	$a2, 0
	bne	$a1, $a2, bne_else.17903
	j	bne_cont.17904
bne_else.17903:
	li	$a1, 548
	flw	$f1, 0($a1)
	fsub	$f1, $f0, $f1
	li	$v0, 0
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fblt	$f1, $f2, fbge_else.17905
	li	$a1, 0
	j	fbge_cont.17906
fbge_else.17905:
	li	$a1, 1
fbge_cont.17906:
	li	$a2, 0
	bne	$a1, $a2, bne_else.17907
	j	bne_cont.17908
bne_else.17907:
	li	$v0, 15395
	sll	$v0, $v0, 16
	ori	$v0, $v0, 55050
	mtc1	$f1, $v0
	fadd	$f0, $f0, $f1
	lw	$a1, 0($sp)
	flw	$f1, 0($a1)
	fmul	$f1, $f1, $f0
	li	$a2, 648
	flw	$f2, 0($a2)
	fadd	$f1, $f1, $f2
	flw	$f2, 4($a1)
	fmul	$f2, $f2, $f0
	li	$a2, 648
	flw	$f3, 4($a2)
	fadd	$f2, $f2, $f3
	flw	$f3, 8($a1)
	fmul	$f3, $f3, $f0
	li	$a1, 648
	flw	$f4, 8($a1)
	fadd	$f3, $f3, $f4
	lw	$a1, 8($sp)
	lw	$a2, 0($a1)
	li	$a3, -1
	sw	$a0, 20($sp)
	fsw	$f3, 24($sp)
	fsw	$f2, 32($sp)
	fsw	$f1, 40($sp)
	fsw	$f0, 48($sp)
	bne	$a2, $a3, bne_else.17909
	li	$a0, 1
	j	bne_cont.17910
bne_else.17909:
	li	$a3, 48
	sll	$a2, $a2, 2
	add	$a2, $a3, $a2
	lw	$a2, 0($a2)
	move	$a0, $a2
	fmove	$f0, $f1
	fmove	$f1, $f2
	fmove	$f2, $f3
	sw	$ra, 60($sp)
	addi	$sp, $sp, 64
	jal	is_outside.2927
	subi	$sp, $sp, 64
	lw	$ra, 60($sp)
	move	$a0, $v0
	li	$a1, 0
	bne	$a0, $a1, bne_else.17911
	li	$a0, 1
	flw	$f0, 40($sp)
	flw	$f1, 32($sp)
	flw	$f2, 24($sp)
	lw	$a1, 8($sp)
	sw	$ra, 60($sp)
	addi	$sp, $sp, 64
	jal	check_all_inside.2932
	subi	$sp, $sp, 64
	lw	$ra, 60($sp)
	move	$a0, $v0
	j	bne_cont.17912
bne_else.17911:
	li	$a0, 0
bne_cont.17912:
bne_cont.17910:
	li	$a1, 0
	bne	$a0, $a1, bne_else.17913
	j	bne_cont.17914
bne_else.17913:
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
	lw	$a1, 20($sp)
	sw	$a1, 0($a0)
bne_cont.17914:
bne_cont.17908:
bne_cont.17904:
	lw	$a0, 12($sp)
	addi	$a0, $a0, 1
	lw	$a1, 8($sp)
	lw	$a2, 4($sp)
	j	solve_each_element_fast.2961
solve_one_or_network_fast.2965:
	sll	$a3, $a0, 2
	add	$a3, $a1, $a3
	lw	$a3, 0($a3)
	li	$a4, -1
	bne	$a3, $a4, beq_else.17915
	jr	$ra
beq_else.17915:
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
	jal	solve_each_element_fast.2961
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	fmove	$f30, $fv
	lw	$a0, 8($sp)
	addi	$a0, $a0, 1
	sll	$a1, $a0, 2
	lw	$a2, 4($sp)
	add	$a1, $a2, $a1
	lw	$a1, 0($a1)
	li	$a3, -1
	bne	$a1, $a3, beq_else.17917
	jr	$ra
beq_else.17917:
	li	$a3, 332
	sll	$a1, $a1, 2
	add	$a1, $a3, $a1
	lw	$a1, 0($a1)
	li	$a3, 0
	lw	$a4, 0($sp)
	sw	$a0, 12($sp)
	move	$a2, $a4
	move	$a0, $a3
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	solve_each_element_fast.2961
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	fmove	$f30, $fv
	lw	$a0, 12($sp)
	addi	$a0, $a0, 1
	sll	$a1, $a0, 2
	lw	$a2, 4($sp)
	add	$a1, $a2, $a1
	lw	$a1, 0($a1)
	li	$a3, -1
	bne	$a1, $a3, beq_else.17919
	jr	$ra
beq_else.17919:
	li	$a3, 332
	sll	$a1, $a1, 2
	add	$a1, $a3, $a1
	lw	$a1, 0($a1)
	li	$a3, 0
	lw	$a4, 0($sp)
	sw	$a0, 16($sp)
	move	$a2, $a4
	move	$a0, $a3
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	solve_each_element_fast.2961
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	fmove	$f30, $fv
	lw	$a0, 16($sp)
	addi	$a0, $a0, 1
	sll	$a1, $a0, 2
	lw	$a2, 4($sp)
	add	$a1, $a2, $a1
	lw	$a1, 0($a1)
	li	$a3, -1
	bne	$a1, $a3, beq_else.17921
	jr	$ra
beq_else.17921:
	li	$a3, 332
	sll	$a1, $a1, 2
	add	$a1, $a3, $a1
	lw	$a1, 0($a1)
	li	$a3, 0
	lw	$a4, 0($sp)
	sw	$a0, 20($sp)
	move	$a2, $a4
	move	$a0, $a3
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	solve_each_element_fast.2961
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	fmove	$f30, $fv
	lw	$a0, 20($sp)
	addi	$a0, $a0, 1
	lw	$a1, 4($sp)
	lw	$a2, 0($sp)
	j	solve_one_or_network_fast.2965
trace_or_matrix_fast.2969:
	sll	$a3, $a0, 2
	add	$a3, $a1, $a3
	lw	$a3, 0($a3)
	lw	$a4, 0($a3)
	li	$a5, -1
	bne	$a4, $a5, beq_else.17923
	jr	$ra
beq_else.17923:
	li	$a5, 99
	sw	$a2, 0($sp)
	sw	$a1, 4($sp)
	sw	$a0, 8($sp)
	bne	$a4, $a5, bne_else.17925
	lw	$a4, 4($a3)
	li	$a5, -1
	bne	$a4, $a5, bne_else.17927
	j	bne_cont.17928
bne_else.17927:
	li	$a5, 332
	sll	$a4, $a4, 2
	add	$a4, $a5, $a4
	lw	$a4, 0($a4)
	li	$a5, 0
	sw	$a3, 12($sp)
	move	$a1, $a4
	move	$a0, $a5
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	solve_each_element_fast.2961
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	fmove	$f30, $fv
	lw	$a0, 12($sp)
	lw	$a1, 8($a0)
	li	$a2, -1
	bne	$a1, $a2, bne_else.17929
	j	bne_cont.17930
bne_else.17929:
	li	$a2, 332
	sll	$a1, $a1, 2
	add	$a1, $a2, $a1
	lw	$a1, 0($a1)
	li	$a2, 0
	lw	$a3, 0($sp)
	move	$a0, $a2
	move	$a2, $a3
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	solve_each_element_fast.2961
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	fmove	$f30, $fv
	lw	$a0, 12($sp)
	lw	$a1, 12($a0)
	li	$a2, -1
	bne	$a1, $a2, bne_else.17931
	j	bne_cont.17932
bne_else.17931:
	li	$a2, 332
	sll	$a1, $a1, 2
	add	$a1, $a2, $a1
	lw	$a1, 0($a1)
	li	$a2, 0
	lw	$a3, 0($sp)
	move	$a0, $a2
	move	$a2, $a3
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	solve_each_element_fast.2961
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	fmove	$f30, $fv
	li	$a0, 4
	lw	$a1, 12($sp)
	lw	$a2, 0($sp)
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	solve_one_or_network_fast.2965
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	fmove	$f30, $fv
bne_cont.17932:
bne_cont.17930:
bne_cont.17928:
	j	bne_cont.17926
bne_else.17925:
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
	sw	$a3, 12($sp)
	bne	$a7, $a8, bne_else.17933
	lw	$a6, 0($a2)
	move	$a2, $a4
	move	$a1, $a6
	move	$a0, $a5
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	solver_rect_fast.2853
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	move	$a0, $v0
	j	bne_cont.17934
bne_else.17933:
	li	$a8, 2
	bne	$a7, $a8, bne_else.17935
	flw	$f0, 0($a4)
	li	$v0, 0
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	fblt	$f0, $f1, fbge_else.17937
	li	$a5, 0
	j	fbge_cont.17938
fbge_else.17937:
	li	$a5, 1
fbge_cont.17938:
	li	$a7, 0
	bne	$a5, $a7, bne_else.17939
	li	$a0, 0
	j	bne_cont.17940
bne_else.17939:
	li	$a5, 540
	flw	$f0, 0($a4)
	flw	$f1, 12($a6)
	fmul	$f0, $f0, $f1
	fsw	$f0, 0($a5)
	li	$a0, 1
bne_cont.17940:
	j	bne_cont.17936
bne_else.17935:
	move	$a2, $a6
	move	$a1, $a4
	move	$a0, $a5
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	solver_second_fast2.2883
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	move	$a0, $v0
bne_cont.17936:
bne_cont.17934:
	li	$a1, 0
	bne	$a0, $a1, bne_else.17941
	j	bne_cont.17942
bne_else.17941:
	li	$a0, 540
	flw	$f0, 0($a0)
	li	$a0, 548
	flw	$f1, 0($a0)
	fsub	$f0, $f0, $f1
	li	$v0, 0
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	fblt	$f0, $f1, fbge_else.17943
	li	$a0, 0
	j	fbge_cont.17944
fbge_else.17943:
	li	$a0, 1
fbge_cont.17944:
	li	$a1, 0
	bne	$a0, $a1, bne_else.17945
	j	bne_cont.17946
bne_else.17945:
	lw	$a0, 12($sp)
	lw	$a1, 4($a0)
	li	$a2, -1
	bne	$a1, $a2, bne_else.17947
	j	bne_cont.17948
bne_else.17947:
	li	$a2, 332
	sll	$a1, $a1, 2
	add	$a1, $a2, $a1
	lw	$a1, 0($a1)
	li	$a2, 0
	lw	$a3, 0($sp)
	move	$a0, $a2
	move	$a2, $a3
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	solve_each_element_fast.2961
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	fmove	$f30, $fv
	lw	$a0, 12($sp)
	lw	$a1, 8($a0)
	li	$a2, -1
	bne	$a1, $a2, bne_else.17949
	j	bne_cont.17950
bne_else.17949:
	li	$a2, 332
	sll	$a1, $a1, 2
	add	$a1, $a2, $a1
	lw	$a1, 0($a1)
	li	$a2, 0
	lw	$a3, 0($sp)
	move	$a0, $a2
	move	$a2, $a3
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	solve_each_element_fast.2961
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	fmove	$f30, $fv
	lw	$a0, 12($sp)
	lw	$a1, 12($a0)
	li	$a2, -1
	bne	$a1, $a2, bne_else.17951
	j	bne_cont.17952
bne_else.17951:
	li	$a2, 332
	sll	$a1, $a1, 2
	add	$a1, $a2, $a1
	lw	$a1, 0($a1)
	li	$a2, 0
	lw	$a3, 0($sp)
	move	$a0, $a2
	move	$a2, $a3
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	solve_each_element_fast.2961
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	fmove	$f30, $fv
	li	$a0, 4
	lw	$a1, 12($sp)
	lw	$a2, 0($sp)
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	solve_one_or_network_fast.2965
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	fmove	$f30, $fv
bne_cont.17952:
bne_cont.17950:
bne_cont.17948:
bne_cont.17946:
bne_cont.17942:
bne_cont.17926:
	lw	$a0, 8($sp)
	addi	$a0, $a0, 1
	sll	$a1, $a0, 2
	lw	$a2, 4($sp)
	add	$a1, $a2, $a1
	lw	$a1, 0($a1)
	lw	$a3, 0($a1)
	li	$a4, -1
	bne	$a3, $a4, beq_else.17953
	jr	$ra
beq_else.17953:
	li	$a4, 99
	sw	$a0, 16($sp)
	bne	$a3, $a4, bne_else.17955
	lw	$a3, 4($a1)
	li	$a4, -1
	bne	$a3, $a4, bne_else.17957
	j	bne_cont.17958
bne_else.17957:
	li	$a4, 332
	sll	$a3, $a3, 2
	add	$a3, $a4, $a3
	lw	$a3, 0($a3)
	li	$a4, 0
	lw	$a5, 0($sp)
	sw	$a1, 20($sp)
	move	$a2, $a5
	move	$a1, $a3
	move	$a0, $a4
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	solve_each_element_fast.2961
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	fmove	$f30, $fv
	lw	$a0, 20($sp)
	lw	$a1, 8($a0)
	li	$a2, -1
	bne	$a1, $a2, bne_else.17959
	j	bne_cont.17960
bne_else.17959:
	li	$a2, 332
	sll	$a1, $a1, 2
	add	$a1, $a2, $a1
	lw	$a1, 0($a1)
	li	$a2, 0
	lw	$a3, 0($sp)
	move	$a0, $a2
	move	$a2, $a3
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	solve_each_element_fast.2961
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	fmove	$f30, $fv
	li	$a0, 3
	lw	$a1, 20($sp)
	lw	$a2, 0($sp)
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	solve_one_or_network_fast.2965
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	fmove	$f30, $fv
bne_cont.17960:
bne_cont.17958:
	j	bne_cont.17956
bne_else.17955:
	lw	$a4, 0($sp)
	sw	$a1, 20($sp)
	move	$a1, $a4
	move	$a0, $a3
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	solver_fast2.2890
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	move	$a0, $v0
	li	$a1, 0
	bne	$a0, $a1, bne_else.17961
	j	bne_cont.17962
bne_else.17961:
	li	$a0, 540
	flw	$f0, 0($a0)
	li	$a0, 548
	flw	$f1, 0($a0)
	fsub	$f0, $f0, $f1
	li	$v0, 0
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	fblt	$f0, $f1, fbge_else.17963
	li	$a0, 0
	j	fbge_cont.17964
fbge_else.17963:
	li	$a0, 1
fbge_cont.17964:
	li	$a1, 0
	bne	$a0, $a1, bne_else.17965
	j	bne_cont.17966
bne_else.17965:
	lw	$a0, 20($sp)
	lw	$a1, 4($a0)
	li	$a2, -1
	bne	$a1, $a2, bne_else.17967
	j	bne_cont.17968
bne_else.17967:
	li	$a2, 332
	sll	$a1, $a1, 2
	add	$a1, $a2, $a1
	lw	$a1, 0($a1)
	li	$a2, 0
	lw	$a3, 0($sp)
	move	$a0, $a2
	move	$a2, $a3
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	solve_each_element_fast.2961
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	fmove	$f30, $fv
	lw	$a0, 20($sp)
	lw	$a1, 8($a0)
	li	$a2, -1
	bne	$a1, $a2, bne_else.17969
	j	bne_cont.17970
bne_else.17969:
	li	$a2, 332
	sll	$a1, $a1, 2
	add	$a1, $a2, $a1
	lw	$a1, 0($a1)
	li	$a2, 0
	lw	$a3, 0($sp)
	move	$a0, $a2
	move	$a2, $a3
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	solve_each_element_fast.2961
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	fmove	$f30, $fv
	li	$a0, 3
	lw	$a1, 20($sp)
	lw	$a2, 0($sp)
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	solve_one_or_network_fast.2965
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	fmove	$f30, $fv
bne_cont.17970:
bne_cont.17968:
bne_cont.17966:
bne_cont.17962:
bne_cont.17956:
	lw	$a0, 16($sp)
	addi	$a0, $a0, 1
	lw	$a1, 4($sp)
	lw	$a2, 0($sp)
	j	trace_or_matrix_fast.2969
get_nvector_second.2979:
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
	bne	$a1, $a2, bne_else.17971
	li	$a1, 568
	fsw	$f3, 0($a1)
	li	$a1, 568
	fsw	$f4, 4($a1)
	li	$a1, 568
	fsw	$f5, 8($a1)
	j	bne_cont.17972
bne_else.17971:
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
bne_cont.17972:
	li	$a1, 568
	lw	$a0, 24($a0)
	move	$a25, $a1
	move	$a1, $a0
	move	$a0, $a25
	j	vecunit_sgn.2687
utexture.2984:
	lw	$a2, 0($a0)
	li	$a3, 580
	lw	$a4, 32($a0)
	flw	$f0, 0($a4)
	fsw	$f0, 0($a3)
	li	$a3, 580
	lw	$a4, 32($a0)
	flw	$f0, 4($a4)
	fsw	$f0, 4($a3)
	li	$a3, 580
	lw	$a4, 32($a0)
	flw	$f0, 8($a4)
	fsw	$f0, 8($a3)
	li	$a3, 1
	bne	$a2, $a3, beq_else.17973
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
	flw	$f1, 8($sp)
	fsub	$f0, $f1, $f0
	li	$v0, 16672
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	fsub	$f0, $f0, $f1
	li	$v0, 0
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	fblt	$f0, $f1, fbge_else.17974
	li	$a0, 0
	j	fbge_cont.17975
fbge_else.17974:
	li	$a0, 1
fbge_cont.17975:
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
	flw	$f1, 24($sp)
	fsub	$f0, $f1, $f0
	li	$v0, 16672
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	fsub	$f0, $f0, $f1
	li	$v0, 0
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	fblt	$f0, $f1, fbge_else.17977
	li	$a0, 0
	j	fbge_cont.17978
fbge_else.17977:
	li	$a0, 1
fbge_cont.17978:
	li	$a1, 580
	li	$a2, 0
	lw	$a3, 16($sp)
	bne	$a3, $a2, bne_else.17979
	li	$a2, 0
	bne	$a0, $a2, bne_else.17981
	li	$v0, 17279
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f0, $v0
	j	bne_cont.17982
bne_else.17981:
	li	$v0, 0
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f0, $v0
bne_cont.17982:
	j	bne_cont.17980
bne_else.17979:
	li	$a2, 0
	bne	$a0, $a2, bne_else.17983
	li	$v0, 0
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f0, $v0
	j	bne_cont.17984
bne_else.17983:
	li	$v0, 17279
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f0, $v0
bne_cont.17984:
bne_cont.17980:
	fsw	$f0, 4($a1)
	jr	$ra
beq_else.17973:
	li	$a3, 2
	bne	$a2, $a3, beq_else.17986
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
beq_else.17986:
	li	$a3, 3
	bne	$a2, $a3, beq_else.17988
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
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	min_caml_sqrt
	subi	$sp, $sp, 40
	lw	$ra, 36($sp)
	fmove	$f0, $fv
	li	$v0, 16672
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	finv	$f1, $f1
	fmul	$f0, $f0, $f1
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
beq_else.17988:
	li	$a3, 4
	bne	$a2, $a3, beq_else.17990
	flw	$f0, 0($a1)
	lw	$a2, 20($a0)
	flw	$f1, 0($a2)
	fsub	$f0, $f0, $f1
	lw	$a2, 16($a0)
	flw	$f1, 0($a2)
	sw	$a0, 0($sp)
	sw	$a1, 4($sp)
	fsw	$f0, 40($sp)
	fmove	$f0, $f1
	sw	$ra, 52($sp)
	addi	$sp, $sp, 56
	jal	min_caml_sqrt
	subi	$sp, $sp, 56
	lw	$ra, 52($sp)
	fmove	$f0, $fv
	flw	$f1, 40($sp)
	fmul	$f0, $f1, $f0
	lw	$a0, 4($sp)
	flw	$f1, 8($a0)
	lw	$a1, 0($sp)
	lw	$a2, 20($a1)
	flw	$f2, 8($a2)
	fsub	$f1, $f1, $f2
	lw	$a2, 16($a1)
	flw	$f2, 8($a2)
	fsw	$f0, 48($sp)
	fsw	$f1, 56($sp)
	fmove	$f0, $f2
	sw	$ra, 68($sp)
	addi	$sp, $sp, 72
	jal	min_caml_sqrt
	subi	$sp, $sp, 72
	lw	$ra, 68($sp)
	fmove	$f0, $fv
	flw	$f1, 56($sp)
	fmul	$f0, $f1, $f0
	flw	$f1, 48($sp)
	fmul	$f2, $f1, $f1
	fmul	$f3, $f0, $f0
	fadd	$f2, $f2, $f3
	li	$v0, 0
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f3, $v0
	fblt	$f1, $f3, fbge_else.17991
	fmove	$f3, $f1
	j	fbge_cont.17992
fbge_else.17991:
	fneg	$f3, $f1
fbge_cont.17992:
	li	$v0, 14545
	sll	$v0, $v0, 16
	ori	$v0, $v0, 46871
	mtc1	$f4, $v0
	fsub	$f3, $f3, $f4
	li	$v0, 0
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f4, $v0
	fblt	$f3, $f4, fbge_else.17993
	li	$a0, 0
	j	fbge_cont.17994
fbge_else.17993:
	li	$a0, 1
fbge_cont.17994:
	li	$a1, 0
	fsw	$f2, 64($sp)
	bne	$a0, $a1, bne_else.17995
	finv	$f1, $f1
	fmul	$f0, $f0, $f1
	li	$v0, 0
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	fblt	$f0, $f1, fbge_else.17997
	j	fbge_cont.17998
fbge_else.17997:
	fneg	$f0, $f0
fbge_cont.17998:
	sw	$ra, 76($sp)
	addi	$sp, $sp, 80
	jal	min_caml_atan
	subi	$sp, $sp, 80
	lw	$ra, 76($sp)
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
	j	bne_cont.17996
bne_else.17995:
	li	$v0, 16752
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f0, $v0
bne_cont.17996:
	fsw	$f0, 72($sp)
	sw	$ra, 84($sp)
	addi	$sp, $sp, 88
	jal	min_caml_floor
	subi	$sp, $sp, 88
	lw	$ra, 84($sp)
	fmove	$f0, $fv
	flw	$f1, 72($sp)
	fsub	$f0, $f1, $f0
	lw	$a0, 4($sp)
	flw	$f1, 4($a0)
	lw	$a0, 0($sp)
	lw	$a1, 20($a0)
	flw	$f2, 4($a1)
	fsub	$f1, $f1, $f2
	lw	$a0, 16($a0)
	flw	$f2, 4($a0)
	fsw	$f0, 80($sp)
	fsw	$f1, 88($sp)
	fmove	$f0, $f2
	sw	$ra, 100($sp)
	addi	$sp, $sp, 104
	jal	min_caml_sqrt
	subi	$sp, $sp, 104
	lw	$ra, 100($sp)
	fmove	$f0, $fv
	flw	$f1, 88($sp)
	fmul	$f0, $f1, $f0
	li	$v0, 0
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	flw	$f2, 64($sp)
	fblt	$f2, $f1, fbge_else.17999
	fmove	$f1, $f2
	j	fbge_cont.18000
fbge_else.17999:
	fneg	$f1, $f2
fbge_cont.18000:
	li	$v0, 14545
	sll	$v0, $v0, 16
	ori	$v0, $v0, 46871
	mtc1	$f3, $v0
	fsub	$f1, $f1, $f3
	li	$v0, 0
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f3, $v0
	fblt	$f1, $f3, fbge_else.18001
	li	$a0, 0
	j	fbge_cont.18002
fbge_else.18001:
	li	$a0, 1
fbge_cont.18002:
	li	$a1, 0
	bne	$a0, $a1, bne_else.18003
	finv	$f1, $f2
	fmul	$f0, $f0, $f1
	li	$v0, 0
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	fblt	$f0, $f1, fbge_else.18005
	j	fbge_cont.18006
fbge_else.18005:
	fneg	$f0, $f0
fbge_cont.18006:
	sw	$ra, 100($sp)
	addi	$sp, $sp, 104
	jal	min_caml_atan
	subi	$sp, $sp, 104
	lw	$ra, 100($sp)
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
	j	bne_cont.18004
bne_else.18003:
	li	$v0, 16752
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f0, $v0
bne_cont.18004:
	fsw	$f0, 96($sp)
	sw	$ra, 108($sp)
	addi	$sp, $sp, 112
	jal	min_caml_floor
	subi	$sp, $sp, 112
	lw	$ra, 108($sp)
	fmove	$f0, $fv
	flw	$f1, 96($sp)
	fsub	$f0, $f1, $f0
	li	$v0, 16128
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	flw	$f2, 80($sp)
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
	li	$v0, 0
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	fblt	$f0, $f1, fbge_else.18007
	li	$a0, 0
	j	fbge_cont.18008
fbge_else.18007:
	li	$a0, 1
fbge_cont.18008:
	li	$a1, 0
	bne	$a0, $a1, bne_else.18009
	j	bne_cont.18010
bne_else.18009:
	li	$v0, 0
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f0, $v0
bne_cont.18010:
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
beq_else.17990:
	jr	$ra
add_light.2987:
	li	$v0, 0
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f3, $v0
	fblt	$f3, $f0, fbge_else.18013
	li	$a0, 0
	j	fbge_cont.18014
fbge_else.18013:
	li	$a0, 1
fbge_cont.18014:
	li	$a1, 0
	bne	$a0, $a1, bne_else.18015
	j	bne_cont.18016
bne_else.18015:
	li	$a0, 604
	li	$a1, 580
	flw	$f3, 0($a0)
	flw	$f4, 0($a1)
	fmul	$f4, $f0, $f4
	fadd	$f3, $f3, $f4
	fsw	$f3, 0($a0)
	flw	$f3, 4($a0)
	flw	$f4, 4($a1)
	fmul	$f4, $f0, $f4
	fadd	$f3, $f3, $f4
	fsw	$f3, 4($a0)
	flw	$f3, 8($a0)
	flw	$f4, 8($a1)
	fmul	$f0, $f0, $f4
	fadd	$f0, $f3, $f0
	fsw	$f0, 8($a0)
bne_cont.18016:
	li	$v0, 0
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f0, $v0
	fblt	$f0, $f1, fbge_else.18017
	li	$a0, 0
	j	fbge_cont.18018
fbge_else.18017:
	li	$a0, 1
fbge_cont.18018:
	li	$a1, 0
	bne	$a0, $a1, beq_else.18019
	jr	$ra
beq_else.18019:
	fmul	$f0, $f1, $f1
	fmul	$f0, $f0, $f0
	fmul	$f0, $f0, $f2
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
trace_reflections.2991:
	li	$a2, 0
	blt	$a0, $a2, bge_else.18022
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
	jal	trace_or_matrix_fast.2969
	subi	$sp, $sp, 48
	lw	$ra, 44($sp)
	fmove	$f30, $fv
	li	$a0, 548
	flw	$f0, 0($a0)
	li	$v0, -16948
	sll	$v0, $v0, 16
	ori	$v0, $v0, 52429
	mtc1	$f1, $v0
	fsub	$f1, $f1, $f0
	li	$v0, 0
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fblt	$f1, $f2, fbge_else.18025
	li	$a0, 0
	j	fbge_cont.18026
fbge_else.18025:
	li	$a0, 1
fbge_cont.18026:
	li	$a1, 0
	bne	$a0, $a1, bne_else.18027
	li	$a0, 0
	j	bne_cont.18028
bne_else.18027:
	li	$v0, 19646
	sll	$v0, $v0, 16
	ori	$v0, $v0, 48160
	mtc1	$f1, $v0
	fsub	$f0, $f0, $f1
	li	$v0, 0
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	fblt	$f0, $f1, fbge_else.18029
	li	$a0, 0
	j	fbge_cont.18030
fbge_else.18029:
	li	$a0, 1
fbge_cont.18030:
bne_cont.18028:
	li	$a1, 0
	bne	$a0, $a1, bne_else.18031
	j	bne_cont.18032
bne_else.18031:
	li	$a0, 564
	lw	$a0, 0($a0)
	sla	$a0, $a0, 2
	li	$a1, 544
	lw	$a1, 0($a1)
	add	$a0, $a0, $a1
	lw	$a1, 36($sp)
	lw	$a2, 0($a1)
	bne	$a0, $a2, bne_else.18033
	li	$a0, 0
	li	$a2, 536
	lw	$a2, 0($a2)
	move	$a1, $a2
	sw	$ra, 44($sp)
	addi	$sp, $sp, 48
	jal	shadow_check_one_or_matrix.2944
	subi	$sp, $sp, 48
	lw	$ra, 44($sp)
	move	$a0, $v0
	li	$a1, 0
	bne	$a0, $a1, bne_else.18035
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
	flw	$f3, 8($sp)
	fmove	$f2, $f3
	sw	$ra, 44($sp)
	addi	$sp, $sp, 48
	jal	add_light.2987
	subi	$sp, $sp, 48
	lw	$ra, 44($sp)
	fmove	$f30, $fv
	j	bne_cont.18036
bne_else.18035:
bne_cont.18036:
	j	bne_cont.18034
bne_else.18033:
bne_cont.18034:
bne_cont.18032:
	lw	$a0, 0($sp)
	subi	$a0, $a0, 1
	flw	$f0, 24($sp)
	flw	$f1, 8($sp)
	lw	$a1, 16($sp)
	j	trace_reflections.2991
bge_else.18022:
	jr	$ra
trace_ray.2996:
	li	$a3, 4
	blt	$a3, $a0, bge_else.18038
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
	jal	trace_or_matrix.2955
	subi	$sp, $sp, 40
	lw	$ra, 36($sp)
	fmove	$f30, $fv
	li	$a0, 548
	flw	$f0, 0($a0)
	li	$v0, -16948
	sll	$v0, $v0, 16
	ori	$v0, $v0, 52429
	mtc1	$f1, $v0
	fsub	$f1, $f1, $f0
	li	$v0, 0
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fblt	$f1, $f2, fbge_else.18040
	li	$a0, 0
	j	fbge_cont.18041
fbge_else.18040:
	li	$a0, 1
fbge_cont.18041:
	li	$a1, 0
	bne	$a0, $a1, bne_else.18042
	li	$a0, 0
	j	bne_cont.18043
bne_else.18042:
	li	$v0, 19646
	sll	$v0, $v0, 16
	ori	$v0, $v0, 48160
	mtc1	$f1, $v0
	fsub	$f0, $f0, $f1
	li	$v0, 0
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	fblt	$f0, $f1, fbge_else.18044
	li	$a0, 0
	j	fbge_cont.18045
fbge_else.18044:
	li	$a0, 1
fbge_cont.18045:
bne_cont.18043:
	li	$a1, 0
	bne	$a0, $a1, beq_else.18046
	li	$a0, -1
	lw	$a1, 32($sp)
	sll	$a2, $a1, 2
	lw	$a3, 28($sp)
	add	$a2, $a3, $a2
	sw	$a0, 0($a2)
	li	$a0, 0
	bne	$a1, $a0, beq_else.18047
	jr	$ra
beq_else.18047:
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
	li	$v0, 0
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	fblt	$f1, $f0, fbge_else.18049
	li	$a0, 0
	j	fbge_cont.18050
fbge_else.18049:
	li	$a0, 1
fbge_cont.18050:
	li	$a1, 0
	bne	$a0, $a1, beq_else.18051
	jr	$ra
beq_else.18051:
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
beq_else.18046:
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
	sw	$a2, 36($sp)
	fsw	$f0, 40($sp)
	sw	$a0, 48($sp)
	sw	$a1, 52($sp)
	bne	$a3, $a4, bne_else.18054
	li	$a3, 544
	lw	$a3, 0($a3)
	li	$a4, 568
	li	$v0, 0
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fsw	$f2, 0($a4)
	fsw	$f2, 4($a4)
	fsw	$f2, 8($a4)
	li	$a4, 568
	subi	$a5, $a3, 1
	subi	$a3, $a3, 1
	sll	$a3, $a3, 2
	lw	$a6, 24($sp)
	add	$a3, $a6, $a3
	flw	$f2, 0($a3)
	li	$v0, 0
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f3, $v0
	fbne	$f2, $f3, fbne_else.18056
	li	$a3, 1
	j	fbne_cont.18057
fbne_else.18056:
	li	$a3, 0
fbne_cont.18057:
	li	$a7, 0
	bne	$a3, $a7, bne_else.18058
	li	$v0, 0
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f3, $v0
	fblt	$f3, $f2, fbge_else.18060
	li	$a3, 0
	j	fbge_cont.18061
fbge_else.18060:
	li	$a3, 1
fbge_cont.18061:
	li	$a7, 0
	bne	$a3, $a7, bne_else.18062
	li	$v0, -16512
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	j	bne_cont.18063
bne_else.18062:
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
bne_cont.18063:
	j	bne_cont.18059
bne_else.18058:
	li	$v0, 0
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
bne_cont.18059:
	fneg	$f2, $f2
	sll	$a3, $a5, 2
	add	$a3, $a4, $a3
	fsw	$f2, 0($a3)
	j	bne_cont.18055
bne_else.18054:
	li	$a4, 2
	bne	$a3, $a4, bne_else.18064
	li	$a3, 568
	lw	$a4, 16($a1)
	flw	$f2, 0($a4)
	fneg	$f2, $f2
	fsw	$f2, 0($a3)
	li	$a3, 568
	lw	$a4, 16($a1)
	flw	$f2, 4($a4)
	fneg	$f2, $f2
	fsw	$f2, 4($a3)
	li	$a3, 568
	lw	$a4, 16($a1)
	flw	$f2, 8($a4)
	fneg	$f2, $f2
	fsw	$f2, 8($a3)
	j	bne_cont.18065
bne_else.18064:
	move	$a0, $a1
	sw	$ra, 60($sp)
	addi	$sp, $sp, 64
	jal	get_nvector_second.2979
	subi	$sp, $sp, 64
	lw	$ra, 60($sp)
	fmove	$f30, $fv
bne_cont.18065:
bne_cont.18055:
	li	$a0, 636
	li	$a1, 552
	flw	$f0, 0($a1)
	fsw	$f0, 0($a0)
	flw	$f0, 4($a1)
	fsw	$f0, 4($a0)
	flw	$f0, 8($a1)
	fsw	$f0, 8($a0)
	li	$a1, 552
	lw	$a0, 52($sp)
	sw	$ra, 60($sp)
	addi	$sp, $sp, 64
	jal	utexture.2984
	subi	$sp, $sp, 64
	lw	$ra, 60($sp)
	fmove	$f30, $fv
	lw	$a0, 48($sp)
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
	lw	$a4, 52($sp)
	lw	$a5, 28($a4)
	flw	$f0, 0($a5)
	li	$v0, 16128
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	fsub	$f0, $f0, $f1
	li	$v0, 0
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	fblt	$f0, $f1, fbge_else.18066
	li	$a5, 0
	j	fbge_cont.18067
fbge_else.18066:
	li	$a5, 1
fbge_cont.18067:
	li	$a6, 0
	bne	$a5, $a6, bne_else.18068
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
	j	bne_cont.18069
bne_else.18068:
	li	$a5, 0
	sll	$a6, $a1, 2
	add	$a6, $a2, $a6
	sw	$a5, 0($a6)
bne_cont.18069:
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
	jal	shadow_check_one_or_matrix.2944
	subi	$sp, $sp, 72
	lw	$ra, 68($sp)
	move	$a0, $v0
	li	$a1, 0
	bne	$a0, $a1, bne_else.18070
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
	flw	$f3, 56($sp)
	fmove	$f1, $f2
	fmove	$f2, $f3
	sw	$ra, 68($sp)
	addi	$sp, $sp, 72
	jal	add_light.2987
	subi	$sp, $sp, 72
	lw	$ra, 68($sp)
	fmove	$f30, $fv
	j	bne_cont.18071
bne_else.18070:
bne_cont.18071:
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
	jal	setup_startp_constants.2907
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
	jal	trace_reflections.2991
	subi	$sp, $sp, 72
	lw	$ra, 68($sp)
	fmove	$f30, $fv
	li	$v0, 15820
	sll	$v0, $v0, 16
	ori	$v0, $v0, 52429
	mtc1	$f0, $v0
	flw	$f1, 16($sp)
	fsub	$f0, $f0, $f1
	li	$v0, 0
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fblt	$f0, $f2, fbge_else.18072
	li	$a0, 0
	j	fbge_cont.18073
fbge_else.18072:
	li	$a0, 1
fbge_cont.18073:
	li	$a1, 0
	bne	$a0, $a1, beq_else.18074
	jr	$ra
beq_else.18074:
	li	$a0, 4
	lw	$a1, 32($sp)
	blt	$a1, $a0, bge_else.18076
	j	bge_cont.18077
bge_else.18076:
	addi	$a0, $a1, 1
	li	$a2, -1
	sll	$a0, $a0, 2
	lw	$a3, 28($sp)
	add	$a0, $a3, $a0
	sw	$a2, 0($a0)
bge_cont.18077:
	li	$a0, 2
	lw	$a2, 36($sp)
	bne	$a2, $a0, beq_else.18078
	lw	$a0, 52($sp)
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
	j	trace_ray.2996
beq_else.18078:
	jr	$ra
bge_else.18038:
	jr	$ra
trace_diffuse_ray.3002:
	li	$a1, 548
	li	$v0, 20078
	sll	$v0, $v0, 16
	ori	$v0, $v0, 27432
	mtc1	$f1, $v0
	fsw	$f1, 0($a1)
	li	$a1, 0
	li	$a2, 536
	lw	$a2, 0($a2)
	fsw	$f0, 0($sp)
	sw	$a0, 8($sp)
	move	$a25, $a2
	move	$a2, $a0
	move	$a0, $a1
	move	$a1, $a25
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	trace_or_matrix_fast.2969
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	fmove	$f30, $fv
	li	$a0, 548
	flw	$f0, 0($a0)
	li	$v0, -16948
	sll	$v0, $v0, 16
	ori	$v0, $v0, 52429
	mtc1	$f1, $v0
	fsub	$f1, $f1, $f0
	li	$v0, 0
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fblt	$f1, $f2, fbge_else.18081
	li	$a0, 0
	j	fbge_cont.18082
fbge_else.18081:
	li	$a0, 1
fbge_cont.18082:
	li	$a1, 0
	bne	$a0, $a1, bne_else.18083
	li	$a0, 0
	j	bne_cont.18084
bne_else.18083:
	li	$v0, 19646
	sll	$v0, $v0, 16
	ori	$v0, $v0, 48160
	mtc1	$f1, $v0
	fsub	$f0, $f0, $f1
	li	$v0, 0
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	fblt	$f0, $f1, fbge_else.18085
	li	$a0, 0
	j	fbge_cont.18086
fbge_else.18085:
	li	$a0, 1
fbge_cont.18086:
bne_cont.18084:
	li	$a1, 0
	bne	$a0, $a1, beq_else.18087
	jr	$ra
beq_else.18087:
	li	$a0, 48
	li	$a1, 564
	lw	$a1, 0($a1)
	sll	$a1, $a1, 2
	add	$a1, $a0, $a1
	lw	$a0, 0($a1)
	lw	$a1, 8($sp)
	lw	$a1, 0($a1)
	lw	$a2, 4($a0)
	li	$a3, 1
	sw	$a0, 12($sp)
	bne	$a2, $a3, bne_else.18089
	li	$a2, 544
	lw	$a2, 0($a2)
	li	$a3, 568
	li	$v0, 0
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f0, $v0
	fsw	$f0, 0($a3)
	fsw	$f0, 4($a3)
	fsw	$f0, 8($a3)
	li	$a3, 568
	subi	$a4, $a2, 1
	subi	$a2, $a2, 1
	sll	$a2, $a2, 2
	add	$a2, $a1, $a2
	flw	$f0, 0($a2)
	li	$v0, 0
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	fbne	$f0, $f1, fbne_else.18091
	li	$a1, 1
	j	fbne_cont.18092
fbne_else.18091:
	li	$a1, 0
fbne_cont.18092:
	li	$a2, 0
	bne	$a1, $a2, bne_else.18093
	li	$v0, 0
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	fblt	$f1, $f0, fbge_else.18095
	li	$a1, 0
	j	fbge_cont.18096
fbge_else.18095:
	li	$a1, 1
fbge_cont.18096:
	li	$a2, 0
	bne	$a1, $a2, bne_else.18097
	li	$v0, -16512
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f0, $v0
	j	bne_cont.18098
bne_else.18097:
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f0, $v0
bne_cont.18098:
	j	bne_cont.18094
bne_else.18093:
	li	$v0, 0
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f0, $v0
bne_cont.18094:
	fneg	$f0, $f0
	sll	$a1, $a4, 2
	add	$a1, $a3, $a1
	fsw	$f0, 0($a1)
	j	bne_cont.18090
bne_else.18089:
	li	$a1, 2
	bne	$a2, $a1, bne_else.18099
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
	j	bne_cont.18100
bne_else.18099:
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	get_nvector_second.2979
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	fmove	$f30, $fv
bne_cont.18100:
bne_cont.18090:
	li	$a1, 552
	lw	$a0, 12($sp)
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	utexture.2984
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	fmove	$f30, $fv
	li	$a0, 0
	li	$a1, 536
	lw	$a1, 0($a1)
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	shadow_check_one_or_matrix.2944
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	move	$a0, $v0
	li	$a1, 0
	bne	$a0, $a1, beq_else.18101
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
	li	$v0, 0
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	fblt	$f1, $f0, fbge_else.18102
	li	$a0, 0
	j	fbge_cont.18103
fbge_else.18102:
	li	$a0, 1
fbge_cont.18103:
	li	$a1, 0
	bne	$a0, $a1, bne_else.18104
	li	$v0, 0
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f0, $v0
	j	bne_cont.18105
bne_else.18104:
bne_cont.18105:
	li	$a0, 592
	flw	$f1, 0($sp)
	fmul	$f0, $f1, $f0
	lw	$a1, 12($sp)
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
	jr	$ra
beq_else.18101:
	jr	$ra
iter_trace_diffuse_rays.3005:
	li	$a4, 0
	blt	$a3, $a4, bge_else.18108
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
	li	$v0, 0
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	fblt	$f0, $f1, fbge_else.18109
	li	$a4, 0
	j	fbge_cont.18110
fbge_else.18109:
	li	$a4, 1
fbge_cont.18110:
	li	$a5, 0
	sw	$a2, 0($sp)
	sw	$a1, 4($sp)
	sw	$a0, 8($sp)
	sw	$a3, 12($sp)
	bne	$a4, $a5, bne_else.18111
	sll	$a4, $a3, 2
	add	$a4, $a0, $a4
	lw	$a4, 0($a4)
	li	$v0, 17174
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	finv	$f1, $f1
	fmul	$f0, $f0, $f1
	move	$a0, $a4
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	trace_diffuse_ray.3002
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	fmove	$f30, $fv
	j	bne_cont.18112
bne_else.18111:
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
	move	$a0, $a4
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	trace_diffuse_ray.3002
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	fmove	$f30, $fv
bne_cont.18112:
	lw	$a0, 12($sp)
	subi	$a0, $a0, 2
	li	$a1, 0
	blt	$a0, $a1, bge_else.18113
	sll	$a1, $a0, 2
	lw	$a2, 8($sp)
	add	$a1, $a2, $a1
	lw	$a1, 0($a1)
	lw	$a1, 0($a1)
	flw	$f0, 0($a1)
	lw	$a3, 4($sp)
	flw	$f1, 0($a3)
	fmul	$f0, $f0, $f1
	flw	$f1, 4($a1)
	flw	$f2, 4($a3)
	fmul	$f1, $f1, $f2
	fadd	$f0, $f0, $f1
	flw	$f1, 8($a1)
	flw	$f2, 8($a3)
	fmul	$f1, $f1, $f2
	fadd	$f0, $f0, $f1
	li	$v0, 0
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	fblt	$f0, $f1, fbge_else.18114
	li	$a1, 0
	j	fbge_cont.18115
fbge_else.18114:
	li	$a1, 1
fbge_cont.18115:
	li	$a4, 0
	sw	$a0, 16($sp)
	bne	$a1, $a4, bne_else.18116
	sll	$a1, $a0, 2
	add	$a1, $a2, $a1
	lw	$a1, 0($a1)
	li	$v0, 17174
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	finv	$f1, $f1
	fmul	$f0, $f0, $f1
	move	$a0, $a1
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	trace_diffuse_ray.3002
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	fmove	$f30, $fv
	j	bne_cont.18117
bne_else.18116:
	addi	$a1, $a0, 1
	sll	$a1, $a1, 2
	add	$a1, $a2, $a1
	lw	$a1, 0($a1)
	li	$v0, -15594
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	finv	$f1, $f1
	fmul	$f0, $f0, $f1
	move	$a0, $a1
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	trace_diffuse_ray.3002
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	fmove	$f30, $fv
bne_cont.18117:
	lw	$a0, 16($sp)
	subi	$a3, $a0, 2
	lw	$a0, 8($sp)
	lw	$a1, 4($sp)
	lw	$a2, 0($sp)
	j	iter_trace_diffuse_rays.3005
bge_else.18113:
	jr	$ra
bge_else.18108:
	jr	$ra
trace_diffuse_ray_80percent.3014:
	li	$a3, 0
	sw	$a1, 0($sp)
	sw	$a2, 4($sp)
	sw	$a0, 8($sp)
	bne	$a0, $a3, bne_else.18120
	j	bne_cont.18121
bne_else.18120:
	li	$a3, 716
	lw	$a3, 0($a3)
	li	$a4, 648
	flw	$f0, 0($a2)
	fsw	$f0, 0($a4)
	flw	$f0, 4($a2)
	fsw	$f0, 4($a4)
	flw	$f0, 8($a2)
	fsw	$f0, 8($a4)
	li	$a4, 0
	lw	$a4, 0($a4)
	subi	$a4, $a4, 1
	sw	$a3, 12($sp)
	move	$a1, $a4
	move	$a0, $a2
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	setup_startp_constants.2907
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	fmove	$f30, $fv
	li	$a3, 118
	lw	$a0, 12($sp)
	lw	$a1, 0($sp)
	lw	$a2, 4($sp)
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	iter_trace_diffuse_rays.3005
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	fmove	$f30, $fv
bne_cont.18121:
	li	$a0, 1
	lw	$a1, 8($sp)
	bne	$a1, $a0, bne_else.18122
	j	bne_cont.18123
bne_else.18122:
	li	$a0, 716
	lw	$a0, 4($a0)
	li	$a2, 648
	lw	$a3, 4($sp)
	flw	$f0, 0($a3)
	fsw	$f0, 0($a2)
	flw	$f0, 4($a3)
	fsw	$f0, 4($a2)
	flw	$f0, 8($a3)
	fsw	$f0, 8($a2)
	li	$a2, 0
	lw	$a2, 0($a2)
	subi	$a2, $a2, 1
	sw	$a0, 16($sp)
	move	$a1, $a2
	move	$a0, $a3
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	setup_startp_constants.2907
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	fmove	$f30, $fv
	li	$a3, 118
	lw	$a0, 16($sp)
	lw	$a1, 0($sp)
	lw	$a2, 4($sp)
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	iter_trace_diffuse_rays.3005
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	fmove	$f30, $fv
bne_cont.18123:
	li	$a0, 2
	lw	$a1, 8($sp)
	bne	$a1, $a0, bne_else.18124
	j	bne_cont.18125
bne_else.18124:
	li	$a0, 716
	lw	$a0, 8($a0)
	li	$a2, 648
	lw	$a3, 4($sp)
	flw	$f0, 0($a3)
	fsw	$f0, 0($a2)
	flw	$f0, 4($a3)
	fsw	$f0, 4($a2)
	flw	$f0, 8($a3)
	fsw	$f0, 8($a2)
	li	$a2, 0
	lw	$a2, 0($a2)
	subi	$a2, $a2, 1
	sw	$a0, 20($sp)
	move	$a1, $a2
	move	$a0, $a3
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	setup_startp_constants.2907
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	fmove	$f30, $fv
	li	$a3, 118
	lw	$a0, 20($sp)
	lw	$a1, 0($sp)
	lw	$a2, 4($sp)
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	iter_trace_diffuse_rays.3005
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	fmove	$f30, $fv
bne_cont.18125:
	li	$a0, 3
	lw	$a1, 8($sp)
	bne	$a1, $a0, bne_else.18126
	j	bne_cont.18127
bne_else.18126:
	li	$a0, 716
	lw	$a0, 12($a0)
	li	$a2, 648
	lw	$a3, 4($sp)
	flw	$f0, 0($a3)
	fsw	$f0, 0($a2)
	flw	$f0, 4($a3)
	fsw	$f0, 4($a2)
	flw	$f0, 8($a3)
	fsw	$f0, 8($a2)
	li	$a2, 0
	lw	$a2, 0($a2)
	subi	$a2, $a2, 1
	sw	$a0, 24($sp)
	move	$a1, $a2
	move	$a0, $a3
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	setup_startp_constants.2907
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	fmove	$f30, $fv
	li	$a3, 118
	lw	$a0, 24($sp)
	lw	$a1, 0($sp)
	lw	$a2, 4($sp)
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	iter_trace_diffuse_rays.3005
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	fmove	$f30, $fv
bne_cont.18127:
	li	$a0, 4
	lw	$a1, 8($sp)
	bne	$a1, $a0, beq_else.18128
	jr	$ra
beq_else.18128:
	li	$a0, 716
	lw	$a0, 16($a0)
	li	$a1, 648
	lw	$a2, 4($sp)
	flw	$f0, 0($a2)
	fsw	$f0, 0($a1)
	flw	$f0, 4($a2)
	fsw	$f0, 4($a1)
	flw	$f0, 8($a2)
	fsw	$f0, 8($a1)
	li	$a1, 0
	lw	$a1, 0($a1)
	subi	$a1, $a1, 1
	sw	$a0, 28($sp)
	move	$a0, $a2
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	setup_startp_constants.2907
	subi	$sp, $sp, 40
	lw	$ra, 36($sp)
	fmove	$f30, $fv
	li	$a3, 118
	lw	$a0, 28($sp)
	lw	$a1, 0($sp)
	lw	$a2, 4($sp)
	j	iter_trace_diffuse_rays.3005
calc_diffuse_using_1point.3018:
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
	lw	$a0, 24($a0)
	lw	$a0, 0($a0)
	sll	$a2, $a1, 2
	add	$a2, $a3, $a2
	lw	$a2, 0($a2)
	sll	$a3, $a1, 2
	add	$a3, $a4, $a3
	lw	$a3, 0($a3)
	li	$a4, 0
	sw	$a5, 0($sp)
	sw	$a1, 4($sp)
	sw	$a2, 8($sp)
	sw	$a3, 12($sp)
	sw	$a0, 16($sp)
	bne	$a0, $a4, bne_else.18130
	j	bne_cont.18131
bne_else.18130:
	li	$a4, 716
	lw	$a4, 0($a4)
	li	$a6, 648
	flw	$f0, 0($a3)
	fsw	$f0, 0($a6)
	flw	$f0, 4($a3)
	fsw	$f0, 4($a6)
	flw	$f0, 8($a3)
	fsw	$f0, 8($a6)
	li	$a6, 0
	lw	$a6, 0($a6)
	subi	$a6, $a6, 1
	sw	$a4, 20($sp)
	move	$a1, $a6
	move	$a0, $a3
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	setup_startp_constants.2907
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	fmove	$f30, $fv
	lw	$a0, 20($sp)
	lw	$a1, 472($a0)
	lw	$a1, 0($a1)
	flw	$f0, 0($a1)
	lw	$a2, 8($sp)
	flw	$f1, 0($a2)
	fmul	$f0, $f0, $f1
	flw	$f1, 4($a1)
	flw	$f2, 4($a2)
	fmul	$f1, $f1, $f2
	fadd	$f0, $f0, $f1
	flw	$f1, 8($a1)
	flw	$f2, 8($a2)
	fmul	$f1, $f1, $f2
	fadd	$f0, $f0, $f1
	li	$v0, 0
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	fblt	$f0, $f1, fbge_else.18132
	li	$a1, 0
	j	fbge_cont.18133
fbge_else.18132:
	li	$a1, 1
fbge_cont.18133:
	li	$a3, 0
	bne	$a1, $a3, bne_else.18134
	lw	$a1, 472($a0)
	li	$v0, 17174
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	finv	$f1, $f1
	fmul	$f0, $f0, $f1
	move	$a0, $a1
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	trace_diffuse_ray.3002
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	fmove	$f30, $fv
	j	bne_cont.18135
bne_else.18134:
	lw	$a1, 476($a0)
	li	$v0, -15594
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	finv	$f1, $f1
	fmul	$f0, $f0, $f1
	move	$a0, $a1
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	trace_diffuse_ray.3002
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	fmove	$f30, $fv
bne_cont.18135:
	li	$a3, 116
	lw	$a0, 20($sp)
	lw	$a1, 8($sp)
	lw	$a2, 12($sp)
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	iter_trace_diffuse_rays.3005
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	fmove	$f30, $fv
bne_cont.18131:
	li	$a0, 1
	lw	$a1, 16($sp)
	bne	$a1, $a0, bne_else.18136
	j	bne_cont.18137
bne_else.18136:
	li	$a0, 716
	lw	$a0, 4($a0)
	li	$a2, 648
	lw	$a3, 12($sp)
	flw	$f0, 0($a3)
	fsw	$f0, 0($a2)
	flw	$f0, 4($a3)
	fsw	$f0, 4($a2)
	flw	$f0, 8($a3)
	fsw	$f0, 8($a2)
	li	$a2, 0
	lw	$a2, 0($a2)
	subi	$a2, $a2, 1
	sw	$a0, 24($sp)
	move	$a1, $a2
	move	$a0, $a3
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	setup_startp_constants.2907
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	fmove	$f30, $fv
	lw	$a0, 24($sp)
	lw	$a1, 472($a0)
	lw	$a1, 0($a1)
	flw	$f0, 0($a1)
	lw	$a2, 8($sp)
	flw	$f1, 0($a2)
	fmul	$f0, $f0, $f1
	flw	$f1, 4($a1)
	flw	$f2, 4($a2)
	fmul	$f1, $f1, $f2
	fadd	$f0, $f0, $f1
	flw	$f1, 8($a1)
	flw	$f2, 8($a2)
	fmul	$f1, $f1, $f2
	fadd	$f0, $f0, $f1
	li	$v0, 0
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	fblt	$f0, $f1, fbge_else.18138
	li	$a1, 0
	j	fbge_cont.18139
fbge_else.18138:
	li	$a1, 1
fbge_cont.18139:
	li	$a3, 0
	bne	$a1, $a3, bne_else.18140
	lw	$a1, 472($a0)
	li	$v0, 17174
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	finv	$f1, $f1
	fmul	$f0, $f0, $f1
	move	$a0, $a1
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	trace_diffuse_ray.3002
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	fmove	$f30, $fv
	j	bne_cont.18141
bne_else.18140:
	lw	$a1, 476($a0)
	li	$v0, -15594
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	finv	$f1, $f1
	fmul	$f0, $f0, $f1
	move	$a0, $a1
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	trace_diffuse_ray.3002
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	fmove	$f30, $fv
bne_cont.18141:
	li	$a3, 116
	lw	$a0, 24($sp)
	lw	$a1, 8($sp)
	lw	$a2, 12($sp)
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	iter_trace_diffuse_rays.3005
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	fmove	$f30, $fv
bne_cont.18137:
	li	$a0, 2
	lw	$a1, 16($sp)
	bne	$a1, $a0, bne_else.18142
	j	bne_cont.18143
bne_else.18142:
	li	$a0, 716
	lw	$a0, 8($a0)
	li	$a2, 648
	lw	$a3, 12($sp)
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
	jal	setup_startp_constants.2907
	subi	$sp, $sp, 40
	lw	$ra, 36($sp)
	fmove	$f30, $fv
	lw	$a0, 28($sp)
	lw	$a1, 472($a0)
	lw	$a1, 0($a1)
	flw	$f0, 0($a1)
	lw	$a2, 8($sp)
	flw	$f1, 0($a2)
	fmul	$f0, $f0, $f1
	flw	$f1, 4($a1)
	flw	$f2, 4($a2)
	fmul	$f1, $f1, $f2
	fadd	$f0, $f0, $f1
	flw	$f1, 8($a1)
	flw	$f2, 8($a2)
	fmul	$f1, $f1, $f2
	fadd	$f0, $f0, $f1
	li	$v0, 0
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	fblt	$f0, $f1, fbge_else.18144
	li	$a1, 0
	j	fbge_cont.18145
fbge_else.18144:
	li	$a1, 1
fbge_cont.18145:
	li	$a3, 0
	bne	$a1, $a3, bne_else.18146
	lw	$a1, 472($a0)
	li	$v0, 17174
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	finv	$f1, $f1
	fmul	$f0, $f0, $f1
	move	$a0, $a1
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	trace_diffuse_ray.3002
	subi	$sp, $sp, 40
	lw	$ra, 36($sp)
	fmove	$f30, $fv
	j	bne_cont.18147
bne_else.18146:
	lw	$a1, 476($a0)
	li	$v0, -15594
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	finv	$f1, $f1
	fmul	$f0, $f0, $f1
	move	$a0, $a1
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	trace_diffuse_ray.3002
	subi	$sp, $sp, 40
	lw	$ra, 36($sp)
	fmove	$f30, $fv
bne_cont.18147:
	li	$a3, 116
	lw	$a0, 28($sp)
	lw	$a1, 8($sp)
	lw	$a2, 12($sp)
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	iter_trace_diffuse_rays.3005
	subi	$sp, $sp, 40
	lw	$ra, 36($sp)
	fmove	$f30, $fv
bne_cont.18143:
	li	$a0, 3
	lw	$a1, 16($sp)
	bne	$a1, $a0, bne_else.18148
	j	bne_cont.18149
bne_else.18148:
	li	$a0, 716
	lw	$a0, 12($a0)
	li	$a2, 648
	lw	$a3, 12($sp)
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
	jal	setup_startp_constants.2907
	subi	$sp, $sp, 40
	lw	$ra, 36($sp)
	fmove	$f30, $fv
	lw	$a0, 32($sp)
	lw	$a1, 472($a0)
	lw	$a1, 0($a1)
	flw	$f0, 0($a1)
	lw	$a2, 8($sp)
	flw	$f1, 0($a2)
	fmul	$f0, $f0, $f1
	flw	$f1, 4($a1)
	flw	$f2, 4($a2)
	fmul	$f1, $f1, $f2
	fadd	$f0, $f0, $f1
	flw	$f1, 8($a1)
	flw	$f2, 8($a2)
	fmul	$f1, $f1, $f2
	fadd	$f0, $f0, $f1
	li	$v0, 0
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	fblt	$f0, $f1, fbge_else.18150
	li	$a1, 0
	j	fbge_cont.18151
fbge_else.18150:
	li	$a1, 1
fbge_cont.18151:
	li	$a3, 0
	bne	$a1, $a3, bne_else.18152
	lw	$a1, 472($a0)
	li	$v0, 17174
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	finv	$f1, $f1
	fmul	$f0, $f0, $f1
	move	$a0, $a1
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	trace_diffuse_ray.3002
	subi	$sp, $sp, 40
	lw	$ra, 36($sp)
	fmove	$f30, $fv
	j	bne_cont.18153
bne_else.18152:
	lw	$a1, 476($a0)
	li	$v0, -15594
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	finv	$f1, $f1
	fmul	$f0, $f0, $f1
	move	$a0, $a1
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	trace_diffuse_ray.3002
	subi	$sp, $sp, 40
	lw	$ra, 36($sp)
	fmove	$f30, $fv
bne_cont.18153:
	li	$a3, 116
	lw	$a0, 32($sp)
	lw	$a1, 8($sp)
	lw	$a2, 12($sp)
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	iter_trace_diffuse_rays.3005
	subi	$sp, $sp, 40
	lw	$ra, 36($sp)
	fmove	$f30, $fv
bne_cont.18149:
	li	$a0, 4
	lw	$a1, 16($sp)
	bne	$a1, $a0, bne_else.18154
	j	bne_cont.18155
bne_else.18154:
	li	$a0, 716
	lw	$a0, 16($a0)
	li	$a1, 648
	lw	$a2, 12($sp)
	flw	$f0, 0($a2)
	fsw	$f0, 0($a1)
	flw	$f0, 4($a2)
	fsw	$f0, 4($a1)
	flw	$f0, 8($a2)
	fsw	$f0, 8($a1)
	li	$a1, 0
	lw	$a1, 0($a1)
	subi	$a1, $a1, 1
	sw	$a0, 36($sp)
	move	$a0, $a2
	sw	$ra, 44($sp)
	addi	$sp, $sp, 48
	jal	setup_startp_constants.2907
	subi	$sp, $sp, 48
	lw	$ra, 44($sp)
	fmove	$f30, $fv
	lw	$a0, 36($sp)
	lw	$a1, 472($a0)
	lw	$a1, 0($a1)
	flw	$f0, 0($a1)
	lw	$a2, 8($sp)
	flw	$f1, 0($a2)
	fmul	$f0, $f0, $f1
	flw	$f1, 4($a1)
	flw	$f2, 4($a2)
	fmul	$f1, $f1, $f2
	fadd	$f0, $f0, $f1
	flw	$f1, 8($a1)
	flw	$f2, 8($a2)
	fmul	$f1, $f1, $f2
	fadd	$f0, $f0, $f1
	li	$v0, 0
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	fblt	$f0, $f1, fbge_else.18156
	li	$a1, 0
	j	fbge_cont.18157
fbge_else.18156:
	li	$a1, 1
fbge_cont.18157:
	li	$a3, 0
	bne	$a1, $a3, bne_else.18158
	lw	$a1, 472($a0)
	li	$v0, 17174
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	finv	$f1, $f1
	fmul	$f0, $f0, $f1
	move	$a0, $a1
	sw	$ra, 44($sp)
	addi	$sp, $sp, 48
	jal	trace_diffuse_ray.3002
	subi	$sp, $sp, 48
	lw	$ra, 44($sp)
	fmove	$f30, $fv
	j	bne_cont.18159
bne_else.18158:
	lw	$a1, 476($a0)
	li	$v0, -15594
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	finv	$f1, $f1
	fmul	$f0, $f0, $f1
	move	$a0, $a1
	sw	$ra, 44($sp)
	addi	$sp, $sp, 48
	jal	trace_diffuse_ray.3002
	subi	$sp, $sp, 48
	lw	$ra, 44($sp)
	fmove	$f30, $fv
bne_cont.18159:
	li	$a3, 116
	lw	$a0, 36($sp)
	lw	$a1, 8($sp)
	lw	$a2, 12($sp)
	sw	$ra, 44($sp)
	addi	$sp, $sp, 48
	jal	iter_trace_diffuse_rays.3005
	subi	$sp, $sp, 48
	lw	$ra, 44($sp)
	fmove	$f30, $fv
bne_cont.18155:
	li	$a0, 604
	lw	$a1, 4($sp)
	sll	$a1, $a1, 2
	lw	$a2, 0($sp)
	add	$a1, $a2, $a1
	lw	$a1, 0($a1)
	li	$a2, 592
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
calc_diffuse_using_5points.3021:
	sll	$a5, $a0, 2
	add	$a5, $a1, $a5
	lw	$a1, 0($a5)
	lw	$a1, 20($a1)
	subi	$a5, $a0, 1
	sll	$a5, $a5, 2
	add	$a5, $a2, $a5
	lw	$a5, 0($a5)
	lw	$a5, 20($a5)
	sll	$a6, $a0, 2
	add	$a6, $a2, $a6
	lw	$a6, 0($a6)
	lw	$a6, 20($a6)
	addi	$a7, $a0, 1
	sll	$a7, $a7, 2
	add	$a7, $a2, $a7
	lw	$a7, 0($a7)
	lw	$a7, 20($a7)
	sll	$a8, $a0, 2
	add	$a8, $a3, $a8
	lw	$a3, 0($a8)
	lw	$a3, 20($a3)
	li	$a8, 592
	sll	$a9, $a4, 2
	add	$a9, $a1, $a9
	lw	$a1, 0($a9)
	flw	$f0, 0($a1)
	fsw	$f0, 0($a8)
	flw	$f0, 4($a1)
	fsw	$f0, 4($a8)
	flw	$f0, 8($a1)
	fsw	$f0, 8($a8)
	li	$a1, 592
	sll	$a8, $a4, 2
	add	$a8, $a5, $a8
	lw	$a5, 0($a8)
	flw	$f0, 0($a1)
	flw	$f1, 0($a5)
	fadd	$f0, $f0, $f1
	fsw	$f0, 0($a1)
	flw	$f0, 4($a1)
	flw	$f1, 4($a5)
	fadd	$f0, $f0, $f1
	fsw	$f0, 4($a1)
	flw	$f0, 8($a1)
	flw	$f1, 8($a5)
	fadd	$f0, $f0, $f1
	fsw	$f0, 8($a1)
	li	$a1, 592
	sll	$a5, $a4, 2
	add	$a5, $a6, $a5
	lw	$a5, 0($a5)
	flw	$f0, 0($a1)
	flw	$f1, 0($a5)
	fadd	$f0, $f0, $f1
	fsw	$f0, 0($a1)
	flw	$f0, 4($a1)
	flw	$f1, 4($a5)
	fadd	$f0, $f0, $f1
	fsw	$f0, 4($a1)
	flw	$f0, 8($a1)
	flw	$f1, 8($a5)
	fadd	$f0, $f0, $f1
	fsw	$f0, 8($a1)
	li	$a1, 592
	sll	$a5, $a4, 2
	add	$a5, $a7, $a5
	lw	$a5, 0($a5)
	flw	$f0, 0($a1)
	flw	$f1, 0($a5)
	fadd	$f0, $f0, $f1
	fsw	$f0, 0($a1)
	flw	$f0, 4($a1)
	flw	$f1, 4($a5)
	fadd	$f0, $f0, $f1
	fsw	$f0, 4($a1)
	flw	$f0, 8($a1)
	flw	$f1, 8($a5)
	fadd	$f0, $f0, $f1
	fsw	$f0, 8($a1)
	li	$a1, 592
	sll	$a5, $a4, 2
	add	$a5, $a3, $a5
	lw	$a3, 0($a5)
	flw	$f0, 0($a1)
	flw	$f1, 0($a3)
	fadd	$f0, $f0, $f1
	fsw	$f0, 0($a1)
	flw	$f0, 4($a1)
	flw	$f1, 4($a3)
	fadd	$f0, $f0, $f1
	fsw	$f0, 4($a1)
	flw	$f0, 8($a1)
	flw	$f1, 8($a3)
	fadd	$f0, $f0, $f1
	fsw	$f0, 8($a1)
	sll	$a0, $a0, 2
	add	$a0, $a2, $a0
	lw	$a0, 0($a0)
	lw	$a0, 16($a0)
	li	$a1, 604
	sll	$a2, $a4, 2
	add	$a2, $a0, $a2
	lw	$a0, 0($a2)
	li	$a2, 592
	flw	$f0, 0($a1)
	flw	$f1, 0($a0)
	flw	$f2, 0($a2)
	fmul	$f1, $f1, $f2
	fadd	$f0, $f0, $f1
	fsw	$f0, 0($a1)
	flw	$f0, 4($a1)
	flw	$f1, 4($a0)
	flw	$f2, 4($a2)
	fmul	$f1, $f1, $f2
	fadd	$f0, $f0, $f1
	fsw	$f0, 4($a1)
	flw	$f0, 8($a1)
	flw	$f1, 8($a0)
	flw	$f2, 8($a2)
	fmul	$f1, $f1, $f2
	fadd	$f0, $f0, $f1
	fsw	$f0, 8($a1)
	jr	$ra
do_without_neighbors.3027:
	li	$a2, 4
	blt	$a2, $a1, bge_else.18162
	lw	$a2, 8($a0)
	li	$a3, 0
	sll	$a4, $a1, 2
	add	$a4, $a2, $a4
	lw	$a2, 0($a4)
	blt	$a2, $a3, bge_else.18163
	lw	$a2, 12($a0)
	sll	$a3, $a1, 2
	add	$a3, $a2, $a3
	lw	$a2, 0($a3)
	li	$a3, 0
	sw	$a0, 0($sp)
	bne	$a2, $a3, bne_else.18164
	j	bne_cont.18165
bne_else.18164:
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
	sw	$a5, 4($sp)
	sw	$a1, 8($sp)
	move	$a1, $a3
	move	$a0, $a2
	move	$a2, $a4
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	trace_diffuse_ray_80percent.3014
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	fmove	$f30, $fv
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
bne_cont.18165:
	addi	$a1, $a1, 1
	li	$a0, 4
	blt	$a0, $a1, bge_else.18166
	lw	$a0, 0($sp)
	lw	$a2, 8($a0)
	li	$a3, 0
	sll	$a4, $a1, 2
	add	$a4, $a2, $a4
	lw	$a2, 0($a4)
	blt	$a2, $a3, bge_else.18167
	lw	$a2, 12($a0)
	sll	$a3, $a1, 2
	add	$a3, $a2, $a3
	lw	$a2, 0($a3)
	li	$a3, 0
	sw	$a1, 12($sp)
	bne	$a2, $a3, bne_else.18168
	j	bne_cont.18169
bne_else.18168:
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	calc_diffuse_using_1point.3018
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	fmove	$f30, $fv
bne_cont.18169:
	lw	$a0, 12($sp)
	addi	$a1, $a0, 1
	lw	$a0, 0($sp)
	j	do_without_neighbors.3027
bge_else.18167:
	jr	$ra
bge_else.18166:
	jr	$ra
bge_else.18163:
	jr	$ra
bge_else.18162:
	jr	$ra
try_exploit_neighbors.3043:
	sll	$a6, $a0, 2
	add	$a6, $a3, $a6
	lw	$a6, 0($a6)
	li	$a7, 4
	blt	$a7, $a5, bge_else.18174
	li	$a7, 0
	lw	$a8, 8($a6)
	sll	$a9, $a5, 2
	add	$a9, $a8, $a9
	lw	$a8, 0($a9)
	blt	$a8, $a7, bge_else.18175
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
	bne	$a8, $a7, bne_else.18176
	sll	$a8, $a0, 2
	add	$a8, $a4, $a8
	lw	$a8, 0($a8)
	lw	$a8, 8($a8)
	sll	$a9, $a5, 2
	add	$a9, $a8, $a9
	lw	$a8, 0($a9)
	bne	$a8, $a7, bne_else.18178
	subi	$a8, $a0, 1
	sll	$a8, $a8, 2
	add	$a8, $a3, $a8
	lw	$a8, 0($a8)
	lw	$a8, 8($a8)
	sll	$a9, $a5, 2
	add	$a9, $a8, $a9
	lw	$a8, 0($a9)
	bne	$a8, $a7, bne_else.18180
	addi	$a8, $a0, 1
	sll	$a8, $a8, 2
	add	$a8, $a3, $a8
	lw	$a8, 0($a8)
	lw	$a8, 8($a8)
	sll	$a9, $a5, 2
	add	$a9, $a8, $a9
	lw	$a8, 0($a9)
	bne	$a8, $a7, bne_else.18182
	li	$a7, 1
	j	bne_cont.18183
bne_else.18182:
	li	$a7, 0
bne_cont.18183:
	j	bne_cont.18181
bne_else.18180:
	li	$a7, 0
bne_cont.18181:
	j	bne_cont.18179
bne_else.18178:
	li	$a7, 0
bne_cont.18179:
	j	bne_cont.18177
bne_else.18176:
	li	$a7, 0
bne_cont.18177:
	li	$a8, 0
	bne	$a7, $a8, beq_else.18184
	sll	$a0, $a0, 2
	add	$a0, $a3, $a0
	lw	$a0, 0($a0)
	li	$a1, 4
	blt	$a1, $a5, bge_else.18185
	lw	$a1, 8($a0)
	li	$a2, 0
	sll	$a3, $a5, 2
	add	$a3, $a1, $a3
	lw	$a1, 0($a3)
	blt	$a1, $a2, bge_else.18186
	lw	$a1, 12($a0)
	sll	$a2, $a5, 2
	add	$a2, $a1, $a2
	lw	$a1, 0($a2)
	li	$a2, 0
	sw	$a0, 0($sp)
	sw	$a5, 4($sp)
	bne	$a1, $a2, bne_else.18187
	j	bne_cont.18188
bne_else.18187:
	move	$a1, $a5
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	calc_diffuse_using_1point.3018
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	fmove	$f30, $fv
bne_cont.18188:
	lw	$a0, 4($sp)
	addi	$a1, $a0, 1
	lw	$a0, 0($sp)
	j	do_without_neighbors.3027
bge_else.18186:
	jr	$ra
bge_else.18185:
	jr	$ra
beq_else.18184:
	lw	$a6, 12($a6)
	sll	$a7, $a5, 2
	add	$a7, $a6, $a7
	lw	$a6, 0($a7)
	li	$a7, 0
	sw	$a1, 8($sp)
	sw	$a4, 12($sp)
	sw	$a2, 16($sp)
	sw	$a3, 20($sp)
	sw	$a0, 24($sp)
	sw	$a5, 4($sp)
	bne	$a6, $a7, bne_else.18191
	j	bne_cont.18192
bne_else.18191:
	move	$a1, $a2
	move	$a2, $a3
	move	$a3, $a4
	move	$a4, $a5
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	calc_diffuse_using_5points.3021
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	fmove	$f30, $fv
bne_cont.18192:
	lw	$a0, 4($sp)
	addi	$a1, $a0, 1
	lw	$a0, 24($sp)
	sll	$a2, $a0, 2
	lw	$a3, 20($sp)
	add	$a2, $a3, $a2
	lw	$a2, 0($a2)
	li	$a4, 4
	blt	$a4, $a1, bge_else.18193
	li	$a4, 0
	lw	$a5, 8($a2)
	sll	$a6, $a1, 2
	add	$a6, $a5, $a6
	lw	$a5, 0($a6)
	blt	$a5, $a4, bge_else.18194
	sll	$a4, $a0, 2
	add	$a4, $a3, $a4
	lw	$a4, 0($a4)
	lw	$a4, 8($a4)
	sll	$a5, $a1, 2
	add	$a5, $a4, $a5
	lw	$a4, 0($a5)
	sll	$a5, $a0, 2
	lw	$a6, 16($sp)
	add	$a5, $a6, $a5
	lw	$a5, 0($a5)
	lw	$a5, 8($a5)
	sll	$a7, $a1, 2
	add	$a7, $a5, $a7
	lw	$a5, 0($a7)
	bne	$a5, $a4, bne_else.18195
	sll	$a5, $a0, 2
	lw	$a7, 12($sp)
	add	$a5, $a7, $a5
	lw	$a5, 0($a5)
	lw	$a5, 8($a5)
	sll	$a8, $a1, 2
	add	$a8, $a5, $a8
	lw	$a5, 0($a8)
	bne	$a5, $a4, bne_else.18197
	subi	$a5, $a0, 1
	sll	$a5, $a5, 2
	add	$a5, $a3, $a5
	lw	$a5, 0($a5)
	lw	$a5, 8($a5)
	sll	$a8, $a1, 2
	add	$a8, $a5, $a8
	lw	$a5, 0($a8)
	bne	$a5, $a4, bne_else.18199
	addi	$a5, $a0, 1
	sll	$a5, $a5, 2
	add	$a5, $a3, $a5
	lw	$a5, 0($a5)
	lw	$a5, 8($a5)
	sll	$a8, $a1, 2
	add	$a8, $a5, $a8
	lw	$a5, 0($a8)
	bne	$a5, $a4, bne_else.18201
	li	$a4, 1
	j	bne_cont.18202
bne_else.18201:
	li	$a4, 0
bne_cont.18202:
	j	bne_cont.18200
bne_else.18199:
	li	$a4, 0
bne_cont.18200:
	j	bne_cont.18198
bne_else.18197:
	li	$a4, 0
bne_cont.18198:
	j	bne_cont.18196
bne_else.18195:
	li	$a4, 0
bne_cont.18196:
	li	$a5, 0
	bne	$a4, $a5, beq_else.18203
	sll	$a0, $a0, 2
	add	$a0, $a3, $a0
	lw	$a0, 0($a0)
	j	do_without_neighbors.3027
beq_else.18203:
	lw	$a2, 12($a2)
	sll	$a4, $a1, 2
	add	$a4, $a2, $a4
	lw	$a2, 0($a4)
	li	$a4, 0
	sw	$a1, 28($sp)
	bne	$a2, $a4, bne_else.18204
	j	bne_cont.18205
bne_else.18204:
	lw	$a2, 12($sp)
	move	$a4, $a1
	move	$a1, $a6
	move	$a25, $a3
	move	$a3, $a2
	move	$a2, $a25
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	calc_diffuse_using_5points.3021
	subi	$sp, $sp, 40
	lw	$ra, 36($sp)
	fmove	$f30, $fv
bne_cont.18205:
	lw	$a0, 28($sp)
	addi	$a5, $a0, 1
	lw	$a0, 24($sp)
	lw	$a1, 8($sp)
	lw	$a2, 16($sp)
	lw	$a3, 20($sp)
	lw	$a4, 12($sp)
	j	try_exploit_neighbors.3043
bge_else.18194:
	jr	$ra
bge_else.18193:
	jr	$ra
bge_else.18175:
	jr	$ra
bge_else.18174:
	jr	$ra
write_rgb.3054:
	li	$a0, 604
	flw	$f0, 0($a0)
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	min_caml_int_of_float
	subi	$sp, $sp, 8
	lw	$ra, 4($sp)
	move	$a0, $v0
	li	$a1, 255
	blt	$a1, $a0, bge_else.18210
	li	$a1, 0
	blt	$a0, $a1, bge_else.18212
	j	bge_cont.18213
bge_else.18212:
	li	$a0, 0
bge_cont.18213:
	j	bge_cont.18211
bge_else.18210:
	li	$a0, 255
bge_cont.18211:
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
	li	$a0, 604
	flw	$f0, 4($a0)
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	min_caml_int_of_float
	subi	$sp, $sp, 8
	lw	$ra, 4($sp)
	move	$a0, $v0
	li	$a1, 255
	blt	$a1, $a0, bge_else.18214
	li	$a1, 0
	blt	$a0, $a1, bge_else.18216
	j	bge_cont.18217
bge_else.18216:
	li	$a0, 0
bge_cont.18217:
	j	bge_cont.18215
bge_else.18214:
	li	$a0, 255
bge_cont.18215:
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
	li	$a0, 604
	flw	$f0, 8($a0)
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	min_caml_int_of_float
	subi	$sp, $sp, 8
	lw	$ra, 4($sp)
	move	$a0, $v0
	li	$a1, 255
	blt	$a1, $a0, bge_else.18218
	li	$a1, 0
	blt	$a0, $a1, bge_else.18220
	j	bge_cont.18221
bge_else.18220:
	li	$a0, 0
bge_cont.18221:
	j	bge_cont.18219
bge_else.18218:
	li	$a0, 255
bge_cont.18219:
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	min_caml_print_int
	subi	$sp, $sp, 8
	lw	$ra, 4($sp)
	fmove	$f30, $fv
	li	$a0, 10
	j	min_caml_print_byte
pretrace_diffuse_rays.3056:
	li	$a2, 4
	blt	$a2, $a1, bge_else.18222
	lw	$a2, 8($a0)
	sll	$a3, $a1, 2
	add	$a3, $a2, $a3
	lw	$a2, 0($a3)
	li	$a3, 0
	blt	$a2, $a3, bge_else.18223
	lw	$a2, 12($a0)
	sll	$a3, $a1, 2
	add	$a3, $a2, $a3
	lw	$a2, 0($a3)
	li	$a3, 0
	sw	$a1, 0($sp)
	bne	$a2, $a3, bne_else.18224
	j	bne_cont.18225
bne_else.18224:
	lw	$a2, 24($a0)
	lw	$a2, 0($a2)
	li	$a3, 592
	li	$v0, 0
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f0, $v0
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
	jal	setup_startp_constants.2907
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	fmove	$f30, $fv
	li	$a3, 118
	lw	$a0, 16($sp)
	lw	$a1, 12($sp)
	lw	$a2, 8($sp)
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	iter_trace_diffuse_rays.3005
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
bne_cont.18225:
	lw	$a1, 0($sp)
	addi	$a1, $a1, 1
	li	$a2, 4
	blt	$a2, $a1, bge_else.18226
	lw	$a2, 8($a0)
	sll	$a3, $a1, 2
	add	$a3, $a2, $a3
	lw	$a2, 0($a3)
	li	$a3, 0
	blt	$a2, $a3, bge_else.18227
	lw	$a2, 12($a0)
	sll	$a3, $a1, 2
	add	$a3, $a2, $a3
	lw	$a2, 0($a3)
	li	$a3, 0
	sw	$a1, 20($sp)
	bne	$a2, $a3, bne_else.18228
	j	bne_cont.18229
bne_else.18228:
	lw	$a2, 24($a0)
	lw	$a2, 0($a2)
	li	$a3, 592
	li	$v0, 0
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f0, $v0
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
	sw	$a4, 24($sp)
	sw	$a3, 28($sp)
	sw	$a2, 32($sp)
	move	$a1, $a5
	move	$a0, $a4
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	setup_startp_constants.2907
	subi	$sp, $sp, 40
	lw	$ra, 36($sp)
	fmove	$f30, $fv
	lw	$a0, 32($sp)
	lw	$a1, 472($a0)
	lw	$a1, 0($a1)
	flw	$f0, 0($a1)
	lw	$a2, 28($sp)
	flw	$f1, 0($a2)
	fmul	$f0, $f0, $f1
	flw	$f1, 4($a1)
	flw	$f2, 4($a2)
	fmul	$f1, $f1, $f2
	fadd	$f0, $f0, $f1
	flw	$f1, 8($a1)
	flw	$f2, 8($a2)
	fmul	$f1, $f1, $f2
	fadd	$f0, $f0, $f1
	li	$v0, 0
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	fblt	$f0, $f1, fbge_else.18230
	li	$a1, 0
	j	fbge_cont.18231
fbge_else.18230:
	li	$a1, 1
fbge_cont.18231:
	li	$a3, 0
	bne	$a1, $a3, bne_else.18232
	lw	$a1, 472($a0)
	li	$v0, 17174
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	finv	$f1, $f1
	fmul	$f0, $f0, $f1
	move	$a0, $a1
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	trace_diffuse_ray.3002
	subi	$sp, $sp, 40
	lw	$ra, 36($sp)
	fmove	$f30, $fv
	j	bne_cont.18233
bne_else.18232:
	lw	$a1, 476($a0)
	li	$v0, -15594
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	finv	$f1, $f1
	fmul	$f0, $f0, $f1
	move	$a0, $a1
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	trace_diffuse_ray.3002
	subi	$sp, $sp, 40
	lw	$ra, 36($sp)
	fmove	$f30, $fv
bne_cont.18233:
	li	$a3, 116
	lw	$a0, 32($sp)
	lw	$a1, 28($sp)
	lw	$a2, 24($sp)
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	iter_trace_diffuse_rays.3005
	subi	$sp, $sp, 40
	lw	$ra, 36($sp)
	fmove	$f30, $fv
	lw	$a0, 4($sp)
	lw	$a1, 20($a0)
	lw	$a2, 20($sp)
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
bne_cont.18229:
	lw	$a1, 20($sp)
	addi	$a1, $a1, 1
	j	pretrace_diffuse_rays.3056
bge_else.18227:
	jr	$ra
bge_else.18226:
	jr	$ra
bge_else.18223:
	jr	$ra
bge_else.18222:
	jr	$ra
pretrace_pixels.3059:
	li	$a3, 0
	blt	$a1, $a3, bge_else.18238
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
	li	$a1, 0
	sw	$ra, 52($sp)
	addi	$sp, $sp, 56
	jal	vecunit_sgn.2687
	subi	$sp, $sp, 56
	lw	$ra, 52($sp)
	fmove	$f30, $fv
	li	$a0, 604
	li	$v0, 0
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f0, $v0
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
	li	$v0, 0
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	move	$a2, $a3
	sw	$ra, 52($sp)
	addi	$sp, $sp, 56
	jal	trace_ray.2996
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
	lw	$a4, 8($a1)
	lw	$a4, 0($a4)
	li	$a5, 0
	blt	$a4, $a5, bge_else.18240
	lw	$a4, 12($a1)
	lw	$a4, 0($a4)
	li	$a5, 0
	sw	$a1, 48($sp)
	bne	$a4, $a5, bne_else.18242
	j	bne_cont.18243
bne_else.18242:
	lw	$a4, 24($a1)
	lw	$a4, 0($a4)
	li	$a5, 592
	li	$v0, 0
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f0, $v0
	fsw	$f0, 0($a5)
	fsw	$f0, 4($a5)
	fsw	$f0, 8($a5)
	lw	$a5, 28($a1)
	lw	$a6, 4($a1)
	li	$a7, 716
	sll	$a4, $a4, 2
	add	$a4, $a7, $a4
	lw	$a4, 0($a4)
	lw	$a5, 0($a5)
	lw	$a6, 0($a6)
	li	$a7, 648
	flw	$f0, 0($a6)
	fsw	$f0, 0($a7)
	flw	$f0, 4($a6)
	fsw	$f0, 4($a7)
	flw	$f0, 8($a6)
	fsw	$f0, 8($a7)
	li	$a7, 0
	lw	$a7, 0($a7)
	subi	$a7, $a7, 1
	sw	$a6, 52($sp)
	sw	$a5, 56($sp)
	sw	$a4, 60($sp)
	move	$a1, $a7
	move	$a0, $a6
	sw	$ra, 68($sp)
	addi	$sp, $sp, 72
	jal	setup_startp_constants.2907
	subi	$sp, $sp, 72
	lw	$ra, 68($sp)
	fmove	$f30, $fv
	lw	$a0, 60($sp)
	lw	$a1, 472($a0)
	lw	$a1, 0($a1)
	flw	$f0, 0($a1)
	lw	$a2, 56($sp)
	flw	$f1, 0($a2)
	fmul	$f0, $f0, $f1
	flw	$f1, 4($a1)
	flw	$f2, 4($a2)
	fmul	$f1, $f1, $f2
	fadd	$f0, $f0, $f1
	flw	$f1, 8($a1)
	flw	$f2, 8($a2)
	fmul	$f1, $f1, $f2
	fadd	$f0, $f0, $f1
	li	$v0, 0
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	fblt	$f0, $f1, fbge_else.18244
	li	$a1, 0
	j	fbge_cont.18245
fbge_else.18244:
	li	$a1, 1
fbge_cont.18245:
	li	$a3, 0
	bne	$a1, $a3, bne_else.18246
	lw	$a1, 472($a0)
	li	$v0, 17174
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	finv	$f1, $f1
	fmul	$f0, $f0, $f1
	move	$a0, $a1
	sw	$ra, 68($sp)
	addi	$sp, $sp, 72
	jal	trace_diffuse_ray.3002
	subi	$sp, $sp, 72
	lw	$ra, 68($sp)
	fmove	$f30, $fv
	j	bne_cont.18247
bne_else.18246:
	lw	$a1, 476($a0)
	li	$v0, -15594
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	finv	$f1, $f1
	fmul	$f0, $f0, $f1
	move	$a0, $a1
	sw	$ra, 68($sp)
	addi	$sp, $sp, 72
	jal	trace_diffuse_ray.3002
	subi	$sp, $sp, 72
	lw	$ra, 68($sp)
	fmove	$f30, $fv
bne_cont.18247:
	li	$a3, 116
	lw	$a0, 60($sp)
	lw	$a1, 56($sp)
	lw	$a2, 52($sp)
	sw	$ra, 68($sp)
	addi	$sp, $sp, 72
	jal	iter_trace_diffuse_rays.3005
	subi	$sp, $sp, 72
	lw	$ra, 68($sp)
	fmove	$f30, $fv
	lw	$a0, 48($sp)
	lw	$a1, 20($a0)
	lw	$a1, 0($a1)
	li	$a2, 592
	flw	$f0, 0($a2)
	fsw	$f0, 0($a1)
	flw	$f0, 4($a2)
	fsw	$f0, 4($a1)
	flw	$f0, 8($a2)
	fsw	$f0, 8($a1)
bne_cont.18243:
	li	$a1, 1
	lw	$a0, 48($sp)
	sw	$ra, 68($sp)
	addi	$sp, $sp, 72
	jal	pretrace_diffuse_rays.3056
	subi	$sp, $sp, 72
	lw	$ra, 68($sp)
	fmove	$f30, $fv
	j	bge_cont.18241
bge_else.18240:
bge_cont.18241:
	lw	$a0, 8($sp)
	subi	$a1, $a0, 1
	lw	$a0, 0($sp)
	addi	$a0, $a0, 1
	li	$a2, 5
	blt	$a0, $a2, bge_else.18248
	subi	$a2, $a0, 5
	j	bge_cont.18249
bge_else.18248:
	move	$a2, $a0
bge_cont.18249:
	flw	$f0, 32($sp)
	flw	$f1, 24($sp)
	flw	$f2, 16($sp)
	lw	$a0, 4($sp)
	j	pretrace_pixels.3059
bge_else.18238:
	jr	$ra
pretrace_line.3066:
	li	$a3, 632
	flw	$f0, 0($a3)
	li	$a3, 624
	lw	$a3, 4($a3)
	sub	$a1, $a1, $a3
	sw	$a2, 0($sp)
	sw	$a0, 4($sp)
	fsw	$f0, 8($sp)
	move	$a0, $a1
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	min_caml_float_of_int
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	fmove	$f0, $fv
	flw	$f1, 8($sp)
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
	j	pretrace_pixels.3059
scan_pixel.3070:
	li	$a5, 616
	lw	$a5, 0($a5)
	blt	$a0, $a5, bge_else.18251
	jr	$ra
bge_else.18251:
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
	blt	$a6, $a5, bge_else.18253
	li	$a5, 0
	j	bge_cont.18254
bge_else.18253:
	li	$a5, 0
	blt	$a5, $a1, bge_else.18255
	li	$a5, 0
	j	bge_cont.18256
bge_else.18255:
	li	$a5, 616
	lw	$a5, 0($a5)
	addi	$a6, $a0, 1
	blt	$a6, $a5, bge_else.18257
	li	$a5, 0
	j	bge_cont.18258
bge_else.18257:
	li	$a5, 0
	blt	$a5, $a0, bge_else.18259
	li	$a5, 0
	j	bge_cont.18260
bge_else.18259:
	li	$a5, 1
bge_cont.18260:
bge_cont.18258:
bge_cont.18256:
bge_cont.18254:
	li	$a6, 0
	sw	$a4, 0($sp)
	sw	$a2, 4($sp)
	sw	$a1, 8($sp)
	sw	$a3, 12($sp)
	sw	$a0, 16($sp)
	bne	$a5, $a6, bne_else.18261
	sll	$a5, $a0, 2
	add	$a5, $a3, $a5
	lw	$a5, 0($a5)
	li	$a6, 0
	lw	$a7, 8($a5)
	li	$a8, 0
	lw	$a7, 0($a7)
	blt	$a7, $a8, bge_else.18263
	lw	$a7, 12($a5)
	lw	$a7, 0($a7)
	li	$a8, 0
	sw	$a5, 20($sp)
	bne	$a7, $a8, bne_else.18265
	j	bne_cont.18266
bne_else.18265:
	move	$a1, $a6
	move	$a0, $a5
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	calc_diffuse_using_1point.3018
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	fmove	$f30, $fv
bne_cont.18266:
	li	$a1, 1
	lw	$a0, 20($sp)
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	do_without_neighbors.3027
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	fmove	$f30, $fv
	j	bge_cont.18264
bge_else.18263:
bge_cont.18264:
	j	bne_cont.18262
bne_else.18261:
	li	$a5, 0
	sll	$a6, $a0, 2
	add	$a6, $a3, $a6
	lw	$a6, 0($a6)
	li	$a7, 0
	lw	$a8, 8($a6)
	lw	$a8, 0($a8)
	blt	$a8, $a7, bge_else.18267
	sll	$a7, $a0, 2
	add	$a7, $a3, $a7
	lw	$a7, 0($a7)
	lw	$a7, 8($a7)
	lw	$a7, 0($a7)
	sll	$a8, $a0, 2
	add	$a8, $a2, $a8
	lw	$a8, 0($a8)
	lw	$a8, 8($a8)
	lw	$a8, 0($a8)
	bne	$a8, $a7, bne_else.18269
	sll	$a8, $a0, 2
	add	$a8, $a4, $a8
	lw	$a8, 0($a8)
	lw	$a8, 8($a8)
	lw	$a8, 0($a8)
	bne	$a8, $a7, bne_else.18271
	subi	$a8, $a0, 1
	sll	$a8, $a8, 2
	add	$a8, $a3, $a8
	lw	$a8, 0($a8)
	lw	$a8, 8($a8)
	lw	$a8, 0($a8)
	bne	$a8, $a7, bne_else.18273
	addi	$a8, $a0, 1
	sll	$a8, $a8, 2
	add	$a8, $a3, $a8
	lw	$a8, 0($a8)
	lw	$a8, 8($a8)
	lw	$a8, 0($a8)
	bne	$a8, $a7, bne_else.18275
	li	$a7, 1
	j	bne_cont.18276
bne_else.18275:
	li	$a7, 0
bne_cont.18276:
	j	bne_cont.18274
bne_else.18273:
	li	$a7, 0
bne_cont.18274:
	j	bne_cont.18272
bne_else.18271:
	li	$a7, 0
bne_cont.18272:
	j	bne_cont.18270
bne_else.18269:
	li	$a7, 0
bne_cont.18270:
	li	$a8, 0
	bne	$a7, $a8, bne_else.18277
	sll	$a6, $a0, 2
	add	$a6, $a3, $a6
	lw	$a6, 0($a6)
	move	$a1, $a5
	move	$a0, $a6
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	do_without_neighbors.3027
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	fmove	$f30, $fv
	j	bne_cont.18278
bne_else.18277:
	lw	$a6, 12($a6)
	lw	$a6, 0($a6)
	li	$a7, 0
	bne	$a6, $a7, bne_else.18279
	j	bne_cont.18280
bne_else.18279:
	move	$a1, $a2
	move	$a2, $a3
	move	$a3, $a4
	move	$a4, $a5
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	calc_diffuse_using_5points.3021
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	fmove	$f30, $fv
bne_cont.18280:
	li	$a5, 1
	lw	$a0, 16($sp)
	lw	$a1, 8($sp)
	lw	$a2, 4($sp)
	lw	$a3, 12($sp)
	lw	$a4, 0($sp)
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	try_exploit_neighbors.3043
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	fmove	$f30, $fv
bne_cont.18278:
	j	bge_cont.18268
bge_else.18267:
bge_cont.18268:
bne_cont.18262:
	li	$a0, 604
	flw	$f0, 0($a0)
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	min_caml_int_of_float
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	move	$a0, $v0
	li	$a1, 255
	blt	$a1, $a0, bge_else.18281
	li	$a1, 0
	blt	$a0, $a1, bge_else.18283
	j	bge_cont.18284
bge_else.18283:
	li	$a0, 0
bge_cont.18284:
	j	bge_cont.18282
bge_else.18281:
	li	$a0, 255
bge_cont.18282:
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
	li	$a0, 604
	flw	$f0, 4($a0)
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	min_caml_int_of_float
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	move	$a0, $v0
	li	$a1, 255
	blt	$a1, $a0, bge_else.18285
	li	$a1, 0
	blt	$a0, $a1, bge_else.18287
	j	bge_cont.18288
bge_else.18287:
	li	$a0, 0
bge_cont.18288:
	j	bge_cont.18286
bge_else.18285:
	li	$a0, 255
bge_cont.18286:
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
	li	$a0, 604
	flw	$f0, 8($a0)
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	min_caml_int_of_float
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	move	$a0, $v0
	li	$a1, 255
	blt	$a1, $a0, bge_else.18289
	li	$a1, 0
	blt	$a0, $a1, bge_else.18291
	j	bge_cont.18292
bge_else.18291:
	li	$a0, 0
bge_cont.18292:
	j	bge_cont.18290
bge_else.18289:
	li	$a0, 255
bge_cont.18290:
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	min_caml_print_int
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	fmove	$f30, $fv
	li	$a0, 10
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	min_caml_print_byte
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	fmove	$f30, $fv
	lw	$a0, 16($sp)
	addi	$a0, $a0, 1
	li	$a1, 616
	lw	$a1, 0($a1)
	blt	$a0, $a1, bge_else.18293
	jr	$ra
bge_else.18293:
	li	$a1, 604
	sll	$a2, $a0, 2
	lw	$a3, 12($sp)
	add	$a2, $a3, $a2
	lw	$a2, 0($a2)
	lw	$a2, 0($a2)
	flw	$f0, 0($a2)
	fsw	$f0, 0($a1)
	flw	$f0, 4($a2)
	fsw	$f0, 4($a1)
	flw	$f0, 8($a2)
	fsw	$f0, 8($a1)
	li	$a1, 616
	lw	$a1, 4($a1)
	lw	$a2, 8($sp)
	addi	$a4, $a2, 1
	blt	$a4, $a1, bge_else.18295
	li	$a1, 0
	j	bge_cont.18296
bge_else.18295:
	li	$a1, 0
	blt	$a1, $a2, bge_else.18297
	li	$a1, 0
	j	bge_cont.18298
bge_else.18297:
	li	$a1, 616
	lw	$a1, 0($a1)
	addi	$a4, $a0, 1
	blt	$a4, $a1, bge_else.18299
	li	$a1, 0
	j	bge_cont.18300
bge_else.18299:
	li	$a1, 0
	blt	$a1, $a0, bge_else.18301
	li	$a1, 0
	j	bge_cont.18302
bge_else.18301:
	li	$a1, 1
bge_cont.18302:
bge_cont.18300:
bge_cont.18298:
bge_cont.18296:
	li	$a4, 0
	sw	$a0, 24($sp)
	bne	$a1, $a4, bne_else.18303
	sll	$a1, $a0, 2
	add	$a1, $a3, $a1
	lw	$a1, 0($a1)
	li	$a4, 0
	move	$a0, $a1
	move	$a1, $a4
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	do_without_neighbors.3027
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	fmove	$f30, $fv
	j	bne_cont.18304
bne_else.18303:
	li	$a5, 0
	lw	$a1, 4($sp)
	lw	$a4, 0($sp)
	move	$a25, $a2
	move	$a2, $a1
	move	$a1, $a25
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	try_exploit_neighbors.3043
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	fmove	$f30, $fv
bne_cont.18304:
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	write_rgb.3054
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	fmove	$f30, $fv
	lw	$a0, 24($sp)
	addi	$a0, $a0, 1
	lw	$a1, 8($sp)
	lw	$a2, 4($sp)
	lw	$a3, 12($sp)
	lw	$a4, 0($sp)
	j	scan_pixel.3070
scan_line.3076:
	li	$a5, 616
	lw	$a5, 4($a5)
	blt	$a0, $a5, bge_else.18305
	jr	$ra
bge_else.18305:
	li	$a5, 616
	lw	$a5, 4($a5)
	subi	$a5, $a5, 1
	sw	$a4, 0($sp)
	sw	$a3, 4($sp)
	sw	$a1, 8($sp)
	sw	$a0, 12($sp)
	sw	$a2, 16($sp)
	blt	$a0, $a5, bge_else.18307
	j	bge_cont.18308
bge_else.18307:
	addi	$a5, $a0, 1
	move	$a2, $a4
	move	$a1, $a5
	move	$a0, $a3
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	pretrace_line.3066
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	fmove	$f30, $fv
bge_cont.18308:
	li	$a0, 0
	li	$a1, 616
	lw	$a1, 0($a1)
	blt	$a0, $a1, bge_else.18309
	j	bge_cont.18310
bge_else.18309:
	li	$a1, 604
	lw	$a3, 16($sp)
	lw	$a2, 0($a3)
	lw	$a2, 0($a2)
	flw	$f0, 0($a2)
	fsw	$f0, 0($a1)
	flw	$f0, 4($a2)
	fsw	$f0, 4($a1)
	flw	$f0, 8($a2)
	fsw	$f0, 8($a1)
	li	$a1, 616
	lw	$a1, 4($a1)
	lw	$a2, 12($sp)
	addi	$a4, $a2, 1
	blt	$a4, $a1, bge_else.18311
	li	$a1, 0
	j	bge_cont.18312
bge_else.18311:
	li	$a1, 0
	blt	$a1, $a2, bge_else.18313
	li	$a1, 0
	j	bge_cont.18314
bge_else.18313:
	li	$a1, 616
	lw	$a1, 0($a1)
	li	$a4, 1
	blt	$a4, $a1, bge_else.18315
	li	$a1, 0
	j	bge_cont.18316
bge_else.18315:
	li	$a1, 0
bge_cont.18316:
bge_cont.18314:
bge_cont.18312:
	li	$a4, 0
	bne	$a1, $a4, bne_else.18317
	lw	$a0, 0($a3)
	li	$a1, 0
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	do_without_neighbors.3027
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	fmove	$f30, $fv
	j	bne_cont.18318
bne_else.18317:
	li	$a5, 0
	lw	$a1, 8($sp)
	lw	$a4, 4($sp)
	move	$a25, $a2
	move	$a2, $a1
	move	$a1, $a25
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	try_exploit_neighbors.3043
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	fmove	$f30, $fv
bne_cont.18318:
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	write_rgb.3054
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	fmove	$f30, $fv
	li	$a0, 1
	lw	$a1, 12($sp)
	lw	$a2, 8($sp)
	lw	$a3, 16($sp)
	lw	$a4, 4($sp)
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	scan_pixel.3070
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	fmove	$f30, $fv
bge_cont.18310:
	lw	$a0, 12($sp)
	addi	$a1, $a0, 1
	lw	$a0, 0($sp)
	addi	$a0, $a0, 2
	li	$a2, 5
	blt	$a0, $a2, bge_else.18319
	subi	$a2, $a0, 5
	j	bge_cont.18320
bge_else.18319:
	move	$a2, $a0
bge_cont.18320:
	li	$a0, 616
	lw	$a0, 4($a0)
	blt	$a1, $a0, bge_else.18321
	jr	$ra
bge_else.18321:
	li	$a0, 616
	lw	$a0, 4($a0)
	subi	$a0, $a0, 1
	sw	$a2, 20($sp)
	sw	$a1, 24($sp)
	blt	$a1, $a0, bge_else.18323
	j	bge_cont.18324
bge_else.18323:
	addi	$a0, $a1, 1
	lw	$a3, 8($sp)
	move	$a1, $a0
	move	$a0, $a3
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	pretrace_line.3066
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	fmove	$f30, $fv
bge_cont.18324:
	li	$a0, 0
	lw	$a1, 24($sp)
	lw	$a2, 16($sp)
	lw	$a3, 4($sp)
	lw	$a4, 8($sp)
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	scan_pixel.3070
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	fmove	$f30, $fv
	lw	$a0, 24($sp)
	addi	$a0, $a0, 1
	lw	$a1, 20($sp)
	addi	$a1, $a1, 2
	li	$a2, 5
	blt	$a1, $a2, bge_else.18325
	subi	$a4, $a1, 5
	j	bge_cont.18326
bge_else.18325:
	move	$a4, $a1
bge_cont.18326:
	lw	$a1, 4($sp)
	lw	$a2, 8($sp)
	lw	$a3, 16($sp)
	j	scan_line.3076
create_pixel.3084:
	li	$a0, 3
	li	$v0, 0
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f0, $v0
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	min_caml_create_float_array
	subi	$sp, $sp, 8
	lw	$ra, 4($sp)
	move	$a0, $v0
	li	$a1, 3
	li	$v0, 0
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f0, $v0
	sw	$a0, 0($sp)
	move	$a0, $a1
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
	li	$v0, 0
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f0, $v0
	sw	$a0, 4($sp)
	move	$a0, $a1
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	min_caml_create_float_array
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	move	$a0, $v0
	lw	$a1, 4($sp)
	sw	$a0, 4($a1)
	li	$a0, 3
	li	$v0, 0
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f0, $v0
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	min_caml_create_float_array
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	move	$a0, $v0
	lw	$a1, 4($sp)
	sw	$a0, 8($a1)
	li	$a0, 3
	li	$v0, 0
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f0, $v0
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	min_caml_create_float_array
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	move	$a0, $v0
	lw	$a1, 4($sp)
	sw	$a0, 12($a1)
	li	$a0, 3
	li	$v0, 0
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f0, $v0
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	min_caml_create_float_array
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	move	$a0, $v0
	lw	$a1, 4($sp)
	sw	$a0, 16($a1)
	li	$a0, 5
	li	$a2, 0
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
	li	$a1, 3
	li	$v0, 0
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f0, $v0
	sw	$a0, 12($sp)
	move	$a0, $a1
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	min_caml_create_float_array
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	move	$a1, $v0
	li	$a0, 5
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	min_caml_create_array
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	move	$a0, $v0
	li	$a1, 3
	li	$v0, 0
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f0, $v0
	sw	$a0, 16($sp)
	move	$a0, $a1
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	min_caml_create_float_array
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	move	$a0, $v0
	lw	$a1, 16($sp)
	sw	$a0, 4($a1)
	li	$a0, 3
	li	$v0, 0
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f0, $v0
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	min_caml_create_float_array
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	move	$a0, $v0
	lw	$a1, 16($sp)
	sw	$a0, 8($a1)
	li	$a0, 3
	li	$v0, 0
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f0, $v0
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	min_caml_create_float_array
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	move	$a0, $v0
	lw	$a1, 16($sp)
	sw	$a0, 12($a1)
	li	$a0, 3
	li	$v0, 0
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f0, $v0
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	min_caml_create_float_array
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	move	$a0, $v0
	lw	$a1, 16($sp)
	sw	$a0, 16($a1)
	li	$a0, 3
	li	$v0, 0
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f0, $v0
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	min_caml_create_float_array
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	move	$a1, $v0
	li	$a0, 5
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	min_caml_create_array
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	move	$a0, $v0
	li	$a1, 3
	li	$v0, 0
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f0, $v0
	sw	$a0, 20($sp)
	move	$a0, $a1
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	min_caml_create_float_array
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	move	$a0, $v0
	lw	$a1, 20($sp)
	sw	$a0, 4($a1)
	li	$a0, 3
	li	$v0, 0
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f0, $v0
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	min_caml_create_float_array
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	move	$a0, $v0
	lw	$a1, 20($sp)
	sw	$a0, 8($a1)
	li	$a0, 3
	li	$v0, 0
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f0, $v0
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	min_caml_create_float_array
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	move	$a0, $v0
	lw	$a1, 20($sp)
	sw	$a0, 12($a1)
	li	$a0, 3
	li	$v0, 0
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f0, $v0
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	min_caml_create_float_array
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	move	$a0, $v0
	lw	$a1, 20($sp)
	sw	$a0, 16($a1)
	li	$a0, 1
	li	$a2, 0
	move	$a1, $a2
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	min_caml_create_array
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	move	$a0, $v0
	li	$a1, 3
	li	$v0, 0
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f0, $v0
	sw	$a0, 24($sp)
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
	li	$a1, 3
	li	$v0, 0
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f0, $v0
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
	li	$a0, 3
	li	$v0, 0
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f0, $v0
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	min_caml_create_float_array
	subi	$sp, $sp, 40
	lw	$ra, 36($sp)
	move	$a0, $v0
	lw	$a1, 28($sp)
	sw	$a0, 8($a1)
	li	$a0, 3
	li	$v0, 0
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f0, $v0
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	min_caml_create_float_array
	subi	$sp, $sp, 40
	lw	$ra, 36($sp)
	move	$a0, $v0
	lw	$a1, 28($sp)
	sw	$a0, 12($a1)
	li	$a0, 3
	li	$v0, 0
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f0, $v0
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	min_caml_create_float_array
	subi	$sp, $sp, 40
	lw	$ra, 36($sp)
	move	$a0, $v0
	lw	$a1, 28($sp)
	sw	$a0, 16($a1)
	move	$a0, $fp
	addi	$fp, $fp, 32
	sw	$a1, 28($a0)
	lw	$a1, 24($sp)
	sw	$a1, 24($a0)
	lw	$a1, 20($sp)
	sw	$a1, 20($a0)
	lw	$a1, 16($sp)
	sw	$a1, 16($a0)
	lw	$a1, 12($sp)
	sw	$a1, 12($a0)
	lw	$a1, 8($sp)
	sw	$a1, 8($a0)
	lw	$a1, 4($sp)
	sw	$a1, 4($a0)
	lw	$a1, 0($sp)
	sw	$a1, 0($a0)
	move	$v0, $a0
	jr	$ra
init_line_elements.3086:
	li	$a2, 0
	blt	$a1, $a2, bge_else.18327
	li	$a2, 3
	li	$v0, 0
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f0, $v0
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
	li	$v0, 0
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f0, $v0
	sw	$a0, 8($sp)
	move	$a0, $a1
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	min_caml_create_float_array
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
	li	$a1, 3
	li	$v0, 0
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f0, $v0
	sw	$a0, 12($sp)
	move	$a0, $a1
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	min_caml_create_float_array
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	move	$a0, $v0
	lw	$a1, 12($sp)
	sw	$a0, 4($a1)
	li	$a0, 3
	li	$v0, 0
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f0, $v0
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	min_caml_create_float_array
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	move	$a0, $v0
	lw	$a1, 12($sp)
	sw	$a0, 8($a1)
	li	$a0, 3
	li	$v0, 0
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f0, $v0
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	min_caml_create_float_array
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	move	$a0, $v0
	lw	$a1, 12($sp)
	sw	$a0, 12($a1)
	li	$a0, 3
	li	$v0, 0
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f0, $v0
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	min_caml_create_float_array
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	move	$a0, $v0
	lw	$a1, 12($sp)
	sw	$a0, 16($a1)
	li	$a0, 5
	li	$a2, 0
	move	$a1, $a2
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	min_caml_create_array
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	move	$a0, $v0
	li	$a1, 5
	li	$a2, 0
	sw	$a0, 16($sp)
	move	$a0, $a1
	move	$a1, $a2
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	min_caml_create_array
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	move	$a0, $v0
	li	$a1, 3
	li	$v0, 0
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f0, $v0
	sw	$a0, 20($sp)
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
	li	$a1, 3
	li	$v0, 0
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f0, $v0
	sw	$a0, 24($sp)
	move	$a0, $a1
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	min_caml_create_float_array
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	move	$a0, $v0
	lw	$a1, 24($sp)
	sw	$a0, 4($a1)
	li	$a0, 3
	li	$v0, 0
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f0, $v0
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	min_caml_create_float_array
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	move	$a0, $v0
	lw	$a1, 24($sp)
	sw	$a0, 8($a1)
	li	$a0, 3
	li	$v0, 0
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f0, $v0
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	min_caml_create_float_array
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	move	$a0, $v0
	lw	$a1, 24($sp)
	sw	$a0, 12($a1)
	li	$a0, 3
	li	$v0, 0
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f0, $v0
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	min_caml_create_float_array
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	move	$a0, $v0
	lw	$a1, 24($sp)
	sw	$a0, 16($a1)
	li	$a0, 3
	li	$v0, 0
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f0, $v0
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
	li	$a1, 3
	li	$v0, 0
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f0, $v0
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
	li	$a0, 3
	li	$v0, 0
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f0, $v0
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	min_caml_create_float_array
	subi	$sp, $sp, 40
	lw	$ra, 36($sp)
	move	$a0, $v0
	lw	$a1, 28($sp)
	sw	$a0, 8($a1)
	li	$a0, 3
	li	$v0, 0
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f0, $v0
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	min_caml_create_float_array
	subi	$sp, $sp, 40
	lw	$ra, 36($sp)
	move	$a0, $v0
	lw	$a1, 28($sp)
	sw	$a0, 12($a1)
	li	$a0, 3
	li	$v0, 0
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f0, $v0
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	min_caml_create_float_array
	subi	$sp, $sp, 40
	lw	$ra, 36($sp)
	move	$a0, $v0
	lw	$a1, 28($sp)
	sw	$a0, 16($a1)
	li	$a0, 1
	li	$a2, 0
	move	$a1, $a2
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	min_caml_create_array
	subi	$sp, $sp, 40
	lw	$ra, 36($sp)
	move	$a0, $v0
	li	$a1, 3
	li	$v0, 0
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f0, $v0
	sw	$a0, 32($sp)
	move	$a0, $a1
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	min_caml_create_float_array
	subi	$sp, $sp, 40
	lw	$ra, 36($sp)
	move	$a1, $v0
	li	$a0, 5
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	min_caml_create_array
	subi	$sp, $sp, 40
	lw	$ra, 36($sp)
	move	$a0, $v0
	li	$a1, 3
	li	$v0, 0
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f0, $v0
	sw	$a0, 36($sp)
	move	$a0, $a1
	sw	$ra, 44($sp)
	addi	$sp, $sp, 48
	jal	min_caml_create_float_array
	subi	$sp, $sp, 48
	lw	$ra, 44($sp)
	move	$a0, $v0
	lw	$a1, 36($sp)
	sw	$a0, 4($a1)
	li	$a0, 3
	li	$v0, 0
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f0, $v0
	sw	$ra, 44($sp)
	addi	$sp, $sp, 48
	jal	min_caml_create_float_array
	subi	$sp, $sp, 48
	lw	$ra, 44($sp)
	move	$a0, $v0
	lw	$a1, 36($sp)
	sw	$a0, 8($a1)
	li	$a0, 3
	li	$v0, 0
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f0, $v0
	sw	$ra, 44($sp)
	addi	$sp, $sp, 48
	jal	min_caml_create_float_array
	subi	$sp, $sp, 48
	lw	$ra, 44($sp)
	move	$a0, $v0
	lw	$a1, 36($sp)
	sw	$a0, 12($a1)
	li	$a0, 3
	li	$v0, 0
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f0, $v0
	sw	$ra, 44($sp)
	addi	$sp, $sp, 48
	jal	min_caml_create_float_array
	subi	$sp, $sp, 48
	lw	$ra, 44($sp)
	move	$a0, $v0
	lw	$a1, 36($sp)
	sw	$a0, 16($a1)
	move	$a0, $fp
	addi	$fp, $fp, 32
	sw	$a1, 28($a0)
	lw	$a1, 32($sp)
	sw	$a1, 24($a0)
	lw	$a1, 28($sp)
	sw	$a1, 20($a0)
	lw	$a1, 24($sp)
	sw	$a1, 16($a0)
	lw	$a1, 20($sp)
	sw	$a1, 12($a0)
	lw	$a1, 16($sp)
	sw	$a1, 8($a0)
	lw	$a1, 12($sp)
	sw	$a1, 4($a0)
	lw	$a1, 8($sp)
	sw	$a1, 0($a0)
	lw	$a1, 4($sp)
	sll	$a2, $a1, 2
	lw	$a3, 0($sp)
	add	$a2, $a3, $a2
	sw	$a0, 0($a2)
	subi	$a0, $a1, 1
	li	$a1, 0
	blt	$a0, $a1, bge_else.18328
	sw	$a0, 40($sp)
	sw	$ra, 44($sp)
	addi	$sp, $sp, 48
	jal	create_pixel.3084
	subi	$sp, $sp, 48
	lw	$ra, 44($sp)
	move	$a0, $v0
	lw	$a1, 40($sp)
	sll	$a2, $a1, 2
	lw	$a3, 0($sp)
	add	$a2, $a3, $a2
	sw	$a0, 0($a2)
	subi	$a1, $a1, 1
	move	$a0, $a3
	j	init_line_elements.3086
bge_else.18328:
	move	$v0, $a3
	jr	$ra
bge_else.18327:
	move	$v0, $a0
	jr	$ra
calc_dirvec.3096:
	li	$a3, 5
	blt	$a0, $a3, bge_else.18329
	fmul	$f2, $f0, $f0
	fmul	$f3, $f1, $f1
	fadd	$f2, $f2, $f3
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f3, $v0
	fadd	$f2, $f2, $f3
	sw	$a2, 0($sp)
	sw	$a1, 4($sp)
	fsw	$f1, 8($sp)
	fsw	$f0, 16($sp)
	fmove	$f0, $f2
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	min_caml_sqrt
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	fmove	$f0, $fv
	finv	$f1, $f0
	flw	$f2, 16($sp)
	fmul	$f1, $f2, $f1
	finv	$f2, $f0
	flw	$f3, 8($sp)
	fmul	$f2, $f3, $f2
	finv	$f0, $f0
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f3, $v0
	fmul	$f0, $f3, $f0
	li	$a0, 716
	lw	$a1, 4($sp)
	sll	$a1, $a1, 2
	add	$a1, $a0, $a1
	lw	$a0, 0($a1)
	lw	$a1, 0($sp)
	sll	$a2, $a1, 2
	add	$a2, $a0, $a2
	lw	$a2, 0($a2)
	lw	$a2, 0($a2)
	fsw	$f1, 0($a2)
	fsw	$f2, 4($a2)
	fsw	$f0, 8($a2)
	addi	$a2, $a1, 40
	sll	$a2, $a2, 2
	add	$a2, $a0, $a2
	lw	$a2, 0($a2)
	lw	$a2, 0($a2)
	fneg	$f3, $f2
	fsw	$f1, 0($a2)
	fsw	$f0, 4($a2)
	fsw	$f3, 8($a2)
	addi	$a2, $a1, 80
	sll	$a2, $a2, 2
	add	$a2, $a0, $a2
	lw	$a2, 0($a2)
	lw	$a2, 0($a2)
	fneg	$f3, $f1
	fneg	$f4, $f2
	fsw	$f0, 0($a2)
	fsw	$f3, 4($a2)
	fsw	$f4, 8($a2)
	addi	$a2, $a1, 1
	sll	$a2, $a2, 2
	add	$a2, $a0, $a2
	lw	$a2, 0($a2)
	lw	$a2, 0($a2)
	fneg	$f3, $f1
	fneg	$f4, $f2
	fneg	$f5, $f0
	fsw	$f3, 0($a2)
	fsw	$f4, 4($a2)
	fsw	$f5, 8($a2)
	addi	$a2, $a1, 41
	sll	$a2, $a2, 2
	add	$a2, $a0, $a2
	lw	$a2, 0($a2)
	lw	$a2, 0($a2)
	fneg	$f3, $f1
	fneg	$f4, $f0
	fsw	$f3, 0($a2)
	fsw	$f4, 4($a2)
	fsw	$f2, 8($a2)
	addi	$a1, $a1, 81
	sll	$a1, $a1, 2
	add	$a1, $a0, $a1
	lw	$a0, 0($a1)
	lw	$a0, 0($a0)
	fneg	$f0, $f0
	fsw	$f0, 0($a0)
	fsw	$f1, 4($a0)
	fsw	$f2, 8($a0)
	jr	$ra
bge_else.18329:
	fmul	$f0, $f1, $f1
	li	$v0, 15820
	sll	$v0, $v0, 16
	ori	$v0, $v0, 52429
	mtc1	$f1, $v0
	fadd	$f0, $f0, $f1
	sw	$a2, 0($sp)
	sw	$a1, 4($sp)
	fsw	$f3, 24($sp)
	sw	$a0, 32($sp)
	fsw	$f2, 40($sp)
	sw	$ra, 52($sp)
	addi	$sp, $sp, 56
	jal	min_caml_sqrt
	subi	$sp, $sp, 56
	lw	$ra, 52($sp)
	fmove	$f0, $fv
	finv	$f1, $f0
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fmul	$f1, $f2, $f1
	fsw	$f0, 48($sp)
	fmove	$f0, $f1
	sw	$ra, 60($sp)
	addi	$sp, $sp, 64
	jal	min_caml_atan
	subi	$sp, $sp, 64
	lw	$ra, 60($sp)
	fmove	$f0, $fv
	flw	$f1, 40($sp)
	fmul	$f0, $f0, $f1
	fsw	$f0, 56($sp)
	sw	$ra, 68($sp)
	addi	$sp, $sp, 72
	jal	min_caml_sin
	subi	$sp, $sp, 72
	lw	$ra, 68($sp)
	fmove	$f0, $fv
	flw	$f1, 56($sp)
	fsw	$f0, 64($sp)
	fmove	$f0, $f1
	sw	$ra, 76($sp)
	addi	$sp, $sp, 80
	jal	min_caml_cos
	subi	$sp, $sp, 80
	lw	$ra, 76($sp)
	fmove	$f0, $fv
	finv	$f0, $f0
	flw	$f1, 64($sp)
	fmul	$f0, $f1, $f0
	flw	$f1, 48($sp)
	fmul	$f0, $f0, $f1
	lw	$a0, 32($sp)
	addi	$a0, $a0, 1
	fmul	$f1, $f0, $f0
	li	$v0, 15820
	sll	$v0, $v0, 16
	ori	$v0, $v0, 52429
	mtc1	$f2, $v0
	fadd	$f1, $f1, $f2
	fsw	$f0, 72($sp)
	sw	$a0, 80($sp)
	fmove	$f0, $f1
	sw	$ra, 84($sp)
	addi	$sp, $sp, 88
	jal	min_caml_sqrt
	subi	$sp, $sp, 88
	lw	$ra, 84($sp)
	fmove	$f0, $fv
	finv	$f1, $f0
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	fmul	$f1, $f2, $f1
	fsw	$f0, 88($sp)
	fmove	$f0, $f1
	sw	$ra, 100($sp)
	addi	$sp, $sp, 104
	jal	min_caml_atan
	subi	$sp, $sp, 104
	lw	$ra, 100($sp)
	fmove	$f0, $fv
	flw	$f1, 24($sp)
	fmul	$f0, $f0, $f1
	fsw	$f0, 96($sp)
	sw	$ra, 108($sp)
	addi	$sp, $sp, 112
	jal	min_caml_sin
	subi	$sp, $sp, 112
	lw	$ra, 108($sp)
	fmove	$f0, $fv
	flw	$f1, 96($sp)
	fsw	$f0, 104($sp)
	fmove	$f0, $f1
	sw	$ra, 116($sp)
	addi	$sp, $sp, 120
	jal	min_caml_cos
	subi	$sp, $sp, 120
	lw	$ra, 116($sp)
	fmove	$f0, $fv
	finv	$f0, $f0
	flw	$f1, 104($sp)
	fmul	$f0, $f1, $f0
	flw	$f1, 88($sp)
	fmul	$f1, $f0, $f1
	flw	$f0, 72($sp)
	flw	$f2, 40($sp)
	flw	$f3, 24($sp)
	lw	$a0, 80($sp)
	lw	$a1, 4($sp)
	lw	$a2, 0($sp)
	j	calc_dirvec.3096
calc_dirvecs.3104:
	li	$a3, 0
	blt	$a0, $a3, bge_else.18333
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
	li	$v0, 0
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f0, $v0
	li	$v0, 0
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	flw	$f3, 8($sp)
	lw	$a1, 20($sp)
	lw	$a2, 16($sp)
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	calc_dirvec.3096
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
	li	$v0, 0
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f0, $v0
	li	$v0, 0
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	lw	$a1, 16($sp)
	addi	$a2, $a1, 2
	flw	$f3, 8($sp)
	lw	$a3, 20($sp)
	move	$a1, $a3
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	calc_dirvec.3096
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	fmove	$f30, $fv
	lw	$a0, 0($sp)
	subi	$a0, $a0, 1
	lw	$a1, 20($sp)
	addi	$a1, $a1, 1
	li	$a2, 5
	blt	$a1, $a2, bge_else.18335
	subi	$a1, $a1, 5
	j	bge_cont.18336
bge_else.18335:
bge_cont.18336:
	li	$a2, 0
	blt	$a0, $a2, bge_else.18337
	sw	$a0, 24($sp)
	sw	$a1, 28($sp)
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	min_caml_float_of_int
	subi	$sp, $sp, 40
	lw	$ra, 36($sp)
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
	li	$v0, 0
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f0, $v0
	li	$v0, 0
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	flw	$f3, 8($sp)
	lw	$a1, 28($sp)
	lw	$a2, 16($sp)
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	calc_dirvec.3096
	subi	$sp, $sp, 40
	lw	$ra, 36($sp)
	fmove	$f30, $fv
	lw	$a0, 24($sp)
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	min_caml_float_of_int
	subi	$sp, $sp, 40
	lw	$ra, 36($sp)
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
	li	$v0, 0
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f0, $v0
	li	$v0, 0
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	lw	$a1, 16($sp)
	addi	$a2, $a1, 2
	flw	$f3, 8($sp)
	lw	$a3, 28($sp)
	move	$a1, $a3
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	calc_dirvec.3096
	subi	$sp, $sp, 40
	lw	$ra, 36($sp)
	fmove	$f30, $fv
	lw	$a0, 24($sp)
	subi	$a0, $a0, 1
	lw	$a1, 28($sp)
	addi	$a1, $a1, 1
	li	$a2, 5
	blt	$a1, $a2, bge_else.18338
	subi	$a1, $a1, 5
	j	bge_cont.18339
bge_else.18338:
bge_cont.18339:
	flw	$f0, 8($sp)
	lw	$a2, 16($sp)
	j	calc_dirvecs.3104
bge_else.18337:
	jr	$ra
bge_else.18333:
	jr	$ra
calc_dirvec_rows.3109:
	li	$a3, 0
	blt	$a0, $a3, bge_else.18342
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
	sw	$a0, 12($sp)
	fsw	$f0, 16($sp)
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
	li	$v0, 0
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f0, $v0
	li	$v0, 0
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	flw	$f3, 16($sp)
	lw	$a1, 8($sp)
	lw	$a2, 4($sp)
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	calc_dirvec.3096
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	fmove	$f30, $fv
	lw	$a0, 12($sp)
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
	li	$v0, 0
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f0, $v0
	li	$v0, 0
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	lw	$a1, 4($sp)
	addi	$a2, $a1, 2
	flw	$f3, 16($sp)
	lw	$a3, 8($sp)
	move	$a1, $a3
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	calc_dirvec.3096
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	fmove	$f30, $fv
	li	$a0, 3
	lw	$a1, 8($sp)
	addi	$a2, $a1, 1
	li	$a3, 5
	blt	$a2, $a3, bge_else.18343
	subi	$a2, $a2, 5
	j	bge_cont.18344
bge_else.18343:
bge_cont.18344:
	flw	$f0, 16($sp)
	lw	$a3, 4($sp)
	move	$a1, $a2
	move	$a2, $a3
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	calc_dirvecs.3104
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	fmove	$f30, $fv
	lw	$a0, 0($sp)
	subi	$a0, $a0, 1
	lw	$a1, 8($sp)
	addi	$a1, $a1, 2
	li	$a2, 5
	blt	$a1, $a2, bge_else.18345
	subi	$a1, $a1, 5
	j	bge_cont.18346
bge_else.18345:
bge_cont.18346:
	lw	$a2, 4($sp)
	addi	$a2, $a2, 4
	li	$a3, 0
	blt	$a0, $a3, bge_else.18347
	sw	$a0, 24($sp)
	sw	$a2, 28($sp)
	sw	$a1, 32($sp)
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	min_caml_float_of_int
	subi	$sp, $sp, 40
	lw	$ra, 36($sp)
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
	lw	$a1, 32($sp)
	lw	$a2, 28($sp)
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	calc_dirvecs.3104
	subi	$sp, $sp, 40
	lw	$ra, 36($sp)
	fmove	$f30, $fv
	lw	$a0, 24($sp)
	subi	$a0, $a0, 1
	lw	$a1, 32($sp)
	addi	$a1, $a1, 2
	li	$a2, 5
	blt	$a1, $a2, bge_else.18348
	subi	$a1, $a1, 5
	j	bge_cont.18349
bge_else.18348:
bge_cont.18349:
	lw	$a2, 28($sp)
	addi	$a2, $a2, 4
	j	calc_dirvec_rows.3109
bge_else.18347:
	jr	$ra
bge_else.18342:
	jr	$ra
create_dirvec_elements.3115:
	li	$a2, 0
	blt	$a1, $a2, bge_else.18352
	li	$a2, 3
	li	$v0, 0
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f0, $v0
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
	subi	$a0, $a1, 1
	li	$a1, 0
	blt	$a0, $a1, bge_else.18353
	li	$a1, 3
	li	$v0, 0
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f0, $v0
	sw	$a0, 12($sp)
	move	$a0, $a1
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	min_caml_create_float_array
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	move	$a1, $v0
	li	$a0, 0
	lw	$a0, 0($a0)
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
	lw	$a1, 12($sp)
	sll	$a2, $a1, 2
	lw	$a3, 0($sp)
	add	$a2, $a3, $a2
	sw	$a0, 0($a2)
	subi	$a0, $a1, 1
	li	$a1, 0
	blt	$a0, $a1, bge_else.18354
	li	$a1, 3
	li	$v0, 0
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f0, $v0
	sw	$a0, 20($sp)
	move	$a0, $a1
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	min_caml_create_float_array
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	move	$a1, $v0
	li	$a0, 0
	lw	$a0, 0($a0)
	sw	$a1, 24($sp)
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	min_caml_create_array
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	move	$a0, $v0
	move	$a1, $fp
	addi	$fp, $fp, 8
	sw	$a0, 4($a1)
	lw	$a0, 24($sp)
	sw	$a0, 0($a1)
	move	$a0, $a1
	lw	$a1, 20($sp)
	sll	$a2, $a1, 2
	lw	$a3, 0($sp)
	add	$a2, $a3, $a2
	sw	$a0, 0($a2)
	subi	$a0, $a1, 1
	li	$a1, 0
	blt	$a0, $a1, bge_else.18355
	li	$a1, 3
	li	$v0, 0
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f0, $v0
	sw	$a0, 28($sp)
	move	$a0, $a1
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	min_caml_create_float_array
	subi	$sp, $sp, 40
	lw	$ra, 36($sp)
	move	$a1, $v0
	li	$a0, 0
	lw	$a0, 0($a0)
	sw	$a1, 32($sp)
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	min_caml_create_array
	subi	$sp, $sp, 40
	lw	$ra, 36($sp)
	move	$a0, $v0
	move	$a1, $fp
	addi	$fp, $fp, 8
	sw	$a0, 4($a1)
	lw	$a0, 32($sp)
	sw	$a0, 0($a1)
	move	$a0, $a1
	lw	$a1, 28($sp)
	sll	$a2, $a1, 2
	lw	$a3, 0($sp)
	add	$a2, $a3, $a2
	sw	$a0, 0($a2)
	subi	$a1, $a1, 1
	move	$a0, $a3
	j	create_dirvec_elements.3115
bge_else.18355:
	jr	$ra
bge_else.18354:
	jr	$ra
bge_else.18353:
	jr	$ra
bge_else.18352:
	jr	$ra
create_dirvecs.3118:
	li	$a1, 0
	blt	$a0, $a1, bge_else.18360
	li	$a1, 716
	li	$a2, 120
	li	$a3, 3
	li	$v0, 0
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f0, $v0
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
	li	$a2, 3
	li	$v0, 0
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f0, $v0
	sw	$a0, 16($sp)
	move	$a0, $a2
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	min_caml_create_float_array
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	move	$a1, $v0
	li	$a0, 0
	lw	$a0, 0($a0)
	sw	$a1, 20($sp)
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	min_caml_create_array
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	move	$a0, $v0
	move	$a1, $fp
	addi	$fp, $fp, 8
	sw	$a0, 4($a1)
	lw	$a0, 20($sp)
	sw	$a0, 0($a1)
	move	$a0, $a1
	lw	$a1, 16($sp)
	sw	$a0, 472($a1)
	li	$a0, 3
	li	$v0, 0
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f0, $v0
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	min_caml_create_float_array
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	move	$a1, $v0
	li	$a0, 0
	lw	$a0, 0($a0)
	sw	$a1, 24($sp)
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	min_caml_create_array
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	move	$a0, $v0
	move	$a1, $fp
	addi	$fp, $fp, 8
	sw	$a0, 4($a1)
	lw	$a0, 24($sp)
	sw	$a0, 0($a1)
	move	$a0, $a1
	lw	$a1, 16($sp)
	sw	$a0, 468($a1)
	li	$a0, 3
	li	$v0, 0
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f0, $v0
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	min_caml_create_float_array
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	move	$a1, $v0
	li	$a0, 0
	lw	$a0, 0($a0)
	sw	$a1, 28($sp)
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	min_caml_create_array
	subi	$sp, $sp, 40
	lw	$ra, 36($sp)
	move	$a0, $v0
	move	$a1, $fp
	addi	$fp, $fp, 8
	sw	$a0, 4($a1)
	lw	$a0, 28($sp)
	sw	$a0, 0($a1)
	move	$a0, $a1
	lw	$a1, 16($sp)
	sw	$a0, 464($a1)
	li	$a0, 115
	move	$a25, $a1
	move	$a1, $a0
	move	$a0, $a25
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	create_dirvec_elements.3115
	subi	$sp, $sp, 40
	lw	$ra, 36($sp)
	fmove	$f30, $fv
	lw	$a0, 4($sp)
	subi	$a0, $a0, 1
	li	$a1, 0
	blt	$a0, $a1, bge_else.18361
	li	$a1, 716
	li	$a2, 120
	li	$a3, 3
	li	$v0, 0
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f0, $v0
	sw	$a1, 32($sp)
	sw	$a0, 36($sp)
	sw	$a2, 40($sp)
	move	$a0, $a3
	sw	$ra, 44($sp)
	addi	$sp, $sp, 48
	jal	min_caml_create_float_array
	subi	$sp, $sp, 48
	lw	$ra, 44($sp)
	move	$a1, $v0
	li	$a0, 0
	lw	$a0, 0($a0)
	sw	$a1, 44($sp)
	sw	$ra, 52($sp)
	addi	$sp, $sp, 56
	jal	min_caml_create_array
	subi	$sp, $sp, 56
	lw	$ra, 52($sp)
	move	$a0, $v0
	move	$a1, $fp
	addi	$fp, $fp, 8
	sw	$a0, 4($a1)
	lw	$a0, 44($sp)
	sw	$a0, 0($a1)
	lw	$a0, 40($sp)
	sw	$ra, 52($sp)
	addi	$sp, $sp, 56
	jal	min_caml_create_array
	subi	$sp, $sp, 56
	lw	$ra, 52($sp)
	move	$a0, $v0
	lw	$a1, 36($sp)
	sll	$a2, $a1, 2
	lw	$a3, 32($sp)
	add	$a2, $a3, $a2
	sw	$a0, 0($a2)
	li	$a0, 716
	sll	$a2, $a1, 2
	add	$a2, $a0, $a2
	lw	$a0, 0($a2)
	li	$a2, 3
	li	$v0, 0
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f0, $v0
	sw	$a0, 48($sp)
	move	$a0, $a2
	sw	$ra, 52($sp)
	addi	$sp, $sp, 56
	jal	min_caml_create_float_array
	subi	$sp, $sp, 56
	lw	$ra, 52($sp)
	move	$a1, $v0
	li	$a0, 0
	lw	$a0, 0($a0)
	sw	$a1, 52($sp)
	sw	$ra, 60($sp)
	addi	$sp, $sp, 64
	jal	min_caml_create_array
	subi	$sp, $sp, 64
	lw	$ra, 60($sp)
	move	$a0, $v0
	move	$a1, $fp
	addi	$fp, $fp, 8
	sw	$a0, 4($a1)
	lw	$a0, 52($sp)
	sw	$a0, 0($a1)
	move	$a0, $a1
	lw	$a1, 48($sp)
	sw	$a0, 472($a1)
	li	$a0, 3
	li	$v0, 0
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f0, $v0
	sw	$ra, 60($sp)
	addi	$sp, $sp, 64
	jal	min_caml_create_float_array
	subi	$sp, $sp, 64
	lw	$ra, 60($sp)
	move	$a1, $v0
	li	$a0, 0
	lw	$a0, 0($a0)
	sw	$a1, 56($sp)
	sw	$ra, 60($sp)
	addi	$sp, $sp, 64
	jal	min_caml_create_array
	subi	$sp, $sp, 64
	lw	$ra, 60($sp)
	move	$a0, $v0
	move	$a1, $fp
	addi	$fp, $fp, 8
	sw	$a0, 4($a1)
	lw	$a0, 56($sp)
	sw	$a0, 0($a1)
	move	$a0, $a1
	lw	$a1, 48($sp)
	sw	$a0, 468($a1)
	li	$a0, 116
	move	$a25, $a1
	move	$a1, $a0
	move	$a0, $a25
	sw	$ra, 60($sp)
	addi	$sp, $sp, 64
	jal	create_dirvec_elements.3115
	subi	$sp, $sp, 64
	lw	$ra, 60($sp)
	fmove	$f30, $fv
	lw	$a0, 36($sp)
	subi	$a0, $a0, 1
	j	create_dirvecs.3118
bge_else.18361:
	jr	$ra
bge_else.18360:
	jr	$ra
init_dirvec_constants.3120:
	li	$a2, 0
	blt	$a1, $a2, bge_else.18364
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
	jal	iter_setup_dirvec_constants.2902
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	fmove	$f30, $fv
	lw	$a0, 4($sp)
	subi	$a0, $a0, 1
	li	$a1, 0
	blt	$a0, $a1, bge_else.18365
	sll	$a1, $a0, 2
	lw	$a2, 0($sp)
	add	$a1, $a2, $a1
	lw	$a1, 0($a1)
	li	$a3, 0
	lw	$a3, 0($a3)
	subi	$a3, $a3, 1
	li	$a4, 0
	sw	$a0, 8($sp)
	blt	$a3, $a4, bge_else.18366
	li	$a4, 48
	sll	$a5, $a3, 2
	add	$a5, $a4, $a5
	lw	$a4, 0($a5)
	lw	$a5, 4($a1)
	lw	$a6, 0($a1)
	lw	$a7, 4($a4)
	li	$a8, 1
	sw	$a1, 12($sp)
	bne	$a7, $a8, bne_else.18368
	sw	$a5, 16($sp)
	sw	$a3, 20($sp)
	move	$a1, $a4
	move	$a0, $a6
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	setup_rect_table.2893
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	move	$a0, $v0
	lw	$a1, 20($sp)
	sll	$a2, $a1, 2
	lw	$a3, 16($sp)
	add	$a2, $a3, $a2
	sw	$a0, 0($a2)
	j	bne_cont.18369
bne_else.18368:
	li	$a8, 2
	bne	$a7, $a8, bne_else.18370
	sw	$a5, 16($sp)
	sw	$a3, 20($sp)
	move	$a1, $a4
	move	$a0, $a6
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	setup_surface_table.2896
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	move	$a0, $v0
	lw	$a1, 20($sp)
	sll	$a2, $a1, 2
	lw	$a3, 16($sp)
	add	$a2, $a3, $a2
	sw	$a0, 0($a2)
	j	bne_cont.18371
bne_else.18370:
	sw	$a5, 16($sp)
	sw	$a3, 20($sp)
	move	$a1, $a4
	move	$a0, $a6
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	setup_second_table.2899
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	move	$a0, $v0
	lw	$a1, 20($sp)
	sll	$a2, $a1, 2
	lw	$a3, 16($sp)
	add	$a2, $a3, $a2
	sw	$a0, 0($a2)
bne_cont.18371:
bne_cont.18369:
	subi	$a1, $a1, 1
	lw	$a0, 12($sp)
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	iter_setup_dirvec_constants.2902
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	fmove	$f30, $fv
	j	bge_cont.18367
bge_else.18366:
bge_cont.18367:
	lw	$a0, 8($sp)
	subi	$a0, $a0, 1
	li	$a1, 0
	blt	$a0, $a1, bge_else.18372
	sll	$a1, $a0, 2
	lw	$a2, 0($sp)
	add	$a1, $a2, $a1
	lw	$a1, 0($a1)
	li	$a3, 0
	lw	$a3, 0($a3)
	subi	$a3, $a3, 1
	sw	$a0, 24($sp)
	move	$a0, $a1
	move	$a1, $a3
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	iter_setup_dirvec_constants.2902
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	fmove	$f30, $fv
	lw	$a0, 24($sp)
	subi	$a0, $a0, 1
	li	$a1, 0
	blt	$a0, $a1, bge_else.18373
	sll	$a1, $a0, 2
	lw	$a2, 0($sp)
	add	$a1, $a2, $a1
	lw	$a1, 0($a1)
	li	$a3, 0
	lw	$a3, 0($a3)
	subi	$a3, $a3, 1
	li	$a4, 0
	sw	$a0, 28($sp)
	blt	$a3, $a4, bge_else.18374
	li	$a4, 48
	sll	$a5, $a3, 2
	add	$a5, $a4, $a5
	lw	$a4, 0($a5)
	lw	$a5, 4($a1)
	lw	$a6, 0($a1)
	lw	$a7, 4($a4)
	li	$a8, 1
	sw	$a1, 32($sp)
	bne	$a7, $a8, bne_else.18376
	sw	$a5, 36($sp)
	sw	$a3, 40($sp)
	move	$a1, $a4
	move	$a0, $a6
	sw	$ra, 44($sp)
	addi	$sp, $sp, 48
	jal	setup_rect_table.2893
	subi	$sp, $sp, 48
	lw	$ra, 44($sp)
	move	$a0, $v0
	lw	$a1, 40($sp)
	sll	$a2, $a1, 2
	lw	$a3, 36($sp)
	add	$a2, $a3, $a2
	sw	$a0, 0($a2)
	j	bne_cont.18377
bne_else.18376:
	li	$a8, 2
	bne	$a7, $a8, bne_else.18378
	sw	$a5, 36($sp)
	sw	$a3, 40($sp)
	move	$a1, $a4
	move	$a0, $a6
	sw	$ra, 44($sp)
	addi	$sp, $sp, 48
	jal	setup_surface_table.2896
	subi	$sp, $sp, 48
	lw	$ra, 44($sp)
	move	$a0, $v0
	lw	$a1, 40($sp)
	sll	$a2, $a1, 2
	lw	$a3, 36($sp)
	add	$a2, $a3, $a2
	sw	$a0, 0($a2)
	j	bne_cont.18379
bne_else.18378:
	sw	$a5, 36($sp)
	sw	$a3, 40($sp)
	move	$a1, $a4
	move	$a0, $a6
	sw	$ra, 44($sp)
	addi	$sp, $sp, 48
	jal	setup_second_table.2899
	subi	$sp, $sp, 48
	lw	$ra, 44($sp)
	move	$a0, $v0
	lw	$a1, 40($sp)
	sll	$a2, $a1, 2
	lw	$a3, 36($sp)
	add	$a2, $a3, $a2
	sw	$a0, 0($a2)
bne_cont.18379:
bne_cont.18377:
	subi	$a1, $a1, 1
	lw	$a0, 32($sp)
	sw	$ra, 44($sp)
	addi	$sp, $sp, 48
	jal	iter_setup_dirvec_constants.2902
	subi	$sp, $sp, 48
	lw	$ra, 44($sp)
	fmove	$f30, $fv
	j	bge_cont.18375
bge_else.18374:
bge_cont.18375:
	lw	$a0, 28($sp)
	subi	$a1, $a0, 1
	lw	$a0, 0($sp)
	j	init_dirvec_constants.3120
bge_else.18373:
	jr	$ra
bge_else.18372:
	jr	$ra
bge_else.18365:
	jr	$ra
bge_else.18364:
	jr	$ra
init_vecset_constants.3123:
	li	$a1, 0
	blt	$a0, $a1, bge_else.18384
	li	$a1, 716
	sll	$a2, $a0, 2
	add	$a2, $a1, $a2
	lw	$a1, 0($a2)
	lw	$a2, 476($a1)
	li	$a3, 0
	lw	$a3, 0($a3)
	subi	$a3, $a3, 1
	li	$a4, 0
	sw	$a0, 0($sp)
	sw	$a1, 4($sp)
	blt	$a3, $a4, bge_else.18385
	li	$a4, 48
	sll	$a5, $a3, 2
	add	$a5, $a4, $a5
	lw	$a4, 0($a5)
	lw	$a5, 4($a2)
	lw	$a6, 0($a2)
	lw	$a7, 4($a4)
	li	$a8, 1
	sw	$a2, 8($sp)
	bne	$a7, $a8, bne_else.18387
	sw	$a5, 12($sp)
	sw	$a3, 16($sp)
	move	$a1, $a4
	move	$a0, $a6
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	setup_rect_table.2893
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	move	$a0, $v0
	lw	$a1, 16($sp)
	sll	$a2, $a1, 2
	lw	$a3, 12($sp)
	add	$a2, $a3, $a2
	sw	$a0, 0($a2)
	j	bne_cont.18388
bne_else.18387:
	li	$a8, 2
	bne	$a7, $a8, bne_else.18389
	sw	$a5, 12($sp)
	sw	$a3, 16($sp)
	move	$a1, $a4
	move	$a0, $a6
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	setup_surface_table.2896
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	move	$a0, $v0
	lw	$a1, 16($sp)
	sll	$a2, $a1, 2
	lw	$a3, 12($sp)
	add	$a2, $a3, $a2
	sw	$a0, 0($a2)
	j	bne_cont.18390
bne_else.18389:
	sw	$a5, 12($sp)
	sw	$a3, 16($sp)
	move	$a1, $a4
	move	$a0, $a6
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	setup_second_table.2899
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	move	$a0, $v0
	lw	$a1, 16($sp)
	sll	$a2, $a1, 2
	lw	$a3, 12($sp)
	add	$a2, $a3, $a2
	sw	$a0, 0($a2)
bne_cont.18390:
bne_cont.18388:
	subi	$a1, $a1, 1
	lw	$a0, 8($sp)
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	iter_setup_dirvec_constants.2902
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	fmove	$f30, $fv
	j	bge_cont.18386
bge_else.18385:
bge_cont.18386:
	lw	$a0, 4($sp)
	lw	$a1, 472($a0)
	li	$a2, 0
	lw	$a2, 0($a2)
	subi	$a2, $a2, 1
	move	$a0, $a1
	move	$a1, $a2
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	iter_setup_dirvec_constants.2902
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	fmove	$f30, $fv
	lw	$a0, 4($sp)
	lw	$a1, 468($a0)
	li	$a2, 0
	lw	$a2, 0($a2)
	subi	$a2, $a2, 1
	li	$a3, 0
	blt	$a2, $a3, bge_else.18391
	li	$a3, 48
	sll	$a4, $a2, 2
	add	$a4, $a3, $a4
	lw	$a3, 0($a4)
	lw	$a4, 4($a1)
	lw	$a5, 0($a1)
	lw	$a6, 4($a3)
	li	$a7, 1
	sw	$a1, 20($sp)
	bne	$a6, $a7, bne_else.18393
	sw	$a4, 24($sp)
	sw	$a2, 28($sp)
	move	$a1, $a3
	move	$a0, $a5
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	setup_rect_table.2893
	subi	$sp, $sp, 40
	lw	$ra, 36($sp)
	move	$a0, $v0
	lw	$a1, 28($sp)
	sll	$a2, $a1, 2
	lw	$a3, 24($sp)
	add	$a2, $a3, $a2
	sw	$a0, 0($a2)
	j	bne_cont.18394
bne_else.18393:
	li	$a7, 2
	bne	$a6, $a7, bne_else.18395
	sw	$a4, 24($sp)
	sw	$a2, 28($sp)
	move	$a1, $a3
	move	$a0, $a5
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	setup_surface_table.2896
	subi	$sp, $sp, 40
	lw	$ra, 36($sp)
	move	$a0, $v0
	lw	$a1, 28($sp)
	sll	$a2, $a1, 2
	lw	$a3, 24($sp)
	add	$a2, $a3, $a2
	sw	$a0, 0($a2)
	j	bne_cont.18396
bne_else.18395:
	sw	$a4, 24($sp)
	sw	$a2, 28($sp)
	move	$a1, $a3
	move	$a0, $a5
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	setup_second_table.2899
	subi	$sp, $sp, 40
	lw	$ra, 36($sp)
	move	$a0, $v0
	lw	$a1, 28($sp)
	sll	$a2, $a1, 2
	lw	$a3, 24($sp)
	add	$a2, $a3, $a2
	sw	$a0, 0($a2)
bne_cont.18396:
bne_cont.18394:
	subi	$a1, $a1, 1
	lw	$a0, 20($sp)
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	iter_setup_dirvec_constants.2902
	subi	$sp, $sp, 40
	lw	$ra, 36($sp)
	fmove	$f30, $fv
	j	bge_cont.18392
bge_else.18391:
bge_cont.18392:
	li	$a1, 116
	lw	$a0, 4($sp)
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	init_dirvec_constants.3120
	subi	$sp, $sp, 40
	lw	$ra, 36($sp)
	fmove	$f30, $fv
	lw	$a0, 0($sp)
	subi	$a0, $a0, 1
	li	$a1, 0
	blt	$a0, $a1, bge_else.18397
	li	$a1, 716
	sll	$a2, $a0, 2
	add	$a2, $a1, $a2
	lw	$a1, 0($a2)
	lw	$a2, 476($a1)
	li	$a3, 0
	lw	$a3, 0($a3)
	subi	$a3, $a3, 1
	sw	$a0, 32($sp)
	sw	$a1, 36($sp)
	move	$a1, $a3
	move	$a0, $a2
	sw	$ra, 44($sp)
	addi	$sp, $sp, 48
	jal	iter_setup_dirvec_constants.2902
	subi	$sp, $sp, 48
	lw	$ra, 44($sp)
	fmove	$f30, $fv
	lw	$a0, 36($sp)
	lw	$a1, 472($a0)
	li	$a2, 0
	lw	$a2, 0($a2)
	subi	$a2, $a2, 1
	li	$a3, 0
	blt	$a2, $a3, bge_else.18398
	li	$a3, 48
	sll	$a4, $a2, 2
	add	$a4, $a3, $a4
	lw	$a3, 0($a4)
	lw	$a4, 4($a1)
	lw	$a5, 0($a1)
	lw	$a6, 4($a3)
	li	$a7, 1
	sw	$a1, 40($sp)
	bne	$a6, $a7, bne_else.18400
	sw	$a4, 44($sp)
	sw	$a2, 48($sp)
	move	$a1, $a3
	move	$a0, $a5
	sw	$ra, 52($sp)
	addi	$sp, $sp, 56
	jal	setup_rect_table.2893
	subi	$sp, $sp, 56
	lw	$ra, 52($sp)
	move	$a0, $v0
	lw	$a1, 48($sp)
	sll	$a2, $a1, 2
	lw	$a3, 44($sp)
	add	$a2, $a3, $a2
	sw	$a0, 0($a2)
	j	bne_cont.18401
bne_else.18400:
	li	$a7, 2
	bne	$a6, $a7, bne_else.18402
	sw	$a4, 44($sp)
	sw	$a2, 48($sp)
	move	$a1, $a3
	move	$a0, $a5
	sw	$ra, 52($sp)
	addi	$sp, $sp, 56
	jal	setup_surface_table.2896
	subi	$sp, $sp, 56
	lw	$ra, 52($sp)
	move	$a0, $v0
	lw	$a1, 48($sp)
	sll	$a2, $a1, 2
	lw	$a3, 44($sp)
	add	$a2, $a3, $a2
	sw	$a0, 0($a2)
	j	bne_cont.18403
bne_else.18402:
	sw	$a4, 44($sp)
	sw	$a2, 48($sp)
	move	$a1, $a3
	move	$a0, $a5
	sw	$ra, 52($sp)
	addi	$sp, $sp, 56
	jal	setup_second_table.2899
	subi	$sp, $sp, 56
	lw	$ra, 52($sp)
	move	$a0, $v0
	lw	$a1, 48($sp)
	sll	$a2, $a1, 2
	lw	$a3, 44($sp)
	add	$a2, $a3, $a2
	sw	$a0, 0($a2)
bne_cont.18403:
bne_cont.18401:
	subi	$a1, $a1, 1
	lw	$a0, 40($sp)
	sw	$ra, 52($sp)
	addi	$sp, $sp, 56
	jal	iter_setup_dirvec_constants.2902
	subi	$sp, $sp, 56
	lw	$ra, 52($sp)
	fmove	$f30, $fv
	j	bge_cont.18399
bge_else.18398:
bge_cont.18399:
	li	$a1, 117
	lw	$a0, 36($sp)
	sw	$ra, 52($sp)
	addi	$sp, $sp, 56
	jal	init_dirvec_constants.3120
	subi	$sp, $sp, 56
	lw	$ra, 52($sp)
	fmove	$f30, $fv
	lw	$a0, 32($sp)
	subi	$a0, $a0, 1
	li	$a1, 0
	blt	$a0, $a1, bge_else.18404
	li	$a1, 716
	sll	$a2, $a0, 2
	add	$a2, $a1, $a2
	lw	$a1, 0($a2)
	lw	$a2, 476($a1)
	li	$a3, 0
	lw	$a3, 0($a3)
	subi	$a3, $a3, 1
	li	$a4, 0
	sw	$a0, 52($sp)
	sw	$a1, 56($sp)
	blt	$a3, $a4, bge_else.18405
	li	$a4, 48
	sll	$a5, $a3, 2
	add	$a5, $a4, $a5
	lw	$a4, 0($a5)
	lw	$a5, 4($a2)
	lw	$a6, 0($a2)
	lw	$a7, 4($a4)
	li	$a8, 1
	sw	$a2, 60($sp)
	bne	$a7, $a8, bne_else.18407
	sw	$a5, 64($sp)
	sw	$a3, 68($sp)
	move	$a1, $a4
	move	$a0, $a6
	sw	$ra, 76($sp)
	addi	$sp, $sp, 80
	jal	setup_rect_table.2893
	subi	$sp, $sp, 80
	lw	$ra, 76($sp)
	move	$a0, $v0
	lw	$a1, 68($sp)
	sll	$a2, $a1, 2
	lw	$a3, 64($sp)
	add	$a2, $a3, $a2
	sw	$a0, 0($a2)
	j	bne_cont.18408
bne_else.18407:
	li	$a8, 2
	bne	$a7, $a8, bne_else.18409
	sw	$a5, 64($sp)
	sw	$a3, 68($sp)
	move	$a1, $a4
	move	$a0, $a6
	sw	$ra, 76($sp)
	addi	$sp, $sp, 80
	jal	setup_surface_table.2896
	subi	$sp, $sp, 80
	lw	$ra, 76($sp)
	move	$a0, $v0
	lw	$a1, 68($sp)
	sll	$a2, $a1, 2
	lw	$a3, 64($sp)
	add	$a2, $a3, $a2
	sw	$a0, 0($a2)
	j	bne_cont.18410
bne_else.18409:
	sw	$a5, 64($sp)
	sw	$a3, 68($sp)
	move	$a1, $a4
	move	$a0, $a6
	sw	$ra, 76($sp)
	addi	$sp, $sp, 80
	jal	setup_second_table.2899
	subi	$sp, $sp, 80
	lw	$ra, 76($sp)
	move	$a0, $v0
	lw	$a1, 68($sp)
	sll	$a2, $a1, 2
	lw	$a3, 64($sp)
	add	$a2, $a3, $a2
	sw	$a0, 0($a2)
bne_cont.18410:
bne_cont.18408:
	subi	$a1, $a1, 1
	lw	$a0, 60($sp)
	sw	$ra, 76($sp)
	addi	$sp, $sp, 80
	jal	iter_setup_dirvec_constants.2902
	subi	$sp, $sp, 80
	lw	$ra, 76($sp)
	fmove	$f30, $fv
	j	bge_cont.18406
bge_else.18405:
bge_cont.18406:
	li	$a1, 118
	lw	$a0, 56($sp)
	sw	$ra, 76($sp)
	addi	$sp, $sp, 80
	jal	init_dirvec_constants.3120
	subi	$sp, $sp, 80
	lw	$ra, 76($sp)
	fmove	$f30, $fv
	lw	$a0, 52($sp)
	subi	$a0, $a0, 1
	li	$a1, 0
	blt	$a0, $a1, bge_else.18411
	li	$a1, 716
	sll	$a2, $a0, 2
	add	$a2, $a1, $a2
	lw	$a1, 0($a2)
	li	$a2, 119
	sw	$a0, 72($sp)
	move	$a0, $a1
	move	$a1, $a2
	sw	$ra, 76($sp)
	addi	$sp, $sp, 80
	jal	init_dirvec_constants.3120
	subi	$sp, $sp, 80
	lw	$ra, 76($sp)
	fmove	$f30, $fv
	lw	$a0, 72($sp)
	subi	$a0, $a0, 1
	j	init_vecset_constants.3123
bge_else.18411:
	jr	$ra
bge_else.18404:
	jr	$ra
bge_else.18397:
	jr	$ra
bge_else.18384:
	jr	$ra
setup_rect_reflection.3134:
	sla	$a0, $a0, 2
	li	$a2, 1736
	lw	$a2, 0($a2)
	lw	$a1, 28($a1)
	flw	$f0, 0($a1)
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	fsub	$f0, $f1, $f0
	li	$a1, 312
	flw	$f1, 0($a1)
	fneg	$f1, $f1
	li	$a1, 312
	flw	$f2, 4($a1)
	fneg	$f2, $f2
	li	$a1, 312
	flw	$f3, 8($a1)
	fneg	$f3, $f3
	addi	$a1, $a0, 1
	li	$a3, 312
	flw	$f4, 0($a3)
	li	$a3, 3
	li	$v0, 0
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f5, $v0
	fsw	$f1, 0($sp)
	sw	$a0, 8($sp)
	sw	$a2, 12($sp)
	sw	$a1, 16($sp)
	fsw	$f0, 24($sp)
	fsw	$f3, 32($sp)
	fsw	$f2, 40($sp)
	fsw	$f4, 48($sp)
	move	$a0, $a3
	fmove	$f0, $f5
	sw	$ra, 60($sp)
	addi	$sp, $sp, 64
	jal	min_caml_create_float_array
	subi	$sp, $sp, 64
	lw	$ra, 60($sp)
	move	$a1, $v0
	li	$a0, 0
	lw	$a0, 0($a0)
	sw	$a1, 56($sp)
	sw	$ra, 60($sp)
	addi	$sp, $sp, 64
	jal	min_caml_create_array
	subi	$sp, $sp, 64
	lw	$ra, 60($sp)
	move	$a0, $v0
	move	$a1, $fp
	addi	$fp, $fp, 8
	sw	$a0, 4($a1)
	lw	$a2, 56($sp)
	sw	$a2, 0($a1)
	flw	$f0, 48($sp)
	fsw	$f0, 0($a2)
	flw	$f0, 40($sp)
	fsw	$f0, 4($a2)
	flw	$f1, 32($sp)
	fsw	$f1, 8($a2)
	li	$a3, 0
	lw	$a3, 0($a3)
	subi	$a3, $a3, 1
	li	$a4, 0
	sw	$a1, 60($sp)
	blt	$a3, $a4, bge_else.18417
	li	$a4, 48
	sll	$a5, $a3, 2
	add	$a5, $a4, $a5
	lw	$a4, 0($a5)
	lw	$a5, 4($a4)
	li	$a6, 1
	bne	$a5, $a6, bne_else.18419
	sw	$a0, 64($sp)
	sw	$a3, 68($sp)
	move	$a1, $a4
	move	$a0, $a2
	sw	$ra, 76($sp)
	addi	$sp, $sp, 80
	jal	setup_rect_table.2893
	subi	$sp, $sp, 80
	lw	$ra, 76($sp)
	move	$a0, $v0
	lw	$a1, 68($sp)
	sll	$a2, $a1, 2
	lw	$a3, 64($sp)
	add	$a2, $a3, $a2
	sw	$a0, 0($a2)
	j	bne_cont.18420
bne_else.18419:
	li	$a6, 2
	bne	$a5, $a6, bne_else.18421
	sw	$a0, 64($sp)
	sw	$a3, 68($sp)
	move	$a1, $a4
	move	$a0, $a2
	sw	$ra, 76($sp)
	addi	$sp, $sp, 80
	jal	setup_surface_table.2896
	subi	$sp, $sp, 80
	lw	$ra, 76($sp)
	move	$a0, $v0
	lw	$a1, 68($sp)
	sll	$a2, $a1, 2
	lw	$a3, 64($sp)
	add	$a2, $a3, $a2
	sw	$a0, 0($a2)
	j	bne_cont.18422
bne_else.18421:
	sw	$a0, 64($sp)
	sw	$a3, 68($sp)
	move	$a1, $a4
	move	$a0, $a2
	sw	$ra, 76($sp)
	addi	$sp, $sp, 80
	jal	setup_second_table.2899
	subi	$sp, $sp, 80
	lw	$ra, 76($sp)
	move	$a0, $v0
	lw	$a1, 68($sp)
	sll	$a2, $a1, 2
	lw	$a3, 64($sp)
	add	$a2, $a3, $a2
	sw	$a0, 0($a2)
bne_cont.18422:
bne_cont.18420:
	subi	$a1, $a1, 1
	lw	$a0, 60($sp)
	sw	$ra, 76($sp)
	addi	$sp, $sp, 80
	jal	iter_setup_dirvec_constants.2902
	subi	$sp, $sp, 80
	lw	$ra, 76($sp)
	fmove	$f30, $fv
	j	bge_cont.18418
bge_else.18417:
bge_cont.18418:
	li	$a0, 1016
	move	$a1, $fp
	addi	$fp, $fp, 16
	flw	$f0, 24($sp)
	fsw	$f0, 8($a1)
	lw	$a2, 60($sp)
	sw	$a2, 4($a1)
	lw	$a2, 16($sp)
	sw	$a2, 0($a1)
	lw	$a2, 12($sp)
	sll	$a3, $a2, 2
	add	$a3, $a0, $a3
	sw	$a1, 0($a3)
	addi	$a0, $a2, 1
	lw	$a1, 8($sp)
	addi	$a3, $a1, 2
	li	$a4, 312
	flw	$f1, 4($a4)
	li	$a4, 3
	li	$v0, 0
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	sw	$a0, 72($sp)
	sw	$a3, 76($sp)
	fsw	$f1, 80($sp)
	move	$a0, $a4
	fmove	$f0, $f2
	sw	$ra, 92($sp)
	addi	$sp, $sp, 96
	jal	min_caml_create_float_array
	subi	$sp, $sp, 96
	lw	$ra, 92($sp)
	move	$a1, $v0
	li	$a0, 0
	lw	$a0, 0($a0)
	sw	$a1, 88($sp)
	sw	$ra, 92($sp)
	addi	$sp, $sp, 96
	jal	min_caml_create_array
	subi	$sp, $sp, 96
	lw	$ra, 92($sp)
	move	$a0, $v0
	move	$a1, $fp
	addi	$fp, $fp, 8
	sw	$a0, 4($a1)
	lw	$a2, 88($sp)
	sw	$a2, 0($a1)
	flw	$f0, 0($sp)
	fsw	$f0, 0($a2)
	flw	$f1, 80($sp)
	fsw	$f1, 4($a2)
	flw	$f1, 32($sp)
	fsw	$f1, 8($a2)
	li	$a3, 0
	lw	$a3, 0($a3)
	subi	$a3, $a3, 1
	li	$a4, 0
	sw	$a1, 92($sp)
	blt	$a3, $a4, bge_else.18423
	li	$a4, 48
	sll	$a5, $a3, 2
	add	$a5, $a4, $a5
	lw	$a4, 0($a5)
	lw	$a5, 4($a4)
	li	$a6, 1
	bne	$a5, $a6, bne_else.18425
	sw	$a0, 96($sp)
	sw	$a3, 100($sp)
	move	$a1, $a4
	move	$a0, $a2
	sw	$ra, 108($sp)
	addi	$sp, $sp, 112
	jal	setup_rect_table.2893
	subi	$sp, $sp, 112
	lw	$ra, 108($sp)
	move	$a0, $v0
	lw	$a1, 100($sp)
	sll	$a2, $a1, 2
	lw	$a3, 96($sp)
	add	$a2, $a3, $a2
	sw	$a0, 0($a2)
	j	bne_cont.18426
bne_else.18425:
	li	$a6, 2
	bne	$a5, $a6, bne_else.18427
	sw	$a0, 96($sp)
	sw	$a3, 100($sp)
	move	$a1, $a4
	move	$a0, $a2
	sw	$ra, 108($sp)
	addi	$sp, $sp, 112
	jal	setup_surface_table.2896
	subi	$sp, $sp, 112
	lw	$ra, 108($sp)
	move	$a0, $v0
	lw	$a1, 100($sp)
	sll	$a2, $a1, 2
	lw	$a3, 96($sp)
	add	$a2, $a3, $a2
	sw	$a0, 0($a2)
	j	bne_cont.18428
bne_else.18427:
	sw	$a0, 96($sp)
	sw	$a3, 100($sp)
	move	$a1, $a4
	move	$a0, $a2
	sw	$ra, 108($sp)
	addi	$sp, $sp, 112
	jal	setup_second_table.2899
	subi	$sp, $sp, 112
	lw	$ra, 108($sp)
	move	$a0, $v0
	lw	$a1, 100($sp)
	sll	$a2, $a1, 2
	lw	$a3, 96($sp)
	add	$a2, $a3, $a2
	sw	$a0, 0($a2)
bne_cont.18428:
bne_cont.18426:
	subi	$a1, $a1, 1
	lw	$a0, 92($sp)
	sw	$ra, 108($sp)
	addi	$sp, $sp, 112
	jal	iter_setup_dirvec_constants.2902
	subi	$sp, $sp, 112
	lw	$ra, 108($sp)
	fmove	$f30, $fv
	j	bge_cont.18424
bge_else.18423:
bge_cont.18424:
	li	$a0, 1016
	move	$a1, $fp
	addi	$fp, $fp, 16
	flw	$f0, 24($sp)
	fsw	$f0, 8($a1)
	lw	$a2, 92($sp)
	sw	$a2, 4($a1)
	lw	$a2, 76($sp)
	sw	$a2, 0($a1)
	lw	$a2, 72($sp)
	sll	$a2, $a2, 2
	add	$a2, $a0, $a2
	sw	$a1, 0($a2)
	lw	$a0, 12($sp)
	addi	$a1, $a0, 2
	lw	$a2, 8($sp)
	addi	$a2, $a2, 3
	li	$a3, 312
	flw	$f1, 8($a3)
	li	$a3, 3
	li	$v0, 0
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f2, $v0
	sw	$a1, 104($sp)
	sw	$a2, 108($sp)
	fsw	$f1, 112($sp)
	move	$a0, $a3
	fmove	$f0, $f2
	sw	$ra, 124($sp)
	addi	$sp, $sp, 128
	jal	min_caml_create_float_array
	subi	$sp, $sp, 128
	lw	$ra, 124($sp)
	move	$a1, $v0
	li	$a0, 0
	lw	$a0, 0($a0)
	sw	$a1, 120($sp)
	sw	$ra, 124($sp)
	addi	$sp, $sp, 128
	jal	min_caml_create_array
	subi	$sp, $sp, 128
	lw	$ra, 124($sp)
	move	$a0, $v0
	move	$a1, $fp
	addi	$fp, $fp, 8
	sw	$a0, 4($a1)
	lw	$a2, 120($sp)
	sw	$a2, 0($a1)
	flw	$f0, 0($sp)
	fsw	$f0, 0($a2)
	flw	$f0, 40($sp)
	fsw	$f0, 4($a2)
	flw	$f0, 112($sp)
	fsw	$f0, 8($a2)
	li	$a3, 0
	lw	$a3, 0($a3)
	subi	$a3, $a3, 1
	li	$a4, 0
	sw	$a1, 124($sp)
	blt	$a3, $a4, bge_else.18429
	li	$a4, 48
	sll	$a5, $a3, 2
	add	$a5, $a4, $a5
	lw	$a4, 0($a5)
	lw	$a5, 4($a4)
	li	$a6, 1
	bne	$a5, $a6, bne_else.18431
	sw	$a0, 128($sp)
	sw	$a3, 132($sp)
	move	$a1, $a4
	move	$a0, $a2
	sw	$ra, 140($sp)
	addi	$sp, $sp, 144
	jal	setup_rect_table.2893
	subi	$sp, $sp, 144
	lw	$ra, 140($sp)
	move	$a0, $v0
	lw	$a1, 132($sp)
	sll	$a2, $a1, 2
	lw	$a3, 128($sp)
	add	$a2, $a3, $a2
	sw	$a0, 0($a2)
	j	bne_cont.18432
bne_else.18431:
	li	$a6, 2
	bne	$a5, $a6, bne_else.18433
	sw	$a0, 128($sp)
	sw	$a3, 132($sp)
	move	$a1, $a4
	move	$a0, $a2
	sw	$ra, 140($sp)
	addi	$sp, $sp, 144
	jal	setup_surface_table.2896
	subi	$sp, $sp, 144
	lw	$ra, 140($sp)
	move	$a0, $v0
	lw	$a1, 132($sp)
	sll	$a2, $a1, 2
	lw	$a3, 128($sp)
	add	$a2, $a3, $a2
	sw	$a0, 0($a2)
	j	bne_cont.18434
bne_else.18433:
	sw	$a0, 128($sp)
	sw	$a3, 132($sp)
	move	$a1, $a4
	move	$a0, $a2
	sw	$ra, 140($sp)
	addi	$sp, $sp, 144
	jal	setup_second_table.2899
	subi	$sp, $sp, 144
	lw	$ra, 140($sp)
	move	$a0, $v0
	lw	$a1, 132($sp)
	sll	$a2, $a1, 2
	lw	$a3, 128($sp)
	add	$a2, $a3, $a2
	sw	$a0, 0($a2)
bne_cont.18434:
bne_cont.18432:
	subi	$a1, $a1, 1
	lw	$a0, 124($sp)
	sw	$ra, 140($sp)
	addi	$sp, $sp, 144
	jal	iter_setup_dirvec_constants.2902
	subi	$sp, $sp, 144
	lw	$ra, 140($sp)
	fmove	$f30, $fv
	j	bge_cont.18430
bge_else.18429:
bge_cont.18430:
	li	$a0, 1016
	move	$a1, $fp
	addi	$fp, $fp, 16
	flw	$f0, 24($sp)
	fsw	$f0, 8($a1)
	lw	$a2, 124($sp)
	sw	$a2, 4($a1)
	lw	$a2, 108($sp)
	sw	$a2, 0($a1)
	lw	$a2, 104($sp)
	sll	$a2, $a2, 2
	add	$a2, $a0, $a2
	sw	$a1, 0($a2)
	li	$a0, 1736
	lw	$a1, 12($sp)
	addi	$a1, $a1, 3
	sw	$a1, 0($a0)
	jr	$ra
setup_surface_reflection.3137:
	sla	$a0, $a0, 2
	addi	$a0, $a0, 1
	li	$a2, 1736
	lw	$a2, 0($a2)
	lw	$a3, 28($a1)
	flw	$f0, 0($a3)
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	fsub	$f0, $f1, $f0
	li	$a3, 312
	lw	$a4, 16($a1)
	flw	$f1, 0($a3)
	flw	$f2, 0($a4)
	fmul	$f1, $f1, $f2
	flw	$f2, 4($a3)
	flw	$f3, 4($a4)
	fmul	$f2, $f2, $f3
	fadd	$f1, $f1, $f2
	flw	$f2, 8($a3)
	flw	$f3, 8($a4)
	fmul	$f2, $f2, $f3
	fadd	$f1, $f1, $f2
	lw	$a3, 16($a1)
	flw	$f2, 0($a3)
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f3, $v0
	fmul	$f2, $f3, $f2
	fmul	$f2, $f2, $f1
	li	$a3, 312
	flw	$f3, 0($a3)
	fsub	$f2, $f2, $f3
	lw	$a3, 16($a1)
	flw	$f3, 4($a3)
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f4, $v0
	fmul	$f3, $f4, $f3
	fmul	$f3, $f3, $f1
	li	$a3, 312
	flw	$f4, 4($a3)
	fsub	$f3, $f3, $f4
	lw	$a1, 16($a1)
	flw	$f4, 8($a1)
	li	$v0, 16384
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f5, $v0
	fmul	$f4, $f5, $f4
	fmul	$f1, $f4, $f1
	li	$a1, 312
	flw	$f4, 8($a1)
	fsub	$f1, $f1, $f4
	li	$a1, 3
	li	$v0, 0
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f4, $v0
	sw	$a2, 0($sp)
	sw	$a0, 4($sp)
	fsw	$f0, 8($sp)
	fsw	$f1, 16($sp)
	fsw	$f3, 24($sp)
	fsw	$f2, 32($sp)
	move	$a0, $a1
	fmove	$f0, $f4
	sw	$ra, 44($sp)
	addi	$sp, $sp, 48
	jal	min_caml_create_float_array
	subi	$sp, $sp, 48
	lw	$ra, 44($sp)
	move	$a1, $v0
	li	$a0, 0
	lw	$a0, 0($a0)
	sw	$a1, 40($sp)
	sw	$ra, 44($sp)
	addi	$sp, $sp, 48
	jal	min_caml_create_array
	subi	$sp, $sp, 48
	lw	$ra, 44($sp)
	move	$a0, $v0
	move	$a1, $fp
	addi	$fp, $fp, 8
	sw	$a0, 4($a1)
	lw	$a2, 40($sp)
	sw	$a2, 0($a1)
	flw	$f0, 32($sp)
	fsw	$f0, 0($a2)
	flw	$f0, 24($sp)
	fsw	$f0, 4($a2)
	flw	$f0, 16($sp)
	fsw	$f0, 8($a2)
	li	$a3, 0
	lw	$a3, 0($a3)
	subi	$a3, $a3, 1
	li	$a4, 0
	sw	$a1, 44($sp)
	blt	$a3, $a4, bge_else.18436
	li	$a4, 48
	sll	$a5, $a3, 2
	add	$a5, $a4, $a5
	lw	$a4, 0($a5)
	lw	$a5, 4($a4)
	li	$a6, 1
	bne	$a5, $a6, bne_else.18438
	sw	$a0, 48($sp)
	sw	$a3, 52($sp)
	move	$a1, $a4
	move	$a0, $a2
	sw	$ra, 60($sp)
	addi	$sp, $sp, 64
	jal	setup_rect_table.2893
	subi	$sp, $sp, 64
	lw	$ra, 60($sp)
	move	$a0, $v0
	lw	$a1, 52($sp)
	sll	$a2, $a1, 2
	lw	$a3, 48($sp)
	add	$a2, $a3, $a2
	sw	$a0, 0($a2)
	j	bne_cont.18439
bne_else.18438:
	li	$a6, 2
	bne	$a5, $a6, bne_else.18440
	sw	$a0, 48($sp)
	sw	$a3, 52($sp)
	move	$a1, $a4
	move	$a0, $a2
	sw	$ra, 60($sp)
	addi	$sp, $sp, 64
	jal	setup_surface_table.2896
	subi	$sp, $sp, 64
	lw	$ra, 60($sp)
	move	$a0, $v0
	lw	$a1, 52($sp)
	sll	$a2, $a1, 2
	lw	$a3, 48($sp)
	add	$a2, $a3, $a2
	sw	$a0, 0($a2)
	j	bne_cont.18441
bne_else.18440:
	sw	$a0, 48($sp)
	sw	$a3, 52($sp)
	move	$a1, $a4
	move	$a0, $a2
	sw	$ra, 60($sp)
	addi	$sp, $sp, 64
	jal	setup_second_table.2899
	subi	$sp, $sp, 64
	lw	$ra, 60($sp)
	move	$a0, $v0
	lw	$a1, 52($sp)
	sll	$a2, $a1, 2
	lw	$a3, 48($sp)
	add	$a2, $a3, $a2
	sw	$a0, 0($a2)
bne_cont.18441:
bne_cont.18439:
	subi	$a1, $a1, 1
	lw	$a0, 44($sp)
	sw	$ra, 60($sp)
	addi	$sp, $sp, 64
	jal	iter_setup_dirvec_constants.2902
	subi	$sp, $sp, 64
	lw	$ra, 60($sp)
	fmove	$f30, $fv
	j	bge_cont.18437
bge_else.18436:
bge_cont.18437:
	li	$a0, 1016
	move	$a1, $fp
	addi	$fp, $fp, 16
	flw	$f0, 8($sp)
	fsw	$f0, 8($a1)
	lw	$a2, 44($sp)
	sw	$a2, 4($a1)
	lw	$a2, 4($sp)
	sw	$a2, 0($a1)
	lw	$a2, 0($sp)
	sll	$a3, $a2, 2
	add	$a3, $a0, $a3
	sw	$a1, 0($a3)
	li	$a0, 1736
	addi	$a1, $a2, 1
	sw	$a1, 0($a0)
	jr	$ra
rt.3142:
	li	$a2, 616
	sw	$a0, 0($a2)
	li	$a2, 616
	sw	$a1, 4($a2)
	li	$a2, 624
	sra	$a3, $a0, 1
	sw	$a3, 0($a2)
	li	$a2, 624
	sra	$a1, $a1, 1
	sw	$a1, 4($a2)
	li	$a1, 632
	sw	$a1, 0($sp)
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	min_caml_float_of_int
	subi	$sp, $sp, 8
	lw	$ra, 4($sp)
	fmove	$f0, $fv
	finv	$f0, $f0
	li	$v0, 17152
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	fmul	$f0, $f1, $f0
	lw	$a0, 0($sp)
	fsw	$f0, 0($a0)
	li	$a0, 616
	lw	$a0, 0($a0)
	sw	$a0, 4($sp)
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	create_pixel.3084
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
	li	$a1, 616
	lw	$a1, 0($a1)
	subi	$a1, $a1, 2
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	init_line_elements.3086
	subi	$sp, $sp, 16
	lw	$ra, 12($sp)
	move	$a0, $v0
	li	$a1, 616
	lw	$a1, 0($a1)
	sw	$a0, 8($sp)
	sw	$a1, 12($sp)
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	create_pixel.3084
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	move	$a1, $v0
	lw	$a0, 12($sp)
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	min_caml_create_array
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	move	$a0, $v0
	li	$a1, 616
	lw	$a1, 0($a1)
	subi	$a1, $a1, 2
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	init_line_elements.3086
	subi	$sp, $sp, 24
	lw	$ra, 20($sp)
	move	$a0, $v0
	li	$a1, 616
	lw	$a1, 0($a1)
	sw	$a0, 16($sp)
	sw	$a1, 20($sp)
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	create_pixel.3084
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	move	$a1, $v0
	lw	$a0, 20($sp)
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	min_caml_create_array
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	move	$a0, $v0
	li	$a1, 616
	lw	$a1, 0($a1)
	subi	$a1, $a1, 2
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	init_line_elements.3086
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	move	$a0, $v0
	sw	$a0, 24($sp)
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	read_screen_settings.2788
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	fmove	$f30, $fv
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	read_light.2790
	subi	$sp, $sp, 32
	lw	$ra, 28($sp)
	fmove	$f30, $fv
	li	$a0, 0
	sw	$a0, 28($sp)
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	read_nth_object.2795
	subi	$sp, $sp, 40
	lw	$ra, 36($sp)
	move	$a0, $v0
	li	$a1, 0
	bne	$a0, $a1, bne_else.18443
	li	$a0, 0
	lw	$a1, 28($sp)
	sw	$a1, 0($a0)
	j	bne_cont.18444
bne_else.18443:
	li	$a0, 1
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	read_object.2797
	subi	$sp, $sp, 40
	lw	$ra, 36($sp)
	fmove	$f30, $fv
bne_cont.18444:
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	min_caml_read_int
	subi	$sp, $sp, 40
	lw	$ra, 36($sp)
	move	$a0, $v0
	li	$a1, -1
	bne	$a0, $a1, bne_else.18445
	li	$a0, 1
	li	$a1, -1
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	min_caml_create_array
	subi	$sp, $sp, 40
	lw	$ra, 36($sp)
	move	$a0, $v0
	j	bne_cont.18446
bne_else.18445:
	li	$a1, 1
	sw	$a0, 32($sp)
	move	$a0, $a1
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	read_net_item.2801
	subi	$sp, $sp, 40
	lw	$ra, 36($sp)
	move	$a0, $v0
	lw	$a1, 32($sp)
	sw	$a1, 0($a0)
bne_cont.18446:
	lw	$a1, 0($a0)
	li	$a2, -1
	bne	$a1, $a2, bne_else.18447
	j	bne_cont.18448
bne_else.18447:
	li	$a1, 332
	sw	$a0, 0($a1)
	li	$a0, 0
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	read_net_item.2801
	subi	$sp, $sp, 40
	lw	$ra, 36($sp)
	move	$a0, $v0
	lw	$a1, 0($a0)
	li	$a2, -1
	bne	$a1, $a2, bne_else.18449
	j	bne_cont.18450
bne_else.18449:
	li	$a1, 332
	sw	$a0, 4($a1)
	li	$a0, 2
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	read_and_network.2805
	subi	$sp, $sp, 40
	lw	$ra, 36($sp)
	fmove	$f30, $fv
bne_cont.18450:
bne_cont.18448:
	li	$a0, 536
	li	$a1, 0
	sw	$a0, 36($sp)
	move	$a0, $a1
	sw	$ra, 44($sp)
	addi	$sp, $sp, 48
	jal	read_or_network.2803
	subi	$sp, $sp, 48
	lw	$ra, 44($sp)
	move	$a0, $v0
	lw	$a1, 36($sp)
	sw	$a0, 0($a1)
	li	$a0, 80
	sw	$ra, 44($sp)
	addi	$sp, $sp, 48
	jal	min_caml_print_byte
	subi	$sp, $sp, 48
	lw	$ra, 44($sp)
	fmove	$f30, $fv
	li	$a0, 51
	sw	$ra, 44($sp)
	addi	$sp, $sp, 48
	jal	min_caml_print_byte
	subi	$sp, $sp, 48
	lw	$ra, 44($sp)
	fmove	$f30, $fv
	li	$a0, 10
	sw	$ra, 44($sp)
	addi	$sp, $sp, 48
	jal	min_caml_print_byte
	subi	$sp, $sp, 48
	lw	$ra, 44($sp)
	fmove	$f30, $fv
	li	$a0, 616
	lw	$a0, 0($a0)
	sw	$ra, 44($sp)
	addi	$sp, $sp, 48
	jal	min_caml_print_int
	subi	$sp, $sp, 48
	lw	$ra, 44($sp)
	fmove	$f30, $fv
	li	$a0, 32
	sw	$ra, 44($sp)
	addi	$sp, $sp, 48
	jal	min_caml_print_byte
	subi	$sp, $sp, 48
	lw	$ra, 44($sp)
	fmove	$f30, $fv
	li	$a0, 616
	lw	$a0, 4($a0)
	sw	$ra, 44($sp)
	addi	$sp, $sp, 48
	jal	min_caml_print_int
	subi	$sp, $sp, 48
	lw	$ra, 44($sp)
	fmove	$f30, $fv
	li	$a0, 32
	sw	$ra, 44($sp)
	addi	$sp, $sp, 48
	jal	min_caml_print_byte
	subi	$sp, $sp, 48
	lw	$ra, 44($sp)
	fmove	$f30, $fv
	li	$a0, 255
	sw	$ra, 44($sp)
	addi	$sp, $sp, 48
	jal	min_caml_print_int
	subi	$sp, $sp, 48
	lw	$ra, 44($sp)
	fmove	$f30, $fv
	li	$a0, 10
	sw	$ra, 44($sp)
	addi	$sp, $sp, 48
	jal	min_caml_print_byte
	subi	$sp, $sp, 48
	lw	$ra, 44($sp)
	fmove	$f30, $fv
	li	$a0, 4
	sw	$ra, 44($sp)
	addi	$sp, $sp, 48
	jal	create_dirvecs.3118
	subi	$sp, $sp, 48
	lw	$ra, 44($sp)
	fmove	$f30, $fv
	li	$a0, 9
	li	$a1, 0
	li	$a2, 0
	sw	$ra, 44($sp)
	addi	$sp, $sp, 48
	jal	calc_dirvec_rows.3109
	subi	$sp, $sp, 48
	lw	$ra, 44($sp)
	fmove	$f30, $fv
	li	$a0, 716
	lw	$a0, 16($a0)
	lw	$a1, 476($a0)
	li	$a2, 0
	lw	$a2, 0($a2)
	subi	$a2, $a2, 1
	li	$a3, 0
	sw	$a0, 40($sp)
	blt	$a2, $a3, bge_else.18451
	li	$a3, 48
	sll	$a4, $a2, 2
	add	$a4, $a3, $a4
	lw	$a3, 0($a4)
	lw	$a4, 4($a1)
	lw	$a5, 0($a1)
	lw	$a6, 4($a3)
	li	$a7, 1
	sw	$a1, 44($sp)
	bne	$a6, $a7, bne_else.18453
	sw	$a4, 48($sp)
	sw	$a2, 52($sp)
	move	$a1, $a3
	move	$a0, $a5
	sw	$ra, 60($sp)
	addi	$sp, $sp, 64
	jal	setup_rect_table.2893
	subi	$sp, $sp, 64
	lw	$ra, 60($sp)
	move	$a0, $v0
	lw	$a1, 52($sp)
	sll	$a2, $a1, 2
	lw	$a3, 48($sp)
	add	$a2, $a3, $a2
	sw	$a0, 0($a2)
	j	bne_cont.18454
bne_else.18453:
	li	$a7, 2
	bne	$a6, $a7, bne_else.18455
	sw	$a4, 48($sp)
	sw	$a2, 52($sp)
	move	$a1, $a3
	move	$a0, $a5
	sw	$ra, 60($sp)
	addi	$sp, $sp, 64
	jal	setup_surface_table.2896
	subi	$sp, $sp, 64
	lw	$ra, 60($sp)
	move	$a0, $v0
	lw	$a1, 52($sp)
	sll	$a2, $a1, 2
	lw	$a3, 48($sp)
	add	$a2, $a3, $a2
	sw	$a0, 0($a2)
	j	bne_cont.18456
bne_else.18455:
	sw	$a4, 48($sp)
	sw	$a2, 52($sp)
	move	$a1, $a3
	move	$a0, $a5
	sw	$ra, 60($sp)
	addi	$sp, $sp, 64
	jal	setup_second_table.2899
	subi	$sp, $sp, 64
	lw	$ra, 60($sp)
	move	$a0, $v0
	lw	$a1, 52($sp)
	sll	$a2, $a1, 2
	lw	$a3, 48($sp)
	add	$a2, $a3, $a2
	sw	$a0, 0($a2)
bne_cont.18456:
bne_cont.18454:
	subi	$a1, $a1, 1
	lw	$a0, 44($sp)
	sw	$ra, 60($sp)
	addi	$sp, $sp, 64
	jal	iter_setup_dirvec_constants.2902
	subi	$sp, $sp, 64
	lw	$ra, 60($sp)
	fmove	$f30, $fv
	j	bge_cont.18452
bge_else.18451:
bge_cont.18452:
	li	$a1, 118
	lw	$a0, 40($sp)
	sw	$ra, 60($sp)
	addi	$sp, $sp, 64
	jal	init_dirvec_constants.3120
	subi	$sp, $sp, 64
	lw	$ra, 60($sp)
	fmove	$f30, $fv
	li	$a0, 716
	lw	$a0, 12($a0)
	li	$a1, 119
	sw	$ra, 60($sp)
	addi	$sp, $sp, 64
	jal	init_dirvec_constants.3120
	subi	$sp, $sp, 64
	lw	$ra, 60($sp)
	fmove	$f30, $fv
	li	$a0, 2
	sw	$ra, 60($sp)
	addi	$sp, $sp, 64
	jal	init_vecset_constants.3123
	subi	$sp, $sp, 64
	lw	$ra, 60($sp)
	fmove	$f30, $fv
	li	$a0, 988
	lw	$a0, 0($a0)
	li	$a1, 312
	flw	$f0, 0($a1)
	fsw	$f0, 0($a0)
	flw	$f0, 4($a1)
	fsw	$f0, 4($a0)
	flw	$f0, 8($a1)
	fsw	$f0, 8($a0)
	li	$a0, 988
	li	$a1, 0
	lw	$a1, 0($a1)
	subi	$a1, $a1, 1
	sw	$ra, 60($sp)
	addi	$sp, $sp, 64
	jal	iter_setup_dirvec_constants.2902
	subi	$sp, $sp, 64
	lw	$ra, 60($sp)
	fmove	$f30, $fv
	li	$a0, 0
	lw	$a0, 0($a0)
	subi	$a0, $a0, 1
	li	$a1, 0
	blt	$a0, $a1, bge_else.18457
	li	$a1, 48
	sll	$a2, $a0, 2
	add	$a2, $a1, $a2
	lw	$a1, 0($a2)
	lw	$a2, 8($a1)
	li	$a3, 2
	bne	$a2, $a3, bne_else.18459
	lw	$a2, 28($a1)
	flw	$f0, 0($a2)
	li	$v0, 16256
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	fsub	$f0, $f0, $f1
	li	$v0, 0
	sll	$v0, $v0, 16
	ori	$v0, $v0, 0
	mtc1	$f1, $v0
	fblt	$f0, $f1, fbge_else.18461
	li	$a2, 0
	j	fbge_cont.18462
fbge_else.18461:
	li	$a2, 1
fbge_cont.18462:
	li	$a3, 0
	bne	$a2, $a3, bne_else.18463
	j	bne_cont.18464
bne_else.18463:
	lw	$a2, 4($a1)
	li	$a3, 1
	bne	$a2, $a3, bne_else.18465
	sw	$ra, 60($sp)
	addi	$sp, $sp, 64
	jal	setup_rect_reflection.3134
	subi	$sp, $sp, 64
	lw	$ra, 60($sp)
	fmove	$f30, $fv
	j	bne_cont.18466
bne_else.18465:
	li	$a3, 2
	bne	$a2, $a3, bne_else.18467
	sw	$ra, 60($sp)
	addi	$sp, $sp, 64
	jal	setup_surface_reflection.3137
	subi	$sp, $sp, 64
	lw	$ra, 60($sp)
	fmove	$f30, $fv
	j	bne_cont.18468
bne_else.18467:
bne_cont.18468:
bne_cont.18466:
bne_cont.18464:
	j	bne_cont.18460
bne_else.18459:
bne_cont.18460:
	j	bge_cont.18458
bge_else.18457:
bge_cont.18458:
	li	$a1, 0
	li	$a2, 0
	lw	$a0, 16($sp)
	sw	$ra, 60($sp)
	addi	$sp, $sp, 64
	jal	pretrace_line.3066
	subi	$sp, $sp, 64
	lw	$ra, 60($sp)
	fmove	$f30, $fv
	li	$a1, 0
	li	$a2, 2
	li	$a0, 616
	lw	$a0, 4($a0)
	blt	$a1, $a0, bge_else.18469
	jr	$ra
bge_else.18469:
	li	$a0, 616
	lw	$a0, 4($a0)
	subi	$a0, $a0, 1
	sw	$a1, 56($sp)
	blt	$a1, $a0, bge_else.18471
	j	bge_cont.18472
bge_else.18471:
	li	$a0, 1
	lw	$a3, 24($sp)
	move	$a1, $a0
	move	$a0, $a3
	sw	$ra, 60($sp)
	addi	$sp, $sp, 64
	jal	pretrace_line.3066
	subi	$sp, $sp, 64
	lw	$ra, 60($sp)
	fmove	$f30, $fv
bge_cont.18472:
	li	$a0, 0
	lw	$a1, 56($sp)
	lw	$a2, 8($sp)
	lw	$a3, 16($sp)
	lw	$a4, 24($sp)
	sw	$ra, 60($sp)
	addi	$sp, $sp, 64
	jal	scan_pixel.3070
	subi	$sp, $sp, 64
	lw	$ra, 60($sp)
	fmove	$f30, $fv
	li	$a0, 1
	li	$a4, 4
	lw	$a1, 16($sp)
	lw	$a2, 24($sp)
	lw	$a3, 8($sp)
	j	scan_line.3076
exit:
	hlt
_min_caml_start2: # main entry point
   # main program start
	li	$a0, 128
	li	$a1, 128
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	rt.3142
	subi	$sp, $sp, 8
	lw	$ra, 4($sp)
	fmove	$f30, $fv
	li	$a0, 0
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	min_caml_print_float
	subi	$sp, $sp, 8
	lw	$ra, 4($sp)
	move	$a0, $v0
	j exit   # main program end
