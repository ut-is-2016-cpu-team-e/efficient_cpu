LetRec countn.23 a.24 b.25 c.26 
	IfLE b.25 a.24
		Let Ti20.56
			Sub a.24 b.25
			Let Ti.e.62
				Int:1
				Let Ti22.57
					Add c.26 Ti.e.62
					App countn.23 Ti20.56 b.25 Ti22.57 
		Var c.26
	LetRec mymul.27 a.28 b.29 sum.30 
		Let Ti16.52
			Int:0
			IfEq a.28 Ti16.52
				Var sum.30
				Let Ti.e.61
					Int:1
					Let Ti18.53
						Sub a.28 Ti.e.61
						Let Ti19.54
							Add sum.30 b.29
							App mymul.27 Ti18.53 b.29 Ti19.54 
		LetRec print_int.31 a.32 
			Let Ti4.49
				Int:0
				Let b.34
					IfLE Ti4.49 a.32
						Var a.32
						Let Ti5.51
							Int:45
							Let Tu1.50
								printchar Ti5.51
								Neg a.32
					Let Ti6.47
						Int:10
						Let x.35
							App countn.23 b.34 Ti6.47 Ti4.49 
							Let Ti8.45
								Int:10
								Let Ti9.46
									Int:0
									Let Ti10.44
										App mymul.27 x.35 Ti8.45 Ti9.46 
										Let b.36
											Sub b.34 Ti10.44
											Let Ti11.40
												Int:0
												Let flag.37
													IfLE x.35 Ti11.40
														Int:0
														Let Ti.e.59
															Int:48
															Let Ti13.42
																Add Ti.e.59 x.35
																Let Tu2.41
																	printchar Ti13.42
																	Int:1
													Let Ti.e.60
														Int:48
														Let Ti15.38
															Add Ti.e.60 b.36
															printchar Ti15.38
			Let Ti3.33
				Int:18
				App print_int.31 Ti3.33 
