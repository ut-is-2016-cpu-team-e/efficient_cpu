Let dummy
	Let Ti7
		Int:0
		Let Td8
			Float:0.000000
			ExtFunApp create_float_array Ti7,Td8,
	LetRec make m n 
		Let mat
			ExtFunApp create_array m,dummy,
			LetRec init i 
				Let Ti45
					Int:0
					IfLE Ti45 i
						Let Tu1
							Let Ta47
								Let Td46
									Float:0.000000
									ExtFunApp create_float_array n,Td46,
								Put mat i Ta47
							Let Ti49
								Let Ti48
									Int:1
									Sub i Ti48
								App initTi49 
						Unit
				Let Tu2
					Let Ti44
						Let Ti43
							Int:1
							Sub m Ti43
						App initTi44 
					Var mat
		Let a
			Let Ti9
				Int:2
				Let Ti10
					Int:2
					App makeTi9 Ti10 
			Let Tu6
				Let Ta12
					Let Ti11
						Int:0
						Get a Ti11
					Let Ti13
						Int:0
						Let Td14
							Float:1.000000
							Put Ta12 Ti13 Td14
				Let Tu5
					Let Ta16
						Let Ti15
							Int:0
							Get a Ti15
						Let Ti17
							Int:1
							Let Td18
								Float:2.000000
								Put Ta16 Ti17 Td18
					Let Tu4
						Let Ta20
							Let Ti19
								Int:1
								Get a Ti19
							Let Ti21
								Int:0
								Let Td22
									Float:3.000000
									Put Ta20 Ti21 Td22
						Let Tu3
							Let Ta24
								Let Ti23
									Int:1
									Get a Ti23
								Let Ti25
									Int:1
									Let Td26
										Float:4.000000
										Put Ta24 Ti25 Td26
							Let x1
								Let Td30
									Let Ta28
										Let Ti27
											Int:0
											Get a Ti27
										Let Ti29
											Int:0
											Get Ta28 Ti29
									Let Td34
										Let Ta32
											Let Ti31
												Int:0
												Get a Ti31
											Let Ti33
												Int:1
												Get Ta32 Ti33
										FAdd Td30 Td34
								Let x2
									Let Td38
										Let Ta36
											Let Ti35
												Int:1
												Get a Ti35
											Let Ti37
												Int:0
												Get Ta36 Ti37
										Let Td42
											Let Ta40
												Let Ti39
													Int:1
													Get a Ti39
												Let Ti41
													Int:1
													Get Ta40 Ti41
											FAdd Td38 Td42
									Let x
										FAdd x1 x2
										ExtFunApp print_float x,
