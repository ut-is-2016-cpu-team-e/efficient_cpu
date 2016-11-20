data
l.420 : 1.000000
l.419 : 1.500000
l.418 : 50.000000
l.417 : 4.000000
l.416 : 2.000000
l.400 : 255.000000
l.399 : 0.000000

fundefs
write_header.182 (args) : (fargs) : 
	Let $a0
		Li 80
		Let $f30
			CallCls min_caml_print_byte d:$a0 f:
			Let $a0
				Li 51
				Let $f30
					CallCls min_caml_print_byte d:$a0 f:
					Let $a0
						Li 10
						Let $f30
							CallCls min_caml_print_byte d:$a0 f:
							Let $a0
								Li 100
								Let $f30
									CallCls min_caml_print_int d:$a0 f:
									Let $a0
										Li 32
										Let $f30
											CallCls min_caml_print_byte d:$a0 f:
											Let $a0
												Li 100
												Let $f30
													CallCls min_caml_print_int d:$a0 f:
													Let $a0
														Li 32
														Let $f30
															CallCls min_caml_print_byte d:$a0 f:
															Let $a0
																Li 255
																Let $f30
																	CallCls min_caml_print_int d:$a0 f:
																	Let $a0
																		Li 10
																		Ans
																			CallCls min_caml_print_byte d:$a0 f:
write.245 (args) : (fargs) : $f0 $f1 $f2 
	Let Tu442
		Save $f2 fb.248
		Let Tu441
			Save $f1 fg.247
			Let $a0
				CallCls min_caml_int_of_float d:f:$f0 
				Let $f0
					Restore fg.247
					Let Tu443
						Save $a0 r.348
						Let $a0
							CallCls min_caml_int_of_float d:f:$f0 
							Let $f0
								Restore fb.248
								Let Tu444
									Save $a0 g.349
									Let $a0
										CallCls min_caml_int_of_float d:f:$f0 
										Let $a1
											Restore r.348
											Let Tu445
												Save $a0 b.350
												Let $f30
													CallCls min_caml_print_int d:$a1 f:
													Let $a0
														Restore g.349
														Let $f30
															CallCls min_caml_print_int d:$a0 f:
															Let $a0
																Restore b.350
																Ans
																	CallCls min_caml_print_int d:$a0 f:
write_rgb.185 (args) : $a0 (fargs) : 
	Let $a1
		Lwz $a26 4
		Let Tu448
			Save $a0 x.186
			Let Tu447
				Save $a1 a.353
				Let $f0
					CallCls min_caml_float_of_int d:$a0 f:
					Let $a0
						Restore a.353
						Let $a1
							Lwz $a0 0
							Let $a2
								Restore x.186
								Ans
									IfLE $a2 $a1
										Let $f0
											FLi l.400
											Let $f1
												FLi l.399
												Let $f2
													FLi l.399
													Ans
														CallCls write.245 d:f:$f0 $f1 $f2 
										Let $a1
											Lwz $a0 4
											Ans
												IfLE $a2 $a1
													Let $f0
														FLi l.400
														Let $f1
															FLi l.400
															Let $a1
																Lwz $a0 0
																Let $a1
																	Sub $a2 $a1
																	Let Tu526
																		Save $f0 Td80.327
																		Let Tu525
																			Save $a0 a.353
																			Let Tu524
																				Save $f1 Td81.338
																				Let $f0
																					CallCls min_caml_float_of_int d:$a1 f:
																					Let $f1
																						Restore Td81.338
																						Let $f0
																							FMul $f1 $f0
																							Let $a0
																								Restore a.353
																								Let $a1
																									Lwz $a0 4
																									Let $a0
																										Lwz $a0 0
																										Let $a0
																											Sub $a1 $a0
																											Let Tu527
																												Save $f0 Td86.330
																												Let $f0
																													CallCls min_caml_float_of_int d:$a0 f:
																													Let $f0
																														FReciprocal $f0
																														Let $f1
																															Restore Td86.330
																															Let $f1
																																FMul $f1 $f0
																																Let $f2
																																	FLi l.399
																																	Let $f0
																																		Restore Td80.327
																																		Ans
																																			CallCls write.245 d:f:$f0 $f1 $f2 
													Let $a1
														Lwz $a0 8
														Ans
															IfLE $a2 $a1
																Let $f0
																	FLi l.400
																	Let $a1
																		Lwz $a0 8
																		Let $a1
																			Sub $a1 $a2
																			Let Tu529
																				Save $a0 a.353
																				Let Tu528
																					Save $f0 Td98.321
																					Let $f0
																						CallCls min_caml_float_of_int d:$a1 f:
																						Let $f1
																							Restore Td98.321
																							Let $f0
																								FMul $f1 $f0
																								Let $a0
																									Restore a.353
																									Let $a1
																										Lwz $a0 8
																										Let $a0
																											Lwz $a0 4
																											Let $a0
																												Sub $a1 $a0
																												Let Tu530
																													Save $f0 Td103.313
																													Let $f0
																														CallCls min_caml_float_of_int d:$a0 f:
																														Let $f0
																															FReciprocal $f0
																															Let $f1
																																Restore Td103.313
																																Let $f0
																																	FMul $f1 $f0
																																	Let $f1
																																		FLi l.400
																																		Let $f2
																																			FLi l.399
																																			Ans
																																				CallCls write.245 d:f:$f0 $f1 $f2 
																Let $a1
																	Lwz $a0 12
																	Ans
																		IfLE $a2 $a1
																			Let $f0
																				FLi l.399
																				Let $f1
																					FLi l.400
																					Let $f2
																						FLi l.400
																						Let $a1
																							Lwz $a0 8
																							Let $a1
																								Sub $a2 $a1
																								Let Tu534
																									Save $f1 Td117.294
																									Let Tu533
																										Save $f0 Td116.293
																										Let Tu532
																											Save $a0 a.353
																											Let Tu531
																												Save $f2 Td118.304
																												Let $f0
																													CallCls min_caml_float_of_int d:$a1 f:
																													Let $f1
																														Restore Td118.304
																														Let $f0
																															FMul $f1 $f0
																															Let $a0
																																Restore a.353
																																Let $a1
																																	Lwz $a0 12
																																	Let $a0
																																		Lwz $a0 8
																																		Let $a0
																																			Sub $a1 $a0
																																			Let Tu535
																																				Save $f0 Td123.296
																																				Let $f0
																																					CallCls min_caml_float_of_int d:$a0 f:
																																					Let $f0
																																						FReciprocal $f0
																																						Let $f1
																																							Restore Td123.296
																																							Let $f2
																																								FMul $f1 $f0
																																								Let $f0
																																									Restore Td116.293
																																									Let $f1
																																										Restore Td117.294
																																										Ans
																																											CallCls write.245 d:f:$f0 $f1 $f2 
																			Let $a1
																				Lwz $a0 16
																				Ans
																					IfLE $a2 $a1
																						Let $f0
																							FLi l.399
																							Let $f1
																								FLi l.400
																								Let $a1
																									Lwz $a0 16
																									Let $a1
																										Sub $a1 $a2
																										Let Tu538
																											Save $f0 Td134.276
																											Let Tu537
																												Save $a0 a.353
																												Let Tu536
																													Save $f1 Td135.287
																													Let $f0
																														CallCls min_caml_float_of_int d:$a1 f:
																														Let $f1
																															Restore Td135.287
																															Let $f0
																																FMul $f1 $f0
																																Let $a0
																																	Restore a.353
																																	Let $a1
																																		Lwz $a0 16
																																		Let $a0
																																			Lwz $a0 12
																																			Let $a0
																																				Sub $a1 $a0
																																				Let Tu539
																																					Save $f0 Td140.279
																																					Let $f0
																																						CallCls min_caml_float_of_int d:$a0 f:
																																						Let $f0
																																							FReciprocal $f0
																																							Let $f1
																																								Restore Td140.279
																																								Let $f1
																																									FMul $f1 $f0
																																									Let $f2
																																										FLi l.400
																																										Let $f0
																																											Restore Td134.276
																																											Ans
																																												CallCls write.245 d:f:$f0 $f1 $f2 
																						Let $a1
																							Lwz $a0 20
																							Ans
																								IfLE $a2 $a1
																									Let $f0
																										FLi l.400
																										Let $a1
																											Lwz $a0 16
																											Let $a1
																												Sub $a2 $a1
																												Let Tu541
																													Save $a0 a.353
																													Let Tu540
																														Save $f0 Td152.270
																														Let $f0
																															CallCls min_caml_float_of_int d:$a1 f:
																															Let $f1
																																Restore Td152.270
																																Let $f0
																																	FMul $f1 $f0
																																	Let $a0
																																		Restore a.353
																																		Let $a1
																																			Lwz $a0 20
																																			Let $a0
																																				Lwz $a0 16
																																				Let $a0
																																					Sub $a1 $a0
																																					Let Tu542
																																						Save $f0 Td157.262
																																						Let $f0
																																							CallCls min_caml_float_of_int d:$a0 f:
																																							Let $f0
																																								FReciprocal $f0
																																								Let $f1
																																									Restore Td157.262
																																									Let $f0
																																										FMul $f1 $f0
																																										Let $f1
																																											FLi l.399
																																											Let $f2
																																												FLi l.400
																																												Ans
																																													CallCls write.245 d:f:$f0 $f1 $f2 
																									Let $f0
																										FLi l.399
																										Let $f1
																											FLi l.399
																											Let $f2
																												FLi l.399
																												Ans
																													CallCls write.245 d:f:$f0 $f1 $f2 
iloop.207 (args) : $a0 (fargs) : $f0 $f1 $f2 $f3 
	Let $a1
		Lwz $a26 4
		Let $a2
			Li 256
			Ans
				IfLE $a2 $a0
					Let $a0
						Li 256
						Ans
							CallCls $a1 (write_rgb.185) d:$a0 f:
					Let $f4
						FMul $f0 $f0
						Let $f5
							FMul $f1 $f1
							Let $f4
								FSub $f4 $f5
								Let $f4
									FAdd $f4 $f2
									Let $f5
										FLi l.416
										Let $f5
											FMul $f5 $f0
											Let $f5
												FMul $f5 $f1
												Let $f5
													FAdd $f5 $f3
													Let $f0
														FMul $f0 $f0
														Let $f1
															FMul $f1 $f1
															Let $f0
																FAdd $f0 $f1
																Let $f1
																	FLi l.417
																	Ans
																		IfFLE $f0 $f1
																			Let $a0
																				Add $a0 1
																				Ans
																					CallCls $a26 (iloop.207) d:$a0 f:$f4 $f5 $f2 $f3 
																			Ans
																				CallCls $a1 (write_rgb.185) d:$a0 f:
xloop.195 (args) : $a0 $a1 (fargs) : 
	Let $a2
		Lwz $a26 4
		Let $a3
			Li 100
			Ans
				IfLE $a3 $a0
					Ans
						Nop
					Let Tu548
						Save $a26 xloop.195
						Let Tu547
							Save $a0 x.196
							Let Tu546
								Save $a2 write_rgb.185
								Let Tu545
									Save $a1 y.197
									Let $f0
										CallCls min_caml_float_of_int d:$a0 f:
										Let $a0
											Restore y.197
											Let Tu550
												Save $a0 y.197
												Let Tu549
													Save $f0 fx.203
													Let $f0
														CallCls min_caml_float_of_int d:$a0 f:
														Let $f1
															FLi l.418
															Let $f1
																FReciprocal $f1
																Let $f2
																	Restore fx.203
																	Let $f1
																		FMul $f2 $f1
																		Let $f2
																			FLi l.419
																			Let $f2
																				FSub $f1 $f2
																				Let $f1
																					FLi l.418
																					Let $f1
																						FReciprocal $f1
																						Let $f0
																							FMul $f0 $f1
																							Let $f1
																								FLi l.420
																								Let $f3
																									FSub $f0 $f1
																									Let $a26
																										Mr $fp
																										Let $fp
																											Add $fp 8
																											Let $a0
																												SetL iloop.207
																												Let $f30
																													Stw $a0 $a26 0
																													Let $a0
																														Restore write_rgb.185
																														Let $f30
																															Stw $a0 $a26 4
																															Let $a0
																																Li 0
																																Let $f0
																																	FLi l.399
																																	Let $f1
																																		FLi l.399
																																		Let $f30
																																			CallCls $a26 (iloop.207) d:$a0 f:$f0 $f1 $f2 $f3 
																																			Let $a0
																																				Restore x.196
																																				Let $a0
																																					Add $a0 1
																																					Let $a1
																																						Restore y.197
																																						Let $a26
																																							Restore xloop.195
																																							Ans
																																								CallCls $a26 (xloop.195) d:$a0 $a1 f:
yloop.187 (args) : $a0 (fargs) : 
	Let $a1
		Lwz $a26 4
		Let $a2
			Li 100
			Ans
				IfLE $a2 $a0
					Ans
						Nop
					Let $a2
						Mr $fp
						Let $fp
							Add $fp 8
							Let $a3
								SetL xloop.195
								Let $f30
									Stw $a3 $a2 0
									Let $f30
										Stw $a1 $a2 4
										Let $a1
											Li 0
											Let Tu553
												Save $a26 yloop.187
												Let Tu552
													Save $a0 y.188
													Let $f30
														CallCls $a2 (xloop.195) d:$a1 $a0 f:
														Let $a0
															Restore y.188
															Let $a0
																Add $a0 1
																Let $a26
																	Restore yloop.187
																	Ans
																		CallCls $a26 (yloop.187) d:$a0 f:

main
Let $a0
	Li 6
	Let $a1
		Li 0
		Let $a0
			CallCls min_caml_create_array d:$a0 $a1 f:
			Let $a1
				Li 3
				Let $f30
					Stw $a1 $a0 0
					Let $a1
						Li 8
						Let $f30
							Stw $a1 $a0 4
							Let $a1
								Li 12
								Let $f30
									Stw $a1 $a0 8
									Let $a1
										Li 16
										Let $f30
											Stw $a1 $a0 12
											Let $a1
												Li 25
												Let $f30
													Stw $a1 $a0 16
													Let $a1
														Li 100
														Let $f30
															Stw $a1 $a0 20
															Let $a1
																Mr $fp
																Let $fp
																	Add $fp 8
																	Let $a2
																		SetL write_rgb.185
																		Let $f30
																			Stw $a2 $a1 0
																			Let $f30
																				Stw $a0 $a1 4
																				Let $a0
																					Mr $fp
																					Let $fp
																						Add $fp 8
																						Let $a2
																							SetL yloop.187
																							Let $f30
																								Stw $a2 $a0 0
																								Let $f30
																									Stw $a1 $a0 4
																									Let $f30
																										Nop
																										Let Tu555
																											Save $a0 yloop.187
																											Let $f30
																												CallCls write_header.182 d:f:
																												Let $a0
																													Li 0
																													Let $a26
																														Restore yloop.187
																														Let $f30
																															CallCls $a26 (yloop.187) d:$a0 f:
																															Let $a0
																																Li 0
																																Ans
																																	CallCls min_caml_print_int d:$a0 f:
