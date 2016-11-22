LetRec gcd.7 m.8 n.9 
	Let Ti4.13
		Int:0
		IfLE m.8 Ti4.13
			Var n.9
			IfLE m.8 n.9
				Let Ti5.15
					Sub n.9 m.8
					App gcd.7m.8 Ti5.15 
				Let Ti6.14
					Sub m.8 n.9
					App gcd.7n.9 Ti6.14 
	Let Ti3.10
		Let Ti1.11
			Int:21600
			Let Ti2.12
				Int:337500
				App gcd.7Ti1.11 Ti2.12 
		ExtFunApp print_int Ti3.10,
