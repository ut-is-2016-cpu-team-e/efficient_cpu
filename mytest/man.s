min_caml_create_array:
  move  $a2, $a0
  move  $v0, $fp
create_array_loop:
  bni $a2, 0, create_array_cont
  j create_array_exit
create_array_exit:
  jr  $ra
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
  jr  $ra
create_float_array_cont:
  fsw  $f0, $fp, $zero, 0
  subi  $a1, $a1, 1
  addi  $fp, $fp, 1
  j create_float_array_loop
min_caml_read_int:
  read_int $v0
  jr  $ra
min_caml_read_float:
  read_float  $fv
  jr  $ra
_min_caml_start: #entry_point
	sub	$zero, $zero, $zero
	addi	$sp, $zero, 16384
	sll	$sp, $sp, 3
	subi	$sp, $sp, 1024
	addi	$a0, $zero, 0
	addi	$a1, $zero, 0
	sw	$a0, $a1, $zero, 0
	mtc1	$f0, $zero
	addi	$a1, $zero, 1
	addi	$a0, $zero, 1
	addi	$a1, $zero, 0
	sw	$a1, $a0, $zero, 0
	addi	$a1, $zero, 0
	sw	$a1, $a0, $zero, 1
	addi	$a1, $zero, 0
	sw	$a1, $a0, $zero, 2
	addi	$a1, $zero, 0
	sw	$a1, $a0, $zero, 3
	addi	$a1, $zero, 1
	sw	$a1, $a0, $zero, 4
	addi	$a1, $zero, 1
	sw	$a1, $a0, $zero, 5
	addi	$a1, $zero, 0
	sw	$a1, $a0, $zero, 6
	addi	$a1, $zero, 1
	sw	$a1, $a0, $zero, 7
	addi	$a1, $zero, 1
	sw	$a1, $a0, $zero, 8
	addi	$a1, $zero, 1
	sw	$a1, $a0, $zero, 9
	addi	$a1, $zero, 1
	sw	$a1, $a0, $zero, 10
	addi	$a1, $zero, 1
	addi	$a1, $zero, 12
	sw	$a0, $a1, $zero, 0
	sw	$a0, $a1, $zero, 1
	sw	$a0, $a1, $zero, 2
	sw	$a0, $a1, $zero, 3
	sw	$a0, $a1, $zero, 4
	sw	$a0, $a1, $zero, 5
	sw	$a0, $a1, $zero, 6
	sw	$a0, $a1, $zero, 7
	sw	$a0, $a1, $zero, 8
	sw	$a0, $a1, $zero, 9
	sw	$a0, $a1, $zero, 10
	sw	$a0, $a1, $zero, 11
	sw	$a0, $a1, $zero, 12
	sw	$a0, $a1, $zero, 13
	sw	$a0, $a1, $zero, 14
	sw	$a0, $a1, $zero, 15
	sw	$a0, $a1, $zero, 16
	sw	$a0, $a1, $zero, 17
	sw	$a0, $a1, $zero, 18
	sw	$a0, $a1, $zero, 19
	sw	$a0, $a1, $zero, 20
	sw	$a0, $a1, $zero, 21
	sw	$a0, $a1, $zero, 22
	sw	$a0, $a1, $zero, 23
	sw	$a0, $a1, $zero, 24
	sw	$a0, $a1, $zero, 25
	sw	$a0, $a1, $zero, 26
	sw	$a0, $a1, $zero, 27
	sw	$a0, $a1, $zero, 28
	sw	$a0, $a1, $zero, 29
	sw	$a0, $a1, $zero, 30
	sw	$a0, $a1, $zero, 31
	sw	$a0, $a1, $zero, 32
	sw	$a0, $a1, $zero, 33
	sw	$a0, $a1, $zero, 34
	sw	$a0, $a1, $zero, 35
	sw	$a0, $a1, $zero, 36
	sw	$a0, $a1, $zero, 37
	sw	$a0, $a1, $zero, 38
	sw	$a0, $a1, $zero, 39
	sw	$a0, $a1, $zero, 40
	sw	$a0, $a1, $zero, 41
	sw	$a0, $a1, $zero, 42
	sw	$a0, $a1, $zero, 43
	sw	$a0, $a1, $zero, 44
	sw	$a0, $a1, $zero, 45
	sw	$a0, $a1, $zero, 46
	sw	$a0, $a1, $zero, 47
	sw	$a0, $a1, $zero, 48
	sw	$a0, $a1, $zero, 49
	sw	$a0, $a1, $zero, 50
	sw	$a0, $a1, $zero, 51
	sw	$a0, $a1, $zero, 52
	sw	$a0, $a1, $zero, 53
	sw	$a0, $a1, $zero, 54
	sw	$a0, $a1, $zero, 55
	sw	$a0, $a1, $zero, 56
	sw	$a0, $a1, $zero, 57
	sw	$a0, $a1, $zero, 58
	sw	$a0, $a1, $zero, 59
	mtc1	$f0, $zero
	addi	$a1, $zero, 72
	fsw	$f0, $a1, $zero, 0
	fsw	$f0, $a1, $zero, 1
	fsw	$f0, $a1, $zero, 2
	mtc1	$f0, $zero
	addi	$a1, $zero, 75
	fsw	$f0, $a1, $zero, 0
	fsw	$f0, $a1, $zero, 1
	fsw	$f0, $a1, $zero, 2
	mtc1	$f0, $zero
	addi	$a1, $zero, 78
	fsw	$f0, $a1, $zero, 0
	fsw	$f0, $a1, $zero, 1
	fsw	$f0, $a1, $zero, 2
	addi	$v0, $zero, 17279
	sll	$v0, $v0, 16
	mtc1	$f0, $v0
	addi	$a1, $zero, 81
	fsw	$f0, $a1, $zero, 0
	subi	$a0, $zero, 1
	addi	$a1, $zero, 82
	sw	$a0, $a1, $zero, 0
	addi	$a0, $zero, 82
	addi	$a1, $zero, 83
	sw	$a0, $a1, $zero, 0
	sw	$a0, $a1, $zero, 1
	sw	$a0, $a1, $zero, 2
	sw	$a0, $a1, $zero, 3
	sw	$a0, $a1, $zero, 4
	sw	$a0, $a1, $zero, 5
	sw	$a0, $a1, $zero, 6
	sw	$a0, $a1, $zero, 7
	sw	$a0, $a1, $zero, 8
	sw	$a0, $a1, $zero, 9
	sw	$a0, $a1, $zero, 10
	sw	$a0, $a1, $zero, 11
	sw	$a0, $a1, $zero, 12
	sw	$a0, $a1, $zero, 13
	sw	$a0, $a1, $zero, 14
	sw	$a0, $a1, $zero, 15
	sw	$a0, $a1, $zero, 16
	sw	$a0, $a1, $zero, 17
	sw	$a0, $a1, $zero, 18
	sw	$a0, $a1, $zero, 19
	sw	$a0, $a1, $zero, 20
	sw	$a0, $a1, $zero, 21
	sw	$a0, $a1, $zero, 22
	sw	$a0, $a1, $zero, 23
	sw	$a0, $a1, $zero, 24
	sw	$a0, $a1, $zero, 25
	sw	$a0, $a1, $zero, 26
	sw	$a0, $a1, $zero, 27
	sw	$a0, $a1, $zero, 28
	sw	$a0, $a1, $zero, 29
	sw	$a0, $a1, $zero, 30
	sw	$a0, $a1, $zero, 31
	sw	$a0, $a1, $zero, 32
	sw	$a0, $a1, $zero, 33
	sw	$a0, $a1, $zero, 34
	sw	$a0, $a1, $zero, 35
	sw	$a0, $a1, $zero, 36
	sw	$a0, $a1, $zero, 37
	sw	$a0, $a1, $zero, 38
	sw	$a0, $a1, $zero, 39
	sw	$a0, $a1, $zero, 40
	sw	$a0, $a1, $zero, 41
	sw	$a0, $a1, $zero, 42
	sw	$a0, $a1, $zero, 43
	sw	$a0, $a1, $zero, 44
	sw	$a0, $a1, $zero, 45
	sw	$a0, $a1, $zero, 46
	sw	$a0, $a1, $zero, 47
	sw	$a0, $a1, $zero, 48
	sw	$a0, $a1, $zero, 49
	addi	$a1, $zero, 83
	lw	$a0, $a1, $zero, 0
	addi	$a1, $zero, 133
	sw	$a0, $a1, $zero, 0
	addi	$a0, $zero, 133
	addi	$a1, $zero, 134
	sw	$a0, $a1, $zero, 0
	mtc1	$f0, $zero
	addi	$a1, $zero, 135
	fsw	$f0, $a1, $zero, 0
	addi	$a0, $zero, 0
	addi	$a1, $zero, 136
	sw	$a0, $a1, $zero, 0
	addi	$v0, $zero, 20078
	sll	$v0, $v0, 16
	ori	$v0, $v0, 27432
	mtc1	$f0, $v0
	addi	$a1, $zero, 137
	fsw	$f0, $a1, $zero, 0
	mtc1	$f0, $zero
	addi	$a1, $zero, 138
	fsw	$f0, $a1, $zero, 0
	fsw	$f0, $a1, $zero, 1
	fsw	$f0, $a1, $zero, 2
	addi	$a0, $zero, 0
	addi	$a1, $zero, 141
	sw	$a0, $a1, $zero, 0
	mtc1	$f0, $zero
	addi	$a1, $zero, 142
	fsw	$f0, $a1, $zero, 0
	fsw	$f0, $a1, $zero, 1
	fsw	$f0, $a1, $zero, 2
	mtc1	$f0, $zero
	addi	$a1, $zero, 145
	fsw	$f0, $a1, $zero, 0
	fsw	$f0, $a1, $zero, 1
	fsw	$f0, $a1, $zero, 2
	mtc1	$f0, $zero
	addi	$a1, $zero, 148
	fsw	$f0, $a1, $zero, 0
	fsw	$f0, $a1, $zero, 1
	fsw	$f0, $a1, $zero, 2
	mtc1	$f0, $zero
	addi	$a1, $zero, 151
	fsw	$f0, $a1, $zero, 0
	fsw	$f0, $a1, $zero, 1
	fsw	$f0, $a1, $zero, 2
	addi	$a0, $zero, 0
	addi	$a1, $zero, 154
	sw	$a0, $a1, $zero, 0
	sw	$a0, $a1, $zero, 1
	addi	$a0, $zero, 0
	addi	$a1, $zero, 156
	sw	$a0, $a1, $zero, 0
	sw	$a0, $a1, $zero, 1
	mtc1	$f0, $zero
	addi	$a1, $zero, 158
	fsw	$f0, $a1, $zero, 0
	mtc1	$f0, $zero
	addi	$a1, $zero, 159
	fsw	$f0, $a1, $zero, 0
	fsw	$f0, $a1, $zero, 1
	fsw	$f0, $a1, $zero, 2
	mtc1	$f0, $zero
	addi	$a1, $zero, 162
	fsw	$f0, $a1, $zero, 0
	fsw	$f0, $a1, $zero, 1
	fsw	$f0, $a1, $zero, 2
	mtc1	$f0, $zero
	addi	$a1, $zero, 165
	fsw	$f0, $a1, $zero, 0
	fsw	$f0, $a1, $zero, 1
	fsw	$f0, $a1, $zero, 2
	mtc1	$f0, $zero
	addi	$a1, $zero, 168
	fsw	$f0, $a1, $zero, 0
	fsw	$f0, $a1, $zero, 1
	fsw	$f0, $a1, $zero, 2
	mtc1	$f0, $zero
	addi	$a1, $zero, 171
	fsw	$f0, $a1, $zero, 0
	fsw	$f0, $a1, $zero, 1
	fsw	$f0, $a1, $zero, 2
	mtc1	$f0, $zero
	addi	$a1, $zero, 174
	fsw	$f0, $a1, $zero, 0
	fsw	$f0, $a1, $zero, 1
	fsw	$f0, $a1, $zero, 2
	mtc1	$f0, $zero
	addi	$a1, $zero, 177
	addi	$a1, $zero, 177
	addi	$a1, $zero, 177
	addi	$a0, $zero, 177
	addi	$a1, $zero, 177
	sw	$a1, $a0, $zero, 0
	addi	$a1, $zero, 177
	sw	$a1, $a0, $zero, 1
	addi	$a1, $zero, 177
	addi	$a1, $zero, 179
	addi	$a1, $zero, 179
	addi	$a1, $zero, 179
	sw	$a0, $a1, $zero, 0
	sw	$a0, $a1, $zero, 1
	sw	$a0, $a1, $zero, 2
	sw	$a0, $a1, $zero, 3
	sw	$a0, $a1, $zero, 4
	mtc1	$f0, $zero
	addi	$a1, $zero, 184
	mtc1	$f0, $zero
	addi	$a1, $zero, 184
	fsw	$f0, $a1, $zero, 0
	fsw	$f0, $a1, $zero, 1
	fsw	$f0, $a1, $zero, 2
	addi	$a1, $zero, 184
	addi	$a1, $zero, 187
	sw	$a0, $a1, $zero, 0
	sw	$a0, $a1, $zero, 1
	sw	$a0, $a1, $zero, 2
	sw	$a0, $a1, $zero, 3
	sw	$a0, $a1, $zero, 4
	sw	$a0, $a1, $zero, 5
	sw	$a0, $a1, $zero, 6
	sw	$a0, $a1, $zero, 7
	sw	$a0, $a1, $zero, 8
	sw	$a0, $a1, $zero, 9
	sw	$a0, $a1, $zero, 10
	sw	$a0, $a1, $zero, 11
	sw	$a0, $a1, $zero, 12
	sw	$a0, $a1, $zero, 13
	sw	$a0, $a1, $zero, 14
	sw	$a0, $a1, $zero, 15
	sw	$a0, $a1, $zero, 16
	sw	$a0, $a1, $zero, 17
	sw	$a0, $a1, $zero, 18
	sw	$a0, $a1, $zero, 19
	sw	$a0, $a1, $zero, 20
	sw	$a0, $a1, $zero, 21
	sw	$a0, $a1, $zero, 22
	sw	$a0, $a1, $zero, 23
	sw	$a0, $a1, $zero, 24
	sw	$a0, $a1, $zero, 25
	sw	$a0, $a1, $zero, 26
	sw	$a0, $a1, $zero, 27
	sw	$a0, $a1, $zero, 28
	sw	$a0, $a1, $zero, 29
	sw	$a0, $a1, $zero, 30
	sw	$a0, $a1, $zero, 31
	sw	$a0, $a1, $zero, 32
	sw	$a0, $a1, $zero, 33
	sw	$a0, $a1, $zero, 34
	sw	$a0, $a1, $zero, 35
	sw	$a0, $a1, $zero, 36
	sw	$a0, $a1, $zero, 37
	sw	$a0, $a1, $zero, 38
	sw	$a0, $a1, $zero, 39
	sw	$a0, $a1, $zero, 40
	sw	$a0, $a1, $zero, 41
	sw	$a0, $a1, $zero, 42
	sw	$a0, $a1, $zero, 43
	sw	$a0, $a1, $zero, 44
	sw	$a0, $a1, $zero, 45
	sw	$a0, $a1, $zero, 46
	sw	$a0, $a1, $zero, 47
	sw	$a0, $a1, $zero, 48
	sw	$a0, $a1, $zero, 49
	sw	$a0, $a1, $zero, 50
	sw	$a0, $a1, $zero, 51
	sw	$a0, $a1, $zero, 52
	sw	$a0, $a1, $zero, 53
	sw	$a0, $a1, $zero, 54
	sw	$a0, $a1, $zero, 55
	sw	$a0, $a1, $zero, 56
	sw	$a0, $a1, $zero, 57
	sw	$a0, $a1, $zero, 58
	sw	$a0, $a1, $zero, 59
	addi	$a0, $zero, 247
	addi	$a1, $zero, 184
	sw	$a1, $a0, $zero, 0
	addi	$a1, $zero, 187
	sw	$a1, $a0, $zero, 1
	mtc1	$f0, $zero
	addi	$a1, $zero, 249
	addi	$a1, $zero, 249
	addi	$a1, $zero, 249
	addi	$a0, $zero, 249
	addi	$a1, $zero, 249
	sw	$a1, $a0, $zero, 0
	addi	$a1, $zero, 249
	sw	$a1, $a0, $zero, 1
	addi	$a0, $zero, 251
	addi	$a1, $zero, 0
	sw	$a1, $a0, $zero, 0
	addi	$a1, $zero, 249
	sw	$a1, $a0, $zero, 1
	mtc1	$f0, $zero
	fsw	$f0, $a0, $zero, 2
	addi	$a1, $zero, 251
	addi	$a1, $zero, 254
	sw	$a0, $a1, $zero, 0
	sw	$a0, $a1, $zero, 1
	sw	$a0, $a1, $zero, 2
	sw	$a0, $a1, $zero, 3
	sw	$a0, $a1, $zero, 4
	sw	$a0, $a1, $zero, 5
	sw	$a0, $a1, $zero, 6
	sw	$a0, $a1, $zero, 7
	sw	$a0, $a1, $zero, 8
	sw	$a0, $a1, $zero, 9
	sw	$a0, $a1, $zero, 10
	sw	$a0, $a1, $zero, 11
	sw	$a0, $a1, $zero, 12
	sw	$a0, $a1, $zero, 13
	sw	$a0, $a1, $zero, 14
	sw	$a0, $a1, $zero, 15
	sw	$a0, $a1, $zero, 16
	sw	$a0, $a1, $zero, 17
	sw	$a0, $a1, $zero, 18
	sw	$a0, $a1, $zero, 19
	sw	$a0, $a1, $zero, 20
	sw	$a0, $a1, $zero, 21
	sw	$a0, $a1, $zero, 22
	sw	$a0, $a1, $zero, 23
	sw	$a0, $a1, $zero, 24
	sw	$a0, $a1, $zero, 25
	sw	$a0, $a1, $zero, 26
	sw	$a0, $a1, $zero, 27
	sw	$a0, $a1, $zero, 28
	sw	$a0, $a1, $zero, 29
	sw	$a0, $a1, $zero, 30
	sw	$a0, $a1, $zero, 31
	sw	$a0, $a1, $zero, 32
	sw	$a0, $a1, $zero, 33
	sw	$a0, $a1, $zero, 34
	sw	$a0, $a1, $zero, 35
	sw	$a0, $a1, $zero, 36
	sw	$a0, $a1, $zero, 37
	sw	$a0, $a1, $zero, 38
	sw	$a0, $a1, $zero, 39
	sw	$a0, $a1, $zero, 40
	sw	$a0, $a1, $zero, 41
	sw	$a0, $a1, $zero, 42
	sw	$a0, $a1, $zero, 43
	sw	$a0, $a1, $zero, 44
	sw	$a0, $a1, $zero, 45
	sw	$a0, $a1, $zero, 46
	sw	$a0, $a1, $zero, 47
	sw	$a0, $a1, $zero, 48
	sw	$a0, $a1, $zero, 49
	sw	$a0, $a1, $zero, 50
	sw	$a0, $a1, $zero, 51
	sw	$a0, $a1, $zero, 52
	sw	$a0, $a1, $zero, 53
	sw	$a0, $a1, $zero, 54
	sw	$a0, $a1, $zero, 55
	sw	$a0, $a1, $zero, 56
	sw	$a0, $a1, $zero, 57
	sw	$a0, $a1, $zero, 58
	sw	$a0, $a1, $zero, 59
	sw	$a0, $a1, $zero, 60
	sw	$a0, $a1, $zero, 61
	sw	$a0, $a1, $zero, 62
	sw	$a0, $a1, $zero, 63
	sw	$a0, $a1, $zero, 64
	sw	$a0, $a1, $zero, 65
	sw	$a0, $a1, $zero, 66
	sw	$a0, $a1, $zero, 67
	sw	$a0, $a1, $zero, 68
	sw	$a0, $a1, $zero, 69
	sw	$a0, $a1, $zero, 70
	sw	$a0, $a1, $zero, 71
	sw	$a0, $a1, $zero, 72
	sw	$a0, $a1, $zero, 73
	sw	$a0, $a1, $zero, 74
	sw	$a0, $a1, $zero, 75
	sw	$a0, $a1, $zero, 76
	sw	$a0, $a1, $zero, 77
	sw	$a0, $a1, $zero, 78
	sw	$a0, $a1, $zero, 79
	sw	$a0, $a1, $zero, 80
	sw	$a0, $a1, $zero, 81
	sw	$a0, $a1, $zero, 82
	sw	$a0, $a1, $zero, 83
	sw	$a0, $a1, $zero, 84
	sw	$a0, $a1, $zero, 85
	sw	$a0, $a1, $zero, 86
	sw	$a0, $a1, $zero, 87
	sw	$a0, $a1, $zero, 88
	sw	$a0, $a1, $zero, 89
	sw	$a0, $a1, $zero, 90
	sw	$a0, $a1, $zero, 91
	sw	$a0, $a1, $zero, 92
	sw	$a0, $a1, $zero, 93
	sw	$a0, $a1, $zero, 94
	sw	$a0, $a1, $zero, 95
	sw	$a0, $a1, $zero, 96
	sw	$a0, $a1, $zero, 97
	sw	$a0, $a1, $zero, 98
	sw	$a0, $a1, $zero, 99
	sw	$a0, $a1, $zero, 100
	sw	$a0, $a1, $zero, 101
	sw	$a0, $a1, $zero, 102
	sw	$a0, $a1, $zero, 103
	sw	$a0, $a1, $zero, 104
	sw	$a0, $a1, $zero, 105
	sw	$a0, $a1, $zero, 106
	sw	$a0, $a1, $zero, 107
	sw	$a0, $a1, $zero, 108
	sw	$a0, $a1, $zero, 109
	sw	$a0, $a1, $zero, 110
	sw	$a0, $a1, $zero, 111
	sw	$a0, $a1, $zero, 112
	sw	$a0, $a1, $zero, 113
	sw	$a0, $a1, $zero, 114
	sw	$a0, $a1, $zero, 115
	sw	$a0, $a1, $zero, 116
	sw	$a0, $a1, $zero, 117
	sw	$a0, $a1, $zero, 118
	sw	$a0, $a1, $zero, 119
	sw	$a0, $a1, $zero, 120
	sw	$a0, $a1, $zero, 121
	sw	$a0, $a1, $zero, 122
	sw	$a0, $a1, $zero, 123
	sw	$a0, $a1, $zero, 124
	sw	$a0, $a1, $zero, 125
	sw	$a0, $a1, $zero, 126
	sw	$a0, $a1, $zero, 127
	sw	$a0, $a1, $zero, 128
	sw	$a0, $a1, $zero, 129
	sw	$a0, $a1, $zero, 130
	sw	$a0, $a1, $zero, 131
	sw	$a0, $a1, $zero, 132
	sw	$a0, $a1, $zero, 133
	sw	$a0, $a1, $zero, 134
	sw	$a0, $a1, $zero, 135
	sw	$a0, $a1, $zero, 136
	sw	$a0, $a1, $zero, 137
	sw	$a0, $a1, $zero, 138
	sw	$a0, $a1, $zero, 139
	sw	$a0, $a1, $zero, 140
	sw	$a0, $a1, $zero, 141
	sw	$a0, $a1, $zero, 142
	sw	$a0, $a1, $zero, 143
	sw	$a0, $a1, $zero, 144
	sw	$a0, $a1, $zero, 145
	sw	$a0, $a1, $zero, 146
	sw	$a0, $a1, $zero, 147
	sw	$a0, $a1, $zero, 148
	sw	$a0, $a1, $zero, 149
	sw	$a0, $a1, $zero, 150
	sw	$a0, $a1, $zero, 151
	sw	$a0, $a1, $zero, 152
	sw	$a0, $a1, $zero, 153
	sw	$a0, $a1, $zero, 154
	sw	$a0, $a1, $zero, 155
	sw	$a0, $a1, $zero, 156
	sw	$a0, $a1, $zero, 157
	sw	$a0, $a1, $zero, 158
	sw	$a0, $a1, $zero, 159
	sw	$a0, $a1, $zero, 160
	sw	$a0, $a1, $zero, 161
	sw	$a0, $a1, $zero, 162
	sw	$a0, $a1, $zero, 163
	sw	$a0, $a1, $zero, 164
	sw	$a0, $a1, $zero, 165
	sw	$a0, $a1, $zero, 166
	sw	$a0, $a1, $zero, 167
	sw	$a0, $a1, $zero, 168
	sw	$a0, $a1, $zero, 169
	sw	$a0, $a1, $zero, 170
	sw	$a0, $a1, $zero, 171
	sw	$a0, $a1, $zero, 172
	sw	$a0, $a1, $zero, 173
	sw	$a0, $a1, $zero, 174
	sw	$a0, $a1, $zero, 175
	sw	$a0, $a1, $zero, 176
	sw	$a0, $a1, $zero, 177
	sw	$a0, $a1, $zero, 178
	sw	$a0, $a1, $zero, 179
	addi	$a0, $zero, 0
	addi	$a1, $zero, 434
	sw	$a0, $a1, $zero, 0
	addi	$fp, $zero, 435
	j _min_caml_start2
fflag.390:
	mtc1	$f1, $zero
	fblt	$f0, $f1, fbge_else.1138
	addi	$v0, $zero, 1
	jr	$ra
fbge_else.1138:
	subi	$v0, $zero, 1
	jr	$ra
countn.392:
	blt	$a0, $a1, bge_else.1139
	sub	$a0, $a0, $a1
	addi	$a2, $a2, 1
	j	countn.392
bge_else.1139:
	move	$v0, $a2
	jr	$ra
print_int.396:
	addi	$a2, $zero, 0
	blt	$a0, $a2, bge_else.1140
	j	bge_cont.1141
bge_else.1140:
	addi	$a1, $zero, 45
	print_char	$a1
	neg	$a0, $a0
bge_cont.1141:
	addi	$a1, $zero, 10000
	sw	$a0, $sp, $zero, 0
	sw	$ra, $sp, $zero, 1
	addi	$sp, $sp, 2
	jal	countn.392
	subi	$sp, $sp, 2
	lw	$ra, $sp, $zero, 1
	move	$a0, $v0
	addi	$a1, $zero, 10000
	mul	$a1, $a0, $a1
	lw	$a2, $sp, $zero, 0
	sub	$a1, $a2, $a1
	addi	$a2, $zero, 0
	blt	$a2, $a0, bge_else.1142
	addi	$a0, $zero, 0
	j	bge_cont.1143
