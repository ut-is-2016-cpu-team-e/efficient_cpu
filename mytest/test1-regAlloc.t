data
l.9 : 4.000000
l.8 : 3.000000

fundefs
f.4 (args) : (fargs) : $f0 
	Let $f1
		Lfd $a26 8
		Ans
			FAdd $f1 $f0

main
Let $f0
	FLi l.8
	Let $a26
		Mr $a0
		Let $a0
			Add $a0 16
			Let $a1
				SetL f.4
				Let $f30
					Stw $a1 $a26 0
					Let $f30
						Stfd $f0 $a26 8
						Let $f0
							FLi l.9
							Let $f0
								CallCls $a26 (f.4) d:f:$f0 
								Ans
									CallCls min_caml_print_float d:f:$f0 
