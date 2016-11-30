LetRec write_header Tu1 
	Let Tu9
		Let Ti177
			Int:80
			ExtFunApp print_byte Ti177,
		Let Tu8
			Let Ti180
				Let Ti178
					Int:48
					Let Ti179
						Int:3
						Add Ti178 Ti179
				ExtFunApp print_byte Ti180,
			Let Tu7
				Let Ti181
					Int:10
					ExtFunApp print_byte Ti181,
				Let Tu6
					Let Ti182
						Int:100
						ExtFunApp print_int Ti182,
					Let Tu5
						Let Ti183
							Int:32
							ExtFunApp print_byte Ti183,
						Let Tu4
							Let Ti184
								Int:100
								ExtFunApp print_int Ti184,
							Let Tu3
								Let Ti185
									Int:32
									ExtFunApp print_byte Ti185,
								Let Tu2
									Let Ti186
										Int:255
										ExtFunApp print_int Ti186,
									Let Ti187
										Int:10
										ExtFunApp print_byte Ti187,
	Let step
		Let a
			Let Ti25
				Int:6
				Let Ti26
					Int:0
					ExtFunApp create_array Ti25,Ti26,
			Let Tu15
				Let Ti27
					Int:0
					Let Ti28
						Int:3
						Put a Ti27 Ti28
				Let Tu14
					Let Ti29
						Int:1
						Let Ti30
							Int:8
							Put a Ti29 Ti30
					Let Tu13
						Let Ti31
							Int:2
							Let Ti32
								Int:12
								Put a Ti31 Ti32
						Let Tu12
							Let Ti33
								Int:3
								Let Ti34
									Int:16
									Put a Ti33 Ti34
							Let Tu11
								Let Ti35
									Int:4
									Let Ti36
										Int:25
										Put a Ti35 Ti36
								Let Tu10
									Let Ti37
										Int:5
										Let Ti38
											Int:100
											Put a Ti37 Ti38
									Var a
		LetRec write_rgb x 
			LetRec write fr fg fb 
				Let r
					ExtFunApp int_of_float fr,
					Let g
						ExtFunApp int_of_float fg,
						Let b
							ExtFunApp int_of_float fb,
							Let Tu20
								Let Ti174
									Int:32
									ExtFunApp print_byte Ti174,
								Let Tu19
									ExtFunApp print_int r,
									Let Tu18
										Let Ti175
											Int:32
											ExtFunApp print_byte Ti175,
										Let Tu17
											ExtFunApp print_int g,
											Let Tu16
												Let Ti176
													Int:32
													ExtFunApp print_byte Ti176,
												ExtFunApp print_int b,
				Let fx
					ExtFunApp float_of_int x,
					Let Ti77
						Let Ti76
							Int:0
							Get step Ti76
						IfLE x Ti77
							Let Td78
								Float:255.000000
								Let Td79
									Float:0.000000
									Let Td80
										Float:0.000000
										App writeTd78 Td79 Td80 
							Let Ti82
								Let Ti81
									Int:1
									Get step Ti81
								IfLE x Ti82
									Let Td83
										Float:255.000000
										Let Td97
											Let Td89
												Let Td84
													Float:255.000000
													Let Td88
														Let Ti87
															Let Ti86
																Let Ti85
																	Int:0
																	Get step Ti85
																Sub x Ti86
															ExtFunApp float_of_int Ti87,
														FMul Td84 Td88
												Let Td95
													Let Ti94
														Let Ti91
															Let Ti90
																Int:1
																Get step Ti90
															Let Ti93
																Let Ti92
																	Int:0
																	Get step Ti92
																Sub Ti91 Ti93
														ExtFunApp float_of_int Ti94,
													Let Td96
														FReciprocal Td95
														FMul Td89 Td96
											Let Td98
												Float:0.000000
												App writeTd83 Td97 Td98 
									Let Ti100
										Let Ti99
											Int:2
											Get step Ti99
										IfLE x Ti100
											Let Td114
												Let Td106
													Let Td101
														Float:255.000000
														Let Td105
															Let Ti104
																Let Ti103
																	Let Ti102
																		Int:2
																		Get step Ti102
																	Sub Ti103 x
																ExtFunApp float_of_int Ti104,
															FMul Td101 Td105
													Let Td112
														Let Ti111
															Let Ti108
																Let Ti107
																	Int:2
																	Get step Ti107
																Let Ti110
																	Let Ti109
																		Int:1
																		Get step Ti109
																	Sub Ti108 Ti110
															ExtFunApp float_of_int Ti111,
														Let Td113
															FReciprocal Td112
															FMul Td106 Td113
												Let Td115
													Float:255.000000
													Let Td116
														Float:0.000000
														App writeTd114 Td115 Td116 
											Let Ti118
												Let Ti117
													Int:3
													Get step Ti117
												IfLE x Ti118
													Let Td119
														Float:0.000000
														Let Td120
															Float:255.000000
															Let Td134
																Let Td126
																	Let Td121
																		Float:255.000000
																		Let Td125
																			Let Ti124
																				Let Ti123
																					Let Ti122
																						Int:2
																						Get step Ti122
																					Sub x Ti123
																				ExtFunApp float_of_int Ti124,
																			FMul Td121 Td125
																	Let Td132
																		Let Ti131
																			Let Ti128
																				Let Ti127
																					Int:3
																					Get step Ti127
																				Let Ti130
																					Let Ti129
																						Int:2
																						Get step Ti129
																					Sub Ti128 Ti130
																			ExtFunApp float_of_int Ti131,
																		Let Td133
																			FReciprocal Td132
																			FMul Td126 Td133
																App writeTd119 Td120 Td134 
													Let Ti136
														Let Ti135
															Int:4
															Get step Ti135
														IfLE x Ti136
															Let Td137
																Float:0.000000
																Let Td151
																	Let Td143
																		Let Td138
																			Float:255.000000
																			Let Td142
																				Let Ti141
																					Let Ti140
																						Let Ti139
																							Int:4
																							Get step Ti139
																						Sub Ti140 x
																					ExtFunApp float_of_int Ti141,
																				FMul Td138 Td142
																		Let Td149
																			Let Ti148
																				Let Ti145
																					Let Ti144
																						Int:4
																						Get step Ti144
																					Let Ti147
																						Let Ti146
																							Int:3
																							Get step Ti146
																						Sub Ti145 Ti147
																				ExtFunApp float_of_int Ti148,
																			Let Td150
																				FReciprocal Td149
																				FMul Td143 Td150
																	Let Td152
																		Float:255.000000
																		App writeTd137 Td151 Td152 
															Let Ti154
																Let Ti153
																	Int:5
																	Get step Ti153
																IfLE x Ti154
																	Let Td168
																		Let Td160
																			Let Td155
																				Float:255.000000
																				Let Td159
																					Let Ti158
																						Let Ti157
																							Let Ti156
																								Int:4
																								Get step Ti156
																							Sub x Ti157
																						ExtFunApp float_of_int Ti158,
																					FMul Td155 Td159
																			Let Td166
																				Let Ti165
																					Let Ti162
																						Let Ti161
																							Int:5
																							Get step Ti161
																						Let Ti164
																							Let Ti163
																								Int:4
																								Get step Ti163
																							Sub Ti162 Ti164
																					ExtFunApp float_of_int Ti165,
																				Let Td167
																					FReciprocal Td166
																					FMul Td160 Td167
																		Let Td169
																			Float:0.000000
																			Let Td170
																				Float:255.000000
																				App writeTd168 Td169 Td170 
																	Let Td171
																		Float:0.000000
																		Let Td172
																			Float:0.000000
																			Let Td173
																				Float:0.000000
																				App writeTd171 Td172 Td173 
			LetRec yloop y 
				Let Ti42
					Int:100
					IfLE Ti42 y
						Unit
						LetRec xloop x y 
							Let Ti46
								Int:100
								IfLE Ti46 x
									Unit
									Let fx
										ExtFunApp float_of_int x,
										Let fy
											ExtFunApp float_of_int y,
											Let cr
												Let Td49
													Let Td47
														Float:50.000000
														Let Td48
															FReciprocal Td47
															FMul fx Td48
													Let Td50
														Float:1.500000
														FSub Td49 Td50
												Let ci
													Let Td53
														Let Td51
															Float:50.000000
															Let Td52
																FReciprocal Td51
																FMul fy Td52
														Let Td54
															Float:1.000000
															FSub Td53 Td54
													LetRec iloop i zr zi cr ci 
														Let Ti60
															Int:256
															IfLE Ti60 i
																Let Ti61
																	Int:256
																	App write_rgbTi61 
																Let nr
																	Let Td64
																		Let Td62
																			FMul zr zr
																			Let Td63
																				FMul zi zi
																				FSub Td62 Td63
																		FAdd Td64 cr
																	Let ni
																		Let Td67
																			Let Td66
																				Let Td65
																					Float:2.000000
																					FMul Td65 zr
																				FMul Td66 zi
																			FAdd Td67 ci
																		Let Td70
																			Let Td68
																				FMul zr zr
																				Let Td69
																					FMul zi zi
																					FAdd Td68 Td69
																			Let Td73
																				Let Td71
																					Float:2.000000
																					Let Td72
																						Float:2.000000
																						FMul Td71 Td72
																				IfLE Td70 Td73
																					Let Ti75
																						Let Ti74
																							Int:1
																							Add i Ti74
																						App iloopTi75 nr ni cr ci 
																					App write_rgbi 
														Let Tu21
															Let Ti55
																Int:0
																Let Td56
																	Float:0.000000
																	Let Td57
																		Float:0.000000
																		App iloopTi55 Td56 Td57 cr ci 
															Let Ti59
																Let Ti58
																	Int:1
																	Add x Ti58
																App xloopTi59 y 
							Let Tu22
								Let Ti43
									Int:0
									App xloopTi43 y 
								Let Ti45
									Let Ti44
										Int:1
										Add y Ti44
									App yloopTi45 
				Let Tu24
					Let Tu39
						Unit
						App write_headerTu39 
					Let Tu23
						Let Ti40
							Int:0
							App yloopTi40 
						Let Ti41
							Int:0
							ExtFunApp print_int Ti41,
