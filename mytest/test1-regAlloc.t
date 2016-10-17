fundefs
loop3.282 (args) : $a1 (fargs) : 
	Let $a2
		Lwz $a26 16
		Let $a3
			Lwz $a26 12
			Let $a4
				Lwz $a26 8
				Let $a5
					Lwz $a26 4
					Let $a6
						Lwz $a26 0
						Let $a7
							Li 0
							Ans
								IfLE $a7 $a1
									Let $a7
										Slw $a3 2
										Let $a7
											Lwz $a4 $a7
											Let $a8
												Slw $a3 2
												Let $a4
													Lwz $a4 $a8
													Let $a8
														Slw $a2 3
														Let $f0
															Lfd $a4 $a8
															Let $a3
																Slw $a3 2
																Let $a3
																	Lwz $a6 $a3
																	Let $a4
																		Slw $a1 3
																		Let $f1
																			Lfd $a3 $a4
																			Let $a3
																				Slw $a1 2
																				Let $a3
																					Lwz $a5 $a3
																					Let $a4
																						Slw $a2 3
																						Let $f2
																							Lfd $a3 $a4
																							Let $f1
																								FMul $f1 $f2
																								Let $f0
																									FAdd $f0 $f1
																									Let $a2
																										Slw $a2 3
																										Let $zero
																											Stfd $f0 $a7 $a2
																											Let $a1
																												Sub $a1 1
																												Ans
																													CallCls loop3.282 d:$a1 f:
									Ans
										Nop
loop2.274 (args) : $a1 (fargs) : 
	Let $a2
		Lwz $a26 16
		Let $a3
			Lwz $a26 12
			Let $a4
				Lwz $a26 8
				Let $a5
					Lwz $a26 4
					Let $a6
						Lwz $a26 0
						Let $a7
							Li 0
							Ans
								IfLE $a7 $a1
									Let $a7
										Mr $a0
										Let $a0
											Add $a0 24
											Let $zero
												Stw $a1 $a7 16
												Let $zero
													Stw $a3 $a7 12
													Let $zero
														Stw $a4 $a7 8
														Let $zero
															Stw $a5 $a7 4
															Let $zero
																Stw $a6 $a7 0
																Let $a2
																	Sub $a2 1
																	Let Tu377
																		Save $a26 loop2.274
																		Let Tu376
																			Save $a1 j.275
																			Let $zero
																				CallCls loop3.282 d:$a2 f:
																				Let $a1
																					Restore j.275
																					Let $a1
																						Sub $a1 1
																						Ans
																							CallCls loop2.274 d:$a1 f:
									Ans
										Nop
loop1.269 (args) : $a1 (fargs) : 
	Let $a2
		Lwz $a26 16
		Let $a3
			Lwz $a26 12
			Let $a4
				Lwz $a26 8
				Let $a5
					Lwz $a26 4
					Let $a6
						Lwz $a26 0
						Let $a7
							Li 0
							Ans
								IfLE $a7 $a1
									Let $a7
										Mr $a0
										Let $a0
											Add $a0 24
											Let $zero
												Stw $a3 $a7 16
												Let $zero
													Stw $a1 $a7 12
													Let $zero
														Stw $a4 $a7 8
														Let $zero
															Stw $a5 $a7 4
															Let $zero
																Stw $a6 $a7 0
																Let $a2
																	Sub $a2 1
																	Let Tu380
																		Save $a26 loop1.269
																		Let Tu379
																			Save $a1 i.270
																			Let $zero
																				CallCls loop2.274 d:$a2 f:
																				Let $a1
																					Restore i.270
																					Let $a1
																						Sub $a1 1
																						Ans
																							CallCls loop1.269 d:$a1 f:
									Ans
										Nop
mul.140 (args) : $a1 (fargs) : 
	Let $a26
		Mr $a0
		Let $a0
			Add $a0 24
			Let $zero
				Stw $a3 $a26 16
				Let $zero
					Stw $a2 $a26 12
					Let $zero
						Stw $a6 $a26 8
						Let $zero
							Stw $a5 $a26 4
							Let $zero
								Stw $a4 $a26 0
								Let $a1
									Sub $a1 1
									Ans
										CallCls loop1.269 d:$a1 f:
init.256 (args) : $a1 (fargs) : 
	Let $a2
		Lwz $a26 4
		Let $a3
			Lwz $a26 0
			Let $a4
				Li 0
				Ans
					IfLE $a4 $a1
						Let $f0
							FLi l.325
							Let Tu385
								Save $a26 init.256
								Let Tu384
									Save $a3 mat.255
									Let Tu383
										Save $a1 i.257
										Let $a1
											CallCls min_caml_create_float_array d:$a2 f:$f0 
											Let $a2
												Restore i.257
												Let $a3
													Slw $a2 2
													Let $a4
														Restore mat.255
														Let $zero
															Stw $a1 $a4 $a3
															Let $a1
																Sub $a2 1
																Ans
																	CallCls init.256 d:$a1 f:
						Ans
							Nop
make.148 (args) : $a1 (fargs) : 
	Let $a3
		Lwz $a26 0
		Let Tu387
			Save $a1 m.149
			Let Tu386
				Save $a2 n.150
				Let $a1
					CallCls min_caml_create_array d:$a1 $a3 f:
					Let $a26
						Mr $a0
						Let $a0
							Add $a0 8
							Let $a2
								Restore n.150
								Let $zero
									Stw $a2 $a26 4
									Let $zero
										Stw $a1 $a26 0
										Let $a2
											Restore m.149
											Let $a2
												Sub $a2 1
												Let Tu388
													Save $a1 mat.255
													Let $zero
														CallCls init.256 d:$a2 f:
														Let $a1
															Restore mat.255
															Ans
																Mr $a1
