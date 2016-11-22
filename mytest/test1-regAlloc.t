data

fundefs
gcd.7 (args) : $a0 $a1 (fargs) : 
	Let $a2
		Li 0
		Ans
			IfLE $a0 $a2
				Ans
					Mr $a1
				Ans
					IfLE $a0 $a1
						Let $a1
							Sub $a1 $a0
							Ans
								CallCls gcd.7 d:$a0 $a1 f:
						Let $a0
							Sub $a0 $a1
							Ans
								CallCls gcd.7 d:$a1 $a0 f:

main
Let $a0
	Li 21600
	Let $a1
		Li 337500
		Let $a0
			CallCls gcd.7 d:$a0 $a1 f:
			Ans
				CallCls min_caml_print_int d:$a0 f:
