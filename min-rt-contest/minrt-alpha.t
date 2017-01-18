LetRec fneg.2594 x.2595 
	FNeg x.2595
	LetRec fhalf.2596 x.2597 
		Let Td2593.6420
			Float:0.500000
			FMul x.2597 Td2593.6420
		LetRec fsqr.2598 x.2599 
			FMul x.2599 x.2599
			LetRec fflag.2600 a.2601 
				Let Td2591.6418
					Float:0.000000
					IfLE Td2591.6418 a.2601
						Int:1
						Let Ti2592.6419
							Int:1
							Neg Ti2592.6419
				LetRec fflag2.2602 a.2603 
					Let Td2589.6416
						Float:0.000000
						IfLE Td2589.6416 a.2603
							Float:1.000000
							Let Td2590.6417
								Float:1.000000
								FNeg Td2590.6417
					LetRec countn.2604 a.2605 b.2606 c.2607 
						IfLE b.2606 a.2605
							Let Ti2586.6413
								Sub a.2605 b.2606
								Let Ti2588.6414
									Let Ti2587.6415
										Int:1
										Add c.2607 Ti2587.6415
									App countn.2604Ti2586.6413 b.2606 Ti2588.6414 
							Var c.2607
						LetRec print_int.2608 a.2609 
							Let b.6354
								Let Ti2548.6410
									Int:0
									IfLE Ti2548.6410 a.2609
										Var a.2609
										Let Tu1.6411
											Let Ti2549.6412
												Int:45
												printchar Ti2549.6412
											Neg a.2609
								Let x.6355
									Let Ti2550.6408
										Int:10000
										Let Ti2551.6409
											Int:0
											App countn.2604b.6354 Ti2550.6408 Ti2551.6409 
									Let b.6356
										Let Ti2553.6406
											Let Ti2552.6407
												Int:10000
												Mul x.6355 Ti2552.6407
											Sub b.6354 Ti2553.6406
										Let flag.6357
											Let Ti2554.6402
												Int:0
												IfLE x.6355 Ti2554.6402
													Int:0
													Let Tu2.6403
														Let Ti2556.6404
															Let Ti2555.6405
																Int:48
																Add Ti2555.6405 x.6355
															printchar Ti2556.6404
														Int:1
											Let x.6358
												Let Ti2557.6400
													Int:1000
													Let Ti2558.6401
														Int:0
														App countn.2604b.6356 Ti2557.6400 Ti2558.6401 
												Let b.6359
													Let Ti2560.6398
														Let Ti2559.6399
															Int:1000
															Mul x.6358 Ti2559.6399
														Sub b.6356 Ti2560.6398
													Let flag.6360
														Let Ti2561.6391
															Int:0
															IfLE x.6358 Ti2561.6391
																Let Ti2562.6395
																	Int:1
																	IfEq flag.6357 Ti2562.6395
																		Let Tu4.6396
																			Let Ti2563.6397
																				Int:48
																				printchar Ti2563.6397
																			Int:1
																		Int:0
																Let Tu3.6392
																	Let Ti2565.6393
																		Let Ti2564.6394
																			Int:48
																			Add Ti2564.6394 x.6358
																		printchar Ti2565.6393
																	Int:1
														Let x.6361
															Let Ti2566.6389
																Int:100
																Let Ti2567.6390
																	Int:0
																	App countn.2604b.6359 Ti2566.6389 Ti2567.6390 
															Let b.6362
																Let Ti2569.6387
																	Let Ti2568.6388
																		Int:100
																		Mul x.6361 Ti2568.6388
																	Sub b.6359 Ti2569.6387
																Let flag.6363
																	Let Ti2570.6380
																		Int:0
																		IfLE x.6361 Ti2570.6380
																			Let Ti2571.6384
																				Int:1
																				IfEq flag.6360 Ti2571.6384
																					Let Tu6.6385
																						Let Ti2572.6386
																							Int:48
																							printchar Ti2572.6386
																						Int:1
																					Int:0
																			Let Tu5.6381
																				Let Ti2574.6382
																					Let Ti2573.6383
																						Int:48
																						Add Ti2573.6383 x.6361
																					printchar Ti2574.6382
																				Int:1
																	Let x.6364
																		Let Ti2575.6378
																			Int:10
																			Let Ti2576.6379
																				Int:0
																				App countn.2604b.6362 Ti2575.6378 Ti2576.6379 
																		Let b.6365
																			Let Ti2578.6376
																				Let Ti2577.6377
																					Int:10
																					Mul x.6364 Ti2577.6377
																				Sub b.6362 Ti2578.6376
																			Let flag.6366
																				Let Ti2579.6369
																					Int:0
																					IfLE x.6364 Ti2579.6369
																						Let Ti2580.6373
																							Int:1
																							IfEq flag.6363 Ti2580.6373
																								Let Tu8.6374
																									Let Ti2581.6375
																										Int:48
																										printchar Ti2581.6375
																									Int:1
																								Int:0
																						Let Tu7.6370
																							Let Ti2583.6371
																								Let Ti2582.6372
																									Int:48
																									Add Ti2582.6372 x.6364
																								printchar Ti2583.6371
																							Int:1
																				Let Ti2585.6367
																					Let Ti2584.6368
																						Int:48
																						Add Ti2584.6368 b.6365
																					printchar Ti2585.6367
							LetRec int_of_float.2610 a.2611 
								Let abs.6309
									fabs a.2611
									Let flag.6310
										App fflag.2600a.2611 
										LetRec ftoi_ret.6311 a.6312 
											LetRec div2like.6329 a.6330 
												LetRec div2like_sub.6345 a.6346 b.6347 
													Let Td2543.6349
														Float:2.000000
														IfLE Td2543.6349 a.6346
															Let Td2545.6350
																Let Td2544.6353
																	Float:2.000000
																	FSub a.6346 Td2544.6353
																Let Td2547.6351
																	Let Td2546.6352
																		Float:1.000000
																		FAdd b.6347 Td2546.6352
																	App div2like_sub.6345Td2545.6350 Td2547.6351 
															Var b.6347
													Let Td2542.6348
														Float:0.000000
														App div2like_sub.6345a.6330 Td2542.6348 
												LetRec ftoi_ret_sub.6331 a.6332 b.6333 c.6334 
													Let a_sub.6337
														App div2like.6329a.6332 
														Let Td2535.6338
															Float:1.000000
															IfLE Td2535.6338 a.6332
																Let Td2536.6339
																	Float:1.000000
																	Let Td2538.6340
																		Let Td2537.6344
																			FSub a.6332 a_sub.6337
																			FSub Td2537.6344 a_sub.6337
																		IfLE Td2536.6339 Td2538.6340
																			Let Ti2539.6342
																				Add b.6333 c.6334
																				Let Ti2540.6343
																					Add c.6334 c.6334
																					App ftoi_ret_sub.6331a_sub.6337 Ti2539.6342 Ti2540.6343 
																			Let Ti2541.6341
																				Add c.6334 c.6334
																				App ftoi_ret_sub.6331a_sub.6337 b.6333 Ti2541.6341 
																Var b.6333
													Let Ti2533.6335
														Int:0
														Let Ti2534.6336
															Int:1
															App ftoi_ret_sub.6331a.6312 Ti2533.6335 Ti2534.6336 
											LetRec ftoi_big.6313 a.6314 b.6315 
												Let a_sub.6323
													Let Td2529.6328
														Float:8388608.000000
														FSub a.6314 Td2529.6328
													Let b_sub.6324
														Let Ti2530.6327
															Int:8388608
															Add b.6315 Ti2530.6327
														Let Td2531.6325
															Float:8388608.000000
															IfLE Td2531.6325 a_sub.6323
																App ftoi_big.6313a_sub.6323 b_sub.6324 
																Let Ti2532.6326
																	App ftoi_ret.6311a_sub.6323 
																	Add b_sub.6324 Ti2532.6326
												Let Ti2522.6316
													Int:1
													IfEq flag.6310 Ti2522.6316
														Let Td2523.6321
															Float:8388608.000000
															IfLE abs.6309 Td2523.6321
																App ftoi_ret.6311abs.6309 
																Let Ti2524.6322
																	Int:0
																	App ftoi_big.6313abs.6309 Ti2524.6322 
														Let Td2525.6317
															Float:8388608.000000
															IfLE abs.6309 Td2525.6317
																Let Ti2526.6320
																	App ftoi_ret.6311abs.6309 
																	Neg Ti2526.6320
																Let Ti2528.6318
																	Let Ti2527.6319
																		Int:0
																		App ftoi_big.6313abs.6309 Ti2527.6319 
																	Neg Ti2528.6318
								LetRec float_of_int.2612 a.2613 
									Let abs.6270
										Let Ti2497.6308
											Int:0
											IfLE a.2613 Ti2497.6308
												Neg a.2613
												Var a.2613
										Let flag.6271
											Let Ti2498.6306
												Int:0
												IfLE a.2613 Ti2498.6306
													Let Ti2499.6307
														Int:1
														Neg Ti2499.6307
													Int:1
											LetRec itof_ret.6272 a.6273 
												LetRec itof_ret_sub.6290 a.6291 b.6292 c.6293 
													Let a_sub.6296
														ShiftR1 a.6291
														Let Ti2513.6297
															Int:0
															IfEq a.6291 Ti2513.6297
																Var b.6292
																Let Ti2515.6298
																	Let Ti2514.6305
																		Sub a.6291 a_sub.6296
																		Sub Ti2514.6305 a_sub.6296
																	Let Ti2516.6299
																		Int:0
																		IfLE Ti2515.6298 Ti2516.6299
																			Let Td2518.6303
																				Let Td2517.6304
																					Float:2.000000
																					FMul c.6293 Td2517.6304
																				App itof_ret_sub.6290a_sub.6296 b.6292 Td2518.6303 
																			Let Td2519.6300
																				FAdd b.6292 c.6293
																				Let Td2521.6301
																					Let Td2520.6302
																						Float:2.000000
																						FMul c.6293 Td2520.6302
																					App itof_ret_sub.6290a_sub.6296 Td2519.6300 Td2521.6301 
													Let Td2511.6294
														Float:0.000000
														Let Td2512.6295
															Float:1.000000
															App itof_ret_sub.6290a.6273 Td2511.6294 Td2512.6295 
												LetRec itof_big.6274 a.6275 b.6276 
													Let a_sub.6284
														Let Ti2507.6289
															Int:8388608
															Sub a.6275 Ti2507.6289
														Let b_sub.6285
															Let Td2508.6288
																Float:8388608.000000
																FAdd b.6276 Td2508.6288
															Let Ti2509.6286
																Int:8388608
																IfLE Ti2509.6286 a_sub.6284
																	App itof_big.6274a_sub.6284 b_sub.6285 
																	Let Td2510.6287
																		App itof_ret.6272a_sub.6284 
																		FAdd b_sub.6285 Td2510.6287
													Let Ti2500.6277
														Int:1
														IfEq flag.6271 Ti2500.6277
															Let Ti2501.6282
																Int:8388608
																IfLE abs.6270 Ti2501.6282
																	App itof_ret.6272abs.6270 
																	Let Td2502.6283
																		Float:0.000000
																		App itof_big.6274abs.6270 Td2502.6283 
															Let Ti2503.6278
																Int:8388608
																IfLE abs.6270 Ti2503.6278
																	Let Td2504.6281
																		App itof_ret.6272abs.6270 
																		FNeg Td2504.6281
																	Let Td2506.6279
																		Let Td2505.6280
																			Float:0.000000
																			App itof_big.6274abs.6270 Td2505.6280 
																		FNeg Td2506.6279
									LetRec floor.2614 a.2615 
										Let abs.6242
											fabs a.2615
											LetRec floor_pos_ker.6243 a.6244 
												Let Td2496.6269
													Float:1.000000
													FSub a.6244 Td2496.6269
												LetRec floor_pos_small.6245 a.6246 
													Let b.6265
														Let Td2494.6268
															Float:8388608.000000
															FAdd a.6246 Td2494.6268
														Let c.6266
															Let Td2495.6267
																Float:8388608.000000
																FSub b.6265 Td2495.6267
															IfLE c.6266 a.6246
																Var c.6266
																App floor_pos_ker.6243c.6266 
													LetRec floor_pos.6247 a.6248 
														Let Td2493.6264
															Float:8388608.000000
															IfLE a.6248 Td2493.6264
																App floor_pos_small.6245a.6248 
																App floor_pos_ker.6243a.6248 
														LetRec floor_neg_ker.6249 a.6250 
															Let Td2492.6263
																Float:1.000000
																FAdd a.6250 Td2492.6263
															LetRec floor_neg_small.6251 a.6252 
																Let b.6258
																	Let Td2489.6262
																		Float:8388608.000000
																		FAdd a.6252 Td2489.6262
																	Let c.6259
																		Let Td2490.6261
																			Float:8388608.000000
																			FSub b.6258 Td2490.6261
																		IfLE a.6252 c.6259
																			FNeg c.6259
																			Let Td2491.6260
																				App floor_neg_ker.6249c.6259 
																				FNeg Td2491.6260
																LetRec floor_neg.6253 a.6254 
																	Let Td2487.6256
																		Float:8388608.000000
																		IfLE a.6254 Td2487.6256
																			App floor_neg_small.6251a.6254 
																			Let Td2488.6257
																				App floor_neg_ker.6249a.6254 
																				FNeg Td2488.6257
																	Let Td2486.6255
																		Float:0.000000
																		IfLE a.2615 Td2486.6255
																			App floor_neg.6253abs.6242 
																			App floor_pos.6247abs.6242 
										LetRec reduction_pi2.2616 a.2617 
											Let pidouble.6240
												Float:6.283185
												IfLE a.2617 pidouble.6240
													Var a.2617
													Let Td2485.6241
														FSub a.2617 pidouble.6240
														App reduction_pi2.2616Td2485.6241 
											LetRec addflag.2618 c.2619 flag.2620 
												FMul c.2619 flag.2620
												LetRec sin_kernel.2621 a.2622 
													Let a3.6227
														Let Td2475.6239
															FMul a.2622 a.2622
															FMul Td2475.6239 a.2622
														Let a5.6228
															Let Td2476.6238
																FMul a3.6227 a.2622
																FMul Td2476.6238 a.2622
															Let a7.6229
																Let Td2477.6237
																	FMul a5.6228 a.2622
																	FMul Td2477.6237 a.2622
																Let Td2482.6230
																	Let Td2480.6233
																		Let Td2479.6235
																			Let Td2478.6236
																				Float:0.166667
																				FMul Td2478.6236 a3.6227
																			FSub a.2622 Td2479.6235
																		Let Td2481.6234
																			Float:0.008333
																			FDiv Td2481.6234 a5.6228 Td2480.6233
																	Let Td2484.6231
																		Let Td2483.6232
																			Float:0.000196
																			FMul Td2483.6232 a7.6229
																		FSub Td2482.6230 Td2484.6231
													LetRec cos_kernel.2623 a.2624 
														Let a2.6214
															FMul a.2624 a.2624
															Let a4.6215
																Let Td2465.6226
																	FMul a2.6214 a.2624
																	FMul Td2465.6226 a.2624
																Let a6.6216
																	Let Td2466.6225
																		FMul a4.6215 a.2624
																		FMul Td2466.6225 a.2624
																	Let Td2472.6217
																		Let Td2470.6220
																			Let Td2467.6222
																				Float:1.000000
																				Let Td2469.6223
																					Let Td2468.6224
																						Float:0.500000
																						FMul Td2468.6224 a2.6214
																					FSub Td2467.6222 Td2469.6223
																			Let Td2471.6221
																				Float:0.041664
																				FDiv Td2471.6221 a4.6215 Td2470.6220
																		Let Td2474.6218
																			Let Td2473.6219
																				Float:0.001370
																				FMul Td2473.6219 a6.6216
																			FSub Td2472.6217 Td2474.6218
														LetRec sin.2625 a.2626 
															Let pi.6191
																Float:3.141593
																LetRec sin3.6192 a.6193 flag.6194 
																	Let pi.6207
																		Float:3.141593
																		Let Td2462.6208
																			Let Td2461.6213
																				Float:0.250000
																				FMul pi.6207 Td2461.6213
																			IfLE a.6193 Td2462.6208
																				Let tmp.6212
																					App sin_kernel.2621a.6193 
																					App addflag.2618tmp.6212 flag.6194 
																				Let tmp.6209
																					Let Td2464.6210
																						Let Td2463.6211
																							Float:0.500000
																							FMSub pi.6207 Td2463.6211 a.6193
																						App cos_kernel.2623Td2464.6210 
																					App addflag.2618tmp.6209 flag.6194 
																	LetRec sin2.6195 a.6196 flag.6197 
																		Let pi.6203
																			Float:3.141593
																			Let Td2459.6204
																				Let Td2458.6206
																					Float:0.500000
																					FMul pi.6203 Td2458.6206
																				IfLE Td2459.6204 a.6196
																					Let Td2460.6205
																						FSub pi.6203 a.6196
																						App sin3.6192Td2460.6205 flag.6197 
																					App sin3.6192a.6196 flag.6197 
																		Let abs.6198
																			fabs a.2626
																			Let flag.6199
																				App fflag2.2602a.2626 
																				Let r_abs.6200
																					App reduction_pi2.2616abs.6198 
																					IfLE pi.6191 r_abs.6200
																						Let Td2456.6201
																							FSub r_abs.6200 pi.6191
																							Let Td2457.6202
																								FNeg flag.6199
																								App sin2.6195Td2456.6201 Td2457.6202 
																						App sin2.6195r_abs.6200 flag.6199 
															LetRec cos.2627 a.2628 
																Let pi.6166
																	Float:3.141593
																	LetRec cos3.6167 a.6168 flag.6169 
																		Let pi.6184
																			Float:3.141593
																			Let Td2453.6185
																				Let Td2452.6190
																					Float:0.250000
																					FMul pi.6184 Td2452.6190
																				IfLE a.6168 Td2453.6185
																					Let tmp.6189
																						App cos_kernel.2623a.6168 
																						App addflag.2618tmp.6189 flag.6169 
																					Let tmp.6186
																						Let Td2455.6187
																							Let Td2454.6188
																								Float:0.500000
																								FMSub pi.6184 Td2454.6188 a.6168
																							App sin_kernel.2621Td2455.6187 
																						App addflag.2618tmp.6186 flag.6169 
																		LetRec cos2.6170 a.6171 flag.6172 
																			Let pi.6179
																				Float:3.141593
																				Let Td2449.6180
																					Let Td2448.6183
																						Float:0.500000
																						FMul pi.6179 Td2448.6183
																					IfLE Td2449.6180 a.6171
																						Let Td2450.6181
																							FSub pi.6179 a.6171
																							Let Td2451.6182
																								FNeg flag.6172
																								App cos3.6167Td2450.6181 Td2451.6182 
																						App cos3.6167a.6171 flag.6172 
																			Let abs.6173
																				fabs a.2628
																				Let r_abs.6174
																					App reduction_pi2.2616abs.6173 
																					IfLE pi.6166 r_abs.6174
																						Let Td2444.6176
																							FSub r_abs.6174 pi.6166
																							Let Td2446.6177
																								Let Td2445.6178
																									Float:1.000000
																									FNeg Td2445.6178
																								App cos2.6170Td2444.6176 Td2446.6177 
																						Let Td2447.6175
																							Float:1.000000
																							App cos2.6170r_abs.6174 Td2447.6175 
																LetRec atan.2629 a.2630 
																	Let pi.6116
																		Float:3.141593
																		Let abs.6117
																			fabs a.2630
																			Let flag.6118
																				App fflag2.2602a.2630 
																				LetRec atan_kernel.6119 a.6120 
																					Let pi.6146
																						Float:3.141593
																						Let a1.6147
																							Let Td2431.6163
																								Let Td2430.6165
																									Float:0.060035
																									FMul Td2430.6165 a.6120
																								Let Td2432.6164
																									Float:0.089764
																									FMSub Td2431.6163 a.6120 Td2432.6164
																							Let a2.6148
																								Let Td2433.6161
																									Float:0.111111
																									Let Td2434.6162
																										FMul a1.6147 a.6120
																										FDiv Td2434.6162 a.6120 Td2433.6161
																								Let a3.6149
																									Let Td2435.6159
																										FMul a2.6148 a.6120
																										Let Td2436.6160
																											Float:0.142857
																											FMSub Td2435.6159 a.6120 Td2436.6160
																									Let a4.6150
																										Let Td2437.6157
																											FMul a3.6149 a.6120
																											Let Td2438.6158
																												Float:0.200000
																												FDiv Td2437.6157 a.6120 Td2438.6158
																										Let a5.6151
																											Let Td2439.6155
																												FMul a4.6150 a.6120
																												Let Td2440.6156
																													Float:0.333333
																													FMSub Td2439.6155 a.6120 Td2440.6156
																											Let Td2443.6152
																												Let Td2441.6153
																													Float:1.000000
																													Let Td2442.6154
																														FMul a5.6151 a.6120
																														FDiv Td2442.6154 a.6120 Td2441.6153
																												FMul a.6120 Td2443.6152
																					Let Td2405.6121
																						Float:0.437500
																						IfLE Td2405.6121 abs.6117
																							Let Td2406.6123
																								Float:1.000000
																								IfLE Td2406.6123 abs.6117
																									Let Td2407.6132
																										Float:2.437500
																										IfLE Td2407.6132 abs.6117
																											Let Td2412.6141
																												Let Td2408.6142
																													Float:0.500000
																													Let Td2411.6143
																														Let Td2410.6144
																															Let Td2409.6145
																																Float:1.000000
																																FDiv Td2409.6145 abs.6117
																															App atan_kernel.6119Td2410.6144 
																														FMSub pi.6116 Td2408.6142 Td2411.6143
																												App addflag.2618Td2412.6141 flag.6118 
																											Let Td2420.6133
																												Let Td2413.6134
																													Float:0.250000
																													Let Td2419.6135
																														Let Td2418.6136
																															Let Td2415.6137
																																Let Td2414.6140
																																	Float:1.000000
																																	FSub Td2414.6140 abs.6117
																																Let Td2417.6138
																																	Let Td2416.6139
																																		Float:1.000000
																																		FAdd abs.6117 Td2416.6139
																																	FDiv Td2415.6137 Td2417.6138
																															App atan_kernel.6119Td2418.6136 
																														FMSub pi.6116 Td2413.6134 Td2419.6135
																												App addflag.2618Td2420.6133 flag.6118 
																									Let Td2428.6124
																										Let Td2421.6125
																											Float:0.250000
																											Let Td2427.6126
																												Let Td2426.6127
																													Let Td2423.6128
																														Let Td2422.6131
																															Float:1.000000
																															FSub Td2422.6131 abs.6117
																														Let Td2425.6129
																															Let Td2424.6130
																																Float:1.000000
																																FAdd abs.6117 Td2424.6130
																															FDiv Td2423.6128 Td2425.6129
																													App atan_kernel.6119Td2426.6127 
																												FMSub pi.6116 Td2421.6125 Td2427.6126
																										App addflag.2618Td2428.6124 flag.6118 
																							Let Td2429.6122
																								App atan_kernel.6119abs.6117 
																								App addflag.2618Td2429.6122 flag.6118 
																	LetRec sgn.2631 x.2632 
																		Let Td2403.6114
																			Float:0.000000
																			IfEq x.2632 Td2403.6114
																				Float:0.000000
																				Let Td2404.6115
																					Float:0.000000
																					IfLE x.2632 Td2404.6115
																						Float:-1.000000
																						Float:1.000000
																		LetRec fneg_cond.2633 cond.2634 x.2635 
																			Let Ti2402.6113
																				Int:0
																				IfEq cond.2634 Ti2402.6113
																					App fneg.2594x.2635 
																					Var x.2635
																			LetRec add_mod5.2636 x.2637 y.2638 
																				Let sum.6110
																					Add x.2637 y.2638
																					Let Ti2400.6111
																						Int:5
																						IfLE Ti2400.6111 sum.6110
																							Let Ti2401.6112
																								Int:5
																								Sub sum.6110 Ti2401.6112
																							Var sum.6110
																				LetRec vecset.2639 v.2640 x.2641 y.2642 z.2643 
																					Let Tu10.6105
																						Let Ti2397.6109
																							Int:0
																							Put v.2640 Ti2397.6109 x.2641
																						Let Tu9.6106
																							Let Ti2398.6108
																								Int:1
																								Put v.2640 Ti2398.6108 y.2642
																							Let Ti2399.6107
																								Int:2
																								Put v.2640 Ti2399.6107 z.2643
																					LetRec vecfill.2644 v.2645 elem.2646 
																						Let Tu12.6100
																							Let Ti2394.6104
																								Int:0
																								Put v.2645 Ti2394.6104 elem.2646
																							Let Tu11.6101
																								Let Ti2395.6103
																									Int:1
																									Put v.2645 Ti2395.6103 elem.2646
																								Let Ti2396.6102
																									Int:2
																									Put v.2645 Ti2396.6102 elem.2646
																						LetRec vecbzero.2647 v.2648 
																							Let Td2393.6099
																								Float:0.000000
																								App vecfill.2644v.2648 Td2393.6099 
																							LetRec veccpy.2649 dest.2650 src.2651 
																								Let Tu14.6088
																									Let Ti2384.6096
																										Int:0
																										Let Td2386.6097
																											Let Ti2385.6098
																												Int:0
																												Get src.2651 Ti2385.6098
																											Put dest.2650 Ti2384.6096 Td2386.6097
																									Let Tu13.6089
																										Let Ti2387.6093
																											Int:1
																											Let Td2389.6094
																												Let Ti2388.6095
																													Int:1
																													Get src.2651 Ti2388.6095
																												Put dest.2650 Ti2387.6093 Td2389.6094
																										Let Ti2390.6090
																											Int:2
																											Let Td2392.6091
																												Let Ti2391.6092
																													Int:2
																													Get src.2651 Ti2391.6092
																												Put dest.2650 Ti2390.6090 Td2392.6091
																								LetRec vecdist2.2652 p.2653 q.2654 
																									Let Td2377.6069
																										Let Td2370.6076
																											Let Td2369.6083
																												Let Td2366.6084
																													Let Ti2365.6087
																														Int:0
																														Get p.2653 Ti2365.6087
																													Let Td2368.6085
																														Let Ti2367.6086
																															Int:0
																															Get q.2654 Ti2367.6086
																														FSub Td2366.6084 Td2368.6085
																												App fsqr.2598Td2369.6083 
																											Let Td2376.6077
																												Let Td2375.6078
																													Let Td2372.6079
																														Let Ti2371.6082
																															Int:1
																															Get p.2653 Ti2371.6082
																														Let Td2374.6080
																															Let Ti2373.6081
																																Int:1
																																Get q.2654 Ti2373.6081
																															FSub Td2372.6079 Td2374.6080
																													App fsqr.2598Td2375.6078 
																												FAdd Td2370.6076 Td2376.6077
																										Let Td2383.6070
																											Let Td2382.6071
																												Let Td2379.6072
																													Let Ti2378.6075
																														Int:2
																														Get p.2653 Ti2378.6075
																													Let Td2381.6073
																														Let Ti2380.6074
																															Int:2
																															Get q.2654 Ti2380.6074
																														FSub Td2379.6072 Td2381.6073
																												App fsqr.2598Td2382.6071 
																											FAdd Td2377.6069 Td2383.6070
																									LetRec vecunit.2655 v.2656 
																										Let il.6041
																											Let Td2340.6056
																												Float:1.000000
																												Let Td2352.6057
																													Let Td2351.6058
																														Let Td2347.6059
																															Let Td2343.6063
																																Let Td2342.6067
																																	Let Ti2341.6068
																																		Int:0
																																		Get v.2656 Ti2341.6068
																																	App fsqr.2598Td2342.6067 
																																Let Td2346.6064
																																	Let Td2345.6065
																																		Let Ti2344.6066
																																			Int:1
																																			Get v.2656 Ti2344.6066
																																		App fsqr.2598Td2345.6065 
																																	FAdd Td2343.6063 Td2346.6064
																															Let Td2350.6060
																																Let Td2349.6061
																																	Let Ti2348.6062
																																		Int:2
																																		Get v.2656 Ti2348.6062
																																	App fsqr.2598Td2349.6061 
																																FAdd Td2347.6059 Td2350.6060
																														sqrt Td2351.6058
																													FDiv Td2340.6056 Td2352.6057
																											Let Tu16.6042
																												Let Ti2353.6052
																													Int:0
																													Let Td2356.6053
																														Let Td2355.6054
																															Let Ti2354.6055
																																Int:0
																																Get v.2656 Ti2354.6055
																															FMul Td2355.6054 il.6041
																														Put v.2656 Ti2353.6052 Td2356.6053
																												Let Tu15.6043
																													Let Ti2357.6048
																														Int:1
																														Let Td2360.6049
																															Let Td2359.6050
																																Let Ti2358.6051
																																	Int:1
																																	Get v.2656 Ti2358.6051
																																FMul Td2359.6050 il.6041
																															Put v.2656 Ti2357.6048 Td2360.6049
																													Let Ti2361.6044
																														Int:2
																														Let Td2364.6045
																															Let Td2363.6046
																																Let Ti2362.6047
																																	Int:2
																																	Get v.2656 Ti2362.6047
																																FMul Td2363.6046 il.6041
																															Put v.2656 Ti2361.6044 Td2364.6045
																										LetRec vecunit_sgn.2657 v.2658 inv.2659 
																											Let l.6010
																												Let Td2323.6030
																													Let Td2319.6031
																														Let Td2315.6035
																															Let Td2314.6039
																																Let Ti2313.6040
																																	Int:0
																																	Get v.2658 Ti2313.6040
																																App fsqr.2598Td2314.6039 
																															Let Td2318.6036
																																Let Td2317.6037
																																	Let Ti2316.6038
																																		Int:1
																																		Get v.2658 Ti2316.6038
																																	App fsqr.2598Td2317.6037 
																																FAdd Td2315.6035 Td2318.6036
																														Let Td2322.6032
																															Let Td2321.6033
																																Let Ti2320.6034
																																	Int:2
																																	Get v.2658 Ti2320.6034
																																App fsqr.2598Td2321.6033 
																															FAdd Td2319.6031 Td2322.6032
																													sqrt Td2323.6030
																												Let il.6011
																													Let Td2324.6026
																														Float:0.000000
																														IfEq l.6010 Td2324.6026
																															Float:1.000000
																															Let Ti2325.6027
																																Int:0
																																IfEq inv.2659 Ti2325.6027
																																	Let Td2326.6029
																																		Float:1.000000
																																		FDiv Td2326.6029 l.6010
																																	Let Td2327.6028
																																		Float:-1.000000
																																		FDiv Td2327.6028 l.6010
																													Let Tu18.6012
																														Let Ti2328.6022
																															Int:0
																															Let Td2331.6023
																																Let Td2330.6024
																																	Let Ti2329.6025
																																		Int:0
																																		Get v.2658 Ti2329.6025
																																	FMul Td2330.6024 il.6011
																																Put v.2658 Ti2328.6022 Td2331.6023
																														Let Tu17.6013
																															Let Ti2332.6018
																																Int:1
																																Let Td2335.6019
																																	Let Td2334.6020
																																		Let Ti2333.6021
																																			Int:1
																																			Get v.2658 Ti2333.6021
																																		FMul Td2334.6020 il.6011
																																	Put v.2658 Ti2332.6018 Td2335.6019
																															Let Ti2336.6014
																																Int:2
																																Let Td2339.6015
																																	Let Td2338.6016
																																		Let Ti2337.6017
																																			Int:2
																																			Get v.2658 Ti2337.6017
																																		FMul Td2338.6016 il.6011
																																	Put v.2658 Ti2336.6014 Td2339.6015
																											LetRec veciprod.2660 v.2661 w.2662 
																												Let Td2308.5996
																													Let Td2300.6001
																														Let Ti2299.6009
																															Int:0
																															Get v.2661 Ti2299.6009
																														Let Td2302.6002
																															Let Ti2301.6008
																																Int:0
																																Get w.2662 Ti2301.6008
																															Let Td2307.6003
																																Let Td2304.6004
																																	Let Ti2303.6007
																																		Int:1
																																		Get v.2661 Ti2303.6007
																																	Let Td2306.6005
																																		Let Ti2305.6006
																																			Int:1
																																			Get w.2662 Ti2305.6006
																																		FMul Td2304.6004 Td2306.6005
																																FDiv Td2300.6001 Td2302.6002 Td2307.6003
																													Let Td2310.5997
																														Let Ti2309.6000
																															Int:2
																															Get v.2661 Ti2309.6000
																														Let Td2312.5998
																															Let Ti2311.5999
																																Int:2
																																Get w.2662 Ti2311.5999
																															FDiv Td2310.5997 Td2312.5998 Td2308.5996
																												LetRec veciprod2.2663 v.2664 w0.2665 w1.2666 w2.2667 
																													Let Td2296.5988
																														Let Td2292.5991
																															Let Ti2291.5995
																																Int:0
																																Get v.2664 Ti2291.5995
																															Let Td2295.5992
																																Let Td2294.5993
																																	Let Ti2293.5994
																																		Int:1
																																		Get v.2664 Ti2293.5994
																																	FMul Td2294.5993 w1.2666
																																FDiv Td2292.5991 w0.2665 Td2295.5992
																														Let Td2298.5989
																															Let Ti2297.5990
																																Int:2
																																Get v.2664 Ti2297.5990
																															FDiv Td2298.5989 w2.2667 Td2296.5988
																													LetRec vecaccum.2668 dest.2669 scale.2670 v.2671 
																														Let Tu20.5968
																															Let Ti2273.5982
																																Int:0
																																Let Td2278.5983
																																	Let Td2275.5984
																																		Let Ti2274.5987
																																			Int:0
																																			Get dest.2669 Ti2274.5987
																																		Let Td2277.5985
																																			Let Ti2276.5986
																																				Int:0
																																				Get v.2671 Ti2276.5986
																																			FDiv scale.2670 Td2277.5985 Td2275.5984
																																	Put dest.2669 Ti2273.5982 Td2278.5983
																															Let Tu19.5969
																																Let Ti2279.5976
																																	Int:1
																																	Let Td2284.5977
																																		Let Td2281.5978
																																			Let Ti2280.5981
																																				Int:1
																																				Get dest.2669 Ti2280.5981
																																			Let Td2283.5979
																																				Let Ti2282.5980
																																					Int:1
																																					Get v.2671 Ti2282.5980
																																				FDiv scale.2670 Td2283.5979 Td2281.5978
																																		Put dest.2669 Ti2279.5976 Td2284.5977
																																Let Ti2285.5970
																																	Int:2
																																	Let Td2290.5971
																																		Let Td2287.5972
																																			Let Ti2286.5975
																																				Int:2
																																				Get dest.2669 Ti2286.5975
																																			Let Td2289.5973
																																				Let Ti2288.5974
																																					Int:2
																																					Get v.2671 Ti2288.5974
																																				FDiv scale.2670 Td2289.5973 Td2287.5972
																																		Put dest.2669 Ti2285.5970 Td2290.5971
																														LetRec vecadd.2672 dest.2673 v.2674 
																															Let Tu22.5948
																																Let Ti2255.5962
																																	Int:0
																																	Let Td2260.5963
																																		Let Td2257.5964
																																			Let Ti2256.5967
																																				Int:0
																																				Get dest.2673 Ti2256.5967
																																			Let Td2259.5965
																																				Let Ti2258.5966
																																					Int:0
																																					Get v.2674 Ti2258.5966
																																				FAdd Td2257.5964 Td2259.5965
																																		Put dest.2673 Ti2255.5962 Td2260.5963
																																Let Tu21.5949
																																	Let Ti2261.5956
																																		Int:1
																																		Let Td2266.5957
																																			Let Td2263.5958
																																				Let Ti2262.5961
																																					Int:1
																																					Get dest.2673 Ti2262.5961
																																				Let Td2265.5959
																																					Let Ti2264.5960
																																						Int:1
																																						Get v.2674 Ti2264.5960
																																					FAdd Td2263.5958 Td2265.5959
																																			Put dest.2673 Ti2261.5956 Td2266.5957
																																	Let Ti2267.5950
																																		Int:2
																																		Let Td2272.5951
																																			Let Td2269.5952
																																				Let Ti2268.5955
																																					Int:2
																																					Get dest.2673 Ti2268.5955
																																				Let Td2271.5953
																																					Let Ti2270.5954
																																						Int:2
																																						Get v.2674 Ti2270.5954
																																					FAdd Td2269.5952 Td2271.5953
																																			Put dest.2673 Ti2267.5950 Td2272.5951
																															LetRec vecmul.2675 dest.2676 v.2677 
																																Let Tu24.5928
																																	Let Ti2237.5942
																																		Int:0
																																		Let Td2242.5943
																																			Let Td2239.5944
																																				Let Ti2238.5947
																																					Int:0
																																					Get dest.2676 Ti2238.5947
																																				Let Td2241.5945
																																					Let Ti2240.5946
																																						Int:0
																																						Get v.2677 Ti2240.5946
																																					FMul Td2239.5944 Td2241.5945
																																			Put dest.2676 Ti2237.5942 Td2242.5943
																																	Let Tu23.5929
																																		Let Ti2243.5936
																																			Int:1
																																			Let Td2248.5937
																																				Let Td2245.5938
																																					Let Ti2244.5941
																																						Int:1
																																						Get dest.2676 Ti2244.5941
																																					Let Td2247.5939
																																						Let Ti2246.5940
																																							Int:1
																																							Get v.2677 Ti2246.5940
																																						FMul Td2245.5938 Td2247.5939
																																				Put dest.2676 Ti2243.5936 Td2248.5937
																																		Let Ti2249.5930
																																			Int:2
																																			Let Td2254.5931
																																				Let Td2251.5932
																																					Let Ti2250.5935
																																						Int:2
																																						Get dest.2676 Ti2250.5935
																																					Let Td2253.5933
																																						Let Ti2252.5934
																																							Int:2
																																							Get v.2677 Ti2252.5934
																																						FMul Td2251.5932 Td2253.5933
																																				Put dest.2676 Ti2249.5930 Td2254.5931
																																LetRec vecscale.2678 dest.2679 scale.2680 
																																	Let Tu26.5914
																																		Let Ti2225.5924
																																			Int:0
																																			Let Td2228.5925
																																				Let Td2227.5926
																																					Let Ti2226.5927
																																						Int:0
																																						Get dest.2679 Ti2226.5927
																																					FMul Td2227.5926 scale.2680
																																				Put dest.2679 Ti2225.5924 Td2228.5925
																																		Let Tu25.5915
																																			Let Ti2229.5920
																																				Int:1
																																				Let Td2232.5921
																																					Let Td2231.5922
																																						Let Ti2230.5923
																																							Int:1
																																							Get dest.2679 Ti2230.5923
																																						FMul Td2231.5922 scale.2680
																																					Put dest.2679 Ti2229.5920 Td2232.5921
																																			Let Ti2233.5916
																																				Int:2
																																				Let Td2236.5917
																																					Let Td2235.5918
																																						Let Ti2234.5919
																																							Int:2
																																							Get dest.2679 Ti2234.5919
																																						FMul Td2235.5918 scale.2680
																																					Put dest.2679 Ti2233.5916 Td2236.5917
																																	LetRec vecaccumv.2681 dest.2682 v.2683 w.2684 
																																		Let Tu28.5888
																																			Let Ti2201.5906
																																				Int:0
																																				Let Td2208.5907
																																					Let Td2203.5908
																																						Let Ti2202.5913
																																							Int:0
																																							Get dest.2682 Ti2202.5913
																																						Let Td2205.5909
																																							Let Ti2204.5912
																																								Int:0
																																								Get v.2683 Ti2204.5912
																																							Let Td2207.5910
																																								Let Ti2206.5911
																																									Int:0
																																									Get w.2684 Ti2206.5911
																																								FDiv Td2205.5909 Td2207.5910 Td2203.5908
																																					Put dest.2682 Ti2201.5906 Td2208.5907
																																			Let Tu27.5889
																																				Let Ti2209.5898
																																					Int:1
																																					Let Td2216.5899
																																						Let Td2211.5900
																																							Let Ti2210.5905
																																								Int:1
																																								Get dest.2682 Ti2210.5905
																																							Let Td2213.5901
																																								Let Ti2212.5904
																																									Int:1
																																									Get v.2683 Ti2212.5904
																																								Let Td2215.5902
																																									Let Ti2214.5903
																																										Int:1
																																										Get w.2684 Ti2214.5903
																																									FDiv Td2213.5901 Td2215.5902 Td2211.5900
																																						Put dest.2682 Ti2209.5898 Td2216.5899
																																				Let Ti2217.5890
																																					Int:2
																																					Let Td2224.5891
																																						Let Td2219.5892
																																							Let Ti2218.5897
																																								Int:2
																																								Get dest.2682 Ti2218.5897
																																							Let Td2221.5893
																																								Let Ti2220.5896
																																									Int:2
																																									Get v.2683 Ti2220.5896
																																								Let Td2223.5894
																																									Let Ti2222.5895
																																										Int:2
																																										Get w.2684 Ti2222.5895
																																									FDiv Td2221.5893 Td2223.5894 Td2219.5892
																																						Put dest.2682 Ti2217.5890 Td2224.5891
																																		LetRec o_texturetype.2685 m.2686 
																																			LetTuple (m_tex.5877,xm_shape.5878,xm_surface.5879,xm_isrot.5880,xm_abc.5881,xm_xyz.5882,xm_invert.5883,xm_surfparams.5884,xm_color.5885,xm_rot123.5886,xm_ctbl.5887,)
 m.2686
																																				Var m_tex.5877
																																			LetRec o_form.2687 m.2688 
																																				LetTuple (xm_tex.5866,m_shape.5867,xm_surface.5868,xm_isrot.5869,xm_abc.5870,xm_xyz.5871,xm_invert.5872,xm_surfparams.5873,xm_color.5874,xm_rot123.5875,xm_ctbl.5876,)
 m.2688
																																					Var m_shape.5867
																																				LetRec o_reflectiontype.2689 m.2690 
																																					LetTuple (xm_tex.5855,xm_shape.5856,m_surface.5857,xm_isrot.5858,xm_abc.5859,xm_xyz.5860,xm_invert.5861,xm_surfparams.5862,xm_color.5863,xm_rot123.5864,xm_ctbl.5865,)
 m.2690
																																						Var m_surface.5857
																																					LetRec o_isinvert.2691 m.2692 
																																						LetTuple (xm_tex.5844,xm_shape.5845,xm_surface.5846,xm_isrot.5847,xm_abc.5848,xm_xyz.5849,m_invert.5850,xm_surfparams.5851,xm_color.5852,xm_rot123.5853,xm_ctbl.5854,)
 m.2692
																																							Var m_invert.5850
																																						LetRec o_isrot.2693 m.2694 
																																							LetTuple (xm_tex.5833,xm_shape.5834,xm_surface.5835,m_isrot.5836,xm_abc.5837,xm_xyz.5838,xm_invert.5839,xm_surfparams.5840,xm_color.5841,xm_rot123.5842,xm_ctbl.5843,)
 m.2694
																																								Var m_isrot.5836
																																							LetRec o_param_a.2695 m.2696 
																																								LetTuple (xm_tex.5821,xm_shape.5822,xm_surface.5823,xm_isrot.5824,m_abc.5825,xm_xyz.5826,xm_invert.5827,xm_surfparams.5828,xm_color.5829,xm_rot123.5830,xm_ctbl.5831,)
 m.2696
																																									Let Ti2200.5832
																																										Int:0
																																										Get m_abc.5825 Ti2200.5832
																																								LetRec o_param_b.2697 m.2698 
																																									LetTuple (xm_tex.5809,xm_shape.5810,xm_surface.5811,xm_isrot.5812,m_abc.5813,xm_xyz.5814,xm_invert.5815,xm_surfparams.5816,xm_color.5817,xm_rot123.5818,xm_ctbl.5819,)
 m.2698
																																										Let Ti2199.5820
																																											Int:1
																																											Get m_abc.5813 Ti2199.5820
																																									LetRec o_param_c.2699 m.2700 
																																										LetTuple (xm_tex.5797,xm_shape.5798,xm_surface.5799,xm_isrot.5800,m_abc.5801,xm_xyz.5802,xm_invert.5803,xm_surfparams.5804,xm_color.5805,xm_rot123.5806,xm_ctbl.5807,)
 m.2700
																																											Let Ti2198.5808
																																												Int:2
																																												Get m_abc.5801 Ti2198.5808
																																										LetRec o_param_abc.2701 m.2702 
																																											LetTuple (xm_tex.5786,xm_shape.5787,xm_surface.5788,xm_isrot.5789,m_abc.5790,xm_xyz.5791,xm_invert.5792,xm_surfparams.5793,xm_color.5794,xm_rot123.5795,xm_ctbl.5796,)
 m.2702
																																												Var m_abc.5790
																																											LetRec o_param_x.2703 m.2704 
																																												LetTuple (xm_tex.5774,xm_shape.5775,xm_surface.5776,xm_isrot.5777,xm_abc.5778,m_xyz.5779,xm_invert.5780,xm_surfparams.5781,xm_color.5782,xm_rot123.5783,xm_ctbl.5784,)
 m.2704
																																													Let Ti2197.5785
																																														Int:0
																																														Get m_xyz.5779 Ti2197.5785
																																												LetRec o_param_y.2705 m.2706 
																																													LetTuple (xm_tex.5762,xm_shape.5763,xm_surface.5764,xm_isrot.5765,xm_abc.5766,m_xyz.5767,xm_invert.5768,xm_surfparams.5769,xm_color.5770,xm_rot123.5771,xm_ctbl.5772,)
 m.2706
																																														Let Ti2196.5773
																																															Int:1
																																															Get m_xyz.5767 Ti2196.5773
																																													LetRec o_param_z.2707 m.2708 
																																														LetTuple (xm_tex.5750,xm_shape.5751,xm_surface.5752,xm_isrot.5753,xm_abc.5754,m_xyz.5755,xm_invert.5756,xm_surfparams.5757,xm_color.5758,xm_rot123.5759,xm_ctbl.5760,)
 m.2708
																																															Let Ti2195.5761
																																																Int:2
																																																Get m_xyz.5755 Ti2195.5761
																																														LetRec o_diffuse.2709 m.2710 
																																															LetTuple (xm_tex.5738,xm_shape.5739,xm_surface.5740,xm_isrot.5741,xm_abc.5742,xm_xyz.5743,xm_invert.5744,m_surfparams.5745,xm_color.5746,xm_rot123.5747,xm_ctbl.5748,)
 m.2710
																																																Let Ti2194.5749
																																																	Int:0
																																																	Get m_surfparams.5745 Ti2194.5749
																																															LetRec o_hilight.2711 m.2712 
																																																LetTuple (xm_tex.5726,xm_shape.5727,xm_surface.5728,xm_isrot.5729,xm_abc.5730,xm_xyz.5731,xm_invert.5732,m_surfparams.5733,xm_color.5734,xm_rot123.5735,xm_ctbl.5736,)
 m.2712
																																																	Let Ti2193.5737
																																																		Int:1
																																																		Get m_surfparams.5733 Ti2193.5737
																																																LetRec o_color_red.2713 m.2714 
																																																	LetTuple (xm_tex.5714,xm_shape.5715,m_surface.5716,xm_isrot.5717,xm_abc.5718,xm_xyz.5719,xm_invert.5720,xm_surfparams.5721,m_color.5722,xm_rot123.5723,xm_ctbl.5724,)
 m.2714
																																																		Let Ti2192.5725
																																																			Int:0
																																																			Get m_color.5722 Ti2192.5725
																																																	LetRec o_color_green.2715 m.2716 
																																																		LetTuple (xm_tex.5702,xm_shape.5703,m_surface.5704,xm_isrot.5705,xm_abc.5706,xm_xyz.5707,xm_invert.5708,xm_surfparams.5709,m_color.5710,xm_rot123.5711,xm_ctbl.5712,)
 m.2716
																																																			Let Ti2191.5713
																																																				Int:1
																																																				Get m_color.5710 Ti2191.5713
																																																		LetRec o_color_blue.2717 m.2718 
																																																			LetTuple (xm_tex.5690,xm_shape.5691,m_surface.5692,xm_isrot.5693,xm_abc.5694,xm_xyz.5695,xm_invert.5696,xm_surfparams.5697,m_color.5698,xm_rot123.5699,xm_ctbl.5700,)
 m.2718
																																																				Let Ti2190.5701
																																																					Int:2
																																																					Get m_color.5698 Ti2190.5701
																																																			LetRec o_param_r1.2719 m.2720 
																																																				LetTuple (xm_tex.5678,xm_shape.5679,xm_surface.5680,xm_isrot.5681,xm_abc.5682,xm_xyz.5683,xm_invert.5684,xm_surfparams.5685,xm_color.5686,m_rot123.5687,xm_ctbl.5688,)
 m.2720
																																																					Let Ti2189.5689
																																																						Int:0
																																																						Get m_rot123.5687 Ti2189.5689
																																																				LetRec o_param_r2.2721 m.2722 
																																																					LetTuple (xm_tex.5666,xm_shape.5667,xm_surface.5668,xm_isrot.5669,xm_abc.5670,xm_xyz.5671,xm_invert.5672,xm_surfparams.5673,xm_color.5674,m_rot123.5675,xm_ctbl.5676,)
 m.2722
																																																						Let Ti2188.5677
																																																							Int:1
																																																							Get m_rot123.5675 Ti2188.5677
																																																					LetRec o_param_r3.2723 m.2724 
																																																						LetTuple (xm_tex.5654,xm_shape.5655,xm_surface.5656,xm_isrot.5657,xm_abc.5658,xm_xyz.5659,xm_invert.5660,xm_surfparams.5661,xm_color.5662,m_rot123.5663,xm_ctbl.5664,)
 m.2724
																																																							Let Ti2187.5665
																																																								Int:2
																																																								Get m_rot123.5663 Ti2187.5665
																																																						LetRec o_param_ctbl.2725 m.2726 
																																																							LetTuple (xm_tex.5643,xm_shape.5644,xm_surface.5645,xm_isrot.5646,xm_abc.5647,xm_xyz.5648,xm_invert.5649,xm_surfparams.5650,xm_color.5651,xm_rot123.5652,m_ctbl.5653,)
 m.2726
																																																								Var m_ctbl.5653
																																																							LetRec p_rgb.2727 pixel.2728 
																																																								LetTuple (m_rgb.5635,xm_isect_ps.5636,xm_sids.5637,xm_cdif.5638,xm_engy.5639,xm_r20p.5640,xm_gid.5641,xm_nvectors.5642,)
 pixel.2728
																																																									Var m_rgb.5635
																																																								LetRec p_intersection_points.2729 pixel.2730 
																																																									LetTuple (xm_rgb.5627,m_isect_ps.5628,xm_sids.5629,xm_cdif.5630,xm_engy.5631,xm_r20p.5632,xm_gid.5633,xm_nvectors.5634,)
 pixel.2730
																																																										Var m_isect_ps.5628
																																																									LetRec p_surface_ids.2731 pixel.2732 
																																																										LetTuple (xm_rgb.5619,xm_isect_ps.5620,m_sids.5621,xm_cdif.5622,xm_engy.5623,xm_r20p.5624,xm_gid.5625,xm_nvectors.5626,)
 pixel.2732
																																																											Var m_sids.5621
																																																										LetRec p_calc_diffuse.2733 pixel.2734 
																																																											LetTuple (xm_rgb.5611,xm_isect_ps.5612,xm_sids.5613,m_cdif.5614,xm_engy.5615,xm_r20p.5616,xm_gid.5617,xm_nvectors.5618,)
 pixel.2734
																																																												Var m_cdif.5614
																																																											LetRec p_energy.2735 pixel.2736 
																																																												LetTuple (xm_rgb.5603,xm_isect_ps.5604,xm_sids.5605,xm_cdif.5606,m_engy.5607,xm_r20p.5608,xm_gid.5609,xm_nvectors.5610,)
 pixel.2736
																																																													Var m_engy.5607
																																																												LetRec p_received_ray_20percent.2737 pixel.2738 
																																																													LetTuple (xm_rgb.5595,xm_isect_ps.5596,xm_sids.5597,xm_cdif.5598,xm_engy.5599,m_r20p.5600,xm_gid.5601,xm_nvectors.5602,)
 pixel.2738
																																																														Var m_r20p.5600
																																																													LetRec p_group_id.2739 pixel.2740 
																																																														LetTuple (xm_rgb.5586,xm_isect_ps.5587,xm_sids.5588,xm_cdif.5589,xm_engy.5590,xm_r20p.5591,m_gid.5592,xm_nvectors.5593,)
 pixel.2740
																																																															Let Ti2186.5594
																																																																Int:0
																																																																Get m_gid.5592 Ti2186.5594
																																																														LetRec p_set_group_id.2741 pixel.2742 id.2743 
																																																															LetTuple (xm_rgb.5577,xm_isect_ps.5578,xm_sids.5579,xm_cdif.5580,xm_engy.5581,xm_r20p.5582,m_gid.5583,xm_nvectors.5584,)
 pixel.2742
																																																																Let Ti2185.5585
																																																																	Int:0
																																																																	Put m_gid.5583 Ti2185.5585 id.2743
																																																															LetRec p_nvectors.2744 pixel.2745 
																																																																LetTuple (xm_rgb.5569,xm_isect_ps.5570,xm_sids.5571,xm_cdif.5572,xm_engy.5573,xm_r20p.5574,xm_gid.5575,m_nvectors.5576,)
 pixel.2745
																																																																	Var m_nvectors.5576
																																																																LetRec d_vec.2746 d.2747 
																																																																	LetTuple (m_vec.5567,xm_const.5568,)
 d.2747
																																																																		Var m_vec.5567
																																																																	LetRec d_const.2748 d.2749 
																																																																		LetTuple (dm_vec.5565,m_const.5566,)
 d.2749
																																																																			Var m_const.5566
																																																																		LetRec r_surface_id.2750 r.2751 
																																																																			LetTuple (m_sid.5562,xm_dvec.5563,xm_br.5564,)
 r.2751
																																																																				Var m_sid.5562
																																																																			LetRec r_dvec.2752 r.2753 
																																																																				LetTuple (xm_sid.5559,m_dvec.5560,xm_br.5561,)
 r.2753
																																																																					Var m_dvec.5560
																																																																				LetRec r_bright.2754 r.2755 
																																																																					LetTuple (xm_sid.5556,xm_dvec.5557,m_br.5558,)
 r.2755
																																																																						Var m_br.5558
																																																																					LetRec rad.2756 x.2757 
																																																																						Let Td2184.5555
																																																																							Float:0.017453
																																																																							FMul x.2757 Td2184.5555
																																																																						LetRec read_screen_settings.2758 Tu29.2759 
																																																																							Let Tu43.5464
																																																																								Let Ta2113.5552
																																																																									ExtArray 72
																																																																									Let Ti2114.5553
																																																																										Int:0
																																																																										Let Td2115.5554
																																																																											Readfloat
																																																																											Put Ta2113.5552 Ti2114.5553 Td2115.5554
																																																																								Let Tu42.5465
																																																																									Let Ta2116.5549
																																																																										ExtArray 72
																																																																										Let Ti2117.5550
																																																																											Int:1
																																																																											Let Td2118.5551
																																																																												Readfloat
																																																																												Put Ta2116.5549 Ti2117.5550 Td2118.5551
																																																																									Let Tu41.5466
																																																																										Let Ta2119.5546
																																																																											ExtArray 72
																																																																											Let Ti2120.5547
																																																																												Int:2
																																																																												Let Td2121.5548
																																																																													Readfloat
																																																																													Put Ta2119.5546 Ti2120.5547 Td2121.5548
																																																																										Let v1.5467
																																																																											Let Td2122.5545
																																																																												Readfloat
																																																																												App rad.2756Td2122.5545 
																																																																											Let cos_v1.5468
																																																																												App cos.2627v1.5467 
																																																																												Let sin_v1.5469
																																																																													App sin.2625v1.5467 
																																																																													Let v2.5470
																																																																														Let Td2123.5544
																																																																															Readfloat
																																																																															App rad.2756Td2123.5544 
																																																																														Let cos_v2.5471
																																																																															App cos.2627v2.5470 
																																																																															Let sin_v2.5472
																																																																																App sin.2625v2.5470 
																																																																																Let Tu40.5473
																																																																																	Let Ta2124.5539
																																																																																		ExtArray 171
																																																																																		Let Ti2125.5540
																																																																																			Int:0
																																																																																			Let Td2128.5541
																																																																																				Let Td2126.5542
																																																																																					FMul cos_v1.5468 sin_v2.5472
																																																																																					Let Td2127.5543
																																																																																						Float:200.000000
																																																																																						FMul Td2126.5542 Td2127.5543
																																																																																				Put Ta2124.5539 Ti2125.5540 Td2128.5541
																																																																																	Let Tu39.5474
																																																																																		Let Ta2129.5535
																																																																																			ExtArray 171
																																																																																			Let Ti2130.5536
																																																																																				Int:1
																																																																																				Let Td2132.5537
																																																																																					Let Td2131.5538
																																																																																						Float:-200.000000
																																																																																						FMul sin_v1.5469 Td2131.5538
																																																																																					Put Ta2129.5535 Ti2130.5536 Td2132.5537
																																																																																		Let Tu38.5475
																																																																																			Let Ta2133.5530
																																																																																				ExtArray 171
																																																																																				Let Ti2134.5531
																																																																																					Int:2
																																																																																					Let Td2137.5532
																																																																																						Let Td2135.5533
																																																																																							FMul cos_v1.5468 cos_v2.5471
																																																																																							Let Td2136.5534
																																																																																								Float:200.000000
																																																																																								FMul Td2135.5533 Td2136.5534
																																																																																						Put Ta2133.5530 Ti2134.5531 Td2137.5532
																																																																																			Let Tu37.5476
																																																																																				Let Ta2138.5528
																																																																																					ExtArray 165
																																																																																					Let Ti2139.5529
																																																																																						Int:0
																																																																																						Put Ta2138.5528 Ti2139.5529 cos_v2.5471
																																																																																				Let Tu36.5477
																																																																																					Let Ta2140.5525
																																																																																						ExtArray 165
																																																																																						Let Ti2141.5526
																																																																																							Int:1
																																																																																							Let Td2142.5527
																																																																																								Float:0.000000
																																																																																								Put Ta2140.5525 Ti2141.5526 Td2142.5527
																																																																																					Let Tu35.5478
																																																																																						Let Ta2143.5522
																																																																																							ExtArray 165
																																																																																							Let Ti2144.5523
																																																																																								Int:2
																																																																																								Let Td2145.5524
																																																																																									App fneg.2594sin_v2.5472 
																																																																																									Put Ta2143.5522 Ti2144.5523 Td2145.5524
																																																																																						Let Tu34.5479
																																																																																							Let Ta2146.5518
																																																																																								ExtArray 168
																																																																																								Let Ti2147.5519
																																																																																									Int:0
																																																																																									Let Td2149.5520
																																																																																										Let Td2148.5521
																																																																																											App fneg.2594sin_v1.5469 
																																																																																											FMul Td2148.5521 sin_v2.5472
																																																																																										Put Ta2146.5518 Ti2147.5519 Td2149.5520
																																																																																							Let Tu33.5480
																																																																																								Let Ta2150.5515
																																																																																									ExtArray 168
																																																																																									Let Ti2151.5516
																																																																																										Int:1
																																																																																										Let Td2152.5517
																																																																																											App fneg.2594cos_v1.5468 
																																																																																											Put Ta2150.5515 Ti2151.5516 Td2152.5517
																																																																																								Let Tu32.5481
																																																																																									Let Ta2153.5511
																																																																																										ExtArray 168
																																																																																										Let Ti2154.5512
																																																																																											Int:2
																																																																																											Let Td2156.5513
																																																																																												Let Td2155.5514
																																																																																													App fneg.2594sin_v1.5469 
																																																																																													FMul Td2155.5514 cos_v2.5471
																																																																																												Put Ta2153.5511 Ti2154.5512 Td2156.5513
																																																																																									Let Tu31.5482
																																																																																										Let Ta2157.5502
																																																																																											ExtArray 75
																																																																																											Let Ti2158.5503
																																																																																												Int:0
																																																																																												Let Td2165.5504
																																																																																													Let Td2161.5505
																																																																																														Let Ta2159.5509
																																																																																															ExtArray 72
																																																																																															Let Ti2160.5510
																																																																																																Int:0
																																																																																																Get Ta2159.5509 Ti2160.5510
																																																																																														Let Td2164.5506
																																																																																															Let Ta2162.5507
																																																																																																ExtArray 171
																																																																																																Let Ti2163.5508
																																																																																																	Int:0
																																																																																																	Get Ta2162.5507 Ti2163.5508
																																																																																															FSub Td2161.5505 Td2164.5506
																																																																																													Put Ta2157.5502 Ti2158.5503 Td2165.5504
																																																																																										Let Tu30.5483
																																																																																											Let Ta2166.5493
																																																																																												ExtArray 75
																																																																																												Let Ti2167.5494
																																																																																													Int:1
																																																																																													Let Td2174.5495
																																																																																														Let Td2170.5496
																																																																																															Let Ta2168.5500
																																																																																																ExtArray 72
																																																																																																Let Ti2169.5501
																																																																																																	Int:1
																																																																																																	Get Ta2168.5500 Ti2169.5501
																																																																																															Let Td2173.5497
																																																																																																Let Ta2171.5498
																																																																																																	ExtArray 171
																																																																																																	Let Ti2172.5499
																																																																																																		Int:1
																																																																																																		Get Ta2171.5498 Ti2172.5499
																																																																																																FSub Td2170.5496 Td2173.5497
																																																																																														Put Ta2166.5493 Ti2167.5494 Td2174.5495
																																																																																											Let Ta2175.5484
																																																																																												ExtArray 75
																																																																																												Let Ti2176.5485
																																																																																													Int:2
																																																																																													Let Td2183.5486
																																																																																														Let Td2179.5487
																																																																																															Let Ta2177.5491
																																																																																																ExtArray 72
																																																																																																Let Ti2178.5492
																																																																																																	Int:2
																																																																																																	Get Ta2177.5491 Ti2178.5492
																																																																																															Let Td2182.5488
																																																																																																Let Ta2180.5489
																																																																																																	ExtArray 171
																																																																																																	Let Ti2181.5490
																																																																																																		Int:2
																																																																																																		Get Ta2180.5489 Ti2181.5490
																																																																																																FSub Td2179.5487 Td2182.5488
																																																																																														Put Ta2175.5484 Ti2176.5485 Td2183.5486
																																																																							LetRec read_light.2760 Tu44.2761 
																																																																								Let nl.5440
																																																																									Readint
																																																																									Let l1.5441
																																																																										Let Td2099.5463
																																																																											Readfloat
																																																																											App rad.2756Td2099.5463 
																																																																										Let sl1.5442
																																																																											App sin.2625l1.5441 
																																																																											Let Tu47.5443
																																																																												Let Ta2100.5460
																																																																													ExtArray 78
																																																																													Let Ti2101.5461
																																																																														Int:1
																																																																														Let Td2102.5462
																																																																															App fneg.2594sl1.5442 
																																																																															Put Ta2100.5460 Ti2101.5461 Td2102.5462
																																																																												Let l2.5444
																																																																													Let Td2103.5459
																																																																														Readfloat
																																																																														App rad.2756Td2103.5459 
																																																																													Let cl1.5445
																																																																														App cos.2627l1.5441 
																																																																														Let sl2.5446
																																																																															App sin.2625l2.5444 
																																																																															Let Tu46.5447
																																																																																Let Ta2104.5456
																																																																																	ExtArray 78
																																																																																	Let Ti2105.5457
																																																																																		Int:0
																																																																																		Let Td2106.5458
																																																																																			FMul cl1.5445 sl2.5446
																																																																																			Put Ta2104.5456 Ti2105.5457 Td2106.5458
																																																																																Let cl2.5448
																																																																																	App cos.2627l2.5444 
																																																																																	Let Tu45.5449
																																																																																		Let Ta2107.5453
																																																																																			ExtArray 78
																																																																																			Let Ti2108.5454
																																																																																				Int:2
																																																																																				Let Td2109.5455
																																																																																					FMul cl1.5445 cl2.5448
																																																																																					Put Ta2107.5453 Ti2108.5454 Td2109.5455
																																																																																		Let Ta2110.5450
																																																																																			ExtArray 81
																																																																																			Let Ti2111.5451
																																																																																				Int:0
																																																																																				Let Td2112.5452
																																																																																					Readfloat
																																																																																					Put Ta2110.5450 Ti2111.5451 Td2112.5452
																																																																								LetRec rotate_quadratic_matrix.2762 abc.2763 rot.2764 
																																																																									Let cos_x.5346
																																																																										Let Td2029.5438
																																																																											Let Ti2028.5439
																																																																												Int:0
																																																																												Get rot.2764 Ti2028.5439
																																																																											App cos.2627Td2029.5438 
																																																																										Let sin_x.5347
																																																																											Let Td2031.5436
																																																																												Let Ti2030.5437
																																																																													Int:0
																																																																													Get rot.2764 Ti2030.5437
																																																																												App sin.2625Td2031.5436 
																																																																											Let cos_y.5348
																																																																												Let Td2033.5434
																																																																													Let Ti2032.5435
																																																																														Int:1
																																																																														Get rot.2764 Ti2032.5435
																																																																													App cos.2627Td2033.5434 
																																																																												Let sin_y.5349
																																																																													Let Td2035.5432
																																																																														Let Ti2034.5433
																																																																															Int:1
																																																																															Get rot.2764 Ti2034.5433
																																																																														App sin.2625Td2035.5432 
																																																																													Let cos_z.5350
																																																																														Let Td2037.5430
																																																																															Let Ti2036.5431
																																																																																Int:2
																																																																																Get rot.2764 Ti2036.5431
																																																																															App cos.2627Td2037.5430 
																																																																														Let sin_z.5351
																																																																															Let Td2039.5428
																																																																																Let Ti2038.5429
																																																																																	Int:2
																																																																																	Get rot.2764 Ti2038.5429
																																																																																App sin.2625Td2039.5428 
																																																																															Let m00.5352
																																																																																FMul cos_y.5348 cos_z.5350
																																																																																Let m01.5353
																																																																																	Let Td2040.5426
																																																																																		FMul sin_x.5347 sin_y.5349
																																																																																		Let Td2041.5427
																																																																																			FMul cos_x.5346 sin_z.5351
																																																																																			FMSub Td2040.5426 cos_z.5350 Td2041.5427
																																																																																	Let m02.5354
																																																																																		Let Td2042.5424
																																																																																			FMul cos_x.5346 sin_y.5349
																																																																																			Let Td2043.5425
																																																																																				FMul sin_x.5347 sin_z.5351
																																																																																				FDiv Td2042.5424 cos_z.5350 Td2043.5425
																																																																																		Let m10.5355
																																																																																			FMul cos_y.5348 sin_z.5351
																																																																																			Let m11.5356
																																																																																				Let Td2044.5422
																																																																																					FMul sin_x.5347 sin_y.5349
																																																																																					Let Td2045.5423
																																																																																						FMul cos_x.5346 cos_z.5350
																																																																																						FDiv Td2044.5422 sin_z.5351 Td2045.5423
																																																																																				Let m12.5357
																																																																																					Let Td2046.5420
																																																																																						FMul cos_x.5346 sin_y.5349
																																																																																						Let Td2047.5421
																																																																																							FMul sin_x.5347 cos_z.5350
																																																																																							FMSub Td2046.5420 sin_z.5351 Td2047.5421
																																																																																					Let m20.5358
																																																																																						App fneg.2594sin_y.5349 
																																																																																						Let m21.5359
																																																																																							FMul sin_x.5347 cos_y.5348
																																																																																							Let m22.5360
																																																																																								FMul cos_x.5346 cos_y.5348
																																																																																								Let ao.5361
																																																																																									Let Ti2048.5419
																																																																																										Int:0
																																																																																										Get abc.2763 Ti2048.5419
																																																																																									Let bo.5362
																																																																																										Let Ti2049.5418
																																																																																											Int:1
																																																																																											Get abc.2763 Ti2049.5418
																																																																																										Let co.5363
																																																																																											Let Ti2050.5417
																																																																																												Int:2
																																																																																												Get abc.2763 Ti2050.5417
																																																																																											Let Tu52.5364
																																																																																												Let Ti2051.5410
																																																																																													Int:0
																																																																																													Let Td2057.5411
																																																																																														Let Td2055.5412
																																																																																															Let Td2052.5414
																																																																																																App fsqr.2598m00.5352 
																																																																																																Let Td2054.5415
																																																																																																	Let Td2053.5416
																																																																																																		App fsqr.2598m10.5355 
																																																																																																		FMul bo.5362 Td2053.5416
																																																																																																	FDiv ao.5361 Td2052.5414 Td2054.5415
																																																																																															Let Td2056.5413
																																																																																																App fsqr.2598m20.5358 
																																																																																																FDiv co.5363 Td2056.5413 Td2055.5412
																																																																																														Put abc.2763 Ti2051.5410 Td2057.5411
																																																																																												Let Tu51.5365
																																																																																													Let Ti2058.5403
																																																																																														Int:1
																																																																																														Let Td2064.5404
																																																																																															Let Td2062.5405
																																																																																																Let Td2059.5407
																																																																																																	App fsqr.2598m01.5353 
																																																																																																	Let Td2061.5408
																																																																																																		Let Td2060.5409
																																																																																																			App fsqr.2598m11.5356 
																																																																																																			FMul bo.5362 Td2060.5409
																																																																																																		FDiv ao.5361 Td2059.5407 Td2061.5408
																																																																																																Let Td2063.5406
																																																																																																	App fsqr.2598m21.5359 
																																																																																																	FDiv co.5363 Td2063.5406 Td2062.5405
																																																																																															Put abc.2763 Ti2058.5403 Td2064.5404
																																																																																													Let Tu50.5366
																																																																																														Let Ti2065.5396
																																																																																															Int:2
																																																																																															Let Td2071.5397
																																																																																																Let Td2069.5398
																																																																																																	Let Td2066.5400
																																																																																																		App fsqr.2598m02.5354 
																																																																																																		Let Td2068.5401
																																																																																																			Let Td2067.5402
																																																																																																				App fsqr.2598m12.5357 
																																																																																																				FMul bo.5362 Td2067.5402
																																																																																																			FDiv ao.5361 Td2066.5400 Td2068.5401
																																																																																																	Let Td2070.5399
																																																																																																		App fsqr.2598m22.5360 
																																																																																																		FDiv co.5363 Td2070.5399 Td2069.5398
																																																																																																Put abc.2763 Ti2065.5396 Td2071.5397
																																																																																														Let Tu49.5367
																																																																																															Let Ti2072.5387
																																																																																																Int:0
																																																																																																Let Td2080.5388
																																																																																																	Let Td2073.5389
																																																																																																		Float:2.000000
																																																																																																		Let Td2079.5390
																																																																																																			Let Td2077.5391
																																																																																																				Let Td2074.5393
																																																																																																					FMul ao.5361 m01.5353
																																																																																																					Let Td2076.5394
																																																																																																						Let Td2075.5395
																																																																																																							FMul bo.5362 m11.5356
																																																																																																							FMul Td2075.5395 m12.5357
																																																																																																						FDiv Td2074.5393 m02.5354 Td2076.5394
																																																																																																				Let Td2078.5392
																																																																																																					FMul co.5363 m21.5359
																																																																																																					FDiv Td2078.5392 m22.5360 Td2077.5391
																																																																																																			FMul Td2073.5389 Td2079.5390
																																																																																																	Put rot.2764 Ti2072.5387 Td2080.5388
																																																																																															Let Tu48.5368
																																																																																																Let Ti2081.5378
																																																																																																	Int:1
																																																																																																	Let Td2089.5379
																																																																																																		Let Td2082.5380
																																																																																																			Float:2.000000
																																																																																																			Let Td2088.5381
																																																																																																				Let Td2086.5382
																																																																																																					Let Td2083.5384
																																																																																																						FMul ao.5361 m00.5352
																																																																																																						Let Td2085.5385
																																																																																																							Let Td2084.5386
																																																																																																								FMul bo.5362 m10.5355
																																																																																																								FMul Td2084.5386 m12.5357
																																																																																																							FDiv Td2083.5384 m02.5354 Td2085.5385
																																																																																																					Let Td2087.5383
																																																																																																						FMul co.5363 m20.5358
																																																																																																						FDiv Td2087.5383 m22.5360 Td2086.5382
																																																																																																				FMul Td2082.5380 Td2088.5381
																																																																																																		Put rot.2764 Ti2081.5378 Td2089.5379
																																																																																																Let Ti2090.5369
																																																																																																	Int:2
																																																																																																	Let Td2098.5370
																																																																																																		Let Td2091.5371
																																																																																																			Float:2.000000
																																																																																																			Let Td2097.5372
																																																																																																				Let Td2095.5373
																																																																																																					Let Td2092.5375
																																																																																																						FMul ao.5361 m00.5352
																																																																																																						Let Td2094.5376
																																																																																																							Let Td2093.5377
																																																																																																								FMul bo.5362 m10.5355
																																																																																																								FMul Td2093.5377 m11.5356
																																																																																																							FDiv Td2092.5375 m01.5353 Td2094.5376
																																																																																																					Let Td2096.5374
																																																																																																						FMul co.5363 m20.5358
																																																																																																						FDiv Td2096.5374 m21.5359 Td2095.5373
																																																																																																				FMul Td2091.5371 Td2097.5372
																																																																																																		Put rot.2764 Ti2090.5369 Td2098.5370
																																																																									LetRec read_nth_object.2765 n.2766 
																																																																										Let texture.5238
																																																																											Readint
																																																																											Let Ti1956.5239
																																																																												Let Ti1955.5345
																																																																													Int:1
																																																																													Neg Ti1955.5345
																																																																												IfEq texture.5238 Ti1956.5239
																																																																													Int:0
																																																																													Let form.5240
																																																																														Readint
																																																																														Let refltype.5241
																																																																															Readint
																																																																															Let isrot_p.5242
																																																																																Readint
																																																																																Let abc.5243
																																																																																	Let Ti1957.5343
																																																																																		Int:3
																																																																																		Let Td1958.5344
																																																																																			Float:0.000000
																																																																																			ExtFunApp create_float_array Ti1957.5343,Td1958.5344,
																																																																																	Let Tu71.5244
																																																																																		Let Ti1959.5341
																																																																																			Int:0
																																																																																			Let Td1960.5342
																																																																																				Readfloat
																																																																																				Put abc.5243 Ti1959.5341 Td1960.5342
																																																																																		Let Tu70.5245
																																																																																			Let Ti1961.5339
																																																																																				Int:1
																																																																																				Let Td1962.5340
																																																																																					Readfloat
																																																																																					Put abc.5243 Ti1961.5339 Td1962.5340
																																																																																			Let Tu69.5246
																																																																																				Let Ti1963.5337
																																																																																					Int:2
																																																																																					Let Td1964.5338
																																																																																						Readfloat
																																																																																						Put abc.5243 Ti1963.5337 Td1964.5338
																																																																																				Let xyz.5247
																																																																																					Let Ti1965.5335
																																																																																						Int:3
																																																																																						Let Td1966.5336
																																																																																							Float:0.000000
																																																																																							ExtFunApp create_float_array Ti1965.5335,Td1966.5336,
																																																																																					Let Tu68.5248
																																																																																						Let Ti1967.5333
																																																																																							Int:0
																																																																																							Let Td1968.5334
																																																																																								Readfloat
																																																																																								Put xyz.5247 Ti1967.5333 Td1968.5334
																																																																																						Let Tu67.5249
																																																																																							Let Ti1969.5331
																																																																																								Int:1
																																																																																								Let Td1970.5332
																																																																																									Readfloat
																																																																																									Put xyz.5247 Ti1969.5331 Td1970.5332
																																																																																							Let Tu66.5250
																																																																																								Let Ti1971.5329
																																																																																									Int:2
																																																																																									Let Td1972.5330
																																																																																										Readfloat
																																																																																										Put xyz.5247 Ti1971.5329 Td1972.5330
																																																																																								Let m_invert.5251
																																																																																									Let Td1973.5327
																																																																																										Float:0.000000
																																																																																										Let Td1974.5328
																																																																																											Readfloat
																																																																																											IfLE Td1973.5327 Td1974.5328
																																																																																												Int:0
																																																																																												Int:1
																																																																																									Let reflparam.5252
																																																																																										Let Ti1975.5325
																																																																																											Int:2
																																																																																											Let Td1976.5326
																																																																																												Float:0.000000
																																																																																												ExtFunApp create_float_array Ti1975.5325,Td1976.5326,
																																																																																										Let Tu65.5253
																																																																																											Let Ti1977.5323
																																																																																												Int:0
																																																																																												Let Td1978.5324
																																																																																													Readfloat
																																																																																													Put reflparam.5252 Ti1977.5323 Td1978.5324
																																																																																											Let Tu64.5254
																																																																																												Let Ti1979.5321
																																																																																													Int:1
																																																																																													Let Td1980.5322
																																																																																														Readfloat
																																																																																														Put reflparam.5252 Ti1979.5321 Td1980.5322
																																																																																												Let color.5255
																																																																																													Let Ti1981.5319
																																																																																														Int:3
																																																																																														Let Td1982.5320
																																																																																															Float:0.000000
																																																																																															ExtFunApp create_float_array Ti1981.5319,Td1982.5320,
																																																																																													Let Tu63.5256
																																																																																														Let Ti1983.5317
																																																																																															Int:0
																																																																																															Let Td1984.5318
																																																																																																Readfloat
																																																																																																Put color.5255 Ti1983.5317 Td1984.5318
																																																																																														Let Tu62.5257
																																																																																															Let Ti1985.5315
																																																																																																Int:1
																																																																																																Let Td1986.5316
																																																																																																	Readfloat
																																																																																																	Put color.5255 Ti1985.5315 Td1986.5316
																																																																																															Let Tu61.5258
																																																																																																Let Ti1987.5313
																																																																																																	Int:2
																																																																																																	Let Td1988.5314
																																																																																																		Readfloat
																																																																																																		Put color.5255 Ti1987.5313 Td1988.5314
																																																																																																Let rotation.5259
																																																																																																	Let Ti1989.5311
																																																																																																		Int:3
																																																																																																		Let Td1990.5312
																																																																																																			Float:0.000000
																																																																																																			ExtFunApp create_float_array Ti1989.5311,Td1990.5312,
																																																																																																	Let Tu60.5260
																																																																																																		Let Ti1991.5299
																																																																																																			Int:0
																																																																																																			IfEq isrot_p.5242 Ti1991.5299
																																																																																																				Unit
																																																																																																				Let Tu54.5300
																																																																																																					Let Ti1992.5308
																																																																																																						Int:0
																																																																																																						Let Td1994.5309
																																																																																																							Let Td1993.5310
																																																																																																								Readfloat
																																																																																																								App rad.2756Td1993.5310 
																																																																																																							Put rotation.5259 Ti1992.5308 Td1994.5309
																																																																																																					Let Tu53.5301
																																																																																																						Let Ti1995.5305
																																																																																																							Int:1
																																																																																																							Let Td1997.5306
																																																																																																								Let Td1996.5307
																																																																																																									Readfloat
																																																																																																									App rad.2756Td1996.5307 
																																																																																																								Put rotation.5259 Ti1995.5305 Td1997.5306
																																																																																																						Let Ti1998.5302
																																																																																																							Int:2
																																																																																																							Let Td2000.5303
																																																																																																								Let Td1999.5304
																																																																																																									Readfloat
																																																																																																									App rad.2756Td1999.5304 
																																																																																																								Put rotation.5259 Ti1998.5302 Td2000.5303
																																																																																																		Let m_invert2.5261
																																																																																																			Let Ti2001.5298
																																																																																																				Int:2
																																																																																																				IfEq form.5240 Ti2001.5298
																																																																																																					Int:1
																																																																																																					Var m_invert.5251
																																																																																																			Let ctbl.5262
																																																																																																				Let Ti2002.5296
																																																																																																					Int:4
																																																																																																					Let Td2003.5297
																																																																																																						Float:0.000000
																																																																																																						ExtFunApp create_float_array Ti2002.5296,Td2003.5297,
																																																																																																				Let obj.5263
																																																																																																					Tuple (texture.5238,form.5240,refltype.5241,isrot_p.5242,abc.5243,xyz.5247,m_invert2.5261,reflparam.5252,color.5255,rotation.5259,ctbl.5262,)
																																																																																																					Let Tu59.5264
																																																																																																						Let Ta2004.5295
																																																																																																							ExtArray 12
																																																																																																							Put Ta2004.5295 n.2766 obj.5263
																																																																																																						Let Tu58.5265
																																																																																																							Let Ti2005.5268
																																																																																																								Int:3
																																																																																																								IfEq form.5240 Ti2005.5268
																																																																																																									Let a.5272
																																																																																																										Let Ti2006.5294
																																																																																																											Int:0
																																																																																																											Get abc.5243 Ti2006.5294
																																																																																																										Let Tu56.5273
																																																																																																											Let Ti2007.5289
																																																																																																												Int:0
																																																																																																												Let Td2011.5290
																																																																																																													Let Td2008.5291
																																																																																																														Float:0.000000
																																																																																																														IfEq a.5272 Td2008.5291
																																																																																																															Float:0.000000
																																																																																																															Let Td2009.5292
																																																																																																																App sgn.2631a.5272 
																																																																																																																Let Td2010.5293
																																																																																																																	App fsqr.2598a.5272 
																																																																																																																	FDiv Td2009.5292 Td2010.5293
																																																																																																													Put abc.5243 Ti2007.5289 Td2011.5290
																																																																																																											Let b.5274
																																																																																																												Let Ti2012.5288
																																																																																																													Int:1
																																																																																																													Get abc.5243 Ti2012.5288
																																																																																																												Let Tu55.5275
																																																																																																													Let Ti2013.5283
																																																																																																														Int:1
																																																																																																														Let Td2017.5284
																																																																																																															Let Td2014.5285
																																																																																																																Float:0.000000
																																																																																																																IfEq b.5274 Td2014.5285
																																																																																																																	Float:0.000000
																																																																																																																	Let Td2015.5286
																																																																																																																		App sgn.2631b.5274 
																																																																																																																		Let Td2016.5287
																																																																																																																			App fsqr.2598b.5274 
																																																																																																																			FDiv Td2015.5286 Td2016.5287
																																																																																																															Put abc.5243 Ti2013.5283 Td2017.5284
																																																																																																													Let c.5276
																																																																																																														Let Ti2018.5282
																																																																																																															Int:2
																																																																																																															Get abc.5243 Ti2018.5282
																																																																																																														Let Ti2019.5277
																																																																																																															Int:2
																																																																																																															Let Td2023.5278
																																																																																																																Let Td2020.5279
																																																																																																																	Float:0.000000
																																																																																																																	IfEq c.5276 Td2020.5279
																																																																																																																		Float:0.000000
																																																																																																																		Let Td2021.5280
																																																																																																																			App sgn.2631c.5276 
																																																																																																																			Let Td2022.5281
																																																																																																																				App fsqr.2598c.5276 
																																																																																																																				FDiv Td2021.5280 Td2022.5281
																																																																																																																Put abc.5243 Ti2019.5277 Td2023.5278
																																																																																																									Let Ti2024.5269
																																																																																																										Int:2
																																																																																																										IfEq form.5240 Ti2024.5269
																																																																																																											Let Ti2026.5270
																																																																																																												Let Ti2025.5271
																																																																																																													Int:0
																																																																																																													IfEq m_invert.5251 Ti2025.5271
																																																																																																														Int:1
																																																																																																														Int:0
																																																																																																												App vecunit_sgn.2657abc.5243 Ti2026.5270 
																																																																																																											Unit
																																																																																																							Let Tu57.5266
																																																																																																								Let Ti2027.5267
																																																																																																									Int:0
																																																																																																									IfEq isrot_p.5242 Ti2027.5267
																																																																																																										Unit
																																																																																																										App rotate_quadratic_matrix.2762abc.5243 rotation.5259 
																																																																																																								Int:1
																																																																										LetRec read_object.2767 n.2768 
																																																																											Let Ti1948.5231
																																																																												Int:60
																																																																												IfLE Ti1948.5231 n.2768
																																																																													Unit
																																																																													Let Tb1949.5232
																																																																														App read_nth_object.2765n.2768 
																																																																														Let Ti1950.5233
																																																																															Int:0
																																																																															IfEq Tb1949.5232 Ti1950.5233
																																																																																Let Ta1951.5236
																																																																																	ExtArray 0
																																																																																	Let Ti1952.5237
																																																																																		Int:0
																																																																																		Put Ta1951.5236 Ti1952.5237 n.2768
																																																																																Let Ti1954.5234
																																																																																	Let Ti1953.5235
																																																																																		Int:1
																																																																																		Add n.2768 Ti1953.5235
																																																																																	App read_object.2767Ti1954.5234 
																																																																											LetRec read_all_object.2769 Tu72.2770 
																																																																												Let Ti1947.5230
																																																																													Int:0
																																																																													App read_object.2767Ti1947.5230 
																																																																												LetRec read_net_item.2771 length.2772 
																																																																													Let item.5219
																																																																														Readint
																																																																														Let Ti1940.5220
																																																																															Let Ti1939.5229
																																																																																Int:1
																																																																																Neg Ti1939.5229
																																																																															IfEq item.5219 Ti1940.5220
																																																																																Let Ti1942.5225
																																																																																	Let Ti1941.5228
																																																																																		Int:1
																																																																																		Add length.2772 Ti1941.5228
																																																																																	Let Ti1944.5226
																																																																																		Let Ti1943.5227
																																																																																			Int:1
																																																																																			Neg Ti1943.5227
																																																																																		ExtFunApp create_array Ti1942.5225,Ti1944.5226,
																																																																																Let v.5221
																																																																																	Let Ti1946.5223
																																																																																		Let Ti1945.5224
																																																																																			Int:1
																																																																																			Add length.2772 Ti1945.5224
																																																																																		App read_net_item.2771Ti1946.5223 
																																																																																	Let Tu73.5222
																																																																																		Put v.5221 length.2772 item.5219
																																																																																		Var v.5221
																																																																													LetRec read_or_network.2773 length.2774 
																																																																														Let net.5207
																																																																															Let Ti1930.5218
																																																																																Int:0
																																																																																App read_net_item.2771Ti1930.5218 
																																																																															Let Ti1932.5208
																																																																																Let Ti1931.5217
																																																																																	Int:0
																																																																																	Get net.5207 Ti1931.5217
																																																																																Let Ti1934.5209
																																																																																	Let Ti1933.5216
																																																																																		Int:1
																																																																																		Neg Ti1933.5216
																																																																																	IfEq Ti1932.5208 Ti1934.5209
																																																																																		Let Ti1936.5214
																																																																																			Let Ti1935.5215
																																																																																				Int:1
																																																																																				Add length.2774 Ti1935.5215
																																																																																			ExtFunApp create_array Ti1936.5214,net.5207,
																																																																																		Let v.5210
																																																																																			Let Ti1938.5212
																																																																																				Let Ti1937.5213
																																																																																					Int:1
																																																																																					Add length.2774 Ti1937.5213
																																																																																				App read_or_network.2773Ti1938.5212 
																																																																																			Let Tu74.5211
																																																																																				Put v.5210 length.2774 net.5207
																																																																																				Var v.5210
																																																																														LetRec read_and_network.2775 n.2776 
																																																																															Let net.5197
																																																																																Let Ti1922.5206
																																																																																	Int:0
																																																																																	App read_net_item.2771Ti1922.5206 
																																																																																Let Ti1924.5198
																																																																																	Let Ti1923.5205
																																																																																		Int:0
																																																																																		Get net.5197 Ti1923.5205
																																																																																	Let Ti1926.5199
																																																																																		Let Ti1925.5204
																																																																																			Int:1
																																																																																			Neg Ti1925.5204
																																																																																		IfEq Ti1924.5198 Ti1926.5199
																																																																																			Unit
																																																																																			Let Tu75.5200
																																																																																				Let Ta1927.5203
																																																																																					ExtArray 83
																																																																																					Put Ta1927.5203 n.2776 net.5197
																																																																																				Let Ti1929.5201
																																																																																					Let Ti1928.5202
																																																																																						Int:1
																																																																																						Add n.2776 Ti1928.5202
																																																																																					App read_and_network.2775Ti1929.5201 
																																																																															LetRec read_parameter.2777 Tu76.2778 
																																																																																Let Tu80.5185
																																																																																	Let Tu1914.5196
																																																																																		Unit
																																																																																		App read_screen_settings.2758Tu1914.5196 
																																																																																	Let Tu79.5186
																																																																																		Let Tu1915.5195
																																																																																			Unit
																																																																																			App read_light.2760Tu1915.5195 
																																																																																		Let Tu78.5187
																																																																																			Let Tu1916.5194
																																																																																				Unit
																																																																																				App read_all_object.2769Tu1916.5194 
																																																																																			Let Tu77.5188
																																																																																				Let Ti1917.5193
																																																																																					Int:0
																																																																																					App read_and_network.2775Ti1917.5193 
																																																																																				Let Ta1918.5189
																																																																																					ExtArray 134
																																																																																					Let Ti1919.5190
																																																																																						Int:0
																																																																																						Let Ta1921.5191
																																																																																							Let Ti1920.5192
																																																																																								Int:0
																																																																																								App read_or_network.2773Ti1920.5192 
																																																																																							Put Ta1918.5189 Ti1919.5190 Ta1921.5191
																																																																																LetRec solver_rect_surface.2779 m.2780 dirvec.2781 b0.2782 b1.2783 b2.2784 i0.2785 i1.2786 i2.2787 
																																																																																	Let Td1896.5163
																																																																																		Get dirvec.2781 i0.2785
																																																																																		Let Td1897.5164
																																																																																			Float:0.000000
																																																																																			IfEq Td1896.5163 Td1897.5164
																																																																																				Int:0
																																																																																				Let abc.5165
																																																																																					App o_param_abc.2701m.2780 
																																																																																					Let d.5166
																																																																																						Let Ti1902.5179
																																																																																							Let Tb1898.5181
																																																																																								App o_isinvert.2691m.2780 
																																																																																								Let Ti1901.5182
																																																																																									Let Td1899.5183
																																																																																										Float:0.000000
																																																																																										Let Td1900.5184
																																																																																											Get dirvec.2781 i0.2785
																																																																																											IfLE Td1899.5183 Td1900.5184
																																																																																												Int:0
																																																																																												Int:1
																																																																																									xor Tb1898.5181 Ti1901.5182
																																																																																							Let Td1903.5180
																																																																																								Get abc.5165 i0.2785
																																																																																								App fneg_cond.2633Ti1902.5179 Td1903.5180 
																																																																																						Let d2.5167
																																																																																							Let Td1904.5177
																																																																																								FSub d.5166 b0.2782
																																																																																								Let Td1905.5178
																																																																																									Get dirvec.2781 i0.2785
																																																																																									FDiv Td1904.5177 Td1905.5178
																																																																																							Let Td1906.5168
																																																																																								Get abc.5165 i1.2786
																																																																																								Let Td1908.5169
																																																																																									Let Td1907.5176
																																																																																										Get dirvec.2781 i1.2786
																																																																																										FDiv d2.5167 Td1907.5176 b1.2783
																																																																																									IfFAbsLE Td1906.5168 Td1908.5169
																																																																																										Int:0
																																																																																										Let Td1909.5170
																																																																																											Get abc.5165 i2.2787
																																																																																											Let Td1911.5171
																																																																																												Let Td1910.5175
																																																																																													Get dirvec.2781 i2.2787
																																																																																													FDiv d2.5167 Td1910.5175 b2.2784
																																																																																												IfFAbsLE Td1909.5170 Td1911.5171
																																																																																													Int:0
																																																																																													Let Tu81.5172
																																																																																														Let Ta1912.5173
																																																																																															ExtArray 135
																																																																																															Let Ti1913.5174
																																																																																																Int:0
																																																																																																Put Ta1912.5173 Ti1913.5174 d2.5167
																																																																																														Int:1
																																																																																	LetRec solver_rect.2788 m.2789 dirvec.2790 b0.2791 b1.2792 b2.2793 
																																																																																		Let Tb1884.5148
																																																																																			Let Ti1881.5160
																																																																																				Int:0
																																																																																				Let Ti1882.5161
																																																																																					Int:1
																																																																																					Let Ti1883.5162
																																																																																						Int:2
																																																																																						App solver_rect_surface.2779m.2789 dirvec.2790 b0.2791 b1.2792 b2.2793 Ti1881.5160 Ti1882.5161 Ti1883.5162 
																																																																																			Let Ti1885.5149
																																																																																				Int:0
																																																																																				IfEq Tb1884.5148 Ti1885.5149
																																																																																					Let Tb1889.5150
																																																																																						Let Ti1886.5157
																																																																																							Int:1
																																																																																							Let Ti1887.5158
																																																																																								Int:2
																																																																																								Let Ti1888.5159
																																																																																									Int:0
																																																																																									App solver_rect_surface.2779m.2789 dirvec.2790 b1.2792 b2.2793 b0.2791 Ti1886.5157 Ti1887.5158 Ti1888.5159 
																																																																																						Let Ti1890.5151
																																																																																							Int:0
																																																																																							IfEq Tb1889.5150 Ti1890.5151
																																																																																								Let Tb1894.5152
																																																																																									Let Ti1891.5154
																																																																																										Int:2
																																																																																										Let Ti1892.5155
																																																																																											Int:0
																																																																																											Let Ti1893.5156
																																																																																												Int:1
																																																																																												App solver_rect_surface.2779m.2789 dirvec.2790 b2.2793 b0.2791 b1.2792 Ti1891.5154 Ti1892.5155 Ti1893.5156 
																																																																																									Let Ti1895.5153
																																																																																										Int:0
																																																																																										IfEq Tb1894.5152 Ti1895.5153
																																																																																											Int:0
																																																																																											Int:3
																																																																																								Int:2
																																																																																					Int:1
																																																																																		LetRec solver_surface.2794 m.2795 dirvec.2796 b0.2797 b1.2798 b2.2799 
																																																																																			Let abc.5139
																																																																																				App o_param_abc.2701m.2795 
																																																																																				Let d.5140
																																																																																					App veciprod.2660dirvec.2796 abc.5139 
																																																																																					Let Td1875.5141
																																																																																						Float:0.000000
																																																																																						IfLE d.5140 Td1875.5141
																																																																																							Int:0
																																																																																							Let Tu82.5142
																																																																																								Let Ta1876.5143
																																																																																									ExtArray 135
																																																																																									Let Ti1877.5144
																																																																																										Int:0
																																																																																										Let Td1880.5145
																																																																																											Let Td1879.5146
																																																																																												Let Td1878.5147
																																																																																													App veciprod2.2663abc.5139 b0.2797 b1.2798 b2.2799 
																																																																																													App fneg.2594Td1878.5147 
																																																																																												FDiv Td1879.5146 d.5140
																																																																																											Put Ta1876.5143 Ti1877.5144 Td1880.5145
																																																																																								Int:1
																																																																																			LetRec quadratic.2800 m.2801 v0.2802 v1.2803 v2.2804 
																																																																																				Let diag_part.5120
																																																																																					Let Td1862.5131
																																																																																						Let Td1857.5134
																																																																																							App fsqr.2598v0.2802 
																																																																																							Let Td1858.5135
																																																																																								App o_param_a.2695m.2801 
																																																																																								Let Td1861.5136
																																																																																									Let Td1859.5137
																																																																																										App fsqr.2598v1.2803 
																																																																																										Let Td1860.5138
																																																																																											App o_param_b.2697m.2801 
																																																																																											FMul Td1859.5137 Td1860.5138
																																																																																									FDiv Td1857.5134 Td1858.5135 Td1861.5136
																																																																																						Let Td1863.5132
																																																																																							App fsqr.2598v2.2804 
																																																																																							Let Td1864.5133
																																																																																								App o_param_c.2699m.2801 
																																																																																								FDiv Td1863.5132 Td1864.5133 Td1862.5131
																																																																																					Let Ti1865.5121
																																																																																						App o_isrot.2693m.2801 
																																																																																						Let Ti1866.5122
																																																																																							Int:0
																																																																																							IfEq Ti1865.5121 Ti1866.5122
																																																																																								Var diag_part.5120
																																																																																								Let Td1872.5123
																																																																																									Let Td1869.5126
																																																																																										Let Td1867.5129
																																																																																											FMul v1.2803 v2.2804
																																																																																											Let Td1868.5130
																																																																																												App o_param_r1.2719m.2801 
																																																																																												FDiv Td1867.5129 Td1868.5130 diag_part.5120
																																																																																										Let Td1870.5127
																																																																																											FMul v2.2804 v0.2802
																																																																																											Let Td1871.5128
																																																																																												App o_param_r2.2721m.2801 
																																																																																												FDiv Td1870.5127 Td1871.5128 Td1869.5126
																																																																																									Let Td1873.5124
																																																																																										FMul v0.2802 v1.2803
																																																																																										Let Td1874.5125
																																																																																											App o_param_r3.2723m.2801 
																																																																																											FDiv Td1873.5124 Td1874.5125 Td1872.5123
																																																																																				LetRec bilinear.2805 m.2806 v0.2807 v1.2808 v2.2809 w0.2810 w1.2811 w2.2812 
																																																																																					Let diag_part.5096
																																																																																						Let Td1839.5112
																																																																																							Let Td1834.5115
																																																																																								FMul v0.2807 w0.2810
																																																																																								Let Td1835.5116
																																																																																									App o_param_a.2695m.2806 
																																																																																									Let Td1838.5117
																																																																																										Let Td1836.5118
																																																																																											FMul v1.2808 w1.2811
																																																																																											Let Td1837.5119
																																																																																												App o_param_b.2697m.2806 
																																																																																												FMul Td1836.5118 Td1837.5119
																																																																																										FDiv Td1834.5115 Td1835.5116 Td1838.5117
																																																																																							Let Td1840.5113
																																																																																								FMul v2.2809 w2.2812
																																																																																								Let Td1841.5114
																																																																																									App o_param_c.2699m.2806 
																																																																																									FDiv Td1840.5113 Td1841.5114 Td1839.5112
																																																																																						Let Ti1842.5097
																																																																																							App o_isrot.2693m.2806 
																																																																																							Let Ti1843.5098
																																																																																								Int:0
																																																																																								IfEq Ti1842.5097 Ti1843.5098
																																																																																									Var diag_part.5096
																																																																																									Let Td1856.5099
																																																																																										Let Td1855.5100
																																																																																											Let Td1851.5101
																																																																																												Let Td1845.5105
																																																																																													Let Td1844.5111
																																																																																														FMul v1.2808 w2.2812
																																																																																														FDiv v2.2809 w1.2811 Td1844.5111
																																																																																													Let Td1846.5106
																																																																																														App o_param_r1.2719m.2806 
																																																																																														Let Td1850.5107
																																																																																															Let Td1848.5108
																																																																																																Let Td1847.5110
																																																																																																	FMul v2.2809 w0.2810
																																																																																																	FDiv v0.2807 w2.2812 Td1847.5110
																																																																																																Let Td1849.5109
																																																																																																	App o_param_r2.2721m.2806 
																																																																																																	FMul Td1848.5108 Td1849.5109
																																																																																															FDiv Td1845.5105 Td1846.5106 Td1850.5107
																																																																																												Let Td1853.5102
																																																																																													Let Td1852.5104
																																																																																														FMul v1.2808 w0.2810
																																																																																														FDiv v0.2807 w1.2811 Td1852.5104
																																																																																													Let Td1854.5103
																																																																																														App o_param_r3.2723m.2806 
																																																																																														FDiv Td1853.5102 Td1854.5103 Td1851.5101
																																																																																											App fhalf.2596Td1855.5100 
																																																																																										FAdd diag_part.5096 Td1856.5099
																																																																																					LetRec solver_second.2813 m.2814 dirvec.2815 b0.2816 b1.2817 b2.2818 
																																																																																						Let aa.5063
																																																																																							Let Td1810.5090
																																																																																								Let Ti1809.5095
																																																																																									Int:0
																																																																																									Get dirvec.2815 Ti1809.5095
																																																																																								Let Td1812.5091
																																																																																									Let Ti1811.5094
																																																																																										Int:1
																																																																																										Get dirvec.2815 Ti1811.5094
																																																																																									Let Td1814.5092
																																																																																										Let Ti1813.5093
																																																																																											Int:2
																																																																																											Get dirvec.2815 Ti1813.5093
																																																																																										App quadratic.2800m.2814 Td1810.5090 Td1812.5091 Td1814.5092 
																																																																																							Let Td1815.5064
																																																																																								Float:0.000000
																																																																																								IfEq aa.5063 Td1815.5064
																																																																																									Int:0
																																																																																									Let bb.5065
																																																																																										Let Td1817.5084
																																																																																											Let Ti1816.5089
																																																																																												Int:0
																																																																																												Get dirvec.2815 Ti1816.5089
																																																																																											Let Td1819.5085
																																																																																												Let Ti1818.5088
																																																																																													Int:1
																																																																																													Get dirvec.2815 Ti1818.5088
																																																																																												Let Td1821.5086
																																																																																													Let Ti1820.5087
																																																																																														Int:2
																																																																																														Get dirvec.2815 Ti1820.5087
																																																																																													App bilinear.2805m.2814 Td1817.5084 Td1819.5085 Td1821.5086 b0.2816 b1.2817 b2.2818 
																																																																																										Let cc0.5066
																																																																																											App quadratic.2800m.2814 b0.2816 b1.2817 b2.2818 
																																																																																											Let cc.5067
																																																																																												Let Ti1822.5081
																																																																																													App o_form.2687m.2814 
																																																																																													Let Ti1823.5082
																																																																																														Int:3
																																																																																														IfEq Ti1822.5081 Ti1823.5082
																																																																																															Let Td1824.5083
																																																																																																Float:1.000000
																																																																																																FSub cc0.5066 Td1824.5083
																																																																																															Var cc0.5066
																																																																																												Let d.5068
																																																																																													Let Td1825.5079
																																																																																														App fsqr.2598bb.5065 
																																																																																														Let Td1826.5080
																																																																																															FMul aa.5063 cc.5067
																																																																																															FSub Td1825.5079 Td1826.5080
																																																																																													Let Td1827.5069
																																																																																														Float:0.000000
																																																																																														IfLE d.5068 Td1827.5069
																																																																																															Int:0
																																																																																															Let sd.5070
																																																																																																sqrt d.5068
																																																																																																Let t1.5071
																																																																																																	Let Tb1828.5077
																																																																																																		App o_isinvert.2691m.2814 
																																																																																																		Let Ti1829.5078
																																																																																																			Int:0
																																																																																																			IfEq Tb1828.5077 Ti1829.5078
																																																																																																				App fneg.2594sd.5070 
																																																																																																				Var sd.5070
																																																																																																	Let Tu83.5072
																																																																																																		Let Ta1830.5073
																																																																																																			ExtArray 135
																																																																																																			Let Ti1831.5074
																																																																																																				Int:0
																																																																																																				Let Td1833.5075
																																																																																																					Let Td1832.5076
																																																																																																						FSub t1.5071 bb.5065
																																																																																																						FDiv Td1832.5076 aa.5063
																																																																																																					Put Ta1830.5073 Ti1831.5074 Td1833.5075
																																																																																																		Int:1
																																																																																						LetRec solver.2819 index.2820 dirvec.2821 org.2822 
																																																																																							Let m.5046
																																																																																								Let Ta1797.5062
																																																																																									ExtArray 12
																																																																																									Get Ta1797.5062 index.2820
																																																																																								Let b0.5047
																																																																																									Let Td1799.5059
																																																																																										Let Ti1798.5061
																																																																																											Int:0
																																																																																											Get org.2822 Ti1798.5061
																																																																																										Let Td1800.5060
																																																																																											App o_param_x.2703m.5046 
																																																																																											FSub Td1799.5059 Td1800.5060
																																																																																									Let b1.5048
																																																																																										Let Td1802.5056
																																																																																											Let Ti1801.5058
																																																																																												Int:1
																																																																																												Get org.2822 Ti1801.5058
																																																																																											Let Td1803.5057
																																																																																												App o_param_y.2705m.5046 
																																																																																												FSub Td1802.5056 Td1803.5057
																																																																																										Let b2.5049
																																																																																											Let Td1805.5053
																																																																																												Let Ti1804.5055
																																																																																													Int:2
																																																																																													Get org.2822 Ti1804.5055
																																																																																												Let Td1806.5054
																																																																																													App o_param_z.2707m.5046 
																																																																																													FSub Td1805.5053 Td1806.5054
																																																																																											Let m_shape.5050
																																																																																												App o_form.2687m.5046 
																																																																																												Let Ti1807.5051
																																																																																													Int:1
																																																																																													IfEq m_shape.5050 Ti1807.5051
																																																																																														App solver_rect.2788m.5046 dirvec.2821 b0.5047 b1.5048 b2.5049 
																																																																																														Let Ti1808.5052
																																																																																															Int:2
																																																																																															IfEq m_shape.5050 Ti1808.5052
																																																																																																App solver_surface.2794m.5046 dirvec.2821 b0.5047 b1.5048 b2.5049 
																																																																																																App solver_second.2813m.5046 dirvec.2821 b0.5047 b1.5048 b2.5049 
																																																																																							LetRec solver_rect_fast.2823 m.2824 v.2825 dconst.2826 b0.2827 b1.2828 b2.2829 
																																																																																								Let d0.4980
																																																																																									Let Td1739.5041
																																																																																										Let Td1738.5044
																																																																																											Let Ti1737.5045
																																																																																												Int:0
																																																																																												Get dconst.2826 Ti1737.5045
																																																																																											FSub Td1738.5044 b0.2827
																																																																																										Let Td1741.5042
																																																																																											Let Ti1740.5043
																																																																																												Int:1
																																																																																												Get dconst.2826 Ti1740.5043
																																																																																											FMul Td1739.5041 Td1741.5042
																																																																																									Let Ti1753.4981
																																																																																										Let Td1742.5030
																																																																																											App o_param_b.2697m.2824 
																																																																																											Let Td1745.5031
																																																																																												Let Td1744.5039
																																																																																													Let Ti1743.5040
																																																																																														Int:1
																																																																																														Get v.2825 Ti1743.5040
																																																																																													FDiv d0.4980 Td1744.5039 b1.2828
																																																																																												IfFAbsLE Td1742.5030 Td1745.5031
																																																																																													Int:0
																																																																																													Let Td1746.5032
																																																																																														App o_param_c.2699m.2824 
																																																																																														Let Td1749.5033
																																																																																															Let Td1748.5037
																																																																																																Let Ti1747.5038
																																																																																																	Int:2
																																																																																																	Get v.2825 Ti1747.5038
																																																																																																FDiv d0.4980 Td1748.5037 b2.2829
																																																																																															IfFAbsLE Td1746.5032 Td1749.5033
																																																																																																Int:0
																																																																																																Let Td1751.5034
																																																																																																	Let Ti1750.5036
																																																																																																		Int:1
																																																																																																		Get dconst.2826 Ti1750.5036
																																																																																																	Let Td1752.5035
																																																																																																		Float:0.000000
																																																																																																		IfEq Td1751.5034 Td1752.5035
																																																																																																			Int:0
																																																																																																			Int:1
																																																																																										Let Ti1754.4982
																																																																																											Int:0
																																																																																											IfEq Ti1753.4981 Ti1754.4982
																																																																																												Let d1.4986
																																																																																													Let Td1757.5025
																																																																																														Let Td1756.5028
																																																																																															Let Ti1755.5029
																																																																																																Int:2
																																																																																																Get dconst.2826 Ti1755.5029
																																																																																															FSub Td1756.5028 b1.2828
																																																																																														Let Td1759.5026
																																																																																															Let Ti1758.5027
																																																																																																Int:3
																																																																																																Get dconst.2826 Ti1758.5027
																																																																																															FMul Td1757.5025 Td1759.5026
																																																																																													Let Ti1771.4987
																																																																																														Let Td1760.5014
																																																																																															App o_param_a.2695m.2824 
																																																																																															Let Td1763.5015
																																																																																																Let Td1762.5023
																																																																																																	Let Ti1761.5024
																																																																																																		Int:0
																																																																																																		Get v.2825 Ti1761.5024
																																																																																																	FDiv d1.4986 Td1762.5023 b0.2827
																																																																																																IfFAbsLE Td1760.5014 Td1763.5015
																																																																																																	Int:0
																																																																																																	Let Td1764.5016
																																																																																																		App o_param_c.2699m.2824 
																																																																																																		Let Td1767.5017
																																																																																																			Let Td1766.5021
																																																																																																				Let Ti1765.5022
																																																																																																					Int:2
																																																																																																					Get v.2825 Ti1765.5022
																																																																																																				FDiv d1.4986 Td1766.5021 b2.2829
																																																																																																			IfFAbsLE Td1764.5016 Td1767.5017
																																																																																																				Int:0
																																																																																																				Let Td1769.5018
																																																																																																					Let Ti1768.5020
																																																																																																						Int:3
																																																																																																						Get dconst.2826 Ti1768.5020
																																																																																																					Let Td1770.5019
																																																																																																						Float:0.000000
																																																																																																						IfEq Td1769.5018 Td1770.5019
																																																																																																							Int:0
																																																																																																							Int:1
																																																																																														Let Ti1772.4988
																																																																																															Int:0
																																																																																															IfEq Ti1771.4987 Ti1772.4988
																																																																																																Let d2.4992
																																																																																																	Let Td1775.5009
																																																																																																		Let Td1774.5012
																																																																																																			Let Ti1773.5013
																																																																																																				Int:4
																																																																																																				Get dconst.2826 Ti1773.5013
																																																																																																			FSub Td1774.5012 b2.2829
																																																																																																		Let Td1777.5010
																																																																																																			Let Ti1776.5011
																																																																																																				Int:5
																																																																																																				Get dconst.2826 Ti1776.5011
																																																																																																			FMul Td1775.5009 Td1777.5010
																																																																																																	Let Ti1789.4993
																																																																																																		Let Td1778.4998
																																																																																																			App o_param_a.2695m.2824 
																																																																																																			Let Td1781.4999
																																																																																																				Let Td1780.5007
																																																																																																					Let Ti1779.5008
																																																																																																						Int:0
																																																																																																						Get v.2825 Ti1779.5008
																																																																																																					FDiv d2.4992 Td1780.5007 b0.2827
																																																																																																				IfFAbsLE Td1778.4998 Td1781.4999
																																																																																																					Int:0
																																																																																																					Let Td1782.5000
																																																																																																						App o_param_b.2697m.2824 
																																																																																																						Let Td1785.5001
																																																																																																							Let Td1784.5005
																																																																																																								Let Ti1783.5006
																																																																																																									Int:1
																																																																																																									Get v.2825 Ti1783.5006
																																																																																																								FDiv d2.4992 Td1784.5005 b1.2828
																																																																																																							IfFAbsLE Td1782.5000 Td1785.5001
																																																																																																								Int:0
																																																																																																								Let Td1787.5002
																																																																																																									Let Ti1786.5004
																																																																																																										Int:5
																																																																																																										Get dconst.2826 Ti1786.5004
																																																																																																									Let Td1788.5003
																																																																																																										Float:0.000000
																																																																																																										IfEq Td1787.5002 Td1788.5003
																																																																																																											Int:0
																																																																																																											Int:1
																																																																																																		Let Ti1790.4994
																																																																																																			Int:0
																																																																																																			IfEq Ti1789.4993 Ti1790.4994
																																																																																																				Int:0
																																																																																																				Let Tu86.4995
																																																																																																					Let Ta1791.4996
																																																																																																						ExtArray 135
																																																																																																						Let Ti1792.4997
																																																																																																							Int:0
																																																																																																							Put Ta1791.4996 Ti1792.4997 d2.4992
																																																																																																					Int:3
																																																																																																Let Tu85.4989
																																																																																																	Let Ta1793.4990
																																																																																																		ExtArray 135
																																																																																																		Let Ti1794.4991
																																																																																																			Int:0
																																																																																																			Put Ta1793.4990 Ti1794.4991 d1.4986
																																																																																																	Int:2
																																																																																												Let Tu84.4983
																																																																																													Let Ta1795.4984
																																																																																														ExtArray 135
																																																																																														Let Ti1796.4985
																																																																																															Int:0
																																																																																															Put Ta1795.4984 Ti1796.4985 d0.4980
																																																																																													Int:1
																																																																																								LetRec solver_surface_fast.2830 m.2831 dconst.2832 b0.2833 b1.2834 b2.2835 
																																																																																									Let Td1723.4965
																																																																																										Float:0.000000
																																																																																										Let Td1725.4966
																																																																																											Let Ti1724.4979
																																																																																												Int:0
																																																																																												Get dconst.2832 Ti1724.4979
																																																																																											IfLE Td1723.4965 Td1725.4966
																																																																																												Int:0
																																																																																												Let Tu87.4967
																																																																																													Let Ta1726.4968
																																																																																														ExtArray 135
																																																																																														Let Ti1727.4969
																																																																																															Int:0
																																																																																															Let Td1736.4970
																																																																																																Let Td1733.4971
																																																																																																	Let Td1729.4974
																																																																																																		Let Ti1728.4978
																																																																																																			Int:1
																																																																																																			Get dconst.2832 Ti1728.4978
																																																																																																		Let Td1732.4975
																																																																																																			Let Td1731.4976
																																																																																																				Let Ti1730.4977
																																																																																																					Int:2
																																																																																																					Get dconst.2832 Ti1730.4977
																																																																																																				FMul Td1731.4976 b1.2834
																																																																																																			FDiv Td1729.4974 b0.2833 Td1732.4975
																																																																																																	Let Td1735.4972
																																																																																																		Let Ti1734.4973
																																																																																																			Int:3
																																																																																																			Get dconst.2832 Ti1734.4973
																																																																																																		FDiv Td1735.4972 b2.2835 Td1733.4971
																																																																																																Put Ta1726.4968 Ti1727.4969 Td1736.4970
																																																																																													Int:1
																																																																																									LetRec solver_second_fast.2836 m.2837 dconst.2838 b0.2839 b1.2840 b2.2841 
																																																																																										Let aa.4927
																																																																																											Let Ti1691.4964
																																																																																												Int:0
																																																																																												Get dconst.2838 Ti1691.4964
																																																																																											Let Td1692.4928
																																																																																												Float:0.000000
																																																																																												IfEq aa.4927 Td1692.4928
																																																																																													Int:0
																																																																																													Let neg_bb.4929
																																																																																														Let Td1698.4956
																																																																																															Let Td1694.4959
																																																																																																Let Ti1693.4963
																																																																																																	Int:1
																																																																																																	Get dconst.2838 Ti1693.4963
																																																																																																Let Td1697.4960
																																																																																																	Let Td1696.4961
																																																																																																		Let Ti1695.4962
																																																																																																			Int:2
																																																																																																			Get dconst.2838 Ti1695.4962
																																																																																																		FMul Td1696.4961 b1.2840
																																																																																																	FDiv Td1694.4959 b0.2839 Td1697.4960
																																																																																															Let Td1700.4957
																																																																																																Let Ti1699.4958
																																																																																																	Int:3
																																																																																																	Get dconst.2838 Ti1699.4958
																																																																																																FDiv Td1700.4957 b2.2841 Td1698.4956
																																																																																														Let cc0.4930
																																																																																															App quadratic.2800m.2837 b0.2839 b1.2840 b2.2841 
																																																																																															Let cc.4931
																																																																																																Let Ti1701.4953
																																																																																																	App o_form.2687m.2837 
																																																																																																	Let Ti1702.4954
																																																																																																		Int:3
																																																																																																		IfEq Ti1701.4953 Ti1702.4954
																																																																																																			Let Td1703.4955
																																																																																																				Float:1.000000
																																																																																																				FSub cc0.4930 Td1703.4955
																																																																																																			Var cc0.4930
																																																																																																Let d.4932
																																																																																																	Let Td1704.4951
																																																																																																		App fsqr.2598neg_bb.4929 
																																																																																																		Let Td1705.4952
																																																																																																			FMul aa.4927 cc.4931
																																																																																																			FSub Td1704.4951 Td1705.4952
																																																																																																	Let Td1706.4933
																																																																																																		Float:0.000000
																																																																																																		IfLE d.4932 Td1706.4933
																																																																																																			Int:0
																																																																																																			Let Tu88.4934
																																																																																																				Let Tb1707.4935
																																																																																																					App o_isinvert.2691m.2837 
																																																																																																					Let Ti1708.4936
																																																																																																						Int:0
																																																																																																						IfEq Tb1707.4935 Ti1708.4936
																																																																																																							Let Ta1709.4944
																																																																																																								ExtArray 135
																																																																																																								Let Ti1710.4945
																																																																																																									Int:0
																																																																																																									Let Td1715.4946
																																																																																																										Let Td1712.4947
																																																																																																											Let Td1711.4950
																																																																																																												sqrt d.4932
																																																																																																												FSub neg_bb.4929 Td1711.4950
																																																																																																											Let Td1714.4948
																																																																																																												Let Ti1713.4949
																																																																																																													Int:4
																																																																																																													Get dconst.2838 Ti1713.4949
																																																																																																												FMul Td1712.4947 Td1714.4948
																																																																																																										Put Ta1709.4944 Ti1710.4945 Td1715.4946
																																																																																																							Let Ta1716.4937
																																																																																																								ExtArray 135
																																																																																																								Let Ti1717.4938
																																																																																																									Int:0
																																																																																																									Let Td1722.4939
																																																																																																										Let Td1719.4940
																																																																																																											Let Td1718.4943
																																																																																																												sqrt d.4932
																																																																																																												FAdd neg_bb.4929 Td1718.4943
																																																																																																											Let Td1721.4941
																																																																																																												Let Ti1720.4942
																																																																																																													Int:4
																																																																																																													Get dconst.2838 Ti1720.4942
																																																																																																												FMul Td1719.4940 Td1721.4941
																																																																																																										Put Ta1716.4937 Ti1717.4938 Td1722.4939
																																																																																																				Int:1
																																																																																										LetRec solver_fast.2842 index.2843 dirvec.2844 org.2845 
																																																																																											Let m.4907
																																																																																												Let Ta1678.4926
																																																																																													ExtArray 12
																																																																																													Get Ta1678.4926 index.2843
																																																																																												Let b0.4908
																																																																																													Let Td1680.4923
																																																																																														Let Ti1679.4925
																																																																																															Int:0
																																																																																															Get org.2845 Ti1679.4925
																																																																																														Let Td1681.4924
																																																																																															App o_param_x.2703m.4907 
																																																																																															FSub Td1680.4923 Td1681.4924
																																																																																													Let b1.4909
																																																																																														Let Td1683.4920
																																																																																															Let Ti1682.4922
																																																																																																Int:1
																																																																																																Get org.2845 Ti1682.4922
																																																																																															Let Td1684.4921
																																																																																																App o_param_y.2705m.4907 
																																																																																																FSub Td1683.4920 Td1684.4921
																																																																																														Let b2.4910
																																																																																															Let Td1686.4917
																																																																																																Let Ti1685.4919
																																																																																																	Int:2
																																																																																																	Get org.2845 Ti1685.4919
																																																																																																Let Td1687.4918
																																																																																																	App o_param_z.2707m.4907 
																																																																																																	FSub Td1686.4917 Td1687.4918
																																																																																															Let dconsts.4911
																																																																																																App d_const.2748dirvec.2844 
																																																																																																Let dconst.4912
																																																																																																	Get dconsts.4911 index.2843
																																																																																																	Let m_shape.4913
																																																																																																		App o_form.2687m.4907 
																																																																																																		Let Ti1688.4914
																																																																																																			Int:1
																																																																																																			IfEq m_shape.4913 Ti1688.4914
																																																																																																				Let Ta1689.4916
																																																																																																					App d_vec.2746dirvec.2844 
																																																																																																					App solver_rect_fast.2823m.4907 Ta1689.4916 dconst.4912 b0.4908 b1.4909 b2.4910 
																																																																																																				Let Ti1690.4915
																																																																																																					Int:2
																																																																																																					IfEq m_shape.4913 Ti1690.4915
																																																																																																						App solver_surface_fast.2830m.4907 dconst.4912 b0.4908 b1.4909 b2.4910 
																																																																																																						App solver_second_fast.2836m.4907 dconst.4912 b0.4908 b1.4909 b2.4910 
																																																																																											LetRec solver_surface_fast2.2846 m.2847 dconst.2848 sconst.2849 b0.2850 b1.2851 b2.2852 
																																																																																												Let Td1668.4896
																																																																																													Float:0.000000
																																																																																													Let Td1670.4897
																																																																																														Let Ti1669.4906
																																																																																															Int:0
																																																																																															Get dconst.2848 Ti1669.4906
																																																																																														IfLE Td1668.4896 Td1670.4897
																																																																																															Int:0
																																																																																															Let Tu89.4898
																																																																																																Let Ta1671.4899
																																																																																																	ExtArray 135
																																																																																																	Let Ti1672.4900
																																																																																																		Int:0
																																																																																																		Let Td1677.4901
																																																																																																			Let Td1674.4902
																																																																																																				Let Ti1673.4905
																																																																																																					Int:0
																																																																																																					Get dconst.2848 Ti1673.4905
																																																																																																				Let Td1676.4903
																																																																																																					Let Ti1675.4904
																																																																																																						Int:3
																																																																																																						Get sconst.2849 Ti1675.4904
																																																																																																					FMul Td1674.4902 Td1676.4903
																																																																																																			Put Ta1671.4899 Ti1672.4900 Td1677.4901
																																																																																																Int:1
																																																																																												LetRec solver_second_fast2.2853 m.2854 dconst.2855 sconst.2856 b0.2857 b1.2858 b2.2859 
																																																																																													Let aa.4861
																																																																																														Let Ti1638.4895
																																																																																															Int:0
																																																																																															Get dconst.2855 Ti1638.4895
																																																																																														Let Td1639.4862
																																																																																															Float:0.000000
																																																																																															IfEq aa.4861 Td1639.4862
																																																																																																Int:0
																																																																																																Let neg_bb.4863
																																																																																																	Let Td1645.4887
																																																																																																		Let Td1641.4890
																																																																																																			Let Ti1640.4894
																																																																																																				Int:1
																																																																																																				Get dconst.2855 Ti1640.4894
																																																																																																			Let Td1644.4891
																																																																																																				Let Td1643.4892
																																																																																																					Let Ti1642.4893
																																																																																																						Int:2
																																																																																																						Get dconst.2855 Ti1642.4893
																																																																																																					FMul Td1643.4892 b1.2858
																																																																																																				FDiv Td1641.4890 b0.2857 Td1644.4891
																																																																																																		Let Td1647.4888
																																																																																																			Let Ti1646.4889
																																																																																																				Int:3
																																																																																																				Get dconst.2855 Ti1646.4889
																																																																																																			FDiv Td1647.4888 b2.2859 Td1645.4887
																																																																																																	Let cc.4864
																																																																																																		Let Ti1648.4886
																																																																																																			Int:3
																																																																																																			Get sconst.2856 Ti1648.4886
																																																																																																		Let d.4865
																																																																																																			Let Td1649.4884
																																																																																																				App fsqr.2598neg_bb.4863 
																																																																																																				Let Td1650.4885
																																																																																																					FMul aa.4861 cc.4864
																																																																																																					FSub Td1649.4884 Td1650.4885
																																																																																																			Let Td1651.4866
																																																																																																				Float:0.000000
																																																																																																				IfLE d.4865 Td1651.4866
																																																																																																					Int:0
																																																																																																					Let Tu90.4867
																																																																																																						Let Tb1652.4868
																																																																																																							App o_isinvert.2691m.2854 
																																																																																																							Let Ti1653.4869
																																																																																																								Int:0
																																																																																																								IfEq Tb1652.4868 Ti1653.4869
																																																																																																									Let Ta1654.4877
																																																																																																										ExtArray 135
																																																																																																										Let Ti1655.4878
																																																																																																											Int:0
																																																																																																											Let Td1660.4879
																																																																																																												Let Td1657.4880
																																																																																																													Let Td1656.4883
																																																																																																														sqrt d.4865
																																																																																																														FSub neg_bb.4863 Td1656.4883
																																																																																																													Let Td1659.4881
																																																																																																														Let Ti1658.4882
																																																																																																															Int:4
																																																																																																															Get dconst.2855 Ti1658.4882
																																																																																																														FMul Td1657.4880 Td1659.4881
																																																																																																												Put Ta1654.4877 Ti1655.4878 Td1660.4879
																																																																																																									Let Ta1661.4870
																																																																																																										ExtArray 135
																																																																																																										Let Ti1662.4871
																																																																																																											Int:0
																																																																																																											Let Td1667.4872
																																																																																																												Let Td1664.4873
																																																																																																													Let Td1663.4876
																																																																																																														sqrt d.4865
																																																																																																														FAdd neg_bb.4863 Td1663.4876
																																																																																																													Let Td1666.4874
																																																																																																														Let Ti1665.4875
																																																																																																															Int:4
																																																																																																															Get dconst.2855 Ti1665.4875
																																																																																																														FMul Td1664.4873 Td1666.4874
																																																																																																												Put Ta1661.4870 Ti1662.4871 Td1667.4872
																																																																																																						Int:1
																																																																																													LetRec solver_fast2.2860 index.2861 dirvec.2862 
																																																																																														Let m.4846
																																																																																															Let Ta1631.4860
																																																																																																ExtArray 12
																																																																																																Get Ta1631.4860 index.2861
																																																																																															Let sconst.4847
																																																																																																App o_param_ctbl.2725m.4846 
																																																																																																Let b0.4848
																																																																																																	Let Ti1632.4859
																																																																																																		Int:0
																																																																																																		Get sconst.4847 Ti1632.4859
																																																																																																	Let b1.4849
																																																																																																		Let Ti1633.4858
																																																																																																			Int:1
																																																																																																			Get sconst.4847 Ti1633.4858
																																																																																																		Let b2.4850
																																																																																																			Let Ti1634.4857
																																																																																																				Int:2
																																																																																																				Get sconst.4847 Ti1634.4857
																																																																																																			Let dconsts.4851
																																																																																																				App d_const.2748dirvec.2862 
																																																																																																				Let dconst.4852
																																																																																																					Get dconsts.4851 index.2861
																																																																																																					Let m_shape.4853
																																																																																																						App o_form.2687m.4846 
																																																																																																						Let Ti1635.4854
																																																																																																							Int:1
																																																																																																							IfEq m_shape.4853 Ti1635.4854
																																																																																																								Let Ta1636.4856
																																																																																																									App d_vec.2746dirvec.2862 
																																																																																																									App solver_rect_fast.2823m.4846 Ta1636.4856 dconst.4852 b0.4848 b1.4849 b2.4850 
																																																																																																								Let Ti1637.4855
																																																																																																									Int:2
																																																																																																									IfEq m_shape.4853 Ti1637.4855
																																																																																																										App solver_surface_fast2.2846m.4846 dconst.4852 sconst.4847 b0.4848 b1.4849 b2.4850 
																																																																																																										App solver_second_fast2.2853m.4846 dconst.4852 sconst.4847 b0.4848 b1.4849 b2.4850 
																																																																																														LetRec setup_rect_table.2863 vec.2864 m.2865 
																																																																																															Let const.4780
																																																																																																Let Ti1572.4844
																																																																																																	Int:6
																																																																																																	Let Td1573.4845
																																																																																																		Float:0.000000
																																																																																																		ExtFunApp create_float_array Ti1572.4844,Td1573.4845,
																																																																																																Let Tu96.4781
																																																																																																	Let Td1575.4824
																																																																																																		Let Ti1574.4843
																																																																																																			Int:0
																																																																																																			Get vec.2864 Ti1574.4843
																																																																																																		Let Td1576.4825
																																																																																																			Float:0.000000
																																																																																																			IfEq Td1575.4824 Td1576.4825
																																																																																																				Let Ti1577.4841
																																																																																																					Int:1
																																																																																																					Let Td1578.4842
																																																																																																						Float:0.000000
																																																																																																						Put const.4780 Ti1577.4841 Td1578.4842
																																																																																																				Let Tu91.4826
																																																																																																					Let Ti1579.4832
																																																																																																						Int:0
																																																																																																						Let Td1587.4833
																																																																																																							Let Ti1585.4834
																																																																																																								Let Tb1580.4836
																																																																																																									App o_isinvert.2691m.2865 
																																																																																																									Let Ti1584.4837
																																																																																																										Let Td1581.4838
																																																																																																											Float:0.000000
																																																																																																											Let Td1583.4839
																																																																																																												Let Ti1582.4840
																																																																																																													Int:0
																																																																																																													Get vec.2864 Ti1582.4840
																																																																																																												IfLE Td1581.4838 Td1583.4839
																																																																																																													Int:0
																																																																																																													Int:1
																																																																																																										xor Tb1580.4836 Ti1584.4837
																																																																																																								Let Td1586.4835
																																																																																																									App o_param_a.2695m.2865 
																																																																																																									App fneg_cond.2633Ti1585.4834 Td1586.4835 
																																																																																																							Put const.4780 Ti1579.4832 Td1587.4833
																																																																																																					Let Ti1588.4827
																																																																																																						Int:1
																																																																																																						Let Td1592.4828
																																																																																																							Let Td1589.4829
																																																																																																								Float:1.000000
																																																																																																								Let Td1591.4830
																																																																																																									Let Ti1590.4831
																																																																																																										Int:0
																																																																																																										Get vec.2864 Ti1590.4831
																																																																																																									FDiv Td1589.4829 Td1591.4830
																																																																																																							Put const.4780 Ti1588.4827 Td1592.4828
																																																																																																	Let Tu95.4782
																																																																																																		Let Td1594.4804
																																																																																																			Let Ti1593.4823
																																																																																																				Int:1
																																																																																																				Get vec.2864 Ti1593.4823
																																																																																																			Let Td1595.4805
																																																																																																				Float:0.000000
																																																																																																				IfEq Td1594.4804 Td1595.4805
																																																																																																					Let Ti1596.4821
																																																																																																						Int:3
																																																																																																						Let Td1597.4822
																																																																																																							Float:0.000000
																																																																																																							Put const.4780 Ti1596.4821 Td1597.4822
																																																																																																					Let Tu92.4806
																																																																																																						Let Ti1598.4812
																																																																																																							Int:2
																																																																																																							Let Td1606.4813
																																																																																																								Let Ti1604.4814
																																																																																																									Let Tb1599.4816
																																																																																																										App o_isinvert.2691m.2865 
																																																																																																										Let Ti1603.4817
																																																																																																											Let Td1600.4818
																																																																																																												Float:0.000000
																																																																																																												Let Td1602.4819
																																																																																																													Let Ti1601.4820
																																																																																																														Int:1
																																																																																																														Get vec.2864 Ti1601.4820
																																																																																																													IfLE Td1600.4818 Td1602.4819
																																																																																																														Int:0
																																																																																																														Int:1
																																																																																																											xor Tb1599.4816 Ti1603.4817
																																																																																																									Let Td1605.4815
																																																																																																										App o_param_b.2697m.2865 
																																																																																																										App fneg_cond.2633Ti1604.4814 Td1605.4815 
																																																																																																								Put const.4780 Ti1598.4812 Td1606.4813
																																																																																																						Let Ti1607.4807
																																																																																																							Int:3
																																																																																																							Let Td1611.4808
																																																																																																								Let Td1608.4809
																																																																																																									Float:1.000000
																																																																																																									Let Td1610.4810
																																																																																																										Let Ti1609.4811
																																																																																																											Int:1
																																																																																																											Get vec.2864 Ti1609.4811
																																																																																																										FDiv Td1608.4809 Td1610.4810
																																																																																																								Put const.4780 Ti1607.4807 Td1611.4808
																																																																																																		Let Tu94.4783
																																																																																																			Let Td1613.4784
																																																																																																				Let Ti1612.4803
																																																																																																					Int:2
																																																																																																					Get vec.2864 Ti1612.4803
																																																																																																				Let Td1614.4785
																																																																																																					Float:0.000000
																																																																																																					IfEq Td1613.4784 Td1614.4785
																																																																																																						Let Ti1615.4801
																																																																																																							Int:5
																																																																																																							Let Td1616.4802
																																																																																																								Float:0.000000
																																																																																																								Put const.4780 Ti1615.4801 Td1616.4802
																																																																																																						Let Tu93.4786
																																																																																																							Let Ti1617.4792
																																																																																																								Int:4
																																																																																																								Let Td1625.4793
																																																																																																									Let Ti1623.4794
																																																																																																										Let Tb1618.4796
																																																																																																											App o_isinvert.2691m.2865 
																																																																																																											Let Ti1622.4797
																																																																																																												Let Td1619.4798
																																																																																																													Float:0.000000
																																																																																																													Let Td1621.4799
																																																																																																														Let Ti1620.4800
																																																																																																															Int:2
																																																																																																															Get vec.2864 Ti1620.4800
																																																																																																														IfLE Td1619.4798 Td1621.4799
																																																																																																															Int:0
																																																																																																															Int:1
																																																																																																												xor Tb1618.4796 Ti1622.4797
																																																																																																										Let Td1624.4795
																																																																																																											App o_param_c.2699m.2865 
																																																																																																											App fneg_cond.2633Ti1623.4794 Td1624.4795 
																																																																																																									Put const.4780 Ti1617.4792 Td1625.4793
																																																																																																							Let Ti1626.4787
																																																																																																								Int:5
																																																																																																								Let Td1630.4788
																																																																																																									Let Td1627.4789
																																																																																																										Float:1.000000
																																																																																																										Let Td1629.4790
																																																																																																											Let Ti1628.4791
																																																																																																												Int:2
																																																																																																												Get vec.2864 Ti1628.4791
																																																																																																											FDiv Td1627.4789 Td1629.4790
																																																																																																									Put const.4780 Ti1626.4787 Td1630.4788
																																																																																																			Var const.4780
																																																																																															LetRec setup_surface_table.2866 vec.2867 m.2868 
																																																																																																Let const.4743
																																																																																																	Let Ti1541.4778
																																																																																																		Int:4
																																																																																																		Let Td1542.4779
																																																																																																			Float:0.000000
																																																																																																			ExtFunApp create_float_array Ti1541.4778,Td1542.4779,
																																																																																																	Let d.4744
																																																																																																		Let Td1550.4767
																																																																																																			Let Td1544.4771
																																																																																																				Let Ti1543.4777
																																																																																																					Int:0
																																																																																																					Get vec.2867 Ti1543.4777
																																																																																																				Let Td1545.4772
																																																																																																					App o_param_a.2695m.2868 
																																																																																																					Let Td1549.4773
																																																																																																						Let Td1547.4774
																																																																																																							Let Ti1546.4776
																																																																																																								Int:1
																																																																																																								Get vec.2867 Ti1546.4776
																																																																																																							Let Td1548.4775
																																																																																																								App o_param_b.2697m.2868 
																																																																																																								FMul Td1547.4774 Td1548.4775
																																																																																																						FDiv Td1544.4771 Td1545.4772 Td1549.4773
																																																																																																			Let Td1552.4768
																																																																																																				Let Ti1551.4770
																																																																																																					Int:2
																																																																																																					Get vec.2867 Ti1551.4770
																																																																																																				Let Td1553.4769
																																																																																																					App o_param_c.2699m.2868 
																																																																																																					FDiv Td1552.4768 Td1553.4769 Td1550.4767
																																																																																																		Let Tu100.4745
																																																																																																			Let Td1554.4746
																																																																																																				Float:0.000000
																																																																																																				IfLE d.4744 Td1554.4746
																																																																																																					Let Ti1555.4765
																																																																																																						Int:0
																																																																																																						Let Td1556.4766
																																																																																																							Float:0.000000
																																																																																																							Put const.4743 Ti1555.4765 Td1556.4766
																																																																																																					Let Tu99.4747
																																																																																																						Let Ti1557.4762
																																																																																																							Int:0
																																																																																																							Let Td1559.4763
																																																																																																								Let Td1558.4764
																																																																																																									Float:-1.000000
																																																																																																									FDiv Td1558.4764 d.4744
																																																																																																								Put const.4743 Ti1557.4762 Td1559.4763
																																																																																																						Let Tu98.4748
																																																																																																							Let Ti1560.4758
																																																																																																								Int:1
																																																																																																								Let Td1563.4759
																																																																																																									Let Td1562.4760
																																																																																																										Let Td1561.4761
																																																																																																											App o_param_a.2695m.2868 
																																																																																																											FDiv Td1561.4761 d.4744
																																																																																																										App fneg.2594Td1562.4760 
																																																																																																									Put const.4743 Ti1560.4758 Td1563.4759
																																																																																																							Let Tu97.4749
																																																																																																								Let Ti1564.4754
																																																																																																									Int:2
																																																																																																									Let Td1567.4755
																																																																																																										Let Td1566.4756
																																																																																																											Let Td1565.4757
																																																																																																												App o_param_b.2697m.2868 
																																																																																																												FDiv Td1565.4757 d.4744
																																																																																																											App fneg.2594Td1566.4756 
																																																																																																										Put const.4743 Ti1564.4754 Td1567.4755
																																																																																																								Let Ti1568.4750
																																																																																																									Int:3
																																																																																																									Let Td1571.4751
																																																																																																										Let Td1570.4752
																																																																																																											Let Td1569.4753
																																																																																																												App o_param_c.2699m.2868 
																																																																																																												FDiv Td1569.4753 d.4744
																																																																																																											App fneg.2594Td1570.4752 
																																																																																																										Put const.4743 Ti1568.4750 Td1571.4751
																																																																																																			Var const.4743
																																																																																																LetRec setup_second_table.2869 v.2870 m.2871 
																																																																																																	Let const.4668
																																																																																																		Let Ti1478.4741
																																																																																																			Int:5
																																																																																																			Let Td1479.4742
																																																																																																				Float:0.000000
																																																																																																				ExtFunApp create_float_array Ti1478.4741,Td1479.4742,
																																																																																																		Let aa.4669
																																																																																																			Let Td1481.4735
																																																																																																				Let Ti1480.4740
																																																																																																					Int:0
																																																																																																					Get v.2870 Ti1480.4740
																																																																																																				Let Td1483.4736
																																																																																																					Let Ti1482.4739
																																																																																																						Int:1
																																																																																																						Get v.2870 Ti1482.4739
																																																																																																					Let Td1485.4737
																																																																																																						Let Ti1484.4738
																																																																																																							Int:2
																																																																																																							Get v.2870 Ti1484.4738
																																																																																																						App quadratic.2800m.2871 Td1481.4735 Td1483.4736 Td1485.4737 
																																																																																																			Let c1.4670
																																																																																																				Let Td1489.4731
																																																																																																					Let Td1487.4732
																																																																																																						Let Ti1486.4734
																																																																																																							Int:0
																																																																																																							Get v.2870 Ti1486.4734
																																																																																																						Let Td1488.4733
																																																																																																							App o_param_a.2695m.2871 
																																																																																																							FMul Td1487.4732 Td1488.4733
																																																																																																					App fneg.2594Td1489.4731 
																																																																																																				Let c2.4671
																																																																																																					Let Td1493.4727
																																																																																																						Let Td1491.4728
																																																																																																							Let Ti1490.4730
																																																																																																								Int:1
																																																																																																								Get v.2870 Ti1490.4730
																																																																																																							Let Td1492.4729
																																																																																																								App o_param_b.2697m.2871 
																																																																																																								FMul Td1491.4728 Td1492.4729
																																																																																																						App fneg.2594Td1493.4727 
																																																																																																					Let c3.4672
																																																																																																						Let Td1497.4723
																																																																																																							Let Td1495.4724
																																																																																																								Let Ti1494.4726
																																																																																																									Int:2
																																																																																																									Get v.2870 Ti1494.4726
																																																																																																								Let Td1496.4725
																																																																																																									App o_param_c.2699m.2871 
																																																																																																									FMul Td1495.4724 Td1496.4725
																																																																																																							App fneg.2594Td1497.4723 
																																																																																																						Let Tu107.4673
																																																																																																							Let Ti1498.4722
																																																																																																								Int:0
																																																																																																								Put const.4668 Ti1498.4722 aa.4669
																																																																																																							Let Tu106.4674
																																																																																																								Let Ti1499.4680
																																																																																																									App o_isrot.2693m.2871 
																																																																																																									Let Ti1500.4681
																																																																																																										Int:0
																																																																																																										IfEq Ti1499.4680 Ti1500.4681
																																																																																																											Let Tu104.4717
																																																																																																												Let Ti1501.4721
																																																																																																													Int:1
																																																																																																													Put const.4668 Ti1501.4721 c1.4670
																																																																																																												Let Tu103.4718
																																																																																																													Let Ti1502.4720
																																																																																																														Int:2
																																																																																																														Put const.4668 Ti1502.4720 c2.4671
																																																																																																													Let Ti1503.4719
																																																																																																														Int:3
																																																																																																														Put const.4668 Ti1503.4719 c3.4672
																																																																																																											Let Tu102.4682
																																																																																																												Let Ti1504.4706
																																																																																																													Int:1
																																																																																																													Let Td1514.4707
																																																																																																														Let Td1513.4708
																																																																																																															Let Td1512.4709
																																																																																																																Let Td1506.4710
																																																																																																																	Let Ti1505.4716
																																																																																																																		Int:2
																																																																																																																		Get v.2870 Ti1505.4716
																																																																																																																	Let Td1507.4711
																																																																																																																		App o_param_r2.2721m.2871 
																																																																																																																		Let Td1511.4712
																																																																																																																			Let Td1509.4713
																																																																																																																				Let Ti1508.4715
																																																																																																																					Int:1
																																																																																																																					Get v.2870 Ti1508.4715
																																																																																																																				Let Td1510.4714
																																																																																																																					App o_param_r3.2723m.2871 
																																																																																																																					FMul Td1509.4713 Td1510.4714
																																																																																																																			FDiv Td1506.4710 Td1507.4711 Td1511.4712
																																																																																																																App fhalf.2596Td1512.4709 
																																																																																																															FSub c1.4670 Td1513.4708
																																																																																																														Put const.4668 Ti1504.4706 Td1514.4707
																																																																																																												Let Tu101.4683
																																																																																																													Let Ti1515.4695
																																																																																																														Int:2
																																																																																																														Let Td1525.4696
																																																																																																															Let Td1524.4697
																																																																																																																Let Td1523.4698
																																																																																																																	Let Td1517.4699
																																																																																																																		Let Ti1516.4705
																																																																																																																			Int:2
																																																																																																																			Get v.2870 Ti1516.4705
																																																																																																																		Let Td1518.4700
																																																																																																																			App o_param_r1.2719m.2871 
																																																																																																																			Let Td1522.4701
																																																																																																																				Let Td1520.4702
																																																																																																																					Let Ti1519.4704
																																																																																																																						Int:0
																																																																																																																						Get v.2870 Ti1519.4704
																																																																																																																					Let Td1521.4703
																																																																																																																						App o_param_r3.2723m.2871 
																																																																																																																						FMul Td1520.4702 Td1521.4703
																																																																																																																				FDiv Td1517.4699 Td1518.4700 Td1522.4701
																																																																																																																	App fhalf.2596Td1523.4698 
																																																																																																																FSub c2.4671 Td1524.4697
																																																																																																															Put const.4668 Ti1515.4695 Td1525.4696
																																																																																																													Let Ti1526.4684
																																																																																																														Int:3
																																																																																																														Let Td1536.4685
																																																																																																															Let Td1535.4686
																																																																																																																Let Td1534.4687
																																																																																																																	Let Td1528.4688
																																																																																																																		Let Ti1527.4694
																																																																																																																			Int:1
																																																																																																																			Get v.2870 Ti1527.4694
																																																																																																																		Let Td1529.4689
																																																																																																																			App o_param_r1.2719m.2871 
																																																																																																																			Let Td1533.4690
																																																																																																																				Let Td1531.4691
																																																																																																																					Let Ti1530.4693
																																																																																																																						Int:0
																																																																																																																						Get v.2870 Ti1530.4693
																																																																																																																					Let Td1532.4692
																																																																																																																						App o_param_r2.2721m.2871 
																																																																																																																						FMul Td1531.4691 Td1532.4692
																																																																																																																				FDiv Td1528.4688 Td1529.4689 Td1533.4690
																																																																																																																	App fhalf.2596Td1534.4687 
																																																																																																																FSub c3.4672 Td1535.4686
																																																																																																															Put const.4668 Ti1526.4684 Td1536.4685
																																																																																																								Let Tu105.4675
																																																																																																									Let Td1537.4676
																																																																																																										Float:0.000000
																																																																																																										IfEq aa.4669 Td1537.4676
																																																																																																											Unit
																																																																																																											Let Ti1538.4677
																																																																																																												Int:4
																																																																																																												Let Td1540.4678
																																																																																																													Let Td1539.4679
																																																																																																														Float:1.000000
																																																																																																														FDiv Td1539.4679 aa.4669
																																																																																																													Put const.4668 Ti1538.4677 Td1540.4678
																																																																																																									Var const.4668
																																																																																																	LetRec iter_setup_dirvec_constants.2872 dirvec.2873 index.2874 
																																																																																																		Let Ti1469.4654
																																																																																																			Int:0
																																																																																																			IfLE Ti1469.4654 index.2874
																																																																																																				Let m.4655
																																																																																																					Let Ta1470.4667
																																																																																																						ExtArray 12
																																																																																																						Get Ta1470.4667 index.2874
																																																																																																					Let dconst.4656
																																																																																																						App d_const.2748dirvec.2873 
																																																																																																						Let v.4657
																																																																																																							App d_vec.2746dirvec.2873 
																																																																																																							Let m_shape.4658
																																																																																																								App o_form.2687m.4655 
																																																																																																								Let Tu108.4659
																																																																																																									Let Ti1471.4662
																																																																																																										Int:1
																																																																																																										IfEq m_shape.4658 Ti1471.4662
																																																																																																											Let Ta1472.4666
																																																																																																												App setup_rect_table.2863v.4657 m.4655 
																																																																																																												Put dconst.4656 index.2874 Ta1472.4666
																																																																																																											Let Ti1473.4663
																																																																																																												Int:2
																																																																																																												IfEq m_shape.4658 Ti1473.4663
																																																																																																													Let Ta1474.4665
																																																																																																														App setup_surface_table.2866v.4657 m.4655 
																																																																																																														Put dconst.4656 index.2874 Ta1474.4665
																																																																																																													Let Ta1475.4664
																																																																																																														App setup_second_table.2869v.4657 m.4655 
																																																																																																														Put dconst.4656 index.2874 Ta1475.4664
																																																																																																									Let Ti1477.4660
																																																																																																										Let Ti1476.4661
																																																																																																											Int:1
																																																																																																											Sub index.2874 Ti1476.4661
																																																																																																										App iter_setup_dirvec_constants.2872dirvec.2873 Ti1477.4660 
																																																																																																				Unit
																																																																																																		LetRec setup_dirvec_constants.2875 dirvec.2876 
																																																																																																			Let Ti1468.4649
																																																																																																				Let Ti1466.4650
																																																																																																					Let Ta1464.4652
																																																																																																						ExtArray 0
																																																																																																						Let Ti1465.4653
																																																																																																							Int:0
																																																																																																							Get Ta1464.4652 Ti1465.4653
																																																																																																					Let Ti1467.4651
																																																																																																						Int:1
																																																																																																						Sub Ti1466.4650 Ti1467.4651
																																																																																																				App iter_setup_dirvec_constants.2872dirvec.2876 Ti1468.4649 
																																																																																																			LetRec setup_startp_constants.2877 p.2878 index.2879 
																																																																																																				Let Ti1424.4601
																																																																																																					Int:0
																																																																																																					IfLE Ti1424.4601 index.2879
																																																																																																						Let obj.4602
																																																																																																							Let Ta1425.4648
																																																																																																								ExtArray 12
																																																																																																								Get Ta1425.4648 index.2879
																																																																																																							Let sconst.4603
																																																																																																								App o_param_ctbl.2725obj.4602 
																																																																																																								Let m_shape.4604
																																																																																																									App o_form.2687obj.4602 
																																																																																																									Let Tu112.4605
																																																																																																										Let Ti1426.4643
																																																																																																											Int:0
																																																																																																											Let Td1430.4644
																																																																																																												Let Td1428.4645
																																																																																																													Let Ti1427.4647
																																																																																																														Int:0
																																																																																																														Get p.2878 Ti1427.4647
																																																																																																													Let Td1429.4646
																																																																																																														App o_param_x.2703obj.4602 
																																																																																																														FSub Td1428.4645 Td1429.4646
																																																																																																												Put sconst.4603 Ti1426.4643 Td1430.4644
																																																																																																										Let Tu111.4606
																																																																																																											Let Ti1431.4638
																																																																																																												Int:1
																																																																																																												Let Td1435.4639
																																																																																																													Let Td1433.4640
																																																																																																														Let Ti1432.4642
																																																																																																															Int:1
																																																																																																															Get p.2878 Ti1432.4642
																																																																																																														Let Td1434.4641
																																																																																																															App o_param_y.2705obj.4602 
																																																																																																															FSub Td1433.4640 Td1434.4641
																																																																																																													Put sconst.4603 Ti1431.4638 Td1435.4639
																																																																																																											Let Tu110.4607
																																																																																																												Let Ti1436.4633
																																																																																																													Int:2
																																																																																																													Let Td1440.4634
																																																																																																														Let Td1438.4635
																																																																																																															Let Ti1437.4637
																																																																																																																Int:2
																																																																																																																Get p.2878 Ti1437.4637
																																																																																																															Let Td1439.4636
																																																																																																																App o_param_z.2707obj.4602 
																																																																																																																FSub Td1438.4635 Td1439.4636
																																																																																																														Put sconst.4603 Ti1436.4633 Td1440.4634
																																																																																																												Let Tu109.4608
																																																																																																													Let Ti1441.4611
																																																																																																														Int:2
																																																																																																														IfEq m_shape.4604 Ti1441.4611
																																																																																																															Let Ti1442.4624
																																																																																																																Int:3
																																																																																																																Let Td1450.4625
																																																																																																																	Let Ta1443.4626
																																																																																																																		App o_param_abc.2701obj.4602 
																																																																																																																		Let Td1445.4627
																																																																																																																			Let Ti1444.4632
																																																																																																																				Int:0
																																																																																																																				Get sconst.4603 Ti1444.4632
																																																																																																																			Let Td1447.4628
																																																																																																																				Let Ti1446.4631
																																																																																																																					Int:1
																																																																																																																					Get sconst.4603 Ti1446.4631
																																																																																																																				Let Td1449.4629
																																																																																																																					Let Ti1448.4630
																																																																																																																						Int:2
																																																																																																																						Get sconst.4603 Ti1448.4630
																																																																																																																					App veciprod2.2663Ta1443.4626 Td1445.4627 Td1447.4628 Td1449.4629 
																																																																																																																	Put sconst.4603 Ti1442.4624 Td1450.4625
																																																																																																															Let Ti1451.4612
																																																																																																																Int:2
																																																																																																																IfLE m_shape.4604 Ti1451.4612
																																																																																																																	Unit
																																																																																																																	Let cc0.4613
																																																																																																																		Let Td1453.4618
																																																																																																																			Let Ti1452.4623
																																																																																																																				Int:0
																																																																																																																				Get sconst.4603 Ti1452.4623
																																																																																																																			Let Td1455.4619
																																																																																																																				Let Ti1454.4622
																																																																																																																					Int:1
																																																																																																																					Get sconst.4603 Ti1454.4622
																																																																																																																				Let Td1457.4620
																																																																																																																					Let Ti1456.4621
																																																																																																																						Int:2
																																																																																																																						Get sconst.4603 Ti1456.4621
																																																																																																																					App quadratic.2800obj.4602 Td1453.4618 Td1455.4619 Td1457.4620 
																																																																																																																		Let Ti1458.4614
																																																																																																																			Int:3
																																																																																																																			Let Td1461.4615
																																																																																																																				Let Ti1459.4616
																																																																																																																					Int:3
																																																																																																																					IfEq m_shape.4604 Ti1459.4616
																																																																																																																						Let Td1460.4617
																																																																																																																							Float:1.000000
																																																																																																																							FSub cc0.4613 Td1460.4617
																																																																																																																						Var cc0.4613
																																																																																																																				Put sconst.4603 Ti1458.4614 Td1461.4615
																																																																																																													Let Ti1463.4609
																																																																																																														Let Ti1462.4610
																																																																																																															Int:1
																																																																																																															Sub index.2879 Ti1462.4610
																																																																																																														App setup_startp_constants.2877p.2878 Ti1463.4609 
																																																																																																						Unit
																																																																																																				LetRec setup_startp.2880 p.2881 
																																																																																																					Let Tu113.4594
																																																																																																						Let Ta1418.4600
																																																																																																							ExtArray 162
																																																																																																							App veccpy.2649Ta1418.4600 p.2881 
																																																																																																						Let Ti1423.4595
																																																																																																							Let Ti1421.4596
																																																																																																								Let Ta1419.4598
																																																																																																									ExtArray 0
																																																																																																									Let Ti1420.4599
																																																																																																										Int:0
																																																																																																										Get Ta1419.4598 Ti1420.4599
																																																																																																								Let Ti1422.4597
																																																																																																									Int:1
																																																																																																									Sub Ti1421.4596 Ti1422.4597
																																																																																																							App setup_startp_constants.2877p.2881 Ti1423.4595 
																																																																																																					LetRec is_rect_outside.2882 m.2883 p0.2884 p1.2885 p2.2886 
																																																																																																						Let Ti1414.4587
																																																																																																							Let Td1411.4591
																																																																																																								App o_param_a.2695m.2883 
																																																																																																								IfFAbsLE Td1411.4591 p0.2884
																																																																																																									Int:0
																																																																																																									Let Td1412.4592
																																																																																																										App o_param_b.2697m.2883 
																																																																																																										IfFAbsLE Td1412.4592 p1.2885
																																																																																																											Int:0
																																																																																																											Let Td1413.4593
																																																																																																												App o_param_c.2699m.2883 
																																																																																																												IfFAbsLE Td1413.4593 p2.2886
																																																																																																													Int:0
																																																																																																													Int:1
																																																																																																							Let Ti1415.4588
																																																																																																								Int:0
																																																																																																								IfEq Ti1414.4587 Ti1415.4588
																																																																																																									Let Tb1416.4589
																																																																																																										App o_isinvert.2691m.2883 
																																																																																																										Let Ti1417.4590
																																																																																																											Int:0
																																																																																																											IfEq Tb1416.4589 Ti1417.4590
																																																																																																												Int:1
																																																																																																												Int:0
																																																																																																									App o_isinvert.2691m.2883 
																																																																																																						LetRec is_plane_outside.2887 m.2888 p0.2889 p1.2890 p2.2891 
																																																																																																							Let w.4580
																																																																																																								Let Ta1405.4586
																																																																																																									App o_param_abc.2701m.2888 
																																																																																																									App veciprod2.2663Ta1405.4586 p0.2889 p1.2890 p2.2891 
																																																																																																								Let Ti1409.4581
																																																																																																									Let Tb1406.4583
																																																																																																										App o_isinvert.2691m.2888 
																																																																																																										Let Ti1408.4584
																																																																																																											Let Td1407.4585
																																																																																																												Float:0.000000
																																																																																																												IfLE Td1407.4585 w.4580
																																																																																																													Int:0
																																																																																																													Int:1
																																																																																																											xor Tb1406.4583 Ti1408.4584
																																																																																																									Let Ti1410.4582
																																																																																																										Int:0
																																																																																																										IfEq Ti1409.4581 Ti1410.4582
																																																																																																											Int:1
																																																																																																											Int:0
																																																																																																							LetRec is_second_outside.2892 m.2893 p0.2894 p1.2895 p2.2896 
																																																																																																								Let w.4570
																																																																																																									App quadratic.2800m.2893 p0.2894 p1.2895 p2.2896 
																																																																																																									Let w2.4571
																																																																																																										Let Ti1397.4577
																																																																																																											App o_form.2687m.2893 
																																																																																																											Let Ti1398.4578
																																																																																																												Int:3
																																																																																																												IfEq Ti1397.4577 Ti1398.4578
																																																																																																													Let Td1399.4579
																																																																																																														Float:1.000000
																																																																																																														FSub w.4570 Td1399.4579
																																																																																																													Var w.4570
																																																																																																										Let Ti1403.4572
																																																																																																											Let Tb1400.4574
																																																																																																												App o_isinvert.2691m.2893 
																																																																																																												Let Ti1402.4575
																																																																																																													Let Td1401.4576
																																																																																																														Float:0.000000
																																																																																																														IfLE Td1401.4576 w2.4571
																																																																																																															Int:0
																																																																																																															Int:1
																																																																																																													xor Tb1400.4574 Ti1402.4575
																																																																																																											Let Ti1404.4573
																																																																																																												Int:0
																																																																																																												IfEq Ti1403.4572 Ti1404.4573
																																																																																																													Int:1
																																																																																																													Int:0
																																																																																																								LetRec is_outside.2897 m.2898 q0.2899 q1.2900 q2.2901 
																																																																																																									Let p0.4561
																																																																																																										Let Td1392.4569
																																																																																																											App o_param_x.2703m.2898 
																																																																																																											FSub q0.2899 Td1392.4569
																																																																																																										Let p1.4562
																																																																																																											Let Td1393.4568
																																																																																																												App o_param_y.2705m.2898 
																																																																																																												FSub q1.2900 Td1393.4568
																																																																																																											Let p2.4563
																																																																																																												Let Td1394.4567
																																																																																																													App o_param_z.2707m.2898 
																																																																																																													FSub q2.2901 Td1394.4567
																																																																																																												Let m_shape.4564
																																																																																																													App o_form.2687m.2898 
																																																																																																													Let Ti1395.4565
																																																																																																														Int:1
																																																																																																														IfEq m_shape.4564 Ti1395.4565
																																																																																																															App is_rect_outside.2882m.2898 p0.4561 p1.4562 p2.4563 
																																																																																																															Let Ti1396.4566
																																																																																																																Int:2
																																																																																																																IfEq m_shape.4564 Ti1396.4566
																																																																																																																	App is_plane_outside.2887m.2898 p0.4561 p1.4562 p2.4563 
																																																																																																																	App is_second_outside.2892m.2898 p0.4561 p1.4562 p2.4563 
																																																																																																									LetRec check_all_inside.2902 ofs.2903 iand.2904 q0.2905 q1.2906 q2.2907 
																																																																																																										Let head.4552
																																																																																																											Get iand.2904 ofs.2903
																																																																																																											Let Ti1385.4553
																																																																																																												Let Ti1384.4560
																																																																																																													Int:1
																																																																																																													Neg Ti1384.4560
																																																																																																												IfEq head.4552 Ti1385.4553
																																																																																																													Int:1
																																																																																																													Let Tb1388.4554
																																																																																																														Let Tt1387.4558
																																																																																																															Let Ta1386.4559
																																																																																																																ExtArray 12
																																																																																																																Get Ta1386.4559 head.4552
																																																																																																															App is_outside.2897Tt1387.4558 q0.2905 q1.2906 q2.2907 
																																																																																																														Let Ti1389.4555
																																																																																																															Int:0
																																																																																																															IfEq Tb1388.4554 Ti1389.4555
																																																																																																																Let Ti1391.4556
																																																																																																																	Let Ti1390.4557
																																																																																																																		Int:1
																																																																																																																		Add ofs.2903 Ti1390.4557
																																																																																																																	App check_all_inside.2902Ti1391.4556 iand.2904 q0.2905 q1.2906 q2.2907 
																																																																																																																Int:0
																																																																																																										LetRec shadow_check_and_group.2908 iand_ofs.2909 and_group.2910 
																																																																																																											Let Ti1343.4504
																																																																																																												Get and_group.2910 iand_ofs.2909
																																																																																																												Let Ti1345.4505
																																																																																																													Let Ti1344.4551
																																																																																																														Int:1
																																																																																																														Neg Ti1344.4551
																																																																																																													IfEq Ti1343.4504 Ti1345.4505
																																																																																																														Int:0
																																																																																																														Let obj.4506
																																																																																																															Get and_group.2910 iand_ofs.2909
																																																																																																															Let t0.4507
																																																																																																																Let Tt1346.4549
																																																																																																																	ExtTuple 247
																																																																																																																	Let Ta1347.4550
																																																																																																																		ExtArray 138
																																																																																																																		App solver_fast.2842obj.4506 Tt1346.4549 Ta1347.4550 
																																																																																																																Let t0p.4508
																																																																																																																	Let Ta1348.4547
																																																																																																																		ExtArray 135
																																																																																																																		Let Ti1349.4548
																																																																																																																			Int:0
																																																																																																																			Get Ta1348.4547 Ti1349.4548
																																																																																																																	Let Ti1352.4509
																																																																																																																		Let Ti1350.4545
																																																																																																																			Int:0
																																																																																																																			IfEq t0.4507 Ti1350.4545
																																																																																																																				Int:0
																																																																																																																				Let Td1351.4546
																																																																																																																					Float:-0.200000
																																																																																																																					IfLE Td1351.4546 t0p.4508
																																																																																																																						Int:0
																																																																																																																						Int:1
																																																																																																																		Let Ti1353.4510
																																																																																																																			Int:0
																																																																																																																			IfEq Ti1352.4509 Ti1353.4510
																																																																																																																				Let Tb1356.4539
																																																																																																																					Let Tt1355.4543
																																																																																																																						Let Ta1354.4544
																																																																																																																							ExtArray 12
																																																																																																																							Get Ta1354.4544 obj.4506
																																																																																																																						App o_isinvert.2691Tt1355.4543 
																																																																																																																					Let Ti1357.4540
																																																																																																																						Int:0
																																																																																																																						IfEq Tb1356.4539 Ti1357.4540
																																																																																																																							Int:0
																																																																																																																							Let Ti1359.4541
																																																																																																																								Let Ti1358.4542
																																																																																																																									Int:1
																																																																																																																									Add iand_ofs.2909 Ti1358.4542
																																																																																																																								App shadow_check_and_group.2908Ti1359.4541 and_group.2910 
																																																																																																																				Let t.4511
																																																																																																																					Let Td1360.4538
																																																																																																																						Float:0.010000
																																																																																																																						FAdd t0p.4508 Td1360.4538
																																																																																																																					Let q0.4512
																																																																																																																						Let Td1363.4532
																																																																																																																							Let Ta1361.4536
																																																																																																																								ExtArray 78
																																																																																																																								Let Ti1362.4537
																																																																																																																									Int:0
																																																																																																																									Get Ta1361.4536 Ti1362.4537
																																																																																																																							Let Td1366.4533
																																																																																																																								Let Ta1364.4534
																																																																																																																									ExtArray 138
																																																																																																																									Let Ti1365.4535
																																																																																																																										Int:0
																																																																																																																										Get Ta1364.4534 Ti1365.4535
																																																																																																																								FDiv Td1363.4532 t.4511 Td1366.4533
																																																																																																																						Let q1.4513
																																																																																																																							Let Td1369.4526
																																																																																																																								Let Ta1367.4530
																																																																																																																									ExtArray 78
																																																																																																																									Let Ti1368.4531
																																																																																																																										Int:1
																																																																																																																										Get Ta1367.4530 Ti1368.4531
																																																																																																																								Let Td1372.4527
																																																																																																																									Let Ta1370.4528
																																																																																																																										ExtArray 138
																																																																																																																										Let Ti1371.4529
																																																																																																																											Int:1
																																																																																																																											Get Ta1370.4528 Ti1371.4529
																																																																																																																									FDiv Td1369.4526 t.4511 Td1372.4527
																																																																																																																							Let q2.4514
																																																																																																																								Let Td1375.4520
																																																																																																																									Let Ta1373.4524
																																																																																																																										ExtArray 78
																																																																																																																										Let Ti1374.4525
																																																																																																																											Int:2
																																																																																																																											Get Ta1373.4524 Ti1374.4525
																																																																																																																									Let Td1378.4521
																																																																																																																										Let Ta1376.4522
																																																																																																																											ExtArray 138
																																																																																																																											Let Ti1377.4523
																																																																																																																												Int:2
																																																																																																																												Get Ta1376.4522 Ti1377.4523
																																																																																																																										FDiv Td1375.4520 t.4511 Td1378.4521
																																																																																																																								Let Tb1380.4515
																																																																																																																									Let Ti1379.4519
																																																																																																																										Int:0
																																																																																																																										App check_all_inside.2902Ti1379.4519 and_group.2910 q0.4512 q1.4513 q2.4514 
																																																																																																																									Let Ti1381.4516
																																																																																																																										Int:0
																																																																																																																										IfEq Tb1380.4515 Ti1381.4516
																																																																																																																											Let Ti1383.4517
																																																																																																																												Let Ti1382.4518
																																																																																																																													Int:1
																																																																																																																													Add iand_ofs.2909 Ti1382.4518
																																																																																																																												App shadow_check_and_group.2908Ti1383.4517 and_group.2910 
																																																																																																																											Int:1
																																																																																																											LetRec shadow_check_one_or_group.2911 ofs.2912 or_group.2913 
																																																																																																												Let head.4494
																																																																																																													Get or_group.2913 ofs.2912
																																																																																																													Let Ti1337.4495
																																																																																																														Let Ti1336.4503
																																																																																																															Int:1
																																																																																																															Neg Ti1336.4503
																																																																																																														IfEq head.4494 Ti1337.4495
																																																																																																															Int:0
																																																																																																															Let and_group.4496
																																																																																																																Let Ta1338.4502
																																																																																																																	ExtArray 83
																																																																																																																	Get Ta1338.4502 head.4494
																																																																																																																Let shadow_p.4497
																																																																																																																	Let Ti1339.4501
																																																																																																																		Int:0
																																																																																																																		App shadow_check_and_group.2908Ti1339.4501 and_group.4496 
																																																																																																																	Let Ti1340.4498
																																																																																																																		Int:0
																																																																																																																		IfEq shadow_p.4497 Ti1340.4498
																																																																																																																			Let Ti1342.4499
																																																																																																																				Let Ti1341.4500
																																																																																																																					Int:1
																																																																																																																					Add ofs.2912 Ti1341.4500
																																																																																																																				App shadow_check_one_or_group.2911Ti1342.4499 or_group.2913 
																																																																																																																			Int:1
																																																																																																												LetRec shadow_check_one_or_matrix.2914 ofs.2915 or_matrix.2916 
																																																																																																													Let head.4468
																																																																																																														Get or_matrix.2916 ofs.2915
																																																																																																														Let range_primitive.4469
																																																																																																															Let Ti1313.4493
																																																																																																																Int:0
																																																																																																																Get head.4468 Ti1313.4493
																																																																																																															Let Ti1315.4470
																																																																																																																Let Ti1314.4492
																																																																																																																	Int:1
																																																																																																																	Neg Ti1314.4492
																																																																																																																IfEq range_primitive.4469 Ti1315.4470
																																																																																																																	Int:0
																																																																																																																	Let Ti1327.4471
																																																																																																																		Let Ti1316.4480
																																																																																																																			Int:99
																																																																																																																			IfEq range_primitive.4469 Ti1316.4480
																																																																																																																				Int:1
																																																																																																																				Let t.4481
																																																																																																																					Let Tt1317.4490
																																																																																																																						ExtTuple 247
																																																																																																																						Let Ta1318.4491
																																																																																																																							ExtArray 138
																																																																																																																							App solver_fast.2842range_primitive.4469 Tt1317.4490 Ta1318.4491 
																																																																																																																					Let Ti1319.4482
																																																																																																																						Int:0
																																																																																																																						IfEq t.4481 Ti1319.4482
																																																																																																																							Int:0
																																																																																																																							Let Td1320.4483
																																																																																																																								Float:-0.100000
																																																																																																																								Let Td1323.4484
																																																																																																																									Let Ta1321.4488
																																																																																																																										ExtArray 135
																																																																																																																										Let Ti1322.4489
																																																																																																																											Int:0
																																																																																																																											Get Ta1321.4488 Ti1322.4489
																																																																																																																									IfLE Td1320.4483 Td1323.4484
																																																																																																																										Int:0
																																																																																																																										Let Tb1325.4485
																																																																																																																											Let Ti1324.4487
																																																																																																																												Int:1
																																																																																																																												App shadow_check_one_or_group.2911Ti1324.4487 head.4468 
																																																																																																																											Let Ti1326.4486
																																																																																																																												Int:0
																																																																																																																												IfEq Tb1325.4485 Ti1326.4486
																																																																																																																													Int:0
																																																																																																																													Int:1
																																																																																																																		Let Ti1328.4472
																																																																																																																			Int:0
																																																																																																																			IfEq Ti1327.4471 Ti1328.4472
																																																																																																																				Let Ti1330.4478
																																																																																																																					Let Ti1329.4479
																																																																																																																						Int:1
																																																																																																																						Add ofs.2915 Ti1329.4479
																																																																																																																					App shadow_check_one_or_matrix.2914Ti1330.4478 or_matrix.2916 
																																																																																																																				Let Tb1332.4473
																																																																																																																					Let Ti1331.4477
																																																																																																																						Int:1
																																																																																																																						App shadow_check_one_or_group.2911Ti1331.4477 head.4468 
																																																																																																																					Let Ti1333.4474
																																																																																																																						Int:0
																																																																																																																						IfEq Tb1332.4473 Ti1333.4474
																																																																																																																							Let Ti1335.4475
																																																																																																																								Let Ti1334.4476
																																																																																																																									Int:1
																																																																																																																									Add ofs.2915 Ti1334.4476
																																																																																																																								App shadow_check_one_or_matrix.2914Ti1335.4475 or_matrix.2916 
																																																																																																																							Int:1
																																																																																																													LetRec solve_each_element.2917 iand_ofs.2918 and_group.2919 dirvec.2920 
																																																																																																														Let iobj.4413
																																																																																																															Get and_group.2919 iand_ofs.2918
																																																																																																															Let Ti1270.4414
																																																																																																																Let Ti1269.4467
																																																																																																																	Int:1
																																																																																																																	Neg Ti1269.4467
																																																																																																																IfEq iobj.4413 Ti1270.4414
																																																																																																																	Unit
																																																																																																																	Let t0.4415
																																																																																																																		Let Ta1271.4466
																																																																																																																			ExtArray 159
																																																																																																																			App solver.2819iobj.4413 dirvec.2920 Ta1271.4466 
																																																																																																																		Let Ti1272.4416
																																																																																																																			Int:0
																																																																																																																			IfEq t0.4415 Ti1272.4416
																																																																																																																				Let Tb1275.4460
																																																																																																																					Let Tt1274.4464
																																																																																																																						Let Ta1273.4465
																																																																																																																							ExtArray 12
																																																																																																																							Get Ta1273.4465 iobj.4413
																																																																																																																						App o_isinvert.2691Tt1274.4464 
																																																																																																																					Let Ti1276.4461
																																																																																																																						Int:0
																																																																																																																						IfEq Tb1275.4460 Ti1276.4461
																																																																																																																							Unit
																																																																																																																							Let Ti1278.4462
																																																																																																																								Let Ti1277.4463
																																																																																																																									Int:1
																																																																																																																									Add iand_ofs.2918 Ti1277.4463
																																																																																																																								App solve_each_element.2917Ti1278.4462 and_group.2919 dirvec.2920 
																																																																																																																				Let t0p.4417
																																																																																																																					Let Ta1279.4458
																																																																																																																						ExtArray 135
																																																																																																																						Let Ti1280.4459
																																																																																																																							Int:0
																																																																																																																							Get Ta1279.4458 Ti1280.4459
																																																																																																																					Let Tu117.4418
																																																																																																																						Let Td1281.4421
																																																																																																																							Float:0.000000
																																																																																																																							IfLE t0p.4417 Td1281.4421
																																																																																																																								Unit
																																																																																																																								Let Td1284.4422
																																																																																																																									Let Ta1282.4456
																																																																																																																										ExtArray 137
																																																																																																																										Let Ti1283.4457
																																																																																																																											Int:0
																																																																																																																											Get Ta1282.4456 Ti1283.4457
																																																																																																																									IfLE Td1284.4422 t0p.4417
																																																																																																																										Unit
																																																																																																																										Let t.4423
																																																																																																																											Let Td1285.4455
																																																																																																																												Float:0.010000
																																																																																																																												FAdd t0p.4417 Td1285.4455
																																																																																																																											Let q0.4424
																																																																																																																												Let Td1287.4450
																																																																																																																													Let Ti1286.4454
																																																																																																																														Int:0
																																																																																																																														Get dirvec.2920 Ti1286.4454
																																																																																																																													Let Td1290.4451
																																																																																																																														Let Ta1288.4452
																																																																																																																															ExtArray 159
																																																																																																																															Let Ti1289.4453
																																																																																																																																Int:0
																																																																																																																																Get Ta1288.4452 Ti1289.4453
																																																																																																																														FDiv Td1287.4450 t.4423 Td1290.4451
																																																																																																																												Let q1.4425
																																																																																																																													Let Td1292.4445
																																																																																																																														Let Ti1291.4449
																																																																																																																															Int:1
																																																																																																																															Get dirvec.2920 Ti1291.4449
																																																																																																																														Let Td1295.4446
																																																																																																																															Let Ta1293.4447
																																																																																																																																ExtArray 159
																																																																																																																																Let Ti1294.4448
																																																																																																																																	Int:1
																																																																																																																																	Get Ta1293.4447 Ti1294.4448
																																																																																																																															FDiv Td1292.4445 t.4423 Td1295.4446
																																																																																																																													Let q2.4426
																																																																																																																														Let Td1297.4440
																																																																																																																															Let Ti1296.4444
																																																																																																																																Int:2
																																																																																																																																Get dirvec.2920 Ti1296.4444
																																																																																																																															Let Td1300.4441
																																																																																																																																Let Ta1298.4442
																																																																																																																																	ExtArray 159
																																																																																																																																	Let Ti1299.4443
																																																																																																																																		Int:2
																																																																																																																																		Get Ta1298.4442 Ti1299.4443
																																																																																																																																FDiv Td1297.4440 t.4423 Td1300.4441
																																																																																																																														Let Tb1302.4427
																																																																																																																															Let Ti1301.4439
																																																																																																																																Int:0
																																																																																																																																App check_all_inside.2902Ti1301.4439 and_group.2919 q0.4424 q1.4425 q2.4426 
																																																																																																																															Let Ti1303.4428
																																																																																																																																Int:0
																																																																																																																																IfEq Tb1302.4427 Ti1303.4428
																																																																																																																																	Unit
																																																																																																																																	Let Tu116.4429
																																																																																																																																		Let Ta1304.4437
																																																																																																																																			ExtArray 137
																																																																																																																																			Let Ti1305.4438
																																																																																																																																				Int:0
																																																																																																																																				Put Ta1304.4437 Ti1305.4438 t.4423
																																																																																																																																		Let Tu115.4430
																																																																																																																																			Let Ta1306.4436
																																																																																																																																				ExtArray 138
																																																																																																																																				App vecset.2639Ta1306.4436 q0.4424 q1.4425 q2.4426 
																																																																																																																																			Let Tu114.4431
																																																																																																																																				Let Ta1307.4434
																																																																																																																																					ExtArray 141
																																																																																																																																					Let Ti1308.4435
																																																																																																																																						Int:0
																																																																																																																																						Put Ta1307.4434 Ti1308.4435 iobj.4413
																																																																																																																																				Let Ta1309.4432
																																																																																																																																					ExtArray 136
																																																																																																																																					Let Ti1310.4433
																																																																																																																																						Int:0
																																																																																																																																						Put Ta1309.4432 Ti1310.4433 t0.4415
																																																																																																																						Let Ti1312.4419
																																																																																																																							Let Ti1311.4420
																																																																																																																								Int:1
																																																																																																																								Add iand_ofs.2918 Ti1311.4420
																																																																																																																							App solve_each_element.2917Ti1312.4419 and_group.2919 dirvec.2920 
																																																																																																														LetRec solve_one_or_network.2921 ofs.2922 or_group.2923 dirvec.2924 
																																																																																																															Let head.4404
																																																																																																																Get or_group.2923 ofs.2922
																																																																																																																Let Ti1264.4405
																																																																																																																	Let Ti1263.4412
																																																																																																																		Int:1
																																																																																																																		Neg Ti1263.4412
																																																																																																																	IfEq head.4404 Ti1264.4405
																																																																																																																		Unit
																																																																																																																		Let and_group.4406
																																																																																																																			Let Ta1265.4411
																																																																																																																				ExtArray 83
																																																																																																																				Get Ta1265.4411 head.4404
																																																																																																																			Let Tu118.4407
																																																																																																																				Let Ti1266.4410
																																																																																																																					Int:0
																																																																																																																					App solve_each_element.2917Ti1266.4410 and_group.4406 dirvec.2924 
																																																																																																																				Let Ti1268.4408
																																																																																																																					Let Ti1267.4409
																																																																																																																						Int:1
																																																																																																																						Add ofs.2922 Ti1267.4409
																																																																																																																					App solve_one_or_network.2921Ti1268.4408 or_group.2923 dirvec.2924 
																																																																																																															LetRec trace_or_matrix.2925 ofs.2926 or_network.2927 dirvec.2928 
																																																																																																																Let head.4384
																																																																																																																	Get or_network.2927 ofs.2926
																																																																																																																	Let range_primitive.4385
																																																																																																																		Let Ti1248.4403
																																																																																																																			Int:0
																																																																																																																			Get head.4384 Ti1248.4403
																																																																																																																		Let Ti1250.4386
																																																																																																																			Let Ti1249.4402
																																																																																																																				Int:1
																																																																																																																				Neg Ti1249.4402
																																																																																																																			IfEq range_primitive.4385 Ti1250.4386
																																																																																																																				Unit
																																																																																																																				Let Tu119.4387
																																																																																																																					Let Ti1251.4390
																																																																																																																						Int:99
																																																																																																																						IfEq range_primitive.4385 Ti1251.4390
																																																																																																																							Let Ti1252.4401
																																																																																																																								Int:1
																																																																																																																								App solve_one_or_network.2921Ti1252.4401 head.4384 dirvec.2928 
																																																																																																																							Let t.4391
																																																																																																																								Let Ta1253.4400
																																																																																																																									ExtArray 159
																																																																																																																									App solver.2819range_primitive.4385 dirvec.2928 Ta1253.4400 
																																																																																																																								Let Ti1254.4392
																																																																																																																									Int:0
																																																																																																																									IfEq t.4391 Ti1254.4392
																																																																																																																										Unit
																																																																																																																										Let tp.4393
																																																																																																																											Let Ta1255.4398
																																																																																																																												ExtArray 135
																																																																																																																												Let Ti1256.4399
																																																																																																																													Int:0
																																																																																																																													Get Ta1255.4398 Ti1256.4399
																																																																																																																											Let Td1259.4394
																																																																																																																												Let Ta1257.4396
																																																																																																																													ExtArray 137
																																																																																																																													Let Ti1258.4397
																																																																																																																														Int:0
																																																																																																																														Get Ta1257.4396 Ti1258.4397
																																																																																																																												IfLE Td1259.4394 tp.4393
																																																																																																																													Unit
																																																																																																																													Let Ti1260.4395
																																																																																																																														Int:1
																																																																																																																														App solve_one_or_network.2921Ti1260.4395 head.4384 dirvec.2928 
																																																																																																																					Let Ti1262.4388
																																																																																																																						Let Ti1261.4389
																																																																																																																							Int:1
																																																																																																																							Add ofs.2926 Ti1261.4389
																																																																																																																						App trace_or_matrix.2925Ti1262.4388 or_network.2927 dirvec.2928 
																																																																																																																LetRec judge_intersection.2929 dirvec.2930 
																																																																																																																	Let Tu121.4370
																																																																																																																		Let Ta1237.4381
																																																																																																																			ExtArray 137
																																																																																																																			Let Ti1238.4382
																																																																																																																				Int:0
																																																																																																																				Let Td1239.4383
																																																																																																																					Float:1000000000.000000
																																																																																																																					Put Ta1237.4381 Ti1238.4382 Td1239.4383
																																																																																																																		Let Tu120.4371
																																																																																																																			Let Ti1240.4377
																																																																																																																				Int:0
																																																																																																																				Let Ta1243.4378
																																																																																																																					Let Ta1241.4379
																																																																																																																						ExtArray 134
																																																																																																																						Let Ti1242.4380
																																																																																																																							Int:0
																																																																																																																							Get Ta1241.4379 Ti1242.4380
																																																																																																																					App trace_or_matrix.2925Ti1240.4377 Ta1243.4378 dirvec.2930 
																																																																																																																			Let t.4372
																																																																																																																				Let Ta1244.4375
																																																																																																																					ExtArray 137
																																																																																																																					Let Ti1245.4376
																																																																																																																						Int:0
																																																																																																																						Get Ta1244.4375 Ti1245.4376
																																																																																																																				Let Td1246.4373
																																																																																																																					Float:-0.100000
																																																																																																																					IfLE t.4372 Td1246.4373
																																																																																																																						Int:0
																																																																																																																						Let Td1247.4374
																																																																																																																							Float:100000000.000000
																																																																																																																							IfLE Td1247.4374 t.4372
																																																																																																																								Int:0
																																																																																																																								Int:1
																																																																																																																	LetRec solve_each_element_fast.2931 iand_ofs.2932 and_group.2933 dirvec.2934 
																																																																																																																		Let vec.4315
																																																																																																																			App d_vec.2746dirvec.2934 
																																																																																																																			Let iobj.4316
																																																																																																																				Get and_group.2933 iand_ofs.2932
																																																																																																																				Let Ti1195.4317
																																																																																																																					Let Ti1194.4369
																																																																																																																						Int:1
																																																																																																																						Neg Ti1194.4369
																																																																																																																					IfEq iobj.4316 Ti1195.4317
																																																																																																																						Unit
																																																																																																																						Let t0.4318
																																																																																																																							App solver_fast2.2860iobj.4316 dirvec.2934 
																																																																																																																							Let Ti1196.4319
																																																																																																																								Int:0
																																																																																																																								IfEq t0.4318 Ti1196.4319
																																																																																																																									Let Tb1199.4363
																																																																																																																										Let Tt1198.4367
																																																																																																																											Let Ta1197.4368
																																																																																																																												ExtArray 12
																																																																																																																												Get Ta1197.4368 iobj.4316
																																																																																																																											App o_isinvert.2691Tt1198.4367 
																																																																																																																										Let Ti1200.4364
																																																																																																																											Int:0
																																																																																																																											IfEq Tb1199.4363 Ti1200.4364
																																																																																																																												Unit
																																																																																																																												Let Ti1202.4365
																																																																																																																													Let Ti1201.4366
																																																																																																																														Int:1
																																																																																																																														Add iand_ofs.2932 Ti1201.4366
																																																																																																																													App solve_each_element_fast.2931Ti1202.4365 and_group.2933 dirvec.2934 
																																																																																																																									Let t0p.4320
																																																																																																																										Let Ta1203.4361
																																																																																																																											ExtArray 135
																																																																																																																											Let Ti1204.4362
																																																																																																																												Int:0
																																																																																																																												Get Ta1203.4361 Ti1204.4362
																																																																																																																										Let Tu125.4321
																																																																																																																											Let Td1205.4324
																																																																																																																												Float:0.000000
																																																																																																																												IfLE t0p.4320 Td1205.4324
																																																																																																																													Unit
																																																																																																																													Let Td1208.4325
																																																																																																																														Let Ta1206.4359
																																																																																																																															ExtArray 137
																																																																																																																															Let Ti1207.4360
																																																																																																																																Int:0
																																																																																																																																Get Ta1206.4359 Ti1207.4360
																																																																																																																														IfLE Td1208.4325 t0p.4320
																																																																																																																															Unit
																																																																																																																															Let t.4326
																																																																																																																																Let Td1209.4358
																																																																																																																																	Float:0.010000
																																																																																																																																	FAdd t0p.4320 Td1209.4358
																																																																																																																																Let q0.4327
																																																																																																																																	Let Td1211.4353
																																																																																																																																		Let Ti1210.4357
																																																																																																																																			Int:0
																																																																																																																																			Get vec.4315 Ti1210.4357
																																																																																																																																		Let Td1214.4354
																																																																																																																																			Let Ta1212.4355
																																																																																																																																				ExtArray 162
																																																																																																																																				Let Ti1213.4356
																																																																																																																																					Int:0
																																																																																																																																					Get Ta1212.4355 Ti1213.4356
																																																																																																																																			FDiv Td1211.4353 t.4326 Td1214.4354
																																																																																																																																	Let q1.4328
																																																																																																																																		Let Td1216.4348
																																																																																																																																			Let Ti1215.4352
																																																																																																																																				Int:1
																																																																																																																																				Get vec.4315 Ti1215.4352
																																																																																																																																			Let Td1219.4349
																																																																																																																																				Let Ta1217.4350
																																																																																																																																					ExtArray 162
																																																																																																																																					Let Ti1218.4351
																																																																																																																																						Int:1
																																																																																																																																						Get Ta1217.4350 Ti1218.4351
																																																																																																																																				FDiv Td1216.4348 t.4326 Td1219.4349
																																																																																																																																		Let q2.4329
																																																																																																																																			Let Td1221.4343
																																																																																																																																				Let Ti1220.4347
																																																																																																																																					Int:2
																																																																																																																																					Get vec.4315 Ti1220.4347
																																																																																																																																				Let Td1224.4344
																																																																																																																																					Let Ta1222.4345
																																																																																																																																						ExtArray 162
																																																																																																																																						Let Ti1223.4346
																																																																																																																																							Int:2
																																																																																																																																							Get Ta1222.4345 Ti1223.4346
																																																																																																																																					FDiv Td1221.4343 t.4326 Td1224.4344
																																																																																																																																			Let Tb1226.4330
																																																																																																																																				Let Ti1225.4342
																																																																																																																																					Int:0
																																																																																																																																					App check_all_inside.2902Ti1225.4342 and_group.2933 q0.4327 q1.4328 q2.4329 
																																																																																																																																				Let Ti1227.4331
																																																																																																																																					Int:0
																																																																																																																																					IfEq Tb1226.4330 Ti1227.4331
																																																																																																																																						Unit
																																																																																																																																						Let Tu124.4332
																																																																																																																																							Let Ta1228.4340
																																																																																																																																								ExtArray 137
																																																																																																																																								Let Ti1229.4341
																																																																																																																																									Int:0
																																																																																																																																									Put Ta1228.4340 Ti1229.4341 t.4326
																																																																																																																																							Let Tu123.4333
																																																																																																																																								Let Ta1230.4339
																																																																																																																																									ExtArray 138
																																																																																																																																									App vecset.2639Ta1230.4339 q0.4327 q1.4328 q2.4329 
																																																																																																																																								Let Tu122.4334
																																																																																																																																									Let Ta1231.4337
																																																																																																																																										ExtArray 141
																																																																																																																																										Let Ti1232.4338
																																																																																																																																											Int:0
																																																																																																																																											Put Ta1231.4337 Ti1232.4338 iobj.4316
																																																																																																																																									Let Ta1233.4335
																																																																																																																																										ExtArray 136
																																																																																																																																										Let Ti1234.4336
																																																																																																																																											Int:0
																																																																																																																																											Put Ta1233.4335 Ti1234.4336 t0.4318
																																																																																																																											Let Ti1236.4322
																																																																																																																												Let Ti1235.4323
																																																																																																																													Int:1
																																																																																																																													Add iand_ofs.2932 Ti1235.4323
																																																																																																																												App solve_each_element_fast.2931Ti1236.4322 and_group.2933 dirvec.2934 
																																																																																																																		LetRec solve_one_or_network_fast.2935 ofs.2936 or_group.2937 dirvec.2938 
																																																																																																																			Let head.4306
																																																																																																																				Get or_group.2937 ofs.2936
																																																																																																																				Let Ti1189.4307
																																																																																																																					Let Ti1188.4314
																																																																																																																						Int:1
																																																																																																																						Neg Ti1188.4314
																																																																																																																					IfEq head.4306 Ti1189.4307
																																																																																																																						Unit
																																																																																																																						Let and_group.4308
																																																																																																																							Let Ta1190.4313
																																																																																																																								ExtArray 83
																																																																																																																								Get Ta1190.4313 head.4306
																																																																																																																							Let Tu126.4309
																																																																																																																								Let Ti1191.4312
																																																																																																																									Int:0
																																																																																																																									App solve_each_element_fast.2931Ti1191.4312 and_group.4308 dirvec.2938 
																																																																																																																								Let Ti1193.4310
																																																																																																																									Let Ti1192.4311
																																																																																																																										Int:1
																																																																																																																										Add ofs.2936 Ti1192.4311
																																																																																																																									App solve_one_or_network_fast.2935Ti1193.4310 or_group.2937 dirvec.2938 
																																																																																																																			LetRec trace_or_matrix_fast.2939 ofs.2940 or_network.2941 dirvec.2942 
																																																																																																																				Let head.4287
																																																																																																																					Get or_network.2941 ofs.2940
																																																																																																																					Let range_primitive.4288
																																																																																																																						Let Ti1174.4305
																																																																																																																							Int:0
																																																																																																																							Get head.4287 Ti1174.4305
																																																																																																																						Let Ti1176.4289
																																																																																																																							Let Ti1175.4304
																																																																																																																								Int:1
																																																																																																																								Neg Ti1175.4304
																																																																																																																							IfEq range_primitive.4288 Ti1176.4289
																																																																																																																								Unit
																																																																																																																								Let Tu127.4290
																																																																																																																									Let Ti1177.4293
																																																																																																																										Int:99
																																																																																																																										IfEq range_primitive.4288 Ti1177.4293
																																																																																																																											Let Ti1178.4303
																																																																																																																												Int:1
																																																																																																																												App solve_one_or_network_fast.2935Ti1178.4303 head.4287 dirvec.2942 
																																																																																																																											Let t.4294
																																																																																																																												App solver_fast2.2860range_primitive.4288 dirvec.2942 
																																																																																																																												Let Ti1179.4295
																																																																																																																													Int:0
																																																																																																																													IfEq t.4294 Ti1179.4295
																																																																																																																														Unit
																																																																																																																														Let tp.4296
																																																																																																																															Let Ta1180.4301
																																																																																																																																ExtArray 135
																																																																																																																																Let Ti1181.4302
																																																																																																																																	Int:0
																																																																																																																																	Get Ta1180.4301 Ti1181.4302
																																																																																																																															Let Td1184.4297
																																																																																																																																Let Ta1182.4299
																																																																																																																																	ExtArray 137
																																																																																																																																	Let Ti1183.4300
																																																																																																																																		Int:0
																																																																																																																																		Get Ta1182.4299 Ti1183.4300
																																																																																																																																IfLE Td1184.4297 tp.4296
																																																																																																																																	Unit
																																																																																																																																	Let Ti1185.4298
																																																																																																																																		Int:1
																																																																																																																																		App solve_one_or_network_fast.2935Ti1185.4298 head.4287 dirvec.2942 
																																																																																																																									Let Ti1187.4291
																																																																																																																										Let Ti1186.4292
																																																																																																																											Int:1
																																																																																																																											Add ofs.2940 Ti1186.4292
																																																																																																																										App trace_or_matrix_fast.2939Ti1187.4291 or_network.2941 dirvec.2942 
																																																																																																																				LetRec judge_intersection_fast.2943 dirvec.2944 
																																																																																																																					Let Tu129.4273
																																																																																																																						Let Ta1163.4284
																																																																																																																							ExtArray 137
																																																																																																																							Let Ti1164.4285
																																																																																																																								Int:0
																																																																																																																								Let Td1165.4286
																																																																																																																									Float:1000000000.000000
																																																																																																																									Put Ta1163.4284 Ti1164.4285 Td1165.4286
																																																																																																																						Let Tu128.4274
																																																																																																																							Let Ti1166.4280
																																																																																																																								Int:0
																																																																																																																								Let Ta1169.4281
																																																																																																																									Let Ta1167.4282
																																																																																																																										ExtArray 134
																																																																																																																										Let Ti1168.4283
																																																																																																																											Int:0
																																																																																																																											Get Ta1167.4282 Ti1168.4283
																																																																																																																									App trace_or_matrix_fast.2939Ti1166.4280 Ta1169.4281 dirvec.2944 
																																																																																																																							Let t.4275
																																																																																																																								Let Ta1170.4278
																																																																																																																									ExtArray 137
																																																																																																																									Let Ti1171.4279
																																																																																																																										Int:0
																																																																																																																										Get Ta1170.4278 Ti1171.4279
																																																																																																																								Let Td1172.4276
																																																																																																																									Float:-0.100000
																																																																																																																									IfLE t.4275 Td1172.4276
																																																																																																																										Int:0
																																																																																																																										Let Td1173.4277
																																																																																																																											Float:100000000.000000
																																																																																																																											IfLE Td1173.4277 t.4275
																																																																																																																												Int:0
																																																																																																																												Int:1
																																																																																																																					LetRec get_nvector_rect.2945 dirvec.2946 
																																																																																																																						Let rectside.4260
																																																																																																																							Let Ta1152.4271
																																																																																																																								ExtArray 136
																																																																																																																								Let Ti1153.4272
																																																																																																																									Int:0
																																																																																																																									Get Ta1152.4271 Ti1153.4272
																																																																																																																							Let Tu130.4261
																																																																																																																								Let Ta1154.4270
																																																																																																																									ExtArray 142
																																																																																																																									App vecbzero.2647Ta1154.4270 
																																																																																																																								Let Ta1155.4262
																																																																																																																									ExtArray 142
																																																																																																																									Let Ti1157.4263
																																																																																																																										Let Ti1156.4269
																																																																																																																											Int:1
																																																																																																																											Sub rectside.4260 Ti1156.4269
																																																																																																																										Let Td1162.4264
																																																																																																																											Let Td1161.4265
																																																																																																																												Let Td1160.4266
																																																																																																																													Let Ti1159.4267
																																																																																																																														Let Ti1158.4268
																																																																																																																															Int:1
																																																																																																																															Sub rectside.4260 Ti1158.4268
																																																																																																																														Get dirvec.2946 Ti1159.4267
																																																																																																																													App sgn.2631Td1160.4266 
																																																																																																																												App fneg.2594Td1161.4265 
																																																																																																																											Put Ta1155.4262 Ti1157.4263 Td1162.4264
																																																																																																																						LetRec get_nvector_plane.2947 m.2948 
																																																																																																																							Let Tu132.4246
																																																																																																																								Let Ta1140.4256
																																																																																																																									ExtArray 142
																																																																																																																									Let Ti1141.4257
																																																																																																																										Int:0
																																																																																																																										Let Td1143.4258
																																																																																																																											Let Td1142.4259
																																																																																																																												App o_param_a.2695m.2948 
																																																																																																																												App fneg.2594Td1142.4259 
																																																																																																																											Put Ta1140.4256 Ti1141.4257 Td1143.4258
																																																																																																																								Let Tu131.4247
																																																																																																																									Let Ta1144.4252
																																																																																																																										ExtArray 142
																																																																																																																										Let Ti1145.4253
																																																																																																																											Int:1
																																																																																																																											Let Td1147.4254
																																																																																																																												Let Td1146.4255
																																																																																																																													App o_param_b.2697m.2948 
																																																																																																																													App fneg.2594Td1146.4255 
																																																																																																																												Put Ta1144.4252 Ti1145.4253 Td1147.4254
																																																																																																																									Let Ta1148.4248
																																																																																																																										ExtArray 142
																																																																																																																										Let Ti1149.4249
																																																																																																																											Int:2
																																																																																																																											Let Td1151.4250
																																																																																																																												Let Td1150.4251
																																																																																																																													App o_param_c.2699m.2948 
																																																																																																																													App fneg.2594Td1150.4251 
																																																																																																																												Put Ta1148.4248 Ti1149.4249 Td1151.4250
																																																																																																																							LetRec get_nvector_second.2949 m.2950 
																																																																																																																								Let p0.4186
																																																																																																																									Let Td1093.4242
																																																																																																																										Let Ta1091.4244
																																																																																																																											ExtArray 138
																																																																																																																											Let Ti1092.4245
																																																																																																																												Int:0
																																																																																																																												Get Ta1091.4244 Ti1092.4245
																																																																																																																										Let Td1094.4243
																																																																																																																											App o_param_x.2703m.2950 
																																																																																																																											FSub Td1093.4242 Td1094.4243
																																																																																																																									Let p1.4187
																																																																																																																										Let Td1097.4238
																																																																																																																											Let Ta1095.4240
																																																																																																																												ExtArray 138
																																																																																																																												Let Ti1096.4241
																																																																																																																													Int:1
																																																																																																																													Get Ta1095.4240 Ti1096.4241
																																																																																																																											Let Td1098.4239
																																																																																																																												App o_param_y.2705m.2950 
																																																																																																																												FSub Td1097.4238 Td1098.4239
																																																																																																																										Let p2.4188
																																																																																																																											Let Td1101.4234
																																																																																																																												Let Ta1099.4236
																																																																																																																													ExtArray 138
																																																																																																																													Let Ti1100.4237
																																																																																																																														Int:2
																																																																																																																														Get Ta1099.4236 Ti1100.4237
																																																																																																																												Let Td1102.4235
																																																																																																																													App o_param_z.2707m.2950 
																																																																																																																													FSub Td1101.4234 Td1102.4235
																																																																																																																											Let d0.4189
																																																																																																																												Let Td1103.4233
																																																																																																																													App o_param_a.2695m.2950 
																																																																																																																													FMul p0.4186 Td1103.4233
																																																																																																																												Let d1.4190
																																																																																																																													Let Td1104.4232
																																																																																																																														App o_param_b.2697m.2950 
																																																																																																																														FMul p1.4187 Td1104.4232
																																																																																																																													Let d2.4191
																																																																																																																														Let Td1105.4231
																																																																																																																															App o_param_c.2699m.2950 
																																																																																																																															FMul p2.4188 Td1105.4231
																																																																																																																														Let Tu137.4192
																																																																																																																															Let Ti1106.4195
																																																																																																																																App o_isrot.2693m.2950 
																																																																																																																																Let Ti1107.4196
																																																																																																																																	Int:0
																																																																																																																																	IfEq Ti1106.4195 Ti1107.4196
																																																																																																																																		Let Tu134.4223
																																																																																																																																			Let Ta1108.4229
																																																																																																																																				ExtArray 142
																																																																																																																																				Let Ti1109.4230
																																																																																																																																					Int:0
																																																																																																																																					Put Ta1108.4229 Ti1109.4230 d0.4189
																																																																																																																																			Let Tu133.4224
																																																																																																																																				Let Ta1110.4227
																																																																																																																																					ExtArray 142
																																																																																																																																					Let Ti1111.4228
																																																																																																																																						Int:1
																																																																																																																																						Put Ta1110.4227 Ti1111.4228 d1.4190
																																																																																																																																				Let Ta1112.4225
																																																																																																																																					ExtArray 142
																																																																																																																																					Let Ti1113.4226
																																																																																																																																						Int:2
																																																																																																																																						Put Ta1112.4225 Ti1113.4226 d2.4191
																																																																																																																																		Let Tu136.4197
																																																																																																																																			Let Ta1114.4215
																																																																																																																																				ExtArray 142
																																																																																																																																				Let Ti1115.4216
																																																																																																																																					Int:0
																																																																																																																																					Let Td1121.4217
																																																																																																																																						Let Td1120.4218
																																																																																																																																							Let Td1119.4219
																																																																																																																																								Let Td1116.4220
																																																																																																																																									App o_param_r3.2723m.2950 
																																																																																																																																									Let Td1118.4221
																																																																																																																																										Let Td1117.4222
																																																																																																																																											App o_param_r2.2721m.2950 
																																																																																																																																											FMul p2.4188 Td1117.4222
																																																																																																																																										FDiv p1.4187 Td1116.4220 Td1118.4221
																																																																																																																																								App fhalf.2596Td1119.4219 
																																																																																																																																							FAdd d0.4189 Td1120.4218
																																																																																																																																						Put Ta1114.4215 Ti1115.4216 Td1121.4217
																																																																																																																																			Let Tu135.4198
																																																																																																																																				Let Ta1122.4207
																																																																																																																																					ExtArray 142
																																																																																																																																					Let Ti1123.4208
																																																																																																																																						Int:1
																																																																																																																																						Let Td1129.4209
																																																																																																																																							Let Td1128.4210
																																																																																																																																								Let Td1127.4211
																																																																																																																																									Let Td1124.4212
																																																																																																																																										App o_param_r3.2723m.2950 
																																																																																																																																										Let Td1126.4213
																																																																																																																																											Let Td1125.4214
																																																																																																																																												App o_param_r1.2719m.2950 
																																																																																																																																												FMul p2.4188 Td1125.4214
																																																																																																																																											FDiv p0.4186 Td1124.4212 Td1126.4213
																																																																																																																																									App fhalf.2596Td1127.4211 
																																																																																																																																								FAdd d1.4190 Td1128.4210
																																																																																																																																							Put Ta1122.4207 Ti1123.4208 Td1129.4209
																																																																																																																																				Let Ta1130.4199
																																																																																																																																					ExtArray 142
																																																																																																																																					Let Ti1131.4200
																																																																																																																																						Int:2
																																																																																																																																						Let Td1137.4201
																																																																																																																																							Let Td1136.4202
																																																																																																																																								Let Td1135.4203
																																																																																																																																									Let Td1132.4204
																																																																																																																																										App o_param_r2.2721m.2950 
																																																																																																																																										Let Td1134.4205
																																																																																																																																											Let Td1133.4206
																																																																																																																																												App o_param_r1.2719m.2950 
																																																																																																																																												FMul p1.4187 Td1133.4206
																																																																																																																																											FDiv p0.4186 Td1132.4204 Td1134.4205
																																																																																																																																									App fhalf.2596Td1135.4203 
																																																																																																																																								FAdd d2.4191 Td1136.4202
																																																																																																																																							Put Ta1130.4199 Ti1131.4200 Td1137.4201
																																																																																																																															Let Ta1138.4193
																																																																																																																																ExtArray 142
																																																																																																																																Let Tb1139.4194
																																																																																																																																	App o_isinvert.2691m.2950 
																																																																																																																																	App vecunit_sgn.2657Ta1138.4193 Tb1139.4194 
																																																																																																																								LetRec get_nvector.2951 m.2952 dirvec.2953 
																																																																																																																									Let m_shape.4183
																																																																																																																										App o_form.2687m.2952 
																																																																																																																										Let Ti1089.4184
																																																																																																																											Int:1
																																																																																																																											IfEq m_shape.4183 Ti1089.4184
																																																																																																																												App get_nvector_rect.2945dirvec.2953 
																																																																																																																												Let Ti1090.4185
																																																																																																																													Int:2
																																																																																																																													IfEq m_shape.4183 Ti1090.4185
																																																																																																																														App get_nvector_plane.2947m.2952 
																																																																																																																														App get_nvector_second.2949m.2952 
																																																																																																																									LetRec utexture.2954 m.2955 p.2956 
																																																																																																																										Let m_tex.4027
																																																																																																																											App o_texturetype.2685m.2955 
																																																																																																																											Let Tu142.4028
																																																																																																																												Let Ta963.4180
																																																																																																																													ExtArray 145
																																																																																																																													Let Ti964.4181
																																																																																																																														Int:0
																																																																																																																														Let Td965.4182
																																																																																																																															App o_color_red.2713m.2955 
																																																																																																																															Put Ta963.4180 Ti964.4181 Td965.4182
																																																																																																																												Let Tu141.4029
																																																																																																																													Let Ta966.4177
																																																																																																																														ExtArray 145
																																																																																																																														Let Ti967.4178
																																																																																																																															Int:1
																																																																																																																															Let Td968.4179
																																																																																																																																App o_color_green.2715m.2955 
																																																																																																																																Put Ta966.4177 Ti967.4178 Td968.4179
																																																																																																																													Let Tu140.4030
																																																																																																																														Let Ta969.4174
																																																																																																																															ExtArray 145
																																																																																																																															Let Ti970.4175
																																																																																																																																Int:2
																																																																																																																																Let Td971.4176
																																																																																																																																	App o_color_blue.2717m.2955 
																																																																																																																																	Put Ta969.4174 Ti970.4175 Td971.4176
																																																																																																																														Let Ti972.4031
																																																																																																																															Int:1
																																																																																																																															IfEq m_tex.4027 Ti972.4031
																																																																																																																																Let w1.4144
																																																																																																																																	Let Td974.4171
																																																																																																																																		Let Ti973.4173
																																																																																																																																			Int:0
																																																																																																																																			Get p.2956 Ti973.4173
																																																																																																																																		Let Td975.4172
																																																																																																																																			App o_param_x.2703m.2955 
																																																																																																																																			FSub Td974.4171 Td975.4172
																																																																																																																																	Let flag1.4145
																																																																																																																																		Let d1.4164
																																																																																																																																			Let Td978.4167
																																																																																																																																				Let Td977.4169
																																																																																																																																					Let Td976.4170
																																																																																																																																						Float:0.050000
																																																																																																																																						FMul w1.4144 Td976.4170
																																																																																																																																					App floor.2614Td977.4169 
																																																																																																																																				Let Td979.4168
																																																																																																																																					Float:20.000000
																																																																																																																																					FMul Td978.4167 Td979.4168
																																																																																																																																			Let Td980.4165
																																																																																																																																				Float:10.000000
																																																																																																																																				Let Td981.4166
																																																																																																																																					FSub w1.4144 d1.4164
																																																																																																																																					IfLE Td980.4165 Td981.4166
																																																																																																																																						Int:0
																																																																																																																																						Int:1
																																																																																																																																		Let w3.4146
																																																																																																																																			Let Td983.4161
																																																																																																																																				Let Ti982.4163
																																																																																																																																					Int:2
																																																																																																																																					Get p.2956 Ti982.4163
																																																																																																																																				Let Td984.4162
																																																																																																																																					App o_param_z.2707m.2955 
																																																																																																																																					FSub Td983.4161 Td984.4162
																																																																																																																																			Let flag2.4147
																																																																																																																																				Let d2.4154
																																																																																																																																					Let Td987.4157
																																																																																																																																						Let Td986.4159
																																																																																																																																							Let Td985.4160
																																																																																																																																								Float:0.050000
																																																																																																																																								FMul w3.4146 Td985.4160
																																																																																																																																							App floor.2614Td986.4159 
																																																																																																																																						Let Td988.4158
																																																																																																																																							Float:20.000000
																																																																																																																																							FMul Td987.4157 Td988.4158
																																																																																																																																					Let Td989.4155
																																																																																																																																						Float:10.000000
																																																																																																																																						Let Td990.4156
																																																																																																																																							FSub w3.4146 d2.4154
																																																																																																																																							IfLE Td989.4155 Td990.4156
																																																																																																																																								Int:0
																																																																																																																																								Int:1
																																																																																																																																				Let Ta991.4148
																																																																																																																																					ExtArray 145
																																																																																																																																					Let Ti992.4149
																																																																																																																																						Int:1
																																																																																																																																						Let Td996.4150
																																																																																																																																							Let Ti993.4151
																																																																																																																																								Int:0
																																																																																																																																								IfEq flag1.4145 Ti993.4151
																																																																																																																																									Let Ti994.4153
																																																																																																																																										Int:0
																																																																																																																																										IfEq flag2.4147 Ti994.4153
																																																																																																																																											Float:255.000000
																																																																																																																																											Float:0.000000
																																																																																																																																									Let Ti995.4152
																																																																																																																																										Int:0
																																																																																																																																										IfEq flag2.4147 Ti995.4152
																																																																																																																																											Float:0.000000
																																																																																																																																											Float:255.000000
																																																																																																																																							Put Ta991.4148 Ti992.4149 Td996.4150
																																																																																																																																Let Ti997.4032
																																																																																																																																	Int:2
																																																																																																																																	IfEq m_tex.4027 Ti997.4032
																																																																																																																																		Let w2.4127
																																																																																																																																			Let Td1002.4139
																																																																																																																																				Let Td1001.4140
																																																																																																																																					Let Td999.4141
																																																																																																																																						Let Ti998.4143
																																																																																																																																							Int:1
																																																																																																																																							Get p.2956 Ti998.4143
																																																																																																																																						Let Td1000.4142
																																																																																																																																							Float:0.250000
																																																																																																																																							FMul Td999.4141 Td1000.4142
																																																																																																																																					App sin.2625Td1001.4140 
																																																																																																																																				App fsqr.2598Td1002.4139 
																																																																																																																																			Let Tu138.4128
																																																																																																																																				Let Ta1003.4135
																																																																																																																																					ExtArray 145
																																																																																																																																					Let Ti1004.4136
																																																																																																																																						Int:0
																																																																																																																																						Let Td1006.4137
																																																																																																																																							Let Td1005.4138
																																																																																																																																								Float:255.000000
																																																																																																																																								FMul Td1005.4138 w2.4127
																																																																																																																																							Put Ta1003.4135 Ti1004.4136 Td1006.4137
																																																																																																																																				Let Ta1007.4129
																																																																																																																																					ExtArray 145
																																																																																																																																					Let Ti1008.4130
																																																																																																																																						Int:1
																																																																																																																																						Let Td1012.4131
																																																																																																																																							Let Td1009.4132
																																																																																																																																								Float:255.000000
																																																																																																																																								Let Td1011.4133
																																																																																																																																									Let Td1010.4134
																																																																																																																																										Float:1.000000
																																																																																																																																										FSub Td1010.4134 w2.4127
																																																																																																																																									FMul Td1009.4132 Td1011.4133
																																																																																																																																							Put Ta1007.4129 Ti1008.4130 Td1012.4131
																																																																																																																																		Let Ti1013.4033
																																																																																																																																			Int:3
																																																																																																																																			IfEq m_tex.4027 Ti1013.4033
																																																																																																																																				Let w1.4096
																																																																																																																																					Let Td1015.4124
																																																																																																																																						Let Ti1014.4126
																																																																																																																																							Int:0
																																																																																																																																							Get p.2956 Ti1014.4126
																																																																																																																																						Let Td1016.4125
																																																																																																																																							App o_param_x.2703m.2955 
																																																																																																																																							FSub Td1015.4124 Td1016.4125
																																																																																																																																					Let w3.4097
																																																																																																																																						Let Td1018.4121
																																																																																																																																							Let Ti1017.4123
																																																																																																																																								Int:2
																																																																																																																																								Get p.2956 Ti1017.4123
																																																																																																																																							Let Td1019.4122
																																																																																																																																								App o_param_z.2707m.2955 
																																																																																																																																								FSub Td1018.4121 Td1019.4122
																																																																																																																																						Let w2.4098
																																																																																																																																							Let Td1024.4116
																																																																																																																																								Let Td1022.4117
																																																																																																																																									Let Td1020.4119
																																																																																																																																										App fsqr.2598w1.4096 
																																																																																																																																										Let Td1021.4120
																																																																																																																																											App fsqr.2598w3.4097 
																																																																																																																																											FAdd Td1020.4119 Td1021.4120
																																																																																																																																									Let Td1023.4118
																																																																																																																																										Float:10.000000
																																																																																																																																										FDiv Td1022.4117 Td1023.4118
																																																																																																																																								sqrt Td1024.4116
																																																																																																																																							Let w4.4099
																																																																																																																																								Let Td1026.4113
																																																																																																																																									Let Td1025.4115
																																																																																																																																										App floor.2614w2.4098 
																																																																																																																																										FSub w2.4098 Td1025.4115
																																																																																																																																									Let Td1027.4114
																																																																																																																																										Float:3.141593
																																																																																																																																										FMul Td1026.4113 Td1027.4114
																																																																																																																																								Let cws.4100
																																																																																																																																									Let Td1028.4112
																																																																																																																																										App cos.2627w4.4099 
																																																																																																																																										App fsqr.2598Td1028.4112 
																																																																																																																																									Let Tu139.4101
																																																																																																																																										Let Ta1029.4108
																																																																																																																																											ExtArray 145
																																																																																																																																											Let Ti1030.4109
																																																																																																																																												Int:1
																																																																																																																																												Let Td1032.4110
																																																																																																																																													Let Td1031.4111
																																																																																																																																														Float:255.000000
																																																																																																																																														FMul cws.4100 Td1031.4111
																																																																																																																																													Put Ta1029.4108 Ti1030.4109 Td1032.4110
																																																																																																																																										Let Ta1033.4102
																																																																																																																																											ExtArray 145
																																																																																																																																											Let Ti1034.4103
																																																																																																																																												Int:2
																																																																																																																																												Let Td1038.4104
																																																																																																																																													Let Td1036.4105
																																																																																																																																														Let Td1035.4107
																																																																																																																																															Float:1.000000
																																																																																																																																															FSub Td1035.4107 cws.4100
																																																																																																																																														Let Td1037.4106
																																																																																																																																															Float:255.000000
																																																																																																																																															FMul Td1036.4105 Td1037.4106
																																																																																																																																													Put Ta1033.4102 Ti1034.4103 Td1038.4104
																																																																																																																																				Let Ti1039.4034
																																																																																																																																					Int:4
																																																																																																																																					IfEq m_tex.4027 Ti1039.4034
																																																																																																																																						Let w1.4035
																																																																																																																																							Let Td1043.4090
																																																																																																																																								Let Td1041.4093
																																																																																																																																									Let Ti1040.4095
																																																																																																																																										Int:0
																																																																																																																																										Get p.2956 Ti1040.4095
																																																																																																																																									Let Td1042.4094
																																																																																																																																										App o_param_x.2703m.2955 
																																																																																																																																										FSub Td1041.4093 Td1042.4094
																																																																																																																																								Let Td1045.4091
																																																																																																																																									Let Td1044.4092
																																																																																																																																										App o_param_a.2695m.2955 
																																																																																																																																										sqrt Td1044.4092
																																																																																																																																									FMul Td1043.4090 Td1045.4091
																																																																																																																																							Let w3.4036
																																																																																																																																								Let Td1049.4084
																																																																																																																																									Let Td1047.4087
																																																																																																																																										Let Ti1046.4089
																																																																																																																																											Int:2
																																																																																																																																											Get p.2956 Ti1046.4089
																																																																																																																																										Let Td1048.4088
																																																																																																																																											App o_param_z.2707m.2955 
																																																																																																																																											FSub Td1047.4087 Td1048.4088
																																																																																																																																									Let Td1051.4085
																																																																																																																																										Let Td1050.4086
																																																																																																																																											App o_param_c.2699m.2955 
																																																																																																																																											sqrt Td1050.4086
																																																																																																																																										FMul Td1049.4084 Td1051.4085
																																																																																																																																								Let w4.4037
																																																																																																																																									Let Td1052.4082
																																																																																																																																										App fsqr.2598w1.4035 
																																																																																																																																										Let Td1053.4083
																																																																																																																																											App fsqr.2598w3.4036 
																																																																																																																																											FAdd Td1052.4082 Td1053.4083
																																																																																																																																									Let w7.4038
																																																																																																																																										Let Td1054.4075
																																																																																																																																											Float:0.000100
																																																																																																																																											IfFAbsLE Td1054.4075 w1.4035
																																																																																																																																												Let w5.4076
																																																																																																																																													Let Td1055.4081
																																																																																																																																														FDiv w3.4036 w1.4035
																																																																																																																																														fabs Td1055.4081
																																																																																																																																													Let Td1058.4077
																																																																																																																																														Let Td1056.4079
																																																																																																																																															App atan.2629w5.4076 
																																																																																																																																															Let Td1057.4080
																																																																																																																																																Float:30.000000
																																																																																																																																																FMul Td1056.4079 Td1057.4080
																																																																																																																																														Let Td1059.4078
																																																																																																																																															Float:3.141593
																																																																																																																																															FDiv Td1058.4077 Td1059.4078
																																																																																																																																												Float:15.000000
																																																																																																																																										Let w9.4039
																																																																																																																																											Let Td1060.4074
																																																																																																																																												App floor.2614w7.4038 
																																																																																																																																												FSub w7.4038 Td1060.4074
																																																																																																																																											Let w2.4040
																																																																																																																																												Let Td1064.4068
																																																																																																																																													Let Td1062.4071
																																																																																																																																														Let Ti1061.4073
																																																																																																																																															Int:1
																																																																																																																																															Get p.2956 Ti1061.4073
																																																																																																																																														Let Td1063.4072
																																																																																																																																															App o_param_y.2705m.2955 
																																																																																																																																															FSub Td1062.4071 Td1063.4072
																																																																																																																																													Let Td1066.4069
																																																																																																																																														Let Td1065.4070
																																																																																																																																															App o_param_b.2697m.2955 
																																																																																																																																															sqrt Td1065.4070
																																																																																																																																														FMul Td1064.4068 Td1066.4069
																																																																																																																																												Let w8.4041
																																																																																																																																													Let Td1067.4061
																																																																																																																																														Float:0.000100
																																																																																																																																														IfFAbsLE Td1067.4061 w4.4037
																																																																																																																																															Let w6.4062
																																																																																																																																																Let Td1068.4067
																																																																																																																																																	FDiv w2.4040 w4.4037
																																																																																																																																																	fabs Td1068.4067
																																																																																																																																																Let Td1071.4063
																																																																																																																																																	Let Td1069.4065
																																																																																																																																																		App atan.2629w6.4062 
																																																																																																																																																		Let Td1070.4066
																																																																																																																																																			Float:30.000000
																																																																																																																																																			FMul Td1069.4065 Td1070.4066
																																																																																																																																																	Let Td1072.4064
																																																																																																																																																		Float:3.141593
																																																																																																																																																		FDiv Td1071.4063 Td1072.4064
																																																																																																																																															Float:15.000000
																																																																																																																																													Let w10.4042
																																																																																																																																														Let Td1073.4060
																																																																																																																																															App floor.2614w8.4041 
																																																																																																																																															FSub w8.4041 Td1073.4060
																																																																																																																																														Let w11.4043
																																																																																																																																															Let Td1078.4052
																																																																																																																																																Let Td1074.4056
																																																																																																																																																	Float:0.150000
																																																																																																																																																	Let Td1077.4057
																																																																																																																																																		Let Td1076.4058
																																																																																																																																																			Let Td1075.4059
																																																																																																																																																				Float:0.500000
																																																																																																																																																				FSub Td1075.4059 w9.4039
																																																																																																																																																			App fsqr.2598Td1076.4058 
																																																																																																																																																		FSub Td1074.4056 Td1077.4057
																																																																																																																																																Let Td1081.4053
																																																																																																																																																	Let Td1080.4054
																																																																																																																																																		Let Td1079.4055
																																																																																																																																																			Float:0.500000
																																																																																																																																																			FSub Td1079.4055 w10.4042
																																																																																																																																																		App fsqr.2598Td1080.4054 
																																																																																																																																																	FSub Td1078.4052 Td1081.4053
																																																																																																																																															Let w12.4044
																																																																																																																																																Let Td1082.4051
																																																																																																																																																	Float:0.000000
																																																																																																																																																	IfLE Td1082.4051 w11.4043
																																																																																																																																																		Var w11.4043
																																																																																																																																																		Float:0.000000
																																																																																																																																																Let Ta1083.4045
																																																																																																																																																	ExtArray 145
																																																																																																																																																	Let Ti1084.4046
																																																																																																																																																		Int:2
																																																																																																																																																		Let Td1088.4047
																																																																																																																																																			Let Td1086.4048
																																																																																																																																																				Let Td1085.4050
																																																																																																																																																					Float:255.000000
																																																																																																																																																					FMul Td1085.4050 w12.4044
																																																																																																																																																				Let Td1087.4049
																																																																																																																																																					Float:0.300000
																																																																																																																																																					FDiv Td1086.4048 Td1087.4049
																																																																																																																																																			Put Ta1083.4045 Ti1084.4046 Td1088.4047
																																																																																																																																						Unit
																																																																																																																										LetRec add_light.2957 bright.2958 hilight.2959 hilight_scale.2960 
																																																																																																																											Let Tu145.3999
																																																																																																																												Let Td939.4024
																																																																																																																													Float:0.000000
																																																																																																																													IfLE bright.2958 Td939.4024
																																																																																																																														Unit
																																																																																																																														Let Ta940.4025
																																																																																																																															ExtArray 151
																																																																																																																															Let Ta941.4026
																																																																																																																																ExtArray 145
																																																																																																																																App vecaccum.2668Ta940.4025 bright.2958 Ta941.4026 
																																																																																																																												Let Td942.4000
																																																																																																																													Float:0.000000
																																																																																																																													IfLE hilight.2959 Td942.4000
																																																																																																																														Unit
																																																																																																																														Let ihl.4001
																																																																																																																															Let Td944.4022
																																																																																																																																Let Td943.4023
																																																																																																																																	App fsqr.2598hilight.2959 
																																																																																																																																	App fsqr.2598Td943.4023 
																																																																																																																																FMul Td944.4022 hilight_scale.2960
																																																																																																																															Let Tu144.4002
																																																																																																																																Let Ta945.4016
																																																																																																																																	ExtArray 151
																																																																																																																																	Let Ti946.4017
																																																																																																																																		Int:0
																																																																																																																																		Let Td950.4018
																																																																																																																																			Let Td949.4019
																																																																																																																																				Let Ta947.4020
																																																																																																																																					ExtArray 151
																																																																																																																																					Let Ti948.4021
																																																																																																																																						Int:0
																																																																																																																																						Get Ta947.4020 Ti948.4021
																																																																																																																																				FAdd Td949.4019 ihl.4001
																																																																																																																																			Put Ta945.4016 Ti946.4017 Td950.4018
																																																																																																																																Let Tu143.4003
																																																																																																																																	Let Ta951.4010
																																																																																																																																		ExtArray 151
																																																																																																																																		Let Ti952.4011
																																																																																																																																			Int:1
																																																																																																																																			Let Td956.4012
																																																																																																																																				Let Td955.4013
																																																																																																																																					Let Ta953.4014
																																																																																																																																						ExtArray 151
																																																																																																																																						Let Ti954.4015
																																																																																																																																							Int:1
																																																																																																																																							Get Ta953.4014 Ti954.4015
																																																																																																																																					FAdd Td955.4013 ihl.4001
																																																																																																																																				Put Ta951.4010 Ti952.4011 Td956.4012
																																																																																																																																	Let Ta957.4004
																																																																																																																																		ExtArray 151
																																																																																																																																		Let Ti958.4005
																																																																																																																																			Int:2
																																																																																																																																			Let Td962.4006
																																																																																																																																				Let Td961.4007
																																																																																																																																					Let Ta959.4008
																																																																																																																																						ExtArray 151
																																																																																																																																						Let Ti960.4009
																																																																																																																																							Int:2
																																																																																																																																							Get Ta959.4008 Ti960.4009
																																																																																																																																					FAdd Td961.4007 ihl.4001
																																																																																																																																				Put Ta957.4004 Ti958.4005 Td962.4006
																																																																																																																											LetRec trace_reflections.2961 index.2962 diffuse.2963 hilight_scale.2964 dirvec.2965 
																																																																																																																												Let Ti914.3966
																																																																																																																													Int:0
																																																																																																																													IfLE Ti914.3966 index.2962
																																																																																																																														Let rinfo.3967
																																																																																																																															Let Ta915.3998
																																																																																																																																ExtArray 254
																																																																																																																																Get Ta915.3998 index.2962
																																																																																																																															Let dvec.3968
																																																																																																																																App r_dvec.2752rinfo.3967 
																																																																																																																																Let Tu146.3969
																																																																																																																																	Let Tb916.3972
																																																																																																																																		App judge_intersection_fast.2943dvec.3968 
																																																																																																																																		Let Ti917.3973
																																																																																																																																			Int:0
																																																																																																																																			IfEq Tb916.3972 Ti917.3973
																																																																																																																																				Unit
																																																																																																																																				Let surface_id.3974
																																																																																																																																					Let Ti921.3991
																																																																																																																																						Let Ti920.3995
																																																																																																																																							Let Ta918.3996
																																																																																																																																								ExtArray 141
																																																																																																																																								Let Ti919.3997
																																																																																																																																									Int:0
																																																																																																																																									Get Ta918.3996 Ti919.3997
																																																																																																																																							ShiftL2 Ti920.3995
																																																																																																																																						Let Ti924.3992
																																																																																																																																							Let Ta922.3993
																																																																																																																																								ExtArray 136
																																																																																																																																								Let Ti923.3994
																																																																																																																																									Int:0
																																																																																																																																									Get Ta922.3993 Ti923.3994
																																																																																																																																							Add Ti921.3991 Ti924.3992
																																																																																																																																					Let Ti925.3975
																																																																																																																																						App r_surface_id.2750rinfo.3967 
																																																																																																																																						IfEq surface_id.3974 Ti925.3975
																																																																																																																																							Let Tb930.3976
																																																																																																																																								Let Ti926.3987
																																																																																																																																									Int:0
																																																																																																																																									Let Ta929.3988
																																																																																																																																										Let Ta927.3989
																																																																																																																																											ExtArray 134
																																																																																																																																											Let Ti928.3990
																																																																																																																																												Int:0
																																																																																																																																												Get Ta927.3989 Ti928.3990
																																																																																																																																										App shadow_check_one_or_matrix.2914Ti926.3987 Ta929.3988 
																																																																																																																																								Let Ti931.3977
																																																																																																																																									Int:0
																																																																																																																																									IfEq Tb930.3976 Ti931.3977
																																																																																																																																										Let p.3978
																																																																																																																																											Let Ta932.3985
																																																																																																																																												ExtArray 142
																																																																																																																																												Let Ta933.3986
																																																																																																																																													App d_vec.2746dvec.3968 
																																																																																																																																													App veciprod.2660Ta932.3985 Ta933.3986 
																																																																																																																																											Let scale.3979
																																																																																																																																												App r_bright.2754rinfo.3967 
																																																																																																																																												Let bright.3980
																																																																																																																																													Let Td934.3984
																																																																																																																																														FMul scale.3979 diffuse.2963
																																																																																																																																														FMul Td934.3984 p.3978
																																																																																																																																													Let hilight.3981
																																																																																																																																														Let Td936.3982
																																																																																																																																															Let Ta935.3983
																																																																																																																																																App d_vec.2746dvec.3968 
																																																																																																																																																App veciprod.2660dirvec.2965 Ta935.3983 
																																																																																																																																															FMul scale.3979 Td936.3982
																																																																																																																																														App add_light.2957bright.3980 hilight.3981 hilight_scale.2964 
																																																																																																																																										Unit
																																																																																																																																							Unit
																																																																																																																																	Let Ti938.3970
																																																																																																																																		Let Ti937.3971
																																																																																																																																			Int:1
																																																																																																																																			Sub index.2962 Ti937.3971
																																																																																																																																		App trace_reflections.2961Ti938.3970 diffuse.2963 hilight_scale.2964 dirvec.2965 
																																																																																																																														Unit
																																																																																																																												LetRec trace_ray.2966 nref.2967 energy.2968 dirvec.2969 pixel.2970 dist.2971 
																																																																																																																													Let Ti815.3834
																																																																																																																														Int:4
																																																																																																																														IfLE nref.2967 Ti815.3834
																																																																																																																															Let surface_ids.3835
																																																																																																																																App p_surface_ids.2731pixel.2970 
																																																																																																																																Let Tb816.3836
																																																																																																																																	App judge_intersection.2929dirvec.2969 
																																																																																																																																	Let Ti817.3837
																																																																																																																																		Int:0
																																																																																																																																		IfEq Tb816.3836 Ti817.3837
																																																																																																																																			Let Tu163.3931
																																																																																																																																				Let Ti819.3964
																																																																																																																																					Let Ti818.3965
																																																																																																																																						Int:1
																																																																																																																																						Neg Ti818.3965
																																																																																																																																					Put surface_ids.3835 nref.2967 Ti819.3964
																																																																																																																																				Let Ti820.3932
																																																																																																																																					Int:0
																																																																																																																																					IfEq nref.2967 Ti820.3932
																																																																																																																																						Unit
																																																																																																																																						Let hl.3933
																																																																																																																																							Let Td822.3962
																																																																																																																																								Let Ta821.3963
																																																																																																																																									ExtArray 78
																																																																																																																																									App veciprod.2660dirvec.2969 Ta821.3963 
																																																																																																																																								App fneg.2594Td822.3962 
																																																																																																																																							Let Td823.3934
																																																																																																																																								Float:0.000000
																																																																																																																																								IfLE hl.3933 Td823.3934
																																																																																																																																									Unit
																																																																																																																																									Let ihl.3935
																																																																																																																																										Let Td826.3956
																																																																																																																																											Let Td825.3960
																																																																																																																																												Let Td824.3961
																																																																																																																																													App fsqr.2598hl.3933 
																																																																																																																																													FMul Td824.3961 hl.3933
																																																																																																																																												FMul Td825.3960 energy.2968
																																																																																																																																											Let Td829.3957
																																																																																																																																												Let Ta827.3958
																																																																																																																																													ExtArray 81
																																																																																																																																													Let Ti828.3959
																																																																																																																																														Int:0
																																																																																																																																														Get Ta827.3958 Ti828.3959
																																																																																																																																												FMul Td826.3956 Td829.3957
																																																																																																																																										Let Tu162.3936
																																																																																																																																											Let Ta830.3950
																																																																																																																																												ExtArray 151
																																																																																																																																												Let Ti831.3951
																																																																																																																																													Int:0
																																																																																																																																													Let Td835.3952
																																																																																																																																														Let Td834.3953
																																																																																																																																															Let Ta832.3954
																																																																																																																																																ExtArray 151
																																																																																																																																																Let Ti833.3955
																																																																																																																																																	Int:0
																																																																																																																																																	Get Ta832.3954 Ti833.3955
																																																																																																																																															FAdd Td834.3953 ihl.3935
																																																																																																																																														Put Ta830.3950 Ti831.3951 Td835.3952
																																																																																																																																											Let Tu161.3937
																																																																																																																																												Let Ta836.3944
																																																																																																																																													ExtArray 151
																																																																																																																																													Let Ti837.3945
																																																																																																																																														Int:1
																																																																																																																																														Let Td841.3946
																																																																																																																																															Let Td840.3947
																																																																																																																																																Let Ta838.3948
																																																																																																																																																	ExtArray 151
																																																																																																																																																	Let Ti839.3949
																																																																																																																																																		Int:1
																																																																																																																																																		Get Ta838.3948 Ti839.3949
																																																																																																																																																FAdd Td840.3947 ihl.3935
																																																																																																																																															Put Ta836.3944 Ti837.3945 Td841.3946
																																																																																																																																												Let Ta842.3938
																																																																																																																																													ExtArray 151
																																																																																																																																													Let Ti843.3939
																																																																																																																																														Int:2
																																																																																																																																														Let Td847.3940
																																																																																																																																															Let Td846.3941
																																																																																																																																																Let Ta844.3942
																																																																																																																																																	ExtArray 151
																																																																																																																																																	Let Ti845.3943
																																																																																																																																																		Int:2
																																																																																																																																																		Get Ta844.3942 Ti845.3943
																																																																																																																																																FAdd Td846.3941 ihl.3935
																																																																																																																																															Put Ta842.3938 Ti843.3939 Td847.3940
																																																																																																																																			Let obj_id.3838
																																																																																																																																				Let Ta848.3929
																																																																																																																																					ExtArray 141
																																																																																																																																					Let Ti849.3930
																																																																																																																																						Int:0
																																																																																																																																						Get Ta848.3929 Ti849.3930
																																																																																																																																				Let obj.3839
																																																																																																																																					Let Ta850.3928
																																																																																																																																						ExtArray 12
																																																																																																																																						Get Ta850.3928 obj_id.3838
																																																																																																																																					Let m_surface.3840
																																																																																																																																						App o_reflectiontype.2689obj.3839 
																																																																																																																																						Let diffuse.3841
																																																																																																																																							Let Td851.3927
																																																																																																																																								App o_diffuse.2709obj.3839 
																																																																																																																																								FMul Td851.3927 energy.2968
																																																																																																																																							Let Tu160.3842
																																																																																																																																								App get_nvector.2951obj.3839 dirvec.2969 
																																																																																																																																								Let Tu159.3843
																																																																																																																																									Let Ta852.3925
																																																																																																																																										ExtArray 159
																																																																																																																																										Let Ta853.3926
																																																																																																																																											ExtArray 138
																																																																																																																																											App veccpy.2649Ta852.3925 Ta853.3926 
																																																																																																																																									Let Tu158.3844
																																																																																																																																										Let Ta854.3924
																																																																																																																																											ExtArray 138
																																																																																																																																											App utexture.2954obj.3839 Ta854.3924 
																																																																																																																																										Let Tu157.3845
																																																																																																																																											Let Ti859.3919
																																																																																																																																												Let Ti855.3920
																																																																																																																																													ShiftL2 obj_id.3838
																																																																																																																																													Let Ti858.3921
																																																																																																																																														Let Ta856.3922
																																																																																																																																															ExtArray 136
																																																																																																																																															Let Ti857.3923
																																																																																																																																																Int:0
																																																																																																																																																Get Ta856.3922 Ti857.3923
																																																																																																																																														Add Ti855.3920 Ti858.3921
																																																																																																																																												Put surface_ids.3835 nref.2967 Ti859.3919
																																																																																																																																											Let intersection_points.3846
																																																																																																																																												App p_intersection_points.2729pixel.2970 
																																																																																																																																												Let Tu156.3847
																																																																																																																																													Let Ta860.3917
																																																																																																																																														Get intersection_points.3846 nref.2967
																																																																																																																																														Let Ta861.3918
																																																																																																																																															ExtArray 138
																																																																																																																																															App veccpy.2649Ta860.3917 Ta861.3918 
																																																																																																																																													Let calc_diffuse.3848
																																																																																																																																														App p_calc_diffuse.2733pixel.2970 
																																																																																																																																														Let Tu155.3849
																																																																																																																																															Let Td862.3899
																																																																																																																																																Float:0.500000
																																																																																																																																																Let Td863.3900
																																																																																																																																																	App o_diffuse.2709obj.3839 
																																																																																																																																																	IfLE Td862.3899 Td863.3900
																																																																																																																																																		Let Tu149.3902
																																																																																																																																																			Let Ti864.3916
																																																																																																																																																				Int:1
																																																																																																																																																				Put calc_diffuse.3848 nref.2967 Ti864.3916
																																																																																																																																																			Let energya.3903
																																																																																																																																																				App p_energy.2735pixel.2970 
																																																																																																																																																				Let Tu148.3904
																																																																																																																																																					Let Ta865.3914
																																																																																																																																																						Get energya.3903 nref.2967
																																																																																																																																																						Let Ta866.3915
																																																																																																																																																							ExtArray 145
																																																																																																																																																							App veccpy.2649Ta865.3914 Ta866.3915 
																																																																																																																																																					Let Tu147.3905
																																																																																																																																																						Let Ta867.3909
																																																																																																																																																							Get energya.3903 nref.2967
																																																																																																																																																							Let Td871.3910
																																																																																																																																																								Let Td870.3911
																																																																																																																																																									Let Td868.3912
																																																																																																																																																										Float:1.000000
																																																																																																																																																										Let Td869.3913
																																																																																																																																																											Float:256.000000
																																																																																																																																																											FDiv Td868.3912 Td869.3913
																																																																																																																																																									FMul Td870.3911 diffuse.3841
																																																																																																																																																								App vecscale.2678Ta867.3909 Td871.3910 
																																																																																																																																																						Let nvectors.3906
																																																																																																																																																							App p_nvectors.2744pixel.2970 
																																																																																																																																																							Let Ta872.3907
																																																																																																																																																								Get nvectors.3906 nref.2967
																																																																																																																																																								Let Ta873.3908
																																																																																																																																																									ExtArray 142
																																																																																																																																																									App veccpy.2649Ta872.3907 Ta873.3908 
																																																																																																																																																		Let Ti874.3901
																																																																																																																																																			Int:0
																																																																																																																																																			Put calc_diffuse.3848 nref.2967 Ti874.3901
																																																																																																																																															Let w.3850
																																																																																																																																																Let Td875.3896
																																																																																																																																																	Float:-2.000000
																																																																																																																																																	Let Td877.3897
																																																																																																																																																		Let Ta876.3898
																																																																																																																																																			ExtArray 142
																																																																																																																																																			App veciprod.2660dirvec.2969 Ta876.3898 
																																																																																																																																																		FMul Td875.3896 Td877.3897
																																																																																																																																																Let Tu154.3851
																																																																																																																																																	Let Ta878.3895
																																																																																																																																																		ExtArray 142
																																																																																																																																																		App vecaccum.2668dirvec.2969 w.3850 Ta878.3895 
																																																																																																																																																	Let hilight_scale.3852
																																																																																																																																																		Let Td879.3894
																																																																																																																																																			App o_hilight.2711obj.3839 
																																																																																																																																																			FMul energy.2968 Td879.3894
																																																																																																																																																		Let Tu153.3853
																																																																																																																																																			Let Tb884.3880
																																																																																																																																																				Let Ti880.3890
																																																																																																																																																					Int:0
																																																																																																																																																					Let Ta883.3891
																																																																																																																																																						Let Ta881.3892
																																																																																																																																																							ExtArray 134
																																																																																																																																																							Let Ti882.3893
																																																																																																																																																								Int:0
																																																																																																																																																								Get Ta881.3892 Ti882.3893
																																																																																																																																																						App shadow_check_one_or_matrix.2914Ti880.3890 Ta883.3891 
																																																																																																																																																				Let Ti885.3881
																																																																																																																																																					Int:0
																																																																																																																																																					IfEq Tb884.3880 Ti885.3881
																																																																																																																																																						Let bright.3882
																																																																																																																																																							Let Td889.3886
																																																																																																																																																								Let Td888.3887
																																																																																																																																																									Let Ta886.3888
																																																																																																																																																										ExtArray 142
																																																																																																																																																										Let Ta887.3889
																																																																																																																																																											ExtArray 78
																																																																																																																																																											App veciprod.2660Ta886.3888 Ta887.3889 
																																																																																																																																																									App fneg.2594Td888.3887 
																																																																																																																																																								FMul Td889.3886 diffuse.3841
																																																																																																																																																							Let hilight.3883
																																																																																																																																																								Let Td891.3884
																																																																																																																																																									Let Ta890.3885
																																																																																																																																																										ExtArray 78
																																																																																																																																																										App veciprod.2660dirvec.2969 Ta890.3885 
																																																																																																																																																									App fneg.2594Td891.3884 
																																																																																																																																																								App add_light.2957bright.3882 hilight.3883 hilight_scale.3852 
																																																																																																																																																						Unit
																																																																																																																																																			Let Tu152.3854
																																																																																																																																																				Let Ta892.3879
																																																																																																																																																					ExtArray 138
																																																																																																																																																					App setup_startp.2880Ta892.3879 
																																																																																																																																																				Let Tu151.3855
																																																																																																																																																					Let Ti897.3874
																																																																																																																																																						Let Ti895.3875
																																																																																																																																																							Let Ta893.3877
																																																																																																																																																								ExtArray 434
																																																																																																																																																								Let Ti894.3878
																																																																																																																																																									Int:0
																																																																																																																																																									Get Ta893.3877 Ti894.3878
																																																																																																																																																							Let Ti896.3876
																																																																																																																																																								Int:1
																																																																																																																																																								Sub Ti895.3875 Ti896.3876
																																																																																																																																																						App trace_reflections.2961Ti897.3874 diffuse.3841 hilight_scale.3852 dirvec.2969 
																																																																																																																																																					Let Td898.3856
																																																																																																																																																						Float:0.100000
																																																																																																																																																						IfLE energy.2968 Td898.3856
																																																																																																																																																							Unit
																																																																																																																																																							Let Tu150.3857
																																																																																																																																																								Let Ti899.3869
																																																																																																																																																									Int:4
																																																																																																																																																									IfLE Ti899.3869 nref.2967
																																																																																																																																																										Unit
																																																																																																																																																										Let Ti901.3870
																																																																																																																																																											Let Ti900.3873
																																																																																																																																																												Int:1
																																																																																																																																																												Add nref.2967 Ti900.3873
																																																																																																																																																											Let Ti903.3871
																																																																																																																																																												Let Ti902.3872
																																																																																																																																																													Int:1
																																																																																																																																																													Neg Ti902.3872
																																																																																																																																																												Put surface_ids.3835 Ti901.3870 Ti903.3871
																																																																																																																																																								Let Ti904.3858
																																																																																																																																																									Int:2
																																																																																																																																																									IfEq m_surface.3840 Ti904.3858
																																																																																																																																																										Let energy2.3859
																																																																																																																																																											Let Td907.3866
																																																																																																																																																												Let Td905.3867
																																																																																																																																																													Float:1.000000
																																																																																																																																																													Let Td906.3868
																																																																																																																																																														App o_diffuse.2709obj.3839 
																																																																																																																																																														FSub Td905.3867 Td906.3868
																																																																																																																																																												FMul energy.2968 Td907.3866
																																																																																																																																																											Let Ti909.3860
																																																																																																																																																												Let Ti908.3865
																																																																																																																																																													Int:1
																																																																																																																																																													Add nref.2967 Ti908.3865
																																																																																																																																																												Let Td913.3861
																																																																																																																																																													Let Td912.3862
																																																																																																																																																														Let Ta910.3863
																																																																																																																																																															ExtArray 137
																																																																																																																																																															Let Ti911.3864
																																																																																																																																																																Int:0
																																																																																																																																																																Get Ta910.3863 Ti911.3864
																																																																																																																																																														FAdd dist.2971 Td912.3862
																																																																																																																																																													App trace_ray.2966Ti909.3860 energy2.3859 dirvec.2969 pixel.2970 Td913.3861 
																																																																																																																																																										Unit
																																																																																																																															Unit
																																																																																																																													LetRec trace_diffuse_ray.2972 dirvec.2973 energy.2974 
																																																																																																																														Let Tb792.3806
																																																																																																																															App judge_intersection_fast.2943dirvec.2973 
																																																																																																																															Let Ti793.3807
																																																																																																																																Int:0
																																																																																																																																IfEq Tb792.3806 Ti793.3807
																																																																																																																																	Unit
																																																																																																																																	Let obj.3808
																																																																																																																																		Let Ta794.3830
																																																																																																																																			ExtArray 12
																																																																																																																																			Let Ti797.3831
																																																																																																																																				Let Ta795.3832
																																																																																																																																					ExtArray 141
																																																																																																																																					Let Ti796.3833
																																																																																																																																						Int:0
																																																																																																																																						Get Ta795.3832 Ti796.3833
																																																																																																																																				Get Ta794.3830 Ti797.3831
																																																																																																																																		Let Tu165.3809
																																																																																																																																			Let Ta798.3829
																																																																																																																																				App d_vec.2746dirvec.2973 
																																																																																																																																				App get_nvector.2951obj.3808 Ta798.3829 
																																																																																																																																			Let Tu164.3810
																																																																																																																																				Let Ta799.3828
																																																																																																																																					ExtArray 138
																																																																																																																																					App utexture.2954obj.3808 Ta799.3828 
																																																																																																																																				Let Tb804.3811
																																																																																																																																					Let Ti800.3824
																																																																																																																																						Int:0
																																																																																																																																						Let Ta803.3825
																																																																																																																																							Let Ta801.3826
																																																																																																																																								ExtArray 134
																																																																																																																																								Let Ti802.3827
																																																																																																																																									Int:0
																																																																																																																																									Get Ta801.3826 Ti802.3827
																																																																																																																																							App shadow_check_one_or_matrix.2914Ti800.3824 Ta803.3825 
																																																																																																																																					Let Ti805.3812
																																																																																																																																						Int:0
																																																																																																																																						IfEq Tb804.3811 Ti805.3812
																																																																																																																																							Let br.3813
																																																																																																																																								Let Td808.3821
																																																																																																																																									Let Ta806.3822
																																																																																																																																										ExtArray 142
																																																																																																																																										Let Ta807.3823
																																																																																																																																											ExtArray 78
																																																																																																																																											App veciprod.2660Ta806.3822 Ta807.3823 
																																																																																																																																									App fneg.2594Td808.3821 
																																																																																																																																								Let bright.3814
																																																																																																																																									Let Td809.3820
																																																																																																																																										Float:0.000000
																																																																																																																																										IfLE br.3813 Td809.3820
																																																																																																																																											Float:0.000000
																																																																																																																																											Var br.3813
																																																																																																																																									Let Ta810.3815
																																																																																																																																										ExtArray 148
																																																																																																																																										Let Td813.3816
																																																																																																																																											Let Td811.3818
																																																																																																																																												FMul energy.2974 bright.3814
																																																																																																																																												Let Td812.3819
																																																																																																																																													App o_diffuse.2709obj.3808 
																																																																																																																																													FMul Td811.3818 Td812.3819
																																																																																																																																											Let Ta814.3817
																																																																																																																																												ExtArray 145
																																																																																																																																												App vecaccum.2668Ta810.3815 Td813.3816 Ta814.3817 
																																																																																																																																							Unit
																																																																																																																														LetRec iter_trace_diffuse_rays.2975 dirvec_group.2976 nvector.2977 org.2978 index.2979 
																																																																																																																															Let Ti778.3790
																																																																																																																																Int:0
																																																																																																																																IfLE Ti778.3790 index.2979
																																																																																																																																	Let p.3791
																																																																																																																																		Let Ta780.3804
																																																																																																																																			Let Tt779.3805
																																																																																																																																				Get dirvec_group.2976 index.2979
																																																																																																																																				App d_vec.2746Tt779.3805 
																																																																																																																																			App veciprod.2660Ta780.3804 nvector.2977 
																																																																																																																																		Let Tu166.3792
																																																																																																																																			Let Td781.3795
																																																																																																																																				Float:0.000000
																																																																																																																																				IfLE Td781.3795 p.3791
																																																																																																																																					Let Tt782.3801
																																																																																																																																						Get dirvec_group.2976 index.2979
																																																																																																																																						Let Td784.3802
																																																																																																																																							Let Td783.3803
																																																																																																																																								Float:150.000000
																																																																																																																																								FDiv p.3791 Td783.3803
																																																																																																																																							App trace_diffuse_ray.2972Tt782.3801 Td784.3802 
																																																																																																																																					Let Tt787.3796
																																																																																																																																						Let Ti786.3799
																																																																																																																																							Let Ti785.3800
																																																																																																																																								Int:1
																																																																																																																																								Add index.2979 Ti785.3800
																																																																																																																																							Get dirvec_group.2976 Ti786.3799
																																																																																																																																						Let Td789.3797
																																																																																																																																							Let Td788.3798
																																																																																																																																								Float:-150.000000
																																																																																																																																								FDiv p.3791 Td788.3798
																																																																																																																																							App trace_diffuse_ray.2972Tt787.3796 Td789.3797 
																																																																																																																																			Let Ti791.3793
																																																																																																																																				Let Ti790.3794
																																																																																																																																					Int:2
																																																																																																																																					Sub index.2979 Ti790.3794
																																																																																																																																				App iter_trace_diffuse_rays.2975dirvec_group.2976 nvector.2977 org.2978 Ti791.3793 
																																																																																																																																	Unit
																																																																																																																															LetRec trace_diffuse_rays.2980 dirvec_group.2981 nvector.2982 org.2983 
																																																																																																																																Let Tu167.3788
																																																																																																																																	App setup_startp.2880org.2983 
																																																																																																																																	Let Ti777.3789
																																																																																																																																		Int:118
																																																																																																																																		App iter_trace_diffuse_rays.2975dirvec_group.2981 nvector.2982 org.2983 Ti777.3789 
																																																																																																																																LetRec trace_diffuse_ray_80percent.2984 group_id.2985 nvector.2986 org.2987 
																																																																																																																																	Let Tu171.3764
																																																																																																																																		Let Ti757.3784
																																																																																																																																			Int:0
																																																																																																																																			IfEq group_id.2985 Ti757.3784
																																																																																																																																				Unit
																																																																																																																																				Let Ta760.3785
																																																																																																																																					Let Ta758.3786
																																																																																																																																						ExtArray 179
																																																																																																																																						Let Ti759.3787
																																																																																																																																							Int:0
																																																																																																																																							Get Ta758.3786 Ti759.3787
																																																																																																																																					App trace_diffuse_rays.2980Ta760.3785 nvector.2986 org.2987 
																																																																																																																																		Let Tu170.3765
																																																																																																																																			Let Ti761.3780
																																																																																																																																				Int:1
																																																																																																																																				IfEq group_id.2985 Ti761.3780
																																																																																																																																					Unit
																																																																																																																																					Let Ta764.3781
																																																																																																																																						Let Ta762.3782
																																																																																																																																							ExtArray 179
																																																																																																																																							Let Ti763.3783
																																																																																																																																								Int:1
																																																																																																																																								Get Ta762.3782 Ti763.3783
																																																																																																																																						App trace_diffuse_rays.2980Ta764.3781 nvector.2986 org.2987 
																																																																																																																																			Let Tu169.3766
																																																																																																																																				Let Ti765.3776
																																																																																																																																					Int:2
																																																																																																																																					IfEq group_id.2985 Ti765.3776
																																																																																																																																						Unit
																																																																																																																																						Let Ta768.3777
																																																																																																																																							Let Ta766.3778
																																																																																																																																								ExtArray 179
																																																																																																																																								Let Ti767.3779
																																																																																																																																									Int:2
																																																																																																																																									Get Ta766.3778 Ti767.3779
																																																																																																																																							App trace_diffuse_rays.2980Ta768.3777 nvector.2986 org.2987 
																																																																																																																																				Let Tu168.3767
																																																																																																																																					Let Ti769.3772
																																																																																																																																						Int:3
																																																																																																																																						IfEq group_id.2985 Ti769.3772
																																																																																																																																							Unit
																																																																																																																																							Let Ta772.3773
																																																																																																																																								Let Ta770.3774
																																																																																																																																									ExtArray 179
																																																																																																																																									Let Ti771.3775
																																																																																																																																										Int:3
																																																																																																																																										Get Ta770.3774 Ti771.3775
																																																																																																																																								App trace_diffuse_rays.2980Ta772.3773 nvector.2986 org.2987 
																																																																																																																																					Let Ti773.3768
																																																																																																																																						Int:4
																																																																																																																																						IfEq group_id.2985 Ti773.3768
																																																																																																																																							Unit
																																																																																																																																							Let Ta776.3769
																																																																																																																																								Let Ta774.3770
																																																																																																																																									ExtArray 179
																																																																																																																																									Let Ti775.3771
																																																																																																																																										Int:4
																																																																																																																																										Get Ta774.3770 Ti775.3771
																																																																																																																																								App trace_diffuse_rays.2980Ta776.3769 nvector.2986 org.2987 
																																																																																																																																	LetRec calc_diffuse_using_1point.2988 pixel.2989 nref.2990 
																																																																																																																																		Let ray20p.3750
																																																																																																																																			App p_received_ray_20percent.2737pixel.2989 
																																																																																																																																			Let nvectors.3751
																																																																																																																																				App p_nvectors.2744pixel.2989 
																																																																																																																																				Let intersection_points.3752
																																																																																																																																					App p_intersection_points.2729pixel.2989 
																																																																																																																																					Let energya.3753
																																																																																																																																						App p_energy.2735pixel.2989 
																																																																																																																																						Let Tu173.3754
																																																																																																																																							Let Ta749.3762
																																																																																																																																								ExtArray 148
																																																																																																																																								Let Ta750.3763
																																																																																																																																									Get ray20p.3750 nref.2990
																																																																																																																																									App veccpy.2649Ta749.3762 Ta750.3763 
																																																																																																																																							Let Tu172.3755
																																																																																																																																								Let Ti751.3759
																																																																																																																																									App p_group_id.2739pixel.2989 
																																																																																																																																									Let Ta752.3760
																																																																																																																																										Get nvectors.3751 nref.2990
																																																																																																																																										Let Ta753.3761
																																																																																																																																											Get intersection_points.3752 nref.2990
																																																																																																																																											App trace_diffuse_ray_80percent.2984Ti751.3759 Ta752.3760 Ta753.3761 
																																																																																																																																								Let Ta754.3756
																																																																																																																																									ExtArray 151
																																																																																																																																									Let Ta755.3757
																																																																																																																																										Get energya.3753 nref.2990
																																																																																																																																										Let Ta756.3758
																																																																																																																																											ExtArray 148
																																																																																																																																											App vecaccumv.2681Ta754.3756 Ta755.3757 Ta756.3758 
																																																																																																																																		LetRec calc_diffuse_using_5points.2991 x.2992 prev.2993 cur.2994 next.2995 nref.2996 
																																																																																																																																			Let r_up.3716
																																																																																																																																				Let Tt726.3749
																																																																																																																																					Get prev.2993 x.2992
																																																																																																																																					App p_received_ray_20percent.2737Tt726.3749 
																																																																																																																																				Let r_left.3717
																																																																																																																																					Let Tt729.3746
																																																																																																																																						Let Ti728.3747
																																																																																																																																							Let Ti727.3748
																																																																																																																																								Int:1
																																																																																																																																								Sub x.2992 Ti727.3748
																																																																																																																																							Get cur.2994 Ti728.3747
																																																																																																																																						App p_received_ray_20percent.2737Tt729.3746 
																																																																																																																																					Let r_center.3718
																																																																																																																																						Let Tt730.3745
																																																																																																																																							Get cur.2994 x.2992
																																																																																																																																							App p_received_ray_20percent.2737Tt730.3745 
																																																																																																																																						Let r_right.3719
																																																																																																																																							Let Tt733.3742
																																																																																																																																								Let Ti732.3743
																																																																																																																																									Let Ti731.3744
																																																																																																																																										Int:1
																																																																																																																																										Add x.2992 Ti731.3744
																																																																																																																																									Get cur.2994 Ti732.3743
																																																																																																																																								App p_received_ray_20percent.2737Tt733.3742 
																																																																																																																																							Let r_down.3720
																																																																																																																																								Let Tt734.3741
																																																																																																																																									Get next.2995 x.2992
																																																																																																																																									App p_received_ray_20percent.2737Tt734.3741 
																																																																																																																																								Let Tu178.3721
																																																																																																																																									Let Ta735.3739
																																																																																																																																										ExtArray 148
																																																																																																																																										Let Ta736.3740
																																																																																																																																											Get r_up.3716 nref.2996
																																																																																																																																											App veccpy.2649Ta735.3739 Ta736.3740 
																																																																																																																																									Let Tu177.3722
																																																																																																																																										Let Ta737.3737
																																																																																																																																											ExtArray 148
																																																																																																																																											Let Ta738.3738
																																																																																																																																												Get r_left.3717 nref.2996
																																																																																																																																												App vecadd.2672Ta737.3737 Ta738.3738 
																																																																																																																																										Let Tu176.3723
																																																																																																																																											Let Ta739.3735
																																																																																																																																												ExtArray 148
																																																																																																																																												Let Ta740.3736
																																																																																																																																													Get r_center.3718 nref.2996
																																																																																																																																													App vecadd.2672Ta739.3735 Ta740.3736 
																																																																																																																																											Let Tu175.3724
																																																																																																																																												Let Ta741.3733
																																																																																																																																													ExtArray 148
																																																																																																																																													Let Ta742.3734
																																																																																																																																														Get r_right.3719 nref.2996
																																																																																																																																														App vecadd.2672Ta741.3733 Ta742.3734 
																																																																																																																																												Let Tu174.3725
																																																																																																																																													Let Ta743.3731
																																																																																																																																														ExtArray 148
																																																																																																																																														Let Ta744.3732
																																																																																																																																															Get r_down.3720 nref.2996
																																																																																																																																															App vecadd.2672Ta743.3731 Ta744.3732 
																																																																																																																																													Let energya.3726
																																																																																																																																														Let Tt745.3730
																																																																																																																																															Get cur.2994 x.2992
																																																																																																																																															App p_energy.2735Tt745.3730 
																																																																																																																																														Let Ta746.3727
																																																																																																																																															ExtArray 151
																																																																																																																																															Let Ta747.3728
																																																																																																																																																Get energya.3726 nref.2996
																																																																																																																																																Let Ta748.3729
																																																																																																																																																	ExtArray 148
																																																																																																																																																	App vecaccumv.2681Ta746.3727 Ta747.3728 Ta748.3729 
																																																																																																																																			LetRec do_without_neighbors.2997 pixel.2998 nref.2999 
																																																																																																																																				Let Ti719.3706
																																																																																																																																					Int:4
																																																																																																																																					IfLE nref.2999 Ti719.3706
																																																																																																																																						Let surface_ids.3707
																																																																																																																																							App p_surface_ids.2731pixel.2998 
																																																																																																																																							Let Ti720.3708
																																																																																																																																								Int:0
																																																																																																																																								Let Ti721.3709
																																																																																																																																									Get surface_ids.3707 nref.2999
																																																																																																																																									IfLE Ti720.3708 Ti721.3709
																																																																																																																																										Let calc_diffuse.3710
																																																																																																																																											App p_calc_diffuse.2733pixel.2998 
																																																																																																																																											Let Tu179.3711
																																																																																																																																												Let Tb722.3714
																																																																																																																																													Get calc_diffuse.3710 nref.2999
																																																																																																																																													Let Ti723.3715
																																																																																																																																														Int:0
																																																																																																																																														IfEq Tb722.3714 Ti723.3715
																																																																																																																																															Unit
																																																																																																																																															App calc_diffuse_using_1point.2988pixel.2998 nref.2999 
																																																																																																																																												Let Ti725.3712
																																																																																																																																													Let Ti724.3713
																																																																																																																																														Int:1
																																																																																																																																														Add nref.2999 Ti724.3713
																																																																																																																																													App do_without_neighbors.2997pixel.2998 Ti725.3712 
																																																																																																																																										Unit
																																																																																																																																						Unit
																																																																																																																																				LetRec neighbors_exist.3000 x.3001 y.3002 next.3003 
																																																																																																																																					Let Ti709.3694
																																																																																																																																						Let Ta707.3704
																																																																																																																																							ExtArray 154
																																																																																																																																							Let Ti708.3705
																																																																																																																																								Int:1
																																																																																																																																								Get Ta707.3704 Ti708.3705
																																																																																																																																						Let Ti711.3695
																																																																																																																																							Let Ti710.3703
																																																																																																																																								Int:1
																																																																																																																																								Add y.3002 Ti710.3703
																																																																																																																																							IfLE Ti709.3694 Ti711.3695
																																																																																																																																								Int:0
																																																																																																																																								Let Ti712.3696
																																																																																																																																									Int:0
																																																																																																																																									IfLE y.3002 Ti712.3696
																																																																																																																																										Int:0
																																																																																																																																										Let Ti715.3697
																																																																																																																																											Let Ta713.3701
																																																																																																																																												ExtArray 154
																																																																																																																																												Let Ti714.3702
																																																																																																																																													Int:0
																																																																																																																																													Get Ta713.3701 Ti714.3702
																																																																																																																																											Let Ti717.3698
																																																																																																																																												Let Ti716.3700
																																																																																																																																													Int:1
																																																																																																																																													Add x.3001 Ti716.3700
																																																																																																																																												IfLE Ti715.3697 Ti717.3698
																																																																																																																																													Int:0
																																																																																																																																													Let Ti718.3699
																																																																																																																																														Int:0
																																																																																																																																														IfLE x.3001 Ti718.3699
																																																																																																																																															Int:0
																																																																																																																																															Int:1
																																																																																																																																					LetRec get_surface_id.3004 pixel.3005 index.3006 
																																																																																																																																						Let surface_ids.3693
																																																																																																																																							App p_surface_ids.2731pixel.3005 
																																																																																																																																							Get surface_ids.3693 index.3006
																																																																																																																																						LetRec neighbors_are_available.3007 x.3008 prev.3009 cur.3010 next.3011 nref.3012 
																																																																																																																																							Let sid_center.3679
																																																																																																																																								Let Tt694.3692
																																																																																																																																									Get cur.3010 x.3008
																																																																																																																																									App get_surface_id.3004Tt694.3692 nref.3012 
																																																																																																																																								Let Ti696.3680
																																																																																																																																									Let Tt695.3691
																																																																																																																																										Get prev.3009 x.3008
																																																																																																																																										App get_surface_id.3004Tt695.3691 nref.3012 
																																																																																																																																									IfEq Ti696.3680 sid_center.3679
																																																																																																																																										Let Ti698.3681
																																																																																																																																											Let Tt697.3690
																																																																																																																																												Get next.3011 x.3008
																																																																																																																																												App get_surface_id.3004Tt697.3690 nref.3012 
																																																																																																																																											IfEq Ti698.3681 sid_center.3679
																																																																																																																																												Let Ti702.3682
																																																																																																																																													Let Tt701.3687
																																																																																																																																														Let Ti700.3688
																																																																																																																																															Let Ti699.3689
																																																																																																																																																Int:1
																																																																																																																																																Sub x.3008 Ti699.3689
																																																																																																																																															Get cur.3010 Ti700.3688
																																																																																																																																														App get_surface_id.3004Tt701.3687 nref.3012 
																																																																																																																																													IfEq Ti702.3682 sid_center.3679
																																																																																																																																														Let Ti706.3683
																																																																																																																																															Let Tt705.3684
																																																																																																																																																Let Ti704.3685
																																																																																																																																																	Let Ti703.3686
																																																																																																																																																		Int:1
																																																																																																																																																		Add x.3008 Ti703.3686
																																																																																																																																																	Get cur.3010 Ti704.3685
																																																																																																																																																App get_surface_id.3004Tt705.3684 nref.3012 
																																																																																																																																															IfEq Ti706.3683 sid_center.3679
																																																																																																																																																Int:1
																																																																																																																																																Int:0
																																																																																																																																														Int:0
																																																																																																																																												Int:0
																																																																																																																																										Int:0
																																																																																																																																							LetRec try_exploit_neighbors.3013 x.3014 y.3015 prev.3016 cur.3017 next.3018 nref.3019 
																																																																																																																																								Let pixel.3666
																																																																																																																																									Get cur.3017 x.3014
																																																																																																																																									Let Ti684.3667
																																																																																																																																										Int:4
																																																																																																																																										IfLE nref.3019 Ti684.3667
																																																																																																																																											Let Ti685.3668
																																																																																																																																												Int:0
																																																																																																																																												Let Ti686.3669
																																																																																																																																													App get_surface_id.3004pixel.3666 nref.3019 
																																																																																																																																													IfLE Ti685.3668 Ti686.3669
																																																																																																																																														Let Tb687.3670
																																																																																																																																															App neighbors_are_available.3007x.3014 prev.3016 cur.3017 next.3018 nref.3019 
																																																																																																																																															Let Ti688.3671
																																																																																																																																																Int:0
																																																																																																																																																IfEq Tb687.3670 Ti688.3671
																																																																																																																																																	Let Tt689.3678
																																																																																																																																																		Get cur.3017 x.3014
																																																																																																																																																		App do_without_neighbors.2997Tt689.3678 nref.3019 
																																																																																																																																																	Let calc_diffuse.3672
																																																																																																																																																		App p_calc_diffuse.2733pixel.3666 
																																																																																																																																																		Let Tu180.3673
																																																																																																																																																			Let Tb690.3676
																																																																																																																																																				Get calc_diffuse.3672 nref.3019
																																																																																																																																																				Let Ti691.3677
																																																																																																																																																					Int:0
																																																																																																																																																					IfEq Tb690.3676 Ti691.3677
																																																																																																																																																						Unit
																																																																																																																																																						App calc_diffuse_using_5points.2991x.3014 prev.3016 cur.3017 next.3018 nref.3019 
																																																																																																																																																			Let Ti693.3674
																																																																																																																																																				Let Ti692.3675
																																																																																																																																																					Int:1
																																																																																																																																																					Add nref.3019 Ti692.3675
																																																																																																																																																				App try_exploit_neighbors.3013x.3014 y.3015 prev.3016 cur.3017 next.3018 Ti693.3674 
																																																																																																																																														Unit
																																																																																																																																											Unit
																																																																																																																																								LetRec write_ppm_header.3020 Tu181.3021 
																																																																																																																																									Let Tu189.3643
																																																																																																																																										Let Ti669.3665
																																																																																																																																											Int:80
																																																																																																																																											printchar Ti669.3665
																																																																																																																																										Let Tu188.3644
																																																																																																																																											Let Ti672.3662
																																																																																																																																												Let Ti670.3663
																																																																																																																																													Int:48
																																																																																																																																													Let Ti671.3664
																																																																																																																																														Int:3
																																																																																																																																														Add Ti670.3663 Ti671.3664
																																																																																																																																												printchar Ti672.3662
																																																																																																																																											Let Tu187.3645
																																																																																																																																												Let Ti673.3661
																																																																																																																																													Int:10
																																																																																																																																													printchar Ti673.3661
																																																																																																																																												Let Tu186.3646
																																																																																																																																													Let Ti676.3658
																																																																																																																																														Let Ta674.3659
																																																																																																																																															ExtArray 154
																																																																																																																																															Let Ti675.3660
																																																																																																																																																Int:0
																																																																																																																																																Get Ta674.3659 Ti675.3660
																																																																																																																																														App print_int.2608Ti676.3658 
																																																																																																																																													Let Tu185.3647
																																																																																																																																														Let Ti677.3657
																																																																																																																																															Int:32
																																																																																																																																															printchar Ti677.3657
																																																																																																																																														Let Tu184.3648
																																																																																																																																															Let Ti680.3654
																																																																																																																																																Let Ta678.3655
																																																																																																																																																	ExtArray 154
																																																																																																																																																	Let Ti679.3656
																																																																																																																																																		Int:1
																																																																																																																																																		Get Ta678.3655 Ti679.3656
																																																																																																																																																App print_int.2608Ti680.3654 
																																																																																																																																															Let Tu183.3649
																																																																																																																																																Let Ti681.3653
																																																																																																																																																	Int:32
																																																																																																																																																	printchar Ti681.3653
																																																																																																																																																Let Tu182.3650
																																																																																																																																																	Let Ti682.3652
																																																																																																																																																		Int:255
																																																																																																																																																		App print_int.2608Ti682.3652 
																																																																																																																																																	Let Ti683.3651
																																																																																																																																																		Int:10
																																																																																																																																																		printchar Ti683.3651
																																																																																																																																									LetRec write_rgb_element.3022 x.3023 
																																																																																																																																										Let ix.3639
																																																																																																																																											App int_of_float.2610x.3023 
																																																																																																																																											Let elem.3640
																																																																																																																																												Let Ti667.3641
																																																																																																																																													Int:255
																																																																																																																																													IfLE ix.3639 Ti667.3641
																																																																																																																																														Let Ti668.3642
																																																																																																																																															Int:0
																																																																																																																																															IfLE Ti668.3642 ix.3639
																																																																																																																																																Var ix.3639
																																																																																																																																																Int:0
																																																																																																																																														Int:255
																																																																																																																																												App print_int.2608elem.3640 
																																																																																																																																										LetRec write_rgb.3024 Tu190.3025 
																																																																																																																																											Let Tu195.3622
																																																																																																																																												Let Td657.3636
																																																																																																																																													Let Ta655.3637
																																																																																																																																														ExtArray 151
																																																																																																																																														Let Ti656.3638
																																																																																																																																															Int:0
																																																																																																																																															Get Ta655.3637 Ti656.3638
																																																																																																																																													App write_rgb_element.3022Td657.3636 
																																																																																																																																												Let Tu194.3623
																																																																																																																																													Let Ti658.3635
																																																																																																																																														Int:32
																																																																																																																																														printchar Ti658.3635
																																																																																																																																													Let Tu193.3624
																																																																																																																																														Let Td661.3632
																																																																																																																																															Let Ta659.3633
																																																																																																																																																ExtArray 151
																																																																																																																																																Let Ti660.3634
																																																																																																																																																	Int:1
																																																																																																																																																	Get Ta659.3633 Ti660.3634
																																																																																																																																															App write_rgb_element.3022Td661.3632 
																																																																																																																																														Let Tu192.3625
																																																																																																																																															Let Ti662.3631
																																																																																																																																																Int:32
																																																																																																																																																printchar Ti662.3631
																																																																																																																																															Let Tu191.3626
																																																																																																																																																Let Td665.3628
																																																																																																																																																	Let Ta663.3629
																																																																																																																																																		ExtArray 151
																																																																																																																																																		Let Ti664.3630
																																																																																																																																																			Int:2
																																																																																																																																																			Get Ta663.3629 Ti664.3630
																																																																																																																																																	App write_rgb_element.3022Td665.3628 
																																																																																																																																																Let Ti666.3627
																																																																																																																																																	Int:10
																																																																																																																																																	printchar Ti666.3627
																																																																																																																																											LetRec pretrace_diffuse_rays.3026 pixel.3027 nref.3028 
																																																																																																																																												Let Ti642.3600
																																																																																																																																													Int:4
																																																																																																																																													IfLE nref.3028 Ti642.3600
																																																																																																																																														Let sid.3601
																																																																																																																																															App get_surface_id.3004pixel.3027 nref.3028 
																																																																																																																																															Let Ti643.3602
																																																																																																																																																Int:0
																																																																																																																																																IfLE Ti643.3602 sid.3601
																																																																																																																																																	Let calc_diffuse.3603
																																																																																																																																																		App p_calc_diffuse.2733pixel.3027 
																																																																																																																																																		Let Tu198.3604
																																																																																																																																																			Let Tb644.3607
																																																																																																																																																				Get calc_diffuse.3603 nref.3028
																																																																																																																																																				Let Ti645.3608
																																																																																																																																																					Int:0
																																																																																																																																																					IfEq Tb644.3607 Ti645.3608
																																																																																																																																																						Unit
																																																																																																																																																						Let group_id.3609
																																																																																																																																																							App p_group_id.2739pixel.3027 
																																																																																																																																																							Let Tu197.3610
																																																																																																																																																								Let Ta646.3621
																																																																																																																																																									ExtArray 148
																																																																																																																																																									App vecbzero.2647Ta646.3621 
																																																																																																																																																								Let nvectors.3611
																																																																																																																																																									App p_nvectors.2744pixel.3027 
																																																																																																																																																									Let intersection_points.3612
																																																																																																																																																										App p_intersection_points.2729pixel.3027 
																																																																																																																																																										Let Tu196.3613
																																																																																																																																																											Let Ta648.3617
																																																																																																																																																												Let Ta647.3620
																																																																																																																																																													ExtArray 179
																																																																																																																																																													Get Ta647.3620 group_id.3609
																																																																																																																																																												Let Ta649.3618
																																																																																																																																																													Get nvectors.3611 nref.3028
																																																																																																																																																													Let Ta650.3619
																																																																																																																																																														Get intersection_points.3612 nref.3028
																																																																																																																																																														App trace_diffuse_rays.2980Ta648.3617 Ta649.3618 Ta650.3619 
																																																																																																																																																											Let ray20p.3614
																																																																																																																																																												App p_received_ray_20percent.2737pixel.3027 
																																																																																																																																																												Let Ta651.3615
																																																																																																																																																													Get ray20p.3614 nref.3028
																																																																																																																																																													Let Ta652.3616
																																																																																																																																																														ExtArray 148
																																																																																																																																																														App veccpy.2649Ta651.3615 Ta652.3616 
																																																																																																																																																			Let Ti654.3605
																																																																																																																																																				Let Ti653.3606
																																																																																																																																																					Int:1
																																																																																																																																																					Add nref.3028 Ti653.3606
																																																																																																																																																				App pretrace_diffuse_rays.3026pixel.3027 Ti654.3605 
																																																																																																																																																	Unit
																																																																																																																																														Unit
																																																																																																																																												LetRec pretrace_pixels.3029 line.3030 x.3031 group_id.3032 lc0.3033 lc1.3034 lc2.3035 
																																																																																																																																													Let Ti595.3542
																																																																																																																																														Int:0
																																																																																																																																														IfLE Ti595.3542 x.3031
																																																																																																																																															Let xdisp.3543
																																																																																																																																																Let Td598.3592
																																																																																																																																																	Let Ta596.3598
																																																																																																																																																		ExtArray 158
																																																																																																																																																		Let Ti597.3599
																																																																																																																																																			Int:0
																																																																																																																																																			Get Ta596.3598 Ti597.3599
																																																																																																																																																	Let Td603.3593
																																																																																																																																																		Let Ti602.3594
																																																																																																																																																			Let Ti601.3595
																																																																																																																																																				Let Ta599.3596
																																																																																																																																																					ExtArray 156
																																																																																																																																																					Let Ti600.3597
																																																																																																																																																						Int:0
																																																																																																																																																						Get Ta599.3596 Ti600.3597
																																																																																																																																																				Sub x.3031 Ti601.3595
																																																																																																																																																			App float_of_int.2612Ti602.3594 
																																																																																																																																																		FMul Td598.3592 Td603.3593
																																																																																																																																																Let Tu208.3544
																																																																																																																																																	Let Ta604.3586
																																																																																																																																																		ExtArray 174
																																																																																																																																																		Let Ti605.3587
																																																																																																																																																			Int:0
																																																																																																																																																			Let Td609.3588
																																																																																																																																																				Let Td608.3589
																																																																																																																																																					Let Ta606.3590
																																																																																																																																																						ExtArray 165
																																																																																																																																																						Let Ti607.3591
																																																																																																																																																							Int:0
																																																																																																																																																							Get Ta606.3590 Ti607.3591
																																																																																																																																																					FDiv xdisp.3543 Td608.3589 lc0.3033
																																																																																																																																																				Put Ta604.3586 Ti605.3587 Td609.3588
																																																																																																																																																	Let Tu207.3545
																																																																																																																																																		Let Ta610.3580
																																																																																																																																																			ExtArray 174
																																																																																																																																																			Let Ti611.3581
																																																																																																																																																				Int:1
																																																																																																																																																				Let Td615.3582
																																																																																																																																																					Let Td614.3583
																																																																																																																																																						Let Ta612.3584
																																																																																																																																																							ExtArray 165
																																																																																																																																																							Let Ti613.3585
																																																																																																																																																								Int:1
																																																																																																																																																								Get Ta612.3584 Ti613.3585
																																																																																																																																																						FDiv xdisp.3543 Td614.3583 lc1.3034
																																																																																																																																																					Put Ta610.3580 Ti611.3581 Td615.3582
																																																																																																																																																		Let Tu206.3546
																																																																																																																																																			Let Ta616.3574
																																																																																																																																																				ExtArray 174
																																																																																																																																																				Let Ti617.3575
																																																																																																																																																					Int:2
																																																																																																																																																					Let Td621.3576
																																																																																																																																																						Let Td620.3577
																																																																																																																																																							Let Ta618.3578
																																																																																																																																																								ExtArray 165
																																																																																																																																																								Let Ti619.3579
																																																																																																																																																									Int:2
																																																																																																																																																									Get Ta618.3578 Ti619.3579
																																																																																																																																																							FDiv xdisp.3543 Td620.3577 lc2.3035
																																																																																																																																																						Put Ta616.3574 Ti617.3575 Td621.3576
																																																																																																																																																			Let Tu205.3547
																																																																																																																																																				Let Ta622.3572
																																																																																																																																																					ExtArray 174
																																																																																																																																																					Let Ti623.3573
																																																																																																																																																						Int:0
																																																																																																																																																						App vecunit_sgn.2657Ta622.3572 Ti623.3573 
																																																																																																																																																				Let Tu204.3548
																																																																																																																																																					Let Ta624.3571
																																																																																																																																																						ExtArray 151
																																																																																																																																																						App vecbzero.2647Ta624.3571 
																																																																																																																																																					Let Tu203.3549
																																																																																																																																																						Let Ta625.3569
																																																																																																																																																							ExtArray 159
																																																																																																																																																							Let Ta626.3570
																																																																																																																																																								ExtArray 75
																																																																																																																																																								App veccpy.2649Ta625.3569 Ta626.3570 
																																																																																																																																																						Let Tu202.3550
																																																																																																																																																							Let Ti627.3564
																																																																																																																																																								Int:0
																																																																																																																																																								Let Td628.3565
																																																																																																																																																									Float:1.000000
																																																																																																																																																									Let Ta629.3566
																																																																																																																																																										ExtArray 174
																																																																																																																																																										Let Tt630.3567
																																																																																																																																																											Get line.3030 x.3031
																																																																																																																																																											Let Td631.3568
																																																																																																																																																												Float:0.000000
																																																																																																																																																												App trace_ray.2966Ti627.3564 Td628.3565 Ta629.3566 Tt630.3567 Td631.3568 
																																																																																																																																																							Let Tu201.3551
																																																																																																																																																								Let Ta633.3561
																																																																																																																																																									Let Tt632.3563
																																																																																																																																																										Get line.3030 x.3031
																																																																																																																																																										App p_rgb.2727Tt632.3563 
																																																																																																																																																									Let Ta634.3562
																																																																																																																																																										ExtArray 151
																																																																																																																																																										App veccpy.2649Ta633.3561 Ta634.3562 
																																																																																																																																																								Let Tu200.3552
																																																																																																																																																									Let Tt635.3560
																																																																																																																																																										Get line.3030 x.3031
																																																																																																																																																										App p_set_group_id.2741Tt635.3560 group_id.3032 
																																																																																																																																																									Let Tu199.3553
																																																																																																																																																										Let Tt636.3558
																																																																																																																																																											Get line.3030 x.3031
																																																																																																																																																											Let Ti637.3559
																																																																																																																																																												Int:0
																																																																																																																																																												App pretrace_diffuse_rays.3026Tt636.3558 Ti637.3559 
																																																																																																																																																										Let Ti639.3554
																																																																																																																																																											Let Ti638.3557
																																																																																																																																																												Int:1
																																																																																																																																																												Sub x.3031 Ti638.3557
																																																																																																																																																											Let Ti641.3555
																																																																																																																																																												Let Ti640.3556
																																																																																																																																																													Int:1
																																																																																																																																																													App add_mod5.2636group_id.3032 Ti640.3556 
																																																																																																																																																												App pretrace_pixels.3029line.3030 Ti639.3554 Ti641.3555 lc0.3033 lc1.3034 lc2.3035 
																																																																																																																																															Unit
																																																																																																																																													LetRec pretrace_line.3036 line.3037 y.3038 group_id.3039 
																																																																																																																																														Let ydisp.3507
																																																																																																																																															Let Td566.3534
																																																																																																																																																Let Ta564.3540
																																																																																																																																																	ExtArray 158
																																																																																																																																																	Let Ti565.3541
																																																																																																																																																		Int:0
																																																																																																																																																		Get Ta564.3540 Ti565.3541
																																																																																																																																																Let Td571.3535
																																																																																																																																																	Let Ti570.3536
																																																																																																																																																		Let Ti569.3537
																																																																																																																																																			Let Ta567.3538
																																																																																																																																																				ExtArray 156
																																																																																																																																																				Let Ti568.3539
																																																																																																																																																					Int:1
																																																																																																																																																					Get Ta567.3538 Ti568.3539
																																																																																																																																																			Sub y.3038 Ti569.3537
																																																																																																																																																		App float_of_int.2612Ti570.3536 
																																																																																																																																																	FMul Td566.3534 Td571.3535
																																																																																																																																															Let lc0.3508
																																																																																																																																																Let Td574.3528
																																																																																																																																																	Let Ta572.3532
																																																																																																																																																		ExtArray 168
																																																																																																																																																		Let Ti573.3533
																																																																																																																																																			Int:0
																																																																																																																																																			Get Ta572.3532 Ti573.3533
																																																																																																																																																	Let Td577.3529
																																																																																																																																																		Let Ta575.3530
																																																																																																																																																			ExtArray 171
																																																																																																																																																			Let Ti576.3531
																																																																																																																																																				Int:0
																																																																																																																																																				Get Ta575.3530 Ti576.3531
																																																																																																																																																		FDiv ydisp.3507 Td574.3528 Td577.3529
																																																																																																																																																Let lc1.3509
																																																																																																																																																	Let Td580.3522
																																																																																																																																																		Let Ta578.3526
																																																																																																																																																			ExtArray 168
																																																																																																																																																			Let Ti579.3527
																																																																																																																																																				Int:1
																																																																																																																																																				Get Ta578.3526 Ti579.3527
																																																																																																																																																		Let Td583.3523
																																																																																																																																																			Let Ta581.3524
																																																																																																																																																				ExtArray 171
																																																																																																																																																				Let Ti582.3525
																																																																																																																																																					Int:1
																																																																																																																																																					Get Ta581.3524 Ti582.3525
																																																																																																																																																			FDiv ydisp.3507 Td580.3522 Td583.3523
																																																																																																																																																	Let lc2.3510
																																																																																																																																																		Let Td586.3516
																																																																																																																																																			Let Ta584.3520
																																																																																																																																																				ExtArray 168
																																																																																																																																																				Let Ti585.3521
																																																																																																																																																					Int:2
																																																																																																																																																					Get Ta584.3520 Ti585.3521
																																																																																																																																																			Let Td589.3517
																																																																																																																																																				Let Ta587.3518
																																																																																																																																																					ExtArray 171
																																																																																																																																																					Let Ti588.3519
																																																																																																																																																						Int:2
																																																																																																																																																						Get Ta587.3518 Ti588.3519
																																																																																																																																																				FDiv ydisp.3507 Td586.3516 Td589.3517
																																																																																																																																																		Let Ti594.3511
																																																																																																																																																			Let Ti592.3512
																																																																																																																																																				Let Ta590.3514
																																																																																																																																																					ExtArray 154
																																																																																																																																																					Let Ti591.3515
																																																																																																																																																						Int:0
																																																																																																																																																						Get Ta590.3514 Ti591.3515
																																																																																																																																																				Let Ti593.3513
																																																																																																																																																					Int:1
																																																																																																																																																					Sub Ti592.3512 Ti593.3513
																																																																																																																																																			App pretrace_pixels.3029line.3037 Ti594.3511 group_id.3039 lc0.3508 lc1.3509 lc2.3510 
																																																																																																																																														LetRec scan_pixel.3040 x.3041 y.3042 prev.3043 cur.3044 next.3045 
																																																																																																																																															Let Ti552.3490
																																																																																																																																																Let Ta550.3505
																																																																																																																																																	ExtArray 154
																																																																																																																																																	Let Ti551.3506
																																																																																																																																																		Int:0
																																																																																																																																																		Get Ta550.3505 Ti551.3506
																																																																																																																																																IfLE Ti552.3490 x.3041
																																																																																																																																																	Unit
																																																																																																																																																	Let Tu211.3491
																																																																																																																																																		Let Ta553.3502
																																																																																																																																																			ExtArray 151
																																																																																																																																																			Let Ta555.3503
																																																																																																																																																				Let Tt554.3504
																																																																																																																																																					Get cur.3044 x.3041
																																																																																																																																																					App p_rgb.2727Tt554.3504 
																																																																																																																																																				App veccpy.2649Ta553.3502 Ta555.3503 
																																																																																																																																																		Let Tu210.3492
																																																																																																																																																			Let Tb556.3497
																																																																																																																																																				App neighbors_exist.3000x.3041 y.3042 next.3045 
																																																																																																																																																				Let Ti557.3498
																																																																																																																																																					Int:0
																																																																																																																																																					IfEq Tb556.3497 Ti557.3498
																																																																																																																																																						Let Tt558.3500
																																																																																																																																																							Get cur.3044 x.3041
																																																																																																																																																							Let Ti559.3501
																																																																																																																																																								Int:0
																																																																																																																																																								App do_without_neighbors.2997Tt558.3500 Ti559.3501 
																																																																																																																																																						Let Ti560.3499
																																																																																																																																																							Int:0
																																																																																																																																																							App try_exploit_neighbors.3013x.3041 y.3042 prev.3043 cur.3044 next.3045 Ti560.3499 
																																																																																																																																																			Let Tu209.3493
																																																																																																																																																				Let Tu561.3496
																																																																																																																																																					Unit
																																																																																																																																																					App write_rgb.3024Tu561.3496 
																																																																																																																																																				Let Ti563.3494
																																																																																																																																																					Let Ti562.3495
																																																																																																																																																						Int:1
																																																																																																																																																						Add x.3041 Ti562.3495
																																																																																																																																																					App scan_pixel.3040Ti563.3494 y.3042 prev.3043 cur.3044 next.3045 
																																																																																																																																															LetRec scan_line.3046 y.3047 prev.3048 cur.3049 next.3050 group_id.3051 
																																																																																																																																																Let Ti537.3473
																																																																																																																																																	Let Ta535.3488
																																																																																																																																																		ExtArray 154
																																																																																																																																																		Let Ti536.3489
																																																																																																																																																			Int:1
																																																																																																																																																			Get Ta535.3488 Ti536.3489
																																																																																																																																																	IfLE Ti537.3473 y.3047
																																																																																																																																																		Unit
																																																																																																																																																		Let Tu213.3474
																																																																																																																																																			Let Ti542.3481
																																																																																																																																																				Let Ti540.3484
																																																																																																																																																					Let Ta538.3486
																																																																																																																																																						ExtArray 154
																																																																																																																																																						Let Ti539.3487
																																																																																																																																																							Int:1
																																																																																																																																																							Get Ta538.3486 Ti539.3487
																																																																																																																																																					Let Ti541.3485
																																																																																																																																																						Int:1
																																																																																																																																																						Sub Ti540.3484 Ti541.3485
																																																																																																																																																				IfLE Ti542.3481 y.3047
																																																																																																																																																					Unit
																																																																																																																																																					Let Ti544.3482
																																																																																																																																																						Let Ti543.3483
																																																																																																																																																							Int:1
																																																																																																																																																							Add y.3047 Ti543.3483
																																																																																																																																																						App pretrace_line.3036next.3050 Ti544.3482 group_id.3051 
																																																																																																																																																			Let Tu212.3475
																																																																																																																																																				Let Ti545.3480
																																																																																																																																																					Int:0
																																																																																																																																																					App scan_pixel.3040Ti545.3480 y.3047 prev.3048 cur.3049 next.3050 
																																																																																																																																																				Let Ti547.3476
																																																																																																																																																					Let Ti546.3479
																																																																																																																																																						Int:1
																																																																																																																																																						Add y.3047 Ti546.3479
																																																																																																																																																					Let Ti549.3477
																																																																																																																																																						Let Ti548.3478
																																																																																																																																																							Int:2
																																																																																																																																																							App add_mod5.2636group_id.3051 Ti548.3478 
																																																																																																																																																						App scan_line.3046Ti547.3476 cur.3049 next.3050 prev.3048 Ti549.3477 
																																																																																																																																																LetRec create_float5x3array.3052 Tu214.3053 
																																																																																																																																																	Let vec.3448
																																																																																																																																																		Let Ti516.3471
																																																																																																																																																			Int:3
																																																																																																																																																			Let Td517.3472
																																																																																																																																																				Float:0.000000
																																																																																																																																																				ExtFunApp create_float_array Ti516.3471,Td517.3472,
																																																																																																																																																		Let array.3449
																																																																																																																																																			Let Ti518.3470
																																																																																																																																																				Int:5
																																																																																																																																																				ExtFunApp create_array Ti518.3470,vec.3448,
																																																																																																																																																			Let Tu218.3450
																																																																																																																																																				Let Ti519.3466
																																																																																																																																																					Int:1
																																																																																																																																																					Let Ta522.3467
																																																																																																																																																						Let Ti520.3468
																																																																																																																																																							Int:3
																																																																																																																																																							Let Td521.3469
																																																																																																																																																								Float:0.000000
																																																																																																																																																								ExtFunApp create_float_array Ti520.3468,Td521.3469,
																																																																																																																																																						Put array.3449 Ti519.3466 Ta522.3467
																																																																																																																																																				Let Tu217.3451
																																																																																																																																																					Let Ti523.3462
																																																																																																																																																						Int:2
																																																																																																																																																						Let Ta526.3463
																																																																																																																																																							Let Ti524.3464
																																																																																																																																																								Int:3
																																																																																																																																																								Let Td525.3465
																																																																																																																																																									Float:0.000000
																																																																																																																																																									ExtFunApp create_float_array Ti524.3464,Td525.3465,
																																																																																																																																																							Put array.3449 Ti523.3462 Ta526.3463
																																																																																																																																																					Let Tu216.3452
																																																																																																																																																						Let Ti527.3458
																																																																																																																																																							Int:3
																																																																																																																																																							Let Ta530.3459
																																																																																																																																																								Let Ti528.3460
																																																																																																																																																									Int:3
																																																																																																																																																									Let Td529.3461
																																																																																																																																																										Float:0.000000
																																																																																																																																																										ExtFunApp create_float_array Ti528.3460,Td529.3461,
																																																																																																																																																								Put array.3449 Ti527.3458 Ta530.3459
																																																																																																																																																						Let Tu215.3453
																																																																																																																																																							Let Ti531.3454
																																																																																																																																																								Int:4
																																																																																																																																																								Let Ta534.3455
																																																																																																																																																									Let Ti532.3456
																																																																																																																																																										Int:3
																																																																																																																																																										Let Td533.3457
																																																																																																																																																											Float:0.000000
																																																																																																																																																											ExtFunApp create_float_array Ti532.3456,Td533.3457,
																																																																																																																																																									Put array.3449 Ti531.3454 Ta534.3455
																																																																																																																																																							Var array.3449
																																																																																																																																																	LetRec create_pixel.3054 Tu219.3055 
																																																																																																																																																		Let m_rgb.3428
																																																																																																																																																			Let Ti504.3446
																																																																																																																																																				Int:3
																																																																																																																																																				Let Td505.3447
																																																																																																																																																					Float:0.000000
																																																																																																																																																					ExtFunApp create_float_array Ti504.3446,Td505.3447,
																																																																																																																																																			Let m_isect_ps.3429
																																																																																																																																																				Let Tu506.3445
																																																																																																																																																					Unit
																																																																																																																																																					App create_float5x3array.3052Tu506.3445 
																																																																																																																																																				Let m_sids.3430
																																																																																																																																																					Let Ti507.3443
																																																																																																																																																						Int:5
																																																																																																																																																						Let Ti508.3444
																																																																																																																																																							Int:0
																																																																																																																																																							ExtFunApp create_array Ti507.3443,Ti508.3444,
																																																																																																																																																					Let m_cdif.3431
																																																																																																																																																						Let Ti509.3441
																																																																																																																																																							Int:5
																																																																																																																																																							Let Ti510.3442
																																																																																																																																																								Int:0
																																																																																																																																																								ExtFunApp create_array Ti509.3441,Ti510.3442,
																																																																																																																																																						Let m_engy.3432
																																																																																																																																																							Let Tu511.3440
																																																																																																																																																								Unit
																																																																																																																																																								App create_float5x3array.3052Tu511.3440 
																																																																																																																																																							Let m_r20p.3433
																																																																																																																																																								Let Tu512.3439
																																																																																																																																																									Unit
																																																																																																																																																									App create_float5x3array.3052Tu512.3439 
																																																																																																																																																								Let m_gid.3434
																																																																																																																																																									Let Ti513.3437
																																																																																																																																																										Int:1
																																																																																																																																																										Let Ti514.3438
																																																																																																																																																											Int:0
																																																																																																																																																											ExtFunApp create_array Ti513.3437,Ti514.3438,
																																																																																																																																																									Let m_nvectors.3435
																																																																																																																																																										Let Tu515.3436
																																																																																																																																																											Unit
																																																																																																																																																											App create_float5x3array.3052Tu515.3436 
																																																																																																																																																										Tuple (m_rgb.3428,m_isect_ps.3429,m_sids.3430,m_cdif.3431,m_engy.3432,m_r20p.3433,m_gid.3434,m_nvectors.3435,)
																																																																																																																																																		LetRec init_line_elements.3056 line.3057 n.3058 
																																																																																																																																																			Let Ti499.3422
																																																																																																																																																				Int:0
																																																																																																																																																				IfLE Ti499.3422 n.3058
																																																																																																																																																					Let Tu220.3423
																																																																																																																																																						Let Tt501.3426
																																																																																																																																																							Let Tu500.3427
																																																																																																																																																								Unit
																																																																																																																																																								App create_pixel.3054Tu500.3427 
																																																																																																																																																							Put line.3057 n.3058 Tt501.3426
																																																																																																																																																						Let Ti503.3424
																																																																																																																																																							Let Ti502.3425
																																																																																																																																																								Int:1
																																																																																																																																																								Sub n.3058 Ti502.3425
																																																																																																																																																							App init_line_elements.3056line.3057 Ti503.3424 
																																																																																																																																																					Var line.3057
																																																																																																																																																			LetRec create_pixelline.3059 Tu221.3060 
																																																																																																																																																				Let line.3411
																																																																																																																																																					Let Ti491.3417
																																																																																																																																																						Let Ta489.3420
																																																																																																																																																							ExtArray 154
																																																																																																																																																							Let Ti490.3421
																																																																																																																																																								Int:0
																																																																																																																																																								Get Ta489.3420 Ti490.3421
																																																																																																																																																						Let Tt493.3418
																																																																																																																																																							Let Tu492.3419
																																																																																																																																																								Unit
																																																																																																																																																								App create_pixel.3054Tu492.3419 
																																																																																																																																																							ExtFunApp create_array Ti491.3417,Tt493.3418,
																																																																																																																																																					Let Ti498.3412
																																																																																																																																																						Let Ti496.3413
																																																																																																																																																							Let Ta494.3415
																																																																																																																																																								ExtArray 154
																																																																																																																																																								Let Ti495.3416
																																																																																																																																																									Int:0
																																																																																																																																																									Get Ta494.3415 Ti495.3416
																																																																																																																																																							Let Ti497.3414
																																																																																																																																																								Int:2
																																																																																																																																																								Sub Ti496.3413 Ti497.3414
																																																																																																																																																						App init_line_elements.3056line.3411 Ti498.3412 
																																																																																																																																																				LetRec tan.3061 x.3062 
																																																																																																																																																					Let Td487.3409
																																																																																																																																																						App sin.2625x.3062 
																																																																																																																																																						Let Td488.3410
																																																																																																																																																							App cos.2627x.3062 
																																																																																																																																																							FDiv Td487.3409 Td488.3410
																																																																																																																																																					LetRec adjust_position.3063 h.3064 ratio.3065 
																																																																																																																																																						Let l.3401
																																																																																																																																																							Let Td484.3407
																																																																																																																																																								Let Td483.3408
																																																																																																																																																									Float:0.100000
																																																																																																																																																									FDiv h.3064 h.3064 Td483.3408
																																																																																																																																																								sqrt Td484.3407
																																																																																																																																																							Let tan_h.3402
																																																																																																																																																								Let Td485.3406
																																																																																																																																																									Float:1.000000
																																																																																																																																																									FDiv Td485.3406 l.3401
																																																																																																																																																								Let theta_h.3403
																																																																																																																																																									App atan.2629tan_h.3402 
																																																																																																																																																									Let tan_m.3404
																																																																																																																																																										Let Td486.3405
																																																																																																																																																											FMul theta_h.3403 ratio.3065
																																																																																																																																																											App tan.3061Td486.3405 
																																																																																																																																																										FMul tan_m.3404 l.3401
																																																																																																																																																						LetRec calc_dirvec.3066 icount.3067 x.3068 y.3069 rx.3070 ry.3071 group_id.3072 index.3073 
																																																																																																																																																							Let Ti441.3348
																																																																																																																																																								Int:5
																																																																																																																																																								IfLE Ti441.3348 icount.3067
																																																																																																																																																									Let l.3353
																																																																																																																																																										Let Td446.3396
																																																																																																																																																											Let Td444.3397
																																																																																																																																																												Let Td442.3399
																																																																																																																																																													App fsqr.2598x.3068 
																																																																																																																																																													Let Td443.3400
																																																																																																																																																														App fsqr.2598y.3069 
																																																																																																																																																														FAdd Td442.3399 Td443.3400
																																																																																																																																																												Let Td445.3398
																																																																																																																																																													Float:1.000000
																																																																																																																																																													FAdd Td444.3397 Td445.3398
																																																																																																																																																											sqrt Td446.3396
																																																																																																																																																										Let vx.3354
																																																																																																																																																											FDiv x.3068 l.3353
																																																																																																																																																											Let vy.3355
																																																																																																																																																												FDiv y.3069 l.3353
																																																																																																																																																												Let vz.3356
																																																																																																																																																													Let Td447.3395
																																																																																																																																																														Float:1.000000
																																																																																																																																																														FDiv Td447.3395 l.3353
																																																																																																																																																													Let dgroup.3357
																																																																																																																																																														Let Ta448.3394
																																																																																																																																																															ExtArray 179
																																																																																																																																																															Get Ta448.3394 group_id.3072
																																																																																																																																																														Let Tu226.3358
																																																																																																																																																															Let Ta450.3392
																																																																																																																																																																Let Tt449.3393
																																																																																																																																																																	Get dgroup.3357 index.3073
																																																																																																																																																																	App d_vec.2746Tt449.3393 
																																																																																																																																																																App vecset.2639Ta450.3392 vx.3354 vy.3355 vz.3356 
																																																																																																																																																															Let Tu225.3359
																																																																																																																																																																Let Ta454.3387
																																																																																																																																																																	Let Tt453.3389
																																																																																																																																																																		Let Ti452.3390
																																																																																																																																																																			Let Ti451.3391
																																																																																																																																																																				Int:40
																																																																																																																																																																				Add index.3073 Ti451.3391
																																																																																																																																																																			Get dgroup.3357 Ti452.3390
																																																																																																																																																																		App d_vec.2746Tt453.3389 
																																																																																																																																																																	Let Td455.3388
																																																																																																																																																																		App fneg.2594vy.3355 
																																																																																																																																																																		App vecset.2639Ta454.3387 vx.3354 vz.3356 Td455.3388 
																																																																																																																																																																Let Tu224.3360
																																																																																																																																																																	Let Ta459.3381
																																																																																																																																																																		Let Tt458.3384
																																																																																																																																																																			Let Ti457.3385
																																																																																																																																																																				Let Ti456.3386
																																																																																																																																																																					Int:80
																																																																																																																																																																					Add index.3073 Ti456.3386
																																																																																																																																																																				Get dgroup.3357 Ti457.3385
																																																																																																																																																																			App d_vec.2746Tt458.3384 
																																																																																																																																																																		Let Td460.3382
																																																																																																																																																																			App fneg.2594vx.3354 
																																																																																																																																																																			Let Td461.3383
																																																																																																																																																																				App fneg.2594vy.3355 
																																																																																																																																																																				App vecset.2639Ta459.3381 vz.3356 Td460.3382 Td461.3383 
																																																																																																																																																																	Let Tu223.3361
																																																																																																																																																																		Let Ta465.3374
																																																																																																																																																																			Let Tt464.3378
																																																																																																																																																																				Let Ti463.3379
																																																																																																																																																																					Let Ti462.3380
																																																																																																																																																																						Int:1
																																																																																																																																																																						Add index.3073 Ti462.3380
																																																																																																																																																																					Get dgroup.3357 Ti463.3379
																																																																																																																																																																				App d_vec.2746Tt464.3378 
																																																																																																																																																																			Let Td466.3375
																																																																																																																																																																				App fneg.2594vx.3354 
																																																																																																																																																																				Let Td467.3376
																																																																																																																																																																					App fneg.2594vy.3355 
																																																																																																																																																																					Let Td468.3377
																																																																																																																																																																						App fneg.2594vz.3356 
																																																																																																																																																																						App vecset.2639Ta465.3374 Td466.3375 Td467.3376 Td468.3377 
																																																																																																																																																																		Let Tu222.3362
																																																																																																																																																																			Let Ta472.3368
																																																																																																																																																																				Let Tt471.3371
																																																																																																																																																																					Let Ti470.3372
																																																																																																																																																																						Let Ti469.3373
																																																																																																																																																																							Int:41
																																																																																																																																																																							Add index.3073 Ti469.3373
																																																																																																																																																																						Get dgroup.3357 Ti470.3372
																																																																																																																																																																					App d_vec.2746Tt471.3371 
																																																																																																																																																																				Let Td473.3369
																																																																																																																																																																					App fneg.2594vx.3354 
																																																																																																																																																																					Let Td474.3370
																																																																																																																																																																						App fneg.2594vz.3356 
																																																																																																																																																																						App vecset.2639Ta472.3368 Td473.3369 Td474.3370 vy.3355 
																																																																																																																																																																			Let Ta478.3363
																																																																																																																																																																				Let Tt477.3365
																																																																																																																																																																					Let Ti476.3366
																																																																																																																																																																						Let Ti475.3367
																																																																																																																																																																							Int:81
																																																																																																																																																																							Add index.3073 Ti475.3367
																																																																																																																																																																						Get dgroup.3357 Ti476.3366
																																																																																																																																																																					App d_vec.2746Tt477.3365 
																																																																																																																																																																				Let Td479.3364
																																																																																																																																																																					App fneg.2594vz.3356 
																																																																																																																																																																					App vecset.2639Ta478.3363 Td479.3364 vx.3354 vy.3355 
																																																																																																																																																									Let x2.3349
																																																																																																																																																										App adjust_position.3063y.3069 rx.3070 
																																																																																																																																																										Let Ti481.3350
																																																																																																																																																											Let Ti480.3352
																																																																																																																																																												Int:1
																																																																																																																																																												Add icount.3067 Ti480.3352
																																																																																																																																																											Let Td482.3351
																																																																																																																																																												App adjust_position.3063x2.3349 ry.3071 
																																																																																																																																																												App calc_dirvec.3066Ti481.3350 x2.3349 Td482.3351 rx.3070 ry.3071 group_id.3072 index.3073 
																																																																																																																																																							LetRec calc_dirvecs.3074 col.3075 ry.3076 group_id.3077 index.3078 
																																																																																																																																																								Let Ti422.3325
																																																																																																																																																									Int:0
																																																																																																																																																									IfLE Ti422.3325 col.3075
																																																																																																																																																										Let rx.3326
																																																																																																																																																											Let Td423.3345
																																																																																																																																																												App float_of_int.2612col.3075 
																																																																																																																																																												Let Td424.3346
																																																																																																																																																													Float:0.200000
																																																																																																																																																													Let Td425.3347
																																																																																																																																																														Float:0.900000
																																																																																																																																																														FMSub Td423.3345 Td424.3346 Td425.3347
																																																																																																																																																											Let Tu228.3327
																																																																																																																																																												Let Ti426.3342
																																																																																																																																																													Int:0
																																																																																																																																																													Let Td427.3343
																																																																																																																																																														Float:0.000000
																																																																																																																																																														Let Td428.3344
																																																																																																																																																															Float:0.000000
																																																																																																																																																															App calc_dirvec.3066Ti426.3342 Td427.3343 Td428.3344 rx.3326 ry.3076 group_id.3077 index.3078 
																																																																																																																																																												Let rx2.3328
																																																																																																																																																													Let Td429.3339
																																																																																																																																																														App float_of_int.2612col.3075 
																																																																																																																																																														Let Td430.3340
																																																																																																																																																															Float:0.200000
																																																																																																																																																															Let Td431.3341
																																																																																																																																																																Float:0.100000
																																																																																																																																																																FDiv Td429.3339 Td430.3340 Td431.3341
																																																																																																																																																													Let Tu227.3329
																																																																																																																																																														Let Ti432.3334
																																																																																																																																																															Int:0
																																																																																																																																																															Let Td433.3335
																																																																																																																																																																Float:0.000000
																																																																																																																																																																Let Td434.3336
																																																																																																																																																																	Float:0.000000
																																																																																																																																																																	Let Ti436.3337
																																																																																																																																																																		Let Ti435.3338
																																																																																																																																																																			Int:2
																																																																																																																																																																			Add index.3078 Ti435.3338
																																																																																																																																																																		App calc_dirvec.3066Ti432.3334 Td433.3335 Td434.3336 rx2.3328 ry.3076 group_id.3077 Ti436.3337 
																																																																																																																																																														Let Ti438.3330
																																																																																																																																																															Let Ti437.3333
																																																																																																																																																																Int:1
																																																																																																																																																																Sub col.3075 Ti437.3333
																																																																																																																																																															Let Ti440.3331
																																																																																																																																																																Let Ti439.3332
																																																																																																																																																																	Int:1
																																																																																																																																																																	App add_mod5.2636group_id.3077 Ti439.3332 
																																																																																																																																																																App calc_dirvecs.3074Ti438.3330 ry.3076 Ti440.3331 index.3078 
																																																																																																																																																										Unit
																																																																																																																																																								LetRec calc_dirvec_rows.3079 row.3080 group_id.3081 index.3082 
																																																																																																																																																									Let Ti411.3312
																																																																																																																																																										Int:0
																																																																																																																																																										IfLE Ti411.3312 row.3080
																																																																																																																																																											Let ry.3313
																																																																																																																																																												Let Td412.3322
																																																																																																																																																													App float_of_int.2612row.3080 
																																																																																																																																																													Let Td413.3323
																																																																																																																																																														Float:0.200000
																																																																																																																																																														Let Td414.3324
																																																																																																																																																															Float:0.900000
																																																																																																																																																															FMSub Td412.3322 Td413.3323 Td414.3324
																																																																																																																																																												Let Tu229.3314
																																																																																																																																																													Let Ti415.3321
																																																																																																																																																														Int:4
																																																																																																																																																														App calc_dirvecs.3074Ti415.3321 ry.3313 group_id.3081 index.3082 
																																																																																																																																																													Let Ti417.3315
																																																																																																																																																														Let Ti416.3320
																																																																																																																																																															Int:1
																																																																																																																																																															Sub row.3080 Ti416.3320
																																																																																																																																																														Let Ti419.3316
																																																																																																																																																															Let Ti418.3319
																																																																																																																																																																Int:2
																																																																																																																																																																App add_mod5.2636group_id.3081 Ti418.3319 
																																																																																																																																																															Let Ti421.3317
																																																																																																																																																																Let Ti420.3318
																																																																																																																																																																	Int:4
																																																																																																																																																																	Add index.3082 Ti420.3318
																																																																																																																																																																App calc_dirvec_rows.3079Ti417.3315 Ti419.3316 Ti421.3317 
																																																																																																																																																											Unit
																																																																																																																																																									LetRec create_dirvec.3083 Tu230.3084 
																																																																																																																																																										Let v3.3305
																																																																																																																																																											Let Ti406.3310
																																																																																																																																																												Int:3
																																																																																																																																																												Let Td407.3311
																																																																																																																																																													Float:0.000000
																																																																																																																																																													ExtFunApp create_float_array Ti406.3310,Td407.3311,
																																																																																																																																																											Let consts.3306
																																																																																																																																																												Let Ti410.3307
																																																																																																																																																													Let Ta408.3308
																																																																																																																																																														ExtArray 0
																																																																																																																																																														Let Ti409.3309
																																																																																																																																																															Int:0
																																																																																																																																																															Get Ta408.3308 Ti409.3309
																																																																																																																																																													ExtFunApp create_array Ti410.3307,v3.3305,
																																																																																																																																																												Tuple (v3.3305,consts.3306,)
																																																																																																																																																										LetRec create_dirvec_elements.3085 d.3086 index.3087 
																																																																																																																																																											Let Ti401.3299
																																																																																																																																																												Int:0
																																																																																																																																																												IfLE Ti401.3299 index.3087
																																																																																																																																																													Let Tu231.3300
																																																																																																																																																														Let Tt403.3303
																																																																																																																																																															Let Tu402.3304
																																																																																																																																																																Unit
																																																																																																																																																																App create_dirvec.3083Tu402.3304 
																																																																																																																																																															Put d.3086 index.3087 Tt403.3303
																																																																																																																																																														Let Ti405.3301
																																																																																																																																																															Let Ti404.3302
																																																																																																																																																																Int:1
																																																																																																																																																																Sub index.3087 Ti404.3302
																																																																																																																																																															App create_dirvec_elements.3085d.3086 Ti405.3301 
																																																																																																																																																													Unit
																																																																																																																																																											LetRec create_dirvecs.3088 index.3089 
																																																																																																																																																												Let Ti390.3286
																																																																																																																																																													Int:0
																																																																																																																																																													IfLE Ti390.3286 index.3089
																																																																																																																																																														Let Tu233.3287
																																																																																																																																																															Let Ta391.3294
																																																																																																																																																																ExtArray 179
																																																																																																																																																																Let Ta395.3295
																																																																																																																																																																	Let Ti392.3296
																																																																																																																																																																		Int:120
																																																																																																																																																																		Let Tt394.3297
																																																																																																																																																																			Let Tu393.3298
																																																																																																																																																																				Unit
																																																																																																																																																																				App create_dirvec.3083Tu393.3298 
																																																																																																																																																																			ExtFunApp create_array Ti392.3296,Tt394.3297,
																																																																																																																																																																	Put Ta391.3294 index.3089 Ta395.3295
																																																																																																																																																															Let Tu232.3288
																																																																																																																																																																Let Ta397.3291
																																																																																																																																																																	Let Ta396.3293
																																																																																																																																																																		ExtArray 179
																																																																																																																																																																		Get Ta396.3293 index.3089
																																																																																																																																																																	Let Ti398.3292
																																																																																																																																																																		Int:118
																																																																																																																																																																		App create_dirvec_elements.3085Ta397.3291 Ti398.3292 
																																																																																																																																																																Let Ti400.3289
																																																																																																																																																																	Let Ti399.3290
																																																																																																																																																																		Int:1
																																																																																																																																																																		Sub index.3089 Ti399.3290
																																																																																																																																																																	App create_dirvecs.3088Ti400.3289 
																																																																																																																																																														Unit
																																																																																																																																																												LetRec init_dirvec_constants.3090 vecset.3091 index.3092 
																																																																																																																																																													Let Ti386.3281
																																																																																																																																																														Int:0
																																																																																																																																																														IfLE Ti386.3281 index.3092
																																																																																																																																																															Let Tu234.3282
																																																																																																																																																																Let Tt387.3285
																																																																																																																																																																	Get vecset.3091 index.3092
																																																																																																																																																																	App setup_dirvec_constants.2875Tt387.3285 
																																																																																																																																																																Let Ti389.3283
																																																																																																																																																																	Let Ti388.3284
																																																																																																																																																																		Int:1
																																																																																																																																																																		Sub index.3092 Ti388.3284
																																																																																																																																																																	App init_dirvec_constants.3090vecset.3091 Ti389.3283 
																																																																																																																																																															Unit
																																																																																																																																																													LetRec init_vecset_constants.3093 index.3094 
																																																																																																																																																														Let Ti380.3274
																																																																																																																																																															Int:0
																																																																																																																																																															IfLE Ti380.3274 index.3094
																																																																																																																																																																Let Tu235.3275
																																																																																																																																																																	Let Ta382.3278
																																																																																																																																																																		Let Ta381.3280
																																																																																																																																																																			ExtArray 179
																																																																																																																																																																			Get Ta381.3280 index.3094
																																																																																																																																																																		Let Ti383.3279
																																																																																																																																																																			Int:119
																																																																																																																																																																			App init_dirvec_constants.3090Ta382.3278 Ti383.3279 
																																																																																																																																																																	Let Ti385.3276
																																																																																																																																																																		Let Ti384.3277
																																																																																																																																																																			Int:1
																																																																																																																																																																			Sub index.3094 Ti384.3277
																																																																																																																																																																		App init_vecset_constants.3093Ti385.3276 
																																																																																																																																																																Unit
																																																																																																																																																														LetRec init_dirvecs.3095 Tu236.3096 
																																																																																																																																																															Let Tu238.3267
																																																																																																																																																																Let Ti375.3273
																																																																																																																																																																	Int:4
																																																																																																																																																																	App create_dirvecs.3088Ti375.3273 
																																																																																																																																																																Let Tu237.3268
																																																																																																																																																																	Let Ti376.3270
																																																																																																																																																																		Int:9
																																																																																																																																																																		Let Ti377.3271
																																																																																																																																																																			Int:0
																																																																																																																																																																			Let Ti378.3272
																																																																																																																																																																				Int:0
																																																																																																																																																																				App calc_dirvec_rows.3079Ti376.3270 Ti377.3271 Ti378.3272 
																																																																																																																																																																	Let Ti379.3269
																																																																																																																																																																		Int:4
																																																																																																																																																																		App init_vecset_constants.3093Ti379.3269 
																																																																																																																																																															LetRec add_reflection.3097 index.3098 surface_id.3099 bright.3100 v0.3101 v1.3102 v2.3103 
																																																																																																																																																																Let dvec.3260
																																																																																																																																																																	Let Tu371.3266
																																																																																																																																																																		Unit
																																																																																																																																																																		App create_dirvec.3083Tu371.3266 
																																																																																																																																																																	Let Tu240.3261
																																																																																																																																																																		Let Ta372.3265
																																																																																																																																																																			App d_vec.2746dvec.3260 
																																																																																																																																																																			App vecset.2639Ta372.3265 v0.3101 v1.3102 v2.3103 
																																																																																																																																																																		Let Tu239.3262
																																																																																																																																																																			App setup_dirvec_constants.2875dvec.3260 
																																																																																																																																																																			Let Ta373.3263
																																																																																																																																																																				ExtArray 254
																																																																																																																																																																				Let Tt374.3264
																																																																																																																																																																					Tuple (surface_id.3099,dvec.3260,bright.3100,)
																																																																																																																																																																					Put Ta373.3263 index.3098 Tt374.3264
																																																																																																																																																																LetRec setup_rect_reflection.3104 obj_id.3105 obj.3106 
																																																																																																																																																																	Let sid.3215
																																																																																																																																																																		ShiftL2 obj_id.3105
																																																																																																																																																																		Let nr.3216
																																																																																																																																																																			Let Ta335.3258
																																																																																																																																																																				ExtArray 434
																																																																																																																																																																				Let Ti336.3259
																																																																																																																																																																					Int:0
																																																																																																																																																																					Get Ta335.3258 Ti336.3259
																																																																																																																																																																			Let br.3217
																																																																																																																																																																				Let Td337.3256
																																																																																																																																																																					Float:1.000000
																																																																																																																																																																					Let Td338.3257
																																																																																																																																																																						App o_diffuse.2709obj.3106 
																																																																																																																																																																						FSub Td337.3256 Td338.3257
																																																																																																																																																																				Let n0.3218
																																																																																																																																																																					Let Td341.3253
																																																																																																																																																																						Let Ta339.3254
																																																																																																																																																																							ExtArray 78
																																																																																																																																																																							Let Ti340.3255
																																																																																																																																																																								Int:0
																																																																																																																																																																								Get Ta339.3254 Ti340.3255
																																																																																																																																																																						App fneg.2594Td341.3253 
																																																																																																																																																																					Let n1.3219
																																																																																																																																																																						Let Td344.3250
																																																																																																																																																																							Let Ta342.3251
																																																																																																																																																																								ExtArray 78
																																																																																																																																																																								Let Ti343.3252
																																																																																																																																																																									Int:1
																																																																																																																																																																									Get Ta342.3251 Ti343.3252
																																																																																																																																																																							App fneg.2594Td344.3250 
																																																																																																																																																																						Let n2.3220
																																																																																																																																																																							Let Td347.3247
																																																																																																																																																																								Let Ta345.3248
																																																																																																																																																																									ExtArray 78
																																																																																																																																																																									Let Ti346.3249
																																																																																																																																																																										Int:2
																																																																																																																																																																										Get Ta345.3248 Ti346.3249
																																																																																																																																																																								App fneg.2594Td347.3247 
																																																																																																																																																																							Let Tu243.3221
																																																																																																																																																																								Let Ti349.3242
																																																																																																																																																																									Let Ti348.3246
																																																																																																																																																																										Int:1
																																																																																																																																																																										Add sid.3215 Ti348.3246
																																																																																																																																																																									Let Td352.3243
																																																																																																																																																																										Let Ta350.3244
																																																																																																																																																																											ExtArray 78
																																																																																																																																																																											Let Ti351.3245
																																																																																																																																																																												Int:0
																																																																																																																																																																												Get Ta350.3244 Ti351.3245
																																																																																																																																																																										App add_reflection.3097nr.3216 Ti349.3242 br.3217 Td352.3243 n1.3219 n2.3220 
																																																																																																																																																																								Let Tu242.3222
																																																																																																																																																																									Let Ti354.3235
																																																																																																																																																																										Let Ti353.3241
																																																																																																																																																																											Int:1
																																																																																																																																																																											Add nr.3216 Ti353.3241
																																																																																																																																																																										Let Ti356.3236
																																																																																																																																																																											Let Ti355.3240
																																																																																																																																																																												Int:2
																																																																																																																																																																												Add sid.3215 Ti355.3240
																																																																																																																																																																											Let Td359.3237
																																																																																																																																																																												Let Ta357.3238
																																																																																																																																																																													ExtArray 78
																																																																																																																																																																													Let Ti358.3239
																																																																																																																																																																														Int:1
																																																																																																																																																																														Get Ta357.3238 Ti358.3239
																																																																																																																																																																												App add_reflection.3097Ti354.3235 Ti356.3236 br.3217 n0.3218 Td359.3237 n2.3220 
																																																																																																																																																																									Let Tu241.3223
																																																																																																																																																																										Let Ti361.3228
																																																																																																																																																																											Let Ti360.3234
																																																																																																																																																																												Int:2
																																																																																																																																																																												Add nr.3216 Ti360.3234
																																																																																																																																																																											Let Ti363.3229
																																																																																																																																																																												Let Ti362.3233
																																																																																																																																																																													Int:3
																																																																																																																																																																													Add sid.3215 Ti362.3233
																																																																																																																																																																												Let Td366.3230
																																																																																																																																																																													Let Ta364.3231
																																																																																																																																																																														ExtArray 78
																																																																																																																																																																														Let Ti365.3232
																																																																																																																																																																															Int:2
																																																																																																																																																																															Get Ta364.3231 Ti365.3232
																																																																																																																																																																													App add_reflection.3097Ti361.3228 Ti363.3229 br.3217 n0.3218 n1.3219 Td366.3230 
																																																																																																																																																																										Let Ta367.3224
																																																																																																																																																																											ExtArray 434
																																																																																																																																																																											Let Ti368.3225
																																																																																																																																																																												Int:0
																																																																																																																																																																												Let Ti370.3226
																																																																																																																																																																													Let Ti369.3227
																																																																																																																																																																														Int:3
																																																																																																																																																																														Add nr.3216 Ti369.3227
																																																																																																																																																																													Put Ta367.3224 Ti368.3225 Ti370.3226
																																																																																																																																																																	LetRec setup_surface_reflection.3107 obj_id.3108 obj.3109 
																																																																																																																																																																		Let sid.3177
																																																																																																																																																																			Let Ti302.3213
																																																																																																																																																																				ShiftL2 obj_id.3108
																																																																																																																																																																				Let Ti303.3214
																																																																																																																																																																					Int:1
																																																																																																																																																																					Add Ti302.3213 Ti303.3214
																																																																																																																																																																			Let nr.3178
																																																																																																																																																																				Let Ta304.3211
																																																																																																																																																																					ExtArray 434
																																																																																																																																																																					Let Ti305.3212
																																																																																																																																																																						Int:0
																																																																																																																																																																						Get Ta304.3211 Ti305.3212
																																																																																																																																																																				Let br.3179
																																																																																																																																																																					Let Td306.3209
																																																																																																																																																																						Float:1.000000
																																																																																																																																																																						Let Td307.3210
																																																																																																																																																																							App o_diffuse.2709obj.3109 
																																																																																																																																																																							FSub Td306.3209 Td307.3210
																																																																																																																																																																					Let p.3180
																																																																																																																																																																						Let Ta308.3207
																																																																																																																																																																							ExtArray 78
																																																																																																																																																																							Let Ta309.3208
																																																																																																																																																																								App o_param_abc.2701obj.3109 
																																																																																																																																																																								App veciprod.2660Ta308.3207 Ta309.3208 
																																																																																																																																																																						Let Tu244.3181
																																																																																																																																																																							Let Td316.3186
																																																																																																																																																																								Let Td312.3201
																																																																																																																																																																									Let Td310.3205
																																																																																																																																																																										Float:2.000000
																																																																																																																																																																										Let Td311.3206
																																																																																																																																																																											App o_param_a.2695obj.3109 
																																																																																																																																																																											FMul Td310.3205 Td311.3206
																																																																																																																																																																									Let Td315.3202
																																																																																																																																																																										Let Ta313.3203
																																																																																																																																																																											ExtArray 78
																																																																																																																																																																											Let Ti314.3204
																																																																																																																																																																												Int:0
																																																																																																																																																																												Get Ta313.3203 Ti314.3204
																																																																																																																																																																										FMSub Td312.3201 p.3180 Td315.3202
																																																																																																																																																																								Let Td323.3187
																																																																																																																																																																									Let Td319.3195
																																																																																																																																																																										Let Td317.3199
																																																																																																																																																																											Float:2.000000
																																																																																																																																																																											Let Td318.3200
																																																																																																																																																																												App o_param_b.2697obj.3109 
																																																																																																																																																																												FMul Td317.3199 Td318.3200
																																																																																																																																																																										Let Td322.3196
																																																																																																																																																																											Let Ta320.3197
																																																																																																																																																																												ExtArray 78
																																																																																																																																																																												Let Ti321.3198
																																																																																																																																																																													Int:1
																																																																																																																																																																													Get Ta320.3197 Ti321.3198
																																																																																																																																																																											FMSub Td319.3195 p.3180 Td322.3196
																																																																																																																																																																									Let Td330.3188
																																																																																																																																																																										Let Td326.3189
																																																																																																																																																																											Let Td324.3193
																																																																																																																																																																												Float:2.000000
																																																																																																																																																																												Let Td325.3194
																																																																																																																																																																													App o_param_c.2699obj.3109 
																																																																																																																																																																													FMul Td324.3193 Td325.3194
																																																																																																																																																																											Let Td329.3190
																																																																																																																																																																												Let Ta327.3191
																																																																																																																																																																													ExtArray 78
																																																																																																																																																																													Let Ti328.3192
																																																																																																																																																																														Int:2
																																																																																																																																																																														Get Ta327.3191 Ti328.3192
																																																																																																																																																																												FMSub Td326.3189 p.3180 Td329.3190
																																																																																																																																																																										App add_reflection.3097nr.3178 sid.3177 br.3179 Td316.3186 Td323.3187 Td330.3188 
																																																																																																																																																																							Let Ta331.3182
																																																																																																																																																																								ExtArray 434
																																																																																																																																																																								Let Ti332.3183
																																																																																																																																																																									Int:0
																																																																																																																																																																									Let Ti334.3184
																																																																																																																																																																										Let Ti333.3185
																																																																																																																																																																											Int:1
																																																																																																																																																																											Add nr.3178 Ti333.3185
																																																																																																																																																																										Put Ta331.3182 Ti332.3183 Ti334.3184
																																																																																																																																																																		LetRec setup_reflections.3110 obj_id.3111 
																																																																																																																																																																			Let Ti294.3167
																																																																																																																																																																				Int:0
																																																																																																																																																																				IfLE Ti294.3167 obj_id.3111
																																																																																																																																																																					Let obj.3168
																																																																																																																																																																						Let Ta295.3176
																																																																																																																																																																							ExtArray 12
																																																																																																																																																																							Get Ta295.3176 obj_id.3111
																																																																																																																																																																						Let Ti296.3169
																																																																																																																																																																							App o_reflectiontype.2689obj.3168 
																																																																																																																																																																							Let Ti297.3170
																																																																																																																																																																								Int:2
																																																																																																																																																																								IfEq Ti296.3169 Ti297.3170
																																																																																																																																																																									Let Td298.3171
																																																																																																																																																																										Float:1.000000
																																																																																																																																																																										Let Td299.3172
																																																																																																																																																																											App o_diffuse.2709obj.3168 
																																																																																																																																																																											IfLE Td298.3171 Td299.3172
																																																																																																																																																																												Unit
																																																																																																																																																																												Let m_shape.3173
																																																																																																																																																																													App o_form.2687obj.3168 
																																																																																																																																																																													Let Ti300.3174
																																																																																																																																																																														Int:1
																																																																																																																																																																														IfEq m_shape.3173 Ti300.3174
																																																																																																																																																																															App setup_rect_reflection.3104obj_id.3111 obj.3168 
																																																																																																																																																																															Let Ti301.3175
																																																																																																																																																																																Int:2
																																																																																																																																																																																IfEq m_shape.3173 Ti301.3175
																																																																																																																																																																																	App setup_surface_reflection.3107obj_id.3111 obj.3168 
																																																																																																																																																																																	Unit
																																																																																																																																																																									Unit
																																																																																																																																																																					Unit
																																																																																																																																																																			LetRec rt.3112 size_x.3113 size_y.3114 
																																																																																																																																																																				Let Tu256.3118
																																																																																																																																																																					Let Ta260.3165
																																																																																																																																																																						ExtArray 154
																																																																																																																																																																						Let Ti261.3166
																																																																																																																																																																							Int:0
																																																																																																																																																																							Put Ta260.3165 Ti261.3166 size_x.3113
																																																																																																																																																																					Let Tu255.3119
																																																																																																																																																																						Let Ta262.3163
																																																																																																																																																																							ExtArray 154
																																																																																																																																																																							Let Ti263.3164
																																																																																																																																																																								Int:1
																																																																																																																																																																								Put Ta262.3163 Ti263.3164 size_y.3114
																																																																																																																																																																						Let Tu254.3120
																																																																																																																																																																							Let Ta264.3160
																																																																																																																																																																								ExtArray 156
																																																																																																																																																																								Let Ti265.3161
																																																																																																																																																																									Int:0
																																																																																																																																																																									Let Ti266.3162
																																																																																																																																																																										ShiftR1 size_x.3113
																																																																																																																																																																										Put Ta264.3160 Ti265.3161 Ti266.3162
																																																																																																																																																																							Let Tu253.3121
																																																																																																																																																																								Let Ta267.3157
																																																																																																																																																																									ExtArray 156
																																																																																																																																																																									Let Ti268.3158
																																																																																																																																																																										Int:1
																																																																																																																																																																										Let Ti269.3159
																																																																																																																																																																											ShiftR1 size_y.3114
																																																																																																																																																																											Put Ta267.3157 Ti268.3158 Ti269.3159
																																																																																																																																																																								Let Tu252.3122
																																																																																																																																																																									Let Ta270.3152
																																																																																																																																																																										ExtArray 158
																																																																																																																																																																										Let Ti271.3153
																																																																																																																																																																											Int:0
																																																																																																																																																																											Let Td274.3154
																																																																																																																																																																												Let Td272.3155
																																																																																																																																																																													Float:128.000000
																																																																																																																																																																													Let Td273.3156
																																																																																																																																																																														App float_of_int.2612size_x.3113 
																																																																																																																																																																														FDiv Td272.3155 Td273.3156
																																																																																																																																																																												Put Ta270.3152 Ti271.3153 Td274.3154
																																																																																																																																																																									Let prev.3123
																																																																																																																																																																										Let Tu275.3151
																																																																																																																																																																											Unit
																																																																																																																																																																											App create_pixelline.3059Tu275.3151 
																																																																																																																																																																										Let cur.3124
																																																																																																																																																																											Let Tu276.3150
																																																																																																																																																																												Unit
																																																																																																																																																																												App create_pixelline.3059Tu276.3150 
																																																																																																																																																																											Let next.3125
																																																																																																																																																																												Let Tu277.3149
																																																																																																																																																																													Unit
																																																																																																																																																																													App create_pixelline.3059Tu277.3149 
																																																																																																																																																																												Let Tu251.3126
																																																																																																																																																																													Let Tu278.3148
																																																																																																																																																																														Unit
																																																																																																																																																																														App read_parameter.2777Tu278.3148 
																																																																																																																																																																													Let Tu250.3127
																																																																																																																																																																														Let Tu279.3147
																																																																																																																																																																															Unit
																																																																																																																																																																															App write_ppm_header.3020Tu279.3147 
																																																																																																																																																																														Let Tu249.3128
																																																																																																																																																																															Let Tu280.3146
																																																																																																																																																																																Unit
																																																																																																																																																																																App init_dirvecs.3095Tu280.3146 
																																																																																																																																																																															Let Tu248.3129
																																																																																																																																																																																Let Ta282.3143
																																																																																																																																																																																	Let Tt281.3145
																																																																																																																																																																																		ExtTuple 247
																																																																																																																																																																																		App d_vec.2746Tt281.3145 
																																																																																																																																																																																	Let Ta283.3144
																																																																																																																																																																																		ExtArray 78
																																																																																																																																																																																		App veccpy.2649Ta282.3143 Ta283.3144 
																																																																																																																																																																																Let Tu247.3130
																																																																																																																																																																																	Let Tt284.3142
																																																																																																																																																																																		ExtTuple 247
																																																																																																																																																																																		App setup_dirvec_constants.2875Tt284.3142 
																																																																																																																																																																																	Let Tu246.3131
																																																																																																																																																																																		Let Ti289.3137
																																																																																																																																																																																			Let Ti287.3138
																																																																																																																																																																																				Let Ta285.3140
																																																																																																																																																																																					ExtArray 0
																																																																																																																																																																																					Let Ti286.3141
																																																																																																																																																																																						Int:0
																																																																																																																																																																																						Get Ta285.3140 Ti286.3141
																																																																																																																																																																																				Let Ti288.3139
																																																																																																																																																																																					Int:1
																																																																																																																																																																																					Sub Ti287.3138 Ti288.3139
																																																																																																																																																																																			App setup_reflections.3110Ti289.3137 
																																																																																																																																																																																		Let Tu245.3132
																																																																																																																																																																																			Let Ti290.3135
																																																																																																																																																																																				Int:0
																																																																																																																																																																																				Let Ti291.3136
																																																																																																																																																																																					Int:0
																																																																																																																																																																																					App pretrace_line.3036cur.3124 Ti290.3135 Ti291.3136 
																																																																																																																																																																																			Let Ti292.3133
																																																																																																																																																																																				Int:0
																																																																																																																																																																																				Let Ti293.3134
																																																																																																																																																																																					Int:2
																																																																																																																																																																																					App scan_line.3046Ti292.3133 prev.3123 cur.3124 next.3125 Ti293.3134 
																																																																																																																																																																				Let Tu257.3115
																																																																																																																																																																					Let Ti258.3116
																																																																																																																																																																						Int:128
																																																																																																																																																																						Let Ti259.3117
																																																																																																																																																																							Int:128
																																																																																																																																																																							App rt.3112Ti258.3116 Ti259.3117 
																																																																																																																																																																					Unit
