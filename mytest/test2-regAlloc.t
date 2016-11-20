data
l.126 : 4.000000
l.123 : 3.000000
l.120 : 2.000000
l.117 : 1.000000
l.110 : 0.000000

fundefs
init.97 (args) : $a0 (fargs) : 
	Let $a1
		Lwz $a26 8
		Let $a2
			Lwz $a26 4
			Let $a3
				Li 0
				Ans
					IfLE $a3 $a0
						Let $f0
							FLi l.110
							Let Tu142
								Save $a26 init.97
								Let Tu141
									Save $a2 mat.96
									Let Tu140
										Save $a0 i.98
										Let $a0
											CallCls min_caml_create_float_array d:$a1 f:$f0 
											Let $a1
												Restore i.98
												Let $a2
													Slw $a1 2
													Let $a3
														Restore mat.96
														Let $f30
															Stw $a0 $a3 $a2
															Let $a0
																Sub $a1 1
																Let $a26
																	Restore init.97
																	Ans
																		CallCls $a26 (init.97) d:$a0 f:
						Ans
							Nop
make.51 (args) : $a0 $a1 (fargs) : 
	Let $a2
		Lwz $a26 4
		Let Tu144
			Save $a0 m.52
			Let Tu143
				Save $a1 n.53
				Let $a0
					CallCls min_caml_create_array d:$a0 $a2 f:
					Let $a26
						Mr $fp
						Let $fp
							Add $fp 16
							Let $a1
								SetL init.97
								Let $f30
									Stw $a1 $a26 0
									Let $a1
										Restore n.53
										Let $f30
											Stw $a1 $a26 8
											Let $f30
												Stw $a0 $a26 4
												Let $a1
													Restore m.52
													Let $a1
														Sub $a1 1
														Let Tu145
															Save $a0 mat.96
															Let $f30
																CallCls $a26 (init.97) d:$a1 f:
																Let $a0
																	Restore mat.96
																	Ans
																		Mr $a0

main
Let $a0
	Li 0
	Let $f0
		FLi l.110
		Let $a0
			CallCls min_caml_create_float_array d:$a0 f:$f0 
			Let $a26
				Mr $fp
				Let $fp
					Add $fp 8
					Let $a1
						SetL make.51
						Let $f30
							Stw $a1 $a26 0
							Let $f30
								Stw $a0 $a26 4
								Let $a0
									Li 2
									Let $a1
										Li 2
										Let $a0
											CallCls $a26 (make.51) d:$a0 $a1 f:
											Let $a1
												Lwz $a0 0
												Let $f0
													FLi l.117
													Let $f30
														Stfd $f0 $a1 0
														Let $a1
															Lwz $a0 0
															Let $f0
																FLi l.120
																Let $f30
																	Stfd $f0 $a1 4
																	Let $a1
																		Lwz $a0 4
																		Let $f0
																			FLi l.123
																			Let $f30
																				Stfd $f0 $a1 0
																				Let $a1
																					Lwz $a0 4
																					Let $f0
																						FLi l.126
																						Let $f30
																							Stfd $f0 $a1 4
																							Let $a1
																								Lwz $a0 0
																								Let $f0
																									Lfd $a1 0
																									Let $a1
																										Lwz $a0 0
																										Let $f1
																											Lfd $a1 4
																											Let $f0
																												FAdd $f0 $f1
																												Let $a1
																													Lwz $a0 4
																													Let $f1
																														Lfd $a1 0
																														Let $a0
																															Lwz $a0 4
																															Let $f2
																																Lfd $a0 4
																																Let $f1
																																	FAdd $f1 $f2
																																	Let $f0
																																		FAdd $f0 $f1
																																		Ans
																																			CallCls min_caml_print_float d:f:$f0 
