data

fundefs
gcd.7 (args) : m.8 n.9 (fargs) : 
	Let Ti4.13
		Li 0
		Ans
			IfLE m.8 Ti4.13
				Ans
					Mr n.9
				Ans
					IfLE m.8 n.9
						Let Ti5.15
							Sub n.9 m.8
							Ans
								CallCls gcd.7 d:m.8 Ti5.15 f:
						Let Ti6.14
							Sub m.8 n.9
							Ans
								CallCls gcd.7 d:n.9 Ti6.14 f:

main
Let Ti1.11
	Li 21600
	Let Ti2.12
		Li 337500
		Let Ti3.10
			CallCls gcd.7 d:Ti1.11 Ti2.12 f:
			Ans
				CallCls min_caml_print_int d:Ti3.10 f:
