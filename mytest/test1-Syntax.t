Let x
	Float:3.000000
	LetRec fz 
		FAdd
			Var x
			Var z
		LetRec gz 
			FMul
				Var x
				Var z
			Let y
				FAdd
					App
						Var f
						Float:2.000000
					App
						Var g
						Float:4.000000
				App
					Var print_float
					Var y
