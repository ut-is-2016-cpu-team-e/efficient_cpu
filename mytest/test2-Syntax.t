Let dummy
	Array
		Int:0
		Float:0.000000
	LetRec makem n 
		Let mat
			Array
				Var m
				Var dummy
			LetRec initi 
				If
					Not
						LE
							Int:0
							Var i
					Unit
					Let Tu1
						Put
							Var mat
							Var i
							Array
								Var n
								Float:0.000000
						App
							Var init
							Sub
								Var i
								Int:1
				Let Tu2
					App
						Var init
						Sub
							Var m
							Int:1
					Var mat
		Let a
			App
				Var make
				Int:2
				Int:2
			Let Tu6
				Put
					Get
						Var a
						Int:0
					Int:0
					Float:1.000000
				Let Tu5
					Put
						Get
							Var a
							Int:0
						Int:1
						Float:2.000000
					Let Tu4
						Put
							Get
								Var a
								Int:1
							Int:0
							Float:3.000000
						Let Tu3
							Put
								Get
									Var a
									Int:1
								Int:1
								Float:4.000000
							Let x1
								FAdd
									Get
										Get
											Var a
											Int:0
										Int:0
									Get
										Get
											Var a
											Int:0
										Int:1
								Let x2
									FAdd
										Get
											Get
												Var a
												Int:1
											Int:0
										Get
											Get
												Var a
												Int:1
											Int:1
									Let x
										FAdd
											Var x1
											Var x2
										App
											Var print_float
											Var x
