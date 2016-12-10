LetRec countna b c 
	If
		Not
			LE
				Var b
				Var a
		Var c
		App
			Var countn
			Sub
				Var a
				Var b
			Var b
			Add
				Var c
				Int:1
	LetRec mymula b sum 
		If
			Eq
				Var a
				Int:0
			Var sum
			App
				Var mymul
				Sub
					Var a
					Int:1
				Var b
				Add
					Var sum
					Var b
		LetRec print_inta 
			Let b
				If
					Not
						LE
							Int:0
							Var a
					Let Tu1
						printchar
							Int:45
						Neg
							Var a
					Var a
				Let x
					App
						Var countn
						Var b
						Int:10
						Int:0
					Let b
						Sub
							Var b
							App
								Var mymul
								Var x
								Int:10
								Int:0
						Let flag
							If
								Not
									LE
										Var x
										Int:0
								Let Tu2
									printchar
										Add
											Int:48
											Var x
									Int:1
								Int:0
							printchar
								Add
									Int:48
									Var b
			App
				Var print_int
				Int:18
