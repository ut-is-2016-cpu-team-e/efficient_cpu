LetRec countn.23 a.24 b.25 c.26 
	IfLE b.25 a.24
		Let Ti20.56
			Sub a.24 b.25
			Let Ti22.57
				Let Ti21.58
					Int:1
					Add c.26 Ti21.58
				App countn.23Ti20.56 b.25 Ti22.57 
		Var c.26
	LetRec mymul.27 a.28 b.29 sum.30 
		Let Ti16.52
			Int:0
			IfEq a.28 Ti16.52
				Var sum.30
				Let Ti18.53
					Let Ti17.55
						Int:1
						Sub a.28 Ti17.55
					Let Ti19.54
						Add sum.30 b.29
						App mymul.27Ti18.53 b.29 Ti19.54 
		LetRec print_int.31 a.32 
			Let b.34
				Let Ti4.49
					Int:0
					IfLE Ti4.49 a.32
						Var a.32
						Let Tu1.50
							Let Ti5.51
								Int:45
								printchar Ti5.51
							Neg a.32
				Let x.35
					Let Ti6.47
						Int:10
						Let Ti7.48
							Int:0
							App countn.23b.34 Ti6.47 Ti7.48 
					Let b.36
						Let Ti10.44
							Let Ti8.45
								Int:10
								Let Ti9.46
									Int:0
									App mymul.27x.35 Ti8.45 Ti9.46 
							Sub b.34 Ti10.44
						Let flag.37
							Let Ti11.40
								Int:0
								IfLE x.35 Ti11.40
									Int:0
									Let Tu2.41
										Let Ti13.42
											Let Ti12.43
												Int:48
												Add Ti12.43 x.35
											printchar Ti13.42
										Int:1
							Let Ti15.38
								Let Ti14.39
									Int:48
									Add Ti14.39 b.36
								printchar Ti15.38
			Let Ti3.33
				Int:18
				App print_int.31Ti3.33 
