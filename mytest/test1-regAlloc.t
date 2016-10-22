data
l.11 : 4.000000
l.10 : 3.000000

fundefs
fadd.4 (args) : (fargs) : $f0 
	Ans
		FAdd $f0 $f1

main
Let $f0
	FLi l.10
	Let $f1
		FLi l.11
		Let $f0
			CallCls fadd.4 d:f:$f0 $f1 
			Ans
				CallCls min_caml_print_float d:f:$f0 