bge_else.1142:
	addi	$a0, $a0, 48
	print_char	$a0
	addi	$a0, $zero, 1
bge_cont.1143:
	addi	$a3, $zero, 1000
	sw	$a0, $sp, $zero, 1
	sw	$a1, $sp, $zero, 2
	move	$a0, $a1
	move	$a1, $a3
	sw	$ra, $sp, $zero, 3
	addi	$sp, $sp, 4
	jal	countn.392
	subi	$sp, $sp, 4
	lw	$ra, $sp, $zero, 3
	move	$a0, $v0
	addi	$a1, $zero, 1000
	mul	$a1, $a0, $a1
	lw	$a2, $sp, $zero, 2
	sub	$a1, $a2, $a1
	addi	$a2, $zero, 0
	blt	$a2, $a0, bge_else.1144
	lw	$a0, $sp, $zero, 1
	bni	$a0, 1, bni_else.1146
	addi	$a0, $zero, 48
	print_char	$a0
	addi	$a0, $zero, 1
	j	bni_cont.1147
bni_else.1146:
	addi	$a0, $zero, 0
bni_cont.1147:
	j	bge_cont.1145
bge_else.1144:
	addi	$a0, $a0, 48
	print_char	$a0
	addi	$a0, $zero, 1
bge_cont.1145:
	addi	$a3, $zero, 100
	sw	$a0, $sp, $zero, 3
	sw	$a1, $sp, $zero, 4
	move	$a0, $a1
	move	$a1, $a3
	sw	$ra, $sp, $zero, 5
	addi	$sp, $sp, 6
	jal	countn.392
	subi	$sp, $sp, 6
	lw	$ra, $sp, $zero, 5
	move	$a0, $v0
	addi	$a1, $zero, 100
	mul	$a1, $a0, $a1
	lw	$a2, $sp, $zero, 4
	sub	$a1, $a2, $a1
	addi	$a2, $zero, 0
	blt	$a2, $a0, bge_else.1148
	lw	$a0, $sp, $zero, 3
	bni	$a0, 1, bni_else.1150
	addi	$a0, $zero, 48
	print_char	$a0
	addi	$a0, $zero, 1
	j	bni_cont.1151
