LetRec write_header Tu1 
	Let Tu9
		Let Ti171
			Int:80
			ExtFunApp print_byte Ti171,
		Let Tu8
			Let Ti174
				Let Ti172
					Int:48
					Let Ti173
						Int:3
						Add Ti172 Ti173
				ExtFunApp print_byte Ti174,
			Let Tu7
				Let Ti175
					Int:10
					ExtFunApp print_byte Ti175,
				Let Tu6
					Let Ti176
						Int:100
						ExtFunApp print_int Ti176,
					Let Tu5
						Let Ti177
							Int:32
							ExtFunApp print_byte Ti177,
						Let Tu4
							Let Ti178
								Int:100
								ExtFunApp print_int Ti178,
							Let Tu3
								Let Ti179
									Int:32
									ExtFunApp print_byte Ti179,
								Let Tu2
									Let Ti180
										Int:255
										ExtFunApp print_int Ti180,
									Let Ti181
										Int:10
										ExtFunApp print_byte Ti181,
	Let step
		Let a
			Let Ti22
				Int:6
				Let Ti23
					Int:0
					ExtFunApp create_array Ti22,Ti23,
			Let Tu15
				Let Ti24
					Int:0
					Let Ti25
						Int:3
						Put a Ti24 Ti25
				Let Tu14
					Let Ti26
						Int:1
						Let Ti27
							Int:8
							Put a Ti26 Ti27
					Let Tu13
						Let Ti28
							Int:2
							Let Ti29
								Int:12
								Put a Ti28 Ti29
						Let Tu12
							Let Ti30
								Int:3
								Let Ti31
									Int:16
									Put a Ti30 Ti31
							Let Tu11
								Let Ti32
									Int:4
									Let Ti33
										Int:25
										Put a Ti32 Ti33
								Let Tu10
									Let Ti34
										Int:5
										Let Ti35
											Int:100
											Put a Ti34 Ti35
									Var a
		LetRec write_rgb x 
			LetRec write fr fg fb 
				Let r
					ExtFunApp int_of_float fr,
					Let g
						ExtFunApp int_of_float fg,
						Let b
							ExtFunApp int_of_float fb,
							Let Tu17
								ExtFunApp print_int r,
								Let Tu16
									ExtFunApp print_int g,
									ExtFunApp print_int b,
				Let fx
					ExtFunApp float_of_int x,
					Let Ti74
						Let Ti73
							Int:0
							Get step Ti73
						IfLE x Ti74
							Let Td75
								Float:255.000000
								Let Td76
									Float:0.000000
									Let Td77
										Float:0.000000
										App writeTd75 Td76 Td77 
							Let Ti79
								Let Ti78
									Int:1
									Get step Ti78
								IfLE x Ti79
									Let Td80
										Float:255.000000
										Let Td94
											Let Td86
												Let Td81
													Float:255.000000
													Let Td85
														Let Ti84
															Let Ti83
																Let Ti82
																	Int:0
																	Get step Ti82
																Sub x Ti83
															ExtFunApp float_of_int Ti84,
														FMul Td81 Td85
												Let Td92
													Let Ti91
														Let Ti88
															Let Ti87
																Int:1
																Get step Ti87
															Let Ti90
																Let Ti89
																	Int:0
																	Get step Ti89
																Sub Ti88 Ti90
														ExtFunApp float_of_int Ti91,
													Let Td93
														FReciprocal Td92
														FMul Td86 Td93
											Let Td95
												Float:0.000000
												App writeTd80 Td94 Td95 
									Let Ti97
										Let Ti96
											Int:2
											Get step Ti96
										IfLE x Ti97
											Let Td111
												Let Td103
													Let Td98
														Float:255.000000
														Let Td102
															Let Ti101
																Let Ti100
																	Let Ti99
																		Int:2
																		Get step Ti99
																	Sub Ti100 x
																ExtFunApp float_of_int Ti101,
															FMul Td98 Td102
													Let Td109
														Let Ti108
															Let Ti105
																Let Ti104
																	Int:2
																	Get step Ti104
																Let Ti107
																	Let Ti106
																		Int:1
																		Get step Ti106
																	Sub Ti105 Ti107
															ExtFunApp float_of_int Ti108,
														Let Td110
															FReciprocal Td109
															FMul Td103 Td110
												Let Td112
													Float:255.000000
													Let Td113
														Float:0.000000
														App writeTd111 Td112 Td113 
											Let Ti115
												Let Ti114
													Int:3
													Get step Ti114
												IfLE x Ti115
													Let Td116
														Float:0.000000
														Let Td117
															Float:255.000000
															Let Td131
																Let Td123
																	Let Td118
																		Float:255.000000
																		Let Td122
																			Let Ti121
																				Let Ti120
																					Let Ti119
																						Int:2
																						Get step Ti119
																					Sub x Ti120
																				ExtFunApp float_of_int Ti121,
																			FMul Td118 Td122
																	Let Td129
																		Let Ti128
																			Let Ti125
																				Let Ti124
																					Int:3
																					Get step Ti124
																				Let Ti127
																					Let Ti126
																						Int:2
																						Get step Ti126
																					Sub Ti125 Ti127
																			ExtFunApp float_of_int Ti128,
																		Let Td130
																			FReciprocal Td129
																			FMul Td123 Td130
																App writeTd116 Td117 Td131 
													Let Ti133
														Let Ti132
															Int:4
															Get step Ti132
														IfLE x Ti133
															Let Td134
																Float:0.000000
																Let Td148
																	Let Td140
																		Let Td135
																			Float:255.000000
																			Let Td139
																				Let Ti138
																					Let Ti137
																						Let Ti136
																							Int:4
																							Get step Ti136
																						Sub Ti137 x
																					ExtFunApp float_of_int Ti138,
																				FMul Td135 Td139
																		Let Td146
																			Let Ti145
																				Let Ti142
																					Let Ti141
																						Int:4
																						Get step Ti141
																					Let Ti144
																						Let Ti143
																							Int:3
																							Get step Ti143
																						Sub Ti142 Ti144
																				ExtFunApp float_of_int Ti145,
																			Let Td147
																				FReciprocal Td146
																				FMul Td140 Td147
																	Let Td149
																		Float:255.000000
																		App writeTd134 Td148 Td149 
															Let Ti151
																Let Ti150
																	Int:5
																	Get step Ti150
																IfLE x Ti151
																	Let Td165
																		Let Td157
																			Let Td152
																				Float:255.000000
																				Let Td156
																					Let Ti155
																						Let Ti154
																							Let Ti153
																								Int:4
																								Get step Ti153
																							Sub x Ti154
																						ExtFunApp float_of_int Ti155,
																					FMul Td152 Td156
																			Let Td163
																				Let Ti162
																					Let Ti159
																						Let Ti158
																							Int:5
																							Get step Ti158
																						Let Ti161
																							Let Ti160
																								Int:4
																								Get step Ti160
																							Sub Ti159 Ti161
																					ExtFunApp float_of_int Ti162,
																				Let Td164
																					FReciprocal Td163
																					FMul Td157 Td164
																		Let Td166
																			Float:0.000000
																			Let Td167
																				Float:255.000000
																				App writeTd165 Td166 Td167 
																	Let Td168
																		Float:0.000000
																		Let Td169
																			Float:0.000000
																			Let Td170
																				Float:0.000000
																				App writeTd168 Td169 Td170 
			LetRec yloop y 
				Let Ti39
					Int:100
					IfLE Ti39 y
						Unit
						LetRec xloop x y 
							Let Ti43
								Int:100
								IfLE Ti43 x
									Unit
									Let fx
										ExtFunApp float_of_int x,
										Let fy
											ExtFunApp float_of_int y,
											Let cr
												Let Td46
													Let Td44
														Float:50.000000
														Let Td45
															FReciprocal Td44
															FMul fx Td45
													Let Td47
														Float:1.500000
														FSub Td46 Td47
												Let ci
													Let Td50
														Let Td48
															Float:50.000000
															Let Td49
																FReciprocal Td48
																FMul fy Td49
														Let Td51
															Float:1.000000
															FSub Td50 Td51
													LetRec iloop i zr zi cr ci 
														Let Ti57
															Int:256
															IfLE Ti57 i
																Let Ti58
																	Int:256
																	App write_rgbTi58 
																Let nr
																	Let Td61
																		Let Td59
																			FMul zr zr
																			Let Td60
																				FMul zi zi
																				FSub Td59 Td60
																		FAdd Td61 cr
																	Let ni
																		Let Td64
																			Let Td63
																				Let Td62
																					Float:2.000000
																					FMul Td62 zr
																				FMul Td63 zi
																			FAdd Td64 ci
																		Let Td67
																			Let Td65
																				FMul zr zr
																				Let Td66
																					FMul zi zi
																					FAdd Td65 Td66
																			Let Td70
																				Let Td68
																					Float:2.000000
																					Let Td69
																						Float:2.000000
																						FMul Td68 Td69
																				IfLE Td67 Td70
																					Let Ti72
																						Let Ti71
																							Int:1
																							Add i Ti71
																						App iloopTi72 nr ni cr ci 
																					App write_rgbi 
														Let Tu18
															Let Ti52
																Int:0
																Let Td53
																	Float:0.000000
																	Let Td54
																		Float:0.000000
																		App iloopTi52 Td53 Td54 cr ci 
															Let Ti56
																Let Ti55
																	Int:1
																	Add x Ti55
																App xloopTi56 y 
							Let Tu19
								Let Ti40
									Int:0
									App xloopTi40 y 
								Let Ti42
									Let Ti41
										Int:1
										Add y Ti41
									App yloopTi42 
				Let Tu21
					Let Tu36
						Unit
						App write_headerTu36 
					Let Tu20
						Let Ti37
							Int:0
							App yloopTi37 
						Let Ti38
							Int:0
							ExtFunApp print_int Ti38,
