data
l.38 : 3.000000
l.37 : 4.560000
l.36 : 1.230000

fundefs
f.17 (args) : (fargs) : $f0 
	Let $a0
		Lwz $a26 12
		Let $a1
			Lwz $a26 8
			Let $a2
				Lwz $a26 4
				Let $a3
					Slw $a2 2
					Let $f1
						Lfd $a1 $a3
						Let $f2
							Lfd $a1 4
							Let $f1
								FAdd $f1 $f2
								Let $a1
									Slw $a2 2
									Let $f2
										Lfd $a0 $a1
										Let $f1
											FAdd $f1 $f2
											Ans
												FAdd $f1 $f0

main
Let $a0
	Li 3
	Let $f0
		FLi l.36
		Let $a0
			CallCls min_caml_create_float_array d:$a0 f:$f0 
			Let $a1
				Li 3
				Let $f0
					FLi l.37
					Let Tu45
						Save $a0 v1.14
						Let $a0
							CallCls min_caml_create_float_array d:$a1 f:$f0 
							Let $a1
								Li 2
								Let $a26
									Mr $fp
									Let $fp
										Add $fp 16
										Let $a2
											SetL f.17
											Let $f30
												Stw $a2 $a26 0
												Let $f30
													Stw $a0 $a26 12
													Let $a0
														Restore v1.14
														Let $f30
															Stw $a0 $a26 8
															Let $f30
																Stw $a1 $a26 4
																Let $f0
																	FLi l.38
																	Let $f0
																		CallCls $a26 (f.17) d:f:$f0 
																		Let $a0
																			CallCls min_caml_int_of_float d:f:$f0 
																			Ans
																				CallCls min_caml_print_int d:$a0 f:
