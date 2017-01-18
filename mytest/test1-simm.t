data

fundefs
fib.10 (args) : n.11 (fargs) : 
	Let Ti3.14
		Li 2
		Ans
			IfLE Ti3.14 n.11
				Let Ti5.19
					Sub n.11 2
					Let Ti6.15
						CallDir fib.10 d:Ti5.19 f:
						Let Ti8.17
							Sub n.11 1
							Let Ti9.16
								CallDir fib.10 d:Ti8.17 f:
								Ans
									Add Ti6.15 Ti9.16
				Ans
					Mr n.11

main
Let Ti1.13
	Li 10
	Let Ti2.12
		CallDir fib.10 d:Ti1.13 f:
		Ans
			CallDir min_caml_print_int d:Ti2.12 f:
