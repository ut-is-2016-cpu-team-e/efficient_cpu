data

fundefs
fflag.390 (args) : (fargs) : $f0 
	Let $f1
		FLi 0.000000
		Ans
			IfFLE $f1 $f0
				Ans
					Li 1
				Ans
					Li -1
countn.392 (args) : $a0 $a1 $a2 (fargs) : 
	Ans
		IfLE $a1 $a0
			Let $a0
				Sub $a0 $a1
				Let $a2
					Add $a2 1
					Ans
						CallDir countn.392 d:$a0 $a1 $a2 f:
			Ans
				Mr $a2
print_int.396 (args) : $a0 (fargs) : 
	Let $a2
		Li 0
		Let $a0
			IfLE $a2 $a0
				Ans
					Mr $a0
				Let $a1
					Li 45
					Let $f30
						printchar $a1
						Ans
							Neg $a0
			Let $a1
				Li 10000
				Let Tu1033
					Save $a0 b.868
					Let $a0
						CallDir countn.392 d:$a0 $a1 $a2 f:
						Let $a1
							Li 10000
							Let $a1
								Mul $a0 $a1
								Let $a2
									Restore b.868
									Let $a1
										Sub $a2 $a1
										Let $a2
											Li 0
											Let $a0
												IfLE $a0 $a2
													Ans
														Li 0
													Let $a0
														Add $a0 48
														Let $f30
															printchar $a0
															Ans
																Li 1
												Let $a3
													Li 1000
													Let Tu1035
														Save $a0 flag.871
														Let Tu1034
															Save $a1 b.870
															Let $a0
																CallDir countn.392 d:$a1 $a3 $a2 f:
																Let $a1
																	Li 1000
																	Let $a1
																		Mul $a0 $a1
																		Let $a2
																			Restore b.870
																			Let $a1
																				Sub $a2 $a1
																				Let $a2
																					Li 0
																					Let $a0
																						IfLE $a0 $a2
																							Let $a0
																								Restore flag.871
																								Ans
																									IfEq $a0 1
																										Let $a0
																											Li 48
																											Let $f30
																												printchar $a0
																												Ans
																													Li 1
																										Ans
																											Li 0
																							Let $a0
																								Add $a0 48
																								Let $f30
																									printchar $a0
																									Ans
																										Li 1
																						Let $a3
																							Li 100
																							Let Tu1037
																								Save $a0 flag.874
																								Let Tu1036
																									Save $a1 b.873
																									Let $a0
																										CallDir countn.392 d:$a1 $a3 $a2 f:
																										Let $a1
																											Li 100
																											Let $a1
																												Mul $a0 $a1
																												Let $a2
																													Restore b.873
																													Let $a1
																														Sub $a2 $a1
																														Let $a2
																															Li 0
																															Let $a0
																																IfLE $a0 $a2
																																	Let $a0
																																		Restore flag.874
																																		Ans
																																			IfEq $a0 1
																																				Let $a0
																																					Li 48
																																					Let $f30
																																						printchar $a0
																																						Ans
																																							Li 1
																																				Ans
																																					Li 0
																																	Let $a0
																																		Add $a0 48
																																		Let $f30
																																			printchar $a0
																																			Ans
																																				Li 1
																																Let $a3
																																	Li 10
																																	Let Tu1039
																																		Save $a0 flag.877
																																		Let Tu1038
																																			Save $a1 b.876
																																			Let $a0
																																				CallDir countn.392 d:$a1 $a3 $a2 f:
																																				Let $a1
																																					Li 10
																																					Let $a1
																																						Mul $a0 $a1
																																						Let $a2
																																							Restore b.876
																																							Let $a1
																																								Sub $a2 $a1
																																								Let $a2
																																									Li 0
																																									Let $a0
																																										IfLE $a0 $a2
																																											Let $a0
																																												Restore flag.877
																																												Ans
																																													IfEq $a0 1
																																														Let $a0
																																															Li 48
																																															Let $f30
																																																printchar $a0
																																																Ans
																																																	Li 1
																																														Ans
																																															Li 0
																																											Let $a0
																																												Add $a0 48
																																												Let $f30
																																													printchar $a0
																																													Ans
																																														Li 1
																																										Let $a0
																																											Add $a1 48
																																											Ans
																																												printchar $a0
