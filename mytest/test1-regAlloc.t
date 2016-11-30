data

fundefs

main
Let $a0
	SetExt 48
	Let $a0
		Lwz $a0 16
		Ans
			CallDir min_caml_print_int d:$a0 f:
