LetRec fnegx 
	FNeg
		Var x
	LetRec fhalfx 
		FMul
			Var x
			Float:0.500000
		LetRec fsqrx 
			FMul
				Var x
				Var x
			LetRec fflaga 
				If
					LE
						Float:0.000000
						Var a
					Int:1
					Neg
						Int:1
				LetRec countna b c 
					If
						Not
							LE
								Var b
								Var a
						Var c
						App
							Var countn
							Sub
								Var a
								Var b
							Var b
							Add
								Var c
								Int:1
					LetRec mymula b sum 
						If
							Eq
								Var a
								Int:0
							Var sum
							App
								Var mymul
								Sub
									Var a
									Int:1
								Var b
								Add
									Var sum
									Var b
						LetRec print_inta 
							Let b
								If
									Not
										LE
											Int:0
											Var a
									Let Tu1
										printchar
											Int:45
										Neg
											Var a
									Var a
								Let x
									App
										Var countn
										Var b
										Int:10000
										Int:0
									Let b
										Sub
											Var b
											App
												Var mymul
												Var x
												Int:10000
												Int:0
										Let flag
											If
												Not
													LE
														Var x
														Int:0
												Let Tu2
													printchar
														Add
															Int:48
															Var x
													Int:1
												Int:0
											Let x
												App
													Var countn
													Var b
													Int:1000
													Int:0
												Let b
													Sub
														Var b
														App
															Var mymul
															Var x
															Int:1000
															Int:0
													Let flag
														If
															Not
																LE
																	Var x
																	Int:0
															Let Tu3
																printchar
																	Add
																		Int:48
																		Var x
																Int:1
															If
																Eq
																	Var flag
																	Int:1
																Let Tu4
																	printchar
																		Int:48
																	Int:1
																Int:0
														Let x
															App
																Var countn
																Var b
																Int:100
																Int:0
															Let b
																Sub
																	Var b
																	App
																		Var mymul
																		Var x
																		Int:100
																		Int:0
																Let flag
																	If
																		Not
																			LE
																				Var x
																				Int:0
																		Let Tu5
																			printchar
																				Add
																					Int:48
																					Var x
																			Int:1
																		If
																			Eq
																				Var flag
																				Int:1
																			Let Tu6
																				printchar
																					Int:48
																				Int:1
																			Int:0
																	Let x
																		App
																			Var countn
																			Var b
																			Int:10
																			Int:0
																		Let b
																			Sub
																				Var b
																				App
																					Var mymul
																					Var x
																					Int:10
																					Int:0
																			Let flag
																				If
																					Not
																						LE
																							Var x
																							Int:0
																					Let Tu7
																						printchar
																							Add
																								Int:48
																								Var x
																						Int:1
																					If
																						Eq
																							Var flag
																							Int:1
																						Let Tu8
																							printchar
																								Int:48
																							Int:1
																						Int:0
																				printchar
																					Add
																						Int:48
																						Var b
							LetRec int_of_floata 
								Let abs
									fabs
										Var a
									Let flag
										App
											Var fflag
											Var a
										LetRec ftoi_reta 
											LetRec div2likea 
												LetRec div2like_suba b 
													If
														Not
															LE
																Float:2.000000
																Var a
														Var b
														App
															Var div2like_sub
															FSub
																Var a
																Float:2.000000
															FAdd
																Var b
																Float:1.000000
													App
														Var div2like_sub
														Var a
														Float:0.000000
												LetRec ftoi_ret_suba b c 
													Let a_sub
														App
															Var div2like
															Var a
														If
															Not
																LE
																	Float:1.000000
																	Var a
															Var b
															If
																Not
																	LE
																		Float:1.000000
																		FSub
																			Var a
																			FMul
																				Var a_sub
																				Float:2.000000
																App
																	Var ftoi_ret_sub
																	Var a_sub
																	Var b
																	Add
																		Var c
																		Var c
																App
																	Var ftoi_ret_sub
																	Var a_sub
																	Add
																		Var b
																		Var c
																	Add
																		Var c
																		Var c
													App
														Var ftoi_ret_sub
														Var a
														Int:0
														Int:1
											LetRec ftoi_biga b 
												Let a_sub
													FSub
														Var a
														Float:8388608.000000
													Let b_sub
														Add
															Var b
															Int:8388608
														If
															Not
																LE
																	Float:8388608.000000
																	Var a_sub
															Add
																Var b_sub
																App
																	Var ftoi_ret
																	Var a_sub
															App
																Var ftoi_big
																Var a_sub
																Var b_sub
												If
													Eq
														Var flag
														Int:1
													If
														Not
															LE
																Var abs
																Float:8388608.000000
														App
															Var ftoi_big
															Var abs
															Int:0
														App
															Var ftoi_ret
															Var abs
													If
														Not
															LE
																Var abs
																Float:8388608.000000
														Neg
															App
																Var ftoi_big
																Var abs
																Int:0
														Neg
															App
																Var ftoi_ret
																Var abs
								LetRec float_of_inta 
									Let abs
										If
											Not
												LE
													Var a
													Int:0
											Var a
											Neg
												Var a
										Let flag
											If
												Not
													LE
														Var a
														Int:0
												Int:1
												Neg
													Int:1
											LetRec itof_reta 
												LetRec itof_ret_suba b c 
													Let a_sub
														Div
															Var a
															Int:2
														If
															Eq
																Var a
																Int:0
															Var b
															If
																Not
																	LE
																		Sub
																			Sub
																				Var a
																				Var a_sub
																			Var a_sub
																		Int:0
																App
																	Var itof_ret_sub
																	Var a_sub
																	FAdd
																		Var b
																		Var c
																	FMul
																		Var c
																		Float:2.000000
																App
																	Var itof_ret_sub
																	Var a_sub
																	Var b
																	FMul
																		Var c
																		Float:2.000000
													App
														Var itof_ret_sub
														Var a
														Float:0.000000
														Float:1.000000
												LetRec itof_biga b 
													Let a_sub
														Sub
															Var a
															Int:8388608
														Let b_sub
															FAdd
																Var b
																Float:8388608.000000
															If
																Not
																	LE
																		Int:8388608
																		Var a_sub
																FAdd
																	Var b_sub
																	App
																		Var itof_ret
																		Var a_sub
																App
																	Var itof_big
																	Var a_sub
																	Var b_sub
													If
														Eq
															Var flag
															Int:1
														If
															Not
																LE
																	Var abs
																	Int:8388608
															App
																Var itof_big
																Var abs
																Float:0.000000
															App
																Var itof_ret
																Var abs
														If
															Not
																LE
																	Var abs
																	Int:8388608
															FNeg
																App
																	Var itof_big
																	Var abs
																	Float:0.000000
															FNeg
																App
																	Var itof_ret
																	Var abs
									LetRec floora 
										Let abs
											fabs
												Var a
											LetRec floor_pos_kera 
												FSub
													Var a
													Float:1.000000
												LetRec floor_pos_smalla 
													Let b
														FAdd
															Var a
															Float:8388608.000000
														Let c
															FSub
																Var b
																Float:8388608.000000
															If
																Not
																	LE
																		Var c
																		Var a
																App
																	Var floor_pos_ker
																	Var c
																Var c
													LetRec floor_posa 
														If
															Not
																LE
																	Var a
																	Float:8388608.000000
															App
																Var floor_pos_ker
																Var a
															App
																Var floor_pos_small
																Var a
														LetRec floor_neg_kera 
															FAdd
																Var a
																Float:1.000000
															LetRec floor_neg_smalla 
																Let b
																	FAdd
																		Var a
																		Float:8388608.000000
																	Let c
																		FSub
																			Var b
																			Float:8388608.000000
																		If
																			Not
																				LE
																					Var a
																					Var c
																			FNeg
																				App
																					Var floor_neg_ker
																					Var c
																			FNeg
																				Var c
																LetRec floor_nega 
																	If
																		Not
																			LE
																				Var a
																				Float:8388608.000000
																		FNeg
																			App
																				Var floor_neg_ker
																				Var a
																		App
																			Var floor_neg_small
																			Var a
																	If
																		Not
																			LE
																				Var a
																				Float:0.000000
																		App
																			Var floor_pos
																			Var abs
																		App
																			Var floor_neg
																			Var abs
										Let pi
											Float:3.141593
											Let pidouble
												Float:6.283185
												LetRec reduction_pi2a 
													If
														LE
															Var a
															Var pidouble
														Var a
														App
															Var reduction_pi2
															FSub
																Var a
																Var pidouble
													LetRec addflagc flag 
														If
															Eq
																Var flag
																Int:1
															Var c
															FMul
																Var c
																Float:-1.000000
														LetRec sin_kernela 
															Let a3
																FMul
																	FMul
																		Var a
																		Var a
																	Var a
																Let a5
																	FMul
																		FMul
																			Var a3
																			Var a
																		Var a
																	Let a7
																		FMul
																			FMul
																				Var a5
																				Var a
																			Var a
																		FSub
																			FAdd
																				FSub
																					Var a
																					FMul
																						Float:0.166667
																						Var a3
																				FMul
																					Float:0.008333
																					Var a5
																			FMul
																				Float:0.000196
																				Var a7
															LetRec cos_kernela 
																Let a2
																	FMul
																		Var a
																		Var a
																	Let a4
																		FMul
																			FMul
																				Var a2
																				Var a
																			Var a
																		Let a6
																			FMul
																				FMul
																					Var a4
																					Var a
																				Var a
																			FSub
																				FAdd
																					FSub
																						Float:1.000000
																						FMul
																							Float:0.500000
																							Var a2
																					FMul
																						Float:0.041664
																						Var a4
																				FMul
																					Float:0.001370
																					Var a6
																LetRec sina 
																	LetRec sin3a flag 
																		If
																			LE
																				Var a
																				FMul
																					Var pi
																					Float:0.250000
																			Let tmp
																				App
																					Var sin_kernel
																					Var a
																				App
																					Var addflag
																					Var tmp
																					Var flag
																			Let tmp
																				App
																					Var cos_kernel
																					FSub
																						FMul
																							Var pi
																							Float:0.500000
																						Var a
																				App
																					Var addflag
																					Var tmp
																					Var flag
																		LetRec sin2a flag 
																			If
																				LE
																					FMul
																						Var pi
																						Float:0.500000
																					Var a
																				App
																					Var sin3
																					FSub
																						Var pi
																						Var a
																					Var flag
																				App
																					Var sin3
																					Var a
																					Var flag
																			Let abs
																				fabs
																					Var a
																				Let flag
																					App
																						Var fflag
																						Var a
																					Let r_abs
																						App
																							Var reduction_pi2
																							Var abs
																						If
																							LE
																								Var pi
																								Var r_abs
																							App
																								Var sin2
																								FSub
																									Var r_abs
																									Var pi
																								Neg
																									Var flag
																							App
																								Var sin2
																								Var r_abs
																								Var flag
																	LetRec cosa 
																		LetRec cos3a flag 
																			If
																				LE
																					Var a
																					FMul
																						Var pi
																						Float:0.250000
																				Let tmp
																					App
																						Var cos_kernel
																						Var a
																					App
																						Var addflag
																						Var tmp
																						Var flag
																				Let tmp
																					App
																						Var sin_kernel
																						FSub
																							FMul
																								Var pi
																								Float:0.500000
																							Var a
																					App
																						Var addflag
																						Var tmp
																						Var flag
																			LetRec cos2a flag 
																				If
																					LE
																						FMul
																							Var pi
																							Float:0.500000
																						Var a
																					App
																						Var cos3
																						FSub
																							Var pi
																							Var a
																						Neg
																							Var flag
																					App
																						Var cos3
																						Var a
																						Var flag
																				Let abs
																					fabs
																						Var a
																					Let r_abs
																						App
																							Var reduction_pi2
																							Var abs
																						If
																							LE
																								Var pi
																								Var r_abs
																							App
																								Var cos2
																								FSub
																									Var r_abs
																									Var pi
																								Neg
																									Int:1
																							App
																								Var cos2
																								Var r_abs
																								Int:1
																		LetRec atana 
																			Let abs
																				fabs
																					Var a
																				Let flag
																					App
																						Var fflag
																						Var a
																					LetRec atan_kernela 
																						Let a1
																							FSub
																								FMul
																									FMul
																										Float:0.060035
																										Var a
																									Var a
																								Float:0.089764
																							Let a2
																								FAdd
																									Float:0.111111
																									FMul
																										FMul
																											Var a1
																											Var a
																										Var a
																								Let a3
																									FSub
																										FMul
																											FMul
																												Var a2
																												Var a
																											Var a
																										Float:0.142857
																									Let a4
																										FAdd
																											FMul
																												FMul
																													Var a3
																													Var a
																												Var a
																											Float:0.200000
																										Let a5
																											FSub
																												FMul
																													FMul
																														Var a4
																														Var a
																													Var a
																												Float:0.333333
																											FMul
																												Var a
																												FAdd
																													Float:1.000000
																													FMul
																														FMul
																															Var a5
																															Var a
																														Var a
																						If
																							Not
																								LE
																									Float:0.437500
																									Var abs
																							App
																								Var addflag
																								App
																									Var atan_kernel
																									Var abs
																								Var flag
																							If
																								Not
																									LE
																										Float:1.000000
																										Var abs
																								App
																									Var addflag
																									FSub
																										FMul
																											Var pi
																											Float:0.250000
																										App
																											Var atan_kernel
																											FDiv
																												FSub
																													Float:1.000000
																													Var abs
																												FAdd
																													Var abs
																													Float:1.000000
																									Var flag
																								If
																									Not
																										LE
																											Float:2.437500
																											Var abs
																									App
																										Var addflag
																										FSub
																											FMul
																												Var pi
																												Float:0.250000
																											App
																												Var atan_kernel
																												FDiv
																													FSub
																														Float:1.000000
																														Var abs
																													FAdd
																														Var abs
																														Float:1.000000
																										Var flag
																									App
																										Var addflag
																										FSub
																											FMul
																												Var pi
																												Float:0.500000
																											App
																												Var atan_kernel
																												FDiv
																													Float:1.000000
																													Var abs
																										Var flag
																			Let x
																				Float:3.000000
																				Let y
																					Float:4.000000
																					Let z
																						Float:5.000000
																						Let Tu11
																							Put
																								Var screen
																								Int:0
																								Readfloat
																							Let Tu10
																								Put
																									Var screen
																									Int:1
																									Readfloat
																								Let Tu9
																									Put
																										Var screen
																										Int:2
																										Readfloat
																									Let xx
																										FAdd
																											Var x
																											Get
																												Var screen
																												Int:0
																										Let yy
																											FAdd
																												Var y
																												Get
																													Var screen
																													Int:1
																											Let zz
																												FAdd
																													Var z
																													Get
																														Var screen
																														Int:2
																												If
																													Eq
																														Var xx
																														Float:6.000000
																													App
																														Var print_int
																														Int:3
																													App
																														Var print_int
																														Int:2
