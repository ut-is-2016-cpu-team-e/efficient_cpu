LetRec fneg x 
	FNeg x
	LetRec fhalf x 
		Let Td246
			Float:0.500000
			FMul x Td246
		LetRec fsqr x 
			FMul x x
			LetRec fflag a 
				Let Td244
					Float:0.000000
					IfLE Td244 a
						Int:1
						Let Ti245
							Int:1
							Neg Ti245
				LetRec countn a b c 
					IfLE b a
						Let Ti241
							Sub a b
							Let Ti243
								Let Ti242
									Int:1
									Add c Ti242
								App countnTi241 b Ti243 
						Var c
					LetRec mymul a b sum 
						Let Ti237
							Int:0
							IfEq a Ti237
								Var sum
								Let Ti239
									Let Ti238
										Int:1
										Sub a Ti238
									Let Ti240
										Add sum b
										App mymulTi239 b Ti240 
						LetRec print_int a 
							Let b
								Let Ti195
									Int:0
									IfLE Ti195 a
										Var a
										Let Tu1
											Let Ti196
												Int:45
												printchar Ti196
											Neg a
								Let x
									Let Ti197
										Int:10000
										Let Ti198
											Int:0
											App countnb Ti197 Ti198 
									Let b
										Let Ti201
											Let Ti199
												Int:10000
												Let Ti200
													Int:0
													App mymulx Ti199 Ti200 
											Sub b Ti201
										Let flag
											Let Ti202
												Int:0
												IfLE x Ti202
													Int:0
													Let Tu2
														Let Ti204
															Let Ti203
																Int:48
																Add Ti203 x
															printchar Ti204
														Int:1
											Let x
												Let Ti205
													Int:1000
													Let Ti206
														Int:0
														App countnb Ti205 Ti206 
												Let b
													Let Ti209
														Let Ti207
															Int:1000
															Let Ti208
																Int:0
																App mymulx Ti207 Ti208 
														Sub b Ti209
													Let flag
														Let Ti210
															Int:0
															IfLE x Ti210
																Let Ti211
																	Int:1
																	IfEq flag Ti211
																		Let Tu4
																			Let Ti212
																				Int:48
																				printchar Ti212
																			Int:1
																		Int:0
																Let Tu3
																	Let Ti214
																		Let Ti213
																			Int:48
																			Add Ti213 x
																		printchar Ti214
																	Int:1
														Let x
															Let Ti215
																Int:100
																Let Ti216
																	Int:0
																	App countnb Ti215 Ti216 
															Let b
																Let Ti219
																	Let Ti217
																		Int:100
																		Let Ti218
																			Int:0
																			App mymulx Ti217 Ti218 
																	Sub b Ti219
																Let flag
																	Let Ti220
																		Int:0
																		IfLE x Ti220
																			Let Ti221
																				Int:1
																				IfEq flag Ti221
																					Let Tu6
																						Let Ti222
																							Int:48
																							printchar Ti222
																						Int:1
																					Int:0
																			Let Tu5
																				Let Ti224
																					Let Ti223
																						Int:48
																						Add Ti223 x
																					printchar Ti224
																				Int:1
																	Let x
																		Let Ti225
																			Int:10
																			Let Ti226
																				Int:0
																				App countnb Ti225 Ti226 
																		Let b
																			Let Ti229
																				Let Ti227
																					Int:10
																					Let Ti228
																						Int:0
																						App mymulx Ti227 Ti228 
																				Sub b Ti229
																			Let flag
																				Let Ti230
																					Int:0
																					IfLE x Ti230
																						Let Ti231
																							Int:1
																							IfEq flag Ti231
																								Let Tu8
																									Let Ti232
																										Int:48
																										printchar Ti232
																									Int:1
																								Int:0
																						Let Tu7
																							Let Ti234
																								Let Ti233
																									Int:48
																									Add Ti233 x
																								printchar Ti234
																							Int:1
																				Let Ti236
																					Let Ti235
																						Int:48
																						Add Ti235 b
																					printchar Ti236
							LetRec int_of_float a 
								Let abs
									fabs a
									Let flag
										App fflaga 
										LetRec ftoi_ret a 
											LetRec div2like a 
												LetRec div2like_sub a b 
													Let Td190
														Float:2.000000
														IfLE Td190 a
															Let Td192
																Let Td191
																	Float:2.000000
																	FSub a Td191
																Let Td194
																	Let Td193
																		Float:1.000000
																		FAdd b Td193
																	App div2like_subTd192 Td194 
															Var b
													Let Td189
														Float:0.000000
														App div2like_suba Td189 
												LetRec ftoi_ret_sub a b c 
													Let a_sub
														App div2likea 
														Let Td181
															Float:1.000000
															IfLE Td181 a
																Let Td182
																	Float:1.000000
																	Let Td185
																		Let Td184
																			Let Td183
																				Float:2.000000
																				FMul a_sub Td183
																			FSub a Td184
																		IfLE Td182 Td185
																			Let Ti186
																				Add b c
																				Let Ti187
																					Add c c
																					App ftoi_ret_suba_sub Ti186 Ti187 
																			Let Ti188
																				Add c c
																				App ftoi_ret_suba_sub b Ti188 
																Var b
													Let Ti179
														Int:0
														Let Ti180
															Int:1
															App ftoi_ret_suba Ti179 Ti180 
											LetRec ftoi_big a b 
												Let a_sub
													Let Td175
														Float:8388608.000000
														FSub a Td175
													Let b_sub
														Let Ti176
															Int:8388608
															Add b Ti176
														Let Td177
															Float:8388608.000000
															IfLE Td177 a_sub
																App ftoi_biga_sub b_sub 
																Let Ti178
																	App ftoi_reta_sub 
																	Add b_sub Ti178
												Let Ti168
													Int:1
													IfEq flag Ti168
														Let Td169
															Float:8388608.000000
															IfLE abs Td169
																App ftoi_retabs 
																Let Ti170
																	Int:0
																	App ftoi_bigabs Ti170 
														Let Td171
															Float:8388608.000000
															IfLE abs Td171
																Let Ti172
																	App ftoi_retabs 
																	Neg Ti172
																Let Ti174
																	Let Ti173
																		Int:0
																		App ftoi_bigabs Ti173 
																	Neg Ti174
								LetRec float_of_int a 
									Let abs
										Let Ti143
											Int:0
											IfLE a Ti143
												Neg a
												Var a
										Let flag
											Let Ti144
												Int:0
												IfLE a Ti144
													Let Ti145
														Int:1
														Neg Ti145
													Int:1
											LetRec itof_ret a 
												LetRec itof_ret_sub a b c 
													Let a_sub
														ShiftR1 a
														Let Ti159
															Int:0
															IfEq a Ti159
																Var b
																Let Ti161
																	Let Ti160
																		Sub a a_sub
																		Sub Ti160 a_sub
																	Let Ti162
																		Int:0
																		IfLE Ti161 Ti162
																			Let Td164
																				Let Td163
																					Float:2.000000
																					FMul c Td163
																				App itof_ret_suba_sub b Td164 
																			Let Td165
																				FAdd b c
																				Let Td167
																					Let Td166
																						Float:2.000000
																						FMul c Td166
																					App itof_ret_suba_sub Td165 Td167 
													Let Td157
														Float:0.000000
														Let Td158
															Float:1.000000
															App itof_ret_suba Td157 Td158 
												LetRec itof_big a b 
													Let a_sub
														Let Ti153
															Int:8388608
															Sub a Ti153
														Let b_sub
															Let Td154
																Float:8388608.000000
																FAdd b Td154
															Let Ti155
																Int:8388608
																IfLE Ti155 a_sub
																	App itof_biga_sub b_sub 
																	Let Td156
																		App itof_reta_sub 
																		FAdd b_sub Td156
													Let Ti146
														Int:1
														IfEq flag Ti146
															Let Ti147
																Int:8388608
																IfLE abs Ti147
																	App itof_retabs 
																	Let Td148
																		Float:0.000000
																		App itof_bigabs Td148 
															Let Ti149
																Int:8388608
																IfLE abs Ti149
																	Let Td150
																		App itof_retabs 
																		FNeg Td150
																	Let Td152
																		Let Td151
																			Float:0.000000
																			App itof_bigabs Td151 
																		FNeg Td152
									LetRec floor a 
										Let abs
											fabs a
											LetRec floor_pos_ker a 
												Let Td142
													Float:1.000000
													FSub a Td142
												LetRec floor_pos_small a 
													Let b
														Let Td140
															Float:8388608.000000
															FAdd a Td140
														Let c
															Let Td141
																Float:8388608.000000
																FSub b Td141
															IfLE c a
																Var c
																App floor_pos_kerc 
													LetRec floor_pos a 
														Let Td139
															Float:8388608.000000
															IfLE a Td139
																App floor_pos_smalla 
																App floor_pos_kera 
														LetRec floor_neg_ker a 
															Let Td138
																Float:1.000000
																FAdd a Td138
															LetRec floor_neg_small a 
																Let b
																	Let Td135
																		Float:8388608.000000
																		FAdd a Td135
																	Let c
																		Let Td136
																			Float:8388608.000000
																			FSub b Td136
																		IfLE a c
																			FNeg c
																			Let Td137
																				App floor_neg_kerc 
																				FNeg Td137
																LetRec floor_neg a 
																	Let Td133
																		Float:8388608.000000
																		IfLE a Td133
																			App floor_neg_smalla 
																			Let Td134
																				App floor_neg_kera 
																				FNeg Td134
																	Let Td132
																		Float:0.000000
																		IfLE a Td132
																			App floor_negabs 
																			App floor_posabs 
										Let pi
											Float:3.141593
											Let pidouble
												Float:6.283185
												LetRec reduction_pi2 a 
													IfLE a pidouble
														Var a
														Let Td131
															FSub a pidouble
															App reduction_pi2Td131 
													LetRec addflag c flag 
														Let Ti129
															Int:1
															IfEq flag Ti129
																Var c
																Let Td130
																	Float:-1.000000
																	FMul c Td130
														LetRec sin_kernel a 
															Let a3
																Let Td118
																	FMul a a
																	FMul Td118 a
																Let a5
																	Let Td119
																		FMul a3 a
																		FMul Td119 a
																	Let a7
																		Let Td120
																			FMul a5 a
																			FMul Td120 a
																		Let Td126
																			Let Td123
																				Let Td122
																					Let Td121
																						Float:0.166667
																						FMul Td121 a3
																					FSub a Td122
																				Let Td125
																					Let Td124
																						Float:0.008333
																						FMul Td124 a5
																					FAdd Td123 Td125
																			Let Td128
																				Let Td127
																					Float:0.000196
																					FMul Td127 a7
																				FSub Td126 Td128
															LetRec cos_kernel a 
																Let a2
																	FMul a a
																	Let a4
																		Let Td107
																			FMul a2 a
																			FMul Td107 a
																		Let a6
																			Let Td108
																				FMul a4 a
																				FMul Td108 a
																			Let Td115
																				Let Td112
																					Let Td109
																						Float:1.000000
																						Let Td111
																							Let Td110
																								Float:0.500000
																								FMul Td110 a2
																							FSub Td109 Td111
																					Let Td114
																						Let Td113
																							Float:0.041664
																							FMul Td113 a4
																						FAdd Td112 Td114
																				Let Td117
																					Let Td116
																						Float:0.001370
																						FMul Td116 a6
																					FSub Td115 Td117
																LetRec sin a 
																	LetRec sin3 a flag 
																		Let Td103
																			Let Td102
																				Float:0.250000
																				FMul pi Td102
																			IfLE a Td103
																				Let tmp
																					App sin_kernela 
																					App addflagtmp flag 
																				Let tmp
																					Let Td106
																						Let Td105
																							Let Td104
																								Float:0.500000
																								FMul pi Td104
																							FSub Td105 a
																						App cos_kernelTd106 
																					App addflagtmp flag 
																		LetRec sin2 a flag 
																			Let Td100
																				Let Td99
																					Float:0.500000
																					FMul pi Td99
																				IfLE Td100 a
																					Let Td101
																						FSub pi a
																						App sin3Td101 flag 
																					App sin3a flag 
																			Let abs
																				fabs a
																				Let flag
																					App fflaga 
																					Let r_abs
																						App reduction_pi2abs 
																						IfLE pi r_abs
																							Let Td97
																								FSub r_abs pi
																								Let Ti98
																									Neg flag
																									App sin2Td97 Ti98 
																							App sin2r_abs flag 
																	LetRec cos a 
																		LetRec cos3 a flag 
																			Let Td93
																				Let Td92
																					Float:0.250000
																					FMul pi Td92
																				IfLE a Td93
																					Let tmp
																						App cos_kernela 
																						App addflagtmp flag 
																					Let tmp
																						Let Td96
																							Let Td95
																								Let Td94
																									Float:0.500000
																									FMul pi Td94
																								FSub Td95 a
																							App sin_kernelTd96 
																						App addflagtmp flag 
																			LetRec cos2 a flag 
																				Let Td89
																					Let Td88
																						Float:0.500000
																						FMul pi Td88
																					IfLE Td89 a
																						Let Td90
																							FSub pi a
																							Let Ti91
																								Neg flag
																								App cos3Td90 Ti91 
																						App cos3a flag 
																				Let abs
																					fabs a
																					Let r_abs
																						App reduction_pi2abs 
																						IfLE pi r_abs
																							Let Td84
																								FSub r_abs pi
																								Let Ti86
																									Let Ti85
																										Int:1
																										Neg Ti85
																									App cos2Td84 Ti86 
																							Let Ti87
																								Int:1
																								App cos2r_abs Ti87 
																		LetRec atan a 
																			Let abs
																				fabs a
																				Let flag
																					App fflaga 
																					LetRec atan_kernel a 
																						Let a1
																							Let Td66
																								Let Td65
																									Let Td64
																										Float:0.060035
																										FMul Td64 a
																									FMul Td65 a
																								Let Td67
																									Float:0.089764
																									FSub Td66 Td67
																							Let a2
																								Let Td68
																									Float:0.111111
																									Let Td70
																										Let Td69
																											FMul a1 a
																											FMul Td69 a
																										FAdd Td68 Td70
																								Let a3
																									Let Td72
																										Let Td71
																											FMul a2 a
																											FMul Td71 a
																										Let Td73
																											Float:0.142857
																											FSub Td72 Td73
																									Let a4
																										Let Td75
																											Let Td74
																												FMul a3 a
																												FMul Td74 a
																											Let Td76
																												Float:0.200000
																												FAdd Td75 Td76
																										Let a5
																											Let Td78
																												Let Td77
																													FMul a4 a
																													FMul Td77 a
																												Let Td79
																													Float:0.333333
																													FSub Td78 Td79
																											Let Td83
																												Let Td80
																													Float:1.000000
																													Let Td82
																														Let Td81
																															FMul a5 a
																															FMul Td81 a
																														FAdd Td80 Td82
																												FMul a Td83
																						Let Td33
																							Float:0.437500
																							IfLE Td33 abs
																								Let Td34
																									Float:1.000000
																									IfLE Td34 abs
																										Let Td35
																											Float:2.437500
																											IfLE Td35 abs
																												Let Td42
																													Let Td37
																														Let Td36
																															Float:0.500000
																															FMul pi Td36
																														Let Td41
																															Let Td40
																																Let Td38
																																	Float:1.000000
																																	Let Td39
																																		FReciprocal abs
																																		FMul Td38 Td39
																																App atan_kernelTd40 
																															FSub Td37 Td41
																													App addflagTd42 flag 
																												Let Td52
																													Let Td44
																														Let Td43
																															Float:0.250000
																															FMul pi Td43
																														Let Td51
																															Let Td50
																																Let Td46
																																	Let Td45
																																		Float:1.000000
																																		FSub Td45 abs
																																	Let Td48
																																		Let Td47
																																			Float:1.000000
																																			FAdd abs Td47
																																		Let Td49
																																			FReciprocal Td48
																																			FMul Td46 Td49
																																App atan_kernelTd50 
																															FSub Td44 Td51
																													App addflagTd52 flag 
																										Let Td62
																											Let Td54
																												Let Td53
																													Float:0.250000
																													FMul pi Td53
																												Let Td61
																													Let Td60
																														Let Td56
																															Let Td55
																																Float:1.000000
																																FSub Td55 abs
																															Let Td58
																																Let Td57
																																	Float:1.000000
																																	FAdd abs Td57
																																Let Td59
																																	FReciprocal Td58
																																	FMul Td56 Td59
																														App atan_kernelTd60 
																													FSub Td54 Td61
																											App addflagTd62 flag 
																								Let Td63
																									App atan_kernelabs 
																									App addflagTd63 flag 
																			Let x
																				Float:3.000000
																				Let y
																					Float:4.000000
																					Let z
																						Float:5.000000
																						Let Tu11
																							Let Ta12
																								ExtArray 288
																								Let Ti13
																									Int:0
																									Let Td14
																										Readfloat
																										Put Ta12 Ti13 Td14
																							Let Tu10
																								Let Ta15
																									ExtArray 288
																									Let Ti16
																										Int:1
																										Let Td17
																											Readfloat
																											Put Ta15 Ti16 Td17
																								Let Tu9
																									Let Ta18
																										ExtArray 288
																										Let Ti19
																											Int:2
																											Let Td20
																												Readfloat
																												Put Ta18 Ti19 Td20
																									Let xx
																										Let Td23
																											Let Ta21
																												ExtArray 288
																												Let Ti22
																													Int:0
																													Get Ta21 Ti22
																											FAdd x Td23
																										Let yy
																											Let Td26
																												Let Ta24
																													ExtArray 288
																													Let Ti25
																														Int:1
																														Get Ta24 Ti25
																												FAdd y Td26
																											Let zz
																												Let Td29
																													Let Ta27
																														ExtArray 288
																														Let Ti28
																															Int:2
																															Get Ta27 Ti28
																													FAdd z Td29
																												Let Td30
																													Float:6.000000
																													IfEq xx Td30
																														Let Ti31
																															Int:3
																															App print_intTi31 
																														Let Ti32
																															Int:2
																															App print_intTi32 
