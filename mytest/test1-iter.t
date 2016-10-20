Let x.13
	Int:10
	LetRec f.14 y.15 
		Let Ti9.28
			Int:0
			IfEq y.15 Ti9.28
				Int:0
				Let Ti10.31
					Int:1
					Let Ti11.30
						Sub y.15 Ti10.31
						Let Ti12.29
							App f.14 Ti11.30 
							Add x.13 Ti12.29
		Let z.16
			Int:20
			LetRec g.17 y.18 
				Let Ti5.24
					Int:0
					IfEq y.18 Ti5.24
						Int:0
						Let Ti6.27
							Int:1
							Let Ti7.26
								Sub y.18 Ti6.27
								Let Ti8.25
									App g.17 Ti7.26 
									Sub z.16 Ti8.25
				Let Ti1.23
					Int:3
					Let Ti2.20
						App f.14 Ti1.23 
						Let Ti3.22
							Int:1
							Let Ti4.21
								App g.17 Ti3.22 
								Let z.19
									Add Ti2.20 Ti4.21
									ExtFunApp print_int z.19,
