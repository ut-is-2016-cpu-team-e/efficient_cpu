Let x.13
	Int:10
	LetRec f.14 y.15 
		Let Ti9.28
			Int:0
			IfEq y.15 Ti9.28
				Int:0
				Let Ti12.29
					Let Ti11.30
						Let Ti10.31
							Int:1
							Sub y.15 Ti10.31
						App f.14Ti11.30 
					Add x.13 Ti12.29
		Let z.16
			Int:20
			LetRec g.17 y.18 
				Let Ti5.24
					Int:0
					IfEq y.18 Ti5.24
						Int:0
						Let Ti8.25
							Let Ti7.26
								Let Ti6.27
									Int:1
									Sub y.18 Ti6.27
								App g.17Ti7.26 
							Sub z.16 Ti8.25
				Let z.19
					Let Ti2.20
						Let Ti1.23
							Int:3
							App f.14Ti1.23 
						Let Ti4.21
							Let Ti3.22
								Int:1
								App g.17Ti3.22 
							Add Ti2.20 Ti4.21
					ExtFunApp print_int z.19,
