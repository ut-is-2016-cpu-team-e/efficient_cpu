toplevel
name : fib.10 args : n.11  formal_fv :  
Let Ti3.14
	Int:2
	IfLE Ti3.14 n.11
		Let Ti.e.21
			Int:2
			Let Ti5.19
				Sub n.11 Ti.e.21
				Let Ti6.15
					AppDir fib.10 Ti5.19 )
					Let Ti.e.22
						Int:1
						Let Ti8.17
							Sub n.11 Ti.e.22
							Let Ti9.16
								AppDir fib.10 Ti8.17 )
								Add Ti6.15 Ti9.16
		Var n.11

Let Ti1.13
	Int:10
	Let Ti2.12
		AppDir fib.10 Ti1.13 )
		AppDir min_caml_print_int Ti2.12 )