main
Let $a1
	Li 0
	Let $f0
		FLi l.325
		Let $a1
			CallCls min_caml_create_float_array d:$a1 f:$f0 
			Let $a26
				Mr $a0
				Let $a0
					Add $a0 8
					Let $zero
						Stw $a1 $a26 0
						Let $a1
							Li 2
							Let $a2
								Li 3
								Let Tu390
									Save $a26 make.148
									Let $a1
										CallCls make.148 d:$a1 $a2 f:
										Let $a2
											Li 3
											Let $a3
												Li 2
												Let Tu391
													Save $a1 a.151
													Let $a1
														CallCls make.148 d:$a2 $a3 f:
														Let $a2
															Li 2
															Let $a3
																Li 2
																Let Tu392
																	Save $a1 b.152
																	Let $a6
																		CallCls make.148 d:$a2 $a3 f:
																		Let $a4
																			Restore a.151
																			Let $a1
																				Lwz $a4 0
																				Let $f0
																					FLi l.330
																					Let $zero
																						Stfd $f0 $a1 0
																						Let $a1
																							Lwz $a4 0
																							Let $f0
																								FLi l.333
																								Let $zero
																									Stfd $f0 $a1 8
																									Let $a1
																										Lwz $a4 0
																										Let $f0
																											FLi l.336
																											Let $zero
																												Stfd $f0 $a1 16
																												Let $a1
																													Lwz $a4 4
																													Let $f0
																														FLi l.339
																														Let $zero
																															Stfd $f0 $a1 0
																															Let $a1
																																Lwz $a4 4
																																Let $f0
																																	FLi l.342
																																	Let $zero
																																		Stfd $f0 $a1 8
																																		Let $a1
																																			Lwz $a4 4
																																			Let $f0
																																				FLi l.345
																																				Let $zero
																																					Stfd $f0 $a1 16
																																					Let $a5
																																						Restore b.152
																																						Let $a1
																																							Lwz $a5 0
																																							Let $f0
																																								FLi l.348
																																								Let $zero
																																									Stfd $f0 $a1 0
																																									Let $a1
																																										Lwz $a5 0
																																										Let $f0
																																											FLi l.351
																																											Let $zero
																																												Stfd $f0 $a1 8
																																												Let $a1
																																													Lwz $a5 4
																																													Let $f0
																																														FLi l.354
																																														Let $zero
																																															Stfd $f0 $a1 0
																																															Let $a1
																																																Lwz $a5 4
																																																Let $f0
																																																	FLi l.357
																																																	Let $zero
																																																		Stfd $f0 $a1 8
																																																		Let $a1
																																																			Lwz $a5 8
																																																			Let $f0
																																																				FLi l.360
																																																				Let $zero
																																																					Stfd $f0 $a1 0
																																																					Let $a1
																																																						Lwz $a5 8
																																																						Let $f0
																																																							FLi l.363
																																																							Let $zero
																																																								Stfd $f0 $a1 8
																																																								Let $a1
																																																									Li 2
																																																									Let $a2
																																																										Li 3
																																																										Let $a3
																																																											Li 2
																																																											Let Tu393
																																																												Save $a6 c.153
																																																												Let $zero
																																																													CallCls mul.140 d:$a1 $a2 $a3 $a4 $a5 $a6 f:
																																																													Let $a1
																																																														Restore c.153
																																																														Let $a2
																																																															Lwz $a1 0
																																																															Let $f0
																																																																Lfd $a2 0
																																																																Let Tu394
																																																																	Save $a1 c.153
																																																																	Let $a1
																																																																		CallCls min_caml_truncate d:f:$f0 
																																																																		Let $zero
																																																																			CallCls min_caml_print_int d:$a1 f:
																																																																			Let $zero
																																																																				Nop
																																																																				Let $zero
																																																																					CallCls min_caml_print_newline d:f:
																																																																					Let $a1
																																																																						Restore c.153
																																																																						Let $a2
																																																																							Lwz $a1 0
																																																																							Let $f0
																																																																								Lfd $a2 8
																																																																								Let Tu395
																																																																									Save $a1 c.153
																																																																									Let $a1
																																																																										CallCls min_caml_truncate d:f:$f0 
																																																																										Let $zero
																																																																											CallCls min_caml_print_int d:$a1 f:
																																																																											Let $zero
																																																																												Nop
																																																																												Let $zero
																																																																													CallCls min_caml_print_newline d:f:
																																																																													Let $a1
																																																																														Restore c.153
																																																																														Let $a2
																																																																															Lwz $a1 4
																																																																															Let $f0
																																																																																Lfd $a2 0
																																																																																Let Tu396
																																																																																	Save $a1 c.153
																																																																																	Let $a1
																																																																																		CallCls min_caml_truncate d:f:$f0 
																																																																																		Let $zero
																																																																																			CallCls min_caml_print_int d:$a1 f:
																																																																																			Let $zero
																																																																																				Nop
																																																																																				Let $zero
																																																																																					CallCls min_caml_print_newline d:f:
																																																																																					Let $a1
																																																																																						Restore c.153
																																																																																						Let $a1
																																																																																							Lwz $a1 4
																																																																																							Let $f0
																																																																																								Lfd $a1 8
																																																																																								Let $a1
																																																																																									CallCls min_caml_truncate d:f:$f0 
																																																																																									Let $zero
																																																																																										CallCls min_caml_print_int d:$a1 f:
																																																																																										Let $zero
																																																																																											Nop
																																																																																											Ans
																																																																																												CallCls min_caml_print_newline d:f:
