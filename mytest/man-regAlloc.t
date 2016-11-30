data

fundefs
write_header.188 (args) : (fargs) : 
	Let $a0
		Li 80
		Let $f30
			CallDir min_caml_print_byte d:$a0 f:
			Let $a0
				Li 51
				Let $f30
					CallDir min_caml_print_byte d:$a0 f:
					Let $a0
						Li 10
						Let $f30
							CallDir min_caml_print_byte d:$a0 f:
							Let $a0
								Li 100
								Let $f30
									CallDir min_caml_print_int d:$a0 f:
									Let $a0
										Li 32
										Let $f30
											CallDir min_caml_print_byte d:$a0 f:
											Let $a0
												Li 100
												Let $f30
													CallDir min_caml_print_int d:$a0 f:
													Let $a0
														Li 32
														Let $f30
															CallDir min_caml_print_byte d:$a0 f:
															Let $a0
																Li 255
																Let $f30
																	CallDir min_caml_print_int d:$a0 f:
																	Let $a0
																		Li 10
																		Ans
																			CallDir min_caml_print_byte d:$a0 f:
write.251 (args) : (fargs) : $f0 $f1 $f2 
	Let Tu450
		Save $f2 fb.254
		Let Tu449
			Save $f1 fg.253
			Let $a0
				CallDir min_caml_int_of_float d:f:$f0 
				Let $f0
					Restore fg.253
					Let Tu451
						Save $a0 r.354
						Let $a0
							CallDir min_caml_int_of_float d:f:$f0 
							Let $f0
								Restore fb.254
								Let Tu452
									Save $a0 g.355
									Let $a0
										CallDir min_caml_int_of_float d:f:$f0 
										Let $a1
											Li 32
											Let Tu453
												Save $a0 b.356
												Let $f30
													CallDir min_caml_print_byte d:$a1 f:
													Let $a0
														Restore r.354
														Let $f30
															CallDir min_caml_print_int d:$a0 f:
															Let $a0
																Li 32
																Let $f30
																	CallDir min_caml_print_byte d:$a0 f:
																	Let $a0
																		Restore g.355
																		Let $f30
																			CallDir min_caml_print_int d:$a0 f:
																			Let $a0
																				Li 32
																				Let $f30
																					CallDir min_caml_print_byte d:$a0 f:
																					Let $a0
																						Restore b.356
																						Ans
																							CallDir min_caml_print_int d:$a0 f:
write_rgb.191 (args) : $a0 (fargs) : 
	Let $a1
		Lwz $a4 4
		Let Tu456
			Save $a0 x.192
			Let Tu455
				Save $a1 a.365
				Let $f0
					CallDir min_caml_float_of_int d:$a0 f:
					Let $a0
						Restore a.365
						Let $a1
							Lwz $a0 0
							Let $a2
								Restore x.192
								Ans
									IfLE $a2 $a1
										Let $f0
											FLi 255.000000
											Let $f1
												FLi 0.000000
												Let $f2
													FLi 0.000000
													Ans
														CallDir write.251 d:f:$f0 $f1 $f2 
										Let $a1
											Lwz $a0 4
											Ans
												IfLE $a2 $a1
													Let $f0
														FLi 255.000000
														Let $f1
															FLi 255.000000
															Let $a1
																Lwz $a0 0
																Let $a1
																	Sub $a2 $a1
																	Let Tu534
																		Save $f0 Td83.333
																		Let Tu533
																			Save $a0 a.365
																			Let Tu532
																				Save $f1 Td84.344
																				Let $f0
																					CallDir min_caml_float_of_int d:$a1 f:
																					Let $f1
																						Restore Td84.344
																						Let $f0
																							FMul $f1 $f0
																							Let $a0
																								Restore a.365
																								Let $a1
																									Lwz $a0 4
																									Let $a0
																										Lwz $a0 0
																										Let $a0
																											Sub $a1 $a0
																											Let Tu535
																												Save $f0 Td89.336
																												Let $f0
																													CallDir min_caml_float_of_int d:$a0 f:
																													Let $f0
																														FReciprocal $f0
																														Let $f1
																															Restore Td89.336
																															Let $f1
																																FMul $f1 $f0
																																Let $f2
																																	FLi 0.000000
																																	Let $f0
																																		Restore Td83.333
																																		Ans
																																			CallDir write.251 d:f:$f0 $f1 $f2 
													Let $a1
														Lwz $a0 8
														Ans
															IfLE $a2 $a1
																Let $f0
																	FLi 255.000000
																	Let $a1
																		Lwz $a0 8
																		Let $a1
																			Sub $a1 $a2
																			Let Tu537
																				Save $a0 a.365
																				Let Tu536
																					Save $f0 Td101.327
																					Let $f0
																						CallDir min_caml_float_of_int d:$a1 f:
																						Let $f1
																							Restore Td101.327
																							Let $f0
																								FMul $f1 $f0
																								Let $a0
																									Restore a.365
																									Let $a1
																										Lwz $a0 8
																										Let $a0
																											Lwz $a0 4
																											Let $a0
																												Sub $a1 $a0
																												Let Tu538
																													Save $f0 Td106.319
																													Let $f0
																														CallDir min_caml_float_of_int d:$a0 f:
																														Let $f0
																															FReciprocal $f0
																															Let $f1
																																Restore Td106.319
																																Let $f0
																																	FMul $f1 $f0
																																	Let $f1
																																		FLi 255.000000
																																		Let $f2
																																			FLi 0.000000
																																			Ans
																																				CallDir write.251 d:f:$f0 $f1 $f2 
																Let $a1
																	Lwz $a0 12
																	Ans
																		IfLE $a2 $a1
																			Let $f0
																				FLi 0.000000
																				Let $f1
																					FLi 255.000000
																					Let $f2
																						FLi 255.000000
																						Let $a1
																							Lwz $a0 8
																							Let $a1
																								Sub $a2 $a1
																								Let Tu542
																									Save $f1 Td120.300
																									Let Tu541
																										Save $f0 Td119.299
																										Let Tu540
																											Save $a0 a.365
																											Let Tu539
																												Save $f2 Td121.310
																												Let $f0
																													CallDir min_caml_float_of_int d:$a1 f:
																													Let $f1
																														Restore Td121.310
																														Let $f0
																															FMul $f1 $f0
																															Let $a0
																																Restore a.365
																																Let $a1
																																	Lwz $a0 12
																																	Let $a0
																																		Lwz $a0 8
																																		Let $a0
																																			Sub $a1 $a0
																																			Let Tu543
																																				Save $f0 Td126.302
																																				Let $f0
																																					CallDir min_caml_float_of_int d:$a0 f:
																																					Let $f0
																																						FReciprocal $f0
																																						Let $f1
																																							Restore Td126.302
																																							Let $f2
																																								FMul $f1 $f0
																																								Let $f0
																																									Restore Td119.299
																																									Let $f1
																																										Restore Td120.300
																																										Ans
																																											CallDir write.251 d:f:$f0 $f1 $f2 
																			Let $a1
																				Lwz $a0 16
																				Ans
																					IfLE $a2 $a1
																						Let $f0
																							FLi 0.000000
																							Let $f1
																								FLi 255.000000
																								Let $a1
																									Lwz $a0 16
																									Let $a1
																										Sub $a1 $a2
																										Let Tu546
																											Save $f0 Td137.282
																											Let Tu545
																												Save $a0 a.365
																												Let Tu544
																													Save $f1 Td138.293
																													Let $f0
																														CallDir min_caml_float_of_int d:$a1 f:
																														Let $f1
																															Restore Td138.293
																															Let $f0
																																FMul $f1 $f0
																																Let $a0
																																	Restore a.365
																																	Let $a1
																																		Lwz $a0 16
																																		Let $a0
																																			Lwz $a0 12
																																			Let $a0
																																				Sub $a1 $a0
																																				Let Tu547
																																					Save $f0 Td143.285
																																					Let $f0
																																						CallDir min_caml_float_of_int d:$a0 f:
																																						Let $f0
																																							FReciprocal $f0
																																							Let $f1
																																								Restore Td143.285
																																								Let $f1
																																									FMul $f1 $f0
																																									Let $f2
																																										FLi 255.000000
																																										Let $f0
																																											Restore Td137.282
																																											Ans
																																												CallDir write.251 d:f:$f0 $f1 $f2 
																						Let $a1
																							Lwz $a0 20
																							Ans
																								IfLE $a2 $a1
																									Let $f0
																										FLi 255.000000
																										Let $a1
																											Lwz $a0 16
																											Let $a1
																												Sub $a2 $a1
																												Let Tu549
																													Save $a0 a.365
																													Let Tu548
																														Save $f0 Td155.276
																														Let $f0
																															CallDir min_caml_float_of_int d:$a1 f:
																															Let $f1
																																Restore Td155.276
																																Let $f0
																																	FMul $f1 $f0
																																	Let $a0
																																		Restore a.365
																																		Let $a1
																																			Lwz $a0 20
																																			Let $a0
																																				Lwz $a0 16
																																				Let $a0
																																					Sub $a1 $a0
																																					Let Tu550
																																						Save $f0 Td160.268
																																						Let $f0
																																							CallDir min_caml_float_of_int d:$a0 f:
																																							Let $f0
																																								FReciprocal $f0
																																								Let $f1
																																									Restore Td160.268
																																									Let $f0
																																										FMul $f1 $f0
																																										Let $f1
																																											FLi 0.000000
																																											Let $f2
																																												FLi 255.000000
																																												Ans
																																													CallDir write.251 d:f:$f0 $f1 $f2 
																									Let $f0
																										FLi 0.000000
																										Let $f1
																											FLi 0.000000
																											Let $f2
																												FLi 0.000000
																												Ans
																													CallDir write.251 d:f:$f0 $f1 $f2 
iloop.213 (args) : $a0 (fargs) : $f0 $f1 $f2 $f3 
	Let $a1
		Lwz $a4 4
		Let $a2
			Li 256
			Ans
				IfLE $a2 $a0
					Let $a0
						Li 256
						Ans
							CallCls $a1 (write_rgb.191) d:$a0 f:
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
																	FLi 4.000000
																	Ans
																		IfFLE $f0 $f1
																			Let $a0
																				Add $a0 1
																				Ans
																					CallCls $a4 (iloop.213) d:$a0 f:$f4 $f5 $f2 $f3 
																			Ans
																				CallCls $a1 (write_rgb.191) d:$a0 f:
xloop.201 (args) : $a0 $a1 (fargs) : 
	Let $a2
		Lwz $a4 4
		Let $a3
			Li 100
			Ans
				IfLE $a3 $a0
					Ans
						Nop
					Let Tu556
						Save $a4 xloop.201
						Let Tu555
							Save $a0 x.202
							Let Tu554
								Save $a2 write_rgb.191
								Let Tu553
									Save $a1 y.203
									Let $f0
										CallDir min_caml_float_of_int d:$a0 f:
										Let $a0
											Restore y.203
											Let Tu558
												Save $a0 y.203
												Let Tu557
													Save $f0 fx.209
													Let $f0
														CallDir min_caml_float_of_int d:$a0 f:
														Let $f1
															FLi 50.000000
															Let $f1
																FReciprocal $f1
																Let $f2
																	Restore fx.209
																	Let $f1
																		FMul $f2 $f1
																		Let $f2
																			FLi 1.500000
																			Let $f2
																				FSub $f1 $f2
																				Let $f1
																					FLi 50.000000
																					Let $f1
																						FReciprocal $f1
																						Let $f0
																							FMul $f0 $f1
																							Let $f1
																								FLi 1.000000
																								Let $f3
																									FSub $f0 $f1
																									Let $a4
																										Mr $fp
																										Let $fp
																											Add $fp 8
																											Let $a0
																												SetL iloop.213
																												Let $f30
																													Stw $a0 $a4 0
																													Let $a0
																														Restore write_rgb.191
																														Let $f30
																															Stw $a0 $a4 4
																															Let $a0
																																Li 0
																																Let $f0
																																	FLi 0.000000
																																	Let $f1
																																		FLi 0.000000
																																		Let $f30
																																			CallCls $a4 (iloop.213) d:$a0 f:$f0 $f1 $f2 $f3 
																																			Let $a0
																																				Restore x.202
																																				Let $a0
																																					Add $a0 1
																																					Let $a1
																																						Restore y.203
																																						Let $a4
																																							Restore xloop.201
																																							Ans
																																								CallCls $a4 (xloop.201) d:$a0 $a1 f:
yloop.193 (args) : $a0 (fargs) : 
	Let $a1
		Lwz $a4 4
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
								SetL xloop.201
								Let $f30
									Stw $a3 $a2 0
									Let $f30
										Stw $a1 $a2 4
										Let $a1
											Li 0
											Let Tu561
												Save $a4 yloop.193
												Let Tu560
													Save $a0 y.194
													Let $f30
														CallCls $a2 (xloop.201) d:$a1 $a0 f:
														Let $a0
															Restore y.194
															Let $a0
																Add $a0 1
																Let $a4
																	Restore yloop.193
																	Ans
																		CallCls $a4 (yloop.193) d:$a0 f:

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
																		SetL write_rgb.191
																		Let $f30
																			Stw $a2 $a1 0
																			Let $f30
																				Stw $a0 $a1 4
																				Let $a0
																					Mr $fp
																					Let $fp
																						Add $fp 8
																						Let $a2
																							SetL yloop.193
																							Let $f30
																								Stw $a2 $a0 0
																								Let $f30
																									Stw $a1 $a0 4
																									Let $f30
																										Nop
																										Let Tu563
																											Save $a0 yloop.193
																											Let $f30
																												CallDir write_header.188 d:f:
																												Let $a0
																													Li 0
																													Let $a4
																														Restore yloop.193
																														Let $f30
																															CallCls $a4 (yloop.193) d:$a0 f:
																															Let $a0
																																Li 0
																																Ans
																																	CallDir min_caml_print_int d:$a0 f:
