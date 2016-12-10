LetRec countn a b c 
	IfLE b a
		Let Ti20
			Sub a b
			Let Ti22
				Let Ti21
					Int:1
					Add c Ti21
				App countnTi20 b Ti22 
		Var c
	LetRec mymul a b sum 
		Let Ti16
			Int:0
			IfEq a Ti16
				Var sum
				Let Ti18
					Let Ti17
						Int:1
						Sub a Ti17
					Let Ti19
						Add sum b
						App mymulTi18 b Ti19 
		LetRec print_int a 
			Let b
				Let Ti4
					Int:0
					IfLE Ti4 a
						Var a
						Let Tu1
							Let Ti5
								Int:45
								printchar Ti5
							Neg a
				Let x
					Let Ti6
						Int:10
						Let Ti7
							Int:0
							App countnb Ti6 Ti7 
					Let b
						Let Ti10
							Let Ti8
								Int:10
								Let Ti9
									Int:0
									App mymulx Ti8 Ti9 
							Sub b Ti10
						Let flag
							Let Ti11
								Int:0
								IfLE x Ti11
									Int:0
									Let Tu2
										Let Ti13
											Let Ti12
												Int:48
												Add Ti12 x
											printchar Ti13
										Int:1
							Let Ti15
								Let Ti14
									Int:48
									Add Ti14 b
								printchar Ti15
			Let Ti3
				Int:18
				App print_intTi3 
