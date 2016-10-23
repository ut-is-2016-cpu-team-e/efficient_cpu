data
l.17 : 4.000000
l.16 : 2.000000
l.15 : 3.000000

fundefs
f.6 (args) : (fargs) : $f0 
	Let $f1
		Lfd $a26 8
		Ans
			FAdd $f1 $f0
g.8 (args) : (fargs) : $f0 
	Let $f1
		Lfd $a26 8
		Ans
			FMul $f1 $f0

main
Let $f0
	FLi l.15
	Let $a26
		Mr $a0
		Let $a0
			Add $a0 16
			Let $a1
				SetL f.6
				Let $zero
					Stw $a1 $a26 0
					Let $zero
						Stfd $f0 $a26 8
						Let $a1
							Mr $a0
							Let $a0
								Add $a0 16
								Let $a2
									SetL g.8
									Let $zero
										Stw $a2 $a1 0
										Let $zero
											Stfd $f0 $a1 8
											Let $f0
												FLi l.16
												Let Tu25
													Save $a1 g.8
													Let $f0
														CallCls $a26 (f.6) d:f:$f0 
														Let $f1
															FLi l.17
															Let $a26
																Restore g.8
																Let Tu26
																	Save $f0 Td2.11
																	Let $f0
																		CallCls $a26 (g.8) d:f:$f1 
																		Let $f1
																			Restore Td2.11
																			Let $f0
																				FAdd $f1 $f0
																				Ans
																					CallCls min_caml_print_float d:f:$f0 