bni_else.1150:
	addi	$a0, $zero, 0
bni_cont.1151:
	j	bge_cont.1149
bge_else.1148:
	addi	$a0, $a0, 48
	print_char	$a0
	addi	$a0, $zero, 1
bge_cont.1149:
	addi	$a3, $zero, 10
	sw	$a0, $sp, $zero, 5
	sw	$a1, $sp, $zero, 6
	move	$a0, $a1
	move	$a1, $a3
	sw	$ra, $sp, $zero, 7
	addi	$sp, $sp, 8
	jal	countn.392
	subi	$sp, $sp, 8
	lw	$ra, $sp, $zero, 7
	move	$a0, $v0
	addi	$a1, $zero, 10
	mul	$a1, $a0, $a1
	lw	$a2, $sp, $zero, 6
	sub	$a1, $a2, $a1
	addi	$a2, $zero, 0
	blt	$a2, $a0, bge_else.1152
	lw	$a0, $sp, $zero, 5
	bni	$a0, 1, bni_else.1154
	addi	$a0, $zero, 48
	print_char	$a0
	addi	$a0, $zero, 1
	j	bni_cont.1155
bni_else.1154:
	addi	$a0, $zero, 0
bni_cont.1155:
	j	bge_cont.1153
bge_else.1152:
	addi	$a0, $a0, 48
	print_char	$a0
	addi	$a0, $zero, 1
