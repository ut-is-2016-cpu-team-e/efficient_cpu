toplevel
name : f.6 args : z.7  formal_fv : x.5  
FAdd x.5 z.7
name : g.8 args : z.9  formal_fv : x.5  
FMul x.5 z.9

Let x.5
	Float:3.000000
	MakeCls f.6 (entry = f.6, actual_fc = x.5 )
		MakeCls g.8 (entry = g.8, actual_fc = x.5 )
			Let Td1.14
				Float:2.000000
				Let Td2.11
					AppCls f.6 Td1.14 )
					Let Td3.13
						Float:4.000000
						Let Td4.12
							AppCls g.8 Td3.13 )
							Let y.10
								FAdd Td2.11 Td4.12
								AppDir min_caml_print_float y.10 )