div2like_sub.859 (args) : (fargs) : $f0 $f1 
	Let $f2
		FLi 2.000000
		Ans
			IfFLE $f2 $f0
				Let $f2
					FLi 2.000000
					Let $f0
						FSub $f0 $f2
						Let $f2
							FLi 1.000000
							Let $f1
								FAdd $f1 $f2
								Ans
									CallDir div2like_sub.859 d:f:$f0 $f1 
				Ans
					FMr $f1
div2like.842 (args) : (fargs) : $f0 
	Let $f1
		FLi 0.000000
		Ans
			CallDir div2like_sub.859 d:f:$f0 $f1 
ftoi_ret_sub.844 (args) : $a0 $a1 (fargs) : $f0 
	Let Tu1042
		Save $a1 c.847
		Let Tu1041
			Save $a0 b.846
			Let Tu1040
				Save $f0 a.845
				Let $f0
					CallDir div2like.842 d:f:$f0 
					Let $f1
						FLi 1.000000
						Let $f2
							Restore a.845
							Ans
								IfFLE $f1 $f2
									Let $f1
										FLi 1.000000
										Let $f3
											FLi 2.000000
											Let $f3
												FMul $f0 $f3
												Let $f2
													FSub $f2 $f3
													Ans
														IfFLE $f1 $f2
															Let $a0
																Restore c.847
																Let $a1
																	Restore b.846
																	Let $a1
																		Add $a1 $a0
																		Let $a0
																			Add $a0 $a0
																			Ans
																				CallDir ftoi_ret_sub.844 d:$a1 $a0 f:$f0 
															Let $a0
																Restore c.847
																Let $a1
																	Add $a0 $a0
																	Let $a0
																		Restore b.846
																		Ans
																			CallDir ftoi_ret_sub.844 d:$a0 $a1 f:$f0 
									Let $a0
										Restore b.846
										Ans
											Mr $a0
ftoi_ret.824 (args) : (fargs) : $f0 
	Let $a0
		Li 0
		Let $a1
			Li 1
			Ans
				CallDir ftoi_ret_sub.844 d:$a0 $a1 f:$f0 
ftoi_big.826 (args) : $a0 (fargs) : $f0 
	Let $f1
		FLi 8388608.000000
		Let $f0
			FSub $f0 $f1
			Let $a1
				Li 8388608
				Let $a0
					Add $a0 $a1
					Ans
						IfFLE $f1 $f0
							Ans
								CallDir ftoi_big.826 d:$a0 f:$f0 
							Let Tu1043
								Save $a0 b_sub.837
								Let $a0
									CallDir ftoi_ret.824 d:f:$f0 
									Let $a1
										Restore b_sub.837
										Ans
											Add $a1 $a0
int_of_float.398 (args) : (fargs) : $f0 
	Let $f1
		fabs $f0
		Let Tu1044
			Save $f1 abs.822
			Let $a0
				CallDir fflag.390 d:f:$f0 
				Ans
					IfEq $a0 1
						Let $f0
							FLi 8388608.000000
							Let $f1
								Restore abs.822
								Ans
									IfFLE $f1 $f0
										Ans
											CallDir ftoi_ret.824 d:f:$f1 
										Let $a0
											Li 0
											Ans
												CallDir ftoi_big.826 d:$a0 f:$f1 
						Let $f0
							FLi 8388608.000000
							Let $f1
								Restore abs.822
								Ans
									IfFLE $f1 $f0
										Let $a0
											CallDir ftoi_ret.824 d:f:$f1 
											Ans
												Neg $a0
										Let $a0
											Li 0
											Let $a0
												CallDir ftoi_big.826 d:$a0 f:$f1 
												Ans
													Neg $a0