bge_cont.1153:
	addi	$a0, $a1, 48
	print_char	$a0
	jr	$ra
div2like_sub.859:
	flihi	$f2, 16384
	fblt	$f0, $f2, fbge_else.1157
	flihi	$f2, 16384
	fsub	$f0, $f0, $f2
	flihi	$f2, 16256
	fadd	$f1, $f1, $f2
	j	div2like_sub.859
fbge_else.1157:
	fmove	$fv, $f1
	jr $ra
div2like.842:
	mtc1	$f1, $zero
	j	div2like_sub.859
ftoi_ret_sub.844:
	sw	$a1, $sp, $zero, 0
	sw	$a0, $sp, $zero, 1
	fsw	$f0, $sp, $zero, 2
	sw	$ra, $sp, $zero, 5
	addi	$sp, $sp, 6
	jal	div2like.842
	subi	$sp, $sp, 6
	lw	$ra, $sp, $zero, 5
	fmove	$f0, $fv
	flihi	$f1, 16256
	flw	$f2, $sp, $zero, 2
	fblt	$f2, $f1, fbge_else.1158
	flihi	$f1, 16256
	flihi	$f3, 16384
	fmul	$f3, $f0, $f3
	fsub	$f2, $f2, $f3
	fblt	$f2, $f1, fbge_else.1159
	lw	$a0, $sp, $zero, 0
	lw	$a1, $sp, $zero, 1
	add	$a1, $a1, $a0
	add	$a0, $a0, $a0
	move	$a25, $a1
	move	$a1, $a0
	move	$a0, $a25
	j	ftoi_ret_sub.844
fbge_else.1159:
	lw	$a0, $sp, $zero, 0
	add	$a1, $a0, $a0
	lw	$a0, $sp, $zero, 1
	j	ftoi_ret_sub.844
fbge_else.1158:
	lw	$a0, $sp, $zero, 1
	move	$v0, $a0
	jr	$ra
ftoi_ret.824:
	addi	$a0, $zero, 0
	addi	$a1, $zero, 1
	j	ftoi_ret_sub.844
ftoi_big.826:
	flihi	$f1, 19200
	fsub	$f0, $f0, $f1
	addi	$a1, $zero, 128
	sll	$a1, $a1, 16
	ori	$a1, $a1, 0
	add	$a0, $a0, $a1
	fblt	$f0, $f1, fbge_else.1160
	j	ftoi_big.826
fbge_else.1160:
	sw	$a0, $sp, $zero, 0
	sw	$ra, $sp, $zero, 1
	addi	$sp, $sp, 2
	jal	ftoi_ret.824
	subi	$sp, $sp, 2
	lw	$ra, $sp, $zero, 1
	move	$a0, $v0
	lw	$a1, $sp, $zero, 0
	add	$v0, $a1, $a0
	jr	$ra
int_of_float.398:
	fabs	$f1, $f0
	fsw	$f1, $sp, $zero, 0
	sw	$ra, $sp, $zero, 3
	addi	$sp, $sp, 4
	jal	fflag.390
	subi	$sp, $sp, 4
	lw	$ra, $sp, $zero, 3
	move	$a0, $v0
	bni	$a0, 1, beqi_else.1161
	flihi	$f0, 19200
	flw	$f1, $sp, $zero, 0
	fblt	$f0, $f1, fbge_else.1162
	fmove	$f0, $f1
	j	ftoi_ret.824
fbge_else.1162:
	addi	$a0, $zero, 0
	fmove	$f0, $f1
	j	ftoi_big.826
beqi_else.1161:
	flihi	$f0, 19200
	flw	$f1, $sp, $zero, 0
	fblt	$f0, $f1, fbge_else.1163
	fmove	$f0, $f1
	sw	$ra, $sp, $zero, 3
	addi	$sp, $sp, 4
	jal	ftoi_ret.824
	subi	$sp, $sp, 4
	lw	$ra, $sp, $zero, 3
	move	$a0, $v0
	neg	$v0, $a0
	jr	$ra
fbge_else.1163:
	addi	$a0, $zero, 0
	fmove	$f0, $f1
	sw	$ra, $sp, $zero, 3
	addi	$sp, $sp, 4
	jal	ftoi_big.826
	subi	$sp, $sp, 4
	lw	$ra, $sp, $zero, 3
	move	$a0, $v0
	neg	$v0, $a0
	jr	$ra
itof_ret_sub.803:
	sra	$a1, $a0, 1
	bni	$a0, 0, beqi_else.1164
	fmove	$fv, $f0
	jr $ra
beqi_else.1164:
	sub	$a0, $a0, $a1
	sub	$a0, $a0, $a1
	addi	$a2, $zero, 0
	blt	$a2, $a0, bge_else.1165
	flihi	$f2, 16384
	fmul	$f1, $f1, $f2
	move	$a0, $a1
	j	itof_ret_sub.803
bge_else.1165:
	fadd	$f0, $f0, $f1
	flihi	$f2, 16384
	fmul	$f1, $f1, $f2
	move	$a0, $a1
	j	itof_ret_sub.803
itof_ret.785:
	mtc1	$f0, $zero
	flihi	$f1, 16256
	j	itof_ret_sub.803
itof_big.787:
	addi	$a1, $zero, 128
	sll	$a1, $a1, 16
	ori	$a1, $a1, 0
	sub	$a0, $a0, $a1
	flihi	$f1, 19200
	fadd	$f0, $f0, $f1
	blt	$a0, $a1, bge_else.1166
	j	itof_big.787
bge_else.1166:
	fsw	$f0, $sp, $zero, 0
	sw	$ra, $sp, $zero, 3
	addi	$sp, $sp, 4
	jal	itof_ret.785
	subi	$sp, $sp, 4
	lw	$ra, $sp, $zero, 3
	fmove	$f0, $fv
	flw	$f1, $sp, $zero, 0
	fadd	$fv, $f1, $f0
	jr $ra
float_of_int.400:
	addi	$a1, $zero, 0
	blt	$a1, $a0, bge_else.1167
	neg	$a2, $a0
	j	bge_cont.1168
bge_else.1167:
	move	$a2, $a0
bge_cont.1168:
	blt	$a1, $a0, bge_else.1169
	subi	$a0, $zero, 1
	j	bge_cont.1170
bge_else.1169:
	addi	$a0, $zero, 1
bge_cont.1170:
	bni	$a0, 1, beqi_else.1171
	addi	$a0, $zero, 128
	sll	$a0, $a0, 16
	ori	$a0, $a0, 0
	blt	$a0, $a2, bge_else.1172
	move	$a0, $a2
	j	itof_ret.785
bge_else.1172:
	mtc1	$f0, $zero
	move	$a0, $a2
	j	itof_big.787
beqi_else.1171:
	addi	$a0, $zero, 128
	sll	$a0, $a0, 16
	ori	$a0, $a0, 0
	blt	$a0, $a2, bge_else.1173
	move	$a0, $a2
	sw	$ra, $sp, $zero, 1
	addi	$sp, $sp, 2
	jal	itof_ret.785
	subi	$sp, $sp, 2
	lw	$ra, $sp, $zero, 1
	fmove	$f0, $fv
	fneg	$fv, $f0
	jr $ra
bge_else.1173:
	mtc1	$f0, $zero
	move	$a0, $a2
	sw	$ra, $sp, $zero, 1
	addi	$sp, $sp, 2
	jal	itof_big.787
	subi	$sp, $sp, 2
	lw	$ra, $sp, $zero, 1
	fmove	$f0, $fv
	fneg	$fv, $f0
	jr $ra
write_header.421:
	addi	$a0, $zero, 80
	print_char	$a0
	addi	$a0, $zero, 51
	print_char	$a0
	addi	$a0, $zero, 10
	print_char	$a0
	addi	$a0, $zero, 100
	sw	$ra, $sp, $zero, 1
	addi	$sp, $sp, 2
	jal	print_int.396
	subi	$sp, $sp, 2
	lw	$ra, $sp, $zero, 1
	fmove	$f30, $fv
	addi	$a0, $zero, 32
	print_char	$a0
	addi	$a0, $zero, 100
	sw	$ra, $sp, $zero, 1
	addi	$sp, $sp, 2
	jal	print_int.396
	subi	$sp, $sp, 2
	lw	$ra, $sp, $zero, 1
	fmove	$f30, $fv
	addi	$a0, $zero, 32
	print_char	$a0
	addi	$a0, $zero, 255
	sw	$ra, $sp, $zero, 1
	addi	$sp, $sp, 2
	jal	print_int.396
	subi	$sp, $sp, 2
	lw	$ra, $sp, $zero, 1
	fmove	$f30, $fv
	addi	$a0, $zero, 10
	print_char	$a0
	jr	$ra
write.479:
	fsw	$f2, $sp, $zero, 0
	fsw	$f1, $sp, $zero, 2
	sw	$ra, $sp, $zero, 5
	addi	$sp, $sp, 6
	jal	int_of_float.398
	subi	$sp, $sp, 6
	lw	$ra, $sp, $zero, 5
	move	$a0, $v0
	flw	$f0, $sp, $zero, 2
	sw	$a0, $sp, $zero, 4
	sw	$ra, $sp, $zero, 5
	addi	$sp, $sp, 6
	jal	int_of_float.398
	subi	$sp, $sp, 6
	lw	$ra, $sp, $zero, 5
	move	$a0, $v0
	flw	$f0, $sp, $zero, 0
	sw	$a0, $sp, $zero, 5
	sw	$ra, $sp, $zero, 7
	addi	$sp, $sp, 8
	jal	int_of_float.398
	subi	$sp, $sp, 8
	lw	$ra, $sp, $zero, 7
	move	$a0, $v0
	addi	$a1, $zero, 32
	print_char	$a1
	lw	$a1, $sp, $zero, 4
	sw	$a0, $sp, $zero, 6
	move	$a0, $a1
	sw	$ra, $sp, $zero, 7
	addi	$sp, $sp, 8
	jal	print_int.396
	subi	$sp, $sp, 8
	lw	$ra, $sp, $zero, 7
	fmove	$f30, $fv
	addi	$a0, $zero, 32
	print_char	$a0
	lw	$a0, $sp, $zero, 5
	sw	$ra, $sp, $zero, 7
	addi	$sp, $sp, 8
	jal	print_int.396
	subi	$sp, $sp, 8
	lw	$ra, $sp, $zero, 7
	fmove	$f30, $fv
	addi	$a0, $zero, 32
	print_char	$a0
	lw	$a0, $sp, $zero, 6
	j	print_int.396
write_rgb.424:
	lw	$a1, $a26, $zero, 1
	sw	$a0, $sp, $zero, 0
	sw	$a1, $sp, $zero, 1
	sw	$ra, $sp, $zero, 3
	addi	$sp, $sp, 4
	jal	float_of_int.400
	subi	$sp, $sp, 4
	lw	$ra, $sp, $zero, 3
	fmove	$f0, $fv
	lw	$a0, $sp, $zero, 1
	lw	$a1, $a0, $zero, 0
	lw	$a2, $sp, $zero, 0
	blt	$a1, $a2, bge_else.1175
	flihi	$f0, 17279
	mtc1	$f1, $zero
	fmove	$f2, $f1
	j	write.479
bge_else.1175:
	lw	$a1, $a0, $zero, 1
	blt	$a1, $a2, bge_else.1176
	flihi	$f0, 17279
	lw	$a1, $a0, $zero, 0
	sub	$a1, $a2, $a1
	fsw	$f0, $sp, $zero, 2
	move	$a0, $a1
	sw	$ra, $sp, $zero, 5
	addi	$sp, $sp, 6
	jal	float_of_int.400
	subi	$sp, $sp, 6
	lw	$ra, $sp, $zero, 5
	fmove	$f0, $fv
	flihi	$f1, 17279
	fmul	$f0, $f1, $f0
	lw	$a0, $sp, $zero, 1
	lw	$a1, $a0, $zero, 1
	lw	$a0, $a0, $zero, 0
	sub	$a0, $a1, $a0
	fsw	$f0, $sp, $zero, 4
	sw	$ra, $sp, $zero, 7
	addi	$sp, $sp, 8
	jal	float_of_int.400
	subi	$sp, $sp, 8
	lw	$ra, $sp, $zero, 7
	fmove	$f0, $fv
	flw	$f1, $sp, $zero, 4
	fdiv	$f1, $f1, $f0
	mtc1	$f2, $zero
	flw	$f0, $sp, $zero, 2
	j	write.479
bge_else.1176:
	lw	$a1, $a0, $zero, 2
	blt	$a1, $a2, bge_else.1177
	lw	$a1, $a0, $zero, 2
	sub	$a1, $a1, $a2
	move	$a0, $a1
	sw	$ra, $sp, $zero, 7
	addi	$sp, $sp, 8
	jal	float_of_int.400
	subi	$sp, $sp, 8
	lw	$ra, $sp, $zero, 7
	fmove	$f0, $fv
	flihi	$f1, 17279
	fmul	$f0, $f1, $f0
	lw	$a0, $sp, $zero, 1
	lw	$a1, $a0, $zero, 2
	lw	$a0, $a0, $zero, 1
	sub	$a0, $a1, $a0
	fsw	$f0, $sp, $zero, 6
	sw	$ra, $sp, $zero, 9
	addi	$sp, $sp, 10
	jal	float_of_int.400
	subi	$sp, $sp, 10
	lw	$ra, $sp, $zero, 9
	fmove	$f0, $fv
	flw	$f1, $sp, $zero, 6
	fdiv	$f0, $f1, $f0
	flihi	$f1, 17279
	mtc1	$f2, $zero
	j	write.479
bge_else.1177:
	lw	$a1, $a0, $zero, 3
	blt	$a1, $a2, bge_else.1178
	mtc1	$f0, $zero
	flihi	$f1, 17279
	lw	$a1, $a0, $zero, 2
	sub	$a1, $a2, $a1
	fsw	$f1, $sp, $zero, 8
	fsw	$f0, $sp, $zero, 10
	move	$a0, $a1
	sw	$ra, $sp, $zero, 13
	addi	$sp, $sp, 14
	jal	float_of_int.400
	subi	$sp, $sp, 14
	lw	$ra, $sp, $zero, 13
	fmove	$f0, $fv
	flihi	$f1, 17279
	fmul	$f0, $f1, $f0
	lw	$a0, $sp, $zero, 1
	lw	$a1, $a0, $zero, 3
	lw	$a0, $a0, $zero, 2
	sub	$a0, $a1, $a0
	fsw	$f0, $sp, $zero, 12
	sw	$ra, $sp, $zero, 15
	addi	$sp, $sp, 16
	jal	float_of_int.400
	subi	$sp, $sp, 16
	lw	$ra, $sp, $zero, 15
	fmove	$f0, $fv
	flw	$f1, $sp, $zero, 12
	fdiv	$f2, $f1, $f0
	flw	$f0, $sp, $zero, 10
	flw	$f1, $sp, $zero, 8
	j	write.479
bge_else.1178:
	lw	$a1, $a0, $zero, 4
	blt	$a1, $a2, bge_else.1179
	mtc1	$f0, $zero
	lw	$a1, $a0, $zero, 4
	sub	$a1, $a1, $a2
	fsw	$f0, $sp, $zero, 14
	move	$a0, $a1
	sw	$ra, $sp, $zero, 17
	addi	$sp, $sp, 18
	jal	float_of_int.400
	subi	$sp, $sp, 18
	lw	$ra, $sp, $zero, 17
	fmove	$f0, $fv
	flihi	$f1, 17279
	fmul	$f0, $f1, $f0
	lw	$a0, $sp, $zero, 1
	lw	$a1, $a0, $zero, 4
	lw	$a0, $a0, $zero, 3
	sub	$a0, $a1, $a0
	fsw	$f0, $sp, $zero, 16
	sw	$ra, $sp, $zero, 19
	addi	$sp, $sp, 20
	jal	float_of_int.400
	subi	$sp, $sp, 20
	lw	$ra, $sp, $zero, 19
	fmove	$f0, $fv
	flw	$f1, $sp, $zero, 16
	fdiv	$f1, $f1, $f0
	flihi	$f2, 17279
	flw	$f0, $sp, $zero, 14
	j	write.479
bge_else.1179:
	lw	$a1, $a0, $zero, 5
	blt	$a1, $a2, bge_else.1180
	lw	$a1, $a0, $zero, 4
	sub	$a1, $a2, $a1
	move	$a0, $a1
	sw	$ra, $sp, $zero, 19
	addi	$sp, $sp, 20
	jal	float_of_int.400
	subi	$sp, $sp, 20
	lw	$ra, $sp, $zero, 19
	fmove	$f0, $fv
	flihi	$f1, 17279
	fmul	$f0, $f1, $f0
	lw	$a0, $sp, $zero, 1
	lw	$a1, $a0, $zero, 5
	lw	$a0, $a0, $zero, 4
	sub	$a0, $a1, $a0
	fsw	$f0, $sp, $zero, 18
	sw	$ra, $sp, $zero, 21
	addi	$sp, $sp, 22
	jal	float_of_int.400
	subi	$sp, $sp, 22
	lw	$ra, $sp, $zero, 21
	fmove	$f0, $fv
	flw	$f1, $sp, $zero, 18
	fdiv	$f0, $f1, $f0
	mtc1	$f1, $zero
	flihi	$f2, 17279
	j	write.479
bge_else.1180:
	mtc1	$f0, $zero
	fmove	$f2, $f0
	fmove	$f1, $f0
	j	write.479
iloop.445:
	lw	$a1, $a26, $zero, 1
	addi	$a2, $zero, 256
	blt	$a0, $a2, bge_else.1181
	addi	$a0, $zero, 256
	move	$a26, $a1
	lw	$a25, $a26, $zero, 0
	j	write_rgb.424
bge_else.1181:
	fmul	$f4, $f0, $f0
	fmul	$f5, $f1, $f1
	fsub	$f4, $f4, $f5
	fadd	$f4, $f4, $f2
	flihi	$f5, 16384
	fmul	$f5, $f5, $f0
	fmadd	$f5, $f5, $f1, $f3
	fmul	$f1, $f1, $f1
	fmadd	$f0, $f0, $f0, $f1
	flihi	$f1, 16512
	fblt	$f1, $f0, fbge_else.1182
	addi	$a0, $a0, 1
	fmove	$f1, $f5
	fmove	$f0, $f4
	lw	$a25, $a26, $zero, 0
	j	iloop.445
fbge_else.1182:
	move	$a26, $a1
	lw	$a25, $a26, $zero, 0
	j	write_rgb.424
xloop.433:
	lw	$a2, $a26, $zero, 1
	addi	$a3, $zero, 100
	blt	$a0, $a3, bge_else.1183
	jr	$ra
bge_else.1183:
	sw	$a26, $sp, $zero, 0
	sw	$a0, $sp, $zero, 1
	sw	$a2, $sp, $zero, 2
	sw	$a1, $sp, $zero, 3
	sw	$ra, $sp, $zero, 5
	addi	$sp, $sp, 6
	jal	float_of_int.400
	subi	$sp, $sp, 6
	lw	$ra, $sp, $zero, 5
	fmove	$f0, $fv
	lw	$a0, $sp, $zero, 3
	fsw	$f0, $sp, $zero, 4
	sw	$ra, $sp, $zero, 7
	addi	$sp, $sp, 8
	jal	float_of_int.400
	subi	$sp, $sp, 8
	lw	$ra, $sp, $zero, 7
	fmove	$f0, $fv
	flihi	$f1, 16968
	flw	$f2, $sp, $zero, 4
	fdiv	$f2, $f2, $f1
	flihi	$f3, 16320
	fsub	$f2, $f2, $f3
	fdiv	$f0, $f0, $f1
	flihi	$f1, 16256
	fsub	$f3, $f0, $f1
	move	$a26, $fp
	addi	$fp, $fp, 2
	sw	$a0, $a26, $zero, 0
	lw	$a0, $sp, $zero, 2
	sw	$a0, $a26, $zero, 1
	addi	$a0, $zero, 0
	mtc1	$f0, $zero
	fmove	$f1, $f0
	sw	$ra, $sp, $zero, 7
	addi	$sp, $sp, 8
	jal	iloop.445
	subi	$sp, $sp, 8
	lw	$ra, $sp, $zero, 7
	fmove	$f30, $fv
	lw	$a0, $sp, $zero, 1
	addi	$a0, $a0, 1
	lw	$a1, $sp, $zero, 3
	lw	$a26, $sp, $zero, 0
	lw	$a25, $a26, $zero, 0
	j	xloop.433
yloop.426:
	lw	$a1, $a26, $zero, 1
	addi	$a2, $zero, 100
	blt	$a0, $a2, bge_else.1185
	jr	$ra
bge_else.1185:
	move	$a2, $fp
	addi	$fp, $fp, 2
	sw	$a3, $a2, $zero, 0
	sw	$a1, $a2, $zero, 1
	addi	$a1, $zero, 0
	sw	$a26, $sp, $zero, 0
	sw	$a0, $sp, $zero, 1
	move	$a26, $a2
	move	$a25, $a1
	move	$a1, $a0
	move	$a0, $a25
	sw	$ra, $sp, $zero, 3
	addi	$sp, $sp, 4
	jal	xloop.433
	subi	$sp, $sp, 4
	lw	$ra, $sp, $zero, 3
	fmove	$f30, $fv
	lw	$a0, $sp, $zero, 1
	addi	$a0, $a0, 1
	lw	$a26, $sp, $zero, 0
	lw	$a25, $a26, $zero, 0
	j	yloop.426
exit:
	hlt
_min_caml_start2: # main entry point
   # main program start
	addi	$a0, $zero, 6
	addi	$a1, $zero, 0
	sw	$ra, $sp, $zero, 1
	addi	$sp, $sp, 2
	jal	min_caml_create_array
	subi	$sp, $sp, 2
	lw	$ra, $sp, $zero, 1
	move	$a0, $v0
	addi	$a1, $zero, 3
	sw	$a1, $a0, $zero, 0
	addi	$a1, $zero, 8
	sw	$a1, $a0, $zero, 1
	addi	$a1, $zero, 12
	sw	$a1, $a0, $zero, 2
	addi	$a1, $zero, 16
	sw	$a1, $a0, $zero, 3
	addi	$a1, $zero, 25
	sw	$a1, $a0, $zero, 4
	addi	$a1, $zero, 100
	sw	$a1, $a0, $zero, 5
	move	$a1, $fp
	addi	$fp, $fp, 2
	sw	$a2, $a1, $zero, 0
	sw	$a0, $a1, $zero, 1
	move	$a0, $fp
	addi	$fp, $fp, 2
	sw	$a2, $a0, $zero, 0
	sw	$a1, $a0, $zero, 1
	sw	$a0, $sp, $zero, 0
	sw	$ra, $sp, $zero, 1
	addi	$sp, $sp, 2
	jal	write_header.421
	subi	$sp, $sp, 2
	lw	$ra, $sp, $zero, 1
	fmove	$f30, $fv
	addi	$a0, $zero, 0
	lw	$a26, $sp, $zero, 0
	sw	$ra, $sp, $zero, 1
	addi	$sp, $sp, 2
	jal	yloop.426
	subi	$sp, $sp, 2
	lw	$ra, $sp, $zero, 1
	fmove	$f30, $fv
	j	exit
   # main program end
