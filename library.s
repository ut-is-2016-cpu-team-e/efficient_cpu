min_caml_create_array:
  move  $a2, $a0
  move  $v0, $fp
create_array_loop:
  bni $a2, 0, create_array_cont
  j create_array_exit
create_array_exit:
  pop
create_array_cont:
  sw  $a1, $fp, $zero, 0
  subi  $a2, $a2, 1
  addi  $fp, $fp, 1
  j create_array_loop
min_caml_create_float_array:
  move  $a1, $a0
  move  $v0, $fp
create_float_array_loop:
  bni $a1, 0, create_float_array_cont
  pop
create_float_array_cont:
  fsw  $f0, $fp, $zero, 0
  subi  $a1, $a1, 1
  addi  $fp, $fp, 1
  j create_float_array_loop
min_caml_read_int:
  read_int $v0
  pop
min_caml_read_float:
  read_float  $fv
  pop