itof_ret_sub.803 (args) : $a0 (fargs) : $f0 $f1 
	Let $a1
		ShiftR1 $a0
		Ans
			IfEq $a0 0
				Ans
					FMr $f0
				Let $a0
					Sub $a0 $a1
					Let $a0
						Sub $a0 $a1
						Let $a2
							Li 0
							Ans
								IfLE $a0 $a2
									Let $f2
										FLi 2.000000
										Let $f1
											FMul $f1 $f2
											Ans
												CallDir itof_ret_sub.803 d:$a1 f:$f0 $f1 
									Let $f0
										FAdd $f0 $f1
										Let $f2
											FLi 2.000000
											Let $f1
												FMul $f1 $f2
												Ans
													CallDir itof_ret_sub.803 d:$a1 f:$f0 $f1 
itof_ret.785 (args) : $a0 (fargs) : 
	Let $f0
		FLi 0.000000
		Let $f1
			FLi 1.000000
			Ans
				CallDir itof_ret_sub.803 d:$a0 f:$f0 $f1 
itof_big.787 (args) : $a0 (fargs) : $f0 
	Let $a1
		Li 8388608
		Let $a0
			Sub $a0 $a1
			Let $f1
				FLi 8388608.000000
				Let $f0
					FAdd $f0 $f1
					Ans
						IfLE $a1 $a0
							Ans
								CallDir itof_big.787 d:$a0 f:$f0 
							Let Tu1045
								Save $f0 b_sub.798
								Let $f0
									CallDir itof_ret.785 d:$a0 f:
									Let $f1
										Restore b_sub.798
										Ans
											FAdd $f1 $f0
float_of_int.400 (args) : $a0 (fargs) : 
	Let $a1
		Li 0
		Let $a2
			IfLE $a0 $a1
				Ans
					Neg $a0
				Ans
					Mr $a0
			Let $a0
				IfLE $a0 $a1
					Ans
						Li -1
					Ans
						Li 1
				Ans
					IfEq $a0 1
						Let $a0
							Li 8388608
							Ans
								IfLE $a2 $a0
									Ans
										CallDir itof_ret.785 d:$a2 f:
									Let $f0
										FLi 0.000000
										Ans
											CallDir itof_big.787 d:$a2 f:$f0 
						Let $a0
							Li 8388608
							Ans
								IfLE $a2 $a0
									Let $f0
										CallDir itof_ret.785 d:$a2 f:
										Ans
											FNeg $f0
									Let $f0
										FLi 0.000000
										Let $f0
											CallDir itof_big.787 d:$a2 f:$f0 
											Ans
												FNeg $f0
write_header.421 (args) : (fargs) : 
	Let $a0
		Li 80
		Let $f30
			printchar $a0
			Let $a0
				Li 51
				Let $f30
					printchar $a0
					Let $a0
						Li 10
						Let $f30
							printchar $a0
							Let $a0
								Li 100
								Let $f30
									CallDir print_int.396 d:$a0 f:
									Let $a0
										Li 32
										Let $f30
											printchar $a0
											Let $a0
												Li 100
												Let $f30
													CallDir print_int.396 d:$a0 f:
													Let $a0
														Li 32
														Let $f30
															printchar $a0
															Let $a0
																Li 255
																Let $f30
																	CallDir print_int.396 d:$a0 f:
																	Let $a0
																		Li 10
																		Ans
																			printchar $a0
write.479 (args) : (fargs) : $f0 $f1 $f2 
	Let Tu1049
		Save $f2 fb.482
		Let Tu1048
			Save $f1 fg.481
			Let $a0
				CallDir int_of_float.398 d:f:$f0 
				Let $f0
					Restore fg.481
					Let Tu1050
						Save $a0 r.577
						Let $a0
							CallDir int_of_float.398 d:f:$f0 
							Let $f0
								Restore fb.482
								Let Tu1051
									Save $a0 g.578
									Let $a0
										CallDir int_of_float.398 d:f:$f0 
										Let $a1
											Li 32
											Let $f30
												printchar $a1
												Let $a1
													Restore r.577
													Let Tu1052
														Save $a0 b.579
														Let $f30
															CallDir print_int.396 d:$a1 f:
															Let $a0
																Li 32
																Let $f30
																	printchar $a0
																	Let $a0
																		Restore g.578
																		Let $f30
																			CallDir print_int.396 d:$a0 f:
																			Let $a0
																				Li 32
																				Let $f30
																					printchar $a0
																					Let $a0
																						Restore b.579
																						Ans
																							CallDir print_int.396 d:$a0 f:
