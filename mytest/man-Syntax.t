LetRec write_headerTu1 
	Let Tu9
		App
			Var print_byte
			Int:80
		Let Tu8
			App
				Var print_byte
				Add
					Int:48
					Int:3
			Let Tu7
				App
					Var print_byte
					Int:10
				Let Tu6
					App
						Var print_int
						Int:100
					Let Tu5
						App
							Var print_byte
							Int:32
						Let Tu4
							App
								Var print_int
								Int:100
							Let Tu3
								App
									Var print_byte
									Int:32
								Let Tu2
									App
										Var print_int
										Int:255
									App
										Var print_byte
										Int:10
	Let step
		Let a
			Array
				Int:6
				Int:0
			Let Tu15
				Put
					Var a
					Int:0
					Int:3
				Let Tu14
					Put
						Var a
						Int:1
						Int:8
					Let Tu13
						Put
							Var a
							Int:2
							Int:12
						Let Tu12
							Put
								Var a
								Int:3
								Int:16
							Let Tu11
								Put
									Var a
									Int:4
									Int:25
								Let Tu10
									Put
										Var a
										Int:5
										Int:100
									Var a
		LetRec write_rgbx 
			LetRec writefr fg fb 
				Let r
					App
						Var int_of_float
						Var fr
					Let g
						App
							Var int_of_float
							Var fg
						Let b
							App
								Var int_of_float
								Var fb
							Let Tu17
								App
									Var print_int
									Var r
								Let Tu16
									App
										Var print_int
										Var g
									App
										Var print_int
										Var b
				Let fx
					App
						Var float_of_int
						Var x
					If
						LE
							Var x
							Get
								Var step
								Int:0
						App
							Var write
							Float:255.000000
							Float:0.000000
							Float:0.000000
						If
							LE
								Var x
								Get
									Var step
									Int:1
							App
								Var write
								Float:255.000000
								FDiv
									FMul
										Float:255.000000
										App
											Var float_of_int
											Sub
												Var x
												Get
													Var step
													Int:0
									App
										Var float_of_int
										Sub
											Get
												Var step
												Int:1
											Get
												Var step
												Int:0
								Float:0.000000
							If
								LE
									Var x
									Get
										Var step
										Int:2
								App
									Var write
									FDiv
										FMul
											Float:255.000000
											App
												Var float_of_int
												Sub
													Get
														Var step
														Int:2
													Var x
										App
											Var float_of_int
											Sub
												Get
													Var step
													Int:2
												Get
													Var step
													Int:1
									Float:255.000000
									Float:0.000000
								If
									LE
										Var x
										Get
											Var step
											Int:3
									App
										Var write
										Float:0.000000
										Float:255.000000
										FDiv
											FMul
												Float:255.000000
												App
													Var float_of_int
													Sub
														Var x
														Get
															Var step
															Int:2
											App
												Var float_of_int
												Sub
													Get
														Var step
														Int:3
													Get
														Var step
														Int:2
									If
										LE
											Var x
											Get
												Var step
												Int:4
										App
											Var write
											Float:0.000000
											FDiv
												FMul
													Float:255.000000
													App
														Var float_of_int
														Sub
															Get
																Var step
																Int:4
															Var x
												App
													Var float_of_int
													Sub
														Get
															Var step
															Int:4
														Get
															Var step
															Int:3
											Float:255.000000
										If
											LE
												Var x
												Get
													Var step
													Int:5
											App
												Var write
												FDiv
													FMul
														Float:255.000000
														App
															Var float_of_int
															Sub
																Var x
																Get
																	Var step
																	Int:4
													App
														Var float_of_int
														Sub
															Get
																Var step
																Int:5
															Get
																Var step
																Int:4
												Float:0.000000
												Float:255.000000
											App
												Var write
												Float:0.000000
												Float:0.000000
												Float:0.000000
			LetRec yloopy 
				If
					LE
						Int:100
						Var y
					Unit
					LetRec xloopx y 
						If
							LE
								Int:100
								Var x
							Unit
							Let fx
								App
									Var float_of_int
									Var x
								Let fy
									App
										Var float_of_int
										Var y
									Let cr
										FSub
											FDiv
												Var fx
												Float:50.000000
											Float:1.500000
										Let ci
											FSub
												FDiv
													Var fy
													Float:50.000000
												Float:1.000000
											LetRec iloopi zr zi cr ci 
												If
													LE
														Int:256
														Var i
													App
														Var write_rgb
														Int:256
													Let nr
														FAdd
															FSub
																FMul
																	Var zr
																	Var zr
																FMul
																	Var zi
																	Var zi
															Var cr
														Let ni
															FAdd
																FMul
																	FMul
																		Float:2.000000
																		Var zr
																	Var zi
																Var ci
															If
																Not
																	LE
																		FAdd
																			FMul
																				Var zr
																				Var zr
																			FMul
																				Var zi
																				Var zi
																		FMul
																			Float:2.000000
																			Float:2.000000
																App
																	Var write_rgb
																	Var i
																App
																	Var iloop
																	Add
																		Var i
																		Int:1
																	Var nr
																	Var ni
																	Var cr
																	Var ci
												Let Tu18
													App
														Var iloop
														Int:0
														Float:0.000000
														Float:0.000000
														Var cr
														Var ci
													App
														Var xloop
														Add
															Var x
															Int:1
														Var y
						Let Tu19
							App
								Var xloop
								Int:0
								Var y
							App
								Var yloop
								Add
									Var y
									Int:1
				Let Tu21
					App
						Var write_header
						Unit
					Let Tu20
						App
							Var yloop
							Int:0
						App
							Var print_int
							Int:0
