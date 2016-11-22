LetRec gcd m n 
	Let Ti4
		Int:0
		IfLE m Ti4
			Var n
			IfLE m n
				Let Ti5
					Sub n m
					App gcdm Ti5 
				Let Ti6
					Sub m n
					App gcdn Ti6 
	Let Ti3
		Let Ti1
			Int:21600
			Let Ti2
				Int:337500
				App gcdTi1 Ti2 
		ExtFunApp print_int Ti3,
