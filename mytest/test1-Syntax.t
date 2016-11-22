LetRec gcdm n 
	If
		LE
			Var m
			Int:0
		Var n
		If
			LE
				Var m
				Var n
			App
				Var gcd
				Var m
				Sub
					Var n
					Var m
			App
				Var gcd
				Var n
				Sub
					Var m
					Var n
	App
		Var print_int
		App
			Var gcd
			Int:21600
			Int:337500