write_rgb.424 (args) : $a0 (fargs) : 
	Let $a1
		Lwz $a26 1
		Let Tu1055
			Save $a0 x.425
			Let Tu1054
				Save $a1 a.588
				Let $f0
					CallDir float_of_int.400 d:$a0 f:
					Let $a0
						Restore a.588
						Let $a1
							Lwz $a0 0
							Let $a2
								Restore x.425
								Ans
									IfLE $a2 $a1
										Let $f0
											FLi 255.000000
											Let $f1
												FLi 0.000000
												Ans
													CallDir write.479 d:f:$f0 $f1 $f1 
										Let $a1
											Lwz $a0 1
											Ans
												IfLE $a2 $a1
													Let $f0
														FLi 255.000000
														Let $a1
															Lwz $a0 0
															Let $a1
																Sub $a2 $a1
																Let Tu1112
																	Save $f0 Td86.557
																	Let Tu1111
																		Save $a0 a.588
																		Let $f0
																			CallDir float_of_int.400 d:$a1 f:
																			Let $f1
																				FLi 255.000000
																				Let $f0
																					FMul $f1 $f0
																					Let $a0
																						Restore a.588
																						Let $a1
																							Lwz $a0 1
																							Let $a0
																								Lwz $a0 0
																								Let $a0
																									Sub $a1 $a0
																									Let Tu1113
																										Save $f0 Td92.560
																										Let $f0
																											CallDir float_of_int.400 d:$a0 f:
																											Let $f1
																												Restore Td92.560
																												Let $f1
																													FDiv $f1 $f0
																													Let $f2
																														FLi 0.000000
																														Let $f0
																															Restore Td86.557
																															Ans
																																CallDir write.479 d:f:$f0 $f1 $f2 
													Let $a1
														Lwz $a0 2
														Ans
															IfLE $a2 $a1
																Let $a1
																	Lwz $a0 2
																	Let $a1
																		Sub $a1 $a2
																		Let Tu1114
																			Save $a0 a.588
																			Let $f0
																				CallDir float_of_int.400 d:$a1 f:
																				Let $f1
																					FLi 255.000000
																					Let $f0
																						FMul $f1 $f0
																						Let $a0
																							Restore a.588
																							Let $a1
																								Lwz $a0 2
																								Let $a0
																									Lwz $a0 1
																									Let $a0
																										Sub $a1 $a0
																										Let Tu1115
																											Save $f0 Td108.544
																											Let $f0
																												CallDir float_of_int.400 d:$a0 f:
																												Let $f1
																													Restore Td108.544
																													Let $f0
																														FDiv $f1 $f0
																														Let $f1
																															FLi 255.000000
																															Let $f2
																																FLi 0.000000
																																Ans
																																	CallDir write.479 d:f:$f0 $f1 $f2 
																Let $a1
																	Lwz $a0 3
																	Ans
																		IfLE $a2 $a1
																			Let $f0
																				FLi 0.000000
																				Let $f1
																					FLi 255.000000
																					Let $a1
																						Lwz $a0 2
																						Let $a1
																							Sub $a2 $a1
																							Let Tu1118
																								Save $f1 Td121.526
																								Let Tu1117
																									Save $f0 Td120.525
																									Let Tu1116
																										Save $a0 a.588
																										Let $f0
																											CallDir float_of_int.400 d:$a1 f:
																											Let $f1
																												FLi 255.000000
																												Let $f0
																													FMul $f1 $f0
																													Let $a0
																														Restore a.588
																														Let $a1
																															Lwz $a0 3
																															Let $a0
																																Lwz $a0 2
																																Let $a0
																																	Sub $a1 $a0
																																	Let Tu1119
																																		Save $f0 Td127.528
																																		Let $f0
																																			CallDir float_of_int.400 d:$a0 f:
																																			Let $f1
																																				Restore Td127.528
																																				Let $f2
																																					FDiv $f1 $f0
																																					Let $f0
																																						Restore Td120.525
																																						Let $f1
																																							Restore Td121.526
																																							Ans
																																								CallDir write.479 d:f:$f0 $f1 $f2 
																			Let $a1
																				Lwz $a0 4
																				Ans
																					IfLE $a2 $a1
																						Let $f0
																							FLi 0.000000
																							Let $a1
																								Lwz $a0 4
																								Let $a1
																									Sub $a1 $a2
																									Let Tu1121
																										Save $f0 Td137.509
																										Let Tu1120
																											Save $a0 a.588
																											Let $f0
																												CallDir float_of_int.400 d:$a1 f:
																												Let $f1
																													FLi 255.000000
																													Let $f0
																														FMul $f1 $f0
																														Let $a0
																															Restore a.588
																															Let $a1
																																Lwz $a0 4
																																Let $a0
																																	Lwz $a0 3
																																	Let $a0
																																		Sub $a1 $a0
																																		Let Tu1122
																																			Save $f0 Td143.512
																																			Let $f0
																																				CallDir float_of_int.400 d:$a0 f:
																																				Let $f1
																																					Restore Td143.512
																																					Let $f1
																																						FDiv $f1 $f0
																																						Let $f2
																																							FLi 255.000000
																																							Let $f0
																																								Restore Td137.509
																																								Ans
																																									CallDir write.479 d:f:$f0 $f1 $f2 
																						Let $a1
																							Lwz $a0 5
																							Ans
																								IfLE $a2 $a1
																									Let $a1
																										Lwz $a0 4
																										Let $a1
																											Sub $a2 $a1
																											Let Tu1123
																												Save $a0 a.588
																												Let $f0
																													CallDir float_of_int.400 d:$a1 f:
																													Let $f1
																														FLi 255.000000
																														Let $f0
																															FMul $f1 $f0
																															Let $a0
																																Restore a.588
																																Let $a1
																																	Lwz $a0 5
																																	Let $a0
																																		Lwz $a0 4
																																		Let $a0
																																			Sub $a1 $a0
																																			Let Tu1124
																																				Save $f0 Td159.496
																																				Let $f0
																																					CallDir float_of_int.400 d:$a0 f:
																																					Let $f1
																																						Restore Td159.496
																																						Let $f0
																																							FDiv $f1 $f0
																																							Let $f1
																																								FLi 0.000000
																																								Let $f2
																																									FLi 255.000000
																																									Ans
																																										CallDir write.479 d:f:$f0 $f1 $f2 
																									Let $f0
																										FLi 0.000000
																										Ans
																											CallDir write.479 d:f:$f0 $f0 $f0 
