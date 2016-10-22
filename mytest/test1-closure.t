toplevel
name : fadd.4 args : x.5 y.6  formal_fv :  
FAdd x.5 y.6

Let Td1.8
	Float:3.000000
	Let Td2.9
		Float:4.000000
		Let Td3.7
			AppDir fadd.4 Td1.8 Td2.9 )
			AppDir min_caml_print_float Td3.7 )
