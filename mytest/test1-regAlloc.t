data

fundefs
f.3 (args) : $a1 (fargs) : 
	Ans
		ShiftL2 $a1

main
Let $a1
	Li 5
	Let $a1
		CallCls f.3 d:$a1 f:
		Ans
			CallCls min_caml_print_int d:$a1 f:
