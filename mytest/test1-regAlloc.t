data

fundefs
countn.23 (args) : $a0 $a1 $a2 (fargs) : 
	Ans
		IfLE $a1 $a0
			Let $a0
				Sub $a0 $a1
				Let $a2
					Add $a2 1
					Ans
						CallDir countn.23 d:$a0 $a1 $a2 f:
			Ans
				Mr $a2
mymul.27 (args) : $a0 $a1 $a2 (fargs) : 
	Let $a3
		Li 0
		Ans
			IfEq $a0 $a3
				Ans
					Mr $a2
				Let $a0
					Sub $a0 1
					Let $a2
						Add $a2 $a1
						Ans
							CallDir mymul.27 d:$a0 $a1 $a2 f:
print_int.31 (args) : $a0 (fargs) : 
	Let $a2
		Li 0
		Let $a0
			IfLE $a2 $a0
				Ans
					Mr $a0
				Let $f30
					printchar 45
					Ans
						Neg $a0
			Let $a1
				Li 10
				Let Tu64
					Save $a0 b.34
					Let $a0
						CallDir countn.23 d:$a0 $a1 $a2 f:
						Let $a1
							Li 10
							Let $a2
								Li 0
								Let Tu65
									Save $a0 x.35
									Let $a0
										CallDir mymul.27 d:$a0 $a1 $a2 f:
										Let $a1
											Restore b.34
											Let $a0
												Sub $a1 $a0
												Let $a1
													Li 0
													Let $a2
														Restore x.35
														Let $a1
															IfLE $a2 $a1
																Ans
																	Li 0
																Let $a1
																	Add $a2 48
																	Let $f30
																		printchar $a1
																		Ans
																			Li 1
															Let $a0
																Add $a0 48
																Ans
																	printchar $a0

main
Let $a0
	Li 18
	Ans
		CallDir print_int.31 d:$a0 f:
