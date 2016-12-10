LetRec fneg.2613 x.2614 
	FNeg x.2614
	LetRec fhalf.2615 x.2616 
		Let Td2612.6344
			Float:0.500000
			FMul x.2616 Td2612.6344
		LetRec fsqr.2617 x.2618 
			FMul x.2618 x.2618
			LetRec fflag.2619 a.2620 
				Let Td2610.6342
					Float:0.000000
					IfLE Td2610.6342 a.2620
						Int:1
						Let Ti2611.6343
							Int:1
							Neg Ti2611.6343
				LetRec countn.2621 a.2622 b.2623 c.2624 
					IfLE b.2623 a.2622
						Let Ti2607.6339
							Sub a.2622 b.2623
							Let Ti2609.6340
								Let Ti2608.6341
									Int:1
									Add c.2624 Ti2608.6341
								App countn.2621Ti2607.6339 b.2623 Ti2609.6340 
						Var c.2624
					LetRec mymul.2625 a.2626 b.2627 sum.2628 
						Let Ti2603.6335
							Int:0
							IfEq a.2626 Ti2603.6335
								Var sum.2628
								Let Ti2605.6336
									Let Ti2604.6338
										Int:1
										Sub a.2626 Ti2604.6338
									Let Ti2606.6337
										Add sum.2628 b.2627
										App mymul.2625Ti2605.6336 b.2627 Ti2606.6337 
						LetRec print_int.2629 a.2630 
							Let b.6272
								Let Ti2561.6332
									Int:0
									IfLE Ti2561.6332 a.2630
										Var a.2630
										Let Tu1.6333
											Let Ti2562.6334
												Int:45
												printchar Ti2562.6334
											Neg a.2630
								Let x.6273
									Let Ti2563.6330
										Int:10000
										Let Ti2564.6331
											Int:0
											App countn.2621b.6272 Ti2563.6330 Ti2564.6331 
									Let b.6274
										Let Ti2567.6327
											Let Ti2565.6328
												Int:10000
												Let Ti2566.6329
													Int:0
													App mymul.2625x.6273 Ti2565.6328 Ti2566.6329 
											Sub b.6272 Ti2567.6327
										Let flag.6275
											Let Ti2568.6323
												Int:0
												IfLE x.6273 Ti2568.6323
													Int:0
													Let Tu2.6324
														Let Ti2570.6325
															Let Ti2569.6326
																Int:48
																Add Ti2569.6326 x.6273
															printchar Ti2570.6325
														Int:1
											Let x.6276
												Let Ti2571.6321
													Int:1000
													Let Ti2572.6322
														Int:0
														App countn.2621b.6274 Ti2571.6321 Ti2572.6322 
												Let b.6277
													Let Ti2575.6318
														Let Ti2573.6319
															Int:1000
															Let Ti2574.6320
																Int:0
																App mymul.2625x.6276 Ti2573.6319 Ti2574.6320 
														Sub b.6274 Ti2575.6318
													Let flag.6278
														Let Ti2576.6311
															Int:0
															IfLE x.6276 Ti2576.6311
																Let Ti2577.6315
																	Int:1
																	IfEq flag.6275 Ti2577.6315
																		Let Tu4.6316
																			Let Ti2578.6317
																				Int:48
																				printchar Ti2578.6317
																			Int:1
																		Int:0
																Let Tu3.6312
																	Let Ti2580.6313
																		Let Ti2579.6314
																			Int:48
																			Add Ti2579.6314 x.6276
																		printchar Ti2580.6313
																	Int:1
														Let x.6279
															Let Ti2581.6309
																Int:100
																Let Ti2582.6310
																	Int:0
																	App countn.2621b.6277 Ti2581.6309 Ti2582.6310 
															Let b.6280
																Let Ti2585.6306
																	Let Ti2583.6307
																		Int:100
																		Let Ti2584.6308
																			Int:0
																			App mymul.2625x.6279 Ti2583.6307 Ti2584.6308 
																	Sub b.6277 Ti2585.6306
																Let flag.6281
																	Let Ti2586.6299
																		Int:0
																		IfLE x.6279 Ti2586.6299
																			Let Ti2587.6303
																				Int:1
																				IfEq flag.6278 Ti2587.6303
																					Let Tu6.6304
																						Let Ti2588.6305
																							Int:48
																							printchar Ti2588.6305
																						Int:1
																					Int:0
																			Let Tu5.6300
																				Let Ti2590.6301
																					Let Ti2589.6302
																						Int:48
																						Add Ti2589.6302 x.6279
																					printchar Ti2590.6301
																				Int:1
																	Let x.6282
																		Let Ti2591.6297
																			Int:10
																			Let Ti2592.6298
																				Int:0
																				App countn.2621b.6280 Ti2591.6297 Ti2592.6298 
																		Let b.6283
																			Let Ti2595.6294
																				Let Ti2593.6295
																					Int:10
																					Let Ti2594.6296
																						Int:0
																						App mymul.2625x.6282 Ti2593.6295 Ti2594.6296 
																				Sub b.6280 Ti2595.6294
																			Let flag.6284
																				Let Ti2596.6287
																					Int:0
																					IfLE x.6282 Ti2596.6287
																						Let Ti2597.6291
																							Int:1
																							IfEq flag.6281 Ti2597.6291
																								Let Tu8.6292
																									Let Ti2598.6293
																										Int:48
																										printchar Ti2598.6293
																									Int:1
																								Int:0
																						Let Tu7.6288
																							Let Ti2600.6289
																								Let Ti2599.6290
																									Int:48
																									Add Ti2599.6290 x.6282
																								printchar Ti2600.6289
																							Int:1
																				Let Ti2602.6285
																					Let Ti2601.6286
																						Int:48
																						Add Ti2601.6286 b.6283
																					printchar Ti2602.6285
							LetRec sgn.2631 x.2632 
								Let Td2559.6270
									Float:0.000000
									IfEq x.2632 Td2559.6270
										Float:0.000000
										Let Td2560.6271
											Float:0.000000
											IfLE x.2632 Td2560.6271
												Float:-1.000000
												Float:1.000000
								LetRec fneg_cond.2633 cond.2634 x.2635 
									Let Ti2558.6269
										Int:0
										IfEq cond.2634 Ti2558.6269
											App fneg.2613x.2635 
											Var x.2635
									LetRec add_mod5.2636 x.2637 y.2638 
										Let sum.6266
											Add x.2637 y.2638
											Let Ti2556.6267
												Int:5
												IfLE Ti2556.6267 sum.6266
													Let Ti2557.6268
														Int:5
														Sub sum.6266 Ti2557.6268
													Var sum.6266
										LetRec vecset.2639 v.2640 x.2641 y.2642 z.2643 
											Let Tu10.6261
												Let Ti2553.6265
													Int:0
													Put v.2640 Ti2553.6265 x.2641
												Let Tu9.6262
													Let Ti2554.6264
														Int:1
														Put v.2640 Ti2554.6264 y.2642
													Let Ti2555.6263
														Int:2
														Put v.2640 Ti2555.6263 z.2643
											LetRec vecfill.2644 v.2645 elem.2646 
												Let Tu12.6256
													Let Ti2550.6260
														Int:0
														Put v.2645 Ti2550.6260 elem.2646
													Let Tu11.6257
														Let Ti2551.6259
															Int:1
															Put v.2645 Ti2551.6259 elem.2646
														Let Ti2552.6258
															Int:2
															Put v.2645 Ti2552.6258 elem.2646
												LetRec vecbzero.2647 v.2648 
													Let Td2549.6255
														Float:0.000000
														App vecfill.2644v.2648 Td2549.6255 
													LetRec veccpy.2649 dest.2650 src.2651 
														Let Tu14.6244
															Let Ti2540.6252
																Int:0
																Let Td2542.6253
																	Let Ti2541.6254
																		Int:0
																		Get src.2651 Ti2541.6254
																	Put dest.2650 Ti2540.6252 Td2542.6253
															Let Tu13.6245
																Let Ti2543.6249
																	Int:1
																	Let Td2545.6250
																		Let Ti2544.6251
																			Int:1
																			Get src.2651 Ti2544.6251
																		Put dest.2650 Ti2543.6249 Td2545.6250
																Let Ti2546.6246
																	Int:2
																	Let Td2548.6247
																		Let Ti2547.6248
																			Int:2
																			Get src.2651 Ti2547.6248
																		Put dest.2650 Ti2546.6246 Td2548.6247
														LetRec vecdist2.2652 p.2653 q.2654 
															Let Td2533.6225
																Let Td2526.6232
																	Let Td2525.6239
																		Let Td2522.6240
																			Let Ti2521.6243
																				Int:0
																				Get p.2653 Ti2521.6243
																			Let Td2524.6241
																				Let Ti2523.6242
																					Int:0
																					Get q.2654 Ti2523.6242
																				FSub Td2522.6240 Td2524.6241
																		App fsqr.2617Td2525.6239 
																	Let Td2532.6233
																		Let Td2531.6234
																			Let Td2528.6235
																				Let Ti2527.6238
																					Int:1
																					Get p.2653 Ti2527.6238
																				Let Td2530.6236
																					Let Ti2529.6237
																						Int:1
																						Get q.2654 Ti2529.6237
																					FSub Td2528.6235 Td2530.6236
																			App fsqr.2617Td2531.6234 
																		FAdd Td2526.6232 Td2532.6233
																Let Td2539.6226
																	Let Td2538.6227
																		Let Td2535.6228
																			Let Ti2534.6231
																				Int:2
																				Get p.2653 Ti2534.6231
																			Let Td2537.6229
																				Let Ti2536.6230
																					Int:2
																					Get q.2654 Ti2536.6230
																				FSub Td2535.6228 Td2537.6229
																		App fsqr.2617Td2538.6227 
																	FAdd Td2533.6225 Td2539.6226
															LetRec vecunit.2655 v.2656 
																Let il.6196
																	Let Td2495.6211
																		Float:1.000000
																		Let Td2507.6212
																			Let Td2506.6214
																				Let Td2502.6215
																					Let Td2498.6219
																						Let Td2497.6223
																							Let Ti2496.6224
																								Int:0
																								Get v.2656 Ti2496.6224
																							App fsqr.2617Td2497.6223 
																						Let Td2501.6220
																							Let Td2500.6221
																								Let Ti2499.6222
																									Int:1
																									Get v.2656 Ti2499.6222
																								App fsqr.2617Td2500.6221 
																							FAdd Td2498.6219 Td2501.6220
																					Let Td2505.6216
																						Let Td2504.6217
																							Let Ti2503.6218
																								Int:2
																								Get v.2656 Ti2503.6218
																							App fsqr.2617Td2504.6217 
																						FAdd Td2502.6215 Td2505.6216
																				sqrt Td2506.6214
																			Let Td2508.6213
																				FReciprocal Td2507.6212
																				FMul Td2495.6211 Td2508.6213
																	Let Tu16.6197
																		Let Ti2509.6207
																			Int:0
																			Let Td2512.6208
																				Let Td2511.6209
																					Let Ti2510.6210
																						Int:0
																						Get v.2656 Ti2510.6210
																					FMul Td2511.6209 il.6196
																				Put v.2656 Ti2509.6207 Td2512.6208
																		Let Tu15.6198
																			Let Ti2513.6203
																				Int:1
																				Let Td2516.6204
																					Let Td2515.6205
																						Let Ti2514.6206
																							Int:1
																							Get v.2656 Ti2514.6206
																						FMul Td2515.6205 il.6196
																					Put v.2656 Ti2513.6203 Td2516.6204
																			Let Ti2517.6199
																				Int:2
																				Let Td2520.6200
																					Let Td2519.6201
																						Let Ti2518.6202
																							Int:2
																							Get v.2656 Ti2518.6202
																						FMul Td2519.6201 il.6196
																					Put v.2656 Ti2517.6199 Td2520.6200
																LetRec vecunit_sgn.2657 v.2658 inv.2659 
																	Let l.6163
																		Let Td2476.6185
																			Let Td2472.6186
																				Let Td2468.6190
																					Let Td2467.6194
																						Let Ti2466.6195
																							Int:0
																							Get v.2658 Ti2466.6195
																						App fsqr.2617Td2467.6194 
																					Let Td2471.6191
																						Let Td2470.6192
																							Let Ti2469.6193
																								Int:1
																								Get v.2658 Ti2469.6193
																							App fsqr.2617Td2470.6192 
																						FAdd Td2468.6190 Td2471.6191
																				Let Td2475.6187
																					Let Td2474.6188
																						Let Ti2473.6189
																							Int:2
																							Get v.2658 Ti2473.6189
																						App fsqr.2617Td2474.6188 
																					FAdd Td2472.6186 Td2475.6187
																			sqrt Td2476.6185
																		Let il.6164
																			Let Td2477.6179
																				Float:0.000000
																				IfEq l.6163 Td2477.6179
																					Float:1.000000
																					Let Ti2478.6180
																						Int:0
																						IfEq inv.2659 Ti2478.6180
																							Let Td2479.6183
																								Float:1.000000
																								Let Td2480.6184
																									FReciprocal l.6163
																									FMul Td2479.6183 Td2480.6184
																							Let Td2481.6181
																								Float:-1.000000
																								Let Td2482.6182
																									FReciprocal l.6163
																									FMul Td2481.6181 Td2482.6182
																			Let Tu18.6165
																				Let Ti2483.6175
																					Int:0
																					Let Td2486.6176
																						Let Td2485.6177
																							Let Ti2484.6178
																								Int:0
																								Get v.2658 Ti2484.6178
																							FMul Td2485.6177 il.6164
																						Put v.2658 Ti2483.6175 Td2486.6176
																				Let Tu17.6166
																					Let Ti2487.6171
																						Int:1
																						Let Td2490.6172
																							Let Td2489.6173
																								Let Ti2488.6174
																									Int:1
																									Get v.2658 Ti2488.6174
																								FMul Td2489.6173 il.6164
																							Put v.2658 Ti2487.6171 Td2490.6172
																					Let Ti2491.6167
																						Int:2
																						Let Td2494.6168
																							Let Td2493.6169
																								Let Ti2492.6170
																									Int:2
																									Get v.2658 Ti2492.6170
																								FMul Td2493.6169 il.6164
																							Put v.2658 Ti2491.6167 Td2494.6168
																	LetRec veciprod.2660 v.2661 w.2662 
																		Let Td2460.6147
																			Let Td2454.6153
																				Let Td2451.6159
																					Let Ti2450.6162
																						Int:0
																						Get v.2661 Ti2450.6162
																					Let Td2453.6160
																						Let Ti2452.6161
																							Int:0
																							Get w.2662 Ti2452.6161
																						FMul Td2451.6159 Td2453.6160
																				Let Td2459.6154
																					Let Td2456.6155
																						Let Ti2455.6158
																							Int:1
																							Get v.2661 Ti2455.6158
																						Let Td2458.6156
																							Let Ti2457.6157
																								Int:1
																								Get w.2662 Ti2457.6157
																							FMul Td2456.6155 Td2458.6156
																					FAdd Td2454.6153 Td2459.6154
																			Let Td2465.6148
																				Let Td2462.6149
																					Let Ti2461.6152
																						Int:2
																						Get v.2661 Ti2461.6152
																					Let Td2464.6150
																						Let Ti2463.6151
																							Int:2
																							Get w.2662 Ti2463.6151
																						FMul Td2462.6149 Td2464.6150
																				FAdd Td2460.6147 Td2465.6148
																		LetRec veciprod2.2663 v.2664 w0.2665 w1.2666 w2.2667 
																			Let Td2446.6137
																				Let Td2442.6141
																					Let Td2441.6145
																						Let Ti2440.6146
																							Int:0
																							Get v.2664 Ti2440.6146
																						FMul Td2441.6145 w0.2665
																					Let Td2445.6142
																						Let Td2444.6143
																							Let Ti2443.6144
																								Int:1
																								Get v.2664 Ti2443.6144
																							FMul Td2444.6143 w1.2666
																						FAdd Td2442.6141 Td2445.6142
																				Let Td2449.6138
																					Let Td2448.6139
																						Let Ti2447.6140
																							Int:2
																							Get v.2664 Ti2447.6140
																						FMul Td2448.6139 w2.2667
																					FAdd Td2446.6137 Td2449.6138
																			LetRec vecaccum.2668 dest.2669 scale.2670 v.2671 
																				Let Tu20.6114
																					Let Ti2419.6130
																						Int:0
																						Let Td2425.6131
																							Let Td2421.6132
																								Let Ti2420.6136
																									Int:0
																									Get dest.2669 Ti2420.6136
																								Let Td2424.6133
																									Let Td2423.6134
																										Let Ti2422.6135
																											Int:0
																											Get v.2671 Ti2422.6135
																										FMul scale.2670 Td2423.6134
																									FAdd Td2421.6132 Td2424.6133
																							Put dest.2669 Ti2419.6130 Td2425.6131
																					Let Tu19.6115
																						Let Ti2426.6123
																							Int:1
																							Let Td2432.6124
																								Let Td2428.6125
																									Let Ti2427.6129
																										Int:1
																										Get dest.2669 Ti2427.6129
																									Let Td2431.6126
																										Let Td2430.6127
																											Let Ti2429.6128
																												Int:1
																												Get v.2671 Ti2429.6128
																											FMul scale.2670 Td2430.6127
																										FAdd Td2428.6125 Td2431.6126
																								Put dest.2669 Ti2426.6123 Td2432.6124
																						Let Ti2433.6116
																							Int:2
																							Let Td2439.6117
																								Let Td2435.6118
																									Let Ti2434.6122
																										Int:2
																										Get dest.2669 Ti2434.6122
																									Let Td2438.6119
																										Let Td2437.6120
																											Let Ti2436.6121
																												Int:2
																												Get v.2671 Ti2436.6121
																											FMul scale.2670 Td2437.6120
																										FAdd Td2435.6118 Td2438.6119
																								Put dest.2669 Ti2433.6116 Td2439.6117
																				LetRec vecadd.2672 dest.2673 v.2674 
																					Let Tu22.6094
																						Let Ti2401.6108
																							Int:0
																							Let Td2406.6109
																								Let Td2403.6110
																									Let Ti2402.6113
																										Int:0
																										Get dest.2673 Ti2402.6113
																									Let Td2405.6111
																										Let Ti2404.6112
																											Int:0
																											Get v.2674 Ti2404.6112
																										FAdd Td2403.6110 Td2405.6111
																								Put dest.2673 Ti2401.6108 Td2406.6109
																						Let Tu21.6095
																							Let Ti2407.6102
																								Int:1
																								Let Td2412.6103
																									Let Td2409.6104
																										Let Ti2408.6107
																											Int:1
																											Get dest.2673 Ti2408.6107
																										Let Td2411.6105
																											Let Ti2410.6106
																												Int:1
																												Get v.2674 Ti2410.6106
																											FAdd Td2409.6104 Td2411.6105
																									Put dest.2673 Ti2407.6102 Td2412.6103
																							Let Ti2413.6096
																								Int:2
																								Let Td2418.6097
																									Let Td2415.6098
																										Let Ti2414.6101
																											Int:2
																											Get dest.2673 Ti2414.6101
																										Let Td2417.6099
																											Let Ti2416.6100
																												Int:2
																												Get v.2674 Ti2416.6100
																											FAdd Td2415.6098 Td2417.6099
																									Put dest.2673 Ti2413.6096 Td2418.6097
																					LetRec vecmul.2675 dest.2676 v.2677 
																						Let Tu24.6074
																							Let Ti2383.6088
																								Int:0
																								Let Td2388.6089
																									Let Td2385.6090
																										Let Ti2384.6093
																											Int:0
																											Get dest.2676 Ti2384.6093
																										Let Td2387.6091
																											Let Ti2386.6092
																												Int:0
																												Get v.2677 Ti2386.6092
																											FMul Td2385.6090 Td2387.6091
																									Put dest.2676 Ti2383.6088 Td2388.6089
																							Let Tu23.6075
																								Let Ti2389.6082
																									Int:1
																									Let Td2394.6083
																										Let Td2391.6084
																											Let Ti2390.6087
																												Int:1
																												Get dest.2676 Ti2390.6087
																											Let Td2393.6085
																												Let Ti2392.6086
																													Int:1
																													Get v.2677 Ti2392.6086
																												FMul Td2391.6084 Td2393.6085
																										Put dest.2676 Ti2389.6082 Td2394.6083
																								Let Ti2395.6076
																									Int:2
																									Let Td2400.6077
																										Let Td2397.6078
																											Let Ti2396.6081
																												Int:2
																												Get dest.2676 Ti2396.6081
																											Let Td2399.6079
																												Let Ti2398.6080
																													Int:2
																													Get v.2677 Ti2398.6080
																												FMul Td2397.6078 Td2399.6079
																										Put dest.2676 Ti2395.6076 Td2400.6077
																						LetRec vecscale.2678 dest.2679 scale.2680 
																							Let Tu26.6060
																								Let Ti2371.6070
																									Int:0
																									Let Td2374.6071
																										Let Td2373.6072
																											Let Ti2372.6073
																												Int:0
																												Get dest.2679 Ti2372.6073
																											FMul Td2373.6072 scale.2680
																										Put dest.2679 Ti2371.6070 Td2374.6071
																								Let Tu25.6061
																									Let Ti2375.6066
																										Int:1
																										Let Td2378.6067
																											Let Td2377.6068
																												Let Ti2376.6069
																													Int:1
																													Get dest.2679 Ti2376.6069
																												FMul Td2377.6068 scale.2680
																											Put dest.2679 Ti2375.6066 Td2378.6067
																									Let Ti2379.6062
																										Int:2
																										Let Td2382.6063
																											Let Td2381.6064
																												Let Ti2380.6065
																													Int:2
																													Get dest.2679 Ti2380.6065
																												FMul Td2381.6064 scale.2680
																											Put dest.2679 Ti2379.6062 Td2382.6063
																							LetRec vecaccumv.2681 dest.2682 v.2683 w.2684 
																								Let Tu28.6031
																									Let Ti2344.6051
																										Int:0
																										Let Td2352.6052
																											Let Td2346.6053
																												Let Ti2345.6059
																													Int:0
																													Get dest.2682 Ti2345.6059
																												Let Td2351.6054
																													Let Td2348.6055
																														Let Ti2347.6058
																															Int:0
																															Get v.2683 Ti2347.6058
																														Let Td2350.6056
																															Let Ti2349.6057
																																Int:0
																																Get w.2684 Ti2349.6057
																															FMul Td2348.6055 Td2350.6056
																													FAdd Td2346.6053 Td2351.6054
																											Put dest.2682 Ti2344.6051 Td2352.6052
																									Let Tu27.6032
																										Let Ti2353.6042
																											Int:1
																											Let Td2361.6043
																												Let Td2355.6044
																													Let Ti2354.6050
																														Int:1
																														Get dest.2682 Ti2354.6050
																													Let Td2360.6045
																														Let Td2357.6046
																															Let Ti2356.6049
																																Int:1
																																Get v.2683 Ti2356.6049
																															Let Td2359.6047
																																Let Ti2358.6048
																																	Int:1
																																	Get w.2684 Ti2358.6048
																																FMul Td2357.6046 Td2359.6047
																														FAdd Td2355.6044 Td2360.6045
																												Put dest.2682 Ti2353.6042 Td2361.6043
																										Let Ti2362.6033
																											Int:2
																											Let Td2370.6034
																												Let Td2364.6035
																													Let Ti2363.6041
																														Int:2
																														Get dest.2682 Ti2363.6041
																													Let Td2369.6036
																														Let Td2366.6037
																															Let Ti2365.6040
																																Int:2
																																Get v.2683 Ti2365.6040
																															Let Td2368.6038
																																Let Ti2367.6039
																																	Int:2
																																	Get w.2684 Ti2367.6039
																																FMul Td2366.6037 Td2368.6038
																														FAdd Td2364.6035 Td2369.6036
																												Put dest.2682 Ti2362.6033 Td2370.6034
																								LetRec o_texturetype.2685 m.2686 
																									LetTuple (m_tex.6020,xm_shape.6021,xm_surface.6022,xm_isrot.6023,xm_abc.6024,xm_xyz.6025,xm_invert.6026,xm_surfparams.6027,xm_color.6028,xm_rot123.6029,xm_ctbl.6030,)
 m.2686
																										Var m_tex.6020
																									LetRec o_form.2687 m.2688 
																										LetTuple (xm_tex.6009,m_shape.6010,xm_surface.6011,xm_isrot.6012,xm_abc.6013,xm_xyz.6014,xm_invert.6015,xm_surfparams.6016,xm_color.6017,xm_rot123.6018,xm_ctbl.6019,)
 m.2688
																											Var m_shape.6010
																										LetRec o_reflectiontype.2689 m.2690 
																											LetTuple (xm_tex.5998,xm_shape.5999,m_surface.6000,xm_isrot.6001,xm_abc.6002,xm_xyz.6003,xm_invert.6004,xm_surfparams.6005,xm_color.6006,xm_rot123.6007,xm_ctbl.6008,)
 m.2690
																												Var m_surface.6000
																											LetRec o_isinvert.2691 m.2692 
																												LetTuple (xm_tex.5987,xm_shape.5988,xm_surface.5989,xm_isrot.5990,xm_abc.5991,xm_xyz.5992,m_invert.5993,xm_surfparams.5994,xm_color.5995,xm_rot123.5996,xm_ctbl.5997,)
 m.2692
																													Var m_invert.5993
																												LetRec o_isrot.2693 m.2694 
																													LetTuple (xm_tex.5976,xm_shape.5977,xm_surface.5978,m_isrot.5979,xm_abc.5980,xm_xyz.5981,xm_invert.5982,xm_surfparams.5983,xm_color.5984,xm_rot123.5985,xm_ctbl.5986,)
 m.2694
																														Var m_isrot.5979
																													LetRec o_param_a.2695 m.2696 
																														LetTuple (xm_tex.5964,xm_shape.5965,xm_surface.5966,xm_isrot.5967,m_abc.5968,xm_xyz.5969,xm_invert.5970,xm_surfparams.5971,xm_color.5972,xm_rot123.5973,xm_ctbl.5974,)
 m.2696
																															Let Ti2343.5975
																																Int:0
																																Get m_abc.5968 Ti2343.5975
																														LetRec o_param_b.2697 m.2698 
																															LetTuple (xm_tex.5952,xm_shape.5953,xm_surface.5954,xm_isrot.5955,m_abc.5956,xm_xyz.5957,xm_invert.5958,xm_surfparams.5959,xm_color.5960,xm_rot123.5961,xm_ctbl.5962,)
 m.2698
																																Let Ti2342.5963
																																	Int:1
																																	Get m_abc.5956 Ti2342.5963
																															LetRec o_param_c.2699 m.2700 
																																LetTuple (xm_tex.5940,xm_shape.5941,xm_surface.5942,xm_isrot.5943,m_abc.5944,xm_xyz.5945,xm_invert.5946,xm_surfparams.5947,xm_color.5948,xm_rot123.5949,xm_ctbl.5950,)
 m.2700
																																	Let Ti2341.5951
																																		Int:2
																																		Get m_abc.5944 Ti2341.5951
																																LetRec o_param_abc.2701 m.2702 
																																	LetTuple (xm_tex.5929,xm_shape.5930,xm_surface.5931,xm_isrot.5932,m_abc.5933,xm_xyz.5934,xm_invert.5935,xm_surfparams.5936,xm_color.5937,xm_rot123.5938,xm_ctbl.5939,)
 m.2702
																																		Var m_abc.5933
																																	LetRec o_param_x.2703 m.2704 
																																		LetTuple (xm_tex.5917,xm_shape.5918,xm_surface.5919,xm_isrot.5920,xm_abc.5921,m_xyz.5922,xm_invert.5923,xm_surfparams.5924,xm_color.5925,xm_rot123.5926,xm_ctbl.5927,)
 m.2704
																																			Let Ti2340.5928
																																				Int:0
																																				Get m_xyz.5922 Ti2340.5928
																																		LetRec o_param_y.2705 m.2706 
																																			LetTuple (xm_tex.5905,xm_shape.5906,xm_surface.5907,xm_isrot.5908,xm_abc.5909,m_xyz.5910,xm_invert.5911,xm_surfparams.5912,xm_color.5913,xm_rot123.5914,xm_ctbl.5915,)
 m.2706
																																				Let Ti2339.5916
																																					Int:1
																																					Get m_xyz.5910 Ti2339.5916
																																			LetRec o_param_z.2707 m.2708 
																																				LetTuple (xm_tex.5893,xm_shape.5894,xm_surface.5895,xm_isrot.5896,xm_abc.5897,m_xyz.5898,xm_invert.5899,xm_surfparams.5900,xm_color.5901,xm_rot123.5902,xm_ctbl.5903,)
 m.2708
																																					Let Ti2338.5904
																																						Int:2
																																						Get m_xyz.5898 Ti2338.5904
																																				LetRec o_diffuse.2709 m.2710 
																																					LetTuple (xm_tex.5881,xm_shape.5882,xm_surface.5883,xm_isrot.5884,xm_abc.5885,xm_xyz.5886,xm_invert.5887,m_surfparams.5888,xm_color.5889,xm_rot123.5890,xm_ctbl.5891,)
 m.2710
																																						Let Ti2337.5892
																																							Int:0
																																							Get m_surfparams.5888 Ti2337.5892
																																					LetRec o_hilight.2711 m.2712 
																																						LetTuple (xm_tex.5869,xm_shape.5870,xm_surface.5871,xm_isrot.5872,xm_abc.5873,xm_xyz.5874,xm_invert.5875,m_surfparams.5876,xm_color.5877,xm_rot123.5878,xm_ctbl.5879,)
 m.2712
																																							Let Ti2336.5880
																																								Int:1
																																								Get m_surfparams.5876 Ti2336.5880
																																						LetRec o_color_red.2713 m.2714 
																																							LetTuple (xm_tex.5857,xm_shape.5858,m_surface.5859,xm_isrot.5860,xm_abc.5861,xm_xyz.5862,xm_invert.5863,xm_surfparams.5864,m_color.5865,xm_rot123.5866,xm_ctbl.5867,)
 m.2714
																																								Let Ti2335.5868
																																									Int:0
																																									Get m_color.5865 Ti2335.5868
																																							LetRec o_color_green.2715 m.2716 
																																								LetTuple (xm_tex.5845,xm_shape.5846,m_surface.5847,xm_isrot.5848,xm_abc.5849,xm_xyz.5850,xm_invert.5851,xm_surfparams.5852,m_color.5853,xm_rot123.5854,xm_ctbl.5855,)
 m.2716
																																									Let Ti2334.5856
																																										Int:1
																																										Get m_color.5853 Ti2334.5856
																																								LetRec o_color_blue.2717 m.2718 
																																									LetTuple (xm_tex.5833,xm_shape.5834,m_surface.5835,xm_isrot.5836,xm_abc.5837,xm_xyz.5838,xm_invert.5839,xm_surfparams.5840,m_color.5841,xm_rot123.5842,xm_ctbl.5843,)
 m.2718
																																										Let Ti2333.5844
																																											Int:2
																																											Get m_color.5841 Ti2333.5844
																																									LetRec o_param_r1.2719 m.2720 
																																										LetTuple (xm_tex.5821,xm_shape.5822,xm_surface.5823,xm_isrot.5824,xm_abc.5825,xm_xyz.5826,xm_invert.5827,xm_surfparams.5828,xm_color.5829,m_rot123.5830,xm_ctbl.5831,)
 m.2720
																																											Let Ti2332.5832
																																												Int:0
																																												Get m_rot123.5830 Ti2332.5832
																																										LetRec o_param_r2.2721 m.2722 
																																											LetTuple (xm_tex.5809,xm_shape.5810,xm_surface.5811,xm_isrot.5812,xm_abc.5813,xm_xyz.5814,xm_invert.5815,xm_surfparams.5816,xm_color.5817,m_rot123.5818,xm_ctbl.5819,)
 m.2722
																																												Let Ti2331.5820
																																													Int:1
																																													Get m_rot123.5818 Ti2331.5820
																																											LetRec o_param_r3.2723 m.2724 
																																												LetTuple (xm_tex.5797,xm_shape.5798,xm_surface.5799,xm_isrot.5800,xm_abc.5801,xm_xyz.5802,xm_invert.5803,xm_surfparams.5804,xm_color.5805,m_rot123.5806,xm_ctbl.5807,)
 m.2724
																																													Let Ti2330.5808
																																														Int:2
																																														Get m_rot123.5806 Ti2330.5808
																																												LetRec o_param_ctbl.2725 m.2726 
																																													LetTuple (xm_tex.5786,xm_shape.5787,xm_surface.5788,xm_isrot.5789,xm_abc.5790,xm_xyz.5791,xm_invert.5792,xm_surfparams.5793,xm_color.5794,xm_rot123.5795,m_ctbl.5796,)
 m.2726
																																														Var m_ctbl.5796
																																													LetRec p_rgb.2727 pixel.2728 
																																														LetTuple (m_rgb.5778,xm_isect_ps.5779,xm_sids.5780,xm_cdif.5781,xm_engy.5782,xm_r20p.5783,xm_gid.5784,xm_nvectors.5785,)
 pixel.2728
																																															Var m_rgb.5778
																																														LetRec p_intersection_points.2729 pixel.2730 
																																															LetTuple (xm_rgb.5770,m_isect_ps.5771,xm_sids.5772,xm_cdif.5773,xm_engy.5774,xm_r20p.5775,xm_gid.5776,xm_nvectors.5777,)
 pixel.2730
																																																Var m_isect_ps.5771
																																															LetRec p_surface_ids.2731 pixel.2732 
																																																LetTuple (xm_rgb.5762,xm_isect_ps.5763,m_sids.5764,xm_cdif.5765,xm_engy.5766,xm_r20p.5767,xm_gid.5768,xm_nvectors.5769,)
 pixel.2732
																																																	Var m_sids.5764
																																																LetRec p_calc_diffuse.2733 pixel.2734 
																																																	LetTuple (xm_rgb.5754,xm_isect_ps.5755,xm_sids.5756,m_cdif.5757,xm_engy.5758,xm_r20p.5759,xm_gid.5760,xm_nvectors.5761,)
 pixel.2734
																																																		Var m_cdif.5757
																																																	LetRec p_energy.2735 pixel.2736 
																																																		LetTuple (xm_rgb.5746,xm_isect_ps.5747,xm_sids.5748,xm_cdif.5749,m_engy.5750,xm_r20p.5751,xm_gid.5752,xm_nvectors.5753,)
 pixel.2736
																																																			Var m_engy.5750
																																																		LetRec p_received_ray_20percent.2737 pixel.2738 
																																																			LetTuple (xm_rgb.5738,xm_isect_ps.5739,xm_sids.5740,xm_cdif.5741,xm_engy.5742,m_r20p.5743,xm_gid.5744,xm_nvectors.5745,)
 pixel.2738
																																																				Var m_r20p.5743
																																																			LetRec p_group_id.2739 pixel.2740 
																																																				LetTuple (xm_rgb.5729,xm_isect_ps.5730,xm_sids.5731,xm_cdif.5732,xm_engy.5733,xm_r20p.5734,m_gid.5735,xm_nvectors.5736,)
 pixel.2740
																																																					Let Ti2329.5737
																																																						Int:0
																																																						Get m_gid.5735 Ti2329.5737
																																																				LetRec p_set_group_id.2741 pixel.2742 id.2743 
																																																					LetTuple (xm_rgb.5720,xm_isect_ps.5721,xm_sids.5722,xm_cdif.5723,xm_engy.5724,xm_r20p.5725,m_gid.5726,xm_nvectors.5727,)
 pixel.2742
																																																						Let Ti2328.5728
																																																							Int:0
																																																							Put m_gid.5726 Ti2328.5728 id.2743
																																																					LetRec p_nvectors.2744 pixel.2745 
																																																						LetTuple (xm_rgb.5712,xm_isect_ps.5713,xm_sids.5714,xm_cdif.5715,xm_engy.5716,xm_r20p.5717,xm_gid.5718,m_nvectors.5719,)
 pixel.2745
																																																							Var m_nvectors.5719
																																																						LetRec d_vec.2746 d.2747 
																																																							LetTuple (m_vec.5710,xm_const.5711,)
 d.2747
																																																								Var m_vec.5710
																																																							LetRec d_const.2748 d.2749 
																																																								LetTuple (dm_vec.5708,m_const.5709,)
 d.2749
																																																									Var m_const.5709
																																																								LetRec r_surface_id.2750 r.2751 
																																																									LetTuple (m_sid.5705,xm_dvec.5706,xm_br.5707,)
 r.2751
																																																										Var m_sid.5705
																																																									LetRec r_dvec.2752 r.2753 
																																																										LetTuple (xm_sid.5702,m_dvec.5703,xm_br.5704,)
 r.2753
																																																											Var m_dvec.5703
																																																										LetRec r_bright.2754 r.2755 
																																																											LetTuple (xm_sid.5699,xm_dvec.5700,m_br.5701,)
 r.2755
																																																												Var m_br.5701
																																																											LetRec rad.2756 x.2757 
																																																												Let Td2327.5698
																																																													Float:0.017453
																																																													FMul x.2757 Td2327.5698
																																																												LetRec read_screen_settings.2758 Tu29.2759 
																																																													Let Tu43.5602
																																																														Let Ta2251.5694
																																																															ExtArray 288
																																																															Let Ti2252.5695
																																																																Int:0
																																																																Let Td2254.5696
																																																																	Let Tu2253.5697
																																																																		Unit
																																																																		ExtFunApp read_float Tu2253.5697,
																																																																	Put Ta2251.5694 Ti2252.5695 Td2254.5696
																																																														Let Tu42.5603
																																																															Let Ta2255.5690
																																																																ExtArray 288
																																																																Let Ti2256.5691
																																																																	Int:1
																																																																	Let Td2258.5692
																																																																		Let Tu2257.5693
																																																																			Unit
																																																																			ExtFunApp read_float Tu2257.5693,
																																																																		Put Ta2255.5690 Ti2256.5691 Td2258.5692
																																																															Let Tu41.5604
																																																																Let Ta2259.5686
																																																																	ExtArray 288
																																																																	Let Ti2260.5687
																																																																		Int:2
																																																																		Let Td2262.5688
																																																																			Let Tu2261.5689
																																																																				Unit
																																																																				ExtFunApp read_float Tu2261.5689,
																																																																			Put Ta2259.5686 Ti2260.5687 Td2262.5688
																																																																Let v1.5605
																																																																	Let Td2264.5684
																																																																		Let Tu2263.5685
																																																																			Unit
																																																																			ExtFunApp read_float Tu2263.5685,
																																																																		App rad.2756Td2264.5684 
																																																																	Let cos_v1.5606
																																																																		ExtFunApp cos v1.5605,
																																																																		Let sin_v1.5607
																																																																			ExtFunApp sin v1.5605,
																																																																			Let v2.5608
																																																																				Let Td2266.5682
																																																																					Let Tu2265.5683
																																																																						Unit
																																																																						ExtFunApp read_float Tu2265.5683,
																																																																					App rad.2756Td2266.5682 
																																																																				Let cos_v2.5609
																																																																					ExtFunApp cos v2.5608,
																																																																					Let sin_v2.5610
																																																																						ExtFunApp sin v2.5608,
																																																																						Let Tu40.5611
																																																																							Let Ta2267.5677
																																																																								ExtArray 684
																																																																								Let Ti2268.5678
																																																																									Int:0
																																																																									Let Td2271.5679
																																																																										Let Td2269.5680
																																																																											FMul cos_v1.5606 sin_v2.5610
																																																																											Let Td2270.5681
																																																																												Float:200.000000
																																																																												FMul Td2269.5680 Td2270.5681
																																																																										Put Ta2267.5677 Ti2268.5678 Td2271.5679
																																																																							Let Tu39.5612
																																																																								Let Ta2272.5673
																																																																									ExtArray 684
																																																																									Let Ti2273.5674
																																																																										Int:1
																																																																										Let Td2275.5675
																																																																											Let Td2274.5676
																																																																												Float:-200.000000
																																																																												FMul sin_v1.5607 Td2274.5676
																																																																											Put Ta2272.5673 Ti2273.5674 Td2275.5675
																																																																								Let Tu38.5613
																																																																									Let Ta2276.5668
																																																																										ExtArray 684
																																																																										Let Ti2277.5669
																																																																											Int:2
																																																																											Let Td2280.5670
																																																																												Let Td2278.5671
																																																																													FMul cos_v1.5606 cos_v2.5609
																																																																													Let Td2279.5672
																																																																														Float:200.000000
																																																																														FMul Td2278.5671 Td2279.5672
																																																																												Put Ta2276.5668 Ti2277.5669 Td2280.5670
																																																																									Let Tu37.5614
																																																																										Let Ta2281.5666
																																																																											ExtArray 660
																																																																											Let Ti2282.5667
																																																																												Int:0
																																																																												Put Ta2281.5666 Ti2282.5667 cos_v2.5609
																																																																										Let Tu36.5615
																																																																											Let Ta2283.5663
																																																																												ExtArray 660
																																																																												Let Ti2284.5664
																																																																													Int:1
																																																																													Let Td2285.5665
																																																																														Float:0.000000
																																																																														Put Ta2283.5663 Ti2284.5664 Td2285.5665
																																																																											Let Tu35.5616
																																																																												Let Ta2286.5660
																																																																													ExtArray 660
																																																																													Let Ti2287.5661
																																																																														Int:2
																																																																														Let Td2288.5662
																																																																															App fneg.2613sin_v2.5610 
																																																																															Put Ta2286.5660 Ti2287.5661 Td2288.5662
																																																																												Let Tu34.5617
																																																																													Let Ta2289.5656
																																																																														ExtArray 672
																																																																														Let Ti2290.5657
																																																																															Int:0
																																																																															Let Td2292.5658
																																																																																Let Td2291.5659
																																																																																	App fneg.2613sin_v1.5607 
																																																																																	FMul Td2291.5659 sin_v2.5610
																																																																																Put Ta2289.5656 Ti2290.5657 Td2292.5658
																																																																													Let Tu33.5618
																																																																														Let Ta2293.5653
																																																																															ExtArray 672
																																																																															Let Ti2294.5654
																																																																																Int:1
																																																																																Let Td2295.5655
																																																																																	App fneg.2613cos_v1.5606 
																																																																																	Put Ta2293.5653 Ti2294.5654 Td2295.5655
																																																																														Let Tu32.5619
																																																																															Let Ta2296.5649
																																																																																ExtArray 672
																																																																																Let Ti2297.5650
																																																																																	Int:2
																																																																																	Let Td2299.5651
																																																																																		Let Td2298.5652
																																																																																			App fneg.2613sin_v1.5607 
																																																																																			FMul Td2298.5652 cos_v2.5609
																																																																																		Put Ta2296.5649 Ti2297.5650 Td2299.5651
																																																																															Let Tu31.5620
																																																																																Let Ta2300.5640
																																																																																	ExtArray 300
																																																																																	Let Ti2301.5641
																																																																																		Int:0
																																																																																		Let Td2308.5642
																																																																																			Let Td2304.5643
																																																																																				Let Ta2302.5647
																																																																																					ExtArray 288
																																																																																					Let Ti2303.5648
																																																																																						Int:0
																																																																																						Get Ta2302.5647 Ti2303.5648
																																																																																				Let Td2307.5644
																																																																																					Let Ta2305.5645
																																																																																						ExtArray 684
																																																																																						Let Ti2306.5646
																																																																																							Int:0
																																																																																							Get Ta2305.5645 Ti2306.5646
																																																																																					FSub Td2304.5643 Td2307.5644
																																																																																			Put Ta2300.5640 Ti2301.5641 Td2308.5642
																																																																																Let Tu30.5621
																																																																																	Let Ta2309.5631
																																																																																		ExtArray 300
																																																																																		Let Ti2310.5632
																																																																																			Int:1
																																																																																			Let Td2317.5633
																																																																																				Let Td2313.5634
																																																																																					Let Ta2311.5638
																																																																																						ExtArray 288
																																																																																						Let Ti2312.5639
																																																																																							Int:1
																																																																																							Get Ta2311.5638 Ti2312.5639
																																																																																					Let Td2316.5635
																																																																																						Let Ta2314.5636
																																																																																							ExtArray 684
																																																																																							Let Ti2315.5637
																																																																																								Int:1
																																																																																								Get Ta2314.5636 Ti2315.5637
																																																																																						FSub Td2313.5634 Td2316.5635
																																																																																				Put Ta2309.5631 Ti2310.5632 Td2317.5633
																																																																																	Let Ta2318.5622
																																																																																		ExtArray 300
																																																																																		Let Ti2319.5623
																																																																																			Int:2
																																																																																			Let Td2326.5624
																																																																																				Let Td2322.5625
																																																																																					Let Ta2320.5629
																																																																																						ExtArray 288
																																																																																						Let Ti2321.5630
																																																																																							Int:2
																																																																																							Get Ta2320.5629 Ti2321.5630
																																																																																					Let Td2325.5626
																																																																																						Let Ta2323.5627
																																																																																							ExtArray 684
																																																																																							Let Ti2324.5628
																																																																																								Int:2
																																																																																								Get Ta2323.5627 Ti2324.5628
																																																																																						FSub Td2322.5625 Td2325.5626
																																																																																				Put Ta2318.5622 Ti2319.5623 Td2326.5624
																																																													LetRec read_light.2760 Tu44.2761 
																																																														Let nl.5574
																																																															Let Tu2233.5601
																																																																Unit
																																																																ExtFunApp read_int Tu2233.5601,
																																																															Let l1.5575
																																																																Let Td2235.5599
																																																																	Let Tu2234.5600
																																																																		Unit
																																																																		ExtFunApp read_float Tu2234.5600,
																																																																	App rad.2756Td2235.5599 
																																																																Let sl1.5576
																																																																	ExtFunApp sin l1.5575,
																																																																	Let Tu47.5577
																																																																		Let Ta2236.5596
																																																																			ExtArray 312
																																																																			Let Ti2237.5597
																																																																				Int:1
																																																																				Let Td2238.5598
																																																																					App fneg.2613sl1.5576 
																																																																					Put Ta2236.5596 Ti2237.5597 Td2238.5598
																																																																		Let l2.5578
																																																																			Let Td2240.5594
																																																																				Let Tu2239.5595
																																																																					Unit
																																																																					ExtFunApp read_float Tu2239.5595,
																																																																				App rad.2756Td2240.5594 
																																																																			Let cl1.5579
																																																																				ExtFunApp cos l1.5575,
																																																																				Let sl2.5580
																																																																					ExtFunApp sin l2.5578,
																																																																					Let Tu46.5581
																																																																						Let Ta2241.5591
																																																																							ExtArray 312
																																																																							Let Ti2242.5592
																																																																								Int:0
																																																																								Let Td2243.5593
																																																																									FMul cl1.5579 sl2.5580
																																																																									Put Ta2241.5591 Ti2242.5592 Td2243.5593
																																																																						Let cl2.5582
																																																																							ExtFunApp cos l2.5578,
																																																																							Let Tu45.5583
																																																																								Let Ta2244.5588
																																																																									ExtArray 312
																																																																									Let Ti2245.5589
																																																																										Int:2
																																																																										Let Td2246.5590
																																																																											FMul cl1.5579 cl2.5582
																																																																											Put Ta2244.5588 Ti2245.5589 Td2246.5590
																																																																								Let Ta2247.5584
																																																																									ExtArray 324
																																																																									Let Ti2248.5585
																																																																										Int:0
																																																																										Let Td2250.5586
																																																																											Let Tu2249.5587
																																																																												Unit
																																																																												ExtFunApp read_float Tu2249.5587,
																																																																											Put Ta2247.5584 Ti2248.5585 Td2250.5586
																																																														LetRec rotate_quadratic_matrix.2762 abc.2763 rot.2764 
																																																															Let cos_x.5464
																																																																Let Td2147.5572
																																																																	Let Ti2146.5573
																																																																		Int:0
																																																																		Get rot.2764 Ti2146.5573
																																																																	ExtFunApp cos Td2147.5572,
																																																																Let sin_x.5465
																																																																	Let Td2149.5570
																																																																		Let Ti2148.5571
																																																																			Int:0
																																																																			Get rot.2764 Ti2148.5571
																																																																		ExtFunApp sin Td2149.5570,
																																																																	Let cos_y.5466
																																																																		Let Td2151.5568
																																																																			Let Ti2150.5569
																																																																				Int:1
																																																																				Get rot.2764 Ti2150.5569
																																																																			ExtFunApp cos Td2151.5568,
																																																																		Let sin_y.5467
																																																																			Let Td2153.5566
																																																																				Let Ti2152.5567
																																																																					Int:1
																																																																					Get rot.2764 Ti2152.5567
																																																																				ExtFunApp sin Td2153.5566,
																																																																			Let cos_z.5468
																																																																				Let Td2155.5564
																																																																					Let Ti2154.5565
																																																																						Int:2
																																																																						Get rot.2764 Ti2154.5565
																																																																					ExtFunApp cos Td2155.5564,
																																																																				Let sin_z.5469
																																																																					Let Td2157.5562
																																																																						Let Ti2156.5563
																																																																							Int:2
																																																																							Get rot.2764 Ti2156.5563
																																																																						ExtFunApp sin Td2157.5562,
																																																																					Let m00.5470
																																																																						FMul cos_y.5466 cos_z.5468
																																																																						Let m01.5471
																																																																							Let Td2159.5559
																																																																								Let Td2158.5561
																																																																									FMul sin_x.5465 sin_y.5467
																																																																									FMul Td2158.5561 cos_z.5468
																																																																								Let Td2160.5560
																																																																									FMul cos_x.5464 sin_z.5469
																																																																									FSub Td2159.5559 Td2160.5560
																																																																							Let m02.5472
																																																																								Let Td2162.5556
																																																																									Let Td2161.5558
																																																																										FMul cos_x.5464 sin_y.5467
																																																																										FMul Td2161.5558 cos_z.5468
																																																																									Let Td2163.5557
																																																																										FMul sin_x.5465 sin_z.5469
																																																																										FAdd Td2162.5556 Td2163.5557
																																																																								Let m10.5473
																																																																									FMul cos_y.5466 sin_z.5469
																																																																									Let m11.5474
																																																																										Let Td2165.5553
																																																																											Let Td2164.5555
																																																																												FMul sin_x.5465 sin_y.5467
																																																																												FMul Td2164.5555 sin_z.5469
																																																																											Let Td2166.5554
																																																																												FMul cos_x.5464 cos_z.5468
																																																																												FAdd Td2165.5553 Td2166.5554
																																																																										Let m12.5475
																																																																											Let Td2168.5550
																																																																												Let Td2167.5552
																																																																													FMul cos_x.5464 sin_y.5467
																																																																													FMul Td2167.5552 sin_z.5469
																																																																												Let Td2169.5551
																																																																													FMul sin_x.5465 cos_z.5468
																																																																													FSub Td2168.5550 Td2169.5551
																																																																											Let m20.5476
																																																																												App fneg.2613sin_y.5467 
																																																																												Let m21.5477
																																																																													FMul sin_x.5465 cos_y.5466
																																																																													Let m22.5478
																																																																														FMul cos_x.5464 cos_y.5466
																																																																														Let ao.5479
																																																																															Let Ti2170.5549
																																																																																Int:0
																																																																																Get abc.2763 Ti2170.5549
																																																																															Let bo.5480
																																																																																Let Ti2171.5548
																																																																																	Int:1
																																																																																	Get abc.2763 Ti2171.5548
																																																																																Let co.5481
																																																																																	Let Ti2172.5547
																																																																																		Int:2
																																																																																		Get abc.2763 Ti2172.5547
																																																																																	Let Tu52.5482
																																																																																		Let Ti2173.5538
																																																																																			Int:0
																																																																																			Let Td2181.5539
																																																																																				Let Td2178.5540
																																																																																					Let Td2175.5543
																																																																																						Let Td2174.5546
																																																																																							App fsqr.2617m00.5470 
																																																																																							FMul ao.5479 Td2174.5546
																																																																																						Let Td2177.5544
																																																																																							Let Td2176.5545
																																																																																								App fsqr.2617m10.5473 
																																																																																								FMul bo.5480 Td2176.5545
																																																																																							FAdd Td2175.5543 Td2177.5544
																																																																																					Let Td2180.5541
																																																																																						Let Td2179.5542
																																																																																							App fsqr.2617m20.5476 
																																																																																							FMul co.5481 Td2179.5542
																																																																																						FAdd Td2178.5540 Td2180.5541
																																																																																				Put abc.2763 Ti2173.5538 Td2181.5539
																																																																																		Let Tu51.5483
																																																																																			Let Ti2182.5529
																																																																																				Int:1
																																																																																				Let Td2190.5530
																																																																																					Let Td2187.5531
																																																																																						Let Td2184.5534
																																																																																							Let Td2183.5537
																																																																																								App fsqr.2617m01.5471 
																																																																																								FMul ao.5479 Td2183.5537
																																																																																							Let Td2186.5535
																																																																																								Let Td2185.5536
																																																																																									App fsqr.2617m11.5474 
																																																																																									FMul bo.5480 Td2185.5536
																																																																																								FAdd Td2184.5534 Td2186.5535
																																																																																						Let Td2189.5532
																																																																																							Let Td2188.5533
																																																																																								App fsqr.2617m21.5477 
																																																																																								FMul co.5481 Td2188.5533
																																																																																							FAdd Td2187.5531 Td2189.5532
																																																																																					Put abc.2763 Ti2182.5529 Td2190.5530
																																																																																			Let Tu50.5484
																																																																																				Let Ti2191.5520
																																																																																					Int:2
																																																																																					Let Td2199.5521
																																																																																						Let Td2196.5522
																																																																																							Let Td2193.5525
																																																																																								Let Td2192.5528
																																																																																									App fsqr.2617m02.5472 
																																																																																									FMul ao.5479 Td2192.5528
																																																																																								Let Td2195.5526
																																																																																									Let Td2194.5527
																																																																																										App fsqr.2617m12.5475 
																																																																																										FMul bo.5480 Td2194.5527
																																																																																									FAdd Td2193.5525 Td2195.5526
																																																																																							Let Td2198.5523
																																																																																								Let Td2197.5524
																																																																																									App fsqr.2617m22.5478 
																																																																																									FMul co.5481 Td2197.5524
																																																																																								FAdd Td2196.5522 Td2198.5523
																																																																																						Put abc.2763 Ti2191.5520 Td2199.5521
																																																																																				Let Tu49.5485
																																																																																					Let Ti2200.5509
																																																																																						Int:0
																																																																																						Let Td2210.5510
																																																																																							Let Td2201.5511
																																																																																								Float:2.000000
																																																																																								Let Td2209.5512
																																																																																									Let Td2206.5513
																																																																																										Let Td2203.5516
																																																																																											Let Td2202.5519
																																																																																												FMul ao.5479 m01.5471
																																																																																												FMul Td2202.5519 m02.5472
																																																																																											Let Td2205.5517
																																																																																												Let Td2204.5518
																																																																																													FMul bo.5480 m11.5474
																																																																																													FMul Td2204.5518 m12.5475
																																																																																												FAdd Td2203.5516 Td2205.5517
																																																																																										Let Td2208.5514
																																																																																											Let Td2207.5515
																																																																																												FMul co.5481 m21.5477
																																																																																												FMul Td2207.5515 m22.5478
																																																																																											FAdd Td2206.5513 Td2208.5514
																																																																																									FMul Td2201.5511 Td2209.5512
																																																																																							Put rot.2764 Ti2200.5509 Td2210.5510
																																																																																					Let Tu48.5486
																																																																																						Let Ti2211.5498
																																																																																							Int:1
																																																																																							Let Td2221.5499
																																																																																								Let Td2212.5500
																																																																																									Float:2.000000
																																																																																									Let Td2220.5501
																																																																																										Let Td2217.5502
																																																																																											Let Td2214.5505
																																																																																												Let Td2213.5508
																																																																																													FMul ao.5479 m00.5470
																																																																																													FMul Td2213.5508 m02.5472
																																																																																												Let Td2216.5506
																																																																																													Let Td2215.5507
																																																																																														FMul bo.5480 m10.5473
																																																																																														FMul Td2215.5507 m12.5475
																																																																																													FAdd Td2214.5505 Td2216.5506
																																																																																											Let Td2219.5503
																																																																																												Let Td2218.5504
																																																																																													FMul co.5481 m20.5476
																																																																																													FMul Td2218.5504 m22.5478
																																																																																												FAdd Td2217.5502 Td2219.5503
																																																																																										FMul Td2212.5500 Td2220.5501
																																																																																								Put rot.2764 Ti2211.5498 Td2221.5499
																																																																																						Let Ti2222.5487
																																																																																							Int:2
																																																																																							Let Td2232.5488
																																																																																								Let Td2223.5489
																																																																																									Float:2.000000
																																																																																									Let Td2231.5490
																																																																																										Let Td2228.5491
																																																																																											Let Td2225.5494
																																																																																												Let Td2224.5497
																																																																																													FMul ao.5479 m00.5470
																																																																																													FMul Td2224.5497 m01.5471
																																																																																												Let Td2227.5495
																																																																																													Let Td2226.5496
																																																																																														FMul bo.5480 m10.5473
																																																																																														FMul Td2226.5496 m11.5474
																																																																																													FAdd Td2225.5494 Td2227.5495
																																																																																											Let Td2230.5492
																																																																																												Let Td2229.5493
																																																																																													FMul co.5481 m20.5476
																																																																																													FMul Td2229.5493 m21.5477
																																																																																												FAdd Td2228.5491 Td2230.5492
																																																																																										FMul Td2223.5489 Td2231.5490
																																																																																								Put rot.2764 Ti2222.5487 Td2232.5488
																																																															LetRec read_nth_object.2765 n.2766 
																																																																Let texture.5334
																																																																	Let Tu2051.5463
																																																																		Unit
																																																																		ExtFunApp read_int Tu2051.5463,
																																																																	Let Ti2053.5335
																																																																		Let Ti2052.5462
																																																																			Int:1
																																																																			Neg Ti2052.5462
																																																																		IfEq texture.5334 Ti2053.5335
																																																																			Int:0
																																																																			Let form.5336
																																																																				Let Tu2054.5461
																																																																					Unit
																																																																					ExtFunApp read_int Tu2054.5461,
																																																																				Let refltype.5337
																																																																					Let Tu2055.5460
																																																																						Unit
																																																																						ExtFunApp read_int Tu2055.5460,
																																																																					Let isrot_p.5338
																																																																						Let Tu2056.5459
																																																																							Unit
																																																																							ExtFunApp read_int Tu2056.5459,
																																																																						Let abc.5339
																																																																							Let Ti2057.5457
																																																																								Int:3
																																																																								Let Td2058.5458
																																																																									Float:0.000000
																																																																									ExtFunApp create_float_array Ti2057.5457,Td2058.5458,
																																																																							Let Tu71.5340
																																																																								Let Ti2059.5454
																																																																									Int:0
																																																																									Let Td2061.5455
																																																																										Let Tu2060.5456
																																																																											Unit
																																																																											ExtFunApp read_float Tu2060.5456,
																																																																										Put abc.5339 Ti2059.5454 Td2061.5455
																																																																								Let Tu70.5341
																																																																									Let Ti2062.5451
																																																																										Int:1
																																																																										Let Td2064.5452
																																																																											Let Tu2063.5453
																																																																												Unit
																																																																												ExtFunApp read_float Tu2063.5453,
																																																																											Put abc.5339 Ti2062.5451 Td2064.5452
																																																																									Let Tu69.5342
																																																																										Let Ti2065.5448
																																																																											Int:2
																																																																											Let Td2067.5449
																																																																												Let Tu2066.5450
																																																																													Unit
																																																																													ExtFunApp read_float Tu2066.5450,
																																																																												Put abc.5339 Ti2065.5448 Td2067.5449
																																																																										Let xyz.5343
																																																																											Let Ti2068.5446
																																																																												Int:3
																																																																												Let Td2069.5447
																																																																													Float:0.000000
																																																																													ExtFunApp create_float_array Ti2068.5446,Td2069.5447,
																																																																											Let Tu68.5344
																																																																												Let Ti2070.5443
																																																																													Int:0
																																																																													Let Td2072.5444
																																																																														Let Tu2071.5445
																																																																															Unit
																																																																															ExtFunApp read_float Tu2071.5445,
																																																																														Put xyz.5343 Ti2070.5443 Td2072.5444
																																																																												Let Tu67.5345
																																																																													Let Ti2073.5440
																																																																														Int:1
																																																																														Let Td2075.5441
																																																																															Let Tu2074.5442
																																																																																Unit
																																																																																ExtFunApp read_float Tu2074.5442,
																																																																															Put xyz.5343 Ti2073.5440 Td2075.5441
																																																																													Let Tu66.5346
																																																																														Let Ti2076.5437
																																																																															Int:2
																																																																															Let Td2078.5438
																																																																																Let Tu2077.5439
																																																																																	Unit
																																																																																	ExtFunApp read_float Tu2077.5439,
																																																																																Put xyz.5343 Ti2076.5437 Td2078.5438
																																																																														Let m_invert.5347
																																																																															Let Td2079.5434
																																																																																Float:0.000000
																																																																																Let Td2081.5435
																																																																																	Let Tu2080.5436
																																																																																		Unit
																																																																																		ExtFunApp read_float Tu2080.5436,
																																																																																	IfLE Td2079.5434 Td2081.5435
																																																																																		Int:0
																																																																																		Int:1
																																																																															Let reflparam.5348
																																																																																Let Ti2082.5432
																																																																																	Int:2
																																																																																	Let Td2083.5433
																																																																																		Float:0.000000
																																																																																		ExtFunApp create_float_array Ti2082.5432,Td2083.5433,
																																																																																Let Tu65.5349
																																																																																	Let Ti2084.5429
																																																																																		Int:0
																																																																																		Let Td2086.5430
																																																																																			Let Tu2085.5431
																																																																																				Unit
																																																																																				ExtFunApp read_float Tu2085.5431,
																																																																																			Put reflparam.5348 Ti2084.5429 Td2086.5430
																																																																																	Let Tu64.5350
																																																																																		Let Ti2087.5426
																																																																																			Int:1
																																																																																			Let Td2089.5427
																																																																																				Let Tu2088.5428
																																																																																					Unit
																																																																																					ExtFunApp read_float Tu2088.5428,
																																																																																				Put reflparam.5348 Ti2087.5426 Td2089.5427
																																																																																		Let color.5351
																																																																																			Let Ti2090.5424
																																																																																				Int:3
																																																																																				Let Td2091.5425
																																																																																					Float:0.000000
																																																																																					ExtFunApp create_float_array Ti2090.5424,Td2091.5425,
																																																																																			Let Tu63.5352
																																																																																				Let Ti2092.5421
																																																																																					Int:0
																																																																																					Let Td2094.5422
																																																																																						Let Tu2093.5423
																																																																																							Unit
																																																																																							ExtFunApp read_float Tu2093.5423,
																																																																																						Put color.5351 Ti2092.5421 Td2094.5422
																																																																																				Let Tu62.5353
																																																																																					Let Ti2095.5418
																																																																																						Int:1
																																																																																						Let Td2097.5419
																																																																																							Let Tu2096.5420
																																																																																								Unit
																																																																																								ExtFunApp read_float Tu2096.5420,
																																																																																							Put color.5351 Ti2095.5418 Td2097.5419
																																																																																					Let Tu61.5354
																																																																																						Let Ti2098.5415
																																																																																							Int:2
																																																																																							Let Td2100.5416
																																																																																								Let Tu2099.5417
																																																																																									Unit
																																																																																									ExtFunApp read_float Tu2099.5417,
																																																																																								Put color.5351 Ti2098.5415 Td2100.5416
																																																																																						Let rotation.5355
																																																																																							Let Ti2101.5413
																																																																																								Int:3
																																																																																								Let Td2102.5414
																																																																																									Float:0.000000
																																																																																									ExtFunApp create_float_array Ti2101.5413,Td2102.5414,
																																																																																							Let Tu60.5356
																																																																																								Let Ti2103.5398
																																																																																									Int:0
																																																																																									IfEq isrot_p.5338 Ti2103.5398
																																																																																										Unit
																																																																																										Let Tu54.5399
																																																																																											Let Ti2104.5409
																																																																																												Int:0
																																																																																												Let Td2107.5410
																																																																																													Let Td2106.5411
																																																																																														Let Tu2105.5412
																																																																																															Unit
																																																																																															ExtFunApp read_float Tu2105.5412,
																																																																																														App rad.2756Td2106.5411 
																																																																																													Put rotation.5355 Ti2104.5409 Td2107.5410
																																																																																											Let Tu53.5400
																																																																																												Let Ti2108.5405
																																																																																													Int:1
																																																																																													Let Td2111.5406
																																																																																														Let Td2110.5407
																																																																																															Let Tu2109.5408
																																																																																																Unit
																																																																																																ExtFunApp read_float Tu2109.5408,
																																																																																															App rad.2756Td2110.5407 
																																																																																														Put rotation.5355 Ti2108.5405 Td2111.5406
																																																																																												Let Ti2112.5401
																																																																																													Int:2
																																																																																													Let Td2115.5402
																																																																																														Let Td2114.5403
																																																																																															Let Tu2113.5404
																																																																																																Unit
																																																																																																ExtFunApp read_float Tu2113.5404,
																																																																																															App rad.2756Td2114.5403 
																																																																																														Put rotation.5355 Ti2112.5401 Td2115.5402
																																																																																								Let m_invert2.5357
																																																																																									Let Ti2116.5397
																																																																																										Int:2
																																																																																										IfEq form.5336 Ti2116.5397
																																																																																											Int:1
																																																																																											Var m_invert.5347
																																																																																									Let ctbl.5358
																																																																																										Let Ti2117.5395
																																																																																											Int:4
																																																																																											Let Td2118.5396
																																																																																												Float:0.000000
																																																																																												ExtFunApp create_float_array Ti2117.5395,Td2118.5396,
																																																																																										Let obj.5359
																																																																																											Tuple (texture.5334,form.5336,refltype.5337,isrot_p.5338,abc.5339,xyz.5343,m_invert2.5357,reflparam.5348,color.5351,rotation.5355,ctbl.5358,)
																																																																																											Let Tu59.5360
																																																																																												Let Ta2119.5394
																																																																																													ExtArray 48
																																																																																													Put Ta2119.5394 n.2766 obj.5359
																																																																																												Let Tu58.5361
																																																																																													Let Ti2120.5364
																																																																																														Int:3
																																																																																														IfEq form.5336 Ti2120.5364
																																																																																															Let a.5368
																																																																																																Let Ti2121.5393
																																																																																																	Int:0
																																																																																																	Get abc.5339 Ti2121.5393
																																																																																																Let Tu56.5369
																																																																																																	Let Ti2122.5387
																																																																																																		Int:0
																																																																																																		Let Td2127.5388
																																																																																																			Let Td2123.5389
																																																																																																				Float:0.000000
																																																																																																				IfEq a.5368 Td2123.5389
																																																																																																					Float:0.000000
																																																																																																					Let Td2124.5390
																																																																																																						App sgn.2631a.5368 
																																																																																																						Let Td2125.5391
																																																																																																							App fsqr.2617a.5368 
																																																																																																							Let Td2126.5392
																																																																																																								FReciprocal Td2125.5391
																																																																																																								FMul Td2124.5390 Td2126.5392
																																																																																																			Put abc.5339 Ti2122.5387 Td2127.5388
																																																																																																	Let b.5370
																																																																																																		Let Ti2128.5386
																																																																																																			Int:1
																																																																																																			Get abc.5339 Ti2128.5386
																																																																																																		Let Tu55.5371
																																																																																																			Let Ti2129.5380
																																																																																																				Int:1
																																																																																																				Let Td2134.5381
																																																																																																					Let Td2130.5382
																																																																																																						Float:0.000000
																																																																																																						IfEq b.5370 Td2130.5382
																																																																																																							Float:0.000000
																																																																																																							Let Td2131.5383
																																																																																																								App sgn.2631b.5370 
																																																																																																								Let Td2132.5384
																																																																																																									App fsqr.2617b.5370 
																																																																																																									Let Td2133.5385
																																																																																																										FReciprocal Td2132.5384
																																																																																																										FMul Td2131.5383 Td2133.5385
																																																																																																					Put abc.5339 Ti2129.5380 Td2134.5381
																																																																																																			Let c.5372
																																																																																																				Let Ti2135.5379
																																																																																																					Int:2
																																																																																																					Get abc.5339 Ti2135.5379
																																																																																																				Let Ti2136.5373
																																																																																																					Int:2
																																																																																																					Let Td2141.5374
																																																																																																						Let Td2137.5375
																																																																																																							Float:0.000000
																																																																																																							IfEq c.5372 Td2137.5375
																																																																																																								Float:0.000000
																																																																																																								Let Td2138.5376
																																																																																																									App sgn.2631c.5372 
																																																																																																									Let Td2139.5377
																																																																																																										App fsqr.2617c.5372 
																																																																																																										Let Td2140.5378
																																																																																																											FReciprocal Td2139.5377
																																																																																																											FMul Td2138.5376 Td2140.5378
																																																																																																						Put abc.5339 Ti2136.5373 Td2141.5374
																																																																																															Let Ti2142.5365
																																																																																																Int:2
																																																																																																IfEq form.5336 Ti2142.5365
																																																																																																	Let Ti2144.5366
																																																																																																		Let Ti2143.5367
																																																																																																			Int:0
																																																																																																			IfEq m_invert.5347 Ti2143.5367
																																																																																																				Int:1
																																																																																																				Int:0
																																																																																																		App vecunit_sgn.2657abc.5339 Ti2144.5366 
																																																																																																	Unit
																																																																																													Let Tu57.5362
																																																																																														Let Ti2145.5363
																																																																																															Int:0
																																																																																															IfEq isrot_p.5338 Ti2145.5363
																																																																																																Unit
																																																																																																App rotate_quadratic_matrix.2762abc.5339 rotation.5355 
																																																																																														Int:1
																																																																LetRec read_object.2767 n.2768 
																																																																	Let Ti2044.5327
																																																																		Int:60
																																																																		IfLE Ti2044.5327 n.2768
																																																																			Unit
																																																																			Let Tb2045.5328
																																																																				App read_nth_object.2765n.2768 
																																																																				Let Ti2046.5329
																																																																					Int:0
																																																																					IfEq Tb2045.5328 Ti2046.5329
																																																																						Let Ta2047.5332
																																																																							ExtArray 0
																																																																							Let Ti2048.5333
																																																																								Int:0
																																																																								Put Ta2047.5332 Ti2048.5333 n.2768
																																																																						Let Ti2050.5330
																																																																							Let Ti2049.5331
																																																																								Int:1
																																																																								Add n.2768 Ti2049.5331
																																																																							App read_object.2767Ti2050.5330 
																																																																	LetRec read_all_object.2769 Tu72.2770 
																																																																		Let Ti2043.5326
																																																																			Int:0
																																																																			App read_object.2767Ti2043.5326 
																																																																		LetRec read_net_item.2771 length.2772 
																																																																			Let item.5314
																																																																				Let Tu2034.5325
																																																																					Unit
																																																																					ExtFunApp read_int Tu2034.5325,
																																																																				Let Ti2036.5315
																																																																					Let Ti2035.5324
																																																																						Int:1
																																																																						Neg Ti2035.5324
																																																																					IfEq item.5314 Ti2036.5315
																																																																						Let Ti2038.5320
																																																																							Let Ti2037.5323
																																																																								Int:1
																																																																								Add length.2772 Ti2037.5323
																																																																							Let Ti2040.5321
																																																																								Let Ti2039.5322
																																																																									Int:1
																																																																									Neg Ti2039.5322
																																																																								ExtFunApp create_array Ti2038.5320,Ti2040.5321,
																																																																						Let v.5316
																																																																							Let Ti2042.5318
																																																																								Let Ti2041.5319
																																																																									Int:1
																																																																									Add length.2772 Ti2041.5319
																																																																								App read_net_item.2771Ti2042.5318 
																																																																							Let Tu73.5317
																																																																								Put v.5316 length.2772 item.5314
																																																																								Var v.5316
																																																																			LetRec read_or_network.2773 length.2774 
																																																																				Let net.5302
																																																																					Let Ti2025.5313
																																																																						Int:0
																																																																						App read_net_item.2771Ti2025.5313 
																																																																					Let Ti2027.5303
																																																																						Let Ti2026.5312
																																																																							Int:0
																																																																							Get net.5302 Ti2026.5312
																																																																						Let Ti2029.5304
																																																																							Let Ti2028.5311
																																																																								Int:1
																																																																								Neg Ti2028.5311
																																																																							IfEq Ti2027.5303 Ti2029.5304
																																																																								Let Ti2031.5309
																																																																									Let Ti2030.5310
																																																																										Int:1
																																																																										Add length.2774 Ti2030.5310
																																																																									ExtFunApp create_array Ti2031.5309,net.5302,
																																																																								Let v.5305
																																																																									Let Ti2033.5307
																																																																										Let Ti2032.5308
																																																																											Int:1
																																																																											Add length.2774 Ti2032.5308
																																																																										App read_or_network.2773Ti2033.5307 
																																																																									Let Tu74.5306
																																																																										Put v.5305 length.2774 net.5302
																																																																										Var v.5305
																																																																				LetRec read_and_network.2775 n.2776 
																																																																					Let net.5292
																																																																						Let Ti2017.5301
																																																																							Int:0
																																																																							App read_net_item.2771Ti2017.5301 
																																																																						Let Ti2019.5293
																																																																							Let Ti2018.5300
																																																																								Int:0
																																																																								Get net.5292 Ti2018.5300
																																																																							Let Ti2021.5294
																																																																								Let Ti2020.5299
																																																																									Int:1
																																																																									Neg Ti2020.5299
																																																																								IfEq Ti2019.5293 Ti2021.5294
																																																																									Unit
																																																																									Let Tu75.5295
																																																																										Let Ta2022.5298
																																																																											ExtArray 332
																																																																											Put Ta2022.5298 n.2776 net.5292
																																																																										Let Ti2024.5296
																																																																											Let Ti2023.5297
																																																																												Int:1
																																																																												Add n.2776 Ti2023.5297
																																																																											App read_and_network.2775Ti2024.5296 
																																																																					LetRec read_parameter.2777 Tu76.2778 
																																																																						Let Tu80.5280
																																																																							Let Tu2009.5291
																																																																								Unit
																																																																								App read_screen_settings.2758Tu2009.5291 
																																																																							Let Tu79.5281
																																																																								Let Tu2010.5290
																																																																									Unit
																																																																									App read_light.2760Tu2010.5290 
																																																																								Let Tu78.5282
																																																																									Let Tu2011.5289
																																																																										Unit
																																																																										App read_all_object.2769Tu2011.5289 
																																																																									Let Tu77.5283
																																																																										Let Ti2012.5288
																																																																											Int:0
																																																																											App read_and_network.2775Ti2012.5288 
																																																																										Let Ta2013.5284
																																																																											ExtArray 536
																																																																											Let Ti2014.5285
																																																																												Int:0
																																																																												Let Ta2016.5286
																																																																													Let Ti2015.5287
																																																																														Int:0
																																																																														App read_or_network.2773Ti2015.5287 
																																																																													Put Ta2013.5284 Ti2014.5285 Ta2016.5286
																																																																						LetRec solver_rect_surface.2779 m.2780 dirvec.2781 b0.2782 b1.2783 b2.2784 i0.2785 i1.2786 i2.2787 
																																																																							Let Td1986.5253
																																																																								Get dirvec.2781 i0.2785
																																																																								Let Td1987.5254
																																																																									Float:0.000000
																																																																									IfEq Td1986.5253 Td1987.5254
																																																																										Int:0
																																																																										Let abc.5255
																																																																											App o_param_abc.2701m.2780 
																																																																											Let d.5256
																																																																												Let Ti1992.5274
																																																																													Let Tb1988.5276
																																																																														App o_isinvert.2691m.2780 
																																																																														Let Ti1991.5277
																																																																															Let Td1989.5278
																																																																																Float:0.000000
																																																																																Let Td1990.5279
																																																																																	Get dirvec.2781 i0.2785
																																																																																	IfLE Td1989.5278 Td1990.5279
																																																																																		Int:0
																																																																																		Int:1
																																																																															xor Tb1988.5276 Ti1991.5277
																																																																													Let Td1993.5275
																																																																														Get abc.5255 i0.2785
																																																																														App fneg_cond.2633Ti1992.5274 Td1993.5275 
																																																																												Let d2.5257
																																																																													Let Td1994.5271
																																																																														FSub d.5256 b0.2782
																																																																														Let Td1995.5272
																																																																															Get dirvec.2781 i0.2785
																																																																															Let Td1996.5273
																																																																																FReciprocal Td1995.5272
																																																																																FMul Td1994.5271 Td1996.5273
																																																																													Let Td1997.5258
																																																																														Get abc.5255 i1.2786
																																																																														Let Td2001.5259
																																																																															Let Td2000.5268
																																																																																Let Td1999.5269
																																																																																	Let Td1998.5270
																																																																																		Get dirvec.2781 i1.2786
																																																																																		FMul d2.5257 Td1998.5270
																																																																																	FAdd Td1999.5269 b1.2783
																																																																																fabs Td2000.5268
																																																																															IfLE Td1997.5258 Td2001.5259
																																																																																Int:0
																																																																																Let Td2002.5260
																																																																																	Get abc.5255 i2.2787
																																																																																	Let Td2006.5261
																																																																																		Let Td2005.5265
																																																																																			Let Td2004.5266
																																																																																				Let Td2003.5267
																																																																																					Get dirvec.2781 i2.2787
																																																																																					FMul d2.5257 Td2003.5267
																																																																																				FAdd Td2004.5266 b2.2784
																																																																																			fabs Td2005.5265
																																																																																		IfLE Td2002.5260 Td2006.5261
																																																																																			Int:0
																																																																																			Let Tu81.5262
																																																																																				Let Ta2007.5263
																																																																																					ExtArray 540
																																																																																					Let Ti2008.5264
																																																																																						Int:0
																																																																																						Put Ta2007.5263 Ti2008.5264 d2.5257
																																																																																				Int:1
																																																																							LetRec solver_rect.2788 m.2789 dirvec.2790 b0.2791 b1.2792 b2.2793 
																																																																								Let Tb1974.5238
																																																																									Let Ti1971.5250
																																																																										Int:0
																																																																										Let Ti1972.5251
																																																																											Int:1
																																																																											Let Ti1973.5252
																																																																												Int:2
																																																																												App solver_rect_surface.2779m.2789 dirvec.2790 b0.2791 b1.2792 b2.2793 Ti1971.5250 Ti1972.5251 Ti1973.5252 
																																																																									Let Ti1975.5239
																																																																										Int:0
																																																																										IfEq Tb1974.5238 Ti1975.5239
																																																																											Let Tb1979.5240
																																																																												Let Ti1976.5247
																																																																													Int:1
																																																																													Let Ti1977.5248
																																																																														Int:2
																																																																														Let Ti1978.5249
																																																																															Int:0
																																																																															App solver_rect_surface.2779m.2789 dirvec.2790 b1.2792 b2.2793 b0.2791 Ti1976.5247 Ti1977.5248 Ti1978.5249 
																																																																												Let Ti1980.5241
																																																																													Int:0
																																																																													IfEq Tb1979.5240 Ti1980.5241
																																																																														Let Tb1984.5242
																																																																															Let Ti1981.5244
																																																																																Int:2
																																																																																Let Ti1982.5245
																																																																																	Int:0
																																																																																	Let Ti1983.5246
																																																																																		Int:1
																																																																																		App solver_rect_surface.2779m.2789 dirvec.2790 b2.2793 b0.2791 b1.2792 Ti1981.5244 Ti1982.5245 Ti1983.5246 
																																																																															Let Ti1985.5243
																																																																																Int:0
																																																																																IfEq Tb1984.5242 Ti1985.5243
																																																																																	Int:0
																																																																																	Int:3
																																																																														Int:2
																																																																											Int:1
																																																																								LetRec solver_surface.2794 m.2795 dirvec.2796 b0.2797 b1.2798 b2.2799 
																																																																									Let abc.5228
																																																																										App o_param_abc.2701m.2795 
																																																																										Let d.5229
																																																																											App veciprod.2660dirvec.2796 abc.5228 
																																																																											Let Td1964.5230
																																																																												Float:0.000000
																																																																												IfLE d.5229 Td1964.5230
																																																																													Int:0
																																																																													Let Tu82.5231
																																																																														Let Ta1965.5232
																																																																															ExtArray 540
																																																																															Let Ti1966.5233
																																																																																Int:0
																																																																																Let Td1970.5234
																																																																																	Let Td1968.5235
																																																																																		Let Td1967.5237
																																																																																			App veciprod2.2663abc.5228 b0.2797 b1.2798 b2.2799 
																																																																																			App fneg.2613Td1967.5237 
																																																																																		Let Td1969.5236
																																																																																			FReciprocal d.5229
																																																																																			FMul Td1968.5235 Td1969.5236
																																																																																	Put Ta1965.5232 Ti1966.5233 Td1970.5234
																																																																														Int:1
																																																																									LetRec quadratic.2800 m.2801 v0.2802 v1.2803 v2.2804 
																																																																										Let diag_part.5204
																																																																											Let Td1947.5218
																																																																												Let Td1943.5222
																																																																													Let Td1941.5226
																																																																														App fsqr.2617v0.2802 
																																																																														Let Td1942.5227
																																																																															App o_param_a.2695m.2801 
																																																																															FMul Td1941.5226 Td1942.5227
																																																																													Let Td1946.5223
																																																																														Let Td1944.5224
																																																																															App fsqr.2617v1.2803 
																																																																															Let Td1945.5225
																																																																																App o_param_b.2697m.2801 
																																																																																FMul Td1944.5224 Td1945.5225
																																																																														FAdd Td1943.5222 Td1946.5223
																																																																												Let Td1950.5219
																																																																													Let Td1948.5220
																																																																														App fsqr.2617v2.2804 
																																																																														Let Td1949.5221
																																																																															App o_param_c.2699m.2801 
																																																																															FMul Td1948.5220 Td1949.5221
																																																																													FAdd Td1947.5218 Td1950.5219
																																																																											Let Ti1951.5205
																																																																												App o_isrot.2693m.2801 
																																																																												Let Ti1952.5206
																																																																													Int:0
																																																																													IfEq Ti1951.5205 Ti1952.5206
																																																																														Var diag_part.5204
																																																																														Let Td1960.5207
																																																																															Let Td1956.5211
																																																																																Let Td1955.5215
																																																																																	Let Td1953.5216
																																																																																		FMul v1.2803 v2.2804
																																																																																		Let Td1954.5217
																																																																																			App o_param_r1.2719m.2801 
																																																																																			FMul Td1953.5216 Td1954.5217
																																																																																	FAdd diag_part.5204 Td1955.5215
																																																																																Let Td1959.5212
																																																																																	Let Td1957.5213
																																																																																		FMul v2.2804 v0.2802
																																																																																		Let Td1958.5214
																																																																																			App o_param_r2.2721m.2801 
																																																																																			FMul Td1957.5213 Td1958.5214
																																																																																	FAdd Td1956.5211 Td1959.5212
																																																																															Let Td1963.5208
																																																																																Let Td1961.5209
																																																																																	FMul v0.2802 v1.2803
																																																																																	Let Td1962.5210
																																																																																		App o_param_r3.2723m.2801 
																																																																																		FMul Td1961.5209 Td1962.5210
																																																																																FAdd Td1960.5207 Td1963.5208
																																																																										LetRec bilinear.2805 m.2806 v0.2807 v1.2808 v2.2809 w0.2810 w1.2811 w2.2812 
																																																																											Let diag_part.5173
																																																																												Let Td1917.5194
																																																																													Let Td1913.5198
																																																																														Let Td1911.5202
																																																																															FMul v0.2807 w0.2810
																																																																															Let Td1912.5203
																																																																																App o_param_a.2695m.2806 
																																																																																FMul Td1911.5202 Td1912.5203
																																																																														Let Td1916.5199
																																																																															Let Td1914.5200
																																																																																FMul v1.2808 w1.2811
																																																																																Let Td1915.5201
																																																																																	App o_param_b.2697m.2806 
																																																																																	FMul Td1914.5200 Td1915.5201
																																																																															FAdd Td1913.5198 Td1916.5199
																																																																													Let Td1920.5195
																																																																														Let Td1918.5196
																																																																															FMul v2.2809 w2.2812
																																																																															Let Td1919.5197
																																																																																App o_param_c.2699m.2806 
																																																																																FMul Td1918.5196 Td1919.5197
																																																																														FAdd Td1917.5194 Td1920.5195
																																																																												Let Ti1921.5174
																																																																													App o_isrot.2693m.2806 
																																																																													Let Ti1922.5175
																																																																														Int:0
																																																																														IfEq Ti1921.5174 Ti1922.5175
																																																																															Var diag_part.5173
																																																																															Let Td1940.5176
																																																																																Let Td1939.5177
																																																																																	Let Td1933.5178
																																																																																		Let Td1927.5184
																																																																																			Let Td1925.5190
																																																																																				Let Td1923.5192
																																																																																					FMul v2.2809 w1.2811
																																																																																					Let Td1924.5193
																																																																																						FMul v1.2808 w2.2812
																																																																																						FAdd Td1923.5192 Td1924.5193
																																																																																				Let Td1926.5191
																																																																																					App o_param_r1.2719m.2806 
																																																																																					FMul Td1925.5190 Td1926.5191
																																																																																			Let Td1932.5185
																																																																																				Let Td1930.5186
																																																																																					Let Td1928.5188
																																																																																						FMul v0.2807 w2.2812
																																																																																						Let Td1929.5189
																																																																																							FMul v2.2809 w0.2810
																																																																																							FAdd Td1928.5188 Td1929.5189
																																																																																					Let Td1931.5187
																																																																																						App o_param_r2.2721m.2806 
																																																																																						FMul Td1930.5186 Td1931.5187
																																																																																				FAdd Td1927.5184 Td1932.5185
																																																																																		Let Td1938.5179
																																																																																			Let Td1936.5180
																																																																																				Let Td1934.5182
																																																																																					FMul v0.2807 w1.2811
																																																																																					Let Td1935.5183
																																																																																						FMul v1.2808 w0.2810
																																																																																						FAdd Td1934.5182 Td1935.5183
																																																																																				Let Td1937.5181
																																																																																					App o_param_r3.2723m.2806 
																																																																																					FMul Td1936.5180 Td1937.5181
																																																																																			FAdd Td1933.5178 Td1938.5179
																																																																																	App fhalf.2615Td1939.5177 
																																																																																FAdd diag_part.5173 Td1940.5176
																																																																											LetRec solver_second.2813 m.2814 dirvec.2815 b0.2816 b1.2817 b2.2818 
																																																																												Let aa.5139
																																																																													Let Td1886.5167
																																																																														Let Ti1885.5172
																																																																															Int:0
																																																																															Get dirvec.2815 Ti1885.5172
																																																																														Let Td1888.5168
																																																																															Let Ti1887.5171
																																																																																Int:1
																																																																																Get dirvec.2815 Ti1887.5171
																																																																															Let Td1890.5169
																																																																																Let Ti1889.5170
																																																																																	Int:2
																																																																																	Get dirvec.2815 Ti1889.5170
																																																																																App quadratic.2800m.2814 Td1886.5167 Td1888.5168 Td1890.5169 
																																																																													Let Td1891.5140
																																																																														Float:0.000000
																																																																														IfEq aa.5139 Td1891.5140
																																																																															Int:0
																																																																															Let bb.5141
																																																																																Let Td1893.5161
																																																																																	Let Ti1892.5166
																																																																																		Int:0
																																																																																		Get dirvec.2815 Ti1892.5166
																																																																																	Let Td1895.5162
																																																																																		Let Ti1894.5165
																																																																																			Int:1
																																																																																			Get dirvec.2815 Ti1894.5165
																																																																																		Let Td1897.5163
																																																																																			Let Ti1896.5164
																																																																																				Int:2
																																																																																				Get dirvec.2815 Ti1896.5164
																																																																																			App bilinear.2805m.2814 Td1893.5161 Td1895.5162 Td1897.5163 b0.2816 b1.2817 b2.2818 
																																																																																Let cc0.5142
																																																																																	App quadratic.2800m.2814 b0.2816 b1.2817 b2.2818 
																																																																																	Let cc.5143
																																																																																		Let Ti1898.5158
																																																																																			App o_form.2687m.2814 
																																																																																			Let Ti1899.5159
																																																																																				Int:3
																																																																																				IfEq Ti1898.5158 Ti1899.5159
																																																																																					Let Td1900.5160
																																																																																						Float:1.000000
																																																																																						FSub cc0.5142 Td1900.5160
																																																																																					Var cc0.5142
																																																																																		Let d.5144
																																																																																			Let Td1901.5156
																																																																																				App fsqr.2617bb.5141 
																																																																																				Let Td1902.5157
																																																																																					FMul aa.5139 cc.5143
																																																																																					FSub Td1901.5156 Td1902.5157
																																																																																			Let Td1903.5145
																																																																																				Float:0.000000
																																																																																				IfLE d.5144 Td1903.5145
																																																																																					Int:0
																																																																																					Let sd.5146
																																																																																						sqrt d.5144
																																																																																						Let t1.5147
																																																																																							Let Tb1904.5154
																																																																																								App o_isinvert.2691m.2814 
																																																																																								Let Ti1905.5155
																																																																																									Int:0
																																																																																									IfEq Tb1904.5154 Ti1905.5155
																																																																																										App fneg.2613sd.5146 
																																																																																										Var sd.5146
																																																																																							Let Tu83.5148
																																																																																								Let Ta1906.5149
																																																																																									ExtArray 540
																																																																																									Let Ti1907.5150
																																																																																										Int:0
																																																																																										Let Td1910.5151
																																																																																											Let Td1908.5152
																																																																																												FSub t1.5147 bb.5141
																																																																																												Let Td1909.5153
																																																																																													FReciprocal aa.5139
																																																																																													FMul Td1908.5152 Td1909.5153
																																																																																											Put Ta1906.5149 Ti1907.5150 Td1910.5151
																																																																																								Int:1
																																																																												LetRec solver.2819 index.2820 dirvec.2821 org.2822 
																																																																													Let m.5122
																																																																														Let Ta1873.5138
																																																																															ExtArray 48
																																																																															Get Ta1873.5138 index.2820
																																																																														Let b0.5123
																																																																															Let Td1875.5135
																																																																																Let Ti1874.5137
																																																																																	Int:0
																																																																																	Get org.2822 Ti1874.5137
																																																																																Let Td1876.5136
																																																																																	App o_param_x.2703m.5122 
																																																																																	FSub Td1875.5135 Td1876.5136
																																																																															Let b1.5124
																																																																																Let Td1878.5132
																																																																																	Let Ti1877.5134
																																																																																		Int:1
																																																																																		Get org.2822 Ti1877.5134
																																																																																	Let Td1879.5133
																																																																																		App o_param_y.2705m.5122 
																																																																																		FSub Td1878.5132 Td1879.5133
																																																																																Let b2.5125
																																																																																	Let Td1881.5129
																																																																																		Let Ti1880.5131
																																																																																			Int:2
																																																																																			Get org.2822 Ti1880.5131
																																																																																		Let Td1882.5130
																																																																																			App o_param_z.2707m.5122 
																																																																																			FSub Td1881.5129 Td1882.5130
																																																																																	Let m_shape.5126
																																																																																		App o_form.2687m.5122 
																																																																																		Let Ti1883.5127
																																																																																			Int:1
																																																																																			IfEq m_shape.5126 Ti1883.5127
																																																																																				App solver_rect.2788m.5122 dirvec.2821 b0.5123 b1.5124 b2.5125 
																																																																																				Let Ti1884.5128
																																																																																					Int:2
																																																																																					IfEq m_shape.5126 Ti1884.5128
																																																																																						App solver_surface.2794m.5122 dirvec.2821 b0.5123 b1.5124 b2.5125 
																																																																																						App solver_second.2813m.5122 dirvec.2821 b0.5123 b1.5124 b2.5125 
																																																																													LetRec solver_rect_fast.2823 m.2824 v.2825 dconst.2826 b0.2827 b1.2828 b2.2829 
																																																																														Let d0.5044
																																																																															Let Td1803.5117
																																																																																Let Td1802.5120
																																																																																	Let Ti1801.5121
																																																																																		Int:0
																																																																																		Get dconst.2826 Ti1801.5121
																																																																																	FSub Td1802.5120 b0.2827
																																																																																Let Td1805.5118
																																																																																	Let Ti1804.5119
																																																																																		Int:1
																																																																																		Get dconst.2826 Ti1804.5119
																																																																																	FMul Td1803.5117 Td1805.5118
																																																																															Let Ti1821.5045
																																																																																Let Td1806.5102
																																																																																	App o_param_b.2697m.2824 
																																																																																	Let Td1811.5103
																																																																																		Let Td1810.5113
																																																																																			Let Td1809.5114
																																																																																				Let Td1808.5115
																																																																																					Let Ti1807.5116
																																																																																						Int:1
																																																																																						Get v.2825 Ti1807.5116
																																																																																					FMul d0.5044 Td1808.5115
																																																																																				FAdd Td1809.5114 b1.2828
																																																																																			fabs Td1810.5113
																																																																																		IfLE Td1806.5102 Td1811.5103
																																																																																			Int:0
																																																																																			Let Td1812.5104
																																																																																				App o_param_c.2699m.2824 
																																																																																				Let Td1817.5105
																																																																																					Let Td1816.5109
																																																																																						Let Td1815.5110
																																																																																							Let Td1814.5111
																																																																																								Let Ti1813.5112
																																																																																									Int:2
																																																																																									Get v.2825 Ti1813.5112
																																																																																								FMul d0.5044 Td1814.5111
																																																																																							FAdd Td1815.5110 b2.2829
																																																																																						fabs Td1816.5109
																																																																																					IfLE Td1812.5104 Td1817.5105
																																																																																						Int:0
																																																																																						Let Td1819.5106
																																																																																							Let Ti1818.5108
																																																																																								Int:1
																																																																																								Get dconst.2826 Ti1818.5108
																																																																																							Let Td1820.5107
																																																																																								Float:0.000000
																																																																																								IfEq Td1819.5106 Td1820.5107
																																																																																									Int:0
																																																																																									Int:1
																																																																																Let Ti1822.5046
																																																																																	Int:0
																																																																																	IfEq Ti1821.5045 Ti1822.5046
																																																																																		Let d1.5050
																																																																																			Let Td1825.5097
																																																																																				Let Td1824.5100
																																																																																					Let Ti1823.5101
																																																																																						Int:2
																																																																																						Get dconst.2826 Ti1823.5101
																																																																																					FSub Td1824.5100 b1.2828
																																																																																				Let Td1827.5098
																																																																																					Let Ti1826.5099
																																																																																						Int:3
																																																																																						Get dconst.2826 Ti1826.5099
																																																																																					FMul Td1825.5097 Td1827.5098
																																																																																			Let Ti1843.5051
																																																																																				Let Td1828.5082
																																																																																					App o_param_a.2695m.2824 
																																																																																					Let Td1833.5083
																																																																																						Let Td1832.5093
																																																																																							Let Td1831.5094
																																																																																								Let Td1830.5095
																																																																																									Let Ti1829.5096
																																																																																										Int:0
																																																																																										Get v.2825 Ti1829.5096
																																																																																									FMul d1.5050 Td1830.5095
																																																																																								FAdd Td1831.5094 b0.2827
																																																																																							fabs Td1832.5093
																																																																																						IfLE Td1828.5082 Td1833.5083
																																																																																							Int:0
																																																																																							Let Td1834.5084
																																																																																								App o_param_c.2699m.2824 
																																																																																								Let Td1839.5085
																																																																																									Let Td1838.5089
																																																																																										Let Td1837.5090
																																																																																											Let Td1836.5091
																																																																																												Let Ti1835.5092
																																																																																													Int:2
																																																																																													Get v.2825 Ti1835.5092
																																																																																												FMul d1.5050 Td1836.5091
																																																																																											FAdd Td1837.5090 b2.2829
																																																																																										fabs Td1838.5089
																																																																																									IfLE Td1834.5084 Td1839.5085
																																																																																										Int:0
																																																																																										Let Td1841.5086
																																																																																											Let Ti1840.5088
																																																																																												Int:3
																																																																																												Get dconst.2826 Ti1840.5088
																																																																																											Let Td1842.5087
																																																																																												Float:0.000000
																																																																																												IfEq Td1841.5086 Td1842.5087
																																																																																													Int:0
																																																																																													Int:1
																																																																																				Let Ti1844.5052
																																																																																					Int:0
																																																																																					IfEq Ti1843.5051 Ti1844.5052
																																																																																						Let d2.5056
																																																																																							Let Td1847.5077
																																																																																								Let Td1846.5080
																																																																																									Let Ti1845.5081
																																																																																										Int:4
																																																																																										Get dconst.2826 Ti1845.5081
																																																																																									FSub Td1846.5080 b2.2829
																																																																																								Let Td1849.5078
																																																																																									Let Ti1848.5079
																																																																																										Int:5
																																																																																										Get dconst.2826 Ti1848.5079
																																																																																									FMul Td1847.5077 Td1849.5078
																																																																																							Let Ti1865.5057
																																																																																								Let Td1850.5062
																																																																																									App o_param_a.2695m.2824 
																																																																																									Let Td1855.5063
																																																																																										Let Td1854.5073
																																																																																											Let Td1853.5074
																																																																																												Let Td1852.5075
																																																																																													Let Ti1851.5076
																																																																																														Int:0
																																																																																														Get v.2825 Ti1851.5076
																																																																																													FMul d2.5056 Td1852.5075
																																																																																												FAdd Td1853.5074 b0.2827
																																																																																											fabs Td1854.5073
																																																																																										IfLE Td1850.5062 Td1855.5063
																																																																																											Int:0
																																																																																											Let Td1856.5064
																																																																																												App o_param_b.2697m.2824 
																																																																																												Let Td1861.5065
																																																																																													Let Td1860.5069
																																																																																														Let Td1859.5070
																																																																																															Let Td1858.5071
																																																																																																Let Ti1857.5072
																																																																																																	Int:1
																																																																																																	Get v.2825 Ti1857.5072
																																																																																																FMul d2.5056 Td1858.5071
																																																																																															FAdd Td1859.5070 b1.2828
																																																																																														fabs Td1860.5069
																																																																																													IfLE Td1856.5064 Td1861.5065
																																																																																														Int:0
																																																																																														Let Td1863.5066
																																																																																															Let Ti1862.5068
																																																																																																Int:5
																																																																																																Get dconst.2826 Ti1862.5068
																																																																																															Let Td1864.5067
																																																																																																Float:0.000000
																																																																																																IfEq Td1863.5066 Td1864.5067
																																																																																																	Int:0
																																																																																																	Int:1
																																																																																								Let Ti1866.5058
																																																																																									Int:0
																																																																																									IfEq Ti1865.5057 Ti1866.5058
																																																																																										Int:0
																																																																																										Let Tu86.5059
																																																																																											Let Ta1867.5060
																																																																																												ExtArray 540
																																																																																												Let Ti1868.5061
																																																																																													Int:0
																																																																																													Put Ta1867.5060 Ti1868.5061 d2.5056
																																																																																											Int:3
																																																																																						Let Tu85.5053
																																																																																							Let Ta1869.5054
																																																																																								ExtArray 540
																																																																																								Let Ti1870.5055
																																																																																									Int:0
																																																																																									Put Ta1869.5054 Ti1870.5055 d1.5050
																																																																																							Int:2
																																																																																		Let Tu84.5047
																																																																																			Let Ta1871.5048
																																																																																				ExtArray 540
																																																																																				Let Ti1872.5049
																																																																																					Int:0
																																																																																					Put Ta1871.5048 Ti1872.5049 d0.5044
																																																																																			Int:1
																																																																														LetRec solver_surface_fast.2830 m.2831 dconst.2832 b0.2833 b1.2834 b2.2835 
																																																																															Let Td1785.5027
																																																																																Float:0.000000
																																																																																Let Td1787.5028
																																																																																	Let Ti1786.5043
																																																																																		Int:0
																																																																																		Get dconst.2832 Ti1786.5043
																																																																																	IfLE Td1785.5027 Td1787.5028
																																																																																		Int:0
																																																																																		Let Tu87.5029
																																																																																			Let Ta1788.5030
																																																																																				ExtArray 540
																																																																																				Let Ti1789.5031
																																																																																					Int:0
																																																																																					Let Td1800.5032
																																																																																						Let Td1796.5033
																																																																																							Let Td1792.5037
																																																																																								Let Td1791.5041
																																																																																									Let Ti1790.5042
																																																																																										Int:1
																																																																																										Get dconst.2832 Ti1790.5042
																																																																																									FMul Td1791.5041 b0.2833
																																																																																								Let Td1795.5038
																																																																																									Let Td1794.5039
																																																																																										Let Ti1793.5040
																																																																																											Int:2
																																																																																											Get dconst.2832 Ti1793.5040
																																																																																										FMul Td1794.5039 b1.2834
																																																																																									FAdd Td1792.5037 Td1795.5038
																																																																																							Let Td1799.5034
																																																																																								Let Td1798.5035
																																																																																									Let Ti1797.5036
																																																																																										Int:3
																																																																																										Get dconst.2832 Ti1797.5036
																																																																																									FMul Td1798.5035 b2.2835
																																																																																								FAdd Td1796.5033 Td1799.5034
																																																																																						Put Ta1788.5030 Ti1789.5031 Td1800.5032
																																																																																			Int:1
																																																																															LetRec solver_second_fast.2836 m.2837 dconst.2838 b0.2839 b1.2840 b2.2841 
																																																																																Let aa.4987
																																																																																	Let Ti1751.5026
																																																																																		Int:0
																																																																																		Get dconst.2838 Ti1751.5026
																																																																																	Let Td1752.4988
																																																																																		Float:0.000000
																																																																																		IfEq aa.4987 Td1752.4988
																																																																																			Int:0
																																																																																			Let neg_bb.4989
																																																																																				Let Td1759.5016
																																																																																					Let Td1755.5020
																																																																																						Let Td1754.5024
																																																																																							Let Ti1753.5025
																																																																																								Int:1
																																																																																								Get dconst.2838 Ti1753.5025
																																																																																							FMul Td1754.5024 b0.2839
																																																																																						Let Td1758.5021
																																																																																							Let Td1757.5022
																																																																																								Let Ti1756.5023
																																																																																									Int:2
																																																																																									Get dconst.2838 Ti1756.5023
																																																																																								FMul Td1757.5022 b1.2840
																																																																																							FAdd Td1755.5020 Td1758.5021
																																																																																					Let Td1762.5017
																																																																																						Let Td1761.5018
																																																																																							Let Ti1760.5019
																																																																																								Int:3
																																																																																								Get dconst.2838 Ti1760.5019
																																																																																							FMul Td1761.5018 b2.2841
																																																																																						FAdd Td1759.5016 Td1762.5017
																																																																																				Let cc0.4990
																																																																																					App quadratic.2800m.2837 b0.2839 b1.2840 b2.2841 
																																																																																					Let cc.4991
																																																																																						Let Ti1763.5013
																																																																																							App o_form.2687m.2837 
																																																																																							Let Ti1764.5014
																																																																																								Int:3
																																																																																								IfEq Ti1763.5013 Ti1764.5014
																																																																																									Let Td1765.5015
																																																																																										Float:1.000000
																																																																																										FSub cc0.4990 Td1765.5015
																																																																																									Var cc0.4990
																																																																																						Let d.4992
																																																																																							Let Td1766.5011
																																																																																								App fsqr.2617neg_bb.4989 
																																																																																								Let Td1767.5012
																																																																																									FMul aa.4987 cc.4991
																																																																																									FSub Td1766.5011 Td1767.5012
																																																																																							Let Td1768.4993
																																																																																								Float:0.000000
																																																																																								IfLE d.4992 Td1768.4993
																																																																																									Int:0
																																																																																									Let Tu88.4994
																																																																																										Let Tb1769.4995
																																																																																											App o_isinvert.2691m.2837 
																																																																																											Let Ti1770.4996
																																																																																												Int:0
																																																																																												IfEq Tb1769.4995 Ti1770.4996
																																																																																													Let Ta1771.5004
																																																																																														ExtArray 540
																																																																																														Let Ti1772.5005
																																																																																															Int:0
																																																																																															Let Td1777.5006
																																																																																																Let Td1774.5007
																																																																																																	Let Td1773.5010
																																																																																																		sqrt d.4992
																																																																																																		FSub neg_bb.4989 Td1773.5010
																																																																																																	Let Td1776.5008
																																																																																																		Let Ti1775.5009
																																																																																																			Int:4
																																																																																																			Get dconst.2838 Ti1775.5009
																																																																																																		FMul Td1774.5007 Td1776.5008
																																																																																																Put Ta1771.5004 Ti1772.5005 Td1777.5006
																																																																																													Let Ta1778.4997
																																																																																														ExtArray 540
																																																																																														Let Ti1779.4998
																																																																																															Int:0
																																																																																															Let Td1784.4999
																																																																																																Let Td1781.5000
																																																																																																	Let Td1780.5003
																																																																																																		sqrt d.4992
																																																																																																		FAdd neg_bb.4989 Td1780.5003
																																																																																																	Let Td1783.5001
																																																																																																		Let Ti1782.5002
																																																																																																			Int:4
																																																																																																			Get dconst.2838 Ti1782.5002
																																																																																																		FMul Td1781.5000 Td1783.5001
																																																																																																Put Ta1778.4997 Ti1779.4998 Td1784.4999
																																																																																										Int:1
																																																																																LetRec solver_fast.2842 index.2843 dirvec.2844 org.2845 
																																																																																	Let m.4967
																																																																																		Let Ta1738.4986
																																																																																			ExtArray 48
																																																																																			Get Ta1738.4986 index.2843
																																																																																		Let b0.4968
																																																																																			Let Td1740.4983
																																																																																				Let Ti1739.4985
																																																																																					Int:0
																																																																																					Get org.2845 Ti1739.4985
																																																																																				Let Td1741.4984
																																																																																					App o_param_x.2703m.4967 
																																																																																					FSub Td1740.4983 Td1741.4984
																																																																																			Let b1.4969
																																																																																				Let Td1743.4980
																																																																																					Let Ti1742.4982
																																																																																						Int:1
																																																																																						Get org.2845 Ti1742.4982
																																																																																					Let Td1744.4981
																																																																																						App o_param_y.2705m.4967 
																																																																																						FSub Td1743.4980 Td1744.4981
																																																																																				Let b2.4970
																																																																																					Let Td1746.4977
																																																																																						Let Ti1745.4979
																																																																																							Int:2
																																																																																							Get org.2845 Ti1745.4979
																																																																																						Let Td1747.4978
																																																																																							App o_param_z.2707m.4967 
																																																																																							FSub Td1746.4977 Td1747.4978
																																																																																					Let dconsts.4971
																																																																																						App d_const.2748dirvec.2844 
																																																																																						Let dconst.4972
																																																																																							Get dconsts.4971 index.2843
																																																																																							Let m_shape.4973
																																																																																								App o_form.2687m.4967 
																																																																																								Let Ti1748.4974
																																																																																									Int:1
																																																																																									IfEq m_shape.4973 Ti1748.4974
																																																																																										Let Ta1749.4976
																																																																																											App d_vec.2746dirvec.2844 
																																																																																											App solver_rect_fast.2823m.4967 Ta1749.4976 dconst.4972 b0.4968 b1.4969 b2.4970 
																																																																																										Let Ti1750.4975
																																																																																											Int:2
																																																																																											IfEq m_shape.4973 Ti1750.4975
																																																																																												App solver_surface_fast.2830m.4967 dconst.4972 b0.4968 b1.4969 b2.4970 
																																																																																												App solver_second_fast.2836m.4967 dconst.4972 b0.4968 b1.4969 b2.4970 
																																																																																	LetRec solver_surface_fast2.2846 m.2847 dconst.2848 sconst.2849 b0.2850 b1.2851 b2.2852 
																																																																																		Let Td1728.4956
																																																																																			Float:0.000000
																																																																																			Let Td1730.4957
																																																																																				Let Ti1729.4966
																																																																																					Int:0
																																																																																					Get dconst.2848 Ti1729.4966
																																																																																				IfLE Td1728.4956 Td1730.4957
																																																																																					Int:0
																																																																																					Let Tu89.4958
																																																																																						Let Ta1731.4959
																																																																																							ExtArray 540
																																																																																							Let Ti1732.4960
																																																																																								Int:0
																																																																																								Let Td1737.4961
																																																																																									Let Td1734.4962
																																																																																										Let Ti1733.4965
																																																																																											Int:0
																																																																																											Get dconst.2848 Ti1733.4965
																																																																																										Let Td1736.4963
																																																																																											Let Ti1735.4964
																																																																																												Int:3
																																																																																												Get sconst.2849 Ti1735.4964
																																																																																											FMul Td1734.4962 Td1736.4963
																																																																																									Put Ta1731.4959 Ti1732.4960 Td1737.4961
																																																																																						Int:1
																																																																																		LetRec solver_second_fast2.2853 m.2854 dconst.2855 sconst.2856 b0.2857 b1.2858 b2.2859 
																																																																																			Let aa.4919
																																																																																				Let Ti1696.4955
																																																																																					Int:0
																																																																																					Get dconst.2855 Ti1696.4955
																																																																																				Let Td1697.4920
																																																																																					Float:0.000000
																																																																																					IfEq aa.4919 Td1697.4920
																																																																																						Int:0
																																																																																						Let neg_bb.4921
																																																																																							Let Td1704.4945
																																																																																								Let Td1700.4949
																																																																																									Let Td1699.4953
																																																																																										Let Ti1698.4954
																																																																																											Int:1
																																																																																											Get dconst.2855 Ti1698.4954
																																																																																										FMul Td1699.4953 b0.2857
																																																																																									Let Td1703.4950
																																																																																										Let Td1702.4951
																																																																																											Let Ti1701.4952
																																																																																												Int:2
																																																																																												Get dconst.2855 Ti1701.4952
																																																																																											FMul Td1702.4951 b1.2858
																																																																																										FAdd Td1700.4949 Td1703.4950
																																																																																								Let Td1707.4946
																																																																																									Let Td1706.4947
																																																																																										Let Ti1705.4948
																																																																																											Int:3
																																																																																											Get dconst.2855 Ti1705.4948
																																																																																										FMul Td1706.4947 b2.2859
																																																																																									FAdd Td1704.4945 Td1707.4946
																																																																																							Let cc.4922
																																																																																								Let Ti1708.4944
																																																																																									Int:3
																																																																																									Get sconst.2856 Ti1708.4944
																																																																																								Let d.4923
																																																																																									Let Td1709.4942
																																																																																										App fsqr.2617neg_bb.4921 
																																																																																										Let Td1710.4943
																																																																																											FMul aa.4919 cc.4922
																																																																																											FSub Td1709.4942 Td1710.4943
																																																																																									Let Td1711.4924
																																																																																										Float:0.000000
																																																																																										IfLE d.4923 Td1711.4924
																																																																																											Int:0
																																																																																											Let Tu90.4925
																																																																																												Let Tb1712.4926
																																																																																													App o_isinvert.2691m.2854 
																																																																																													Let Ti1713.4927
																																																																																														Int:0
																																																																																														IfEq Tb1712.4926 Ti1713.4927
																																																																																															Let Ta1714.4935
																																																																																																ExtArray 540
																																																																																																Let Ti1715.4936
																																																																																																	Int:0
																																																																																																	Let Td1720.4937
																																																																																																		Let Td1717.4938
																																																																																																			Let Td1716.4941
																																																																																																				sqrt d.4923
																																																																																																				FSub neg_bb.4921 Td1716.4941
																																																																																																			Let Td1719.4939
																																																																																																				Let Ti1718.4940
																																																																																																					Int:4
																																																																																																					Get dconst.2855 Ti1718.4940
																																																																																																				FMul Td1717.4938 Td1719.4939
																																																																																																		Put Ta1714.4935 Ti1715.4936 Td1720.4937
																																																																																															Let Ta1721.4928
																																																																																																ExtArray 540
																																																																																																Let Ti1722.4929
																																																																																																	Int:0
																																																																																																	Let Td1727.4930
																																																																																																		Let Td1724.4931
																																																																																																			Let Td1723.4934
																																																																																																				sqrt d.4923
																																																																																																				FAdd neg_bb.4921 Td1723.4934
																																																																																																			Let Td1726.4932
																																																																																																				Let Ti1725.4933
																																																																																																					Int:4
																																																																																																					Get dconst.2855 Ti1725.4933
																																																																																																				FMul Td1724.4931 Td1726.4932
																																																																																																		Put Ta1721.4928 Ti1722.4929 Td1727.4930
																																																																																												Int:1
																																																																																			LetRec solver_fast2.2860 index.2861 dirvec.2862 
																																																																																				Let m.4904
																																																																																					Let Ta1689.4918
																																																																																						ExtArray 48
																																																																																						Get Ta1689.4918 index.2861
																																																																																					Let sconst.4905
																																																																																						App o_param_ctbl.2725m.4904 
																																																																																						Let b0.4906
																																																																																							Let Ti1690.4917
																																																																																								Int:0
																																																																																								Get sconst.4905 Ti1690.4917
																																																																																							Let b1.4907
																																																																																								Let Ti1691.4916
																																																																																									Int:1
																																																																																									Get sconst.4905 Ti1691.4916
																																																																																								Let b2.4908
																																																																																									Let Ti1692.4915
																																																																																										Int:2
																																																																																										Get sconst.4905 Ti1692.4915
																																																																																									Let dconsts.4909
																																																																																										App d_const.2748dirvec.2862 
																																																																																										Let dconst.4910
																																																																																											Get dconsts.4909 index.2861
																																																																																											Let m_shape.4911
																																																																																												App o_form.2687m.4904 
																																																																																												Let Ti1693.4912
																																																																																													Int:1
																																																																																													IfEq m_shape.4911 Ti1693.4912
																																																																																														Let Ta1694.4914
																																																																																															App d_vec.2746dirvec.2862 
																																																																																															App solver_rect_fast.2823m.4904 Ta1694.4914 dconst.4910 b0.4906 b1.4907 b2.4908 
																																																																																														Let Ti1695.4913
																																																																																															Int:2
																																																																																															IfEq m_shape.4911 Ti1695.4913
																																																																																																App solver_surface_fast2.2846m.4904 dconst.4910 sconst.4905 b0.4906 b1.4907 b2.4908 
																																																																																																App solver_second_fast2.2853m.4904 dconst.4910 sconst.4905 b0.4906 b1.4907 b2.4908 
																																																																																				LetRec setup_rect_table.2863 vec.2864 m.2865 
																																																																																					Let const.4835
																																																																																						Let Ti1627.4902
																																																																																							Int:6
																																																																																							Let Td1628.4903
																																																																																								Float:0.000000
																																																																																								ExtFunApp create_float_array Ti1627.4902,Td1628.4903,
																																																																																						Let Tu96.4836
																																																																																							Let Td1630.4881
																																																																																								Let Ti1629.4901
																																																																																									Int:0
																																																																																									Get vec.2864 Ti1629.4901
																																																																																								Let Td1631.4882
																																																																																									Float:0.000000
																																																																																									IfEq Td1630.4881 Td1631.4882
																																																																																										Let Ti1632.4899
																																																																																											Int:1
																																																																																											Let Td1633.4900
																																																																																												Float:0.000000
																																																																																												Put const.4835 Ti1632.4899 Td1633.4900
																																																																																										Let Tu91.4883
																																																																																											Let Ti1634.4890
																																																																																												Int:0
																																																																																												Let Td1642.4891
																																																																																													Let Ti1640.4892
																																																																																														Let Tb1635.4894
																																																																																															App o_isinvert.2691m.2865 
																																																																																															Let Ti1639.4895
																																																																																																Let Td1636.4896
																																																																																																	Float:0.000000
																																																																																																	Let Td1638.4897
																																																																																																		Let Ti1637.4898
																																																																																																			Int:0
																																																																																																			Get vec.2864 Ti1637.4898
																																																																																																		IfLE Td1636.4896 Td1638.4897
																																																																																																			Int:0
																																																																																																			Int:1
																																																																																																xor Tb1635.4894 Ti1639.4895
																																																																																														Let Td1641.4893
																																																																																															App o_param_a.2695m.2865 
																																																																																															App fneg_cond.2633Ti1640.4892 Td1641.4893 
																																																																																													Put const.4835 Ti1634.4890 Td1642.4891
																																																																																											Let Ti1643.4884
																																																																																												Int:1
																																																																																												Let Td1648.4885
																																																																																													Let Td1644.4886
																																																																																														Float:1.000000
																																																																																														Let Td1646.4887
																																																																																															Let Ti1645.4889
																																																																																																Int:0
																																																																																																Get vec.2864 Ti1645.4889
																																																																																															Let Td1647.4888
																																																																																																FReciprocal Td1646.4887
																																																																																																FMul Td1644.4886 Td1647.4888
																																																																																													Put const.4835 Ti1643.4884 Td1648.4885
																																																																																							Let Tu95.4837
																																																																																								Let Td1650.4860
																																																																																									Let Ti1649.4880
																																																																																										Int:1
																																																																																										Get vec.2864 Ti1649.4880
																																																																																									Let Td1651.4861
																																																																																										Float:0.000000
																																																																																										IfEq Td1650.4860 Td1651.4861
																																																																																											Let Ti1652.4878
																																																																																												Int:3
																																																																																												Let Td1653.4879
																																																																																													Float:0.000000
																																																																																													Put const.4835 Ti1652.4878 Td1653.4879
																																																																																											Let Tu92.4862
																																																																																												Let Ti1654.4869
																																																																																													Int:2
																																																																																													Let Td1662.4870
																																																																																														Let Ti1660.4871
																																																																																															Let Tb1655.4873
																																																																																																App o_isinvert.2691m.2865 
																																																																																																Let Ti1659.4874
																																																																																																	Let Td1656.4875
																																																																																																		Float:0.000000
																																																																																																		Let Td1658.4876
																																																																																																			Let Ti1657.4877
																																																																																																				Int:1
																																																																																																				Get vec.2864 Ti1657.4877
																																																																																																			IfLE Td1656.4875 Td1658.4876
																																																																																																				Int:0
																																																																																																				Int:1
																																																																																																	xor Tb1655.4873 Ti1659.4874
																																																																																															Let Td1661.4872
																																																																																																App o_param_b.2697m.2865 
																																																																																																App fneg_cond.2633Ti1660.4871 Td1661.4872 
																																																																																														Put const.4835 Ti1654.4869 Td1662.4870
																																																																																												Let Ti1663.4863
																																																																																													Int:3
																																																																																													Let Td1668.4864
																																																																																														Let Td1664.4865
																																																																																															Float:1.000000
																																																																																															Let Td1666.4866
																																																																																																Let Ti1665.4868
																																																																																																	Int:1
																																																																																																	Get vec.2864 Ti1665.4868
																																																																																																Let Td1667.4867
																																																																																																	FReciprocal Td1666.4866
																																																																																																	FMul Td1664.4865 Td1667.4867
																																																																																														Put const.4835 Ti1663.4863 Td1668.4864
																																																																																								Let Tu94.4838
																																																																																									Let Td1670.4839
																																																																																										Let Ti1669.4859
																																																																																											Int:2
																																																																																											Get vec.2864 Ti1669.4859
																																																																																										Let Td1671.4840
																																																																																											Float:0.000000
																																																																																											IfEq Td1670.4839 Td1671.4840
																																																																																												Let Ti1672.4857
																																																																																													Int:5
																																																																																													Let Td1673.4858
																																																																																														Float:0.000000
																																																																																														Put const.4835 Ti1672.4857 Td1673.4858
																																																																																												Let Tu93.4841
																																																																																													Let Ti1674.4848
																																																																																														Int:4
																																																																																														Let Td1682.4849
																																																																																															Let Ti1680.4850
																																																																																																Let Tb1675.4852
																																																																																																	App o_isinvert.2691m.2865 
																																																																																																	Let Ti1679.4853
																																																																																																		Let Td1676.4854
																																																																																																			Float:0.000000
																																																																																																			Let Td1678.4855
																																																																																																				Let Ti1677.4856
																																																																																																					Int:2
																																																																																																					Get vec.2864 Ti1677.4856
																																																																																																				IfLE Td1676.4854 Td1678.4855
																																																																																																					Int:0
																																																																																																					Int:1
																																																																																																		xor Tb1675.4852 Ti1679.4853
																																																																																																Let Td1681.4851
																																																																																																	App o_param_c.2699m.2865 
																																																																																																	App fneg_cond.2633Ti1680.4850 Td1681.4851 
																																																																																															Put const.4835 Ti1674.4848 Td1682.4849
																																																																																													Let Ti1683.4842
																																																																																														Int:5
																																																																																														Let Td1688.4843
																																																																																															Let Td1684.4844
																																																																																																Float:1.000000
																																																																																																Let Td1686.4845
																																																																																																	Let Ti1685.4847
																																																																																																		Int:2
																																																																																																		Get vec.2864 Ti1685.4847
																																																																																																	Let Td1687.4846
																																																																																																		FReciprocal Td1686.4845
																																																																																																		FMul Td1684.4844 Td1687.4846
																																																																																															Put const.4835 Ti1683.4842 Td1688.4843
																																																																																									Var const.4835
																																																																																					LetRec setup_surface_table.2866 vec.2867 m.2868 
																																																																																						Let const.4792
																																																																																							Let Ti1590.4833
																																																																																								Int:4
																																																																																								Let Td1591.4834
																																																																																									Float:0.000000
																																																																																									ExtFunApp create_float_array Ti1590.4833,Td1591.4834,
																																																																																							Let d.4793
																																																																																								Let Td1600.4820
																																																																																									Let Td1595.4825
																																																																																										Let Td1593.4830
																																																																																											Let Ti1592.4832
																																																																																												Int:0
																																																																																												Get vec.2867 Ti1592.4832
																																																																																											Let Td1594.4831
																																																																																												App o_param_a.2695m.2868 
																																																																																												FMul Td1593.4830 Td1594.4831
																																																																																										Let Td1599.4826
																																																																																											Let Td1597.4827
																																																																																												Let Ti1596.4829
																																																																																													Int:1
																																																																																													Get vec.2867 Ti1596.4829
																																																																																												Let Td1598.4828
																																																																																													App o_param_b.2697m.2868 
																																																																																													FMul Td1597.4827 Td1598.4828
																																																																																											FAdd Td1595.4825 Td1599.4826
																																																																																									Let Td1604.4821
																																																																																										Let Td1602.4822
																																																																																											Let Ti1601.4824
																																																																																												Int:2
																																																																																												Get vec.2867 Ti1601.4824
																																																																																											Let Td1603.4823
																																																																																												App o_param_c.2699m.2868 
																																																																																												FMul Td1602.4822 Td1603.4823
																																																																																										FAdd Td1600.4820 Td1604.4821
																																																																																								Let Tu100.4794
																																																																																									Let Td1605.4795
																																																																																										Float:0.000000
																																																																																										IfLE d.4793 Td1605.4795
																																																																																											Let Ti1606.4818
																																																																																												Int:0
																																																																																												Let Td1607.4819
																																																																																													Float:0.000000
																																																																																													Put const.4792 Ti1606.4818 Td1607.4819
																																																																																											Let Tu99.4796
																																																																																												Let Ti1608.4814
																																																																																													Int:0
																																																																																													Let Td1611.4815
																																																																																														Let Td1609.4816
																																																																																															Float:-1.000000
																																																																																															Let Td1610.4817
																																																																																																FReciprocal d.4793
																																																																																																FMul Td1609.4816 Td1610.4817
																																																																																														Put const.4792 Ti1608.4814 Td1611.4815
																																																																																												Let Tu98.4797
																																																																																													Let Ti1612.4809
																																																																																														Int:1
																																																																																														Let Td1616.4810
																																																																																															Let Td1615.4811
																																																																																																Let Td1613.4812
																																																																																																	App o_param_a.2695m.2868 
																																																																																																	Let Td1614.4813
																																																																																																		FReciprocal d.4793
																																																																																																		FMul Td1613.4812 Td1614.4813
																																																																																																App fneg.2613Td1615.4811 
																																																																																															Put const.4792 Ti1612.4809 Td1616.4810
																																																																																													Let Tu97.4798
																																																																																														Let Ti1617.4804
																																																																																															Int:2
																																																																																															Let Td1621.4805
																																																																																																Let Td1620.4806
																																																																																																	Let Td1618.4807
																																																																																																		App o_param_b.2697m.2868 
																																																																																																		Let Td1619.4808
																																																																																																			FReciprocal d.4793
																																																																																																			FMul Td1618.4807 Td1619.4808
																																																																																																	App fneg.2613Td1620.4806 
																																																																																																Put const.4792 Ti1617.4804 Td1621.4805
																																																																																														Let Ti1622.4799
																																																																																															Int:3
																																																																																															Let Td1626.4800
																																																																																																Let Td1625.4801
																																																																																																	Let Td1623.4802
																																																																																																		App o_param_c.2699m.2868 
																																																																																																		Let Td1624.4803
																																																																																																			FReciprocal d.4793
																																																																																																			FMul Td1623.4802 Td1624.4803
																																																																																																	App fneg.2613Td1625.4801 
																																																																																																Put const.4792 Ti1622.4799 Td1626.4800
																																																																																									Var const.4792
																																																																																						LetRec setup_second_table.2869 v.2870 m.2871 
																																																																																							Let const.4713
																																																																																								Let Ti1523.4790
																																																																																									Int:5
																																																																																									Let Td1524.4791
																																																																																										Float:0.000000
																																																																																										ExtFunApp create_float_array Ti1523.4790,Td1524.4791,
																																																																																								Let aa.4714
																																																																																									Let Td1526.4784
																																																																																										Let Ti1525.4789
																																																																																											Int:0
																																																																																											Get v.2870 Ti1525.4789
																																																																																										Let Td1528.4785
																																																																																											Let Ti1527.4788
																																																																																												Int:1
																																																																																												Get v.2870 Ti1527.4788
																																																																																											Let Td1530.4786
																																																																																												Let Ti1529.4787
																																																																																													Int:2
																																																																																													Get v.2870 Ti1529.4787
																																																																																												App quadratic.2800m.2871 Td1526.4784 Td1528.4785 Td1530.4786 
																																																																																									Let c1.4715
																																																																																										Let Td1534.4780
																																																																																											Let Td1532.4781
																																																																																												Let Ti1531.4783
																																																																																													Int:0
																																																																																													Get v.2870 Ti1531.4783
																																																																																												Let Td1533.4782
																																																																																													App o_param_a.2695m.2871 
																																																																																													FMul Td1532.4781 Td1533.4782
																																																																																											App fneg.2613Td1534.4780 
																																																																																										Let c2.4716
																																																																																											Let Td1538.4776
																																																																																												Let Td1536.4777
																																																																																													Let Ti1535.4779
																																																																																														Int:1
																																																																																														Get v.2870 Ti1535.4779
																																																																																													Let Td1537.4778
																																																																																														App o_param_b.2697m.2871 
																																																																																														FMul Td1536.4777 Td1537.4778
																																																																																												App fneg.2613Td1538.4776 
																																																																																											Let c3.4717
																																																																																												Let Td1542.4772
																																																																																													Let Td1540.4773
																																																																																														Let Ti1539.4775
																																																																																															Int:2
																																																																																															Get v.2870 Ti1539.4775
																																																																																														Let Td1541.4774
																																																																																															App o_param_c.2699m.2871 
																																																																																															FMul Td1540.4773 Td1541.4774
																																																																																													App fneg.2613Td1542.4772 
																																																																																												Let Tu107.4718
																																																																																													Let Ti1543.4771
																																																																																														Int:0
																																																																																														Put const.4713 Ti1543.4771 aa.4714
																																																																																													Let Tu106.4719
																																																																																														Let Ti1544.4726
																																																																																															App o_isrot.2693m.2871 
																																																																																															Let Ti1545.4727
																																																																																																Int:0
																																																																																																IfEq Ti1544.4726 Ti1545.4727
																																																																																																	Let Tu104.4766
																																																																																																		Let Ti1546.4770
																																																																																																			Int:1
																																																																																																			Put const.4713 Ti1546.4770 c1.4715
																																																																																																		Let Tu103.4767
																																																																																																			Let Ti1547.4769
																																																																																																				Int:2
																																																																																																				Put const.4713 Ti1547.4769 c2.4716
																																																																																																			Let Ti1548.4768
																																																																																																				Int:3
																																																																																																				Put const.4713 Ti1548.4768 c3.4717
																																																																																																	Let Tu102.4728
																																																																																																		Let Ti1549.4754
																																																																																																			Int:1
																																																																																																			Let Td1560.4755
																																																																																																				Let Td1559.4756
																																																																																																					Let Td1558.4757
																																																																																																						Let Td1553.4758
																																																																																																							Let Td1551.4763
																																																																																																								Let Ti1550.4765
																																																																																																									Int:2
																																																																																																									Get v.2870 Ti1550.4765
																																																																																																								Let Td1552.4764
																																																																																																									App o_param_r2.2721m.2871 
																																																																																																									FMul Td1551.4763 Td1552.4764
																																																																																																							Let Td1557.4759
																																																																																																								Let Td1555.4760
																																																																																																									Let Ti1554.4762
																																																																																																										Int:1
																																																																																																										Get v.2870 Ti1554.4762
																																																																																																									Let Td1556.4761
																																																																																																										App o_param_r3.2723m.2871 
																																																																																																										FMul Td1555.4760 Td1556.4761
																																																																																																								FAdd Td1553.4758 Td1557.4759
																																																																																																						App fhalf.2615Td1558.4757 
																																																																																																					FSub c1.4715 Td1559.4756
																																																																																																				Put const.4713 Ti1549.4754 Td1560.4755
																																																																																																		Let Tu101.4729
																																																																																																			Let Ti1561.4742
																																																																																																				Int:2
																																																																																																				Let Td1572.4743
																																																																																																					Let Td1571.4744
																																																																																																						Let Td1570.4745
																																																																																																							Let Td1565.4746
																																																																																																								Let Td1563.4751
																																																																																																									Let Ti1562.4753
																																																																																																										Int:2
																																																																																																										Get v.2870 Ti1562.4753
																																																																																																									Let Td1564.4752
																																																																																																										App o_param_r1.2719m.2871 
																																																																																																										FMul Td1563.4751 Td1564.4752
																																																																																																								Let Td1569.4747
																																																																																																									Let Td1567.4748
																																																																																																										Let Ti1566.4750
																																																																																																											Int:0
																																																																																																											Get v.2870 Ti1566.4750
																																																																																																										Let Td1568.4749
																																																																																																											App o_param_r3.2723m.2871 
																																																																																																											FMul Td1567.4748 Td1568.4749
																																																																																																									FAdd Td1565.4746 Td1569.4747
																																																																																																							App fhalf.2615Td1570.4745 
																																																																																																						FSub c2.4716 Td1571.4744
																																																																																																					Put const.4713 Ti1561.4742 Td1572.4743
																																																																																																			Let Ti1573.4730
																																																																																																				Int:3
																																																																																																				Let Td1584.4731
																																																																																																					Let Td1583.4732
																																																																																																						Let Td1582.4733
																																																																																																							Let Td1577.4734
																																																																																																								Let Td1575.4739
																																																																																																									Let Ti1574.4741
																																																																																																										Int:1
																																																																																																										Get v.2870 Ti1574.4741
																																																																																																									Let Td1576.4740
																																																																																																										App o_param_r1.2719m.2871 
																																																																																																										FMul Td1575.4739 Td1576.4740
																																																																																																								Let Td1581.4735
																																																																																																									Let Td1579.4736
																																																																																																										Let Ti1578.4738
																																																																																																											Int:0
																																																																																																											Get v.2870 Ti1578.4738
																																																																																																										Let Td1580.4737
																																																																																																											App o_param_r2.2721m.2871 
																																																																																																											FMul Td1579.4736 Td1580.4737
																																																																																																									FAdd Td1577.4734 Td1581.4735
																																																																																																							App fhalf.2615Td1582.4733 
																																																																																																						FSub c3.4717 Td1583.4732
																																																																																																					Put const.4713 Ti1573.4730 Td1584.4731
																																																																																														Let Tu105.4720
																																																																																															Let Td1585.4721
																																																																																																Float:0.000000
																																																																																																IfEq aa.4714 Td1585.4721
																																																																																																	Unit
																																																																																																	Let Ti1586.4722
																																																																																																		Int:4
																																																																																																		Let Td1589.4723
																																																																																																			Let Td1587.4724
																																																																																																				Float:1.000000
																																																																																																				Let Td1588.4725
																																																																																																					FReciprocal aa.4714
																																																																																																					FMul Td1587.4724 Td1588.4725
																																																																																																			Put const.4713 Ti1586.4722 Td1589.4723
																																																																																															Var const.4713
																																																																																							LetRec iter_setup_dirvec_constants.2872 dirvec.2873 index.2874 
																																																																																								Let Ti1514.4699
																																																																																									Int:0
																																																																																									IfLE Ti1514.4699 index.2874
																																																																																										Let m.4700
																																																																																											Let Ta1515.4712
																																																																																												ExtArray 48
																																																																																												Get Ta1515.4712 index.2874
																																																																																											Let dconst.4701
																																																																																												App d_const.2748dirvec.2873 
																																																																																												Let v.4702
																																																																																													App d_vec.2746dirvec.2873 
																																																																																													Let m_shape.4703
																																																																																														App o_form.2687m.4700 
																																																																																														Let Tu108.4704
																																																																																															Let Ti1516.4707
																																																																																																Int:1
																																																																																																IfEq m_shape.4703 Ti1516.4707
																																																																																																	Let Ta1517.4711
																																																																																																		App setup_rect_table.2863v.4702 m.4700 
																																																																																																		Put dconst.4701 index.2874 Ta1517.4711
																																																																																																	Let Ti1518.4708
																																																																																																		Int:2
																																																																																																		IfEq m_shape.4703 Ti1518.4708
																																																																																																			Let Ta1519.4710
																																																																																																				App setup_surface_table.2866v.4702 m.4700 
																																																																																																				Put dconst.4701 index.2874 Ta1519.4710
																																																																																																			Let Ta1520.4709
																																																																																																				App setup_second_table.2869v.4702 m.4700 
																																																																																																				Put dconst.4701 index.2874 Ta1520.4709
																																																																																															Let Ti1522.4705
																																																																																																Let Ti1521.4706
																																																																																																	Int:1
																																																																																																	Sub index.2874 Ti1521.4706
																																																																																																App iter_setup_dirvec_constants.2872dirvec.2873 Ti1522.4705 
																																																																																										Unit
																																																																																								LetRec setup_dirvec_constants.2875 dirvec.2876 
																																																																																									Let Ti1513.4694
																																																																																										Let Ti1511.4695
																																																																																											Let Ta1509.4697
																																																																																												ExtArray 0
																																																																																												Let Ti1510.4698
																																																																																													Int:0
																																																																																													Get Ta1509.4697 Ti1510.4698
																																																																																											Let Ti1512.4696
																																																																																												Int:1
																																																																																												Sub Ti1511.4695 Ti1512.4696
																																																																																										App iter_setup_dirvec_constants.2872dirvec.2876 Ti1513.4694 
																																																																																									LetRec setup_startp_constants.2877 p.2878 index.2879 
																																																																																										Let Ti1469.4646
																																																																																											Int:0
																																																																																											IfLE Ti1469.4646 index.2879
																																																																																												Let obj.4647
																																																																																													Let Ta1470.4693
																																																																																														ExtArray 48
																																																																																														Get Ta1470.4693 index.2879
																																																																																													Let sconst.4648
																																																																																														App o_param_ctbl.2725obj.4647 
																																																																																														Let m_shape.4649
																																																																																															App o_form.2687obj.4647 
																																																																																															Let Tu112.4650
																																																																																																Let Ti1471.4688
																																																																																																	Int:0
																																																																																																	Let Td1475.4689
																																																																																																		Let Td1473.4690
																																																																																																			Let Ti1472.4692
																																																																																																				Int:0
																																																																																																				Get p.2878 Ti1472.4692
																																																																																																			Let Td1474.4691
																																																																																																				App o_param_x.2703obj.4647 
																																																																																																				FSub Td1473.4690 Td1474.4691
																																																																																																		Put sconst.4648 Ti1471.4688 Td1475.4689
																																																																																																Let Tu111.4651
																																																																																																	Let Ti1476.4683
																																																																																																		Int:1
																																																																																																		Let Td1480.4684
																																																																																																			Let Td1478.4685
																																																																																																				Let Ti1477.4687
																																																																																																					Int:1
																																																																																																					Get p.2878 Ti1477.4687
																																																																																																				Let Td1479.4686
																																																																																																					App o_param_y.2705obj.4647 
																																																																																																					FSub Td1478.4685 Td1479.4686
																																																																																																			Put sconst.4648 Ti1476.4683 Td1480.4684
																																																																																																	Let Tu110.4652
																																																																																																		Let Ti1481.4678
																																																																																																			Int:2
																																																																																																			Let Td1485.4679
																																																																																																				Let Td1483.4680
																																																																																																					Let Ti1482.4682
																																																																																																						Int:2
																																																																																																						Get p.2878 Ti1482.4682
																																																																																																					Let Td1484.4681
																																																																																																						App o_param_z.2707obj.4647 
																																																																																																						FSub Td1483.4680 Td1484.4681
																																																																																																				Put sconst.4648 Ti1481.4678 Td1485.4679
																																																																																																		Let Tu109.4653
																																																																																																			Let Ti1486.4656
																																																																																																				Int:2
																																																																																																				IfEq m_shape.4649 Ti1486.4656
																																																																																																					Let Ti1487.4669
																																																																																																						Int:3
																																																																																																						Let Td1495.4670
																																																																																																							Let Ta1488.4671
																																																																																																								App o_param_abc.2701obj.4647 
																																																																																																								Let Td1490.4672
																																																																																																									Let Ti1489.4677
																																																																																																										Int:0
																																																																																																										Get sconst.4648 Ti1489.4677
																																																																																																									Let Td1492.4673
																																																																																																										Let Ti1491.4676
																																																																																																											Int:1
																																																																																																											Get sconst.4648 Ti1491.4676
																																																																																																										Let Td1494.4674
																																																																																																											Let Ti1493.4675
																																																																																																												Int:2
																																																																																																												Get sconst.4648 Ti1493.4675
																																																																																																											App veciprod2.2663Ta1488.4671 Td1490.4672 Td1492.4673 Td1494.4674 
																																																																																																							Put sconst.4648 Ti1487.4669 Td1495.4670
																																																																																																					Let Ti1496.4657
																																																																																																						Int:2
																																																																																																						IfLE m_shape.4649 Ti1496.4657
																																																																																																							Unit
																																																																																																							Let cc0.4658
																																																																																																								Let Td1498.4663
																																																																																																									Let Ti1497.4668
																																																																																																										Int:0
																																																																																																										Get sconst.4648 Ti1497.4668
																																																																																																									Let Td1500.4664
																																																																																																										Let Ti1499.4667
																																																																																																											Int:1
																																																																																																											Get sconst.4648 Ti1499.4667
																																																																																																										Let Td1502.4665
																																																																																																											Let Ti1501.4666
																																																																																																												Int:2
																																																																																																												Get sconst.4648 Ti1501.4666
																																																																																																											App quadratic.2800obj.4647 Td1498.4663 Td1500.4664 Td1502.4665 
																																																																																																								Let Ti1503.4659
																																																																																																									Int:3
																																																																																																									Let Td1506.4660
																																																																																																										Let Ti1504.4661
																																																																																																											Int:3
																																																																																																											IfEq m_shape.4649 Ti1504.4661
																																																																																																												Let Td1505.4662
																																																																																																													Float:1.000000
																																																																																																													FSub cc0.4658 Td1505.4662
																																																																																																												Var cc0.4658
																																																																																																										Put sconst.4648 Ti1503.4659 Td1506.4660
																																																																																																			Let Ti1508.4654
																																																																																																				Let Ti1507.4655
																																																																																																					Int:1
																																																																																																					Sub index.2879 Ti1507.4655
																																																																																																				App setup_startp_constants.2877p.2878 Ti1508.4654 
																																																																																												Unit
																																																																																										LetRec setup_startp.2880 p.2881 
																																																																																											Let Tu113.4639
																																																																																												Let Ta1463.4645
																																																																																													ExtArray 648
																																																																																													App veccpy.2649Ta1463.4645 p.2881 
																																																																																												Let Ti1468.4640
																																																																																													Let Ti1466.4641
																																																																																														Let Ta1464.4643
																																																																																															ExtArray 0
																																																																																															Let Ti1465.4644
																																																																																																Int:0
																																																																																																Get Ta1464.4643 Ti1465.4644
																																																																																														Let Ti1467.4642
																																																																																															Int:1
																																																																																															Sub Ti1466.4641 Ti1467.4642
																																																																																													App setup_startp_constants.2877p.2881 Ti1468.4640 
																																																																																											LetRec is_rect_outside.2882 m.2883 p0.2884 p1.2885 p2.2886 
																																																																																												Let Ti1459.4629
																																																																																													Let Td1453.4633
																																																																																														App o_param_a.2695m.2883 
																																																																																														Let Td1454.4634
																																																																																															fabs p0.2884
																																																																																															IfLE Td1453.4633 Td1454.4634
																																																																																																Int:0
																																																																																																Let Td1455.4635
																																																																																																	App o_param_b.2697m.2883 
																																																																																																	Let Td1456.4636
																																																																																																		fabs p1.2885
																																																																																																		IfLE Td1455.4635 Td1456.4636
																																																																																																			Int:0
																																																																																																			Let Td1457.4637
																																																																																																				App o_param_c.2699m.2883 
																																																																																																				Let Td1458.4638
																																																																																																					fabs p2.2886
																																																																																																					IfLE Td1457.4637 Td1458.4638
																																																																																																						Int:0
																																																																																																						Int:1
																																																																																													Let Ti1460.4630
																																																																																														Int:0
																																																																																														IfEq Ti1459.4629 Ti1460.4630
																																																																																															Let Tb1461.4631
																																																																																																App o_isinvert.2691m.2883 
																																																																																																Let Ti1462.4632
																																																																																																	Int:0
																																																																																																	IfEq Tb1461.4631 Ti1462.4632
																																																																																																		Int:1
																																																																																																		Int:0
																																																																																															App o_isinvert.2691m.2883 
																																																																																												LetRec is_plane_outside.2887 m.2888 p0.2889 p1.2890 p2.2891 
																																																																																													Let w.4622
																																																																																														Let Ta1447.4628
																																																																																															App o_param_abc.2701m.2888 
																																																																																															App veciprod2.2663Ta1447.4628 p0.2889 p1.2890 p2.2891 
																																																																																														Let Ti1451.4623
																																																																																															Let Tb1448.4625
																																																																																																App o_isinvert.2691m.2888 
																																																																																																Let Ti1450.4626
																																																																																																	Let Td1449.4627
																																																																																																		Float:0.000000
																																																																																																		IfLE Td1449.4627 w.4622
																																																																																																			Int:0
																																																																																																			Int:1
																																																																																																	xor Tb1448.4625 Ti1450.4626
																																																																																															Let Ti1452.4624
																																																																																																Int:0
																																																																																																IfEq Ti1451.4623 Ti1452.4624
																																																																																																	Int:1
																																																																																																	Int:0
																																																																																													LetRec is_second_outside.2892 m.2893 p0.2894 p1.2895 p2.2896 
																																																																																														Let w.4612
																																																																																															App quadratic.2800m.2893 p0.2894 p1.2895 p2.2896 
																																																																																															Let w2.4613
																																																																																																Let Ti1439.4619
																																																																																																	App o_form.2687m.2893 
																																																																																																	Let Ti1440.4620
																																																																																																		Int:3
																																																																																																		IfEq Ti1439.4619 Ti1440.4620
																																																																																																			Let Td1441.4621
																																																																																																				Float:1.000000
																																																																																																				FSub w.4612 Td1441.4621
																																																																																																			Var w.4612
																																																																																																Let Ti1445.4614
																																																																																																	Let Tb1442.4616
																																																																																																		App o_isinvert.2691m.2893 
																																																																																																		Let Ti1444.4617
																																																																																																			Let Td1443.4618
																																																																																																				Float:0.000000
																																																																																																				IfLE Td1443.4618 w2.4613
																																																																																																					Int:0
																																																																																																					Int:1
																																																																																																			xor Tb1442.4616 Ti1444.4617
																																																																																																	Let Ti1446.4615
																																																																																																		Int:0
																																																																																																		IfEq Ti1445.4614 Ti1446.4615
																																																																																																			Int:1
																																																																																																			Int:0
																																																																																														LetRec is_outside.2897 m.2898 q0.2899 q1.2900 q2.2901 
																																																																																															Let p0.4603
																																																																																																Let Td1434.4611
																																																																																																	App o_param_x.2703m.2898 
																																																																																																	FSub q0.2899 Td1434.4611
																																																																																																Let p1.4604
																																																																																																	Let Td1435.4610
																																																																																																		App o_param_y.2705m.2898 
																																																																																																		FSub q1.2900 Td1435.4610
																																																																																																	Let p2.4605
																																																																																																		Let Td1436.4609
																																																																																																			App o_param_z.2707m.2898 
																																																																																																			FSub q2.2901 Td1436.4609
																																																																																																		Let m_shape.4606
																																																																																																			App o_form.2687m.2898 
																																																																																																			Let Ti1437.4607
																																																																																																				Int:1
																																																																																																				IfEq m_shape.4606 Ti1437.4607
																																																																																																					App is_rect_outside.2882m.2898 p0.4603 p1.4604 p2.4605 
																																																																																																					Let Ti1438.4608
																																																																																																						Int:2
																																																																																																						IfEq m_shape.4606 Ti1438.4608
																																																																																																							App is_plane_outside.2887m.2898 p0.4603 p1.4604 p2.4605 
																																																																																																							App is_second_outside.2892m.2898 p0.4603 p1.4604 p2.4605 
																																																																																															LetRec check_all_inside.2902 ofs.2903 iand.2904 q0.2905 q1.2906 q2.2907 
																																																																																																Let head.4594
																																																																																																	Get iand.2904 ofs.2903
																																																																																																	Let Ti1427.4595
																																																																																																		Let Ti1426.4602
																																																																																																			Int:1
																																																																																																			Neg Ti1426.4602
																																																																																																		IfEq head.4594 Ti1427.4595
																																																																																																			Int:1
																																																																																																			Let Tb1430.4596
																																																																																																				Let Tt1429.4600
																																																																																																					Let Ta1428.4601
																																																																																																						ExtArray 48
																																																																																																						Get Ta1428.4601 head.4594
																																																																																																					App is_outside.2897Tt1429.4600 q0.2905 q1.2906 q2.2907 
																																																																																																				Let Ti1431.4597
																																																																																																					Int:0
																																																																																																					IfEq Tb1430.4596 Ti1431.4597
																																																																																																						Let Ti1433.4598
																																																																																																							Let Ti1432.4599
																																																																																																								Int:1
																																																																																																								Add ofs.2903 Ti1432.4599
																																																																																																							App check_all_inside.2902Ti1433.4598 iand.2904 q0.2905 q1.2906 q2.2907 
																																																																																																						Int:0
																																																																																																LetRec shadow_check_and_group.2908 iand_ofs.2909 and_group.2910 
																																																																																																	Let Ti1382.4543
																																																																																																		Get and_group.2910 iand_ofs.2909
																																																																																																		Let Ti1384.4544
																																																																																																			Let Ti1383.4593
																																																																																																				Int:1
																																																																																																				Neg Ti1383.4593
																																																																																																			IfEq Ti1382.4543 Ti1384.4544
																																																																																																				Int:0
																																																																																																				Let obj.4545
																																																																																																					Get and_group.2910 iand_ofs.2909
																																																																																																					Let t0.4546
																																																																																																						Let Tt1385.4591
																																																																																																							ExtTuple 988
																																																																																																							Let Ta1386.4592
																																																																																																								ExtArray 552
																																																																																																								App solver_fast.2842obj.4545 Tt1385.4591 Ta1386.4592 
																																																																																																						Let t0p.4547
																																																																																																							Let Ta1387.4589
																																																																																																								ExtArray 540
																																																																																																								Let Ti1388.4590
																																																																																																									Int:0
																																																																																																									Get Ta1387.4589 Ti1388.4590
																																																																																																							Let Ti1391.4548
																																																																																																								Let Ti1389.4587
																																																																																																									Int:0
																																																																																																									IfEq t0.4546 Ti1389.4587
																																																																																																										Int:0
																																																																																																										Let Td1390.4588
																																																																																																											Float:-0.200000
																																																																																																											IfLE Td1390.4588 t0p.4547
																																																																																																												Int:0
																																																																																																												Int:1
																																																																																																								Let Ti1392.4549
																																																																																																									Int:0
																																																																																																									IfEq Ti1391.4548 Ti1392.4549
																																																																																																										Let Tb1395.4581
																																																																																																											Let Tt1394.4585
																																																																																																												Let Ta1393.4586
																																																																																																													ExtArray 48
																																																																																																													Get Ta1393.4586 obj.4545
																																																																																																												App o_isinvert.2691Tt1394.4585 
																																																																																																											Let Ti1396.4582
																																																																																																												Int:0
																																																																																																												IfEq Tb1395.4581 Ti1396.4582
																																																																																																													Int:0
																																																																																																													Let Ti1398.4583
																																																																																																														Let Ti1397.4584
																																																																																																															Int:1
																																																																																																															Add iand_ofs.2909 Ti1397.4584
																																																																																																														App shadow_check_and_group.2908Ti1398.4583 and_group.2910 
																																																																																																										Let t.4550
																																																																																																											Let Td1399.4580
																																																																																																												Float:0.010000
																																																																																																												FAdd t0p.4547 Td1399.4580
																																																																																																											Let q0.4551
																																																																																																												Let Td1403.4573
																																																																																																													Let Td1402.4577
																																																																																																														Let Ta1400.4578
																																																																																																															ExtArray 312
																																																																																																															Let Ti1401.4579
																																																																																																																Int:0
																																																																																																																Get Ta1400.4578 Ti1401.4579
																																																																																																														FMul Td1402.4577 t.4550
																																																																																																													Let Td1406.4574
																																																																																																														Let Ta1404.4575
																																																																																																															ExtArray 552
																																																																																																															Let Ti1405.4576
																																																																																																																Int:0
																																																																																																																Get Ta1404.4575 Ti1405.4576
																																																																																																														FAdd Td1403.4573 Td1406.4574
																																																																																																												Let q1.4552
																																																																																																													Let Td1410.4566
																																																																																																														Let Td1409.4570
																																																																																																															Let Ta1407.4571
																																																																																																																ExtArray 312
																																																																																																																Let Ti1408.4572
																																																																																																																	Int:1
																																																																																																																	Get Ta1407.4571 Ti1408.4572
																																																																																																															FMul Td1409.4570 t.4550
																																																																																																														Let Td1413.4567
																																																																																																															Let Ta1411.4568
																																																																																																																ExtArray 552
																																																																																																																Let Ti1412.4569
																																																																																																																	Int:1
																																																																																																																	Get Ta1411.4568 Ti1412.4569
																																																																																																															FAdd Td1410.4566 Td1413.4567
																																																																																																													Let q2.4553
																																																																																																														Let Td1417.4559
																																																																																																															Let Td1416.4563
																																																																																																																Let Ta1414.4564
																																																																																																																	ExtArray 312
																																																																																																																	Let Ti1415.4565
																																																																																																																		Int:2
																																																																																																																		Get Ta1414.4564 Ti1415.4565
																																																																																																																FMul Td1416.4563 t.4550
																																																																																																															Let Td1420.4560
																																																																																																																Let Ta1418.4561
																																																																																																																	ExtArray 552
																																																																																																																	Let Ti1419.4562
																																																																																																																		Int:2
																																																																																																																		Get Ta1418.4561 Ti1419.4562
																																																																																																																FAdd Td1417.4559 Td1420.4560
																																																																																																														Let Tb1422.4554
																																																																																																															Let Ti1421.4558
																																																																																																																Int:0
																																																																																																																App check_all_inside.2902Ti1421.4558 and_group.2910 q0.4551 q1.4552 q2.4553 
																																																																																																															Let Ti1423.4555
																																																																																																																Int:0
																																																																																																																IfEq Tb1422.4554 Ti1423.4555
																																																																																																																	Let Ti1425.4556
																																																																																																																		Let Ti1424.4557
																																																																																																																			Int:1
																																																																																																																			Add iand_ofs.2909 Ti1424.4557
																																																																																																																		App shadow_check_and_group.2908Ti1425.4556 and_group.2910 
																																																																																																																	Int:1
																																																																																																	LetRec shadow_check_one_or_group.2911 ofs.2912 or_group.2913 
																																																																																																		Let head.4533
																																																																																																			Get or_group.2913 ofs.2912
																																																																																																			Let Ti1376.4534
																																																																																																				Let Ti1375.4542
																																																																																																					Int:1
																																																																																																					Neg Ti1375.4542
																																																																																																				IfEq head.4533 Ti1376.4534
																																																																																																					Int:0
																																																																																																					Let and_group.4535
																																																																																																						Let Ta1377.4541
																																																																																																							ExtArray 332
																																																																																																							Get Ta1377.4541 head.4533
																																																																																																						Let shadow_p.4536
																																																																																																							Let Ti1378.4540
																																																																																																								Int:0
																																																																																																								App shadow_check_and_group.2908Ti1378.4540 and_group.4535 
																																																																																																							Let Ti1379.4537
																																																																																																								Int:0
																																																																																																								IfEq shadow_p.4536 Ti1379.4537
																																																																																																									Let Ti1381.4538
																																																																																																										Let Ti1380.4539
																																																																																																											Int:1
																																																																																																											Add ofs.2912 Ti1380.4539
																																																																																																										App shadow_check_one_or_group.2911Ti1381.4538 or_group.2913 
																																																																																																									Int:1
																																																																																																		LetRec shadow_check_one_or_matrix.2914 ofs.2915 or_matrix.2916 
																																																																																																			Let head.4507
																																																																																																				Get or_matrix.2916 ofs.2915
																																																																																																				Let range_primitive.4508
																																																																																																					Let Ti1352.4532
																																																																																																						Int:0
																																																																																																						Get head.4507 Ti1352.4532
																																																																																																					Let Ti1354.4509
																																																																																																						Let Ti1353.4531
																																																																																																							Int:1
																																																																																																							Neg Ti1353.4531
																																																																																																						IfEq range_primitive.4508 Ti1354.4509
																																																																																																							Int:0
																																																																																																							Let Ti1366.4510
																																																																																																								Let Ti1355.4519
																																																																																																									Int:99
																																																																																																									IfEq range_primitive.4508 Ti1355.4519
																																																																																																										Int:1
																																																																																																										Let t.4520
																																																																																																											Let Tt1356.4529
																																																																																																												ExtTuple 988
																																																																																																												Let Ta1357.4530
																																																																																																													ExtArray 552
																																																																																																													App solver_fast.2842range_primitive.4508 Tt1356.4529 Ta1357.4530 
																																																																																																											Let Ti1358.4521
																																																																																																												Int:0
																																																																																																												IfEq t.4520 Ti1358.4521
																																																																																																													Int:0
																																																																																																													Let Td1359.4522
																																																																																																														Float:-0.100000
																																																																																																														Let Td1362.4523
																																																																																																															Let Ta1360.4527
																																																																																																																ExtArray 540
																																																																																																																Let Ti1361.4528
																																																																																																																	Int:0
																																																																																																																	Get Ta1360.4527 Ti1361.4528
																																																																																																															IfLE Td1359.4522 Td1362.4523
																																																																																																																Int:0
																																																																																																																Let Tb1364.4524
																																																																																																																	Let Ti1363.4526
																																																																																																																		Int:1
																																																																																																																		App shadow_check_one_or_group.2911Ti1363.4526 head.4507 
																																																																																																																	Let Ti1365.4525
																																																																																																																		Int:0
																																																																																																																		IfEq Tb1364.4524 Ti1365.4525
																																																																																																																			Int:0
																																																																																																																			Int:1
																																																																																																								Let Ti1367.4511
																																																																																																									Int:0
																																																																																																									IfEq Ti1366.4510 Ti1367.4511
																																																																																																										Let Ti1369.4517
																																																																																																											Let Ti1368.4518
																																																																																																												Int:1
																																																																																																												Add ofs.2915 Ti1368.4518
																																																																																																											App shadow_check_one_or_matrix.2914Ti1369.4517 or_matrix.2916 
																																																																																																										Let Tb1371.4512
																																																																																																											Let Ti1370.4516
																																																																																																												Int:1
																																																																																																												App shadow_check_one_or_group.2911Ti1370.4516 head.4507 
																																																																																																											Let Ti1372.4513
																																																																																																												Int:0
																																																																																																												IfEq Tb1371.4512 Ti1372.4513
																																																																																																													Let Ti1374.4514
																																																																																																														Let Ti1373.4515
																																																																																																															Int:1
																																																																																																															Add ofs.2915 Ti1373.4515
																																																																																																														App shadow_check_one_or_matrix.2914Ti1374.4514 or_matrix.2916 
																																																																																																													Int:1
																																																																																																			LetRec solve_each_element.2917 iand_ofs.2918 and_group.2919 dirvec.2920 
																																																																																																				Let iobj.4449
																																																																																																					Get and_group.2919 iand_ofs.2918
																																																																																																					Let Ti1306.4450
																																																																																																						Let Ti1305.4506
																																																																																																							Int:1
																																																																																																							Neg Ti1305.4506
																																																																																																						IfEq iobj.4449 Ti1306.4450
																																																																																																							Unit
																																																																																																							Let t0.4451
																																																																																																								Let Ta1307.4505
																																																																																																									ExtArray 636
																																																																																																									App solver.2819iobj.4449 dirvec.2920 Ta1307.4505 
																																																																																																								Let Ti1308.4452
																																																																																																									Int:0
																																																																																																									IfEq t0.4451 Ti1308.4452
																																																																																																										Let Tb1311.4499
																																																																																																											Let Tt1310.4503
																																																																																																												Let Ta1309.4504
																																																																																																													ExtArray 48
																																																																																																													Get Ta1309.4504 iobj.4449
																																																																																																												App o_isinvert.2691Tt1310.4503 
																																																																																																											Let Ti1312.4500
																																																																																																												Int:0
																																																																																																												IfEq Tb1311.4499 Ti1312.4500
																																																																																																													Unit
																																																																																																													Let Ti1314.4501
																																																																																																														Let Ti1313.4502
																																																																																																															Int:1
																																																																																																															Add iand_ofs.2918 Ti1313.4502
																																																																																																														App solve_each_element.2917Ti1314.4501 and_group.2919 dirvec.2920 
																																																																																																										Let t0p.4453
																																																																																																											Let Ta1315.4497
																																																																																																												ExtArray 540
																																																																																																												Let Ti1316.4498
																																																																																																													Int:0
																																																																																																													Get Ta1315.4497 Ti1316.4498
																																																																																																											Let Tu117.4454
																																																																																																												Let Td1317.4457
																																																																																																													Float:0.000000
																																																																																																													IfLE t0p.4453 Td1317.4457
																																																																																																														Unit
																																																																																																														Let Td1320.4458
																																																																																																															Let Ta1318.4495
																																																																																																																ExtArray 548
																																																																																																																Let Ti1319.4496
																																																																																																																	Int:0
																																																																																																																	Get Ta1318.4495 Ti1319.4496
																																																																																																															IfLE Td1320.4458 t0p.4453
																																																																																																																Unit
																																																																																																																Let t.4459
																																																																																																																	Let Td1321.4494
																																																																																																																		Float:0.010000
																																																																																																																		FAdd t0p.4453 Td1321.4494
																																																																																																																	Let q0.4460
																																																																																																																		Let Td1324.4488
																																																																																																																			Let Td1323.4492
																																																																																																																				Let Ti1322.4493
																																																																																																																					Int:0
																																																																																																																					Get dirvec.2920 Ti1322.4493
																																																																																																																				FMul Td1323.4492 t.4459
																																																																																																																			Let Td1327.4489
																																																																																																																				Let Ta1325.4490
																																																																																																																					ExtArray 636
																																																																																																																					Let Ti1326.4491
																																																																																																																						Int:0
																																																																																																																						Get Ta1325.4490 Ti1326.4491
																																																																																																																				FAdd Td1324.4488 Td1327.4489
																																																																																																																		Let q1.4461
																																																																																																																			Let Td1330.4482
																																																																																																																				Let Td1329.4486
																																																																																																																					Let Ti1328.4487
																																																																																																																						Int:1
																																																																																																																						Get dirvec.2920 Ti1328.4487
																																																																																																																					FMul Td1329.4486 t.4459
																																																																																																																				Let Td1333.4483
																																																																																																																					Let Ta1331.4484
																																																																																																																						ExtArray 636
																																																																																																																						Let Ti1332.4485
																																																																																																																							Int:1
																																																																																																																							Get Ta1331.4484 Ti1332.4485
																																																																																																																					FAdd Td1330.4482 Td1333.4483
																																																																																																																			Let q2.4462
																																																																																																																				Let Td1336.4476
																																																																																																																					Let Td1335.4480
																																																																																																																						Let Ti1334.4481
																																																																																																																							Int:2
																																																																																																																							Get dirvec.2920 Ti1334.4481
																																																																																																																						FMul Td1335.4480 t.4459
																																																																																																																					Let Td1339.4477
																																																																																																																						Let Ta1337.4478
																																																																																																																							ExtArray 636
																																																																																																																							Let Ti1338.4479
																																																																																																																								Int:2
																																																																																																																								Get Ta1337.4478 Ti1338.4479
																																																																																																																						FAdd Td1336.4476 Td1339.4477
																																																																																																																				Let Tb1341.4463
																																																																																																																					Let Ti1340.4475
																																																																																																																						Int:0
																																																																																																																						App check_all_inside.2902Ti1340.4475 and_group.2919 q0.4460 q1.4461 q2.4462 
																																																																																																																					Let Ti1342.4464
																																																																																																																						Int:0
																																																																																																																						IfEq Tb1341.4463 Ti1342.4464
																																																																																																																							Unit
																																																																																																																							Let Tu116.4465
																																																																																																																								Let Ta1343.4473
																																																																																																																									ExtArray 548
																																																																																																																									Let Ti1344.4474
																																																																																																																										Int:0
																																																																																																																										Put Ta1343.4473 Ti1344.4474 t.4459
																																																																																																																								Let Tu115.4466
																																																																																																																									Let Ta1345.4472
																																																																																																																										ExtArray 552
																																																																																																																										App vecset.2639Ta1345.4472 q0.4460 q1.4461 q2.4462 
																																																																																																																									Let Tu114.4467
																																																																																																																										Let Ta1346.4470
																																																																																																																											ExtArray 564
																																																																																																																											Let Ti1347.4471
																																																																																																																												Int:0
																																																																																																																												Put Ta1346.4470 Ti1347.4471 iobj.4449
																																																																																																																										Let Ta1348.4468
																																																																																																																											ExtArray 544
																																																																																																																											Let Ti1349.4469
																																																																																																																												Int:0
																																																																																																																												Put Ta1348.4468 Ti1349.4469 t0.4451
																																																																																																												Let Ti1351.4455
																																																																																																													Let Ti1350.4456
																																																																																																														Int:1
																																																																																																														Add iand_ofs.2918 Ti1350.4456
																																																																																																													App solve_each_element.2917Ti1351.4455 and_group.2919 dirvec.2920 
																																																																																																				LetRec solve_one_or_network.2921 ofs.2922 or_group.2923 dirvec.2924 
																																																																																																					Let head.4440
																																																																																																						Get or_group.2923 ofs.2922
																																																																																																						Let Ti1300.4441
																																																																																																							Let Ti1299.4448
																																																																																																								Int:1
																																																																																																								Neg Ti1299.4448
																																																																																																							IfEq head.4440 Ti1300.4441
																																																																																																								Unit
																																																																																																								Let and_group.4442
																																																																																																									Let Ta1301.4447
																																																																																																										ExtArray 332
																																																																																																										Get Ta1301.4447 head.4440
																																																																																																									Let Tu118.4443
																																																																																																										Let Ti1302.4446
																																																																																																											Int:0
																																																																																																											App solve_each_element.2917Ti1302.4446 and_group.4442 dirvec.2924 
																																																																																																										Let Ti1304.4444
																																																																																																											Let Ti1303.4445
																																																																																																												Int:1
																																																																																																												Add ofs.2922 Ti1303.4445
																																																																																																											App solve_one_or_network.2921Ti1304.4444 or_group.2923 dirvec.2924 
																																																																																																					LetRec trace_or_matrix.2925 ofs.2926 or_network.2927 dirvec.2928 
																																																																																																						Let head.4420
																																																																																																							Get or_network.2927 ofs.2926
																																																																																																							Let range_primitive.4421
																																																																																																								Let Ti1284.4439
																																																																																																									Int:0
																																																																																																									Get head.4420 Ti1284.4439
																																																																																																								Let Ti1286.4422
																																																																																																									Let Ti1285.4438
																																																																																																										Int:1
																																																																																																										Neg Ti1285.4438
																																																																																																									IfEq range_primitive.4421 Ti1286.4422
																																																																																																										Unit
																																																																																																										Let Tu119.4423
																																																																																																											Let Ti1287.4426
																																																																																																												Int:99
																																																																																																												IfEq range_primitive.4421 Ti1287.4426
																																																																																																													Let Ti1288.4437
																																																																																																														Int:1
																																																																																																														App solve_one_or_network.2921Ti1288.4437 head.4420 dirvec.2928 
																																																																																																													Let t.4427
																																																																																																														Let Ta1289.4436
																																																																																																															ExtArray 636
																																																																																																															App solver.2819range_primitive.4421 dirvec.2928 Ta1289.4436 
																																																																																																														Let Ti1290.4428
																																																																																																															Int:0
																																																																																																															IfEq t.4427 Ti1290.4428
																																																																																																																Unit
																																																																																																																Let tp.4429
																																																																																																																	Let Ta1291.4434
																																																																																																																		ExtArray 540
																																																																																																																		Let Ti1292.4435
																																																																																																																			Int:0
																																																																																																																			Get Ta1291.4434 Ti1292.4435
																																																																																																																	Let Td1295.4430
																																																																																																																		Let Ta1293.4432
																																																																																																																			ExtArray 548
																																																																																																																			Let Ti1294.4433
																																																																																																																				Int:0
																																																																																																																				Get Ta1293.4432 Ti1294.4433
																																																																																																																		IfLE Td1295.4430 tp.4429
																																																																																																																			Unit
																																																																																																																			Let Ti1296.4431
																																																																																																																				Int:1
																																																																																																																				App solve_one_or_network.2921Ti1296.4431 head.4420 dirvec.2928 
																																																																																																											Let Ti1298.4424
																																																																																																												Let Ti1297.4425
																																																																																																													Int:1
																																																																																																													Add ofs.2926 Ti1297.4425
																																																																																																												App trace_or_matrix.2925Ti1298.4424 or_network.2927 dirvec.2928 
																																																																																																						LetRec judge_intersection.2929 dirvec.2930 
																																																																																																							Let Tu121.4406
																																																																																																								Let Ta1273.4417
																																																																																																									ExtArray 548
																																																																																																									Let Ti1274.4418
																																																																																																										Int:0
																																																																																																										Let Td1275.4419
																																																																																																											Float:1000000000.000000
																																																																																																											Put Ta1273.4417 Ti1274.4418 Td1275.4419
																																																																																																								Let Tu120.4407
																																																																																																									Let Ti1276.4413
																																																																																																										Int:0
																																																																																																										Let Ta1279.4414
																																																																																																											Let Ta1277.4415
																																																																																																												ExtArray 536
																																																																																																												Let Ti1278.4416
																																																																																																													Int:0
																																																																																																													Get Ta1277.4415 Ti1278.4416
																																																																																																											App trace_or_matrix.2925Ti1276.4413 Ta1279.4414 dirvec.2930 
																																																																																																									Let t.4408
																																																																																																										Let Ta1280.4411
																																																																																																											ExtArray 548
																																																																																																											Let Ti1281.4412
																																																																																																												Int:0
																																																																																																												Get Ta1280.4411 Ti1281.4412
																																																																																																										Let Td1282.4409
																																																																																																											Float:-0.100000
																																																																																																											IfLE t.4408 Td1282.4409
																																																																																																												Int:0
																																																																																																												Let Td1283.4410
																																																																																																													Float:100000000.000000
																																																																																																													IfLE Td1283.4410 t.4408
																																																																																																														Int:0
																																																																																																														Int:1
																																																																																																							LetRec solve_each_element_fast.2931 iand_ofs.2932 and_group.2933 dirvec.2934 
																																																																																																								Let vec.4348
																																																																																																									App d_vec.2746dirvec.2934 
																																																																																																									Let iobj.4349
																																																																																																										Get and_group.2933 iand_ofs.2932
																																																																																																										Let Ti1228.4350
																																																																																																											Let Ti1227.4405
																																																																																																												Int:1
																																																																																																												Neg Ti1227.4405
																																																																																																											IfEq iobj.4349 Ti1228.4350
																																																																																																												Unit
																																																																																																												Let t0.4351
																																																																																																													App solver_fast2.2860iobj.4349 dirvec.2934 
																																																																																																													Let Ti1229.4352
																																																																																																														Int:0
																																																																																																														IfEq t0.4351 Ti1229.4352
																																																																																																															Let Tb1232.4399
																																																																																																																Let Tt1231.4403
																																																																																																																	Let Ta1230.4404
																																																																																																																		ExtArray 48
																																																																																																																		Get Ta1230.4404 iobj.4349
																																																																																																																	App o_isinvert.2691Tt1231.4403 
																																																																																																																Let Ti1233.4400
																																																																																																																	Int:0
																																																																																																																	IfEq Tb1232.4399 Ti1233.4400
																																																																																																																		Unit
																																																																																																																		Let Ti1235.4401
																																																																																																																			Let Ti1234.4402
																																																																																																																				Int:1
																																																																																																																				Add iand_ofs.2932 Ti1234.4402
																																																																																																																			App solve_each_element_fast.2931Ti1235.4401 and_group.2933 dirvec.2934 
																																																																																																															Let t0p.4353
																																																																																																																Let Ta1236.4397
																																																																																																																	ExtArray 540
																																																																																																																	Let Ti1237.4398
																																																																																																																		Int:0
																																																																																																																		Get Ta1236.4397 Ti1237.4398
																																																																																																																Let Tu125.4354
																																																																																																																	Let Td1238.4357
																																																																																																																		Float:0.000000
																																																																																																																		IfLE t0p.4353 Td1238.4357
																																																																																																																			Unit
																																																																																																																			Let Td1241.4358
																																																																																																																				Let Ta1239.4395
																																																																																																																					ExtArray 548
																																																																																																																					Let Ti1240.4396
																																																																																																																						Int:0
																																																																																																																						Get Ta1239.4395 Ti1240.4396
																																																																																																																				IfLE Td1241.4358 t0p.4353
																																																																																																																					Unit
																																																																																																																					Let t.4359
																																																																																																																						Let Td1242.4394
																																																																																																																							Float:0.010000
																																																																																																																							FAdd t0p.4353 Td1242.4394
																																																																																																																						Let q0.4360
																																																																																																																							Let Td1245.4388
																																																																																																																								Let Td1244.4392
																																																																																																																									Let Ti1243.4393
																																																																																																																										Int:0
																																																																																																																										Get vec.4348 Ti1243.4393
																																																																																																																									FMul Td1244.4392 t.4359
																																																																																																																								Let Td1248.4389
																																																																																																																									Let Ta1246.4390
																																																																																																																										ExtArray 648
																																																																																																																										Let Ti1247.4391
																																																																																																																											Int:0
																																																																																																																											Get Ta1246.4390 Ti1247.4391
																																																																																																																									FAdd Td1245.4388 Td1248.4389
																																																																																																																							Let q1.4361
																																																																																																																								Let Td1251.4382
																																																																																																																									Let Td1250.4386
																																																																																																																										Let Ti1249.4387
																																																																																																																											Int:1
																																																																																																																											Get vec.4348 Ti1249.4387
																																																																																																																										FMul Td1250.4386 t.4359
																																																																																																																									Let Td1254.4383
																																																																																																																										Let Ta1252.4384
																																																																																																																											ExtArray 648
																																																																																																																											Let Ti1253.4385
																																																																																																																												Int:1
																																																																																																																												Get Ta1252.4384 Ti1253.4385
																																																																																																																										FAdd Td1251.4382 Td1254.4383
																																																																																																																								Let q2.4362
																																																																																																																									Let Td1257.4376
																																																																																																																										Let Td1256.4380
																																																																																																																											Let Ti1255.4381
																																																																																																																												Int:2
																																																																																																																												Get vec.4348 Ti1255.4381
																																																																																																																											FMul Td1256.4380 t.4359
																																																																																																																										Let Td1260.4377
																																																																																																																											Let Ta1258.4378
																																																																																																																												ExtArray 648
																																																																																																																												Let Ti1259.4379
																																																																																																																													Int:2
																																																																																																																													Get Ta1258.4378 Ti1259.4379
																																																																																																																											FAdd Td1257.4376 Td1260.4377
																																																																																																																									Let Tb1262.4363
																																																																																																																										Let Ti1261.4375
																																																																																																																											Int:0
																																																																																																																											App check_all_inside.2902Ti1261.4375 and_group.2933 q0.4360 q1.4361 q2.4362 
																																																																																																																										Let Ti1263.4364
																																																																																																																											Int:0
																																																																																																																											IfEq Tb1262.4363 Ti1263.4364
																																																																																																																												Unit
																																																																																																																												Let Tu124.4365
																																																																																																																													Let Ta1264.4373
																																																																																																																														ExtArray 548
																																																																																																																														Let Ti1265.4374
																																																																																																																															Int:0
																																																																																																																															Put Ta1264.4373 Ti1265.4374 t.4359
																																																																																																																													Let Tu123.4366
																																																																																																																														Let Ta1266.4372
																																																																																																																															ExtArray 552
																																																																																																																															App vecset.2639Ta1266.4372 q0.4360 q1.4361 q2.4362 
																																																																																																																														Let Tu122.4367
																																																																																																																															Let Ta1267.4370
																																																																																																																																ExtArray 564
																																																																																																																																Let Ti1268.4371
																																																																																																																																	Int:0
																																																																																																																																	Put Ta1267.4370 Ti1268.4371 iobj.4349
																																																																																																																															Let Ta1269.4368
																																																																																																																																ExtArray 544
																																																																																																																																Let Ti1270.4369
																																																																																																																																	Int:0
																																																																																																																																	Put Ta1269.4368 Ti1270.4369 t0.4351
																																																																																																																	Let Ti1272.4355
																																																																																																																		Let Ti1271.4356
																																																																																																																			Int:1
																																																																																																																			Add iand_ofs.2932 Ti1271.4356
																																																																																																																		App solve_each_element_fast.2931Ti1272.4355 and_group.2933 dirvec.2934 
																																																																																																								LetRec solve_one_or_network_fast.2935 ofs.2936 or_group.2937 dirvec.2938 
																																																																																																									Let head.4339
																																																																																																										Get or_group.2937 ofs.2936
																																																																																																										Let Ti1222.4340
																																																																																																											Let Ti1221.4347
																																																																																																												Int:1
																																																																																																												Neg Ti1221.4347
																																																																																																											IfEq head.4339 Ti1222.4340
																																																																																																												Unit
																																																																																																												Let and_group.4341
																																																																																																													Let Ta1223.4346
																																																																																																														ExtArray 332
																																																																																																														Get Ta1223.4346 head.4339
																																																																																																													Let Tu126.4342
																																																																																																														Let Ti1224.4345
																																																																																																															Int:0
																																																																																																															App solve_each_element_fast.2931Ti1224.4345 and_group.4341 dirvec.2938 
																																																																																																														Let Ti1226.4343
																																																																																																															Let Ti1225.4344
																																																																																																																Int:1
																																																																																																																Add ofs.2936 Ti1225.4344
																																																																																																															App solve_one_or_network_fast.2935Ti1226.4343 or_group.2937 dirvec.2938 
																																																																																																									LetRec trace_or_matrix_fast.2939 ofs.2940 or_network.2941 dirvec.2942 
																																																																																																										Let head.4320
																																																																																																											Get or_network.2941 ofs.2940
																																																																																																											Let range_primitive.4321
																																																																																																												Let Ti1207.4338
																																																																																																													Int:0
																																																																																																													Get head.4320 Ti1207.4338
																																																																																																												Let Ti1209.4322
																																																																																																													Let Ti1208.4337
																																																																																																														Int:1
																																																																																																														Neg Ti1208.4337
																																																																																																													IfEq range_primitive.4321 Ti1209.4322
																																																																																																														Unit
																																																																																																														Let Tu127.4323
																																																																																																															Let Ti1210.4326
																																																																																																																Int:99
																																																																																																																IfEq range_primitive.4321 Ti1210.4326
																																																																																																																	Let Ti1211.4336
																																																																																																																		Int:1
																																																																																																																		App solve_one_or_network_fast.2935Ti1211.4336 head.4320 dirvec.2942 
																																																																																																																	Let t.4327
																																																																																																																		App solver_fast2.2860range_primitive.4321 dirvec.2942 
																																																																																																																		Let Ti1212.4328
																																																																																																																			Int:0
																																																																																																																			IfEq t.4327 Ti1212.4328
																																																																																																																				Unit
																																																																																																																				Let tp.4329
																																																																																																																					Let Ta1213.4334
																																																																																																																						ExtArray 540
																																																																																																																						Let Ti1214.4335
																																																																																																																							Int:0
																																																																																																																							Get Ta1213.4334 Ti1214.4335
																																																																																																																					Let Td1217.4330
																																																																																																																						Let Ta1215.4332
																																																																																																																							ExtArray 548
																																																																																																																							Let Ti1216.4333
																																																																																																																								Int:0
																																																																																																																								Get Ta1215.4332 Ti1216.4333
																																																																																																																						IfLE Td1217.4330 tp.4329
																																																																																																																							Unit
																																																																																																																							Let Ti1218.4331
																																																																																																																								Int:1
																																																																																																																								App solve_one_or_network_fast.2935Ti1218.4331 head.4320 dirvec.2942 
																																																																																																															Let Ti1220.4324
																																																																																																																Let Ti1219.4325
																																																																																																																	Int:1
																																																																																																																	Add ofs.2940 Ti1219.4325
																																																																																																																App trace_or_matrix_fast.2939Ti1220.4324 or_network.2941 dirvec.2942 
																																																																																																										LetRec judge_intersection_fast.2943 dirvec.2944 
																																																																																																											Let Tu129.4306
																																																																																																												Let Ta1196.4317
																																																																																																													ExtArray 548
																																																																																																													Let Ti1197.4318
																																																																																																														Int:0
																																																																																																														Let Td1198.4319
																																																																																																															Float:1000000000.000000
																																																																																																															Put Ta1196.4317 Ti1197.4318 Td1198.4319
																																																																																																												Let Tu128.4307
																																																																																																													Let Ti1199.4313
																																																																																																														Int:0
																																																																																																														Let Ta1202.4314
																																																																																																															Let Ta1200.4315
																																																																																																																ExtArray 536
																																																																																																																Let Ti1201.4316
																																																																																																																	Int:0
																																																																																																																	Get Ta1200.4315 Ti1201.4316
																																																																																																															App trace_or_matrix_fast.2939Ti1199.4313 Ta1202.4314 dirvec.2944 
																																																																																																													Let t.4308
																																																																																																														Let Ta1203.4311
																																																																																																															ExtArray 548
																																																																																																															Let Ti1204.4312
																																																																																																																Int:0
																																																																																																																Get Ta1203.4311 Ti1204.4312
																																																																																																														Let Td1205.4309
																																																																																																															Float:-0.100000
																																																																																																															IfLE t.4308 Td1205.4309
																																																																																																																Int:0
																																																																																																																Let Td1206.4310
																																																																																																																	Float:100000000.000000
																																																																																																																	IfLE Td1206.4310 t.4308
																																																																																																																		Int:0
																																																																																																																		Int:1
																																																																																																											LetRec get_nvector_rect.2945 dirvec.2946 
																																																																																																												Let rectside.4293
																																																																																																													Let Ta1185.4304
																																																																																																														ExtArray 544
																																																																																																														Let Ti1186.4305
																																																																																																															Int:0
																																																																																																															Get Ta1185.4304 Ti1186.4305
																																																																																																													Let Tu130.4294
																																																																																																														Let Ta1187.4303
																																																																																																															ExtArray 568
																																																																																																															App vecbzero.2647Ta1187.4303 
																																																																																																														Let Ta1188.4295
																																																																																																															ExtArray 568
																																																																																																															Let Ti1190.4296
																																																																																																																Let Ti1189.4302
																																																																																																																	Int:1
																																																																																																																	Sub rectside.4293 Ti1189.4302
																																																																																																																Let Td1195.4297
																																																																																																																	Let Td1194.4298
																																																																																																																		Let Td1193.4299
																																																																																																																			Let Ti1192.4300
																																																																																																																				Let Ti1191.4301
																																																																																																																					Int:1
																																																																																																																					Sub rectside.4293 Ti1191.4301
																																																																																																																				Get dirvec.2946 Ti1192.4300
																																																																																																																			App sgn.2631Td1193.4299 
																																																																																																																		App fneg.2613Td1194.4298 
																																																																																																																	Put Ta1188.4295 Ti1190.4296 Td1195.4297
																																																																																																												LetRec get_nvector_plane.2947 m.2948 
																																																																																																													Let Tu132.4279
																																																																																																														Let Ta1173.4289
																																																																																																															ExtArray 568
																																																																																																															Let Ti1174.4290
																																																																																																																Int:0
																																																																																																																Let Td1176.4291
																																																																																																																	Let Td1175.4292
																																																																																																																		App o_param_a.2695m.2948 
																																																																																																																		App fneg.2613Td1175.4292 
																																																																																																																	Put Ta1173.4289 Ti1174.4290 Td1176.4291
																																																																																																														Let Tu131.4280
																																																																																																															Let Ta1177.4285
																																																																																																																ExtArray 568
																																																																																																																Let Ti1178.4286
																																																																																																																	Int:1
																																																																																																																	Let Td1180.4287
																																																																																																																		Let Td1179.4288
																																																																																																																			App o_param_b.2697m.2948 
																																																																																																																			App fneg.2613Td1179.4288 
																																																																																																																		Put Ta1177.4285 Ti1178.4286 Td1180.4287
																																																																																																															Let Ta1181.4281
																																																																																																																ExtArray 568
																																																																																																																Let Ti1182.4282
																																																																																																																	Int:2
																																																																																																																	Let Td1184.4283
																																																																																																																		Let Td1183.4284
																																																																																																																			App o_param_c.2699m.2948 
																																																																																																																			App fneg.2613Td1183.4284 
																																																																																																																		Put Ta1181.4281 Ti1182.4282 Td1184.4283
																																																																																																													LetRec get_nvector_second.2949 m.2950 
																																																																																																														Let p0.4216
																																																																																																															Let Td1123.4275
																																																																																																																Let Ta1121.4277
																																																																																																																	ExtArray 552
																																																																																																																	Let Ti1122.4278
																																																																																																																		Int:0
																																																																																																																		Get Ta1121.4277 Ti1122.4278
																																																																																																																Let Td1124.4276
																																																																																																																	App o_param_x.2703m.2950 
																																																																																																																	FSub Td1123.4275 Td1124.4276
																																																																																																															Let p1.4217
																																																																																																																Let Td1127.4271
																																																																																																																	Let Ta1125.4273
																																																																																																																		ExtArray 552
																																																																																																																		Let Ti1126.4274
																																																																																																																			Int:1
																																																																																																																			Get Ta1125.4273 Ti1126.4274
																																																																																																																	Let Td1128.4272
																																																																																																																		App o_param_y.2705m.2950 
																																																																																																																		FSub Td1127.4271 Td1128.4272
																																																																																																																Let p2.4218
																																																																																																																	Let Td1131.4267
																																																																																																																		Let Ta1129.4269
																																																																																																																			ExtArray 552
																																																																																																																			Let Ti1130.4270
																																																																																																																				Int:2
																																																																																																																				Get Ta1129.4269 Ti1130.4270
																																																																																																																		Let Td1132.4268
																																																																																																																			App o_param_z.2707m.2950 
																																																																																																																			FSub Td1131.4267 Td1132.4268
																																																																																																																	Let d0.4219
																																																																																																																		Let Td1133.4266
																																																																																																																			App o_param_a.2695m.2950 
																																																																																																																			FMul p0.4216 Td1133.4266
																																																																																																																		Let d1.4220
																																																																																																																			Let Td1134.4265
																																																																																																																				App o_param_b.2697m.2950 
																																																																																																																				FMul p1.4217 Td1134.4265
																																																																																																																			Let d2.4221
																																																																																																																				Let Td1135.4264
																																																																																																																					App o_param_c.2699m.2950 
																																																																																																																					FMul p2.4218 Td1135.4264
																																																																																																																				Let Tu137.4222
																																																																																																																					Let Ti1136.4225
																																																																																																																						App o_isrot.2693m.2950 
																																																																																																																						Let Ti1137.4226
																																																																																																																							Int:0
																																																																																																																							IfEq Ti1136.4225 Ti1137.4226
																																																																																																																								Let Tu134.4256
																																																																																																																									Let Ta1138.4262
																																																																																																																										ExtArray 568
																																																																																																																										Let Ti1139.4263
																																																																																																																											Int:0
																																																																																																																											Put Ta1138.4262 Ti1139.4263 d0.4219
																																																																																																																									Let Tu133.4257
																																																																																																																										Let Ta1140.4260
																																																																																																																											ExtArray 568
																																																																																																																											Let Ti1141.4261
																																																																																																																												Int:1
																																																																																																																												Put Ta1140.4260 Ti1141.4261 d1.4220
																																																																																																																										Let Ta1142.4258
																																																																																																																											ExtArray 568
																																																																																																																											Let Ti1143.4259
																																																																																																																												Int:2
																																																																																																																												Put Ta1142.4258 Ti1143.4259 d2.4221
																																																																																																																								Let Tu136.4227
																																																																																																																									Let Ta1144.4247
																																																																																																																										ExtArray 568
																																																																																																																										Let Ti1145.4248
																																																																																																																											Int:0
																																																																																																																											Let Td1152.4249
																																																																																																																												Let Td1151.4250
																																																																																																																													Let Td1150.4251
																																																																																																																														Let Td1147.4252
																																																																																																																															Let Td1146.4255
																																																																																																																																App o_param_r3.2723m.2950 
																																																																																																																																FMul p1.4217 Td1146.4255
																																																																																																																															Let Td1149.4253
																																																																																																																																Let Td1148.4254
																																																																																																																																	App o_param_r2.2721m.2950 
																																																																																																																																	FMul p2.4218 Td1148.4254
																																																																																																																																FAdd Td1147.4252 Td1149.4253
																																																																																																																														App fhalf.2615Td1150.4251 
																																																																																																																													FAdd d0.4219 Td1151.4250
																																																																																																																												Put Ta1144.4247 Ti1145.4248 Td1152.4249
																																																																																																																									Let Tu135.4228
																																																																																																																										Let Ta1153.4238
																																																																																																																											ExtArray 568
																																																																																																																											Let Ti1154.4239
																																																																																																																												Int:1
																																																																																																																												Let Td1161.4240
																																																																																																																													Let Td1160.4241
																																																																																																																														Let Td1159.4242
																																																																																																																															Let Td1156.4243
																																																																																																																																Let Td1155.4246
																																																																																																																																	App o_param_r3.2723m.2950 
																																																																																																																																	FMul p0.4216 Td1155.4246
																																																																																																																																Let Td1158.4244
																																																																																																																																	Let Td1157.4245
																																																																																																																																		App o_param_r1.2719m.2950 
																																																																																																																																		FMul p2.4218 Td1157.4245
																																																																																																																																	FAdd Td1156.4243 Td1158.4244
																																																																																																																															App fhalf.2615Td1159.4242 
																																																																																																																														FAdd d1.4220 Td1160.4241
																																																																																																																													Put Ta1153.4238 Ti1154.4239 Td1161.4240
																																																																																																																										Let Ta1162.4229
																																																																																																																											ExtArray 568
																																																																																																																											Let Ti1163.4230
																																																																																																																												Int:2
																																																																																																																												Let Td1170.4231
																																																																																																																													Let Td1169.4232
																																																																																																																														Let Td1168.4233
																																																																																																																															Let Td1165.4234
																																																																																																																																Let Td1164.4237
																																																																																																																																	App o_param_r2.2721m.2950 
																																																																																																																																	FMul p0.4216 Td1164.4237
																																																																																																																																Let Td1167.4235
																																																																																																																																	Let Td1166.4236
																																																																																																																																		App o_param_r1.2719m.2950 
																																																																																																																																		FMul p1.4217 Td1166.4236
																																																																																																																																	FAdd Td1165.4234 Td1167.4235
																																																																																																																															App fhalf.2615Td1168.4233 
																																																																																																																														FAdd d2.4221 Td1169.4232
																																																																																																																													Put Ta1162.4229 Ti1163.4230 Td1170.4231
																																																																																																																					Let Ta1171.4223
																																																																																																																						ExtArray 568
																																																																																																																						Let Tb1172.4224
																																																																																																																							App o_isinvert.2691m.2950 
																																																																																																																							App vecunit_sgn.2657Ta1171.4223 Tb1172.4224 
																																																																																																														LetRec get_nvector.2951 m.2952 dirvec.2953 
																																																																																																															Let m_shape.4213
																																																																																																																App o_form.2687m.2952 
																																																																																																																Let Ti1119.4214
																																																																																																																	Int:1
																																																																																																																	IfEq m_shape.4213 Ti1119.4214
																																																																																																																		App get_nvector_rect.2945dirvec.2953 
																																																																																																																		Let Ti1120.4215
																																																																																																																			Int:2
																																																																																																																			IfEq m_shape.4213 Ti1120.4215
																																																																																																																				App get_nvector_plane.2947m.2952 
																																																																																																																				App get_nvector_second.2949m.2952 
																																																																																																															LetRec utexture.2954 m.2955 p.2956 
																																																																																																																Let m_tex.4049
																																																																																																																	App o_texturetype.2685m.2955 
																																																																																																																	Let Tu142.4050
																																																																																																																		Let Ta985.4210
																																																																																																																			ExtArray 580
																																																																																																																			Let Ti986.4211
																																																																																																																				Int:0
																																																																																																																				Let Td987.4212
																																																																																																																					App o_color_red.2713m.2955 
																																																																																																																					Put Ta985.4210 Ti986.4211 Td987.4212
																																																																																																																		Let Tu141.4051
																																																																																																																			Let Ta988.4207
																																																																																																																				ExtArray 580
																																																																																																																				Let Ti989.4208
																																																																																																																					Int:1
																																																																																																																					Let Td990.4209
																																																																																																																						App o_color_green.2715m.2955 
																																																																																																																						Put Ta988.4207 Ti989.4208 Td990.4209
																																																																																																																			Let Tu140.4052
																																																																																																																				Let Ta991.4204
																																																																																																																					ExtArray 580
																																																																																																																					Let Ti992.4205
																																																																																																																						Int:2
																																																																																																																						Let Td993.4206
																																																																																																																							App o_color_blue.2717m.2955 
																																																																																																																							Put Ta991.4204 Ti992.4205 Td993.4206
																																																																																																																				Let Ti994.4053
																																																																																																																					Int:1
																																																																																																																					IfEq m_tex.4049 Ti994.4053
																																																																																																																						Let w1.4174
																																																																																																																							Let Td996.4201
																																																																																																																								Let Ti995.4203
																																																																																																																									Int:0
																																																																																																																									Get p.2956 Ti995.4203
																																																																																																																								Let Td997.4202
																																																																																																																									App o_param_x.2703m.2955 
																																																																																																																									FSub Td996.4201 Td997.4202
																																																																																																																							Let flag1.4175
																																																																																																																								Let d1.4194
																																																																																																																									Let Td1000.4197
																																																																																																																										Let Td999.4199
																																																																																																																											Let Td998.4200
																																																																																																																												Float:0.050000
																																																																																																																												FMul w1.4174 Td998.4200
																																																																																																																											ExtFunApp floor Td999.4199,
																																																																																																																										Let Td1001.4198
																																																																																																																											Float:20.000000
																																																																																																																											FMul Td1000.4197 Td1001.4198
																																																																																																																									Let Td1002.4195
																																																																																																																										Float:10.000000
																																																																																																																										Let Td1003.4196
																																																																																																																											FSub w1.4174 d1.4194
																																																																																																																											IfLE Td1002.4195 Td1003.4196
																																																																																																																												Int:0
																																																																																																																												Int:1
																																																																																																																								Let w3.4176
																																																																																																																									Let Td1005.4191
																																																																																																																										Let Ti1004.4193
																																																																																																																											Int:2
																																																																																																																											Get p.2956 Ti1004.4193
																																																																																																																										Let Td1006.4192
																																																																																																																											App o_param_z.2707m.2955 
																																																																																																																											FSub Td1005.4191 Td1006.4192
																																																																																																																									Let flag2.4177
																																																																																																																										Let d2.4184
																																																																																																																											Let Td1009.4187
																																																																																																																												Let Td1008.4189
																																																																																																																													Let Td1007.4190
																																																																																																																														Float:0.050000
																																																																																																																														FMul w3.4176 Td1007.4190
																																																																																																																													ExtFunApp floor Td1008.4189,
																																																																																																																												Let Td1010.4188
																																																																																																																													Float:20.000000
																																																																																																																													FMul Td1009.4187 Td1010.4188
																																																																																																																											Let Td1011.4185
																																																																																																																												Float:10.000000
																																																																																																																												Let Td1012.4186
																																																																																																																													FSub w3.4176 d2.4184
																																																																																																																													IfLE Td1011.4185 Td1012.4186
																																																																																																																														Int:0
																																																																																																																														Int:1
																																																																																																																										Let Ta1013.4178
																																																																																																																											ExtArray 580
																																																																																																																											Let Ti1014.4179
																																																																																																																												Int:1
																																																																																																																												Let Td1018.4180
																																																																																																																													Let Ti1015.4181
																																																																																																																														Int:0
																																																																																																																														IfEq flag1.4175 Ti1015.4181
																																																																																																																															Let Ti1016.4183
																																																																																																																																Int:0
																																																																																																																																IfEq flag2.4177 Ti1016.4183
																																																																																																																																	Float:255.000000
																																																																																																																																	Float:0.000000
																																																																																																																															Let Ti1017.4182
																																																																																																																																Int:0
																																																																																																																																IfEq flag2.4177 Ti1017.4182
																																																																																																																																	Float:0.000000
																																																																																																																																	Float:255.000000
																																																																																																																													Put Ta1013.4178 Ti1014.4179 Td1018.4180
																																																																																																																						Let Ti1019.4054
																																																																																																																							Int:2
																																																																																																																							IfEq m_tex.4049 Ti1019.4054
																																																																																																																								Let w2.4157
																																																																																																																									Let Td1024.4169
																																																																																																																										Let Td1023.4170
																																																																																																																											Let Td1021.4171
																																																																																																																												Let Ti1020.4173
																																																																																																																													Int:1
																																																																																																																													Get p.2956 Ti1020.4173
																																																																																																																												Let Td1022.4172
																																																																																																																													Float:0.250000
																																																																																																																													FMul Td1021.4171 Td1022.4172
																																																																																																																											ExtFunApp sin Td1023.4170,
																																																																																																																										App fsqr.2617Td1024.4169 
																																																																																																																									Let Tu138.4158
																																																																																																																										Let Ta1025.4165
																																																																																																																											ExtArray 580
																																																																																																																											Let Ti1026.4166
																																																																																																																												Int:0
																																																																																																																												Let Td1028.4167
																																																																																																																													Let Td1027.4168
																																																																																																																														Float:255.000000
																																																																																																																														FMul Td1027.4168 w2.4157
																																																																																																																													Put Ta1025.4165 Ti1026.4166 Td1028.4167
																																																																																																																										Let Ta1029.4159
																																																																																																																											ExtArray 580
																																																																																																																											Let Ti1030.4160
																																																																																																																												Int:1
																																																																																																																												Let Td1034.4161
																																																																																																																													Let Td1031.4162
																																																																																																																														Float:255.000000
																																																																																																																														Let Td1033.4163
																																																																																																																															Let Td1032.4164
																																																																																																																																Float:1.000000
																																																																																																																																FSub Td1032.4164 w2.4157
																																																																																																																															FMul Td1031.4162 Td1033.4163
																																																																																																																													Put Ta1029.4159 Ti1030.4160 Td1034.4161
																																																																																																																								Let Ti1035.4055
																																																																																																																									Int:3
																																																																																																																									IfEq m_tex.4049 Ti1035.4055
																																																																																																																										Let w1.4125
																																																																																																																											Let Td1037.4154
																																																																																																																												Let Ti1036.4156
																																																																																																																													Int:0
																																																																																																																													Get p.2956 Ti1036.4156
																																																																																																																												Let Td1038.4155
																																																																																																																													App o_param_x.2703m.2955 
																																																																																																																													FSub Td1037.4154 Td1038.4155
																																																																																																																											Let w3.4126
																																																																																																																												Let Td1040.4151
																																																																																																																													Let Ti1039.4153
																																																																																																																														Int:2
																																																																																																																														Get p.2956 Ti1039.4153
																																																																																																																													Let Td1041.4152
																																																																																																																														App o_param_z.2707m.2955 
																																																																																																																														FSub Td1040.4151 Td1041.4152
																																																																																																																												Let w2.4127
																																																																																																																													Let Td1047.4145
																																																																																																																														Let Td1044.4146
																																																																																																																															Let Td1042.4149
																																																																																																																																App fsqr.2617w1.4125 
																																																																																																																																Let Td1043.4150
																																																																																																																																	App fsqr.2617w3.4126 
																																																																																																																																	FAdd Td1042.4149 Td1043.4150
																																																																																																																															Let Td1045.4147
																																																																																																																																Float:10.000000
																																																																																																																																Let Td1046.4148
																																																																																																																																	FReciprocal Td1045.4147
																																																																																																																																	FMul Td1044.4146 Td1046.4148
																																																																																																																														sqrt Td1047.4145
																																																																																																																													Let w4.4128
																																																																																																																														Let Td1049.4142
																																																																																																																															Let Td1048.4144
																																																																																																																																ExtFunApp floor w2.4127,
																																																																																																																																FSub w2.4127 Td1048.4144
																																																																																																																															Let Td1050.4143
																																																																																																																																Float:3.141593
																																																																																																																																FMul Td1049.4142 Td1050.4143
																																																																																																																														Let cws.4129
																																																																																																																															Let Td1051.4141
																																																																																																																																ExtFunApp cos w4.4128,
																																																																																																																																App fsqr.2617Td1051.4141 
																																																																																																																															Let Tu139.4130
																																																																																																																																Let Ta1052.4137
																																																																																																																																	ExtArray 580
																																																																																																																																	Let Ti1053.4138
																																																																																																																																		Int:1
																																																																																																																																		Let Td1055.4139
																																																																																																																																			Let Td1054.4140
																																																																																																																																				Float:255.000000
																																																																																																																																				FMul cws.4129 Td1054.4140
																																																																																																																																			Put Ta1052.4137 Ti1053.4138 Td1055.4139
																																																																																																																																Let Ta1056.4131
																																																																																																																																	ExtArray 580
																																																																																																																																	Let Ti1057.4132
																																																																																																																																		Int:2
																																																																																																																																		Let Td1061.4133
																																																																																																																																			Let Td1059.4134
																																																																																																																																				Let Td1058.4136
																																																																																																																																					Float:1.000000
																																																																																																																																					FSub Td1058.4136 cws.4129
																																																																																																																																				Let Td1060.4135
																																																																																																																																					Float:255.000000
																																																																																																																																					FMul Td1059.4134 Td1060.4135
																																																																																																																																			Put Ta1056.4131 Ti1057.4132 Td1061.4133
																																																																																																																										Let Ti1062.4056
																																																																																																																											Int:4
																																																																																																																											IfEq m_tex.4049 Ti1062.4056
																																																																																																																												Let w1.4057
																																																																																																																													Let Td1066.4119
																																																																																																																														Let Td1064.4122
																																																																																																																															Let Ti1063.4124
																																																																																																																																Int:0
																																																																																																																																Get p.2956 Ti1063.4124
																																																																																																																															Let Td1065.4123
																																																																																																																																App o_param_x.2703m.2955 
																																																																																																																																FSub Td1064.4122 Td1065.4123
																																																																																																																														Let Td1068.4120
																																																																																																																															Let Td1067.4121
																																																																																																																																App o_param_a.2695m.2955 
																																																																																																																																sqrt Td1067.4121
																																																																																																																															FMul Td1066.4119 Td1068.4120
																																																																																																																													Let w3.4058
																																																																																																																														Let Td1072.4113
																																																																																																																															Let Td1070.4116
																																																																																																																																Let Ti1069.4118
																																																																																																																																	Int:2
																																																																																																																																	Get p.2956 Ti1069.4118
																																																																																																																																Let Td1071.4117
																																																																																																																																	App o_param_z.2707m.2955 
																																																																																																																																	FSub Td1070.4116 Td1071.4117
																																																																																																																															Let Td1074.4114
																																																																																																																																Let Td1073.4115
																																																																																																																																	App o_param_c.2699m.2955 
																																																																																																																																	sqrt Td1073.4115
																																																																																																																																FMul Td1072.4113 Td1074.4114
																																																																																																																														Let w4.4059
																																																																																																																															Let Td1075.4111
																																																																																																																																App fsqr.2617w1.4057 
																																																																																																																																Let Td1076.4112
																																																																																																																																	App fsqr.2617w3.4058 
																																																																																																																																	FAdd Td1075.4111 Td1076.4112
																																																																																																																															Let w7.4060
																																																																																																																																Let Td1077.4101
																																																																																																																																	Float:0.000100
																																																																																																																																	Let Td1078.4102
																																																																																																																																		fabs w1.4057
																																																																																																																																		IfLE Td1077.4101 Td1078.4102
																																																																																																																																			Let w5.4103
																																																																																																																																				Let Td1080.4109
																																																																																																																																					Let Td1079.4110
																																																																																																																																						FReciprocal w1.4057
																																																																																																																																						FMul w3.4058 Td1079.4110
																																																																																																																																					fabs Td1080.4109
																																																																																																																																				Let Td1083.4104
																																																																																																																																					Let Td1081.4107
																																																																																																																																						ExtFunApp atan w5.4103,
																																																																																																																																						Let Td1082.4108
																																																																																																																																							Float:30.000000
																																																																																																																																							FMul Td1081.4107 Td1082.4108
																																																																																																																																					Let Td1084.4105
																																																																																																																																						Float:3.141593
																																																																																																																																						Let Td1085.4106
																																																																																																																																							FReciprocal Td1084.4105
																																																																																																																																							FMul Td1083.4104 Td1085.4106
																																																																																																																																			Float:15.000000
																																																																																																																																Let w9.4061
																																																																																																																																	Let Td1086.4100
																																																																																																																																		ExtFunApp floor w7.4060,
																																																																																																																																		FSub w7.4060 Td1086.4100
																																																																																																																																	Let w2.4062
																																																																																																																																		Let Td1090.4094
																																																																																																																																			Let Td1088.4097
																																																																																																																																				Let Ti1087.4099
																																																																																																																																					Int:1
																																																																																																																																					Get p.2956 Ti1087.4099
																																																																																																																																				Let Td1089.4098
																																																																																																																																					App o_param_y.2705m.2955 
																																																																																																																																					FSub Td1088.4097 Td1089.4098
																																																																																																																																			Let Td1092.4095
																																																																																																																																				Let Td1091.4096
																																																																																																																																					App o_param_b.2697m.2955 
																																																																																																																																					sqrt Td1091.4096
																																																																																																																																				FMul Td1090.4094 Td1092.4095
																																																																																																																																		Let w8.4063
																																																																																																																																			Let Td1093.4084
																																																																																																																																				Float:0.000100
																																																																																																																																				Let Td1094.4085
																																																																																																																																					fabs w4.4059
																																																																																																																																					IfLE Td1093.4084 Td1094.4085
																																																																																																																																						Let w6.4086
																																																																																																																																							Let Td1096.4092
																																																																																																																																								Let Td1095.4093
																																																																																																																																									FReciprocal w4.4059
																																																																																																																																									FMul w2.4062 Td1095.4093
																																																																																																																																								fabs Td1096.4092
																																																																																																																																							Let Td1099.4087
																																																																																																																																								Let Td1097.4090
																																																																																																																																									ExtFunApp atan w6.4086,
																																																																																																																																									Let Td1098.4091
																																																																																																																																										Float:30.000000
																																																																																																																																										FMul Td1097.4090 Td1098.4091
																																																																																																																																								Let Td1100.4088
																																																																																																																																									Float:3.141593
																																																																																																																																									Let Td1101.4089
																																																																																																																																										FReciprocal Td1100.4088
																																																																																																																																										FMul Td1099.4087 Td1101.4089
																																																																																																																																						Float:15.000000
																																																																																																																																			Let w10.4064
																																																																																																																																				Let Td1102.4083
																																																																																																																																					ExtFunApp floor w8.4063,
																																																																																																																																					FSub w8.4063 Td1102.4083
																																																																																																																																				Let w11.4065
																																																																																																																																					Let Td1107.4075
																																																																																																																																						Let Td1103.4079
																																																																																																																																							Float:0.150000
																																																																																																																																							Let Td1106.4080
																																																																																																																																								Let Td1105.4081
																																																																																																																																									Let Td1104.4082
																																																																																																																																										Float:0.500000
																																																																																																																																										FSub Td1104.4082 w9.4061
																																																																																																																																									App fsqr.2617Td1105.4081 
																																																																																																																																								FSub Td1103.4079 Td1106.4080
																																																																																																																																						Let Td1110.4076
																																																																																																																																							Let Td1109.4077
																																																																																																																																								Let Td1108.4078
																																																																																																																																									Float:0.500000
																																																																																																																																									FSub Td1108.4078 w10.4064
																																																																																																																																								App fsqr.2617Td1109.4077 
																																																																																																																																							FSub Td1107.4075 Td1110.4076
																																																																																																																																					Let w12.4066
																																																																																																																																						Let Td1111.4074
																																																																																																																																							Float:0.000000
																																																																																																																																							IfLE Td1111.4074 w11.4065
																																																																																																																																								Var w11.4065
																																																																																																																																								Float:0.000000
																																																																																																																																						Let Ta1112.4067
																																																																																																																																							ExtArray 580
																																																																																																																																							Let Ti1113.4068
																																																																																																																																								Int:2
																																																																																																																																								Let Td1118.4069
																																																																																																																																									Let Td1115.4070
																																																																																																																																										Let Td1114.4073
																																																																																																																																											Float:255.000000
																																																																																																																																											FMul Td1114.4073 w12.4066
																																																																																																																																										Let Td1116.4071
																																																																																																																																											Float:0.300000
																																																																																																																																											Let Td1117.4072
																																																																																																																																												FReciprocal Td1116.4071
																																																																																																																																												FMul Td1115.4070 Td1117.4072
																																																																																																																																									Put Ta1112.4067 Ti1113.4068 Td1118.4069
																																																																																																																												Unit
																																																																																																																LetRec add_light.2957 bright.2958 hilight.2959 hilight_scale.2960 
																																																																																																																	Let Tu145.4021
																																																																																																																		Let Td961.4046
																																																																																																																			Float:0.000000
																																																																																																																			IfLE bright.2958 Td961.4046
																																																																																																																				Unit
																																																																																																																				Let Ta962.4047
																																																																																																																					ExtArray 604
																																																																																																																					Let Ta963.4048
																																																																																																																						ExtArray 580
																																																																																																																						App vecaccum.2668Ta962.4047 bright.2958 Ta963.4048 
																																																																																																																		Let Td964.4022
																																																																																																																			Float:0.000000
																																																																																																																			IfLE hilight.2959 Td964.4022
																																																																																																																				Unit
																																																																																																																				Let ihl.4023
																																																																																																																					Let Td966.4044
																																																																																																																						Let Td965.4045
																																																																																																																							App fsqr.2617hilight.2959 
																																																																																																																							App fsqr.2617Td965.4045 
																																																																																																																						FMul Td966.4044 hilight_scale.2960
																																																																																																																					Let Tu144.4024
																																																																																																																						Let Ta967.4038
																																																																																																																							ExtArray 604
																																																																																																																							Let Ti968.4039
																																																																																																																								Int:0
																																																																																																																								Let Td972.4040
																																																																																																																									Let Td971.4041
																																																																																																																										Let Ta969.4042
																																																																																																																											ExtArray 604
																																																																																																																											Let Ti970.4043
																																																																																																																												Int:0
																																																																																																																												Get Ta969.4042 Ti970.4043
																																																																																																																										FAdd Td971.4041 ihl.4023
																																																																																																																									Put Ta967.4038 Ti968.4039 Td972.4040
																																																																																																																						Let Tu143.4025
																																																																																																																							Let Ta973.4032
																																																																																																																								ExtArray 604
																																																																																																																								Let Ti974.4033
																																																																																																																									Int:1
																																																																																																																									Let Td978.4034
																																																																																																																										Let Td977.4035
																																																																																																																											Let Ta975.4036
																																																																																																																												ExtArray 604
																																																																																																																												Let Ti976.4037
																																																																																																																													Int:1
																																																																																																																													Get Ta975.4036 Ti976.4037
																																																																																																																											FAdd Td977.4035 ihl.4023
																																																																																																																										Put Ta973.4032 Ti974.4033 Td978.4034
																																																																																																																							Let Ta979.4026
																																																																																																																								ExtArray 604
																																																																																																																								Let Ti980.4027
																																																																																																																									Int:2
																																																																																																																									Let Td984.4028
																																																																																																																										Let Td983.4029
																																																																																																																											Let Ta981.4030
																																																																																																																												ExtArray 604
																																																																																																																												Let Ti982.4031
																																																																																																																													Int:2
																																																																																																																													Get Ta981.4030 Ti982.4031
																																																																																																																											FAdd Td983.4029 ihl.4023
																																																																																																																										Put Ta979.4026 Ti980.4027 Td984.4028
																																																																																																																	LetRec trace_reflections.2961 index.2962 diffuse.2963 hilight_scale.2964 dirvec.2965 
																																																																																																																		Let Ti936.3988
																																																																																																																			Int:0
																																																																																																																			IfLE Ti936.3988 index.2962
																																																																																																																				Let rinfo.3989
																																																																																																																					Let Ta937.4020
																																																																																																																						ExtArray 1016
																																																																																																																						Get Ta937.4020 index.2962
																																																																																																																					Let dvec.3990
																																																																																																																						App r_dvec.2752rinfo.3989 
																																																																																																																						Let Tu146.3991
																																																																																																																							Let Tb938.3994
																																																																																																																								App judge_intersection_fast.2943dvec.3990 
																																																																																																																								Let Ti939.3995
																																																																																																																									Int:0
																																																																																																																									IfEq Tb938.3994 Ti939.3995
																																																																																																																										Unit
																																																																																																																										Let surface_id.3996
																																																																																																																											Let Ti943.4013
																																																																																																																												Let Ti942.4017
																																																																																																																													Let Ta940.4018
																																																																																																																														ExtArray 564
																																																																																																																														Let Ti941.4019
																																																																																																																															Int:0
																																																																																																																															Get Ta940.4018 Ti941.4019
																																																																																																																													ShiftL2 Ti942.4017
																																																																																																																												Let Ti946.4014
																																																																																																																													Let Ta944.4015
																																																																																																																														ExtArray 544
																																																																																																																														Let Ti945.4016
																																																																																																																															Int:0
																																																																																																																															Get Ta944.4015 Ti945.4016
																																																																																																																													Add Ti943.4013 Ti946.4014
																																																																																																																											Let Ti947.3997
																																																																																																																												App r_surface_id.2750rinfo.3989 
																																																																																																																												IfEq surface_id.3996 Ti947.3997
																																																																																																																													Let Tb952.3998
																																																																																																																														Let Ti948.4009
																																																																																																																															Int:0
																																																																																																																															Let Ta951.4010
																																																																																																																																Let Ta949.4011
																																																																																																																																	ExtArray 536
																																																																																																																																	Let Ti950.4012
																																																																																																																																		Int:0
																																																																																																																																		Get Ta949.4011 Ti950.4012
																																																																																																																																App shadow_check_one_or_matrix.2914Ti948.4009 Ta951.4010 
																																																																																																																														Let Ti953.3999
																																																																																																																															Int:0
																																																																																																																															IfEq Tb952.3998 Ti953.3999
																																																																																																																																Let p.4000
																																																																																																																																	Let Ta954.4007
																																																																																																																																		ExtArray 568
																																																																																																																																		Let Ta955.4008
																																																																																																																																			App d_vec.2746dvec.3990 
																																																																																																																																			App veciprod.2660Ta954.4007 Ta955.4008 
																																																																																																																																	Let scale.4001
																																																																																																																																		App r_bright.2754rinfo.3989 
																																																																																																																																		Let bright.4002
																																																																																																																																			Let Td956.4006
																																																																																																																																				FMul scale.4001 diffuse.2963
																																																																																																																																				FMul Td956.4006 p.4000
																																																																																																																																			Let hilight.4003
																																																																																																																																				Let Td958.4004
																																																																																																																																					Let Ta957.4005
																																																																																																																																						App d_vec.2746dvec.3990 
																																																																																																																																						App veciprod.2660dirvec.2965 Ta957.4005 
																																																																																																																																					FMul scale.4001 Td958.4004
																																																																																																																																				App add_light.2957bright.4002 hilight.4003 hilight_scale.2964 
																																																																																																																																Unit
																																																																																																																													Unit
																																																																																																																							Let Ti960.3992
																																																																																																																								Let Ti959.3993
																																																																																																																									Int:1
																																																																																																																									Sub index.2962 Ti959.3993
																																																																																																																								App trace_reflections.2961Ti960.3992 diffuse.2963 hilight_scale.2964 dirvec.2965 
																																																																																																																				Unit
																																																																																																																		LetRec trace_ray.2966 nref.2967 energy.2968 dirvec.2969 pixel.2970 dist.2971 
																																																																																																																			Let Ti836.3855
																																																																																																																				Int:4
																																																																																																																				IfLE nref.2967 Ti836.3855
																																																																																																																					Let surface_ids.3856
																																																																																																																						App p_surface_ids.2731pixel.2970 
																																																																																																																						Let Tb837.3857
																																																																																																																							App judge_intersection.2929dirvec.2969 
																																																																																																																							Let Ti838.3858
																																																																																																																								Int:0
																																																																																																																								IfEq Tb837.3857 Ti838.3858
																																																																																																																									Let Tu163.3953
																																																																																																																										Let Ti840.3986
																																																																																																																											Let Ti839.3987
																																																																																																																												Int:1
																																																																																																																												Neg Ti839.3987
																																																																																																																											Put surface_ids.3856 nref.2967 Ti840.3986
																																																																																																																										Let Ti841.3954
																																																																																																																											Int:0
																																																																																																																											IfEq nref.2967 Ti841.3954
																																																																																																																												Unit
																																																																																																																												Let hl.3955
																																																																																																																													Let Td843.3984
																																																																																																																														Let Ta842.3985
																																																																																																																															ExtArray 312
																																																																																																																															App veciprod.2660dirvec.2969 Ta842.3985 
																																																																																																																														App fneg.2613Td843.3984 
																																																																																																																													Let Td844.3956
																																																																																																																														Float:0.000000
																																																																																																																														IfLE hl.3955 Td844.3956
																																																																																																																															Unit
																																																																																																																															Let ihl.3957
																																																																																																																																Let Td847.3978
																																																																																																																																	Let Td846.3982
																																																																																																																																		Let Td845.3983
																																																																																																																																			App fsqr.2617hl.3955 
																																																																																																																																			FMul Td845.3983 hl.3955
																																																																																																																																		FMul Td846.3982 energy.2968
																																																																																																																																	Let Td850.3979
																																																																																																																																		Let Ta848.3980
																																																																																																																																			ExtArray 324
																																																																																																																																			Let Ti849.3981
																																																																																																																																				Int:0
																																																																																																																																				Get Ta848.3980 Ti849.3981
																																																																																																																																		FMul Td847.3978 Td850.3979
																																																																																																																																Let Tu162.3958
																																																																																																																																	Let Ta851.3972
																																																																																																																																		ExtArray 604
																																																																																																																																		Let Ti852.3973
																																																																																																																																			Int:0
																																																																																																																																			Let Td856.3974
																																																																																																																																				Let Td855.3975
																																																																																																																																					Let Ta853.3976
																																																																																																																																						ExtArray 604
																																																																																																																																						Let Ti854.3977
																																																																																																																																							Int:0
																																																																																																																																							Get Ta853.3976 Ti854.3977
																																																																																																																																					FAdd Td855.3975 ihl.3957
																																																																																																																																				Put Ta851.3972 Ti852.3973 Td856.3974
																																																																																																																																	Let Tu161.3959
																																																																																																																																		Let Ta857.3966
																																																																																																																																			ExtArray 604
																																																																																																																																			Let Ti858.3967
																																																																																																																																				Int:1
																																																																																																																																				Let Td862.3968
																																																																																																																																					Let Td861.3969
																																																																																																																																						Let Ta859.3970
																																																																																																																																							ExtArray 604
																																																																																																																																							Let Ti860.3971
																																																																																																																																								Int:1
																																																																																																																																								Get Ta859.3970 Ti860.3971
																																																																																																																																						FAdd Td861.3969 ihl.3957
																																																																																																																																					Put Ta857.3966 Ti858.3967 Td862.3968
																																																																																																																																		Let Ta863.3960
																																																																																																																																			ExtArray 604
																																																																																																																																			Let Ti864.3961
																																																																																																																																				Int:2
																																																																																																																																				Let Td868.3962
																																																																																																																																					Let Td867.3963
																																																																																																																																						Let Ta865.3964
																																																																																																																																							ExtArray 604
																																																																																																																																							Let Ti866.3965
																																																																																																																																								Int:2
																																																																																																																																								Get Ta865.3964 Ti866.3965
																																																																																																																																						FAdd Td867.3963 ihl.3957
																																																																																																																																					Put Ta863.3960 Ti864.3961 Td868.3962
																																																																																																																									Let obj_id.3859
																																																																																																																										Let Ta869.3951
																																																																																																																											ExtArray 564
																																																																																																																											Let Ti870.3952
																																																																																																																												Int:0
																																																																																																																												Get Ta869.3951 Ti870.3952
																																																																																																																										Let obj.3860
																																																																																																																											Let Ta871.3950
																																																																																																																												ExtArray 48
																																																																																																																												Get Ta871.3950 obj_id.3859
																																																																																																																											Let m_surface.3861
																																																																																																																												App o_reflectiontype.2689obj.3860 
																																																																																																																												Let diffuse.3862
																																																																																																																													Let Td872.3949
																																																																																																																														App o_diffuse.2709obj.3860 
																																																																																																																														FMul Td872.3949 energy.2968
																																																																																																																													Let Tu160.3863
																																																																																																																														App get_nvector.2951obj.3860 dirvec.2969 
																																																																																																																														Let Tu159.3864
																																																																																																																															Let Ta873.3947
																																																																																																																																ExtArray 636
																																																																																																																																Let Ta874.3948
																																																																																																																																	ExtArray 552
																																																																																																																																	App veccpy.2649Ta873.3947 Ta874.3948 
																																																																																																																															Let Tu158.3865
																																																																																																																																Let Ta875.3946
																																																																																																																																	ExtArray 552
																																																																																																																																	App utexture.2954obj.3860 Ta875.3946 
																																																																																																																																Let Tu157.3866
																																																																																																																																	Let Ti880.3941
																																																																																																																																		Let Ti876.3942
																																																																																																																																			ShiftL2 obj_id.3859
																																																																																																																																			Let Ti879.3943
																																																																																																																																				Let Ta877.3944
																																																																																																																																					ExtArray 544
																																																																																																																																					Let Ti878.3945
																																																																																																																																						Int:0
																																																																																																																																						Get Ta877.3944 Ti878.3945
																																																																																																																																				Add Ti876.3942 Ti879.3943
																																																																																																																																		Put surface_ids.3856 nref.2967 Ti880.3941
																																																																																																																																	Let intersection_points.3867
																																																																																																																																		App p_intersection_points.2729pixel.2970 
																																																																																																																																		Let Tu156.3868
																																																																																																																																			Let Ta881.3939
																																																																																																																																				Get intersection_points.3867 nref.2967
																																																																																																																																				Let Ta882.3940
																																																																																																																																					ExtArray 552
																																																																																																																																					App veccpy.2649Ta881.3939 Ta882.3940 
																																																																																																																																			Let calc_diffuse.3869
																																																																																																																																				App p_calc_diffuse.2733pixel.2970 
																																																																																																																																				Let Tu155.3870
																																																																																																																																					Let Td883.3920
																																																																																																																																						Float:0.500000
																																																																																																																																						Let Td884.3921
																																																																																																																																							App o_diffuse.2709obj.3860 
																																																																																																																																							IfLE Td883.3920 Td884.3921
																																																																																																																																								Let Tu149.3923
																																																																																																																																									Let Ti885.3938
																																																																																																																																										Int:1
																																																																																																																																										Put calc_diffuse.3869 nref.2967 Ti885.3938
																																																																																																																																									Let energya.3924
																																																																																																																																										App p_energy.2735pixel.2970 
																																																																																																																																										Let Tu148.3925
																																																																																																																																											Let Ta886.3936
																																																																																																																																												Get energya.3924 nref.2967
																																																																																																																																												Let Ta887.3937
																																																																																																																																													ExtArray 580
																																																																																																																																													App veccpy.2649Ta886.3936 Ta887.3937 
																																																																																																																																											Let Tu147.3926
																																																																																																																																												Let Ta888.3930
																																																																																																																																													Get energya.3924 nref.2967
																																																																																																																																													Let Td893.3931
																																																																																																																																														Let Td892.3932
																																																																																																																																															Let Td889.3933
																																																																																																																																																Float:1.000000
																																																																																																																																																Let Td890.3934
																																																																																																																																																	Float:256.000000
																																																																																																																																																	Let Td891.3935
																																																																																																																																																		FReciprocal Td890.3934
																																																																																																																																																		FMul Td889.3933 Td891.3935
																																																																																																																																															FMul Td892.3932 diffuse.3862
																																																																																																																																														App vecscale.2678Ta888.3930 Td893.3931 
																																																																																																																																												Let nvectors.3927
																																																																																																																																													App p_nvectors.2744pixel.2970 
																																																																																																																																													Let Ta894.3928
																																																																																																																																														Get nvectors.3927 nref.2967
																																																																																																																																														Let Ta895.3929
																																																																																																																																															ExtArray 568
																																																																																																																																															App veccpy.2649Ta894.3928 Ta895.3929 
																																																																																																																																								Let Ti896.3922
																																																																																																																																									Int:0
																																																																																																																																									Put calc_diffuse.3869 nref.2967 Ti896.3922
																																																																																																																																					Let w.3871
																																																																																																																																						Let Td897.3917
																																																																																																																																							Float:-2.000000
																																																																																																																																							Let Td899.3918
																																																																																																																																								Let Ta898.3919
																																																																																																																																									ExtArray 568
																																																																																																																																									App veciprod.2660dirvec.2969 Ta898.3919 
																																																																																																																																								FMul Td897.3917 Td899.3918
																																																																																																																																						Let Tu154.3872
																																																																																																																																							Let Ta900.3916
																																																																																																																																								ExtArray 568
																																																																																																																																								App vecaccum.2668dirvec.2969 w.3871 Ta900.3916 
																																																																																																																																							Let hilight_scale.3873
																																																																																																																																								Let Td901.3915
																																																																																																																																									App o_hilight.2711obj.3860 
																																																																																																																																									FMul energy.2968 Td901.3915
																																																																																																																																								Let Tu153.3874
																																																																																																																																									Let Tb906.3901
																																																																																																																																										Let Ti902.3911
																																																																																																																																											Int:0
																																																																																																																																											Let Ta905.3912
																																																																																																																																												Let Ta903.3913
																																																																																																																																													ExtArray 536
																																																																																																																																													Let Ti904.3914
																																																																																																																																														Int:0
																																																																																																																																														Get Ta903.3913 Ti904.3914
																																																																																																																																												App shadow_check_one_or_matrix.2914Ti902.3911 Ta905.3912 
																																																																																																																																										Let Ti907.3902
																																																																																																																																											Int:0
																																																																																																																																											IfEq Tb906.3901 Ti907.3902
																																																																																																																																												Let bright.3903
																																																																																																																																													Let Td911.3907
																																																																																																																																														Let Td910.3908
																																																																																																																																															Let Ta908.3909
																																																																																																																																																ExtArray 568
																																																																																																																																																Let Ta909.3910
																																																																																																																																																	ExtArray 312
																																																																																																																																																	App veciprod.2660Ta908.3909 Ta909.3910 
																																																																																																																																															App fneg.2613Td910.3908 
																																																																																																																																														FMul Td911.3907 diffuse.3862
																																																																																																																																													Let hilight.3904
																																																																																																																																														Let Td913.3905
																																																																																																																																															Let Ta912.3906
																																																																																																																																																ExtArray 312
																																																																																																																																																App veciprod.2660dirvec.2969 Ta912.3906 
																																																																																																																																															App fneg.2613Td913.3905 
																																																																																																																																														App add_light.2957bright.3903 hilight.3904 hilight_scale.3873 
																																																																																																																																												Unit
																																																																																																																																									Let Tu152.3875
																																																																																																																																										Let Ta914.3900
																																																																																																																																											ExtArray 552
																																																																																																																																											App setup_startp.2880Ta914.3900 
																																																																																																																																										Let Tu151.3876
																																																																																																																																											Let Ti919.3895
																																																																																																																																												Let Ti917.3896
																																																																																																																																													Let Ta915.3898
																																																																																																																																														ExtArray 1736
																																																																																																																																														Let Ti916.3899
																																																																																																																																															Int:0
																																																																																																																																															Get Ta915.3898 Ti916.3899
																																																																																																																																													Let Ti918.3897
																																																																																																																																														Int:1
																																																																																																																																														Sub Ti917.3896 Ti918.3897
																																																																																																																																												App trace_reflections.2961Ti919.3895 diffuse.3862 hilight_scale.3873 dirvec.2969 
																																																																																																																																											Let Td920.3877
																																																																																																																																												Float:0.100000
																																																																																																																																												IfLE energy.2968 Td920.3877
																																																																																																																																													Unit
																																																																																																																																													Let Tu150.3878
																																																																																																																																														Let Ti921.3890
																																																																																																																																															Int:4
																																																																																																																																															IfLE Ti921.3890 nref.2967
																																																																																																																																																Unit
																																																																																																																																																Let Ti923.3891
																																																																																																																																																	Let Ti922.3894
																																																																																																																																																		Int:1
																																																																																																																																																		Add nref.2967 Ti922.3894
																																																																																																																																																	Let Ti925.3892
																																																																																																																																																		Let Ti924.3893
																																																																																																																																																			Int:1
																																																																																																																																																			Neg Ti924.3893
																																																																																																																																																		Put surface_ids.3856 Ti923.3891 Ti925.3892
																																																																																																																																														Let Ti926.3879
																																																																																																																																															Int:2
																																																																																																																																															IfEq m_surface.3861 Ti926.3879
																																																																																																																																																Let energy2.3880
																																																																																																																																																	Let Td929.3887
																																																																																																																																																		Let Td927.3888
																																																																																																																																																			Float:1.000000
																																																																																																																																																			Let Td928.3889
																																																																																																																																																				App o_diffuse.2709obj.3860 
																																																																																																																																																				FSub Td927.3888 Td928.3889
																																																																																																																																																		FMul energy.2968 Td929.3887
																																																																																																																																																	Let Ti931.3881
																																																																																																																																																		Let Ti930.3886
																																																																																																																																																			Int:1
																																																																																																																																																			Add nref.2967 Ti930.3886
																																																																																																																																																		Let Td935.3882
																																																																																																																																																			Let Td934.3883
																																																																																																																																																				Let Ta932.3884
																																																																																																																																																					ExtArray 548
																																																																																																																																																					Let Ti933.3885
																																																																																																																																																						Int:0
																																																																																																																																																						Get Ta932.3884 Ti933.3885
																																																																																																																																																				FAdd dist.2971 Td934.3883
																																																																																																																																																			App trace_ray.2966Ti931.3881 energy2.3880 dirvec.2969 pixel.2970 Td935.3882 
																																																																																																																																																Unit
																																																																																																																					Unit
																																																																																																																			LetRec trace_diffuse_ray.2972 dirvec.2973 energy.2974 
																																																																																																																				Let Tb813.3827
																																																																																																																					App judge_intersection_fast.2943dirvec.2973 
																																																																																																																					Let Ti814.3828
																																																																																																																						Int:0
																																																																																																																						IfEq Tb813.3827 Ti814.3828
																																																																																																																							Unit
																																																																																																																							Let obj.3829
																																																																																																																								Let Ta815.3851
																																																																																																																									ExtArray 48
																																																																																																																									Let Ti818.3852
																																																																																																																										Let Ta816.3853
																																																																																																																											ExtArray 564
																																																																																																																											Let Ti817.3854
																																																																																																																												Int:0
																																																																																																																												Get Ta816.3853 Ti817.3854
																																																																																																																										Get Ta815.3851 Ti818.3852
																																																																																																																								Let Tu165.3830
																																																																																																																									Let Ta819.3850
																																																																																																																										App d_vec.2746dirvec.2973 
																																																																																																																										App get_nvector.2951obj.3829 Ta819.3850 
																																																																																																																									Let Tu164.3831
																																																																																																																										Let Ta820.3849
																																																																																																																											ExtArray 552
																																																																																																																											App utexture.2954obj.3829 Ta820.3849 
																																																																																																																										Let Tb825.3832
																																																																																																																											Let Ti821.3845
																																																																																																																												Int:0
																																																																																																																												Let Ta824.3846
																																																																																																																													Let Ta822.3847
																																																																																																																														ExtArray 536
																																																																																																																														Let Ti823.3848
																																																																																																																															Int:0
																																																																																																																															Get Ta822.3847 Ti823.3848
																																																																																																																													App shadow_check_one_or_matrix.2914Ti821.3845 Ta824.3846 
																																																																																																																											Let Ti826.3833
																																																																																																																												Int:0
																																																																																																																												IfEq Tb825.3832 Ti826.3833
																																																																																																																													Let br.3834
																																																																																																																														Let Td829.3842
																																																																																																																															Let Ta827.3843
																																																																																																																																ExtArray 568
																																																																																																																																Let Ta828.3844
																																																																																																																																	ExtArray 312
																																																																																																																																	App veciprod.2660Ta827.3843 Ta828.3844 
																																																																																																																															App fneg.2613Td829.3842 
																																																																																																																														Let bright.3835
																																																																																																																															Let Td830.3841
																																																																																																																																Float:0.000000
																																																																																																																																IfLE br.3834 Td830.3841
																																																																																																																																	Float:0.000000
																																																																																																																																	Var br.3834
																																																																																																																															Let Ta831.3836
																																																																																																																																ExtArray 592
																																																																																																																																Let Td834.3837
																																																																																																																																	Let Td832.3839
																																																																																																																																		FMul energy.2974 bright.3835
																																																																																																																																		Let Td833.3840
																																																																																																																																			App o_diffuse.2709obj.3829 
																																																																																																																																			FMul Td832.3839 Td833.3840
																																																																																																																																	Let Ta835.3838
																																																																																																																																		ExtArray 580
																																																																																																																																		App vecaccum.2668Ta831.3836 Td834.3837 Ta835.3838 
																																																																																																																													Unit
																																																																																																																				LetRec iter_trace_diffuse_rays.2975 dirvec_group.2976 nvector.2977 org.2978 index.2979 
																																																																																																																					Let Ti797.3809
																																																																																																																						Int:0
																																																																																																																						IfLE Ti797.3809 index.2979
																																																																																																																							Let p.3810
																																																																																																																								Let Ta799.3825
																																																																																																																									Let Tt798.3826
																																																																																																																										Get dirvec_group.2976 index.2979
																																																																																																																										App d_vec.2746Tt798.3826 
																																																																																																																									App veciprod.2660Ta799.3825 nvector.2977 
																																																																																																																								Let Tu166.3811
																																																																																																																									Let Td800.3814
																																																																																																																										Float:0.000000
																																																																																																																										IfLE Td800.3814 p.3810
																																																																																																																											Let Tt801.3821
																																																																																																																												Get dirvec_group.2976 index.2979
																																																																																																																												Let Td804.3822
																																																																																																																													Let Td802.3823
																																																																																																																														Float:150.000000
																																																																																																																														Let Td803.3824
																																																																																																																															FReciprocal Td802.3823
																																																																																																																															FMul p.3810 Td803.3824
																																																																																																																													App trace_diffuse_ray.2972Tt801.3821 Td804.3822 
																																																																																																																											Let Tt807.3815
																																																																																																																												Let Ti806.3819
																																																																																																																													Let Ti805.3820
																																																																																																																														Int:1
																																																																																																																														Add index.2979 Ti805.3820
																																																																																																																													Get dirvec_group.2976 Ti806.3819
																																																																																																																												Let Td810.3816
																																																																																																																													Let Td808.3817
																																																																																																																														Float:-150.000000
																																																																																																																														Let Td809.3818
																																																																																																																															FReciprocal Td808.3817
																																																																																																																															FMul p.3810 Td809.3818
																																																																																																																													App trace_diffuse_ray.2972Tt807.3815 Td810.3816 
																																																																																																																									Let Ti812.3812
																																																																																																																										Let Ti811.3813
																																																																																																																											Int:2
																																																																																																																											Sub index.2979 Ti811.3813
																																																																																																																										App iter_trace_diffuse_rays.2975dirvec_group.2976 nvector.2977 org.2978 Ti812.3812 
																																																																																																																							Unit
																																																																																																																					LetRec trace_diffuse_rays.2980 dirvec_group.2981 nvector.2982 org.2983 
																																																																																																																						Let Tu167.3807
																																																																																																																							App setup_startp.2880org.2983 
																																																																																																																							Let Ti796.3808
																																																																																																																								Int:118
																																																																																																																								App iter_trace_diffuse_rays.2975dirvec_group.2981 nvector.2982 org.2983 Ti796.3808 
																																																																																																																						LetRec trace_diffuse_ray_80percent.2984 group_id.2985 nvector.2986 org.2987 
																																																																																																																							Let Tu171.3783
																																																																																																																								Let Ti776.3803
																																																																																																																									Int:0
																																																																																																																									IfEq group_id.2985 Ti776.3803
																																																																																																																										Unit
																																																																																																																										Let Ta779.3804
																																																																																																																											Let Ta777.3805
																																																																																																																												ExtArray 716
																																																																																																																												Let Ti778.3806
																																																																																																																													Int:0
																																																																																																																													Get Ta777.3805 Ti778.3806
																																																																																																																											App trace_diffuse_rays.2980Ta779.3804 nvector.2986 org.2987 
																																																																																																																								Let Tu170.3784
																																																																																																																									Let Ti780.3799
																																																																																																																										Int:1
																																																																																																																										IfEq group_id.2985 Ti780.3799
																																																																																																																											Unit
																																																																																																																											Let Ta783.3800
																																																																																																																												Let Ta781.3801
																																																																																																																													ExtArray 716
																																																																																																																													Let Ti782.3802
																																																																																																																														Int:1
																																																																																																																														Get Ta781.3801 Ti782.3802
																																																																																																																												App trace_diffuse_rays.2980Ta783.3800 nvector.2986 org.2987 
																																																																																																																									Let Tu169.3785
																																																																																																																										Let Ti784.3795
																																																																																																																											Int:2
																																																																																																																											IfEq group_id.2985 Ti784.3795
																																																																																																																												Unit
																																																																																																																												Let Ta787.3796
																																																																																																																													Let Ta785.3797
																																																																																																																														ExtArray 716
																																																																																																																														Let Ti786.3798
																																																																																																																															Int:2
																																																																																																																															Get Ta785.3797 Ti786.3798
																																																																																																																													App trace_diffuse_rays.2980Ta787.3796 nvector.2986 org.2987 
																																																																																																																										Let Tu168.3786
																																																																																																																											Let Ti788.3791
																																																																																																																												Int:3
																																																																																																																												IfEq group_id.2985 Ti788.3791
																																																																																																																													Unit
																																																																																																																													Let Ta791.3792
																																																																																																																														Let Ta789.3793
																																																																																																																															ExtArray 716
																																																																																																																															Let Ti790.3794
																																																																																																																																Int:3
																																																																																																																																Get Ta789.3793 Ti790.3794
																																																																																																																														App trace_diffuse_rays.2980Ta791.3792 nvector.2986 org.2987 
																																																																																																																											Let Ti792.3787
																																																																																																																												Int:4
																																																																																																																												IfEq group_id.2985 Ti792.3787
																																																																																																																													Unit
																																																																																																																													Let Ta795.3788
																																																																																																																														Let Ta793.3789
																																																																																																																															ExtArray 716
																																																																																																																															Let Ti794.3790
																																																																																																																																Int:4
																																																																																																																																Get Ta793.3789 Ti794.3790
																																																																																																																														App trace_diffuse_rays.2980Ta795.3788 nvector.2986 org.2987 
																																																																																																																							LetRec calc_diffuse_using_1point.2988 pixel.2989 nref.2990 
																																																																																																																								Let ray20p.3769
																																																																																																																									App p_received_ray_20percent.2737pixel.2989 
																																																																																																																									Let nvectors.3770
																																																																																																																										App p_nvectors.2744pixel.2989 
																																																																																																																										Let intersection_points.3771
																																																																																																																											App p_intersection_points.2729pixel.2989 
																																																																																																																											Let energya.3772
																																																																																																																												App p_energy.2735pixel.2989 
																																																																																																																												Let Tu173.3773
																																																																																																																													Let Ta768.3781
																																																																																																																														ExtArray 592
																																																																																																																														Let Ta769.3782
																																																																																																																															Get ray20p.3769 nref.2990
																																																																																																																															App veccpy.2649Ta768.3781 Ta769.3782 
																																																																																																																													Let Tu172.3774
																																																																																																																														Let Ti770.3778
																																																																																																																															App p_group_id.2739pixel.2989 
																																																																																																																															Let Ta771.3779
																																																																																																																																Get nvectors.3770 nref.2990
																																																																																																																																Let Ta772.3780
																																																																																																																																	Get intersection_points.3771 nref.2990
																																																																																																																																	App trace_diffuse_ray_80percent.2984Ti770.3778 Ta771.3779 Ta772.3780 
																																																																																																																														Let Ta773.3775
																																																																																																																															ExtArray 604
																																																																																																																															Let Ta774.3776
																																																																																																																																Get energya.3772 nref.2990
																																																																																																																																Let Ta775.3777
																																																																																																																																	ExtArray 592
																																																																																																																																	App vecaccumv.2681Ta773.3775 Ta774.3776 Ta775.3777 
																																																																																																																								LetRec calc_diffuse_using_5points.2991 x.2992 prev.2993 cur.2994 next.2995 nref.2996 
																																																																																																																									Let r_up.3735
																																																																																																																										Let Tt745.3768
																																																																																																																											Get prev.2993 x.2992
																																																																																																																											App p_received_ray_20percent.2737Tt745.3768 
																																																																																																																										Let r_left.3736
																																																																																																																											Let Tt748.3765
																																																																																																																												Let Ti747.3766
																																																																																																																													Let Ti746.3767
																																																																																																																														Int:1
																																																																																																																														Sub x.2992 Ti746.3767
																																																																																																																													Get cur.2994 Ti747.3766
																																																																																																																												App p_received_ray_20percent.2737Tt748.3765 
																																																																																																																											Let r_center.3737
																																																																																																																												Let Tt749.3764
																																																																																																																													Get cur.2994 x.2992
																																																																																																																													App p_received_ray_20percent.2737Tt749.3764 
																																																																																																																												Let r_right.3738
																																																																																																																													Let Tt752.3761
																																																																																																																														Let Ti751.3762
																																																																																																																															Let Ti750.3763
																																																																																																																																Int:1
																																																																																																																																Add x.2992 Ti750.3763
																																																																																																																															Get cur.2994 Ti751.3762
																																																																																																																														App p_received_ray_20percent.2737Tt752.3761 
																																																																																																																													Let r_down.3739
																																																																																																																														Let Tt753.3760
																																																																																																																															Get next.2995 x.2992
																																																																																																																															App p_received_ray_20percent.2737Tt753.3760 
																																																																																																																														Let Tu178.3740
																																																																																																																															Let Ta754.3758
																																																																																																																																ExtArray 592
																																																																																																																																Let Ta755.3759
																																																																																																																																	Get r_up.3735 nref.2996
																																																																																																																																	App veccpy.2649Ta754.3758 Ta755.3759 
																																																																																																																															Let Tu177.3741
																																																																																																																																Let Ta756.3756
																																																																																																																																	ExtArray 592
																																																																																																																																	Let Ta757.3757
																																																																																																																																		Get r_left.3736 nref.2996
																																																																																																																																		App vecadd.2672Ta756.3756 Ta757.3757 
																																																																																																																																Let Tu176.3742
																																																																																																																																	Let Ta758.3754
																																																																																																																																		ExtArray 592
																																																																																																																																		Let Ta759.3755
																																																																																																																																			Get r_center.3737 nref.2996
																																																																																																																																			App vecadd.2672Ta758.3754 Ta759.3755 
																																																																																																																																	Let Tu175.3743
																																																																																																																																		Let Ta760.3752
																																																																																																																																			ExtArray 592
																																																																																																																																			Let Ta761.3753
																																																																																																																																				Get r_right.3738 nref.2996
																																																																																																																																				App vecadd.2672Ta760.3752 Ta761.3753 
																																																																																																																																		Let Tu174.3744
																																																																																																																																			Let Ta762.3750
																																																																																																																																				ExtArray 592
																																																																																																																																				Let Ta763.3751
																																																																																																																																					Get r_down.3739 nref.2996
																																																																																																																																					App vecadd.2672Ta762.3750 Ta763.3751 
																																																																																																																																			Let energya.3745
																																																																																																																																				Let Tt764.3749
																																																																																																																																					Get cur.2994 x.2992
																																																																																																																																					App p_energy.2735Tt764.3749 
																																																																																																																																				Let Ta765.3746
																																																																																																																																					ExtArray 604
																																																																																																																																					Let Ta766.3747
																																																																																																																																						Get energya.3745 nref.2996
																																																																																																																																						Let Ta767.3748
																																																																																																																																							ExtArray 592
																																																																																																																																							App vecaccumv.2681Ta765.3746 Ta766.3747 Ta767.3748 
																																																																																																																									LetRec do_without_neighbors.2997 pixel.2998 nref.2999 
																																																																																																																										Let Ti738.3725
																																																																																																																											Int:4
																																																																																																																											IfLE nref.2999 Ti738.3725
																																																																																																																												Let surface_ids.3726
																																																																																																																													App p_surface_ids.2731pixel.2998 
																																																																																																																													Let Ti739.3727
																																																																																																																														Int:0
																																																																																																																														Let Ti740.3728
																																																																																																																															Get surface_ids.3726 nref.2999
																																																																																																																															IfLE Ti739.3727 Ti740.3728
																																																																																																																																Let calc_diffuse.3729
																																																																																																																																	App p_calc_diffuse.2733pixel.2998 
																																																																																																																																	Let Tu179.3730
																																																																																																																																		Let Tb741.3733
																																																																																																																																			Get calc_diffuse.3729 nref.2999
																																																																																																																																			Let Ti742.3734
																																																																																																																																				Int:0
																																																																																																																																				IfEq Tb741.3733 Ti742.3734
																																																																																																																																					Unit
																																																																																																																																					App calc_diffuse_using_1point.2988pixel.2998 nref.2999 
																																																																																																																																		Let Ti744.3731
																																																																																																																																			Let Ti743.3732
																																																																																																																																				Int:1
																																																																																																																																				Add nref.2999 Ti743.3732
																																																																																																																																			App do_without_neighbors.2997pixel.2998 Ti744.3731 
																																																																																																																																Unit
																																																																																																																												Unit
																																																																																																																										LetRec neighbors_exist.3000 x.3001 y.3002 next.3003 
																																																																																																																											Let Ti728.3713
																																																																																																																												Let Ta726.3723
																																																																																																																													ExtArray 616
																																																																																																																													Let Ti727.3724
																																																																																																																														Int:1
																																																																																																																														Get Ta726.3723 Ti727.3724
																																																																																																																												Let Ti730.3714
																																																																																																																													Let Ti729.3722
																																																																																																																														Int:1
																																																																																																																														Add y.3002 Ti729.3722
																																																																																																																													IfLE Ti728.3713 Ti730.3714
																																																																																																																														Int:0
																																																																																																																														Let Ti731.3715
																																																																																																																															Int:0
																																																																																																																															IfLE y.3002 Ti731.3715
																																																																																																																																Int:0
																																																																																																																																Let Ti734.3716
																																																																																																																																	Let Ta732.3720
																																																																																																																																		ExtArray 616
																																																																																																																																		Let Ti733.3721
																																																																																																																																			Int:0
																																																																																																																																			Get Ta732.3720 Ti733.3721
																																																																																																																																	Let Ti736.3717
																																																																																																																																		Let Ti735.3719
																																																																																																																																			Int:1
																																																																																																																																			Add x.3001 Ti735.3719
																																																																																																																																		IfLE Ti734.3716 Ti736.3717
																																																																																																																																			Int:0
																																																																																																																																			Let Ti737.3718
																																																																																																																																				Int:0
																																																																																																																																				IfLE x.3001 Ti737.3718
																																																																																																																																					Int:0
																																																																																																																																					Int:1
																																																																																																																											LetRec get_surface_id.3004 pixel.3005 index.3006 
																																																																																																																												Let surface_ids.3712
																																																																																																																													App p_surface_ids.2731pixel.3005 
																																																																																																																													Get surface_ids.3712 index.3006
																																																																																																																												LetRec neighbors_are_available.3007 x.3008 prev.3009 cur.3010 next.3011 nref.3012 
																																																																																																																													Let sid_center.3698
																																																																																																																														Let Tt713.3711
																																																																																																																															Get cur.3010 x.3008
																																																																																																																															App get_surface_id.3004Tt713.3711 nref.3012 
																																																																																																																														Let Ti715.3699
																																																																																																																															Let Tt714.3710
																																																																																																																																Get prev.3009 x.3008
																																																																																																																																App get_surface_id.3004Tt714.3710 nref.3012 
																																																																																																																															IfEq Ti715.3699 sid_center.3698
																																																																																																																																Let Ti717.3700
																																																																																																																																	Let Tt716.3709
																																																																																																																																		Get next.3011 x.3008
																																																																																																																																		App get_surface_id.3004Tt716.3709 nref.3012 
																																																																																																																																	IfEq Ti717.3700 sid_center.3698
																																																																																																																																		Let Ti721.3701
																																																																																																																																			Let Tt720.3706
																																																																																																																																				Let Ti719.3707
																																																																																																																																					Let Ti718.3708
																																																																																																																																						Int:1
																																																																																																																																						Sub x.3008 Ti718.3708
																																																																																																																																					Get cur.3010 Ti719.3707
																																																																																																																																				App get_surface_id.3004Tt720.3706 nref.3012 
																																																																																																																																			IfEq Ti721.3701 sid_center.3698
																																																																																																																																				Let Ti725.3702
																																																																																																																																					Let Tt724.3703
																																																																																																																																						Let Ti723.3704
																																																																																																																																							Let Ti722.3705
																																																																																																																																								Int:1
																																																																																																																																								Add x.3008 Ti722.3705
																																																																																																																																							Get cur.3010 Ti723.3704
																																																																																																																																						App get_surface_id.3004Tt724.3703 nref.3012 
																																																																																																																																					IfEq Ti725.3702 sid_center.3698
																																																																																																																																						Int:1
																																																																																																																																						Int:0
																																																																																																																																				Int:0
																																																																																																																																		Int:0
																																																																																																																																Int:0
																																																																																																																													LetRec try_exploit_neighbors.3013 x.3014 y.3015 prev.3016 cur.3017 next.3018 nref.3019 
																																																																																																																														Let pixel.3685
																																																																																																																															Get cur.3017 x.3014
																																																																																																																															Let Ti703.3686
																																																																																																																																Int:4
																																																																																																																																IfLE nref.3019 Ti703.3686
																																																																																																																																	Let Ti704.3687
																																																																																																																																		Int:0
																																																																																																																																		Let Ti705.3688
																																																																																																																																			App get_surface_id.3004pixel.3685 nref.3019 
																																																																																																																																			IfLE Ti704.3687 Ti705.3688
																																																																																																																																				Let Tb706.3689
																																																																																																																																					App neighbors_are_available.3007x.3014 prev.3016 cur.3017 next.3018 nref.3019 
																																																																																																																																					Let Ti707.3690
																																																																																																																																						Int:0
																																																																																																																																						IfEq Tb706.3689 Ti707.3690
																																																																																																																																							Let Tt708.3697
																																																																																																																																								Get cur.3017 x.3014
																																																																																																																																								App do_without_neighbors.2997Tt708.3697 nref.3019 
																																																																																																																																							Let calc_diffuse.3691
																																																																																																																																								App p_calc_diffuse.2733pixel.3685 
																																																																																																																																								Let Tu180.3692
																																																																																																																																									Let Tb709.3695
																																																																																																																																										Get calc_diffuse.3691 nref.3019
																																																																																																																																										Let Ti710.3696
																																																																																																																																											Int:0
																																																																																																																																											IfEq Tb709.3695 Ti710.3696
																																																																																																																																												Unit
																																																																																																																																												App calc_diffuse_using_5points.2991x.3014 prev.3016 cur.3017 next.3018 nref.3019 
																																																																																																																																									Let Ti712.3693
																																																																																																																																										Let Ti711.3694
																																																																																																																																											Int:1
																																																																																																																																											Add nref.3019 Ti711.3694
																																																																																																																																										App try_exploit_neighbors.3013x.3014 y.3015 prev.3016 cur.3017 next.3018 Ti712.3693 
																																																																																																																																				Unit
																																																																																																																																	Unit
																																																																																																																														LetRec write_ppm_header.3020 Tu181.3021 
																																																																																																																															Let Tu189.3662
																																																																																																																																Let Ti688.3684
																																																																																																																																	Int:80
																																																																																																																																	ExtFunApp print_byte Ti688.3684,
																																																																																																																																Let Tu188.3663
																																																																																																																																	Let Ti691.3681
																																																																																																																																		Let Ti689.3682
																																																																																																																																			Int:48
																																																																																																																																			Let Ti690.3683
																																																																																																																																				Int:3
																																																																																																																																				Add Ti689.3682 Ti690.3683
																																																																																																																																		ExtFunApp print_byte Ti691.3681,
																																																																																																																																	Let Tu187.3664
																																																																																																																																		Let Ti692.3680
																																																																																																																																			Int:10
																																																																																																																																			ExtFunApp print_byte Ti692.3680,
																																																																																																																																		Let Tu186.3665
																																																																																																																																			Let Ti695.3677
																																																																																																																																				Let Ta693.3678
																																																																																																																																					ExtArray 616
																																																																																																																																					Let Ti694.3679
																																																																																																																																						Int:0
																																																																																																																																						Get Ta693.3678 Ti694.3679
																																																																																																																																				App print_int.2629Ti695.3677 
																																																																																																																																			Let Tu185.3666
																																																																																																																																				Let Ti696.3676
																																																																																																																																					Int:32
																																																																																																																																					ExtFunApp print_byte Ti696.3676,
																																																																																																																																				Let Tu184.3667
																																																																																																																																					Let Ti699.3673
																																																																																																																																						Let Ta697.3674
																																																																																																																																							ExtArray 616
																																																																																																																																							Let Ti698.3675
																																																																																																																																								Int:1
																																																																																																																																								Get Ta697.3674 Ti698.3675
																																																																																																																																						App print_int.2629Ti699.3673 
																																																																																																																																					Let Tu183.3668
																																																																																																																																						Let Ti700.3672
																																																																																																																																							Int:32
																																																																																																																																							ExtFunApp print_byte Ti700.3672,
																																																																																																																																						Let Tu182.3669
																																																																																																																																							Let Ti701.3671
																																																																																																																																								Int:255
																																																																																																																																								App print_int.2629Ti701.3671 
																																																																																																																																							Let Ti702.3670
																																																																																																																																								Int:10
																																																																																																																																								ExtFunApp print_byte Ti702.3670,
																																																																																																																															LetRec write_rgb_element.3022 x.3023 
																																																																																																																																Let ix.3658
																																																																																																																																	ExtFunApp int_of_float x.3023,
																																																																																																																																	Let elem.3659
																																																																																																																																		Let Ti686.3660
																																																																																																																																			Int:255
																																																																																																																																			IfLE ix.3658 Ti686.3660
																																																																																																																																				Let Ti687.3661
																																																																																																																																					Int:0
																																																																																																																																					IfLE Ti687.3661 ix.3658
																																																																																																																																						Var ix.3658
																																																																																																																																						Int:0
																																																																																																																																				Int:255
																																																																																																																																		App print_int.2629elem.3659 
																																																																																																																																LetRec write_rgb.3024 Tu190.3025 
																																																																																																																																	Let Tu195.3641
																																																																																																																																		Let Td676.3655
																																																																																																																																			Let Ta674.3656
																																																																																																																																				ExtArray 604
																																																																																																																																				Let Ti675.3657
																																																																																																																																					Int:0
																																																																																																																																					Get Ta674.3656 Ti675.3657
																																																																																																																																			App write_rgb_element.3022Td676.3655 
																																																																																																																																		Let Tu194.3642
																																																																																																																																			Let Ti677.3654
																																																																																																																																				Int:32
																																																																																																																																				ExtFunApp print_byte Ti677.3654,
																																																																																																																																			Let Tu193.3643
																																																																																																																																				Let Td680.3651
																																																																																																																																					Let Ta678.3652
																																																																																																																																						ExtArray 604
																																																																																																																																						Let Ti679.3653
																																																																																																																																							Int:1
																																																																																																																																							Get Ta678.3652 Ti679.3653
																																																																																																																																					App write_rgb_element.3022Td680.3651 
																																																																																																																																				Let Tu192.3644
																																																																																																																																					Let Ti681.3650
																																																																																																																																						Int:32
																																																																																																																																						ExtFunApp print_byte Ti681.3650,
																																																																																																																																					Let Tu191.3645
																																																																																																																																						Let Td684.3647
																																																																																																																																							Let Ta682.3648
																																																																																																																																								ExtArray 604
																																																																																																																																								Let Ti683.3649
																																																																																																																																									Int:2
																																																																																																																																									Get Ta682.3648 Ti683.3649
																																																																																																																																							App write_rgb_element.3022Td684.3647 
																																																																																																																																						Let Ti685.3646
																																																																																																																																							Int:10
																																																																																																																																							ExtFunApp print_byte Ti685.3646,
																																																																																																																																	LetRec pretrace_diffuse_rays.3026 pixel.3027 nref.3028 
																																																																																																																																		Let Ti661.3619
																																																																																																																																			Int:4
																																																																																																																																			IfLE nref.3028 Ti661.3619
																																																																																																																																				Let sid.3620
																																																																																																																																					App get_surface_id.3004pixel.3027 nref.3028 
																																																																																																																																					Let Ti662.3621
																																																																																																																																						Int:0
																																																																																																																																						IfLE Ti662.3621 sid.3620
																																																																																																																																							Let calc_diffuse.3622
																																																																																																																																								App p_calc_diffuse.2733pixel.3027 
																																																																																																																																								Let Tu198.3623
																																																																																																																																									Let Tb663.3626
																																																																																																																																										Get calc_diffuse.3622 nref.3028
																																																																																																																																										Let Ti664.3627
																																																																																																																																											Int:0
																																																																																																																																											IfEq Tb663.3626 Ti664.3627
																																																																																																																																												Unit
																																																																																																																																												Let group_id.3628
																																																																																																																																													App p_group_id.2739pixel.3027 
																																																																																																																																													Let Tu197.3629
																																																																																																																																														Let Ta665.3640
																																																																																																																																															ExtArray 592
																																																																																																																																															App vecbzero.2647Ta665.3640 
																																																																																																																																														Let nvectors.3630
																																																																																																																																															App p_nvectors.2744pixel.3027 
																																																																																																																																															Let intersection_points.3631
																																																																																																																																																App p_intersection_points.2729pixel.3027 
																																																																																																																																																Let Tu196.3632
																																																																																																																																																	Let Ta667.3636
																																																																																																																																																		Let Ta666.3639
																																																																																																																																																			ExtArray 716
																																																																																																																																																			Get Ta666.3639 group_id.3628
																																																																																																																																																		Let Ta668.3637
																																																																																																																																																			Get nvectors.3630 nref.3028
																																																																																																																																																			Let Ta669.3638
																																																																																																																																																				Get intersection_points.3631 nref.3028
																																																																																																																																																				App trace_diffuse_rays.2980Ta667.3636 Ta668.3637 Ta669.3638 
																																																																																																																																																	Let ray20p.3633
																																																																																																																																																		App p_received_ray_20percent.2737pixel.3027 
																																																																																																																																																		Let Ta670.3634
																																																																																																																																																			Get ray20p.3633 nref.3028
																																																																																																																																																			Let Ta671.3635
																																																																																																																																																				ExtArray 592
																																																																																																																																																				App veccpy.2649Ta670.3634 Ta671.3635 
																																																																																																																																									Let Ti673.3624
																																																																																																																																										Let Ti672.3625
																																																																																																																																											Int:1
																																																																																																																																											Add nref.3028 Ti672.3625
																																																																																																																																										App pretrace_diffuse_rays.3026pixel.3027 Ti673.3624 
																																																																																																																																							Unit
																																																																																																																																				Unit
																																																																																																																																		LetRec pretrace_pixels.3029 line.3030 x.3031 group_id.3032 lc0.3033 lc1.3034 lc2.3035 
																																																																																																																																			Let Ti611.3558
																																																																																																																																				Int:0
																																																																																																																																				IfLE Ti611.3558 x.3031
																																																																																																																																					Let xdisp.3559
																																																																																																																																						Let Td614.3611
																																																																																																																																							Let Ta612.3617
																																																																																																																																								ExtArray 632
																																																																																																																																								Let Ti613.3618
																																																																																																																																									Int:0
																																																																																																																																									Get Ta612.3617 Ti613.3618
																																																																																																																																							Let Td619.3612
																																																																																																																																								Let Ti618.3613
																																																																																																																																									Let Ti617.3614
																																																																																																																																										Let Ta615.3615
																																																																																																																																											ExtArray 624
																																																																																																																																											Let Ti616.3616
																																																																																																																																												Int:0
																																																																																																																																												Get Ta615.3615 Ti616.3616
																																																																																																																																										Sub x.3031 Ti617.3614
																																																																																																																																									ExtFunApp float_of_int Ti618.3613,
																																																																																																																																								FMul Td614.3611 Td619.3612
																																																																																																																																						Let Tu208.3560
																																																																																																																																							Let Ta620.3604
																																																																																																																																								ExtArray 696
																																																																																																																																								Let Ti621.3605
																																																																																																																																									Int:0
																																																																																																																																									Let Td626.3606
																																																																																																																																										Let Td625.3607
																																																																																																																																											Let Td624.3608
																																																																																																																																												Let Ta622.3609
																																																																																																																																													ExtArray 660
																																																																																																																																													Let Ti623.3610
																																																																																																																																														Int:0
																																																																																																																																														Get Ta622.3609 Ti623.3610
																																																																																																																																												FMul xdisp.3559 Td624.3608
																																																																																																																																											FAdd Td625.3607 lc0.3033
																																																																																																																																										Put Ta620.3604 Ti621.3605 Td626.3606
																																																																																																																																							Let Tu207.3561
																																																																																																																																								Let Ta627.3597
																																																																																																																																									ExtArray 696
																																																																																																																																									Let Ti628.3598
																																																																																																																																										Int:1
																																																																																																																																										Let Td633.3599
																																																																																																																																											Let Td632.3600
																																																																																																																																												Let Td631.3601
																																																																																																																																													Let Ta629.3602
																																																																																																																																														ExtArray 660
																																																																																																																																														Let Ti630.3603
																																																																																																																																															Int:1
																																																																																																																																															Get Ta629.3602 Ti630.3603
																																																																																																																																													FMul xdisp.3559 Td631.3601
																																																																																																																																												FAdd Td632.3600 lc1.3034
																																																																																																																																											Put Ta627.3597 Ti628.3598 Td633.3599
																																																																																																																																								Let Tu206.3562
																																																																																																																																									Let Ta634.3590
																																																																																																																																										ExtArray 696
																																																																																																																																										Let Ti635.3591
																																																																																																																																											Int:2
																																																																																																																																											Let Td640.3592
																																																																																																																																												Let Td639.3593
																																																																																																																																													Let Td638.3594
																																																																																																																																														Let Ta636.3595
																																																																																																																																															ExtArray 660
																																																																																																																																															Let Ti637.3596
																																																																																																																																																Int:2
																																																																																																																																																Get Ta636.3595 Ti637.3596
																																																																																																																																														FMul xdisp.3559 Td638.3594
																																																																																																																																													FAdd Td639.3593 lc2.3035
																																																																																																																																												Put Ta634.3590 Ti635.3591 Td640.3592
																																																																																																																																									Let Tu205.3563
																																																																																																																																										Let Ta641.3588
																																																																																																																																											ExtArray 696
																																																																																																																																											Let Ti642.3589
																																																																																																																																												Int:0
																																																																																																																																												App vecunit_sgn.2657Ta641.3588 Ti642.3589 
																																																																																																																																										Let Tu204.3564
																																																																																																																																											Let Ta643.3587
																																																																																																																																												ExtArray 604
																																																																																																																																												App vecbzero.2647Ta643.3587 
																																																																																																																																											Let Tu203.3565
																																																																																																																																												Let Ta644.3585
																																																																																																																																													ExtArray 636
																																																																																																																																													Let Ta645.3586
																																																																																																																																														ExtArray 300
																																																																																																																																														App veccpy.2649Ta644.3585 Ta645.3586 
																																																																																																																																												Let Tu202.3566
																																																																																																																																													Let Ti646.3580
																																																																																																																																														Int:0
																																																																																																																																														Let Td647.3581
																																																																																																																																															Float:1.000000
																																																																																																																																															Let Ta648.3582
																																																																																																																																																ExtArray 696
																																																																																																																																																Let Tt649.3583
																																																																																																																																																	Get line.3030 x.3031
																																																																																																																																																	Let Td650.3584
																																																																																																																																																		Float:0.000000
																																																																																																																																																		App trace_ray.2966Ti646.3580 Td647.3581 Ta648.3582 Tt649.3583 Td650.3584 
																																																																																																																																													Let Tu201.3567
																																																																																																																																														Let Ta652.3577
																																																																																																																																															Let Tt651.3579
																																																																																																																																																Get line.3030 x.3031
																																																																																																																																																App p_rgb.2727Tt651.3579 
																																																																																																																																															Let Ta653.3578
																																																																																																																																																ExtArray 604
																																																																																																																																																App veccpy.2649Ta652.3577 Ta653.3578 
																																																																																																																																														Let Tu200.3568
																																																																																																																																															Let Tt654.3576
																																																																																																																																																Get line.3030 x.3031
																																																																																																																																																App p_set_group_id.2741Tt654.3576 group_id.3032 
																																																																																																																																															Let Tu199.3569
																																																																																																																																																Let Tt655.3574
																																																																																																																																																	Get line.3030 x.3031
																																																																																																																																																	Let Ti656.3575
																																																																																																																																																		Int:0
																																																																																																																																																		App pretrace_diffuse_rays.3026Tt655.3574 Ti656.3575 
																																																																																																																																																Let Ti658.3570
																																																																																																																																																	Let Ti657.3573
																																																																																																																																																		Int:1
																																																																																																																																																		Sub x.3031 Ti657.3573
																																																																																																																																																	Let Ti660.3571
																																																																																																																																																		Let Ti659.3572
																																																																																																																																																			Int:1
																																																																																																																																																			App add_mod5.2636group_id.3032 Ti659.3572 
																																																																																																																																																		App pretrace_pixels.3029line.3030 Ti658.3570 Ti660.3571 lc0.3033 lc1.3034 lc2.3035 
																																																																																																																																					Unit
																																																																																																																																			LetRec pretrace_line.3036 line.3037 y.3038 group_id.3039 
																																																																																																																																				Let ydisp.3520
																																																																																																																																					Let Td579.3550
																																																																																																																																						Let Ta577.3556
																																																																																																																																							ExtArray 632
																																																																																																																																							Let Ti578.3557
																																																																																																																																								Int:0
																																																																																																																																								Get Ta577.3556 Ti578.3557
																																																																																																																																						Let Td584.3551
																																																																																																																																							Let Ti583.3552
																																																																																																																																								Let Ti582.3553
																																																																																																																																									Let Ta580.3554
																																																																																																																																										ExtArray 624
																																																																																																																																										Let Ti581.3555
																																																																																																																																											Int:1
																																																																																																																																											Get Ta580.3554 Ti581.3555
																																																																																																																																									Sub y.3038 Ti582.3553
																																																																																																																																								ExtFunApp float_of_int Ti583.3552,
																																																																																																																																							FMul Td579.3550 Td584.3551
																																																																																																																																					Let lc0.3521
																																																																																																																																						Let Td588.3543
																																																																																																																																							Let Td587.3547
																																																																																																																																								Let Ta585.3548
																																																																																																																																									ExtArray 672
																																																																																																																																									Let Ti586.3549
																																																																																																																																										Int:0
																																																																																																																																										Get Ta585.3548 Ti586.3549
																																																																																																																																								FMul ydisp.3520 Td587.3547
																																																																																																																																							Let Td591.3544
																																																																																																																																								Let Ta589.3545
																																																																																																																																									ExtArray 684
																																																																																																																																									Let Ti590.3546
																																																																																																																																										Int:0
																																																																																																																																										Get Ta589.3545 Ti590.3546
																																																																																																																																								FAdd Td588.3543 Td591.3544
																																																																																																																																						Let lc1.3522
																																																																																																																																							Let Td595.3536
																																																																																																																																								Let Td594.3540
																																																																																																																																									Let Ta592.3541
																																																																																																																																										ExtArray 672
																																																																																																																																										Let Ti593.3542
																																																																																																																																											Int:1
																																																																																																																																											Get Ta592.3541 Ti593.3542
																																																																																																																																									FMul ydisp.3520 Td594.3540
																																																																																																																																								Let Td598.3537
																																																																																																																																									Let Ta596.3538
																																																																																																																																										ExtArray 684
																																																																																																																																										Let Ti597.3539
																																																																																																																																											Int:1
																																																																																																																																											Get Ta596.3538 Ti597.3539
																																																																																																																																									FAdd Td595.3536 Td598.3537
																																																																																																																																							Let lc2.3523
																																																																																																																																								Let Td602.3529
																																																																																																																																									Let Td601.3533
																																																																																																																																										Let Ta599.3534
																																																																																																																																											ExtArray 672
																																																																																																																																											Let Ti600.3535
																																																																																																																																												Int:2
																																																																																																																																												Get Ta599.3534 Ti600.3535
																																																																																																																																										FMul ydisp.3520 Td601.3533
																																																																																																																																									Let Td605.3530
																																																																																																																																										Let Ta603.3531
																																																																																																																																											ExtArray 684
																																																																																																																																											Let Ti604.3532
																																																																																																																																												Int:2
																																																																																																																																												Get Ta603.3531 Ti604.3532
																																																																																																																																										FAdd Td602.3529 Td605.3530
																																																																																																																																								Let Ti610.3524
																																																																																																																																									Let Ti608.3525
																																																																																																																																										Let Ta606.3527
																																																																																																																																											ExtArray 616
																																																																																																																																											Let Ti607.3528
																																																																																																																																												Int:0
																																																																																																																																												Get Ta606.3527 Ti607.3528
																																																																																																																																										Let Ti609.3526
																																																																																																																																											Int:1
																																																																																																																																											Sub Ti608.3525 Ti609.3526
																																																																																																																																									App pretrace_pixels.3029line.3037 Ti610.3524 group_id.3039 lc0.3521 lc1.3522 lc2.3523 
																																																																																																																																				LetRec scan_pixel.3040 x.3041 y.3042 prev.3043 cur.3044 next.3045 
																																																																																																																																					Let Ti565.3503
																																																																																																																																						Let Ta563.3518
																																																																																																																																							ExtArray 616
																																																																																																																																							Let Ti564.3519
																																																																																																																																								Int:0
																																																																																																																																								Get Ta563.3518 Ti564.3519
																																																																																																																																						IfLE Ti565.3503 x.3041
																																																																																																																																							Unit
																																																																																																																																							Let Tu211.3504
																																																																																																																																								Let Ta566.3515
																																																																																																																																									ExtArray 604
																																																																																																																																									Let Ta568.3516
																																																																																																																																										Let Tt567.3517
																																																																																																																																											Get cur.3044 x.3041
																																																																																																																																											App p_rgb.2727Tt567.3517 
																																																																																																																																										App veccpy.2649Ta566.3515 Ta568.3516 
																																																																																																																																								Let Tu210.3505
																																																																																																																																									Let Tb569.3510
																																																																																																																																										App neighbors_exist.3000x.3041 y.3042 next.3045 
																																																																																																																																										Let Ti570.3511
																																																																																																																																											Int:0
																																																																																																																																											IfEq Tb569.3510 Ti570.3511
																																																																																																																																												Let Tt571.3513
																																																																																																																																													Get cur.3044 x.3041
																																																																																																																																													Let Ti572.3514
																																																																																																																																														Int:0
																																																																																																																																														App do_without_neighbors.2997Tt571.3513 Ti572.3514 
																																																																																																																																												Let Ti573.3512
																																																																																																																																													Int:0
																																																																																																																																													App try_exploit_neighbors.3013x.3041 y.3042 prev.3043 cur.3044 next.3045 Ti573.3512 
																																																																																																																																									Let Tu209.3506
																																																																																																																																										Let Tu574.3509
																																																																																																																																											Unit
																																																																																																																																											App write_rgb.3024Tu574.3509 
																																																																																																																																										Let Ti576.3507
																																																																																																																																											Let Ti575.3508
																																																																																																																																												Int:1
																																																																																																																																												Add x.3041 Ti575.3508
																																																																																																																																											App scan_pixel.3040Ti576.3507 y.3042 prev.3043 cur.3044 next.3045 
																																																																																																																																					LetRec scan_line.3046 y.3047 prev.3048 cur.3049 next.3050 group_id.3051 
																																																																																																																																						Let Ti550.3486
																																																																																																																																							Let Ta548.3501
																																																																																																																																								ExtArray 616
																																																																																																																																								Let Ti549.3502
																																																																																																																																									Int:1
																																																																																																																																									Get Ta548.3501 Ti549.3502
																																																																																																																																							IfLE Ti550.3486 y.3047
																																																																																																																																								Unit
																																																																																																																																								Let Tu213.3487
																																																																																																																																									Let Ti555.3494
																																																																																																																																										Let Ti553.3497
																																																																																																																																											Let Ta551.3499
																																																																																																																																												ExtArray 616
																																																																																																																																												Let Ti552.3500
																																																																																																																																													Int:1
																																																																																																																																													Get Ta551.3499 Ti552.3500
																																																																																																																																											Let Ti554.3498
																																																																																																																																												Int:1
																																																																																																																																												Sub Ti553.3497 Ti554.3498
																																																																																																																																										IfLE Ti555.3494 y.3047
																																																																																																																																											Unit
																																																																																																																																											Let Ti557.3495
																																																																																																																																												Let Ti556.3496
																																																																																																																																													Int:1
																																																																																																																																													Add y.3047 Ti556.3496
																																																																																																																																												App pretrace_line.3036next.3050 Ti557.3495 group_id.3051 
																																																																																																																																									Let Tu212.3488
																																																																																																																																										Let Ti558.3493
																																																																																																																																											Int:0
																																																																																																																																											App scan_pixel.3040Ti558.3493 y.3047 prev.3048 cur.3049 next.3050 
																																																																																																																																										Let Ti560.3489
																																																																																																																																											Let Ti559.3492
																																																																																																																																												Int:1
																																																																																																																																												Add y.3047 Ti559.3492
																																																																																																																																											Let Ti562.3490
																																																																																																																																												Let Ti561.3491
																																																																																																																																													Int:2
																																																																																																																																													App add_mod5.2636group_id.3051 Ti561.3491 
																																																																																																																																												App scan_line.3046Ti560.3489 cur.3049 next.3050 prev.3048 Ti562.3490 
																																																																																																																																						LetRec create_float5x3array.3052 Tu214.3053 
																																																																																																																																							Let vec.3461
																																																																																																																																								Let Ti529.3484
																																																																																																																																									Int:3
																																																																																																																																									Let Td530.3485
																																																																																																																																										Float:0.000000
																																																																																																																																										ExtFunApp create_float_array Ti529.3484,Td530.3485,
																																																																																																																																								Let array.3462
																																																																																																																																									Let Ti531.3483
																																																																																																																																										Int:5
																																																																																																																																										ExtFunApp create_array Ti531.3483,vec.3461,
																																																																																																																																									Let Tu218.3463
																																																																																																																																										Let Ti532.3479
																																																																																																																																											Int:1
																																																																																																																																											Let Ta535.3480
																																																																																																																																												Let Ti533.3481
																																																																																																																																													Int:3
																																																																																																																																													Let Td534.3482
																																																																																																																																														Float:0.000000
																																																																																																																																														ExtFunApp create_float_array Ti533.3481,Td534.3482,
																																																																																																																																												Put array.3462 Ti532.3479 Ta535.3480
																																																																																																																																										Let Tu217.3464
																																																																																																																																											Let Ti536.3475
																																																																																																																																												Int:2
																																																																																																																																												Let Ta539.3476
																																																																																																																																													Let Ti537.3477
																																																																																																																																														Int:3
																																																																																																																																														Let Td538.3478
																																																																																																																																															Float:0.000000
																																																																																																																																															ExtFunApp create_float_array Ti537.3477,Td538.3478,
																																																																																																																																													Put array.3462 Ti536.3475 Ta539.3476
																																																																																																																																											Let Tu216.3465
																																																																																																																																												Let Ti540.3471
																																																																																																																																													Int:3
																																																																																																																																													Let Ta543.3472
																																																																																																																																														Let Ti541.3473
																																																																																																																																															Int:3
																																																																																																																																															Let Td542.3474
																																																																																																																																																Float:0.000000
																																																																																																																																																ExtFunApp create_float_array Ti541.3473,Td542.3474,
																																																																																																																																														Put array.3462 Ti540.3471 Ta543.3472
																																																																																																																																												Let Tu215.3466
																																																																																																																																													Let Ti544.3467
																																																																																																																																														Int:4
																																																																																																																																														Let Ta547.3468
																																																																																																																																															Let Ti545.3469
																																																																																																																																																Int:3
																																																																																																																																																Let Td546.3470
																																																																																																																																																	Float:0.000000
																																																																																																																																																	ExtFunApp create_float_array Ti545.3469,Td546.3470,
																																																																																																																																															Put array.3462 Ti544.3467 Ta547.3468
																																																																																																																																													Var array.3462
																																																																																																																																							LetRec create_pixel.3054 Tu219.3055 
																																																																																																																																								Let m_rgb.3441
																																																																																																																																									Let Ti517.3459
																																																																																																																																										Int:3
																																																																																																																																										Let Td518.3460
																																																																																																																																											Float:0.000000
																																																																																																																																											ExtFunApp create_float_array Ti517.3459,Td518.3460,
																																																																																																																																									Let m_isect_ps.3442
																																																																																																																																										Let Tu519.3458
																																																																																																																																											Unit
																																																																																																																																											App create_float5x3array.3052Tu519.3458 
																																																																																																																																										Let m_sids.3443
																																																																																																																																											Let Ti520.3456
																																																																																																																																												Int:5
																																																																																																																																												Let Ti521.3457
																																																																																																																																													Int:0
																																																																																																																																													ExtFunApp create_array Ti520.3456,Ti521.3457,
																																																																																																																																											Let m_cdif.3444
																																																																																																																																												Let Ti522.3454
																																																																																																																																													Int:5
																																																																																																																																													Let Ti523.3455
																																																																																																																																														Int:0
																																																																																																																																														ExtFunApp create_array Ti522.3454,Ti523.3455,
																																																																																																																																												Let m_engy.3445
																																																																																																																																													Let Tu524.3453
																																																																																																																																														Unit
																																																																																																																																														App create_float5x3array.3052Tu524.3453 
																																																																																																																																													Let m_r20p.3446
																																																																																																																																														Let Tu525.3452
																																																																																																																																															Unit
																																																																																																																																															App create_float5x3array.3052Tu525.3452 
																																																																																																																																														Let m_gid.3447
																																																																																																																																															Let Ti526.3450
																																																																																																																																																Int:1
																																																																																																																																																Let Ti527.3451
																																																																																																																																																	Int:0
																																																																																																																																																	ExtFunApp create_array Ti526.3450,Ti527.3451,
																																																																																																																																															Let m_nvectors.3448
																																																																																																																																																Let Tu528.3449
																																																																																																																																																	Unit
																																																																																																																																																	App create_float5x3array.3052Tu528.3449 
																																																																																																																																																Tuple (m_rgb.3441,m_isect_ps.3442,m_sids.3443,m_cdif.3444,m_engy.3445,m_r20p.3446,m_gid.3447,m_nvectors.3448,)
																																																																																																																																								LetRec init_line_elements.3056 line.3057 n.3058 
																																																																																																																																									Let Ti512.3435
																																																																																																																																										Int:0
																																																																																																																																										IfLE Ti512.3435 n.3058
																																																																																																																																											Let Tu220.3436
																																																																																																																																												Let Tt514.3439
																																																																																																																																													Let Tu513.3440
																																																																																																																																														Unit
																																																																																																																																														App create_pixel.3054Tu513.3440 
																																																																																																																																													Put line.3057 n.3058 Tt514.3439
																																																																																																																																												Let Ti516.3437
																																																																																																																																													Let Ti515.3438
																																																																																																																																														Int:1
																																																																																																																																														Sub n.3058 Ti515.3438
																																																																																																																																													App init_line_elements.3056line.3057 Ti516.3437 
																																																																																																																																											Var line.3057
																																																																																																																																									LetRec create_pixelline.3059 Tu221.3060 
																																																																																																																																										Let line.3424
																																																																																																																																											Let Ti504.3430
																																																																																																																																												Let Ta502.3433
																																																																																																																																													ExtArray 616
																																																																																																																																													Let Ti503.3434
																																																																																																																																														Int:0
																																																																																																																																														Get Ta502.3433 Ti503.3434
																																																																																																																																												Let Tt506.3431
																																																																																																																																													Let Tu505.3432
																																																																																																																																														Unit
																																																																																																																																														App create_pixel.3054Tu505.3432 
																																																																																																																																													ExtFunApp create_array Ti504.3430,Tt506.3431,
																																																																																																																																											Let Ti511.3425
																																																																																																																																												Let Ti509.3426
																																																																																																																																													Let Ta507.3428
																																																																																																																																														ExtArray 616
																																																																																																																																														Let Ti508.3429
																																																																																																																																															Int:0
																																																																																																																																															Get Ta507.3428 Ti508.3429
																																																																																																																																													Let Ti510.3427
																																																																																																																																														Int:2
																																																																																																																																														Sub Ti509.3426 Ti510.3427
																																																																																																																																												App init_line_elements.3056line.3424 Ti511.3425 
																																																																																																																																										LetRec tan.3061 x.3062 
																																																																																																																																											Let Td499.3421
																																																																																																																																												ExtFunApp sin x.3062,
																																																																																																																																												Let Td500.3422
																																																																																																																																													ExtFunApp cos x.3062,
																																																																																																																																													Let Td501.3423
																																																																																																																																														FReciprocal Td500.3422
																																																																																																																																														FMul Td499.3421 Td501.3423
																																																																																																																																											LetRec adjust_position.3063 h.3064 ratio.3065 
																																																																																																																																												Let l.3411
																																																																																																																																													Let Td495.3418
																																																																																																																																														Let Td493.3419
																																																																																																																																															FMul h.3064 h.3064
																																																																																																																																															Let Td494.3420
																																																																																																																																																Float:0.100000
																																																																																																																																																FAdd Td493.3419 Td494.3420
																																																																																																																																														sqrt Td495.3418
																																																																																																																																													Let tan_h.3412
																																																																																																																																														Let Td496.3416
																																																																																																																																															Float:1.000000
																																																																																																																																															Let Td497.3417
																																																																																																																																																FReciprocal l.3411
																																																																																																																																																FMul Td496.3416 Td497.3417
																																																																																																																																														Let theta_h.3413
																																																																																																																																															ExtFunApp atan tan_h.3412,
																																																																																																																																															Let tan_m.3414
																																																																																																																																																Let Td498.3415
																																																																																																																																																	FMul theta_h.3413 ratio.3065
																																																																																																																																																	App tan.3061Td498.3415 
																																																																																																																																																FMul tan_m.3414 l.3411
																																																																																																																																												LetRec calc_dirvec.3066 icount.3067 x.3068 y.3069 rx.3070 ry.3071 group_id.3072 index.3073 
																																																																																																																																													Let Ti448.3355
																																																																																																																																														Int:5
																																																																																																																																														IfLE Ti448.3355 icount.3067
																																																																																																																																															Let l.3360
																																																																																																																																																Let Td453.3406
																																																																																																																																																	Let Td451.3407
																																																																																																																																																		Let Td449.3409
																																																																																																																																																			App fsqr.2617x.3068 
																																																																																																																																																			Let Td450.3410
																																																																																																																																																				App fsqr.2617y.3069 
																																																																																																																																																				FAdd Td449.3409 Td450.3410
																																																																																																																																																		Let Td452.3408
																																																																																																																																																			Float:1.000000
																																																																																																																																																			FAdd Td451.3407 Td452.3408
																																																																																																																																																	sqrt Td453.3406
																																																																																																																																																Let vx.3361
																																																																																																																																																	Let Td454.3405
																																																																																																																																																		FReciprocal l.3360
																																																																																																																																																		FMul x.3068 Td454.3405
																																																																																																																																																	Let vy.3362
																																																																																																																																																		Let Td455.3404
																																																																																																																																																			FReciprocal l.3360
																																																																																																																																																			FMul y.3069 Td455.3404
																																																																																																																																																		Let vz.3363
																																																																																																																																																			Let Td456.3402
																																																																																																																																																				Float:1.000000
																																																																																																																																																				Let Td457.3403
																																																																																																																																																					FReciprocal l.3360
																																																																																																																																																					FMul Td456.3402 Td457.3403
																																																																																																																																																			Let dgroup.3364
																																																																																																																																																				Let Ta458.3401
																																																																																																																																																					ExtArray 716
																																																																																																																																																					Get Ta458.3401 group_id.3072
																																																																																																																																																				Let Tu226.3365
																																																																																																																																																					Let Ta460.3399
																																																																																																																																																						Let Tt459.3400
																																																																																																																																																							Get dgroup.3364 index.3073
																																																																																																																																																							App d_vec.2746Tt459.3400 
																																																																																																																																																						App vecset.2639Ta460.3399 vx.3361 vy.3362 vz.3363 
																																																																																																																																																					Let Tu225.3366
																																																																																																																																																						Let Ta464.3394
																																																																																																																																																							Let Tt463.3396
																																																																																																																																																								Let Ti462.3397
																																																																																																																																																									Let Ti461.3398
																																																																																																																																																										Int:40
																																																																																																																																																										Add index.3073 Ti461.3398
																																																																																																																																																									Get dgroup.3364 Ti462.3397
																																																																																																																																																								App d_vec.2746Tt463.3396 
																																																																																																																																																							Let Td465.3395
																																																																																																																																																								App fneg.2613vy.3362 
																																																																																																																																																								App vecset.2639Ta464.3394 vx.3361 vz.3363 Td465.3395 
																																																																																																																																																						Let Tu224.3367
																																																																																																																																																							Let Ta469.3388
																																																																																																																																																								Let Tt468.3391
																																																																																																																																																									Let Ti467.3392
																																																																																																																																																										Let Ti466.3393
																																																																																																																																																											Int:80
																																																																																																																																																											Add index.3073 Ti466.3393
																																																																																																																																																										Get dgroup.3364 Ti467.3392
																																																																																																																																																									App d_vec.2746Tt468.3391 
																																																																																																																																																								Let Td470.3389
																																																																																																																																																									App fneg.2613vx.3361 
																																																																																																																																																									Let Td471.3390
																																																																																																																																																										App fneg.2613vy.3362 
																																																																																																																																																										App vecset.2639Ta469.3388 vz.3363 Td470.3389 Td471.3390 
																																																																																																																																																							Let Tu223.3368
																																																																																																																																																								Let Ta475.3381
																																																																																																																																																									Let Tt474.3385
																																																																																																																																																										Let Ti473.3386
																																																																																																																																																											Let Ti472.3387
																																																																																																																																																												Int:1
																																																																																																																																																												Add index.3073 Ti472.3387
																																																																																																																																																											Get dgroup.3364 Ti473.3386
																																																																																																																																																										App d_vec.2746Tt474.3385 
																																																																																																																																																									Let Td476.3382
																																																																																																																																																										App fneg.2613vx.3361 
																																																																																																																																																										Let Td477.3383
																																																																																																																																																											App fneg.2613vy.3362 
																																																																																																																																																											Let Td478.3384
																																																																																																																																																												App fneg.2613vz.3363 
																																																																																																																																																												App vecset.2639Ta475.3381 Td476.3382 Td477.3383 Td478.3384 
																																																																																																																																																								Let Tu222.3369
																																																																																																																																																									Let Ta482.3375
																																																																																																																																																										Let Tt481.3378
																																																																																																																																																											Let Ti480.3379
																																																																																																																																																												Let Ti479.3380
																																																																																																																																																													Int:41
																																																																																																																																																													Add index.3073 Ti479.3380
																																																																																																																																																												Get dgroup.3364 Ti480.3379
																																																																																																																																																											App d_vec.2746Tt481.3378 
																																																																																																																																																										Let Td483.3376
																																																																																																																																																											App fneg.2613vx.3361 
																																																																																																																																																											Let Td484.3377
																																																																																																																																																												App fneg.2613vz.3363 
																																																																																																																																																												App vecset.2639Ta482.3375 Td483.3376 Td484.3377 vy.3362 
																																																																																																																																																									Let Ta488.3370
																																																																																																																																																										Let Tt487.3372
																																																																																																																																																											Let Ti486.3373
																																																																																																																																																												Let Ti485.3374
																																																																																																																																																													Int:81
																																																																																																																																																													Add index.3073 Ti485.3374
																																																																																																																																																												Get dgroup.3364 Ti486.3373
																																																																																																																																																											App d_vec.2746Tt487.3372 
																																																																																																																																																										Let Td489.3371
																																																																																																																																																											App fneg.2613vz.3363 
																																																																																																																																																											App vecset.2639Ta488.3370 Td489.3371 vx.3361 vy.3362 
																																																																																																																																															Let x2.3356
																																																																																																																																																App adjust_position.3063y.3069 rx.3070 
																																																																																																																																																Let Ti491.3357
																																																																																																																																																	Let Ti490.3359
																																																																																																																																																		Int:1
																																																																																																																																																		Add icount.3067 Ti490.3359
																																																																																																																																																	Let Td492.3358
																																																																																																																																																		App adjust_position.3063x2.3356 ry.3071 
																																																																																																																																																		App calc_dirvec.3066Ti491.3357 x2.3356 Td492.3358 rx.3070 ry.3071 group_id.3072 index.3073 
																																																																																																																																													LetRec calc_dirvecs.3074 col.3075 ry.3076 group_id.3077 index.3078 
																																																																																																																																														Let Ti427.3330
																																																																																																																																															Int:0
																																																																																																																																															IfLE Ti427.3330 col.3075
																																																																																																																																																Let rx.3331
																																																																																																																																																	Let Td430.3351
																																																																																																																																																		Let Td428.3353
																																																																																																																																																			ExtFunApp float_of_int col.3075,
																																																																																																																																																			Let Td429.3354
																																																																																																																																																				Float:0.200000
																																																																																																																																																				FMul Td428.3353 Td429.3354
																																																																																																																																																		Let Td431.3352
																																																																																																																																																			Float:0.900000
																																																																																																																																																			FSub Td430.3351 Td431.3352
																																																																																																																																																	Let Tu228.3332
																																																																																																																																																		Let Ti432.3348
																																																																																																																																																			Int:0
																																																																																																																																																			Let Td433.3349
																																																																																																																																																				Float:0.000000
																																																																																																																																																				Let Td434.3350
																																																																																																																																																					Float:0.000000
																																																																																																																																																					App calc_dirvec.3066Ti432.3348 Td433.3349 Td434.3350 rx.3331 ry.3076 group_id.3077 index.3078 
																																																																																																																																																		Let rx2.3333
																																																																																																																																																			Let Td437.3344
																																																																																																																																																				Let Td435.3346
																																																																																																																																																					ExtFunApp float_of_int col.3075,
																																																																																																																																																					Let Td436.3347
																																																																																																																																																						Float:0.200000
																																																																																																																																																						FMul Td435.3346 Td436.3347
																																																																																																																																																				Let Td438.3345
																																																																																																																																																					Float:0.100000
																																																																																																																																																					FAdd Td437.3344 Td438.3345
																																																																																																																																																			Let Tu227.3334
																																																																																																																																																				Let Ti439.3339
																																																																																																																																																					Int:0
																																																																																																																																																					Let Td440.3340
																																																																																																																																																						Float:0.000000
																																																																																																																																																						Let Td441.3341
																																																																																																																																																							Float:0.000000
																																																																																																																																																							Let Ti443.3342
																																																																																																																																																								Let Ti442.3343
																																																																																																																																																									Int:2
																																																																																																																																																									Add index.3078 Ti442.3343
																																																																																																																																																								App calc_dirvec.3066Ti439.3339 Td440.3340 Td441.3341 rx2.3333 ry.3076 group_id.3077 Ti443.3342 
																																																																																																																																																				Let Ti445.3335
																																																																																																																																																					Let Ti444.3338
																																																																																																																																																						Int:1
																																																																																																																																																						Sub col.3075 Ti444.3338
																																																																																																																																																					Let Ti447.3336
																																																																																																																																																						Let Ti446.3337
																																																																																																																																																							Int:1
																																																																																																																																																							App add_mod5.2636group_id.3077 Ti446.3337 
																																																																																																																																																						App calc_dirvecs.3074Ti445.3335 ry.3076 Ti447.3336 index.3078 
																																																																																																																																																Unit
																																																																																																																																														LetRec calc_dirvec_rows.3079 row.3080 group_id.3081 index.3082 
																																																																																																																																															Let Ti415.3316
																																																																																																																																																Int:0
																																																																																																																																																IfLE Ti415.3316 row.3080
																																																																																																																																																	Let ry.3317
																																																																																																																																																		Let Td418.3326
																																																																																																																																																			Let Td416.3328
																																																																																																																																																				ExtFunApp float_of_int row.3080,
																																																																																																																																																				Let Td417.3329
																																																																																																																																																					Float:0.200000
																																																																																																																																																					FMul Td416.3328 Td417.3329
																																																																																																																																																			Let Td419.3327
																																																																																																																																																				Float:0.900000
																																																																																																																																																				FSub Td418.3326 Td419.3327
																																																																																																																																																		Let Tu229.3318
																																																																																																																																																			Let Ti420.3325
																																																																																																																																																				Int:4
																																																																																																																																																				App calc_dirvecs.3074Ti420.3325 ry.3317 group_id.3081 index.3082 
																																																																																																																																																			Let Ti422.3319
																																																																																																																																																				Let Ti421.3324
																																																																																																																																																					Int:1
																																																																																																																																																					Sub row.3080 Ti421.3324
																																																																																																																																																				Let Ti424.3320
																																																																																																																																																					Let Ti423.3323
																																																																																																																																																						Int:2
																																																																																																																																																						App add_mod5.2636group_id.3081 Ti423.3323 
																																																																																																																																																					Let Ti426.3321
																																																																																																																																																						Let Ti425.3322
																																																																																																																																																							Int:4
																																																																																																																																																							Add index.3082 Ti425.3322
																																																																																																																																																						App calc_dirvec_rows.3079Ti422.3319 Ti424.3320 Ti426.3321 
																																																																																																																																																	Unit
																																																																																																																																															LetRec create_dirvec.3083 Tu230.3084 
																																																																																																																																																Let v3.3309
																																																																																																																																																	Let Ti410.3314
																																																																																																																																																		Int:3
																																																																																																																																																		Let Td411.3315
																																																																																																																																																			Float:0.000000
																																																																																																																																																			ExtFunApp create_float_array Ti410.3314,Td411.3315,
																																																																																																																																																	Let consts.3310
																																																																																																																																																		Let Ti414.3311
																																																																																																																																																			Let Ta412.3312
																																																																																																																																																				ExtArray 0
																																																																																																																																																				Let Ti413.3313
																																																																																																																																																					Int:0
																																																																																																																																																					Get Ta412.3312 Ti413.3313
																																																																																																																																																			ExtFunApp create_array Ti414.3311,v3.3309,
																																																																																																																																																		Tuple (v3.3309,consts.3310,)
																																																																																																																																																LetRec create_dirvec_elements.3085 d.3086 index.3087 
																																																																																																																																																	Let Ti405.3303
																																																																																																																																																		Int:0
																																																																																																																																																		IfLE Ti405.3303 index.3087
																																																																																																																																																			Let Tu231.3304
																																																																																																																																																				Let Tt407.3307
																																																																																																																																																					Let Tu406.3308
																																																																																																																																																						Unit
																																																																																																																																																						App create_dirvec.3083Tu406.3308 
																																																																																																																																																					Put d.3086 index.3087 Tt407.3307
																																																																																																																																																				Let Ti409.3305
																																																																																																																																																					Let Ti408.3306
																																																																																																																																																						Int:1
																																																																																																																																																						Sub index.3087 Ti408.3306
																																																																																																																																																					App create_dirvec_elements.3085d.3086 Ti409.3305 
																																																																																																																																																			Unit
																																																																																																																																																	LetRec create_dirvecs.3088 index.3089 
																																																																																																																																																		Let Ti394.3290
																																																																																																																																																			Int:0
																																																																																																																																																			IfLE Ti394.3290 index.3089
																																																																																																																																																				Let Tu233.3291
																																																																																																																																																					Let Ta395.3298
																																																																																																																																																						ExtArray 716
																																																																																																																																																						Let Ta399.3299
																																																																																																																																																							Let Ti396.3300
																																																																																																																																																								Int:120
																																																																																																																																																								Let Tt398.3301
																																																																																																																																																									Let Tu397.3302
																																																																																																																																																										Unit
																																																																																																																																																										App create_dirvec.3083Tu397.3302 
																																																																																																																																																									ExtFunApp create_array Ti396.3300,Tt398.3301,
																																																																																																																																																							Put Ta395.3298 index.3089 Ta399.3299
																																																																																																																																																					Let Tu232.3292
																																																																																																																																																						Let Ta401.3295
																																																																																																																																																							Let Ta400.3297
																																																																																																																																																								ExtArray 716
																																																																																																																																																								Get Ta400.3297 index.3089
																																																																																																																																																							Let Ti402.3296
																																																																																																																																																								Int:118
																																																																																																																																																								App create_dirvec_elements.3085Ta401.3295 Ti402.3296 
																																																																																																																																																						Let Ti404.3293
																																																																																																																																																							Let Ti403.3294
																																																																																																																																																								Int:1
																																																																																																																																																								Sub index.3089 Ti403.3294
																																																																																																																																																							App create_dirvecs.3088Ti404.3293 
																																																																																																																																																				Unit
																																																																																																																																																		LetRec init_dirvec_constants.3090 vecset.3091 index.3092 
																																																																																																																																																			Let Ti390.3285
																																																																																																																																																				Int:0
																																																																																																																																																				IfLE Ti390.3285 index.3092
																																																																																																																																																					Let Tu234.3286
																																																																																																																																																						Let Tt391.3289
																																																																																																																																																							Get vecset.3091 index.3092
																																																																																																																																																							App setup_dirvec_constants.2875Tt391.3289 
																																																																																																																																																						Let Ti393.3287
																																																																																																																																																							Let Ti392.3288
																																																																																																																																																								Int:1
																																																																																																																																																								Sub index.3092 Ti392.3288
																																																																																																																																																							App init_dirvec_constants.3090vecset.3091 Ti393.3287 
																																																																																																																																																					Unit
																																																																																																																																																			LetRec init_vecset_constants.3093 index.3094 
																																																																																																																																																				Let Ti384.3278
																																																																																																																																																					Int:0
																																																																																																																																																					IfLE Ti384.3278 index.3094
																																																																																																																																																						Let Tu235.3279
																																																																																																																																																							Let Ta386.3282
																																																																																																																																																								Let Ta385.3284
																																																																																																																																																									ExtArray 716
																																																																																																																																																									Get Ta385.3284 index.3094
																																																																																																																																																								Let Ti387.3283
																																																																																																																																																									Int:119
																																																																																																																																																									App init_dirvec_constants.3090Ta386.3282 Ti387.3283 
																																																																																																																																																							Let Ti389.3280
																																																																																																																																																								Let Ti388.3281
																																																																																																																																																									Int:1
																																																																																																																																																									Sub index.3094 Ti388.3281
																																																																																																																																																								App init_vecset_constants.3093Ti389.3280 
																																																																																																																																																						Unit
																																																																																																																																																				LetRec init_dirvecs.3095 Tu236.3096 
																																																																																																																																																					Let Tu238.3271
																																																																																																																																																						Let Ti379.3277
																																																																																																																																																							Int:4
																																																																																																																																																							App create_dirvecs.3088Ti379.3277 
																																																																																																																																																						Let Tu237.3272
																																																																																																																																																							Let Ti380.3274
																																																																																																																																																								Int:9
																																																																																																																																																								Let Ti381.3275
																																																																																																																																																									Int:0
																																																																																																																																																									Let Ti382.3276
																																																																																																																																																										Int:0
																																																																																																																																																										App calc_dirvec_rows.3079Ti380.3274 Ti381.3275 Ti382.3276 
																																																																																																																																																							Let Ti383.3273
																																																																																																																																																								Int:4
																																																																																																																																																								App init_vecset_constants.3093Ti383.3273 
																																																																																																																																																					LetRec add_reflection.3097 index.3098 surface_id.3099 bright.3100 v0.3101 v1.3102 v2.3103 
																																																																																																																																																						Let dvec.3264
																																																																																																																																																							Let Tu375.3270
																																																																																																																																																								Unit
																																																																																																																																																								App create_dirvec.3083Tu375.3270 
																																																																																																																																																							Let Tu240.3265
																																																																																																																																																								Let Ta376.3269
																																																																																																																																																									App d_vec.2746dvec.3264 
																																																																																																																																																									App vecset.2639Ta376.3269 v0.3101 v1.3102 v2.3103 
																																																																																																																																																								Let Tu239.3266
																																																																																																																																																									App setup_dirvec_constants.2875dvec.3264 
																																																																																																																																																									Let Ta377.3267
																																																																																																																																																										ExtArray 1016
																																																																																																																																																										Let Tt378.3268
																																																																																																																																																											Tuple (surface_id.3099,dvec.3264,bright.3100,)
																																																																																																																																																											Put Ta377.3267 index.3098 Tt378.3268
																																																																																																																																																						LetRec setup_rect_reflection.3104 obj_id.3105 obj.3106 
																																																																																																																																																							Let sid.3219
																																																																																																																																																								ShiftL2 obj_id.3105
																																																																																																																																																								Let nr.3220
																																																																																																																																																									Let Ta339.3262
																																																																																																																																																										ExtArray 1736
																																																																																																																																																										Let Ti340.3263
																																																																																																																																																											Int:0
																																																																																																																																																											Get Ta339.3262 Ti340.3263
																																																																																																																																																									Let br.3221
																																																																																																																																																										Let Td341.3260
																																																																																																																																																											Float:1.000000
																																																																																																																																																											Let Td342.3261
																																																																																																																																																												App o_diffuse.2709obj.3106 
																																																																																																																																																												FSub Td341.3260 Td342.3261
																																																																																																																																																										Let n0.3222
																																																																																																																																																											Let Td345.3257
																																																																																																																																																												Let Ta343.3258
																																																																																																																																																													ExtArray 312
																																																																																																																																																													Let Ti344.3259
																																																																																																																																																														Int:0
																																																																																																																																																														Get Ta343.3258 Ti344.3259
																																																																																																																																																												App fneg.2613Td345.3257 
																																																																																																																																																											Let n1.3223
																																																																																																																																																												Let Td348.3254
																																																																																																																																																													Let Ta346.3255
																																																																																																																																																														ExtArray 312
																																																																																																																																																														Let Ti347.3256
																																																																																																																																																															Int:1
																																																																																																																																																															Get Ta346.3255 Ti347.3256
																																																																																																																																																													App fneg.2613Td348.3254 
																																																																																																																																																												Let n2.3224
																																																																																																																																																													Let Td351.3251
																																																																																																																																																														Let Ta349.3252
																																																																																																																																																															ExtArray 312
																																																																																																																																																															Let Ti350.3253
																																																																																																																																																																Int:2
																																																																																																																																																																Get Ta349.3252 Ti350.3253
																																																																																																																																																														App fneg.2613Td351.3251 
																																																																																																																																																													Let Tu243.3225
																																																																																																																																																														Let Ti353.3246
																																																																																																																																																															Let Ti352.3250
																																																																																																																																																																Int:1
																																																																																																																																																																Add sid.3219 Ti352.3250
																																																																																																																																																															Let Td356.3247
																																																																																																																																																																Let Ta354.3248
																																																																																																																																																																	ExtArray 312
																																																																																																																																																																	Let Ti355.3249
																																																																																																																																																																		Int:0
																																																																																																																																																																		Get Ta354.3248 Ti355.3249
																																																																																																																																																																App add_reflection.3097nr.3220 Ti353.3246 br.3221 Td356.3247 n1.3223 n2.3224 
																																																																																																																																																														Let Tu242.3226
																																																																																																																																																															Let Ti358.3239
																																																																																																																																																																Let Ti357.3245
																																																																																																																																																																	Int:1
																																																																																																																																																																	Add nr.3220 Ti357.3245
																																																																																																																																																																Let Ti360.3240
																																																																																																																																																																	Let Ti359.3244
																																																																																																																																																																		Int:2
																																																																																																																																																																		Add sid.3219 Ti359.3244
																																																																																																																																																																	Let Td363.3241
																																																																																																																																																																		Let Ta361.3242
																																																																																																																																																																			ExtArray 312
																																																																																																																																																																			Let Ti362.3243
																																																																																																																																																																				Int:1
																																																																																																																																																																				Get Ta361.3242 Ti362.3243
																																																																																																																																																																		App add_reflection.3097Ti358.3239 Ti360.3240 br.3221 n0.3222 Td363.3241 n2.3224 
																																																																																																																																																															Let Tu241.3227
																																																																																																																																																																Let Ti365.3232
																																																																																																																																																																	Let Ti364.3238
																																																																																																																																																																		Int:2
																																																																																																																																																																		Add nr.3220 Ti364.3238
																																																																																																																																																																	Let Ti367.3233
																																																																																																																																																																		Let Ti366.3237
																																																																																																																																																																			Int:3
																																																																																																																																																																			Add sid.3219 Ti366.3237
																																																																																																																																																																		Let Td370.3234
																																																																																																																																																																			Let Ta368.3235
																																																																																																																																																																				ExtArray 312
																																																																																																																																																																				Let Ti369.3236
																																																																																																																																																																					Int:2
																																																																																																																																																																					Get Ta368.3235 Ti369.3236
																																																																																																																																																																			App add_reflection.3097Ti365.3232 Ti367.3233 br.3221 n0.3222 n1.3223 Td370.3234 
																																																																																																																																																																Let Ta371.3228
																																																																																																																																																																	ExtArray 1736
																																																																																																																																																																	Let Ti372.3229
																																																																																																																																																																		Int:0
																																																																																																																																																																		Let Ti374.3230
																																																																																																																																																																			Let Ti373.3231
																																																																																																																																																																				Int:3
																																																																																																																																																																				Add nr.3220 Ti373.3231
																																																																																																																																																																			Put Ta371.3228 Ti372.3229 Ti374.3230
																																																																																																																																																							LetRec setup_surface_reflection.3107 obj_id.3108 obj.3109 
																																																																																																																																																								Let sid.3178
																																																																																																																																																									Let Ti303.3217
																																																																																																																																																										ShiftL2 obj_id.3108
																																																																																																																																																										Let Ti304.3218
																																																																																																																																																											Int:1
																																																																																																																																																											Add Ti303.3217 Ti304.3218
																																																																																																																																																									Let nr.3179
																																																																																																																																																										Let Ta305.3215
																																																																																																																																																											ExtArray 1736
																																																																																																																																																											Let Ti306.3216
																																																																																																																																																												Int:0
																																																																																																																																																												Get Ta305.3215 Ti306.3216
																																																																																																																																																										Let br.3180
																																																																																																																																																											Let Td307.3213
																																																																																																																																																												Float:1.000000
																																																																																																																																																												Let Td308.3214
																																																																																																																																																													App o_diffuse.2709obj.3109 
																																																																																																																																																													FSub Td307.3213 Td308.3214
																																																																																																																																																											Let p.3181
																																																																																																																																																												Let Ta309.3211
																																																																																																																																																													ExtArray 312
																																																																																																																																																													Let Ta310.3212
																																																																																																																																																														App o_param_abc.2701obj.3109 
																																																																																																																																																														App veciprod.2660Ta309.3211 Ta310.3212 
																																																																																																																																																												Let Tu244.3182
																																																																																																																																																													Let Td318.3187
																																																																																																																																																														Let Td314.3204
																																																																																																																																																															Let Td313.3208
																																																																																																																																																																Let Td311.3209
																																																																																																																																																																	Float:2.000000
																																																																																																																																																																	Let Td312.3210
																																																																																																																																																																		App o_param_a.2695obj.3109 
																																																																																																																																																																		FMul Td311.3209 Td312.3210
																																																																																																																																																																FMul Td313.3208 p.3181
																																																																																																																																																															Let Td317.3205
																																																																																																																																																																Let Ta315.3206
																																																																																																																																																																	ExtArray 312
																																																																																																																																																																	Let Ti316.3207
																																																																																																																																																																		Int:0
																																																																																																																																																																		Get Ta315.3206 Ti316.3207
																																																																																																																																																																FSub Td314.3204 Td317.3205
																																																																																																																																																														Let Td326.3188
																																																																																																																																																															Let Td322.3197
																																																																																																																																																																Let Td321.3201
																																																																																																																																																																	Let Td319.3202
																																																																																																																																																																		Float:2.000000
																																																																																																																																																																		Let Td320.3203
																																																																																																																																																																			App o_param_b.2697obj.3109 
																																																																																																																																																																			FMul Td319.3202 Td320.3203
																																																																																																																																																																	FMul Td321.3201 p.3181
																																																																																																																																																																Let Td325.3198
																																																																																																																																																																	Let Ta323.3199
																																																																																																																																																																		ExtArray 312
																																																																																																																																																																		Let Ti324.3200
																																																																																																																																																																			Int:1
																																																																																																																																																																			Get Ta323.3199 Ti324.3200
																																																																																																																																																																	FSub Td322.3197 Td325.3198
																																																																																																																																																															Let Td334.3189
																																																																																																																																																																Let Td330.3190
																																																																																																																																																																	Let Td329.3194
																																																																																																																																																																		Let Td327.3195
																																																																																																																																																																			Float:2.000000
																																																																																																																																																																			Let Td328.3196
																																																																																																																																																																				App o_param_c.2699obj.3109 
																																																																																																																																																																				FMul Td327.3195 Td328.3196
																																																																																																																																																																		FMul Td329.3194 p.3181
																																																																																																																																																																	Let Td333.3191
																																																																																																																																																																		Let Ta331.3192
																																																																																																																																																																			ExtArray 312
																																																																																																																																																																			Let Ti332.3193
																																																																																																																																																																				Int:2
																																																																																																																																																																				Get Ta331.3192 Ti332.3193
																																																																																																																																																																		FSub Td330.3190 Td333.3191
																																																																																																																																																																App add_reflection.3097nr.3179 sid.3178 br.3180 Td318.3187 Td326.3188 Td334.3189 
																																																																																																																																																													Let Ta335.3183
																																																																																																																																																														ExtArray 1736
																																																																																																																																																														Let Ti336.3184
																																																																																																																																																															Int:0
																																																																																																																																																															Let Ti338.3185
																																																																																																																																																																Let Ti337.3186
																																																																																																																																																																	Int:1
																																																																																																																																																																	Add nr.3179 Ti337.3186
																																																																																																																																																																Put Ta335.3183 Ti336.3184 Ti338.3185
																																																																																																																																																								LetRec setup_reflections.3110 obj_id.3111 
																																																																																																																																																									Let Ti295.3168
																																																																																																																																																										Int:0
																																																																																																																																																										IfLE Ti295.3168 obj_id.3111
																																																																																																																																																											Let obj.3169
																																																																																																																																																												Let Ta296.3177
																																																																																																																																																													ExtArray 48
																																																																																																																																																													Get Ta296.3177 obj_id.3111
																																																																																																																																																												Let Ti297.3170
																																																																																																																																																													App o_reflectiontype.2689obj.3169 
																																																																																																																																																													Let Ti298.3171
																																																																																																																																																														Int:2
																																																																																																																																																														IfEq Ti297.3170 Ti298.3171
																																																																																																																																																															Let Td299.3172
																																																																																																																																																																Float:1.000000
																																																																																																																																																																Let Td300.3173
																																																																																																																																																																	App o_diffuse.2709obj.3169 
																																																																																																																																																																	IfLE Td299.3172 Td300.3173
																																																																																																																																																																		Unit
																																																																																																																																																																		Let m_shape.3174
																																																																																																																																																																			App o_form.2687obj.3169 
																																																																																																																																																																			Let Ti301.3175
																																																																																																																																																																				Int:1
																																																																																																																																																																				IfEq m_shape.3174 Ti301.3175
																																																																																																																																																																					App setup_rect_reflection.3104obj_id.3111 obj.3169 
																																																																																																																																																																					Let Ti302.3176
																																																																																																																																																																						Int:2
																																																																																																																																																																						IfEq m_shape.3174 Ti302.3176
																																																																																																																																																																							App setup_surface_reflection.3107obj_id.3111 obj.3169 
																																																																																																																																																																							Unit
																																																																																																																																																															Unit
																																																																																																																																																											Unit
																																																																																																																																																									LetRec rt.3112 size_x.3113 size_y.3114 
																																																																																																																																																										Let Tu256.3118
																																																																																																																																																											Let Ta260.3166
																																																																																																																																																												ExtArray 616
																																																																																																																																																												Let Ti261.3167
																																																																																																																																																													Int:0
																																																																																																																																																													Put Ta260.3166 Ti261.3167 size_x.3113
																																																																																																																																																											Let Tu255.3119
																																																																																																																																																												Let Ta262.3164
																																																																																																																																																													ExtArray 616
																																																																																																																																																													Let Ti263.3165
																																																																																																																																																														Int:1
																																																																																																																																																														Put Ta262.3164 Ti263.3165 size_y.3114
																																																																																																																																																												Let Tu254.3120
																																																																																																																																																													Let Ta264.3161
																																																																																																																																																														ExtArray 624
																																																																																																																																																														Let Ti265.3162
																																																																																																																																																															Int:0
																																																																																																																																																															Let Ti266.3163
																																																																																																																																																																ShiftR1 size_x.3113
																																																																																																																																																																Put Ta264.3161 Ti265.3162 Ti266.3163
																																																																																																																																																													Let Tu253.3121
																																																																																																																																																														Let Ta267.3158
																																																																																																																																																															ExtArray 624
																																																																																																																																																															Let Ti268.3159
																																																																																																																																																																Int:1
																																																																																																																																																																Let Ti269.3160
																																																																																																																																																																	ShiftR1 size_y.3114
																																																																																																																																																																	Put Ta267.3158 Ti268.3159 Ti269.3160
																																																																																																																																																														Let Tu252.3122
																																																																																																																																																															Let Ta270.3152
																																																																																																																																																																ExtArray 632
																																																																																																																																																																Let Ti271.3153
																																																																																																																																																																	Int:0
																																																																																																																																																																	Let Td275.3154
																																																																																																																																																																		Let Td272.3155
																																																																																																																																																																			Float:128.000000
																																																																																																																																																																			Let Td273.3156
																																																																																																																																																																				ExtFunApp float_of_int size_x.3113,
																																																																																																																																																																				Let Td274.3157
																																																																																																																																																																					FReciprocal Td273.3156
																																																																																																																																																																					FMul Td272.3155 Td274.3157
																																																																																																																																																																		Put Ta270.3152 Ti271.3153 Td275.3154
																																																																																																																																																															Let prev.3123
																																																																																																																																																																Let Tu276.3151
																																																																																																																																																																	Unit
																																																																																																																																																																	App create_pixelline.3059Tu276.3151 
																																																																																																																																																																Let cur.3124
																																																																																																																																																																	Let Tu277.3150
																																																																																																																																																																		Unit
																																																																																																																																																																		App create_pixelline.3059Tu277.3150 
																																																																																																																																																																	Let next.3125
																																																																																																																																																																		Let Tu278.3149
																																																																																																																																																																			Unit
																																																																																																																																																																			App create_pixelline.3059Tu278.3149 
																																																																																																																																																																		Let Tu251.3126
																																																																																																																																																																			Let Tu279.3148
																																																																																																																																																																				Unit
																																																																																																																																																																				App read_parameter.2777Tu279.3148 
																																																																																																																																																																			Let Tu250.3127
																																																																																																																																																																				Let Tu280.3147
																																																																																																																																																																					Unit
																																																																																																																																																																					App write_ppm_header.3020Tu280.3147 
																																																																																																																																																																				Let Tu249.3128
																																																																																																																																																																					Let Tu281.3146
																																																																																																																																																																						Unit
																																																																																																																																																																						App init_dirvecs.3095Tu281.3146 
																																																																																																																																																																					Let Tu248.3129
																																																																																																																																																																						Let Ta283.3143
																																																																																																																																																																							Let Tt282.3145
																																																																																																																																																																								ExtTuple 988
																																																																																																																																																																								App d_vec.2746Tt282.3145 
																																																																																																																																																																							Let Ta284.3144
																																																																																																																																																																								ExtArray 312
																																																																																																																																																																								App veccpy.2649Ta283.3143 Ta284.3144 
																																																																																																																																																																						Let Tu247.3130
																																																																																																																																																																							Let Tt285.3142
																																																																																																																																																																								ExtTuple 988
																																																																																																																																																																								App setup_dirvec_constants.2875Tt285.3142 
																																																																																																																																																																							Let Tu246.3131
																																																																																																																																																																								Let Ti290.3137
																																																																																																																																																																									Let Ti288.3138
																																																																																																																																																																										Let Ta286.3140
																																																																																																																																																																											ExtArray 0
																																																																																																																																																																											Let Ti287.3141
																																																																																																																																																																												Int:0
																																																																																																																																																																												Get Ta286.3140 Ti287.3141
																																																																																																																																																																										Let Ti289.3139
																																																																																																																																																																											Int:1
																																																																																																																																																																											Sub Ti288.3138 Ti289.3139
																																																																																																																																																																									App setup_reflections.3110Ti290.3137 
																																																																																																																																																																								Let Tu245.3132
																																																																																																																																																																									Let Ti291.3135
																																																																																																																																																																										Int:0
																																																																																																																																																																										Let Ti292.3136
																																																																																																																																																																											Int:0
																																																																																																																																																																											App pretrace_line.3036cur.3124 Ti291.3135 Ti292.3136 
																																																																																																																																																																									Let Ti293.3133
																																																																																																																																																																										Int:0
																																																																																																																																																																										Let Ti294.3134
																																																																																																																																																																											Int:2
																																																																																																																																																																											App scan_line.3046Ti293.3133 prev.3123 cur.3124 next.3125 Ti294.3134 
																																																																																																																																																										Let Tu257.3115
																																																																																																																																																											Let Ti258.3116
																																																																																																																																																												Int:128
																																																																																																																																																												Let Ti259.3117
																																																																																																																																																													Int:128
																																																																																																																																																													App rt.3112Ti258.3116 Ti259.3117 
																																																																																																																																																											Unit
