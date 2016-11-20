Let v1
	Array
		Int:3
		Float:1.230000
	Let v2
		Array
			Int:3
			Float:4.560000
		Let i
			Int:2
			LetRec fx 
				FAdd
					FAdd
						FAdd
							Get
								Var v1
								Var i
							Get
								Var v1
								Sub
									Var i
									Int:1
						Get
							Var v2
							Var i
					Var x
				Let z
					App
						Var int_of_float
						App
							Var f
							Float:3.000000
					App
						Var print_int
						Var z
