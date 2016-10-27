data
l.9 : 4.000000
l.8 : 3.000000

fundefs
f.4 (args) : (fargs) : y.5 
	Let x.3
		Lfd $a26 8
		Ans
			FAdd x.3 y.5

main
Let x.3
	FLi l.8
	Let f.4
		Mr $a0
		Let $a0
			Add $a0 16
			Let l.11
				SetL f.4
				Let Tu12
					Stw l.11 f.4 0
					Let Tu10
						Stfd x.3 f.4 8
						Let Td1.7
							FLi l.9
							Let Td2.6
								CallCls f.4 (f.4) d:f:Td1.7 
								Ans
									CallCls min_caml_print_float d:f:Td2.6 
