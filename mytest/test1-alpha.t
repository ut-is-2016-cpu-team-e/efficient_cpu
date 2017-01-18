LetRec fib.10 n.11 
	Let Ti3.14
		Int:2
		IfLE Ti3.14 n.11
			Let Ti6.15
				Let Ti5.19
					Let Ti4.20
						Int:2
						Sub n.11 Ti4.20
					App fib.10Ti5.19 
				Let Ti9.16
					Let Ti8.17
						Let Ti7.18
							Int:1
							Sub n.11 Ti7.18
						App fib.10Ti8.17 
					Add Ti6.15 Ti9.16
			Var n.11
	Let Ti2.12
		Let Ti1.13
			Int:10
			App fib.10Ti1.13 
		ExtFunApp print_int Ti2.12,