iloop.445 (args) : $a0 (fargs) : $f0 $f1 $f2 $f3 
	Let $a1
		Lwz $a26 1
		Let $a2
			Li 256
			Ans
				IfLE $a2 $a0
					Let $a0
						Li 256
						Ans
							CallCls $a1 (write_rgb.424) d:$a0 f:
					Let $f4
						FMul $f0 $f0
						Let $f5
							FMul $f1 $f1
							Let $f4
								FSub $f4 $f5
								Let $f4
									FAdd $f4 $f2
									Let $f5
										FLi 2.000000
										Let $f5
											FMul $f5 $f0
											Let $f5
												FMAdd $f5 $f1 $f3
												Let $f1
													FMul $f1 $f1
													Let $f0
														FMAdd $f0 $f0 $f1
														Let $f1
															FLi 4.000000
															Ans
																IfFLE $f0 $f1
																	Let $a0
																		Add $a0 1
																		Ans
																			CallCls $a26 (iloop.445) d:$a0 f:$f4 $f5 $f2 $f3 
																	Ans
																		CallCls $a1 (write_rgb.424) d:$a0 f:
xloop.433 (args) : $a0 $a1 (fargs) : 
	Let $a2
		Lwz $a26 1
		Let $a3
			Li 100
			Ans
				IfLE $a3 $a0
					Ans
						Nop
					Let Tu1130
						Save $a26 xloop.433
						Let Tu1129
							Save $a0 x.434
							Let Tu1128
								Save $a2 write_rgb.424
								Let Tu1127
									Save $a1 y.435
									Let $f0
										CallDir float_of_int.400 d:$a0 f:
										Let $a0
											Restore y.435
											Let Tu1132
												Save $a0 y.435
												Let Tu1131
													Save $f0 fx.441
													Let $f0
														CallDir float_of_int.400 d:$a0 f:
														Let $f1
															FLi 50.000000
															Let $f2
																Restore fx.441
																Let $f2
																	FDiv $f2 $f1
																	Let $f3
																		FLi 1.500000
																		Let $f2
																			FSub $f2 $f3
																			Let $f0
																				FDiv $f0 $f1
																				Let $f1
																					FLi 1.000000
																					Let $f3
																						FSub $f0 $f1
																						Let $a26
																							Mr $fp
																							Let $fp
																								Add $fp 2
																								Let $a0
																									SetL iloop.445
																									Let $f30
																										Stw $a0 $a26 0
																										Let $a0
																											Restore write_rgb.424
																											Let $f30
																												Stw $a0 $a26 1
																												Let $a0
																													Li 0
																													Let $f0
																														FLi 0.000000
																														Let $f30
																															CallCls $a26 (iloop.445) d:$a0 f:$f0 $f0 $f2 $f3 
																															Let $a0
																																Restore x.434
																																Let $a0
																																	Add $a0 1
																																	Let $a1
																																		Restore y.435
																																		Let $a26
																																			Restore xloop.433
																																			Ans
																																				CallCls $a26 (xloop.433) d:$a0 $a1 f:
yloop.426 (args) : $a0 (fargs) : 
	Let $a1
		Lwz $a26 1
		Let $a2
			Li 100
			Ans
				IfLE $a2 $a0
					Ans
						Nop
					Let $a2
						Mr $fp
						Let $fp
							Add $fp 2
							Let $a3
								SetL xloop.433
								Let $f30
									Stw $a3 $a2 0
									Let $f30
										Stw $a1 $a2 1
										Let $a1
											Li 0
											Let Tu1135
												Save $a26 yloop.426
												Let Tu1134
													Save $a0 y.427
													Let $f30
														CallCls $a2 (xloop.433) d:$a1 $a0 f:
														Let $a0
															Restore y.427
															Let $a0
																Add $a0 1
																Let $a26
																	Restore yloop.426
																	Ans
																		CallCls $a26 (yloop.426) d:$a0 f:

main
Let $a0
	Li 6
	Let $a1
		Li 0
		Let $a0
			CallDir min_caml_create_array d:$a0 $a1 f:
			Let $a1
				Li 3
				Let $f30
					Stw $a1 $a0 0
					Let $a1
						Li 8
						Let $f30
							Stw $a1 $a0 1
							Let $a1
								Li 12
								Let $f30
									Stw $a1 $a0 2
									Let $a1
										Li 16
										Let $f30
											Stw $a1 $a0 3
											Let $a1
												Li 25
												Let $f30
													Stw $a1 $a0 4
													Let $a1
														Li 100
														Let $f30
															Stw $a1 $a0 5
															Let $a1
																Mr $fp
																Let $fp
																	Add $fp 2
																	Let $a2
																		SetL write_rgb.424
																		Let $f30
																			Stw $a2 $a1 0
																			Let $f30
																				Stw $a0 $a1 1
																				Let $a0
																					Mr $fp
																					Let $fp
																						Add $fp 2
																						Let $a2
																							SetL yloop.426
																							Let $f30
																								Stw $a2 $a0 0
																								Let $f30
																									Stw $a1 $a0 1
																									Let $f30
																										Nop
																										Let Tu1137
																											Save $a0 yloop.426
																											Let $f30
																												CallDir write_header.421 d:f:
																												Let $a0
																													Li 0
																													Let $a26
																														Restore yloop.426
																														Let $f30
																															CallCls $a26 (yloop.426) d:$a0 f:
																															Ans
																																Nop
