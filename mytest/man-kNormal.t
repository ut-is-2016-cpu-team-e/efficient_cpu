LetRec fneg x 
	FNeg x
	LetRec fhalf x 
		Let Td409
			Float:0.500000
			FMul x Td409
		LetRec fsqr x 
			FMul x x
			LetRec fflag a 
				Let Td407
					Float:0.000000
					IfLE Td407 a
						Int:1
						Let Ti408
							Int:1
							Neg Ti408
				LetRec countn a b c 
					IfLE b a
						Let Ti404
							Sub a b
							Let Ti406
								Let Ti405
									Int:1
									Add c Ti405
								App countnTi404 b Ti406 
						Var c
					LetRec mymul a b sum 
						Let Ti400
							Int:0
							IfEq a Ti400
								Var sum
								Let Ti402
									Let Ti401
										Int:1
										Sub a Ti401
									Let Ti403
										Add sum b
										App mymulTi402 b Ti403 
						LetRec print_int a 
							Let b
								Let Ti358
									Int:0
									IfLE Ti358 a
										Var a
										Let Tu1
											Let Ti359
												Int:45
												printchar Ti359
											Neg a
								Let x
									Let Ti360
										Int:10000
										Let Ti361
											Int:0
											App countnb Ti360 Ti361 
									Let b
										Let Ti364
											Let Ti362
												Int:10000
												Let Ti363
													Int:0
													App mymulx Ti362 Ti363 
											Sub b Ti364
										Let flag
											Let Ti365
												Int:0
												IfLE x Ti365
													Int:0
													Let Tu2
														Let Ti367
															Let Ti366
																Int:48
																Add Ti366 x
															printchar Ti367
														Int:1
											Let x
												Let Ti368
													Int:1000
													Let Ti369
														Int:0
														App countnb Ti368 Ti369 
												Let b
													Let Ti372
														Let Ti370
															Int:1000
															Let Ti371
																Int:0
																App mymulx Ti370 Ti371 
														Sub b Ti372
													Let flag
														Let Ti373
															Int:0
															IfLE x Ti373
																Let Ti374
																	Int:1
																	IfEq flag Ti374
																		Let Tu4
																			Let Ti375
																				Int:48
																				printchar Ti375
																			Int:1
																		Int:0
																Let Tu3
																	Let Ti377
																		Let Ti376
																			Int:48
																			Add Ti376 x
																		printchar Ti377
																	Int:1
														Let x
															Let Ti378
																Int:100
																Let Ti379
																	Int:0
																	App countnb Ti378 Ti379 
															Let b
																Let Ti382
																	Let Ti380
																		Int:100
																		Let Ti381
																			Int:0
																			App mymulx Ti380 Ti381 
																	Sub b Ti382
																Let flag
																	Let Ti383
																		Int:0
																		IfLE x Ti383
																			Let Ti384
																				Int:1
																				IfEq flag Ti384
																					Let Tu6
																						Let Ti385
																							Int:48
																							printchar Ti385
																						Int:1
																					Int:0
																			Let Tu5
																				Let Ti387
																					Let Ti386
																						Int:48
																						Add Ti386 x
																					printchar Ti387
																				Int:1
																	Let x
																		Let Ti388
																			Int:10
																			Let Ti389
																				Int:0
																				App countnb Ti388 Ti389 
																		Let b
																			Let Ti392
																				Let Ti390
																					Int:10
																					Let Ti391
																						Int:0
																						App mymulx Ti390 Ti391 
																				Sub b Ti392
																			Let flag
																				Let Ti393
																					Int:0
																					IfLE x Ti393
																						Let Ti394
																							Int:1
																							IfEq flag Ti394
																								Let Tu8
																									Let Ti395
																										Int:48
																										printchar Ti395
																									Int:1
																								Int:0
																						Let Tu7
																							Let Ti397
																								Let Ti396
																									Int:48
																									Add Ti396 x
																								printchar Ti397
																							Int:1
																				Let Ti399
																					Let Ti398
																						Int:48
																						Add Ti398 b
																					printchar Ti399
							LetRec int_of_float a 
								Let abs
									fabs a
									Let flag
										App fflaga 
										LetRec ftoi_ret a 
											LetRec div2like a 
												LetRec div2like_sub a b 
													Let Td353
														Float:2.000000
														IfLE Td353 a
															Let Td355
																Let Td354
																	Float:2.000000
																	FSub a Td354
																Let Td357
																	Let Td356
																		Float:1.000000
																		FAdd b Td356
																	App div2like_subTd355 Td357 
															Var b
													Let Td352
														Float:0.000000
														App div2like_suba Td352 
												LetRec ftoi_ret_sub a b c 
													Let a_sub
														App div2likea 
														Let Td344
															Float:1.000000
															IfLE Td344 a
																Let Td345
																	Float:1.000000
																	Let Td348
																		Let Td347
																			Let Td346
																				Float:2.000000
																				FMul a_sub Td346
																			FSub a Td347
																		IfLE Td345 Td348
																			Let Ti349
																				Add b c
																				Let Ti350
																					Add c c
																					App ftoi_ret_suba_sub Ti349 Ti350 
																			Let Ti351
																				Add c c
																				App ftoi_ret_suba_sub b Ti351 
																Var b
													Let Ti342
														Int:0
														Let Ti343
															Int:1
															App ftoi_ret_suba Ti342 Ti343 
											LetRec ftoi_big a b 
												Let a_sub
													Let Td338
														Float:8388608.000000
														FSub a Td338
													Let b_sub
														Let Ti339
															Int:8388608
															Add b Ti339
														Let Td340
															Float:8388608.000000
															IfLE Td340 a_sub
																App ftoi_biga_sub b_sub 
																Let Ti341
																	App ftoi_reta_sub 
																	Add b_sub Ti341
												Let Ti331
													Int:1
													IfEq flag Ti331
														Let Td332
															Float:8388608.000000
															IfLE abs Td332
																App ftoi_retabs 
																Let Ti333
																	Int:0
																	App ftoi_bigabs Ti333 
														Let Td334
															Float:8388608.000000
															IfLE abs Td334
																Let Ti335
																	App ftoi_retabs 
																	Neg Ti335
																Let Ti337
																	Let Ti336
																		Int:0
																		App ftoi_bigabs Ti336 
																	Neg Ti337
								LetRec float_of_int a 
									Let abs
										Let Ti306
											Int:0
											IfLE a Ti306
												Neg a
												Var a
										Let flag
											Let Ti307
												Int:0
												IfLE a Ti307
													Let Ti308
														Int:1
														Neg Ti308
													Int:1
											LetRec itof_ret a 
												LetRec itof_ret_sub a b c 
													Let a_sub
														ShiftR1 a
														Let Ti322
															Int:0
															IfEq a Ti322
																Var b
																Let Ti324
																	Let Ti323
																		Sub a a_sub
																		Sub Ti323 a_sub
																	Let Ti325
																		Int:0
																		IfLE Ti324 Ti325
																			Let Td327
																				Let Td326
																					Float:2.000000
																					FMul c Td326
																				App itof_ret_suba_sub b Td327 
																			Let Td328
																				FAdd b c
																				Let Td330
																					Let Td329
																						Float:2.000000
																						FMul c Td329
																					App itof_ret_suba_sub Td328 Td330 
													Let Td320
														Float:0.000000
														Let Td321
															Float:1.000000
															App itof_ret_suba Td320 Td321 
												LetRec itof_big a b 
													Let a_sub
														Let Ti316
															Int:8388608
															Sub a Ti316
														Let b_sub
															Let Td317
																Float:8388608.000000
																FAdd b Td317
															Let Ti318
																Int:8388608
																IfLE Ti318 a_sub
																	App itof_biga_sub b_sub 
																	Let Td319
																		App itof_reta_sub 
																		FAdd b_sub Td319
													Let Ti309
														Int:1
														IfEq flag Ti309
															Let Ti310
																Int:8388608
																IfLE abs Ti310
																	App itof_retabs 
																	Let Td311
																		Float:0.000000
																		App itof_bigabs Td311 
															Let Ti312
																Int:8388608
																IfLE abs Ti312
																	Let Td313
																		App itof_retabs 
																		FNeg Td313
																	Let Td315
																		Let Td314
																			Float:0.000000
																			App itof_bigabs Td314 
																		FNeg Td315
									LetRec floor a 
										Let abs
											fabs a
											LetRec floor_pos_ker a 
												Let Td305
													Float:1.000000
													FSub a Td305
												LetRec floor_pos_small a 
													Let b
														Let Td303
															Float:8388608.000000
															FAdd a Td303
														Let c
															Let Td304
																Float:8388608.000000
																FSub b Td304
															IfLE c a
																Var c
																App floor_pos_kerc 
													LetRec floor_pos a 
														Let Td302
															Float:8388608.000000
															IfLE a Td302
																App floor_pos_smalla 
																App floor_pos_kera 
														LetRec floor_neg_ker a 
															Let Td301
																Float:1.000000
																FAdd a Td301
															LetRec floor_neg_small a 
																Let b
																	Let Td298
																		Float:8388608.000000
																		FAdd a Td298
																	Let c
																		Let Td299
																			Float:8388608.000000
																			FSub b Td299
																		IfLE a c
																			FNeg c
																			Let Td300
																				App floor_neg_kerc 
																				FNeg Td300
																LetRec floor_neg a 
																	Let Td296
																		Float:8388608.000000
																		IfLE a Td296
																			App floor_neg_smalla 
																			Let Td297
																				App floor_neg_kera 
																				FNeg Td297
																	Let Td295
																		Float:0.000000
																		IfLE a Td295
																			App floor_negabs 
																			App floor_posabs 
										Let pi
											Float:3.141593
											Let pidouble
												Float:6.283185
												LetRec reduction_pi2 a 
													IfLE a pidouble
														Var a
														Let Td294
															FSub a pidouble
															App reduction_pi2Td294 
													LetRec addflag c flag 
														Let Ti292
															Int:1
															IfEq flag Ti292
																Var c
																Let Td293
																	Float:-1.000000
																	FMul c Td293
														LetRec sin_kernel a 
															Let a3
																Let Td281
																	FMul a a
																	FMul Td281 a
																Let a5
																	Let Td282
																		FMul a3 a
																		FMul Td282 a
																	Let a7
																		Let Td283
																			FMul a5 a
																			FMul Td283 a
																		Let Td289
																			Let Td286
																				Let Td285
																					Let Td284
																						Float:0.166667
																						FMul Td284 a3
																					FSub a Td285
																				Let Td288
																					Let Td287
																						Float:0.008333
																						FMul Td287 a5
																					FAdd Td286 Td288
																			Let Td291
																				Let Td290
																					Float:0.000196
																					FMul Td290 a7
																				FSub Td289 Td291
															LetRec cos_kernel a 
																Let a2
																	FMul a a
																	Let a4
																		Let Td270
																			FMul a2 a
																			FMul Td270 a
																		Let a6
																			Let Td271
																				FMul a4 a
																				FMul Td271 a
																			Let Td278
																				Let Td275
																					Let Td272
																						Float:1.000000
																						Let Td274
																							Let Td273
																								Float:0.500000
																								FMul Td273 a2
																							FSub Td272 Td274
																					Let Td277
																						Let Td276
																							Float:0.041664
																							FMul Td276 a4
																						FAdd Td275 Td277
																				Let Td280
																					Let Td279
																						Float:0.001370
																						FMul Td279 a6
																					FSub Td278 Td280
																LetRec sin a 
																	LetRec sin3 a flag 
																		Let Td266
																			Let Td265
																				Float:0.250000
																				FMul pi Td265
																			IfLE a Td266
																				Let tmp
																					App sin_kernela 
																					App addflagtmp flag 
																				Let tmp
																					Let Td269
																						Let Td268
																							Let Td267
																								Float:0.500000
																								FMul pi Td267
																							FSub Td268 a
																						App cos_kernelTd269 
																					App addflagtmp flag 
																		LetRec sin2 a flag 
																			Let Td263
																				Let Td262
																					Float:0.500000
																					FMul pi Td262
																				IfLE Td263 a
																					Let Td264
																						FSub pi a
																						App sin3Td264 flag 
																					App sin3a flag 
																			Let abs
																				fabs a
																				Let flag
																					App fflaga 
																					Let r_abs
																						App reduction_pi2abs 
																						IfLE pi r_abs
																							Let Td260
																								FSub r_abs pi
																								Let Ti261
																									Neg flag
																									App sin2Td260 Ti261 
																							App sin2r_abs flag 
																	LetRec cos a 
																		LetRec cos3 a flag 
																			Let Td256
																				Let Td255
																					Float:0.250000
																					FMul pi Td255
																				IfLE a Td256
																					Let tmp
																						App cos_kernela 
																						App addflagtmp flag 
																					Let tmp
																						Let Td259
																							Let Td258
																								Let Td257
																									Float:0.500000
																									FMul pi Td257
																								FSub Td258 a
																							App sin_kernelTd259 
																						App addflagtmp flag 
																			LetRec cos2 a flag 
																				Let Td252
																					Let Td251
																						Float:0.500000
																						FMul pi Td251
																					IfLE Td252 a
																						Let Td253
																							FSub pi a
																							Let Ti254
																								Neg flag
																								App cos3Td253 Ti254 
																						App cos3a flag 
																				Let abs
																					fabs a
																					Let r_abs
																						App reduction_pi2abs 
																						IfLE pi r_abs
																							Let Td247
																								FSub r_abs pi
																								Let Ti249
																									Let Ti248
																										Int:1
																										Neg Ti248
																									App cos2Td247 Ti249 
																							Let Ti250
																								Int:1
																								App cos2r_abs Ti250 
																		LetRec atan a 
																			Let abs
																				fabs a
																				Let flag
																					App fflaga 
																					LetRec atan_kernel a 
																						Let a1
																							Let Td229
																								Let Td228
																									Let Td227
																										Float:0.060035
																										FMul Td227 a
																									FMul Td228 a
																								Let Td230
																									Float:0.089764
																									FSub Td229 Td230
																							Let a2
																								Let Td231
																									Float:0.111111
																									Let Td233
																										Let Td232
																											FMul a1 a
																											FMul Td232 a
																										FAdd Td231 Td233
																								Let a3
																									Let Td235
																										Let Td234
																											FMul a2 a
																											FMul Td234 a
																										Let Td236
																											Float:0.142857
																											FSub Td235 Td236
																									Let a4
																										Let Td238
																											Let Td237
																												FMul a3 a
																												FMul Td237 a
																											Let Td239
																												Float:0.200000
																												FAdd Td238 Td239
																										Let a5
																											Let Td241
																												Let Td240
																													FMul a4 a
																													FMul Td240 a
																												Let Td242
																													Float:0.333333
																													FSub Td241 Td242
																											Let Td246
																												Let Td243
																													Float:1.000000
																													Let Td245
																														Let Td244
																															FMul a5 a
																															FMul Td244 a
																														FAdd Td243 Td245
																												FMul a Td246
																						Let Td196
																							Float:0.437500
																							IfLE Td196 abs
																								Let Td197
																									Float:1.000000
																									IfLE Td197 abs
																										Let Td198
																											Float:2.437500
																											IfLE Td198 abs
																												Let Td205
																													Let Td200
																														Let Td199
																															Float:0.500000
																															FMul pi Td199
																														Let Td204
																															Let Td203
																																Let Td201
																																	Float:1.000000
																																	Let Td202
																																		FReciprocal abs
																																		FMul Td201 Td202
																																App atan_kernelTd203 
																															FSub Td200 Td204
																													App addflagTd205 flag 
																												Let Td215
																													Let Td207
																														Let Td206
																															Float:0.250000
																															FMul pi Td206
																														Let Td214
																															Let Td213
																																Let Td209
																																	Let Td208
																																		Float:1.000000
																																		FSub Td208 abs
																																	Let Td211
																																		Let Td210
																																			Float:1.000000
																																			FAdd abs Td210
																																		Let Td212
																																			FReciprocal Td211
																																			FMul Td209 Td212
																																App atan_kernelTd213 
																															FSub Td207 Td214
																													App addflagTd215 flag 
																										Let Td225
																											Let Td217
																												Let Td216
																													Float:0.250000
																													FMul pi Td216
																												Let Td224
																													Let Td223
																														Let Td219
																															Let Td218
																																Float:1.000000
																																FSub Td218 abs
																															Let Td221
																																Let Td220
																																	Float:1.000000
																																	FAdd abs Td220
																																Let Td222
																																	FReciprocal Td221
																																	FMul Td219 Td222
																														App atan_kernelTd223 
																													FSub Td217 Td224
																											App addflagTd225 flag 
																								Let Td226
																									App atan_kernelabs 
																									App addflagTd226 flag 
																			LetRec write_header Tu9 
																				Let Tu17
																					Let Ti185
																						Int:80
																						printchar Ti185
																					Let Tu16
																						Let Ti188
																							Let Ti186
																								Int:48
																								Let Ti187
																									Int:3
																									Add Ti186 Ti187
																							printchar Ti188
																						Let Tu15
																							Let Ti189
																								Int:10
																								printchar Ti189
																							Let Tu14
																								Let Ti190
																									Int:100
																									App print_intTi190 
																								Let Tu13
																									Let Ti191
																										Int:32
																										printchar Ti191
																									Let Tu12
																										Let Ti192
																											Int:100
																											App print_intTi192 
																										Let Tu11
																											Let Ti193
																												Int:32
																												printchar Ti193
																											Let Tu10
																												Let Ti194
																													Int:255
																													App print_intTi194 
																												Let Ti195
																													Int:10
																													printchar Ti195
																				Let step
																					Let a
																						Let Ti33
																							Int:6
																							Let Ti34
																								Int:0
																								ExtFunApp create_array Ti33,Ti34,
																						Let Tu23
																							Let Ti35
																								Int:0
																								Let Ti36
																									Int:3
																									Put a Ti35 Ti36
																							Let Tu22
																								Let Ti37
																									Int:1
																									Let Ti38
																										Int:8
																										Put a Ti37 Ti38
																								Let Tu21
																									Let Ti39
																										Int:2
																										Let Ti40
																											Int:12
																											Put a Ti39 Ti40
																									Let Tu20
																										Let Ti41
																											Int:3
																											Let Ti42
																												Int:16
																												Put a Ti41 Ti42
																										Let Tu19
																											Let Ti43
																												Int:4
																												Let Ti44
																													Int:25
																													Put a Ti43 Ti44
																											Let Tu18
																												Let Ti45
																													Int:5
																													Let Ti46
																														Int:100
																														Put a Ti45 Ti46
																												Var a
																					LetRec write_rgb x 
																						LetRec write fr fg fb 
																							Let r
																								App int_of_floatfr 
																								Let g
																									App int_of_floatfg 
																									Let b
																										App int_of_floatfb 
																										Let Tu28
																											Let Ti182
																												Int:32
																												printchar Ti182
																											Let Tu27
																												App print_intr 
																												Let Tu26
																													Let Ti183
																														Int:32
																														printchar Ti183
																													Let Tu25
																														App print_intg 
																														Let Tu24
																															Let Ti184
																																Int:32
																																printchar Ti184
																															App print_intb 
																							Let fx
																								App float_of_intx 
																								Let Ti85
																									Let Ti84
																										Int:0
																										Get step Ti84
																									IfLE x Ti85
																										Let Td86
																											Float:255.000000
																											Let Td87
																												Float:0.000000
																												Let Td88
																													Float:0.000000
																													App writeTd86 Td87 Td88 
																										Let Ti90
																											Let Ti89
																												Int:1
																												Get step Ti89
																											IfLE x Ti90
																												Let Td91
																													Float:255.000000
																													Let Td105
																														Let Td97
																															Let Td92
																																Float:255.000000
																																Let Td96
																																	Let Ti95
																																		Let Ti94
																																			Let Ti93
																																				Int:0
																																				Get step Ti93
																																			Sub x Ti94
																																		App float_of_intTi95 
																																	FMul Td92 Td96
																															Let Td103
																																Let Ti102
																																	Let Ti99
																																		Let Ti98
																																			Int:1
																																			Get step Ti98
																																		Let Ti101
																																			Let Ti100
																																				Int:0
																																				Get step Ti100
																																			Sub Ti99 Ti101
																																	App float_of_intTi102 
																																Let Td104
																																	FReciprocal Td103
																																	FMul Td97 Td104
																														Let Td106
																															Float:0.000000
																															App writeTd91 Td105 Td106 
																												Let Ti108
																													Let Ti107
																														Int:2
																														Get step Ti107
																													IfLE x Ti108
																														Let Td122
																															Let Td114
																																Let Td109
																																	Float:255.000000
																																	Let Td113
																																		Let Ti112
																																			Let Ti111
																																				Let Ti110
																																					Int:2
																																					Get step Ti110
																																				Sub Ti111 x
																																			App float_of_intTi112 
																																		FMul Td109 Td113
																																Let Td120
																																	Let Ti119
																																		Let Ti116
																																			Let Ti115
																																				Int:2
																																				Get step Ti115
																																			Let Ti118
																																				Let Ti117
																																					Int:1
																																					Get step Ti117
																																				Sub Ti116 Ti118
																																		App float_of_intTi119 
																																	Let Td121
																																		FReciprocal Td120
																																		FMul Td114 Td121
																															Let Td123
																																Float:255.000000
																																Let Td124
																																	Float:0.000000
																																	App writeTd122 Td123 Td124 
																														Let Ti126
																															Let Ti125
																																Int:3
																																Get step Ti125
																															IfLE x Ti126
																																Let Td127
																																	Float:0.000000
																																	Let Td128
																																		Float:255.000000
																																		Let Td142
																																			Let Td134
																																				Let Td129
																																					Float:255.000000
																																					Let Td133
																																						Let Ti132
																																							Let Ti131
																																								Let Ti130
																																									Int:2
																																									Get step Ti130
																																								Sub x Ti131
																																							App float_of_intTi132 
																																						FMul Td129 Td133
																																				Let Td140
																																					Let Ti139
																																						Let Ti136
																																							Let Ti135
																																								Int:3
																																								Get step Ti135
																																							Let Ti138
																																								Let Ti137
																																									Int:2
																																									Get step Ti137
																																								Sub Ti136 Ti138
																																						App float_of_intTi139 
																																					Let Td141
																																						FReciprocal Td140
																																						FMul Td134 Td141
																																			App writeTd127 Td128 Td142 
																																Let Ti144
																																	Let Ti143
																																		Int:4
																																		Get step Ti143
																																	IfLE x Ti144
																																		Let Td145
																																			Float:0.000000
																																			Let Td159
																																				Let Td151
																																					Let Td146
																																						Float:255.000000
																																						Let Td150
																																							Let Ti149
																																								Let Ti148
																																									Let Ti147
																																										Int:4
																																										Get step Ti147
																																									Sub Ti148 x
																																								App float_of_intTi149 
																																							FMul Td146 Td150
																																					Let Td157
																																						Let Ti156
																																							Let Ti153
																																								Let Ti152
																																									Int:4
																																									Get step Ti152
																																								Let Ti155
																																									Let Ti154
																																										Int:3
																																										Get step Ti154
																																									Sub Ti153 Ti155
																																							App float_of_intTi156 
																																						Let Td158
																																							FReciprocal Td157
																																							FMul Td151 Td158
																																				Let Td160
																																					Float:255.000000
																																					App writeTd145 Td159 Td160 
																																		Let Ti162
																																			Let Ti161
																																				Int:5
																																				Get step Ti161
																																			IfLE x Ti162
																																				Let Td176
																																					Let Td168
																																						Let Td163
																																							Float:255.000000
																																							Let Td167
																																								Let Ti166
																																									Let Ti165
																																										Let Ti164
																																											Int:4
																																											Get step Ti164
																																										Sub x Ti165
																																									App float_of_intTi166 
																																								FMul Td163 Td167
																																						Let Td174
																																							Let Ti173
																																								Let Ti170
																																									Let Ti169
																																										Int:5
																																										Get step Ti169
																																									Let Ti172
																																										Let Ti171
																																											Int:4
																																											Get step Ti171
																																										Sub Ti170 Ti172
																																								App float_of_intTi173 
																																							Let Td175
																																								FReciprocal Td174
																																								FMul Td168 Td175
																																					Let Td177
																																						Float:0.000000
																																						Let Td178
																																							Float:255.000000
																																							App writeTd176 Td177 Td178 
																																				Let Td179
																																					Float:0.000000
																																					Let Td180
																																						Float:0.000000
																																						Let Td181
																																							Float:0.000000
																																							App writeTd179 Td180 Td181 
																						LetRec yloop y 
																							Let Ti50
																								Int:100
																								IfLE Ti50 y
																									Unit
																									LetRec xloop x y 
																										Let Ti54
																											Int:100
																											IfLE Ti54 x
																												Unit
																												Let fx
																													App float_of_intx 
																													Let fy
																														App float_of_inty 
																														Let cr
																															Let Td57
																																Let Td55
																																	Float:50.000000
																																	Let Td56
																																		FReciprocal Td55
																																		FMul fx Td56
																																Let Td58
																																	Float:1.500000
																																	FSub Td57 Td58
																															Let ci
																																Let Td61
																																	Let Td59
																																		Float:50.000000
																																		Let Td60
																																			FReciprocal Td59
																																			FMul fy Td60
																																	Let Td62
																																		Float:1.000000
																																		FSub Td61 Td62
																																LetRec iloop i zr zi cr ci 
																																	Let Ti68
																																		Int:256
																																		IfLE Ti68 i
																																			Let Ti69
																																				Int:256
																																				App write_rgbTi69 
																																			Let nr
																																				Let Td72
																																					Let Td70
																																						FMul zr zr
																																						Let Td71
																																							FMul zi zi
																																							FSub Td70 Td71
																																					FAdd Td72 cr
																																				Let ni
																																					Let Td75
																																						Let Td74
																																							Let Td73
																																								Float:2.000000
																																								FMul Td73 zr
																																							FMul Td74 zi
																																						FAdd Td75 ci
																																					Let Td78
																																						Let Td76
																																							FMul zr zr
																																							Let Td77
																																								FMul zi zi
																																								FAdd Td76 Td77
																																						Let Td81
																																							Let Td79
																																								Float:2.000000
																																								Let Td80
																																									Float:2.000000
																																									FMul Td79 Td80
																																							IfLE Td78 Td81
																																								Let Ti83
																																									Let Ti82
																																										Int:1
																																										Add i Ti82
																																									App iloopTi83 nr ni cr ci 
																																								App write_rgbi 
																																	Let Tu29
																																		Let Ti63
																																			Int:0
																																			Let Td64
																																				Float:0.000000
																																				Let Td65
																																					Float:0.000000
																																					App iloopTi63 Td64 Td65 cr ci 
																																		Let Ti67
																																			Let Ti66
																																				Int:1
																																				Add x Ti66
																																			App xloopTi67 y 
																										Let Tu30
																											Let Ti51
																												Int:0
																												App xloopTi51 y 
																											Let Ti53
																												Let Ti52
																													Int:1
																													Add y Ti52
																												App yloopTi53 
																							Let Tu32
																								Let Tu47
																									Unit
																									App write_headerTu47 
																								Let Tu31
																									Let Ti48
																										Int:0
																										App yloopTi48 
																									Let Ti49
																										Int:0
																										App print_intTi49 
