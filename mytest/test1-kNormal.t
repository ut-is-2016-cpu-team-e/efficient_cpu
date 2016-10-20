Let x
	Int:10
	LetRec f y 
		Let Ti9
			Int:0
			IfEq y Ti9
				Int:0
				Let Ti12
					Let Ti11
						Let Ti10
							Int:1
							Sub y Ti10
						App fTi11 
					Add x Ti12
		Let z
			Int:20
			LetRec g y 
				Let Ti5
					Int:0
					IfEq y Ti5
						Int:0
						Let Ti8
							Let Ti7
								Let Ti6
									Int:1
									Sub y Ti6
								App gTi7 
							Sub z Ti8
				Let z
					Let Ti2
						Let Ti1
							Int:3
							App fTi1 
						Let Ti4
							Let Ti3
								Int:1
								App gTi3 
							Add Ti2 Ti4
					ExtFunApp print_int z,
