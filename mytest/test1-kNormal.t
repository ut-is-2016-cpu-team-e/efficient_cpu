LetRec fib n 
	Let Ti3
		Int:2
		IfLE Ti3 n
			Let Ti6
				Let Ti5
					Let Ti4
						Int:2
						Sub n Ti4
					App fibTi5 
				Let Ti9
					Let Ti8
						Let Ti7
							Int:1
							Sub n Ti7
						App fibTi8 
					Add Ti6 Ti9
			Var n
	Let Ti2
		Let Ti1
			Int:10
			App fibTi1 
		ExtFunApp print_int Ti2,
