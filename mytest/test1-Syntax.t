Let x
	Int:10
	LetRec fy 
		If
			Eq
				Var y
				Int:0
			Int:0
			Add
				Var x
				App
					Var f
					Sub
						Var y
						Int:1
		Let z
			Int:20
			LetRec gy 
				If
					Eq
						Var y
						Int:0
					Int:0
					Sub
						Var z
						App
							Var g
							Sub
								Var y
								Int:1
				Let z
					Add
						App
							Var f
							Int:3
						App
							Var g
							Int:1
					App
						Var print_int
						Var z
