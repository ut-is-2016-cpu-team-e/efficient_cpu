data

fundefs
countn.255 (args) : $a0 $a1 $a2 (fargs) : 
	Ans
		IfLE $a1 $a0
			Let $a0
				Sub $a0 $a1
				Let $a2
					Add $a2 1
					Ans
						CallDir countn.255 d:$a0 $a1 $a2 f:
			Ans
				Mr $a2
mymul.259 (args) : $a0 $a1 $a2 (fargs) : 
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
							CallDir mymul.259 d:$a0 $a1 $a2 f:

main
Let $a0
	SetExt 288
	Let $f0
		Readfloat
		Let $f30
			Stfd $f0 $a0 0
			Let $f0
				Readfloat
				Let $f30
					Stfd $f0 $a0 4
					Let $f0
						Readfloat
						Let $f30
							Stfd $f0 $a0 8
							Let $f0
								Lfd $a0 0
								Let $f1
									FLi 3.000000
									Let $f0
										FAdd $f1 $f0
										Let $f1
											FLi 6.000000
											Ans
												IfFEq $f0 $f1
													Let $a0
														Li 3
														Let $a1
															Li 10000
															Let $a2
																Li 0
																Let $a0
																	CallDir countn.255 d:$a0 $a1 $a2 f:
																	Let $a1
																		Li 10000
																		Let $a2
																			Li 0
																			Let Tu1292
																				Save $a0 x.567.706
																				Let $a0
																					CallDir mymul.259 d:$a0 $a1 $a2 f:
																					Let $a1
																						Li 3
																						Let $a0
																							Sub $a1 $a0
																							Let $a1
																								Li 0
																								Let $a2
																									Restore x.567.706
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
																										Let $a2
																											Li 1000
																											Let $a3
																												Li 0
																												Let Tu1294
																													Save $a1 flag.569.712
																													Let Tu1293
																														Save $a0 b.568.710
																														Let $a0
																															CallDir countn.255 d:$a0 $a2 $a3 f:
																															Let $a1
																																Li 1000
																																Let $a2
																																	Li 0
																																	Let Tu1295
																																		Save $a0 x.570.715
																																		Let $a0
																																			CallDir mymul.259 d:$a0 $a1 $a2 f:
																																			Let $a1
																																				Restore b.568.710
																																				Let $a0
																																					Sub $a1 $a0
																																					Let $a1
																																						Li 0
																																						Let $a2
																																							Restore x.570.715
																																							Let $a1
																																								IfLE $a2 $a1
																																									Let $a1
																																										Li 1
																																										Let $a2
																																											Restore flag.569.712
																																											Ans
																																												IfEq $a2 $a1
																																													Let $f30
																																														printchar 48
																																														Ans
																																															Li 1
																																													Ans
																																														Li 0
																																									Let $a1
																																										Add $a2 48
																																										Let $f30
																																											printchar $a1
																																											Ans
																																												Li 1
																																								Let $a2
																																									Li 100
																																									Let $a3
																																										Li 0
																																										Let Tu1297
																																											Save $a1 flag.572.721
																																											Let Tu1296
																																												Save $a0 b.571.719
																																												Let $a0
																																													CallDir countn.255 d:$a0 $a2 $a3 f:
																																													Let $a1
																																														Li 100
																																														Let $a2
																																															Li 0
																																															Let Tu1298
																																																Save $a0 x.573.724
																																																Let $a0
																																																	CallDir mymul.259 d:$a0 $a1 $a2 f:
																																																	Let $a1
																																																		Restore b.571.719
																																																		Let $a0
																																																			Sub $a1 $a0
																																																			Let $a1
																																																				Li 0
																																																				Let $a2
																																																					Restore x.573.724
																																																					Let $a1
																																																						IfLE $a2 $a1
																																																							Let $a1
																																																								Li 1
																																																								Let $a2
																																																									Restore flag.572.721
																																																									Ans
																																																										IfEq $a2 $a1
																																																											Let $f30
																																																												printchar 48
																																																												Ans
																																																													Li 1
																																																											Ans
																																																												Li 0
																																																							Let $a1
																																																								Add $a2 48
																																																								Let $f30
																																																									printchar $a1
																																																									Ans
																																																										Li 1
																																																						Let $a2
																																																							Li 10
																																																							Let $a3
																																																								Li 0
																																																								Let Tu1300
																																																									Save $a1 flag.575.730
																																																									Let Tu1299
																																																										Save $a0 b.574.728
																																																										Let $a0
																																																											CallDir countn.255 d:$a0 $a2 $a3 f:
																																																											Let $a1
																																																												Li 10
																																																												Let $a2
																																																													Li 0
																																																													Let Tu1301
																																																														Save $a0 x.576.733
																																																														Let $a0
																																																															CallDir mymul.259 d:$a0 $a1 $a2 f:
																																																															Let $a1
																																																																Restore b.574.728
																																																																Let $a0
																																																																	Sub $a1 $a0
																																																																	Let $a1
																																																																		Li 0
																																																																		Let $a2
																																																																			Restore x.576.733
																																																																			Let $a1
																																																																				IfLE $a2 $a1
																																																																					Let $a1
																																																																						Li 1
																																																																						Let $a2
																																																																							Restore flag.575.730
																																																																							Ans
																																																																								IfEq $a2 $a1
																																																																									Let $f30
																																																																										printchar 48
																																																																										Ans
																																																																											Li 1
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
													Let $a0
														Li 2
														Let $a1
															Li 10000
															Let $a2
																Li 0
																Let $a0
																	CallDir countn.255 d:$a0 $a1 $a2 f:
																	Let $a1
																		Li 10000
																		Let $a2
																			Li 0
																			Let Tu1302
																				Save $a0 x.567.643
																				Let $a0
																					CallDir mymul.259 d:$a0 $a1 $a2 f:
																					Let $a1
																						Li 2
																						Let $a0
																							Sub $a1 $a0
																							Let $a1
																								Li 0
																								Let $a2
																									Restore x.567.643
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
																										Let $a2
																											Li 1000
																											Let $a3
																												Li 0
																												Let Tu1304
																													Save $a1 flag.569.649
																													Let Tu1303
																														Save $a0 b.568.647
																														Let $a0
																															CallDir countn.255 d:$a0 $a2 $a3 f:
																															Let $a1
																																Li 1000
																																Let $a2
																																	Li 0
																																	Let Tu1305
																																		Save $a0 x.570.652
																																		Let $a0
																																			CallDir mymul.259 d:$a0 $a1 $a2 f:
																																			Let $a1
																																				Restore b.568.647
																																				Let $a0
																																					Sub $a1 $a0
																																					Let $a1
																																						Li 0
																																						Let $a2
																																							Restore x.570.652
																																							Let $a1
																																								IfLE $a2 $a1
																																									Let $a1
																																										Li 1
																																										Let $a2
																																											Restore flag.569.649
																																											Ans
																																												IfEq $a2 $a1
																																													Let $f30
																																														printchar 48
																																														Ans
																																															Li 1
																																													Ans
																																														Li 0
																																									Let $a1
																																										Add $a2 48
																																										Let $f30
																																											printchar $a1
																																											Ans
																																												Li 1
																																								Let $a2
																																									Li 100
																																									Let $a3
																																										Li 0
																																										Let Tu1307
																																											Save $a1 flag.572.658
																																											Let Tu1306
																																												Save $a0 b.571.656
																																												Let $a0
																																													CallDir countn.255 d:$a0 $a2 $a3 f:
																																													Let $a1
																																														Li 100
																																														Let $a2
																																															Li 0
																																															Let Tu1308
																																																Save $a0 x.573.661
																																																Let $a0
																																																	CallDir mymul.259 d:$a0 $a1 $a2 f:
																																																	Let $a1
																																																		Restore b.571.656
																																																		Let $a0
																																																			Sub $a1 $a0
																																																			Let $a1
																																																				Li 0
																																																				Let $a2
																																																					Restore x.573.661
																																																					Let $a1
																																																						IfLE $a2 $a1
																																																							Let $a1
																																																								Li 1
																																																								Let $a2
																																																									Restore flag.572.658
																																																									Ans
																																																										IfEq $a2 $a1
																																																											Let $f30
																																																												printchar 48
																																																												Ans
																																																													Li 1
																																																											Ans
																																																												Li 0
																																																							Let $a1
																																																								Add $a2 48
																																																								Let $f30
																																																									printchar $a1
																																																									Ans
																																																										Li 1
																																																						Let $a2
																																																							Li 10
																																																							Let $a3
																																																								Li 0
																																																								Let Tu1310
																																																									Save $a1 flag.575.667
																																																									Let Tu1309
																																																										Save $a0 b.574.665
																																																										Let $a0
																																																											CallDir countn.255 d:$a0 $a2 $a3 f:
																																																											Let $a1
																																																												Li 10
																																																												Let $a2
																																																													Li 0
																																																													Let Tu1311
																																																														Save $a0 x.576.670
																																																														Let $a0
																																																															CallDir mymul.259 d:$a0 $a1 $a2 f:
																																																															Let $a1
																																																																Restore b.574.665
																																																																Let $a0
																																																																	Sub $a1 $a0
																																																																	Let $a1
																																																																		Li 0
																																																																		Let $a2
																																																																			Restore x.576.670
																																																																			Let $a1
																																																																				IfLE $a2 $a1
																																																																					Let $a1
																																																																						Li 1
																																																																						Let $a2
																																																																							Restore flag.575.667
																																																																							Ans
																																																																								IfEq $a2 $a1
																																																																									Let $f30
																																																																										printchar 48
																																																																										Ans
																																																																											Li 1
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
