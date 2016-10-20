fundefs
f.14 (args) : $a1 (fargs) : 
	Let $a2
		Lwz $a26 4
		Let $a3
			Li 0
			Ans
				IfEq $a1 $a3
					Ans
						Li 0
					Let $a1
						Sub $a1 1
						Let Tu38
							Save $a2 x.13
							Let $a1
								CallCls $a26 (f.14) d:$a1 f:
								Let $a2
									Restore x.13
									Ans
										Add $a2 $a1
g.17 (args) : $a1 (fargs) : 
	Let $a2
		Lwz $a26 4
		Let $a3
			Li 0
			Ans
				IfEq $a1 $a3
					Ans
						Li 0
					Let $a1
						Sub $a1 1
						Let Tu39
							Save $a2 z.16
							Let $a1
								CallCls $a26 (g.17) d:$a1 f:
								Let $a2
									Restore z.16
									Ans
										Sub $a2 $a1
main
Let $a1
	Li 10
	Let $a26
		Mr $a0
		Let $a0
			Add $a0 8
			Let $a2
				SetL f.14
				Let $zero
					Stw $a2 $a26 0
					Let $zero
						Stw $a1 $a26 4
						Let $a1
							Li 20
							Let $a2
								Mr $a0
								Let $a0
									Add $a0 8
									Let $a3
										SetL g.17
										Let $zero
											Stw $a3 $a2 0
											Let $zero
												Stw $a1 $a2 4
												Let $a1
													Li 3
													Let Tu41
														Save $a2 g.17
														Let $a1
															CallCls $a26 (f.14) d:$a1 f:
															Let $a2
																Li 1
																Let $a26
																	Restore g.17
																	Let Tu42
																		Save $a1 Ti2.20
																		Let $a1
																			CallCls $a26 (g.17) d:$a2 f:
																			Let $a2
																				Restore Ti2.20
																				Let $a1
																					Add $a2 $a1
																					Ans
																						CallCls min_caml_print_int d:$a1 f:
