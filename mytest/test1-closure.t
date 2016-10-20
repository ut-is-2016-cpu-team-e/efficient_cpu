toplevel
name : f.14 args : y.15  formal_fv : x.13  
Let Ti9.28
	Int:0
	IfEq y.15 Ti9.28
		Int:0
		Let Ti10.31
			Int:1
			Let Ti11.30
				Sub y.15 Ti10.31
				Let Ti12.29
					AppCls f.14 Ti11.30 )
					Add x.13 Ti12.29
name : g.17 args : y.18  formal_fv : z.16  
Let Ti5.24
	Int:0
	IfEq y.18 Ti5.24
		Int:0
		Let Ti6.27
			Int:1
			Let Ti7.26
				Sub y.18 Ti6.27
				Let Ti8.25
					AppCls g.17 Ti7.26 )
					Sub z.16 Ti8.25

Let x.13
	Int:10
	MakeCls f.14 (entry = f.14, actual_fc = x.13 )
		Let z.16
			Int:20
			MakeCls g.17 (entry = g.17, actual_fc = z.16 )
				Let Ti1.23
					Int:3
					Let Ti2.20
						AppCls f.14 Ti1.23 )
						Let Ti3.22
							Int:1
							Let Ti4.21
								AppCls g.17 Ti3.22 )
								Let z.19
									Add Ti2.20 Ti4.21
									AppDir min_caml_print_int z.19 )
