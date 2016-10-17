LetRec mull m n a b c 
	LetRec loop1i 
		If
			Not
				LE
					Int:0
					Var i
			Unit
			LetRec loop2j 
				If
					Not
						LE
							Int:0
							Var j
					Unit
					LetRec loop3k 
						If
							Not
								LE
									Int:0
									Var k
							Unit
							Let Tu1
								Put
									Get
										Var c
										Var i
									Var j
									FAdd
										Get
											Get
												Var c
												Var i
											Var j
										FMul
											Get
												Get
													Var a
													Var i
												Var k
											Get
												Get
													Var b
													Var k
												Var j
								App
									Var loop3
									Sub
										Var k
										Int:1
						Let Tu2
							App
								Var loop3
								Sub
									Var m
									Int:1
							App
								Var loop2
								Sub
									Var j
									Int:1
				Let Tu3
					App
						Var loop2
						Sub
							Var n
							Int:1
					App
						Var loop1
						Sub
							Var i
							Int:1
		App
			Var loop1
			Sub
				Var l
				Int:1
	Let dummy
		Array
			Int:0
			Float:0.000000
		LetRec makem n 
			Let mat
				Array
					Var m
					Var dummy
				LetRec initi 
					If
						Not
							LE
								Int:0
								Var i
						Unit
						Let Tu4
							Put
								Var mat
								Var i
								Array
									Var n
									Float:0.000000
							App
								Var init
								Sub
									Var i
									Int:1
					Let Tu5
						App
							Var init
							Sub
								Var m
								Int:1
						Var mat
			Let a
				App
					Var make
					Int:2
					Int:3
				Let b
					App
						Var make
						Int:3
						Int:2
					Let c
						App
							Var make
							Int:2
							Int:2
						Let Tu25
							Put
								Get
									Var a
									Int:0
								Int:0
								Float:1.000000
							Let Tu24
								Put
									Get
										Var a
										Int:0
									Int:1
									Float:2.000000
								Let Tu23
									Put
										Get
											Var a
											Int:0
										Int:2
										Float:3.000000
									Let Tu22
										Put
											Get
												Var a
												Int:1
											Int:0
											Float:4.000000
										Let Tu21
											Put
												Get
													Var a
													Int:1
												Int:1
												Float:5.000000
											Let Tu20
												Put
													Get
														Var a
														Int:1
													Int:2
													Float:6.000000
												Let Tu19
													Put
														Get
															Var b
															Int:0
														Int:0
														Float:7.000000
													Let Tu18
														Put
															Get
																Var b
																Int:0
															Int:1
															Float:8.000000
														Let Tu17
															Put
																Get
																	Var b
																	Int:1
																Int:0
																Float:9.000000
															Let Tu16
																Put
																	Get
																		Var b
																		Int:1
																	Int:1
																	Float:10.000000
																Let Tu15
																	Put
																		Get
																			Var b
																			Int:2
																		Int:0
																		Float:11.000000
																	Let Tu14
																		Put
																			Get
																				Var b
																				Int:2
																			Int:1
																			Float:12.000000
																		Let Tu13
																			App
																				Var mul
																				Int:2
																				Int:3
																				Int:2
																				Var a
																				Var b
																				Var c
																			Let Tu12
																				App
																					Var print_int
																					App
																						Var truncate
																						Get
																							Get
																								Var c
																								Int:0
																							Int:0
																				Let Tu11
																					App
																						Var print_newline
																						Unit
																					Let Tu10
																						App
																							Var print_int
																							App
																								Var truncate
																								Get
																									Get
																										Var c
																										Int:0
																									Int:1
																						Let Tu9
																							App
																								Var print_newline
																								Unit
																							Let Tu8
																								App
																									Var print_int
																									App
																										Var truncate
																										Get
																											Get
																												Var c
																												Int:1
																											Int:0
																								Let Tu7
																									App
																										Var print_newline
																										Unit
																									Let Tu6
																										App
																											Var print_int
																											App
																												Var truncate
																												Get
																													Get
																														Var c
																														Int:1
																													Int:1
																										App
																											Var print_newline
																											Unit
