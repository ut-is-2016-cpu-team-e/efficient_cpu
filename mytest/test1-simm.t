data
l.11 : 4.000000
l.10 : 3.000000

fundefs
fadd.4 (args) : (fargs) : x.5 
	Ans
		FAdd x.5 y.6

main
Let Td1.8
	FLi l.10
	Let Td2.9
		FLi l.11
		Let Td3.7
			CallCls fadd.4 d:f:Td1.8 Td2.9 
			Ans
				CallCls min_caml_print_float d:f:Td3.7 
