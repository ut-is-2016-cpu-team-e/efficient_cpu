LetRec fibn 
	If
		Not
			LE
				Int:2
				Var n
		Var n
		Add
			App
				Var fib
				Sub
					Var n
					Int:2
			App
				Var fib
				Sub
					Var n
					Int:1
	App
		Var print_int
		App
			Var fib
			Int:10
